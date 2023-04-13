Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 221906E0D63
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 14:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC7E10EAD4;
	Thu, 13 Apr 2023 12:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89DF10EACD
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 12:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681388528; x=1712924528;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=jD/aDzfMcH7d7dY9EK/Hq1Ui0CICtjWKD5RjKO7Az5s=;
 b=DcSACQ8p4fuJ6Rm2sfGs0ioqFsYgOmO6LkUNqZDTy6EDfJbAo7MglTJ2
 qP8q7i66/RGOZgpFz8C2UMHYAggp/iqUjCVv+L+LHpCL0yZVjlsYAHDm6
 leOXlpVsyrPCJclxDG7FE9cdmJDHsSSxD41Z9cPEyNtWHYMfTNz9PlweB
 Hq0iqrCYYKhK0zjn7covTlbIpFQs4phjFYfJklpfaz+zgET6dAXizp3kn
 8+8HrkRTrGDY1d8in3E6MTnQ89dV6oMveecigKcjTrrF3KNGvrDbCcZbn
 oFPRvs+Qm/8TLuS0dzFh9QUcZKMOjo7C3Ew1iL9qDHgQYWlYHtXAVuPbc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="346853526"
X-IronPort-AV: E=Sophos;i="5.99,341,1677571200"; d="scan'208";a="346853526"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 05:22:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="722038495"
X-IronPort-AV: E=Sophos;i="5.99,341,1677571200"; d="scan'208";a="722038495"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 13 Apr 2023 05:22:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 05:22:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 05:22:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 05:22:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mVT/7I4Fa6pG/i3gt19RD2k3zx3YHVMxSzRsTaQsvw+iQan4JgkV/9IrQmGzNtPY+fhS8u9nQdI8vTIuRagbuslSkI+oL+EPDLcV/bCI2R0zzoKjWqu8eGd2HBNwulDBYSRBuWL3zQjV+9OJV+4bsiNgQTeTMqHKUMcKbZzgpQH8gab7hlEqz0zcchJ/w/YPvzMKOvm4d8rytNxMwfxyeL+t+fANQibvnWYwqEBmDXUZb8sGoLh1QIWCtOz1QVMBNBe0BVgWPry6cFpC+27u6OxeZ3FJMPTunUyLyIpoWuwg7OU2L01Y0nV/7PkWqai5lzgA+Wpi+xMAb0mlREpHHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NSyvZPRprk4Jz25xXOYwZJ7orJK1qWMHr/lblmeQilU=;
 b=fsMoBY9s2TGklzgbamzFKxERYH++AVzUZVDmGmpENB6j1NQDCyvv7Yf0X7hi7VEeTNC//eCDRDGd2uGNAQKs4xhQZJZu7JYgnuQOxKbKaVPgXeLK+NloUm4v0+HzhPuX2MNDE7h7IVyHGU45Kgc31okT4rkOKw1ddU52lxCzwTsY7yOhxcPnMgpMKeRdfD2G1DvMhyb0iXXufpaariR0A0yuSlCMBzT5x4UL62B8j0qHeacPj7EXNLHXF3yhwD43TVeRhhzf6aTKFqdgDlQhUNb73HutxfZhlkGU6h1HB4HCAY8XUxEmLEcuA14HGFwU+qwbwyWYMgPHBpWm1YyW8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA0PR11MB4717.namprd11.prod.outlook.com (2603:10b6:806:9f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 12:22:05 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 12:22:05 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230413121113.1141052-1-jani.nikula@intel.com>
