Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C406B4E3B04
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 09:45:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F44F10E52A;
	Tue, 22 Mar 2022 08:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1975F10E52A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 08:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647938713; x=1679474713;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OtxWYeinW/io8cmBGgyDPhW5SMFwCfDdDYv0r2Zi+Bc=;
 b=Zm3mzbc9fe1b0bvclzrLSvK0DhIAMLFVwjQObh3eU644GEVx9qOq/zgO
 WCLDRaaSNBdzVrcoRzpvjVza7TBDp2wa+hHJhC0T/vHaOVu9uXh+acjt7
 4AsLLBk6P1NM+LE4iovdzbxkbAL5LLyasfkmeQGqyflb+EXU8em5mfM2N
 PGESsJzlyk79ftRDUbxnOjiw8eMt5XJDZ+yWNrB+/SOVueaEVRB7oKm56
 aqtSs47cDCdHrH4+FKsgz5fNm83hSSGKSa662/dJy0mHVTZLPeAddZO+8
 slws+SD5VipZ7hxObWbdh/gIgSAejp6BXhImurAA21Y+4GC8LLv2OST2W A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="255326857"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="255326857"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 01:44:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="716843332"
Received: from rshelke-mobl.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.251.56.157])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 01:44:51 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Tue, 22 Mar 2022 14:14:36 +0530
Message-Id: <20220322084437.235473-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/guc: Refactor CT access to use
 iosys_map
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Siva Mullati <siva.mullati@intel.com>

This is continuation to the below patch series to use iosys map
APIs, to use CT commands and descriptors.
https://patchwork.freedesktop.org/series/99711/

Siva Mullati (1):
  drm/i915/guc: Convert ct buffer to iosys_map

 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 200 +++++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
 2 files changed, 127 insertions(+), 82 deletions(-)

-- 
2.33.0

