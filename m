Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2975466D710
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 08:42:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED6C10E2D7;
	Tue, 17 Jan 2023 07:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D099010E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 07:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673941340; x=1705477340;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R9Vjb5OdAnwGtvihwsTLrsZuwPPTGUW1dd0KqgSF5G4=;
 b=LZifj9U+yDDsPiOypKbn7hrbQP4KtTmedwa4PfLLM09h/U2YTET1j0Wh
 iRvtNEtTlLmFtIiEfiCkklZhQwFhOhYFZvQC3QZd7EKIAzx6j0FUotaIK
 y+rYePq/8NoWaeuIhOd9evqHXtumTplGPjBEpCLXcCWKPNiini697MqsY
 I+XosLB4yYRIIXI7qWWqDOhpBPWFDZSyUPO/zSoWormmrqL0tYT1VEUC1
 JNGM4LZL/m/93NmqxBwU7nfRzvyRWEO4K7GLbDBCUi+PmdleDezImCmHm
 t7dE4SuPTIEyJR0mTqZ6UItoK/0mJsnfO8Fs9fE5jSK5ta+Pmk3FusfJO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="308195319"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="308195319"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 23:42:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="661199784"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="661199784"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jan 2023 23:42:17 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 13:12:09 +0530
Message-Id: <20230117074211.952125-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/2] Add new CDCLK step for RPL-U
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

A new step of 480MHz has been added on SKUs that have an RPL-U
device id. This particular step is to support 120Hz panels
more efficiently.

This patchset adds a new table to include this new CDCLK
step. Details can be found in BSpec entry 55409.

Create a new sub-platform to identify RPL-U which will enable
us to make the differentiation during CDCLK initialization.

Furthermore, we need to make a distinction between ES (Engineering
Sample) and QS (Quality Sample) parts as this change comes only
to QS parts. This version of the patch does not include this change
as we are yet to make a decision if this particular part needs
to be upstreamed.(see comments on revision 2)

Chaitanya Kumar Borah (2):
  drm/i915: Add RPL-U sub platform
  drm/i915/display: Add 480 MHz CDCLK steps for RPL-U

 drivers/gpu/drm/i915/display/intel_cdclk.c | 27 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h            |  2 ++
 drivers/gpu/drm/i915/i915_pci.c            |  1 +
 drivers/gpu/drm/i915/intel_device_info.c   |  8 +++++++
 drivers/gpu/drm/i915/intel_device_info.h   |  2 ++
 include/drm/i915_pciids.h                  | 11 +++++----
 6 files changed, 47 insertions(+), 4 deletions(-)

-- 
2.25.1

