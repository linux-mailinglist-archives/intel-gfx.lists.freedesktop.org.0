Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B27AA51F496
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 08:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7C7610FCD1;
	Mon,  9 May 2022 06:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A09910FCD1
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 06:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652078959; x=1683614959;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hn2Wx6MKa6EC8zOx6xCdWhHtldJnA9h2lUd6X8dI1Dc=;
 b=EB2v7HdjelNue4ol92c2ywArSKnKlfvkRRuJ31YhipbfA+dANFnxtA7k
 NV3lgF/4x+JLaFFyJMtWj2t3Km1k5Vt5IzBRN/4wLR+pFJpxyKdUFxd/N
 3bU73Et4ozKzj9qBvjB0eBDXUbK6sHPVk12lJrt3N70nYEFyGOZEVU5e+
 S62kBbV0W2Js2RBtrfcGUCYa/G5q9aEQ5FEJxJrefgRbyDHyC9nhIoVhW
 Q2spubGnT5VdYWHYyrRX/h7j+2TjZ2k7LYJXNA/eWXhiMAB+FHIOv2k2p
 fkdW51bZYE2Zt/jtE4GAQFGc+zcGIHqQwCLtRt3/jy7CGmYy+PxtfTdnU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="331988198"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="331988198"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 23:49:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="591192908"
Received: from gdonthu-mobl1.gar.corp.intel.com (HELO
 smullati-desk.gar.corp.intel.com) ([10.215.197.92])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2022 23:49:16 -0700
From: Mullati Siva <siva.mullati@intel.com>
To: intel-gfx@lists.freedesktop.org,
	siva.mullati@intel.com
Date: Mon,  9 May 2022 12:19:05 +0530
Message-Id: <20220509064906.6152-1-siva.mullati@intel.com>
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
ver4: remove accessing vaddr
 
This is continuation to the below patch series to use iosys map
APIs, to use CT commands and descriptors.
https://patchwork.freedesktop.org/series/99711/

Siva Mullati (1):
  drm/i915/guc: Convert ct buffer to iosys_map

 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 195 +++++++++++++---------
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |   9 +-
 2 files changed, 122 insertions(+), 82 deletions(-)

-- 
2.33.0

