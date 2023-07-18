Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7F07571E4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 04:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC3110E058;
	Tue, 18 Jul 2023 02:43:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1027B10E2C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 02:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689648206; x=1721184206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=us72SCtFQbvW+GtihQ5yc/hVZ42hd7UJZXEUchJk2aM=;
 b=NGkQXS1atrkKqJU71MZ9WZ+s74L8ENXk06OcfdcDl3wz8aYj7QPdIYew
 kdZJnl2ZbQwF3L1f6W8vYtFUcbEh9XDqdlhsajNoX9+GmbwxJrrzyhVeY
 nLhbGdnd9x8+Ft0QUt+iP9psKkp56zLeviOTbGdepyIsdy0YX9ORniTAe
 AGgv/2ouYoMRXsZ/d4jKlLz2COZby4lQYlA++W2xRj8h0EZopNEMYZ/ck
 RjIbSFSPVeLcfxf2GuvprLF2v+3L9e/mv4psuf6Ooa9448jkBz1mnXVDv
 p8rgpqqn3N2NPImNJTAH/2zU0jZ8cSuNEgYPwNIW9VT5HIGp/MpmWsrFi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="364963436"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="364963436"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 19:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="723420869"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="723420869"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 19:43:25 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 19:43:17 -0700
Message-ID: <20230718024318.2911899-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230718024318.2911899-1-ashutosh.dixit@intel.com>
References: <20230718024318.2911899-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Subtract gtt_offset from
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

The code in oa_buffer_check_unlocked() is correct only if the OA buffer is
16 MB aligned (which seems to be the case today in i915). However when the
16 MB alignment is dropped, when we "Subtract partial amount off the tail",
the "& (OA_BUFFER_SIZE - 1)" operation in OA_TAKEN() will result in an
incorrect hw_tail value.

Therefore hw_tail must be brought to the same base as head and read_tail
prior to OA_TAKEN by subtracting gtt_offset from hw_tail.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 49c6f1ff11284..f7888a44d1284 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -565,6 +565,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	partial_report_size %= report_size;
 
 	/* Subtract partial amount off the tail */
+	hw_tail -= gtt_offset;
 	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
 
 	/* NB: The head we observe here might effectively be a little
-- 
2.41.0

