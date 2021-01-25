Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8882630273E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 16:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F101D89CD7;
	Mon, 25 Jan 2021 15:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47E7D89CD7
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 15:52:40 +0000 (UTC)
IronPort-SDR: OWLYHsleZ2zYXePzVBRkhUyT9pkYkOu/f4Y8KbDR1/C7yvMQiPWMdGDHRZW5FIs7G72E2Muuz+
 dkUkCzDvD9tA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="158925553"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="158925553"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:39 -0800
IronPort-SDR: JPXMQQuKyfF90P+Eo1wQCnrfzmvdjLIhADkoG1o701ZZDrAe7MX37yIuHzXIymnAnuCeb8MWdA
 moZpoe7N4HZw==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="387434428"
Received: from grassena-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.78])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 07:52:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 17:52:24 +0200
Message-Id: <cover.1611589818.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/9] drm/i915/edp: enable MSO... maybe
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Try to enable eDP Multi-SST Operation (MSO) on TGL.

This is completely untested, no idea if it'll work or not.

Missing pieces are at least:

- Digging pixel overlap from DisplayID 2.0
- PSR
- DSC

BR,
Jani.


Jani Nikula (9):
  drm/dp: add MSO related DPCD registers
  drm/i915/edp: reject modes with dimensions other than fixed mode
  drm/i915/edp: always add fixed mode to probed modes in ->get_modes()
  drm/i915/edp: read sink MSO configuration for eDP 1.4+
  drm/i915/reg: add stream splitter configuration definitions
  drm/i915/mso: add state readout for platforms that support it
  drm/i915/mso: add state check
  drm/i915/edp: modify fixed and downclock modes for MSO
  drm/i915/edp: enable eDP MSO during link training

 drivers/gpu/drm/i915/display/intel_ddi.c      | 74 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  4 +
 .../drm/i915/display/intel_display_types.h    |  8 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 94 ++++++++++++++++---
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 drivers/gpu/drm/i915/i915_reg.h               |  3 +
 include/drm/drm_dp_helper.h                   |  5 +
 7 files changed, 179 insertions(+), 11 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
