Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NLGBAmVsWnkDAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 17:15:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D5C26724E
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 17:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8955A10E8F5;
	Wed, 11 Mar 2026 16:14:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=smail.nju.edu.cn header.i=@smail.nju.edu.cn header.b="AYT9zup6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 496 seconds by postgrey-1.36 at gabe;
 Wed, 11 Mar 2026 13:41:17 UTC
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F7B10E1B0;
 Wed, 11 Mar 2026 13:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=smail.nju.edu.cn;
 s=iohv2404; t=1773236474;
 bh=nue+qzPo4qG7NNzBxMSw/JyTNDP379Ume26FJRqcLIA=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=AYT9zup6yLuWQh5wsd+TCM0E5VmTGrmXWUvpBQoVFPdBKhuC01MpGgJYS6GMH1eZa
 J/UKCbeotzba/pDHFYVOLAUR3/loTHE8Q5R0K+3FrSJoExVc649veQsiaGqAIA0qqF
 rrY6ax17QdExELC2F1zxUdkLziHjphUDKqurM/w4=
X-QQ-mid: esmtpgz14t1773235918td265877b
X-QQ-Originating-IP: Sjg5GRpehjMhjW7R+H5sozHhXDewFonGnwPMgAtMDRY=
Received: from localhost.localdomain ( [116.172.93.199])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Wed, 11 Mar 2026 21:31:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 18182196931313005747
EX-QQ-RecipientCnt: 14
From: Kexin Sun <kexinsun@smail.nju.edu.cn>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: airlied@gmail.com, simona@ffwll.ch, linux-kernel@vger.kernel.org,
 julia.lawall@inria.fr, xutong.ma@inria.fr, yunbolyu@smu.edu.sg,
 ratnadiraw@smu.edu.sg, Kexin Sun <kexinsun@smail.nju.edu.cn>
Subject: [PATCH] drm/i915/gem: update outdated comment
Date: Wed, 11 Mar 2026 21:31:53 +0800
Message-Id: <20260311133153.576-1-kexinsun@smail.nju.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:smail.nju.edu.cn:qybglogicsvrgz:qybglogicsvrgz5b-0
X-QQ-XMAILINFO: MOrL9Q2bZwNShs2znJCtW+uThu2Y6hoImKfgUgw1NhudO40S2T0gbXYo
 /zqK7ujJTbSrsiWOxU5pZDIqdvcWpMtV8+Or688gwEHyauApGM4HMgL8mUHewxWla3oG8Lz
 1insOPgrdQXiyS5lS4PknihvD0/ZE6AcdUCjfkqPzFm0/cBXXiTJs5h0tHIy1jvRKvudOwv
 mhX1uy5wZhwi6Mjx/V9hjuf2NU35AmayFsSaI89Aaqc6gLbWWxdjiyd3FnjLzXDCJRukHPc
 JO/FNJplUFRn9rPKiB/2zrgfJBGNYF0+z+U3RImKhQC1AMp/4AJAWc8GZvLxnhcCD24VGLa
 kQTktPnZ0FsPqc77bHY17GYVWEL3KHfYsg9Y+W06rTdgEtEKpEkO80DzWB8kE+BXm9O9iSM
 fUMQu4SeIBqjs8yUsNGnTOKsPSqsJxE5JEhHSrRoPCH4zRyl5XGNTxjcOP194WjtNu+SybZ
 7+/EELei0rWlRGJPE9r5AbXOWXqf1z87wViPUQh0e2oX5JhdUsE4ENTWsg9r/OMkgIOSP7l
 /zHpdqWDLKXEnPwARe44D3iIY303BJz8vgS+jSbBDAHQPGgFQaEG++chWSuhXdq7Rl44E6L
 BRBVKqJ3ccnRXMRIplStyLs3ufGr/bFOTXaP9bCgQLtBkJJVbfar6my7XI6Ou91VZPdmWdn
 qTWh2oNmQhMq2sB8ptiE7GowH3bDN+2wiy3f5pJqkK5bPfIlq0rOQZ6wDsX58B/nR8Wx3C7
 5rpuI+VZdxgY1nVHTYAhRPzdSFAozT8iJYMapEgMJ5PYK7Nf0RHh3MAw9S30qesRTtPMiby
 9wQSmjJ1WRsfjKJKXKX187cBsM/MXZYu/h6VPxaY0WBXke/J+lnwDjLKON5o3M7wyxshTU1
 ybnElfni0V5zo1AMhKfUCWDzJ2kXQkcX4pmRjmr/BpVwYcc6NsYke6vfveC6ALEqAZpl/Ra
 eXR14xPWFnufe0LbMetneX2KMRjvwKwOTUdEE8Ov/Zy2/kmxHrpSNzh4MqaoWgSEBjTzii1
 RPHwTbxMpiVW7SLSP3baQ9PutEFKiSYA7Y752FP3EkYV8fFtynTZmWA3tQumd5TuTy+wRZF
 86w3c1WMe7eqUHTsdCqEoPf6N0ZE/Y+ksj2JdyUfrQ/58gICZrD9wA=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
X-Mailman-Approved-At: Wed, 11 Mar 2026 16:14:45 +0000
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,vger.kernel.org,inria.fr,smu.edu.sg,smail.nju.edu.cn];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[smail.nju.edu.cn:?];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kexinsun@smail.nju.edu.cn,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_DNSFAIL(0.00)[nju.edu.cn : query timed out];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.684];
	R_DKIM_TEMPFAIL(0.00)[smail.nju.edu.cn:s=iohv2404];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nju.edu.cn:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: D3D5C26724E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The function set_engines() was removed in commit d9d29c747df8
("drm/i915/gem: Don't allow changing the engine set on running
contexts (v3)").

However, concurrent code paths such as i915_gem_context_lock_engines()
still access ctx->engines under engines_mutex (e.g. from execbuf
throttle), so the lock in context_close() remains necessary to
serialize the engine teardown against these concurrent readers.

So, remove the outdated reference to set_engines(), but preserve the
serialization reminder.

Assisted-by: unnamed:deepseek-v3.2 coccinelle
Signed-off-by: Kexin Sun <kexinsun@smail.nju.edu.cn>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6ac0f23570f3..958e3c822948 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1516,7 +1516,7 @@ static void context_close(struct i915_gem_context *ctx)
 {
 	struct i915_drm_client *client;
 
-	/* Flush any concurrent set_engines() */
+	/* Serialize against concurrent access to the context's engines */
 	mutex_lock(&ctx->engines_mutex);
 	unpin_engines(__context_engines_static(ctx));
 	engines_idle_release(ctx, rcu_replace_pointer(ctx->engines, NULL, 1));
-- 
2.25.1

