Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9026EC8FCB0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E692910E8A8;
	Thu, 27 Nov 2025 17:52:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GUMZTty/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 805ED10E8A3;
 Thu, 27 Nov 2025 17:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265928; x=1795801928;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=GVOZXJBzWGYjuH+yTVB7xOzVVb3N65whmARBsqgLkMU=;
 b=GUMZTty/8GAyJMevWG1iif6n5l7K+AEUxC7PZ1X1RFWF9SH0w/Rinm+8
 a6eGuoQ6j6Epjo0wdbXmJIz+HZxi+lTxLsh2piyH2MaYCu6ya5IPGXhto
 XBR4UZ4qG5bvphRnEu+CahEyY2L3G+XO0hgjpgeY8XeEcBnKmtwrmd5PC
 sqpJaT4UeJIYpQwobR5iNt3OY9JExmSFCsHARlAo75/Jp1+nUFtOxGXLd
 xDrswA+E2VKgzseGBiZOXv6MxPxC60iLd3Zun6EVGjQO1MOkde704+e4q
 4MRLVLYiYT2HdrGoH2zvP1g+SiwKycGET4qKk22gh4S3NtLPqJ9kQ4fSa g==;
X-CSE-ConnectionGUID: dpp2Nv4IRIyZtWlNgZNm4Q==
X-CSE-MsgGUID: ipWqTmgoS/Sdc23Uyv811w==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003047"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003047"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:07 -0800
X-CSE-ConnectionGUID: nRBxKkqFS5CfHgsGLGs2tg==
X-CSE-MsgGUID: 1g0cEGKeTuGLNOvmWdKZiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453725"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:06 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:06 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oxaID13CmB/Yx4jVXz4ym1SCl3aUWvwnvSUaXHFPinvCX/NQy+HT33hP6GMczj79+Ald+lenJkk8KekxNKzcVPUwfOVzoYt1sHnV1lffBql9uSA7mpWQBR+rrbfB1dpty2c5XIArybRHQRZiwtYl7qjGhhk0NjE99avns6gNFmgHAXQtBviBPGhtj1PWE5Bbkh7ljiH2mqlgjAws2LUzcsKqv0MxDBen3v219nDzTeQCEWV7GdHverTOBm/K4HZw2ljU6fm65nC7nN68vouLQt//9S8adpPI5XCqpL1cxiUTOgLhFyh2wes1htCEpJU5EB67+Z2aI4VcNkehfmAovg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/opRFstPDMMO8O7w7BvSARomYHm4TyOirPOIBc1IyZI=;
 b=BrswuWEvKQkGag05qQVs1OnmnQFDD8/ESpDkl+sOKamc2vUm51q0I6kCaSmh+nzm4Dodz7g0vcX1J7iuwoyXl+7JFwVg0IBmdT650r8dI5H+1pqROexVUPeq33oTCxRG4rLmBVFWlz95p2YCiDNtQ0UdZK0yqSYJLvSF75DAnv5X4C8HFvlR+SgMd0eV/5uQH8sFhZFzWKu6/NVIPJlTkVrdHNMw+qOYmpF5vzW+TPBJJrMl6VuR+MxorWYKd9bgOHpp5OEme0vCOOS80K6IQn8wuyW7SQGgjdxvL5sMySknqXbd57yARE+DwT0M1lfLYhEztEGTpBWUTEFxQIhSmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:52:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 43/50] drm/i915/dp: Use int for DSC slice count variables
