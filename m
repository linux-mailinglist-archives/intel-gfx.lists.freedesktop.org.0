Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB1E44DD5C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Nov 2021 22:56:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF8536E32F;
	Thu, 11 Nov 2021 21:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE4FB6E3F4;
 Thu, 11 Nov 2021 21:56:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="233264833"
X-IronPort-AV: E=Sophos;i="5.87,227,1631602800"; d="scan'208";a="233264833"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 13:56:52 -0800
X-IronPort-AV: E=Sophos;i="5.87,227,1631602800"; d="scan'208";a="643240214"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2021 13:56:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Nov 2021 13:56:40 -0800
Message-Id: <20211111215644.1123373-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] i915: Additional DG2 workarounds
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have a few more DG2 workarounds that weren't included in the initial
batch.


Matt Atwood (1):
  drm/i915/dg2: extend Wa_1409120013 to DG2

Matt Roper (2):
  drm/i915/dg2: Add Wa_14010547955
  drm/i915/dg2: Add Wa_16011777198

Ramalingam C (1):
  drm/i915/dg2: Add Wa_16013000631

 drivers/gpu/drm/i915/display/intel_display.c |  4 ++++
 drivers/gpu/drm/i915/gt/intel_lrc.c          |  5 +++++
 drivers/gpu/drm/i915/gt/intel_rc6.c          | 15 +++++++++++----
 drivers/gpu/drm/i915/i915_reg.h              |  5 +++--
 drivers/gpu/drm/i915/intel_pm.c              |  4 ++--
 5 files changed, 25 insertions(+), 8 deletions(-)

-- 
2.33.0

