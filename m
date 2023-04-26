Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7086EF790
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 17:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1276B10E117;
	Wed, 26 Apr 2023 15:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14CF210E175
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 15:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682522087; x=1714058087;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to;
 bh=a4tnm3fwJS5ag19L8vGA9PFPuKrEXPbjh7N3g3Z0zMY=;
 b=T+VTCqasEg4m73b5bXyMHq62RPL5g6fiwudIv/2n8B9GqC3UvnscifYk
 45z4DTsxiZn99zuBBfafDsrnWuzUYCGPqXKBWOW0OXp4LjytKwlsLTnU7
 xiF45+OzoG6z5J5Ju9sqCLyooHfUx2zan2wYU/vDZZDcrfNhkGdQh4HIy
 +Wd1dQC6dPihf0dj94Gi5wzLLe7xtE1Jk4NZ0UnjaJbq0hmPB90llVbtI
 VNGtttTJ17raQA4M3Z7ULWGp+MI9zvi9G+ZFkbnnVJQ0Fyy4ImzfEEBsF
 QNsTK3khXGBYDExx1JSwuCGGl9S3+hpuXYONvh7bqoKXodOy+fBxYvu/n A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412444653"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="412444653"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 08:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671366410"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671366410"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 08:14:29 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 26 Apr 2023 17:14:10 +0200
Message-Id: <20230425-hugepage-migrate-v7-0-fa6605a986c9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMI/SWQC/02Nyw6CMBBFf4V0bZs+FMWV/2FcDDDQSaCQaTEYw
 r9bXLk89+bkbCIiE0ZxLzbB+KZIU8hwPRWi8RB6lNRmFlZbp8/2Iv3S4wx5H6lnSCjNrawAOmeg
 bEXWaogoa4bQ+ENseZSJ5uOZGTtaf7HnK3PHU/48I/wljLXGaX1TlalKp6WVEFpS0X8SPQYKy6o
 oJBxUM41i379z622EwQAAAA==
To: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH v7 0/2] drm/i915: Hugepage manager and test for
 MTL
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

This patchset patches sent by Jonathan and Andi, with 
addressed CI failures:
1. Fixed checking alignment of 64K pages on both Pre-Gen12 and Gen12.
2. Fixed start alignment of 2M pages.

Regards
Andrzej

Jonathan Cavitt (2):
  drm/i915: Migrate platform-dependent mock hugepage selftests to live
  drm/i915: Use correct huge page manager for MTL

.../gpu/drm/i915/gem/selftests/huge_pages.c   | 88 +++++++++++++++----
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  3 +-
 2 files changed, 71 insertions(+), 20 deletions(-)

Cc: intel-gfx@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
-- 
2.39.2

---
Jonathan Cavitt (2):
      drm/i915: Migrate platform-dependent mock hugepage selftests to live
      drm/i915: Use correct huge page manager for MTL

 drivers/gpu/drm/i915/gem/selftests/huge_pages.c | 105 ++++++++++++++++++------
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c            |   3 +-
 2 files changed, 82 insertions(+), 26 deletions(-)
---
base-commit: 4d0066a1c0763d50b6fb017e27d12b081ce21b57
change-id: 20230425-hugepage-migrate-1869aaf31a6d

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>
