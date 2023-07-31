Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E16769ABA
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:24:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F26C10E2B4;
	Mon, 31 Jul 2023 15:24:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2C4110E2B4
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690817094; x=1722353094;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o+m6Ur0fZXNA04Y4Q6quMC7YAgV/N3MBr1md6tj3yn4=;
 b=dGViSDtqhVwB294b53R74/eT5chY4xB8gGiBpqVnDCsyG3blS0D20EC1
 sBP+uxt1iR5ujt73eCCR0+JPAw+EXx/u8EIvEKXC1Z2WOz0afmBa1YIfN
 ff/vdBzlUjbOSAtlB+5LtxFhG4OBRV8n/cEfM2KalFapRdmdTSBCrXI6Q
 nOBBcTwAtHzYpi7sDEhnz1/50xXe5EXYYZ+j4b/b1ahuog4gbP5jVLl9O
 pSUtDY52S0++vL6Zui3pxWW5vxXT2UH2waSXwkgD6COocE2H/FUSZFXHz
 VyTRS2A98dOStxdY7uN5/i9Gx9HT5IFUc3j6wZKR7wo4U7b+DiceJ8CJp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="455421316"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="455421316"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:24:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="763416923"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="763416923"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 31 Jul 2023 08:24:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:24:53 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:24:53 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:24:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pxiy2YeXba+dY0GTpxHJ8v88CEPCJyDrSLKfb3Qb9EfaWPgLvNxF3RZOli5QjnuoFDVjedF2zq0tgwvlMoefR3LINKwiKw/lKbqcrLdAcHtoJGGKB2NewenQ8nIz4ot2SkODf37AHw3FZo5akuqlhB95C0deGJXrlJ77XRcRRBdNuxblEP6te49QzYfe088muBkUbk+TNLW8gSbliO71tZdoOMqmHW64ZSSKiPjQBy+CH9hTghE25WyH/HZu++/r/JQpLSj6wO+ANlk00RdvLeV+ZbYI3CEMNo8quyGZRnuRDb9QmamxS1TqEIeolJUSsRXlCJPuZJJQAPtBUKaRug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sp6hLScBOgGW/iNd8Ul/85+uGcG0mBwALTNb6dj9020=;
 b=llZxzsE70yYxGpuqB/ABQkZjwARttlOue8AORQCkQ9k+Wrs+D8cRFQmMvyTv7WzUdBajV5LJWyVkMeZwgy9VYjFz5afe/M8W098j6d9jXpYfWEDg+l87sZuDRkvRk3fYdjh9OnJ9rXY/gV/P45EbrxKo/60k69ma7elHhp+esZjTZpkRaf8tx7Qgr3K7ZKf3pOudAUwZPlrXAFY7UTlH6sylqtK4GMwR/qMYR1Jg1t/g2svzQ9cEkTuwY3yFK91bV5iNwEJxbNfzug9GmnyKUEWAoOwuE9g142raPZ6ht3KmjIXVLdC8QgtErRHoXJdznMPM6HST1nZf1sqlDl6BRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by DS7PR11MB6294.namprd11.prod.outlook.com (2603:10b6:8:96::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Mon, 31 Jul
 2023 15:24:52 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:24:52 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 07/14] drm/i915/rkl: s/RKL/ROCKETLAKE for
 platform/subplatform defines
