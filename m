Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 197AE6B1E26
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 09:31:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDF010E7AE;
	Thu,  9 Mar 2023 08:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C6B10E7AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678350714; x=1709886714;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=en94kX9NbS3nNs7sfRn0pVHqt5czx7OucaLcudQigDE=;
 b=Bh1hgh/LkWUUcTqk+47HKzPScOtyqP5cwfqiOXnPLezWzmSrSGTyITh7
 d6k+8w08iVz6fqBYtPrSFZOxUSF+27PFSO2VI+tZHPXOAE/77FmY/fi17
 6Bbwvm8DqFY8LrnZBSuY3jRrYIDWH81/S4XB9YqK+qVhprXZAaWDntFA5
 frAw8SvCKdw6CFajK84EqLJ68kiVXDAVgSy7sRoB3asEvB1niuAK+tvS1
 TBrxu92s+Nts10n7ThgLCLbyPMd1uT+V5FwM+Np1eX5TBmT9qRNbA6eId
 GWFHuSJp2WGzHAx85D6hAeZZ65agwdi95yB6+fb+s6Nhz2057Lj/l/rdw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="324709470"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="324709470"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 00:31:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="679662917"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; d="scan'208";a="679662917"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 09 Mar 2023 00:31:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 00:31:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 00:31:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 00:31:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRASE36tR5xenOCAsixxNEcW7qyDYocfAj8ubp9mnJg1IBtKvvJoR3niVR3+Muu/8FPzmYgvUJDpyvIyHnswyvB8eVVhyBLVs4dyIA0z5FV7K7lipBzWS3BUtd+xbJlzimhGPFWJf2YTeugZKYpnniZRhrXdgbkMdQcxGQCzJbIk7471YZ8/vKHd/RMheyPaiKJ1EuhshBuZi5sfHAXc2lXhuF8jbPBVLo5xgi1PKVPpFsLMuECJqwdyQ7baW3IEaZ+LwnIAn9COO1ekk6NOczfkZlYFtVInTgfiuSfnON2rLSqxYxdGu7Gr9Mp7g1vhfearHJUOCqGZKgUIKRUk1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g+t34ICqHXWRpYk4lSYX9EebUC2Mg69vJwI/8uL3nxs=;
 b=kvscaVuqEkkL6QJ+R5NSNFD0+7Hq58AFLaqQCBx+6IvmnbOfImATtVDlebP/9WBbqAbJ1X1BwlrM7nl72nlNVK+byUvvruAuabdv5PUOo1vAJVJbXboZlnGuwjFKet56CtEHJCDC/qgR8kOZ6tjYHqsDcPCPuopV6PhEDqKh2Bz9hPuvLt9mMIynx+pfL4dznqxUs2A4LV3nLhsjI10nnTmc5KsZGkBbGk8hpQbpf40du6mksIsGLXv5TpB9bgt7/VS/g7NBosoSQW7FflCgsCHAhVcYP68Gtf2c2jMWOoYIIpCY/MA+xSd58+lfx0mJHbxMH8NcqsN14CXCLZduBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7618.namprd11.prod.outlook.com (2603:10b6:a03:4cb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.25; Thu, 9 Mar
 2023 08:31:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::a4d:71cf:e6bb:6942%9]) with mapi id 15.20.6178.019; Thu, 9 Mar 2023
 08:31:16 +0000
Message-ID: <885ac9ea-97cf-b35d-c75a-6f1d28c27386@intel.com>
Date: Thu, 9 Mar 2023 14:01:06 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
 <20230227040324.130811-4-ankit.k.nautiyal@intel.com>
 <ZAilganP5W3sCgG1@intel.com> <ZAipD8UzhW3dOUGW@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZAipD8UzhW3dOUGW@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0150.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7618:EE_
