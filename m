Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4D34F9628
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 14:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEBE710F128;
	Fri,  8 Apr 2022 12:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A462710F128
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 12:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649422274; x=1680958274;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CXmMmeklRwxmqSizmGDuAWA5oxMVwpJSvdW9LNFGBx4=;
 b=lAOMhUwgD+3EflPhCDR3g5bgoqfiw1gZX3eaWqaWRObtY0eN9tR7gNi3
 Tk1seJK0JG+LwUk9kFZxF1JhH7TZflkQLEEijoRZUTNjm4dFyi0wu5CMq
 RpHFvPxEPAN6f72L5irK4TgoTFGLll35ZplVhj9kgKOzv2EnmDTPO+Fqs
 v/eB2WgQIYXfaJiMs9XCifgwsCiOngLDMBjeW2fl5C4zKJYUcgEKpaNor
 Bd+adbjelqCParMUJieaUDV07Bh4k2Cq0hq3D703+MmDCQUrkHF5Lho07
 sk1CGEh1n97Db6LUShaZ7cNtxT8kl5pCxLGaPXqWBiWC67J8txC8EAXbd Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="322273317"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="322273317"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 05:51:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="550491198"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 08 Apr 2022 05:51:12 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Apr 2022 15:51:58 +0300
Message-Id: <20220408125200.9069-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Fix issues in skl_pcode_request
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

Couple of crucial fixes for skl_pcode_request function.
1) Correctly handle the error and do retires until timeout
2) Return PCode request status, when failure happens

Stanislav Lisovskiy (2):
  drm/i915: Fix skl_pcode_try_request function
  drm/i915: Swap ret and status returned from skl_pcode_request

 drivers/gpu/drm/i915/intel_pcode.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

