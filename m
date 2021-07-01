Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1972E3B8CC8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 06:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1E36E9AA;
	Thu,  1 Jul 2021 04:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3189A6E9AA
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 04:06:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="195626948"
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="195626948"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 21:06:45 -0700
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="493371301"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 21:06:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Jun 2021 21:06:22 -0700
Message-Id: <20210701040623.1675928-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] drm/i915/dg1: Compute MEM Bandwidth using
 MCHBAR
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Replacement for https://patchwork.freedesktop.org/series/91848/

Those 2 commits are now squashed and received a round of cleanup. My
changes were mostly cosmetic, so I'm leaving my r-b there. It would be
good to get an ack though.

Clint Taylor (1):
  drm/i915/dg1: Compute MEM Bandwidth using MCHBAR

 drivers/gpu/drm/i915/display/intel_bw.c | 41 ++++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h         | 12 ++++++++
 2 files changed, 52 insertions(+), 1 deletion(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
