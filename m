Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FC076FB7B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 09:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B507510E245;
	Fri,  4 Aug 2023 07:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DDEF10E245
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 07:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691135717; x=1722671717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=chvJ2ITDUJt4MtqSTTGgRjHXr4e+VO+i088OAFr64Go=;
 b=fIJTTVekIitutWXgzxgLpH0GLx925jxh0RnqSYT92o9LHKjiRMhXCEFU
 3LDecaugt5E4Y8Zht4LPCyOziMHIJBVAWBzc36fQjwlerrOoFWkol7RQj
 Y/EX7jnlYQUhVLCRXb54UOm5F4cq2tlpMH2UHO/C/GGVhN7D6VVz9l3Wr
 OPavjCWPzclWHlWJEPL2hwc9KOWdwfkqYBNJMsj6wNgQsJM6nvT36YOTa
 CqJcCAyD0akAT/GWkkZXfECKiXnJhvl468nkr3ozmv4mNfn7fKxiLUtyz
 nWgjsAl+TtP89tevzkkudeIwAqBGUfDXx6aVtBjQ6+Yl3ZFBUFgO7QFAX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="372843349"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="372843349"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 00:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="679822890"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="679822890"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 04 Aug 2023 00:55:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 00:55:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 00:55:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 00:55:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N6VlgqckSE8iLBbJFIUR2NS9MsksqGgz7pmOQz614JN8DkIqSIvFFWR4V2WZGu2JI4QW3ShKLPSlxCqk2OuW43fAb2YEW9igpsVv6atxyrBPFJ+h3HlCZSwRzrkHdDXwplc9uG7EsZJmVhWGFUiFNQzONT8RjlV3tGFXteOCl/AS6NHyrCYc1YwKvQvQ5Revcs0td8s7qeWpCn2Pz8iKMiUz/Sq4kmK/DWeAAdq+5ippeYhpqMwiwKdcn0oOMU3Oo4nvMW+psxng8bhzat/3YpmNYlY1artoyLRoMD/nPgXzCs7eM0HNANQQlxMV2QRwcibeYw7Jk6PT5olhZzzUcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KJwwx0gQ9NkGCutBiw4NheFu98FRVriz84sX9n1stQY=;
 b=K9IFbLCLBF+8MumW1eW3AS74Sbot/t9NprKxCtxlNiaD49486hUXunq5lVYVKvhz8Bt8+5AkgsEEkzQzMz1xmlO/N9gGGScJ/22nN4pux+PbuVda3YHVpfXKNsIDgmyjqSK97RW1k7tWvV5Z8p935lUwKpunUEMJrdejYRWvm0W8G5DQJgtDFnAcyajurWIab/siNoebj4PBWYXACXrNcR8K645WrQhoL9dTF0+IxyxOC8/4jEZw5k1TV4eBlyXBQamRwI1XsRe+Gf4p6sIECRaVdZPtlN/wzCnWQFYpRsOMdYRwePLe6191JyGWmlqltq1xbP6+EzLO4cyctZXwbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN6PR11MB8104.namprd11.prod.outlook.com (2603:10b6:208:46c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Fri, 4 Aug
 2023 07:55:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6652.020; Fri, 4 Aug 2023
 07:55:13 +0000
Message-ID: <eaa719d1-75fc-bf6f-76b2-b1d46d4161b8@intel.com>
Date: Fri, 4 Aug 2023 13:25:02 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230803160207.3837263-1-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230803160207.3837263-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0165.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN6PR11MB8104:EE_
X-MS-Office365-Filtering-Correlation-Id: 38d0b94a-640a-4cb8-35f4-08db94c0221a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lT7NkaFAFZreiaGL1IPIN0J8QaL7uYMlmNgmLguQ3YqXOiKYidkqNBe8oo/fwdXYY6AHewAyuoTiyQ2Oj7bZ916L/KSKaRV+hCtw9wXyaMyVlRlGZKR4UajNXeyGoBUOsY+1wM6FXXfd3nI9H38yCKLHQL+byyAXYmBaorN2cRju89MmTxu2xgiCkHcA2VHcMnmCRA5HJ8rhq6Brx9SApKAieQtcdH6KgKx7l+i9OptDuHujdmk2q248biVCImWOrIOYSDlVaMHE81TzOYHCehvIW6/lT0k/C293qIRzwDe9n9XvTSkqyE0SklgnXW8DL3dZLHCRmWp0pfG9sL8kLFk3fE6LEcaSMyOIyXJmE4Xv8ob7fnWh2N418K33o507Ce9UcSnBzI0Vq4CkMI7ZCNh+yeEybJUa5txZICKcNOArf3b6OBhspJN1HoSEACXq/nxJ5rfLDHMapCvhDdRH4gGsA6gRzTZ6mbgrSYIlkdloXX4AJde9JTg4WTUodd/FCaTYQ5plP6AcMv24Ss/Uh5hfJQXTB5ItP3kOVaUmWetPZ5Pbl2ZKiYwVf7pver86b04LiDXkFS2w/UxWI+zMyhBzGFvtEGDHU7Me/J2B+uC3ZAbRrDIyPckgxdO7XJP5hK02qGbj1pjdJHAZK6Wuqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199021)(1800799003)(186006)(2616005)(83380400001)(107886003)(55236004)(53546011)(26005)(6506007)(8676002)(66556008)(316002)(2906002)(66946007)(5660300002)(66476007)(4326008)(41300700001)(8936002)(6486002)(6512007)(6666004)(478600001)(38100700002)(82960400001)(31696002)(86362001)(36756003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFoveEgxUTZraUZFUlE4U1B4djlHSXNVSHplbE0wU1FheVFFZ1AvUjJieDli?=
 =?utf-8?B?RXhSVVAyOGVkeXNKM0w3eDlDL2hxRlhZVFIyT3N5OWRxS1hXdXhYYUZkbHV0?=
 =?utf-8?B?UjF3ZVFkTUVHVUxFWVBHdGJVTm1ZOUQ2ZzFaMnBOMHNCVG93ZTF6Z2NreExr?=
 =?utf-8?B?ZDZFU2FZZlRYZWpneGZGSmd3bzRQV3RGVVpMVjRrd09sRFoyTEladStyQkJm?=
 =?utf-8?B?WWZFOHpqVld0bDBnSVRDL1h3NTBKTkFBWEk3WXQwNENXMGg4RElocTFiREpl?=
 =?utf-8?B?RmpaTHlMNHFlQ1pEckxBOEsyOXZXa3dPRkFRNDY2cGZKdXUwUGZ3ZVR5Tytp?=
 =?utf-8?B?YmF5ZmNKdmN4emhQZWhPUWJpdURiUWNoTm5UNmIrUUlEKzl6a3IxTUFKdk1y?=
 =?utf-8?B?VFlQQUI0U3pseE9sUnpTYlRqQnIrOTR3cExVWURoUG5JY0dnTCt3VHpiKytt?=
 =?utf-8?B?NlBSa3B6T2pYcldsNHcwL0VDejJIazhoODhWSkMyTzlJRjNmVGtuMjQ5VG5n?=
 =?utf-8?B?VXFjZDc2VzR2QXYzQ3g0eElpWTVJMGI0U0FLNUJhVFdleUxsZ3RzUHl2K2Ft?=
 =?utf-8?B?bkthRWRWM1BRUnE2L0RiTWJUcjRvNnlCYTJrdlF3YldmbTNlanlRRks5eTNC?=
 =?utf-8?B?R3FXeXVDNTRVUE1tdGlSWTZMNHdnOTNSditqOTJUbU5DMUZ2ZWZPMWVuNFl3?=
 =?utf-8?B?REVmVjEwOVhpSW9GK1dqRWhNUHpzS0svTW5ZS3U0WWRrd3Izc3lvS0lUKzdT?=
 =?utf-8?B?OG80ZkVEcXBPV2NsaDRaTGN4WUkwZVIvb2VhRmhFYkNFd0pMV1FGTnhvOXVO?=
 =?utf-8?B?SVJ0ZERsTCtFellZRVNMRjFjdUIwWlFteUplRGE4THk0MjMwbHVHaWdNQURm?=
 =?utf-8?B?Vmh0azlEQ3BiVWVsakxjelFNVVZFc2VpTDBPNk9rTUhjSytYak45UUg1ZnA3?=
 =?utf-8?B?NEZHOVhpeXYrZkFqejF1R25uMVBaTWkxNTM0TUduQUFyaFpqRktJU0drZFd5?=
 =?utf-8?B?YytIUWgvNjdtb09UZGIzQVkycmwxek1HNmczdnJobktuZEJkWmtlVzhsSHk0?=
 =?utf-8?B?eUU4QlBCZHNRVHFGK1U4azJvQitwWmRJeDNVWG91MEVBeWUzQS9KSGVzTTg0?=
 =?utf-8?B?NWRacFBmeGhEQUJvNVJFTmU4Rld3L3hUNk9KVDh1dzFVVFJFTkI5eVA4N0lC?=
 =?utf-8?B?SWdPWXFCOHJsN2U0QnVjaEhlV0pCUW03Nk9YYjg5bmNCYUJPMWdtMDhiMlZ4?=
 =?utf-8?B?SWc2UDRwTVJDZm91eGJDTk9XZ2pyaFVQS1BmMU45YmJxWURGRWpwWWlZSTBJ?=
 =?utf-8?B?Q3puVDVkaHN6dFp2RDZJY2NFaEtMaFdQMXQwc2hCcGxoNktuWkpWZVlMRXpx?=
 =?utf-8?B?bGxuL25kMk1BT0UrMlRBOE5lY0lEV2VHVEVuVXJWVFVSS0h5MWZoNUEvVzIx?=
 =?utf-8?B?VDBqOHpZOHNDWXI1dHBRa0xrM0N1RGI5RGZXMW4xQVliOEVDcFF4NDZ1Zi9m?=
 =?utf-8?B?K0NZWlIvRzVHYmVScUFjL3dUQWFhNGNXbGF6QkNkdW41N1h1OFpDWnlXQ0VT?=
 =?utf-8?B?VGxub1BBTlFIR0xHcEx5OHRDQkh3QkVnSk1iVEtmSUJYaklQSElPWFNEcHhp?=
 =?utf-8?B?cldJMWlXb0o5SzZURE9TLzJvVVg2TFVWN2xDRHlUVXc1TnRtOCtaQWk1Ly94?=
 =?utf-8?B?bm1JTVZaV0JoREY2L3dPNENtSkRValExdXNWY0pGT3JlSEVXakwxWXVjYUFj?=
 =?utf-8?B?c2lUVitCRzY3NVUzYzFaWkQ5bVdURzFIdjN3cW4ySEVOZVlyTERxaS91MDdF?=
 =?utf-8?B?UmEyb2tkTURGSE1hNVQ0TWVTamdQN09OWTIzOWlYckE5Z0w0N1l0MThxSW40?=
 =?utf-8?B?ZGZ4Vy9GbzF0ZEt1ZlJvTC9SMEFkYzk5U2lSSGJkUGRialR3bUpPTG5wT1lq?=
 =?utf-8?B?L3dzZkUrZ2tUNS9RT0x3TVFqRDhEWTVrRnJGNlVCOWNJTnlBRmNBVWorWStp?=
 =?utf-8?B?UGxENXpUdWFJQXlFc0I0enBJT0ZSQ0hKMjhaNG9zV010V25FN0lsRFA0bXFi?=
 =?utf-8?B?Nm5xMmRwZEU3dEFMV2w0aGN3NHR4Z2VYRnhPWUYyWTREc3hka09vUmNFVGp1?=
 =?utf-8?B?VG1JVDZ2dnlDazlnQUkvSERzUjFpUXNKMFZobDh6cXJURXdIUjd5VVVPVTVY?=
 =?utf-8?B?V0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38d0b94a-640a-4cb8-35f4-08db94c0221a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2023 07:55:13.3760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oQZCiyA4KKKP9GK1KgeRNJQL7AmmoEB27qWqkcGwNfUmRNXHmDNeGnzXZRwe/L4tctAk6iOKbsNolBEwvoM+DoMP7PjtSmSmLlhsagtQ3zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8104
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vdsc: Fix first_line_bpg_offset
 calculation
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
Cc: juha-pekka.heikkila@intel.com, william.tseng@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/3/2023 9:32 PM, Suraj Kandpal wrote:
> On checking DSC1.1 Errata and DSC 1.2 spec the current formula
> we were using was incorrect to calculate first_line_bpg_offset.
> The new fixed formula is derived from C model.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 9d76c2756784..a344c6ab8767 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -65,6 +65,9 @@ intel_vdsc_set_min_max_qp(struct drm_dsc_config *vdsc_cfg, int buf,
>   		intel_lookup_range_max_qp(bpc, buf, bpp, vdsc_cfg->native_420);
>   }
>   
> +#define CLAMP_TO(val, _min, _max) \
> +	max(_min, min(val, _max))

lets use clamp(), already defined in linux/minmax.h

With that fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +
>   /*
>    * We are using the method provided in DSC 1.2a C-Model in codec_main.c
>    * Above method use a common formula to derive values for any combination of DSC
> @@ -80,13 +83,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>   	int bpc = vdsc_cfg->bits_per_component;
>   	int bpp = vdsc_cfg->bits_per_pixel >> 4;
>   	int qp_bpc_modifier = (bpc - 8) * 2;
> +	int uncompressed_bpg_rate;
> +	int first_line_bpg_offset;
>   	u32 res, buf_i, bpp_i;
>   
>   	if (vdsc_cfg->slice_height >= 8)
> -		vdsc_cfg->first_line_bpg_offset =
> -			12 + DIV_ROUND_UP((9 * min(34, vdsc_cfg->slice_height - 8)), 100);
> +		first_line_bpg_offset =
> +			12 + (9 * min(34, vdsc_cfg->slice_height - 8)) / 100;
>   	else
> -		vdsc_cfg->first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
> +		first_line_bpg_offset = 2 * (vdsc_cfg->slice_height - 1);
> +
> +	uncompressed_bpg_rate = (3 * bpc + (vdsc_cfg->convert_rgb ? 0 : 2)) * 3;
> +	vdsc_cfg->first_line_bpg_offset = CLAMP_TO(first_line_bpg_offset, 0,
> +						   uncompressed_bpg_rate - 3 * bpp);
>   
>   	/*
>   	 * According to DSC 1.2 spec in Section 4.1 if native_420 is set:
