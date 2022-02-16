Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9CF4B8F86
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E2DA10E6EC;
	Wed, 16 Feb 2022 17:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5F710E6EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 17:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033374; x=1676569374;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aZESj71MY3YoC1molUYefPTAkOIHhaBmgCl7WYS0coM=;
 b=jAddRf2GCI9mxWWXPHQK7ehvRiVMPcgYM6rwKiHYQ282mOyldGJ3InTp
 ccqkx3TajxQS370vl8w1zoD4tb9fSU8YSZvZDtph7043iH6IIYIpkuOR2
 Ix3fPW9Uvmq1fbB33nhlO5cxgKBm+OAPeuCDaYePjvuNxu5/C5QR7VXzU
 uK/jvanb8refwK5ceqq6WOu/DvnOGiNbFl2QWd0rjxhiJYlSoJVFqGorY
 JxADVCYR/FoURkiX8GlzsfNzwxuXg/rwp7WwEC8cD+1CurcYf3o77wopc
 Nmq/pffUM/qtOP9VaSgB+4g2qMY2KwwysXubE/VofbFCBy+6wW8lALAmF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250622602"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250622602"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:42:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="588609656"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 16 Feb 2022 09:42:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 19:42:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 19:42:44 +0200
Message-Id: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915: SAGV fixes
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

While pokingaround the watermarks/etc. I noticed our SAGV code
has a bunch of bugs. Let's try to fix it.

Pushed a few patches from v1 already. And based on the discussion
with Stan I added a few extra refactoring patches to the end in the
hopes of making the logic less confusing. I still prefer the oneliner
for the immediate bugfix in patch 2 so that we don't have to backport
the refactoring as well.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Ville Syrjälä (6):
  drm/i915: Correctly populate use_sagv_wm for all pipes
  drm/i915: Fix bw atomic check when switching between SAGV vs. no SAGV
  drm/i915: Split pre-icl vs. icl+ SAGV hooks apart
  drm/i915: Pimp icl+ sagv pre/post update
  drm/i915: Extract icl_qgv_points_mask()
  drm/i915: Extract intel_bw_check_data_rate()

 drivers/gpu/drm/i915/display/intel_bw.c |  71 +++++++---
 drivers/gpu/drm/i915/intel_pm.c         | 177 ++++++++++++++----------
 2 files changed, 154 insertions(+), 94 deletions(-)

-- 
2.34.1

