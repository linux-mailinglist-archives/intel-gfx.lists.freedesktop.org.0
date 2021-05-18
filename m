Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700DC3874C3
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 11:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8B96EADF;
	Tue, 18 May 2021 09:08:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76CC06EADF
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 09:08:46 +0000 (UTC)
IronPort-SDR: yHDFwRQWPpRurXerbbpMANS99ejTCqRTs5Q3PYCeF7AaN2S8DJ4b3FdSjjAYzOKAkbz8qRkNF4
 z8ODFYs5xAUg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="261894329"
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="261894329"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 02:08:45 -0700
IronPort-SDR: mc/NMaupjjYPNyF1kJNlqsvH6CoCf0ZBErF0aNUKo11/XRijdynsZ9tKvrHGqSynYLAfSXVzyN
 E7ewc7hBUnCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,309,1613462400"; d="scan'208";a="439335967"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 18 May 2021 02:08:45 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 18 May 2021 02:08:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 18 May 2021 02:08:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 18 May 2021 02:08:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 18 May 2021 02:08:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YX+GIQnH2Peht45+oaPPRkDcHl3iERho2wccHhtChwWRmShGyiYDw6NfU0anmYO9Iog08+LrAw70IJZlYSJlG9Chwkak8AJcOWDbhopYCg0CTJ5JkRXW9h4lDUxWbK7aqvL7Ilo4tGAfam3Zymd50dTKCov5iX8og4Vp+zYomDiR926osjGU9wWA40JVTve4KcpzAGrWdEr3sxwqsAzgHwYthBRYZkulMDOVUVj1iiOTReB+ObJrWu6Q1xwH5rJO/fgxkul54pamw5JpXaoDt6duFrFNFQjw0oTpIZSPolxN7HOeZkdDY17HM2s4QXYxwnNFNtQGtfGwlbNurnWpBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cdp+4C/2/oOpOwoMu9SaqpH2ftsGmaV7/+2fTKrJwag=;
 b=HS61RdKhfPCvmop7vFuKIk7FJ6RutL+tl5fZOxZ1HFZzJdhkbGufXs3v12JX4qVgoK4uh+lacIxY1CnuKikZReWJzblSvMD0i4vbXfrBPUW9KpFpqufLSkQI8aYNp2HirLawkdWbFr6DIJGjRc32AApZy5fp4TrOG+ArEaNXJ6RjWIRsZRsK9jVCcKBBik9mI9TAwWq9GSLGJxBayBW1oPMW/Ymvug0g6E7mRBC40T1nzFQLqbDS4wy/W7UL9GK00+XH5DFcorcZ+Tc2oxdTPUONOjQ08PGJjd/Sgf3ZJDj5FiM/PRz/MDW0FaVrNwU13Xq/adr+ZCUKK5/0EgA+Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cdp+4C/2/oOpOwoMu9SaqpH2ftsGmaV7/+2fTKrJwag=;
 b=SAJkY1SdoWr1a+6tDaL/Sw10seC+Pw/mChin50FxardfJmRFdTqP30bMA7OvU1XhBD1Cgn5jpQJ1pOejkgD3+XTAEV3OocMXnTwwsWEJBACtdqTr4x6wrKtdrxuDtFx+RzkTVqX2Ffh7V8kdgYpDUFEp1pUO2+/eUpgrKPaXSrY=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB4953.namprd11.prod.outlook.com (2603:10b6:806:117::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 18 May
 2021 09:08:43 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4129.031; Tue, 18 May 2021
 09:08:43 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandey, 
 Hariom" <hariom.pandey@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
Thread-Index: AQHXR/ROmCFKCj+5sEaYzyEZKn2MTKrnvbGAgADuOGCAAEn5AIAAA5Xg
Date: Tue, 18 May 2021 09:08:43 +0000
Message-ID: <SN6PR11MB3421A181A9928594F90F654BDF2C9@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210513122352.176643-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87tun1fny2.fsf@intel.com>
 <SN6PR11MB3421B41BA6F3225EC4C9FF92DF2C9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <87h7j0fms7.fsf@intel.com>
In-Reply-To: <87h7j0fms7.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.249.234.107]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c248121-9940-4789-9e89-08d919dc892f
x-ms-traffictypediagnostic: SA2PR11MB4953:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4953FCFFADA5EE9699D53341DF2C9@SA2PR11MB4953.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zHfxGAyx1E+MfCNh6qZIksfouJU1wALwTkiTOxs3HY7Cx+vVAMxLsEgbkmQICTgrVaWrOxjytvQF5PQH1UumdMids9HnID5bDFo9vCwt2+GCYRi6+9d9m6KB2HJEVWbjLQTB78mGc/wEQ1rTQFmoJCJVws0vceuW+Jws8TXFSzICAfFEEceFwTgREZuDO+LLsG7j7Vp8wUrAW+PmOeo2RURI4ILo0fIgYtoU+T3YUFxl5tmr7vFl882n4QOzZkzVn2JFpUlIFxvdR30AEplqk2OQ/py0nHfNrM4EnFjCO2aJa6D/64jNBlWKd+VpNCrlyAT/phSMnuTIGuvgn0dzq6xz0EabfKmHcFfYStnnTcdRMc7cz2d4ijemYAGiKeFQLCUtJWpsCZ6Reoxagcy+atsUXYdZcSnYnQlwI+UKm+7uSa0KV06UXP2WxIy1Nssp2IrOJAyisK5tp4GDJ9T2EgLMRJja+0xE7xxaW0pszbaOVgb5N+OhQfS/eT+ffeSfkKdiEkRCs/i6rNhWM8psOgs7H49vdhUZ/idInC8Y/Ex7HJCe12AtzEmVOHOh7V06jkn5S3MgqSbBhvcsHrpzQl1IHpUPDcbSMayx7lRfrm0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(396003)(366004)(346002)(136003)(83380400001)(316002)(71200400001)(122000001)(5660300002)(66476007)(8676002)(38100700002)(6636002)(2906002)(8936002)(110136005)(53546011)(64756008)(52536014)(86362001)(66446008)(478600001)(66556008)(55016002)(66946007)(26005)(33656002)(7696005)(76116006)(186003)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?nsJ0ESgEPZPzxX7v6QjUXu+aV/7BFtKFPZHAQYDs+gaHcdVyayTLAWUfL5v4?=
 =?us-ascii?Q?PGWOanQ7HvSNvB1ohxWVH2inIC7cNrC+v2oMsETB8xSUo6wD3mDApr9UfhY5?=
 =?us-ascii?Q?REfG884djmOKdGSoM4ZgRcKga0oj5CTidTai3VFx6x3uT8NyJsfmAI4RSUDZ?=
 =?us-ascii?Q?7FKuK3rVHosSgiPykaK6s+E+br98ttHo49GFng2mAsrmInNQCaqM0wgd7wJP?=
 =?us-ascii?Q?dK48RuQdJKhFFLMc9QSVvPZx2BMMzCVnK9qrrLkR1sNQxRnze+j6d76Oxf4B?=
 =?us-ascii?Q?+5pnRtjdYs0+Hmw4MpT+nMazLNICcDyrRmbgJQ1YdmwKLA4pSTNQq1YP47q3?=
 =?us-ascii?Q?ZUB2C48SUZ4PKRgV+DNGUhvEOj7+F5j39QBOeyiYdwtg1Rxs640zUh5olZtw?=
 =?us-ascii?Q?vMmy9/8uapE00gRAkvvP6rPbv03dt3YftEQ3krJHniq4DLs0nUc5dTjnZn46?=
 =?us-ascii?Q?PdvPoGdkZgATUA7BOGFKHjx3jZGQXAtTDMkDR+DFPfWvhIx//aTLIlIb+fnY?=
 =?us-ascii?Q?Zj5xoh6b98iQHuCzU4Ra3wf0Ccmtr9OR0usdL2bv3C4UIayy6mozB6Fbmv25?=
 =?us-ascii?Q?tpz4y/IwdMncTl0XBR4wNY57jSFXF2TZzaXod9pmywSXOP6llZzIqkkUTfl0?=
 =?us-ascii?Q?nfu9zAaR5B0PKn/ejVGlOJtFUg77OACzNYuqq1VzOCwS6O6iuow4GUNKNjDx?=
 =?us-ascii?Q?og4zbtkwiiCOSlRjlgdn/I2pk1ER/Me/ZO1uKAIh3bFB46pgAnsbXzOqUzjc?=
 =?us-ascii?Q?m5sto1/XRnzXNsXHqEKkHNgv5JE1YHIa8/gbWv0x8SwWezf6Sok+pZOm9GLH?=
 =?us-ascii?Q?pNnW2jTARZYTszl+/Yj2/tGdwXmK7xSeING87WRUxrAJ16jw6Ne0RcRrCjaE?=
 =?us-ascii?Q?oj/3aCyhcCNJWmEiF526JcMOxd5D1ZDbmO5v9VOI+twfkKlZcgAvsdJ2VZZC?=
 =?us-ascii?Q?jCkuQsEROWYsnoqRq7Mj0b8QTreu6pwBkrO6U2QT4kbvUTVb1Ln3OHdwcX5t?=
 =?us-ascii?Q?++NRWFNEacywhbThW43Muqn8wxW6kS+WvAfV8LBzGcVnO7P+HkLVw3SvU4wd?=
 =?us-ascii?Q?EcsFlVTCcxU3LZicBmN9GO7xrmXWBM95GCz0qn/1SpLjWxwjekDXBbwiqk4f?=
 =?us-ascii?Q?hgbA0g+j0FVaDsT6K1EjznODnzDbyUCPOql/CK3lkvnV856XCStY0YIDI+Iz?=
 =?us-ascii?Q?Yu0c/zk8gnSmYISijUTwFd2t4oEtHeCwzthZRkOyZPkAGTE0tONOUXVNPq7C?=
 =?us-ascii?Q?I6ZFwxz5L64P8S6+Vr8vmsJO4olkGMGLQCBVCpbkj++lwkfYIl0N6nPRGf9l?=
 =?us-ascii?Q?BXfC2JUVdutYbD5plpEca1FC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c248121-9940-4789-9e89-08d919dc892f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2021 09:08:43.3405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VPAlUPvOTYsgo6G+jwt/rQcayhJq3qL+LycMcT7juq6CnOfZ6wOtw7scPTz8Pke+Hxys8WmnjDmsmHHLNCIqBaJbbpx623S5n9R7yvMZYJEU+eeMz+ju7irJkwvIwYW3Miixybc0ucPu+Lm/8+pbgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4953
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 18 May 2021 14:21
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org; Pandey, Hariom <hariom.pandey@intel.com>
> Subject: RE: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076 for JSL
> 
> On Tue, 18 May 2021, "Surendrakumar Upadhyay, TejaskumarX"
> 	<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> > Thanks for review. Responses inline.
> >
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: 17 May 2021 19:43
> >> To: Surendrakumar Upadhyay, TejaskumarX
> >> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> >> gfx@lists.freedesktop.org; Pandey, Hariom <hariom.pandey@intel.com>
> >> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/jsl: Add W/A 1409054076
> >> for JSL
> >>
> >> On Thu, 13 May 2021, Tejas Upadhyay
> >> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> >> > When pipe A is disabled and MIPI DSI is enabled on pipe B, the AMT
> >> > KVMR feature will incorrectly see pipe A as enabled.
> >> > Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave it set
> >> > while DSI is enabled on pipe B. No impact to setting it all the time.
> >> >
> >> > Changes since V1:
> >> > 	- ./dim checkpatch errors addressed
> >> >
> >> > Signed-off-by: Tejas Upadhyay
> >> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/icl_dsi.c | 38
> >> ++++++++++++++++++++++++++
> >> >  drivers/gpu/drm/i915/i915_reg.h        |  1 +
> >> >  2 files changed, 39 insertions(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > index ce544e20f35c..e5a6660861e8 100644
> >> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >> > @@ -40,6 +40,8 @@
> >> >  #include "skl_scaler.h"
> >> >  #include "skl_universal_plane.h"
> >> >
> >> > +static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
> >> > +				   enum pipe *pipe);
> >> >  static int header_credits_available(struct drm_i915_private *dev_priv,
> >> >  				    enum transcoder dsi_trans)  { @@ -1036,9
> +1038,26 @@
> >> > static void gen11_dsi_enable_transcoder(struct
> >> intel_encoder *encoder)
> >> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> >  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >> >  	enum port port;
> >> > +	enum pipe pipe;
> >> >  	enum transcoder dsi_trans;
> >> >  	u32 tmp;
> >> >
> >> > +	/*
> >> > +	 * WA 1409054076:JSL
> >> > +	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
> >> > +	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
> >> > +	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> >> > +	 * it set while DSI is enabled on pipe B
> >> > +	 */
> >> > +	gen11_dsi_get_hw_state(encoder, &pipe);
> >>
> >> That function is only for reading the state for taking over hardware
> >> state at probe and hardware/software state verification after modeset.
> >>
> >> It reads the state that is being set later in this function, so it's
> >> never going to be correct here! Also, we try not to do stuff based on
> >> the hardware state, but rather the software state.
> >
> > Okay I will correct that.
> >
> >>
> >> > +	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
> >> > +	    pipe == PIPE_B &&
> >> > +	    dev_priv->active_pipes != BIT(PIPE_A) &&
> >> > +	    !(intel_de_read(dev_priv, CHICKEN_PAR1_1) &
> >> > +			    IGNORE_KVMR_PIPE_A)) {
> >> > +		intel_de_write(dev_priv, CHICKEN_PAR1_1,
> >> > +			       intel_de_read(dev_priv, CHICKEN_PAR1_1) |
> >> IGNORE_KVMR_PIPE_A);
> >> > +	}
> >>
> >> As far as I understand the explanation, we can set this regardless of
> >> whether pipe A is disabled or not, and we can just set it based on
> >> where DSI is enabled.
> >>
> >> It should probably also be IS_JSL_EHL().
> >
> > Will it not affect if pipe A is enabled and we set intel_de_rmw(dev_priv,
> CHICKEN_PAR1_1, 0, IGNORE_KVMR_PIPE_A);. What I could understand is
> we only set this bit when pipe A is disable and we have MIPI DSI enable on
> pipe B. Correct me again If I am getting it wrong.
> 
> The spec description is lacking, really. But, how are we supposed to interpret
> "No impact to setting it all the time."?
> 

