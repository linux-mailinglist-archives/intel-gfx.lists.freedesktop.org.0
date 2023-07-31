Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF850769AAF
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 17:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3302C10E18B;
	Mon, 31 Jul 2023 15:20:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA4010E18B
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 15:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690816843; x=1722352843;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ya7ZLWEeHb8IHOWlE+rNsOBY6LIOTTH42R6x1twPK04=;
 b=ELucHSeVSW0A1io2hRcJwH4lNGx/VpE/tCU5PudvL+iLvg/GCdyjYStU
 1MdlbiN3vcZfOCgtcYY0GGMwQuP4IZcTZrzc4kOLo2sTE0o0C8rHDZKqH
 6GPHaasVyxczs1yqprm81lsDE4JYf/K0XgbOFzMx/p0AiZCTqyDUQATMB
 9YPmFvcVa84NMgIh/qBfrFMHbQLfg+oQA7bTE/3zFfXzU/AgfFymbVpJz
 LdIlcAwlnC6UxGMU7jc0TpkC94L36rv0m7zbwXbE++eFFF/mwc5w7ZpOd
 f/PNEEe/+5Q79Ipw98ze7crk32Wybew7nfwKVqrTpaMsbN7Ve2mzeuCUP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="455420091"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="455420091"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 08:20:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="763416087"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="763416087"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 31 Jul 2023 08:20:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 08:20:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 08:20:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 08:20:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MU+TBTyl2ii6V2D4eOA1sJmkKDr5oQeni/bZLH7FuZhrnGPBro96UQxWlXNOrmuOgpJ3DY6baHoWx5g6bFVGALfUDkQudqc+A7lS1yjYUwS0adI/7XyVKmHiCs/BjP9LPQbImrEHd6YYHL7F7Z///JQOndiT9PGgcMaVsjpnghBMgab32Mv1g/TzBzvyjsbzSZ8bF+5CAnJx5OY8twwPqw9f0MBRhWZJKId+tqe1IApa4XE1bTuvffmmt+wL5jVbV0kPWHndivbdIyvt+DR3E7KFY7a9msY0CPxm2wYJgeVVuwWptQi0lSiAM2sJicogqT68d2svqEsdVPEPDXfVSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGDn4A7t8swzonqUJTWJD2jIjnxkM0W1RphagTK0IaQ=;
 b=S3IfoJpRbNg+3Yy5Zb9NQsah6qbuhYvtE/KQpwOGnL0XAjyhTBMHRZuLkZT/ygE6AZk8e/Vk/lFeGwQvzw8mM1QL6KvB10xuCWkqcoPpxgRwDz99LQVBMz/Fe/RIIflgSWaTGO5awa9xD0Ocl/A1hFGJ11GZg6y/x5+un7/BcbEuaNP8j+1AuD6qnsHi+nGi5RLSGzGcJYOD23GgMvJyCURzGvkmPkOJ3ji31QzwlnNyKynQGbpCQosLjUyqq8QfoIKCYss1UdoCJFbx8CTctgKWTD4m3mU2bmLdJ4h+drFLFNvwYtn94oq0H5F5C6dHLV/DlkW9PdM7aNwLasg+XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by PH8PR11MB7000.namprd11.prod.outlook.com (2603:10b6:510:220::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Mon, 31 Jul
 2023 15:20:38 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::ec0a:6c6e:1cd3:d622%7]) with mapi id 15.20.6631.026; Mon, 31 Jul 2023
 15:20:38 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 07/14] drm/i915/rkl: s/RKL/ROCKETLAKE for
 platform/subplatform defines
Thread-Index: AQHZv/glpHq9YIQ9TUazQg3DPueNIK/UBOdA
Date: Mon, 31 Jul 2023 15:20:38 +0000
Message-ID: <SJ2PR11MB7715D6097034DA39B67551F9F805A@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230726193333.2759197-1-dnyaneshwar.bhadane@intel.com>
 <20230726193333.2759197-8-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20230726193333.2759197-8-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|PH8PR11MB7000:EE_
