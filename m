Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8C2722FE8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 21:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A56110E1DD;
	Mon,  5 Jun 2023 19:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B662F10E1DD
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 19:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685993973; x=1717529973;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x2/AWoHzmWbyytrPhMJJVUKgEGf4y++t7cgCSHh8Ges=;
 b=NcuRrySuNu7S923MR/X/SscU9bHrL78sjeG5HUWfVkwWR46MLGVTqdnV
 Wey6A0K0trZxYfBFUiVpNN3Kqcu0tQ9q9PPFnYRyPbK6fiwz55yklmSdB
 j4fH6SC1u4mzT++AfOZt7lqhVszCUowTuRxNyZD/6NeLb5wQsluzPB/2w
 l/D+aIrs/tMlDMzyxA4p3q+fumPxWLI723PoTwAw3TbqqJhEJfPOjvTVq
 I3x+bkVaTmMSBSh2KYKPk0iJ6f04ZmZUp23t99kRA6EkqYRa5S4IVVjER
 axeBPo65CGMEpfFXvw1PNOMpX2w+GTxBpWNKlUfFAXRNJqLAGs+7aSNGm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="384775246"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="384775246"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 12:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="773851024"
X-IronPort-AV: E=Sophos;i="6.00,218,1681196400"; d="scan'208";a="773851024"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 12:39:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 12:39:23 -0700
Message-Id: <20230605193923.1836048-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230605193923.1836048-1-umesh.nerlige.ramappa@intel.com>
References: <20230605193923.1836048-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] i915/perf: Do not add ggtt offset to
 hw_tail
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

ggtt offset for hw_tail is not required for the calculations, so drop
it.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index a8d43bf1f6d5..0a111b281578 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -565,7 +565,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	partial_report_size %= report_size;
 
 	/* Subtract partial amount off the tail */
-	hw_tail = gtt_offset + OA_TAKEN(hw_tail, partial_report_size);
+	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
 
 	/* NB: The head we observe here might effectively be a little
 	 * out of date. If a read() is in progress, the head could be
@@ -574,7 +574,6 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	head = stream->oa_buffer.head - gtt_offset;
 	read_tail = stream->oa_buffer.tail - gtt_offset;
 
-	hw_tail -= gtt_offset;
 	tail = hw_tail;
 
 	/* Walk the stream backward until we find a report with report
-- 
2.36.1

