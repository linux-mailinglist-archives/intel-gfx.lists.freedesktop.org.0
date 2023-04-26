Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EAD6EF4C9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 14:57:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC3DA10E963;
	Wed, 26 Apr 2023 12:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D1E10E963
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682513864; x=1714049864;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=FKeB8PzSm7fQEf8zq3c+ka1uyYJDIn8lSFaljsVTR7c=;
 b=DWnoga0+gydMbACG/3zhGCiftKGsbnGUUDR8M4p9VUow6CDrL70A+diD
 SL9v36KYOug/kIpComAwA2YlgsKvtKB+nlXqWkblbElG5a8AKkFDeAXqL
 FLOXown/aaiGUyPPov6CQHgKXng3aMR1YhURt16J53j495wd4Y1hxpi7T
 C/f4Rd9S0ct7Y6hGdE02+X72X7UoXrOITQrEhptPQ/34xVLvS1yls0iof
 F13XtgYgqenKHh/bWFP7RIN+WKU7yiSUiMqwLvVhZVuquR4zQn2ouaAEj
 BdoHD/7nd8KmDW8dEQMOdkfalvaI66NcMP4FyDtJUq/Tp7iRe9cLNq4Mc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="331323538"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; 
 d="scan'208,217";a="331323538"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 05:57:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="687929482"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; 
 d="scan'208,217";a="687929482"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 26 Apr 2023 05:57:43 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 05:57:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 05:57:43 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 05:57:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ml6PtKiocPuCOIXrFu9/Up3wWj3JkNsxU0fGth4Z+hMFCBLvY5q2wIEgkDADKbXOTTCQZvpltintzqQvGYPBO+gRHrHUkdn42LSV+niDjyg+8SNOuG18dV2iJfcCIiUXWGf0RqBHJNuhVVUSX6NnHBYVyrWdsBlUKRGGLhqojDX7hjaJy2cXB2AHXmWKu9oc6i2CSjR9FpLO0gaNdGY4nYAoYjGMks8/nzyDLemIQ8WSudwTlKxFfDLSj5oaMo8DO2ZS3it0JbX7WgMbbq4ntzn4rOO/0OxROWWZ0EVM+QDgP27scbQ1PZcmlTauCA5N72ogwZkpPu6T+FNU81km3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ddu5sYcS/GAteZRIudq181vyB4qmhNUAFjqFaRZHPSI=;
 b=PZ2g+bP1bZIBV9COlEyw5M5ewkLNWMgf9OCn5VZTt/IyTe/Z8dLTjqjrWnSCO7QcK2OoYUIsHMdnvUoeeI4LzP32aJXUCbeEC1mlmV1Ox3q6gfTlf+qjYZ/l4nb6i6igZA4uU16Uta4ktjSDuEXGjQkIZ1bN6AH1o6ACl4y0aN/pigQ5ivD08DlX9YsVZlDZv6aJAeRKBOaTa1gQZPTrGX3WJqHQmje+yoK6lCyn3q+UTKh7j9hOh4zhEUuPn2+1C1Or0Cf7+0J6dALV2LlH+bc80amOVOj9yumbeMPhXGkSP1prgeLjCsS7f0VQVv/0Tgx6wgW+6ZZO4R719aQufw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 CO1PR11MB5090.namprd11.prod.outlook.com (2603:10b6:303:96::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.21; Wed, 26 Apr 2023 12:57:41 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 12:57:41 +0000
Content-Type: multipart/alternative;
 boundary="------------ERDnYp0p2H1B0ef8Rtj09bj0"
Message-ID: <05945246-ed8b-d18f-63bb-46c3c400ea80@intel.com>
Date: Wed, 26 Apr 2023 18:27:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: PN2PR01CA0106.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::21) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|CO1PR11MB5090:EE_
X-MS-Office365-Filtering-Correlation-Id: 55040c35-3a2a-4f18-29dc-08db4655d197
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KIdimWb3+YJDYmcPHxqaC4eTh4OV49cRzDaFtom2ZRP1uewooW53lk/r/3ul8r1nnW1rvjIZJZXqg7qTeGwPcGUBj5SADysFkvSvbgQZJXUt1gcRF5Wl4HhbmUjoKoyOJnuhpZBtiYW/cGJp8cEvWWjjelixmZWtRbzjErdSsxIvtv7wflmuaFOKBkF4V5aTwce0YVDc/G8qq1ssbBJqcDG/khRYhJ35jT0wMN8K7fsjU4+y8EEyjeMaH1zImRSzSwKB+LhFAi0snFNWisUpNUusSkSV9hCRzBVelsUh9L7ujXBBMPFzHc6OYDKUz6aaYILQ9NjoSUlbOoMaRJT7Qgx03CGhLD3uW2EdOLvC7VF8Kg25Qrg2lp6C5Sy9cnEmwIGQ0TDiEhZROK/95knbvUEkIydHrRmJRZVYoz5EJhcTwe2tQ3QVwRmYSoSlvDxRITpWoVeustl9UZ1EXGmpu0c9i39sy1Nw/Vxn/D8EB25PPKB74MgZN1+SLh1/yjf7wgRWByEMtIdpdT6mld5z+ujQA9d0zpo/eI4ddf+hj2CpN90e4qxOthGL9kE93sIWZm3Kis5Z40EPIhvhAQ9sWgc64N22OUzplg/G83R8DCs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(346002)(39860400002)(366004)(376002)(451199021)(316002)(66476007)(66556008)(66946007)(966005)(6666004)(6486002)(33964004)(86362001)(478600001)(31696002)(36756003)(186003)(6512007)(6506007)(53546011)(26005)(41300700001)(38100700002)(166002)(2616005)(82960400001)(2906002)(31686004)(5660300002)(8936002)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1FFWWpKcHJoRmJSN0dTUzh1V08yZHRCSHpSU2IyQWV0VTBZbHVHaUZidjVW?=
 =?utf-8?B?Q2FqRkRNN0gyUU5LbmlMcFBiRUpmMXZLUWZMK0lXekVuL2RvZ3pZQ25vVktm?=
 =?utf-8?B?UTJpcGJkWDlha05ib0M1OVZFWWdlZHlDaVV2d1NnN2FkK3ZHeGJFVzVoQ1RT?=
 =?utf-8?B?OUJDNy9rU3lNU2lpK2NILzYybjcydWNTZjFvdkI5UGhZRGJNNng2T3dSZUtx?=
 =?utf-8?B?Z3VCckdURGk2SC9vRnFCcmhNdnVBbjlUeVFoM1pCK2xET2RHMDNORGQyWVlD?=
 =?utf-8?B?bHVtaXJmQzg3NzJyQzRyYjZSdW9IWUVvVTlVRnFvVDc3OFdkckd1VXlwaDhy?=
 =?utf-8?B?N0FWTmZEZDdnQm9JRnFaVGFuRVMwM2JURXlwbkN5SWlRUkxUblBwNHZaQnI5?=
 =?utf-8?B?c3JqTzlleVZSUkhVU21RTE1YajFJSTBzTUdaRVBsQnBTM0VuRU02UFN4ZVRl?=
 =?utf-8?B?bmRTT0p1R3RycWJvSjB1WTM1V1B1TlNsWVFFRGNMNUxlREdMYWlFT04rdHBF?=
 =?utf-8?B?RzVlRVhMTGg5NU1ZOXVTU09CV1JPTXZZbGw0bk5QbzE2c3VRSlNRRmdpZGM4?=
 =?utf-8?B?eTRYckZkVmJVK3pLNWw4bUt4Q3NuTCsvb2ZSMVU1WDNVN24xYktMU0hYNW1k?=
 =?utf-8?B?U1k2aVZlbXVrc0NLTll1WGJZRU5wZDY4aGl4NWJ4T2xvOGtMWnJOMDZDSDZ5?=
 =?utf-8?B?anVITURzRGtQYURJeEp3Y0dURHdNS0QweXVtSzcxZVNYUnNUdWk0SjVtWHpk?=
 =?utf-8?B?NFdFNjk3VE9nVG1lWHVmVTR6OFJJU1MvOG44b1dCTmx2QjluU2QyT2NqN1ZY?=
 =?utf-8?B?di94SUtmem9Nb3VEUWd2REJMQ3h1eWV2UVAxZTBrTEZwMktPUDlrUFRKeWxz?=
 =?utf-8?B?YWpZdG9ZT0p6QStSUXpscmVzNUNzUG9OaXczR3hiaEFzZ2xseXljNkllWnA5?=
 =?utf-8?B?YTRDSWRTSGQxWjVlTUhQdUljWnp5eHpFQ0l1bFVlMDAyTjVvSFFVY3A0NzFW?=
 =?utf-8?B?SVZIS2pYM0FPSWdjL1p2ZkJEaEVITzVsSnRuNmo3T0dFSEJWNlJ5clJRd0V2?=
 =?utf-8?B?OFlBR2pJNElQeHUraXYrajNCVnRyOFVnZEFyamlhS2o4QTNDTUhURndSQTFF?=
 =?utf-8?B?WUxtQk02czdLQlZSd1hNSDlzV3dPOGJYMjVCc2p6Nm41TnBTZzF5b2R3N3Zp?=
 =?utf-8?B?WHlMUWF4cndGR3UrWHcwOXNoMmtGWG1LSko5Vnl2Zzc0TjZjaERGUkh3QVZz?=
 =?utf-8?B?eEc2RWhtMUdZZ3FuRmhNNmR3a3o4UGx3blJYa0JLZWtoU2xCTDBXakEweFNv?=
 =?utf-8?B?UEpOWGczc0xHWFRBVXNlL0JHVk95a1VGL3ArU3lJVnRVMGZsdExPVEJwTVlj?=
 =?utf-8?B?ellUY2loRFI1amNWenFhR1lwNE82UTEyVEpRZFJ0YzU3ZVJ1aUtsNTlZMk91?=
 =?utf-8?B?L1ZjK1R6OG5JUHNkdXpQOU81ck5SdEU1cEp1TnZ2UjdGcDFBRkNoRTB3V1hk?=
 =?utf-8?B?VFAvd3MzV3ZwMzYraVBCd2owdHJrNlFGTjdaRTFQM09jdUR3N2hpcG1YRVhR?=
 =?utf-8?B?YU8wQnhQbXNZQUVJR01McThSbFVVMG5hd2ZHYSthckE2aHhNQlQzbTJIcFY3?=
 =?utf-8?B?eHZCbnc5MkROcE1vZUxkL3Zsb3hkdnFoNXcwcDZaa0lUZ0RHRmJrak50UEZs?=
 =?utf-8?B?MVg3WGpqeEM1djZ6NnM1ck1OeVFrLzBpR1RrM1g0MHcrQUhIWERsWHcrTnJM?=
 =?utf-8?B?eS9YSEIrKzRhYlZlRHVRbXh0bG85ZmMxdXJIcnZ2SVJrc2dFYTVkNFAxL3pX?=
 =?utf-8?B?T0UwbUlLWjB2MEg3QkROUzFmaURPN3crcURDUzdCbnh5Vk9qUWhTMFRhcmpi?=
 =?utf-8?B?L2hQNTlpL1c5eFkyUTRzRXNYZmhOVWhQYkwwb0NuMi9ReExaK2ptWGFib0pt?=
 =?utf-8?B?SEhSNUxhajcyby9lV1lIV2RmZDk2SkJPbVBkdzZabFhwNlp5U29EYStOT3NI?=
 =?utf-8?B?aEFqNzU1WUpZZ1pLbjhqcHVheVR4ek9hNjBWRkhxWGcvMmMyTEs5eW9LaDlo?=
 =?utf-8?B?MTVzM2FUTVd0Q2NJdjIvY0JOYk1TRHpoUjN4ODNmOUkydDI3LzB1WVhrV1Er?=
 =?utf-8?B?b1JkZTBkMDVIWXhpYjRjamFoeFd2dGVBbU11R1VOUzJCQ0xHSmZuWWNOV2FN?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55040c35-3a2a-4f18-29dc-08db4655d197
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 12:57:40.9478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DNTjHjt2sqBU+UJjQK+af9wH4dCvsO/NnIy9g9Ek5vmRlq31YavaLMaBLjLlcuf0igNXT8436vz6xtZ1vANwpLgB1/Zh0SLxePndxZkF+F4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Add the missing CPU
 transcoder mask in intel_device_info
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

