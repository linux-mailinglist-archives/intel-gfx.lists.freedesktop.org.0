Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F55784E8D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 04:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE4210E0E2;
	Wed, 23 Aug 2023 02:12:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F33E10E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 02:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692756750; x=1724292750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=OyEyfOq/14cT8uUUeWMDS9h85ByJrFJq+PuZSPROHa0=;
 b=cStWXz9JlVlPfKsCbeK9yTyrcHmUFOQ1qGURr6TJLa8bGk5Ag1dAdLke
 w8ye9pF0zeP50l4uL1mG1wNSuI4pYT4Ay0Fm3tl36LMf3bugAaJOpQoed
 HHNJ0bqp1bqGz9mmGGK7CjglTC7tgKKGrxuRLeeEOp0lYF3qguQglWTf8
 VXId956jVzIRoCBOrAn2mSBkRW/O3JGPmGjMsIv9fAAGKSNdhpJlt6nOu
 rjCdgccZIeDX9M63INpFjeHMpkamSzu34ISLQcmIOejCkq2Zul95jxetZ
 f6FlAoa1V6rihF+yjXIGgNDH+L7GwA557BtrQn8Uf8uAuQy8+qaLB/BVf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="353599007"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="353599007"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 19:12:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="736462210"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="736462210"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 22 Aug 2023 19:12:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 19:12:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 19:12:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 19:12:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DQj5tbnlK92/BfUrTkofyKx4NygKbD184f/fnlW8YbL7C+23gY5xWCT6g7KLDF+mxWPHlvoLr/RMcflug2yJ1aIIxfgh9odghR7psREVVzEdBJPuNurrrppV2sydUS3Vgf1TuMxyB03PWIBHtW9P6X2ELdRfyDwOn28qArHHfA9DXbmAo3mbaxFlb8cZaQxeYjQ8+vivf92FRumBedddgjgJ5A6R641xVf5AeSwtRvdhGwo2QUMK4Zx/OOpOtquyIpgjB3eM0bBWlkVfnYBfay71m+eLRRoPLl5oMiJkgs8ieVshkZfWg827Kv81gs04vmRrOnSynGWm0aM/LoTP9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qPLbRlCuh3EcvfdeymgyG4gd80nVIgaO6q2iIugpWs=;
 b=f3tYX3+f22KmHW5KmCVkTSQusxSEa50dgzv7IV+SgCk0nrYxtbznPeObn6fNLJJKf4M+nH34Se6ybDZLAgciEftx1Vm+fGDRoh6Tbu0/F92CscD1m9VfwkJAWEcl85/ZzDXjdDjKR49gkIMN4KrTXfAVdbbfisrDn1wF7dNBy2y+5CW3GN3t41CSxgxmV89aTPUi9CXmPcMX68yLp+M1VHaaL9ok4Pe+XwixZgjDuZsigejVl5FxCQxrm9ROEI9WuNG+8hnxwV7tivsecjrTfH1M1848yGuwfg0T3jTF3mGfv5WBX3RxF26UYhvW1cWl+jUhX/3A6YD+YdafMWGdow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by DS7PR11MB6013.namprd11.prod.outlook.com (2603:10b6:8:70::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 02:12:25 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94a8:a58f:4cdc:f2a1]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94a8:a58f:4cdc:f2a1%7]) with mapi id 15.20.6699.022; Wed, 23 Aug 2023
 02:12:25 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test
 pattern names
