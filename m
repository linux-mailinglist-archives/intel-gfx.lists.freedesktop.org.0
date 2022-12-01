Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C40A663E9DD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 07:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27AB310E0F7;
	Thu,  1 Dec 2022 06:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB9F10E0F7
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 06:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669875727; x=1701411727;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FeUPeOVxJmkbQVxyyeDJfq9uScOXXIILmAnOFxDofPs=;
 b=TkiDUbltSiQ3LgvNKQ/LpRCE+EjvFIwgge95sgvMX6kfF6xR3PUUwiL9
 STembO3TJ3GD03+YJlLNkyR2Zz3Iyrqej6SBi0P1zPgwc+Wt1WEY64FaI
 YVKw0yPqRMSLWgpzmTYOk5qDXMiq23ZkxzTlgLk7bJy83xOTGJydSX0k9
 c7n/Z7RnFOypa1nO7E1Q6NNM7FqFvwOkPrLlzlqG3XWbhFPRaV+RPaSnr
 mWjHZqjYXZeglwNrfsyzqvvQfc9qXiWzBYHp13hPscClCqfGCjsB46jY+
 uY0Vb3wRcSUpN61WYExRBeu4Atlt3KjN8dke637FWlR73lrjouydeHvdA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313229409"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313229409"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 22:22:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="675311155"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="675311155"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 30 Nov 2022 22:22:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 22:22:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 22:22:05 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 22:22:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jujneipS2xAwpzshFrMwYglFdMF3V4lbmUGIJiv97NQ2qQ0rSVzXsOLCshlnxJYIv9PZAqzhN+0BEX7jnD89F23ZuVEa6iz0VZ6MDsbLnALZ//GDf4kTi93XxFNmI8XhNJEwrglQYux6ssHdlEEUxQaMN15Ve2Bn4MoBFda/R9FVBju4KM7kzyjj5VlMw8iK5eKSJnKy/8yGwU/jm4sxP8yjiJDC+EoQ9Zx7aegm6S4wbo77zLgNpI4/tA83hLqrHYPpbBjRzScLNqiVSf82fZctXbHdx0ysSBHFr5m3G2Qnqblb77WdJCggBxiYa894gfe7LOc0MRmNXNcYPvfq1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ZusScjVHaxaDhzbIVmHzVxhim73YI9UtnZ6BYzYWs0=;
 b=IFyt5jy0okp+br1KoiqpHuMXWg7SOk5QzTNxDEl7B8TLuVPO5CXTFIh4e1PHo892JQn6mWRMU+Xg56C6tJWYL/zRGuKishV3GGWK+xVqCXQhGFqOq0KfLZnbfQ0B6ygQHQwwjSiG2GvEANRJym4h87NcNbfSepV1tjnkEjfYLeOWAPJk2CC30ihjnWUC4Ol6t54dN0WiZYhY0hoSaFgqdKoHTwElSctNeHBz5W1qIPn5OwQYP4bidVv/mgTSOleJPi6UUyHLXYXqkt9C5mxLnWj+qd6v6trIxpHzw/HjXUThNvOP3GCiJlAhRigq//kE2nVBCIxfjbTIVt8wVq20Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7310.namprd11.prod.outlook.com (2603:10b6:8:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 06:21:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 06:21:58 +0000
