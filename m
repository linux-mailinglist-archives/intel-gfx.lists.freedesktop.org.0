Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B864D1384
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 10:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D68B10E1E3;
	Tue,  8 Mar 2022 09:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38FD610E370
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 09:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646732301; x=1678268301;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FjK5cn+/D2LkJ2bDG6A9mgHc4n6nLdjSTHL6fqIYAZI=;
 b=YOCu+mBgQ9gZpuhurUCIJ5h1Rmh7s3LACm82/E4J0FAj7pZG7U+t0IPA
 qNvT9KOwoGIrN5Nx+nPzSEwZ+ZqqNOlKkvnmkHobVXRT3FOAWZx6LgJCa
 +7LBwe7ZlzBuu6VRfJ1a6mNcLWXfxn/K3kG1zIwy+xn1rBWOHkgRWvmoT
 /RsnWho9A8DnS7KshxLFX8OD7wlq8X9tFPVz4MPTHwHKVv4hfihaQAGxo
 yruOVOsm/1K7dVhqd1oBORefm2QG8Cn0aK7DX54eSAgCxK5DwNRqIuRFa
 u1JKO4WxAZvXRbkHmdNxMksAIKGLkfvmDe9EBDeCuQ3XlQ/66yUB0zmkt Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="341073373"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="341073373"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:38:20 -0800
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="537502105"
Received: from sseethax-mobl1.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.213.81.146])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 01:38:18 -0800
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Tue,  8 Mar 2022 15:08:03 +0530
Message-Id: <20220308093805.879262-1-siva.mullati@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/guc: Refactor CT access to use
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
APIs to use CT commands and descriptors. 
https://patchwork.freedesktop.org/series/99711/


Siva Mullati (2):
  iosys-map: Add a helper for pointer difference
  drm/i915/guc: Convert ct buffer to iosys_map

 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 170 +++++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
 include/linux/iosys-map.h                 |  21 +++
 3 files changed, 131 insertions(+), 69 deletions(-)

-- 
2.33.0

