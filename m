Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8E35F0219
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 03:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E41310EC84;
	Fri, 30 Sep 2022 01:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DE4210EC84
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 01:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664499861; x=1696035861;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZVaAvhzdz8B6CQ9XjmhrKmQQnDS+qiyc2efLF4Lfg7I=;
 b=GzprqXkNB+sziqumMLwe9Ltc5EI3cI4DK8L1o17eO6KvgMSjqJbCa61S
 Zpzx2ceUSggomGkSNNl2Su/4vjIDTSpYYkLVdaS94JIfQQfdVSZ4ENRow
 1BP/HsMBJIxCyBkmlpQ9MTrx4xcGbkC61GZrr2Y+d/NELyQXnUJgBj8Yu
 rlmsUMRVxwWTEB1+9NXT7Nvv5YoHk00cHz0SZx1cq22nvENHVCudiNgIn
 0fHHNtD67XJXMqvuKLONf1Sci5trWNSbGRJ6kChkC9kyMD56eOuWv8gg7
 XLZUSbkuB+uBDrY5uOjJxABu2K5AVzSKRQYPhYc5yRh2mux/kvIhkzYds w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="363913176"
X-IronPort-AV: E=Sophos;i="5.93,357,1654585200"; d="scan'208";a="363913176"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 18:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="764948365"
X-IronPort-AV: E=Sophos;i="5.93,357,1654585200"; d="scan'208";a="764948365"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2022 18:03:07 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 18:05:06 -0700
Message-Id: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Fix Guc-Err-Capture sizing warning
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

GuC Error capture initialization calculates an estimation
buffer size for worst case scenario of all engines getting
reset. Fix the calculation change from drm_warn to drm_dbg
since its a corner case

Alan Previn (1):
  drm/i915/guc: Fix GuC error capture sizing estimation and reporting

 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 31 ++++++++++++-------
 1 file changed, 19 insertions(+), 12 deletions(-)


base-commit: 0b9f0501c9541cf79fdfb43a7760360a81453d88
-- 
2.34.1