Message-ID: <9eff8873-bbb4-31ce-421f-712e640d54e0@intel.com>
Date: Thu, 1 Dec 2022 11:51:49 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-10-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0164.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7310:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c8d6976-8bfd-4949-af58-08dad3645a07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2beKraOdrDEMV+pfTveoWyH+j/X+wS29iCmK2vj3+f05ab7nNU4snquaMdjDVY1XB97met/KsArGyerOAF9iPIhEsywaBI1cNAE431Ry55XWKupv1pS79CzJ6wen1Tvhp7lfN85L7n9f9f61E3h8suztIb8EF5BadADauZ5tkOWLYLaWLnT223p4jWiXl3Xr6fbaRL7ni/b+0Zif8uqFK0YzG4yLm7A4o5ylBCl/IyFQPtxTajuMF8BB1SQQjcHIn+qwSZut8ESPAe4P/NjTCiRuaDlRPk7IU9dHyoRzpicFO9kMKeu58TkiAvFoz0y0BhhO0jp3Bqt/f6sFjok7ltqQXSlhz+7ddonsNaBDl/E12ihGNNE9op1bTyE7Ii51FtMEUST2aAep0s5Koarsd17a4Hx8/BVDwGRIWS2a43BE6IbqDPQ4JWWCzSIksYKi6TMAt0RABGYz/Qklx41zsJdWJoVY6i/egAFI2XfXjf0XYt9NmjgW9CBJteVr+f+V0jMukinGBGmRmy1P7D2Q3du0NEKkIHyVimtT9ZnGt/YFersxAYnAoHni5iYlFKz4kKfzcULflu7MZMBlUuueushGj0Rfyj7gNylaLYNS9hzxQLnw/Xx9r8lz+98PXAUPKc6UCDkrCcVD/FeSe0/SvY8baRhwIWSu80qA09BIkXz89dvq0NW9ktFjJ3MkElOBNNSg2mxxCw5pZHGrdfb6CoNMoZS3TDNRWmx5eFINM6E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(346002)(366004)(396003)(39860400002)(451199015)(6486002)(478600001)(55236004)(82960400001)(53546011)(186003)(66574015)(36756003)(83380400001)(38100700002)(2616005)(6512007)(6506007)(26005)(8936002)(5660300002)(6666004)(2906002)(316002)(41300700001)(31686004)(66476007)(8676002)(66946007)(66556008)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkhEVVBmU0JQT3JvM1FxYzJXTzAwRDlXQUJLa3hNZjBaUitHbllMclJ5VEtJ?=
 =?utf-8?B?Sm5wSGphR3J3UUU4RmNVN201djlEWTFWRno1YUt5empXc1Z3ZElIdHMrR2o0?=
 =?utf-8?B?Qm56c0UwWVpIenVhZkpCK1NiQ2wyZ09KaERmeUdBeUhETWtHa21Zb3c1TkhR?=
 =?utf-8?B?emhveUIxdkZrcmdydnl0Y05YT09JUkE4RE9yeFZ5N21IR2Y3ZU9vTGpEcXNL?=
 =?utf-8?B?L3RBdlVtb0lkNGlKa2lVTUNhTzlMeFdPckpocFV1cEJsTWNqVy9LQkgraHdq?=
 =?utf-8?B?aUlMa1ppbktUN2Q1VjFsN3hsWTNzdGZ1ckl1UXcvV29jdjdzVUoyTDNONTU4?=
 =?utf-8?B?UU5DQzhYZnJPdEhNTm1tSkhSLzFSczBrRW1hMU55S2lyOFFpOGw5UTFmTUtx?=
 =?utf-8?B?NDh5ZFo3eExKZHZzWXRtYUViY0x0clFrbVd4NWx5TG5pU21pQlVYYmZNdFZz?=
 =?utf-8?B?QlVjcHZ4dnRxVU1tTWNHU3FXaVF2ZHN1Rlh5ZnhnMWYrSGZpUmhFZTg3dnJ3?=
 =?utf-8?B?dG1UdmRlU1pZcEFRZWhHbkZyQkwzSVlNNzYwVFBoT3pBdEliMGovaENvTGU1?=
 =?utf-8?B?bytCbk5CbzlHeDk4dFNNaldEMGtqM1BDM2VxRnpHS0YvWWZiQjhjc1NRTFBX?=
 =?utf-8?B?ZWlEak5tbjl5TXc0S1lMdjIwR1lNLzJCT1hkcGR3WloyaHlITS9ZUzliL3pM?=
 =?utf-8?B?S3lTU2F2U0NISUY4VGw3UHJtRXd6VExUMjhKMlJhTmtmdjFYWjE5Vmt1UVRX?=
 =?utf-8?B?dVQrckw2V2VuejVvTEhTWGI0NUhvRG1uV0hFVzRqb00yS0FJdlJsdXNabGQx?=
 =?utf-8?B?bnhJdmRyZUV0c2J5T2pKWlV3V0ZxR1pGbmNXYzFscGRZUmhlNDdTdkhvUTIv?=
 =?utf-8?B?WmY5UGIyTkJ1Q3QwTmlNTUhZRkVoYWhla2FLc0x4K1k5eGU2ZmVML1RmZW5j?=
 =?utf-8?B?c1B5eE9LM0hvNE9IbHBRM2xDNTN4YnpzV1BpSHVvL242T1pFVWJFampsWlBp?=
 =?utf-8?B?RUxWTXdWK0FkSUNtK09YMjBJa2JYWHlLcnluQlE3SVR5Z3ZIRmIvNnhENURa?=
 =?utf-8?B?Nk5ESzJGdHR4dS80VzZ2ekN3b3d3eTZXY0lpWG5qRHUyYkhrdHBHaC9WL2tQ?=
 =?utf-8?B?TzV6c0ZPVkhuZWptZlFiOXkzN0hlVGNHSGdEZW1LUGpJdVFoUnJNcEswQXBZ?=
 =?utf-8?B?MTk0dHB0eUptNnBzY09ZeU84RmhnUzdZN0FmZ1h3aTR6VkpvdWc0VllQYWF0?=
 =?utf-8?B?VDN4RjZzdDY0T2ozVFlRQmxCVGk0TTRSTVptd2xWZzhIQ2Q0emIva2NSYVpV?=
 =?utf-8?B?cTFWbkdyQjVTWnBPYUF1aFg1aHorUWxxNnZMWnNkTkZmWk1TOEFPZytycStD?=
 =?utf-8?B?bzNtYmRjK2plZ0ozZzZ3aUVlT3VXSEdGd1JPR1lYYno0S0xQT0lKbmJiK0kr?=
 =?utf-8?B?SFV4QlhMRU9EQ0VnOGZoNnI3WFRuSWgxc292MFRZaXN3c0RpRnpIL01jQkNi?=
 =?utf-8?B?ZzBOTllVZVVZWnFMbzlwUXBGR1VpRjl0cW5lcTkxSGJ2TE9rVlpBRWQzMHZO?=
 =?utf-8?B?ZXhsOWpaWWoraGxINGRCL05vWmFZQWpLK0RXR1VLVVUxR1FaSFFNbTVWOUs3?=
 =?utf-8?B?LzY0YVFwSWp4SVJCZlJGQTE3WnNWSjBoS0hTSU1IY0xPc3FxN1JhVkVlM0R0?=
 =?utf-8?B?ZVI3Tzg1NHVOMFVCb1dUVWc4VDhFazVqUnNreVZiNDlld09tT3hWUmdGTjdZ?=
 =?utf-8?B?QVBGcmJUSFBMMkYzV3JPY1BMdkI5TTlUdlpWUjJRZ1I5MGdGR3ZXUnQyajMr?=
 =?utf-8?B?WEZvTVV1cjRCSFN5dGt3QmJUai96TTZGc2FaMzg0Q0MzZ08rWG1hdXVrWG5H?=
 =?utf-8?B?OFBoQ28xbC9LUUxhL0VTK3ZXUlhsTld5Z0pWd1ZNVFJnOHVzMUNWUnJGS2dR?=
 =?utf-8?B?bEtQNDkwc2ZnbDBKenlGTlFDQTlhcHlLV29paHJMd0x2OFIxSmpJNjJCeXh6?=
 =?utf-8?B?TWdLZ0JNMkpmRXZlUDVobWlyT2MvVUc5NVhPSGxQWUowYUxidXlYYlpkeVF5?=
 =?utf-8?B?SGhiTi9uV1lUYUsycitYekFFSjcyYVNDakNqeHFFd0dMZTFjeUV0Zm02ZnBm?=
 =?utf-8?B?UDBqNElPTnpidnZwZTYyVENwaklUODBYMndoWTg0blZxL2JJK3ZMWlhIUjFR?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c8d6976-8bfd-4949-af58-08dad3645a07
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 06:21:58.7926 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ktKTWwWK9+dUM4aIbbIchQTqq8W6es5FeUiyNOTFWLP633TBsWrclEuXAV/U1CgKVcuI9DRPxkULbCYAieniy1M12YU3vLE1YYqonK1TACQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7310
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915: Make DSB lower level
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

