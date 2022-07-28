Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3940583E32
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 14:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE5299914;
	Thu, 28 Jul 2022 12:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF64194DA0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 11:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659009400; x=1690545400;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QHfCZBwep3iHlZSwMPM1TyvyAOJ4RWoRo3X4SzGgoUo=;
 b=DuKfgSrrXGLLFcN95G2JAcB2y5aA0lQ2ZLRS6CwoP5NzO6t2qkTRw7I7
 6rjgS4NnL8EajS0/vdoFtC+/K4wnEG5w6YEzPxBlQfueyiOKAbnErFypE
 379pEoUtiMvXAq9Q4isHKxZ5aWclWM7WjSOQnab/gF4H70bgDbVeAgK2a
 GEciwBTkKB7l+EkoOBJSFojDAYbfEyOD1/+G/8pcp/EX79SA2Pp57MY9u
 mX7i/lCCfcGXgkBf5ux6DoD31ClhqTqwWhedp/FPhiU5MnsnQdWxvYfR7
 I43ce3C2hF3ubR5j9cQYc+Vf8Y6twaKrYZNGeatWfENzrke/ETKbVVo1B Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="314281319"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="314281319"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 04:56:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="777105289"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 28 Jul 2022 04:56:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 04:56:38 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 04:56:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 04:56:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 04:56:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i2QyJxOkJr3RQt54K5CVzZ1JAjqLo4BNavP8wHQPNo2Y4nI3F3eIuSsmSmTpZFvJpqClG/ky0q7T5XWqG2gOCIPOPuNA+Yv/sgiI+scwVWhzbYbfXK1/ruKjGh+5wKuE8jTJvxiedIpoSngZO4zvTanALZSpUYuVoFBOUZRj90aNqj3jet9iU4GTnQ3hYCsPZXVOgM/vvXSVGbSumrpHN/gXSntvvMRB/Lmm2T+9C71SqhoDFW51R3XgudMBWXfzOwumOUKO7SO1c6CGoAnI4LJq6rwFHHg4QA3EZkZqmJscYDm87N8Efz0bMnAJEgicyYtKzFrWdEDYEi9VprwVZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DijFVpKx38Y/PNKcu1O0/0WjzkBi7ZPMqcf9F7qHf5w=;
 b=Hwzdneoak71WOwmf5cwEy+BNogoTvE7E/5hdotJOoGWZK38xCViLf4xlNs4JWu91gA3G4T11tECRkXUUcCZMXMXANEQhwTlnfujRZoCkEsfh+gDccx8psvRClNkpmn11iilOUmO5PLey54BpSgVXmn98NAkRk9QcbS5CX0u0+dSKpOWo4Wrj8yPWGwpWAWcu0o0O8487vmMYyoLML13fcbelc0wDpF7HNAWlc7SsEGvUE/iiUhk5FCmcLcRVADpgRV3perDS264jOxs4/p5dufOjaIG+z+1KKvn9qMFjV7x/8Z2eYOE/DLYadX5KEG+bo5wqF+6PqqWchOOlocsNTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN6PR11MB2781.namprd11.prod.outlook.com (2603:10b6:805:62::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Thu, 28 Jul 2022 11:56:34 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f866:137e:cb07:5adf]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f866:137e:cb07:5adf%6]) with mapi id 15.20.5482.010; Thu, 28 Jul 2022
 11:56:33 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/d12+: Disable DMC handlers
 during loading/disabling the firmware
