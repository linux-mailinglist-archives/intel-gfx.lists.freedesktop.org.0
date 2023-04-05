Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEDA6D7124
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 02:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6391310E7FD;
	Wed,  5 Apr 2023 00:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539A910E7FC
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 00:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680653678; x=1712189678;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=md0yOV/FIDNKNJ2m25shv8Zs3L06bzY/kABL4J8h8fM=;
 b=eOxOyeTiezi3Yd/GIaX9V7oN/drT8HsRZNYipeXIn3A9qPm6p2GCECoD
 /wwL7XYbTJErxb+BynAGz6ByfQHZbYFhQ8KMwQVMPNxCZbN42JVIXY0It
 pIt99SFXlBMGhYX1GVF4qw5R05K8i3PUnUZ7r/buCv7lXClN6/wd7TocL
 K97iLpkjOralOQk5zywwt+ei5q9cwDz8hmPTpHxiFO1rlcvV1ZN/p/7CI
 YT9iuRSUEOA8dFsVi3ckPAtqqWCoefN042/SUPCqapIsQYzpCYogt/NOu
 hmOoGb6LOhtZLL0XVkCkVPfYayduwfm/WkS9YPoWc7KBVKUmi2a0mQ1b5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="405110828"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="405110828"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 17:14:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="810448684"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="810448684"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 17:14:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 17:14:31 -0700
Message-Id: <20230405001433.2654971-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] fdinfo: Enable some support for GuC based
 client busyness
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

Export context runtime into the fdinfo framework to enable per client
busyness for GuC back-end.

v2: Fix zeroed busyness values

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230405000909.51175-1-umesh.nerlige.ramappa@intel.com

Umesh Nerlige Ramappa (2):
  i915/pmu: Add support for total context runtime for GuC back-end
  drm/i915/fdinfo: Enable fdinfo for GuC backends

 drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++++--
 drivers/gpu/drm/i915/gt/intel_context.h       |  2 +-
 drivers/gpu/drm/i915/gt/intel_context_types.h |  5 +++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 33 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drm_client.c        |  6 +---
 5 files changed, 50 insertions(+), 8 deletions(-)

-- 
2.36.1

