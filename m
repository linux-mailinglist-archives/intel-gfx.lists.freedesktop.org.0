Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 328AC465D76
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 05:38:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DAF6EA0E;
	Thu,  2 Dec 2021 04:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7238A6EA0E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 04:38:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223499826"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="223499826"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 20:38:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="513024423"
Received: from pallavi-nuc8i7beh.iind.intel.com ([10.145.162.8])
 by orsmga008.jf.intel.com with ESMTP; 01 Dec 2021 20:38:22 -0800
From: Pallavi Mishra <pallavi.mishra@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Dec 2021 10:08:48 +0530
Message-Id: <20211202043849.40094-1-pallavi.mishra@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] static analysis failure
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

fix for null ptr dereferences

Pallavi Mishra (1):
  static analysis failure

 drivers/gpu/drm/i915/gem/i915_gem_ttm.c      | 3 +++
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 4 +++-
 2 files changed, 6 insertions(+), 1 deletion(-)

-- 
2.25.1

