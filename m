Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UD8+I+ZREGrgWAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:53:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 368765B48EC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628AB10F5DB;
	Fri, 22 May 2026 12:53:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fL5+WLJl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835DF10F346
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 14:45:27 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 5b1f17b1804b1-4903fd19957so1147305e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 07:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1779374726; x=1779979526; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=H2yWVwJxTaScCgj+pdDqJvd1+BNm6/dyL9FgYCmk8UQ=;
 b=fL5+WLJldpB9wXbhmidcSfD2q6/TqKbojRadFwfIZhEGPwb+r1CYPaYpUsSTnwJZiT
 cHM5cS3qCAgKozrkGorzGWl//v7feYeRYGsiyG3ztTWUTAX6Yf+LBjVKekf+VOdWnpjG
 uFZKqYMXvviTPSWCPprDNbRMuT/XzSfAipUas/V+LKgo9HtwBd/ZXQpjz4tJoScHQEeP
 weDagi6a7lsWdyAdRcxAmiqfd+lIEywqIF/XdjWs/dOZle+KtUjeGOV4SFdZui1r+K7a
 otoe3L4BK/czsxLgy+V4gNKdL9yrmp2Kh30tMxTtXo9ssrK9th8a+PZksrBTr4Tfx9BD
 Q+ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779374726; x=1779979526;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H2yWVwJxTaScCgj+pdDqJvd1+BNm6/dyL9FgYCmk8UQ=;
 b=mcI6Fs+NS8MlWibIsmX4D5RpHGf4l9B42SRsTFFfqzfDcfHWq/FraFv3PG/dgbpfrJ
 Lzd/7nu7JB/2NItCkhyQrSZib1Gur4+L+BrN3A1AMKWX2rUyOwe0NOM5DHCx8XnxmlZo
 vgsDZsgNOBcdrFP3fiV/F29M531U+VOfUiQeePsTZWYoSNJmupw5gpefEBXI7RwXcPXi
 +RamOS291BHUaZyJ1lUDY6Z4kxQZNYXa61amNW+FuExRfpPwfcoK0SpeLrR4XTXi/feE
 V1MfJCObyHeLBXuhGKGYyCJH50uy94cjQP5dHPapG9nriw4MhOcMuOLspSKyLA1+k5ly
 f12Q==
X-Gm-Message-State: AOJu0Yy5Rq7zzB9LgUUBLaJZKMmZXOh9jr9QVrB1s8U4s9P5e86jQKmy
 MdzMRccaTOMqIM0O4VmD88vVPR6CS+PZjG1AaR5XvZ54dyfNzgwuaLKONfUGDh7j6h2E2A==
X-Gm-Gg: Acq92OF+JgE8FbMZhT//Cnk7jKC5y/f6nkeDNmoIW/5nJEXaCAjptxYVZskroqiIvx4
 AjcEsLlrcDD1o09S8ujlVZSyneLas1uakDRaIFTD5YPU24dz7mn0mGaKWIEd0a/KBL8PEr4oLF8
 z9yHXoZBsjJKAr/ivgWfv41Op0eXrp5zRIDXpM9yI/35q5YXxwuPsUyiA8QhiQbkUKbB3+GJ4V8
 WkdOGxtgO8fdRYVtIkoPQSI883kVsNFJRG/e8xPR2RpkEz5LsJOxNQlYRPz2mJKSGMjZLl3oeG3
 14kTMheSHw/Xl7SKIz2WDwMt63msCxyExXwpUvYrx1kQIHezdy6klMhhWToT5U9acjvxBn00QSU
 V69ISt64+uTBxhXAfcsq+3nE2opLUMv55Jr9hCoG4WMqQZsJyQKydPiFmzgyPOc8NUKF7r18+np
 NSMWEBzefB30oVDvwoiYVwrV5/yDJ/+U9GQD+asVYdARTwhWJVt3eBMR8=
X-Received: by 2002:a05:6000:2403:b0:45e:655d:6f7 with SMTP id
 ffacd0b85a97d-45ea3ae887emr5723344f8f.24.1779374725641; 
 Thu, 21 May 2026 07:45:25 -0700 (PDT)
Received: from nixos-office (195-23-151-163.net.novis.pt. [195.23.151.163])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-45eaa7da46esm3699744f8f.14.2026.05.21.07.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2026 07:45:24 -0700 (PDT)
From: Julian Braha <julianbraha@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Julian Braha <julianbraha@gmail.com>
Subject: [PATCH] drm/i915: use 'depends on' with visible DEBUG_OBJECTS for
 DRM_I915_DEBUG and DRM_I915_SW_FENCE_DEBUG_OBJECTS
Date: Thu, 21 May 2026 15:45:18 +0100
Message-ID: <20260521144518.410717-1-julianbraha@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 22 May 2026 12:53:52 +0000
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
X-Spamd-Result: default: False [1.99 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:julianbraha@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.805];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 368765B48EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A previous version of this patch[1] accidentally introduced an unmet
dependency bug, because DRM_I915_DEBUG selects
DRM_I915_SW_FENCE_DEBUG_OBJECTS without also depending on DEBUG_OBJECTS.

DRM_I915_SW_FENCE_DEBUG_OBJECTS currently selects DEBUG_OBJECTS even though
DEBUG_OBJECTS is visible to users. Other config options use 'depends on'
for DEBUG_OBJECTS, so let's do the same here.

In this new version of the patch, let's also add the dependency on
DEBUG_OBJECTS to DRM_I915_DEBUG, to prevent the unmet dependency.

This select-visible Kconfig misusage was detected by Kconfirm, a static
analysis tool for Kconfig.

Link 1:
https://lore.kernel.org/all/20260502191932.4491-1-julianbraha@gmail.com/

Signed-off-by: Julian Braha <julianbraha@gmail.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 3562a02ef7ad..657cdf49181e 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -35,6 +35,7 @@ config DRM_I915_REPLAY_GPU_HANGS_API
 
 config DRM_I915_DEBUG
 	bool "Enable additional driver debugging"
+	depends on DEBUG_OBJECTS
 	depends on DRM_I915
 	depends on EXPERT # only for developers
 	depends on !COMPILE_TEST # never built by robots
@@ -153,7 +154,7 @@ config DRM_I915_TRACE_GTT
 config DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	bool "Enable additional driver debugging for fence objects"
 	depends on DRM_I915
-	select DEBUG_OBJECTS
+	depends on DEBUG_OBJECTS
 	default n
 	help
 	  Choose this option to turn on extra driver debugging that may affect
-- 
2.53.0