Thread-Index: AQHZv/zc4mxDHpkvaEmP8+ks0616Lq/UBjcg
Date: Mon, 31 Jul 2023 15:24:51 +0000
Message-ID: <SJ2PR11MB7715FA49C4168F639D131A13F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-8-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-8-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|DS7PR11MB6294:EE_
x-ms-office365-filtering-correlation-id: ee832125-5cfe-4386-f473-08db91da4929
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cxo3KzLO2OvPEvaPwiCGtK64ZsJheAYtlwQ6wmsf9kasbz3eloXFWlgfioCenjNO47iACQacxLZG1VmxL3me345KZCKPdlOi+WaUzK0XJ1+XfUzDcH5Kh6IAGbqyEYFJQ4Pks4KcTReCuJ14Kqmt7znDiAMmXFOFwbnT3qYZv59ognTsM6sypV02974u+PVLDoMMbmSTUWaRk4vyNzjQOt/mtz9aCCTLRv3ca2wlPwYXkOs8Tgp1tCrjkJW/ztXFpKpjiJQ1WBZEMhpLJwMlNvU1rRlg3CLIv2PjMdQTmRQNIULt8aehPTKY6/G241XZT4K3AZ8GQo52HesjvGfLGsCj7aMAZeY4P9i87QX/CLImCYQhCBp7xCsdfyyKjZgl4jZXYVCjfof2g9yGEw93e+tO7MNme6WsEyxHU7gsEZFItk5/qWDrc5rreoGZlslzrfoumBOrcSydHLa4O7A09TjbcFPtX/RDACcZnhPyV+/ThTAqI3cSsEvY828y2HYUV+vbwcvFCvddWdzpq52Dog23ZwYk3n8Wm5c2o0Wj7fcYwvPVPdFqU/ePMQ6D6+W1O/TE9qnNN7/psQRXimAQ57BTqUEc08EhaF8RGC91K2p62AjwdqLYXRBcbDNFy3rG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(376002)(346002)(39860400002)(451199021)(2906002)(5660300002)(8676002)(8936002)(52536014)(316002)(66476007)(66446008)(66556008)(64756008)(41300700001)(4326008)(55016003)(66946007)(76116006)(33656002)(38070700005)(71200400001)(53546011)(26005)(122000001)(82960400001)(38100700002)(186003)(83380400001)(9686003)(7696005)(110136005)(6506007)(478600001)(54906003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d03j72NEz3PMdZdbUvFiucED/QYTNJYKmMmMLb6JWk0ibTQQRG7geAGVDTXW?=
 =?us-ascii?Q?eGxjRmw1cB5kQ5wcffK48DDlGlRsUtztamGzVumcEjk1cEBtr34vqiuHbWLq?=
 =?us-ascii?Q?nl9+sFNWOQKZy3tuwm6kprXsL/rNsOS68bYK7t3MUv6Plni3bklhmycSZESu?=
 =?us-ascii?Q?CXUavsWIH/hrgqTUhe7wcoyDhHS3CBBX0GaSdjtdqkVR/dyXk8pOGxIGTHqI?=
 =?us-ascii?Q?wVzP/nW8JW0rsSnW4tj2lVGu5sxaxL0IlTHcYg/OzZFhl9Ih1IAtHN8cWXpW?=
 =?us-ascii?Q?zCDPpPmt/ScE7wqR6jNSqcErBnwdrqbMiImy5dx69wkgiDRBV/5EC9E+2Sj9?=
 =?us-ascii?Q?4MFq6Wxd5KVxfzC6QACpLtW74Zs4+PjRK6lJ3OxIQ8EpUrlCK9NiN2lrkh4S?=
 =?us-ascii?Q?bG4vH3qEHfjlSHh308S5iynhW6y0bStALr2jOVBtBRaFzZeUSHMkAGaeIYpP?=
 =?us-ascii?Q?YqRE7VAQ2Yxk9IeslTg+2JoEIjG52inBPMxX1b379dq/EOBCI4/HhjNXlYQB?=
 =?us-ascii?Q?YBBIPFBajAfpLOnK0P9rlHjrk5y35CYedXS/6ylUYjxei2kYTV7Rq+ddy07E?=
 =?us-ascii?Q?13iam456MDETQ+LtF0uj/KOvLMEXCfre3a3xd2W/GGJgCGZ/PH2iEzl1p//w?=
 =?us-ascii?Q?tp1XzzL0PzXZwE6lvbdOtcdJ/aduyCEr5hOfTgANwCaGFJajLYsCrGcdwcxS?=
 =?us-ascii?Q?1IWzjXxnk22cx62D2AeCCkb0hpapg+hyH0U/ZT7HZ0sB8L2qNSpGiaVjjCou?=
 =?us-ascii?Q?Vt2elMNZP2UwOkoWSJSul7dx8Ziae5s8QEChDX0lZwEvDvoK0F7T5JhnHNnP?=
 =?us-ascii?Q?kErilHFEZn9NKUUPZhboxqnnl9cYOhxoYHh0bPKQ/AkPKPS7nQjKmh4IBRGI?=
 =?us-ascii?Q?6tdWKoVZGx2zfbPfFLjd2jdXW3fYJYCyIVpZS1QyGXkzKcB9THY7MB7kiGUM?=
 =?us-ascii?Q?L1V6Fm2ZQt4EJbqMO1u0Vr9hYijIwmjX4UNzMUFMdk7sZsTavo8FaMosIcRm?=
 =?us-ascii?Q?fS1BG+85FP2EOazCEIS5vXkFU+62akgDbdDWlWK6ApV5lsoWd+go4+df2bqt?=
 =?us-ascii?Q?JwuY8u20+Rh5eVU44BCBvzwuz+o+UDKbvMa4vLPgsYGen9sCRbWVn0CwbHoK?=
 =?us-ascii?Q?o/21lz6CYhM9LD122DpD/+XBHGT1WNMOO1p43/IeaHKBsljQ5dlGvQezLNnL?=
 =?us-ascii?Q?O7XNEFXNhM4qVPP04575Gv7ZsHlkCEOtIllZdF5gomM0ChtIhJ0tdYYguKi1?=
 =?us-ascii?Q?M2O7Ngvtg6J1oQ+604RbylSyh3EoI3jPz7doBguU0aCrbnfylxmpnNqNiA6w?=
 =?us-ascii?Q?W+gq8pna9F9SR52Ch4j2EarKeu/w6f9z5pk14KKHMz5zChM33cEZ7w+phC4H?=
 =?us-ascii?Q?poGDvfa1vbf1WSBQ9ImSzrRY3JYN6EPvCevoYV0JCzc0FTZE7JqzdZW+SJ1b?=
 =?us-ascii?Q?nD/iO3S+Y1BG1WfufqlIPSQF1F9z+3dGNoiXPKxTeVh1Q9QJ23afMb3zv729?=
 =?us-ascii?Q?0YbqnzaNg+2QWXoFmkx4oGTgKZ8XwrIUdlhqk6l07KkZBhB6qzJDnbq+lvEL?=
 =?us-ascii?Q?R50eOYWF52zt4GcqUirGZR/IFIbVE9sQU9/BgT9B?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee832125-5cfe-4386-f473-08db91da4929
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:24:51.9020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yMjSd3W4Cl2qecrJTYqW0Xwuel+25Kcc2EoK3vAA6uqROkZpyrqV0+oeQ9CZHG9DlpcJ25Z4SiTBdB0aNqVPCzEBcQjwTUdQhr1nmJc+biA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 07/14] drm/i915/rkl: s/RKL/ROCKETLAKE for
 platform/subplatform defines
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Sent: Wednesday, July 26, 2023 1:07 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ursulin, Tvrtko <tvrtko.ursulin@intel.com>; jani.nikula@linux.intel.c=
om;
> Srivatsa, Anusha <anusha.srivatsa@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Bhadane, Dnyaneshwar
> <dnyaneshwar.bhadane@intel.com>; Srivatsa, Anusha
> <anusha.srivatsa@intel.com>
> Subject: [PATCH v3 07/14] drm/i915/rkl: s/RKL/ROCKETLAKE for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace RKL with ROCKETLAKE.Replace
> IS_RKL_GRAPHICS_STEP with IS_ROCKETLAKE && IS_DISPLAY_STEP.
>=20
> v2:
> - s/RKL/rkl in the subject prefix(Anusha)
>=20
> v3:
> - Unrolled wrapper IS_RKL_DISPLAY_STEP.
> - Replace IS_PLATFORM && IS_DISPLAY_STEP (Jani/Tvrtko)
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h                    | 2 --
>  2 files changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 38225e5d311e..9e01054c2430 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1609,7 +1609,7 @@ static void tgl_bw_buddy_init(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	if (IS_ALDERLAKE_S(dev_priv) ||
> -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +	    (IS_ROCKETLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0,
> +STEP_B0)))
>  		/* Wa_1409767108 */
>  		table =3D wa_1409767108_buddy_page_masks;
>  	else
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index e6f77498d46c..f46846574420 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -660,8 +660,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_TIGERLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>=20
> -#define IS_RKL_DISPLAY_STEP(p, since, until) \
> -	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
>=20
>  #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_S(__i915) && \
> --
> 2.34.1

