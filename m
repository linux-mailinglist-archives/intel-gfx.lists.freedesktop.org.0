Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E71C49C4606
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05AF10E538;
	Mon, 11 Nov 2024 19:40:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EwhXo/bo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F0510E535;
 Mon, 11 Nov 2024 19:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354019; x=1762890019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=93jnuIu7CExO1UeCaHFUTkkiwFTMXcysjDJTyXAT+PE=;
 b=EwhXo/boskivTtANziQYMyrruNFLXhu8mjuRZoN1k4AadPAzi5ppdTmw
 WeMilHvYFKadm6ujiT0XVOjt4aXhnUrLS73O4DiwjhnIsaKa4FSNO5UWN
 UhDgwAfgpBkOLcDMYZhzWM+4dFTOgZOMmiha62++ywopy4VrdCN2FjycC
 M14MMGoqss3hFD+hMGw3ZNgLBO3CW9npqKjPatGT1lSPcfYM1M5I/YqY+
 xOm7twNJWFZKOrKXfreagDJslSDhTGlkVEGwdWg87yBW+QM2VShHEt44E
 5B/l3gcFuJ+O74mm82+puWqxhlIsS+7/Nq/ghRbb6ulBU6umsfeN3Ice4 w==;
X-CSE-ConnectionGUID: MoWJZEpISU+L9blZ+d9QOw==
X-CSE-MsgGUID: 7jT25XPzRm2uyyyuV+qGLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34963000"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="34963000"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:19 -0800
X-CSE-ConnectionGUID: 0cpBr6gTRCqqG8Ko4wTbHw==
X-CSE-MsgGUID: of2+8T1rQeCGzUbWBJSu8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="91855636"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=v23sHXvvOfQ7f6rFkMsWC2jAUTH60zF6eLSnNxLj1LHteNxkAked/V9Db8enDc2BNj7RBDRh3sSZfDYxCYCWIrXUhiOhKWNk+YxujEmbElm2a4VU6U/cFNW1DA3+AkFW67ptOoiTRkmfAzhv93yvopsBbnh17HJGSnAxADOr6+bEjLOcH4DW1G91nHYqRSaUhAOfA/Bt08uWBF9TE7965h5+JxPkHpLpmBRmRXC/C09xv2njV4o6N8gmjj/mDB9U+YqrKTsKfwwZzRWcameG6nbRYPHEksjKuhk1u82uyGiyoyAe6sMmoc0rBWLQ1YBxRWnT/tfHdb9t4odBfcgCnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FN9L3P/MRCVYUkNR5Wffnw4gZ3PvpgXLjJLOmaF6D+k=;
 b=KhN5i3uo8yHGPqqV7wujQ4JGiceqQ6Fy0/Jm0Ip0IrV0GN1S1zDPyM3IAlMqmBejWsgvNaICzZ44Fnuc9eu7iYxTLIQ9+mGKmto2Y3kmKfgdUpJSnv6s1BqLEqYjARvZV4gmiZdsIKQ1PXo5IhNuOWBHKryQEIVyrBcOyFe7nnSI2ZCJcxkBeT0mfjOU2VtYqHNKy+xAOYYRXcSUhv66rdXhCiTCHJWZwGzXDQoGxDzp0j4vBlmwbtAn94AntxTu7tAoQkz88KAKU1pmcNQneeF0GE2SeyoBSKn/umYI9bbek6gqE+JItF5ds2UvuFpOgpBiqJ5alL6i0yl2HZMQEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.25; Mon, 11 Nov
 2024 19:40:12 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:12 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 5/9] drm/xe/display: Delay hpd_init resume
