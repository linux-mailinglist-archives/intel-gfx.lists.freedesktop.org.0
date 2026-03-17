Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WKgHL2xkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8192F771D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44BEB10E554;
	Mon, 23 Mar 2026 16:03:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bIb4mQhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
 [209.85.215.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B91C510E045
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 19:16:28 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id
 41be03b00d2f7-c73a12af63cso3747410a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 12:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773774988; x=1774379788; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xNksHD/Ia/lI3PwtOgNwKe8s7JojbqFZYiYVCtaCE+Q=;
 b=bIb4mQhXFuOVjZrjCLwVvP6ANdAaqS2OKEvWIWKYeyovIk5/Bdpr/tc75eZR52c9pJ
 /ClrGzD8Qmy0uW10uTz2e1wxjphpH+kmeeHfDsxUPFsar2vjexC0z9n4LV3sxQRCA4eu
 TnUDN1b490j6zqqzrApPa7SWoHsJ9hXqQ/2DB9W7KiHhoXbtGfu2HEAntFH4iI0ykI1r
 /C4ESMXNzHcos9I250TETpdxeui3tEqCXRokKPcO1DuJT9vodXtWke4MTbUOCptQOV3X
 V/EJ9GJDCpNONiAzJDc7r7Am3hV2NET80zz0239aKPMPWamakm8DqTHvVPETHGUCvb0M
 Na3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773774988; x=1774379788;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=xNksHD/Ia/lI3PwtOgNwKe8s7JojbqFZYiYVCtaCE+Q=;
 b=qaX7w3lUuy3ij+xfJcs3BRvqRaKm+Cp7/NrK+AhtCCs7Ogv0XHy85n4GhklmrK0rDs
 YuPiLcGnVOzL5QTCh3hxd/FVQzGgbCVHsqPsOsFhgJnjrnC+sBfXCuvfTbBijcmO5aQ7
 Zl1JBwofazM65e+4XWQJbsRtz2mN9wzeNbEv/p43D3qd8YAOg6c5UM4uO2Huj6WSI+Py
 ETWwu3R9oQDEXAieDe7Z/adQYbSW8q9aEIYl8fsMqQgr0y2tTs8W91MeGrxSgusLF5JF
 snbm2qKNhl7Ljua+StLlLKPEvuHJZBIrgouoMTfrrAifwH3I30J0H286C6E4vXOkA5CT
 /NTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFd2g/BlwgRjjGzDCuf/hVwTPwE4SaqWkYvAHKrjYlgacbwHu/XH8cUED2NEoiYdsuCFdi0iNiuP0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyVFmoxOjTqexToiS3gV9HCQq6HoMV1ZosxHngpNjcmIzvvgRrd
 vibD0IuxT4azW5XkzF5PMiN0UsC0aU7YjNIkOkx8/QaDmEAfcEKiKYJo
X-Gm-Gg: ATEYQzxMDpLZd+JAgauMJ2P6JqlOxUXQEnlK2Rf/XRVj/tne0uBA8UmoNWHUJFIpBNd
 IG2mLYHSu++gv7cPEDktk32QjoT/4tw9TNsxt72rFpioQ/pN3ArfaL/fq85lNWtR26U/Z8kjIXK
 UtkIorYCUttkBWIKBu4aDiDgumOF/n4XhERxrBn63HnpieJ0qSw9AmKpTGdiSgt6OfT42QNGO1J
 gaDQk1g5CbgeHPZDKgavJlAg/DRhgr9b4Pcfx9Jo+vC513gxE02cJXIKx+HSx81q4Wqe7QqgpGM
 suTb0ZsU+QQ8AulreK4kmysQwrgrtaL3g1Ixmzyt/7c+UhC/dn9XD6C3GR9EFOYvARS6ZiOBRpU
 H9hZhofR3Q1U+r+1aIRP/WVMJIfnBW0EzZ2r0p+6G/sCMGbBjkCdw+wxfo4np7mqPKP2fDz+DZr
 KPTt7xD1qqMvn/ov7isI14Jpy2Biii90cvJ5AIWb8w9eDTj2IKDJ2fw1+uyOBO4cn+PAPU6YBLY
 3gLIZ6lCJd7YyGlwGHmAeqVFUWpQ8p1/BrJkcfzBTVEHaspu5qUve9+mSf8lIr19uUJm+gz6x+D
 ny2k
X-Received: by 2002:a05:6a21:398d:b0:39b:7f5f:d591 with SMTP id
 adf61e73a8af0-39b9a0c86ddmr341476637.63.1773774988182; 
 Tue, 17 Mar 2026 12:16:28 -0700 (PDT)
Received: from 2045D.localdomain (76.sub-72-110-123.myvzw.com. [72.110.123.76])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-c741e546b01sm334350a12.21.2026.03.17.12.16.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2026 12:16:27 -0700 (PDT)
From: Gui-Dong Han <hanguidong02@gmail.com>
To: gregkh@linuxfoundation.org, dakr@kernel.org, rafael@kernel.org,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 simona@ffwll.ch
Cc: gustavo.sousa@intel.com, demarchi@kernel.org, jouni.hogander@intel.com,
 luciano.coelho@intel.com, linux-kernel@vger.kernel.org,
 driver-core@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-sound@vger.kernel.org, akaieurus@gmail.com, me@ziyao.cc,
 Gui-Dong Han <hanguidong02@gmail.com>
Subject: [PATCH 4/4] drm/i915/display: initialize string params to empty
 strings
Date: Wed, 18 Mar 2026 03:15:38 +0800
Message-ID: <20260317191538.43535-1-hanguidong02@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260317185920.43387-1-hanguidong02@gmail.com>
References: <20260317185920.43387-1-hanguidong02@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:23 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	DATE_IN_PAST(1.00)[140];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:dakr@kernel.org,m:rafael@kernel.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:gustavo.sousa@intel.com,m:demarchi@kernel.org,m:jouni.hogander@intel.com,m:luciano.coelho@intel.com,m:linux-kernel@vger.kernel.org,m:driver-core@lists.linux.dev,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-sound@vger.kernel.org,m:akaieurus@gmail.com,m:me@ziyao.cc,m:hanguidong02@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,kernel.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,gmail.com,ziyao.cc];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hanguidong02@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 6C8192F771D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Passing NULL to debugfs_create_str() causes a NULL pointer dereference
upon reading, and is no longer permitted. Change the default values of
dmc_firmware_path and vbt_firmware to empty strings ("").

Existing code that consumes these parameters already verifies both
pointer validity and string length, so empty strings are handled
correctly. Furthermore, heap allocation is not required here: these
debugfs parameters are created with strictly read-only permissions
(0400). As a result, the debugfs write operation is never invoked,
meaning the static empty string will not be erroneously freed by
kfree().

Fixes: e9913f0bd2e1 ("drm/i915/display: move dmc_firmware_path to display params")
Fixes: 29292bc6cc37 ("drm/i915/display: Move vbt_firmware module parameter under display")
Signed-off-by: Gui-Dong Han <hanguidong02@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index b95ecf728daa..0a8cad98d480 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -23,8 +23,8 @@ struct drm_printer;
  *       debugfs file
  */
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
-	param(char *, dmc_firmware_path, NULL, 0400) \
-	param(char *, vbt_firmware, NULL, 0400) \
+	param(char *, dmc_firmware_path, "", 0400) \
+	param(char *, vbt_firmware, "", 0400) \
 	param(int, lvds_channel_mode, 0, 0400) \
 	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
-- 
2.43.0

