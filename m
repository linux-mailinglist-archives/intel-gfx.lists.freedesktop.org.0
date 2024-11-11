Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 258999C4609
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D4D10E530;
	Mon, 11 Nov 2024 19:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ge1iNGO9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6953F10E530;
 Mon, 11 Nov 2024 19:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354033; x=1762890033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=g+qzPjrgpHtsUUvYv9BtMh5EpeZ4YHhCEVMSMVuXkxc=;
 b=ge1iNGO90iMAkneezh4iMx6/araDqrklnFxVsAXVD2oEVhuC41uURu+8
 jnkg86CLPO9I4TBOgk87CDsErAjh/TmsMBq1OBxaVSrhsKL3YVoj/enQ9
 YhXDaov+NnsDqXFE8ukmlKWgx9NUFbOPVCMQH1PtkqBM+gJTHsu1ArtWr
 pg4HklaaCyCh5dXJkVmHL0Owje22bcRHpMUGW9k99dPN2mkJ3tIHU0ZlN
 xTULA2hQsjxeWPiMgBZr1PO7D0GUbZuKE89IA368ZWxQJNTeZbij5NsDJ
 sQsvePfybUnJZu65a59bHJhB/vUI5WnVLnGWe7WjVxa4+Wgnu5qu/jqz5 Q==;
X-CSE-ConnectionGUID: WNWuinCiQ1CIa9KX1PLACg==
X-CSE-MsgGUID: EoV5Db4TTeC1bho5g3JMnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34963018"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="34963018"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:32 -0800
X-CSE-ConnectionGUID: RmOQ7zyvTXe6u/39suf1dA==
X-CSE-MsgGUID: UgFcLsUNTj+m+Dp2GVvHqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="91855665"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:32 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fj31INA9/qKKR/jBQAIiiF45n1rcvXi6hijj/dUBM3Q3wlbNJVJ8HRxrlI7Zulg2E0LDVWVUqL5Nr9GlT3Bn56eMzrrqLeyEMytVI8h47Z5rULHrI7ZxwVRsnnVxYvw//NRKniUxasRnyPKMg1D3yVENY0mko4/ZpYMROTbcBxYRDmA7l5Ej8mlm3TSEje+ZUfPLOxrZ4ymv+PU/sOhjXX0h7yrMJR6Q6Hj4bM55s6JheHw0aNmFvsa843dnHVS03VxWbhu9I3en7hpc8VzF8OW6qVo2WArCOoBy+h6bKsIdE6+KG8wYzPecDtjGbi9JgdMBylkJIUCfnJQpOA2WFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4soEb/1lFNjfdSoMozJK53gHhlHn5TFzjcK8cGLgAwo=;
 b=w1zfla3mAeIl9AV3xwJcc0YG7WSd28mCIW+rAm3aE6w21nscB4jwHCab8/Dv/6WikeKfoWbO8jffJnWfMocJ/nFzXDODzhaAjCl/DuM6mwExDqKMBBrN/ue4PThMS/5PVSFt4tEIMfIZHyQpiOu2QV75b44tyBWaD3drsDffyHyamDZH729doF4SYPM9yr700Ps7ZMQ/L0CZZgY8CA9RLAukU25g/LPYetTfV1fL7G1Ulu4rP2C2uSIYqZKp4jh2Th4YUewoLoEpUb0dgi7EolrIZSazO5g3W3BrGOv5Bn/kFZ3AI44bcb5k++itLaoQ3W7jRKJ2Tcfa88dAgnGLaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by LV3PR11MB8506.namprd11.prod.outlook.com (2603:10b6:408:1bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Mon, 11 Nov
 2024 19:40:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:21 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 8/9] drm/{i915,
 xe}: Move remaining intel_power_domains to intel_display
