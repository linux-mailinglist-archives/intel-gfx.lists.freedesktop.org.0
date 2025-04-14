Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4295A89B57
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 12:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B6910E731;
	Tue, 15 Apr 2025 10:59:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLK4V3z9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FDD010E730
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 10:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744714786; x=1776250786;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:date:message-id:content-transfer-encoding:
 mime-version; bh=tmZKmCrNvznjmGS/7QqthM8WE+Sha0EM8rZvoWJow7Q=;
 b=VLK4V3z9RyC1zgIIElaXUWEIauaFPr4bBozD4318SkhuffXxrMYaa5Lw
 ENPzEBSSpzGRyX0SKMI0xk+tNimwNp1cdehDPeQo8jqte2nBjSx+KwuJ0
 gJ4qMnRuhOMeDmaqxOjYjTNXh/l9fEpKgSCxbnJbYJN7JxLDQH1swmVFX
 f1iEmjyEOFT97uk34A7nxTW00qOhGiywz2z5idnUTa8FxP/d+iOQnHpwd
 f3aBC61po24Qbq/COBY7E42G7uuRiJRF/dIXxHCOMCDL1oBNaKa0VdBx8
 GH0WvC1IwGcFGts2FkZ09/maFDSjPGtME1yumEcDNB8DT0gBv0E6i+Bkl g==;
X-CSE-ConnectionGUID: PCXmE/62R++0VVgRkimm2w==
X-CSE-MsgGUID: YgZNlSVaTpC4LUCyV9BvxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11403"; a="46306362"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46306362"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:59:45 -0700
X-CSE-ConnectionGUID: f5yvwyuYTFGKFncQoUAuWQ==
X-CSE-MsgGUID: P/rdwCcURW6rzsHj2GGUQg==
X-ExtLoopCount2: 2 from 10.245.246.35
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="134946790"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.35])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 03:59:44 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 15 Apr 2025 13:59:41 +0300
Resent-Message-ID: <87y0w1r8pu.fsf@intel.com>
Received: from MW3PR11MB4571.namprd11.prod.outlook.com (2603:10b6:303:59::19)
 by PH7PR11MB6428.namprd11.prod.outlook.com with HTTPS;
 Mon, 14 Apr 2025 12:33:25 +0000
