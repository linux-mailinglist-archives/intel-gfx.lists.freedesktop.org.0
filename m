Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3605279957A
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 03:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA7810E153;
	Sat,  9 Sep 2023 01:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534E210E0DB
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Sep 2023 01:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694222190; x=1725758190;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h0jp84J+/G8jXh42Nw+TYN6EPEr+FSCbU51HfdsaSpo=;
 b=bA/2x/whBiYbwbp6cZp+HLFmoUM6x8GJwYCzQsjbfUlhT/wkmxelZmpJ
 hn+JJQbuvd3h8nH5i8eHsiU5ENljs3n++e7H92c+qG8z387IiPDAsN7zk
 RwmDJ5s+uS9oR81SvdGoekzPp43vOyH6DRFAvDut5EUxlz/LyzbUfCRmF
 jXe5qXrd4bsZhAYXvFpxwIpLs68pwBTB2+LbRaUNbJ92Jb7kL0Ej7wCpn
 jgIyJW+QfCAIf37pKOnr9XSVMaYBoJ4qqlYipPmfDls10fI73aS9lovjP
 oFOpobyxplcnJyYNG/wFpijqa7gA+RVWHAAj+W5PnnJ3sqLCrpZzBY9la g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="441792745"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="441792745"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="719342287"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="719342287"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 18:16:29 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Sep 2023 18:16:23 -0700
Message-ID: <20230909011626.1643734-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/perf: A few fixes and enhancements
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

Ashutosh Dixit (2):
  drm/i915/perf: Subtract gtt_offset from hw_tail
  drm/i915/perf: Remove gtt_offset from stream->oa_buffer.head/.tail

Umesh Nerlige Ramappa (1):
  drm/i915/perf: Initialize gen12 OA buffer unconditionally

 drivers/gpu/drm/i915/i915_perf.c | 62 ++++++++++----------------------
 1 file changed, 18 insertions(+), 44 deletions(-)

-- 
2.41.0

