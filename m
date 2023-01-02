Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BD065AD6D
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 07:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2501C10E177;
	Mon,  2 Jan 2023 06:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E3AB10E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 06:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672640412; x=1704176412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4v39lxQ4KNRRmauM+n4vwvoYGegMOWdiR03dGlE7s/E=;
 b=UbblKFliiCxPcozj0J5r8lunHUOLBeYFmupov9EGzn5mFORGOW6VCx8d
 0BKRSV2K27+YeGo5tbMKWgRc7I0WZFE2sVfulmCgLiA6aMLHhTZJrt5+u
 6/cRRlMoB5AXLMkeRCw19Xrzg7+yH1QJ7gPcLXFdg0XJ5t29RuK+CND29
 Dp24X1l2Dk7I1DgwL5pweBRG88zYLpZk1YtXlMtMDyAo1hDieqyz35NG7
 qq/cPkGgs7jFxZ4FHS4Ko7r8zZ5cXDgNN14hTlpZ/M8kmi8FzKJcsB2sp
 zqgKsw3xNqEUqwr89j9wXlL4vCtC47t9tKl4xKcMlcS+zhvi04F4GA2xy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="348657597"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="348657597"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 22:20:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="647840538"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="647840538"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 01 Jan 2023 22:20:08 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 11:50:01 +0530
Message-Id: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/4] Add new CDCLK step for RPL-U
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A new step of 480MHz has been added on SKUs that have a RPL-U
device id. This particular step is to support 120Hz panels
more efficiently.

This patchset adds a new table to include this new CDCLK
step. Details can be found in BSpec entry 55409.

RPL-U device ids are currently added within the RPL-P sub
platform. It seems to be an overkill to add a separate sub
platform just to support this change. Therefore, quirks
are a good way to achieve this.

In addition to identifying RPL-U device id, we need to make a
distinction between ES and QS parts as this change comes only to
QS parts. CPUID Brand string is the only way to make this distinction
currently. ES parts have "Genuine Intel" in their brand string
while QS parts have a more specific brand string, for ex.
"13th Gen Intel(R) Core(TM) i5-1345U". Therefore, 480Mhz step is only
supported in SKUs which does not contain the string "Genuine Intel" in
the Brand string.

The patch "drm/i915: Apply CDCLK quirk only on QS parts" adds this
change. We have separated this patch because we request feedback
from the community if this change needs to be upstreamed or not
as ES parts will be deprecated in future. Feedbacks are welcome.

Chaitanya Kumar Borah (4):
  drm/i915/quirks: Add quirk for 480MHz CDCLK step
  drm/i915/display: Add 480 MHz CDCLK steps for RPL-U
  drm/i915: Initialize intel quirks before CDCLK initialization
  drm/i915: Apply CDCLK quirk only on QS parts

 drivers/gpu/drm/i915/display/intel_cdclk.c   | 25 ++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c |  2 -
 drivers/gpu/drm/i915/display/intel_quirks.c  | 40 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h  |  1 +
 drivers/gpu/drm/i915/i915_driver.c           |  2 +
 5 files changed, 68 insertions(+), 2 deletions(-)

-- 
2.25.1

