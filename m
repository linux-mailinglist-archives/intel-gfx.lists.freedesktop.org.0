Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F2D8814DEE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 18:08:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C175710EA69;
	Fri, 15 Dec 2023 17:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E86C10EA69
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 17:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702660093; x=1734196093;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=hDflk1j9Z8ASPKQE4AsD5fqZ25CjC5/N5IGaJZonD1s=;
 b=QmIOHCvVXirMmo99yEWaHt2XI04a8Df4ACzaipj2LXXATHmUNkubJH+O
 DzNF03mIbxSdqbwIZJA53ijVc7pq5cHOD7p/LMWUIDLeq4R00aJ/z8PE+
 xBfHqR35vRNPvfBozOlpTOSfuO+z9LGmx9MAgiVU5dnIozaP1pQJIIBQc
 zQ/MuZLLKb6L76VSKipKCmkxTDEknaJvwPMAQJtucHMRHhr1aKnHux9a0
 UdXKVrsanHv241tkO+/Y/8Qg4K8brAN6d6MLizmD/Y5IDjvODa5CwKNpM
 qKYy1eyY8VSe7r3IiwrNSdgr8dWzVVRaaB3kdfUhKG4kHSlwzH9Rb8F/m A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="2140533"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; 
   d="scan'208";a="2140533"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 09:08:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="840726548"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="840726548"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 09:08:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 09:08:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 09:08:11 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 09:08:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRjZfSOIuS6xnXY3Jnt+jSBbs2b4nKm2FfQhZQDYth0oSuW6RI0kcjgCAxsDF6KHU3xbpytmgYXgl3m4xNT5vU7Sd1gdpdau+6E2IJr/oaYssXr4PQvC17v7LqKdU6uxbaIsti3myj9Ls33+Wa2h9FSVNMQGPRtqELEU0WCzMwma/Dl2zXPcdwjf7dQlGLvQ4f5prgIK5IXFP1fmOCgA6Et1xgTBQu2TsaNvgXfhFVsj040gMd0JIlbIbbbxu4JBm6j9+j4VgESbKak4H6reWqefwJuAQKxdbu4qgP82y+iInu11+PG6PS91jgJE2klmZjnq6YLqE0rDVxjVk9Cunw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ekfym8BsGni1Zo3J+FHHDlaXz+1F8VwBvzKPALrEkvI=;
 b=I9ejaQ+CngWwI/yDCANjtXy31oq1VjyZsK7PuVr6mVGiTNd/9jIleVfJevPk5+bjNKOc61ZPYV99LLFPfu6ZIk+jXMl7SJXAeIH3ZZdROHciHabGowAuoKwSUq2e9G/G662VVOFAgBCE2bZLnb+FyT6YLZWThQDWA6tNN3ok9eAOuRYQoGPl/lcXwIk1gIRwKxRdfolJwIzHZ/1OIcBMEr2eJehfjSXhtCXHoGdYRLJI5YI/8bvN+SZRt8XV3oqnHQGq+ggAcXgOoyXU3RV28yvc7c19p7+tzeo+rczEtnUhicYYwsCta8VjM9yjO7eqS/eH1A9VTsf7fY+BiTBU1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8382.namprd11.prod.outlook.com (2603:10b6:610:173::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Fri, 15 Dec
 2023 17:08:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 17:08:08 +0000
Date: Fri, 15 Dec 2023 12:08:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 6/7] drm/i915/display: Read PSR configuration before VSC
 SDP
