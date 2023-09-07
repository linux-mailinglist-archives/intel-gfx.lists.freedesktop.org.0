Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 577BA7978B9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 18:53:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DED610E817;
	Thu,  7 Sep 2023 16:53:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5029210E819;
 Thu,  7 Sep 2023 16:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694105608; x=1725641608;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YfnZvC9jeNpT3bw1DobdCLGqdZWvb0ySG/am77DAWxs=;
 b=MTcuSCaS75qcM9PI6dna8r7BFPyC5gGE94lM7KQdpO9iiYdp7HDQYQbM
 qO9U270XAQtL+1p9MEI0/CgcbjJeOtaRZoa26yrLvVycRbOVt46EK7vLz
 IKKGfNnnVHqHSm41FZt+Tf44GddUtNXHxK1mpoBUh448MriY3sNB8Iw2V
 BloQWwixqiEr1d8e7xESLD01NhTtZDvS0jU5zTg9Bzev4AAtNzu40QIj0
 0DAr8PbW8B3hehqSS+NDDd3ToHR9+ozeu+UWiFivg8Ihz2+CKz2Y7+LGD
 GlCujK6mk0+9XGS5/cgjZz8ea/NxYyE4Y5L58PNuau2hrz2HJB1Sj06J2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="381222037"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="381222037"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 09:53:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="856950833"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="856950833"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 09:53:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:53:21 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:53:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 09:53:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 09:53:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNu+POexaMg6g7vc2LfKnZY6mhquLdVHahSaanclaDMbyYAJ/zHbTTXQjwI+tlLHvLkyl0nZjaxuefGVGHmuMlz+gN+nXCruSG5sMIZMlQRs2zyvBRIWQ+b7fhuCBK0OGWWFKBDt3V6LlQ9bRNnoaIO5JrkjtNs83YHvVpNBFjst8+tBh68ZtyRZXsYrWPHQgWn1cx7eUZu5h5L4cRrVWyoiAsu+DLSam/kMggpcCIV2O52h0GONifBG/jw0Uo9uQObUNoyxQXx/XlmEd8o4HQUsGqS+EepTtO4gc6A8kF5YphFP/muqraub15lqTCUTsu7S5CvFGr2Dm+GZgOL5rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=84RR1s1QUafBkLqEZeSjmb370jvx3V0yP/rhsIowY1k=;
 b=Dcoz+rB8XJkZbLI2dm+OLyY23q7gJm+6TE1YYbimFUGWrswmWz0OTljCcc9Ei8aKD+I6ZnCHPp+xoryKTPWyqIuARc56q55NPTLLY3DfcoA1YJP3EfK8Dt/uqtuM+rQ38YjqevNekcODRUBGSkZb1fnKBMEk5EbHDKqqlxYJ/hlDQ3CJ5F63sGJVa9NXnUUh2sFd67/7oVGt0Wvl/d8Ycz1uCH5COtAP2aEYNjtP2ucv0hzpWtUFKQG5aKQzrgxCD9SbjeRe5xQbkqFICb0HA4xqLBKY7fyRwS67GdFUlqvbPkY+/Hdy+oSKBd1H+lmmaMOjCVu9fbBIz34jrAoMaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5624.namprd11.prod.outlook.com (2603:10b6:8:35::16) by
 CO1PR11MB5156.namprd11.prod.outlook.com (2603:10b6:303:94::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Thu, 7 Sep 2023 16:53:18 +0000
Received: from DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::b9a3:5861:febd:8ecd]) by DM8PR11MB5624.namprd11.prod.outlook.com
 ([fe80::b9a3:5861:febd:8ecd%6]) with mapi id 15.20.6768.029; Thu, 7 Sep 2023
 16:53:18 +0000
