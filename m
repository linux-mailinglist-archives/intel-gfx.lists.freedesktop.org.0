Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1390A44BC4A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 08:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6D072BE6;
	Wed, 10 Nov 2021 07:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1912C72BE6
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Nov 2021 07:43:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="219516176"
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="219516176"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 23:43:32 -0800
X-IronPort-AV: E=Sophos;i="5.87,223,1631602800"; d="scan'208";a="491995313"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 23:43:31 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Nov 2021 12:59:45 +0530
Message-Id: <20211110072947.171659-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] Some fixes in HDMI2.1 PCON FRL
 configuration
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

Some optimizations in HDMI2.1 PCON configuration and avoiding
resetting the config DPCD.
v2: Addressed comments from Uma.
v3: Rebased.

Ankit Nautiyal (2):
  drm/i915/dp: Optimize the FRL configuration for HDMI2.1 PCON
  drm/i915/dp: For PCON TMDS mode set only the relavant bits in config
    DPCD

 drivers/gpu/drm/i915/display/intel_dp.c | 61 +++++++++++++++++++------
 1 file changed, 46 insertions(+), 15 deletions(-)

-- 
2.25.1

