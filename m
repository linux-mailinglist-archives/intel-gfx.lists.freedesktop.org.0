Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 173D74A034B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 23:10:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B8D910E12F;
	Fri, 28 Jan 2022 22:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C94310E12F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 22:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643407827; x=1674943827;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WH+abEYBhB/MtCje0EgeeE8QGUrM6uLCeSQM6KetqKA=;
 b=UHT+XVxE5B8lxuQp8KIZnbD6kGEQ8Bp3WBm0xgJArn8pd5IJzXRME/AB
 pFxJG3gmxD6ODZlHBiEbRR4Bv+89UKJDKnR+5pSLh1NySS64i1dxKcKVj
 AXq88Xij6rWH3fjnaKeRRw7JhI0TcVZS9abCcIf3+p9fO3U4wnOVqvj9I
 m0koAjc14De5r5Q7L64M7nba2pAQiaSFthbKOCsBVRJ/Y11Q2Ezm0gufG
 n4Eqeh0r5m66G2OXk4uKVPZABJTUpbcV/gXYBfFoDB70LTDv1On1qyJrE
 h+eHD5tHZGLBLCoq6G//7MDVa46L7z23xUgbXxC/GtgzT9Zn7kd0orTQH g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="247155714"
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="247155714"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,325,1635231600"; d="scan'208";a="496265916"
Received: from bainsko-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.209.109.18])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 14:10:26 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 14:10:16 -0800
Message-Id: <20220128221020.188253-1-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/4] Use drm_clflush* instead of clflush
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, matthew.auld@intel.com,
 mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch series re-work a few i915 functions to use drm_clflush_virt_range
instead of calling clflush or clflushopt directly. This will prevent errors 
when building for non-x86 architectures.

v2: s/PAGE_SIZE/sizeof(value) for Re-work intel_write_status_page and added 
more patches to convert additional clflush/clflushopt to use drm_clflush*.
(Michael Cheng)


Michael Cheng (4):
  drm/i915/gt: Re-work intel_write_status_page
  drm/i915/gt: Re-work invalidate_csb_entries
  drm/i915/gt: Re-work reset_csb
  drm/i915/: Re-work clflush_write32

 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c      |  8 +++-----
 drivers/gpu/drm/i915/gt/intel_engine.h              | 13 ++++---------
 .../gpu/drm/i915/gt/intel_execlists_submission.c    |  6 ++++--
 3 files changed, 11 insertions(+), 16 deletions(-)

-- 
2.25.1

