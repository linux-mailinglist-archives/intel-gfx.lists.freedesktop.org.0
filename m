Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D667F66E8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 20:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35EFA10E335;
	Thu, 23 Nov 2023 19:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A24A10E335
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 19:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700766325; x=1732302325;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WjJh9o4GxWJviq84Wvfjzmyaq4AIqfEECPhypkzPC8Q=;
 b=cpT3uhGRqDDKu6OH0tcqhFbIwGsUVHFuS4NuW8XeOqKZvmcz0Y5RjP6H
 hcYzDcX2X7Zm+Tvz3zMs4+e1SZg458+tmr8rmH2lzhDG1ttBuNP28SyRx
 RKhH9PvpOqV0HOOS11Fq9gir1K9ueXUYXKHyfL62J1ZWXcCZ5y+vTIyfl
 X/G6eYgdS9Pb+7ZZ03q79mREi88wUbDxugqPA5fZa5CfEuOcmha/QR/z4
 spqdCiboz3/pnhdS+n74QkxUaV5IC9JvIYWe3Nk1TKHnuIHqCDNOx1yrZ
 CiT0bEXEzTkzxjndjMgT17mebnoBzyONo532Fgj/wNsae1Jejxz0Bs/jN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="371668635"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="371668635"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 11:05:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="771059324"
X-IronPort-AV: E=Sophos;i="6.04,222,1695711600"; d="scan'208";a="771059324"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga007.fm.intel.com with ESMTP; 23 Nov 2023 11:05:21 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Nov 2023 00:30:23 +0530
Message-Id: <20231123190024.34455-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/1] Update vtotal based on closest possible panel
 timings
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For edp VRR supported panel, vtotal should be updated
based on closest available panel timings and adjusted_mode
panel configuration, instead of rounding up to nearest possible
integer.  This is to facilitate user about the refreh rate
they're going to get when it is slightly off from list of available modes.

Mitul Golani (1):
  drm/i915/display: Update vtotal based on closest possible panel
    timings

 drivers/gpu/drm/i915/display/intel_panel.c | 53 ++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.h   |  2 +
 2 files changed, 45 insertions(+), 10 deletions(-)

-- 
2.25.1

