Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM0YOlZzymnG8gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E0735B6F1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2026 14:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9318E10E6F9;
	Mon, 30 Mar 2026 12:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="kecb9Wbb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com
 [209.85.160.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EAA010EBE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 18:55:42 +0000 (UTC)
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-4094b31a037so992303fac.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 11:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774551341; x=1775156141; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=93dR2Z7/f38EiX2nhH8I335LY48jx/pTe8LM2CbujQc=;
 b=kecb9WbbHe0WJPkkW9xYW6t8hBEBq8OQ23n7G6ZP/lhh1HqeogNq1ZB6UvbGmz58hm
 C83d+dGlcAkdgECZaJ/pVD9jhxO6y7YndsV6f6BCjzGNoG+lE8fMM0PQ4nEejwja3FAL
 QFz1a2I92n7i3cikCYwCCc9p54GKPqh38mWdZEFnTpDIupMbLHXT7Vug1Y4tSkzZMNkR
 SUWeCxlKMXYV4Wba9wfSudsrQ0SZQ9W6G27WEsNhcFNigAE2sXKpFZBrvq37ujajJfKu
 55ImOKrPurq+HkBX1qqg1GRcgrc04p93W/rtanU/0o8wBmC+tFoZfcixbAwc08S2ej8b
 lg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774551341; x=1775156141;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=93dR2Z7/f38EiX2nhH8I335LY48jx/pTe8LM2CbujQc=;
 b=s5kVU1twvihKuj7v4MG3q2V6tkjGIVRuHe0ODR9OMCwg5SYKRC1vBAL2U863VOtHlq
 xMRDauv41qt5VhMKqzWiGVz7xhsQQSL+ZjVs//QIynHg2o77GuCnuTyfmkoAstfVJH1c
 bwYmzq8u8T4XGF3LOw8UFQIWSJElSrnPiWsdKnpArcRiqiB1gPg83Ta+nIpoSapeMECu
 xagxp9IuMyuhPFvOnb3Oogo+kfIikA2oL+hDAMcyJ+R0hVdMfi5l/9Dv0TJHaYXuDhwS
 esgEoRVg/idufEgytPLzNAsPiOOFjHwiY7zc0I9a+0EQFM7QG4dkOgUysH9PV/BYbXUu
 1WTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUS1NY3ujxFmQfLVXbPucglIvqjOYVqa6vwsrv0PmzNUafO60tEGJqgJcgGHEH2898FpVGjnPr6nY4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSNlE5G9KYBPbxpUHjVSh0cNaHZnWWjuiHTGGSbxniKe+RrNSj
 7vWkFg/0PI9msSCkXEPDMjd1Y7vCYMZj5Q4/RneTGEnTvZCl1zzMhIii
X-Gm-Gg: ATEYQzyDharJod404ztUSCF5xoL9P6+ZcwRowZKy1C8tjICtUVd7l23IihNcS6eVocW
 qgi6hG4hHTHsiAtvbNWffAKlAvQBBi/v/u6bXFuGLE0AUPG1WVnmWfcwkDjYiM9lGiN/3lbMD3P
 rtZtu8tTBtU0kSyAQVt5jCfJ6zpbV9XITGsTkEWI406I4fbWI8i1vTl5RSD35Yi7xcU/1YjKiFk
 34VUCXxL6qyXH4dUfd2BPCjsxH7iNzuTfOz+0733iP5IXAGs+WOgd2uni6AFfSOIfR08G+kDUMY
 uUFJelAx86v5ep5Umb/rwUwRDqTxpLo33f15PzS7M+fb4SBF4CBcCokHXTQUsPi8el8x1GAOzRF
 7QZ2JE5cq2C7xss3RZISWQzxOYupN2w2r2kCBcvY2XICxGceS+yPx7DzWBmqU/wNwO4hwDiUdst
 53hY6A/+QaXoy1aadujesonrMJHS50ogZ9NGvJyEQz4irWsRdv
X-Received: by 2002:a05:6870:209:b0:417:2b13:f2cd with SMTP id
 586e51a60fabf-41ca6d734dcmr4697103fac.10.1774551341455; 
 Thu, 26 Mar 2026 11:55:41 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 586e51a60fabf-41cc7760c08sm3075171fac.4.2026.03.26.11.55.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2026 11:55:40 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org
Cc: jim.cromie@gmail.com, mripard@kernel.org, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, christian.koenig@amd.com,
 matthew.auld@intel.com, arunpravin.paneerselvam@amd.com,
 louis.chauvet@bootlin.com, skhan@linuxfoundation.org, pmladek@suse.com,
 ukaszb@chromium.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Subject: [PATCH v12 45/69] drm-dyndbg: DRM_CLASSMAP_USE in amdgpu driver
Date: Thu, 26 Mar 2026 12:53:49 -0600
Message-ID: <20260326185413.1205870-46-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260326185413.1205870-1-jim.cromie@gmail.com>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 30 Mar 2026 12:57:43 +0000
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
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[90];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:jim.cromie@gmail.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,linuxfoundation.org,suse.com,chromium.org,lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 79E0735B6F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Following the dyndbg-api-fix, replace DECLARE_DYNDBG_CLASSMAP with
DRM_CLASSMAP_USE.  This refs the defined & exported classmap, rather
than re-declaring it redundantly, and error-prone-ly.

This resolves the appearance of "class:_UNKNOWN_" in the control file
for the driver's drm_dbg()s.

Fixes: f158936b60a7 ("drm: POC drm on dyndbg - use in core, 2 helpers, 3 drivers.")

Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
index 95d26f086d54..e5dd051eeba9 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_drv.c
@@ -249,17 +249,7 @@ int amdgpu_rebar = -1; /* auto */
 int amdgpu_user_queue = -1;
 uint amdgpu_hdmi_hpd_debounce_delay_ms;
 
-DECLARE_DYNDBG_CLASSMAP(drm_debug_classes, DD_CLASS_TYPE_DISJOINT_BITS, 0,
-			"DRM_UT_CORE",
-			"DRM_UT_DRIVER",
-			"DRM_UT_KMS",
-			"DRM_UT_PRIME",
-			"DRM_UT_ATOMIC",
-			"DRM_UT_VBL",
-			"DRM_UT_STATE",
-			"DRM_UT_LEASE",
-			"DRM_UT_DP",
-			"DRM_UT_DRMRES");
+DRM_CLASSMAP_USE(drm_debug_classes);
 
 struct amdgpu_mgpu_info mgpu_info = {
 	.mutex = __MUTEX_INITIALIZER(mgpu_info.mutex),
-- 
2.53.0

