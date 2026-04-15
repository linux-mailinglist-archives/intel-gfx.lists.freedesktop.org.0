Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GI4uF+Dh4GlhnAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F1740EA8C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 15:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A20B710E1E7;
	Thu, 16 Apr 2026 13:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metarealtyinc-ca.20251104.gappssmtp.com header.i=@metarealtyinc-ca.20251104.gappssmtp.com header.b="K+Xe7zoN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB04610E226
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 13:06:33 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id
 af79cd13be357-8c6f21c2d81so507849685a.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 06:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=metarealtyinc-ca.20251104.gappssmtp.com; s=20251104; t=1776258392;
 x=1776863192; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AjPmFnZ3ltIWGyywLfHNdU76wOgW6psantaHXQ/II4o=;
 b=K+Xe7zoNRu+e1trCX8cBigbG2i+SuXKh6e9Jz9T9kJIkQuAdMVSlNUGTfqE4zxCeuE
 hp8c8TqmlIqYlO+Rb9DOJZe4qQzo9HDlS7m3S+0W8mDyhDPN++GO3pi9OYQYZm/2Webk
 v99og+cNgQH7pIUYFwRh34uq/TgQqh5AWkLlyf1X5KPm5PolyW3zaxIttgXDmmKHrHHC
 781Zzk6h4zx3RaFXfMuUZ4aO1O+do7NVEkveaJFimt5kB96WIu50h6YwP9wMHTWUoKMw
 1xsMMYYSD+trosp9s3/PhU38AXeFJjmvyamO7p4JghLzxpEdNdgQW8h9R1l1juMag9YU
 FgmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776258392; x=1776863192;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=AjPmFnZ3ltIWGyywLfHNdU76wOgW6psantaHXQ/II4o=;
 b=LFcrHpLUo09+hjolbRLrGJlPstDqffbel5UYkNR5BI8WQONLF36d9hkc3vLGLq50I4
 J3dWuHABiCaSFQlrPZoVIUPQsb58uLgrtF8rYEVjwxYJz0TWafGA1uJN/d3prp+C043A
 /ZPOK3pHdEMLavEfzxJB3r/fOK52305vTI0sBUIlBT+BMM9pzG7CbD9W9TGq0LR54Rs5
 F5zetF19jSZVaidgchpJIJpYfMdDX6B+C7XzrphqkMWqBX4cI0GKcEMhk8ai8WY8jHyD
 QoWDmjxt8hV+H91HFIjtE32W5VUCnnzWWuAUukZ3qwjMIaxJWOCfVdyj5El/2bVkLQlB
 GATw==
X-Gm-Message-State: AOJu0Ywqb7vjH37WKFVyIbML2jG5eIVFg3r5GgaAN0MwembQQbndLWLz
 SSVaZNm8vtsrP19welaiWtlsd7kq0Um63dJ2v3DGJlR/G6wa3zqFu/fbuF9DZmtsnadFkq9Zl2K
 kwosFJabaGx904CEDibfKnmZiokvZ9QVp9vJ0GMDTdwwXZ84r4b2sTbMrNKG+Nb6iC3aHTRDMkP
 KyM93UZDRDlNljCs/Lyoui866rKxbPh9RcxXHW3rnTOmbxMiLhi4PoBY0=
X-Gm-Gg: AeBDies9JTiKA2DXx800kZhcrelteJE4kwY4j/XJLxFL4UaV3HIxpgZZwW6kST6CSU6
 2i2zgHZmidnl2zA+pc6Vvnq3bZjjNu90WE5ux9XJPGBiXZzJ6Qr/1GBi3YUR9ds7pwo4Lr44mQx
 NWWJoJgMJrD4vUUy2vmZHzpj9feGw342LUAiJeSNnLgBf6suoOOhG3HI9WEcwRHMVVVIEqwgOlR
 xDesbGXiE0pyzB3sJAYIPttTflxRLShyzC89nXEZX+6CsvUBVTYMUuRy1UZEKNsPNfeGUbU+uWp
 N/w9fys6Uc/ehHKhTTYNf6ggmGFZufzC4wSuFKSXfA8Hh2AiLrJPX67+tXCkJZoH22L9wP2JFb5
 FyNnvpsmDCXyFE+Uuhn+Zk28j+vtUxRPXrrVx/MSybWmhaQLymXymnk2DCk3ANaY7FHk6wQ7L7j
 48d2OF/lPdKIDkXrkYW03S8r8YYd3DZ9Tw+iib5ZVsmR6ynpaGiyLYC/x2dYY0107VYSPoPiM9p
 ZT98llW5Cvp9le6nrHEhU4+PWoH8ygdjVi1XUAugCw=
X-Received: by 2002:a05:620a:290d:b0:8c6:ff8f:58af with SMTP id
 af79cd13be357-8ddcf7ab003mr3225225285a.51.1776258391861; 
 Wed, 15 Apr 2026 06:06:31 -0700 (PDT)