Date: Mon, 11 Nov 2024 14:39:41 -0500
Message-ID: <20241111193947.128871-8-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0285.namprd03.prod.outlook.com
 (2603:10b6:303:b5::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|LV3PR11MB8506:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b540747-4416-48d3-2bfa-08dd0288ae0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dibrMTDhcR5L5S9UR1V8MNO168k4pnsPbckdHa2xF88SU9VLxyPa1dYSFgzA?=
 =?us-ascii?Q?jnieHx08xjtzEE5kfgMyJ9B/TPEWbmY3NZr0fT6JGzdLyWZ/6DyWRLRalWWd?=
 =?us-ascii?Q?lDrJR6oWb/rPkTY0lKXKlD2xEOZOSf2baDHrSi65O3XCAr3RbR4r8fkNqlsp?=
 =?us-ascii?Q?TnLTMOjdvsoalap3ylSirTO6PvNPZ2Yv4WJOb1I+A+1NaG0sHJiOEfNM7npl?=
 =?us-ascii?Q?/s1yZRGshhT3ifsXUUZJFeoUsDok+AmXahpyOe6MgSHLC7jFvlH2EVWDkqrC?=
 =?us-ascii?Q?CBOeo0Vy8ZHBHICpxCryDPnsLCAQUoocEDzSX5KEy5IvLX9UcHw933zAm871?=
 =?us-ascii?Q?RnMYcFcxw+0OFUpnjSuasmqFZSnmJtKaFtz/HWJDcAyOi3PL87ypOqt5DpFL?=
 =?us-ascii?Q?o4rUbUu53pbHe+tdxKlcZyHwaVOQI/KzutiHMLlR8TOhey97tLreatGlaxr9?=
 =?us-ascii?Q?6ZfP1PP7pFOaV7D2aXBHiVHaW3lvxIvodzIHcsDDzq7zEmag5MKbkUzS1rzf?=
 =?us-ascii?Q?HOkoOv7VjuhUE6IgpVyip9s+dbmhVmZ7Q+x/p6DwA+Kogq1c0xtw5iwQ8000?=
 =?us-ascii?Q?5z2X+/m2UJFPEM5NID7xM6fd0NOzmUZzMjlG08ULBNev67MRhkIcO8mycQcM?=
 =?us-ascii?Q?diuf/5PWNUyRL0FCESfMpUH5mlixTBjsS9mrZNR/MSolBrdV6RwvhHRbCBZw?=
 =?us-ascii?Q?OuR9CkdnFTkgdHfjnq6u3IUCcR3Z5clJAjUyxEYVuHhT4kUsSgiJMBV4KcXf?=
 =?us-ascii?Q?dyt8vx1TBAdc0n8cYdEBHnU1OD6pvLEFnOIiTZQzajs4U30ztP9ugKf4AIIm?=
 =?us-ascii?Q?NH8v0PNLv/q4yJUwmyqcupZiEVrG9P42Sb8BDaQFRH8JIEZMc8OsAuXMO2LN?=
 =?us-ascii?Q?btL+52ow2OGkbEquJ9o2HjFRBz5Rupt6P7R1lDhBANRmsCfidx7URuyEwldS?=
 =?us-ascii?Q?TAeKnaveAzimqLky9eXnimds/mmFFC1lp4kWKcv3d63dipfQ68eaQK5favS5?=
 =?us-ascii?Q?sHTaLEflR8Ziqs3TnOCqWErCX+LRwHpaoGSGILL9fhIAhfsjMpXQ2mgGhZMt?=
 =?us-ascii?Q?UFN6N/VQH/1XR0LIEshNHOgWDHmqe//AxEdNQtSBxsuqfqpTY/5vkED4IsjN?=
 =?us-ascii?Q?HqKraP165TLUVHGxY9v/uFzBzARN5N+J+PTZTXHFd6kRVu/AsC0p4y66K/D4?=
 =?us-ascii?Q?Ny9yd6V0+kk0POekfsc7kjDcUOQs/rLN1419qsX9rJ5Wr+o9cD0Q2yrrx7q1?=
 =?us-ascii?Q?i69uaX1ssRY/8qqziRu06OiYLdC07WelAjn7+wYu6QQvScq4sIbSuGewqddn?=
 =?us-ascii?Q?aZUgNPbiPIq+mrq8MSZdkg8r?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5y4NBquYhdF/yIc9WpFb/h2DjYn0+nCk6gGoVOxS5V8bevMLU+soeiLk7oli?=
 =?us-ascii?Q?cBSWA+YQd27GA+TxhRZAJmAQrwd9qtpfkYXOLPNvROgDg0/i3xDZjsY+ktrr?=
 =?us-ascii?Q?wQVYJAMNYwJzSzo1ldbPUod0h4P+pAdtlv0unhgYEFoSH9lOuwSPXWlgns3H?=
 =?us-ascii?Q?zGUjm5vRNnC7DOxUu952qOgrWbg4QytmedsNgew/NOMsei/oxBlMDMECrntD?=
 =?us-ascii?Q?HcU7k1ZprDIBbeZUZOrdRJFh9aCZwrxGmi+zR0Y0XqUDGzkAO8kRStUClFhd?=
 =?us-ascii?Q?bXtKcpq1CFaTrdi8wBGLL7X8VrEGaK182M0RhrBPQcR/hBdxw3iT2p+/HXGT?=
 =?us-ascii?Q?BT/ROEzb7WQzPkIpwguNSPtt73HZdXHSyt6N1Rg+lea+JjbkkrWHPtpMNTPA?=
 =?us-ascii?Q?me8BcEY5VBkHN6NvYnfAA5CMKXXzdLYsCfujEVbJVlwyTUMXM/gdP8NpmmFE?=
 =?us-ascii?Q?eiFID8TPGlBrgLbJjPMGZW9DornXf2ErIUcKI+R+bF5EXTsO2ll/YNO+rQ3u?=
 =?us-ascii?Q?JAaXAOYLMO9Z4Ol2Lt2RsVIe8qSPX4OIAWG3On4l4mqtLQy47t9+6oY14xiL?=
 =?us-ascii?Q?oawv5THEARrE+5SnzGmmBISe4m+COjNq4BWoFkJOQjwEf1rkNr6lSSgzWje+?=
 =?us-ascii?Q?acPVcnwJpqNQcAuLzz0BVFNQW1qUf/G4xKGIcwG44R+oYT8MzSP8/QhWHLbP?=
 =?us-ascii?Q?sWu2RI0Dg3zzfpLX24MpEtYfKbOzYGwe/oHDjfZ80PeHD7XSP3OsVeZN3I/A?=
 =?us-ascii?Q?2HmwsUAObFmWL9iIHvJu29fq5yUFvIlt6L5K0vpFcHUC30xMJV46KPDD0/J4?=
 =?us-ascii?Q?w5CogeDy/ST5xD6XDNCaCrx8BLCoXlitHhg6Ne8NVQ3VSb2PUTaBd65IxJun?=
 =?us-ascii?Q?GdCpTk86IeOUNmEvIPEhViEi0KRqPuig50W5MEIj0zRCDCCDMGOtuyoQtnhy?=
 =?us-ascii?Q?PJg3dJtUDBepxhae/yBwBswmT7DHaL5oElQJOCUtNn7ggJ0Jfm7wsZoos3kd?=
 =?us-ascii?Q?7xLriQ5POr/mDGf5C1QUfIMY871Bu8G5SJtg0vgBnnnlHfCJ+gTvm0PgTF6F?=
 =?us-ascii?Q?PECMuFrr4AAAbSZwe6Pg+VmvKNBYLa3wJQ05NRbJxe1lt1qQLtjgCP475cD6?=
 =?us-ascii?Q?Bdaa1tyAuHdCQ+z1qcF9ScYc6yTUG6MB3DlnIuPVdjenP+hCTAEda5/7Ct3U?=
 =?us-ascii?Q?QLAbHytf85Zb91oY93xAXa+t7TjuRk9Sb0GPD4kOANy55gDKbHoJA+u0xJvR?=
 =?us-ascii?Q?mMlcaHthrewNs+Ak/8e1MC5/wh/B17VXw8SUXc/84lpI2jevua/yTzOFNtyZ?=
 =?us-ascii?Q?z6dbF2bYtFopxQUfPC5AN3ksDq+8JIuhrK409jDfsrxGqvsYZaB+NLyQRS60?=
 =?us-ascii?Q?dSC7EHfu6eOWTQbMS0UYtxXT5P5NiOwh8U9q1LAQzdnZrQ49c6X4TR8eucNg?=
 =?us-ascii?Q?2Cea3CKuE67EuUjcoGJWKXhlfE7EB3dIskBeeb5FukH6/YBQtKP1hM7qclP1?=
 =?us-ascii?Q?vwx7ibZ5Izk36jWBrZJ6FA2QtfGcg5mThBeGljxQV3uoIWm9TSj2q6fxBL6t?=
 =?us-ascii?Q?Aj8VzZNekGYq19tXOr24yKug1A1Re+lunMz3Y5BlVoP1AoPyNvOGXfsEyDPx?=
 =?us-ascii?Q?wQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b540747-4416-48d3-2bfa-08dd0288ae0c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:21.9193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zmsq71Otrj6hUMB1Lcx8y0R56QOyClk8hchcwtwmMnZwu53bwtZc6fccFkHOvMDS25j72IesQSN9Te3g34rFxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8506
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

Consolidate the intel_power_domains calls under
intel_display_driver.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_display_driver.h | 1 +
 drivers/gpu/drm/i915/i915_driver.c                  | 4 +---
 drivers/gpu/drm/xe/display/xe_display.c             | 4 +---
 4 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 06a60be649ee..3b8b544d6da3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -561,6 +561,13 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 
 	intel_display_device_info_print(DISPLAY_INFO(i915),
 					DISPLAY_RUNTIME_INFO(i915), &p);
+
+	intel_power_domains_enable(i915);
+}
+
+void intel_display_driver_cleanup(struct drm_i915_private *i915)
+{
+	intel_power_domains_cleanup(i915);
 }
 
 /* part #1: call before irq uninstall */