Message-ID: <e102e00a-afe2-6dc4-faac-280e9980608a@intel.com>
Date: Thu, 7 Sep 2023 22:23:07 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-13-lucas.demarchi@intel.com>
Content-Language: en-US
From: "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
In-Reply-To: <20230907153757.2249452-13-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0225.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::20) To DM8PR11MB5624.namprd11.prod.outlook.com
 (2603:10b6:8:35::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5624:EE_|CO1PR11MB5156:EE_
X-MS-Office365-Filtering-Correlation-Id: 36da1be7-cf1b-40c1-9670-08dbafc2ef91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F3FBhSBcxpS/A1tGdS2oBS5Rc86w6GJZRjLrIB/3ytMS6qFytER+P0DrYwWtPyD1LT65b8b6HRsMJh5gvK9LFg1dcqJBTTvJPeuW3b0h5/2MhWp7toVdQtYiY75h9QkyJD8+XuJQNIchKSnWTZFk/qr5uJK3r6Qz9RX/aj0x/rsWE7D+LiFh1gquVoHGu1Imje3wuYDL8DmXg8PuM2H4jqB7s94TVEg7977cXreQO43r4X9J9jnxKOO7Jc5tbK8dn3jQ6i0HrjolTLm3ppHlL0Id+DqkyTVGlx4LD373L+ithAjVj9VntrY3YnsLOFncj+ZJ4nyRtgH6VQiTTuSmxG7p70i6l7y4kSQlgbE2c0zBwFJmYvpBzXHn3FpKb73fo1xCHn1QzKcUAZpSCbJuOrtbNnbhE5iO/wNmrZizcUkPJg89blOXRaLOAUmNiFpWVYdrsh/FSyJmVpWfnSO2+ZbGB2ykaexR1Qt78VDXVmBX7c6hIgB9nt6AOdTAYgGembCDwObMnfv5ruV4oWb+gb8EQ7+wqSV2ABpRJOAGYAxMdtW/9NGoRheb2/fgKNL884jZJMGnWLdl5eCdo4F68TlEVK24SlxGSoCzvQ4IxmeHZy9HDG2TT5+OvJfML8pHp0BYM3rQjKqoMxsYK6LcFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(366004)(346002)(39860400002)(451199024)(1800799009)(186009)(41300700001)(4326008)(5660300002)(8936002)(8676002)(66476007)(66946007)(66556008)(316002)(450100002)(31686004)(2906002)(38100700002)(83380400001)(6512007)(82960400001)(53546011)(26005)(107886003)(2616005)(86362001)(31696002)(6486002)(478600001)(36756003)(6506007)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEgwbUdOL1dGeVE3S0R2ZkV1eVZpU1ErejdEbGNsN2pmSG1QSUF2MnZwQXFt?=
 =?utf-8?B?V0hTL2VJVFBXdEZJWURQdk51Z0Vxd3djeXBLbEJhVklFdlBqeVhicjdZY1k2?=
 =?utf-8?B?bENJaVdkZ0hCZzJOL0hVY1J1cFIzMmlHa3QyUitScmtoUitlWVoxTVRxMnBZ?=
 =?utf-8?B?U1FPUnhHUU1pZkVNVDRWaVpjQWplTHN4Yk5Rby9EdlAwYnIxdjJCNy91eWEz?=
 =?utf-8?B?dXRmUFFVZzFxS2E5Mys0RFJxakdkRW9pQXNvQTFxMW9PMW15alhCcldYTTBO?=
 =?utf-8?B?S1RWUnlPNWFrRXMybk5LNGZSakMwL05RUWNhdERGNzBGSUErS21VMXlucGlv?=
 =?utf-8?B?eWhIclBITHZINGRxL29LMEFuVndwRjQ2eGp1Y0ZtaEZCU3ZyZ1hjMjduaGwy?=
 =?utf-8?B?cm1lWjFydjhhc1hhYXM3VXZubFNjWGhTWEtlODNlck52UFpzYzlvaWF5UmhZ?=
 =?utf-8?B?NExVTzZKcEFQeFdOU3d6b29MRWJaejgxclBrUWZKTllxYkg5dHEyYmJqRzBP?=
 =?utf-8?B?RGpQbmJMdTk1bHR2Vlc1YzE4dGxSUmYwWVg3d050Z0NOTDJPa0pLd0VHSDE2?=
 =?utf-8?B?dGc2a0xBdmU1cnJUQUw1S0htVWZSUnZ4VG1oZEdYalNqN09wUUV4YUtrZkdP?=
 =?utf-8?B?TW1GblREdlJNUSs0dXJPUWVqNG96V0FWS0hUWXV1QUZWZi9UTDlIK0dLYkdZ?=
 =?utf-8?B?d3FCOVJhdDhUYis3ZXpyQ3hDK1BXcCtoS1hFNzc3NUhFbjlRUXJQQllQVXJh?=
 =?utf-8?B?NWQyQ0IrR1J1OHZqclo0d3p5dFExeTZCdjNUQ1hlWmx1QnN6ZmUvN0dKblBD?=
 =?utf-8?B?cWY0amRiMkQreVY0bEIyaytSOXRNSlFQSVpaWWFKNmxLaEdPOFpla3RtZmJS?=
 =?utf-8?B?RXVOa1RUZFRxTmhwQVM1MmFYVGg5UWx6OG1rdXJLeWVOeHF3cWNPUDlQZ2xI?=
 =?utf-8?B?d1ZrdURyT0dFd0VHNW5tV1BkSXlsc3gxU2w3enNhMm5Eb00vRkhLb1IvaVRr?=
 =?utf-8?B?aElmUVRYZFBqWDVvRWk4UUJkVldNZTF2dmNtUXFlV1RlR3NOek5TS0J1VzZD?=
 =?utf-8?B?VzlhYnBmYXJkZVRQTEdzd1VrUGRML0hZNFdiR3NiVnFrdi9ISFViRXVLU0N3?=
 =?utf-8?B?R3ptNkNucFRhbENDbEZuM1U4T1N6Q1dGa2lJekhOejlFMFNKdzdpUU4xck1S?=
 =?utf-8?B?N0o5SXNwRENGSW4xL25NYzR2R2U2cHdrSUovQXptTjlaTWdzbzBNZUFXbVc5?=
 =?utf-8?B?T0xxc0t1bnpjdU9OK1hlZmdkdnBWQ0Y5czgrdnNuM3ZnZytiN1ZFVkU0bUZ5?=
 =?utf-8?B?NXJtdzJXcGlwRVNBaVNOMGRKeDkvTnVhOEhtbmlLVklLNDVtVytVVDBXZkxG?=
 =?utf-8?B?UXp2aStJV0hWMUtPQnlVNUtGbTlIWHlnOGJaMGVaVHZhSWc0YjJlWDZ3UlNE?=
 =?utf-8?B?ekdFSktuUXNsV1RQZW1hdFpQU3BGaCt6WVJvczNxc0t3UGorWjJnWTVjUzhH?=
 =?utf-8?B?d2hwbTdhYmJlV0N0WE00TUJSQ1FNVGo0MU1RZkl3elU4czIxMjg2MzVQbGJ2?=
 =?utf-8?B?VjNZMStlMXY2cm80UVVXWDNYL0UyZmxCREl2ditiSVlZYnQzMFNQYUhHL3du?=
 =?utf-8?B?TjArT0ZrRVFwRlJ2MUZ4eVhZaUZoVmtvaTYyaXBYcG54T2M0RHBZczZlMytp?=
 =?utf-8?B?Y0NOR1J0akc2M2tFYXMwdlNMSFV6WUp0RzRJVjBiaEpzU2ZaVWk1OHlJcHQx?=
 =?utf-8?B?RWRHcnVXQ2Z6by8ydEQySEdpb1JDS1ZKMkZ0QlZDZDlMaFQ3S2lkeXIwRkdP?=
 =?utf-8?B?Y1Z3L2d2bFRxUVRLRHI1a1dsWU5uMXF5dnF3ZU0zRVlTWEFRckxXKytmZnJC?=
 =?utf-8?B?MVE1T0hzcEh0NzVvSFRybVBHaHVCZ29JZXEzVXdoOFFadi9Tbm9HdlJnM3BT?=
 =?utf-8?B?T2syQ2sxaml5Q1JsamNXNGVad2duem02NGFvR0JlSnZlZlQzTk9xd0FTTnBZ?=
 =?utf-8?B?RlNvVGR1TnAyS0t1ZW9EMTRvRXVPdjErZFVUWC96Z0dubElFdzdmaDJoTFQ2?=
 =?utf-8?B?N2tBMTBkT3Z3ai9UckdMSU9kY2gvY1V5dVZsN3dJMjdZU2tvQUhxUFZzdHFx?=
 =?utf-8?B?TTRRd08xNkxONnR4UUZCVFRWMWZ1ai9LSURZZ2Z3eEJyeTNCeldYbG4zcFIr?=
 =?utf-8?Q?RdxCjE7X6prEyH2VSv7ma8A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36da1be7-cf1b-40c1-9670-08dbafc2ef91
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 16:53:18.4444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wCb+ziFK8ExIRuHaCMHJx8D8i13nzlcL32qNmwpXFSCbtV5DXweoCLuarMEfpFM2Ffab37T+fDEzv8svRTGWEgcJYP+mXfmfBm2IvA4VsW4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5156
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 12/27] FIXME: drm/i915/xe2lpd: Add
 display power well
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

