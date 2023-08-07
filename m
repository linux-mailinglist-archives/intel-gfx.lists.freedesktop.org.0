Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E3677255E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 15:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF8F89E01;
	Mon,  7 Aug 2023 13:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A3C10E2AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 13:20:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691414443; x=1722950443;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kzjQi+X07/zqU70YaH2w0AvOZ4pQf9AfxLSKx3+nav0=;
 b=VE6tZ0nRixcH+GzGhgQoPgxIuY/St6QCVeXK5ftk0pi/H7PyGjvkr161
 +Leh2GfGb83KbMdPyxeeuKHPVdkFHvdmSjIDPfBv8Bpvg4SZ1+2Zk8sWV
 EP7lhu1btmY+uxKyeofnQ0VjgA4tnuzhcIgGN0iQNMXYQyErYQlvFmPtN
 D7qQ6Lz32asneJwcBV58Z2KcnvUaiaPDwcG5aZQOpyTl0HdU5nQ4EcLrm
 H/+e3G6AOOdeUJmyrpkqMSNxj0UCpWBw8oT1usjGfoT6W1VrT09Pb+hhd
 qW0HX5sdllS417PrBQ1AOGjX/ur6ZsHEcDKR8bWqWXFnLtCIfJTlC08Z6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="350849385"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="350849385"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2023 06:20:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="820989075"
