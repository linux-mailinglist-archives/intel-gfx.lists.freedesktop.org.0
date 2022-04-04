Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8A94F1209
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 11:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3298110E9B7;
	Mon,  4 Apr 2022 09:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971F010E9B7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 09:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649064701; x=1680600701;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tgJit2pgmhnAI/eiZ+TgCtQE1On/lnUjua4U30UXT+I=;
 b=HGLwJYWq7q5j9bcOtsinaNwfq3G0DCxGqTJw7R2sqf4hLi+91xstS001
 7hmoLa7nQcCxjYNa5q9+euR+tVRnEIXYD2nDYG/VxTK+KQZr8DpXKlpaj
 albj4l8JJvSHLXAxVl4SwYGF6Mbp6QacS8chdQUprp1yZD10IPZ4QQc9w
 8YlgXX4JIJjB5iIbZBFStTgIXr9+1HraZcJNZKMR6CayFTyIFA/HJEmmx
 pLx438buu5zHeCR4sodXB0bCke1yW1tC+8JVuAaqklJTMOQtPV9DnNb3Q
 Tl8zSOxpG+OzriLa0+Mi8DjDlpQru68+ZnQx18TG9oQ6xHW/H0NJOsOIR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10306"; a="259307051"
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="259307051"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 02:31:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,234,1643702400"; d="scan'208";a="556098784"
Received: from nayakman-mobl.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.252.76.72])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 02:31:39 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Mon,  4 Apr 2022 15:01:24 +0530
Message-Id: <20220404093125.73327-1-siva.mullati@intel.com>
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

ver2: remove newly added iosys map api from ver1
ver3: address review comments
 
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

