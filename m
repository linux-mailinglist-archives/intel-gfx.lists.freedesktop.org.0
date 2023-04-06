Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E96EF6D9281
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D02810EB48;
	Thu,  6 Apr 2023 09:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8201410EB48
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680772648; x=1712308648;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WgdJhEvgB8OEx1VjlF4aIGWM67BfTJBsRfUxcjDXqUk=;
 b=DGDh4KAbisKk79q17LUAl4m/D5rmxHNDaIzjCrs+m+HmpwQLC10dhvSf
 GGAiOKWi5fYFln2j/Uau7yeZtTCQweuvFBrwVnXIQ5m52B4v5Ku6swUzM
 1J6T5LwawxoUWr2dzv0ltRSaK4aRIISy801ikgJSuy6zum/LLQeGal9wc
 rxrG4bO6Rgcm6CAfV/0+7ZAaiewKjoqcz7qe+TqWKg8eXgjQlQrL7wzNI
 cIrYuXMcvBgUwUgw6YThzvoUD/8avmUyC/maRMI+VLNBp85rOFcW5e73k
 G+n1M1ofJQsig725+5o4RMINkACF1HqGDnjiKD5wfNiGIP3iHgHujIyt5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="405474647"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="405474647"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:17:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="717379816"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="717379816"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 06 Apr 2023 02:17:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:17:13 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:17:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:17:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:17:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BOKjrIT465rd3jslfg3Bqr3kgwAFtDYef4yhe+t+PsEPp015/jVK3ykdyiSCrqx4gue3jGnx79pthw2fKj+JIXeSPiGN9FqlhbzoLNpbucrkLwcjTzq+bl/pSSJePJHLT/nJ7NT6gj53hSnk9UgRkLlcSKV2wW1/44lsn4IyohZLrv8ajx8iheYDlgrvmfmHJ+5TU1ntlk++NCLTzzq5JixpSSdWJtKZwPGSplhlxEYcK/1zAbW4PhTY+AzK6mcQqAvJvxK1I0lpKLfUzNQ/17dZD/N6Fn9YeNOUhsC7iFTuV5eFrWcn3AqjNvy4Jjc5NTY3ctrgG2YdCLV1K0EQtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkzOTbt2OEMIGvheeQImDTAMCmH85hfgM+509h+aiM0=;
 b=g9cfEgIXhLo4lXoqvnZ+yJdUjrYTB7ES0sybqqJXG8qppgLm69KNY5Lxm5PLgrVG3R5C68EzDsvNg+H9aIbCvHmrz71cHHzs8HLXFKbt4l7usHcl1cZsJZCfF7FRoAgOh+G5aiVW8EwiKyppQIbbSY2oDFgum6vbRNMiMDnezBonHPJMFX08YHwovQOnKjnFdNRJLOU/ZEzYAAF51t5iE7Va4c7+FymjobzQpDv+h8Q+NzHmXbIoxEA95zzEDVDqUVOtqf+DiS22i5o2YJIU0rAGzObNNPq4kG+M48jCvzX8xh1yKFDGdNzOtLAIAXEVymu984NX3bgCY+FV/wRUWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Thu, 6 Apr
 2023 09:17:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:17:10 +0000
Message-ID: <08b1a6d3-1667-f45c-0f62-b00d38ae2052@intel.com>
Date: Thu, 6 Apr 2023 14:47:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-4-ville.syrjala@linux.intel.com>
 <b5376338-5b2c-7efb-b3e2-b81ede2188f0@intel.com>
