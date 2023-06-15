Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386EF7321E8
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 23:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B072210E554;
	Thu, 15 Jun 2023 21:51:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B4410E554
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 21:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686865880; x=1718401880;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=s7hF22TR4E5IMb0XJelmipvbpOXYR9AFCV9ChT9uaUA=;
 b=KcWAaDLxH5TXXij0RPh47EmVPEfzvxj+Ck0RX8icqHWNAMNiCaera7Vm
 WMBSemdQh+zmEKcBXNx2jr64Vt3KYRIsz3Xi4YUsAu+1dmZ6VIef+Kqof
 NJeSG0wBbVXHvnmCktSr2GdGT/i+REihDgvAxmyhIdFT9QwvTYd6TChvL
 +aAGZyK62YU3ZClIv3Ld0Ndl42kbVDVIwxCeRlsSACYlO6wQ7qIh8mVdH
 8WosZNvDlwBcJUs3aBuQzaGMb1ujXz21QAjwi6SBJgIKa0nH0KuXmuMbX
 CBo/Wxk0YuYyG/j/xzWb9xNErrvTd3I96EMkdG8fbdGBTbJg/JgMZh8oW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="348756898"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="348756898"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 14:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="802571930"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="802571930"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 14:51:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 14:51:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 14:51:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 14:51:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4+PdPY65YwHLHTtxCjXvqCMOOb4Ur/rQqmng2fNmBX1VmpjpqZ3MHsiCIi21hT7SIgpJUkGtpseZkYarnh3ImWbeoJsl2MH5q/SRbYg0T2AlIbb0kS8w3+zOmuk7zf2e0+n18JIhnlF7jF5mZfEi1JsFhLHA502bgW4t0lR+UKJ/YFo9jlj7C+Z166PPZzEdmLpHHrkcz4AJNjLKOMMBkz2quj76JoKJer4vLfyB9wYONsy4paa9RsPkdBcHtCFq1AadLXQzB8lsJf+/Ns0mNNTqZM41CEu9QjYOD/28gw0+gQNkD1KU+iQa4tJapbEASDCy3Ab4QlvIyZeIE6G7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WdvPXoST8Ifn8OKUfhiiaCPV7FqpqQhzFJtnxf2Xgek=;
 b=DII4TumjqmjVuRbiON6HVHMyWXiozUloB2c2zKhKMczDjW+pxfDhdw+oYzNpGYLyg2CKyuQqfKNSG7UhCA/x2HALHvPA8iEJtO9VQUQN7/bZ8T1iZTBNcmnRYApGMhhq8l+btYFrW+nM/FVExUYnMYXM9qdOgbKabGgTN70J8XOUcnSSO7plGzRM1kh4Aplt2cRv49gAZYXvMbhPvWQ4pR0RudrwsoGeI3IxPdfrmbuCNyziH9zp/K0R0E2lwY4wLlFlyPVGm1A3qJb5MN9oKpMA8U6JtNGA26p2eDAiKRB/DJE0vBZ0og3nMD4yW8dmwQENsbYIqqmiZwNiI/aRQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by PH0PR11MB5610.namprd11.prod.outlook.com (2603:10b6:510:e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.25; Thu, 15 Jun
 2023 21:51:08 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::dc02:fa20:2d25:dc%5]) with mapi id 15.20.6455.039; Thu, 15 Jun 2023
 21:51:08 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 10/11] drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and
 subplatform defines
Thread-Index: AQHZn29rAI7nqSHzBUOcQ6krAOFOOK+MaADg
Date: Thu, 15 Jun 2023 21:51:08 +0000
Message-ID: <SJ2PR11MB7715EB19CB58629EAF668778F85BA@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230615095421.3135415-1-dnyaneshwar.bhadane@intel.com>
 <20230615095421.3135415-11-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230615095421.3135415-11-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|PH0PR11MB5610:EE_
