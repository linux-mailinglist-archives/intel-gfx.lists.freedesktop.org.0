Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +GzJMEh5vWmt9wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD442DDDCE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 17:43:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB73110EC01;
	Fri, 20 Mar 2026 16:43:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="wh9QFEsV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B2110EBFD;
 Fri, 20 Mar 2026 16:43:49 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-04.galae.net (Postfix) with ESMTPS id 706D2C5668D;
 Fri, 20 Mar 2026 16:44:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id EACB1600E0;
 Fri, 20 Mar 2026 16:43:47 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 106CE10450CB2; Fri, 20 Mar 2026 17:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1774025026; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:in-reply-to:references;
 bh=xSWUJDvTxc+unKhVYDV278oj6aljFQy+io2kw5SbwJA=;
 b=wh9QFEsVLa0aidS8VZJHQmeTODxLfL2T28WA/XPoSIJxMTdM0rV7SXfw360TpOi6AsBzR6
 k6L4ijlgySWLk5uV6Lag94e7nR4tNBQ38G6fB9vFIBqz6/OSiIc/XnzixVg6rU93MPfagQ
 GJJYKj42lsxNkdHhedxAVqyJgtsNmneA81z92gObi7Nag1FRFxoCaMLWiVdvmOyA7oX0X0
 eXCSlVwLw3WlILF40ReTj54Flp2OK4zy9LH+ou5RywNXGvLtnrrx98AwfZ5n5DDxZ2qqhD
 pyGHTdjK+2PU24LlHxrEv3EMhGOcF/9+fRHg+4Fda/qH3J2zWH8KanpfIucxww==
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v11 62/65] accel/rocket: enable drm.debug control
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
In-Reply-To: <20260313132103.2529746-63-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
 <20260313132103.2529746-63-jim.cromie@gmail.com>
Date: Fri, 20 Mar 2026 17:41:54 +0100
Message-Id: <177402491481.6181.1193817263694863596.b4-review@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=382;
 i=louis.chauvet@bootlin.com; h=from:subject:message-id;
 bh=jYVovK82/tFAnbJ+XTMg6qdnmM+rvVTH0iS1246YH9k=;
 b=kA0DAAgBIK0uxlsQLOIByyZiAGm9eNyjDWleHBEwKmOenH/Rj+ZxtDBd+5viPkoXX7RoprxBC
 okCTwQAAQgAORYhBE+PuD++eDwxDFBZBCCtLsZbECziBQJpvXjcGxSAAAAAAAQADm1hbnUyLDIu
 NSsxLjExLDIsMgAKCRAgrS7GWxAs4nERD/9T4YfQdtiQtobGNnArKxCHt72t6j+gg+2oR4Wap8s
 CyPLGTqeiEL0cmD5gbG9y3NHCCOOD0O3mWySaz3a+oKLdE468cqyXex4zMESu5R8T7xp4PXJvtf
 ccLhw3ODicel68bFcD/JYhjhtIifXLRCxFDciEucbqf38hImAZ4Q51LB5tLMl83Wl3L3cPO4gSg
 RS13Rj6Ac0C06Qk6Q+TW1ev32VXlXjDGsOAbGki94OO00WI03xKF+lFvNNe8yGVoTrnJJRz6M9w
 s2bdF6pPJzzD11JArlV5mwkmMnRAvOFTd0ZBqRDtwm3OCJvuYaHSIcXQC3BccNFgUnEYy91m8VT
 5Zr6SN9R1zWtOUTM7WWT3P5TOTJJXV2cYGQwzP38x5KQTtupJNrJwqH7yyt43TA75nK9kMDWU7D
 OwbhILMw0dG/S1jCR1DtiEwnn/bnKTGaX1qfLXIakuAobqrV5NJPzAU2As0530NJ2FZLkqmEn66
 DpccKsI7Zi3/1BLi+Ezddh4x+9GG+mqDw49XE/MSox1yyItSvfmzTCb8D7njaK8DLpvcl+il2AQ
 cCl8u4iTZhOGNCsR14cNYTrytDQb/MGVLDV5KYi6IGNw1PMXF1ewoKWKRpbtgZaDbzPjCZvi2r5
 L2XVfSofrvXSUCjqh1UGehKMBinbwDETBk2rBE5u8xw==
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
X-Rspamd-Queue-Id: 9BD442DDDCE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 13 Mar 2026 07:20:27 -0600, Jim Cromie <jim.cromie@gmail.com> wrote:
> rocket.ko has several drm*dbg() calls, it must call DRM_CLASSMAP_USE
> to tell dynamic-debug what classmap enables them.

Can you move this with all the other DRM_CLASSMAP_USE commits?

>

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

-- 
Louis Chauvet <louis.chauvet@bootlin.com>
