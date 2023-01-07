Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B64660C96
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Jan 2023 06:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DFE210E8D7;
	Sat,  7 Jan 2023 05:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40FC10E8D7
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Jan 2023 05:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673069810; x=1704605810;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hDMOjRtlRrM2/BkRsD3u4l9tCy3YuHwhWF63MO92WdE=;
 b=CZSJJ5QlW/PI1iuGZzkRJwj5YTUYskqENCUu5vjX/NSKpTaNOjdOmpNg
 77XBOG4cNwU45vVcPi7C967jBaD0bYkKskIPbIjeae4wzwzvyD+Al9VER
 nCkgbEmoiKtrDDV5GtgJjbM/7/wm7e7srSkWtPm/mzXgw1GLDhMPCj/Bh
 jTL2KlzXItRAZRviw+yVzMDc7y9g8FhtSlwR23f7z29i+olqeeNBP4OHH
 elxW4Ww6DjME+1g3NU6s4Zbl+P/eCrOwsFhp1HVea2Q1T5YuA7RZ8aqSs
 1f4E+TzNMzbEkc2xAYIu0sWAkN3k3CDL5mILYylSgjZJTZqypnN3p+Rpw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="320316736"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="320316736"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 21:36:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="780178973"
X-IronPort-AV: E=Sophos;i="5.96,307,1665471600"; d="scan'208";a="780178973"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga004.jf.intel.com with ESMTP; 06 Jan 2023 21:36:46 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Jan 2023 11:06:41 +0530
Message-Id: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
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
to be upstreamed.(see comments on previous versions)

Chaitanya Kumar Borah (2):
  drm/i915: Add rplu sub platform
  drm/i915/display: Add 480 MHz CDCLK steps for RPL-U

 arch/x86/kernel/early-quirks.c             |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h            |  2 ++
 drivers/gpu/drm/i915/i915_pci.c            |  1 +
 drivers/gpu/drm/i915/intel_device_info.c   |  7 +++++++
 drivers/gpu/drm/i915/intel_device_info.h   |  1 +
 drivers/gpu/drm/i915/intel_step.c          |  3 +++
 include/drm/i915_pciids.h                  |  7 +++++--
 8 files changed, 43 insertions(+), 2 deletions(-)

-- 
2.25.1

