Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC49463B94F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 06:07:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5802010E364;
	Tue, 29 Nov 2022 05:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BF910E364
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 05:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669698457; x=1701234457;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e63YRk4o1rn3dY23Ppq8U05QlwMnTK0mqgGoirS7aYE=;
 b=MG4pHFCp3qbqJbrOyDWw/WtZpGxPfLwyX1iBFHX0uSD/0QzZeQIIfP64
 yAmmj7SERw3tzJpd0MC2eWQNvjpP3zZ5ss1U4B3/xa1WyWPiqIrzJfqpW
 +h4Nl6TZlbRx8Li0rg+4w9JwN7uFFVsboSsAEqMifGMO/nQaaFriragbh
 rttMyluc9HODdNSDkSDff3iQ8Q+iizIGhEPAIzPPn2hI0IEYNoxBHcEvV
 5D12v/ZJPEaSEL28C5HQmT+v8QgaSwXVbbkJ6R4VRWElCKG4lrD/Tteyg
 MbJe+EeC4dTaZryk6C7YCdZk/1bkFB0wyB2Lm7r9MRRs+AI/dbzcbirIs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="302610866"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="302610866"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 21:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="888704816"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="888704816"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 28 Nov 2022 21:07:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 21:07:29 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 21:07:29 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 21:07:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAe8T5MVyvMPSGJkwFOdEBVhcE7/97q34iUIEvOaCBfG89dLYAEPkkt69slK7DIDdGzCxXjC6aFIRlRWLkHJEUnWDl/UpBkJRzOLidD3OpB/D9QxGQ/mFFGsMpcHl6Wsp+efOiA2bHtrRGMIMJzPUNsZGZN3JeQgeZi/Fwl8/3fH1Xx9k/BtnjUPKYHkiQ14abVNfi2jTC4+9oJ9NKEoYTa4ANpNUZFF9dFLH8+juaD2ynvHOPmP9lmK6RD9c5nKwbv+HmjF64fBJZUnEHCauzGG0pMARbRfd+PB4J6WrIDCVTYB1AbaZ8lnj4D1KT4yCpIJ+rq1TZt7WnrHbTCMHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oi+S7WKIWsxV/VwIEKEJcK1D2gcvT27ViCY4ryUBIfg=;
 b=L/ienirQZafZPe1YuH70TtnmlNSIzXYOUspPBmZ994v4p7LXi8rKkbpCTZQETtzV/ueoEye+m+ktXp+xicMk6VLx+4qPd+hY8xi1gxD6HuFyJDhNnwjLorAmFpsldy/Bkaudo+fP/z2/ZhB5X8yximTMEW+3odjJ5SKNgDkEgOWpU0hBUC/I7VtkQZVjCb6tqdIJEfypgwp3SiFI1ygRXqC3HjCwCmqrJIragVBRJ85SAT/beBUcDODkWFfCivmfYtNm1iuRBnya5ow4Ojj5IhxLz73G3IJSn5dQTBgqdc5iAt7blpOxqsFuVTTAdff1dCnE6HiWlZvLhkusUwKfOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by SJ0PR11MB5663.namprd11.prod.outlook.com (2603:10b6:a03:3bc::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Tue, 29 Nov
 2022 05:07:27 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::91d7:def6:dd3b:3bbd%8]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 05:07:27 +0000