X-MS-Office365-Filtering-Correlation-Id: 244ebccf-3bae-4c3e-77a6-08db2078a631
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rUpeNQa/PrIvM9k5lqjkuESGSuI4anyEPpz9/pPXIrLIZHbopLNC7s5y3Czc+dnt/1XYr8vVIF1d088cG2ZP4ixOQU3MrXIkUIyrMQOS2wPBuVa0pIynPFcgftCCzMmxUAXNKLM0hKLosCnZsGI/6/PoavvbuZsHVy9+OmrPMXIWyVjNEEoKqtIbxcTLqIKJewP7mids0W7Hu6TJxMiIF6iWVSC4zHCK8BrCYZd7o7MxOBqbtidv6uh5JPRdVXopoboa4Dr+3Mc2bKv2fXa1OZ18ngCrNWhY5+UtQogohd0ZOq/wniiMUcYGJtWVPSFd9vSnvrOzRnNfQsS6x9DV9PyX+kbe9oiF8Yx/zR4FMEEOSIdlWiUb27oGeZuI5fmCtG+Vxm41f+pwddHHBumHCOdnBvzS+wipQLfyh4cXdebM3NIa/W00PzCPh2o70faK26MM3pAsqtp204GON08IgcElE77GPpYlifU41kll7Ei5HoMtlkJIPy+7+RIHGEdw7EC2DsjGRXcPUlP3Ga1rqf8mbYttFKpJEjuE/E5ZDpbkLw63NKDl6joxFZbzcjlEHrIG1eH7q6gvubq89WwWhB0IVnWE9ZJGmNyJEJ/YU2YFzMk/aFngFPilzCostCYR+J78UXQHGUuu2bZSKWgxqEYEIWs7wCSbBOzNDC2Rgr3N813p8RfZgjp2dYIZCuxQzEYJ2vlcfmzQBtc4DYYL2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(6029001)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199018)(66899018)(186003)(6512007)(6506007)(2906002)(478600001)(55236004)(53546011)(26005)(2616005)(31686004)(36756003)(38100700002)(8936002)(82960400001)(6486002)(6666004)(66946007)(66556008)(4326008)(66476007)(8676002)(316002)(31696002)(41300700001)(5660300002)(83380400001)(86362001)(6916009)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDgydlgwbzhONE03c2FCMVkwc2hQSC9LOVBPZDNLaWtBOWUwNnFObFZDQm5o?=
 =?utf-8?B?b1lXbnRBbm5nZ1VSRDJXWmxUYThIaDdObkJHUWxHZStPRVcyQnViZDZabkw4?=
 =?utf-8?B?cHBIWElaaW1Lem40M3VjQnY4Zm5FNGR4Zmx0UjA4enZTTnhxajB1TUFOaG9x?=
 =?utf-8?B?M3JvYzhoLzVmNW5lVWdiYk5GZ1lvcXdqNWdXNFlOdGY2SHRvWVM4ejhZUnh2?=
 =?utf-8?B?MVhDWUV2bjczTld3Rkd1OEVmNm15MzE5cUxVejQzcWd5QitaZzJhcmovVzhs?=
 =?utf-8?B?bjk1MUdqd1lndngwaFlEcjRIdnNxYUFTbHQzcENEVHBLZzUyU0pZcWQ1aHRY?=
 =?utf-8?B?WGliaC9ENkR2NUJlSERmMVA1SnJvWk12dUZjMzRHc1lpOUVBY3UyT1FTVW4z?=
 =?utf-8?B?N2pVaTl5VXYwMElhNVZURWEyR0loakt6RGM5U0VZZ0NiVjB2Z3YwaUwxditW?=
 =?utf-8?B?VkU1dzgwdXlKOXJwVk1jdDFkZU91UWVjSzJIbjNyd3dvMzZmY0tqKzN3Wk1r?=
 =?utf-8?B?ZUdGUTdjYVlTck41Q0Rwc2hpTkpQRUt0S0hpcjBzYjk3R2Q5WjN6OUFDNXRF?=
 =?utf-8?B?RFZEV0lpTm0rNEJCRmtqREs0OEo2R2p2UU8wRVJndU8yU0ZnUjBVSEFGeUQx?=
 =?utf-8?B?akx5VnlteWJUMkM4alRadWlWbE9YK2lHTjh6VVd3TDVjbGhxbkZTVi9EQ2NM?=
 =?utf-8?B?VUd0ZitLMkhWN0J3aTFiL3hONTJBdkRORG1GVE11S1pUVDNsZlNZUVpvN3U2?=
 =?utf-8?B?eWU1UWtwdG1sWmo2dTk3cFR1TTN0RC84SDNNd0tXUDFZZnFPdmtYbW10TVJp?=
 =?utf-8?B?Y0tOYzFqbGsveEdJWjJqSDJnVGJlTS82WCtYcFZuWitzdWo0aG9vRkZWdFNj?=
 =?utf-8?B?QXE1emFxd1pXaUlFSVQrSXQwZnpPanh2QWcwU0hhS2dsQjJwaVBlclJYWWNU?=
 =?utf-8?B?VUhNSlBrRnhmaS9YOXBNVzNNQ0Rtbm93cFVwZi9sQTBWcVVWdTZxNWxETjBv?=
 =?utf-8?B?UENBU0tUMzZhb1htczdnVDI3MFY3aUlEck1EK2hQbTcvMzdWeTM3S2lZRnZz?=
 =?utf-8?B?cGFxN09ncVhDdVRGZ2dzODg0cVMrdFFiT3BaQ1VjbTYyNzJMUlZMLzZSYlFz?=
 =?utf-8?B?OHhNUTN5OVF6cXdWRlkydUY4TUV3OG1XVGFFRmk3enZVZEljMVdSa0gwM250?=
 =?utf-8?B?TkpCeDdLbmJwTFA2OFRLR3Z0djN5a1hQeXRYdENHMGpVYkF3MDA3S0lYbzNG?=
 =?utf-8?B?a3hyUkc4VnhHdjJOSEhZZC96RFNwcjd4RmhtMzdiN1BHMXhKcWo4VmpFbFJE?=
 =?utf-8?B?dko3eW02UVRyS0N1dElWZDFYdXl1dmRrUElyaG5yNllWWjhPK0kxNmgyOU1J?=
 =?utf-8?B?a1k0MXNWL1hiZnFTaVRqMm9NNFM1OWhTa01iZ0FzS0g1REtlTjF1dzFSMU0w?=
 =?utf-8?B?akJsWXZCK24rL2lxQ3VUSFhiS0JjL1BwUHlyUUJsRWU3ZkJ6b3NIalJmM29u?=
 =?utf-8?B?bUlNYkx1a3VKQWFnNTNiWHhvcFl6Z0JVR1NiUEp5QjR1cEI3MndkdjZYRmg5?=
 =?utf-8?B?UU42L1h6NDRKMEl6SVhDQkNKZFJzSFU1VWJDbUthOGlUcWlDdjdydWRSNHEr?=
 =?utf-8?B?MTN0TEFnL2oxZEhBYnJqNjU5cm5SME51WlR1T1BIZVhUTDBrYmFRdStGZytu?=
 =?utf-8?B?YUVMWG8vRS9vZTMrdHZGbWZPbnN3bkFObkY2MThhNnA4alRtb1NtT0s4RHFV?=
 =?utf-8?B?MlBhcEI4SWxMeDM4L1BFMjQ2S2UxQzFyOXdVY2VCTHNuWUJkL1VaaGw2ck5y?=
 =?utf-8?B?NStCbUhQUFVFbFhTRHNsanFTNjZFZHRCMEF2ZXpMeEV5T0ZMcytZNXNsSTlj?=
 =?utf-8?B?T0lYSU5MTmhZMldGVkhJeC9tbllZSnUvQUVhdkxrTmhtNjZLanRaYVlsUnZF?=
 =?utf-8?B?enM3OXNubi9FNS9id3JBcTVzcTBHRWl5VDJWOHJQYmlqb2xnaGNZdmJLYXgx?=
 =?utf-8?B?U1ViNXUrOVdJeXJMcGp5WUVMRnZPVXZ4SExFRWFHZ0NDZUdScElzUW90WVN0?=
 =?utf-8?B?ODFaNUwycStSeVZiWEQ3MEhidW0xMkRYZ1JWcGNsQ1daTVF5YmlWY25hVnpo?=
 =?utf-8?B?eG5MRElCZk5EQVVPd1VPdVh2TzE3MGV5V0xDRDIrSk9kWko4c3VpYUJXeW13?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 244ebccf-3bae-4c3e-77a6-08db2078a631
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 08:31:16.0418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KGd2XAAip5j7VkkX9mLiXFkFA9hKBxgkJGd2TSlEIsvj3xCtn0c/k6JxbJCQbWNGP5kxVdwHi5TBIzPc/hs7zPDZDWYLD/PMMuPCXqry8vU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7618
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 03/13] drm/i915/dp: Add Scaler
 constraint for YCbCr420 output
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

