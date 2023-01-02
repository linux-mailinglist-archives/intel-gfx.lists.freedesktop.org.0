Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E75E965B299
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 14:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 351CD10E333;
	Mon,  2 Jan 2023 13:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF45410E333
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 13:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672665789; x=1704201789;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MqP1V5o5PAykpjFAM0vDvI4evsplZ6IY06CzB7rYtMU=;
 b=UfAnPGyrP6DcaL2pEHbejIe1fdyvHwtwgWj+0+99/IM6Y4RgkvBsL9QH
 nkQNCOeRVISlsqg6X2oz7klBJb4TdYN+dKOPRoKAp9QbJYJpmuVlIMYoI
 uNfGA8av7NLbSKefgs3k21by7k5jaeioQ4y6kaUQ6uIy11bK5AlwPBSEf
 qJeOGVneoQ1etgy7sghks2lhE+aipwIDdC8Y2PA29daKAftenNRbpjwnQ
 gqh8sZ5G1GIkTYf3gS680eQFpMN96kTerA7F6zssLp92+no9ZPbUBy7eg
 eID1ttgKbGsv66n9KfimhjCXcZbclO7RC/eL2brtr4iEupLUf8zq3dpqB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="301169520"
X-IronPort-AV: E=Sophos;i="5.96,294,1665471600"; d="scan'208";a="301169520"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 05:23:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="899877441"
X-IronPort-AV: E=Sophos;i="5.96,294,1665471600"; d="scan'208";a="899877441"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jan 2023 05:23:07 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 15:23:06 +0200
Message-Id: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix timeslots argument for DP DSC SST
 case
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We now accept timeslots param exactly how the variable
sounds: amount of timeslots, but not ratio timeslots/64.
So for SST case(when we have all timeslots for use), it
should be 64, but not 1.
This caused some issues in the tests.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 13baf3cb5f934..362fb394d613c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1696,7 +1696,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
-						  conn_state, &limits, 1, true);
+						  conn_state, &limits, 64, true);
 		if (ret < 0)
 			return ret;
 	}
-- 
2.37.3

