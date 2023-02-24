Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BCF6A1A8F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8096310E7BF;
	Fri, 24 Feb 2023 10:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1256110E5CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677235701; x=1708771701;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Cf4YtqBcPPdMiZcAxW9KUcr7ZJDgV9H+spGru1q2GUg=;
 b=EooDrUJKE8gB8o8Kr8JV/ZFFkgG6mH/WkPeQ/97bCj0MYBNsAYgWKJxr
 XwgH9D6DpOjzFOXR2AoWDhs1VSiDmQO+Jndog6wJpTZ4X6lfvmyoY+QdM
 jU+o2bAKw2L3BGssi+IXcxnl8EpKMJ+wmz2BUYDPXxO2h5OhSIVA6mm0P
 R8Xm5PRYDqj+AH2EWVha/rFrDim+l5UUmfW5ptoB9bgJ5z8jhuGUh2qOL
 8GkkKfZd2N3Vj5waxdM8fi+Z/qxp3EGbfsOmMX2WsVvMmpm2JiFbF2jAC
 GCmMggzYLPoC1WQJn22MxWQj5wdHsI7sMNy7auMavSKrBM60NdqaqEikS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334869279"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="334869279"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:48:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="782316092"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="782316092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2023 02:48:20 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 02:48:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 02:48:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 02:48:19 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 02:48:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSmrZKvJJ4rGInYFK5dg+cqsaxZgBUXf+BqT+90P3IQ5YvH7pwp47sjCCnYO9YXWC9a9T8cm1ef8ZIu4VUL4EfS2YMPXcbYYY+AkTJoaN/xOJqBP01raVSnygG1Bz1IwpraLzWhddbqALMC3kW3AaoPo5qqdrUOeCLgMx6wswlUN603EzCPi5VWY5ml61kwRnkrtUfJf3RXujStG8NeZkKyEFUH8zAig0/hSg12WX3IqMBa8l7VllDKtnvvk2MhbU8FTf845C2zmciqifH/z/asO7Vbs/+mC2BRvB5Wz4v1uz4EIYRsUDYXh+UC0K5XJSVDSOalIH42QMr053SC+Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GyyBADEousKlLMJ9DCG7F46Vqd0DhE4W/aWdKkAE8WA=;
 b=EItoeRdOcy8a/pOfm8aypImB1DwPPEJ3Lj3Wg92FzQDCtPZZK8EqI6k9/Ej6Cg8l15d30DQ6ir5qRlkg3Rku65gaLohMM3IEZ6RmkFGTwzu2rHgAXa1dZQjaKmbwDTHfmIxfkuMwMtK3e7CWWTCXYjJBX48mnfwje2dgtxcbP4eCruPpE4kAb4WHbWOXGAzEiEpp1f1uF01jUAjoK5fqm1EdK9+YFpJqsuEubJEeH8ZuULvl8TszvHyUtaQsUk+NQbkmqsjEbwkL/sRwnjglfc70Lgx2rQWGhX3nr9TUd70jq7iB7/G9WPlv+H95sex0glgEYvfgooKDnSJxYOxgvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO6PR11MB5604.namprd11.prod.outlook.com (2603:10b6:303:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Fri, 24 Feb
 2023 10:48:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 10:48:17 +0000
Message-ID: <26188255-e313-9bd0-c412-e98f1b5f52d0@intel.com>
Date: Fri, 24 Feb 2023 16:18:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
 <20230220122401.3495507-2-ankit.k.nautiyal@intel.com>
 <Y/PMEw17pIR+WSXM@intel.com> <b24d9ab2-a566-e929-0b4f-08bb46ab7e08@intel.com>
 <Y/egVpk27RADCGjA@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Y/egVpk27RADCGjA@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO6PR11MB5604:EE_
X-MS-Office365-Filtering-Correlation-Id: d9d33395-af34-4e0d-c5a7-08db1654a30d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k/cRU3RVqI5LUsquH3SXp8vpUFoyxJkF9LtVqxCuQ/rO1ptSSBYYrzjTqwAEDWWLOmFR83ZbdVfBQOrE3DDQI6zVA1IfN71IY0Qqfh1J/3IPoi8ZNaMzN1PrC9o9zwk0XtGz7s7qXy81U5t4L9ps3vfDgV7EAc40OhfSERguzY2gWO3GIZg7RDwCTKyng6c2z6arPJn5wykYMaM04tGte/ZjmVi3FehAETy205tsuhBN6E/50NBfEhZomnlnfw20Q8FLvH7ka63rOyvMHHW5bU6lprZMWAdGDxTck5/6UDPtG7O7CMfXvHHr4YxLtzg6ABaMghtr9s1WOBQO8o2662mKW3u5AD9o7NqBLlrTQF6XrYvAW+vKFG+q2sIxIW4FeQ9JMCdhW5Ajc7e+uXd+TXT0F2qK7QlpC/E3gXVg9PQLQa+9agvF3tDxcGCKd2eY6BcCp2Ixuc4kspWCrZ5Xahkc9ni9R0OhDSLQ6FgdYatAJ7GA0U4kA2LAJ1/fmkASs5lUltL+A/CJES96jzPQs9qKjWbL1hRyikURNC1jWOsS5kGNX2J1wc1UzD9NqHrHg2IasIMeCa31rJmDnoP7LBbK3MVSnUmKtjwW48TBkQCIadTCnSbFk7wQJKX+e2mRBFXQBzCQf1G3P4I86WBcxfZUgCKXaXVZEKd4ZnBg7FicQBsV8jGSWQZ50U1yoEgrRGoDgdY70xkXN8VxD1PVN5Kw6UyfABoIuDvL6gkdbuo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(376002)(396003)(136003)(39860400002)(451199018)(31686004)(36756003)(31696002)(86362001)(8936002)(41300700001)(2906002)(38100700002)(83380400001)(82960400001)(5660300002)(478600001)(316002)(4326008)(66476007)(6486002)(66556008)(66946007)(8676002)(6916009)(2616005)(186003)(26005)(6666004)(6506007)(53546011)(6512007)(55236004)(66574015)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlRqaGh1TElTOTc0WW9jN29wZXM5cnREZHNUNFo3alhIcmRPOFFqdXFtMXlP?=
 =?utf-8?B?RTMrNWZ4SkoydDA1dUxmRDhSdmdxaTVOdDl2KzhVSWhaMDFPWnFvOGVGeUNk?=
 =?utf-8?B?L1AwMFF4TGp5QVFYMHRNZ2tCSkw5UC9zaWRFKzFBZ3lJWjFtVC9EVVFlRy94?=
 =?utf-8?B?RmQ4d284YjdMSWJTVDBlMjZpVFEvU0pHM05qTFU5ZVR0bUMrWXI0U3ptbjdm?=
 =?utf-8?B?RGlqRm1ZSzl6UnlIYlo2eks0Yk9zUEVKMTZTWGhQbC9ja05udVlyaWpLQzEy?=
 =?utf-8?B?TGVBMFNnKzlBT3NJR0U0L3F6anQvR3B3Mzd5SlR1bjVYQ0tYeUhyY2daenYz?=
 =?utf-8?B?ZzNaeEJBVmM5cFg3bnIzbGdSNFI4Q05EZUpxZThsMW5CZzdrb2xwM29FTjJS?=
 =?utf-8?B?MHYzYkFVbkxqWE5WbFBXeEdISnpURng0ZEVpV0lJQzFSWEJ4YkYzTWsyOE53?=
 =?utf-8?B?OGlwcHNvVmtaM1B1U2ZFcXZjSURIdkN1T2cvR2p2Z2JhVUVXUHIzbUpsbDFW?=
 =?utf-8?B?aDV2ZFhZcndLTmlOK2xJNHo1NUFFNzgwTUNNZUsweCtKdlUwOXRmUVpqM0gz?=
 =?utf-8?B?ZHZCOHpEZ1paeTNoZUlybnlXYnhLeDRuaWtQWVRGQUJhWm0yd24ycDJwWDQv?=
 =?utf-8?B?V3k0MjFaU3VnN25HdGJRaDBvMGtlcnZiQXRsMDZiL2VqWUM4YUFPYTJRdmNV?=
 =?utf-8?B?cGRtU2lUNkdVL2pOT0V4cTZldVQ0T3RWam9ic0FSUUc2NXBOcGlOMjBFYnp0?=
 =?utf-8?B?OHE1TXgwem40SCtVY0swQU81RktLTUlRRWc1anNHanp6NUdhNHFmekJDOGV0?=
 =?utf-8?B?S1hUejZmaWxpR0p4TnVMVmZIdlBiN2xUS09HSjNDSnpJdmUvbHZyUWJuaU9S?=
 =?utf-8?B?bkNaMFVnZ0hkTjdKUnFQdVREV0xTRlh4Sk45eURGVHFvNklmTk5vdFZFNDlv?=
 =?utf-8?B?ZmJVWkV0RTBQb2xpMFlwblRXSHJxMjNadWQ5MUtjWGpFdkloZWZHbnZQUnV2?=
 =?utf-8?B?NzRhZWRzUnNONFRaOWp3MEZzMlVjV0djekNSYjV3TUZScVkvVUE0M0MzTnVl?=
 =?utf-8?B?UzlQOVk5ZTdBOVJHNXJKTys4dXp2VUhwVzl1dFZrelo3aDNZU1lmVTJvdWIr?=
 =?utf-8?B?aktTYXV5Z0V1MEFwdVhkUUR0UVpWYUdnRDYrK21rVW1GSDhXVTNCZ1pDRHRE?=
 =?utf-8?B?aGRwNnVsQW5PNFVIVVo4NWpwakVNaTl0NC9EYU1wSXNHeVZKdWMzWGV3dE1m?=
 =?utf-8?B?eU5UckZDbXlHcU52cjFsdnVtQXNFeHdpUTVKSW41eWcrL3I5dkhNbDArSHg1?=
 =?utf-8?B?M2N4YklTS3F4eWQ2L1AyNkhPMkR0NzBnUmVyNSt6NDNuNm5UeDJ3Y09ZNTZN?=
 =?utf-8?B?d2JVOW5aVDUyRHU2T2hON0RjOExUK2g3eXFSV0wvUTQ3dmVKVWdsLzlyRmJE?=
 =?utf-8?B?RWdnVWwrVURxSFgwZzlsQmJMSVVWaVI1Vlg2YndxQllQM3pFUEtXcUJ4eXpj?=
 =?utf-8?B?TlhCUjJoRmVsU2xiWW5rOVNGWW1DbXVtZFNmL1B6N1pDS1BMQXc5MUFwMzFi?=
 =?utf-8?B?RUlJRjk5Q1V2RzgxUExxZjcyVmtNTTM1YlkrMmp3dVZETkYyZXRoYlFDVDdT?=
 =?utf-8?B?MjltcTkyNUEzWjkxNVg2dkZXOTQ1dXgrMHRpT0w1SkpXM0p5aFZvUGM4WCtr?=
 =?utf-8?B?Ni9tT1M0YnNMb1RTT3cwNVBad01FbENPOEtTcmhYN05BKzVSOFZZV0lDcEVO?=
 =?utf-8?B?THkxbzRhRmFpR0RjblNTNXJ0a2Q2dTFYb1gzeittMy9sNzFqVHRNMWZ6NWly?=
 =?utf-8?B?aHFJdWYwRzZ5akJNTlR0VURYSnduYXhxT0NqM2cyc1JtOFJRQjduNmptL2JL?=
 =?utf-8?B?U2dNMlVXcCtiM0gzZVd3cUFPV0FMb2ZseXRMVjFDZ0hhRjlmTHlSKzNRa1VS?=
 =?utf-8?B?VWJ3K3ZmOHpGNkNRbml1d0hBb1lnNWVLTXBDV0pMeCtlcE9HTGFtNUoxdXg4?=
 =?utf-8?B?N1p1Ym0raFZwT09xQTV1clROeWFOcVhLUzdoRDlWSk9oMktWWDFCLzJrdG4r?=
 =?utf-8?B?b0QzTFVzS1o5R0poekk3YkRXN1BWYVhsUFhzWkhKSkJjOW1kclUzL3drWWVS?=
 =?utf-8?B?TGJTcGdCb2dZU3AxTWdIZVM4eUtvQ05USlEyeXpTcXhsV1poVllvbVIxd05y?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9d33395-af34-4e0d-c5a7-08db1654a30d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 10:48:17.3896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: znMtF5cIubTTPCb6zYzLYY/N6t2rw8xcnOrSb4L1yqF0ryDCYfmAX0pS+Sugxlgp05KStgNBWHKIQx9YL4eQVwaf4NSuice+TBT0Rz0geVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 01/14] drm/i915/display: Add new member
 to configure PCON color conversion
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


