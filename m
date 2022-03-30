Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BC74ED02C
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 01:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78AF610E20F;
	Wed, 30 Mar 2022 23:31:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A3910E20F
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 23:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648683103; x=1680219103;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y8SdRDW6Ww+wjmZwNAWjCuSBOX22TQqPPbMbst9kGkM=;
 b=h18/Jo/TkQQZO9A/IS3gTki5NyZKAfsKJcQDR8oTTZi8EPJX5/W3IcsP
 9VfP6LDUkght3hNGWwfw2RWwxNj/O1C9wraTUHChoVi2HWuOBY9fFqw5m
 Fms7U+zBzsvncn5+3hs2h0ey5B+IysTlXnZRsYDULIQ4E2e/BjchaNNoH
 JStcgZf2COvE40WGKxCg2AdFORSFoqjL1oalBo/iTK6TB7z/WfFgDlSJ8
 MPbnr8n+BgMh6+cVPwSkXE3qe/+LshOFolQM00pb6du2pS37JJ9Cv1ZUL
 MLiZ0UfWmPThLbi1VwnmsQsS9PquHxdWQXixEoQjfZUbZj7pphgzidcWu w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="258500899"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="258500899"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:31:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="554847503"
Received: from mcbewley-mobl.ger.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.48.13])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:31:42 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 16:31:36 -0700
Message-Id: <20220330233138.1210992-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] Splitting intel-gtt calls for non-x86
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