Ok I think we can ignore pipe A status with statement " Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave it set while DSI is enabled on pipe B"(Here 
There is no mention of pipe A for leaving the bit set). I will modify accordingly.

> Only setting the bit when pipe A is disabled is going to be harder. That's
> another thing that was wrong with using gen11_dsi_get_hw_state(); it'll only
> take DSI into account, not *other* things that might be using pipe A.
> 
> Do you actually have a real world bug where you can see this?

No I don't have real world bug.  

> 
> > Also Bspec says clearly workaround is for JSL only. Should I consider
> > EHL also in this?
> 
> Yes, they're practically the same, and we don't even have
> IS_JASPERLAKE() or IS_ELKHARTLAKE() for that precise reason. There are a
> couple of rare cases where we need to make the distinction.
> 
> >
> >>
> >> With pipe from new_crtc_state:
> >>
> >> 	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)
> >>         	intel_de_rmw(dev_priv, CHICKEN_PAR1_1, 0,
> >> IGNORE_KVMR_PIPE_A);
> >>
> >> To disable, with pipe from old_crtc_state:
> >>
> >> 	if (IS_JSL_EHL(dev_priv) && pipe == PIPE_B)
> >>         	intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_KVMR_PIPE_A,
> >> 0);
> >>
> >> At the right locations.
> >
> > Ok I will take this into consideration.
> >
> >>
> >> >  	for_each_dsi_port(port, intel_dsi->ports) {
> >> >  		dsi_trans = dsi_port_to_transcoder(port);
> >> >  		tmp = intel_de_read(dev_priv, PIPECONF(dsi_trans)); @@ -
> >> 1245,6
> >> > +1264,7 @@ static void gen11_dsi_enable(struct intel_atomic_state
> >> > *state,
> >> >
> >> >  	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
> >> >
> >> > +
> >> >  	/* step6d: enable dsi transcoder */
> >> >  	gen11_dsi_enable_transcoder(encoder);
> >> >
> >> > @@ -1260,9 +1280,27 @@ static void
> >> > gen11_dsi_disable_transcoder(struct
> >> intel_encoder *encoder)
> >> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> >  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >> >  	enum port port;
> >> > +	enum pipe pipe;
> >> >  	enum transcoder dsi_trans;
> >> >  	u32 tmp;
> >> >
> >> > +	/*
> >> > +	 * WA 1409054076:JSL
> >> > +	 * When pipe A is disabled and MIPI DSI is enabled on pipe B,
> >> > +	 * the AMT KVMR feature will incorrectly see pipe A as enabled.
> >> > +	 * Set 0x42080 bit 23=1 before enabling DSI on pipe B and leave
> >> > +	 * it set while DSI is enabled on pipe B
> >> > +	 */
> >> > +	gen11_dsi_get_hw_state(encoder, &pipe);
> >> > +	if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) &&
> >> > +	    pipe == PIPE_B &&
> >> > +	    dev_priv->active_pipes != BIT(PIPE_A) &&
> >> > +	    (intel_de_read(dev_priv, CHICKEN_PAR1_1) &
> >> > +			   IGNORE_KVMR_PIPE_A)) {
> >> > +		intel_de_write(dev_priv, CHICKEN_PAR1_1,
> >> > +			       intel_de_read(dev_priv, CHICKEN_PAR1_1) &
> >> > +						!IGNORE_KVMR_PIPE_A);
> >> > +	}
> >> >  	for_each_dsi_port(port, intel_dsi->ports) {
> >> >  		dsi_trans = dsi_port_to_transcoder(port);
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> >> > b/drivers/gpu/drm/i915/i915_reg.h index 871d839dfcb8..8b67cd14ff7e
> >> > 100644
> >> > --- a/drivers/gpu/drm/i915/i915_reg.h
> >> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> >> > @@ -8039,6 +8039,7 @@ enum {
> >> >  # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
> >> >
> >> >  #define CHICKEN_PAR1_1			_MMIO(0x42080)
> >> > +#define  IGNORE_KVMR_PIPE_A		BIT(23)
> >>
> >> REG_BIT(), not BIT(). Please read the big comment near the top of the file.
> >> Please observe the REG_BIT() on the very next line.
> >
> > Sorry to say but there is no uniformity in term of which macro to use.
> > Some places I have got review earlier to add BIT() and I can see at some
> places not BIT() used nor REG_BIT(). I will correct for this matter to use
> REG_BIT().
> 
> In i915_reg.h *always* use REG_BIT(). I just sent a patch to fix accidental
> uses of BIT() that have crept in.
> 
> 
> BR,
> Jani.
> 
> >
> > Thanks,
> > Tejas
> >>
> >> >  #define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
> >> >  #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
> >> >  #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
