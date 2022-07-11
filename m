Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E332570B3C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 22:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD83A8EF20;
	Mon, 11 Jul 2022 20:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B5478EC21
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 20:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657570637; x=1689106637;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=irYIvopz6Lj01cUs7aM7GgjvUDMnLOhRuRwDIuLkwRs=;
 b=JWOAFIP8Lz1Pt4A5DD7fWYEcOnhmhXkWBUoA4eP0VmMJor/jDTbiUWQl
 PXbUXGkiHpYT/U3qs1x5RRyGjHdxct2IYXuVILmC4QGXPR5hP7l29HiqD
 13F2QpCAQcWSiURzszY7KiI4qIjjS7TDdVWqiym+zLkxmc063h6gv3h/g
 3GnWmGzng2vXgC0rQDQz9Uf0I8BDcp2al+LBv/ruHDJdKaMCXPVEdJvmk
 9jv7rir/mXJyV/+myvnB23vRi6CfeCIiFW6O3UvQMqYLzw3CZw+rLv2U6
 addmmOMZIBI7RHxavbytiMk7hpyWasDtgaQVBwts06SJmpWIaEL3kzTJE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10405"; a="282312497"
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="282312497"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 13:17:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,263,1650956400"; d="scan'208";a="569912254"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 11 Jul 2022 13:17:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 13:17:16 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 11 Jul 2022 13:17:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 11 Jul 2022 13:17:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 11 Jul 2022 13:17:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQo3ZcM0zu6g7pNTTRQ3lcWpFd931XiJ9qZ0clfMCSk95W9gDQSPmo3FMKjttOiO7s9zSGBTxQ7F7Aqnm/pa3KRNWeCBUcLEjI9aO0VGXRyQ/ueWAY+8NH1KOpmjmJOo/pvpgRajLYcblq4eHSIfkvZe3576GI0a4e23iiiladhOtPQiCSuBooAGD+NjVLCTyvT7JhaYSGE5UfmI2L+49OLRQi8KiUirmfrOYehYJdA6vJffWm17MrYqTRS9uHuT9fEBzGb+x/UcogohPL57m6fneJsqpx7hxgmbXhY8Z5wrr9Hm+zK2A8ljV385TxYLtvFCHvvwC0jnvfHGPGd/yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I3YB3nZjQirzt8XfgcsMNuhn1TuTIaw9R5+wIH+G9Ro=;
 b=C6o+70x6he68BM1rn6ZGRjiF2x8Lv7nRF5Enp6MYYDpzwGH6RNfVu9YNOiKCCDTj0iyej3flxAkLRbCJ0lA7auppWqLWgBVhCLsGYP0YeTq3yoXMfSzp6iaqP1bkPdmPCZlWeel8OSZH0iqkmcOoVljNgr6O+4+jbAOuZUu3EHjnrnCEiGtCK570njw4Rplge6WwrJKxImBIjBEsZ77tHLMgvA/R8hFB2n/+amxbZDtT90FgBWx1SEEW1raYETFRx7s0jA2iI2r+DB7uDXkv6BEUsCbJSddAEpyCLV+C6HD3/3CS/INXKHIFpD2ipCVV4B0u5ZoFZA3cKFrrQrOBsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5071.namprd11.prod.outlook.com (2603:10b6:a03:2d7::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Mon, 11 Jul
 2022 20:16:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.025; Mon, 11 Jul 2022
 20:16:59 +0000
Date: Mon, 11 Jul 2022 16:16:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Message-ID: <YsyFNxt50Sum6i/f@intel.com>
References: <cover.1657522157.git.mchehab@kernel.org>
 <165752775394.5765.13401758688586115512@emeril.freedesktop.org>
 <YswubgtXmR8BL/Mi@intel.com>
 <20220711171123.3849fa64@maurocar-mobl2>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220711171123.3849fa64@maurocar-mobl2>
X-ClientProxiedBy: SJ0PR13CA0023.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 71c60c3d-b5de-4fb2-7b40-08da637a4ecf
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5071:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fenok4Zp/1bhj6QYW/MXDpP33/sBuiuyVXm0XsBIUTxogOOAmy1nDlMAtk5CmebMARfp7nvS81EbHSG0wnjPuGv3wgMc0fEtau5yiumY4tm64GCggzWrxrbvnuVBL9b7QEsaTqv0d5tGE+sjA7Xd96GidU+fk8HEU6ppkt4oPt1Y5ASPCpDPUK1NmxHMvC2yJ3Hqv8B43j9giCHf0G2DdfGvvfaP9tT8W1rkq7k5VxXQyIIss6OxSUfLKt256YRsuxHdoYqXXBcafAjXpg3jbyKcWU5kQ16v93lNT2qmqzKju66ObXIAT5K/b3dLddbvOm82r3Jj9UdUAAGA1C+8+3P70NIRRF98s1FbNrTBnmWr2prlAVhpBFcV/nFlWvLJX7IWY4Y3KdtfGTlp0y53otC/GZUOLtmRfm2knk1RjoqSJAHQqCHn8Z1pBru3la4NakTbhEHiifBnCF6OBz0aPnEl0doRHpTI2bNc1uw7A0zA7tcsI7nhH5G3Po8WrQ2arkGhyant1WJAcLRVvuFBGd79Uu79mfK0XpecPGaXT72CtC/RGfjhcDWnVcABrWUpWt+aj3C7fy/oZyP2pCcAzGHA6ik7ZUsQHDFQgBbZY/5Rp8tLSg6tin/bAVLwBcSbFVv8n9R75hTYSp1YWncX27IVeeJBLkRF3IrSneRoJJ/SaqwwLj3JcoW8UlETv0EE9Iyq5tbnSQodcRPMZFNk4lJ2hOsn7+XBrdkPchTTo0bZjCMRDqX2njGZ04+bIPSkrItjEQGDqCBzfMjJU3BkzZjtotGPxjl9cec8XBrmDOYnVv+20Usjf4dLcXwgh/ch
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(39860400002)(346002)(376002)(396003)(316002)(4326008)(6666004)(38100700002)(66556008)(66476007)(8936002)(2906002)(44832011)(41300700001)(5660300002)(6486002)(26005)(966005)(86362001)(66946007)(83380400001)(186003)(478600001)(82960400001)(36756003)(6506007)(6916009)(2616005)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlNwU3BKaE1hcmVUckNyUWgyMjFudjFWZGhNOElsazF4UWlNQktQcmc2cWhl?=
 =?utf-8?B?WFhOZ1hkVldJM04yazJPZUVydm5qWlNjTzFiOFNIdk9KenBEZTZpSTZ2SE9E?=
 =?utf-8?B?WjMxQ0lva1NwWFhYM0xhR0ZmQTZrN01sakhTNmxRNmUyYkpWYmt6bGh6OTY2?=
 =?utf-8?B?RUVYVzA2ZGI1bU5ZSDlrMTRLL3NpTmE5WFlvM05sVUV6SENtVjlKTmhicnBO?=
 =?utf-8?B?UkozcWNjNTdtRDZoSldIRnVXRHV2eWNROFNtNVBWSmlLSjdsTmV0SC84NWFu?=
 =?utf-8?B?ZkJxaGNnMlowSFZVbEYzdUZ3TElzWmF1N0xLdVNJd2VpQ1R4M1ZEUzhxc2M4?=
 =?utf-8?B?OG9aRXhBdFpwWXlIQllQQzBueThQYXgrUk9TUkZIQVRsM2o4eWJKbFk0ZXRQ?=
 =?utf-8?B?VEk4MUJ5dVBTL0cxL0g1QTk1TEFYSW0va0RrNmtQNEhUWXI3WFNuMTM2Tk5t?=
 =?utf-8?B?dzI4UGJzNWlrYzJ0L0lYRHFSZW90bVJ6NzF5TU9BdjlIdlRmWUVFNW1oVUhn?=
 =?utf-8?B?blVKL1IzdFY1U3RSTUEvVUJCSHZCa3ArdlRKVjUwc2syNDVOa0NPRTlJOCtG?=
 =?utf-8?B?T2RtRTlQeFlMejVneTlxZ1dvYkdxamsvNG04UmtDRTNBemRnanMzUmZUOEZv?=
 =?utf-8?B?NFd1WS9qYWNRcG1hZnhGeTlDdldwTGhvNEVyYzJRb21VYU90eStTQXl5TUtM?=
 =?utf-8?B?QjlHS29sbEFvdnFBY3U4ODU3WWIvS2Y0bG9yUEx2Y1ROaUUzM2poeml0Sm5T?=
 =?utf-8?B?cTlMVTJLaXZxM1BXNnlmZlIybXFYTzBac1FBY2FhU1E1bjlxcUxORldxZllj?=
 =?utf-8?B?V2hSbjVZU2hTTUhUUDJKeW5YaFlyUG1SZFk3RTNkYXB5QzZtb2QxSTMxNi9s?=
 =?utf-8?B?QnVjNXpyZ0J3aDhJbm42RXpYNkpaRUJINXNyUVZpeENZR2IrQmJzQ3pEQXlo?=
 =?utf-8?B?dDN1VWQzdEtRR3R1MllrdDNGRGpKTlBmZkNRQzJmNEUyd0pnSGE5enNKN3dD?=
 =?utf-8?B?NFpUclR5SENUM2VyU2cxbWZMd1p0TTFxZzJ3L1pHQ2gyQ2JWZktMeUFIKzRH?=
 =?utf-8?B?ZS9Nc0F4YStzQVArUitDUk9PTUxFUHg4elVCWkxHRUdnL3RYNXgzWmhGcmZo?=
 =?utf-8?B?UVYzejlsZHYrUENPZFEzanU4ZzJuTEw5N3NKa2hueUxiUjV1Q1REeFJiZFZv?=
 =?utf-8?B?VUdWYlk2di9SeERKOVhHOG42K0ZjUDZXRTYxZDdod093VHFONHFqSnpQM3lJ?=
 =?utf-8?B?bVBJSnhZWElpS1pKcW5YNkVlTHQ2aUVMRzlmVCswaEVieDd2cWhtMGNhcmRp?=
 =?utf-8?B?ZWZwQ1JqeHVPbVdQKzlzTC9TMElZNGZwQllJNm9TdTB5MVIwdVJFVmg5SlZ1?=
 =?utf-8?B?amh2cU9mVDB3T1BISHB3aHJ3bFZOYU1PczVwYS9FMG80N3hScWd5cHV4c3BG?=
 =?utf-8?B?dm4xbVU2N0o1L3p2b0gvRXVWUTdCSDJjaW9nR0cxZ0JaOWtYWm5lRnlXOVBP?=
 =?utf-8?B?dGtDOGJUS1NKNThnUTVkU1VNaDhTdUt4anUrWDNDeEp0WU1RUHZrbUFBSG9C?=
 =?utf-8?B?VEhXVW9SMWxYbTJZMXNnOThDTGtFaHA0aWgwanp0Nk9tL3RzaXNiczBFUklO?=
 =?utf-8?B?cGJaODRPSkR2eUgwZVNxczNGUnlzZGE4bE1kWkxqWXRsano5UDR4SXN6dUNZ?=
 =?utf-8?B?ZVhjUXFEdk5VdVovMzBaS2gxcHRyNlVBSDg3czFmV2Y0U3gwdGl5empTaUZP?=
 =?utf-8?B?ZWt2bUVjZXlyTnRUc1I4UlVpM0Yxc3RUbUthT25HeXdPSHV6K3lRV3hpc0tM?=
 =?utf-8?B?cnlHN0ZaOTA5eEgxL0RFYVYrdXhzSHlUL05KSldpNXFhMWFycWI3N3RTaUp2?=
 =?utf-8?B?d2lNanJZNzFjVHJzNGxlckNKejgwUkl1djVYQVpSd2o3L3JBUVM5YVBBQTk3?=
 =?utf-8?B?TVlrdzIwZWx4TGdMekxOZ3lFcEZSd28yZGFMZUs4NzBRT2V4YkRhRTFXckw0?=
 =?utf-8?B?b3FjcFFhdDlMS1paMER3dXVqZ1B5RTJsSTd2ZGNlRTFrejc5K1hOMWs2eEhC?=
 =?utf-8?B?YVJvVWJ4d29zd2pSRDJ0ZnpIK3YvTnp3QXkvbEU0a2V3blhoUWUvOFR5TVRZ?=
 =?utf-8?B?VExzWEtwdkN0YzhHK1k2ZHY4bFJydGdTM0dOamFKYlR5aUpSaUZmWTJkTU51?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71c60c3d-b5de-4fb2-7b40-08da637a4ecf
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 20:16:58.9163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2iLwxQlEZ6mDO8qQZPe/jvPtueTAFHxtFpKjl8uGrMa1fwir68r0anOFiIXWSHc+Vz4TCPui9A/A2LcptmxUBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5071
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_TLB_invalidate_issues_with_Broadwell_=28rev5=29?=
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 11, 2022 at 05:11:23PM +0200, Mauro Carvalho Chehab wrote:
> On Mon, 11 Jul 2022 10:06:38 -0400
> Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> 
> > On Mon, Jul 11, 2022 at 08:22:33AM -0000, Patchwork wrote:
> > >    Patch Details
> > > 
> > >    Series:  Fix TLB invalidate issues with Broadwell (rev5)
> > >    URL:     [1]https://patchwork.freedesktop.org/series/105167/
> > >    State:   failure
> > >    Details:
> > >    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/index.ht
> > >    ml
> > > 
> > >           CI Bug Log - changes from CI_DRM_11862 -> Patchwork_105167v5
> > > 
> > > Summary
> > > 
> > >    FAILURE
> > > 
> > >    Serious unknown changes coming with Patchwork_105167v5 absolutely need
> > >    to be
> > >    verified manually.
> > > 
> > >    If you think the reported changes have nothing to do with the changes
> > >    introduced in Patchwork_105167v5, please notify your bug team to allow
> > >    them
> > >    to document this new failure mode, which will reduce false positives in
> > >    CI.
> > > 
> > >    External URL:
> > >    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v5/index.html
> > > 
> > > Participating hosts (45 -> 42)
> > > 
> > >    Additional (2): bat-rpls-1 bat-dg1-5
> > >    Missing (5): fi-cml-u2 fi-hsw-4200u fi-icl-u2 fi-ctg-p8600 bat-jsl-3
> > > 
> > > Possible new issues
> > > 
> > >    Here are the unknown changes that may have been introduced in
> > >    Patchwork_105167v5:
> > > 
> > >   IGT changes
> > > 
> > >     Possible regressions
> > > 
> > >      * igt@i915_selftest@live@gem:
> > >           + fi-elk-e7500: [3]PASS -> [4]DMESG-FAIL  
> > 
> > I also believe this is a false positive...
> > triggered a retest...
> 
> Yeah, the latest test gave success:
> 
> 	Subject: [Intel-gfx] ✓ Fi.CI.BAT: success for Fix TLB invalidate issues with Broadwell (rev6)
> 	Date: Mon, 11 Jul 2022 14:53:40 -0000
> 	Reply-To: intel-gfx@lists.freedesktop.org
> 	Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
> 
> 	== Series Details ==
> 
> 	Series: Fix TLB invalidate issues with Broadwell (rev6)
> 	URL   : https://patchwork.freedesktop.org/series/105167/
> 	State : success
> 
> > 
> > hoping to get this series merged today...
> 
> Yeah, it would be great to have this merged, as it is a regression
> fix.

we got yet another false positive... I was tired and decided to ignore and move ahead.
but then I noticed that the author and sign-off-bys are not right... :(

please fix that... the author needs to sign-off-by... 

> 
> Regards,
> Mauro