--------------ERDnYp0p2H1B0ef8Rtj09bj0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit


On 4/21/2023 3:42 AM, Radhakrishna Sripada wrote:
> CPU transcoder mask is used to iterate over the available
> CPU transcoders in the macro for_each_cpu_transcoder().
>
> The macro is broken on MTL and got highlighted when audio
> state was being tracked for each transcoder added in [1].
>
> Add the missing CPU transcoder mask which is similar to ADL-P
> mask but without DSI transcoders.
>
> [1]:https://patchwork.freedesktop.org/patch/523723/
>
> Fixes: 7835303982d1 ("drm/i915/mtl: Add MeteorLake PCI IDs")
> Cc: Ville Syrjälä<ville.syrjala@linux.intel.com>
> Signed-off-by: Radhakrishna Sripada<radhakrishna.sripada@intel.com>

Acked-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

> ---
>   drivers/gpu/drm/i915/i915_pci.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index d64e074d7457..847057569796 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1135,6 +1135,8 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
>   static const struct intel_device_info mtl_info = {
>   	XE_HP_FEATURES,
>   	XE_LPDP_FEATURES,
> +	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
>   	/*
>   	 * Real graphics IP version will be obtained from hardware GMD_ID
>   	 * register.  Value provided here is just for sanity checking.

-- 
Regards,
Haridhar Kalvala

--------------ERDnYp0p2H1B0ef8Rtj09bj0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/21/2023 3:42 AM, Radhakrishna
      Sripada wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20230420221248.2511314-1-radhakrishna.sripada@intel.com">
      <pre class="moz-quote-pre" wrap="">CPU transcoder mask is used to iterate over the available
CPU transcoders in the macro for_each_cpu_transcoder().

The macro is broken on MTL and got highlighted when audio
state was being tracked for each transcoder added in [1].

Add the missing CPU transcoder mask which is similar to ADL-P
mask but without DSI transcoders.

[1]: <a class="moz-txt-link-freetext" href="https://patchwork.freedesktop.org/patch/523723/">https://patchwork.freedesktop.org/patch/523723/</a>

Fixes: 7835303982d1 (&quot;drm/i915/mtl: Add MeteorLake PCI IDs&quot;)
Cc: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
Signed-off-by: Radhakrishna Sripada <a class="moz-txt-link-rfc2396E" href="mailto:radhakrishna.sripada@intel.com">&lt;radhakrishna.sripada@intel.com&gt;</a></pre>
    </blockquote>
    <p>Acked-by: Haridhar Kalvala <a class="moz-txt-link-rfc2396E" href="mailto:haridhar.kalvala@intel.com">&lt;haridhar.kalvala@intel.com&gt;</a><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;
mso-ascii-theme-font:minor-latin;mso-fareast-font-family:Calibri;mso-fareast-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:&quot;Times
        New Roman&quot;;
mso-bidi-theme-font:minor-bidi;mso-ansi-language:EN-US;mso-fareast-language:
        EN-US;mso-bidi-language:AR-SA"></span></p>
    <blockquote type="cite" cite="mid:20230420221248.2511314-1-radhakrishna.sripada@intel.com">
      <pre class="moz-quote-pre" wrap="">
---
 drivers/gpu/drm/i915/i915_pci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d64e074d7457..847057569796 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1135,6 +1135,8 @@ static const struct intel_gt_definition xelpmp_extra_gt[] = {
 static const struct intel_device_info mtl_info = {
 	XE_HP_FEATURES,
 	XE_LPDP_FEATURES,
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	/*
 	 * Real graphics IP version will be obtained from hardware GMD_ID
 	 * register.  Value provided here is just for sanity checking.
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Regards,
Haridhar Kalvala</pre>
  </body>
</html>

--------------ERDnYp0p2H1B0ef8Rtj09bj0--
