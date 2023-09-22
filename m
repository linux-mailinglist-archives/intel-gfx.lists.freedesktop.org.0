Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8247AB2BB
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 15:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F51B10E66F;
	Fri, 22 Sep 2023 13:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E17A10E667;
 Fri, 22 Sep 2023 13:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695389444; x=1726925444;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U4E5kqahoaptY8D0OK5+ZVECHcE/HSPsc89BPmOo7/4=;
 b=ZZTIIO2Cx9Ru7rR9Kyy2SX48e8AxHniSzwcBQCdSDjjsKX5ejDm4Wps8
 77oLWnMyjPEQvfzKBpGPAW3f3b1NJ67yYjAXUVXnO2nJo6+zdurpYZMNK
 K5CBRCzJ6Kr7ar8JPK3A6HURljPpBxqCU8+3iWKq8jEmuUjUe7W0+xKXi
 JrgGPiXkt6I5CkZPQhduEkbG3OJfloI2KnXbIGB++vpRba1q7nb6ZgQ9w
 TteGG9xAnIxmOxu4Sk3kQSULg11t4GhBC1LH7HeGWmrfFftoKWEZ3GTCi
 USb7H/8Fjur6ZAZxtlB0LO0YacNaZR6w8sDXiFMXimOuPV13ARZ5CJUxx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="361078353"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="361078353"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="1078374379"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="1078374379"
Received: from rvaittin-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.220.9])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 06:30:14 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Fri, 22 Sep 2023 16:30:01 +0300
Message-Id: <20230922133003.150578-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/2] fbc on any planes
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
  drm/i915/lnl: update the supported plane formats with FBC

 drivers/gpu/drm/i915/display/intel_fbc.c           | 11 ++++++++++-
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  9 ++++++---
 drivers/gpu/drm/i915/i915_reg.h                    |  2 ++
 3 files changed, 18 insertions(+), 4 deletions(-)

-- 
2.34.1

