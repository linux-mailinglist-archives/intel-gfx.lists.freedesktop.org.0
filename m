Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF7B77DC9C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 10:44:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4684910E30C;
	Wed, 16 Aug 2023 08:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203B310E30C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 08:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692175474; x=1723711474;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gvQEAc2EvxxhJi7x1ddiBD3vXjr7VJizJtAsP1ovK+I=;
 b=JI247fMuC2cDKupnytYTpS/L7MUblfZpSurucZWf8SY/gB7Hvh8uliTy
 2z80FymIR7XWPxMRTf1XCM4g7Tu+ciUtgsyp/LWigYKDMoCjlvVfn9Fkf
 FjvXPgWHS42ENNmscyZVBEVb8CO71g/mQIUxeGpsVZDfJJdUqKN9IBGlj
 522S8P+kyhGDVFiYzdC3DQpOzR9CFTXkJ6UUbo55g8zsXBZwduSIHWk2G
 Lwfskbs2ooA49GRswVLDAsEcoJdgyUbgzORiFiX/kpdxJ6WC9cIM2S4N2
 bN7ZCw9V/5a++wJ3+6d2b9jDS8YmdntIysS8i0sgqgoSUfjieoLMFWaSn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371385616"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="371385616"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 01:44:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="848401449"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="848401449"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2023 01:44:33 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 01:44:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 01:44:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 01:44:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GY9cC5UQgKQKq1pamq4+VHBTQqFNL8AseWiCGobchYkVbMr6lSNcdFB4KH0qd4TBEx2rwEkA85kjsHo6ZbGhhU+qD+aUoOyS+7htqrjr48U6doleW6fK2oGWCGciwyu8Fcli1Q2eIuNf7V0R2q5acJIMhyhKtsS7CfC99l9iy8QRHiI6lqvWdy2CCjhJB6HMio7BAXB0xh84T3+D0mJitudqpUGzKnv1FIyjW5nsGMMWzo6Ff/kccaL4UEKTIXHVNVyho/U+wXtbpZDwQPzBuMI9fPce1IJVl/3W/AQypwankcV9iZE/qN9m1LL7ymLOQ+3nhE+OgXlhtF5Gc1XnLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Ci7UAPoV2LcHMy0ja+B6VRoCdAfx+JGaUGk8+TPDDA=;
 b=QdzU6yVn39w2pTsZP3vDmXkPULY/OWT/kPgoQBjxKxoL10OQaLN02OKOVlI0TFkPWtTo0qHhygvdHowfNRi5dm1KluOr0D2JvnwUellTYHJ6nq8IrovQAoPH3llNtG30nj5mTDjISynXwtqNi1Xs79DAiWQWoVDw7R8oPtylpoyZR4kXqVkT6FHzOHLtgOAeVM1AWO3ULdzUrcU5wY0WNJcp2jR0AP2dgnqprzsUX6U/kZYDh+eji8pv8faqk/vqzYMyZEphK7aXxjRUUt2wphGDxafrTEHbIpPev5aGwug/pRPlq++NXmehhetEGv82/kD/3o+6zpkX4Y8SgMjNpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7497.namprd11.prod.outlook.com (2603:10b6:510:270::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Wed, 16 Aug
 2023 08:44:30 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 08:44:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 2/4] drm/i915/tc: make
 intel_tc_port_get_lane_mask() static
