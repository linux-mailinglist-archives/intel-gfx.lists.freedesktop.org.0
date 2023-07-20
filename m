Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667F175AA63
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D6110E585;
	Thu, 20 Jul 2023 09:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7470010E585
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 09:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689844466; x=1721380466;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7ka/tckbdqosWMSmeFnhGgQZcbsxqB06CAMkC9Cwp0U=;
 b=j/CwyxJtqbfRunTMe0YKGiJBfGrfYm5w+bnyJ2wUFN3KlxqYim8Jtft0
 6vY7+HCbUs5RTwie9u6Srh1R9XBA+er4I+ECDMjz/dc9vw3u+LAQIMYv/
 WfTVd5oEQWVQoKgMfUdVYTJg0Q+AqU8coEptuUFxUe9rHdLMNFUnQ2qxu
 ONN8b+gjBYBixHgNnK8H8hGixkN82/ddbQNXhvNOae4WM3VXw2kpZrdoQ
 NRvExyXmQw/tB7DGqE795hCVNngfFFBhlusiwgwvWXK9zGS1u42HB+lLC
 U7NsrpCz3FOQDhDYwyN8nWT/bEgz/r+nl8JJM6CyfLvatZF5MZl7m+fsH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="364140593"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="364140593"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="970981903"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="970981903"
Received: from ssauty-mobl1.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.56.229])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:24 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 12:14:07 +0300
Message-Id: <20230720091411.347654-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] drm/i915/tc: some clean-ups in max lane
 count handling code
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

Hi,

Here are four patches with some clean-ups in the code that handles the
max lane count of Type-C connections.

This is done mostly in preparation for a new way to read the pin
assignments and lane count in future devices.

In v2:
   * Fix some rebasing damage.

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/tc: rename mtl_tc_port_get_pin_assignment_mask()
  drm/i915/tc: make intel_tc_port_get_lane_mask() static
  drm/i915/tc: move legacy code out of the main _max_lane_count() func
  drm/i915/tc: remove "fia" from intel_tc_port_fia_max_lane_count()

 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |  4 +--
 drivers/gpu/drm/i915/display/intel_tc.c      | 38 +++++++++++---------
 drivers/gpu/drm/i915/display/intel_tc.h      |  3 +-
 4 files changed, 26 insertions(+), 21 deletions(-)

-- 
2.39.2