References: <20230413121113.1141052-1-jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 09:21:57 -0300
Message-ID: <168138851791.4412.18050063545378346839@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR03CA0023.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::36) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA0PR11MB4717:EE_
X-MS-Office365-Filtering-Correlation-Id: 9956b6b0-4e08-4ef7-11e3-08db3c19b132
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yB/ccf5NgHolHHWcVgZ8wS5sBK//glSxGsrCrYAz1Dq5jtvAVPukrWUsFW7hkCAWCkKvxiYLvWKchs/uiK7B6imczrEJhe5MYi9u35i97O97suLmBtNWdJJOsBq0z9GT2vf+pmKWzc8hAvcJr90bk/KMl53NOCmyt1Ee4iEPpVdvikZ3VyFRx8tedzb3cm0AFPdhNFN5v0OHgEEG3XBtjgI5GSaHaVhVrHuRZSmUJpdsjgZ+TL0uBtpK74mOL08POPGKX3zq0RH1WdvBJBU34YC5ihAtd/9efvOyRmuuaqYjnrEJklO0AoJ0VFBPcvkw7UkXIfVHXU+uUaKnC7p10addQoEokmTMaqND5ThPQMqX+UQe6BeKPf3Hjnm0qrNy2/GtLVjWEjKDSdmi1nZv0ecQN7s8nSg92QQd1ilzz1eyQcv6EXJrCeOQuNLvocaH/3Lqlyv6CLlgg7CRPZLuN898OGOXGdxDapVZdptOJxXmI6++TXa1ahf7gnd2SK0GZhnynXo56FZJmpFu+8H5cwPKcDonK2uq5pviLOlpQ5C9vDrykOQkQA9OEbnkZ4Q2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(396003)(346002)(376002)(39860400002)(366004)(451199021)(6666004)(6486002)(66476007)(66556008)(66946007)(4326008)(2906002)(44832011)(33716001)(86362001)(41300700001)(82960400001)(5660300002)(8676002)(8936002)(316002)(38100700002)(478600001)(9686003)(6512007)(6506007)(26005)(186003)(107886003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RE1peis3Wnl4MXFlNGJsdnZHRm5SQk8yM3VXYUxTcm1PaFlQaXJNcW9zRGdN?=
 =?utf-8?B?bWFwQVJkd3A4SGVYcVBtU1NGOG5LNzkvRzRiUGZkSDE0WnNNR0JuRFk2NVQ4?=
 =?utf-8?B?aW5maDFTK292OW8vMjQyRjNaMmZmSTVjNXhIYXJhSysrd1NpNTZYSndQT21z?=
 =?utf-8?B?NXJyNmVqREY1VWJCalp3c2pKUkNnTU1iWTkySFNmK3p1eE42OUVhU1JGWTNY?=
 =?utf-8?B?SGlROUMyUzNBU1NyYWs5VFdwVWpBRURFRkdUSDlWblFMdlRMM1ZVTjRCM3BW?=
 =?utf-8?B?MHg2dkYzanpWSHV6M3Mvazh2Y0c2NzdFd3REaENUODFmallqcXhDYi9SSElq?=
 =?utf-8?B?VGhwSjBpVkdoR2pBMHNvWENPMWpNR1JBV1VqTlZqZGdISXdYTkNZaVl1NElp?=
 =?utf-8?B?OExFZjFWbDZXU1g5d3hUeW1sSFc1anNYWHEzN0poeFFnUEgra1MzcE44dGtG?=
 =?utf-8?B?bGhveFdSNjhLV1hGWWxOUlp3ZC9UeklSSnQrYXYyalhxOERmUE01SXdTeHo3?=
 =?utf-8?B?ai9pTGhMSnpvaFdYVlZkb3NkemdHOEVRZEh1T2t1bmdJQnY0bXRGOGdpS3Zv?=
 =?utf-8?B?dzZUZHlhZExZVFpWbm5GZ1ltYlFQdnFVVlhxRVNFNmFJbUFCSnpuWldQQkdH?=
 =?utf-8?B?blByNzQwN0ZKNHRlMHhKeVpRaHg2enJQWHJQQUNwWUNhR0ExV3duR3VLdTVt?=
 =?utf-8?B?dUpNVUZFdCtkTWEyMGZXc3lsYlF4Yko2a3dDQ2JwRWI3YnRnb0xpVWhwcXN6?=
 =?utf-8?B?V0hjVHY1WUNVVDF6QkFvQ1lqRzF5WE5sSFFSWWNWSHhRbEhpN1ZRbDAwQmQ5?=
 =?utf-8?B?Yll6SzZFMUsyREpIenRCZ1ZXQlEwNit6ZDI5UnBhMFZHQlpqeVdJU3ZIcjVk?=
 =?utf-8?B?VkxwNTlMZ3h1NWFuNzc0UTFQUjFURkJQU2FMTDVZdkFFUTJsMG5Tc0VxaXpr?=
 =?utf-8?B?NVhGOGduUis3NTZ6N0oyT0tpbXpNUkQ1OXVTMDRsKzJndjM5WE9McjNTc1Fo?=
 =?utf-8?B?NXhWSDNmcm8yV1QvUHBPbUg3UzdaTUdyOUk2WTAyV1NTZllMS3N5dk9MdHdW?=
 =?utf-8?B?Tm9HdVpvUzgwV2puZFQ0UWp6dzRNVHlYMHg5YmJSeVh1YTkrajdKcGJMVmF1?=
 =?utf-8?B?KzRIQlJ2ZFlhTmNQNlFhYXY1YTZ6R3dsc01xQUV3Y1ZSZ3pxWVFUZ3RqejVK?=
 =?utf-8?B?T0tDdjFYUXkvRkgyNUU4UXVnMUM2SjhhY1E5TWtkV3p4a2E4bWo3NWgxaWpH?=
 =?utf-8?B?bEdCL0VoamRvYWtQUytjOFk1djUreWJ5a1B2UUhobHl1SkkwK2Z5U3lxcisw?=
 =?utf-8?B?T21aZmsvaTA4bnpQeU9zM0ptL2lqSGxCRWhjeDQwRm8zUk13bzYvMUg1QWlx?=
 =?utf-8?B?NmdZbUxYWkhKWm8yenI1TDBORlF3L3Q5MmRMbUNaeEkrUGJNVVE5c0J4Y2t4?=
 =?utf-8?B?VGlSTHhaWXc0SldqTGJKaDMvbGVnUXc3d2JxNVJDczRicTV2Q08vZzNMVjk4?=
 =?utf-8?B?Sm5TQ0pMaWVlaytuYWI1L0R4WXlHQnNRZnpDWG44WTVnN05OcW9xcUlyeGxV?=
 =?utf-8?B?aDFpazc0VWI4a3V2YXh4d1NiMzEvc0pld29taUorOWo5QTVBQ0l6MzBLcnZD?=
 =?utf-8?B?NThjdUZHR1pZOUhQelNlakFpcjMvYjl5SnV4ZUtUcG5zbzlQRnozekdERmpR?=
 =?utf-8?B?V1pJbTVrWWgrMlB5TmVXQmsvTEtEdkMrcHpzS1JDc2NUOEZaUWU0WE9DbUVv?=
 =?utf-8?B?ZVBQdC9iRTJDbFczZnZiUkFFL2VSVk5YVFVKNzVJOGYzQlUvYnMxaE9WeVQ3?=
 =?utf-8?B?QUtqazdKSHFXVi9RRHdFVVd6TnpBN3JjbUdWcEU2dWJNWFlLV1NJZ1pIaUVQ?=
 =?utf-8?B?YzRpdzFhUFpId1pGUUllZVlCTkVHVGwwM2RhS0Q4TkFZTSs0NmNJTEdHZ1hV?=
 =?utf-8?B?ZXZZZUV0bXE1ZXdseStlTlgwN2U4LzMxSmwxRzAvOWN1bWVxSk5Vb3FLdmw0?=
 =?utf-8?B?M05EVFoyeWNhNWlsODdBemVxQWlJL3VTeTh5NTROdTlJQ1FEZjJnZm0vbEFv?=
 =?utf-8?B?bnJQanFDT1Bnb0J6TEFnMFUzblJLZEtEeWlJTVVrQXNRZUNOYi9Oa1o5V2NG?=
 =?utf-8?B?aGhxSitvRWZBRjZQU2hMODIxc0tXS3pJMWpRaVh3RWdXVnRvRkNkUnM2SVVB?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9956b6b0-4e08-4ef7-11e3-08db3c19b132
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 12:22:05.0386 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dd5Bx7ul2FIZiNKvz9u+zgVTTEZBVjg1d2pe8HNnJSk1QmUMm5fiP/eAlwG6a9mPojs/M/inozAm6jZlisZ2wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4717
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/aux: clean up aux name
 initialization
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-13 09:11:13)
> Split intel_dp_aux_name() to a separate function to declutter
> intel_dp_aux_init(), and only have the if ladder to pick the one
> character instead of duplicating the whole kasprintf() call.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 32 ++++++++++++---------
>  1 file changed, 18 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 705915d50565..2fee5b79c0b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -718,12 +718,27 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
>         kfree(intel_dp->aux.name);
>  }
> =20
> -void intel_dp_aux_init(struct intel_dp *intel_dp)
> +static const char *intel_dp_aux_name(struct intel_dp *intel_dp)
>  {
> -  struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +  struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>         struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>         struct intel_encoder *encoder =3D &dig_port->base;
>         enum aux_ch aux_ch =3D dig_port->aux_ch;
> +  char aux_char;
> +
> +  if (DISPLAY_VER(i915) >=3D 13 && aux_ch >=3D AUX_CH_D_XELPD)
> +          aux_char =3D aux_ch_name(aux_ch - AUX_CH_D_XELPD + AUX_CH_D);
> +  else if (DISPLAY_VER(i915) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
> +          aux_char =3D aux_ch - AUX_CH_USBC1 + '1';
> +  else
> +          aux_char =3D aux_ch_name(aux_ch);
> +
> +  return kasprintf(GFP_KERNEL, "AUX %c/%s", aux_char, encoder->base.name=
);

Is the drop of " USBC" in the format string for the second case in the ladd=
er
intentional?

> +}
> +
> +void intel_dp_aux_init(struct intel_dp *intel_dp)
> +{
> +  struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> =20
>         if (DISPLAY_VER(dev_priv) >=3D 14) {
>                 intel_dp->aux_ch_ctl_reg =3D xelpdp_aux_ctl_reg;
> @@ -760,18 +775,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>         drm_dp_aux_init(&intel_dp->aux);
> =20
>         /* Failure to allocate our preferred name is not critical */
> -  if (DISPLAY_VER(dev_priv) >=3D 13 && aux_ch >=3D AUX_CH_D_XELPD)
> -          intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
> -                                         aux_ch_name(aux_ch - AUX_CH_D_X=
ELPD + AUX_CH_D),
> -                                         encoder->base.name);
> -  else if (DISPLAY_VER(dev_priv) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
> -          intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX USBC%c/%s",
> -                                         aux_ch - AUX_CH_USBC1 + '1',
> -                                         encoder->base.name);
> -  else
> -          intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
> -                                         aux_ch_name(aux_ch),
> -                                         encoder->base.name);
> +  intel_dp->aux.name =3D intel_dp_aux_name(intel_dp);
> =20
>         intel_dp->aux.transfer =3D intel_dp_aux_transfer;
>         cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VAL=
UE);
> --=20
> 2.39.2
>