X-IronPort-AV: E=Sophos;i="6.01,262,1684825200"; d="scan'208";a="820989075"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Aug 2023 06:20:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 7 Aug 2023 06:20:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 7 Aug 2023 06:20:38 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 7 Aug 2023 06:20:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pvqpvn8alU22uE6qTlwCF9dQmd2qDg5W+xQaKho+P2SKoRUycSEVn1RH0owBDWaBwSo3vnJUIXoI2PeQuc1u7XAbWq0j5mPlpfZ+9hxPquOTrSYOdYjQzuH4li58tMAAOwwsmnT4mBQS8Hz5Z04o8JPlEDwc0P3/L86PXSkZple+DlLGOW6Lm5sXDZ+JETvhHz+VpFNmBuA33Z4MJHbiiB3/jdjRIk6ZMbMci80+ztHbBW3P4gDVSBHbB5GUc21OSlJwU0OINPIugbHjL3vJBGGz2wkdpzb92NTeMxWYOVrz1h1MquXkHYdYmpiaF2pTPQJqduN+S0Pe6fUbhe+pTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NcC3/1ysx2d9RSMe6wVbAcWc2cMTb85uXka1fvxJMDM=;
 b=RiM8arCOrHwwtFQD+2a2tDByHOjAvYoipjTaykfDktnCB9Bv8XCgWrs/2PiRt+sUcjhaQ9EcKypprvj/IxtHUOOvkmFjJfWAFIOwLAJqM2ymYqbrZH04O7xv2Hkv0GX8q35U4v3vp0svHe/g7bZFzuGl4Cpeyer5WlYCE6MrC+Y9DXPDfJvT+SXY/qU7TyGTuQILLKnSmNoO3zL/4OJT0gosD8nvPiWFMgu9fmtgKZBhFWDWvInfEssDDeA8RPH95uWBUL+pAb2BO61ZFRk0TXsW0qtnF52HZhBsB+GDckJbHKMfk7L6EzHP2Z9r605pq2uqryJiSAUIdXN/nj3axg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4841.namprd11.prod.outlook.com (2603:10b6:806:113::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 13:20:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 13:20:36 +0000
Message-ID: <302c7bf8-13bb-5721-7c8e-5910f8d28fbe@intel.com>
Date: Mon, 7 Aug 2023 18:50:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230803130337.3784597-1-suraj.kandpal@intel.com>
 <20230803130337.3784597-5-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230803130337.3784597-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0136.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4841:EE_
X-MS-Office365-Filtering-Correlation-Id: e359dc17-959e-4cde-31f0-08db97491603
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LINTN5bwoMd6kohS7W8FbzmIqMdp1ghroWPb5AzuvQHr+EjxAsWJIiG3bZOJUoEV6+RQZb1v5SbB8hoLFtNcvRJxHJi1/ieJiNvAbHUNgpztcAbts4Lsfvc5VvqzHWneOm89vioD2/DSOETD1gI3jiiO7aoRT147YwYR5j6wT29yn1VAjZScWzZhQGX6W+dpOGokR8Oxj/Flri6d5+91eO+cGvvjiSCYYhstZtn/W4cFAIrKl+5ZDTlGFf0OwPsJdhCozg6GzTSxC5jSZe9ltgrSKNrkgt+L+0yh7Q8CEFOp8ViYF7vB7CFYWneYJOX7F/bBXy+pUotO3Cdh+ozdHiXCnYbUtpmerEc2GAXfy4gjMI4nBFhLzx7pUDqe28pgCKIRKzHi3kwz32ROhnNSQ7Cf8ijNhU5zp4+y8qeEExbTiFUSQz5oFni2ZNXANSqDWDoGClQqbOWmmOOTI2LPJsOvfAs4dcOhhkSekvUZDTcvpPetwZmJj6j49C87X1lROPkC15M7jS6CFymUx4Zkpb/rqS6IklZ5GdmIOLkv6y8itslLz/A4dmd/oz/831Ymw6G6eSXte2TkAzZS3GXkCyoJ5U7TpCkQ8tWzwZYxStMLUq4eXp/iNZbAlEPLOFLNX0gyB2jXvFz8UpOgP7iY/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(396003)(346002)(136003)(376002)(451199021)(1800799003)(186006)(31686004)(83380400001)(2616005)(2906002)(38100700002)(66476007)(66556008)(66946007)(316002)(8676002)(8936002)(41300700001)(6512007)(6486002)(86362001)(478600001)(6666004)(5660300002)(53546011)(36756003)(6506007)(26005)(82960400001)(31696002)(55236004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N24zbHZBUHk2dkgwV3U4YUlNcHRXaXdZWVJsZ0tiYkwrZVJaUjVWUGZEN0dL?=
 =?utf-8?B?cHhvTmp1Q3BFMm14djg3b0k1ZUYrbENMTmF0OEc0cTFnL052a3F6ajhlbWE4?=
 =?utf-8?B?b1NPTUJSMjFXK1Q0Vjc0bUllZllnY2plNlRxbENtVytHRjJDTVFxQldQMG9l?=
 =?utf-8?B?Qk00NDZoZC92bVlSUTR0UFRuK2lxUjNRUWxmbkVCeGdacGRZUXFVenhqRDJl?=
 =?utf-8?B?aVRScjVCTDNKS3pNMjB4bWVyenFVR3ZOVHVxTGJZcmovTWl4Ym96Y3dLdVQv?=
 =?utf-8?B?U2dITXoweHVzSllrWklCQW9URkJ6NTFHclgyYjRiYnB2ZiswV0ZIZXo3VUZk?=
 =?utf-8?B?ME5aazROSEdHNVlqUVQ2YjA4KzY0dHVWdjBmQnIwY1FoNTZ5ZkVBbllQcDQ2?=
 =?utf-8?B?QVkzT3RRRDU4N1JrbTJlNnNxSHY5WmxETkMzLzRMd2ZzZ2R4NWVlZGlBVFdS?=
 =?utf-8?B?QzQ2blo3SVBlSXlsbXRJeG9WdXRYVUt3Mk16RENHRTVZK2szUEs2WUxwQ0V3?=
 =?utf-8?B?ZE5HQ0lLRWFaVmhSS1hsQkdUdjVySVc4ZXhwQnlxaGV4YVEyVURjQkhtaHRo?=
 =?utf-8?B?RjVORlNEK1ZDRFpoQlAvUUEvVVNzQzVjOFJuNHQrQjF2bEowRWR4OWpWWHRs?=
 =?utf-8?B?Wk9jRzcxTzMvK2w4NjFFVGdMdFg4bEdXYmdWaGtIcVM3OXQxb0cxSitnU1du?=
 =?utf-8?B?SWVGZFIzUW14c3MxNWRGODRJeUFxeHBsR0RHMG90eG9HRWhNS2ljMCs2QTBR?=
 =?utf-8?B?bHhpcFNuT1VhWGxHY0ZPUmlRTDlHbTFqRSs2RXhyZnNmbU8wME05aFJzOUx0?=
 =?utf-8?B?bmVNUEtsMmJlODJiL2x5YWhvYzFyejZUbzhSVUxsZ0JUVWYvcitXUll2Uk51?=
 =?utf-8?B?WlBITjNrMFE5R3ZMN1RrMURpYS82RnJ6enF0UGM0MGMzclpzbzRUY1pXYXIw?=
 =?utf-8?B?SEgydWg3UG5mY01JcEMyR0J6QUNuZk0rWjk1OTUzWFBudGRjcE1zYTQ3RkdW?=
 =?utf-8?B?NzdMSVl2T1lDQTdaOHVGZmNESGlHeE5iYTlUR0VjZDBtTFJYMHJXTkpYUUtC?=
 =?utf-8?B?cS9zLzBjb09WQ3pXTmlPYkNnQ1FSblNEdTM1dGVqVzBzdnZObHZabVJOL3Bt?=
 =?utf-8?B?bHlydTk1V3hsckdlZlRwSVVXdm1kYXRXWWtnMjBWcEtDWWZHKzJIWnlDcWQy?=
 =?utf-8?B?QjFhSG1nT1RoazdwKzdSc1FtUG5PWVljMWsyZHRVWGgvdk1Rd1Q5Y0c4K0hL?=
 =?utf-8?B?cVN6d3pFT1QyS0Q4L21JSG9zbjB5emRTMTJhUXpjT0NRRytqQjR5aHR0YnEz?=
 =?utf-8?B?UFZQLzVMUWc2aVhTN0hHdTh5cXpNaXVTMnhxcjk2bXBtN3ByaFJXajF0T0xl?=
 =?utf-8?B?N1QrdWU4UG1DMzArNXgwT0xWeVJHRVkvd1ZTa056ckpJWE9BWDc3bzk3WHpY?=
 =?utf-8?B?eUhhb0NwWjZVZzFPWGpvaHR0L2xYZWpaNFM5Mmh6K0JXNDV0dUNGUFR4M0Yz?=
 =?utf-8?B?MnJQcUQ3QUw3M1RjOWVtM1hwT3o0OENQandzQVlJbVExUjcwbkZGb0NRMzg0?=
 =?utf-8?B?MGVFc0s3TGlHWEw3bVVBcFJkeDM3Y2pVdDdvMWhJaHBwR1NLR3Fwd25pSnBN?=
 =?utf-8?B?WVVPTEVDVVJhdDg1blZ5RnhxOUdHdjVXUndLQlRXdHF5YjRoMU1qN09oM01n?=
 =?utf-8?B?NWJOenZDOWUzekVFT2NKQ1lrWmlRbmZNVUFLLzJhcnp3Z1JKOTVoeGgxVHZF?=
 =?utf-8?B?a2JJUlhqTmdNN0RJK3VHZ1Vud1c0d1pMejlCZHlrMHF0VU5pWURvSEdvd2JL?=
 =?utf-8?B?ZTZTZkFRRkVpN0dFQ0w2TDFacGVWeWRqTWx0aEJyZjBkdEFUeGNscFAydGQv?=
 =?utf-8?B?RFAxdGJPeVB5MlRhcE45Tm1TbHJwS3ZzYTUrT0o1ZjNrRUcwTDVVc1NVY0VL?=
 =?utf-8?B?dkR2aEVUL0lDMkZqcUhSUndmdW5DT0hoNllrS21NMldpTmpIeFBVMUNxSk9h?=
 =?utf-8?B?OGJZQkFDdGVEMUxQRVVzWXNqengrbnJ6Z08zdm1rd2xDNFNVR040SmFCV0xu?=
 =?utf-8?B?SFc1MFJZK2c2ekpHOFZpd3lwTGZzbHlKekMzSVVUcDJqbXJjN3BLSVFrNTJO?=
 =?utf-8?B?SzJvdFZjV3o0M1pja1NIT0FaL2FHTUdUeEgwL2pGcmtEamVzL2tPdGJyMzJa?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e359dc17-959e-4cde-31f0-08db97491603
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 13:20:36.4782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X+NQxlTPYzAGa/6NAa7u1QMsl21l3JuXxBaLA0TfEh7mbJC2Y/ZCoGjP9vMZgve6lkvuLGV1h4qNGOg1cNC7srODY/o8GurMfBUjHD2MIxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4841
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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


On 8/3/2023 6:33 PM, Suraj Kandpal wrote:
> Add function to read any PPS register based on the
> intel_dsc_pps enum provided. Add a function which will call the
> new pps read function and place it in crtc state. Only PPS0 and
> PPS1 are readout the rest of the registers will be read in upcoming
> patches.
>
> --v2
> -Changes in read function as PPS enum is removed
> -Initialize pps_val as 0 in pps_read func itself [Jani]
> -Create a function that gets the required register and call that
> in the common read function [Jani]
> -Move the drm_WARN_ON one abstraction layer above [Jani]
>
> --v3
> -Send both reg values regardless of dsc engine no [Jani]
> -Don't use num_vdsc_instances stick to dsc_split field [Ankit]
>
> --v4
> -Manipulate the reg values instead of creating MACRO to change
> name of pps [Ankit]
>
> --v5
> -Read dsc reg values using array rather than individual variables
> [Ankit]
> -Loop the verification of all dsc engine reads to future proof it
> [Ankit]
> -Keep the fix me comment in this patch and remove it in later one
> where we add other readouts [Ankit]
> -Add switch statement that fills in the required registers based on
> no of vdsc engines per pipe.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 128 +++++++++++++-----
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>   2 files changed, 104 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index cd7b7b00be44..f283580c2860 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -365,6 +365,29 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   	return num_vdsc_instances;
>   }
>   
> +static void intel_dsc_get_pps_reg(struct intel_crtc_state *crtc_state, int pps,
> +				  i915_reg_t *dsc_reg)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum pipe pipe = crtc->pipe;
> +	bool pipe_dsc;
> +	int no_vdsc_ins_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);

