Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC2CA817C0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F9510E766;
	Tue,  8 Apr 2025 21:43:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4v+JBun";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C3410E2FC;
 Tue,  8 Apr 2025 21:43:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148625; x=1775684625; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=LDZwuFWzVVNz4X4qNU09qAAwhnXbB84tG5rswONuVaw=;
 b=S4v+JBun8INa2LRr4I1ABnuB1aR+t5OtTr5qhuFUA784uwiDeA7m2TWK
 ObqwoP3kQfiI5Lujw1zgs8hKQwneKiINGmvgU8v+FMgoekdVsZavLuBCT
 cjsKA9+iLFc5omyM8sSB9g50kiDuT/GRtPRTylGtI7ERFLCb5mTT1e0sc
 i6raKZscOxtq3dpkwYqm7BvSJWgcDNYoHiqu3bQlryfCFt4INe140cIuV
 EzTursSLrYXnTyBXOzrr3d5QYjtC44LBUP7fC34SvzI2/eC+CSVY4ZBwI
 5KjxEazCGmls9OHkppZ7RMj2Ja2quNFerMT3jSjWz4bcrLx/WxpulvCdT w==;
X-CSE-ConnectionGUID: W91XyU3eSOay69YpPkXGlg==
X-CSE-MsgGUID: pALQTBrsSHOHZ09yivKpcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45319449"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="45319449"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:43:44 -0700
X-CSE-ConnectionGUID: wdzco00oRIiZIJj2KtFSdg==
X-CSE-MsgGUID: wQ8YhlSMRZ20V/RZmUqq7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128390191"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 14:43:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 14:43:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:43:43 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:43:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FvsQHVgYQljeI9GUvQXRh2csca6czowYRZNkJkTBGRhaFZflbrXg0qoQbG4aGegwZKzoUV/CY5v8f5JSYNGlYOavGEKiN7cvaIX/WYi4Kp3oDo6pJMJyquoF50Rj2B6qKHCQpbMqq4kXtFtkRx0BpFOYNIOCcIpEfuqWntS5qCbS6XhqzwkURJY1629UXJ0yO0l3/He4hExcCOQIEl37TqTpsBXokZgkiGj9wnEPYdZx1LxjhKMmr8slhLlE9pKw0LWhdaHFjVeu4jHq2f/QFlPTPV9UWAnxLwmgMwM91t9LnbIE0SSep9ttLfLGTtIqNDnDFSIrutnlIotv5a+CXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m1/wcQKlO2055Bgm0HZeowPuk+KPOHRFSjGJPKGAM8Q=;
 b=mHUq76fKeRstiVBapJqmDfpLpt7h4Rjvzr9kMylXocOZEci5gdeifHE62hCbhR8EZNtKrfl5WAasM0r7ioKnVeUWc37gz4SEXxQk90xUEqfGHToV6gu5PNf4NPQd6HfRmlUWgL4WYPIlNqsG0U9emQwPiI9K64JaZhZ88ZB7aR9KqEAzyF6m7JnPtf/1tFO+T90ugUVKHdFvmYxuyTs+hW/hQQaTlI7egzHpcIwsql+T9Wm9JE8nZZ49f3mFd++jYCi1UGhmYVbA+nyX5CkG/TYqiGyrSqJQnOv1B8ZlnDjxKuPOlYa0/ViC8FmZZxnYAo9c+YXNGrjNZjfF2wKeyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Tue, 8 Apr
 2025 21:43:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 00/10] drm/i915/dp_mst: Add support for fractional link bpps