Patch looks good to me.

There are couple of minor nitpicks mentioned inline.

In any case this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 11/23/2022 8:56 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We could have many different uses for the DSB(s) during a
> single commit, so the current approach of passing the whole
> crtc_state to the DSB functions is far too high level. Lower
> the abstraction a little bit so each DSB user can decide where
> to stick the command buffer/etc.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 17 +++--
>   drivers/gpu/drm/i915/display/intel_dsb.c   | 79 ++++++++++------------
>   drivers/gpu/drm/i915/display/intel_dsb.h   | 13 ++--
>   3 files changed, 55 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 5a8652407f30..2715f1b617e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -842,7 +842,7 @@ static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
>   	if (crtc_state->dsb)
> -		intel_dsb_reg_write(crtc_state, reg, val);
> +		intel_dsb_reg_write(crtc_state->dsb, reg, val);
>   	else
>   		intel_de_write_fw(i915, reg, val);
>   }
> @@ -853,7 +853,7 @@ static void ilk_lut_write_indexed(const struct intel_crtc_state *crtc_state,
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
>   	if (crtc_state->dsb)
> -		intel_dsb_indexed_reg_write(crtc_state, reg, val);
> +		intel_dsb_indexed_reg_write(crtc_state->dsb, reg, val);
>   	else
>   		intel_de_write_fw(i915, reg, val);
>   }
> @@ -1273,7 +1273,8 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>   		break;
>   	}
>   
> -	intel_dsb_commit(crtc_state);
> +	if (crtc_state->dsb)
> +		intel_dsb_commit(crtc_state->dsb);
>   }
>   
>   static u32 chv_cgm_degamma_ldw(const struct drm_color_lut *color)
> @@ -1391,12 +1392,18 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
>   
>   void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
>   {
> -	intel_dsb_prepare(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	crtc_state->dsb = intel_dsb_prepare(crtc);
>   }
>   
>   void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
>   {
> -	intel_dsb_cleanup(crtc_state);
> +	if (!crtc_state->dsb)
> +		return;
> +
> +	intel_dsb_cleanup(crtc_state->dsb);
> +	crtc_state->dsb = NULL;
>   }
>   
>   static bool intel_can_preload_luts(const struct intel_crtc_state *new_crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index b4f0356c2463..ab74bfc89465 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -24,8 +24,10 @@ enum dsb_id {
>   
>   struct intel_dsb {
>   	enum dsb_id id;
> +

Is this extra line required?


>   	u32 *cmd_buf;
>   	struct i915_vma *vma;
> +	struct intel_crtc *crtc;
>   
>   	/*
>   	 * free_pos will point the first free entry position
> @@ -113,7 +115,7 @@ static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
>   /**
>    * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
>    * increment register.
> - * @crtc_state: intel_crtc_state structure
> + * @dsb: DSB context
>    * @reg: register address.
>    * @val: value.
>    *
> @@ -123,11 +125,10 @@ static bool intel_dsb_disable_engine(struct drm_i915_private *i915,
>    * is done through mmio write.
>    */
>   
> -void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
> +void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
>   				 i915_reg_t reg, u32 val)
>   {
> -	struct intel_dsb *dsb = crtc_state->dsb;
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc = dsb->crtc;
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 *buf = dsb->cmd_buf;
>   	u32 reg_val;
> @@ -195,12 +196,11 @@ void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
>    * and rest all erroneous condition register programming is done
>    * through mmio write.
>    */
> -void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
> +void intel_dsb_reg_write(struct intel_dsb *dsb,
>   			 i915_reg_t reg, u32 val)
>   {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc = dsb->crtc;
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct intel_dsb *dsb = crtc_state->dsb;
>   	u32 *buf = dsb->cmd_buf;
>   
>   	if (drm_WARN_ON(&dev_priv->drm, dsb->free_pos >= DSB_BUF_SIZE)) {
> @@ -217,17 +217,14 @@ void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
>   
>   /**
>    * intel_dsb_commit() - Trigger workload execution of DSB.
> - * @crtc_state: intel_crtc_state structure
> + * @dsb: DSB context
>    *
>    * This function is used to do actual write to hardware using DSB.
> - * On errors, fall back to MMIO. Also this function help to reset the context.
>    */
> -void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
> +void intel_dsb_commit(struct intel_dsb *dsb)
>   {
> -	struct intel_dsb *dsb = crtc_state->dsb;
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_device *dev = crtc->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_crtc *crtc = dsb->crtc;
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   	u32 tail;
>   
> @@ -274,14 +271,13 @@ void intel_dsb_commit(const struct intel_crtc_state *crtc_state)
>   
>   /**
>    * intel_dsb_prepare() - Allocate, pin and map the DSB command buffer.
> - * @crtc_state: intel_crtc_state structure to prepare associated dsb instance.
> + * @crtc: the CRTC


We can perhaps document the return type, the dsb context here.

Regards,

Ankit


>    *
>    * This function prepare the command buffer which is used to store dsb
>    * instructions with data.
>    */
> -void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
> +struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc)
>   {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	struct intel_dsb *dsb;
>   	struct drm_i915_gem_object *obj;
> @@ -290,63 +286,60 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>   	intel_wakeref_t wakeref;
>   
>   	if (!HAS_DSB(i915))
> -		return;
> +		return NULL;
>   
>   	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
> -	if (!dsb) {
> -		drm_err(&i915->drm, "DSB object creation failed\n");
> -		return;
> -	}
> +	if (!dsb)
> +		goto out;
>   
>   	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>   
>   	obj = i915_gem_object_create_internal(i915, DSB_BUF_SIZE);
> -	if (IS_ERR(obj)) {
> -		kfree(dsb);
> -		goto out;
> -	}
> +	if (IS_ERR(obj))
> +		goto out_put_rpm;
>   
>   	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
>   	if (IS_ERR(vma)) {
>   		i915_gem_object_put(obj);
> -		kfree(dsb);
> -		goto out;
> +		goto out_put_rpm;
>   	}
>   
>   	buf = i915_gem_object_pin_map_unlocked(vma->obj, I915_MAP_WC);
>   	if (IS_ERR(buf)) {
>   		i915_vma_unpin_and_release(&vma, I915_VMA_RELEASE_MAP);
> -		kfree(dsb);
> -		goto out;
> +		goto out_put_rpm;
>   	}
>   
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +
>   	dsb->id = DSB1;
>   	dsb->vma = vma;
> +	dsb->crtc = crtc;
>   	dsb->cmd_buf = buf;
>   	dsb->free_pos = 0;
>   	dsb->ins_start_offset = 0;
> -	crtc_state->dsb = dsb;
> +
> +	return dsb;
> +
> +out_put_rpm:
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	kfree(dsb);
>   out:
> -	if (!crtc_state->dsb)
> -		drm_info(&i915->drm,
> -			 "DSB queue setup failed, will fallback to MMIO for display HW programming\n");
> +	drm_info_once(&i915->drm,
> +		      "DSB queue setup failed, will fallback to MMIO for display HW programming\n");
>   
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	return NULL;
>   }
>   
>   /**
>    * intel_dsb_cleanup() - To cleanup DSB context.
> - * @crtc_state: intel_crtc_state structure to cleanup associated dsb instance.
> + * @dsb: DSB context
>    *
>    * This function cleanup the DSB context by unpinning and releasing
>    * the VMA object associated with it.
>    */
> -void intel_dsb_cleanup(struct intel_crtc_state *crtc_state)
> +void intel_dsb_cleanup(struct intel_dsb *dsb)
>   {
> -	if (!crtc_state->dsb)
> -		return;
> -
> -	i915_vma_unpin_and_release(&crtc_state->dsb->vma, I915_VMA_RELEASE_MAP);
> -	kfree(crtc_state->dsb);
> -	crtc_state->dsb = NULL;
> +	i915_vma_unpin_and_release(&dsb->vma, I915_VMA_RELEASE_MAP);
> +	kfree(dsb);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index 74dd2b3343bb..25f13c4d5389 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -10,14 +10,15 @@
>   
>   #include "i915_reg_defs.h"
>   
> -struct intel_crtc_state;
> +struct intel_crtc;
> +struct intel_dsb;
>   
> -void intel_dsb_prepare(struct intel_crtc_state *crtc_state);
> -void intel_dsb_cleanup(struct intel_crtc_state *crtc_state);
> -void intel_dsb_reg_write(const struct intel_crtc_state *crtc_state,
> +struct intel_dsb *intel_dsb_prepare(struct intel_crtc *crtc);
> +void intel_dsb_cleanup(struct intel_dsb *dsb);
> +void intel_dsb_reg_write(struct intel_dsb *dsb,
>   			 i915_reg_t reg, u32 val);
> -void intel_dsb_indexed_reg_write(const struct intel_crtc_state *crtc_state,
> +void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
>   				 i915_reg_t reg, u32 val);
> -void intel_dsb_commit(const struct intel_crtc_state *crtc_state);
> +void intel_dsb_commit(struct intel_dsb *dsb);
>   
>   #endif
