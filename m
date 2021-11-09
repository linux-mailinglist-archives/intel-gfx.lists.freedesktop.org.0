Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0816344ACDF
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 12:49:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 186C06E8A6;
	Tue,  9 Nov 2021 11:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EEC46E8A6
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 11:49:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="293262832"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; 
 d="scan'208,217";a="293262832"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 03:49:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; 
 d="scan'208,217";a="469949078"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 09 Nov 2021 03:49:38 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 9 Nov 2021 03:49:38 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 9 Nov 2021 03:49:38 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 9 Nov 2021 03:49:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5K/TbVNwyIrkev2OvkOrdyA5kit5IDK+CiR5cxpodf1ukJjkKYNnOEDMDQg814D3PPFbhZW8GrxcQqDQwJ1621Ll1psW+HWWc1b7MdfuLTRHmsAEjXVKfkIrDav5NKlkTCrENGt8heEN7Yn7pQl2PYKDovgoqJZJ/YUfyv/670rB9cSYeomb6zFEJhcthqfJFthVTfytOFR5bMX+4Nr/YVNh2faOc4FNeP+DQiJWl5aySzZlURyKqeuz8JRCsJ81A0GZ6f66Mot/FiwkewtiNw0BxRjW8pz85dtwlexe77ri+UkeMG/jr4vaOYH43wp0z8UiOplhIxauOr/Ce7Gsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uek4Ii1xFXYaw9p/eHMzD+gitLC5pMNO59merVJzM5g=;
 b=nrQYlngvioBOcZTl8TRblgQNJ03Gn7vbJd2zSIOI+MMAuaBiUx0QwFBkxkolG+bCnwlRh1q5M+APKKc5UAbH5HggQ9ttcIfhKiTU8ZXwQTvIVncL5kizUuxc+R3LRIVZRZ164OVrOKHNebBpS/8b40OV9HB/5ULH3xclL61Lkt+8iMWxbav10Ht47Ow57ur1jEDnRJ79slFbBeGgIcDIpDgCStBYHJRcsJ7/vhusmkdqVdSUJNBl483O2b29M6NrMmwfYK3AM9QXp7COwsNZnWbo+97IFD9Amq3e4me0Y6wndkY6d+5GBkbFkiha1KxRbIQz2gpy9U0ZopvAw9zLdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uek4Ii1xFXYaw9p/eHMzD+gitLC5pMNO59merVJzM5g=;
 b=kkS49DmMBOtoGx5Tfif7N/wX7YzCi9FVBlxt1IV4uw32PVr3CLY40oDGNqQeHCQWHtMA4E4Jh2kcrAHOIBT1MYnUI14WPzafJJFRue6xeKnpx/gn5EmWTBemkbs6bfTuWYYdOoN1mUmVJgcoKMuTE0HUbRZ1azIZU4oR6mKwkls=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from BL1PR11MB5464.namprd11.prod.outlook.com (2603:10b6:208:319::6)
 by MN2PR11MB4093.namprd11.prod.outlook.com (2603:10b6:208:13f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.16; Tue, 9 Nov
 2021 11:49:35 +0000
Received: from BL1PR11MB5464.namprd11.prod.outlook.com
 ([fe80::971:3a5b:6dbc:a045]) by BL1PR11MB5464.namprd11.prod.outlook.com
 ([fe80::971:3a5b:6dbc:a045%9]) with mapi id 15.20.4690.015; Tue, 9 Nov 2021
 11:49:35 +0000
Content-Type: multipart/alternative;
 boundary="------------70E0i1C41NrU33jiNdtBfpf0"
Message-ID: <2a41ec09-251a-7a68-307c-3396c38bb82c@intel.com>
Date: Tue, 9 Nov 2021 17:19:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20211026134022.20597-1-anshuman.gupta@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20211026134022.20597-1-anshuman.gupta@intel.com>
X-ClientProxiedBy: BM1PR0101CA0015.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:18::25) To BL1PR11MB5464.namprd11.prod.outlook.com
 (2603:10b6:208:319::6)
MIME-Version: 1.0
Received: from [192.168.1.106] (124.123.181.223) by
 BM1PR0101CA0015.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:18::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10 via Frontend
 Transport; Tue, 9 Nov 2021 11:49:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ab34dc3-481a-4266-0df8-08d9a376ffe9
