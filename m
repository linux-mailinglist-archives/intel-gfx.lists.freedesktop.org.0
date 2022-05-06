Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F32551D0E7
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 07:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A1A10E1F8;
	Fri,  6 May 2022 05:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABEDD10E1F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 May 2022 05:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651816260; x=1683352260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VIcGAS4YpoOzvsYMurpc0OCGFE1aZwB/A3NJtYABugI=;
 b=I4m9A+igbDk2Qz7ckf6WgF1uxLBiR0zSQ/9wWDafBVQSVy3iKEeYduj7
 /DLyP9fLdL5Ly3RrH0EMHiVcsAcdJ2yG1FHrCbw1RaKhmrqfgwinotVvJ
 pPqzKPX97609Bsu1LCma/Lnu4RUKK93fD/jGvvhKAvGJcg2whiG/73+pF
 fmlGXUpdkWGrFTeYQb681DSexlOJf0ijEFoX8JRxYl4US+BqDspPjBU0D
 KXAY52TEYlV5BEqBI1acr0JqlZFxJB3D0NlHlcuaV5AMOjZnPnl1wQOA3
 LnRnmDhQnPdyVv24eCBrIABwA8G0RQGYx6pkcnt2bivT9jIWb81GEj0DE w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="255842437"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="255842437"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 22:50:59 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="585788574"
Received: from hoturkar-mobl.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.34.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 22:50:57 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 May 2022 08:48:32 +0300
Message-Id: <20220506054834.2822650-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Fixes for selective fetch area calculation
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
following cases:

1. Updated plane is partially or fully outside pipe area
2. Big fb with only part of memory area used for plane

These end up as y1 = 0, y2 = 4 or y2 being outside pipe area. This
patch set addresses these by ensuring update area is within pipe area
and falling back to full update. 

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Mark Pearson <markpearson@lenovo.com>

Jouni Högander (2):
  drm/i915/psr: Use full update In case of area calculation fails
  drm/i915: Ensure damage clip area is within pipe area

 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

-- 
2.25.1

