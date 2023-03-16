Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 055FE6BD4BF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 17:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6972610E0C5;
	Thu, 16 Mar 2023 16:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DEB510E0C5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 16:11:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678983110; x=1710519110;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=9tEzpezATLs6UvPiiH71PttZaYFjWHA5Evr36rsKpKE=;
 b=bwl+3ExQQIZpsUN51j2FTOQxivhOKxJsKB9PnwrD+wYazGktNe2yohAI
 K4kaCN5hnhHnJq/rxLmZbFU6NCDFOClQchRKsESF4GkRAVbsY8f/XXh49
 21COvlbgEYHi02rN+MgFzWoCL4MfKA15wVvy9AojVqt+bNUJNRS0CYljN
 k0LnvAa+Ng3r3Ugqy1OT4ntyy/pn6BO4LyoVWWvnnHOTGBC2x5rpEol8B
 N1NLbbC3TVPkbF8bHI1X02jFC/7dErsTSfBaSRXD8GW8Z7uCn40qw+gBK
 RU7jSfh417CYahHf4Vb6sYW3zUPmHXYc4GfXtLEnGb/OmfUDvFd9RnnJ4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="317690732"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="317690732"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 09:06:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="629938558"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="629938558"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 16 Mar 2023 09:06:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 09:06:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 09:06:43 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 09:06:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+BmcQomJAeg/L9QKT2HNsgfZa4SsiklhANDjqeRr3UohLKRsC9l+hM2m1TS90J6w9sft+J1uusK2OTzbpaI8Ey260EOAfYBaLnI759PAmZomu3kXjYin+wssdrz1WwGsIk5asC9OHs1rPUFji+zC5C+z+uSOHztc3vJMDLstpDtrg/SwOz+fts++2VA+IyfAW1iHutDGFFvhSv/J+D85OZbstLPmfVAFkYy96NgQefLO3RgZ+9RRNY+K0j8Pjs3PWoICbxlCrU6sVhqjHLGbGAjq1q6URpxqjNetfieMcB4iwZ7D4UJrX04gWqkZKRQ08NuU7nzesD55uHF7tEFvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0T+EPnSrN2owwWiTCawun2P5KmDGaT/0ww3rwgLaP4E=;
 b=GKN1+NiqcSj5kAZmu2Pssch/34lctJWn4LyEvK4BW066Hw3rxwjpwwvKaCbD8avU798X4mbQh1QEsiriL2gHMPql8jHosr65/SLfjvdEI/O0VG2MAlTJdfoPTI3KSUlKAyPLJbH+XCF0qXFbR/vpOlwSkhpoUxhNASIwh+hmLm02C6ms9yMKF/NWWit52tf+5a1ZmOwz5VWj6eNoLe/hoiB2AOa2mrDdCEiToRQ2gbE9EHNZ4wK58zkIoypP5nunTy14+aC5Q9F1G0JgD7ZizANJA7yFlJSdKMpaEvDOaTC95oqDsMdmwMdVLQU81EkZr1bVu/1p/mKLmTca5yc6zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5382.namprd11.prod.outlook.com (2603:10b6:208:31c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Thu, 16 Mar
 2023 16:06:41 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6178.024; Thu, 16 Mar 2023
 16:06:41 +0000
Date: Thu, 16 Mar 2023 09:06:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZBM+g7RwIPtLtXmK@orsosgc001.jf.intel.com>
References: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
 <20230316000932.2525744-3-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230316000932.2525744-3-umesh.nerlige.ramappa@intel.com>
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL1PR11MB5382:EE_
X-MS-Office365-Filtering-Correlation-Id: 066fdfcc-0ca0-4ab0-0c5e-08db26386dfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RjPeb80d+Z8Q0QraBsLT17Yog5f78b5abDjtWCiIrl0S8W2C8qyT0//+Fu/MfP8Vrc5/xjFiPlQURkND5ywcPV/n8A26QuKPZ5vVnuMrHUev3UaqjHzFa/axrdW5yEdodZnaJ3bJGF16SI2XFjJzpAdkerulR51srs8H1s6EaRXGptBK4SriDd1reuVCFc1QYs6R+9JkU93e0joRW9xrUkk9jqtLYHo313fHJTdQ4rw+UuC221PS5NKZq0ool4rHxoTiuRukld10CTPl3MJ7dR7UxDCHGhYTDE+tUe5Po/jm1LJlV99/Q3X+ek6zJUh9Y8TXRIpSDfbpb186LAsAex+VkEptlX8oNK7Ydia6dXjcLZKTydVAley+sgHsgjQ1U/FDIXVF8v/s+bEoy6IfgbaSqRQ8q4UlSucWoDTgEvrgs21beaSi+pXoDBowOxl++wgZ1u4ZG6bMiebVTFk5H6ylWn0ugQ3dhnI22XOTq6pvYAmcAiOPEO8sgKKK12vuX/r175ZV0CLx+lbHtxBVtkzxti0Dh06KWe+unPHO6JWpgJnVTw7FA/df4s7+IaCYlqZ7grGk5FLuTt8iT/lSSYF7Bf0noxJSvpyhPH1Ync94mC7+UpnsoDEHeDR2W9sTCcseB9Nv4w52Fvc875E8SBL72QOpdkVrr5uqTC+Zov2hSyaHkQxgvigf/K/bZsjz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(136003)(396003)(39860400002)(346002)(451199018)(6666004)(316002)(478600001)(38100700002)(86362001)(82960400001)(83380400001)(6512007)(186003)(6506007)(26005)(6486002)(2906002)(8936002)(5660300002)(41300700001)(8676002)(6916009)(66946007)(66556008)(66476007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnNmK2V4aGV6WC9WUnNjUDNUbnMyUFRsTTlQUjE2bUdpSUlINTNWTlc4SVNu?=
 =?utf-8?B?SjVXVmIyb2FWZWhkV1l0Q0RpV0llRDhlTEs5UU5iWUR0OGFoQjY2YXpwMnlY?=
 =?utf-8?B?dFNHaVVOU0cvRU5TRU9hUy9zcElleFhIRWRZR2ZmWGU1WjNReVZ6SUkwLy9k?=
 =?utf-8?B?cktCSXpEa0tHWVUvaU9xZk0vc0l6d3E5djNuNitZbGtmcWNMaXhhV1AwcHlC?=
 =?utf-8?B?TmJCNmdJYW95b2hEcmJTOGdUNUlqUXFySTJQUWMweExZeGRzRFFVKzZOemJY?=
 =?utf-8?B?NXdkc1ZxQU9ZMlNOSnZ6S3BUcFJYRGRZaTZnL3lTaHpJOFIzQVVjK016K2RN?=
 =?utf-8?B?MVc1VmoyamJIVzliU3RxSy9zeUdQaEp0UFRwd2NGeEwzdGFvbXRkTyt3QWtB?=
 =?utf-8?B?RUJ5QXVoMmluSWJrN2loZ3B6M0NvZW5YQm1SdFRNMTRsNVFycHV2dlpnQ1BJ?=
 =?utf-8?B?SlhkUHk1c24yS2FjTlNhdmxjQmN0YmZTMWFJaTVZUE01bnpRNm1iazAyeUJa?=
 =?utf-8?B?SDdPMnYxekp4aWNiQzVBRWVycXoxamFwR0VLVlpERm1qZnRzdGxuZmFKa1lo?=
 =?utf-8?B?R1pPSWo5U2RITDRZOVh4RTBWRlRjdElDSHJ5dG1RV01jNHoxUHdlbE8wZGNa?=
 =?utf-8?B?MXlXZmhveUQ4NUsxYk42VFpSaXl0R21td3l5QnFNWm4ycnM2eElzTThmVUhM?=
 =?utf-8?B?RU5tTXREdDlWUGp6WmR3ckthUHpvME5MRzNrYWY2bjBSdElSQm9jNVhRbUxD?=
 =?utf-8?B?RkwzZGFhdWJBOTZDNEdqYVV5TkUxaHd6RnNMc2xSeHg2d3g1TmJIZFZ1VUJa?=
 =?utf-8?B?Q2k4WVNOKzFzT1BVUzUwelh1cTdndmxENU85MlVWMUU5KzZxL2MvY1pEZXdG?=
 =?utf-8?B?bS9Vcys4OFExd014WmZsdFJaMVMxMTNOYS82S1R1WEFpL3hIMkptQWJZVXgw?=
 =?utf-8?B?RENZS3lYMmZ6dWRpcFJvSDVqV0liS0tqZkhTdnc1ZDNRK0RDbGludDRTL3Vn?=
 =?utf-8?B?eGo2b005VXMzOFNhckZXaG1Pc0kxdnVCWU5aR08zdmRDN25sdW81NjV5MmFJ?=
 =?utf-8?B?YTNjTTNsSlRKRlI4WXloMWh1cHdjTmxESWVmY290bC9xemxhaktDdDIzbzdJ?=
 =?utf-8?B?dFR4OVNJcU5jYVFrK2JvYnUxbzFLd2UvZjBFWGtoc0xWUE1FdGZVc0MrUFhG?=
 =?utf-8?B?VHY5TzlkL2NtRjlsdWpTb0hHd1dqVDdESU84UEEwRkwrQkhaSXRObys5SEta?=
 =?utf-8?B?eGJXK0QrY0NKbGR1NXlpSmJHMjFMT1hJaUJ1SmFZYVpPZExkeERtdHdxQSs3?=
 =?utf-8?B?bmNMWXp0ZTM4azhiL3d4ek5FOUNCUkZOVjJWUUVKZFNpTTdhV2ZlV2RnS01L?=
 =?utf-8?B?emt2RTRIY3VJTjBuMnMvWU11bDh0eVhOUTFBR2EwaWJqcEg0NGZmN0lxdS9B?=
 =?utf-8?B?cnhJV245WjF0c0k1T2JtTmhBbWdMdVUrRkRjZDhXQkxNTjk4dzhIMm9hTUx4?=
 =?utf-8?B?Mk1PakR0V1VOeUJFMU5ma2NLVkhBMTBlaEJmOWlMMGJXRm0vMUhsdnpjTVlt?=
 =?utf-8?B?Um9yb1JmbmhaaTRaTjByTUdnMGt6MUE4dXRmVGFzRjNaMWxrcXR4NzNxOWhO?=
 =?utf-8?B?YThUMVJnNXdsVVBySGpmNUx6OTloSk1LbW4xYy9YVXJSdXpUUkJERUNQV2lH?=
 =?utf-8?B?QTk2dm0wbWQrQVUwNTZYTWZiWW5ZZ2pnVnZDYm9OSUhHckhhVVVyZ0JHcUE2?=
 =?utf-8?B?UmFWYzFwRzFtWnlKSDJXeGkreS91TUlkb2gvMzhBRitSV0NsOGZIOEJndy9l?=
 =?utf-8?B?Wk5zUzBqR3dWbWx5YWZ4NmwvalpVNjc5Y2JSYTIrZWFDcXBmcjI0V0FxV3Bi?=
 =?utf-8?B?SzAydkphSWQxZHpKKy9HWEhlZVVrZW5SUjcwaEpoVU56bzBpTjZjTTJLbzdi?=
 =?utf-8?B?dHBQMGdPMnUwMmcwQmQ0YStZWUo5YUpyNXI3cEZEdXhaNCtZVndacU5sa2sz?=
 =?utf-8?B?dWkvQ0QzaXVrRk9mK3NhY0dhdEZWM2FqK1NGR1BYTnkzTjFCa21ncjlxcGR4?=
 =?utf-8?B?aElTWXNzQURTWWZERG1GWjFha295RkJja3JSdTFSdjllSWk1Wlo0bGpXZUNR?=
 =?utf-8?B?cTkyU1IwcVBtaUQ3d0w0UERXNTBGUjdRTEtqZVdZWUdQNHFBVHU5LzdpYkNN?=
 =?utf-8?Q?x9x0VXzALz8TK866oaD22E8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 066fdfcc-0ca0-4ab0-0c5e-08db26386dfb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2023 16:06:40.9969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cjVCWn8ZGvXqNnCOSo2bbgQZa1n3IzKPunhgEBsFaOfkStpZ3RmyYAa1zjitdJyaBVl1NFw3ua58qFKD+HSlzed1D553joNdEM/zDpW3nXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5382
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 02/12] drm/i915/mtl: Synchronize
 i915/BIOS on C6 enabling
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