X-MS-TrafficTypeDiagnostic: MN2PR11MB4093:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MN2PR11MB4093200FECE361EABC109F31E5929@MN2PR11MB4093.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KwN/b+Y0Jv5aFQbZHOc4NeDUPwzehmU3/jiG3hr05VfhYjzPzzyNnJ/DC7RlLvdVAL/ijm1kuWXOqkApGmOL8GJveSQHf4/YezUwUzeuJmAQAzxjpxwKzAW/j866w7K4ooSw8yug7YTfv5524icsaZQEOGI+Gh7fsLt9ic1zruc56U4fWDJOqsOZnWuwn/U9zbCPGHXCwbbrbLdqvsMqTHXK9P+lX/GcmCmNOGrGcj3JMm9sxzpo5CpjjdNhrh8eAL8Pjjk9NAyuphvCEPKeAUslSnRZvQ+qPvkIeIXDvKVNVQ9TrLndMWRe3deWoIXojlgcEhMvVKt+zHhaLqS5Hj8rssVzRM3I/MqvCifpyhfaOlGkGEUb6IDtgb/7btMegh/wRxcyQgRasQ+4ZtGh6vJXqot0zjcXkj2SWzQdCri59i6vhhwDF/o4pDKENiVJFejdRMYDUL5Kkm4TQQsOgkL8eSCNgx0r4xkNiBTUN+xwUzHWRk6tkG5GJ28BdNucPsZ55wGeG06gFPQC4ucIVLG2J0383rPy6v9xlk2KBJLkN3GyiCzIgS9IxeI3h+cwbjb3pHdVnVqVQnJPK9uGwkUV0zCOxUMw1KL5RT/XqvdRzCi5paBZCESB0eHgy3kRiTpcfeZN2KJ69DhhQtzrNG4LUyQloCa7LfEyJ28v0bWcR9p3JYS2VHEGt3EH2Vxz8VSjAkn+Rs0b/MFEyxIV+0/iI0ByHgRN+9ZkbLowQQc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5464.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(36756003)(5660300002)(38100700002)(316002)(4326008)(31696002)(16576012)(186003)(83380400001)(86362001)(508600001)(8936002)(33964004)(66556008)(66476007)(66946007)(31686004)(82960400001)(107886003)(2616005)(956004)(6666004)(6486002)(2906002)(53546011)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azhFRWVsRURQRHRsZ01KUDhyMy9Ma3BPcHNlcXJQZ1JSQ3BQNE96dERqenJM?=
 =?utf-8?B?bXBLeVhpbHN4SlQxQnBJWituNXpDQVRTeERwSTFpajduSXdPWGxQLzhJZnlI?=
 =?utf-8?B?ckNUOFMyeU04dG8veFNTU1Q5dHFpdFEzbis4YUQxNTZCMjAvaUNJQlZxOERF?=
 =?utf-8?B?OFV4L25pR04rSGlDdENNYzMvMmpyNVo1ZXNJNmlESEo4RFp0ZWN2Wm16Ujhn?=
 =?utf-8?B?M2c1UUlMdzgxeEJrQXBpeG9Pekl6TVBXczNYbUZCbnZHTVRoZWVPT0pTQk1a?=
 =?utf-8?B?RS9YRHlNMnYrQXdNdisxcFdCTDZBV0I0SDNjZXkxd3Y3YVdHS1NNOWtLUnRE?=
 =?utf-8?B?T0dQZExWaGIxdERQSVZDbzlkbmZzaEJzWmhJSVM1VHpWTmlJNXFGa1hVb2pr?=
 =?utf-8?B?N0xGckxEcEkxTi9zaFhjdWN0cVFBK1hyY1VRVGt2N2hGMDlsbEFYNTA5dGhV?=
 =?utf-8?B?QTRYSUpqZktkNXJHVmxnSzV6cUl4cEhYN3NDM1hYczFMZnpFSnQzU3ZNN1Vz?=
 =?utf-8?B?Q0tKczBVV3FWV2Q5RTUza1VZMEtiNjlwM3BuRk5taXVXU09FRTR2bUxxaG14?=
 =?utf-8?B?UTVJUVEzVnd5cVMxakJiMXBoamxKOU1aaG82RWFxLzVqa3o3L3Q4ekhxQVI5?=
 =?utf-8?B?L0hQMXlVR2ExUUp2bms5QmkyRGtlNVBmOGtIb1NIWmhLcit4aUdGdHZYNk14?=
 =?utf-8?B?bytiVEQ1Q2pzekhBTjNMdXNCTG81YWVNSU5CQ0V6cHZzWUFuMmVNUGJOS3BG?=
 =?utf-8?B?dGpKVS9GYmJneWwwQjY3RjNCajZIMTNrTDJlTDVwN2FuVW8rYUV4eVpPdVo4?=
 =?utf-8?B?T3RMTEN0QlF4Ym9INFlLbkVtcTVhOUhNcnJmYnh2S01FV243dVRBNUNsWS9t?=
 =?utf-8?B?NklYZkZhdVNUK2NIYldWSG9QcGl0blVHUmlwOGk1TGZtcHo3ZjJCOGFNNWlT?=
 =?utf-8?B?UThZKzY0YVVzRmJLYlR4WGwyNzlHZEFzRGF6a2tTZEs3N2xDdVYyUHNGL0g4?=
 =?utf-8?B?clM1LzdNSVNybXNQZVRtNlZYREhBL3JVRXo1em1FVFZHa1FWb1gwKzYvSURa?=
 =?utf-8?B?SHNLc2d4NTVlMXpCbXJDVHpOVXNnNHU2Mms3NERaL0FxWTNhUGhqV09RQ01P?=
 =?utf-8?B?S2IzaTFwSk5xNStlbmsxNzhPdnllRDREU2JtUTZrRjlVN1VLRktJaE1yZXd6?=
 =?utf-8?B?ZjlycGF4OWtsRmF3YTVGbEJlU1c2SW4wUnk1elJyOGVZYkcrY2UvYXl6MnN0?=
 =?utf-8?B?a2U5Mm5PaGpGT0prZVVPWU0rdFdiL1Boemc2MHpRbVhJWkJ6ZGh5ZXJNbUN0?=
 =?utf-8?B?eUdJSUh5L0k5SWtJL003TDdtMlowbWpkWkxkQk5IZVk4dnRrbTdNNXBuRG4w?=
 =?utf-8?B?a00rQy9McGQ3L05OaU9BSzJWM1lXZXkwRU9Fc2o0WW9KM2tUR0YwOWhucWRI?=
 =?utf-8?B?S01CblBiMlFYNk5oRWF6blQ5RmVwQ3JTOWhEdzYvT0pFOVk4akg0YTgyVS9j?=
 =?utf-8?B?V09hUlRBd1BscWlRaFMvaFdTZVNqV0U2cUd3NFdsNDQyZmQvRUk3b1dKeVZ5?=
 =?utf-8?B?UDRCUFhYSTlmVFUzc2NsU2FVSlRHYzB2MDhoblBHU0NZSUQrQUc3ajBRL21m?=
 =?utf-8?B?Nmxta0d1b2RDMjV2VFhvMGNtN1JJQ2NHVkNPNzJLdTF5d2FKaThUZVR1N0NC?=
 =?utf-8?B?bVZNYm4veXJMN2k2K2dxVFRJNzBZSDlwQlVtRERka1U3aEs0N1lsZ0RndFdy?=
 =?utf-8?B?dmNNQjdEZlpobTNYVERmZUtLeWgxTHFYYnEvQ0o5SGp3ZFJzNDlvNHIrVVlO?=
 =?utf-8?B?LzhQRVp6NnJDNDFRN0NVenY4SFlNVU0vZFd5UEp1RmJvajBIZSsxaGpGblIy?=
 =?utf-8?B?RVVLUlJmQVFDR3NuRVAyNHNlUGhURVBFaWpJSktLNjlQL0FuZENSZUlyaWdN?=
 =?utf-8?B?SkNKbzNZNVVuR2p3bDhvR3RyZUQzY1RFR3hMVm0zOXpMVWZ2UE1Fd1M1ck05?=
 =?utf-8?B?Z1hOL2lMdWdRWi9DejRabWZUdkRoWk5iZm1VbVVzbkVvSS9GcjIvTzBpKytx?=
 =?utf-8?B?dWdOWHVDc1NLWlU3Zks4S2FITURtVmh5Wmhsb2xIY2lDNmFOc3Ntd2F1Mi9p?=
 =?utf-8?B?bnlOOXFpbFhPelJqbkR1NWozSitFVDROL09jRVJZTnJNVXNVN2RLZGJFOHVH?=
 =?utf-8?Q?zao/rvydOkAyir50w7cSonw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ab34dc3-481a-4266-0df8-08d9a376ffe9
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5464.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2021 11:49:34.9167 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V0EbUf6H8Z+Ut0lOVVgNoxHxnQ5E28bXYMBTQ7qafjKGwycBuukn+PYTRPh2ApzyWA7GVrbBc/lXdk3YRznr4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4093
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/selftest: Disable irq to calc eng
 timestamp
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
Cc: Chris P Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------70E0i1C41NrU33jiNdtBfpf0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

