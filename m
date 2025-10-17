Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B349BEA8B2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF8B310EC77;
	Fri, 17 Oct 2025 16:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AR4rZZoQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0D3010EC77;
 Fri, 17 Oct 2025 16:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717670; x=1792253670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iazpCNEjIb9f33DYLpr9olhIoB8iYtyqf1DPcaOCeY4=;
 b=AR4rZZoQg56f96pytIZOn8Y8eAxsgYMJWMPpXqGlOTfZStea1avZhS8k
 IdbfzCYQdQA1QkoQ3Ex1b/yJp5WaUxFTkMScV1ld/dlAx7Cu44m6YMY4f
 mq+dI9C5Nd3M6OGzvEclkovAHbGleoUoz+A/F/pxucvDiU0hlzUCpCET1
 mGiHPvRp2Mc7hyyzbRa90UiKL2fJYhRpazb12XuMaVs4kIj4fZXpkF3JD
 ZWZVe2JG2+FhB9JnWac1q92Mm9fwU/4aWReL1FFUTqJJC/cczk5Ajchr/
 7PbN/deTIguKgxXdCP4P4Y+50SWN6nnn856Y4yZWB2/efhtFGZG/tjhgK w==;
X-CSE-ConnectionGUID: lvFBxcN0T2qlphMXeTRftQ==
X-CSE-MsgGUID: yvvJ5RArQ368diY1sBqU3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="62142215"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="62142215"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:30 -0700
X-CSE-ConnectionGUID: vss6RYzAQ3Ga2gK0n8luug==
X-CSE-MsgGUID: ug0/ZisKRfCOCs1qzkQneg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="188062860"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915/scaler: Adjust pipe scaler scale factors for
 4:2:0 ouput
Date: Fri, 17 Oct 2025 19:14:10 +0300
Message-ID: <20251017161417.4399-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

4:2:0 output effectively involves an extra downscale factor of
2x2 due to the chroma downsampling. Adjust the stored scaler
scale factors accodingly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 640c65818f8a..e8a8facdc300 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -499,6 +499,15 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 
 			return -EINVAL;
 		}
+
+		/*
+		 * For the purposes of prefill 4:2:0 chroma
+		 * subsampling is considered a 2x2 downscale.
+		 */
+		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+			hscale <<= 1;
+			vscale <<= 1;
+		}
 	}
 
 	scaler_state->scalers[*scaler_id].hscale = hscale;
-- 
2.49.1

