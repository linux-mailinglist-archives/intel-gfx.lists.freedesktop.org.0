Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F090154C153
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 07:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B86910E121;
	Wed, 15 Jun 2022 05:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9AAC10E8B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 05:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655272400; x=1686808400;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cS2k9TT47M8SdM1QDcPDH2JohE4H3maW/McNYOGB3Ps=;
 b=VwaKJ+NsYZXipUzFkOkSfFFWE8emEGfzECRPURkpO0+eo/0o1T99OHh/
 vUTU85JQmswqcgyVlhJWA6gOHKb0070qtfE0YFqzdF5Phxe26iJCNUjWC
 LRCh+usW1RRpkO+7lB09ErjUMzrJG2A/7i/LjKtMg0LII5tF3q4yG/o5u
 4XLY2dGIU3ndp3IOjW2EdeCK6hXY1unxsIkAYBVc3HrlN+ueNYWo8u5D7
 U0pD0kPp1qB76lqiL0hg3Qt/D5SEJqSutIgtRS8eWeZbYcNAHUVYA498v
 8CP23w9fYzehLA8Tyusqg5d5drP0QZJJ42dOyRXQPE4NyBKDOl0kePPnT g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="258697468"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="258697468"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 22:53:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="727212126"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2022 22:53:18 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 11:13:04 +0530
Message-Id: <20220615054306.1175736-1-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2]  Add support for LMEM PCIe resizable bar
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

Added support to resize the bar to maximum supported,
only when bar is not set to maximum by default.
Also, added new modparam lmem_bar_size which can resize the bar
provided if it is among the supported sizes.

Akeem G Abodunrin (1):
  drm/i915: Add support for LMEM PCIe resizable bar

Priyanka Dandamudi (1):
  drm/i915: Add lmem_bar_size modparam

 drivers/gpu/drm/i915/gt/intel_region_lmem.c |   3 +
 drivers/gpu/drm/i915/i915_driver.c          | 126 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_params.c          |   2 +
 drivers/gpu/drm/i915/i915_params.h          |   1 +
 4 files changed, 132 insertions(+)

-- 
2.27.0

