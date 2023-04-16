Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B336E3A01
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Apr 2023 17:54:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A0510E260;
	Sun, 16 Apr 2023 15:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E321E10E260
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Apr 2023 15:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681660471; x=1713196471;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=12MIuWsL82i1u70qQKGEkwih6Jq/lNGWB2zVfnJfyiQ=;
 b=abNDhBj4gVKNn66GuWVtdeCSADRAUA0rVyRXsCRexZk9G7RZuUqxY6lP
 TuyFjusorSJRbQUYnTagth1kmpi1nw1H0c4PVbyef+J+phz8qVsywYW0s
 Dqc9M2sTl+YgqyifGbWvXieZ/GJkB/Kb6akw8Ies2uyvxsK1GhSGbbn5k
 elj4SuxY5mCO7z+1dA1J1Vwjk+uAVwNQ0izdGWjBWwT2TE/Gl7xYrGvx9
 o2bYdlnno9nWhkgAVeqm9Oakf46pcVlDTDaIWSakiuIPCj67StAO1oyW8
 7TFNyZ8JmmtNUPYZbqqX46HOeNgkUkH7z/+ZB3drM0rUqayAWqm4NGBhm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="328902088"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="328902088"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 08:54:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640698688"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="640698688"
Received: from yanghuib-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.34.77])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 08:54:28 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 16 Apr 2023 18:54:13 +0300
Message-Id: <20230416155417.174418-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 0/4] Prepare for MTL sagv config patches
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

In MTL sagv configuration differs from the previous platforms.
Modify sagv configuration part so that MTL specific code
variation can be added easily and also fix some issues observed
in current sagv configuration,

Vinod Govindapillai (4):
  drm/i915: fix the derating percentage for MTL
  drm/i915: update the QGV point frequency calculations
  drm/i915: store the peak bw per QGV point
  drm/i915: extract intel_bw_check_qgv_points()

 drivers/gpu/drm/i915/display/intel_bw.c       | 246 ++++++++++--------
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 2 files changed, 139 insertions(+), 109 deletions(-)

-- 
2.34.1

