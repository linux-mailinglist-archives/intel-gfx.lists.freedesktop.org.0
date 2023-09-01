Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7DD78FF23
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 16:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C836410E7F4;
	Fri,  1 Sep 2023 14:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC0610E7F3;
 Fri,  1 Sep 2023 14:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693578445; x=1725114445;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LxhDZNF8r8nAjFsuxM+r/iy4Ft0fOMfn6B2ajSF7N+M=;
 b=kVWcAcIkcJJ4SV69gv3q9NP6UssK+R68rNHkg9Up/MA5GoIcO1uSNWb2
 uqiuPArOL0y/5ff46YKTKdlTTNJwNYZFtjQHAbwJX+NfiP3rJXg84/xHe
 zAEhRC/ZV3N6O9tL60OLnC7qVP7kddHz1u4G//8rdzjWsUQbkc3CQkoW+
 fBe2FBh2YvXq3kxuSisFWJOVCbhISZGeHPDQ6ok99Gck85hidU9TlZmSC
 PjFzXEqANlj4wW4X2hwTbHX6Uxj8m2kJRykWh8e4PyTv8sxC3rYSkEQh6
 JOmudTcUgYtvPIlJsBAHfv9RZW3XbOeUjCN6FMy9TgbqhKF4fMZnt+9HU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="356540678"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="356540678"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 07:27:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="739951346"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="739951346"
Received: from jeroenke-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.59.110])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 07:27:21 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri,  1 Sep 2023 17:27:07 +0300
Message-Id: <20230901142709.269161-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] fbc on any planes
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
Cc: matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FBC can be supported in first three planes in lnl

Vinod Govindapillai (2):
  drm/i915/lnl: possibility to enable FBC on first three planes
  drm/i915/lnl: FBC is supported with per pixel alpha

 drivers/gpu/drm/i915/display/intel_fbc.c           | 6 +++++-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 9 ++++++---
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 3 files changed, 13 insertions(+), 4 deletions(-)

-- 
2.34.1