Thread-Index: AQHZmpYr7l8RO1fBpEulB+c4aqkULK/3mVCA
Date: Wed, 23 Aug 2023 02:12:24 +0000
Message-ID: <532cb361ef71c8f9df360ea83b3899c347a0fe68.camel@intel.com>
References: <20230609054917.3920819-1-khaled.almahallawy@intel.com>
In-Reply-To: <20230609054917.3920819-1-khaled.almahallawy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|DS7PR11MB6013:EE_
x-ms-office365-filtering-correlation-id: 825aeba6-1650-49db-f05d-08dba37e6489
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Qq0p1C90hI5zwUImMMmobuq9IwEQUtwtltTQABaCp4BtS5SZy3ArXieTKlSg1h2+MqjQxVX7Iq8SZgrEw8AjlY4BzMRhaYbFAp7CjU99R+k0zxoMTTICTwpUIc6DIjlUXfv7GFcYvkB4QscYKXMtflxoWww77Pe7xto9NMcigQ86MoGyjzCvITW2N4vVL+z/oWvFZNgrTs2m0kGhYDu+UKCvY7wUf4rQUgo8VUzVZ59iRdtlno7xyvMIW1x89GksRP/iyQLLpwdpCzj9aHMmUyeeYOTvkwUltC2vA5p5294d+la0qVSG36/EJc4d/lznJ6gMTxPuio5ZOyXJYr2KNLbMYRHVsnA3yIP4wV9xuPKBlcumTYZdAnaEjGLky7kTcAIRsFpcxG8d8OwcuSYlMG+ycvOxbMYsqrm8q4DLwcO/nqqdlKei1m2Cy6bdS9c+agfYLP1okJVd9hllmEZQefYxcTF1T3JgtGPQr/isTAnQ99dCDH5sm/rszzMpa+g39a235IFGfYDx7xCn18EN3FoHr1yRARrXQf5FQYPq1jvUscGd6IfpWgBfnywpiT26kX2l/uOaZuS/Sc9FgbEYiAWInsE0NhddTPjzsTcoZJtZ36Yfn+20VYBDFFY78xy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(366004)(136003)(396003)(376002)(451199024)(1800799009)(186009)(2906002)(38070700005)(38100700002)(6506007)(6486002)(83380400001)(5660300002)(86362001)(8676002)(2616005)(107886003)(8936002)(4326008)(316002)(64756008)(6512007)(66946007)(6916009)(76116006)(54906003)(66446008)(66556008)(66476007)(66899024)(82960400001)(478600001)(122000001)(71200400001)(36756003)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?2NmtRKSNSu6GGOCvAQHWEQCsYdhcgFa60q+g9Nn5C+7SZvqhYKInT7efC?=
 =?iso-8859-15?Q?7HBmw+7E6NqBXp05Vk74x/fQ8Lg/xwkw4u1iZ0RXx5a0ze7nLgsvgZ1ag?=
 =?iso-8859-15?Q?gWW4cdDSS4WAxlaGjEsuo6wZv0HOMH2QHT5qg2Nv99PZpJXWDjkf/OPYd?=
 =?iso-8859-15?Q?+UBnsg1Qq6KJ7Ki4bxU7mMP0Q09lXPdzopgh5Q8r7MX8i/rNnPqGBHeJO?=
 =?iso-8859-15?Q?8hUtJfVTOH1mO/rgDzfhSgCPipN97dmjj3fgrxioo/CD9fy+eT4IUr0IA?=
 =?iso-8859-15?Q?bJCcLL6x4TJL8DUXehsc+jOOiOEurofmnH70NNP11Zbe9cVw/KkqPoxyg?=
 =?iso-8859-15?Q?SodZpyPU7vZfWPDwyEpIYRglcFXkHYKZaRDr2jbebUAoLFIy8AqUm7WCh?=
 =?iso-8859-15?Q?awqVmZpCo4ncTKCSrHjDznjHMqLuEqLMg1Tg0K20COxL8DNVu2op9Q8e1?=
 =?iso-8859-15?Q?T0ULsTkurZJKXDIQ4IxCwT9mnpGK0WFl8qyleg/i0x05YuSpwa8mDKNkw?=
 =?iso-8859-15?Q?NcR3OzMZ/dfBUZPWlUJLV5TCzkPjBtSt0saV2nEaqZAuk6a/f4yEktIdU?=
 =?iso-8859-15?Q?UDcrp65tKmPhvQwLtX99Ro5Z6gbAhDQg2V0q8PDeeAnTWg9l1ez4NsWJv?=
 =?iso-8859-15?Q?6UbIxE2Dd21zQNXUOHdxNG2DUmPBuuJhLGW89r7azzinEraWP0Q8WjNwN?=
 =?iso-8859-15?Q?XTEqeLBzUf4dr+L7MIiEO7EDjy/+YZBO33wdIlv1PiVtgY5ozcuvHWNEw?=
 =?iso-8859-15?Q?oOG7GGETkRTAuwgNeR1anNZcywjwy8AHC7rNnFEp+npHIGN1go/3fJ9KP?=
 =?iso-8859-15?Q?Xms5J47HWDy7F9npzA/dvUi/xSyd9sKWz3CWxDT1qLgcQmPFpQylPkyPC?=
 =?iso-8859-15?Q?EpPLhTtn4vRQQ3xNk+YskzHTXStBqM2oDdWjgbyZnlzC/qNSYSq7WgKGj?=
 =?iso-8859-15?Q?Az0hLZuxJvjm6TccFH17KCVJegnEQZ6fTxvsuuEqy2+HKD4ZtMMiqCIW+?=
 =?iso-8859-15?Q?gxkC0F+T43XWEm+GsVuGaL8WUjLejGRodoXlNsLi74Ce1wSOkvewEej/b?=
 =?iso-8859-15?Q?fu5PeE8hBpiqfLl5js6jpUJvnNSqqQ/FBIdoM/jiIwPyeGB24vuxvIzLy?=
 =?iso-8859-15?Q?u0uXe5NWqoKo5Sd4EEFN6L8jQzb6JxfhOEkRdBgCuiU4AsjORvzhv0u9+?=
 =?iso-8859-15?Q?5u3pYHNjFwT7wA4+tqQjw83npMlPHZrY1yPHlIgKItLiWvck/+giRf8+S?=
 =?iso-8859-15?Q?mmnGZOnFOVJsqCIrF4MSoIllyoqT7fwb+Xe3DDzp2A/FUncZG2UF/fgV8?=
 =?iso-8859-15?Q?r8wdFaxqb4l9bNvWoUsDMm/v9ijiYiOUBW+ebrL6BN/JrQE6KNYS3NsLx?=
 =?iso-8859-15?Q?WiHxpcRaRFOV5+HWH8lS66M6L1/Tqrjwl2ic3rsRtxp2Fw4VDquB48rvJ?=
 =?iso-8859-15?Q?aLx/t7Da9MTkxpk85tMlPLdBmdHaIzU++IAFTPfCfMfHwaOx+kp4CAkFj?=
 =?iso-8859-15?Q?qZco4U0EupYPn4a41+v9HuWZX4XCoHNbtO+YKlxlniWQc/TihQ3iOB6xC?=
 =?iso-8859-15?Q?qmesAOWLmeA701Earbes4htEbRoDVPBmaSpfI/np5AOqs69ygEeJWAu4j?=
 =?iso-8859-15?Q?z62Jh4Cq0HU3SqnNeoYZ53x+Px92vqXw/ulxCPQRFK//g2DSdkclyqxO3?=
 =?iso-8859-15?Q?xA/Yasg2t3TPGXVr+AQPBC6z5PdXH8/OrMhMd2xVX2eLTlIU4tvi4mWzt?=
 =?iso-8859-15?Q?54FULYLt7Ozs0pK5n40lF6oxDMaRLVXjQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <480A96D86DF9534D849A5533E761A4EC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 825aeba6-1650-49db-f05d-08dba37e6489
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2023 02:12:25.0860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QzpxQ0VA5jBbxkyGPjy9HZe8hbWb8p5w5j/BzKq0nknY3JnqDkOl/tzARGx1sRa4A0Ydk0cfnBnIj4q5SS863X1p9CSP/Rdly527gpuQlds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6013
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Use LINK_QUAL_PATTERN_*
 Phy test pattern names
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre and Jani,

