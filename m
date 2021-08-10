Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB133E5960
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 13:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0286289D86;
	Tue, 10 Aug 2021 11:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839DC89D86
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 11:48:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="214912934"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="214912934"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 04:48:35 -0700
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="674937476"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 04:48:34 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: david.e.box@intel.com,
	Anshuman Gupta <anshuman.gupta@intel.com>
Date: Tue, 10 Aug 2021 17:01:11 +0530
Message-Id: <20210810113112.31739-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 0/1] Tweaked Wa_14010685332 for all PCHs
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

This revision is floated to get the CI results.
Rev3 Patchwork Link : https://patchwork.freedesktop.org/series/88435/#rev3

David Box has tested the Rev3 and provided that confirmation that it 
is working on TGL-H Dell platforms.

Rev4 and Rev5 have some patchwork issues due to that CI build is failing.
 
Anshuman Gupta (1):
  drm/i915: Tweaked Wa_14010685332 for all PCHs

 .../drm/i915/display/intel_display_power.c    | 16 +++++++-------
 drivers/gpu/drm/i915/i915_irq.c               | 21 -------------------
 2 files changed, 8 insertions(+), 29 deletions(-)

-- 
2.26.2