lets pass dsc_reg count explicitly along with the address of the dsc_reg.

Though we are setting the count as per vdsc instances per pipe, but here 
what we are concerned with filling the dsc_regs

and for that semantics, passing dsc_reg count makes more sense to me.

> +
> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
> +
> +	switch (no_vdsc_ins_per_pipe) {
> +	case 2:
> +		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) : DSCC_PPS_REG(pps);
> +		fallthrough;
> +	case 1:
> +		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) : DSCA_PPS_REG(pps);
> +		break;
> +	default:
> +		MISSING_CASE(no_vdsc_ins_per_pipe);
> +	}
> +}
> +
>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -994,17 +1017,81 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>   	}
>   }
>   
> +static int intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> +				  int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	const int no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
> +	i915_reg_t *dsc_reg;
> +	u32 *pps_temp;
> +	int i;
> +
> +	dsc_reg = kcalloc(no_vdsc_instances_per_pipe, sizeof(dsc_reg), GFP_KERNEL);
> +	if (!dsc_reg)
> +		return -ENOMEM;
> +
> +	pps_temp = kcalloc(no_vdsc_instances_per_pipe, sizeof(pps_temp), GFP_KERNEL);
> +	if (!pps_temp) {
> +		kfree(dsc_reg);
> +		return -ENOMEM;
> +	}
> +
> +	*pps_val = 0;
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg);
> +	*pps_val = intel_de_read(i915, dsc_reg[0]);
> +	if (no_vdsc_instances_per_pipe > 1) {
> +		for (i = 0; i < no_vdsc_instances_per_pipe - 1; i++) {
> +			pps_temp[i] = intel_de_read(i915, dsc_reg[i]);
> +			pps_temp[i + 1] = intel_de_read(i915, dsc_reg[i + 1]);
> +			if (pps_temp[i] != pps_temp[i + 1])
> +				return 1;

This will miss to free dsc_reg, pps_temp.

> +		}
> +	}
> +
> +	kfree(dsc_reg);
> +	kfree(pps_temp);
> +	return 0;
> +}
> +
> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
> +					      int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int ret;
> +
> +	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> +	drm_WARN_ON(&i915->drm, ret);
> +}
> +
> +static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	u32 pps_temp1, pps_temp2;
> +
> +	/* FIXME: add more state readout as needed */
> +
> +	/* Readout PPS_0 and PPS_1 registers */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);

