Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74ABF7AB407
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 16:48:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E62D410E68A;
	Fri, 22 Sep 2023 14:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F1A10E68A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 14:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695394081; x=1726930081;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=o+/aBcNB8PDKQl549k9kvXy75TOArGeeI8FNYD3Pf/4=;
 b=froIvXZHLjS2RcOXFB9fuE2kwSb7NbY7CcqHlsBLL4kgVLbUbFfo+s8x
 g+j2ShkQILPpUySa9rcWHJDEXkenFS+9YEWUezHt27JZwQP0A141PV8or
 32j1rN5l7LRM+TiivHa4GureFsnYSUika5qy46BTjQfpIzIk1p3OkA6MG
 653MgeP5R1K9iY7OL7FX3jHOyuoQKis3JLViH6gG+Z7BEeQgiIBbxq1Uh
 /PSmUh4BZFX5ZGiYx+iwGi7iuj07ojMb2VM/ln6E5G0ohOR3+0rh3BAOH
 OranPNo2RFZz+vIUq24zKtb8nU06noavbdj3nA9+U/MduL9gvFsqJ2PwS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="361093846"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="361093846"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 07:48:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="747538987"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="747538987"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 07:48:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 07:47:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 07:47:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 07:47:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=naGPf43Yd4Pxc2sRplWG5qxzWJgkBLlUrCt8jr5YgVJgrdkPMXTDrqInJC0xyPE2mFeRSS7cFGhEZ5FFSYSmemrLqbDYKRegxmsZ3feoKY40aqYgzd6cra/h+3Oczhmq0Q1atUJPwjxZKgzVG4plnqpGb90TYDEKV60RRPkAwsRIT6UOhveV93P9zV2542c2ic9cXTCy9igbWV4Ll4tSdfkxnNFNHlGou1vJ9HEu+tT7nj0lyCEBNxiM7cA+Obijdp8nk72qfH9fu/j8Z/7z3Sq9IcSbhNsfXXelDzn/oJFhS+hg7G7GPfyDyn3Kgeukg+ZmQUPwu5p9wFDjigVbIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mPlJSqAR6SBR/cvj3I9+2EoLG5r/zzTHGTKyIXetwOY=;
 b=A7rrcVOG2SxyE8nZd4vCZVVlB0WtUe0jAfXoIyUHcG8Kad8Fz7NEqJ172sLaALGnwJRlaJB7ggvpP7s4SGxxaSqbYnObo/lW4t7pKsMBYj8VCcsZvtQ8Mz+hq1ALkM6uKx66EIYAT1dgMDCH87zQMOEOlcec3J9dyhqe972uwSk0KVOmHUD2Ud+w0hxs9wxZIEyqdp5tJsIlgnGRxpbaAGqceAdpOmjQXY7OmsxrnsI0spHUXE1B1E0H+LGL2kZdhq+/WkmdqcuvQxdZMLQsJXiQZGZ+9xAbqwL7tLV2TQLgEdvkg0JxQFJMgifb5zE13af1KyTxtO2rfv8IFuC87g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DM4PR11MB5424.namprd11.prod.outlook.com (2603:10b6:5:39c::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.20; Fri, 22 Sep 2023 14:47:58 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::da59:e1cb:a9b5:5e4f]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::da59:e1cb:a9b5:5e4f%4]) with mapi id 15.20.6813.017; Fri, 22 Sep 2023
 14:47:57 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/cx0: prefer forward declarations over includes