On Wed, Mar 15, 2023 at 05:09:22PM -0700, Umesh Nerlige Ramappa wrote:
>From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>
>If BIOS enables/disables C6, i915 should do the same. Also, retain
>this value across driver reloads. This is needed only for MTL as
>of now due to an existing bug in OA which needs C6 disabled for
>it to function. BIOS behavior is also different across platforms
>in terms of how C6 is enabled.
>
>Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>---
> drivers/gpu/drm/i915/gt/intel_rc6.c       | 28 +++++++++++++++++++++++
> drivers/gpu/drm/i915/gt/intel_rc6.h       |  2 ++
> drivers/gpu/drm/i915/gt/intel_rc6_types.h |  2 ++
> 3 files changed, 32 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>index 5c91622dfca4..f760586f9f46 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>@@ -420,6 +420,21 @@ static void vlv_rc6_enable(struct intel_rc6 *rc6)
> 	    GEN7_RC_CTL_TO_MODE | VLV_RC_CTL_CTX_RST_PARALLEL;
> }
>
>+bool intel_check_bios_c6_setup(struct intel_rc6 *rc6)
>+{
>+	if (!rc6->bios_state_captured) {
>+		struct intel_uncore *uncore = rc6_to_uncore(rc6);
>+		intel_wakeref_t wakeref;
>+
>+		with_intel_runtime_pm(uncore->rpm, wakeref)
>+			rc6->bios_rc_state = intel_uncore_read(uncore, GEN6_RC_STATE);
>+
>+		rc6->bios_state_captured = true;
>+	}
>+
>+	return rc6->bios_rc_state & RC_SW_TARGET_STATE_MASK;
>+}
>+
> static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
> {
> 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
>@@ -486,6 +501,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
> static bool rc6_supported(struct intel_rc6 *rc6)
> {
> 	struct drm_i915_private *i915 = rc6_to_i915(rc6);
>+	struct intel_gt *gt = rc6_to_gt(rc6);
>
> 	if (!HAS_RC6(i915))
> 		return false;
>@@ -502,6 +518,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
> 		return false;
> 	}
>
>+	if (IS_METEORLAKE(gt->i915) &&
>+	    !intel_check_bios_c6_setup(rc6)) {
>+		drm_notice(&i915->drm,
>+			   "C6 disabled by BIOS\n");
>+		return false;
>+	}
>+
> 	return true;
> }
>
>@@ -699,9 +722,14 @@ void intel_rc6_disable(struct intel_rc6 *rc6)
> void intel_rc6_fini(struct intel_rc6 *rc6)
> {
> 	struct drm_i915_gem_object *pctx;
>+	struct intel_uncore *uncore = rc6_to_uncore(rc6);
>
> 	intel_rc6_disable(rc6);
>
>+	/* We want the BIOS C6 state preserved across loads for MTL */
>+	if (IS_METEORLAKE(rc6_to_i915(rc6)) && rc6->bios_state_captured)
>+		set(uncore, GEN6_RC_STATE, rc6->bios_rc_state);
>+

Assuming bios_state_captured will be false on driver load because gt is 
zalloc-ed. With that, this lgtm

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Regards,
Umesh
> 	pctx = fetch_and_zero(&rc6->pctx);
> 	if (pctx)
> 		i915_gem_object_put(pctx);
>diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
>index 456fa668a276..e137c2c397c2 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
>+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
>@@ -27,4 +27,6 @@ u64 intel_rc6_residency_us(struct intel_rc6 *rc6, enum intel_rc6_res_type id);
> void intel_rc6_print_residency(struct seq_file *m, const char *title,
> 			       enum intel_rc6_res_type id);
>
>+bool intel_check_bios_c6_setup(struct intel_rc6 *rc6);
>+
> #endif /* INTEL_RC6_H */
>diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
>index fa23c4dce00b..cd4587098162 100644
>--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
>+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
>@@ -29,6 +29,7 @@ struct intel_rc6 {
> 	u64 cur_residency[INTEL_RC6_RES_MAX];
>
> 	u32 ctl_enable;
>+	u32 bios_rc_state;
>
> 	struct drm_i915_gem_object *pctx;
>
>@@ -36,6 +37,7 @@ struct intel_rc6 {
> 	bool enabled : 1;
> 	bool manual : 1;
> 	bool wakeref : 1;
>+	bool bios_state_captured : 1;
> };
>
> #endif /* INTEL_RC6_TYPES_H */
>-- 
>2.36.1
>
