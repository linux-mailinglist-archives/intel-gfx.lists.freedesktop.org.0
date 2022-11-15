Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3739A629100
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 05:00:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C55F10E012;
	Tue, 15 Nov 2022 04:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CC4D10E012
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Nov 2022 04:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668484836; x=1700020836;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=O/pToV7lx720gDUeB46MGmxZb3jcUC2Ydjv6F6MKdkE=;
 b=fPlDa967g9hZd+fDN8AK1Tu2iSV5Qe95FEkrhNJuwHMs4erf++Bi4fmz
 JwnbLeA2Fj5EHCThqePkh7fOsPJO2ctnyds281BYIErrC+CI64Vzc4G8z
 3IwBlXusKKpgijxrrfdvhv/K5kAEMNl08XCGd8aEE1EFEu04TMBSVizTX
 FdUK3UKWAI8ulA5fMOZsi65a9JBUeHw4RXNF4N0uxAjH1wGy2s1UxmPkW
 OjqMhDS8UWpfwn0r0l4DHotkNYJDH9zN8ehaZkrW9iAt/Xw4myjHOm+RF
 7FtpQaMTOczQnEKeGOY0h93c7pvnWDnKoSzzuP1PNDxs1kdJkN1P6aQ7a w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313960703"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="313960703"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 20:00:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="763766053"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="763766053"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 14 Nov 2022 20:00:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:00:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 20:00:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 20:00:19 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 20:00:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CeWBe8MeOhTGZbfxxdYtHqt14QpLZBJQvDp4gtfuiIJ0nru0cEGiCco/vV/YZzAzg1vUHEGMz9r+i0cjq3ous1BZ8s34EEzheubsWIYjNOLLTYrLonjV7kpef9FBUoHZVXaBcwjrya1si5qvVWh/JBSTVb8IoupaO/Be5Zcz1EKQAtYiLVApoW03FLsQhv5dtO9S38Jfrq2659h6DpzsB51ROkw/i1s2rCu5EelCJ3Wzl/7pm80v8O8XCCXHvVDr7lGszJXONzuxrOKGHFZPBsGbgHXOI8uyLGcwDavyWdqmhGn8lGk4KyKkmdRNnmiW5r8fbecOTWw8CbSgfvaOxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WMuawKqcqouKJmNpJcr/TrYDpPc0O5MqvMuPh7/YfR4=;
 b=Z7pPmtXqa1ycigo9QeAaaCa6pgXQ2JWGWsITuScz+XcZiEBaLS171YsgqypBrnL3YoqD97Br8z2Q7oPXZLpsKPQLIWdaz+pu04e8b5oYVGsqvBAeRuepf3rsPyKzDdG9txYRFcwFoIFTjiUOD27X9X20LcVNbrILp+p/xlU8lncv2iBOfHoxgUMjbHhMkhZiskGjGhIw6jm4oBaQ2mWi/MqyEayo2WGWIf+jULvtsFYBEf6yiGUjut+oRxxWLEMpoMCMaISZfwx6gTUbb1q/cYxKUJFGKBuiphlVbC/tygupfTF671+lzOdBmMnANblC6Jh/wl3C+zETIaAM/zmDBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 MN2PR11MB4566.namprd11.prod.outlook.com (2603:10b6:208:24e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Tue, 15 Nov
 2022 04:00:16 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5813.017; Tue, 15 Nov 2022
 04:00:15 +0000
Message-ID: <4961bed7-80af-df2d-2a48-33696b0f7a8d@intel.com>
Date: Mon, 14 Nov 2022 20:00:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221021173946.366210-1-alan.previn.teres.alexis@intel.com>
 <20221021173946.366210-2-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221021173946.366210-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR05CA0086.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::27) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|MN2PR11MB4566:EE_
