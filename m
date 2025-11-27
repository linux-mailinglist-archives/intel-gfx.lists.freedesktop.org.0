Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCB1C8FCBA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2FC010E8AF;
	Thu, 27 Nov 2025 17:52:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZaY5ULdN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB32A10E8A3;
 Thu, 27 Nov 2025 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265926; x=1795801926;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=dOQ5sM3dyNGXLHkm2YnphI0GS5uIW9eBf45vuZgjVWI=;
 b=ZaY5ULdNdFFNboSf1A7elIbmhtqBrCV5jBeAvhTSbfhK/NahlTGDX8xh
 wSJ7o34546xe7lVXbymcsrY+Livjdf91jXXZ5Zuser1Fc3lRGeALY8Rb2
 2bHnQqpJ+UOTAY1P8rS3nGrXi4KWciZ2LQPes7xOLSdKMJMtqcnKGc0Ep
 5+KzfKP0nK4Xxq8AYhGmeKg6qRGJipqgtAI5BMQbbgQJrxWvdZD11se4z
 rbYQ6hg4YTtjfiYH1grLP7iSiVCBDmoE1JyidnvCXVF4UobNA//+l08L2
 zRK3iFYo0P49/WblEtt+yHXCRB8IxD0Khdzbt9Wcj4WK2XiyQVyYZpaC6 w==;
X-CSE-ConnectionGUID: vU/nF904T9aEyTUkJn1mPA==
X-CSE-MsgGUID: irYmqcSqSe62AgFM5lQ26w==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003040"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003040"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
X-CSE-ConnectionGUID: YQGftBJ3S/uENOskWaG+CQ==
X-CSE-MsgGUID: +ISyz0l1SFugMzavU2oJ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453722"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:05 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:05 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TtrOiL1wgNRNLEsWcOCuxLhQuf4Y7qxRnuJeDEDqDF6Y9R7bcXUDvxdH0IcZkcx9JXGxNOh8o2U7JMIDyB3oqgq1OeLnt7n/qaOp7tXqNXLP9WqmAdACiMRL5CCvV0g4fwB1S4H6OEoDv69E+yM4ytrpBVWAzwaRTtdmC7GiEf2SXRWftgJxasmJo9iFK4r+puAif4oC3smfzoboH1Kmxet1DYv9b0glhNFBu55CENwxq4y7BLA4Mma/ELpWuI6G3AdjyHqq/x+wU5v/GwwwKqr/hWwhf1byPP8lW56InmWfggm5+84JhOwVeD1YK6ekq85VTAdTHbQAbLu4XWtdjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CkNaAor6fH7OngbTrv/kLfGsFQQkwJe6+MljhIiWsx8=;
 b=f32plrw22e+AHfpmSZpOEzbouiFzPIR1X90E//E6Gfy/PUpLTsb7CKJ2dCsipAl4tj1jO1rkjcYpL3wmmuTIPuwSvyy165r8EXVk1fZSuDf9xnWY3zQveyP9KX3o7AKLb61NjkiQ69yQKJx7pC1HNQRSBXXyqK380XsDgsqqi9uSqccKM6VuSoiSvygT+KFXm8ZdTuqqrjamVah1x6evn/uY0vejL/ES204JCpMAp7VddgXJjG24fKKm86woDQC8IzY5CcKBdq4Mq74tG+RxhEDXED2kj1xcsHNONiwoUi6PUu22ZgL58b1OrKeopZ5eWHK/p0uC0sw6eBDfld0yVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:52:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 39/50] drm/i915/dsi: Track the detailed DSC slice configuration