Thread-Index: AQHYodhVYZvIcmWeGUm1ENd8mIxdGa2TrlsQ
Date: Thu, 28 Jul 2022 11:56:33 +0000
Message-ID: <DM4PR11MB636084028A67DE65E2D7E057F4969@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220727164523.1621361-1-imre.deak@intel.com>
In-Reply-To: <20220727164523.1621361-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90242f7d-8268-45ca-9d02-08da709037be
x-ms-traffictypediagnostic: SN6PR11MB2781:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ncuLMNHQJcMqfTSEXeG0RnI4a8NyGMA2+y5HM3zYgxovjO9G8rcuknwctk4SsaYMqXEaPQcox3KCE0Jfl3PLqmDuFs5sa1HSiEDvPpVEdfHtr2Aajfi1l6tlRqI+uw0Ve06Gj65l9Hagf8SdDnIdqHUSOl2b9DcWLFv0PuPzDWvtuzXEky6Mprt1vadIIjp6KBlbvukezdEH494xJBMcdeyRpmHh5N5CarJIVJiMs6AN0mj6gvGRUTPCWI/OvZLuMQdCAwQh8Uu8Sf9I0+h5eVsGPCTT77a2IuCLcKwvfnEWZ2K23dTB+5U15uOtdLmscYJMmAwqVqGdnMwO1vX0NTOFBtAtgUqZrNTKaGa6HbAgK6M0He1k3+RpOftDmTDoViUtBPM9Y2DB9FcPZQv1lW7+WwdO7zB9pWd+xbLG8cSpUer6qGRccjb9IIozIEM6QMkjaCYk3pDISskxAnKc+/eIxDYTyXZAwqY9vi2cLsOBc8szcItOYNcXJuXD00AijR+BlwZ/X9kGZlNa2QtstrG27H+xV1PYEMHQNZUSH7YIb+eunf2ucEAwjrVcAYIELp3T+DNH+UpzIsjnRHt+bRfa74qbDA/T4wzasNmcJqggYCodwkm/bqeF8kfWQarC2to19dVsKmr8gr8Jm5pohutRWbWsdGC/icFpnTT320YwL5tspJTP9IAHY7NNFBEGrbEeJMnHLK9mTD9IWWQdnPHexHOm5b1VZK8u1uwdSnEu+6t0SJGvV76KAjBCNcjmZe8KwKnKaV6uGmqHojiHb+q46UhFqA3jXtBI5TLfFmGR7H/TLqFoyDIU4OlAIXS9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(396003)(366004)(39860400002)(5660300002)(33656002)(41300700001)(9686003)(186003)(7696005)(26005)(53546011)(38100700002)(2906002)(55016003)(6506007)(82960400001)(83380400001)(66946007)(38070700005)(8676002)(76116006)(66556008)(8936002)(52536014)(66476007)(86362001)(71200400001)(66446008)(316002)(478600001)(110136005)(64756008)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SzSDfXr4bQyh0Hh1ZHyVEk4sI5bbq1X4yr0+lwzEoXJrTW71VbZAwVuZ20HD?=
 =?us-ascii?Q?zWWsEgWhglz0h5oirckDai4XZhjFY5YifLpmlYqiCU1zTh/4ZaoICp0M3Mso?=
 =?us-ascii?Q?dqGEXzX5QdF6f36f8dDjwYyCSpdjxbscVuOT4owq1xtzvPInOmjq8r5S0gvY?=
 =?us-ascii?Q?NXJ5Zdlbnh60rd9226TYWwUyaqj4/kxfA8vOWUY99YzRiLNhHfypQ08g84LE?=
 =?us-ascii?Q?cPLq51doZcaotPa7WKu2dfOWAYPDnaNhihVGMHM4Cw4mwE1PS6D1NCoF6XnU?=
 =?us-ascii?Q?J0qh0ad1RdShUYwBzwTQO9+SS+sgJFxUYPBz7RUkCzHkRxP7KuL0FGwcaOUs?=
 =?us-ascii?Q?06G3JPcCt0vUuX3wCya89Zl202AVyZa42m0QfBMT6brcIb7BEuGs+z/2k1Ka?=
 =?us-ascii?Q?kNIKQgk18vHtz7vgBLpHP89dX+IuzDNp9wRFn95jlKQP4AlyIH6oC4Ndrwj3?=
 =?us-ascii?Q?23XcqKuJCEiQnywOqfI7zHH3Okd634f2DsXkVItdAJx5gYH8dXg9VXWfcOmz?=
 =?us-ascii?Q?nXS+NLdPZXAehua6RRH6r2ZbFYLhiiOf5lnY0m3C+FmRGoS1h4fKzCPJsMiq?=
 =?us-ascii?Q?ytwwDiUcKyCmxivpFugH6GMhzd1bYEOfOpnz+iQd4KRr5bvwxEm9hqAXVxss?=
 =?us-ascii?Q?HJSg23N2Ye5r7Qw/5n+OlIi+saztol/5Hkth+czhYQAg3DDHsf6xGs5MnqOM?=
 =?us-ascii?Q?uoAKvI+WiT7dpoElaJn9QU3OkVIInwQXSz7VOP6Oaz9TGPGtrIT4XnA3Bers?=
 =?us-ascii?Q?JRCD/CS859Vd4Z475LirJuEwbWjBibqo63lqE6JldT8GI6pUUcUN6uhik5bZ?=
 =?us-ascii?Q?XtpXd/QP41OU5brFps5uik5+ZypZAE/QOSIu3uUSiPWepT15Qco4iNs+xb0X?=
 =?us-ascii?Q?hM4Wl/8RlmKS2DJ2belPsLl/OOZytl/mOD2v+Y0MoCsgYk0rJBZIguQgOmYP?=
 =?us-ascii?Q?jcmBxnj4xaw2OxCaKKIJN24VWe1ehctBOQf41oStEkL/gqWk6smoJORa1lIz?=
 =?us-ascii?Q?RzsUUjX3bohgxD4XVPXsGtTHCULRddA+7OnQvBIHzbygBBKV7fIDab25hIeL?=
 =?us-ascii?Q?cew0cVloo8XnbmdOt5LMIurJbBFVWMnyGtpSmSJRDGYzYfWqTYDyVSlICwKx?=
 =?us-ascii?Q?YZ541g12ZyuaWMKxAkrPcNA+Pc+Z2EWh1g/Bf8sfRvMtzKiRvjpSu0Gpt7Xg?=
 =?us-ascii?Q?ClFnUH7YocdtfBbb5yooJVA0e27wKA02ep7dHcfX8fPZ751yxBeJtstVCprK?=
 =?us-ascii?Q?vC8IGWqDb9v4OR7tpiI686oZ9ySwHqw3BO6SUxbPkB0iBnKj52VU8bHanDoV?=
 =?us-ascii?Q?gS1jQzrQHorVnD3hhA9v9uPna61pQWeW7m032YNMbWuCqVaPZpNL+KigtVI7?=
 =?us-ascii?Q?oo2683TI/e09KN6pSKrXnmtE4WJXDCJtk8sC+tXq9m+eXsHjke/zmCOGkSD4?=
 =?us-ascii?Q?ZmY1R2eXuH5SpQAaqbx36joHMGddsKtaf9csXd/kFNCfsqfLyOxoX6Qsk/V9?=
 =?us-ascii?Q?4Id5OOIinBNOpdDJ1QLnRlMYHa/ph5PviXtNiG2k7Hz5kyIGfNp7IdaNICqo?=
 =?us-ascii?Q?ZmKmNrBNZah1evnGFlOfj4ODha7kJZNVpM1+Ochd?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90242f7d-8268-45ca-9d02-08da709037be
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 11:56:33.8718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 65M97B0x6QU/j6foCnKggqPNUbZcjfITV9Go4p2N/JGT9unKo6+WESqTQnHAGlqC9mK5gMxXhlysM/Glux6WrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/d12+: Disable DMC handlers
 during loading/disabling the firmware
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re Deak
> Sent: Wednesday, July 27, 2022 10:15 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/d12+: Disable DMC handlers duri=
ng
> loading/disabling the firmware
>=20
> Disable the DMC event handlers before loading the firmware and after unin=
itializing
> the display, to make sure the firmware is inactive. This matches the Bspe=
c
> "Sequences for Display C5 and C6" page for GEN12+.
>=20
> Add a TODO comment for doing the same on pre-GEN12 platforms.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    |  3 ++
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 52 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
>  3 files changed, 50 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 589af257edebc..22f65a9968c6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1433,6 +1433,7 @@ static void skl_display_core_uninit(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	gen9_disable_dc_states(dev_priv);
> +	/* TODO: disable DMC program */
>=20
>  	gen9_dbuf_disable(dev_priv);
>=20
> @@ -1500,6 +1501,7 @@ static void bxt_display_core_uninit(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	gen9_disable_dc_states(dev_priv);
> +	/* TODO: disable DMC program */
>=20
>  	gen9_dbuf_disable(dev_priv);
>=20
> @@ -1675,6 +1677,7 @@ static void icl_display_core_uninit(struct
> drm_i915_private *dev_priv)
>  		return;
>=20
>  	gen9_disable_dc_states(dev_priv);
> +	intel_dmc_disable_program(dev_priv);
>=20
>  	/* 1. Disable all display engine functions -> aready done */
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa9ef591b8853..9ae62bb1184d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -277,6 +277,17 @@ static void gen9_set_dc_state_debugmask(struct
> drm_i915_private *dev_priv)
>  	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);  }
>=20
> +static void disable_event_handler(struct drm_i915_private *i915,
> +				  i915_reg_t ctl_reg, i915_reg_t htp_reg) {
> +	intel_de_write(i915, ctl_reg,
> +		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> +				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> +		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> +				      DMC_EVT_CTL_EVENT_ID_FALSE));
> +	intel_de_write(i915, htp_reg, 0);
> +}
> +
>  static void
>  disable_flip_queue_event(struct drm_i915_private *i915,
>  			 i915_reg_t ctl_reg, i915_reg_t htp_reg) @@ -299,12
> +310,7 @@ disable_flip_queue_event(struct drm_i915_private *i915,
>  		return;
>  	}
>=20
> -	intel_de_write(i915, ctl_reg,
> -		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
> -				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
> -		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
> -				      DMC_EVT_CTL_EVENT_ID_FALSE));
> -	intel_de_write(i915, htp_reg, 0);
> +	disable_event_handler(i915, ctl_reg, htp_reg);
>  }
>=20
>  static bool
> @@ -356,6 +362,23 @@ disable_all_flip_queue_events(struct drm_i915_privat=
e
> *i915)
>  	}
>  }
>=20
> +static void disable_all_event_handlers(struct drm_i915_private *i915) {
> +	int id;
> +
> +	for (id =3D DMC_FW_MAIN; id < DMC_FW_MAX; id++) {
> +		int handler;
> +
> +		if (!has_dmc_id_fw(i915, id))
> +			continue;
> +
> +		for (handler =3D 0; handler < 8; handler++)
> +			disable_event_handler(i915,
> +					      DMC_EVT_CTL(i915, id, handler),
> +					      DMC_EVT_HTP(i915, id, handler));
> +	}
> +}
> +
>  /**
>   * intel_dmc_load_program() - write the firmware from memory to register=
.
>   * @dev_priv: i915 drm device.
> @@ -372,6 +395,8 @@ void intel_dmc_load_program(struct drm_i915_private
> *dev_priv)
>  	if (!intel_dmc_has_payload(dev_priv))
>  		return;
>=20
> +	disable_all_event_handlers(dev_priv);
> +
>  	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>=20
>  	preempt_disable();
> @@ -405,6 +430,21 @@ void intel_dmc_load_program(struct drm_i915_private
> *dev_priv)
>  	disable_all_flip_queue_events(dev_priv);
>  }
>=20
> +/**
> + * intel_dmc_disable_program() - disable the firmware
> + * @dev_priv: i915 drm device
> + *
> + * Disable all event handlers in the firmware, making sure the firmware
> +is
> + * inactive after the display is uninitialized.
> + */
> +void intel_dmc_disable_program(struct drm_i915_private *i915) {
> +	if (!intel_dmc_has_payload(i915))
> +		return;
> +
> +	disable_all_event_handlers(i915);
> +}
> +
>  void assert_dmc_loaded(struct drm_i915_private *i915)  {
>  	drm_WARN_ONCE(&i915->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h
> b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 41091aee3b47b..67e03315ef999 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -47,6 +47,7 @@ struct intel_dmc {
>=20
>  void intel_dmc_ucode_init(struct drm_i915_private *i915);  void
> intel_dmc_load_program(struct drm_i915_private *i915);
> +void intel_dmc_disable_program(struct drm_i915_private *i915);
>  void intel_dmc_ucode_fini(struct drm_i915_private *i915);  void
> intel_dmc_ucode_suspend(struct drm_i915_private *i915);  void
> intel_dmc_ucode_resume(struct drm_i915_private *i915);
> --
> 2.34.1

