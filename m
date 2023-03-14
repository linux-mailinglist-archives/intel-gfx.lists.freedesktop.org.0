Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A8A6B9527
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 14:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DE010E7D5;
	Tue, 14 Mar 2023 13:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CAFF10E7D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 13:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678798984; x=1710334984;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+9OjKe2JFYn8fEZDJO4FQqXdJWQ7ghmuFfLohB9ldKo=;
 b=WTCsbfheMHcalw9m1sfbnvvOHEP+GdDK/ZdYDNB9Iw2VushcG3T99ZUr
 bsGqh1azjImDw5JB65V3DAyJWJjD4S1t4zZn7La1aS2RBiBd7LBP6tNFe
 iGUtaHy64qo5QkU8RLkEeYZPQxWYzRsGU9KpaZL9OikIjHmtm1muDT529
 bLYwfKsRi9XoohTwZEOucDq/yYJh9ElbZt6NeHeJ1dRzmjq5J8XX/3LHd
 rhZvOLTIhY/k65v0/lh2P+bRPw+Pt87hMkBZN0MaDKkGInVSwKfOd7+hw
 SV0VHTNaPy6Wg1Qzft1Ib1fLXWXw8AVpAXfr9dzZPrXmulafVVP/MJJNa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="365079901"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="365079901"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 06:03:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="672323694"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="672323694"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 14 Mar 2023 06:02:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Mar 2023 15:02:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 15:02:47 +0200
Message-Id: <20230314130255.23273-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Stop using pipe_offsets[] for
 PIPE_MISC*
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

The PIPE_MISC registers don't exist on pre-bdw hardware,
so there is no point in using pipe_offsets[] for them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9db6b3f06a74..aff3f4365b97 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3519,14 +3519,14 @@
 #define   PIPEMISC_DITHER_TYPE_ST1		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_MASK, 1)
 #define   PIPEMISC_DITHER_TYPE_ST2		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_MASK, 2)
 #define   PIPEMISC_DITHER_TYPE_TEMP		REG_FIELD_PREP(PIPEMISC_DITHER_TYPE_MASK, 3)
-#define PIPEMISC(pipe)			_MMIO_PIPE2(pipe, _PIPE_MISC_A)
+#define PIPEMISC(pipe)			_MMIO_PIPE(pipe, _PIPE_MISC_A, _PIPE_MISC_B)
 
 #define _PIPE_MISC2_A					0x7002C
 #define _PIPE_MISC2_B					0x7102C
 #define   PIPE_MISC2_BUBBLE_COUNTER_MASK	REG_GENMASK(31, 24)
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN	REG_FIELD_PREP(PIPE_MISC2_BUBBLE_COUNTER_MASK, 80)
 #define   PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS	REG_FIELD_PREP(PIPE_MISC2_BUBBLE_COUNTER_MASK, 20)
-#define PIPE_MISC2(pipe)					_MMIO_PIPE2(pipe, _PIPE_MISC2_A)
+#define PIPE_MISC2(pipe)		_MMIO_PIPE(pipe, _PIPE_MISC2_A, _PIPE_MISC2_B)
 
 /* Skylake+ pipe bottom (background) color */
 #define _SKL_BOTTOM_COLOR_A		0x70034
-- 
2.39.2