On 2/23/2023 10:50 PM, Ville Syrjälä wrote:
> On Tue, Feb 21, 2023 at 02:06:06PM +0530, Nautiyal, Ankit K wrote:
>> On 2/21/2023 1:07 AM, Ville Syrjälä wrote:
>>> On Mon, Feb 20, 2023 at 05:53:48PM +0530, Ankit Nautiyal wrote:
>>>> The decision to use DFP output format conversion capabilities should be
>>>> during compute_config phase.
>>>>
>>>> This patch adds new member to crtc_state to represent the final
>>>> output_format to the sink. In case of a DFP this can be different than
>>>> the output_format, as per the format conversion done via the PCON.
>>>>
>>>> This will help to store only the format conversion capabilities of the
>>>> DP device in intel_dp->dfp, and use crtc_state to compute and store the
>>>> configuration for color/format conversion for a given mode.
>>>>
>>>> v2: modified the new member to crtc_state to represent the final
>>>> output_format that eaches the sink, after possible conversion by
>>>> PCON kind of devices. (Ville)
>>>>
>>>> v3: Addressed comments from Ville:
>>>> -Added comments to clarify difference between sink_format and
>>>> output_format.
>>>> -Corrected the order of setting sink_format and output_format.
>>>> -Added readout for sink_format in get_pipe_config hooks.
>>>>
>>>> v4: Set sink_format for intel_sdvo too. (Ville)
>>>>
>>>> v5: Rebased.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> (v3)
>>>> ---
>>>>    drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
>>>>    drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>>>>    .../drm/i915/display/intel_crtc_state_dump.c  |  5 +--
>>>>    drivers/gpu/drm/i915/display/intel_display.c  |  5 +++
>>>>    .../drm/i915/display/intel_display_types.h    | 11 +++++-
>>>>    drivers/gpu/drm/i915/display/intel_dp.c       | 34 +++++++++++++------
>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
>>>>    drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
>>>>    drivers/gpu/drm/i915/display/intel_hdmi.c     | 24 +++++++------
>>>>    drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
>>>>    drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
>>>>    drivers/gpu/drm/i915/display/intel_tv.c       |  1 +
>>>>    drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
>>>>    13 files changed, 62 insertions(+), 25 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> index def3aff4d717..2d17b2a7e1d5 100644
>>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>>>> @@ -1575,6 +1575,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>>>>    		&pipe_config->hw.adjusted_mode;
>>>>    	int ret;
>>>>    
>>>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>    	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>    
>>>>    	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>>>> index 8f2ebead0826..e925e21d87fc 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_crt.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>>>> @@ -393,6 +393,7 @@ static int intel_crt_compute_config(struct intel_encoder *encoder,
>>>>    	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>>>>    		return -EINVAL;
>>>>    
>>>> +	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>    	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>    
>>>>    	return 0;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>>>> index 766633566fd6..185cd1971aa5 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
>>>> @@ -178,10 +178,11 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>>>>    
>>>>    	snprintf_output_types(buf, sizeof(buf), pipe_config->output_types);
>>>>    	drm_dbg_kms(&i915->drm,
>>>> -		    "active: %s, output_types: %s (0x%x), output format: %s\n",
>>>> +		    "active: %s, output_types: %s (0x%x), output format: %s, sink format: %s\n",
>>>>    		    str_yes_no(pipe_config->hw.active),
>>>>    		    buf, pipe_config->output_types,
>>>> -		    output_formats(pipe_config->output_format));
>>>> +		    output_formats(pipe_config->output_format),
>>>> +		    output_formats(pipe_config->sink_format));
>>>>    
>>>>    	drm_dbg_kms(&i915->drm,
>>>>    		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 0bb429d3e8d7..cc44f0629f2c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -3103,6 +3103,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>>>>    		return false;
>>>>    
>>>>    	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>> +	pipe_config->sink_format = pipe_config->output_format;
>>>>    	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;
>>>>    	pipe_config->shared_dpll = NULL;
>>>>    
>>>> @@ -3562,6 +3563,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
>>>>    		break;
>>>>    	}
>>>>    
>>>> +	pipe_config->sink_format = pipe_config->output_format;
>>>> +
>>>>    	pipe_config->gamma_mode = REG_FIELD_GET(TRANSCONF_GAMMA_MODE_MASK_ILK, tmp);
>>>>    
>>>>    	pipe_config->framestart_delay = REG_FIELD_GET(TRANSCONF_FRAME_START_DELAY_MASK, tmp) + 1;
>>>> @@ -3960,6 +3963,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>>>>    			bdw_get_pipemisc_output_format(crtc);
>>>>    	}
>>>>    
>>>> +	pipe_config->sink_format = pipe_config->output_format;
>>>> +
>>>>    	pipe_config->gamma_mode = intel_de_read(dev_priv,
>>>>    						GAMMA_MODE(crtc->pipe));
>>>>    
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index 748b0cd411fa..c28835d9db6f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -1273,9 +1273,18 @@ struct intel_crtc_state {
>>>>    	/* HDMI High TMDS char rate ratio */
>>>>    	bool hdmi_high_tmds_clock_ratio;
>>>>    
>>>> -	/* Output format RGB/YCBCR etc */
>>>> +	/*
>>>> +	 * Output format RGB/YCBCR etc., that is coming out
>>>> +	 * at the end of the pipe.
>>>> +	 */
>>>>    	enum intel_output_format output_format;
>>>>    
>>>> +	/*
>>>> +	 * Sink output format RGB/YCBCR etc., that is going
>>>> +	 * into the sink.
>>>> +	 */
>>>> +	enum intel_output_format sink_format;
>>>> +
>>>>    	/* enable pipe gamma? */
>>>>    	bool gamma_enable;
>>>>    
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index b77bd4565864..81fbef30c469 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -806,11 +806,12 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>>>    
>>>>    static enum intel_output_format
>>>>    intel_dp_output_format(struct intel_connector *connector,
>>>> -		       bool ycbcr_420_output)
>>>> +		       enum intel_output_format sink_format)
>>>>    {
>>>>    	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>>>    
>>>> -	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>>>> +	if (!connector->base.ycbcr_420_allowed ||
>>>> +	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>>>>    		return INTEL_OUTPUT_FORMAT_RGB;
>>>>    
>>>>    	if (intel_dp->dfp.rgb_to_ycbcr &&
>>>> @@ -849,8 +850,14 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
>>>>    			     const struct drm_display_mode *mode)
>>>>    {
>>>>    	const struct drm_display_info *info = &connector->base.display_info;
>>>> -	enum intel_output_format output_format =
>>>> -		intel_dp_output_format(connector, drm_mode_is_420_only(info, mode));
>>>> +	enum intel_output_format output_format, sink_format;
>>>> +
>>>> +	if (drm_mode_is_420_only(info, mode))
>>>> +		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>>>> +	else
>>>> +		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>> +
>>>> +	output_format = intel_dp_output_format(connector, sink_format);
>>>>    
>>>>    	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
>>>>    }
>>>> @@ -2036,23 +2043,28 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>>>    
>>>>    	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
>>>>    
>>>> -	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
>>>> -
>>>> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
>>>> +	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
>>>>    		drm_dbg_kms(&i915->drm,
>>>>    			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>>>> -		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>> +	} else if (ycbcr_420_only) {
>>>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>>>> +	} else {
>>>> +		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>>    	}
>>>>    
>>>> +	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
>>>> +
>>>>    	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>>>    					   respect_downstream_limits);
>>>>    	if (ret) {
>>>> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
>>>> -		    !connector->base.ycbcr_420_allowed ||
>>>> +		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
>>>>    		    !drm_mode_is_420_also(info, adjusted_mode))
>>> still looks broken to me.
>> Sorry for missing the check, I'll add the missing check for
>> ycbcr420_allowed here and same for HDMI, to avoid going for ycbcr420, if
>> not allowed.
>>
>> Seems like patch#10 too will get impacted. Shall I send the next
>> versions of this patch, and patch#10 in-reply-to their respective mail
>> chain?
> Sure, if it's just a few of patches that get impacted in-reply-to fine.

Seems like need to rebase the series. I will send the rebased version 
with the above changes soon.

