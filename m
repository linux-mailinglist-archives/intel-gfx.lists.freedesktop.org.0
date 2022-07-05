Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70657566B4E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 14:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C54113A48;
	Tue,  5 Jul 2022 12:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCB6113798
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 12:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657022749; x=1688558749;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8MKGlynQIOrCTtkdY7NRSqsojmUW1gaveMDYXahN0CY=;
 b=hUbUX+Rqw58+IUVBJoOvciw89VAwuYyxbfCoDE6VFUJSzaMhOhazeD/9
 b/BehM8UWntFcr0phola2RnT1Jn2yasrli62pEUXBeIzP9gn7Pj1o2XQB
 5gFp/MICulwsUa+pTOvL4cDhWwcHKUgqEA4Xohd9hWObKV74Dtd2FsLDO
 XjR7bJctSbD2KEZ6COGWWBr0zg2qUfVF8eeYYUCSdD9Xmmxhplg1R+mx3
 YfCNi2XH+Krl/zaZ35H/gQ9yIVIJUCbzInBXRy8kch7P88cQnV3/SV7ps
 MFLyWtP2JsMmgWbjPHyJtT1lwMoC/kLGG/l44e5tAc6H4r6AW5iMHvrMo A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="369658295"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="369658295"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 05:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="590377795"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by orsmga007.jf.intel.com with ESMTP; 05 Jul 2022 05:05:46 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com, nirmoy.das@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jul 2022 17:24:49 +0530
Message-Id: <20220705115451.2438928-1-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Add support for LMEM PCIe resizable bar
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

From: Priyanka Dandamudi <priyanka.dandamudi@intel.com>

Added support to resize the bar to maximum supported.
Also, added new modparam lmem_bar_size which can resize the bar to one of the supported sizes.

Akeem G Abodunrin (1):
  drm/i915: Add support for LMEM PCIe resizable bar

Priyanka Dandamudi (1):
  drm/i915: Add lmem_bar_size modparam

 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 92 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_params.c          |  2 +
 drivers/gpu/drm/i915/i915_params.h          |  1 +
 3 files changed, 95 insertions(+)

-- 
2.27.0

