Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 457F04D8FF2
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 23:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C727810E1D4;
	Mon, 14 Mar 2022 22:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB8210E1D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 22:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647298736; x=1678834736;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G2JB+b9sKgPqcs/htXeFMDGRPDRoCirTjdXsljyCK7Q=;
 b=h9I9EL7kZ5jpwMOIaIlucuLxvqPgWVac1pmc9ox2jTQUou2X6oVs4RAQ
 KqmUPzPMX6Ir25pPc3HO15mMoP6C4M379gxbO2awPYEOkK6Ef2iyRn3X4
 WU3c2Cut39sJV8wW7YqAwfAFydUNXRCHYVBE79nxCiFQC224rX26Yu2AP
 4GNYvNrwAX+lRZhk3cAZBt7DEwt5ILe8buIGrWDfFpYAJbQf4SDSfC0+1
 AEvbVvdZ6G0QsTvPtIJYfJhVD3C9Mah3G3W5KP+DCwK4qWyFH/F2AmBpX
 RrYa7at4d/2q0m5+1ptPYgbI+TEEWxZxrTfM4uaLAaeJsjmmTMGKbflPY g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="255892137"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="255892137"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 15:58:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="556653802"
Received: from mirceaau-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.33.88])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 15:58:54 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 00:58:35 +0200
Message-Id: <20220314225837.42816-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 0/2] suppress the wrong long hotplug events
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

Monitors like LG 27UL650-W, 27UK850 goes into power sleep state
and generates long duration hotplug events even when the monitor
is connected for display. Here is a proposal to detect and
suppress such hotplug events by "sleep" for 2 secs for power
state monitor become available before enable atomic commit.
A debugfs entry is created to enable the suppression of the
hotplug event in such scenarios.

Cc: Imre Deak <imre.deak@intel.com>

Mohammed Khajapasha (2):
  drm/i915/display: Add disable wait time for power state connector
  drm/i915/display: Add sleep for power state connector

 .../gpu/drm/i915/display/intel_connector.c    |  3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 80 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h  |  8 ++
 .../drm/i915/display/intel_display_debugfs.c  | 58 ++++++++++++++
 .../drm/i915/display/intel_display_debugfs.h  |  7 ++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/i915_drv.h               |  2 +
 7 files changed, 160 insertions(+)

-- 
2.25.1

