Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD467329B3F
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 12:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E1DC89F8E;
	Tue,  2 Mar 2021 11:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A0789C1F
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 11:03:23 +0000 (UTC)
IronPort-SDR: KEaP1yYdzt3xnHv1/pjZ3E11SEfzZeV4pjZ6YFPmdUbOHhui1hcl06A465f9D0wLZnJx+vrs8+
 tX8Gausts/tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="174408626"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="174408626"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:03:18 -0800
IronPort-SDR: tMvce93HlJExdnW/907CjaeRgMnhY4t8OY9vqbyloJVQXfV6icRiTOZGtEMRzd/NGxK+JptDLA
 eeBZx/1TpxWA==
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="406663611"
Received: from rwathan-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.61.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 03:03:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 13:02:58 +0200
Message-Id: <cover.1614682842.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 0/4] drm/i915: complete eDP MSO support
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

The remaining and updated patches from [1].

Address some review comments from Uma, and fix MSO for downclocked
modes.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/86992/

Jani Nikula (4):
  drm/i915/mso: add splitter state readout for platforms that support it
  drm/i915/mso: add splitter state check
  drm/i915/edp: modify fixed and downclock modes for MSO
  drm/i915/edp: enable eDP MSO during link training

 drivers/gpu/drm/i915/display/intel_ddi.c      | 78 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  | 48 +++++++++++-
 .../drm/i915/display/intel_display_types.h    |  7 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 72 ++++++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 5 files changed, 201 insertions(+), 6 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