Received: from BY5PR03CA0001.namprd03.prod.outlook.com (2603:10b6:a03:1e0::11)
 by MW3PR11MB4571.namprd11.prod.outlook.com (2603:10b6:303:59::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.35; Mon, 14 Apr
 2025 12:33:23 +0000
Received: from CO1PEPF000075F3.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0:cafe::45) by BY5PR03CA0001.outlook.office365.com
 (2603:10b6:a03:1e0::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8632.32 via Frontend Transport; Mon,
 14 Apr 2025 12:33:23 +0000
Authentication-Results: spf=fail (sender IP is 192.55.55.68)
 smtp.mailfrom=intel.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=intel.com;
Received: from edgegateway.intel.com (192.55.55.68) by
 CO1PEPF000075F3.mail.protection.outlook.com (10.167.249.42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.12 via Frontend Transport; Mon, 14 Apr 2025 12:33:23 +0000
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 edgegateway.intel.com (10.1.192.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 05:33:15 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 05:33:14 -0700
Received: from orviesa004.jf.intel.com (10.64.159.144) by
 FMSMSX901.amr.corp.intel.com (10.18.84.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 05:33:14 -0700
X-CSE-ConnectionGUID: H8RUcA01SKeIsTaeZaE1TA==
X-CSE-MsgGUID: F/SIVZXVSM6vCPOH3p8pjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134781605"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205]) by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2025 05:33:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Subject: [PATCH 0/3] drm/i915/pch: conversion to struct intel_display use,
 cleanups
Date: Mon, 14 Apr 2025 15:33:06 +0300
Message-ID: <cover.1744633934.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-OrganizationHeadersPreserved: fmsmsx901.amr.corp.intel.com
X-MS-Exchange-Organization-ExpirationStartTime: 14 Apr 2025 12:33:23.3629 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 243eaa24-345c-42ed-4c37-08dd7b508c0b
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-MS-Exchange-Organization-AuthSource: fmsmsx901.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-SCL: 1
X-CrossPremisesHeadersPromoted: CO1PEPF000075F3.namprd03.prod.outlook.com
X-CrossPremisesHeadersFiltered: CO1PEPF000075F3.namprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PEPF000075F3:EE_|MW3PR11MB4571:EE_|PH7PR11MB6428:EE_
X-OriginatorOrg: intel.onmicrosoft.com
X-MS-Office365-Filtering-Correlation-Id: 243eaa24-345c-42ed-4c37-08dd7b508c0b
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|82310400026|41050700001;
X-Forefront-Antispam-Report: CIP:192.55.55.68; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:edgegateway.intel.com; PTR:edgegateway.intel.com;
 CAT:NONE; SFS:(13230040)(366016)(82310400026)(41050700001); DIR:INT; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2025 12:33:23.2535 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 243eaa24-345c-42ed-4c37-08dd7b508c0b
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=46c98d88-e344-4ed4-8496-4ed7712e255d; Ip=[192.55.55.68];
 Helo=[edgegateway.intel.com]
X-MS-Exchange-CrossTenant-AuthSource: fmsmsx901.amr.corp.intel.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4571
X-MS-Exchange-Transport-EndToEndLatency: 00:00:01.7902567
X-MS-Exchange-Processed-By-BccFoldering: 15.20.8632.030
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; auth:0; dest:I;
 ENG:(910005)(944506478)(944626604)(920097)(425001)(930097)(140003); 
X-Microsoft-Antispam-Message-Info: EEro48s84+ryoTigYle30XgiD53zR+IbbFQdPkWAMrVRTk8WFcomA9T6Ym5pgieWDXLIN7OomOtoUN6LD/254giTod9B0koP+Vprc/BbJj080tRuClNLkpTayMh817rZOLSZv5Bc4VEjAFkKUO8Vh2KYy9T6GJgSvKjXmoI9II4pGffPH6wSpli1iWJk6OzaE7NuiTKNN+4FdvKzT1Nfw8peXrta7frl3Rz0isqCYU2WbdL3rv6uY/NEzVDHMnPXl+PElVDrGbvVuPOlLVk1kBfn2T0JJ8dvBwGrIYW1X0qZmPCk46Gz+8wXUAkOHLc0hZbswq35VIMBX7+UXo9AZ8f0cWXnA4DP+UGOssxZtSZbfGZSytuxFo5ll83pKB4pTN1dYGQUb9ikXoIAdr9v4QYq20BMk/9Xk9ryx1kcXmA2NN6Bjf6zylIC6QD4+MmUakqg6Y9vtUFFx2sZ0eswuh5H/P7zvHvYBKfGoggV4Jk7vOFU/UA/OpI6l3N74TxJacaCnpEXEoFNeZ1C0daTyOkwc8Svy+5+AUimDL+3RS86PhI68Rez975Q83/losfUa8sxyoueDiqZofk9+CPqta+cElTN09d5Kv0mTviyTYAEURWrRA8E8192WfiuDS81ElKToW+pWgW5zBj/nohoJnwBPAyk/cNqCin8LXOz6kjt6xOhXp6I/2Wh9Rbn7AUoUXsIBYIBR96WjneZSw4Wr9XdgNMfoYWYszvkER2XHHwP8+kqD/PNHg4KTi8AFXN5D8k+tmTt5vgdOanN+FsCs6d3mM11/jzsHyslzaCvgVuEOfBRw1RNxPpuCJS6cEMV1MNsl3e9hjQA1V0tzMHMpw==
MIME-Version: 1.0
X-TUID: HdKEXP2huFv0
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

With the PCH detection moved to display, we can do some further
cleanups.

Jani Nikula (3):
  drm/i915/display: pass struct intel_display to PCH macros
  drm/i915/display: drop lots of unnecessary #include i915_drv.h
  drm/i915/pch: abstract fake PCH detection better

 drivers/gpu/drm/i915/display/g4x_dp.c         | 26 ++++-----
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 21 +++----
 drivers/gpu/drm/i915/display/i9xx_wm.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_audio.c    | 12 ++--
 .../gpu/drm/i915/display/intel_backlight.c    | 42 +++++++-------
 drivers/gpu/drm/i915/display/intel_bios.c     | 17 +++---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 12 ++--
 drivers/gpu/drm/i915/display/intel_cmtg.c     |  1 -
 drivers/gpu/drm/i915/display/intel_crt.c      | 28 ++++------
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 15 ++---
 drivers/gpu/drm/i915/display/intel_display.c  | 21 ++-----
 .../drm/i915/display/intel_display_debugfs.c  |  9 ++-
 .../drm/i915/display/intel_display_device.c   | 13 +++--
 .../gpu/drm/i915/display/intel_display_irq.c  | 33 +++++------
 .../drm/i915/display/intel_display_power.c    | 31 ++++-------
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  7 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     | 11 +---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 11 ++--
 drivers/gpu/drm/i915/display/intel_dsb.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      | 18 +++---
 .../drm/i915/display/intel_fifo_underrun.c    |  4 +-
 .../gpu/drm/i915/display/intel_global_state.c |  5 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 14 ++---
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 23 ++++----
 .../gpu/drm/i915/display/intel_hotplug_irq.c  | 55 ++++++++-----------
 drivers/gpu/drm/i915/display/intel_lvds.c     | 23 +++-----
 drivers/gpu/drm/i915/display/intel_pch.c      | 47 +++++++++-------
 .../gpu/drm/i915/display/intel_pch_display.c  | 44 ++++++---------
 .../gpu/drm/i915/display/intel_pch_refclk.c   | 15 ++---
 drivers/gpu/drm/i915/display/intel_pps.c      | 26 +++------
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 26 +++------
 drivers/gpu/drm/i915/display/intel_sprite.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |  5 +-
 drivers/gpu/drm/i915/display/skl_scaler.c     |  4 +-
 38 files changed, 277 insertions(+), 366 deletions(-)

-- 
2.39.5

