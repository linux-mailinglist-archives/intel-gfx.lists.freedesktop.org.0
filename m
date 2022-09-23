Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E86D5E70A1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 02:20:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D9210E27C;
	Fri, 23 Sep 2022 00:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7AF10E25E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 00:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663892427; x=1695428427;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aH2EdQZoCNdJM8s1iQRGgRmCWoNos/91XQ36AglV8rI=;
 b=NQRI8PYQYfgQuOlotezqCJ6BZTXjVGG62u7MwixqgByBQZzri68jjdxf
 6ALd5n897lDNnmElYpqDZ4Rs8GMwC7GLSRaZjP+nkdOCikykz8uz0NApz
 hC0nqk6/aLNxpVNAO+SFETIhmGPZumw04672l9Q1UoPfXEyXTrX+8OHSB
 n2jzSfYCgmfyPMe24WwjUMpQ6YOfxIB8dKVHn1vVfzNN0z0wgJrlBK42c
 2CCaf0bbuxO5FxONs//6IjTpMGC/Vj1bIHuZfy6IMTm2j7eSOGI4QjrVE
 9tvyNsZeG/7cC9741PScl22UkwRp8O+OrkFeC7dSVIjeusygoK4ZtOLLt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="326797399"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="326797399"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 17:20:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="709105417"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Sep 2022 17:20:27 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 17:22:20 -0700
Message-Id: <20220923002221.281179-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] Add PXP firmware respose on ARB failure
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

Add PXP firmware respose on ARB failure

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Alan Previn (1):
  drm/i915/pxp: Add firmware status when ARB session fails

 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 1 +
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 2 ++
 2 files changed, 3 insertions(+)


base-commit: fea329811a7bc341aac5f51ab66ec41a3d0844af
-- 
2.25.1