Looks Good.

Reviewed-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

Thanks,
Ravi Kumar V

On 9/7/2023 9:07 PM, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
>
> Add Display Power Well for LNL platform, mostly it is same as MTL
> platform so reused the code
>
> Changes are:
> 1. AUX_CH_CTL and AUX_CH_DATA1 are different from MTL so added extra
>     logic xelpdp_aux_power_well_ops functions.
> 2. PGPICA1 contains type-C capable port slices which requires the well
>     to power powered up, so added new power well definition for PGPICA1
>
> FIXME: make this commit and "drm/i915/xe2lpd: Move registers to PICA"
> to use a similar approach how the ranges are handled
>
> BSpec: 68886
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   .../i915/display/intel_display_power_map.c    | 36 ++++++++++-
>   .../i915/display/intel_display_power_well.c   | 63 ++++++++++++++++++-
>   .../i915/display/intel_display_power_well.h   |  1 +
>   .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 26 ++++++++
>   4 files changed, 122 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 0f1b93d139ca..31c11586ede5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1536,6 +1536,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
>   	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>   };
>   
> +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
> +		     POWER_DOMAIN_AUX_USBC1,
> +		     POWER_DOMAIN_AUX_USBC2,
> +		     POWER_DOMAIN_AUX_USBC3,
> +		     POWER_DOMAIN_AUX_USBC4,
> +		     POWER_DOMAIN_AUX_TBT1,
> +		     POWER_DOMAIN_AUX_TBT2,
> +		     POWER_DOMAIN_AUX_TBT3,
> +		     POWER_DOMAIN_AUX_TBT4,
> +		     POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
> +							&xe2lpd_pwdoms_pica_tc,
> +							.id = DISP_PW_ID_NONE),
> +					       ),
> +		.ops = &xe2lpd_pica_power_well_ops,
> +	},
> +};
> +
> +static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +};
> +
>   static void init_power_well_domains(const struct i915_power_well_instance *inst,
>   				    struct i915_power_well *power_well)
>   {
> @@ -1643,7 +1675,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>   		return 0;
>   	}
>   
> -	if (DISPLAY_VER(i915) >= 14)
> +	if (DISPLAY_VER(i915) >= 20)
> +		return set_power_wells(power_domains, xe2lpd_power_wells);
> +	else if (DISPLAY_VER(i915) >= 14)
>   		return set_power_wells(power_domains, xelpdp_power_wells);
>   	else if (IS_DG2(i915))
>   		return set_power_wells(power_domains, xehpd_power_wells);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 820b7d41a0a8..24fd35d5e4e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1800,7 +1800,11 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
>   		icl_tc_port_assert_ref_held(dev_priv, power_well,
>   					    aux_ch_to_digital_port(dev_priv, aux_ch));
>   
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	intel_de_rmw(dev_priv, aux_ch_ctl,
>   		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>   		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
>   
> @@ -1818,7 +1822,11 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
>   {
>   	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>   
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	intel_de_rmw(dev_priv, aux_ch_ctl,
>   		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>   		     0);
>   	usleep_range(10, 30);
> @@ -1828,11 +1836,53 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
>   					  struct i915_power_well *power_well)
>   {
>   	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +	i915_reg_t aux_ch_ctl;
>   
> -	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
> +	aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +		     XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +		     XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	return intel_de_read(dev_priv, aux_ch_ctl) &
>   		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
>   }
>   
> +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
> +					  struct i915_power_well *power_well)
> +{
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST);
> +
> +	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
> +				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
> +	}
> +}
> +
> +static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     0);
> +
> +	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
> +				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
> +	}
> +}
> +
> +static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
> +		XE2LPD_PICA_CTL_POWER_STATUS;
> +}
> +
>   const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
>   	.sync_hw = i9xx_power_well_sync_hw_noop,
>   	.enable = i9xx_always_on_power_well_noop,
> @@ -1952,3 +2002,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
>   	.disable = xelpdp_aux_power_well_disable,
>   	.is_enabled = xelpdp_aux_power_well_enabled,
>   };
> +
> +const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
> +	.sync_hw = i9xx_power_well_sync_hw_noop,
> +	.enable = xe2lpd_pica_power_well_enable,
> +	.disable = xe2lpd_pica_power_well_disable,
> +	.is_enabled = xe2lpd_pica_power_well_enabled,
> +};
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index a8736588314d..9357a9a73c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
>   extern const struct i915_power_well_ops icl_ddi_power_well_ops;
>   extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
>   extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
> +extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index 5185345277c7..2dfc721e1bbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -83,4 +83,30 @@
>   #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
>   #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
>   
> +#define _XE2LPD_DPA_AUX_CH_CTL			0x16fa10
> +#define _XE2LPD_DPB_AUX_CH_CTL			0x16fc10
> +#define _XE2LPD_DPA_AUX_CH_DATA1		0x16fa14
> +#define _XE2LPD_DPB_AUX_CH_DATA1		0x16fc14
> +#define XE2LPD_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> +						       _XE2LPD_DPA_AUX_CH_CTL, \
> +						       _XE2LPD_DPB_AUX_CH_CTL, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_CTL, \
> +						       _XELPDP_USBC2_AUX_CH_CTL, \
> +						       _XELPDP_USBC3_AUX_CH_CTL, \
> +						       _XELPDP_USBC4_AUX_CH_CTL))
> +#define XE2LPD_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> +						       _XE2LPD_DPA_AUX_CH_DATA1, \
> +						       _XE2LPD_DPB_AUX_CH_DATA1, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_DATA1, \
> +						       _XELPDP_USBC2_AUX_CH_DATA1, \
> +						       _XELPDP_USBC3_AUX_CH_DATA1, \
> +						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
> +
> +/* PICA Power Well Control register for Xe2 platforms*/
> +#define XE2LPD_PICA_PW_CTL			_MMIO(0x16fe04)
> +#define   XE2LPD_PICA_CTL_POWER_REQUEST		REG_BIT(31)
> +#define   XE2LPD_PICA_CTL_POWER_STATUS		REG_BIT(30)
> +
>   #endif /* __INTEL_DP_AUX_REGS_H__ */