A couple of comments below, after addressing those this is:
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

On 26-10-2021 19:10, Anshuman Gupta wrote:
> gt_pm selftest calculates engine ticks cycles and wall time
> cycles by delta of respective engine elapsed TIMESTAMP and ktime
> for period of 1000us.
> It compares the engine ticks cycles with wall time cycles.
>
> Disable local cpu interrupt so that interrupt handler
> should not preempt the measure_clocks() to calculate
> correct engine ticks cycles.
>
> Suggested-by: Chris P Wilson<chris.p.wilson@intel.com>
> Signed-off-by: Anshuman Gupta<anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> index b9441217ca3d..9cf76398bdf5 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
> @@ -43,6 +43,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
>   	int i;
>   
>   	for (i = 0; i < 5; i++) {
> +		local_irq_disable();

How about saving interrupt state before disabling it.

Use local_irq_save here.

>   		preempt_disable();
>   		cycles[i] = -ENGINE_READ_FW(engine, RING_TIMESTAMP);
>   		dt[i] = ktime_get();
> @@ -52,6 +53,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
>   		dt[i] = ktime_sub(ktime_get(), dt[i]);
>   		cycles[i] += ENGINE_READ_FW(engine, RING_TIMESTAMP);
>   		preempt_enable();
> +		local_irq_enable();
Use local_irq_restore here.
>   	}
>   
>   	/* Use the median of both cycle/dt; close enough */
--------------70E0i1C41NrU33jiNdtBfpf0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <pre class="content" style="box-sizing: border-box; overflow: auto; font-family: Menlo, Monaco, Consolas, &quot;Courier New&quot;, monospace; font-size: 13px; display: block; padding: 9.5px; margin: 0px 0px 10px; line-height: 14.3px; color: rgb(51, 51, 51); word-break: break-all; overflow-wrap: break-word; background-color: white; border: 0px; border-radius: 0px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">A couple of comments below, after addressing those this is:
<span class="acked-by" style="box-sizing: border-box; color: rgb(45, 69, 102);">
Reviewed-by: Badal Nilawar <a class="moz-txt-link-rfc2396E" href="mailto:badal.nilawar@intel.com">&lt;badal.nilawar@intel.com&gt;</a></span></pre>
    <div class="moz-cite-prefix">On 26-10-2021 19:10, Anshuman Gupta
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20211026134022.20597-1-anshuman.gupta@intel.com">
      <pre class="moz-quote-pre" wrap="">gt_pm selftest calculates engine ticks cycles and wall time
