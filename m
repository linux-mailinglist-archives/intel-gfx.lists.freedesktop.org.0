Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9C46D9237
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DEF110EB3E;
	Thu,  6 Apr 2023 09:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FBBE10EB3E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680771800; x=1712307800;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LGO5dBgaSIKWKKt8Zc8IEKDeBC3JnZjY/4jQQIcbPk4=;
 b=UChE5QshJAs/J9wTCLFydMaPngBV3kKG+jq6iS1PCZih2ekC6hiKA6dM
 wqdYdT5pO0OaeX2CHFVbUSERXXoO8fLlZTRp6bfH/TuY8L22bwdZ7r04A
 +kA4DvTu5oDIdDIu0pvxxfnkoOBj1judVHUfoj3N+Nz1ZOZPRYMSp5fQr
 rqbuPdFALJzTmpjdU1tL7L0wHLmx7LO6mammtj0Xl77LnOUZFd5NtXMmY
 SgPx5zD39z+XgQNpQAphRwx7K5wDD5kR3jOySbU7JLhdl2zdLkEkFAnG8
 fPhXVf6Wapoc5ny9z1IiPa1ttcMIQFcdEaBn/2A+cQPjuuN8MpKGXKik/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="342695843"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="342695843"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:03:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="810930087"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="810930087"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 06 Apr 2023 02:03:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:03:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:03:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:03:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:03:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5FkKpA0PeX8aTefMLs/hf/PNqtBgUKTWQjSIFADKHtkJuWGw2G0Mt5qC+V9EMXKWdR3G8O7d4szS9m+QJdJ5jmUoXb/EsQ9JV1gdlWC46VgEvg2agBulcaYYurwJeBEyI1nXmMQ85Vg2NpbokcyS3jmaa04bBMckHLN/U3hxd/Mgwk43WT6DSLGmQl+cP0Ek9fR2AxmGCWBYYEKQLnnwBXOiu8Nee3WW0vtTbTWh5aZ+FUuPYTK3IRbEmDGg7mBTZDqNz8M+Dv0NIPddYLLOzZ9MTHA93nSmbPp0f2I1cMAUsqgEMhAlR8uAIlCxehrKnCDl/x79hq0ktNttz1rSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Z+26cvAQRvpxKO7nFSFOf0p10Uc+6+xFvjq+WWZjmA=;
 b=R3rDFquemOr1xZvSltWiP5PPKtERUXgqSv6Fh9RZL8dnraPfpe5awFDzGZ/SnMoDO1vmuP8wh77+04tV2WahOFTr0V/fj+bUdpljdS3v4/bGpLdZVYnJASK4NcmpCHMvRt7oYE/SrLG6KRypbkoWAkqYnEtNLoeS5rW3nZMgeSuEBjByXXNhl3Nn62lfhMunfSz24dkgK72fyTOgW6PLTmKsgDFDkCuRxIpxt36QZTVF/SufY7+MjkeWnqsg1Rxa8KEO8knKmNmq+hdC0wOO/CEUE5l+jiZI5VC5es0yBEIcib9ZVPMidQ8EKuqQq77YwAxoMvFTiK0SSwICny0Ikg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7780.namprd11.prod.outlook.com (2603:10b6:930:78::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Thu, 6 Apr
 2023 09:03:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:03:14 +0000
Message-ID: <b5376338-5b2c-7efb-b3e2-b81ede2188f0@intel.com>
Date: Thu, 6 Apr 2023 14:33:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-4-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7780:EE_
X-MS-Office365-Filtering-Correlation-Id: f09203e4-247b-4ee7-73a3-08db367dc12f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r6VA+2z5ZqE3BgiGxdUu1bVOZvjbt4U4+8hXlDmRBilIVZTSqNtIXM22DvjgtJiGBBqz9l/YkfmWCm5trT8idEScGTqBVqVaZ3NcbzxmeCAF1Mll0mmmLFxppdYSOJ4pYa3ratPBY90tBeKzf+ueR+JxqV4XB6mBzuHRps7GW97DKYQX3mJque4eCAi/F3eMTArBWi+/hZQ01oGh9vOYJiYRDnqVlYQQIAsSGCyCHfS7I0tK42+pP6627/+abrQmL3gRvkz0sTiBYgY36M1StjhpK6hjSvjFZZIEraA9IXrfzSy9usagMAlXAoe7xQYP2zFT0YjlgfVLIsYubu/Q1qrM+QXEyGVYUi5M8vcAcWWlaA0KyrBLGOpLNR6sPG78atsUEI71d7EIWb2zSIe2CIVoEKxDBT4Zo28kDwOjnx5VzXveEy/z+LEzm59r0RRGB7MrzHpdn3sJ1KvuCT5wuDVMTK7Asuifi7hFUvD2DRov8KhdgnMvEqE8AvTeH/ba0UTztaqawlVUEhzkt1cXuip1IuIGnO5NoASKfJ8H+M4AlXtl7QCWKvnDNdnrCogZmI2N8nCc5YoLTnLIBr2P0O7/TvFgFLumdXbR9GOQjk2UeG0b9W2l0SW6EQlSfdk7DumTDPe1j71W1N2+OReEqA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(376002)(396003)(39860400002)(136003)(451199021)(5660300002)(31696002)(8936002)(31686004)(316002)(66946007)(2906002)(41300700001)(186003)(478600001)(66556008)(8676002)(66476007)(6666004)(6486002)(55236004)(53546011)(6506007)(26005)(6512007)(83380400001)(2616005)(36756003)(66574015)(38100700002)(82960400001)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjN6bnlkNzZyUkRXbWRkNzhWTzZaYWk5eStLc2RUQlBUZHhDYW8xYXhLNE5t?=
 =?utf-8?B?TE82aDliSS9RUEhBNDZyOENmYjlwQlh3Rm5PKzYzV01zODhGUEJqMXhoeGNo?=
 =?utf-8?B?R1ZTKzFha2ZBODB3RDBhK2NibEtoSDBWVllNbkdmM2l5L2RTZzRZWkExUVhK?=
 =?utf-8?B?T2hKQmtuRlg2VXFlWXZXNFJ1STIraUZGbVpSMWRZbVB6akVDUE54bW5ZaW9s?=
 =?utf-8?B?QUdwN3Bpck5xSnhTNXBzNUwvdVUvUGpsUmpsWHVlODhWV01hR2cxZEhUSmJk?=
 =?utf-8?B?d0ZEZ3B1N2dUYi9icThINDF4Y3ZrandCREdMcWRNRWZwd1pVa1ZhYnYrZCsz?=
 =?utf-8?B?QlF0OHEwS085UnB6TkNFKzlGc3FFaVF6U1A4U1pEUGZ5UXZkM1FMd2NHYnZv?=
 =?utf-8?B?cU5OQXhCWVg1NU1JekhxanIvTit6aXk3NWFrdXo1WkV6ZlROcHNNU3lKYUha?=
 =?utf-8?B?MmVoL1N6VC9HZUF0Q1YyTUJTRlVhM2tFNGpGS1AzN05TTWVrVmsxOFlybWJU?=
 =?utf-8?B?SFQyUVBobEJjVW9CRklDNzk5RFFNUEhXRTBNK2F6SHg2Sys1dEhJOTlhazQv?=
 =?utf-8?B?RzVGeHV6Yjk2ZXFkbUlMWmo0a09JRE5sZzV4TThUVE43SUErRFdjWFVUaVJH?=
 =?utf-8?B?dnN4NXA1b3ViaDRNVkxCZmJVRSsvV3NRSEtRYUhHKzJlc2xmQzRXRDFVdW1T?=
 =?utf-8?B?ck9kYVBiMHJPZUJDa1BOaXZUN2FmUGJnc3BmMEpZK3p1djAvamJIQ2JpV2Rw?=
 =?utf-8?B?a0VqS2F6MUZuUHljUUFPNmNRNW5jeTBCanZTNU9weGh5ZGl4TDRwUndpTlN5?=
 =?utf-8?B?Smt2Y1NiK3FrdnMyTUFYeW16UVhNVTFCT0FlSWErdGRZd20rNkxFSVhGTVpQ?=
 =?utf-8?B?ZjZ2Qm9pK1NhZUZyRnlBOFhEOGJUQ0ltcEsrbnlXVEJHaEhvSUpWN0RQVXZ1?=
 =?utf-8?B?WWdBd2NpM3ZrYXVYblNMcWFaM3ZBTmtrRDJlL0daaVhHSUtxWHdvenlUeHFK?=
 =?utf-8?B?c3BtVk9WWXJOR3gwTU8wdUJ2ZDNFcGhrOFcwUDZhVVYvR2lpc0dRb3JTcnJB?=
 =?utf-8?B?RWZCY3RFUDlFbGN5WXFaY1I4Zk9yWmdTVU1WeFJIMG1jcm5NZkkwM2g2YUNm?=
 =?utf-8?B?ZzFxVXlUU3JTSVpQWkI0Znc4a3N6TXh6emxUclN1cEMzYmpxZUpSc3BiZXhu?=
 =?utf-8?B?YXZYbUJzN0UrWU94YlVKRDc3NnNzK0Rna2RjMHZwK3NGUWszSUhGYXhWOEh6?=
 =?utf-8?B?UDUwODc2cFpXNGdON3JyNGtjZEw4SmI1UWgyVFpJcFVYTGgvRjJFZ0NPUWxQ?=
 =?utf-8?B?OWRrQjdUejYrSjJHMWlxM283T2IyRzJ1QW5xdjlBaDFZaWViYXoxQzlVQ3VS?=
 =?utf-8?B?ZC9uVHE0Q3lNUWdQMm1ud1BER1ZHTndKMVM0cCtOay9PWitPejROU3V0RU9y?=
 =?utf-8?B?UmNneUdwODVFNUVFVFp4YXBTdWlCRVhTbFBxS0tRdU5yLzJKV21DWjBxSWV6?=
 =?utf-8?B?ZmhvMHJnbTBDTkl1SlhhWURvUUtyUlFTK0hBTUlmOSs2RDVQU0Z5cXRPcHRq?=
 =?utf-8?B?ZEJNY2NBWVRHUjE1WWZta3NjOWlEQ1VaZ1lOZnQxcW00d0d1b2RVaUJmTDNu?=
 =?utf-8?B?Nm5PV29qRlhzbS93OEQ3SGNLd3piSElCTXUvOWRuZ2hZdnFNTVE5V0NwcG5l?=
 =?utf-8?B?K0NVelR0VkZIeFFvYXB1bTF3M2ZLT05EbUc3WmFIZWpLWWxWYW12Rk9tV1ZF?=
 =?utf-8?B?MVdweEhLMGw2b0FKZW84clJlbDBMRFJLbDhFcXg2a0greEFKY0lOekYzdWpu?=
 =?utf-8?B?bGI3TklLL0JHZzRLWUNreTR5dWFGM1NXbStrU2RLTE1mZjN2V3ZZWXFMT3po?=
 =?utf-8?B?RTFjR1YrdkRXdnEwc1ZTNDRTVzVMWHo1SWMzVzhjTE9vOWxISXhUb1F1dFFX?=
 =?utf-8?B?VjYvRjZjaWhYRTZjTXBobXUwemc4d09RK1VzMWlPTnN1elZJbTRPNzVRKzFh?=
 =?utf-8?B?eW1lR0NVaXFqdlNvaHlPVk91MGJFNzV2Vk5lL0Y2MENENFd3aGt6akFDZXJD?=
 =?utf-8?B?UStNN1VDZlpjUWtVa2F1V2VaNmpKeXBBVTlvL1N1YVhnZW50TGMxL21KL1FX?=
 =?utf-8?B?VHI5b0Vkb2o4L2pUb0ZoMkp2ZmxFb2oxb25GT1l6QnB4Q3g2blRmYmJTQXU0?=
 =?utf-8?B?S1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f09203e4-247b-4ee7-73a3-08db367dc12f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:03:14.7006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QBqdzOPHjR2ltS/zpzE0vaO6J3IuZTayS/0dtJuF7n8LWLC1uv1dsdo8kL8s/HMx32Hn7jnGzw/GoudG6HSp16BzM5IljfQLuaYx1ThwY+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7780
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915: Split chv_load_cgm_csc()
 into pieces
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


On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Split chv_cgm_csc_convert_ctm() out from chv_load_cgm_csc() so
> that we have functions with clear jobs. This is also how the ilk+
> code is already structured.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 19 +++++++++++++------
>   1 file changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index b1059e0c0665..47af24e64a7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -399,16 +399,13 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> -static void chv_load_cgm_csc(struct intel_crtc *crtc,
> -			     const struct drm_property_blob *blob)
> +static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
> +				    const struct drm_property_blob *blob)
>   {
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_color_ctm *ctm = blob->data;
> -	enum pipe pipe = crtc->pipe;
> -	u16 coeffs[9];
>   	int i;
>   
> -	for (i = 0; i < ARRAY_SIZE(coeffs); i++) {
> +	for (i = 0; i < 9; i++) {

Can still use ARRAY_SIZE(coeffs).

In any case the patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>   		u64 abs_coeff = ((1ULL << 63) - 1) & ctm->matrix[i];
>   
>   		/* Round coefficient. */
> @@ -425,6 +422,16 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
>   		coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
>   		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
>   	}
> +}
> +
> +static void chv_load_cgm_csc(struct intel_crtc *crtc,
> +			     const struct drm_property_blob *blob)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	u16 coeffs[9];
> +
> +	chv_cgm_csc_convert_ctm(coeffs, blob);
>   
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
>   			  coeffs[1] << 16 | coeffs[0]);
