Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E709F45576F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 09:55:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF76F6EB6C;
	Thu, 18 Nov 2021 08:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1980D6EB6C
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 08:55:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="221025308"
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="221025308"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2021 00:55:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,244,1631602800"; d="scan'208";a="507341278"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 18 Nov 2021 00:55:04 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Nov 2021 10:54:20 +0200
Message-Id: <20211118085424.685686-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/display/dg2: Add CD clock squashing
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

Add support for CD clock squashing feature.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Mika Kahola (4):
  drm/i915/display/dg2: Introduce CD clock squashing table
  drm/i915/display/dg2: Read CD clock from squasher table
  drm/i915/display/dg2: Sanitize CD clock
  drm/i915/display/dg2: Set CD clock squashing registers

 drivers/gpu/drm/i915/display/intel_cdclk.c | 92 +++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
 drivers/gpu/drm/i915/i915_reg.h            |  8 ++
 3 files changed, 90 insertions(+), 11 deletions(-)

-- 
2.27.0

