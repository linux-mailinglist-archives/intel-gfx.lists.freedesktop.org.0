Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIjaAc94vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C652DD9FC
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F6110EB58;
	Fri, 20 Mar 2026 16:41:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="P9oYkNYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7735910EAD5;
 Fri, 20 Mar 2026 16:41:47 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id 3E265C56690;
 Fri, 20 Mar 2026 16:42:09 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id B8C0A600E0;
 Fri, 20 Mar 2026 16:41:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 5BABA10450CB7; Fri, 20 Mar 2026 17:41:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774024902; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=OoIKC3xiAydsS7WdwjuFaop5M9cp+2hHPK/Ac5EbeOk=;
 b=P9oYkNYjxSLD7hcIx+Ps2DgzF8i0/g0d6wGw6xLPlwQCTKCFhczL2PpF31ySV5kYbfEG37
 gfSQntsCr7ee4LRSE3y+1uq1oHJ+kHGrv+2biqdzzTJLcq/BEssgUwiygss3kNwL4zz7wz
 BDBI2zgON9fXYAbLAELPiV/2vABcE0BtNxzjXLb+WLZomDtIv1eWB0YtCTJ1ooVLBhnA7b
 z1Amw+zn21vEszru8v68W0nnaUdA5SJUHcPivGMcjnQBjGzrviTq1TF3AGGQog3hzCIQp/
 IaOiEQ3pjTiU9akIhrT7Yr941faAxyUJgfgJH/ffDmL0Ce2DyaNjFIOvxbnXEw==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 03/65] dyndbg: add stub macro for
 DECLARE_DYNDBG_CLASSMAP
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
In-Reply-To: <20260313132103.2529746-4-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-4-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491429.6181.3451050852733384894.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=364;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=YfgqEypHmFY+iYWSVh3YxHOt80IVs8FI3xU4egwmsbQ=;
 b=owEBiQJ2/ZANAwAIASCtLsZbECziAcsmYgBpvXjWzWHOvXqB62IeaVzwpEQPZBADthXHZLIjt
 MvT/hLJV0CJAk8EAAEIADkWIQRPj7g/vng8MQxQWQQgrS7GWxAs4gUCab141hsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDIACgkQIK0uxlsQLOLXZxAAyn+NXUqafxCHdiSZKf3AXJIqR5AgDwA
 uBDFIVDwNlOFwj/GUaScoYdrf7HOmYL2Eoq/fROj3jMsP+Khg+3NAELcs/n3gP5TdH7lE1LHyun
 AVw8ETkaYuISb6v9aqVM3LEfQ719JQM1XQEkUsRgBSO+Tuu+5NyPqlsjpeSMSpKm0jFyQ6paHra
 Q5BByZwmRyOwXE83MFtCQ98SSSaSk7HmYAinTW85eIesKtslAG3EsR8bBwec28HRQqq7lq6LVSj
 7OJPd49gbG2gaMwZuCBejRz6JTtzsnNoQgHZObUhRUB1gPkeEneHUCI2HYP8Simp8nqnHEtoCLw
 IPkpZ8r8M7P6s0iV+OMwBH7qnEXKc6DRSloPLOd76oHPtFi/gNwCz8RwLzaZByvpsL4G1zCn3Nt
 BDjC6ePekEUFoVBRhibEctfOjDv3qLOZYQyIz9SKnK8BpPrRsF3Yuym0JbpBhpL9q6GWfXtfGby
 4uRtVFa9mjCfQbw/dZ8O0OaXHvJUlYu0W83YRrhq32bKKEuSN1u2wfSOix9cMzRvcwyzGtsSfEs
 j2MId7Mhd6r54tOOth/WIn5wDq7jQX7IllGDniMD9pRy+4bub8kDnxz6rnYxL3BOMhQWwJB+ho2
 GtN8IalfmfN2q7uURhp63+Kjbd9XnfkzF9kHFPtWkwLKVgtAZoYQ=
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[louis.chauvet@bootlin.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org,vger.kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: C4C652DD9FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:19:28 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> Add the stub macro for !DYNAMIC_DEBUG builds, after moving the
> original macro-defn down under the big ifdef.  Do it now so future
> changes have a cleaner starting point.

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