X-MS-Office365-Filtering-Correlation-Id: b2b831ba-0a50-4521-38b6-08dac6bde658
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N57ydECLL/CGPcsNORHfpOzSdfbpeoroc01dxAvfXnUMQ/e3idKElL7sAsrJdv9TJ4HvaytKp5+BvZCX9VneoymzFypsPmiohWsJvKQJioGS7UXJlAH5tNPxUlco2rs6ca67pBdP0BUlfKbfu86wq3PD9nP0cY3auJEPhpcp22v16nZ2yKWs8hqYJ0a3AvMGmwz7dMKptvIqWhfyxpk/wkk/OaO8n1K9aTodaODoqGOZRNDD3KnmbLWJoCUyB+yc3yJH991REwCMqh2qwU6VZvDM0Os8IYcm/HOyiizm33rtFd5a+ZpVxN2Cn+Gx1r9FAVUlUPIen9m/mY49mlNOJcVAaUig0Nb14xtbX2jTofr9ssyPTARYepMPFsyi08JLDwguVYOr6zmVqzKj2P72q5c88goBHHE5cnF/r58smWg4nCXOcWtOizNZ8fUsexL05qz8ZA8XlsCT/v5Ka0AEJbyZZR7wiOs8M+Dfb3uYsXwRPacC7xAeozSX+RUycY9c+yVNc4r7j0yEbRtDmjoh9qX9o79oyTd4pe2fpQnlIyIBzIP44UjfSTn9oLaSHccCr/rnkDf9B1Lrr91viGOkcZn/3lbmqZLX5BkZVRoDo5AFRIiz0nAWxYR0XfxDZi7Zy+rdAUfQcJt/0VWe0AA+gLQk+D7hurVM9hO5NXFqYdBvlQ0/U6Fu4tSEGTZImgE1acHYSWq604TipJAtoJdo0vfNVeo1PVrmjekZcBjtJENMCEXptCpdaTXU3vbG0+KZizUmfZnPiuQakP3+WdixZC1qr3R0L5vSrYXoabTk8mo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(39860400002)(366004)(346002)(451199015)(66556008)(8676002)(36756003)(66476007)(8936002)(66946007)(186003)(5660300002)(2616005)(41300700001)(26005)(6512007)(82960400001)(316002)(31696002)(38100700002)(53546011)(86362001)(83380400001)(2906002)(6666004)(6486002)(6506007)(31686004)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGhUd0NpR2tBZ1hTWHFwSUNtWTZEelpDdFo4UDZoNjNjRHpBM2VabXNjWm5Q?=
 =?utf-8?B?L1pWQ08zMnFPK1NaWDJNVFd6a25HQk1kdnNTTlA0MFZwSHNxdllQOWhwNFBF?=
 =?utf-8?B?MC9jQmJuYitkTm0rU3JNWXZwYUVNZ2xYbmYrWUtBb1d4akFqcFZXTng0NGlV?=
 =?utf-8?B?SkFlNy9xM3Jlcmo0aVBNSnN4aEN3TWZWeFFtTnpBRy9OMEhPQ0lHTWpwUW0z?=
 =?utf-8?B?WGF2TXFLMWtRSjBWTXppSjFjOE10bXFiZ043N1ZwS1NGMUozZFd6WkRhK0Jq?=
 =?utf-8?B?T1oyMU5zMkwwZzR1L0Y2ZEdSb21iRjF2SGF3MHZnWmlEK3R6c3g2WGxkVy9a?=
 =?utf-8?B?MTlRNXBFdjlpcDFCYTdjTUc2cnhxYm0xKzI0TDNOeVJHVlZaS0p6OFFMWEty?=
 =?utf-8?B?VjNGaC9POVhjVENMaGM3aTJYRWxIQmI3SjFvaFBLWnNZRGNFZThlTTdwczBB?=
 =?utf-8?B?aWpwR1AvSG54aStnMkpOb2laV1ZkYzRVV05hclRMTzhCWHRFWEcvVHVWZFFU?=
 =?utf-8?B?Qkl5L2NJNUJpTkZvSDM0VFBOb1VQSEpUT20ySGhNTTM2clliT2cwck1kTlFE?=
 =?utf-8?B?dDArZEFHcWE4c3NYVnpIN1gwaHl0eTgwc1c4NEFNTWxidnRrREVWVjViTVVO?=
 =?utf-8?B?aEVLb24vOUZSNmRUYUZkbDMwTDhzemdJRXhoNldyZEkyM0VZSDhnYmF1RzVz?=
 =?utf-8?B?MXNDZE9xdWxTNWhLTURZczdXRFo4L3hGSWhJNkJGUmxMN2hxeGplVkdEMVZL?=
 =?utf-8?B?VkpMenZIRTV3NFJZQnFubzlhRy83UzRLd09nSzErSld2T04vNjcyWjVqMUh5?=
 =?utf-8?B?aFd5OFp5eTc5K1pjRlB0RE5ZL1luMm1ZRlRuQjVzV3FsbnRXbGkxaEp1akpR?=
 =?utf-8?B?YWkvaGRkaWw2NGtMWG1jd2k4YXVXMDJqWndwakNNbE9Wem4yajlKZmQrT0ZH?=
 =?utf-8?B?SjJiQkxjYUQvL21hck5DUW5NblBHSEo4YTdqcEI5OVJ2SytQZ05DdTV4amFi?=
 =?utf-8?B?MVJmaUxYWFlYTVF1RXBxdDZUUWc5RXc2eW5oMFBXQkJOTWdnbDE3RGJwa0ZJ?=
 =?utf-8?B?NnNNOExhWVpjN283dEVsTXhtYWMycnBjN01GLzdnMU9zU3IvNHJHVS81T2gv?=
 =?utf-8?B?UStTOGgyMEl6VFUyVkhZL0R3dVhGMEtpMWJVYkxVZ1RoaDJXdEM1WmVuNGpq?=
 =?utf-8?B?b05XRXpSdm1MSzJjdEZNL1VJK2RwRi81MGZtTEdrclA4N1pzWVF1ak1vOGxl?=
 =?utf-8?B?S01LdnJseDl1MktrV0kxSUhrVVg5QkYwWmNOdW5EbzhFQlRYemJWOWtvc1Zv?=
 =?utf-8?B?MDkyMzdrZlFreVFZVGtJWkN0SDlHa0J6R3dMdHVwSFl0UlZNRDR1ME5uNWFB?=
 =?utf-8?B?STF6Zm01RDNVdWVHTUVORDF0Z3U2d1BIWVlCOEwvVUUyb1lhUjNVNXRXdStz?=
 =?utf-8?B?cjhUSjBYQnVWV1pRLzB5SVR2OWQ2b1FkdFFLK0k4RWlsbU10dVBndWpla3NL?=
 =?utf-8?B?MWtIc04yMHZWS2IvdEh5RHgrTTN5aTJETnQyNDRWZjdpOVc3MHBuNVZDZkRq?=
 =?utf-8?B?ZG5EUlNVTmdDZEFBZi9pMmN3NGErbzZ2NFUxeE1ZZ2pzdHhpSjUxNHREd05z?=
 =?utf-8?B?S1hhMG9XVStEcFFiaTRmRW5qZnFTQS9oaTVsMEYvMjVuYi9rNFl6L25waDZO?=
 =?utf-8?B?bXZGbmNWb29ieWIyenVoUWpDZkpMc01peU5JQ3JHQ0drYmlvaU8zRWt2aFhs?=
 =?utf-8?B?NUM0SlNVbEQvb25EWmhYeGFoM1VMZzJ3d2NLdWRHVU9iSXdQTjg3aHpldlJM?=
 =?utf-8?B?cTc0U1RQRmRickk4RzU3TlN1bU5iQVdHRk5GTGFXTDkxR01WSzZZU3NxbHhX?=
 =?utf-8?B?c1F6NnV5L0k3VWI1dkF0N0pvTGZPN1Y4dkFDVGRUVitoelU0dzA5Smllakc0?=
 =?utf-8?B?ejdpbml5Znl2RHRwV2hFK08xNVlxbGNLL3hIRVpwUHNtckpIbkZSNzlVM2Ry?=
 =?utf-8?B?NnE1RU9nVVVIeXJmbnVZOERvSjMzSk9wUzhSTWJmV1RobEdQMnFxb2dBYkQv?=
 =?utf-8?B?VkhaRDU1VGExbXNzOHlXYnFDa2U1Y0VIVXBHcEhXSkloNjRva0FGdk44bDhU?=
 =?utf-8?B?WXBqaWpRVVNOS1JzT0NnMGY5SGtISWhGYnd3S0JqcUUwSkJVWGxLTFM1aGJl?=
 =?utf-8?Q?/dT2W/EEi1uKIn/ovpAgpKg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2b831ba-0a50-4521-38b6-08dac6bde658
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2022 04:00:15.9192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ay7leJ4VgO0JH0/RNbiLv5xPjGbr2PSJd3DUsRHV1wvnGzXmSIjSvRjvy8RiLqYlEtIFPYt/iSnMuMh+PHn1yU88mO0ht/gk3V+PMVbW8rQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4566
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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



