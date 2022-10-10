Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0675F9B15
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 10:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526F810E462;
	Mon, 10 Oct 2022 08:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD5510E462
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 08:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665390902; x=1696926902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GB7AFFmwjmdK/flOTySr8LGAa9tFr8IzhQ6DOhO14d8=;
 b=XdFuFJPpLSIHTZ3u0f3z6yu9S/DB0xAzAd0wgjpVPzfzu4aHM3+MnR/w
 ZmiTDyU+SWYMaam1R6jdMVmabNtf2HNoYTNoHjhrfShd3+bIf1AtLBXnd
 txESfBVsfhhzssrclcIEon7MPPglR878j4xYYnCCVIPH0d2JosDiRT4C2
 aNukXFFfQXzi6sMj2hpWPcy5XDdW7LNTchqa+brdwwPxbnwzx1isEvS55
 vkmVB3ORNQxk8YIIp4zt8f8RE+aTdtrfSU9vEG7fkW0Ik1MYVjfUNeSM+
 bzeqnqQZ9UqO4WkgVsBUmPJKcUFtRfyEY/uiCHBxuvhCV+k+6mSQUib8C A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="291460164"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="291460164"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 01:35:01 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="954839175"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="954839175"
Received: from vgovind2-mobl3.tm.intel.com ([10.237.50.39])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 01:35:00 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Oct 2022 11:34:45 +0300
Message-Id: <20221010083447.139768-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Provision to ignore long HPDs in CI
 systems
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As some faulty displays generate long HPDs even while connected to ports
can cause CI execution issues. Add a provision to ignore such long HPDs
in such systems with control through debugfs

Vinod Govindapillai (2):
  drm/i915/display: ignore long HPDs based on a flag
  drm/i915/display: debugfs entry to control ignore long hpd flag

 .../gpu/drm/i915/display/intel_display_core.h | 11 ++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 ++++++
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 25 +++++++++++++++++++
 3 files changed, 43 insertions(+)

-- 
2.34.1