Date: Thu, 27 Nov 2025 19:50:16 +0200
Message-ID: <20251127175023.1522538-44-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 06ab355b-54bf-4d48-f95d-08de2ddda0b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VPmqb2WnHlcz9rvR7nxWMX2EuQBWZJPu/mAAYFrGlMUiMhlZhGkOfIjH3oNk?=
 =?us-ascii?Q?wjpPLra2r/kswBY03JcsrYdBARfc50WAgmi+z02PeV7CmwhmoJ5OEXl18O8D?=
 =?us-ascii?Q?YW7AMjMC+Als3Il5kqQg4qK7OdEhwxwzB2VpVTaJYjr92EKJqTXy0Z60zKr+?=
 =?us-ascii?Q?LuKbAmZgCX7VI75GAKDq+fQdbbshq0BhOEGC7BQTO66rVrPHVkoE+VZzcVaN?=
 =?us-ascii?Q?trlNevDNNioqwi8mRT7R1NpicaNrGaCD8jzDYUE4d5cHSCVZU1+uBQvYAH5c?=
 =?us-ascii?Q?le649m8TonybPIGk/ScwnYIg6ycK8CDHp3CVWLTu9G6Q2tf1EWcIQZKOndNr?=
 =?us-ascii?Q?Sqf8Ox0tdZ+Fvoqb1QP1AUYw4YvnXHbJfbGO8MtKVX2aZrzd6wkRVSLs76VF?=
 =?us-ascii?Q?zWFAObbDoaFmcV5Z8hc8DeyArXxVjMoqw/4gDILh9cn0y1eGL0QZGgRQ9MIf?=
 =?us-ascii?Q?87psdBpDJqNZcjgsCPQDg7+bYare+xQ0/g9rjyzqIvKinOfvBnwGJPoNPNp9?=
 =?us-ascii?Q?YfLPTmUV2RMCBHIIeFxm8nEe+n9GT8oUvRrU6UuSkP9mTT0sXY+QaqaZ7VvJ?=
 =?us-ascii?Q?XMpeWLm8uYcwj7fCtxGCHTvs9aeg5wAHGEdjuF9YkvCkUemUjx4VokuuPnV+?=
 =?us-ascii?Q?LzgyS5fpkB3gIlE3r6EG7JIc7paiaLDsqxcJuvwxgV7o4fVsTX6iva/pVYGg?=
 =?us-ascii?Q?IAg2W0ZSpWY3+1VD8ScntW36Mb/Z/p25HhzXYq0ZNB6y04nGGdf5xsNAH38v?=
 =?us-ascii?Q?hjDOtojxINED6ufU8eMjs+GRxXu3YBsGiZNcjzjFKsaExlT7RXdBz7aViQ/g?=
 =?us-ascii?Q?BtcfisY9UFCRSFoa39GOUf2MrAWjpuvr7DHvqAyzFFQPsvUbYXFx6CHpD21T?=
 =?us-ascii?Q?+310dRXQX58wlicnJCzGgog75WXfl1DBroNUSc7ocdDT0NNNrsf/Hw67BTK8?=
 =?us-ascii?Q?AVsbKJ9l4K85aGaSbIa0I0/3lDK4J9Vq3jVOt8M/VydLoLAqUWGBYkZ8abYz?=
 =?us-ascii?Q?ix/GBKC44ue4l21l+pAZ2562yoWFq+aW0g6mUvt1uTAB6CI5nXi2Fl3Ewrg9?=
 =?us-ascii?Q?ZS2l6Gmy9QHt6jV7fpIIp0bdM4izVGhZeLYFsnUpdwl45eSJoHEZbIc5rT7B?=
 =?us-ascii?Q?ixvjMCzlMJnTuWgqrY12ANxitPCc9C5eih3s9wAVKFQOEaBlbXf6DqUMVh8/?=
 =?us-ascii?Q?+WvCjWglWq6jngdkJaE4+zv22lS1L5+lpx3CFHysvZViSmrdAjDERnsQVop2?=
 =?us-ascii?Q?7RA/JzGg1QP3NlA85Pd5dOdmj7i8II1oa8pYJ53nm07+SSNmRciC38RenH6Z?=
 =?us-ascii?Q?ZtWqG/kktLY1I2UcIdO0rhp1IlUJL7gjdQsH4RgRWiFP4h2g7pxpum3cZKV2?=
 =?us-ascii?Q?1SPxf+YqmyLCOFMZt49hFausiLdADXOqpyI7adJeCM0Tvfq+osOUA5PUc7He?=
 =?us-ascii?Q?8GUQKSXjIkuG/VP5Ws9I+78h4fWo/vcP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L5sXSZ24IlpdXibvEmGJiCo4QQuflLudmM7Ikx6lPOIa7lAhEwPM1236ulUh?=
 =?us-ascii?Q?yaOTYfRbMfoY18A8jxUmpBrQQnAaxcpuqKnZy+nyJRwVVcps8oeF+5AH1wYk?=
 =?us-ascii?Q?YSICNM5rPZNglWqeafo4+erCjyQXTb5mZXU2tNCc/gzYbG6CrT3gBagWEaCI?=
 =?us-ascii?Q?eB0M4DAssNSB5K88L0yf2nx4ZWXGBOeIRDJKe9eHmyI5cqb1c5NeOQiCe85D?=
 =?us-ascii?Q?dmlmOprRPLmrk7Ki5ESLYjP6xGEmH0+P8gCleZ5qETNdLxAeBlj6FZIdb79V?=
 =?us-ascii?Q?+ARI2x+VF+A17GM4oS+P4F/HKE9MLyCkFcVz2rRoPJQSUw7kGXukiJd67vab?=
 =?us-ascii?Q?nIj5nbaEhBw/sNVQlCHmbWBTFY5fa/b42mia67Dw0Cr6OY45S1ObQWvgRHa7?=
 =?us-ascii?Q?BBqucGAde/gDZ6seFif41bwdP9jVaVs9HdBru0UZwYWYxzvZPagMnsBjtdwW?=
 =?us-ascii?Q?wQMg7aqRaI8KQd8N/6LghBGCL2liitivZlQ2jaQu4axmO9pHnY//W8W6l/jK?=
 =?us-ascii?Q?v8pMCYiGfAm2gQ+WQZ+AVfGDhSOzQ3scrVPJOuvzVgyWHZZw7l9xCr06iHfR?=
 =?us-ascii?Q?hCMkrOU3aItyLPlS1j60F7qlIyaAJK4japzKvJnrb6sRURcxjtgJam4i4h4L?=
 =?us-ascii?Q?ry4nbepUHLovSuJJFCAPkpzSzb6iN0ecGYEaqyneTlxp7caknjB2H/S1CJh6?=
 =?us-ascii?Q?m0MKOI4b5EIbe7fD3Kpse2pcXyHLK7YBzwTtlKs4SMNjeNpWwUO+xcgkDJl9?=
 =?us-ascii?Q?UoyUw4tphU3y+6PqhLyO85fcOAtp6IG8I8JVALSWCSIfJSi+1o/yY69ryAos?=
 =?us-ascii?Q?V2+Gp+XwroZr5TAosi8bX/pz0F1ZpNNb0icAa684evqqJUUiT91svL7/DO4V?=
 =?us-ascii?Q?WvpuFnCizCZd9rn/IqBoQA/reZwOlXqsYV477sORaDsKgVBPcCPtggaVRY2z?=
 =?us-ascii?Q?zODhNgrYcFMN+Y2gluGwPdBxgqPFEzJBfcdcWaC8UzHjqAJhluuCFyDkiRZz?=
 =?us-ascii?Q?TNW/NsEUYGFa/lhLDqDf27XF3Cv3wD/vlfBwehmEoBPiOWp4dlcx2VS8tut8?=
 =?us-ascii?Q?ldKN75xSNO5IYP4ihJpRrgUtIRNCZPeIj7MHVUMlYTjxGKlxG0hNMBmZ4DMD?=
 =?us-ascii?Q?EBaY3lVXcmnYpHL+WCMek+R/sapAB+goPP32DizNZQ2Pjp+UsrX2KjfiFFef?=
 =?us-ascii?Q?+NEd/UR5aB9DtLhtP8+A/BImdrBxkyCw3/Y8FZOkoKFVwTbFbVs2Tpsm4yPs?=
 =?us-ascii?Q?QEp6ErQ0Z5kLcm9Bq5MQZ0v+qk8xlIrncImb8CWeBXVAfMCqCjsOTXPbxomj?=
 =?us-ascii?Q?jca7O0hilL83/wZqTMp6hgxl7+JNlJ7EQdl/Ys+qq9Bpj6+zj55/hisKy7Qe?=
 =?us-ascii?Q?oDb5onP9I+/H1PMfr95QdB9kJLSCAJWVQnPsSVfrnN4YFwX9Ip0yaA9hADPa?=
 =?us-ascii?Q?f5yz5fMcGHQe9mOzagwD6zCvNg2sC+T3ZAe0wcfPxgl5E5uyhCGrXp3K9bXv?=
 =?us-ascii?Q?Qbrd8BHrQBDCAUrQpRzHPNvFIf2ewE4vRFn5+aCBU7B85J70cWDJtYRsTzNB?=
 =?us-ascii?Q?G47fCsJHhlnFlJGFcrd3y9cukOs2RfeljRYu/HWWEXZXEhIz4J0DkN5a4U4C?=
 =?us-ascii?Q?Iv879kKq5/In+uD6bbIDxmjqh9pY3cfZjlGBKgjb7wsC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06ab355b-54bf-4d48-f95d-08de2ddda0b8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:44.1563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8NJh1AL/9S36a0bR8JE6+COjRX5nj/pGjFP6qlygRZ+r3SoHpZtk0/wAVE/uJ2p/v8EJMv0RJP0Arx3CBoxWNQ==
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