Hi Ville,

Thanks for the comments and suggestions. Please find my response inline:

On 3/8/2023 8:56 PM, Ville Syrjälä wrote:
> On Wed, Mar 08, 2023 at 05:10:57PM +0200, Ville Syrjälä wrote:
>> On Mon, Feb 27, 2023 at 09:33:14AM +0530, Ankit Nautiyal wrote:
>>> For YCbCr420 output, scaler is required for downsampling.
>>> Scaler can be used only when source size smaller than max_src_w and
>>> max_src_h as defined by for the platform.
>>> So go for native YCbCr420 only if there are no scaler constraints.
>>>
>>> v2: Corrected max-width based on Display Version.
>>>
>>> v3: Updated max-width as per latest Bspec change.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 41 ++++++++++++++++++++++---
>>>   1 file changed, 37 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 1a30cc021b25..e95fc0f0d13a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -804,11 +804,36 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>>   	return 0;
>>>   }
>>>   
>>> +static bool
>>> +ycbcr420_scaler_constraints(struct drm_i915_private *i915,
>>> +			    const struct drm_display_mode *mode)
>>> +{
>>> +	int max_src_w, max_src_h;
>>> +
>>> +	if (DISPLAY_VER(i915) < 11) {
>>> +		max_src_w = 4096;
>>> +		max_src_h = 4096;
>>> +	} else if (DISPLAY_VER(i915) < 12) {
>>> +		max_src_w = 5120;
>>> +		max_src_h = 4096;
>>> +	} else if (DISPLAY_VER(i915) < 14) {
>>> +		max_src_w = 5120;
>>> +		max_src_h = 8192;
>>> +	} else {
>>> +		max_src_w = 4096;
>>> +		max_src_h = 8192;
>>> +	}
>>> +
>>> +	return mode->hdisplay > max_src_w || mode->vdisplay > max_src_h;
>>> +}
>>> +
>> I don't really like this. If we do something like this
>> then it should be the scaler code that checks this stuff.