Message-ID: <ZXyH9UHj3WKs9YIq@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-7-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214114838.1113648-7-jouni.hogander@intel.com>
X-ClientProxiedBy: BYAPR01CA0051.prod.exchangelabs.com (2603:10b6:a03:94::28)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8382:EE_
X-MS-Office365-Filtering-Correlation-Id: bd7382fc-a76d-4173-09cc-08dbfd906941
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NESPW+z8gOUe+Y75Fddysw+tNHalLSvoGvuhKNIuvuzfFayavo8KdEkXugUTygPTkBCXihVz0cjMF1FPnEM1TsMFlExKL8qRiImnyAJndbK1bducHhsQHPU5/ptUtv/efMuGZoa410Q699uYbn350JSTpJuDTgP1b5g/SBLHJhK3ZQ84kvdyrZOH/DAgn2SSyyB8LNcIHLjIZFPS2UlMrtNKs4qSz6VGvirIqUrOR9kb21Q/sU9EBuLSVnmB73C80qUGJix5fUXK/utVVnOwYFFkSthxcc72xmU61U+jptfCHs65uB6qK3IBnnBH9lDo6LODjsJ+amfV400h7RcD87MWBHbGcVh7mFO87A/w7auFBxzzS9Rd2IyWZ+/qbOL+pe5p6O+jNAhrNhnt59+AkfCbrUpBd2BY7oE+Yu7ttJ2aremaktN8K7yv7jyY8FDKLFVcGep8sOWvZgNo1hGvqspd4LRj9Mly+yfsgquZKMP8vSj7oNJvfBPAtKHdvyIKpjgm33aZfb2vogAGmAPH1kLzCjngQUhN68SYYY3dVSvz5IXNk8haqkXcoPyH83jv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(82960400001)(2906002)(36756003)(5660300002)(83380400001)(6666004)(6506007)(38100700002)(26005)(2616005)(6512007)(478600001)(66476007)(66556008)(66946007)(6486002)(41300700001)(86362001)(4326008)(6862004)(8676002)(8936002)(37006003)(6636002)(316002)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?VlYPGxIGqpEL4KWqdDEVQkQpRAlPkO6CZZhBhrG69pyN1653OL9zD0zL2u?=
 =?iso-8859-1?Q?YiJ5fb/TsIKNfxREX1N/jwQuo4SNJhOkJok4nbSbjwIBs2UDO7FT5jypV2?=
 =?iso-8859-1?Q?x3h6eP/MO3lsArtpqLYtPJKYi3RNfnngJY0XAmZbwgrY3VV6TdT6vi2n5t?=
 =?iso-8859-1?Q?tbFJ6yZItBUpfb9oM/JdsDXv8EC9AYjCWtD938UUGa9/5cfZLlkBSo8Jk9?=
 =?iso-8859-1?Q?V5OqgvIIgCL4BUuMs8e+9xcsfbU/gG1iyscOQMx8CZ329cuSzU3nZu3ppB?=
 =?iso-8859-1?Q?TydYcDzTsuiSHLXLksZ6rRal2OKwrAYfL9AR9NUX8Cwj0rm0V8zxtCX0Bg?=
 =?iso-8859-1?Q?DAuwpdV94UZdsxvs9ZVdbsGMsU9N0r0qTBaBSUB0t2mCXjmrJwxSYpC4If?=
 =?iso-8859-1?Q?4gjXZgah8H7qAenAYgb9hm9OdlEb5GiKdTqTr3IlapfSjTdJN5UQ6OH4uE?=
 =?iso-8859-1?Q?Sp7CSDMmIvRMgTares4k2Sym7rRWjXy60qu6ZnMOUEFOaCLBX98kF+1P8n?=
 =?iso-8859-1?Q?Ph2T1wabwGG3nuZlPQyH7Xwvv7aNubORNQ0i8u0EA4BRPIyc+jS4oqdB4Q?=
 =?iso-8859-1?Q?wgxB1YJMvqzh5vBC3nl8DRcg2+nhRqoBTVUrTn4JPMHgmHNvl49mSlXb3L?=
 =?iso-8859-1?Q?QtYkg2QR4OqPhVAVJ5tbFwtczcv7FqrJS7k+iZ9GmIZQabnBNCkJzvmG+4?=
 =?iso-8859-1?Q?DjBvjlA5ITucDuPNJ2rI4rd2TSfi3Ds9gaZGJMg0U9sMaTZs/kbmIoX/OS?=
 =?iso-8859-1?Q?IA/w3K8zH8cdVQAoUOgkNV6kuWiSricQMI5BthFuVDLVNIC7p/1IJqiFSv?=
 =?iso-8859-1?Q?GokypbEEWVKh1alHD6xnPlH89edydY1U03hnQKphSzQqFi/MKElUD5vc6Y?=
 =?iso-8859-1?Q?J0+P1pAcQOf8WQovVkEOJOSwA9PPvXNse4v+rzX/wdd++bP6fMyC/CLkGR?=
 =?iso-8859-1?Q?DtAcMR5GT1yQAPOm1PKGmiWyEexlU1KFmfzzoaHNccFu76/F0rYr5B2gNR?=
 =?iso-8859-1?Q?8d6km2KXe2QURae28NalLWSmGhvNKqkASdoq469wXULAmbecUDrxB1dwIW?=
 =?iso-8859-1?Q?uBNvy4HX+p5UUI5ZIAYM1+1Hiz6sytBw99uuU+LR0+CxG2jIhMwUx0FCKu?=
 =?iso-8859-1?Q?n44qrjt/w+0qcf0KtspRyOylMXRNgTbfq9EAIjOgpAlQuUnT7phSmOQLph?=
 =?iso-8859-1?Q?yPNaSFM/rBuYvw9IseheGle7qcCIt31X+KFW8unYnjTaAyDWP6OLxgGFxS?=
 =?iso-8859-1?Q?3AOtsWk/7SoGVzU+ITjyM8V4UOPQn1FZKuXXGJQF+K8+UhLy2FXYcjoLSE?=
 =?iso-8859-1?Q?wcP5T9r4Pk9pk1DaEiYA1SZfC2ZVD0XQ5nICYvO9RyibJv3oVguB3uzXdY?=
 =?iso-8859-1?Q?+IKu3vaYZoZjW4MjKuUeoCOJajA0WExD7o9tCKafnf4Fqft/eMvDW9oFQ2?=
 =?iso-8859-1?Q?eF1HtEwGg2WbfsgtK6z+oxiN2QHyJbQEDmW0768dWtnVi7BsaXDzv4XPJv?=
 =?iso-8859-1?Q?mjuO8CNywnr9VlVF3diX834mcd7D4P9CCgjpwXqyvot/3h/KgCYERwhyxL?=
 =?iso-8859-1?Q?nV2IZrWlgZJshV8qIRN7lD0OF+mLU/Mf9WFTPbx+JgBp8Gna07rJmklLEh?=
 =?iso-8859-1?Q?Z/+WmA+so02vEpA+9UAXZj0xRCbDamaLqvyYcUVDYiY7dHbDN36M57cQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd7382fc-a76d-4173-09cc-08dbfd906941
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 17:08:08.8793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zNuejs83ix+dJGnJ7UY8+o4t6WWuVmRctAWiUzDmT6g9/dHt4cZeoizdPlkSZ+uTQGFutUKRJh7h6CZe1awkwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8382
X-OriginatorOrg: intel.com
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

On Thu, Dec 14, 2023 at 01:48:37PM +0200, Jouni Högander wrote:
> VSC SDP sending is taken care by PSR HW and it's not enabled in
> VIDEO_DIP_CTL when PSR is enabled. Readback of VSC SDP is depending on
> VSC_SDP being set in intel_crtc_state->infoframes.enabled. In case of PSR
> setting this flag is taken care by PSR code -> read back PSR configuration
> before reading VSC SDP otherwise we get pipeconfig mismatch error.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 12a29363e5df..2746655bcb26 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3941,11 +3941,11 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
>  	if (DISPLAY_VER(dev_priv) >= 8)
>  		bdw_get_trans_port_sync_config(pipe_config);
>  
> +	intel_psr_get_config(encoder, pipe_config);
> +
>  	intel_read_dp_sdp(encoder, pipe_config, HDMI_PACKET_TYPE_GAMUT_METADATA);
>  	intel_read_dp_sdp(encoder, pipe_config, DP_SDP_VSC);
>  
> -	intel_psr_get_config(encoder, pipe_config);
> -
>  	intel_audio_codec_get_config(encoder, pipe_config);
>  }
>  
> -- 
> 2.34.1
> 
