Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKJaOMt4vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C192DD9E9
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A4710EAF9;
	Fri, 20 Mar 2026 16:41:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="a/8Cs76R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24AA510EB28
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2026 16:41:43 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id ACC7EC5668F;
 Fri, 20 Mar 2026 16:42:06 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id 33E7E600E0;
 Fri, 20 Mar 2026 16:41:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id C15DA10450CB4; Fri, 20 Mar 2026 17:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024899; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=mIRxnse/bjPPWECtFbLS3qtkgeOBiGcVMkxi10dAPNY=;
 b=a/8Cs76Rcjo7ITzALwQ2rd1dvgxPdw3Yvfpjm/ZXLtw2iM2O5ux78gO7iujFYT1e+Goczt
 s+o7Bv5Qd3Aze7HFyl8S+uTd9iRT8eZ/7/c/uwpEcvUcprXwya8F1whdWZV90CcjYOjnG+
 TcH95X79OBskrIR2oZPITg2haKg0jAG5pAPK3KNqy2i9Vi2sZYQsaeGVgO6k1IDmE8oBdj
 yTL81TGL2qQgEpMhKFYTRmEeo/KBDWK/ZhSHr+p1R5X22AKUmWd2SxR9uhU2atlCNia7C5
 xnsrzaqjtk0KpHL2qb/veCw19lyXIoQPFsHEdq56eYNmg7Izkd7beszs2stacQ==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 02/65] dyndbg: factor ddebug_match_desc out from
 ddebug_change
From: Louis Chauvet <louis.chauvet@bootlin.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com, 
 gregkh@linuxfoundation.org
Cc: Jim Cromie <jim.cromie@gmail.com>, mripard@kernel.org, 
 tzimmermann@suse.de, maarten.lankhorst@linux.intel.com, 
 jani.nikula@intel.com, ville.syrjala@linux.intel.com, 
 christian.koenig@amd.com, matthew.auld@intel.com, 
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com, 
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
In-Reply-To: <20260313132103.2529746-3-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-3-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491428.6181.7197154425270052236.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=707;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=CBH10i8maWiI1e43S3YE/3lAIi/KXU/tS8OzZuccAy4=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjWNzHJAjhVtO1V8zVjbtpDQMEluh81hlg43
 s5KqnDSwN+JAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141hsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOIO/g/+IihDoiLQ8/fAZefVIZ+YfINI4KQdXiS
 9ZJseJd7dCO75LLWP+m4uQA6KJQZP5KjIt1c+grrrVklXPhMxLlgUHPjdSNyX1+zHGhtVGJ1qLW
 BhKxkQYu2VeQ+/c69Qm+NT+LH+v6GC+3DgkFVjxey+C+S4DqIigRBrQXXzCjqqmkNNgWQcinFo7
 nID6KII/nO9eqWCO/jTr3Cm0uTACz22db7Yf8t3s3vo/AwTt3orVr2LQKVkyCvorBxeP4ib+KD9
 t7VaNCg7HHVyUfZP9icnPwavgHSYNv2jwGNhDPyMIpt1G77XIlb+kef15Ge9+3Xy3CrLjwzvFe5
 esf+9ewWK+Hnm0L5hgYVNPE1i6dGk8Rdb8OY2QOJM5zDo0OuYtk+6LzzCDK76xms034mE+xzCTR
 dwZ9Y/syDv+0yfETMEoEdzx6FBU3BqibUfspekpInFX1IsuJY4PxWJixMWIZk4Al1crcZjIgokR
 jsMT/Y6VnMcv0BBlMXL4MC9Y+BqMfPKb2QTxOPNLYv3J2Auui2qeNlu5nFx5UNxqOdG0uzZURXh
 flqN273cs4BJ0qAbR3RaovdfEK8ruEj4/lDIoPHMayiVAXwWtxPK6n6kYlKMkPauf684xvu6aR5
 pqCmo2z9MsYDBmDSN+WNud0+D7PkvfAga+NezTn0wxewQnsiO/xQ=
X-Developer-Key: i=louis.chauvet@bootlin.com; a=openpgp;
 fpr=8B7104AE9A272D6693F527F2EC1883F55E0B40A5
X-Last-TLS-Session-Version: TLSv1.3
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: B1C192DD9E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:27 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> diff --git a/lib/dynamic_debug.c b/lib/dynamic_debug.c
> index 18a71a9108d3..6b1e983cfedc 100644
> --- a/lib/dynamic_debug.c
> +++ b/lib/dynamic_debug.c
> @@ -172,6 +172,52 @@ static struct ddebug_class_map *ddebug_find_valid_class(struct ddebug_table cons
>   * callsites, normally the same as number of changes.  If verbose,
>   * logs the changes.  Takes ddebug_lock.
>   */

Can you add a bit of documentation about this function and move back the
above comment to the ddebug_change function?

With this: Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