x-ms-office365-filtering-correlation-id: 11f47493-7fa0-4e1f-2c66-08db6deaa09b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xc+O5JXxBaxPPXK0uyjk4btu3EXLd8P7nux756+XiSc92FLhiF8xhDNqU786I8pXcmTGrkXhTH8RxMHlFBKe08os4H68ATqWaP163zIbgzddCliZNGvFRXqcSw8maxAcWuaUo2uLtQB9k4W/3Aa9pwMIhJnso2svWCcWG85pNap6xVnjYF/vDgbBR09HWW8z53LRCHHtCoG5R85g+QHZYtMWF/Ms6EvfpOj7ZhHD+BdtOzcI7HSkDP4/kGRdZGaNb3gTwzSLi2JpA/+ZYO69gZuLKFBg0tWag1bFefEDZjnrUknc2u2z3USpYRXtHKkA4OQYQAPDUQccUjZHXzvVaX6l00TCqaZivq5kH8FnOQgUeaGWgJ4EYbbdyc27gKetsjpc0JZb0IO7PHAZZRxcFJEPQpz5ZoV5+p+QbcKUUV6NAxCaMmx1oejHoHGVgF6BSRLwoCEZTXLf/7flxWUG2xxxISxWt7i7dOULI3W/WDbYmFbBTrkPQ2wiJhs7OUm8+DWLZjJi4sZcYGTgJEbRPv9XFo1/ME9a2gGu5QW0TVmCFlixK5BdYANXAdv/5Zob6GOjn/tkKqp85aKE6cISYOtNV19Vg7LgyO1LUCacfaBko0d+CtzQz7tM5Lny/r6P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(346002)(366004)(376002)(396003)(451199021)(53546011)(52536014)(5660300002)(82960400001)(38100700002)(186003)(122000001)(83380400001)(6506007)(2906002)(26005)(9686003)(38070700005)(478600001)(55016003)(66446008)(66946007)(66476007)(316002)(33656002)(71200400001)(8936002)(64756008)(66556008)(8676002)(7696005)(86362001)(41300700001)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gOhpgvAqPw5otEIoNv68mmts4xoTCiT5SO1XBX9xtR5XK6xNYRYFFbt3CqaA?=
 =?us-ascii?Q?szqIZkaKiRv7Jhayj+NHUMfkLym79q9D/RJ49PkCpNljgW39zyelMmFlpS0X?=
 =?us-ascii?Q?cqYqOfz7KCZeMibnzDjZabYwM6rnVjYV6qmTDN/q/97lZDv8kUQu39ERnRs7?=
 =?us-ascii?Q?YHTkaIeHkrq7deRpIudfhEuOYMJ0MWu6p3RzErd0MyAufWkOS7JAlTqwS65a?=
 =?us-ascii?Q?RAHh21EfHtawZpH9PnJ6LqvS8K/WDJk1pTyLoBzy1dK8yt1Xd0ZLtPMrqR2N?=
 =?us-ascii?Q?tb7Gvu8jLDEkq4Lx9iZoldF4V+C9gWnVqXl7QI8sps/VtCV5Kg5rbrBGyhkM?=
 =?us-ascii?Q?ijjyE/ybuxU3VLEFH9MS4JXCTJpyYF5gVL1yd6WshBAMMnvZ/PJzFhpHXRUx?=
 =?us-ascii?Q?czxBmZydFJRhymke9JxBSDOgWnW7fbty0hVvsN8sBNK88phvhV8Evy9MsTc2?=
 =?us-ascii?Q?mfFvCShHObP5ucAHXdd+Odw+Mk20ziDwdzNpUFmWGCx0E21xB3PaujrTlNIY?=
 =?us-ascii?Q?ptQSIgfq+NzymZepDvWieqvldgjWOYHCaSYjwvTRZgX4vfqas1wC76yGrDCy?=
 =?us-ascii?Q?ZHjUJe+/68d3P1StBeLQZP3e0KFNyXe2LfTy6DzXjP0/fpetmUKcZrOigXXN?=
 =?us-ascii?Q?fe9GOH/jCD+FyOc3p2d+jK4KSkYtApXv+eGhhn2dvuRwDPv+ozrSlUE4/J9Z?=
 =?us-ascii?Q?idU4O5qefHAW9EeNkAM0TEOXA+VwiesAwPQDy7zV8oThyHyX7/6YCd1V+Nw4?=
 =?us-ascii?Q?Z9pbbc/xVaZ+LrR8z0/JoSQcdK94s2BAEwSUwKFig/1AUmAYV3ASuJaa4/dT?=
 =?us-ascii?Q?OdkW9seTYwX0PmbanTRk190phX6LH4I+5X5Suqj2aR/0ps0rVCRS7HP5rgJc?=
 =?us-ascii?Q?XlX/va0GIknyOnsondTuJGJv9d7sZj2fys4Cu9Eo7JuzAwdVMvtDPI89RZ+b?=
 =?us-ascii?Q?p8XpZQRv/l87geksAn+qx3w2p7Nz7xwzGQqd9KE1gnYOc0MfN9d6ChSe4Tx/?=
 =?us-ascii?Q?Vw5AnUZzlXY8XW7vN9ox3B6eNvAmYbF7YBSsk3F71Dw3cQDGE9pzV55OnXOV?=
 =?us-ascii?Q?F8xQXQhTSeSonr7H45tvFGWYNm0RKp0RLGXNnxdADk4HWXlLZ8G1pSHIXOzP?=
 =?us-ascii?Q?Ilm5wDje3IXrmUjQV8s9ZmU/PjRuRPgRLSriLCJ2j8xmGw+jg74dHEIvSAi2?=
 =?us-ascii?Q?j05It9AouIFaM3RWhM2sXoaC/bG7weBN5ZKJky3UU68LsXivJpeRNhPyHnu/?=
 =?us-ascii?Q?ENDyDKP/WJDdR/qk4SLu9M6yGcWA3GUjv9B2pIud1YrvD0Ay931DDLSeMlS7?=
 =?us-ascii?Q?j4UQS0CXFELaHQbnmOyq88XLVv1sZLbbJHZzIfIgqfMK9FOKEbwH7LJtjYUI?=
 =?us-ascii?Q?oHoXTRUJp2/gAUCEG5JXBb+Cdx/IWM8cz/dejfPsCSg1AoSb/Ozk2gU6TIaT?=
 =?us-ascii?Q?ZI1xYxyxb5vQ3Bl/G/boJvZdLPwhRi8FjktCQ63CywsRwtaeBLbndc6X7zwF?=
 =?us-ascii?Q?oXzQ7a8krdYoXuGh9d/Te90X1hT7Jz82OkKlPKPe1fI5je2AYtLp3ma7+AoW?=
 =?us-ascii?Q?jsBJUjnwSiueqB24JhIo1I2PrT6BB7pKDURQHENP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 11f47493-7fa0-4e1f-2c66-08db6deaa09b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 21:51:08.6798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P2wBS8xS668MJiKea43jCJx2NQbyEMO2NilxgCVt7tiFDJGGZgkFDbzPb2gx4EJ4KGo2ktWPTzAFo/PCW3ihojwHwL9IidCTzLO8ZhaChT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5610
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915/adls: s/ADLS/ALDERLAKE_S in
 platform and subplatform defines
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



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Thursday, June 15, 2023 2:54 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Subject: [PATCH 10/11] drm/i915/adls: s/ADLS/ALDERLAKE_S in platform and
> subplatform defines
>=20
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
>=20
> Driver refers to the platfrom Alderlake S as ADLS in places and ALDERLAKE=
_S in
			^^^ same typo again!

