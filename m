Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4A04EB744
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 01:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F120910E114;
	Tue, 29 Mar 2022 23:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5350D10E114
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 23:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648598316; x=1680134316;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wkYEznitHf7CmwyhvEI7kqX3WlwEmCCMV5vAycYCeh4=;
 b=Z1ehWx5ZaKYJKPdBPVVR8fyAV0EZvhUz9u+dPNldk7jMzUL9rG/cDudy
 wgVT976UY/LfloF/XyNblVIpG9tp2b8YM3V1jQh/9QI0SQ+6mYuMut9qg
 ppuYbvo7Yh8dlfQQ8DPSKjecOgwOhrfXkF2HJt5H/OS7/f/B5KrXwfHwZ
 YJCp/ADv/pgnkzNJiB9EjEGPe7W9tt3cg3Ip3d7HgPzqDwDBm46c9P/fG
 9mJ4nkes3sV7X4rx8jtluqQRHwvwz5GFoklLv0jCXQ/c0e4F1zQnDJtY/
 fejcTDraT7KBYKD6HvlcWDb+NP7w9B3ELmd7ocnLBzluk2rQyL5Pt6M50 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345841959"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345841959"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 16:58:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="719753823"
Received: from brettpem-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.80.244])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 16:58:35 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 16:58:28 -0700
Message-Id: <20220329235830.1025100-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Splitting intel-gtt calls for non-x86
 platforms
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The intel-gtt module defines some functions used by i915, but they are
only supported by x86 platforms. In order to bring i915 to a more
arch-neutral state, we split out these functions and provide stubs in
the case of non-x86 builds.

There may be a better filename choice for the files used in splitting
the calls, it's very much open to discussion.

v2: Refactored to move gmch functions, renamed exported functions
v3: Added drm/i915_drm.h header

Casey Bowman (2):
  drm/i915/gt: Split intel-gtt functions by arch
  drm/i915: Moved drm/i915_drm.h header to intel_gt_gmch.c

 drivers/gpu/drm/i915/Kconfig            |   2 +-
 drivers/gpu/drm/i915/Makefile           |   2 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c    | 665 +-----------------------
 drivers/gpu/drm/i915/gt/intel_gt.c      |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.h      |   9 +
 drivers/gpu/drm/i915/gt/intel_gt_gmch.c | 653 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_gmch.h |  46 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h     |   9 +
 8 files changed, 736 insertions(+), 654 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.h

-- 
2.25.1

