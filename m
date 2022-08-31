Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B8E5A82A8
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 18:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38ECB10E43A;
	Wed, 31 Aug 2022 16:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEDD10E43A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 16:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661961865; x=1693497865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tb47NMb5+taEw1Wr2Vu2slN+m8EQ8HACzJtbm89t9sY=;
 b=gu/2899rJDLJtCUgD5//bTiaX6sCXvAuo46Bn4+ah/CrpbA1ruio6wtN
 8rsh7pn/FsE02DTNwyZHGN4DTxOzIT6XZWMNIAWRb1dpg8eN9fOusriq7
 T1WPy06ee/JKOgzdNyARxMOA76uNS2g5PvaUg/6xt/Rp8j54/jzMYnZGB
 CZFKgkdV46qvnhcIFRL5Y9JL/TQoICOVpmqnJQssda48bf7SlGjvrER49
 1h8R6kTME3xu7Oz9eO+l7P0yavRNPPfwgxjlKNudXop7mxQCyw56gnXFh
 Ngo+nroRtyc5ow8TeKckPAxNZ/LDxFRc8jQfl+48GnVE2z4H68trpxYBf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="359439949"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="359439949"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 09:04:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="589082083"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 09:04:23 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Aug 2022 21:35:35 +0530
Message-Id: <20220831160536.2131-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Modify debugfs entry from dsc compressed
 bpp to input bpc
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

In this patch, output dsc compressed bpp debufs entry is changed to
input bpc dsc.
Also, corresponding changes done in kms_dsc i-g-t.

Test-with: 20220831120849.28883-1-swati2.sharma@intel.com

Swati Sharma (1):
  drm/i915/display: convert dsc debugfs entry from output_bpp to
    input_bpc

 .../drm/i915/display/intel_display_debugfs.c  | 26 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 23 +++++-----------
 3 files changed, 21 insertions(+), 30 deletions(-)

-- 
2.25.1