Date: Thu, 27 Nov 2025 19:50:12 +0200
Message-ID: <20251127175023.1522538-40-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: b8a34187-aa3e-49e2-ec42-08de2ddd9dd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mKcAFGsCqjd7RGHhCSD+avb+UD5ihIR4x9aoGyPhfSc638wbYbhF/0FIDJ46?=
 =?us-ascii?Q?84tqTPweDuHy9MkjI4AoW+H7UmtAaluoNnppUmFxT7dNAT9QuxXJaH85KVMO?=
 =?us-ascii?Q?Aw5ZKXj39XaYgGtuFAtS0se1tAqCLt5YdFXZFlOj+XC3jeQFU4VUiepj5z7W?=
 =?us-ascii?Q?Eh4N2LJPORy5l2QZjrRJbhf8Wlp43Ik1BsOKbQi2I1wmN90vPNcX/sBzSyf/?=
 =?us-ascii?Q?NPoKDrvORo/4Lh5wE1glbpHKhQeFVprbnRrvCw4yZ2pTGn6LWjRLInHlHySB?=
 =?us-ascii?Q?DCTqSDwtm0gQKnxmQbtfBbjYjPKK1FAGP/7yD+GIKr/FjZ32RlzJWzjqp52w?=
 =?us-ascii?Q?L+neOijDTtG4pHT37ui29IDv22rSCvXMxLE4Wu6Op6MLDjgR/IIdOlBUbKSD?=
 =?us-ascii?Q?PUf7kanwkNxADWyNCexMaIDUQ46VKhbOhOnORXIL3bBQDD+OSzjSbnCUzeKR?=
 =?us-ascii?Q?mNCtyLC/GxsGpR5b3ur+jBqI7sjd8o3FlBe/kUqIiknHc4gzgnmZYnJ2T9qy?=
 =?us-ascii?Q?+KsfvfPVOOR3SGZKxnBzt/5ch47DYkVjCr+q+94kpBGr5nM+5PqJiFK1Cabk?=
 =?us-ascii?Q?8r+GjiHy0/u/qPIPZu9VVOBMZZguJsAL0ULLV73eu39RCsZFe9Wv19ea7OiD?=
 =?us-ascii?Q?/0mQHO1bp4xXP41Rg+sxSFFybO64F9XmyRW4fp0Y9b8osj62FJ5T11WQCVNL?=
 =?us-ascii?Q?Sy+VNcVO0KsZJgPLhFk/6yGiPTC6g6cccBMn1kr6YXGLXZbVDNNO2Et6EOxl?=
 =?us-ascii?Q?lInZkzv2QmvXfyX58HRJSDN2UKWOhUDxyqJucb9aF2ifs4YxwC62wJ2IZWav?=
 =?us-ascii?Q?L0UdlGh+vPObGiGfybUuo8DZGy6pPwWAy1FNRaQNy1NxToSPmZ9ZUDhGAnfw?=
 =?us-ascii?Q?xNdxdAI/+eOO3WX0ile8uMbYhb8CBpCYScQ2GA7GyisO8mggWhlj+gZ3XxRt?=
 =?us-ascii?Q?AFwGsZIrWQMFSh4CeijQgGDwk9AqBqQuIv9kFAkHznHUF6QvnckbU31f0D1q?=
 =?us-ascii?Q?Gh4S2xFWQMSCMcTGWHlqqSlDqkji7DT3BWeoIbox+qpAmMxAZ8PDg0gO1jj9?=
 =?us-ascii?Q?iRKWR5lC6D80leGhgQ5xQJajGrOeUAMQyaBnFH1hup9UMFYYHdIwIiRino57?=
 =?us-ascii?Q?R74p40E3rwyfhXnfeuBN4vYqPfoHCMzSUyNUbRH0DH88fzZVIfu20/pCzDkH?=
 =?us-ascii?Q?RsGc5AoAO2gT4i+wnHnrXPDMUYviX2gJJMHjWVAxkjQBZWY2hsTZBZ6p2Lg7?=
 =?us-ascii?Q?vVCnf5BJmTQyrOQMWVM5XN6pSF9CntGLlbSZvesOQUbSoyJDlfCIEzE51LqF?=
 =?us-ascii?Q?AGMZB23zP+bkCQgiBDt6YLeG5sOBF2bebC/3p5ErAygWlobzM+FkMHCVAHy+?=
 =?us-ascii?Q?Jm4RApyHP++Zj29XIjTBEK302kytB3wp7iTPd5af3D862sJ5MpjP+r3PS891?=
 =?us-ascii?Q?eiDywrLWeOWvmkTzuzIoyR8bpaYPmXNc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V7RO9NopR2UzmmNLQofsGGIDm7Bf7+yiY7ZMCR5/5EotXLDFTcoz9H2TmGX0?=
 =?us-ascii?Q?C9Nw0lksZZZhgYMo3OEYyAeVqfSF4XAv+Fkt8WInTyF3HEjZNhek2esTh8Yn?=
 =?us-ascii?Q?Nd8Qy2K6y6ABNbACk38WSLbyvmyvc5pc4ON39TFCLT05plHPpG+9dUsXjs5X?=
 =?us-ascii?Q?JXHp1U00ino6vfC2SO0vWCgsfvE7AwKCmiNzcvUPrpru1+imRbtBFKJQM8p+?=
 =?us-ascii?Q?lQcRk4ovFYYRKL78or3zY3sFbmX6YvWFuLtAVZV8BiksNJyvzMR2aZQaBxjz?=
 =?us-ascii?Q?fTk6drK5GYrHjvWe5uDjWM7y2fBJLHW3vp/S6QcHyaIBaxOtXPy2E20wQclx?=
 =?us-ascii?Q?bvimw14ruXylOAYsfleE3OjimoE/52iuF8uG6/Ux6M673wKRigbO5fsbey0k?=
 =?us-ascii?Q?7bzo0G4ARyWZIhiSaRFVhhhm3si5MzjaB2RbUVmltDMS2EtmKdHMU5L5O2Fg?=
 =?us-ascii?Q?rqgSTpNz+rIZU0MLrcB+MC5cR3GBtCC7d2Bj7Ii5bUAq/FuDpD1XgiT3wjni?=
 =?us-ascii?Q?5RMXC7piaSBKtzbGMpTUg5GntoSbCp5+kvz9gxlC0kq83vVS3O4aULqr9Tyg?=
 =?us-ascii?Q?0yRhPvKGD76SzCmv3zS6e1egSmR43PRUBx56+85LgHQxU7oF/jrKyw0t6zQf?=
 =?us-ascii?Q?wEDGmRJ4e9wqsr2d7C+sHQ+1O3ZhCIcvtgZ9heQT4FxEf13boea4qM4kUtgd?=
 =?us-ascii?Q?oRqwYf7CXj6JUaEhXohqyul9DrmMDsiZC3YW9MpV4jYIQTJrpqup2/a6mTrZ?=
 =?us-ascii?Q?arJit58zuN4CeUbD64SxHTfqSxxGgSPo8IWrKP9URWb0+r7K2mGSmrl40IXO?=
 =?us-ascii?Q?qrSu2EiBn/2r72MB1/9C5DEOWUa6rv5SOBNFHKBKkp4jautz2mn3pB/fZRAs?=
 =?us-ascii?Q?pT/J4s1knJS955a2jZjG7F8ciyQybAju1FrfhLNw7yck6iuBJB3AR9WCPiuI?=
 =?us-ascii?Q?urjgri+/SCqcY12kpdRl39AkCAlVI8Tf5ttKCgyhecyIo9kI1VtzXckVJtib?=
 =?us-ascii?Q?FCo0KZM6M4hUR9CLvqoAO69MEjaPf1DSQVB1TC9ksoXfshDuk1+LEmPCxZo/?=
 =?us-ascii?Q?FeAspHpx3cLTGjrhDsR6jdb2lV0oJLjw3SjnGxi+SDPknvr40fgM830Y31rm?=
 =?us-ascii?Q?LaRCgMxNEYtSi9KKf2NLGAWIu+FW6J46iGv2nPpcNu16Q99iE8l//jPHwZ5z?=
 =?us-ascii?Q?pA93kviqqBpoNpkWk+FacOj7ob8MR/IiLl1klz3uoywHIAjfuVo6VbeCTouF?=
 =?us-ascii?Q?yFaSv+lSoq/VX/qWmDsWtP0EueKzZIrwqEY1B8iex0XXHYbbQUt0P2uQvfRd?=
 =?us-ascii?Q?8R894w1HPKC0PduULWftG5TO2V38lqQe/kIfse+MNudjjbhyIA1QWRR5UlvK?=
 =?us-ascii?Q?79b8zzSPz+fIqkPgAwPFT3o2a/4ZBjz/jAdUiqzG4jqcUcFoWMV9ZNUp6C9D?=
 =?us-ascii?Q?7daEH6Duhq3PxuEWKTgy7cPA2AOjjd1QxxEfJ6WMW8RHwbKpSrYyq+ETcGcj?=
 =?us-ascii?Q?dAwKm9AQQNilwEgigfzVMIXDpDFi7rw4JCqONPdFx25r9XXqjfHFaP3DBcZy?=
 =?us-ascii?Q?TzXpzZC7KpYVEvPAvJznll4BjKCQ0wyDHvhpoFhfoqvyRqtZZdeKBGfadSBs?=
 =?us-ascii?Q?LesMtaWSRpdlPbPI3eq3jkIE/LACxYHzo867Xuz7YcxT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8a34187-aa3e-49e2-ec42-08de2ddd9dd3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:39.3631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NlXO+AVgy7H9g/zFTxCjVgt8X3BfJ3M0s9fUuEdlSA6m2M7ay+njmBasHO+isxerVN7jy5rDsZaUGnJzXbP/VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Add tracking for the DSI DSC pipes-per-line and slices-per-stream value
