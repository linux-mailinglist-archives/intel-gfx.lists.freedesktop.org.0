Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A57613881
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 14:57:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5D010E2B3;
	Mon, 31 Oct 2022 13:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E0D10E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 13:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667224627; x=1698760627;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/YNukrr0unqFvOYGoLzH35OLohiGGwmt4d2Bqby44TI=;
 b=jZLEILEsX+pZXyZ6MCG2an5Kmk2Ux/LalUXN6bsc1P5CsFxS2QRwuZN3
 KZW4T5+qoYtk17n2nenvgFrcUcRjPlljL1n5iY2hZN+Ajl1POy/sv8CcE
 2SMKudLGevjlLcFsiGSkAhXYmuZeHT3IKYhFOkC24EB3bVSw1DOVHlvqM
 g9u627hN5lQCzAyCiplxmag4ejtlv71MdydwfUcUa0ZakFoBySHw0040U
 7WZWlbvEiovLjRXHEAVponClaGmZsjkTZj/x8oE+tuyFcFekjVmDECdwI
 SPsc4MI70TTSGDZtn6FCpRajHEUD2mOIqXoiPpXqZoSRJtDo9e+uqHn8G w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307624797"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="307624797"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 06:57:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633532152"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="633532152"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2022 06:57:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 15:57:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 15:56:57 +0200
Message-Id: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Fix up and test RING_TIMESTAMP on
 gen4-6
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Correct the ring timestamp frequency for gen4/5, and run the
relevant selftests for gen4-6.

I've posted at least most of this before, but stuff changed
in the meantinme so it needed a rebase.

Ville Syrjälä (6):
  drm/i915: Fix cs timestamp frequency for ctg/elk/ilk
  drm/i915: Stop claiming cs timestamp frquency on gen2/3
  drm/i915: Fix cs timestamp frequency for cl/bw
  drm/i915/selftests: Run MI_BB perf selftests on SNB
  drm/i915/selftests: Test RING_TIMESTAMP on gen4/5
  drm/i915/selftests: Run the perf MI_BB tests on gen4/5

 .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 38 ++++++++++++++++---
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  | 22 +++++++++--
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      | 36 ++++++++----------
 3 files changed, 67 insertions(+), 29 deletions(-)

-- 
2.37.4

