Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B83D17F0D75
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 09:26:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3136210E174;
	Mon, 20 Nov 2023 08:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B17C10E174
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700468785; x=1732004785;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GZYbhl+xCUxEMs510rnrkE2RbTa/4NUx8JJITGiYRw4=;
 b=ihfSgMWDumO1hgijejHqhH95PbC0+GU+/R0MHjO9EFNsKrmUlHRW9SBb
 AVjAXR1T04waYJVVdNMx3KdesvlVq10ETcZICmrs9p3gBtN0hT+0lKHji
 Vv9XEfvYN3yF+snwWHLxBZvqmOq2MfqCbaTatAr1lOoDj1C/uCJKGc/Ae
 KADsK1Tu2P3VABl92ElFRAef+X9fkHv0+lzjggHjEkGdOr02B6ofLbzfL
 /xWk2q4seGwcYniseXWGB3+o7T+Dm1Wv+PJxVqFbcq7Nef6TVSaKXem8M
 8FfmqUkIpEylpKTGS0ZLxNVYOhjn5OhHeFOd0asAVHp0+vaeDEd10DNmX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="4750874"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; 
   d="scan'208";a="4750874"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 00:26:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="883787723"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="883787723"
Received: from dbailonh-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.57.59])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 00:26:23 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Nov 2023 10:26:04 +0200
Message-Id: <20231120082606.3156488-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Implement sel_fetch disable for planes
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

Move plane sel fetch configuration into plane source files and
implement selective fetch disable for planes that are not part of
selective update.

v3: Checkpatch warnings fixed
v2: Move some changes from patch 1. to patch 2.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (2):
  drm/i915/psr: Move plane sel fetch configuration into plane source
    files
  drm/i915/psr: Add proper handling for disabling sel fetch for planes

 drivers/gpu/drm/i915/display/intel_cursor.c   | 36 +++++++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 88 +++----------------
 drivers/gpu/drm/i915/display/intel_psr.h      | 10 ---
 .../drm/i915/display/skl_universal_plane.c    | 78 +++++++++++++++-
 4 files changed, 120 insertions(+), 92 deletions(-)

-- 
2.34.1

