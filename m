Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B052642D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 16:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4E6210E04D;
	Fri, 13 May 2022 14:28:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C2410E04D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 14:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652452114; x=1683988114;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I19HDNjbwV91OY/rcECqz8TV/900zGZC1bTDfAsFGDk=;
 b=XfC8LuuClGNzAar1sw0SHvRkyyz5sxUhJQleK/mN8yAIJvL/TgTFqmBW
 ojK3fM22gOBnp/7SjBoMuEtR1GCGwvLmfXDct+FbUX3/h84DINsOW2kmY
 1Qh2gs1+D9p7zbN/cj4FBsu3tSgmYjbQsidysUsv6BdSOe+KHRF0zS6gj
 lzTVHLX3slrLTZ9+mP983DY9hvd4bVFYdmc/pa8zDXI/f96L0W90Wl2Tu
 GnMfyusnW6/DeZb5lBbyjfovR6cFjm2iZ+RZK7lDQOJLmHfhSLe7QYyV8
 BWlXnbB5bMJ35twZH+b7LIshYQ03AS50Npc6Exlwgyz1ENBFOW9bdC6Of A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10346"; a="270450173"
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="270450173"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 07:28:33 -0700
X-IronPort-AV: E=Sophos;i="5.91,223,1647327600"; d="scan'208";a="543277358"
Received: from dvkewale-mobl1.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.33.181])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 07:28:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 May 2022 17:28:09 +0300
Message-Id: <20220513142811.779331-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] Fixes for selective fetch area
 calculation
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
Cc: Mark Pearson <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently selective fetch area calculation ends up as bogus area in
at least following cases:

1. Updated plane is partially or fully outside pipe area
2. Big fb with only part of memory area used for plane

These end up as y1 = 0, y2 = 4 or y2 being outside pipe area. This
patch set addresses these by ensuring update area is within pipe area
or by falling back to full update.

v5:
 - pipeA -> "pipe %c", pipe_name(crtc-pipe)
v4:
 - draw_area -> pipe_src
 - drm_dbg_once dropped and drm_info_once used instead
v3:
 - Add drm_dbg_once* and use it when sel fetch area calculation fails
 - Move drm_rect_intersect to clip_area_update
v2:
 - Update commit message of first patch
 - Set damaged_area x1 and x2 during initialization

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Mark Pearson <markpearson@lenovo.com>

Jouni Högander (2):
  drm/i915/psr: Use full update In case of area calculation fails
  drm/i915: Ensure damage clip area is within pipe area

 drivers/gpu/drm/i915/display/intel_psr.c | 37 +++++++++++++++++++-----
 1 file changed, 30 insertions(+), 7 deletions(-)

-- 
2.25.1

