Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOEPOeLh4GlhnAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC1940EA9A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A627610E1FB;
	Thu, 16 Apr 2026 13:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metarealtyinc-ca.20251104.gappssmtp.com header.i=@metarealtyinc-ca.20251104.gappssmtp.com header.b="eLJt+N8T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8316810E226
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 13:06:36 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id
 af79cd13be357-8d67a483d3eso724122785a.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 06:06:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metarealtyinc-ca.20251104.gappssmtp.com; s=20251104; t=1776258395;
 x=1776863195; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pMMALyjYNJKGT7Yxy/N12LBRHyFY9Za0gj2L+9O7R6c=;
 b=eLJt+N8Tb9UHr4Ugc/ZhYD0syrvN9UvkpgpMK1PbYyTKLXwQB2vjrWoul8hBKTpR3t
 diObTXwyI857h1k4pRzGrcfU53BCJ5xNMDi1/RW+8Yfd67dIN+UGUQfDuk7lr7UNud8B
 CXrWY7divCzIPt0s9jdxkJdN0SGGGMMysOs6muqASDTnCeZ6NztTSvknmewJPyEvCorY
 K4goXI/1+b4VgBqayfE4qzEiju0nD72i87TGq03bxV7khgXW/Zm9Fxt1yMphKfeHGX5P
 CqXABOpOOqssNuPm7dLU4OsQzivEgxvEXVX9uqXgny/gZxONAaDxGnfDX4vm7LNP4N1G
 NjmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776258395; x=1776863195;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=pMMALyjYNJKGT7Yxy/N12LBRHyFY9Za0gj2L+9O7R6c=;
 b=p6au++dsi1e3Rxr3KXsmraSeDOkabNzUY1re64SCb9OSdOlNZR3JF8IH94u4BWzXhn
 0gQ9EQypKAgfvDZ0wEPQlYP9AWdmHtdP3uBrcGCas5BYZbB2P3+ptZIw09Uwa5Q/6QN/
 9wFVeHWOM8Xrcxl+Qem7A7z/jBK5K3dpTkRMFf4cYjIqDqkummbua7dVuR5/V3v8tCru
 +dIzmhPLO1RLpqbQY1Eh8UCDkjavKb3gXuk70VY6c8W29xVO+Qvi55u0ka+udNarUvNj
 Mghds9DsRbPCVrVnaoeLnGUutlbk2Lf3DlHe26CbZmaSuqMMIcn07JS0mB2TmtxB0a3g
 M6xg==
X-Gm-Message-State: AOJu0Yz3SR7UKySkznRvtT+3lw2eOxgtGJK8Feah5j41udoAIgbedN9J
 GZmH5NsOfJiFS/tvwrk/LN/UaOe3E7oxmhysSKrvD2ZOS2eKJgT93my4lTG1n0/iitYwGMmaE8Q
 ipd1i8pDp3RDhwR3HVAQcqEsgibHrfzGOzfyPyZX1eoc6i8lJnKfd+fNgDsbsa9HhXwu/ri3YOG
 EM2qhKJXfa67neMG20+GBgd+fQQWrpjFcD7yMahi9sAUv2uQadOj/Y
X-Gm-Gg: AeBDieuT2TX8bFrYb9b7xQWGfKI6cYCWb01p2cPFE1tAPh+ct3vdGvvuvMjfGq4fSub
 zWvOXKlJ9wqfslJ9VVfP5AcXESMCd/092y9WAf54kr0y4lb8/PEs7eDzj5XAe9OkXsqdbwW+0Vs
 bLjKhOuMTo/N8yQHwjCnrRjCiZSAGVaf+8p2udMdfW4tv0CdpMVfzK4/3fAklzECHf/IaCleX/Q
 F7+whIK8Fi39XbFp8iMx470mhVEi1eLxGGhWzOHeIZsCv0e06C4ZAngKDgTHNuK5JG4UVI7etH4
 B9ibW2F+gxMtHlfA0Kroy+A6alMzOoW9G5r9DdYypf3jix5dWz/3CCUk5yW6KQvfjJFE/UcoeW0
 E8/MlamuOfFdOFZjPIcQ+aPSuZZuB6b+pP7VVSYPLbcOtIhoCg7WeiJSXDz7JCzZkgO28jQ8VMD
 fU3o63s9iH79C1Y5BzoCDHEwyjhhCuSSPTuBtUBh+GudNy3QQtcOX+FTMDVJSD2RVmFbFmHTtMQ
 DrJCOuy2O/XoFdyXs9MzH4g0ipnr59qPl9Kq5UZckA=