cycles by delta of respective engine elapsed TIMESTAMP and ktime
for period of 1000us.
It compares the engine ticks cycles with wall time cycles.

Disable local cpu interrupt so that interrupt handler
should not preempt the measure_clocks() to calculate
correct engine ticks cycles.

Suggested-by: Chris P Wilson <a class="moz-txt-link-rfc2396E" href="mailto:chris.p.wilson@intel.com">&lt;chris.p.wilson@intel.com&gt;</a>
Signed-off-by: Anshuman Gupta <a class="moz-txt-link-rfc2396E" href="mailto:anshuman.gupta@intel.com">&lt;anshuman.gupta@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index b9441217ca3d..9cf76398bdf5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -43,6 +43,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
 	int i;
 
 	for (i = 0; i &lt; 5; i++) {
+		local_irq_disable();</pre>
    </blockquote>
    <p>How about saving interrupt state before disabling it. <br>
    </p>
    <p>Use local_irq_save here.<br>
    </p>
    <blockquote type="cite" cite="mid:20211026134022.20597-1-anshuman.gupta@intel.com">
      <pre class="moz-quote-pre" wrap="">
 		preempt_disable();
 		cycles[i] = -ENGINE_READ_FW(engine, RING_TIMESTAMP);
 		dt[i] = ktime_get();
@@ -52,6 +53,7 @@ static void measure_clocks(struct intel_engine_cs *engine,
 		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		cycles[i] += ENGINE_READ_FW(engine, RING_TIMESTAMP);
 		preempt_enable();
+		local_irq_enable();</pre>
    </blockquote>
    Use local_irq_restore here. <br>
    <blockquote type="cite" cite="mid:20211026134022.20597-1-anshuman.gupta@intel.com">
      <pre class="moz-quote-pre" wrap="">
 	}
 
 	/* Use the median of both cycle/dt; close enough */
</pre>
    </blockquote>
  </body>
</html>
--------------70E0i1C41NrU33jiNdtBfpf0--
