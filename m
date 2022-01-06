Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B9B486D88
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 00:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE8E310E2CF;
	Thu,  6 Jan 2022 23:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1A8B10E1A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 23:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641510520; x=1673046520;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Oi+uLTEJxl0JfYKi5FUChYtEdlgyPiVGdACOJKVbPsY=;
 b=I/CQhQ/0vNnCNz3LC47PSlBPTGIxi4bq71k1FgIhVGhP7rlMOhGhuRKd
 LzpwXlq+3KtJii9rMEx5XjpttjhVc6JH/qQLcuN7DrksGt3IhgqWXhpsO
 hT1NQwzz1HlLekhw6uVuTdvX4z0IhlZDuaI5KKZcfwQnF3OFVo4zoYLij
 DNwZyxovrp7aZ6mlG7oDhMrzxdFAq07wRqOI6c3iMrxGESGwZ/yIPR4rX
 PdyIT7rWaRWUzel9L2wO2XKNehyRlsMtiM/ULQZJ9aRgf+E/GTratjl5v
 8r+7ZuCgHBtzCfkCUXpx9Dk+BBNoZfeUumcJ645YbNcEMGBJD8uVq5CZa A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="230099729"
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="230099729"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 15:08:39 -0800
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="591536112"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 15:08:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jan 2022 15:08:22 -0800
Message-Id: <20220106230823.2791203-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Start cleaning up register definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Our i915_reg.h file has become a huge unwieldy mess over the years.  A
lot of definitions don't follow any logical ordering, there's
unintentional duplication of registers under different names, the coding
style is very inconsistent, and there's tons of unused definitions
(nearly a quarter of i915_reg.h is dead code!).  This makes it a pain to
work with and also needlessly slows down development since any trivial
change to i915_reg.h forces us to unnecessarily rebuild the entire i915
driver instead of just the affected are of the code.

I'd like to start cleaning up the register definitions in a few steps:
 (1) Eliminate unnused register and bit definitions.  Some of these may
     get re-added in the future if/when code starts using them but
     that's fine; we'd prefer to carefully (re)review the register
     definitions at that time anyway.
 (2) Move registers exclusive to the command parser to their own header
 (3) Move OA registers to their own header
 (4) Move GT registers to their own header
 (5) Move display registers to their own header
 (6) While moving things to new files, take the opportunity to also
     update to update to a consistent coding style:  consistent
     indentation, consistent case for hex values, use of
     REG_BIT/REG_GENMASK, etc.

This will make it easier to find an appropriate place to add new
registers and should also improve quality of life for developers since
driver builds will be faster in cases where a register is added/updated
and only a specific part of the driver needs to be rebuilt.

This only includes step (1) above; the other steps will come as
follow-up patches if there's no concern with the general goal.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Matt Roper (1):
  drm/i915: Drop unused register definitions

 drivers/gpu/drm/i915/i915_reg.h | 3107 +------------------------------
 1 file changed, 9 insertions(+), 3098 deletions(-)

-- 
2.34.1