X-Received: by 2002:a05:620a:468c:b0:8c7:1118:c514 with SMTP id
 af79cd13be357-8ddcd6fee90mr3190551985a.17.1776258394418; 
 Wed, 15 Apr 2026 06:06:34 -0700 (PDT)
Received: from jake-laptop ([2607:fea8:e5:500:8e39:827f:e928:9eb7])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8e4f31f95f9sm125192385a.43.2026.04.15.06.06.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 06:06:32 -0700 (PDT)
From: Jake S <j@metarealtyinc.ca>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, rodrigo.vivi@intel.com,
 Jake S <j@metarealtyinc.ca>
Subject: [PATCH 2/2] drm/i915/display: allow eDP VRR when EDID has adaptive
 sync range
Date: Wed, 15 Apr 2026 09:06:26 -0400
Message-ID: <20260415130626.10523-3-j@metarealtyinc.ca>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260415130626.10523-1-j@metarealtyinc.ca>
References: <20260415130626.10523-1-j@metarealtyinc.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 16 Apr 2026 13:19:24 +0000
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
X-Spamd-Result: default: False [1.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[24];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[metarealtyinc-ca.20251104.gappssmtp.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[metarealtyinc.ca : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[metarealtyinc-ca.20251104.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[j@metarealtyinc.ca,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[metarealtyinc.ca:mid,metarealtyinc.ca:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 9AC1940EA9A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_vrr_is_capable() currently hard-gates eDP VRR on the VBT (Video
BIOS Table) vrr flag. Many OEMs ship laptops with VRR-capable eDP OLED
panels but do not set the VRR flag in the VBT, making VRR impossible
on Linux even though the hardware supports it and works on Windows.

Relax the eDP check: if the VBT flag is not set but the EDID provides
a valid monitor range with delta > 10Hz (now also populated from
DisplayID Adaptive Sync blocks by the previous patch), allow VRR. The
existing checks for DPCD Ignore MSA and monitor range delta still apply.

This mirrors the approach taken by amdgpu, which has its own EDID-based
VRR fallback (parse_edid_displayid_vrr) for exactly this class of panel.

Tested on Dell XPS 2026 (Intel Panther Lake / xe driver, LG Display
OLED eDP, 3200x2000, VRR 20-120Hz confirmed via vblank event tracing).

Signed-off-by: Jake S <j@metarealtyinc.ca>
---
 gpu/drm/i915/display/intel_vrr.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/gpu/drm/i915/display/intel_vrr.c b/gpu/drm/i915/display/intel_vrr.c
index bea0057..f527471 100644
--- a/gpu/drm/i915/display/intel_vrr.c
+++ b/gpu/drm/i915/display/intel_vrr.c
@@ -47,7 +47,12 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 	 */
 	switch (connector->base.connector_type) {
 	case DRM_MODE_CONNECTOR_eDP:
-		if (!connector->panel.vbt.vrr)
+		/*
+		 * Prefer VBT flag, but fall back to EDID monitor range
+		 * for panels where OEM firmware omits the VBT VRR flag.
+		 */
+		if (!connector->panel.vbt.vrr &&
+		    !(info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10))
 			return false;
 		fallthrough;
 	case DRM_MODE_CONNECTOR_DisplayPort:
-- 
2.53.0

