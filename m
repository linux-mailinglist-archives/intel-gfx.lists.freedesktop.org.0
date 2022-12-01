Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB5C63E968
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 06:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A4C10E105;
	Thu,  1 Dec 2022 05:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2703610E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 05:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669873576; x=1701409576;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mThFVdRVljTAagJMBxOKcHCSgsrIfwZqQp1mF8DYhzk=;
 b=Uwr2qWOHzXYke/ZW0AGwF8I52TRDycMwfp1JRdrbgTFVuTy8FPPMnaMu
 71GG9xlk8pyBlzmp5PTjNITjcXAZ8gHKe5jt4Ez3taX4uCow12D9zu0uz
 e9n/kfKNp+SiM+9GXnuWWIWxttoA+xsOJeFZS0DegzvaYIX9kWM6C0Zpi
 M3CWOjCbkc4ZPfjR3RMIj2s2vbklN8Grnktr9w8sGfvTeXgIHlzHh6ucI
 ul5unk9SWkCZc3rpuVq3juV1PEFv1u/Voo0HaCFk/u0k5pCshXGmRKtn/
 dCcR53CYyTqkCLUFaiLwlAXqNhEApHd3QKFaIHSgvkoJ0d7jYx1Xn5XDe A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="317449733"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="317449733"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 21:46:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="622167341"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="622167341"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 30 Nov 2022 21:46:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 21:46:12 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 21:46:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 21:46:11 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 21:46:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xchpz4QgApVfAX3ZRquEmAwhBanTMy+l//jRsYh8WiEu6Elhs2uqVufM5ESXK79Eurb97i4VDMs8eh8diOQMDd7z8vHqWcG08jHoxuv/OdF0YtuR68WEkOybeeKfWyNUBNDqjgg6WjlnDT4HFOZJd6UWJc7VczyOqiS+f2DlcGgHUNK+kYe0GOX3vfdUbqgtPts5n7xbLtOck11YVjoQ+sLEKj4O2+UxHyGSynoXNphLYdYvEsjBudjkCS7AGjIXOiQNDO95CTkKXXGGVh1dP6Wtuv3hv1DB0M1lp7i0au/th8OP4jJqCxVFyhUhpkUSoNzmz10mrjZwbMCHC5XrgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twkX3iTUJEgKJr6Hl8Vfe1mR/DCYeb1y2w+lUiyB1dY=;
 b=A/KOr0svCuBSRcQw4HXuW7XZT2fPVewkuwUv9jkor6T2rK4+XJ6tJyWUGVh4tUtQ5wE8a9LPOB5lnfD441TlB5TNtfhDkZV24LJzMUFkLJ+mfA8yRzhdkC9OdsJpG6UVLP+fHroch3LcP5S6UVzPUPev5JmXz44mu5McPr0Md51UEGkSbtJDGqvPMUEUDjoT97zqREllZvLiRNJ3ys32vI5HfXB6k2noEHjZnN0xCrQgDJt57BUme03hcxzxiWlue7kvrfivaucjV82lGQkSxyB1J4z4maL94i2yBr1YTQCIKdr1OPUnC7VwQjBHWHmutmzT18aRP6qF/aoJDF0lbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7574.namprd11.prod.outlook.com (2603:10b6:a03:4ca::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 05:46:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 05:46:04 +0000
Message-ID: <23780f01-ab31-71e0-23fc-258b80e138ef@intel.com>
Date: Thu, 1 Dec 2022 11:15:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-5-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0018.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7574:EE_
X-MS-Office365-Filtering-Correlation-Id: 723c23f4-a8a3-41b2-d57a-08dad35f55e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nSfEL95EkLKIbSMqcIANtq56WcKU2JTB2+pB35JihTr9+5QuNKJGjkJAsMZtBv0emnAhA/BebcUgCQ/8Cp88axOFAGaaJZGPpn/iEDG24XHadtc2JzUzn03RcESSsi73Zs2NKUbxmVGps6lhsKkJX2tv7R0Mka/hVJ/w4eiyOQO3lz3JrlR5tB+I4rNJ85zHyWKspUYFdomRbA/ncvl5MNVizF/4Pba7oato7zmHal23nPB9M0xBYwQGUrpJjUcRkFmLaiS0Ozyzn9O8a4zWXwVEUY3H4UI5SDITJonPWsSK8EChg+n8IOoriZV1llmm89YlE+Qh6IwjJ3aY35yP3RCsvpQEI+hbAr01xqR62F5lFSfEmVB2wUhSrSThoaoCBzyfhjb+uGwlwD2hgbLctlspq7KSXeNy6kV7MUkiMo9A2Hne/AsYkQG2O9YPoSkgtCGzTWhE+fe5dF46iUXT/7VegNFNS4lQGtFd/CSn3DLP5P/m4CrdemAmQGctyan1YMI0tUbn5bX7b/YFZt8D8YXrVAXdDTOSLz6+uV8yisrTVS6jrH7g9r+hSuIeWBSr0h5rDselJ/m0l5qVV+zkPAhdO3RMvi+6KRtc4KdM23WW/54SHc6vZ2YUst2QFWOXKb9C2xTLIY5p4I0T719c8VgaA08WD4OmRBMzJ7ewOo24mRxyp9WqtECB+bZcCQtTWfSq+QUUXw/mAuX5DhgH3Q/v73xsyPd92tJEp4JeauE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199015)(31686004)(36756003)(5660300002)(66946007)(86362001)(31696002)(41300700001)(316002)(8676002)(66476007)(2906002)(8936002)(82960400001)(2616005)(38100700002)(66556008)(6486002)(83380400001)(186003)(55236004)(478600001)(26005)(53546011)(6506007)(6512007)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUk3ZkEvaEV4RXV3NHk5MHduMUROVnVoNE9acXIwNlNGV3UzWGtGT1ZKb1ZL?=
 =?utf-8?B?azNyRnhJaW5sb1g5NkY2M3lhT21kRVZyODB1WGRIZGp5YmNWcXFSNytlRDNZ?=
 =?utf-8?B?SThxaG1oYVNUNDJDaXkwQ0tkNDgyTms5RFZSd3NhMGJVSUo0aWNuOFluZURG?=
 =?utf-8?B?MWV6Q2JMNGpZbDdqN3RpeFBLT3dhVHBEcWs2QkxpT0pwNnFTMXRlVEorSGIw?=
 =?utf-8?B?Y0xXRUZSK2UvLzRNZXpjR2dHT3hvdkY4dkxlM3NlMjc4T05KaUs5RDhPWkpE?=
 =?utf-8?B?NUVNcU0xazQveFVYaWgvZ3dYT2xFbStJVm5sUy9XQ04wZTdqR2FXbDNzV2Rn?=
 =?utf-8?B?a2JYVU00RUxESUlCUlRMeHgwT25ZK29GR2FsaU5xL0s5TmVsd1RoQlQ0NEJJ?=
 =?utf-8?B?ZkhKWjRLTlpBWE00VWp4Ri9TUHBsM1hobStualRMbjdadWtQT0JHYktZTmF1?=
 =?utf-8?B?d1pSdk5BRXBIV1hhNzBKWnNyL2FGSExkSkpYSHF6QmlJOTRGUjJqSkJINW1w?=
 =?utf-8?B?b1BxbHdoY3FsU3JVdXlkOWRYcDNFaUE0Tk42bjFLQVcvdGVScEpMd3pyQzZk?=
 =?utf-8?B?RE1KbEx1SzUzZHJVaWxWWmhINmcvSVlHVkJJRUpva3doY1lDMVhJTXVYb0Jk?=
 =?utf-8?B?eXgrdURhYmpXUEw4QUphWllQZHlMZkg0ay8zaWVKTm8va1hjTERucFNNYjBq?=
 =?utf-8?B?eDR0OHhjWEhrdVV2ZHVqbHJldWtWMkdjZ0w0UFFXTFJOVG1QbDgwL0FxMm55?=
 =?utf-8?B?cGk4SHpPaGREUDkxU1NyOHp2WEVHQlpvRmVrT2VuQVpsaGlFQ3RiOXF3NG5W?=
 =?utf-8?B?NHB4cDU2ckVSNTcxeTlMRGp4emNBLzI3UFRjdTJacEtMbCtEVGZOTTZJdUdu?=
 =?utf-8?B?anFwQVFkNFBGZW9iZk9CRHlJOU9UekEzcW5jTVFTQTFGL0JYVk5QdjQzakdC?=
 =?utf-8?B?VTgvSzN4bFljRm85Qmlpay81SUl5d2l6R0ZQcnJPVkVxQ0tlQ08rN3JzTSsw?=
 =?utf-8?B?YXU3Z21xRytnVlZFaWF0VEJ3d0VHSVVXdTQ1cDJRMC8waktYaFJ4QTVjZ3l0?=
 =?utf-8?B?OW11TmFOREl3Qk1hbVZobFB2L1F1cThJaXRDaE01WTIrbEp0ZmFTK2FEa3Jl?=
 =?utf-8?B?dGV0S056NUdiTFBxOE03K1lWZGhEQ0V4N0JTWXF1MEhCWWJVdkFGV3NpODJ3?=
 =?utf-8?B?NlgyOEd6SlBpRVNBdWNoV2xPMFhoanNKK2k2WjRSOFhTOHpwcHlhMFFXNXMv?=
 =?utf-8?B?anVHYllOUlFONFFaNGVxR1EvL2VuVE12RFcrWHpSUUJoVlYyQWxud0RReTZZ?=
 =?utf-8?B?d2JMcmZwaXFuZDd3ZEI1cTc3UGFGMytwUVVidDZlVkRoQWkzaTMxWEhsTmpv?=
 =?utf-8?B?Vm1sQ2ZHcHVDV1JFZ21XdlM5UXlDaFhRTE9nYXU0V2szM3BMR3J4eU03Sjha?=
 =?utf-8?B?NjNjWUNTOFgvMzYxMEltVkR5ZVFRZ01RUDNsQ0FibFhSOGl5aVJHNkFwL1d4?=
 =?utf-8?B?VnZpNlpGSkEyM0xBVEtCSlFJeXVMRFNJc1Bsd1c0Y1JZWTNNTkU5dnJkdnV4?=
 =?utf-8?B?emlsR3ZaRERnNzJrcjE0MnRLRkdvN1grdTdrbzBYZUtGdmxUb29SMTdmeU96?=
 =?utf-8?B?UXZ6RnI3QVNNV2JUSG9QSE1BOW5yNnh3NUhwanRoRzg1L2VzNHNzbEtHaTVo?=
 =?utf-8?B?WVJMREI0VFRZaFVXL2RxaFJuM3h6TTJ5cUsvNTl2M1NrTlEwSzExM0VKOWcz?=
 =?utf-8?B?ekp2ZDRYTzJxZ1hJK3VlYWNpM1hSZU5rZVZPVithMnBLZWVPemZWZDIwOHpz?=
 =?utf-8?B?MGtNdEl4T2Fxd2hmZGlNeWkrZ2FrK2lZTXV2UHJNdG9udmNZTzAvVGdHK2F1?=
 =?utf-8?B?bklvTU1xQS9HeTVQWkNRUEVwN2p4SUYxY1lDVzhYclU2ZE96aU53cklqdXRM?=
 =?utf-8?B?ZUlNc1RnNUNnc2QwRlJ1Y0NITXpJYmtSeS9YYWpQempIVDdnZFVIckdCUmxT?=
 =?utf-8?B?NnNSUEYrRGMyRnNWN3d0bzRKanRNYzFYOVRUQzlBd3hEU0FyaUtKSDZmQ05T?=
 =?utf-8?B?WVVRSlFKeCt1eVhEOTNtUmsrVlJOR0Z1MS9TWmRCc21ESzQ1WWtLdTduRlRU?=
 =?utf-8?B?TlQ3Zi8wWGhwM09TT0FZR1V3RnJPRkxvMXZ2R2RLQ0wzd1V2N3ZYblZQRkxk?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 723c23f4-a8a3-41b2-d57a-08dad35f55e3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 05:46:04.3632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gz8JksqbuHLvafpLxhfTRvODllWFeZW+dWejTiEAvEc1MylqA95dAXDPH9HHcX0Qw101rJzCETGqFw12g/oIs7i1YnZ6EmWUmC+2M4cVE2U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915: Clean up various indexed
 LUT registers
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
> Use REG_BIT() & co. for the LUT index registers, and also
> use the REG_FIELD_PREP() stuff a bit more consistently when
> generating the values for said registers.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 46 +++++++++++++++-------
>   drivers/gpu/drm/i915/i915_reg.h            | 18 +++++----
>   2 files changed, 41 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 956b221860e6..c960c2aaf328 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -910,7 +910,8 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
>   	enum pipe pipe = crtc->pipe;
>   
>   	for (i = 0; i < lut_size; i++) {
> -		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), prec_index++);
> +		intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> +				  prec_index + i);
>   		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
>   				  ilk_lut_10(&lut[i]));
>   	}
> @@ -919,7 +920,8 @@ static void ivb_load_lut_10(struct intel_crtc *crtc,
>   	 * Reset the index, otherwise it prevents the legacy palette to be
>   	 * written properly.
>   	 */
> -	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> +			  PAL_PREC_INDEX_VALUE(0));
>   }
>   
>   /* On BDW+ the index auto increment mode actually works */
> @@ -933,7 +935,8 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   	enum pipe pipe = crtc->pipe;
>   
>   	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> -			  prec_index | PAL_PREC_AUTO_INCREMENT);
> +			  PAL_PREC_AUTO_INCREMENT |
> +			  prec_index);
>   
>   	for (i = 0; i < lut_size; i++)
>   		intel_de_write_fw(i915, PREC_PAL_DATA(pipe),
> @@ -943,7 +946,8 @@ static void bdw_load_lut_10(struct intel_crtc *crtc,
>   	 * Reset the index, otherwise it prevents the legacy palette to be
>   	 * written properly.
>   	 */
> -	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> +			  PAL_PREC_INDEX_VALUE(0));
>   }
>   
>   static void ivb_load_lut_ext_max(const struct intel_crtc_state *crtc_state)
> @@ -1049,9 +1053,11 @@ static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_state,
>   	 * ignore the index bits, so we need to reset it to index 0
>   	 * separately.
>   	 */
> -	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe), 0);
>   	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
> -			  PRE_CSC_GAMC_AUTO_INCREMENT);
> +			  PRE_CSC_GAMC_INDEX_VALUE(0));
> +	intel_de_write_fw(i915, PRE_CSC_GAMC_INDEX(pipe),
> +			  PRE_CSC_GAMC_AUTO_INCREMENT |
> +			  PRE_CSC_GAMC_INDEX_VALUE(0));
>   
>   	for (i = 0; i < lut_size; i++) {
>   		/*
> @@ -1165,7 +1171,9 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>   	 * seg2[0] being unused by the hardware.
>   	 */
>   	intel_dsb_reg_write(crtc_state, PREC_PAL_INDEX(pipe),
> -			    PAL_PREC_AUTO_INCREMENT);
> +			    PAL_PREC_AUTO_INCREMENT |
> +			    PAL_PREC_INDEX_VALUE(0));
> +
>   	for (i = 1; i < 257; i++) {
>   		entry = &lut[i * 8];
>   		intel_dsb_indexed_reg_write(crtc_state, PREC_PAL_DATA(pipe),
> @@ -2756,7 +2764,8 @@ static struct drm_property_blob *ivb_read_lut_10(struct intel_crtc *crtc,
>   		ilk_lut_10_pack(&lut[i], val);
>   	}
>   
> -	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe), 0);
> +	intel_de_write_fw(dev_priv, PREC_PAL_INDEX(pipe),
> +			  PAL_PREC_INDEX_VALUE(0));
>   
>   	return blob;
>   }
> @@ -2811,7 +2820,8 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
>   	lut = blob->data;
>   
>   	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> -			  prec_index | PAL_PREC_AUTO_INCREMENT);
> +			  PAL_PREC_AUTO_INCREMENT |
> +			  prec_index);
>   
>   	for (i = 0; i < lut_size; i++) {
>   		u32 val = intel_de_read_fw(i915, PREC_PAL_DATA(pipe));
> @@ -2819,7 +2829,8 @@ static struct drm_property_blob *bdw_read_lut_10(struct intel_crtc *crtc,
>   		ilk_lut_10_pack(&lut[i], val);
>   	}
>   
> -	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_INDEX(pipe),
> +			  PAL_PREC_INDEX_VALUE(0));
>   
>   	return blob;
>   }
> @@ -2876,9 +2887,11 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
>   	 * ignore the index bits, so we need to reset it to index 0
>   	 * separately.
>   	 */
> -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
>   	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
> -			  PRE_CSC_GAMC_AUTO_INCREMENT);
> +			  PRE_CSC_GAMC_INDEX_VALUE(0));
> +	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
> +			  PRE_CSC_GAMC_AUTO_INCREMENT |
> +			  PRE_CSC_GAMC_INDEX_VALUE(0));
>   
>   	for (i = 0; i < lut_size; i++) {
>   		u32 val = intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
> @@ -2888,7 +2901,8 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
>   		lut[i].blue = val;
>   	}
>   
> -	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe), 0);
> +	intel_de_write_fw(dev_priv, PRE_CSC_GAMC_INDEX(pipe),
> +			  PRE_CSC_GAMC_INDEX_VALUE(0));
>   
>   	return blob;
>   }
> @@ -2934,7 +2948,8 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   	lut = blob->data;
>   
>   	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
> -			  PAL_PREC_AUTO_INCREMENT);
> +			  PAL_PREC_MULTI_SEG_AUTO_INCREMENT |
> +			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
>   
>   	for (i = 0; i < 9; i++) {
>   		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
> @@ -2943,7 +2958,8 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   		ilk_lut_12p4_pack(&lut[i], ldw, udw);
>   	}
>   
> -	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
> +	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe),
> +			  PAL_PREC_MULTI_SEG_INDEX_VALUE(0));
>   
>   	/*
>   	 * FIXME readouts from PAL_PREC_DATA register aren't giving
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 80ac50d80af4..22fb9fd78483 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7531,11 +7531,10 @@ enum skl_power_gate {
>   #define _PAL_PREC_INDEX_A	0x4A400
>   #define _PAL_PREC_INDEX_B	0x4AC00
>   #define _PAL_PREC_INDEX_C	0x4B400
> -#define   PAL_PREC_10_12_BIT		(0 << 31)
> -#define   PAL_PREC_SPLIT_MODE		(1 << 31)
> -#define   PAL_PREC_AUTO_INCREMENT	(1 << 15)
> -#define   PAL_PREC_INDEX_VALUE_MASK	(0x3ff << 0)
> -#define   PAL_PREC_INDEX_VALUE(x)	((x) << 0)
> +#define   PAL_PREC_SPLIT_MODE		REG_BIT(31)
> +#define   PAL_PREC_AUTO_INCREMENT	REG_BIT(15)
> +#define   PAL_PREC_INDEX_VALUE_MASK	REG_GENMASK(9, 0)
> +#define   PAL_PREC_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_INDEX_VALUE_MASK, (x))
>   #define _PAL_PREC_DATA_A	0x4A404
>   #define _PAL_PREC_DATA_B	0x4AC04
>   #define _PAL_PREC_DATA_C	0x4B404
> @@ -7559,7 +7558,9 @@ enum skl_power_gate {
>   #define _PRE_CSC_GAMC_INDEX_A	0x4A484
>   #define _PRE_CSC_GAMC_INDEX_B	0x4AC84
>   #define _PRE_CSC_GAMC_INDEX_C	0x4B484
> -#define   PRE_CSC_GAMC_AUTO_INCREMENT	(1 << 10)
> +#define   PRE_CSC_GAMC_AUTO_INCREMENT	REG_BIT(10)
> +#define   PRE_CSC_GAMC_INDEX_VALUE_MASK	REG_GENMASK(7, 0)


PRE_CSC_GAMC_INDEX_VALUE_MASK till TGL seem to be using bits 0:5. For 
ADL+ this seem to be 0:7 though. Would it make sense to use separate masks?


Regards,

Ankit


> +#define   PRE_CSC_GAMC_INDEX_VALUE(x)	REG_FIELD_PREP(PRE_CSC_GAMC_INDEX_VALUE_MASK, (x))
>   #define _PRE_CSC_GAMC_DATA_A	0x4A488
>   #define _PRE_CSC_GAMC_DATA_B	0x4AC88
>   #define _PRE_CSC_GAMC_DATA_C	0x4B488
> @@ -7570,8 +7571,9 @@ enum skl_power_gate {
>   /* ICL Multi segmented gamma */
>   #define _PAL_PREC_MULTI_SEG_INDEX_A	0x4A408
>   #define _PAL_PREC_MULTI_SEG_INDEX_B	0x4AC08
> -#define  PAL_PREC_MULTI_SEGMENT_AUTO_INCREMENT		REG_BIT(15)
> -#define  PAL_PREC_MULTI_SEGMENT_INDEX_VALUE_MASK	REG_GENMASK(4, 0)
> +#define   PAL_PREC_MULTI_SEG_AUTO_INCREMENT	REG_BIT(15)
> +#define   PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK	REG_GENMASK(4, 0)
> +#define   PAL_PREC_MULTI_SEG_INDEX_VALUE(x)	REG_FIELD_PREP(PAL_PREC_MULTI_SEG_INDEX_VALUE_MASK, (x))
>   
>   #define _PAL_PREC_MULTI_SEG_DATA_A	0x4A40C
>   #define _PAL_PREC_MULTI_SEG_DATA_B	0x4AC0C
