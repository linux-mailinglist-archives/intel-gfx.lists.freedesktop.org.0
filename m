Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7625B49EEF0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 00:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03B0610E47B;
	Thu, 27 Jan 2022 23:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BBD310E3F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 23:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643326886; x=1674862886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6zTEknoVaxiuRxXTc+Z65iUg+OzsiYopUNvx6L9CAP4=;
 b=fo3NknGjmtAM8R1v0oAtOHWksoywfxMvRo/sSWkoFlrG0mLn95ovVxpe
 NZQfsqjPzPXFfy8zalO5/rNLDe6X1iv29XXP9DyKyQlAp2ghc5hebc1sL
 JURTyDvoM9pTwhQahU008lXrkQos3RmmlfqyDaujZJ6PWBCdLqeG3ohIm
 EljCb4whr0Ky7VHUUHq/1RnJPy87VpCRLmnw9XPkOZTJ1DPDpPfoaP0yY
 /OQGz3eQzZ8FTmg/uhOiJAHk5JhXglLoc2PR2BuUDZ6SrM2hgVsc7g0se
 r8WQc58vdz/htauHg027x6Dm8Sq6cx0XiYgsCuSJkKph+4d6cjJ2CVEvh Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="230573048"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="230573048"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:41:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="563985280"
Received: from mrea-mobl.amr.corp.intel.com (HELO mvcheng-desk2.intel.com)
 ([10.251.14.177])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 15:41:25 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 15:41:18 -0800
Message-Id: <20220127234118.111015-3-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220127234118.111015-1-michael.cheng@intel.com>
References: <20220127234118.111015-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Re-work invalidate_csb_entries
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
Cc: michael.cheng@intel.com, wayne.boyer@intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk, mika.kuoppala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Re-work invalidate_csb_entries to use drm_clflush_virt_range. This will
prevent compiler errors when building for non-x86 architectures.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 960a9aaf4f3a..90b5daf9433d 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -1647,8 +1647,8 @@ cancel_port_requests(struct intel_engine_execlists * const execlists,
 
 static void invalidate_csb_entries(const u64 *first, const u64 *last)
 {
-	clflush((void *)first);
-	clflush((void *)last);
+	drm_clflush_virt_range((void *)first, sizeof(*first));
+	drm_clflush_virt_range((void *)last, sizeof(*last));
 }
 
 /*
-- 
2.25.1

