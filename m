Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8022D6BE78A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 12:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA4810EED2;
	Fri, 17 Mar 2023 11:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80AC210EEE6
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 11:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679051120; x=1710587120;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WoF+jvpTr9XlvYqIUn+azvrI1BJO7hXwoZwrNadjXlM=;
 b=KwcZqWHIHQVVyLWqwy/nc9lvlZIk2hZtGCgC2s46PGLC9pZIRLny+L9T
 OI+yDpcZ6ieTwsm3tDIdMv/y2ywjqUT9yoiyTTpQ2qBX/abn6WphHmXLI
 D+zBhexyjA0bqAOXxdgbqSdaA3Uyrj+mBNVWPTJDiE/eBVPqetlR34taA
 57b/ZG7HmUQ9BxvWLQsKiPNVLlHg0XYUF2TOtOKoPdVCN7fxoWq+iLD7e
 8n3LOVVSuGEOxUY/wGL0RU+XYlrtSWGTFJN/o7X/mNl3upokphuPrQ81T
 IFMMTEEdC1Kuc6sQUrpAwJNW/TCdDcrrTCv1/laOJw1OcsMABZGYRSBqZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="318634675"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="318634675"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="744516968"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="744516968"
Received: from nkiryuhi-mobl1.ccr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.188])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 04:05:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 13:04:34 +0200
Message-Id: <20230317110437.2780483-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/3] High refresh rate PSR fixes
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

Fix/adjust Wa_16013835468 and Wa_14015648006. Implement Wa_1136 and
check for vblank being long enough for psr2.

v2: Implement Wa_1136

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (3):
  drm/i915/psr: Fix Wa_16013835468 and Wa_14015648006
  drm/i915/psr: Check that vblank is long enough for psr2
  drm/i915/psr: Implement Wa_1136

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 35 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.c  |  6 ++--
 3 files changed, 31 insertions(+), 11 deletions(-)

-- 
2.34.1

