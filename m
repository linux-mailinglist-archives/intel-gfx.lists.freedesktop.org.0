Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D60E95736FC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 15:13:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AEB9112F39;
	Wed, 13 Jul 2022 13:13:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 228D4112CCF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jul 2022 13:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657718005; x=1689254005;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1DHJ769EIfJNQvJFNC6ZFg7nDm2e0uA1UavTzkZGA/U=;
 b=LEzJYAzJ2T0d4lRMS17XCE3JisP+pPiBltJY9Ae16d3ddc44aGYygGGj
 OeR7cGJJmlAuo563VA+Wz3M6jkgU85RSBsJi1mM0eFiuE3UfhWB76bQD0
 TJ/LACt6xd8JEE3XLnlrKCJc55ckdldH/NMQcCWhm/ntTN+JrXKeRS+8L
 bJL6oVh+aMnMIafDgxqZFh6d4GG58UV1wjJ9jKPpQz8DOg2+S6Ke84GWE
 iMjgyVGPb2qfkq+DpiG/F7PHOU075qT7i9zk87F+qeiy8Yq7bfoZOVLr4
 Zc0BF/7xfhRH4avQit7f+PJjcEgzjq+lG9GongkB6FAsrIZmMX7kr3AtO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="285950409"
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="285950409"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 06:13:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="622934944"
Received: from priyanka-nuc7i7bnh.iind.intel.com ([10.145.162.209])
 by orsmga008.jf.intel.com with ESMTP; 13 Jul 2022 06:13:22 -0700
From: priyanka.dandamudi@intel.com
To: priyanka.dandamudi@intel.com, matthew.auld@intel.com,
 intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jul 2022 18:32:07 +0530
Message-Id: <20220713130209.2573233-1-priyanka.dandamudi@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] Add support for LMEM PCIe resizable bar
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

 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 99 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_params.c          |  2 +
 drivers/gpu/drm/i915/i915_params.h          |  1 +
 3 files changed, 102 insertions(+)

-- 
2.27.0