@@ -638,6 +645,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_power_domains_disable(i915);
+
 	drm_client_dev_unregister(&i915->drm);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 42cc4af6d3fd..d1408aa124ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -20,6 +20,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
 int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
 int intel_display_driver_probe(struct drm_i915_private *i915);
 void intel_display_driver_register(struct drm_i915_private *i915);
+void intel_display_driver_cleanup(struct drm_i915_private *i915);
 void intel_display_driver_remove(struct drm_i915_private *i915);
 void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index dee9c6b9d6e9..946c1b81809b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -287,7 +287,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 {
 	intel_irq_fini(dev_priv);
-	intel_power_domains_cleanup(dev_priv);
+	intel_display_driver_cleanup(dev_priv);
 	i915_gem_cleanup_early(dev_priv);
 	intel_gt_driver_late_release_all(dev_priv);
 	intel_region_ttm_device_fini(dev_priv);
@@ -634,7 +634,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_register(dev_priv);
 
-	intel_power_domains_enable(dev_priv);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
 	intel_register_dsm_handler();
@@ -657,7 +656,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 	intel_unregister_dsm_handler();
 
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
-	intel_power_domains_disable(dev_priv);
 
 	intel_display_driver_unregister(dev_priv);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 737f04f45cd4..28e9c8648e76 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -107,7 +107,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_power_domains_cleanup(xe);
+	intel_display_driver_cleanup(xe);
 }
 
 int xe_display_init_nommio(struct xe_device *xe)
@@ -219,7 +219,6 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_power_domains_enable(xe);
 	intel_register_dsm_handler();
 }
 
@@ -229,7 +228,6 @@ void xe_display_unregister(struct xe_device *xe)
 		return;
 
 	intel_unregister_dsm_handler();
-	intel_power_domains_disable(xe);
 	intel_display_driver_unregister(xe);
 }
 
-- 
2.47.0