There is no reason to use the more specific u8 type for slice count
variables, use the more generic int type instead.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 79b87bc041a75..1d9a130bd4060 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -962,7 +962,7 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 					int mode_clock, int mode_hdisplay)
 {
 	struct intel_display *display = to_intel_display(connector);
-	u8 min_slice_count;
+	int min_slice_count;
 	int max_slice_width;
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
@@ -1007,7 +1007,7 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 	 * slice and VDSC engine, whenever we approach close enough to max CDCLK
 	 */
 	if (mode_clock >= ((display->cdclk.max_cdclk_freq * 85) / 100))
-		min_slice_count = max_t(u8, min_slice_count, 2);
+		min_slice_count = max(min_slice_count, 2);
 
 	max_slice_width = drm_dp_dsc_sink_max_slice_width(connector->dp.dsc_dpcd);
 	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
@@ -1017,9 +1017,8 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 		return 0;
 	}
 	/* Also take into account max slice width */
-	min_slice_count = max_t(u8, min_slice_count,
-				DIV_ROUND_UP(mode_hdisplay,
-					     max_slice_width));
+	min_slice_count = max(min_slice_count,
+			      DIV_ROUND_UP(mode_hdisplay, max_slice_width));
 
 	return min_slice_count;
 }
@@ -1037,7 +1036,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
+		int test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
 
 		/*
 		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
-- 
2.49.1