Thread-Index: AQHZu8QwRWIq6v/FU0eGcH1DpC8e+q/sw/Rg
Date: Wed, 16 Aug 2023 08:44:30 +0000
Message-ID: <SN7PR11MB67501EE9BBF09DCF4E12971CE315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-3-luciano.coelho@intel.com>
In-Reply-To: <20230721111121.369227-3-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7497:EE_
x-ms-office365-filtering-correlation-id: 9bac5c17-d592-47ea-0bba-08db9e3501f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4RtGBw5jWsQQW8znjdSxJ4ZxO/NqBMn1Pr40hfxCexkafAavfiUWuzmr9YQRWwIf/m7rnXWMbfXTxSQRAmr8AMXAWkxWGb/p0/deWafLsLcSRCaOZao5LQkcG/shRfOgnZJZ9MsImWVK7bNjilyIANbZhJBwHlWsCRbo6K5NITkWsJlJ8XoW+tDuA/2b/fYpg7t53h55Qvh2zDVMjH5/Kb998UI0Z/Nwq66EmUB0viGc0ERxVSIldLMOntsNkEWzH6+9UVUo4D18ci631Ovye0ut1ysRsfTEON2zm2f6GqXvt450OXec/yOv26nVsEnzY/ifDjcelQKwOjl2NyyVjNq0P7xFFLoZJ7ZSoYkWsXyl1UZehwhTnuRdHVGJJhHvui2nmaMXAUd5L328qMg7ZZ+367qFBQFNKIhZ4n2id2D8Z+dPF7Rj9lWjbd01r0remFPnvFNxWKSfsrqKjgr1uvQkIMbm8O+77LS1F01EtDxf0bxaWthtAggMxRTTZssU26hWaWeiFVbmkbQlQJdsjMXOJoZJWXMGQzvbv5X85IV8O1xn8sj53f/y88hog6+W1WpmOIVW8S6rcFRnzlZA98v2reSTtp5O4s+3LsOWhFAZLRXryZPGiNqx8ZEbGNcP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(71200400001)(64756008)(66446008)(76116006)(66476007)(66556008)(66946007)(7696005)(6506007)(2906002)(478600001)(9686003)(110136005)(5660300002)(83380400001)(52536014)(41300700001)(316002)(8936002)(8676002)(122000001)(38100700002)(38070700005)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5IuszLcQdxnHGfeP4bOMA5o9q/h9AfO29wP3sm9ef5v4X+tu/nAZUB3a4uIK?=
 =?us-ascii?Q?3qbyzZ94jPDVTqjWrrgsjKIK/1Ij1eOFkAlYRcR2FEmopyMuaZbQQQTHyZS6?=
 =?us-ascii?Q?/DN3yMxN2UiwW1zBpmbf/KgWmWU4Kv8ryfAEIwOV9e5R+jklNvihSvyyhBjD?=
 =?us-ascii?Q?GqLEljJAq09NsCOEnWAITMrWdrw7L6T8L8EoBy0zZFarL6bC6DviZHfihtLk?=
 =?us-ascii?Q?FKs3FwMgrULvspZHUExCFLZPAI5SRrlWcENQlfdgF8NyuuEpUlz0aaIUdScW?=
 =?us-ascii?Q?GY1jw2cHIdOMXYWsOVVCcux3typFBj1J/lffJCDpGPigk0xqce66HzH7/vL2?=
 =?us-ascii?Q?GTi7k2NP1aRkUhQFX9Jp5Z26jiO9EbIA9CBmtH6LEvupezcZgXFmR06HxY7f?=
 =?us-ascii?Q?B8Sm8KJAZ8ytcgVF5HtFGO+HZC8y+gpyy/+rSdSz91M68wpQ1d77wQG9YsHx?=
 =?us-ascii?Q?O52ZGt9H287xLqLTxoBi6btcbBoO9LamKi8goxIFDzB1VwbjnSMpbdRLwYxo?=
 =?us-ascii?Q?QpgZubGEU84iwPa7FsK1IaxrVeJSy91pzMoQU2QeMXDwg9zWM5ecz9RT+9xf?=
 =?us-ascii?Q?9MzOn4Nw+O8WazelGuEsioQg6T9JOk1nzgQO5y4rqCiAe5h/d7eihaJ7n58T?=
 =?us-ascii?Q?dDMVl1AzIdTL+Ou1nTjNlA0g/rzA0znccCOmZplhJCqOZ59EkGc6wFF02WuG?=
 =?us-ascii?Q?Zbjy0ulU4kPqp8ynC0NPCdm82FLt7eO6fcBn4it8R2WGpxyNgOFvjqpsOk4H?=
 =?us-ascii?Q?fFb21C3syfuslMTiYaE9iEU6hwc9ejV+4w3h+WpbkIzkfZfVMvgfxQnJK6xH?=
 =?us-ascii?Q?55An/K3faUV3vBf8xRVM+r+cpsNEjdT8IDKLqkPhchmMxJ6+3OZbRAGLdcOV?=
 =?us-ascii?Q?kzxSl2mXYwoJEi3ET0qv3Vmw2MBHcC4Eqbr/fICNjIFdAFRnOvBMDfKSeeIs?=
 =?us-ascii?Q?90g/Txk16TREKlDkfEwaYOJU7iWL1DZfuk39oVjwsc/eT02gMi6bebRVmm/q?=
 =?us-ascii?Q?/Tez2MmNuMEe9ki1M3KNnt6Sxrnfim7SrzR5FIk0EHWxfQA01D648SNCFZcO?=
 =?us-ascii?Q?PgIG5aNUQ6/Z8HGBazk+JqHXrcBl8qoikyycyMYWgZdDC8hxMcuy+oorFRr9?=
 =?us-ascii?Q?UcgOKDaO3PI7y1sil5Nxgy3B9aMU+My59iDKRrdpUVzlFXPuak2fnyoUTsZh?=
 =?us-ascii?Q?hvd1n85P8/8fY+alhCHDhmgFiuoc9mPLhQNjLxhHDcDuYqW+MIsvSuZuXLOK?=
 =?us-ascii?Q?guaCgfa78Ac1kkwQwj1cueLBDcSHZf+bRAu2hXfm/PScYBME1YqqzbuyZ5xi?=
 =?us-ascii?Q?QIJLw37eQga0c3teTtYXH2l4y/FAGhpsx7/AxaTRtROEsrfckn4I4q+B0RRG?=
 =?us-ascii?Q?ZeQzbouQ0gcLZtDThWVNb3ZtIbdx4XNYEpowDA9dTg+HfyJXFR7yOmv4Z80+?=
 =?us-ascii?Q?JkxkvqQ3eFC06CTL9wWMbF658p3wk1wh9slfHBg4hAej7HDw11Bm5fJbP1C2?=
 =?us-ascii?Q?vDYEMSaHyK6r9/KOI4PJXBjpEOwdK9Uio+Cak3yruH9Oonqq7LCFZsFiPHlj?=
 =?us-ascii?Q?MG3MRarUgbar2N9CbWY=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bac5c17-d592-47ea-0bba-08db9e3501f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 08:44:30.5502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I+3Jp2im3Bn9m+JnHggRETnt02YPlHtMsheJSgP0OBdTo8TZFBT3Y/tXGQ0TZ1HsJ/AK87wmzKfpEjFrqhw6Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7497
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915/tc: make
 intel_tc_port_get_lane_mask() static
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