Makes sense, this does belong to the scaler file and scaler checks.


>>
>> However, after pondering about this more I'm actually
>> leaning towards using 4:4:4 output whenever possible,
>> only going for 4:2:0 if absolutely necessary. That
>> avoids having to deal with all the annoying scaler/etc
>> limitations.
> In fact perhaps best to try RGB first (also avoids the whole
> pipe CSC mess on glk), then YCbCr 4:4:4 (still avoids the
> scaler mess), and finally accepting that we need to do
> native YCbCr 4:2:0 output.

Ok so if I understand correctly, in intel_dp_output_format()

If sink_format is YCBCR420:

-first try with output_format as RGB and RGB->YCBCR420 conv via DFP (if 
conv supported)

-Or else try with output_format as YCBCR444 and use YCBCR444->YCBCR420 
conv via DFP (if conv supported)

-else try with output_format YCBCR420.

If there are indeed scaler constraints, those are to be taken care in 
scaler check code.

Shall I drop the scaler constraint for now and have that as a separate 
series?

Regards,

Ankit




>
>>>   static enum intel_output_format
>>>   intel_dp_output_format(struct intel_connector *connector,
>>> +		       const struct drm_display_mode *mode,
>>>   		       enum intel_output_format sink_format)
>>>   {
>>>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>>   
>>>   	if (!connector->base.ycbcr_420_allowed ||
>>>   	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>>> @@ -820,8 +845,15 @@ intel_dp_output_format(struct intel_connector *connector,
>>>   
>>>   	if (intel_dp->dfp.ycbcr_444_to_420)
>>>   		return INTEL_OUTPUT_FORMAT_YCBCR444;
>>> -	else
>>> +
>>> +	/*
>>> +	 * For YCbCr420 output, scaler is required for downsampling
>>> +	 * So go for native YCbCr420 only if there are no scaler constraints.
>>> +	 */
>>> +	if (!ycbcr420_scaler_constraints(i915, mode))
>>>   		return INTEL_OUTPUT_FORMAT_YCBCR420;
>>> +
>>> +	return INTEL_OUTPUT_FORMAT_RGB;
>>>   }
>>>   
>>>   int intel_dp_min_bpp(enum intel_output_format output_format)
>>> @@ -857,7 +889,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
>>>   	else
>>>   		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>   
>>> -	output_format = intel_dp_output_format(connector, sink_format);
>>> +	output_format = intel_dp_output_format(connector, mode, sink_format);
>>>   
>>>   	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
>>>   }
>>> @@ -2052,7 +2084,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>>   		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>>>   	}
>>>   
>>> -	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
>>> +	crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
>>> +							   crtc_state->sink_format);
>>>   
>>>   	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>>   					   respect_downstream_limits);
>>> @@ -2063,7 +2096,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>>>   			return ret;
>>>   
>>>   		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>>> -		crtc_state->output_format = intel_dp_output_format(connector,
>>> +		crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
>>>   								   crtc_state->sink_format);
>>>   		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>>>   						   respect_downstream_limits);
>>> -- 
>>> 2.25.1
>> -- 
>> Ville Syrjälä
>> Intel
