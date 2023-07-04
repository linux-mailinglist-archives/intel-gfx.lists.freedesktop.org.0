Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAF2746EB2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 12:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BB6710E2C9;
	Tue,  4 Jul 2023 10:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B5810E2C7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 10:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688466671; x=1720002671;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6uTV3if8Y+E1Pqdha9jy5idaX9V7XITU+ntm3rBCOtA=;
 b=GaQMe5toU1JY6mwmPSrOjzXWDuLNNHX5YCbtcIB5I5HDvQPk0slkJ16c
 vtKmExXPlwQFGk49aZzh9jN10SJW79HGCqUPVvZjYAh5DmnzdHhlrNzFg
 wfoN0WyE/lHTX3Eufq7Mcn+AVAFVyEsm6Dky9Zsv3Ka7gVidarEs/Dl38
 skxhETSfZIGmWY7yav5v8I6gZ9GeppyGmyvOL7BHByGYYFl0LNyLm8r86
 KzLvGLqszf3DPI36iTARy3Po67nhca7C0mjCs4+4zY2qsm2+uIb/5hLxu
 3pEg8ZIiCIszj3mlDqoWIhvTDTsDhokWAJqoPceDclYCTP70506wvkiIJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="342680261"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="342680261"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 03:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="718870665"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="718870665"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga002.jf.intel.com with ESMTP; 04 Jul 2023 03:31:08 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 13:31:05 +0300
Message-Id: <20230704103107.11237-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Calculate CDCLK more properly when DSC is
 enabled
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

We need to properly estimate our available BW when DSC is enabled because
this can lead both to need in increasing or decresing CDCLK.
Each DSC engine can process only single pixel at a time thus if only
single DSC engine is enabled, CDCLK is obliged to be equal to pixel clock
(while in non-compressed case it can be usualy lower)
However if we have 2 DSC engines CDCLK can be ~pixel clock / 2 and so on.
Lets do the estimation more properly based on amount of VDSC engines used.
That most likely is going to fix some FIFO underruns, we are currently
having.

Stanislav Lisovskiy (2):
  drm/i915: Add helper function for getting number of VDSC engines
  drm/i915: Don't rely that 2 VDSC engines are always enough for pixel
    rate

 drivers/gpu/drm/i915/display/intel_cdclk.c | 13 +++++++++++--
 drivers/gpu/drm/i915/display/intel_vdsc.c  | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.h  |  1 +
 3 files changed, 23 insertions(+), 6 deletions(-)

-- 
2.37.3