Date: Mon, 11 Nov 2024 14:39:38 -0500
Message-ID: <20241111193947.128871-5-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR16CA0013.namprd16.prod.outlook.com (2603:10b6:907::26)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fdb92c8-149f-421b-58c9-08dd0288a837
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WM5zHN1O3tG41c6krtBZFubRZL6WxUSJ8D0tKbMnlSZHLRmozWuN582Jo8sg?=
 =?us-ascii?Q?LnUfbWFdZPAYH8xinsqePLmu3q8teDf9Ti0t5n4wkVcGj7Tg3jOKORg079IX?=
 =?us-ascii?Q?8Q3VLG7vuW4hBu6duo0GrpOpkXJAWuQ4+LRKdHLEom6s9jBOKKechjni3zGp?=
 =?us-ascii?Q?EVY8/NJqW4caLHvT2oFXPQCCqLRvD2cnFnwfQ0zlwmBqVUNhlRUvzgjxJ/Ue?=
 =?us-ascii?Q?Z0llQPOk1lmbiKGtjsuBK4BVz4BIOOl5cCjkcRfwuMxV51pNeamoWpbjKkam?=
 =?us-ascii?Q?erjqGWNhaSEFEAZTpr0mwJ2OqJ1wIPXQmryGXfagdMKGwAJkgy0Rm8AvTESf?=
 =?us-ascii?Q?7GAniuTW3HMziJbwAXlpDOq+1mXIZBNbRsqb5HhhtpmdlXZWQRt0mnrkog9n?=
 =?us-ascii?Q?oHKxlgDbwohfrQ8N3Eu0X7cJAUtVZG+aWBTfVIMNhiDS9F8BfNAqI1OaHk2T?=
 =?us-ascii?Q?iKwj5QTZC1oRadUOZHY7iwYkDkc+4KlzaqkcilPT7PyMxtslr15MDdT3VCDu?=
 =?us-ascii?Q?3GHi5MQzh2OR3ZmIa8tVh6R0W+HDL1/PhzRCdWUekj2+LmWYALQYCBfvsFmB?=
 =?us-ascii?Q?r0xrNWcld/BzJStFCg8B/eGt9CSPFQZxj5CrsJufE5UcwjFoyRf45EPNwl8e?=
 =?us-ascii?Q?Jjny7a5OYnWFKO5whLh9bBs8thF+8EGoBkHmLg9VPjlsdtZMxwThyvNKMawh?=
 =?us-ascii?Q?CBA3xGU6E4o7p687mDL4pVcKtExPJTp18li4KHM2xjdsT3h0nmR05eaHIHc/?=
 =?us-ascii?Q?tmuGmmpp/bpvnUJIuGe09FTq3FU4wnlzKD7bB+V/lIm/gdUSUTZVJnj6lSbZ?=
 =?us-ascii?Q?vCjJ7k0hCn8dY+HPOCG2Utnpws0OE3BQYwb79TMt3Z8mLzg/5ogfIqVIOLNc?=
 =?us-ascii?Q?HBBzsICQd/HLvKElEMX0Br8oxomZ779Nk6AJF5nVH4hc8EeXIHGnVOufLYwe?=
 =?us-ascii?Q?lM1/95YyeRUigKBBHWi6C++brf+aFpqvoeZ0oe1moMesbN9zm4AUNQj3+Mfv?=
 =?us-ascii?Q?80Fx/MwidMJUW37mYShXnh9Pe4fOMNGZ1L4LimboPcD+4rrMC47QZWO1G9Ad?=
 =?us-ascii?Q?g262E5v3ueE4FYPPp87mzHilM688u7EqzA2N4H2T32SrkPFnrFV1xxgX5x3V?=
 =?us-ascii?Q?5numml4+8Cup5KqFg5bwQLaViIdvZ1ybetYgtQc3uU6HU1lXHKUbi0J/l4yG?=
 =?us-ascii?Q?uzPQG4WXRDHh6KtVyHUMHMQMTAkBK7nib//CAfLMgYlX2m03yew5cjXHsc/3?=
 =?us-ascii?Q?awLuQnvWd3w6BXCpZCGE+eZKlSIIHVtJxqVw9xtMNxtmicBrK1lV1+eeQmkb?=
 =?us-ascii?Q?CBGXwglUsFXcAin+8Kags/UF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jnMrV9Zs0B/4ZrnmPxhWKl4BknoSRcdMc92acektWMaPdHqexwDFD1G/xdG1?=
 =?us-ascii?Q?C3asrNloGGSkILXQVJy+kMEbcXu3XWUgQm2W4UvlaRcXthVtDEgFtN7TiuQL?=
 =?us-ascii?Q?fsIwDUWBJve6PTLSuoLvkPvq0BzJ+GkZljoCoVxC4mXBstk66GUHKx1yx9/z?=
 =?us-ascii?Q?xEpAUSMY/k1HnQjgLjtwWU4+Kimhh4LY3yHWVGS8IW7fQZl1ngEEDPiWokn8?=
 =?us-ascii?Q?P1Td/lmGGkN8N6Kp3HyWiksVqFzAgNt31IkdLw+xwfRHgUmsqJ+TQiJcciv6?=
 =?us-ascii?Q?GygklTcBcnZwVFPrVAsRblaXv/wNCRXSLxhEC9Uh3mkMbhNXP8rNavqcknWQ?=
 =?us-ascii?Q?HvxJXE1N1fmq9ZTyX0iZi/nLlt0d1fy9gWQ4XgqAGdg1VLx+kArLO1UCyfOf?=
 =?us-ascii?Q?Nsn7f1b+VOeXgzaXH8YnrmxhiMNUm0HeJQ0D9IYZM4hR0VOHvzs2APqDrPlE?=
 =?us-ascii?Q?wfmDoc3bBletjlDmaozrmiBKnA82LI/wli+YaZ+8Esye9IebIGnIM0WZgsvK?=
 =?us-ascii?Q?eW7ZManmc9dLDu8eF2HxPchuYpduqwwNf8IVO1Rfe42U0RWdZTd1tHHxbem9?=
 =?us-ascii?Q?xDQvi6OpjL+hwXIxkOTlSG/3s4Q1XvbKAumkuY/rKVIPfk7uLcDw0kh7VOMW?=
 =?us-ascii?Q?Ja2lEhGJNDPVxrRWcRULS6RXX64x/X1MVvwj1m8udo4SUtDcpwnVdFRtZjaa?=
 =?us-ascii?Q?1wL7WokIG8mY2PVHyAtSALoUVSKeWcklHfGVjZpeB3YLgL7TFbQudO8nMDjs?=
 =?us-ascii?Q?ld5EqxHIy1GDAShE7i0q+LYN8C9/pp55O4lP+CZ7GyfDoia56fouHkYWqsuF?=
 =?us-ascii?Q?iRObOpkPnLjA0TR5GgnR9xUI5Qsch7BcN4oEZnWFv6qpF2ZivRY3zH3cHGw2?=
 =?us-ascii?Q?y+Gv7VM2HAMAG4Q2n1cPfn3lXoWLiWznuz3Es3Ok/SS4AmAOJ+CMXp91FKMI?=
 =?us-ascii?Q?bgV+1/HYdOEk0Y40zNrEe67cZRYtARJdh3wKHmQnAVi9JxE8+I82JD5JnSC4?=
 =?us-ascii?Q?bur5hSRiOxEB3XMIZWqPQ0CkLGWCVIhCHWPbyy07NZqylO3xxcEMjQG49I6n?=
 =?us-ascii?Q?KPHmXfxNpXbIfaP4Q6MHRSj6CbvUosQs9HAjvoVP6Uba5uXaj2cyp5Fq6p1F?=
 =?us-ascii?Q?gCQsZu/G5uIuS6sgLzKjZH65//Pu6etP26s6+Ghnikx+gxqzp0UJA7MLiM8W?=
 =?us-ascii?Q?0WksslE5yCyYhO/gdC14cr7W++SSpObeGd2v+lrO8EkIJ0n5djCtwnILFpc0?=
 =?us-ascii?Q?4nEy5folnJDGFS8G9yvmNmk+Zao8ia787p5bubpLDgJfYlEWiQNVrPHYccKy?=
 =?us-ascii?Q?+0knUBHAq0Vd1ixUkK+hkCIJg9sIuhq/ko/dcQEfNspjkGaKWqDpS5VH94w1?=
 =?us-ascii?Q?IKP+5HxymgmtvpfhHe3dKi0uTahmKg193z71hM6RnfFlve/KwfsHtf+vDPHH?=
 =?us-ascii?Q?Tnqyzl705kBmEUHaqcD5Jwp7r1iDNUK/TXasRqGLSd7JTTexL3vTnmOMayZv?=
 =?us-ascii?Q?kfr1OYZ/Qo67Tpj43OLYBxdwUFUjwHcsKGXoEhVAYrMx2RGDwT1jPLYCL+Zd?=
 =?us-ascii?Q?nXgM5Sb4TmRGAMEuB+78FubASuok3ZJ1M5ZL4R2CRCrMG8bJ85a4N6aMQB8q?=
 =?us-ascii?Q?Tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fdb92c8-149f-421b-58c9-08dd0288a837
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:12.3601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZjgUUC16r0AphLNN6LJk0Wsg89A1/WKcathETvkK/RmxRs8vrn/UikBoMiceYlD63zcpX0MAC1pfTr49a9lifg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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

Align with i915 and only initialize hotplugs after the display driver
access has been resumed.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 3778a7a0e52d..fe4d7c210744 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -444,11 +444,12 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 		drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(xe);
-	intel_hpd_init(xe);
 
 	if (!runtime && has_display(xe))
 		intel_display_driver_resume_access(xe);
 
+	intel_hpd_init(xe);
+
 	if (!runtime && has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.47.0