x-ms-office365-filtering-correlation-id: 7c4de6ba-1c69-4b2e-3de3-08db91d9b211
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7jKklCFH09YzoW83Gto0cPbsoZYHp+t8s4DiTMYQZ4Suz2qqSQ/TgLWqQpPFBm8zDh8kYBGv92+zmb0QmD+sP9h0t6jBU6RxHtldSBFh6ofzY90Z1AcaJt9DsJtUrokjS0+lco0JC590m7piGTOJ/Wjx1O9aAx68RHacEk8ykVWibqd8EuSDpAcvjijukKzVOC/UZX4EYZzviEe+QIQv5yy4giQajNwY4WlaN4WmGXkqNwMroDOtnovJXRo7Cv+GffF/iYsAVcS3BSX8258trpIDFmrXnlFmsU0w97P10o1MZ+2hBFGXmcxAlOgpi8NfQfLARu2iB2NZcAtq+AcBEZbtOMlgpe+Q963cE2vQQ0yE8ERVrF3eavQ1uewfK2+cIFBBjyVQojc/Tq8L7nbIcjoioCw18jDKRXX8ivvr7ATqVtNW+5jJ27nU6QqSncHqRPs4Bb3rL++vqHd05NBPFfFDemZ0I2yOYBwbVhuOXASdHYVfyxftT6mef3uEeb8///M0XQebx4JBwlu/6L+jnjTAtspAqz50MjUXFgJhcqWjB7Ml+RRvdIHQwJ8UARbMX+XJnhRW2O3djfxTI9myGz5aeUIJWE60hy3F3zmjFF5YH5Gu/yAM4iTlZC7c2eB7
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(136003)(396003)(346002)(376002)(451199021)(9686003)(7696005)(55016003)(53546011)(26005)(6506007)(83380400001)(186003)(33656002)(76116006)(66946007)(52536014)(66556008)(54906003)(41300700001)(122000001)(82960400001)(110136005)(38070700005)(66476007)(86362001)(316002)(4326008)(5660300002)(66446008)(64756008)(8676002)(8936002)(2906002)(71200400001)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5j1Pqh1Jbd5P67Pm91HCGcM2AkcDxe9gk6VWdm6bMxaV+4+MyDIm9xKpUYye?=
 =?us-ascii?Q?jQojCPpQ93//K60SzULZJJBirD1FLNKEueE9L7BMxMHCgrR1kqgpws7T7ZSk?=
 =?us-ascii?Q?uFyAd/+dsDQR2ciC06U4e/kjbojE63GpRaCb+bB4ORoHcgz2ZpX0B8g1eFIE?=
 =?us-ascii?Q?t5HTBTdYmK1/n9VTrbyl3wQPKLDk2q1ojGmbCa9s0WeW04qonGP7o5MOFvOs?=
 =?us-ascii?Q?moZQ3VNA4jww/dBWMOOvuqgEgZFhzzOnPhqTsUVtoIhaP5k//Im/BmGukC9a?=
 =?us-ascii?Q?pEqJUVhBKoIkYprT2vHapoRWGstnZnPdmk1JwPfT5yqMsoyece1wondgBZS4?=
 =?us-ascii?Q?fvwurBrpoIS94C78g4OCu/R284RiH29zVp9cEM6z6G0yqPBFsyERB1wbToyC?=
 =?us-ascii?Q?1FZJsb/zglSpkZSXXhuwB51rQQ2eKUc/XySnEWTnz/jRG7lJI7ekKKFZqngK?=
 =?us-ascii?Q?/ZMJ141D6ms8U/VJNkn2h6oLRMo1FosrSYkFwTB/hT8pQKldxwItm8UPL713?=
 =?us-ascii?Q?c+pfoW8io9cVrMKzbJ4KfWMEKOjRe2t503M3RABdsKlJUXd6m9v/Wl8lTsm8?=
 =?us-ascii?Q?HlSWlZO6Lc0+IoCciZPx+ooZwwC4IQ3QqONaopHy4/QEs4zIpUqyfS0PmUHV?=
 =?us-ascii?Q?acnq1RdTSC+tbMPNHGma+C0jnIcl6JGbrVQki3jEq7WfeMCnylTTlJzhZtCj?=
 =?us-ascii?Q?tKNF+zCwfv09JfECvaIrWxGAfI0PWoWUpkxgTvG3wDAP5sWnGAH+Wxp8UBGh?=
 =?us-ascii?Q?kMQuxCwETth8kfRv/F5kREghQZZ5jzdonc94Sc3StdpuHkxjH/vKbLkdphn8?=
 =?us-ascii?Q?C+upk6IQ3yBCiM8vw53kOjuDdAxZNMP2CbFH3mc3aDcQTHAjNNgnhz7hGRHj?=
 =?us-ascii?Q?7P3Oo0UgYNsjPPc10gFhY9fd13E7dQGfEuXMxEzWJEoEgdQ3A+HtC8fqYDFx?=
 =?us-ascii?Q?XnpVwvElDLlDHTndRk44fp01SQcx81db9sDZvytQUfKrDFoQHS9870yvvBss?=
 =?us-ascii?Q?2GKux889CxPZ/B9phI1JvHzFxaJNxU6TKYuJhyTc4RqK75mAD4Yckh3SeXGf?=
 =?us-ascii?Q?Rr/Jiy7UTFVQc0dnaglvsrYxwdLA6QE4bwTtmH25VchNwIaaVB5RKrUeOrnb?=
 =?us-ascii?Q?suJzReMJy/NwICqzqj928L0QYtb6J//WOjzOcbzFzZnXOQINGPQL19XKdoMS?=
 =?us-ascii?Q?Y6Tf8wphXME+o2Y4a0OIXxKOcHO8vvT+Ty8h/bjfS1IMSMn9QnYp+TrH9a4g?=
 =?us-ascii?Q?0SVwcbyYXnuanK/2MLrx5bSShnE5jHqlMOXZlqGH0myEBu6hByRPnhJaY/AS?=
 =?us-ascii?Q?bdQKSBjcHRehuxgND94IJWUx7i+WcAZwHQUcKIyceb8sDSbcZ4YXoYrceV2V?=
 =?us-ascii?Q?8ura/ILzV4Z+NoqAtnV/yDhcJYNYHBVgzHY9JUWzq0ubiXOjW7CbwjWbv0tQ?=
 =?us-ascii?Q?MshXW2sd1b2KRa9YmeOQBUeRXBI3VfjdOqSv1vjDhWBzorsXbh+UOguTxsNR?=
 =?us-ascii?Q?OyaSuoRl/BSE0apVAGBAoMpxTD/o7e4N9znMgfl0ZGTi3I7CxDE87x4h/qFp?=
 =?us-ascii?Q?Mg/ps8fgeYtbU4JeFYSRPjPsOsX9A2qdmTZHqrZx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c4de6ba-1c69-4b2e-3de3-08db91d9b211
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 15:20:38.4447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3G1npV8tWOtqteCUf3YxDrDOTTqP9XR+XvZZc2UicJvz+qO8/j2/4SidKbqGR5Dv4H7m2Dl3tfAIIWxi8TmdnRB7r7GohxJxQoI4YqQSPHM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7000
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
> Sent: Wednesday, July 26, 2023 12:33 PM
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

This version is indeed neat and not sore to the eye at all. Thanks for this=
:

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

>=20
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

