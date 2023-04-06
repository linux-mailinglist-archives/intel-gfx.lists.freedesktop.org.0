Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121116D9293
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AAD710EB42;
	Thu,  6 Apr 2023 09:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C644410EB42
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680772918; x=1712308918;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ioSb567YNgT8MCAS0Kv2VzfrKBJajRGZPFMdZ+2EkEM=;
 b=f/26S9HX9Z+vTQAQI9LzfmHrFFjZLoyItkgMT5K1d7w9jIgp0s81f4nF
 jqgap/C9sWmelkQ8jZCIq75VAxezuUEcVIYDR/Wg9W+tsOv9ukpogTKqc
 GkcgnMUDJO5PPmLxiBcrCRc2L/8LFLWpcw3Ig1HHg9eJxtxf67Il9KKHQ
 kUfu6bU1vIk7O5+YxwjsI8OutOlh2LXHlcQ/jAVWKYHNamw26Jy+9qZkj
 Iqp+VsTWqEiX8Chv5yLcJ1dRZB43MwlJAny8VP3WxN4TaE+DNdfOgCR6L
 69Slt6kQaM5UUxOe5m1n/ZoFvevvod/AquycvzWpz3qQHniQFNUq51jpO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="322342330"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="322342330"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:21:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="810933723"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="810933723"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 06 Apr 2023 02:21:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:21:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:21:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:21:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k4VDI4tkxw1AS7g//xlrOKctSmSS5ZxzzPf2gUn5zLbRf8iGDWyM8yrnWj/5WYYEQ/nhPG+mbRmhe6vY91nfUn9ZxScEURRM/FT1yF8fEI/GB2D2ohFfnigtE2a7atJEgkNQlpxwnI/HTj0YDuoMoKhj9jcV46FH1iDe8lZdoNAXw6x2rGXM2YeMbhzdP8XUFx6zEMLtk82/SCYVBomSqX+jetmi0JITY+1N9SM8AvCm5FAcr2pRfEmmRbPSqzTI28RxjevwajBdTOQcsc7NGCzD1h33HccsIH/If4j2CCQU3QjRjIJEnBpmHQJYTcjesE+O7oCs4Vd580+ieyhCCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y9vearl+2hk0FyCG2BGGhGfVC8X3XBHlnsea+JMiqVo=;
 b=WdLJuIUIaN9CIn+rgV+mjEu32t3ZA6dhxB4TR7pugA0G5i4AyJvHvJQakEQXnKsFas9qKtSc7q1Dd2tWnKUIAhIhn6XxRGZVWSDLVKgSv13qDongdAGBW1ro7JUhzmvRHRWTG7SoPTrIQh7m3tIkjuG/2lqbOMHxXDzK8/1TY3uxYVzJJCpfJWt8+0ba/PD0/FsQxGjlkMQBpdQhCsN5ETN6jPKyLmWa/NJkDX6uNgNg5AxtOUv7Lmode62a0OpJOU+xc7ntQdluGD9fa2VgS1UCo1Rs6pLCv1VGhvw4BTB/trssfv39r2RDJW0kf63qZAWCaVONiMS/Wih6TvAUnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5207.namprd11.prod.outlook.com (2603:10b6:510:32::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Thu, 6 Apr
 2023 09:21:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:21:54 +0000
Message-ID: <f1be66f6-bd70-c04f-3675-5e074da9bc25@intel.com>
Date: Thu, 6 Apr 2023 14:51:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-7-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0179.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5207:EE_
X-MS-Office365-Filtering-Correlation-Id: 31afd7e5-b169-419e-9d01-08db36805cbb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Aqsi4Z1BWfuIam0q/oBSm8vt9557N/c1/RpKMlKYKvtEKC6a5XovEO2x+B6Vb6qdlIB0Y6t15hA8/RfA3o/7F5FZglIkeqxUayFeXGa7GFB2i9Z7f2czOtoEhmSouNFtiJFBTBda7suz4uAozORVXOXv616WeaE11EWKnr6Gv4Jl8U2GjcgqhDGLfLWNKtLsI/ai2ist9OFhDoUzaGpODGtPhQxsW7C8xpEcL4mq6UwQ5SdkCBLNt2dt+c9LTD5jVDHc3Wqox5i/PKCQHAP6tBw47GisNefy48/mossufOa0A1sMJI0yJLYvVgPkl2zedR1GfB+MfXiGYtOFq9cQiU1tUevLVOxA/PDFa2k3ghgQJUgjbB/J4XXpCNLT84r/ulyDzIh6O1zTLe5fDCrqk6H22TolpdZ4N9n+1jfsalHJr38KrTAYNc8TgVXT/RQpVzH9o/ZfjRnUhFWVEErNPPSIyKqUqBCAgb/nk44EYfW3JwwvDBJzXuTwXgQ58o9QTip4uaOIotrza+nMsAKNq+eO5NiCK2pUyGRRhbyfM86EXJH1dzomGJHMYCQtICgywLzqGvRlNw74H98nw04cV6eXrDoZAo2XC3qvkEQOSZ87NDN39wrA9fAeq0aaOz/jS0SE9i8u/FIacZvWXzDHDQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199021)(31686004)(38100700002)(36756003)(5660300002)(2906002)(31696002)(8936002)(66476007)(41300700001)(66556008)(86362001)(82960400001)(8676002)(66946007)(6486002)(66574015)(83380400001)(2616005)(6666004)(186003)(6506007)(26005)(55236004)(6512007)(53546011)(316002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjRTM0ZWQStQZDRUa0hKaEgxbFZOOURqb1V3VHc1MXQwMWlucWNCZjRoV2xU?=
 =?utf-8?B?QkhLUTM1WmNWN0JpRU52TFBjei9pdGRyNUU2ZUNOYlVnZ1AwVGxxcjRmdEtC?=
 =?utf-8?B?VUt3WEFDMDZhb21OZ1J5OUJETnVWQ2I5Y2pNTE5LWG5tNWlKU3VreG5TZXE5?=
 =?utf-8?B?NEFweXk0UkZ1VW9RY3Z2b2pwUVBsa201QjNYcFY2VHQ3OTkxUXdRa0pwenNW?=
 =?utf-8?B?dEduNkhlRmlHOGJER0VwWU5lT3VtT0ZLYmNUTDd3UVl5dFdNTFQ4a3VxSkRN?=
 =?utf-8?B?Y1JjTXNkb3BrYTAyMG85clRnMmtQM0JpUGR3VStNQ1pCd21hbExYNWpwUDRr?=
 =?utf-8?B?c2xkL0RDa2IwLytuc1FzdGQxcjkvRHdUZSs3RW9EVnAwVWJNd05LdFBvMnRu?=
 =?utf-8?B?RXcxMnYxN3lRR2dpWmhlSTJ5bkR6UnFRVnlzeC8zT05MQ3FNNExPK25qMisx?=
 =?utf-8?B?SHVzTTlUbWJMZkFuYUtDZTdTYTdyaHlHc01zTk1jdE9wRXlCc2Zybm1sUzgx?=
 =?utf-8?B?aTNqaHpBL0F6UENaL2pOdFZiMWpSeU9FVXc3aWROTDNUcVYzekFlbFp2cHFN?=
 =?utf-8?B?YkdKNUY1TkhZUGNWK050WnlWVmY5dFhuelh1M3BTaEk3VEpqc3dCN08rWWMx?=
 =?utf-8?B?eWNYKzEvQzA5djl5NVZqaXh4dVhoenVwNXhSQ2JPTDhyZnBzdjV4R1Z5Z1JC?=
 =?utf-8?B?NGUwSmRuK0tCNjlFakErOHlpS05OR00vWFM3N1J4Ym13Q28yYVFYRVNQd1hJ?=
 =?utf-8?B?VVF6dmhFdDY3SlRPRHpiZVVuL0xLL1pCWVBzQ1Y3SDBoOFBwSGlvRFViMlJ3?=
 =?utf-8?B?REYvc04wQTZQNmhaZDdTbGwzV0UxcVpIZVFEc0ZRSTllaCtQekI2L2ZmMy9t?=
 =?utf-8?B?Skt5MHEyVU1jWVRnOVRDK0gwZ2Q0OUhEQU5OMkNiblJ2ZEhUL29NbWowa3dL?=
 =?utf-8?B?WW1ObjQyVTNjWmM2a3lnOFMyN0R1cm1wRGJXTDczWnAvZWtzOUJjcTlXMlJw?=
 =?utf-8?B?OWU3Mm1yQm80T1E2T3pvM1A3Tm9tQk5iQTRUT3pXWlNIQ2swZWJqYmZVYUlO?=
 =?utf-8?B?ZzZzaUJySllqc1dJcHlhL0R2SmZrL2lqZVp3d1loWkZSU04zRWtLcVN5czJT?=
 =?utf-8?B?ckF0OGdYbVBYRmwwSE1Qb3BxeThwVGZ1ZGFVVmZ5L2xXWkZvU1lINkp4NFBM?=
 =?utf-8?B?b0l2SElYK0ppZ3U0aUNUelRpUnMzdkZHQks2ZzRkZWhMRWJoUC9oMldYUWpv?=
 =?utf-8?B?V0RXdzFsNE0vODc4THBIclFtWUdsb2Y0eUtqeG5yL0JQOXJCZllmczJIM0E3?=
 =?utf-8?B?MDB5TE9zSFhVZkVPTXhQOEd1VXE1QStyLy9NdXdwRDY3cDZldFFHOHFkLzFB?=
 =?utf-8?B?OW9FQlF2eUtJdHZNcDlTaG8yZC9LSEdSMHJGc3VCYTJyeExOTVVET1N3OHRT?=
 =?utf-8?B?ZjAxL1hzaXRaSEpmNWZPVzgzcVg5ckRCdDc5eUlqM09qWWZmN3BvUUk5OXMr?=
 =?utf-8?B?Rms5cy9WVE9wakJDWU1qNGlJalpxaEt1ZWJ1ZkhRMFV5UzlJTzFNUDhLbW84?=
 =?utf-8?B?NGlSNkVmTmhieUs5QzZKL1hJcGhtSDNhYUM5YW1SZzVINVI0OFVuNi9RaTRw?=
 =?utf-8?B?bE5BdFBvb1BxRVlEd2lQUXFUUWtJV0JiSU9ESDB4OWdKRTVGMVRxdDFUMG5U?=
 =?utf-8?B?dy8xalQ5U2ZnUWdZdjBNZGNTR1hvWG5QZDBJMXFVVHZGLzkvZ2dXOG90TWh4?=
 =?utf-8?B?dDZQQ3RIWXVoaUJTb0V4YWtOYnpLTFNKUDMxSmVOOWFIMUNZTVNQVzAvT3lU?=
 =?utf-8?B?bUZXVGN1VHd2YTloYkZuWGVjaHcvYXZQaEpIUnpuMHVvUTduSDhsRlJ5MEsr?=
 =?utf-8?B?SU8ya3hjWmhxU2wrcW8yL0o2empqdGk3RHVaWTZnalBMMWVRQ3JXbnZ0YmRn?=
 =?utf-8?B?RlpOQ2Y4VGZrOHVpVUFyYmI2ZTFGRHRqZnlSa0pyYlo2em5vcVVqdnNSWlRj?=
 =?utf-8?B?dm8xSmpPNWFPYWwyMWZyNTdGb1o3dXdYeU5qZ0lENkVpZUY5a1hRcFhQMGky?=
 =?utf-8?B?K0l0VjE5MVlsdDdBVHpjNVVhWWZYTmNubE1qMXZacUFuVnNlOElRY0Q4dlRn?=
 =?utf-8?B?YVBtVm1QNEpTUklybHNTZ25iZjJVZlJGK0x5aDlYckdYMEkxOEhJWG1ob1M4?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31afd7e5-b169-419e-9d01-08db36805cbb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:21:54.6254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WwBsbdaYnjOc4LLwmKiGFhEDsBitnoGPjYxjwHGm6L9ITBi24UP8LxxBew9VNAWKAfyVW8R33mNsNQ/02YkkFqDPIN3mi9GsRwjACNGWTD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5207
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Utilize crtc_state->csc on
 chv
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
> Store the chv cgm csc matrix in the crtc state as well. We
> shall store it in the same place where we store the ilk+
> pipe csc matrix (as opposed to the output csc matrix).
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 35 +++++++++++++---------
>   1 file changed, 21 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index a6f7eba59e12..7e8820583942 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -431,10 +431,10 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   		icl_update_output_csc(crtc, &crtc_state->output_csc);
>   }
>   
> -static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
> -				    const struct drm_property_blob *blob)
> +static void chv_cgm_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
> +				    struct intel_csc_matrix *csc)
>   {
> -	const struct drm_color_ctm *ctm = blob->data;
> +	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
>   	int i;
>   
>   	for (i = 0; i < 9; i++) {
> @@ -457,24 +457,30 @@ static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
>   }
>   
>   static void chv_load_cgm_csc(struct intel_crtc *crtc,
> -			     const struct drm_property_blob *blob)
> +			     const struct intel_csc_matrix *csc)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
> -	struct intel_csc_matrix tmp;
> -
> -	chv_cgm_csc_convert_ctm(&tmp, blob);
>   
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
> -			  tmp.coeff[1] << 16 | tmp.coeff[0]);
> +			  csc->coeff[1] << 16 | csc->coeff[0]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF23(pipe),
> -			  tmp.coeff[3] << 16 | tmp.coeff[2]);
> +			  csc->coeff[3] << 16 | csc->coeff[2]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF45(pipe),
> -			  tmp.coeff[5] << 16 | tmp.coeff[4]);
> +			  csc->coeff[5] << 16 | csc->coeff[4]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF67(pipe),
> -			  tmp.coeff[7] << 16 | tmp.coeff[6]);
> +			  csc->coeff[7] << 16 | csc->coeff[6]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF8(pipe),
> -			  tmp.coeff[8]);
> +			  csc->coeff[8]);
> +}
> +
> +static void chv_assign_csc(struct intel_crtc_state *crtc_state)
> +{
> +	if (crtc_state->hw.ctm) {
> +		chv_cgm_csc_convert_ctm(crtc_state, &crtc_state->csc);
> +	} else {
> +		intel_csc_clear(&crtc_state->csc);
> +	}

It does make sense to have a block for csc and another for output_csc, 
analogous to the load part.

We are anyway adding drm_Warn later, so braces can be dropped here and 
introduced in patch adding warn_ons

Otherwise the Patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>   }
>   
>   /* convert hw value with given bit_precision to lut property val */
> @@ -1442,10 +1448,9 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
>   	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
> -	const struct drm_property_blob *ctm = crtc_state->hw.ctm;
>   
>   	if (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC)
> -		chv_load_cgm_csc(crtc, ctm);
> +		chv_load_cgm_csc(crtc, &crtc_state->csc);
>   
>   	if (crtc_state->cgm_mode & CGM_PIPE_MODE_DEGAMMA)
>   		chv_load_cgm_degamma(crtc, pre_csc_lut);
> @@ -1872,6 +1877,8 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
>   
>   	intel_assign_luts(crtc_state);
>   
> +	chv_assign_csc(crtc_state);
> +
>   	crtc_state->preload_luts = chv_can_preload_luts(crtc_state);
>   
>   	return 0;
