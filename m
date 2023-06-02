Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92473720A96
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 22:53:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90B1510E066;
	Fri,  2 Jun 2023 20:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72F5A10E066
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 20:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685739214; x=1717275214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=APYYCGo3X4NEi7b8SieyG9qDnsdDC6dmMLEi3h7yDDU=;
 b=A4a736wBkjVBI/DhNuiaEZZQ9vGOMKk/PWsTtcZ737nFI9TPU9e4DAWe
 ov5vkeEGKOhMvpF242SLLTPC7BHhfKZdKcYIh4blJ9kWUN8OFIhd5MZXu
 Fw9NzbyfJzJsUVZC9WwHp2/OMLc75Bg/qSc4Jk1MSo5TdIKkeegfgSxsh
 4X4DElVrsXMpOm+EWszdi7ku/tbDvUmon7kcOktOHXA8KSB/OSwS1aWQQ
 93VHeEjgBdoNs8birfI6S/rY5T5E5S1kR8y2qwXew+jQEpOHalS0NsZXH
 6r2PuNcZPEQ2CqXBUCFqYkuZdvGMIrlvuSOlVVE1BJD1GEYd0rMfRhepn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="340595935"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="340595935"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 13:53:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="777820741"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="777820741"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 13:53:32 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 13:53:27 -0700
Message-Id: <20230602205327.1542958-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230602205327.1542958-1-umesh.nerlige.ramappa@intel.com>
References: <20230602205327.1542958-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] i915/perf: Do not add ggtt offset to
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
index 9cb3d395046e..0a1f40d21163 100644
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

