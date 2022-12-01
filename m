Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF9563E9EA
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 07:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF0910E0F7;
	Thu,  1 Dec 2022 06:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3539610E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 06:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669876008; x=1701412008;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oLINivy6fNkqXNMT+5JQpof5euNoMSoWj5lvSuie5Hc=;
 b=RiTJ2zKW6jYrBna36isUG5Dzu6u9d00wkkUJUcHAKglkiUz7eA4JUxWV
 95Ad3QxunwZzlp9OzDgr2XXX3pnGrRjkBiznOlSsmwLMo8fJRQaTenA50
 DAX2axMQhviPxAMrrtBaStQ99hkY6U51gq7TF2r7F3rttqF2yWFjtIdoN
 rdSsPR865kBJheQmVy2UvF4DYISfAjv+6nAWYJC/kuQ6jkMjAnx5ThNew
 bt3atrRRW4cy/ajbtTylbDdlSG6F2yNISM0ilaf/aAEl2Gd5t1XWim7wz
 NyBbPSQeHmb4oAv9e9pdW9kmcnInaa2GZ1g5CyrOSCLmaKnT/w8BhD9Mx A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="295293672"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="295293672"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 22:26:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="646632996"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="646632996"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2022 22:26:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 22:26:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 22:26:47 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 22:26:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q05YG8HGjpLZTof8PIMObb+rK75BAp3xT97HdRQLz3A+GDkEpJMXHsEA+xxrSdbaIMC4QCD8OOXFYDiGsy0fi/ccdGopmj3XBokbBIhPOMpRnCjolEMrmb1EP0m7ufWQQkJlWJhXIWVNIJsfRyIhK3olALljCWCClDj9amUAksIdUGyAUCJ7Y1+jgEu2ppCm6Tu7Fw86sIg000gnIIPA8LMXliY8msqWjbVREovhgDpE73gi3NNyFXyD75+JUWwBu7+RSJctxDb1Ge115yrw54Yy/gAhvyJ3/xMpn6/d6E8DYFdcnJtOsui0K9WDj7Y8fLKh9KP17eIKQe6pLzGNUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=juxCyGT3c0DqIuNWf6bUZlCwg5jmNDjttV7LhLicCzU=;
 b=Am3FM4l6jWvNzVnt8MYBv7mdboLgW3NZLgRE1YEVhIH2aVhuGjCTeG3tG2eV9Fxzw+NZTxsh5mNFB5gYgR6Qo1sWOkjx1aKDnQPtaWnVoTXqgRWoSwCjSKYQvigncDofOxybwIJq3ChBS1Gtg8tSXYLHAbvNjB6Kj+jkg1qq6Ld46xYnIWCzv5CjmVfL7PUdtMC8v2vfUULV5h7Mal8d2FxlCc0pG4Eup6EhE19AyJBcFZ52zWhMxIYCKbGd5mE5tMGR2Mjt7T0hjpu7V6kTTvTneQHXf5I19h6pz5nu7HpGeV9ayc4iH1j/JbJkt/UqCtSpwuxtkNxph+5V6guQwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7310.namprd11.prod.outlook.com (2603:10b6:8:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 06:26:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 06:26:46 +0000
Message-ID: <9f71e1c1-8f6a-f3e0-79a0-6b9738c187a3@intel.com>
Date: Thu, 1 Dec 2022 11:56:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-12-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0205.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: 35a9e8db-3750-4050-c43d-08dad3650512
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WE8XttWMdWWsEcQ2WP6NzDCtgNVqYPQDikU6JHOKz78sgc8MPBi4sfFG6GMU2Bmo1sEdjZUbUvb2j7Yi97b3q2UVAFpJBu5cJonlbEUOVcZcoT9R6vHD5efBCYuaxjI8SCIJS5NSNG1D8oo2WzW0lwJrjBWPefKvqbhhRfeLE3btq4J5hUfiOL8tw6+HFQHFqH+O4XmQuuDiY3+9AnvHBlFEH9zkPNbppGqfMb0CWvPTtQLmwxiJasy8WOeNJqtNo1lokL6LM0alMFLJX4x28g0GAjq6+tJPoiOjRO1XVf/h0/FEGqNTQ0OdnCcfFU5Otk7EWxf+yhXjQbH/bTlklqQp8UiAY08XShAV09DkbIrkDbKPf1ipN+snP0ie2jBrPeMmwlWlT2e0RmHf4VsieVIlKmzPdfwbtZudd4RRGHt2adgTcAwcHicNgUD019dgXfLFTCzcQ9jbEriU+Ms7E6iRaZRi4gsNh7q91NGghSl5OevZ3s2NKmAHeoK5OFwLj6jxPiSLurs5z6lzEVbfAq/fhfKaXENhuKWOZnGoySGczCOnn6y5Clt+6OywaqbEngnRQNoZtNjhpK9hKb9oKqC/amrZ8plRWTMdoqXY0xx7i68u38E+Idq+I4oF+XfHKAw5WaltmCYGju/UPa0TXPW2Bt1uRIh/5f17tPtimNi/5b/4nX9Ec0mrlbU0HqNBpitBksPvvu9GET4viveNT6RPD1qYcbf52TDk/QA0utc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(346002)(366004)(396003)(39860400002)(451199015)(6486002)(478600001)(55236004)(82960400001)(53546011)(186003)(66574015)(36756003)(83380400001)(38100700002)(2616005)(6512007)(6506007)(26005)(8936002)(5660300002)(6666004)(2906002)(316002)(41300700001)(31686004)(66476007)(8676002)(66946007)(66556008)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEVNdHF2ZmNwQ01JdWFtdXVaRHJHUmNFNjRnSkYzcmJRNFBHOG9VczVQWFhV?=
 =?utf-8?B?Z3I0Yi9mbkZndzFUc09leUhWMUZDQ2dOUUE1UkFMOFZCYVpGS1lrU0JCR2dt?=
 =?utf-8?B?bERtY0t6VHZsWGhwajIxNWtBa2czZ2xQc2tEMlVkUFhrMVVFdm1GS1BWWk1p?=
 =?utf-8?B?N3FuNEJZanFJenh3NWpwTHpKWGREUTI2SEhpUlBxb1hSUVNoREhCTzR4VG9C?=
 =?utf-8?B?MWkrL09RMkJrNm9hTmNYMVc5QzFoTllJaEh0OXYyWHBuMDlwYnJxU3JQMU9w?=
 =?utf-8?B?VkRJRDB4VFlrMkZjMWRieTAvc0s3SzJUbXlyeXBhZUhGWlV5NVZhWEFmemJj?=
 =?utf-8?B?b2V0Uys4dTM2VXlRdHByUm5rNTdjUVlRaXdXdEV4MTFnbkxSQ0VCRjVxa0dB?=
 =?utf-8?B?dlhZemFTb3F3aHQ2L0hETG5SbHFHUGxpMW5oKzRvdUpET0VRcXFVbWQ2OHNL?=
 =?utf-8?B?aC8xaG5VUFhXZlZyaU9VaVV0a2ZKSjhQeVU3U2tSazVEWXNQaTg0emo4Nmh4?=
 =?utf-8?B?bnpzRUVlZzZVOENLUGNBeTN4emtqNTFoVWV6YjJWTnR2dWpqcGRuMGJLeDYr?=
 =?utf-8?B?RnNHWVlHNXFKYU14d2xqS0pYRzJGUWpQL2FtYnNiUVdXNldpR2lqN3NGcjdK?=
 =?utf-8?B?YlNCTHFudnlrQlJoZ1dlRDYwcEV6UDRjcHNXRzVvbjBWNmY2c3IzR3p0QS9R?=
 =?utf-8?B?eUJ0UFRRU0Jya2wvYmdDL292RlUwRllrVUpKMzZBNFFGeTNFd0lDWTc4V2w5?=
 =?utf-8?B?SWw0dXJXc3pDNXpEWG4ycTc2WTJHaUt3RlQwKzdoYll0TFlJVDZ0QjRoMzhW?=
 =?utf-8?B?cVJkV0V1cS9MY0NkdGk3RnpnaURZUEVEZlR3ZFV6QTNYVXlLekhnSW5Iajh3?=
 =?utf-8?B?MnBNaXVzb1hEZGVsejVINTNYNXpLL1ZuSWdjbGtzRFJwamN3WnNSd1huWEsz?=
 =?utf-8?B?dmwvSWhiRVVIYUZjaHd4SUhTNm9ObzcyaEUxQzZpcUx5ME9MU091dkRYeFZo?=
 =?utf-8?B?RUdFcGhXZVU4Y0RXUU5xaXAwbDBiaFFUdmp3V0xITlVmaEthaEZwZWIySXBx?=
 =?utf-8?B?WFhDSkRlNFJTbXA3c1RkZEFzRVgvWjlBREpYZS9HbVMzaWZ2UnZpdktXdW5G?=
 =?utf-8?B?Tkp1WXhOSDJIZURJMzdXd3F3bXBpWDc5S3RvMmVPNlpCTzhzTTZ0Y1NLWGg4?=
 =?utf-8?B?MnNYTlNMMVFnMFBHekxhdUgxRmtTSG1sZmRocWVIZ1pUNEIyREVOeHYwNlph?=
 =?utf-8?B?NWJEcGpzNUpMaWgxOUN2aUF6eEc5Z3docFU1ZHFrYkluUmMzR2hMTHpqQVZW?=
 =?utf-8?B?SnhranBLckVJZU9VcHNzWEFMUnYzUm1YUjJlZFJPYnJXdGYvcVpkMjluZ1JB?=
 =?utf-8?B?TUxXUHRJUjVuTkJtL3U1b2xIT1J6WGh0N0U5Tm5qRWhXeGMwRnk0Qm9La25L?=
 =?utf-8?B?S1NlaC8rR0xTNysyVWxsclQ1RGF5OVpEQWRQeTZzTjE0ZlJ2VlM5dmU5ZUZE?=
 =?utf-8?B?ekFLakhWRTRIdWV2dlU2eXBwRmdEUmRjVFBXWTdmcUM5SzlEbXptUEhIbFJF?=
 =?utf-8?B?b1dQTzBDbXNMZEJZUXRvRHdxQm80aStRRy9vVkppTno2UVlnb0tMNkJwMmQ2?=
 =?utf-8?B?KzhSRENxZ3NlQ2FsRktSZk5FVTNRaVdweURSQ1ArK1RRWDYzS2lwdHZQYUMw?=
 =?utf-8?B?dk41MnltRklHNGxHbzB4ZmVnRGU0Z0xvS3NQdFQ5RWlOZ3o2VW12Yjk4NGFm?=
 =?utf-8?B?ZXVvU000UWQ4UGtQWTQrSGVENTQzaFNGQzkzcFBjRFBtd1JVN0ljSHE2WEQ3?=
 =?utf-8?B?TWJEemdkMFFsUW1nalpjMnpCTlFHU0xCcFJZZ2FXeHczZ09zOG0zOEpwa3dx?=
 =?utf-8?B?WERFZXJoQTlmTVg4VGVDeG9Kc1YvTTl6R3R5YzFlYWZnaDRSeitKc2VLNGxZ?=
 =?utf-8?B?R2lOOFRLeFMwekVYN3hvRlduV1RxTExGNFhiRXZmdmNsOEtkZzVNalk3WHc2?=
 =?utf-8?B?alVrT2dZNGw1ajB4UXdiT28rQVNwck1WWVplM05WVzJOL2RSUzUvbjFxdTNG?=
 =?utf-8?B?UVRheVo4dFp1VXdvY0xjWXVkL2lES0dya09DakFCTHlrU1QvalRERTBUM3Z0?=
 =?utf-8?B?clAxUjRrWkdhWXA0YW5DR0Z2WUpuUEhXeVpVZzNHbHg5YStZQktja0pOWXlu?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35a9e8db-3750-4050-c43d-08dad3650512
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 06:26:45.9901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qviAchJ21iMIoUn933K6Mri6QNDdrjAiimrBMYZxeBnWr2iDVo9+6OORB9VMnu4YcXjlTdqSitpoI9uXL4AhaMA38SHlQJdIIa9mbu+2rpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/13] Revert "drm/i915: Disable DSB usage
 for now"
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


On 11/23/2022 8:56 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> This reverts commit 99510e1afb4863a225207146bd988064c5fd0629.
>
> DSB is now getting disabled locally in the color management
> code so we don't need to apply this big hammer via the device
> info (not that we have other DSB users at the moment).
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/i915_pci.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 414b4bfd514b..d8f0f512c944 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -889,7 +889,7 @@ static const struct intel_device_info jsl_info = {
>   	TGL_CURSOR_OFFSETS, \
>   	.has_global_mocs = 1, \
>   	.has_pxp = 1, \
> -	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
> +	.display.has_dsb = 1
>   
>   static const struct intel_device_info tgl_info = {
>   	GEN12_FEATURES,
