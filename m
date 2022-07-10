Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9739F56D08C
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jul 2022 19:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB59218A108;
	Sun, 10 Jul 2022 17:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8245618A107
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jul 2022 17:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657474834; x=1689010834;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LIcabc9Vxo1CF8VXr4oac+FGgDL5osszXjJORi37mXQ=;
 b=ScBjYCIgy/iqgK8G3soojVxY3cH6fsS+bR76cEjuB+/A1wsIFpA2YiM+
 M+dpQrk+eQipN4zD34PnkdnQk8o3SlPkTuomdjTbgqyM0Il7S9/GGFw4L
 TY0EhW/YmmaIQo/1iAkF/jsfYuv2hg2KboYugiwrBQs3V6Akq5xccx3zo
 yQ2GrIElwxLXbkFig9nn+n5uLUqM/aSBtMcGmaf+r/7gmdt2BVV7Xz2wp
 uDOsZN3Bju6ewkbgocKEZ7Bo7P7smptpLgDPx3VcQdT5dtEf/ZutHdEPd
 BxocfAbxdsoM2Rm5U4hh/sRO2ETGJSQYD8b4BEG2lZq668QNZtrEwIIWZ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="282078843"
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="282078843"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 10:40:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,261,1650956400"; d="scan'208";a="662304977"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2022 10:40:32 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com, nirmoy.das@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Sun, 10 Jul 2022 22:59:23 +0530
Message-Id: <20220710172925.2465158-1-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] Add support for LMEM PCIe resizable bar
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

 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 98 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_params.c          |  2 +
 drivers/gpu/drm/i915/i915_params.h          |  1 +
 3 files changed, 101 insertions(+)

-- 
2.27.0