Date: Wed, 9 Apr 2025 00:43:30 +0300
Message-ID: <20250408214342.1953197-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: 440ea393-b87c-44b1-99cb-08dd76e66cbd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PjjeYEakqbqcC+qTMzupXgTsX0xkwUIN4OPl7t59nKLCf1Tu85QxKTysKBOw?=
 =?us-ascii?Q?qOVthFPHA32ASaMUtMhjN6V30daRwq8EAW/D+H0pmRwcxzmvRbkf1WHotLGM?=
 =?us-ascii?Q?ZPimYNLw5DOWfr84Vn16jWdeT4zIFdKYLijx2BlkVVycxp+9I6gGXEZxA5Gf?=
 =?us-ascii?Q?sQTgPu8y8kvei9jHtGhaawyMUF6EvFXGRoRK5ubUov5qPMEjlAwJsPDa0LdB?=
 =?us-ascii?Q?bI1R5Dess2dDIjqdYiMoBNIUsmkuGb79Nuy5TTOu/jjOHLd9EzdH2UCJ48bW?=
 =?us-ascii?Q?gsR6WjRVOMOuY/76lnVkW/mX3wfK4px4YWfbEmIVJZY8IFTcnlE25h1CzLY8?=
 =?us-ascii?Q?lKorJZM2s4fEehMsels2klFqMsRYNfUCGuIa//OZxZsun0OMS0Vkga6t85wH?=
 =?us-ascii?Q?LWPOs32VZcEmWht22jEJMOfyw8sXedlFKprgA8GEiwprEWHeIGQ7tt0RWSxL?=
 =?us-ascii?Q?wxT2gZrwe6cnOXJmfGDWxeKPddDzit0s21LClfVY5FsAVeC0aWDEA5GQUN8N?=
 =?us-ascii?Q?Zfh/p+hAb7l53C+ozgVnk2caRZNEhWpL9QUjOeLY0zq41y2nXiCHPIMNCvJb?=
 =?us-ascii?Q?TwjE2otW6HosCEax0c1iEhDgYWm41QjfZ2LkEXIFFvR1m8Rsjcck10CGAETd?=
 =?us-ascii?Q?4DrQlyUhxXcJ0DzXF0GkLsM9+oKmFN5KH1ItBY28SOxGYKGGfmW6kCQ3fPJ0?=
 =?us-ascii?Q?na+hL7qqZmwl9MpGcCWNVf9GDK5ENYizGdROO7mvF0Vf+lY2VS0YJX1cgrqv?=
 =?us-ascii?Q?ScqAowFTE11Dsq7grHYoC1zdvsYMnHKd2YvNUVWvx6dovr+/SzsUS2bmSZx4?=
 =?us-ascii?Q?1XwNZ/+LiLMfqPQ8GfITICc2E/MAUeDlfDxLu3PhS9F0fzNjD2xlV+7l21co?=
 =?us-ascii?Q?wHWVtsxKX1O7varOCdyyXNUz+yia7znCrGrRXKqi9ZHWaRjCUl2tIEd4Myr5?=
 =?us-ascii?Q?npdvB/Dk3bGh6p2RpyvNamqzlUPOq3Fd1jYzKrMLhmYZ+Du8wmQekF24Di2y?=
 =?us-ascii?Q?o0cG+LwG3tDO0SUFwoD5YrAP4St780v2er/KVLEGWbeg6SpjBF7ynWWVZV9Y?=
 =?us-ascii?Q?+aiRuTLlLIBrLzSETqiHrcvyK+yaZcXSx+6lUVwo93IYE5eIsO4hAhHJAdoB?=
 =?us-ascii?Q?P+4pvL0jJCU0y4Z+BSxNkSgeuRcEevU49iCl4d4aWpe8f4SB3Z1owEdxJ0ew?=
 =?us-ascii?Q?I1RM6JH/X5T+d2/qaVS/nVyy2J2uIQRoDPDUPFxeP1f/po2tydmVFssO0uN2?=
 =?us-ascii?Q?8hHbNeK3iom7wjMCFmNHAtnnTY8Ly42v4jeDYWxG6zRrI3mIII9e3+V2yptW?=
 =?us-ascii?Q?8068rXz0q4jVyrvhSlznbaccaLniVUQHA9XreiL5l8vUMcnQ6zvRoanXasIb?=
 =?us-ascii?Q?xI5MEBzbFPnzQjY6pElvqL5hsudC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FWEVtwurTn6+eFP/EiZLBjFCdntwFm2MCz3gl91sD5chVNBLeTE4MhuOTLsh?=
 =?us-ascii?Q?Uo7kWMBgaJRogDnb2B6xqHppgcysQrsjB/s6kLMft5+4AHil780SVym1Ee2C?=
 =?us-ascii?Q?holoHcFCz/zAKth9KIhyAjbx54PJj/rPQJdf2C8hPelhiTizst6j3cDCGneh?=
 =?us-ascii?Q?FuIXsyVAi07d7Bnbbohwep0XHJNChISTisQxGCMCi8KKJrT/tpAi7mHG8A6Q?=
 =?us-ascii?Q?HtFwlCO4gMshkwpuIOfq0eyzNzQ8/TiTB0FFGa0B+WZqi1wecu7UxsLzjn8S?=
 =?us-ascii?Q?o43d8EzkZ1XPXMjjIODqBYRJX9ET2il/s80FfKtQ0dNhrhpbp4oG5kidtD2X?=
 =?us-ascii?Q?XR1CWG/J/hf5w9pGxkaO7UcAyUwPE8YHNZ0IKIISgFl4UEB2mws11g/r5VPC?=
 =?us-ascii?Q?JcPn9GUYeaxdJJkHUvhRoa6h4LEZbhDpYYYhLyHro5eo+1hkOgsQgfE3yToo?=
 =?us-ascii?Q?a8yjT91i2Q86GqZWEU4RjcMgcE1+SrU40Y28JF+uDO1D91SkHlry/3IbL1he?=
 =?us-ascii?Q?kkSV1TDEdzKxesv4ap1ITCuydfRgqHpGDMupGY9Jjb7chg0IgWsnuo+KcdTJ?=
 =?us-ascii?Q?k+HeIsQ0TZ/OKHjtANtqRjD6U/bmtzJmky0WzUKbS7H7aSyYbd8V8zDeO79U?=
 =?us-ascii?Q?/Ru91sPucqrLmbBBOrGPoRWw0zc35Y7SBvru4bXjKj/1y0dFUuwt/0P1GQJu?=
 =?us-ascii?Q?4+FOdR2Yj5D80ixpkhnB9P+oG86BU0fDKaQTcwUUSiMioRQbM+Y6asqgoOSp?=
 =?us-ascii?Q?mfA/yhl8xOcLdRBa1NZkdGDE5zhIUt3+uJtrhU08aXpIyGoSnt8c1ECyPDrT?=
 =?us-ascii?Q?j+ik8jtO1XkYQU2lFVdjdFa8DTuXzIqorhaLWPe5XxMT866/ViBMOdTbFnvB?=
 =?us-ascii?Q?Yz2DJu1PtFapG/wrDG+M0yp10mP0en9fgvQiXtj3uvYQ1clzTiUm13Y2MfqQ?=
 =?us-ascii?Q?yKxGKGBlb8pMOozUXlJD52q6yfsa2YzuvPygNm02qccI2S+r0ZYydg5TM52I?=
 =?us-ascii?Q?x+w1mS4lbZRz/zO08yXLHWkd+493UUccDH86Gt8eAwdTpRLH+43DSv3lKw+w?=
 =?us-ascii?Q?0WKDqcLjebLJdnfuOvqxLNJjYaI+Juti2lEdUtV4NDzV39Rvr1dBotPQ7mn+?=
 =?us-ascii?Q?LbaI/3T5Tv1DInZjYrSXubA+6fIhE4s4Zv0DcsYDC5TQBkv3d5aRxOcWbFWK?=
 =?us-ascii?Q?aShvsvhyj0UjQ38MqFaDmdzd0sbMQx+41k8sUj8lUnqjqe0WGTKA0Bns5331?=
 =?us-ascii?Q?ngdIBSd+WtoDYzz/x7IVBSj6nfq6GkxalBpBAYWSLTm9AEGXkAWtkauQRJwh?=
 =?us-ascii?Q?uzuinTeYByFnx5kEC45bLs/pRpiW3I3ESBu81lWmciMkqFzfNI+f7Xcov6hf?=
 =?us-ascii?Q?L4stUQq2gVE9Zl+8n214duxpabx7Skz9AlS/ZxxOn3upK7gSM9YTbtqVcERC?=
 =?us-ascii?Q?um3+4WHY7QjDRD6/4EOS7xs9IGhPdSX0vG0l6yfwMgx2jfn10Cyz3YzX2lCL?=
 =?us-ascii?Q?XQoe6/I6thVwN58t0KK1XZObmx8M+TQrPRuNqqg52M/bP2oQaHnFn8gKDXBU?=
 =?us-ascii?Q?Hfhrz3+MEKv0IZ6ZOtu3D2suNKmaGdcV6xhohpIv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 440ea393-b87c-44b1-99cb-08dd76e66cbd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:39.7498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LaJBdfe9wiPfK8qPsHHlgD7xn1XGXP2VgfEtN+VFCKK4qgpff0d3rU1EEXv7nJ4FpRSAYMu9Lim+Y0fHWXbZ6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