Could you please review this series in order to add DP2.1 reg defn.=20

Thank You
Khaled

On Thu, 2023-06-08 at 22:49 -0700, Almahallawy, Khaled wrote:
> Starting from DP2.0 specs, DPCD 248h is renamed
> LINK_QUAL_PATTERN_SELECT and it has the same values of registers
> DPCD 10Bh-10Eh.
> Use the PHY pattern names defined for DPCD 10Bh-10Eh in order to add
> CP2520 Pattern 3 (TPS4) phy pattern support in the next
> patch of this series and DP2.1 PHY patterns for future series.
>=20
> CC: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0cc57681dc4d..08b607288a6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3882,27 +3882,27 @@ static void
> intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
>  	u32 pattern_val;
> =20
>  	switch (data->phy_pattern) {
> -	case DP_PHY_TEST_PATTERN_NONE:
> +	case DP_LINK_QUAL_PATTERN_DISABLE:
>  		drm_dbg_kms(&dev_priv->drm, "Disable Phy Test
> Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe), 0x0);
>  		break;
> -	case DP_PHY_TEST_PATTERN_D10_2:
> +	case DP_LINK_QUAL_PATTERN_D10_2:
>  		drm_dbg_kms(&dev_priv->drm, "Set D10.2 Phy Test
> Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
>  			       DDI_DP_COMP_CTL_ENABLE |
> DDI_DP_COMP_CTL_D10_2);
>  		break;
> -	case DP_PHY_TEST_PATTERN_ERROR_COUNT:
> +	case DP_LINK_QUAL_PATTERN_ERROR_RATE:
>  		drm_dbg_kms(&dev_priv->drm, "Set Error Count Phy Test
> Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
>  			       DDI_DP_COMP_CTL_ENABLE |
>  			       DDI_DP_COMP_CTL_SCRAMBLED_0);
>  		break;
> -	case DP_PHY_TEST_PATTERN_PRBS7:
> +	case DP_LINK_QUAL_PATTERN_PRBS7:
>  		drm_dbg_kms(&dev_priv->drm, "Set PRBS7 Phy Test
> Pattern\n");
>  		intel_de_write(dev_priv, DDI_DP_COMP_CTL(pipe),
>  			       DDI_DP_COMP_CTL_ENABLE |
> DDI_DP_COMP_CTL_PRBS7);
>  		break;
> -	case DP_PHY_TEST_PATTERN_80BIT_CUSTOM:
> +	case DP_LINK_QUAL_PATTERN_80BIT_CUSTOM:
>  		/*
>  		 * FIXME: Ideally pattern should come from DPCD 0x250.
> As
>  		 * current firmware of DPR-100 could not set it, so
> hardcoding
> @@ -3920,7 +3920,7 @@ static void intel_dp_phy_pattern_update(struct
> intel_dp *intel_dp,
>  			       DDI_DP_COMP_CTL_ENABLE |
>  			       DDI_DP_COMP_CTL_CUSTOM80);
>  		break;
> -	case DP_PHY_TEST_PATTERN_CP2520:
> +	case DP_LINK_QUAL_PATTERN_CP2520_PAT_1:
>  		/*
>  		 * FIXME: Ideally pattern should come from DPCD 0x24A.
> As
>  		 * current firmware of DPR-100 could not set it, so
> hardcoding