I think lets pass the num of vdsc instances per pipe from here and 
propagate to intel_dsc_read_pps_reg.

Similar thing to be done in write case in next patch, where 
dsc_configure_pps computes vdsc instances per pipe and it propagates to 
intel_dsc_write_pps_reg.

Both of which then create a dsc_reg array and call intel_dsc_get_pps_reg.


Regards,

Ankit

> +
> +	vdsc_cfg->bits_per_pixel = pps_temp2;
> +
> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +		vdsc_cfg->bits_per_pixel >>= 1;
> +
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +}
> +
>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	enum pipe pipe = crtc->pipe;
>   	enum intel_display_power_domain power_domain;
>   	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
> -	int no_vdsc_instances_per_pipe;
> +	u32 dss_ctl1, dss_ctl2;
>   
>   	if (!intel_dsc_source_support(crtc_state))
>   		return;
> @@ -1025,38 +1112,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>   		(dss_ctl1 & JOINER_ENABLE);
>   
> -	/* FIXME: add more state readout as needed */
> -
> -	no_vdsc_instances_per_pipe = intel_dsc_get_no_vdsc_inst_per_pipe(crtc_state);
> -
> -	/* PPS0 & PPS1 */
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> -		if (no_vdsc_instances_per_pipe > 1) {
> -			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	} else {
> -		pps0 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> -		pps1 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -		if (no_vdsc_instances_per_pipe > 1) {
> -			pps_temp0 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> -			pps_temp1 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> -			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	}
> -
> -	vdsc_cfg->bits_per_pixel = pps1;
> -
> -	if (pps0 & DSC_NATIVE_420_ENABLE)
> -		vdsc_cfg->bits_per_pixel >>= 1;
> -
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +	intel_dsc_get_pps_config(crtc_state);
>   out:
>   	intel_display_power_put(dev_priv, power_domain, wakeref);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 785ede31116e..862dc708c5fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -78,6 +78,10 @@
>   /* Icelake Display Stream Compression Registers */
>   #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>   #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> +#define DSCA_PPS_0				0x6B200
> +#define DSCC_PPS_0				0x6BA00
> +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0 + (pps) * 4)
> +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0 + (pps) * 4)
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> @@ -88,6 +92,14 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  ICL_DSC0_PPS_REG(pipe, pps)		_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> +#define  ICL_DSC1_PPS_REG(pipe, pps)		_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>   #define  DSC_NATIVE_422_ENABLE		BIT(23)
>   #define  DSC_NATIVE_420_ENABLE		BIT(22)
>   #define  DSC_ALT_ICH_SEL		(1 << 20)
