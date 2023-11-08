Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E64617E6068
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 23:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCE910E87D;
	Wed,  8 Nov 2023 22:26:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDDAB10E880
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Nov 2023 22:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699482381; x=1731018381;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gLxUw4DaqDoy6qPdO3WYq4SPLtfqCblT493/IJOXH+c=;
 b=Z5rO3YCtv0kiox/CHePe68dqtCfTXuzM2bAsYKmi4f5XZqKfI0HyQY5D
 L2HHaAimdUjEfObHwyQaCPmTtngCt9xBd66sJj9MlpFoUjJd6LqmfTWtM
 ss8zXXWNOyOti/Tb2ommulv2zyA+jTK1F1Z3amNWhAVuuWnpzjbhRhU4W
 K7jcan4V0/FJ97jpQhWlZfWBopIdRR6jq/MepvR+3BBWghrsGp6G3W954
 BXbJ00baekRRLM3uozX/qeKab6SjLXD+d3DOTpcaEhs2c2c1SInxRgBuk
 pZivnaIRFkhKkZ30oZ+WdKEOiSOX2cPdxJXJoACaI1IwfshI99P9E04fJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="2829451"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; 
   d="scan'208";a="2829451"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 14:25:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10888"; a="798150702"
X-IronPort-AV: E=Sophos;i="6.03,287,1694761200"; d="scan'208";a="798150702"
Received: from sbelhaik-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.217.128])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2023 14:25:26 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Nov 2023 00:25:13 +0200
Message-Id: <20231108222514.26297-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/1] drm/i915/xe2lpd: WA for underruns during
 FBC enable
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the FBC enabling sequence. The plane binding register bits
need to programmed before fbe enable bit.

v2: update the patch subject and description as this underrun is not
    tied to PSR. FIFO underruns are observed when FBC is enabled on
    planes 2 or 3.

v2: Updated the comments and removed reference to PSR from the comments
    Added reference to HSD

Vinod Govindapillai (1):
  drm/i915/xe2lpd: implement WA for underruns while enabling FBC

 drivers/gpu/drm/i915/display/intel_fbc.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

-- 
2.34.1

