Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55039654094
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 13:01:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF32110E4F2;
	Thu, 22 Dec 2022 12:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65AC410E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 12:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671710460; x=1703246460;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3iGW60T39h+U1iu7psg3vlS5vbS6cEza9oIHGks4IhM=;
 b=j+epJlbFHGWkDM9NxiVbc2ftQa/kwHP01bHDju+TlWQ3tT7Zx6v+LCjj
 iT9lOl3nTqnaVCeJLyLmD5HZSfMxIehvmOkom7zAJr0xuRjGQN9xwF6ch
 T5+zgcZlfNt1SYi7ghTWPqoAhi7jr6YmDXp0yXELG6nfts8+V5Cv0RN/w
 +HLao16gaXsNEixp/viwGtglsNlMJ6A0eIE+hpVMjhtNPX2+An8j+bn8L
 n/ftiXCshJhXXLFjZ1WjH/Ig+VJNchg/pXZHl99OaIyILQo8LHzH/wUR0
 6Y0Y1oHIIGXkx6LzdNgo8oGP2YwK0PEaIWQHjuRX7Dn6dLCsrWh7rSSRS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="303541471"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="303541471"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 04:01:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="794079200"
X-IronPort-AV: E=Sophos;i="5.96,265,1665471600"; d="scan'208";a="794079200"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 22 Dec 2022 04:00:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 Dec 2022 14:00:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Dec 2022 14:00:46 +0200
Message-Id: <20221222120048.8740-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
References: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/psr: Add the latency reporting
 chicken bit for pipe D
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

Pipe D has a chicken bit for the latency reporting override
thing as well. Add it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 ++
 drivers/gpu/drm/i915/i915_reg.h          | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 70bd4e69834c..a233510b2162 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1112,6 +1112,8 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
 		return LATENCY_REPORTING_REMOVED_PIPE_B;
 	case PIPE_C:
 		return LATENCY_REPORTING_REMOVED_PIPE_C;
+	case PIPE_D:
+		return LATENCY_REPORTING_REMOVED_PIPE_D;
 	default:
 		MISSING_CASE(intel_dp->psr.pipe);
 		return 0;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b2cf980f323..b0b3b511e19f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5737,6 +5737,7 @@
 #define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
 
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
+#define   LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
 #define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
 #define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
-- 
2.38.2