X-OriginatorOrg: intel.com
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

This patchset adds support for fractional link bpps on MST links and
adds a way to verify this functionality via a connector debugfs entry
forcing the link bpp to a given value.

Imre Deak (10):
  drm/i915/dp: Use the correct connector while computing the link BPP
    limit on MST
  drm/i915/dp: Limit max link bpp properly to a fractional value on SST
  drm/i915/dp_mst: Add support for fractional link bpps on MST
  drm/i915/dp_mst: Enable fractional link bpps on MST
  drm/i915/display: Factor out intel_display_{min,max}_pipe_bpp()
  drm/i915/dp: Export intel_dp_dsc_min_src_compressed_bpp()
  drm/i915/dp: Use an intel_connector pointer everywhere
  drm/i915/hdmi: Use an intel_connector pointer everywhere
  drm/i915: Add support for forcing the link bpp on a connector
  drm/i915: Add force link bpp debugfs entry to connectors

 drivers/gpu/drm/i915/display/intel_crt.c      |  20 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  28 ++-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 180 ++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  33 ++-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 195 +++++++++--------
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 204 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
 drivers/gpu/drm/i915/display/intel_lvds.c     |  20 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  20 +-
 13 files changed, 508 insertions(+), 208 deletions(-)

-- 
2.44.2

