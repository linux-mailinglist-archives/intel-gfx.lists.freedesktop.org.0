Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9AE43F70C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 08:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0E76E9EA;
	Fri, 29 Oct 2021 06:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A6DD6E0D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 06:15:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="230458917"
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="230458917"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 23:15:50 -0700
X-IronPort-AV: E=Sophos;i="5.87,191,1631602800"; d="scan'208";a="448264845"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 23:15:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: swati2.sharma@intel.com,
	uma.shankar@intel.com
Date: Fri, 29 Oct 2021 11:31:52 +0530
Message-Id: <20211029060154.110038-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Some fixes in HDMI2.1 PCON FRL configuration
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

Ankit Nautiyal (2):
  drm/i915/dp: Optimize the FRL configuration for HDMI2.1 PCON
  drm/i915/dp: For PCON TMDS mode set only the relavant bits in config
    DPCD

 drivers/gpu/drm/i915/display/intel_dp.c | 62 +++++++++++++++++++------
 1 file changed, 47 insertions(+), 15 deletions(-)

-- 
2.25.1