in the slice config state and compute the current slices-per-line value
using this slice config state. The slices-per-line value used atm will
be removed by a follow-up change after converting all the places using
it to use the detailed slice config instead.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e69fac4f5bdfe..479c5f0158800 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -41,6 +41,7 @@
 #include "intel_display_utils.h"
 #include "intel_gmbus.h"
 #include "intel_rom.h"
+#include "intel_vdsc.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
@@ -3519,12 +3520,14 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	 *
 	 * FIXME: split only when necessary
 	 */
+	crtc_state->dsc.slice_config.pipes_per_line = 1;
+
 	if (dsc->slices_per_line & BIT(2)) {
 		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_count = 4;
+		crtc_state->dsc.slice_config.slices_per_stream = 2;
 	} else if (dsc->slices_per_line & BIT(1)) {
 		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_count = 2;
+		crtc_state->dsc.slice_config.slices_per_stream = 1;
 	} else {
 		/* FIXME */
 		if (!(dsc->slices_per_line & BIT(0)))
@@ -3532,9 +3535,11 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 				    "VBT: Unsupported DSC slice count for DSI\n");
 
 		crtc_state->dsc.slice_config.streams_per_pipe = 1;
-		crtc_state->dsc.slice_count = 1;
+		crtc_state->dsc.slice_config.slices_per_stream = 1;
 	}
 
+	crtc_state->dsc.slice_count = intel_dsc_line_slice_count(&crtc_state->dsc.slice_config);
+
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
 	    crtc_state->dsc.slice_count != 0)
 		drm_dbg_kms(display->drm,
-- 
2.49.1

