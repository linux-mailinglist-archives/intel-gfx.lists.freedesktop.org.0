Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9004ED05E
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 01:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB4510E07A;
	Wed, 30 Mar 2022 23:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A32B210E07A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 23:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648684093; x=1680220093;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y8SdRDW6Ww+wjmZwNAWjCuSBOX22TQqPPbMbst9kGkM=;
 b=UioYOEIIQL9ybVRaa731wYArHNOB+J9YyifJqUuGZZDr0KZYIgFv0eaV
 UPkZvSpZDMyi7XIT/c/zss5dtpgTt4+V/HXjGx8SjqY0N0JEJ/K27dT/p
 okKuBpgqXy5C716t6fw27luLTGgpO1isuwQOalJ2MZ/jV/R94KaY1vhbj
 xBE/G9QiwB99CrDGZo3+OGCzXSEQyyJWmflbqadnW/C6Dyi82u5PELYC4
 T9n3HRdExso6VG7rW13Vk7//7hKwy9wS90+SVeX+kIAuUY0oSocZjaBBP
 4gIWdcFO6e+Q7aJz9lVWwhOxe8KM5f4uoNSTl8UN/rUlnu5o4CKOpxxaZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="239600462"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="239600462"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:48:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="547057105"
Received: from mcbewley-mobl.ger.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.48.13])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:48:12 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 16:48:07 -0700
Message-Id: <20220330234809.1218210-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] Splitting intel-gtt calls for non-x86
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
v4: Rebased on drm-intel-next, resolved build and naming issues

Casey Bowman (2):
  drm/i915/gt: Split intel-gtt functions by arch
  drm/i915: Require INTEL_GTT to depend on X86

 drivers/gpu/drm/i915/Kconfig            |   2 +-
 drivers/gpu/drm/i915/Makefile           |   2 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c    | 664 +-----------------------
 drivers/gpu/drm/i915/gt/intel_gt.c      |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.h      |   9 +
 drivers/gpu/drm/i915/gt/intel_gt_gmch.c | 654 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_gmch.h |  46 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h     |   9 +
 8 files changed, 737 insertions(+), 653 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.h

-- 
2.25.1