Anusha=20
> some. Making the consistent change to avoid confusion of the right naming
> convention for the platform.
>=20
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c               | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                     | 6 +++---
>  drivers/gpu/drm/i915/intel_step.c                   | 2 +-
>  4 files changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 3fd30e7f0062..f3090b8afc60 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -797,7 +797,7 @@ void intel_display_device_info_runtime_init(struct
> drm_i915_private *i915)
>  	enum pipe pipe;
>=20
>  	/* Wa_14011765242: adl-s A0,A1 */
> -	if (IS_ADLS_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
> +	if (IS_ALDERLAKE_S_DISPLAY_STEP(i915, STEP_A0, STEP_A2))
>  		for_each_pipe(i915, pipe)
>  			display_runtime->num_scalers[pipe] =3D 0;
>  	else if (DISPLAY_VER(i915) >=3D 11) {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 18250fb64bd8..eb28705b88bd 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -43,7 +43,7 @@ static void uc_expand_default_options(struct intel_uc *=
uc)
>  	}
>=20
>  	/* Intermediate platforms are HuC authentication only */
> -	if (IS_ALDERLAKE_S(i915) && !IS_ADLS_RPLS(i915)) {
> +	if (IS_ALDERLAKE_S(i915) && !IS_ALDERLAKE_S_RPLS(i915)) {
>  		i915->params.enable_guc =3D ENABLE_GUC_LOAD_HUC;
>  		return;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index d3ce6ed3be86..1dad0c9b4f30 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -585,7 +585,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> #define IS_DG2_G12(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12) -
> #define IS_ADLS_RPLS(i915) \
> +#define IS_ALDERLAKE_S_RPLS(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL)  #define IS_ALDERLAKE_P_N(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N) @@ -669,11 +669,11 @@ IS_SUBPLATFORM(const
> struct drm_i915_private *i915,  #define IS_ROCKETLAKE_DISPLAY_STEP(p, sin=
ce,
> until) \
>  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
>=20
> -#define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
> +#define IS_ALDERLAKE_S_DISPLAY_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_S(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>=20
> -#define IS_ADLS_GRAPHICS_STEP(__i915, since, until) \
> +#define IS_ALDERLAKE_GRAPHICS_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_S(__i915) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>=20
> diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index fe447063a064..f410aa2a8077 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -201,7 +201,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		revids =3D adlp_revids;
>  		size =3D ARRAY_SIZE(adlp_revids);
> -	} else if (IS_ADLS_RPLS(i915)) {
> +	} else if (IS_ALDERLAKE_S_RPLS(i915)) {
>  		revids =3D adls_rpls_revids;
>  		size =3D ARRAY_SIZE(adls_rpls_revids);
>  	} else if (IS_ALDERLAKE_S(i915)) {
> --
> 2.34.1

