Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2833E4B456A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 10:18:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F5610E2AD;
	Mon, 14 Feb 2022 09:18:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90A2610E2AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644830296; x=1676366296;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PlRoA4zzfVcI8enzD59L0ew2qirV2jIjZc5bFYk3egY=;
 b=ADD8r1cu1qVyI5rgdGXL9xvhVnXJcuog7ZyHEz+SRd6Gx+hZ+sPtD71m
 gPiOnYiNVF0NCsreoho3waLXuXXSuj1G6IKI+BM1jzIVa5zDiwPvDn/YY
 mlIprC5sr73MkICI790ZJ9JAcCvymiiBjtQ2NmW0YRjHUZVFMOgoX266d
 kidE7ikRYUlBkM3me+u9BnaDkXEKFZwWAic2Hksqw8n58/chCXYPgvCrP
 OLmhICSnscyeGGh2A5imfQP+YH8LibSG26vBLl4twozPRSxRkWE09oOdj
 4ZKt9qEGbGr7L1Lgta6UWWyEPgEnjYawF6yNvpiZ05cYU6745VAtvq/KC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="248882355"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="248882355"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 01:18:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="495335238"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 14 Feb 2022 01:18:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Feb 2022 11:18:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 11:18:05 +0200
Message-Id: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: SAGV fixes
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

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Ville Syrjälä (6):
  drm/i915: Correctly populate use_sagv_wm for all pipes
  drm/i915: Fix bw atomic check when switching between SAGV vs. no SAGV
  drm/i915: Widen the QGV point mask
  drm/i915: Unconfuse pre-icl vs. icl+
    intel_sagv_{pre,post}_plane_update()
  drm/i915: Split pre-icl vs. icl+ SAGV hooks apart
  drm/i915: Pimp icl+ sagv pre/post update

 drivers/gpu/drm/i915/display/intel_bw.c |   7 +
 drivers/gpu/drm/i915/display/intel_bw.h |   8 +-
 drivers/gpu/drm/i915/intel_pm.c         | 175 ++++++++++++++----------
 3 files changed, 116 insertions(+), 74 deletions(-)

-- 
2.34.1