Thread-Index: AQHZ7KPJDCASiVzAK02STT2tjtIZvbAlkLsA
Date: Fri, 22 Sep 2023 14:47:57 +0000
Message-ID: <DM4PR11MB597167A40C2A4C8297D4473187FFA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230921155325.3851197-1-jani.nikula@intel.com>
In-Reply-To: <20230921155325.3851197-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DM4PR11MB5424:EE_
x-ms-office365-filtering-correlation-id: e6a6f304-4300-4f15-5287-08dbbb7ae91b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r96TJVDfL5q9Vuurd6abdLg6va5YdAQjtfjRW6Dt5F6L0MFCq/iTi4BAy6out/8s3X/TEyjpvPNm1YDfhDGVoekeS6BiL2Dx8RSgCbsxeTClsyUAAh7z3KoOYLZuoMknrz0ulGy+0Z8HJ1A85SVOAgQikhH26RSnW4EpC0GSRK4I6Wy+nWSM6svrbHj5EgoYOryZo5xQn+hIbTxarOMsXPYPU083oXPp+Hi23byxp8DjvFzA1qlmlwVT/44tFOveXwiTLIsV6kvkNx80jRb3J0tBrP+2HJvuNwMG6X84hx7jVaWt3ydfRlfkY+kZYn9xC1ligvNvLTY+f49/0JL/v2GrW75mdcSS1Ha6yq8atiPcKkIjV4SUAZj3sBR0xFD9omBsEje413Ef9RVQD5ynFWjgekgb95eSKaWfcg3FVvnwlMeuddWJm6CGrO1oaiIywMPP+75H56Xgm1Xe0MWcFYk3XMfnE4YIavciGhwL6mfjmlqxhgqPKdqsq+urB4lm0nVbUmQqfYKWJ25XBJDQ7jIx/iWUMvS53+QKJRMXEW0Vq5fRHkreVi1bEpTw66I6yoKC/zdhRh3Fm37/vSzNreZlk+IQlv28HfgY/ztJyEUI2g/QuuB6lcCr32Ve8S2N
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(366004)(136003)(376002)(186009)(451199024)(1800799009)(55016003)(66476007)(33656002)(38100700002)(82960400001)(38070700005)(5660300002)(2906002)(86362001)(26005)(8676002)(76116006)(52536014)(64756008)(66946007)(66556008)(66446008)(8936002)(41300700001)(71200400001)(316002)(122000001)(83380400001)(110136005)(478600001)(9686003)(6506007)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bzD/V8xuWAPkTMxXUnGux6x+v341Nniy9/FQ0BtgCzATMvrM9cO+/lnpp/ah?=
 =?us-ascii?Q?4FJBnrAKW0YeKNK5hRcE/dstpcwyVXaiWdxwyFfQOp8sR9qnfwcsp0AVtKD1?=
 =?us-ascii?Q?PW+tOJe/tWXyAMaF98RQSFS/WoCaF14ULOkk7ZzAfxLTDR09AN7srP8IdSyD?=
 =?us-ascii?Q?WMtTEmgz1Aer61xTcCcVjSgg565H4mJZsrh0RPTZ2CJ7Ap/lsFF6H94fPfJS?=
 =?us-ascii?Q?zM7PANvBxAiVvTIs+W/5na9wvKKujS1WNVsW2ffz1xHtAZGjBbS8kffNyn9r?=
 =?us-ascii?Q?evHr4ooR4fzPCASgyOXoYVcvP1pnz/aWdWRJWEbjTAxoQ19e74lNlEkltmSc?=
 =?us-ascii?Q?+ZNqC2gjpInjPOFVaEIr4qrot4Q0+eVSkoLbhDwB1OdfreBahUEZG4/0yMHP?=
 =?us-ascii?Q?5WGQUW1AKqkqU2ptWwa0WwAG6WPvALvEiXVQkgcYbp1xczJlxsdwcz0YvT65?=
 =?us-ascii?Q?X97TmvrbfXo5GutFmKtUFNg6H72uGAqtCp1+kRTlDr27JQK4TNDNLg7YAQwI?=
 =?us-ascii?Q?/nRvzQDIytmQcca7cP2xQo8nqJb8okeGUxqctP7Lvg2ozvgQEAzbsZm6ah+j?=
 =?us-ascii?Q?goh6oFxAF1+Q2sW0oRd39BR200vGv6bUD3jMCWzQ3yL18LvfsRDOScFnY0dt?=
 =?us-ascii?Q?IbFHvTDiu7xt1qgJoRCxoow30VEinXGeTWuIGX6KnGn7+D2N61g4QZ9ZyDM4?=
 =?us-ascii?Q?QbrXWU6/0InEP1ljb30NCoY/B/w+W1NLmXeLwUxbx5TxovXwp7NZY5Z1/rrc?=
 =?us-ascii?Q?E/s8AzXaOp2SD3CjVlfP4N13mCcTFo+nCcReKlGksNQHW7F0CEl8rE/vYQ30?=
 =?us-ascii?Q?WwQ5G2z7j4HHI+WUhM/zMG2L2q1SXEcpOwavnlrdqp7ax0jW/jwdhFzQGZwg?=
 =?us-ascii?Q?iJKc0HVXRbYFkrzUJcQuDzaCBDHZlLJ+SJnfDHXZ3Hv0tgVb5aolPziaNo6N?=
 =?us-ascii?Q?4WUA9DOBYstXpQ9adpAFVoq19taO1q/fHWrs7i0Mm7E5JgR4cqP3nAk89g/L?=
 =?us-ascii?Q?WLhbWVMbemBqUMyiJ9G0sDdtyQkJObJ54bu1x/qrH0sCAaGU1lxHjBOp+zFl?=
 =?us-ascii?Q?puHZAnTnpSFmE6HSA8+PRjfrwmtc9FLnah9MpoRqT38IDpLUIQGkJlOUXsqP?=
 =?us-ascii?Q?QSoSygsbhYwr55KM2Fw0V+yctc3lpHjab42iggJkndD2WFnJCumSZXgFxnAG?=
 =?us-ascii?Q?u/oOaKPs2Jsoyq/52+SW+8zvkeJs0Kt9pBfUp+eYVpijX4hxBvSiR4H6y1TH?=
 =?us-ascii?Q?dpGiroA8dt1N0up6AxPM85LYZ0BqZJHEs2R7kWj1OdVlIqgAQCKKTEw1uwG7?=
 =?us-ascii?Q?U4JkQ1oyC67tjEdRNc5FhkFexrfdo69CclOp3V/D+bfYY5BDGm2ZZJFWctru?=
 =?us-ascii?Q?rR2JCNk0bEYNSV7Ng8Kb4W0TDN1kD5yk+0/zfU3TzMEIhKzXxwdmKmlJIs41?=
 =?us-ascii?Q?cEXKIXaEBOGiSmHj636kSTW/F0CSm8oitMZ84k1yw+xKruVmZjq6e18p8hIr?=
 =?us-ascii?Q?j4pX/XbAw5JWtT4n00iOPmfj9ZUHe6S2f68QllTJ7M81y7htoZ77T4IR8jJb?=
 =?us-ascii?Q?RIWhR0J2XKWwK8bm6Pf1TQS6d2G4bpenGzc2wqKmAKhsSLuqVdwalfoD5EOr?=
 =?us-ascii?Q?TQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6a6f304-4300-4f15-5287-08dbbb7ae91b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2023 14:47:57.3845 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VixZ5jCl09gTreU0YFvU44hLOXUXjcBrq5kHYtiLHmmzQPVe/rFzQGssz9QcJOPuX2iwZu21MIru2BRLYP8Tzd0fZfH+cM9a4DXPSl2KXQU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5424
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: prefer forward declarations
 over includes
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, September 21, 2023 9:23 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>
> Subject: [PATCH] drm/i915/cx0: prefer forward declarations over includes
>=20
> Avoid including the world from headers when forward declarations
> suffice.
>=20
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 4c4db5cdcbd0..912e0eeb0be3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -10,14 +10,15 @@
>  #include <linux/bitfield.h>
>  #include <linux/bits.h>
>=20
> -#include "i915_drv.h"
> -#include "intel_display_types.h"
> -
> -struct drm_i915_private;
> -struct intel_encoder;
> -struct intel_crtc_state;
>  enum icl_port_dpll_id;
>  enum phy;
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_c10pll_state;
> +struct intel_c20pll_state;
> +struct intel_crtc_state;
> +struct intel_encoder;
> +struct intel_hdmi;
>=20
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
>  void intel_mtl_pll_enable(struct intel_encoder *encoder,
> @@ -44,4 +45,5 @@ void intel_cx0_phy_set_signal_levels(struct intel_encod=
er
> *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int cloc=
k);
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> +
>  #endif /* __INTEL_CX0_PHY_H__ */
> --
> 2.39.2

