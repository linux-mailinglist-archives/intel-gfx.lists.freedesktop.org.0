Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A266070B1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 09:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B2510E5CE;
	Fri, 21 Oct 2022 07:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC6A510E2D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 07:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666335989; x=1697871989;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=uqpsE3KcHugASXQarW1Wc/VHVptmNNQRey5sdlWkT5g=;
 b=hJUm8seNSabPLVCENfzmnXAzT1TPcG5y/W7lv14fc5BHD/eAurbIR+bG
 40JGhYhFoLuFsQFWRjs4jRcOWGR3BAzkL2yiBrEbgGZr6UlRUermEQb9A
 WB3wb7toGoGFnosCd3Z/M0aaXubM8lWxUkdi2hRxrpiH0zowUcVX2mT/g
 iKbGCa6y/AxIsVke43zBvCBNXHhUS3gZ1IEc+wf9ni6nMxJivGYsnF5id
 Akm+MfL22VeuAWKcCB40xPJI6VxdbKniYM49qbwcD2BNQEdeKwTCewfHE
 u7RMuL/szeJOoFvubk3beBvyBjHeTsAmNQTaGJ8UkDWuF2T3IrA5URwEU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="333507345"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="333507345"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 00:06:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="875518488"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="875518488"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 21 Oct 2022 00:06:20 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 00:06:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 00:06:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 00:06:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 00:06:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RwXMlB+AqNPrRy5SUrZMKcwj95b20+ORr0v89gJGW+NBEDR2G1F/QT3zybfNK0/9igiT3Wj/RDhW7Yzh3+FOJ57ktbSe5AeDSphXTzEZPWswcwJY5cnSnjZaJLQNDB6ClevlX8d1geprQPkJWlFSWhlgDcUX7D+gzy+2bKFFLh3HQsb/jekwhtgCNAnh0mf2W8YsTBpP5j0k8OrHcm4bGyPXNjZC5ZFexF8kNbLtvoVOluktJLmJnqcLN0XEzgpq/q2cyLwkEk6ukjvqbKjEmBuFNAUIknduGnU9sh7aivSyYmqQ55qtqBEklN5P5Yp2ZzKO6yka6BzJ6sFzn8vxUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mfa97P+xtZtwx+QHW7HsbLTlKMfBW7R9ANK2DtiU4Gk=;
 b=OUoYlqBplZ8yWp0lRP5e+XmssYBjVYOOeuQ3HdWIKD94JlZ9XtMBuOwJjfNZ8nezLRvfJb4CdaHSq2rYgB2Wr6/9NFWMelK6CRYoq8i08Of4srJm7XjzTv7yfs/tW9KhTh9Zx8ozDFfT2Zbp4v089ZglPaimlX4dWCvTcGbrN4ZDi497HmKRccVus7uoJuxp1DI8fGygPAkGxsboVImR7gRaxbhAmvuTBbIHPZO/Ep9ywa3OZNgbZ0Rrhjoaeb7oenq/ngIv6fHX/2VIHQOnZZ7lxCrViqsjl6AVxkvCxZpJU462oGpgzhEHhyJ0dLTQbKUWlr7WE47v26VNsU7ElQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SA2PR11MB5033.namprd11.prod.outlook.com (2603:10b6:806:115::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 21 Oct
 2022 07:06:17 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 07:06:16 +0000
Date: Fri, 21 Oct 2022 12:36:06 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1JE3kDZXBBjKOPz@bala-ubuntu>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221021002024.390052-1-anusha.srivatsa@intel.com>
X-ClientProxiedBy: PN3PR01CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:95::23) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SA2PR11MB5033:EE_
X-MS-Office365-Filtering-Correlation-Id: 92485d88-f447-46d6-3528-08dab332bec9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X/Q44eZPMabbROwo8Y0BNOhpfC2moVjg5NzVsl7O+BU2EozTpJYd6SE7plJH8lfsp8tKQvaopznhMFlYceEa+AbBSPdMbeoqbVW8IBsQDoP4845KFeHLmlSPgB1vHalUB23okyYXxZ+zVcyQgR313Zs8H/792+o/6/USNju5HF1tRFOiOyK8GwZQ/0yxPxHxgsSy3V8LeSKpOdl0T0laJcmADrQhzS0U4yd+l2x9rYggO+qILEVmaqVUN5F50EEM/sjG4VJFgnpO4x3+G9dWfYlGquV/hXqw+Sr7UgsmnRLIRExlkMSs8J9et7PR27Mom986PEp47s+S8rJNAspTL5ef1l+c/DFq6GBgsV428VDR3OBQ7zaVZ7Q+ac7EVIvESbd4AzPeavfqhclopSGfmf2jwL/ei6jquyIPYvzb7PL69auIoyCf4gUvveN+FNGLKdkiXuFDM7XM68KmMyWdYbW8ueJtwTrx9XfGYah5ZoE1hrLVnf2Q3l3Saowgi433bTpWQDTdiFSexpDDNDhKESf3xWpblQGigyRxA1D/ddyzC8TxYDwB8MqmHnfDi3lDXH1p+fI7qTjJ8WKwKODMIeRNi7m3Cv4Qe/MYE2+cOa04bMHp/XxnF2boe0qykwt7O44EnCzWIUiHPlxpzEx5ZA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199015)(316002)(186003)(2906002)(6512007)(9686003)(83380400001)(41300700001)(26005)(44832011)(5660300002)(8936002)(86362001)(53546011)(4326008)(8676002)(6666004)(66556008)(66476007)(66946007)(6506007)(6486002)(966005)(478600001)(38100700002)(82960400001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkZBSER0OGZVSTBLbFJkSVIwOGNaZ3JhT2E3c01mc01qTHBmck9Rck5uY00y?=
 =?utf-8?B?NjBoYTFxellGVXBlNzJaampaejY3T1pxUXRNZTIvanFhWlBZRzB2TThXU0My?=
 =?utf-8?B?N2M2UldpSitycEJHTWNrY0FNejRXMmo1NzRYazJGUG5UQWx3NFNEZzNiREpu?=
 =?utf-8?B?RVpQR3BYK3VENUlCQ0F3di9CdmUrTU52NkhBbThSbHdBajZwQkYwTVk4NENp?=
 =?utf-8?B?TU5ncHpxSmlXMVhiVHNOUGJUcGxnR243bzRjTURLbzZXaXFZYWRDOXFpdHZU?=
 =?utf-8?B?TGo4TFRGOW9mV28rRk9OY3RCa3U0cmdhVDRrV3Bkdi9PbXdadW5ST0wvWWR2?=
 =?utf-8?B?TWRKNUROOVBWclFsYXRUSXRNY2lmaWJlM3VxbjFnd1pvT3grbW1tTWkxdjFY?=
 =?utf-8?B?R2FWTlFURFdCbjZBNkU3MG11MGZLTFIvNHJHV2QzSUo1RDYzUzc3OFNYNS9V?=
 =?utf-8?B?Sk5xcjlVQTNLQlU5NVJWQXBrV092NU42aFNoRm94TXY3S1BJQ0ZPMmRKaE80?=
 =?utf-8?B?aUo1MExqL2ozN01ZN21YYUpCRjM5c2U5RityaHZRelBvSWhZSGdpV3B3SHg4?=
 =?utf-8?B?YmxWMVkySURMREtmbDFFUEhLNlR0WnhQNVB0S0oyTGNteGpxVG1JN0RxeE8v?=
 =?utf-8?B?UHdYTEt2SXhuODBnRElsMzlUR2hBcXh4Z2wwaVZScTZLaFR0TlBCT0VtSTFi?=
 =?utf-8?B?alFHWkdnQXVyTytHQXc1ei8xYzFyNytha2JqeXk3SHlJNE0xWlNYREtyelNV?=
 =?utf-8?B?ZnB6L000eW1Qdll3ZnNMWE13NHFqN1F2M1NXdmUvV3FKRnRrdzgyazREbHlO?=
 =?utf-8?B?dDhvZzQwTWJ3OHpGc1kyVEtCT2VuK0xCTFdOenBucEVjdUJ2enRuTTJ3Sjky?=
 =?utf-8?B?MlNseWh5UVVJNC9DR0cvU2ZLYlNGckpJTkFORUN6d1FyY2o4eE1YL0w3VTRm?=
 =?utf-8?B?Um9FWjJkRHordFJDUnFxc1hDMmNGZGQ3anE4cFJPeE9KUHZ0ZUJTNG1YbkQw?=
 =?utf-8?B?bmpGOE1wcUd2Ukk1aU9Cekx0YXZ5WFJqaS9xeVhvelVodkpXQnY1WHJyeC9O?=
 =?utf-8?B?NHFaak41RDF6SVZFN0IzQWNKQi9XRzl6ZXkwVGZzRXNHZzFvSXpZRWNIYVR0?=
 =?utf-8?B?L200cm5ycWUzMHJwSFhpazdocFFrLy9IVVZhRHRrTnRTNmJrYzl0K0UwcVg0?=
 =?utf-8?B?V1JmSzV3M0VoTXUxcU9qWU9mek9URFJmdjZmeWY2MkRONm5lMGVuZDFhMSt4?=
 =?utf-8?B?YVE5VWxnV1htTUdnRFdNaG5JNWVKeHR6bjlqWnE0Y1hwRzhiUUQ2djNhWTR4?=
 =?utf-8?B?N2FtM2ljc0RYdHl2Z1RsY3k2ZjJmRTBtSERxc2ZLaFEyQVROYWFVVG1ubHEv?=
 =?utf-8?B?TDlGZm9PU2dWWFBET3hTaG1abU5OOW0xRUFPTVMxblNDa216TGtuZXFwQzJw?=
 =?utf-8?B?UlFoMTBkYlBqdjRIcUw3ZTB4Ly9JQ0RCU25ERlVEdHRGMDdjc1BGNmdKWDEx?=
 =?utf-8?B?R3FyVnE0ZmswZDhSS1lyWVRLTGN5Y0RJc3dFNkFVSno4Q0w5M01QTHVNZUUz?=
 =?utf-8?B?YTgrdDRNY3FoVDYrOHFEQllzMHhaRGNtRTloRDRhbys0d29lL1JORHJ0ZmVW?=
 =?utf-8?B?Y0JvVUlPZXc3bkpkcXM0WkROR2pKek8wZFVDOGpERzRPcXZVYkFyYTdkeS81?=
 =?utf-8?B?dmppRGVGUHZhOUh5a3U5MXVDRmljY3BkTFdMM05mdzVnbFBQNFQyUDZQRFlu?=
 =?utf-8?B?Zjd2c0RNMGZUYXdleksyVEtybWEwRzgvWUhGbC9UR09mUXR4eVlsdjBaSHZ3?=
 =?utf-8?B?OG9KQUJpZE1LYXZaQnRiaHgveE41L2RvVmt0TzA0Z2YwSVRKT200TEhTVURW?=
 =?utf-8?B?NmpCaE16ZFhCQzhzS2kvdFVyOVFDT29tNE03Wmd4RDcySktJa05LM1RJWUdI?=
 =?utf-8?B?S0wzQjcwV1hnSW4wRTNmeVhDcEplVlhnaGU4cFd1S1U3VC9iVnFDTWp2bHJS?=
 =?utf-8?B?MzJOQmlRa2NQMVpNekV6WURnMVNXbWxzQTNWTWdLbGxPTkl0YUkxYTFqMENM?=
 =?utf-8?B?TkcvcHV5NUV6ZkZNTm0rZHlxV1kxd1VrZVM2cllWNGNWS3FzSXVTOXgxNjE5?=
 =?utf-8?B?d3U0Ny9kMTk0UCtlb1poeWhOTjhJY3JLamNja1VoY2MvaWR1OHZ0KzFYc0Jo?=
 =?utf-8?Q?tK+rJeWlXixRN9rut/85nAJsve548w6oGH4F8L9/QlgG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92485d88-f447-46d6-3528-08dab332bec9
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 07:06:15.9127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ei2nqDHro2dTlUh9jxIeaPTMa0IHYKRDUq0dcBEG3mtldMPyhnx85oXYPt3NmMfphK/au9fVnD3JqKzwSXKK2iRgBZbcTO4x9tZb2MWGC7MNH4QEko927QFoIlGBzImb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/4] Prep series - CDCLK code churn
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

On 20.10.2022 17:20, Anusha Srivatsa wrote:
> No functional changes. The series is more of a prep series
> for the mid_cdclk_config series:
> https://patchwork.freedesktop.org/series/109694/
> 
> Main change:
>  - Change usage of "crawler" and "squasher". Use crawling and
> squashing instead.
>  - Handle bot hsquash and cralw similar in terms of checking
Please check the typos here

Regards,
Bala

> if the platform supports them or not. With the changes introduced,
> both are a display feature flag.
>  - Move code from bxt_set_cdclk() to make it more modularized
> and easy to read and understand.
> 
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Anusha Srivatsa (4):
>   drm/i915/display: Change terminology for cdclk actions
>   drm/i915/display: Introduce HAS_CDCLK_SQUASH macro
>   drm/i915/display: Move chunks of code out of bxt_set_cdclk()
>   drm/i915/display: Move squash_ctl register programming to its own
>     function
> 
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 80 ++++++++++++----------
>  drivers/gpu/drm/i915/i915_drv.h            |  1 +
>  drivers/gpu/drm/i915/i915_pci.c            |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h   |  1 +
>  4 files changed, 48 insertions(+), 35 deletions(-)
> 
> -- 
> 2.25.1
> 