On 10/21/2022 10:39 AM, Alan Previn wrote:
> In preparation for future MTL-PXP feature support, PXP control
> context should only valid on the correct gt tile. Depending on the
> device-info this depends on which tile owns the VEBOX and KCR.
> PXP is still a global feature though (despite its control-context
> located in the owning GT structure). Additionally, we find
> that the HAS_PXP macro is only used within the pxp module,
>
> That said, lets drop that HAS_PXP macro altogether and replace it
> with a more fitting named intel_gtpxp_is_supported and helpers
> so that PXP init/fini can use to verify if the referenced gt supports
> PXP or teelink.
>
> Add TODO for Meteorlake that will come in future series.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h              |  4 ---
>   drivers/gpu/drm/i915/pxp/intel_pxp.c         | 35 ++++++++++++++++----
>   drivers/gpu/drm/i915/pxp/intel_pxp.h         |  2 ++
>   drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>   4 files changed, 32 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7c64f8a17493..0921d1107825 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -923,10 +923,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
>   
> -#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
> -			    INTEL_INFO(dev_priv)->has_pxp) && \
> -			    VDBOX_MASK(to_gt(dev_priv)))
> -
>   #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>   
>   #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 5efe61f67546..545c075bf1aa 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -44,6 +44,30 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>   	return container_of(pxp, struct intel_gt, pxp);
>   }
>   
> +static bool _gt_needs_teelink(struct intel_gt *gt)
> +{
> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && intel_huc_is_loaded_by_gsc(&gt->uc.huc) &&
> +		intel_uc_uses_huc(&gt->uc));
> +}
> +
> +static bool _gt_supports_pxp(struct intel_gt *gt)
> +{
> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_DRM_I915_PXP) &&
> +		INTEL_INFO((gt)->i915)->has_pxp && VDBOX_MASK(gt));
> +}
> +
> +bool intel_gtpxp_is_supported(struct intel_pxp *pxp)
> +{
> +	struct intel_gt *gt = pxp_to_gt(pxp);
> +
> +	if (_gt_needs_teelink(gt) || _gt_supports_pxp(gt))
> +		return true;
> +
> +	return false;
> +}
> +
>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>   {
>   	return pxp->ce;
> @@ -142,22 +166,21 @@ void intel_pxp_init(struct intel_pxp *pxp)
>   {
>   	struct intel_gt *gt = pxp_to_gt(pxp);
>   
> -	/* we rely on the mei PXP module */
> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
> -		return;
> -
>   	/*
>   	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>   	 * the full PXP session/object management and just init the tee channel.
>   	 */
> -	if (HAS_PXP(gt->i915))
> +	if (_gt_supports_pxp(gt))
>   		pxp_init_full(pxp);
> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
> +	else if (_gt_needs_teelink(gt))
>   		intel_pxp_tee_component_init(pxp);
>   }
>   
>   void intel_pxp_fini(struct intel_pxp *pxp)
>   {
> +	if (!intel_gtpxp_is_supported(pxp))
> +		return;

Why do you need this? the fini below should already be smart enough to 
only cleanup when needed.

> +
>   	pxp->arb_is_valid = false;
>   
>   	intel_pxp_tee_component_fini(pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 2da309088c6d..c12e4d419c78 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -13,6 +13,8 @@ struct intel_pxp;
>   struct drm_i915_gem_object;
>   
>   struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
> +bool intel_gtpxp_is_supported(struct intel_pxp *pxp);
> +
>   bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
>   bool intel_pxp_is_active(const struct intel_pxp *pxp);
>   
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 4359e8be4101..124663cf0047 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
>   	if (!gt_root)
>   		return;
>   
> -	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
> +	if (!intel_gtpxp_is_supported(pxp))
>   		return;
>   

This now returns true for DG2, but  we don't want to register the PXP 
debugfs there as we don't support PXP aside from HuC loading. IMO a 
better approach would be to have intel_gtpxp_is_supported be what you 
currently have as _gt_supports_pxp().

Also, intel_gtpxp_is_supported is a bit confusing because of the new 
"gtpxp" prefix. Why not use just intel_pxp_is_supported? We already have 
per-gt checkers that refer only to the subcomponent, like 
intel_huc_is_supported(), which for MTL is false on the primary GT and 
true on the media one. I don't see why we can't do the same for PXP.

Daniele

>   	root = debugfs_create_dir("pxp", gt_root);

