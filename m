Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 801E3718F41
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 01:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9EA10E0DB;
	Wed, 31 May 2023 23:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 091DF10E0DB
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 23:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685577398; x=1717113398;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oIAWqklAXbMnb3stxIOXuqDeeexVeKYM0f6wbB8T8p8=;
 b=T6fWY16tcLzJSbCFjA+7MmSBpgTb7JfHc5BSBhxW+oAlB45BHFq6hu58
 TuORxs+p4VtsiqiPELgurzeZeS0yq8cTm+kqtflPr4CK8bIYlWVM7ssce
 PguD6x8t8UT/f9IqHN8lAiXNoQ6s2dGmbCNmcmFOvwsyp+et5BJkZAOHS
 OnT1b7ORoOQOa1qcDt4iohGtCUN97SAv/q++UegwcKEPqSVgMaZGVJ8EA
 G7JFKJbPTmm5/y/ejAH0GiPhXAuSa5ENmVbuxgd0TvhLdPSgXPv7tZ0u2
 bi+/NrObtiVapres/9z8CMOG5+XXB9vdRJgLguqI4oi3NnTKGeSMLamQf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="383666368"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="383666368"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="796910848"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="796910848"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 16:56:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:56:31 -0700
Message-Id: <20230531235634.1309525-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Avoid reading OA reports before they land
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix OA issue seen on DG2 where parts of OA reports are zeroed out or
have stale values. This was due to the fact that rewind logic was not
being run when the tail pointer was aged. The series drops the complex
aging/aged logic and just checks the reports for validity.

rev1 - https://patchwork.freedesktop.org/series/118054/

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (3):
  i915/perf: Drop the aging_tail logic in perf OA
  i915/perf: Do not add ggtt offset to hw_tail
  i915/perf: Drop the aged_tail from rewind logic

 drivers/gpu/drm/i915/i915_perf.c       | 76 ++++++++++----------------
 drivers/gpu/drm/i915/i915_perf_types.h | 12 ----
 2 files changed, 28 insertions(+), 60 deletions(-)

-- 
2.36.1