> This function is only used locally, so make it static and remove the defi=
nition
> from the header file.
>=20
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

LGTM=20

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 2 +-
> drivers/gpu/drm/i915/display/intel_tc.h | 1 -
>  2 files changed, 1 insertion(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c
> b/drivers/gpu/drm/i915/display/intel_tc.c
> index 71bbc2b16a0e..de848b329f4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -260,7 +260,7 @@ assert_tc_port_power_enabled(struct intel_tc_port
> *tc)
>  		    !intel_display_power_is_enabled(i915,
> tc_port_power_domain(tc)));  }
>=20
> -u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
> +static u32 intel_tc_port_get_lane_mask(struct intel_digital_port
> +*dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	struct intel_tc_port *tc =3D to_tc_port(dig_port); diff --git
> a/drivers/gpu/drm/i915/display/intel_tc.h
> b/drivers/gpu/drm/i915/display/intel_tc.h
> index 3b16491925fa..ffc0e2a74e43 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -19,7 +19,6 @@ bool intel_tc_port_in_legacy_mode(struct
> intel_digital_port *dig_port);  bool intel_tc_port_connected(struct
> intel_encoder *encoder);  bool intel_tc_port_connected_locked(struct
> intel_encoder *encoder);
>=20
> -u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
>  u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port
> *dig_port);  int intel_tc_port_fia_max_lane_count(struct intel_digital_po=
rt
> *dig_port);  void intel_tc_port_set_fia_lane_count(struct intel_digital_p=
ort
> *dig_port,
> --
> 2.39.2