In-Reply-To: <b5376338-5b2c-7efb-b3e2-b81ede2188f0@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0083.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5009:EE_
X-MS-Office365-Filtering-Correlation-Id: c52a079f-b703-49be-5f13-08db367fb31f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fJ9UvIzrvog/FoceNCCDutf5wfVfr8TLAH91xpFtFF8bdyJ8KaBqliL3SH3ZaUrpWqa3CkYzYrXTXgCN1UxeKQrS76QDTQABuAL/161OhIfWhib/cRi29QOVD5oOk+zv7mLsL743ImcgHiuRQtmumsFj4f2hrxUwaxYqRp+Fno08nHBANNvqU5jarSXr7YwKNhrlh3yT/EjPN1xNB+/0olIHTmqS8fnirKTjDosPIbI65KGvY5/FbEGDfX98OPotc7vTwe3ZhjyIfF4ZteYNBfVburnmPTVOD7VYKJfr/FHN6PG6muYU6JiWQ0tQLl6qUdSiXbCI4q7S161stO1QHjC8XZez89zjLSRh92ugZHDMWvv0X4bIuM5wR4xvRPy3ZYPz+4oLPChkGEE10BLvXGHppRqT/oK0tvzgnpkI+qyEf5NeK2zb4SqoMelRx5WAY9Zfwd0M+WbaRkIFZi0NJ+2CXGZGoCjX+NFKraR6w0ySqiNghyV6iTEATQ4cVOljDD/DUdweRIZmWowoyN+a2FCxe1rYM+tWImA75luN3JtbNzdzl2Q9xNjhCsdNYAk0DdDolRw6Up82mfsdjxXOIXzln8FlIDy8F/yyMys0+Ud/qyilwkojCZeNgsrlUWfurwBFws1CU4zKnTTbGy+HgQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199021)(31686004)(38100700002)(36756003)(5660300002)(2906002)(31696002)(8936002)(66476007)(41300700001)(66556008)(86362001)(82960400001)(8676002)(66946007)(6486002)(66574015)(83380400001)(2616005)(6666004)(186003)(6506007)(26005)(55236004)(6512007)(53546011)(316002)(478600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M3FXQ2ZXNHh0UFNMNkY2a0p1NHNVYVlxVHUyYWJXTVdqci9SK1RYRituamlP?=
 =?utf-8?B?NVltTlZiMEM1MlRqSmJEcnJIditwa1ZFdy84NG95NkVLcFkzRHFCODBxZ2Zv?=
 =?utf-8?B?dVpXSkxCeXdJNE1HRmNnUytGOTE2SENGdDRPREtqOXVXV09KWVpaQlc4NGtE?=
 =?utf-8?B?UFlKQmpGWWNXb2FwTEF2NTY1VGpBVDE4cEJnWnVzNko3VU8wekpHdzlBa3g3?=
 =?utf-8?B?VDNkZWk3SGhsaW9MajJyZDZzSHl5eEVMNmtoVGRlOTVTanFMMjJ6NjB0Vnh3?=
 =?utf-8?B?Z0NpejEwWGlQdGRxVDUrcjdEU25oMFRkSzJDamdNTU03Z2VuSHltb21zNDBk?=
 =?utf-8?B?RmZHeEpZSDJhWENXNUpqY3FZSnZqaDNGQUMzRzdDVVhMVUdXYi94bXJXU1FY?=
 =?utf-8?B?OFhrWEFrLzNYaitNVUxIa2ZsSUl2MytYTi9PYlF1aFJHQU11b0xNc052MkF4?=
 =?utf-8?B?ekJ1eGJadG8wTi9xRDRhYVU3SUdpMURBN3hLY1cxYThHVzNhajJZSnpvcXQ1?=
 =?utf-8?B?citEZVNvYkF6U3RicnF3S2I2RlkxTGJ3cjBqNXhnQWoraXZaaU5lcy9wSDdu?=
 =?utf-8?B?NG9UUTlDTm03Mk9mNXg4YXJBL2FpMDFrTjg0WGthSW9vcktZdVJsQ2djOVg0?=
 =?utf-8?B?cldZZVpFR2V1dHVwTXgvRHczQW5RdVY3MmNkMzR6RnFDeUtObHZxa3JPM2tH?=
 =?utf-8?B?SldKUGVqV1pPaEU4ajV2dDQrQWgrekRRZ3dCM1hNYmtBQU9jR1dwSnNyT3JX?=
 =?utf-8?B?T09tSERnMVUzMTArMTI1a0l2ODVSSUY4YU0wcCtiOHN4WXhnNitFTGdPWGxL?=
 =?utf-8?B?TWNTNXdFQjUrL0V1L2RQZ2cvSVdENm5jNTJmdkFGd0IyK0FYVlZ5cnl1OGx5?=
 =?utf-8?B?dENBTFdzS21sZmtRaTNuMitoMHEyTFdiMk5FWVdZNWRzc3dTWmhSaTV1SmRE?=
 =?utf-8?B?bWRrWVdyRlFZWkx3S3RDNkJiUnM3QlRBcnpoVU01WW9pSzRNSEFaYkNzSWdL?=
 =?utf-8?B?UVdraW5TUW5oWklqNU02Ump2ZUNNcmhYNStacUFMUkhmREZzaW9STEl3OUJ6?=
 =?utf-8?B?VUdmVk1jalpzcmtFQm0xZ2NzVnh4RnBiVTVKdGtjVDQwU1E5aGFUNGR0SjFk?=
 =?utf-8?B?WXBtNnhQYlVVMHhYV01tZHJVMGVMeGZaeDRzdzJPNnRXRGRRcldlZEwrQ1N2?=
 =?utf-8?B?Z2NwYXdSZWEzU3BVSGI5VWxySDhPYlczR0Q4WlRaR0U3KzlJeTQvWE9IRUU1?=
 =?utf-8?B?NXZNMFVYT2xiUkpLdzcybnJnOVo0YTdZbmppZUpNYVVXNmpJNC9iVmRKUzFK?=
 =?utf-8?B?alVhekVDQm52ZGhidmdOYTNEdVFKc0IrSEMwdWw2WnZtMzRWTnQ2WlBUOWpE?=
 =?utf-8?B?YXlTT0x5NFB2NVNqRFlQUU4vK29kR1NCcHBjRW9aNGNmR3JUazloTFFuNVZq?=
 =?utf-8?B?L1BrU2ozSHRVMjNuWXllTEJhQTBnZndBc092N3pXRGRIZ2RNT0EyN0k2QkZZ?=
 =?utf-8?B?TmplTk1lNU1rWDZxUFZOZDBlNkt5bnRNNFk2YjNmOW5sZS94bWpRbS9SRDEr?=
 =?utf-8?B?cVZOcVFtSUpiK1lkcldwZVo0TWpwWVFYLzRhRVF5dXV3RCs2NXRIL0xTTmtq?=
 =?utf-8?B?N3dUYnlYRnNnSFNwMnBGWXRQM0MrczlmTXM2RStKb2JtWlpIandOdDlFTER0?=
 =?utf-8?B?Nzhwa1kwLy8rYU1zTUJqUmlFSVZjM2J1M09UcjNwb0lJbzFOOVNXb3lYbi9t?=
 =?utf-8?B?V1E4RGlCN0dsY0Fjb0ZxNGd0S01NQnlvMWhVamI3WWFFd3lVZ2hZNHNBMno5?=
 =?utf-8?B?N2pOMzQ2NjNMdURydDhORTEyTUhrSkd1WFFnUEFaRTRGNnByNDBOSmRBVzNT?=
 =?utf-8?B?eFdRSTdDZEtMM3VJKzQ0MytmWWxwZ1pTd0ZBZEU2ekJ4Qk1yNmFpS2kvaXFK?=
 =?utf-8?B?citmUTVEUGptSjVhVmZsVFBFSW0yY05PTzZMYjRWNUVCK0YvYW81Z1JZTVVx?=
 =?utf-8?B?eUFpT3JiMklaK05yR0trMHhJQ0c0eGp4Sm1DMGpLc0pvalJRdnJLRE9ZbUtk?=
 =?utf-8?B?MWVFemxxSVdacUZFZmtTS291TVg0ejFnUWNqM0pKeU5TY0tmcm5INVpqQXds?=
 =?utf-8?B?SVIyVUpqUnZuOFJ6WFJsNGVLdmlhMm1LVHhqTWlpM3N2UTRXcXdLa2RCVWFZ?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c52a079f-b703-49be-5f13-08db367fb31f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:17:10.0921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: voAalFY9W4yRwHXBL2biOq7ylJSRjh2kh7YQ3gRJdQB2eaQRf/89rr/aYktsfZfotNIm2MXhBVolYAx5sFPr1LmoMNVtTeCfTS5p9DMSIWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5009
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


On 4/6/2023 2:33 PM, Nautiyal, Ankit K wrote:
>
> On 3/29/2023 7:19 PM, Ville Syrjala wrote:
>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>
>> Split chv_cgm_csc_convert_ctm() out from chv_load_cgm_csc() so
>> that we have functions with clear jobs. This is also how the ilk+
>> code is already structured.
>>
>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_color.c | 19 +++++++++++++------
>>   1 file changed, 13 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c 
>> b/drivers/gpu/drm/i915/display/intel_color.c
>> index b1059e0c0665..47af24e64a7e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>> @@ -399,16 +399,13 @@ static void icl_load_csc_matrix(const struct 
>> intel_crtc_state *crtc_state)
>>       }
>>   }
>>   -static void chv_load_cgm_csc(struct intel_crtc *crtc,
>> -                 const struct drm_property_blob *blob)
>> +static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
>> +                    const struct drm_property_blob *blob)
>>   {
>> -    struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>       const struct drm_color_ctm *ctm = blob->data;
>> -    enum pipe pipe = crtc->pipe;
>> -    u16 coeffs[9];
>>       int i;
>>   -    for (i = 0; i < ARRAY_SIZE(coeffs); i++) {
>> +    for (i = 0; i < 9; i++) {
>
> Can still use ARRAY_SIZE(coeffs).

This comment can be ignored.

I realized, we are using 9 throughout to iterate over the coefficients, 
so lets keep it here too.

Patch is good as is.


>
> In any case the patch looks good to me.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
>
>>           u64 abs_coeff = ((1ULL << 63) - 1) & ctm->matrix[i];
>>             /* Round coefficient. */
>> @@ -425,6 +422,16 @@ static void chv_load_cgm_csc(struct intel_crtc 
>> *crtc,
>>           coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
>>           coeffs[i] |= (abs_coeff >> 20) & 0xfff;
>>       }
>> +}
>> +
>> +static void chv_load_cgm_csc(struct intel_crtc *crtc,
>> +                 const struct drm_property_blob *blob)
>> +{
>> +    struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>> +    enum pipe pipe = crtc->pipe;
>> +    u16 coeffs[9];
>> +
>> +    chv_cgm_csc_convert_ctm(coeffs, blob);
>>         intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
>>                 coeffs[1] << 16 | coeffs[0]);
