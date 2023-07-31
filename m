Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC953769A53
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F27C510E2AF;
	Mon, 31 Jul 2023 15:06:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 313A310E2AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690815996; x=1722351996;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Dzsmt5Vx0Vxkk+ikv9mSbMwej/C/RfcSwdGZCoN/yi0=;
 b=R0IyUZrZPhAkWoGoTrIdpKFB68gj5RBu9OQKRkBN7h90tUAYb8F5DT9w
 fxmw1J5tMLxcuO62dJgpZIF48mhB2UcMK7cayDJ7eOorvPEAOqEXDIEQz
 aw9OgTFuqO6VsJkOVbVARoRoUKtexW3HN2lwq9mqzf/QEXZq9FdX1XCGj
 sqn6vR1hqK5jb1eYgtqzAobvNkWpRZqzCVwg7VB5MCZ/cPV29KVSbg4xB
 4OeyI/m4aaBB5626WCXpP/CuraxzLz48e++5beD9yupLlxX6jw9Hy/lea
 tFLLJaBjTM2gTFBzBYe2aWvjq+TXJm2sKYBLpKRK1zlzvdjaqFHkURfyb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="432859189"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="432859189"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:06:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="852093326"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="852093326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 31 Jul 2023 08:06:16 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:06:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:06:16 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:06:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OWlQPaNu8aoEi9kT6OnM7XCLDeJzskCbltVLuxdLXH71EBGAzOdS0BHpPTFezJob6wiWUPGqvm/SqES5mwU7apMmCPZnbhFRB4z8pR1JiCFFXeMVL3oarAGmN1crrkLGReoxIEjcFW6gC6KQPr+cwJO4kcSg3R8JXGisvhsiiltvsj6T8dFriLUzCySXCoj28YR73DAU/9DNk/1oP85G64k32YWoPkKTKtk1kPNd0/x0TfcwtSNjPTPewYwPivn/whd/oVSDg3mDntqPbgN6VEknCpx4/846IEctTxLw3BHAElfKwl+PcYt6lD/pTqtc1RiA27AkqFASMkEwlOfizQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wLJ9pzhLsWvoAdflTmdvIXnAGx7C3uoBlT+uwDUO54=;
 b=Q0KI2utW7EI4qjzKIUF3nbxBSFT7XLQ/6xSCP1q2G1OeBtsQ9WRyXGoZ647P11KkeV7w33qHcEts+66AM2f3snse1eSoOXZ7kjJVVAR0g2mVO+ENjMjnswNAtLpNfeNO1focUHbnpffwkFKA+SAVWHbX4UPkXbozB0jB6XM+qVC09eAdFy12W5Ca9Gu9Wki7Md2SGPq1NRlVoeqQlqZbhkkmoa8ZS5I3kSzFFIpV4/SIo3908UCAQkRjXhcxxlsrQlI1xcVjPSOpMmgITkHBdiLGog0SfYUy6NGdmk4fccuwSXTjUIdkgNhl/xkzL816tFZeRbjqqhyV9Zgsg14JfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by BN0PR11MB5693.namprd11.prod.outlook.com (2603:10b6:408:164::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 15:06:08 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:06:08 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v1 02/14] drm/i915/bdw: s/BDW/BROADWELL for
 platform/subplatform defines
