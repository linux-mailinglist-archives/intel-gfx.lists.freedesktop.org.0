Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3B34D1F43
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:41:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC75810E2D8;
	Tue,  8 Mar 2022 17:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEDD10E2D8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761294; x=1678297294;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RfICW64uekOkRxeca8pw4qZTHHz8ee1zVRMOzTb4qY8=;
 b=OWpuYdtbq3YjtgqQx0Aab4ahEPmTdSpCxbewlKUDRXEiDP73ZejIRbrK
 e5EwmEnwE7kIUW+Rbn9FxPkEZ8c3oxDOkwjzJvO3KVvZ2raoi5CP8oJxc
 RozQsl6I/aXxUGhqn2yclfk53FViE7FdgSj5AVIZXpTx2ZNJn+tVix+6g
 BGhiiPHuQ9+8+ok5+JbDBEMoN7szOo4O66lYzapx4KQwO+LwHdYPaXics
 r7jKUENUsA8JWt0Od9dhh3h4adTh9xj34Bl9oSh9Z3rkOAc8Yz+wN0vub
 koFFDroO+vJMxrxMwCXn5R795DGiOB2Vc6T2ekG614rnCzo1tNGNhisVn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="315476552"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="315476552"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:32:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="510181084"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 08 Mar 2022 09:32:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 19:32:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 19:32:24 +0200
Message-Id: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: SAGV block time fixes
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

Try to fix SAGV block time handling:
- zero means no SAGV
- avoid integer overflows
- slightly better debug logs
- assorted cleanups

Ville Syrjälä (6):
  drm/i915: Remove leftover cnl SAGV block time
  drm/i915: Rework SAGV block time probing
  drm/i915: Treat SAGV block time 0 as SAGV disabled
  drm/i915: Probe whether SAGV works on pre-icl
  drm/i915: Reject excessive SAGV block time
  drm/i915: Rename pre-icl SAGV enable/disable functions

 drivers/gpu/drm/i915/intel_pm.c | 95 ++++++++++++++++++++-------------
 1 file changed, 58 insertions(+), 37 deletions(-)

-- 
2.34.1

