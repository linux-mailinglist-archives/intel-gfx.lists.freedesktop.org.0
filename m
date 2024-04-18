Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC278A9D49
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 16:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC9F3113D0B;
	Thu, 18 Apr 2024 14:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gw2z2UWy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C1F113D08;
 Thu, 18 Apr 2024 14:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713451202; x=1744987202;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3FHBmR1eizyhoh5wOIeD/1vzoAOlIMHg5Wg6g66v5ik=;
 b=gw2z2UWyQDSpuQPoDYRh3uaGduE0UpqxwzRKjgqqLJHR/IG/bP8wQGe2
 Vz9vG3WcX85yCx3QyFQ/QA2ZgJn2uoqk4tX0De3HGfNHomJtr04cfZkWn
 wp7WWjjN42p07S6kBIt6CUtleqp6ApdZ9ueXxIsnbfUu6zZnDmGZOfafn
 1mftQ/wI4MLNARMfyK3jwDVpQBvjQ/lRGa2RaI9lbzwpqlhRJ8/4agGVo
 NrpGmb5h4s/xrr6VEjc36CO9N8xCi5D75qDlYiyxc2MPruW2TwfdoxntR
 VJ/ceKgUZs+FWRADppjahHh9YDrARpSzFqII4M7eUg+A6TFZBbZR2TlLK w==;
X-CSE-ConnectionGUID: XuAd1JMaTYOKQXrgiYOAiw==
X-CSE-MsgGUID: HD3RXjynRYqKJ84W4rIvKw==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19701078"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19701078"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:02 -0700
X-CSE-ConnectionGUID: XYmQlJudTv2wD3yPEV1H1w==
X-CSE-MsgGUID: OYpnvp9USIKfPNvYyN8uFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27780945"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 07:40:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 0/5] drm/i915/dmc: firmware path handling changes
Date: Thu, 18 Apr 2024 17:39:49 +0300
Message-Id: <cover.1713450693.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
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

We tried moving the dmc_firmware_path param from i915 to display params
before, so it would be present in xe as well as i915. This was commit
0d82a0d6f556 ("drm/i915/display: move dmc_firmware_path to display
params"). That failed, so I tried a quick fix, but that failed too
[1]. Revert followed in commit 318e82583ca9 ("Revert "drm/i915/display:
move dmc_firmware_path to display params"").

Do some refactoring and prep work first, with the most significant
change being the removal of special handling of
i915.dmc_firmware_path="" to disable DMC. This will now lead to the
platform default firmware being used.

To disable DMC and runtime PM, you'll need to specify a non-existent
file instead. There's no "magic" name specified for that.

BR,
Jani.



[1] https://lore.kernel.org/r/87h6gieuud.fsf@intel.com

Jani Nikula (5):
  drm/i915/dmc: handle request_firmware() errors separately
  drm/i915/dmc: improve firmware parse failure propagation
  drm/i915/dmc: split out per-platform firmware path selection
  drm/i915/dmc: change meaning of dmc_firmware_path="" module param
  drm/i915/display: move dmc_firmware_path to display params

 .../drm/i915/display/intel_display_params.c   |   4 +
 .../drm/i915/display/intel_display_params.h   |   1 +
 drivers/gpu/drm/i915/display/intel_dmc.c      | 162 ++++++++++--------
 drivers/gpu/drm/i915/i915_params.c            |   3 -
 drivers/gpu/drm/i915/i915_params.h            |   1 -
 drivers/gpu/drm/xe/xe_device_types.h          |   3 -
 6 files changed, 98 insertions(+), 76 deletions(-)

-- 
2.39.2