Thread-Index: AQHZv/zZ9VoZziaFVUm8bFgSYxDH+a/UAPJQ
Date: Mon, 31 Jul 2023 15:06:08 +0000
Message-ID: <SJ2PR11MB7715BC8F50FB4B8592CFA84FF805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <20230726200657.2773903-3-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726200657.2773903-3-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|BN0PR11MB5693:EE_
x-ms-office365-filtering-correlation-id: eaaafcf0-3f51-4b9f-94b8-08db91d7ab64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OW7r0FMScmJ6suDnqnwklVpp3T5CjvMxCmxnfE+wH+HBq53GvymPiXgfTAfdOV8LlNMGnqS0hSC0wXHB+Fh8dDMbAD5XMpGVUP/0XRA9PNFtQ3FJwFlpjB7n7N97T149ZZh8hZxZbY20Bz3EK39AJegD64ceU+L6hW3imq49q1BSABqxcergnHj45N7ACiXI2M1iVUFP9opOg9yoA8ogH+AbpLrAryxtk83IOi29zohdolocBidIyl44PWVZ+nJGK4RRqrbhwPmR4NLnrN821gAqP10+bdLoCwfqX8Prw1Z68tRK8neQavm+D1FjLgj1PG7zmU+uB8RT0JRRL5v7T++gF8/HGOMRU/A7FVwo1pV5sBTT1qgWn1oUBJE8ETIFNYpHecx4PJ/52y6usQYw4p9G2sfAqYvPRsWyMCMYIoCZyfrRCaGnpQbr7BTxpgsGP2hxGxEpJt9I54eLnDAjoFP51t+BW4noUBXj1/ScKTVgF0a6dqOhCMvDayaL9ugxrlDJ8brByVYYYG+uC7CwL+OKqhf/VUuhp4H/KKZ6PiHwxgx3IqVclctyLz0g/ukQOuxOfRxiBiloGzf1MUk1WPVbDXLfql3Pbnsf3ozkzIZavvSmp9i7XvuSeUdd1LzL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(366004)(376002)(396003)(346002)(451199021)(9686003)(7696005)(55016003)(53546011)(26005)(6506007)(83380400001)(186003)(33656002)(76116006)(66946007)(66556008)(52536014)(41300700001)(122000001)(54906003)(82960400001)(110136005)(38070700005)(86362001)(66476007)(316002)(4326008)(5660300002)(64756008)(66446008)(8676002)(8936002)(38100700002)(2906002)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4j6OUN6eooZA+MSmAwGrt7Shi8cXK6/vvO644xeDXHqGBGFd3lfg6vmTmLJk?=
 =?us-ascii?Q?doVeuBWR1ypYjHauQMPip6YvmO9kYr6RYsn4IMas5Giz3J2zeBKONMe/28iO?=
 =?us-ascii?Q?xwiOVZEcD9QsiidLVUv8QXozH/rou2QzqITyLMnV+DkRQVojHGZxpBCh8/Xv?=
 =?us-ascii?Q?fYrZXRg7ZrS5s7ff0GBZGkXFGk9tPSLm4pkWfTDulvFiq8IPLH4HOHmSC4rL?=
 =?us-ascii?Q?rfZhP11uKcUtncZ625q+cfJecYn30ZuJdblwZUtTrYNhfJFkk9+FZPyfzK6T?=
 =?us-ascii?Q?h0ZIrnce83cB+V1Xlo2giCl04wmDosUeVHk8SqXMXmw2XXUy8MKlnjSLZXmn?=
 =?us-ascii?Q?czSckl3xdTRI82Lo4Okiawnkgg4qcmJnIJHMKIy0dS3uFDtjt1VCiEyXuMUl?=
 =?us-ascii?Q?87SSPVBaJvqClRoWSc6woGZPJXDHd1bZdXqhd0h2excviizftlOq08AaSTgE?=
 =?us-ascii?Q?ml13hUATCoitNcXF++jEXNmSYkV6zFh9N5ld5wXaNzJr4YuWbGCEVbYJ/QS3?=
 =?us-ascii?Q?DRkcjxeyhUDwvs1YQxtHqCTiM0fy4g2brn3Oq+I68qo/L0WATPx9JsNWezcw?=
 =?us-ascii?Q?tzH6BWeJlE+BuB0amIFtcIJB9ySAGp48+AWSY6x7v6/cRCpMmcoImyXNI9Oh?=
 =?us-ascii?Q?WnFUnXonzD2WWspGv6RN55BWE9xPEUp9Blj67yVVRA+HIsQ2f8+TUWviZ3OW?=
 =?us-ascii?Q?fhJDUfXc7mymCNXb4MR340PfQTGFtBm8V2Mx/q5tvFs1PK7wcUjgktT3z7pd?=
 =?us-ascii?Q?ImCqvddNaLOaU6gJ3AqmC3Hg9frLgLrGddlfjPuoBCUrrZP/HnSmLb8qZgzc?=
 =?us-ascii?Q?tl/3O4h2qGoUTSwVTmoqQpHW3QKb3ODuYQmqtrX49IorVHnr2N4qVOLbfyKY?=
 =?us-ascii?Q?Cq1akJ1r88FBD9885RHLSxKoBjF2ltwYWKPeiO/5jp2+zbUeZvnDHamwjPpS?=
 =?us-ascii?Q?TN2WXVt49hD4ABH/ZfR+wrWLxDL0WKAJrkZOHFdYCARDnZG36OjB/wRhPKLK?=
 =?us-ascii?Q?cHJg69P+/SYcs+SLCoUvztWb36mGQEmlQuUHEg1PcCxUomfbll145vZAN2YS?=
 =?us-ascii?Q?aLa3bL7OEI2/5biDG/9J8h33yBku5ijxvkeiT+cW10gPLmafqTH0NLIINSjr?=
 =?us-ascii?Q?7C45iToFqlnfiMBceWfXX/AoVJEUX2Lms1jGdYcEPjpbxPKs/xmsFUaGqyDB?=
 =?us-ascii?Q?djURW2LNccGDGwKWv5u9z20JQGOj/8XnK2moyiIgt6/APVWAbBuu+RFzvGyZ?=
 =?us-ascii?Q?OMYVpA8CdKm5YRTSjI/tekt6Krb880VZpXaALXoymOuu034xDi6qgafSHAsg?=
 =?us-ascii?Q?s4byzwBpPzwDtiPoAIXktJBjtGU9dWqbxcW76uoX4ibxH+m2fQTY+SZG9CU5?=
 =?us-ascii?Q?o8ybGfoS46PkM3soPVAs8W+h6iU5VLCHv/sms+YiUPkpO4PgNh+aKnNOR1mu?=
 =?us-ascii?Q?SCXSKG8Foa9pF9Qj8aY6N+gZNwWpwBJtlqHQFHPzxPrWxyrQU09zAYq9oEkd?=
 =?us-ascii?Q?9WYBMRQhaCbI0DqT2jF/eQ5Uuq2AV9c8xjsiRiLK8uFN/pINhgKl/kJe89M6?=
 =?us-ascii?Q?OG4T1I/6F+6zwxBC0uz80InesRELs1ftVKjTSpOr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaaafcf0-3f51-4b9f-94b8-08db91d7ab64
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:06:08.2547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o7nW66v6yKOz6aEGDTVNiVPoI8Wn+k+4yys+3IqlQqOoFO5q2nYpIITdhQpMgrzl4yJeKiOT6qBrg+fDqK8DaxHzZmNKObMoepr4AXBpV/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5693
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 02/14] drm/i915/bdw: s/BDW/BROADWELL for
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
> <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v1 02/14] drm/i915/bdw: s/BDW/BROADWELL for
> platform/subplatform defines
>=20
> Follow consistent naming convention. Replace BDW with BROADWELL.
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Thanks for the effort,
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> drivers/gpu/drm/i915/gt/intel_workarounds.c  |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h              |  6 +++---
>  drivers/gpu/drm/i915/soc/intel_pch.c         | 10 +++++-----
>  5 files changed, 12 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f18e1f8ef22e..f683802ce931 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3200,9 +3200,9 @@ void intel_update_max_cdclk(struct drm_i915_private
> *dev_priv)
>  		 */
>  		if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
>  			dev_priv->display.cdclk.max_cdclk_freq =3D 450000;
> -		else if (IS_BDW_ULX(dev_priv))
> +		else if (IS_BROADWELL_ULX(dev_priv))
>  			dev_priv->display.cdclk.max_cdclk_freq =3D 450000;
> -		else if (IS_BDW_ULT(dev_priv))
> +		else if (IS_BROADWELL_ULT(dev_priv))
>  			dev_priv->display.cdclk.max_cdclk_freq =3D 540000;
>  		else
>  			dev_priv->display.cdclk.max_cdclk_freq =3D 675000; diff -
> -git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 6352c530bd7b..e401bcb234c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7377,7 +7377,7 @@ static bool intel_ddi_crt_present(struct
> drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >=3D 9)
>  		return false;
>=20
> -	if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
> +	if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
>  		return false;
>=20
>  	if (HAS_PCH_LPT_H(dev_priv) &&
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 589d009032fc..9634ab8d738b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -420,7 +420,7 @@ static void bdw_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>  		     /* WaForceContextSaveRestoreNonCoherent:bdw */
>  		     HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
>  		     /* WaDisableFenceDestinationToSLM:bdw (pre-prod) */
> -		     (IS_BDW_GT3(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
> +		     (IS_BROADWELL_GT3(i915) ?
> HDC_FENCE_DEST_SLM_DISABLE : 0));
>  }
>=20
>  static void chv_ctx_workarounds_init(struct intel_engine_cs *engine, dif=
f --git
> a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h index
> 1003154ec71e..6607f233461a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -594,11 +594,11 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_RPLU)  #define IS_HASWELL_EARLY_SDV(i915)
> (IS_HASWELL(i915) && \
>  				    (INTEL_DEVID(i915) & 0xFF00) =3D=3D 0x0C00) -
> #define IS_BDW_ULT(i915) \
> +#define IS_BROADWELL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL,
> INTEL_SUBPLATFORM_ULT) -#define IS_BDW_ULX(i915) \
> +#define IS_BROADWELL_ULX(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_BROADWELL,
> INTEL_SUBPLATFORM_ULX)
> -#define IS_BDW_GT3(i915)	(IS_BROADWELL(i915) && \
> +#define IS_BROADWELL_GT3(i915)	(IS_BROADWELL(i915) && \
>  				 INTEL_INFO(i915)->gt =3D=3D 3)
>  #define IS_HASWELL_ULT(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
> b/drivers/gpu/drm/i915/soc/intel_pch.c
> index bf829f85be7e..382a4a8015b4 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -32,21 +32,21 @@ intel_pch_type(const struct drm_i915_private
> *dev_priv, unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    IS_HASWELL_ULT(dev_priv) ||
> IS_BDW_ULT(dev_priv));
> +			    IS_HASWELL_ULT(dev_priv) ||
> IS_BROADWELL_ULT(dev_priv));
>  		return PCH_LPT;
>  	case INTEL_PCH_LPT_LP_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found LynxPoint LP PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BDW_ULT(dev_priv));
> +			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BROADWELL_ULT(dev_priv));
>  		return PCH_LPT;
>  	case INTEL_PCH_WPT_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found WildcatPoint PCH\n");
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    IS_HASWELL_ULT(dev_priv) ||
> IS_BDW_ULT(dev_priv));
> +			    IS_HASWELL_ULT(dev_priv) ||
> IS_BROADWELL_ULT(dev_priv));
>  		/* WPT is LPT compatible */
>  		return PCH_LPT;
>  	case INTEL_PCH_WPT_LP_DEVICE_ID_TYPE:
> @@ -54,7 +54,7 @@ intel_pch_type(const struct drm_i915_private *dev_priv,
> unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm,
>  			    !IS_HASWELL(dev_priv) &&
> !IS_BROADWELL(dev_priv));
>  		drm_WARN_ON(&dev_priv->drm,
> -			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BDW_ULT(dev_priv));
> +			    !IS_HASWELL_ULT(dev_priv) &&
> !IS_BROADWELL_ULT(dev_priv));
>  		/* WPT is LPT compatible */
>  		return PCH_LPT;
>  	case INTEL_PCH_SPT_DEVICE_ID_TYPE:
> @@ -186,7 +186,7 @@ intel_virt_detect_pch(const struct drm_i915_private
> *dev_priv,
>  		id =3D INTEL_PCH_CNP_DEVICE_ID_TYPE;
>  	else if (IS_KABYLAKE(dev_priv) || IS_SKYLAKE(dev_priv))
>  		id =3D INTEL_PCH_SPT_DEVICE_ID_TYPE;
> -	else if (IS_HASWELL_ULT(dev_priv) || IS_BDW_ULT(dev_priv))
> +	else if (IS_HASWELL_ULT(dev_priv) || IS_BROADWELL_ULT(dev_priv))
>  		id =3D INTEL_PCH_LPT_LP_DEVICE_ID_TYPE;
>  	else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>  		id =3D INTEL_PCH_LPT_DEVICE_ID_TYPE;
> --
> 2.34.1

