Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 019383F3A41
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Aug 2021 12:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B625F6EB65;
	Sat, 21 Aug 2021 10:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1405B6EB65
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Aug 2021 10:42:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="196469806"
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; d="scan'208";a="196469806"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2021 03:42:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,340,1620716400"; d="scan'208";a="596001759"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2021 03:42:47 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-MOBL.ger.corp.intel.com [10.249.145.218])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 17LAgkZD007248; Sat, 21 Aug 2021 11:42:46 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 21 Aug 2021 12:42:34 +0200
Message-Id: <20210821104238.981-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 0/4] drm/i915/guc: Improve CTB error handling
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

There was a gap in handling MMIO result from CTB (de)registration
and while fixing it improve some other error reports.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Michal Wajdeczko (4):
  drm/i915/guc: Verify result from CTB (de)register action
  drm/i915/guc: Print error name on CTB (de)registration failure
  drm/i915/guc: Print error name on CTB send failure
  drm/i915/guc: Move and improve error message for missed CTB reply

 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 30 ++++++++++++++---------
 1 file changed, 18 insertions(+), 12 deletions(-)

-- 
2.25.1

