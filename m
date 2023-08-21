Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4477E7834B9
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 23:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6E210E2B3;
	Mon, 21 Aug 2023 21:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1544810E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 21:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692652378; x=1724188378;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2gZD26mmzFJRPYYrf02Af6i8H2B+ValUN2Ssw+ByX5M=;
 b=MAPLOKq2nKW1bw3t+x1hYn8qaR8ELTxScvrBs39GRqQpAcCE7tHjGg7i
 uSxIskpM/Kzt7tSMN95Ry+lcZVKh2udt3yvMMdPuO0SoWgHAEal2z4QD6
 TIO3ywkwu3Z0nyRQTvho4U+EYia3VmRQl8mIQ8Wsl3FD1yyJAkMGtgfuY
 W7yXUTIGuSnQZgZWK0m5eQm06+uefEWQV0GamNIDmLIgFfjGC5tc9Vctx
 WbDF3Lq21QIXQZY4TR7VT01AxwbgCTCQknO3DrUnLl1plKswAkEQexHwC
 MNNN7+RpHmt2i9ZrpJ/QotT7RNUOC5J1dmyYPEupXQlH+sluNHABukcYw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377455000"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="377455000"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 14:12:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="826079131"
X-IronPort-AV: E=Sophos;i="6.01,191,1684825200"; d="scan'208";a="826079131"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2023 14:12:57 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 14:12:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 14:12:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 14:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYClsnGYjMXI2qU7va+hP2+WJR9kv0Imk5Cln9s/TQk3jtkNq+22yqBA78TVRIzAakSWM91CzVyVMHV7VmfkXi8m0YixlFF5FMeQtg4uSM4sF6R5lyUWXhLnmE787PSSuMH0J4FLocJMRV2WBDfkconDtarnZ0uI2O8+WtamcUe0Mb9zJGJZiito/1LQYz6LXhB2oh5hmGXYAX4nfQm5jjBfYQWOI+e/z17G74urKAD2disHvCFP9QE8txVSIyARvCXZv8yEULKpWSOUfsBBQI4wfSCtnVoaD6xfoYtO8e2zhtv/hYyJw3so8Ih29xuRTkccIr1dK8ea+bS2G+bbnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P34rDPai2SXdojJAkNf9gq0Qq9l3qUdS04rcs2hrJGg=;
 b=gSlvaV6u1+sxClzCmWzfztgOa/2T74UW6DwScchG6Tt+97tV+ZHd4yAyfiGg4VB5BtpNx2ge+l5tu9F5165B+KJXpkNt4cgUSHWYoKvABsA+TjnrpnWE6V5clpWde5JYbuCNWcQ6baHHirIFDPA+yuKx0XvYRXOBdC9hIHEM7Z+G007PeZHwyRr1HisoASutDlQtPf0M/4BKqRqfeCXTkqStpQAYxUF5x0ckLM4r5oIUEquNkTUDOlrQIrQqZtG4sg7R0/y79L4VHS72I5K/7hz+k4/EIgizDUY0bKemxbWUe3XLa+SUjWWV+Qcmzunhul+3A+D9X6hgJwBuEPD4GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM8PR11MB5671.namprd11.prod.outlook.com (2603:10b6:8:3c::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Mon, 21 Aug 2023 21:12:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 21:12:54 +0000
Date: Mon, 21 Aug 2023 14:12:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20230821211251.GC6080@mdroper-desk1.amr.corp.intel.com>
References: <20230821183831.2165318-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230821183831.2165318-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: BYAPR05CA0043.namprd05.prod.outlook.com
 (2603:10b6:a03:74::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM8PR11MB5671:EE_
X-MS-Office365-Filtering-Correlation-Id: e3665636-22a2-4d57-3d3b-08dba28b62e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3Z3EJGXhWjV3EEfMVIvyVsmmNeEkBer9X2hE11cDZKZ3chgtNW5Tv6KdbADPyTZaf5OgzRHzwaK6s/5YAcqgtE0vH5GkE0x0IuUWZWXUpS2qqKui2oxP/0+MwryuMhT/vRRf8FqTSJe0agcWSSlnjtuxxXl+vWaxqqOyCNxeD/7HVTRduDh4eiCo54Yg4QVg3DWCP1eWvZ/5Py+gGhTWZn2CHDT9Xl2egjfDAOFwdlbkebttgS2BS+LirpkbyeG/IX5u7ZopztlHfYCqVXN87wjhlJvcnI46Jy4g6ypukHsylgzBWW2srQ4TzplG3D8g1mcSPXiI4A41FUZETqFF65Z6h/Z66rGNC0FvknwzeloTKEV5k05XrRY3i3Ty0Hf+oXtO38YPY6+Cg+Axg4ArDdCOvnGJMSdfV0YMB3dLRmM+WYXh1R7pt2zUFFzM1nE4+COl23OIEy9Mook3gKRd+9EVwtgRczHzml/C0EWtpORu+/6kudBqXZRy4Gr9LKVaYBYxUob7X3Jtqw31vpkpF/LRqgtbqa7b8qRizJj76dYWoNPbqQx8aRFyMQyz0gJN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(136003)(376002)(396003)(451199024)(1800799009)(186009)(2906002)(38100700002)(6486002)(6506007)(15650500001)(83380400001)(5660300002)(33656002)(26005)(86362001)(8676002)(8936002)(4326008)(6862004)(316002)(6512007)(66946007)(6636002)(66556008)(66476007)(82960400001)(478600001)(6666004)(41300700001)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Av+AMrwCzkZyFJQiR9jAJGsB84wz8pqnjoQgCRv0/AjpWHKlO9ObN+TwX/Dc?=
 =?us-ascii?Q?uU7QoQ77MSXuuwep64gw8isUCwtWoyAfJvKPSRGIg/62clFMGKSpNlEeF6mc?=
 =?us-ascii?Q?buIJwWX/c0TSt/I5vzjQzKTF/980la6TkCdbhHHPMLPzk2TbjVt5aLWevPXT?=
 =?us-ascii?Q?UBwczBK0qxTkQWWmKPkRUVPVNrTphmZiiK4IIXUj+YawMrU1UK315zeDjCph?=
 =?us-ascii?Q?HN5K2BQfgRRqsiGNcYbfEy1Yjx2VU85bsUDF1fJsfWxGRj32RDp3OT3uLGuJ?=
 =?us-ascii?Q?38m5lxEyP7o+ArNetRn8uJnOApv8W3psozgSZTorTE2onlWKn4G5t5OEKHrL?=
 =?us-ascii?Q?TmCABRMjSeK7goylh64/FHwTbZMd12c8wqq0O7g3AHm05BoBOgl8lJDwr91R?=
 =?us-ascii?Q?jQ+O6FY1a1Ig0Nm1ZWZZ32pO7xXPBNJE8vBBmPRF3Kcpl9T2LxSHiCdYhFIr?=
 =?us-ascii?Q?+mDGQCJvjCIYrnBqVQR384ipFiiNwEeVke0SwoouEZOiivW/0IIxTtOCv07S?=
 =?us-ascii?Q?7giE0U8LWR8/kbwB3SuAiL4N9vDb35NqWvR2cqSkioDA2yHNbGTrzglLvN/g?=
 =?us-ascii?Q?OiRa5+dAzDH5huHT7pdnaGGS4xKCB3DUwD+w8cWVzA0qD0tKfOcxi9zrvIB4?=
 =?us-ascii?Q?vnFMbZSkGBu9I/3Qymm2ASCkPrpNGuM1dzqkm/7JuFMtGNqLCLz1iVFds/4B?=
 =?us-ascii?Q?j03cK+rKF9F6lTB324ZnjntxvNlHyGUAXnOpFU2ms9Lyht/FnOwrJSTUOWia?=
 =?us-ascii?Q?mXPg22AJXWkKg72rmrploxzZQdUbLYOydYCRe742vi3/yc2ra/iI+wHF07sY?=
 =?us-ascii?Q?tLzAsjhNdGH0fAHdQvFuo4B5yKtrtf6FCReuFIuiyDLHqBd5PnG3Ltu+HTut?=
 =?us-ascii?Q?bFYe7+dhStImXWsO2owVDdUNx0jMzhSFR5Gj1MzTmQi6UegFORafJieKtoDh?=
 =?us-ascii?Q?ECYHDb8ga7txim27MCufOZGu8dkSeX7ItlGpuhgOvr36UTbMPTStbImBwXqb?=
 =?us-ascii?Q?5m+v5aS3wTSC02JJaDCTurDCfoAAnoJwD6+TsDRBuvXxqZMU9HBtRARkbizq?=
 =?us-ascii?Q?dH1q4uzdEED7+FNlt6iqAlp+TswoGVZqasULPc0bm9NifJK8JH8Fv5uyzPUe?=
 =?us-ascii?Q?c7i8HOl5e2MPpslWeeyxtOZ2+51Ys6rJNI6yS84OHbnmfzrkNlpFqseuQVru?=
 =?us-ascii?Q?sqfcQPovj5BvhIwYxUX2gF79/sqQmLS6DiDIqhDkIfUtULKrFamZ/dr76+zZ?=
 =?us-ascii?Q?UDODds0345o+EYAK0HH9FN6z01Ju9B7kkbNAAHFaj2w4xEtGug2SSuZcm5Jt?=
 =?us-ascii?Q?VckwFvCaEHLdMyIRv4Ia6n72UbUFmU8/ERd52BobfTTAJJDCmZUFnfNHrSRU?=
 =?us-ascii?Q?QVVj2DTcsqYPVkkmDH+v4fSEDsITUqZ2ovdwLVKoAsm4SckaVLA4BMI6Rnvc?=
 =?us-ascii?Q?8UNH4c1Y48x9XVBJWC4dVjsUxbTTr7ciPYXEIr0mGWhAtlMRrlj8OZPkrojc?=
 =?us-ascii?Q?aX9dfIIeJ/NuOBgZnvboLcXO6TIYPpaX2jPcarPEaMcuV/BxY2O4n88iChjk?=
 =?us-ascii?Q?10+VM9S2rPgFI04K0c4LcbtedQqO6KxaP6a4mRgqz9AAtWdkLPDcE5Rn+Mix?=
 =?us-ascii?Q?Eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3665636-22a2-4d57-3d3b-08dba28b62e3
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 21:12:54.8213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HtiiQ0YN/DD4ROwdxb3J4cbHa5OBoKFib8Eobl/PCgWCVmzQPy/IJi7b2a/FK81ilx7bKEVE9hPFsRKOO3T8LjMwgpauY7p7tCe0bo7cdCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5671
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpl: Update pci ids for RPL P/U
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 22, 2023 at 12:08:31AM +0530, Dnyaneshwar Bhadane wrote:
> Update pci device ids as per bspec for RPL P/U.
> Bpsec: 55376
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  include/drm/i915_pciids.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index e1e10dfbb661..8a697a9a84af 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -688,15 +688,15 @@
>  /* RPL-U */
>  #define INTEL_RPLU_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA721, info), \
> -	INTEL_VGA_DEVICE(0xA7A1, info), \
> -	INTEL_VGA_DEVICE(0xA7A9, info)

I still see these two IDs listed on the bspec page, so I think we need
to leave these be (there are presumably already devices using these
which would break if we removed them).  The comment in the "Notes"
column is a somewhat confusing remark about future hardware, not an
indication that we should remove these IDs.

> +	INTEL_VGA_DEVICE(0xA7AC, info), \
> +	INTEL_VGA_DEVICE(0xA7AD, info)
>  
>  /* RPL-P */
>  #define INTEL_RPLP_IDS(info) \
>  	INTEL_RPLU_IDS(info), \
>  	INTEL_VGA_DEVICE(0xA720, info), \
> -	INTEL_VGA_DEVICE(0xA7A0, info), \
> -	INTEL_VGA_DEVICE(0xA7A8, info)

Same with these two.


Matt

> +	INTEL_VGA_DEVICE(0xA7AA, info), \
> +	INTEL_VGA_DEVICE(0xA7AB, info)
>  
>  /* DG2 */
>  #define INTEL_DG2_G10_IDS(info) \
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