Message-ID: <d58b2a2b-d9e0-4fd4-e24d-ed68a4f7de5e@intel.com>
Date: Tue, 29 Nov 2022 10:37:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <niranjana.vishwanathapura@intel.com>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <6cb639bfc8e0eddb3fece1b058e8ab6444f98fb2.1669629369.git.aravind.iddamsetty@intel.com>
 <20221128201933.5aifg3cyrkda3l4m@ldmartin-desk2.lan>
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <20221128201933.5aifg3cyrkda3l4m@ldmartin-desk2.lan>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0188.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::20) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|SJ0PR11MB5663:EE_
X-MS-Office365-Filtering-Correlation-Id: 0188befd-c5a8-4340-184a-08dad1c79b2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kwvk9cKc0Raih7+i6T+KejOcfpkUTenOVTQQjiNSts/4NF+totU5pjA/hCMsCqCSxHq/8mB2Dgz4CBYwyE7LqmI7Edl5lYIey4k0kntmTQlJlC+AHLYfSMop8Sn7P0oYFt0NQUrFmJ7RU4DB/OH4voh1Xl60oO0ho8x8sCUllbZSLa0aeUQwOTYtaRUHEXrt3MKnkMHostmjx6zRI10FYUSMuT4gjf3Sg369EMNuKWH/P+Q4ApQ/4HRT6ydERiT/TaAcxhhd3vWrNXugMMC4zhlKMNFrb+e3ny/vVUyuG8/kF7/0gTp6s3Pv5RcyGkQQQtHTeoV01RwTIG1QoduB6Iq9um3IcykmDzjytHJk1vhOCIlnrATHyLZEcKNUiBiEg67i8lZMv4eOR8Vh1LaNYtvMbSID05ExiPo0AFUxeiJ7i9+Kko4T3+HUeFgjsrHJLIEFGnUjfrDF5uh/vFv+bMrJbyqtjIxr3t0GnOaDpahn6T2WM8/uF5IV1+UoiFXB94OVxJ+HWPTjAzxUvjgowaiD9xOy4AolEdOetGc7+2Ra+ve41mBQjNYsC+3WVT3s1CS1JPBGdFU7eA+LTu7D/4pTGVvCxUXbWXRSX+v1RvJZwcxl77oBgm+JyADOpXYyz3cm9RJDXbSe/vCg96RCy1sGvs63We2V05lSzExEfHqiV9H9t9gNZMdWxnZWUIZ3BCadejLzXDQ97Qgh8B3rswvzEOH+fJtoCwIxjtVyG58=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(39860400002)(376002)(346002)(451199015)(2616005)(31686004)(2906002)(83380400001)(6512007)(6506007)(38100700002)(6666004)(8676002)(41300700001)(478600001)(66946007)(66476007)(6486002)(53546011)(36756003)(82960400001)(26005)(66556008)(186003)(5660300002)(8936002)(4326008)(31696002)(86362001)(6636002)(316002)(54906003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czhZTlNGWTZISzc2eVVWaTNObjBjTHFVR0RkVUNYQVlBTXJsTk9OaC9xWlRK?=
 =?utf-8?B?U0JTM2hRRXJLSEUyYTdhRU1RTmQ3eCthdWl5Y1lrVzFJdVZmQkxjZkpzRXVh?=
 =?utf-8?B?RkJLNGUwQzVScFpzWXVqWFdnRHQrMnN2NmkzemNFckFRaldTaE1YaVQwMTEx?=
 =?utf-8?B?WGF4c0dvT1drNEJ0MWs5KzJXTWxPUG5aQ3FtWk1KeXlKZHBsNlpPZmYrYis4?=
 =?utf-8?B?Ri9Dd1phTUMybGwvNnhBUTdWUTJGcWpGZFFxYW9UcnVkY1dtU1U2UXVQK3RZ?=
 =?utf-8?B?d05xRFpGQnZjanVtT0FZQ2NYUFF0b2lwMjc3VWNqdUVxUTQwZnN6V3FVa3l3?=
 =?utf-8?B?bGtGdjN2RkxLa0lQV24yMHBCcmcrZncyVVlSR0F0TWd6YnpmMnEyZXZObFhF?=
 =?utf-8?B?N0tGVFIyZzEvak01T3RPS1NKY1kxT1dtV2RTZ2F3N0duSmFFcXpXWVpFMlhn?=
 =?utf-8?B?dElzWUNtU0gvUjF3Sm1qR0tHTzArZFduR2R4RWcvbEpNRlBPRW01Rk9ZNzlB?=
 =?utf-8?B?WHpTNktaZHNyaGtOTHdIeWNrKzdRcWYrMk9oV05hK0wzVjVXZVdRWlYzVGdR?=
 =?utf-8?B?NXhVZ24wYndVcE0yMitiWjZJekMva3B3Yi9QcjlGaDZUUGFjRWVzZFRxRTgy?=
 =?utf-8?B?NXZvc0ZIcTBDdjF5dVJ0WlRIK2piRXVyamJIL3VBNnlmYm1acWRkUHBnUk03?=
 =?utf-8?B?UGM2NWkveit0eDIzYjV6ZzhaczFNVG81RWFQSFZVcmRmUmRPSDBtMWR1dEJ6?=
 =?utf-8?B?TDdyREQwU1lVamxJVnpKSG9NbGNaZSs4SmtaaVhPUkpPMzIyZVZCSjRzemhS?=
 =?utf-8?B?Q0JFbGFvR2FseGZNQkpWMTNScGgwS0hsckZ3bGlpN0RPcmROZy8zTmdnV3RC?=
 =?utf-8?B?Q2dqOFJBOFFCSnl1anJhTGNGTFUxWjN2VVV5OFE0SU53TTZ3dXdBNVBHanU1?=
 =?utf-8?B?SE5OQlgzTThydmttdG9PWTEzK3Nvd3c5WTRNNnFuZ3BKaEpJTS9WaDdvQmUr?=
 =?utf-8?B?azdraEN5UVArT3VjV2Izb0ZPaThyeVdoM1RwemNUT01VYTJmK2VmVkVhY0xJ?=
 =?utf-8?B?bGpzcEI4ZjRVOTR2RktOTGhVbU5wVGtEUGJET2FUaDBIb0diWEd3V1hRVkp3?=
 =?utf-8?B?TXZ6SSt0djZBRXFyUTNKUCtvZE1IZEVpU3BRL0ZramlldHJlSWZYL1dFL3R6?=
 =?utf-8?B?RCtlY2xyUno1MDgrZGpxVDBWZnpicGk0dkRvMWRVdDVuL01oaWJXOENSOEJt?=
 =?utf-8?B?MmNjODh3a1dJNTRIeXBhbFpkK1JNTmEyeXFwUDcvcTlmU2hGMGRnUjdHdFlq?=
 =?utf-8?B?Q1Y2TDUyTlh1S0pndEpnVGNxWk5SMW16NlQ1RVRGNEFtK0QzSFNjTDV5RDFu?=
 =?utf-8?B?c0g1cVN4QmF2Vkcva1lPdjcwUGdjNndrNU5lalZPY1d4VGdjQU54WG9ESG13?=
 =?utf-8?B?YjdJN09qeTd3YjlTaHJZZWMzL1JjT0RCQW92cUdMMUlMNlNicHo0UU5yaEpx?=
 =?utf-8?B?SFJ3dGQ2a21mNG1FSEFBV2RJTjRQWHFJV00wbkdKYlZZdERwMFFQUCtaR28y?=
 =?utf-8?B?UWw0cnRJb1BJSVJLeUlpMmFEU2Exb1MwVnYvVmI0S2ZCNnlyOEtuYjRDd25p?=
 =?utf-8?B?RTQyc0pOYnM3eEVLWlNHYm1UYTN4ZWgyalk5ZXU4ajVTZEFQWUdJcGF0eEZT?=
 =?utf-8?B?SlhzdmtoT3VYWW5oeS9OVURiQXdPOGVxa1gwa0VaMXppanhLYm5pdFdGeWcv?=
 =?utf-8?B?MUdxMWp2MTgwNWUrUlErSVc1Q2pTNCtIYmdnbkNxUWJka3h3UzYyeFMyZ2Fo?=
 =?utf-8?B?cmtmQU1KaU9kRlM2b3c1LzNacnk3L1NtV2dUYkY0THBRNjA4OVVoOTVYZHNB?=
 =?utf-8?B?OUJlZW01SXJnODdvM2FrdWxZanZ4dGZScjJCMHdhQnZjWGdXK1YzaDJIRWhM?=
 =?utf-8?B?dlNNY1R4eFgvSDJDOWx0anI1OVlvNHFLRnZPbDkycHZONlI1YUJTZzJWRnhq?=
 =?utf-8?B?Wm1CNWdGeHpMb1QrVUFxYk1qYllkQlUwSFNYQjV0Y2NyQ3hwbWd2cGk3ajIz?=
 =?utf-8?B?NG5PRHNPbTFiMXdUdHhwa3NPVzR5ei84VzFzOXhmNy8yN2xVaFdRT3o2UjVH?=
 =?utf-8?B?RmZPdXBhbXFRTGQ1UGtXYUZlSG1YbDJsaGVxV1RPMlRCN2JyOWYxQ0s2NnY3?=
 =?utf-8?Q?uHSvs+h1I8YgkUUbE9D8a3Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0188befd-c5a8-4340-184a-08dad1c79b2b
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2022 05:07:27.5065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J2AVKITzR6vYawoCSWhHA8xVeKtGXIxvd0qeLvGthtOUcOpMW8Jn9xbSswAK2iPbImGZhnCw6z1tizxxto2xpUJOlaJmoLoRQssCxBJw9yY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5663
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/mtl/UAPI: Disable SET_CACHING
 IOCTL for MTL+
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com, daniel@ffwll.ch
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 29-11-2022 01:49, Lucas De Marchi wrote:
> On Mon, Nov 28, 2022 at 03:43:52PM +0530, Aravind Iddamsetty wrote:
>> From: Pallavi Mishra <pallavi.mishra@intel.com>
>>
>> Caching mode for an object shall be selected via upcoming VM_BIND
>> interface.
> 
> last I've heard there was no plan to support this through VM_BIND. Did
> anything change?  Otherwise this needs a better explanation recorded in
> the cover letter.
@Niranjana, We do plan to support this via VM_BIND in future is it not?

Thanks,
Aravind.
> 
> According to e7737b67ab46 ("drm/i915/uapi: reject caching ioctls for
> discrete")
> it seems it was already planned to extend this to all platforms.
> 
> +Daniel, +Matt Auld
> 
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>
>> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>> drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
>> 1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> index d44a152ce680..aebbfe186143 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> @@ -332,6 +332,9 @@ int i915_gem_set_caching_ioctl(struct drm_device
>> *dev, void *data,
>>     if (IS_DGFX(i915))
>>         return -ENODEV;
>>
>> +    if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>> +        return -EOPNOTSUPP;
> 
> Why a different return? Should this be treated similar to the IS_DGFX()
> case above? It seems we are also missing an equivalent change in
> i915_gem_get_caching_ioctl().
> 
> include/uapi/drm/i915_drm.h also needs to be updated with documentation
> about this behavior. See the commit mentioned above.
> 
> Lucas De Marchi
> 
> 
> 
>> +
>>     switch (args->caching) {
>>     case I915_CACHING_NONE:
>>         level = I915_CACHE_NONE;
>> -- 
>> 2.25.1
>>