Received: from jake-laptop ([2607:fea8:e5:500:8e39:827f:e928:9eb7])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8e4f31f95f9sm125192385a.43.2026.04.15.06.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 06:06:30 -0700 (PDT)
From: Jake S <j@metarealtyinc.ca>
To: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, jani.nikula@intel.com,
 ville.syrjala@linux.intel.com, rodrigo.vivi@intel.com,
 Jake S <j@metarealtyinc.ca>
Subject: [PATCH 1/2] drm/edid: populate monitor_range from DisplayID Adaptive
 Sync block
Date: Wed, 15 Apr 2026 09:06:25 -0400
Message-ID: <20260415130626.10523-2-j@metarealtyinc.ca>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,metarealtyinc.ca:mid,metarealtyinc.ca:email]
X-Rspamd-Queue-Id: A8F1740EA8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The DRM EDID parser only reads monitor range (min/max vfreq) from the
base EDID Display Range Limits descriptor (tag 0xFD). Many modern eDP
OLED panels ship with a DisplayID v2.0 extension containing an Adaptive
Sync Data Block (tag 0x2B) that declares the VRR range, but no base
EDID range limits descriptor at all.

This leaves info->monitor_range zeroed on Intel/Nouveau/etc, while
amdgpu has a private workaround (parse_edid_displayid_vrr). Add generic
drm_get_monitor_range_displayid() so all drivers benefit.

Handles both tag 0x2B (Adaptive Sync, CTA-861.6) and tag 0x25 (Dynamic
Video Timing Range Limits, DisplayID v2.0 section 4.5).

Only fills in monitor_range as a fallback when the base EDID parsing
found nothing, preserving existing behavior for panels with proper Range
Limits descriptors.

Tested on Dell XPS 2026 (Intel Panther Lake, LG Display OLED eDP,
3200x2000, VRR 20-120Hz via DisplayID tag 0x2B).

Signed-off-by: Jake S <j@metarealtyinc.ca>
---
 gpu/drm/drm_edid.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/gpu/drm/drm_edid.c b/gpu/drm/drm_edid.c
index 68390e7..ebefd18 100644
--- a/gpu/drm/drm_edid.c
+++ b/gpu/drm/drm_edid.c
@@ -6567,6 +6567,57 @@ static void drm_get_monitor_range(struct drm_connector *connector,
 		    info->monitor_range.min_vfreq, info->monitor_range.max_vfreq);
 }
 
+/*
+ * Parse DisplayID v2.0 Adaptive Sync Data Block (tag 0x2B) as a fallback
+ * when the base EDID has no Range Limits descriptor. Many modern eDP OLED
+ * panels only advertise their VRR range via DisplayID, not base EDID.
+ *
+ * Also handles tag 0x25 (Dynamic Video Timing Range Limits).
+ */
+static void drm_get_monitor_range_displayid(struct drm_connector *connector,
+					    const struct drm_edid *drm_edid)
+{
+	struct drm_display_info *info = &connector->display_info;
+	const struct displayid_block *block;
+	struct displayid_iter iter;
+
+	if (info->monitor_range.min_vfreq && info->monitor_range.max_vfreq)
+		return;
+
+	displayid_iter_edid_begin(drm_edid, &iter);
+	displayid_iter_for_each(block, &iter) {
+		const u8 *data = (const u8 *)block + sizeof(*block);
+		int len = block->num_bytes;
+		u16 min_vfreq, max_vfreq;
+
+		if (block->tag == 0x2b && len >= 6) {
+			/* Adaptive Sync Data Block (CTA-861.6) */
+			min_vfreq = data[2];
+			max_vfreq = data[3] | ((u16)(data[4] & 0x3) << 8);
+		} else if (block->tag == DATA_BLOCK_2_DYNAMIC_VIDEO_TIMING &&
+			   len >= 6) {
+			/* Dynamic Video Timing Range Limits (DisplayID v2.0) */
+			int offset = ((data[0] >> 3) & 0x3) ? 5 : 3;
+
+			if (len < offset + 3)
+				continue;
+			min_vfreq = data[offset];
+			max_vfreq = data[offset + 1] |
+				    ((u16)(data[offset + 2] & 0x3) << 8);
+		} else {
+			continue;
+		}
+
+		if (max_vfreq && min_vfreq && max_vfreq > min_vfreq) {
+			info->monitor_range.min_vfreq = min_vfreq;
+			info->monitor_range.max_vfreq = max_vfreq;
+			break;
+		}
+	}
+	displayid_iter_end(&iter);
+}
+
+
 static void drm_parse_vesa_specific_block(struct drm_connector *connector,
 					  const struct displayid_block *block)
 {
@@ -6756,6 +6807,8 @@ static void update_display_info(struct drm_connector *connector,
 
 	drm_get_monitor_range(connector, drm_edid);
 
+	drm_get_monitor_range_displayid(connector, drm_edid);
+
 	if (edid->revision < 3)
 		goto out;
 
-- 
2.53.0

