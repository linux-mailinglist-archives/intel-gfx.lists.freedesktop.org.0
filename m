Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E93456F60
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4485A6EAC3;
	Fri, 19 Nov 2021 13:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C556D6EAC3
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 13:14:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="215124484"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="215124484"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:14:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="507894051"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 19 Nov 2021 05:14:28 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Nov 2021 15:13:43 +0200
Message-Id: <20211119131348.725220-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] Add support for CD clock squashing
 feature.
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

v2: Reorder patches (Jani)
    Add Ville's "Allow cdclk squasher to be reconfigured live"
    to the series

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Mika Kahola (4):
  drm/i915/display/dg2: Introduce CD clock squashing table
  drm/i915/display/dg2: Sanitize CD clock
  drm/i915/display/dg2: Set CD clock squashing registers
  drm/i915/display/dg2: Read CD clock from squasher table

Ville Syrjälä (1):
  drm/i915: Allow cdclk squasher to be reconfigured live

 drivers/gpu/drm/i915/display/intel_cdclk.c | 132 ++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_cdclk.h |   1 +
 drivers/gpu/drm/i915/i915_reg.h            |   8 ++
 3 files changed, 127 insertions(+), 14 deletions(-)

-- 
2.27.0

