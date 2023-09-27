Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 024247B06DA
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 16:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4976810E194;
	Wed, 27 Sep 2023 14:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACB010E194
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 14:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695825064; x=1727361064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o7wiZL0sPhq3EOwL+caGYIuxG/8Y62jjOeItuYAxhik=;
 b=LpDUWPv4I/uScO7Wi6k4tZJxuJqq6DhHoV6Q0wxXcUyYmWZSgQmNkszm
 rOvL+oRKNYBmGL8xdyptSNy4mp+IE6pLi2YS4Up0a39oyCNT9t11dJjiN
 +zUXfGvkZzvVDwOYNO44dU1dOXDBZkjsyZob/5r92LK757A5zwQnQ+zaD
 i7Xc9Zl+L9iRcCKVj4rZqY4M1MX3Ekz8AFBOc1WmRw7ybOO1A2QvE6B+0
 smBe9G795eAus7S2tHRy9MBVfdZKRvZUgPV1bAIzVPjczr8Az4SOnVm5C
 iYSRSomJGDqgMUW42iOAUY2gxCi9sSuvp/kGDORuJ/i6JYyR7Z3pWsVpC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="445969108"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="445969108"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 07:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="784344652"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="784344652"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 07:30:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 07:30:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 07:30:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 07:30:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i2tfjlNqBUsEaKESYjUNIDbmgYeWXNFK7OFgMrSPD/E1Eo+iYUDTgwwA8t9N86fnjOsgnEmhdUFhhODAB0QRqiI9cHROxQAuCvQ1QXU08z65gCxlj/wgsQDKt885dNCGFfBQ9MzVOY5MwdQBfcPEY9lzY8jpfk3MFQjY9zm2UAe0ZrStLte1frcnws0g3WhknylMoVS4p8H5E/SXrChYNoQcpOcOkJmsV3fKmNpmxEqIGfOC6tDVwifWKSDFAKOUMD+yExhwWRxNrHbWqk7li7b92HsWM/ZT55gpw/UHDFmX6kVCl91BTrW2gNDDvy0mrebzQRluo2E63sSYqNEUZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dllVAomntS2eFbcyHEnaJmxOP/dYG23uDmbUT034ysg=;
 b=N9RF2c9ewK+/6lzKWn8eiWa+AnJMVEVsL10wDQRMxr3CqytXGJd5koWx57yK74g59NT5i8MZwLxhBceH9jIIGoHgRfXSH6cg/Il8X3yhlMGDtcQli56VoibwbUdz191cqY2PubeG9Nqixg14gfnAiyLqKrCUgrSbngsqJ1yN0pxM6yhhuQ0Pas+VaNrZbRBoAioslFIe8Gfij3IFfj5HOnO0rifsCK+oBfE2bO8h6C9gHTr1Prw705K/1t295NYX1RgPfLDOsefTkZFwM95kBH7n4sk7ci7CdHVHX5P5bJ0DeS9uL2h8nM/OswoIh8yHyl5PJDHUuBBzKXkWfIASGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.28; Wed, 27 Sep 2023 14:30:52 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::c013:26f7:5743:995b]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::c013:26f7:5743:995b%6]) with mapi id 15.20.6813.027; Wed, 27 Sep 2023
 14:30:51 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Remove the module parameter
 'fastboot'
Thread-Index: AQHZ8FrEgTiIxnZlv0eDyqGHf7U1lbAuo+CAgAAZsOA=
Date: Wed, 27 Sep 2023 14:30:51 +0000
Message-ID: <DM6PR11MB31771CD3D754CADC9781E298BAC2A@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230926091157.635438-1-arun.r.murthy@intel.com>
 <ZRQm7Vq9Lz8XuIv9@intel.com>
In-Reply-To: <ZRQm7Vq9Lz8XuIv9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CY8PR11MB7874:EE_
x-ms-office365-filtering-correlation-id: 9c14d85a-c77a-44a7-fe85-08dbbf6659ea
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h4sSb5aL4D/agYiUCdjfDlEFjv+k64z1hJMJoc7nWFkgFDbaHuhisvfw77c5myhElGmh9hgw3DBGP5VT6AEIvNjKVMruDgtgNfqJuN/AsYv0h9REPejgyE5ajOWYTaY7AQEyQTxZvBSq92F84K+6mr4fo+74MzPhtymb4s04rnCIR0TeEj/pPxoIW4yYrOn/YXNH76opsS12kl25+24ad4KqghkZb6kqtht032FtibshzJ3hKFDZH6MSmkLRb3zWwqgmuYn/of9p2iKw2sHwvQZt47w3kTYm6SBHlHay1W9H2/a3OcZEgtvIqpHOTb7UPqSNpMHNlnm6JeXyQOk2/5ONSc+Ps49seqd2gumNlRd+IZx0Y5xdk0lY3Qmi6r8yz5z/uZRiMh3rvFXOJv0qZdH+DEAuYBabp8XWYduE9fnoa0DzHMeSC9hMVVipa8U55ekjU8T5fqFZWUY+nPHv24IOAcAazV2XdIFWrMbLEJfMUIePnfnirY/TxWmQq/OPVW6NUhr+pnV1tSQJ4aT1VNhusx4r6T3SbkyBvbh99t7m9/dJsnGlZnBagGmQkx1MIGxCsmNT6ym44rS01VhzkFQkl5o250abUcOJnQZ2veMH7bmHoZWPrxrmoWisYI/o
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(366004)(346002)(136003)(230922051799003)(451199024)(1800799009)(186009)(7696005)(55236004)(53546011)(9686003)(6506007)(38070700005)(122000001)(38100700002)(55016003)(82960400001)(33656002)(86362001)(2906002)(71200400001)(8676002)(478600001)(26005)(66574015)(5660300002)(83380400001)(8936002)(4326008)(52536014)(41300700001)(66476007)(76116006)(66556008)(54906003)(316002)(6916009)(66946007)(64756008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ebUSgTYAjYfbWAm3jkR3IPQWf+Fsk44hz9P8ABc5jBagWbw2FUhG+wxQxs?=
 =?iso-8859-1?Q?/TsrTLshcJgFI0TmNurdxZ9V0KhBFlckW2bkGXBdAjjx/5eprxVzeaYPmG?=
 =?iso-8859-1?Q?DN3E1Sw9cS+UO/v97AAFDMQPD46poh1vhy5OYlMmsqOBz8F47T3PCdT9QP?=
 =?iso-8859-1?Q?0wUfejwVYXhhxh2rvDKIgQER92DwmIKx8lUyDEXvG8j07I/lapT5xFEpwX?=
 =?iso-8859-1?Q?drZK11SSrj4KjO3/MQilbY9duO+uPaPQUj6hbFeuGSSAnSWicw/U6e7iNr?=
 =?iso-8859-1?Q?FpteGa7GEJaEeVPhsoXJcPpuYvfD8f/ty95mv+ABsmcWFBFOM7HHFC2s5l?=
 =?iso-8859-1?Q?2XpWg3808L+BUVGC3KAmACCDRxnzvOwZFRmNoMehifVc50uUSNUVSwvtKM?=
 =?iso-8859-1?Q?+yO4X8GNfOK+xYqWXJMOEGyvUdxOsfdPYuS3aqzvDpU6x9bH9GhehVWKXx?=
 =?iso-8859-1?Q?l+mMB3ATo6LqWc8xOKXFwpsivy4A9fpGL1d9DWm0k5ozGaNCGP6ws+Uk4j?=
 =?iso-8859-1?Q?romM8ROMSOR7BQCnYxwo7k8/ypFIIOIP3JYYRo+L3flRkQE5p3lKIYiZpj?=
 =?iso-8859-1?Q?Zmy63efNCGKt1UwW9M+xWUjh+Q2gzhM/+Vs4WZVZcOPQ1Y4bus9fekEYI/?=
 =?iso-8859-1?Q?pyCMW6sKMROS0mPGiuZxKIzIfGZseVedEUzCOD2TCSGe2DnjxTeVfkUBtj?=
 =?iso-8859-1?Q?Upf83izirRgi6Vu+bTS2RrrRB+a6tzm1lZQ5Wfgict1JbayvKDAw6cb6Ky?=
 =?iso-8859-1?Q?K7vJVvazpi1LJMNNIyEjIIiGnCRlCybOc/rvIqMp1zB8YnHVHqabViIAjo?=
 =?iso-8859-1?Q?ERbAY+RWCCDZ//4Jz8FeYGtLfjv9WucvTdYcJGaUBD6HFMY23y8909ggGq?=
 =?iso-8859-1?Q?U8jUQh719waFYV/mjNw4E8YN0fVAvZycG4h0ZNGiq8qvQW0F/mlY9Wh3rc?=
 =?iso-8859-1?Q?6wynR3nWgidvrQd8W7vLD5X+izvNojQhfg5HDwR+CLXA7/oH/EpVxheTzj?=
 =?iso-8859-1?Q?7N+Qk+m0mAr2G3s4pSaxph5LRuFYCyinxAgI28KfdMaH9Es0wj9bO5DuM2?=
 =?iso-8859-1?Q?Wo0SXCBSKak9YW/n4RacsEGyqS0RVKIeozomwp2ay/2hDAONO4HJkT3WPJ?=
 =?iso-8859-1?Q?+e/LJcCgZ0O3W7+jqtTG2tZSnoWFju+flNUAPAQZf+v0EIcnJKJjVmKWos?=
 =?iso-8859-1?Q?ObrEeJr6ECWzrfLB9luau7k5zN/FV4q4YSZ9F6gRiTIhe9zWIeylCX3nid?=
 =?iso-8859-1?Q?SpYzFlomlQrqGFVwwM7KufF+ByfEKXU3EPg0LqKyTjbHyDr1AoQwFbrAuL?=
 =?iso-8859-1?Q?H2uK5M1qXzUjBSTHyvaH/umt6TQZdXsCvLPjDqGEUbESsyfaUPz1MZM2Yz?=
 =?iso-8859-1?Q?rCJvAmauzHECw/LwTJOBLOYEmWgyDPsfLz9QO+wzKxVTS+fZgDiLHjm95i?=
 =?iso-8859-1?Q?KnsOOwQBO2hVdr+pweBkVJPDflyFzKv3SXOBxt9DzyyCtJolOqZp9HgXpn?=
 =?iso-8859-1?Q?0qa5soArTyiYOXxADTaor6GH+O8n0g9IuMDSa8lUgNNUZ4g210iQbM4Xar?=
 =?iso-8859-1?Q?jDOSb+xzg9dJLyP/piv+TngqXSohvJVe3wxfS3VqaAOuCVmIWvKD3hSphH?=
 =?iso-8859-1?Q?8IjU2iCgbl/ExTa/QRmgKDlbvsemqcKKNI?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c14d85a-c77a-44a7-fe85-08dbbf6659ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 14:30:51.9160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 10/EsP1RsdeZgAyq8+3lZamg5WvBA2nVilFqSU3SyMsaXMZCh5ycCG+xxNS0hNE5rrQfd1c6+EO0Vw1VtafpRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove the module parameter
 'fastboot'
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, September 27, 2023 6:28 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove the module parameter
> 'fastboot'
>=20
> On Tue, Sep 26, 2023 at 02:41:57PM +0530, Arun R Murthy wrote:
> > By default fastboot is enabled on all Display 9+ platforms and
> > disabled on older platforms. Its not necessary to retain this as a
> > module parameter.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 3 ---
> >  drivers/gpu/drm/i915/i915_params.c           | 5 -----
> >  drivers/gpu/drm/i915/i915_params.h           | 1 -
> >  3 files changed, 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index edbcf5968804..9d6e2d19d636 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4986,9 +4986,6 @@ pipe_config_mismatch(bool fastset, const struct
> > intel_crtc *crtc,
> >
> >  static bool fastboot_enabled(struct drm_i915_private *dev_priv)  {
> > -	if (dev_priv->params.fastboot !=3D -1)
> > -		return dev_priv->params.fastboot;
> > -
> >  	/* Enable fastboot by default on Skylake and newer */
> >  	if (DISPLAY_VER(dev_priv) >=3D 9)
> >  		return true;
>=20
> I'd like to see a patch to eliminate fastboot_enabled() and associated lo=
gic
> entirely. Could be a separate patch I suppose.
>=20
Sure will take it up separately.

Thanks and Regards,
Arun R Murthy
--------------------
> > diff --git a/drivers/gpu/drm/i915/i915_params.c
> > b/drivers/gpu/drm/i915/i915_params.c
> > index 0a171b57fd8f..036c4c3ed6ed 100644
> > --- a/drivers/gpu/drm/i915/i915_params.c
> > +++ b/drivers/gpu/drm/i915/i915_params.c
> > @@ -137,11 +137,6 @@ i915_param_named_unsafe(enable_ips, int, 0400,
> > "Enable IPS (default: true)");  i915_param_named_unsafe(enable_dpt, boo=
l,
> 0400,
> >  	"Enable display page table (DPT) (default: true)");
> >
> > -i915_param_named(fastboot, int, 0400,
> > -	"Try to skip unnecessary mode sets at boot time "
> > -	"(0=3Ddisabled, 1=3Denabled) "
> > -	"Default: -1 (use per-chip default)");
> > -
> >  i915_param_named_unsafe(load_detect_test, bool, 0400,
> >  	"Force-enable the VGA load detect code for testing (default:false). "
> >  	"For developers only.");
> > diff --git a/drivers/gpu/drm/i915/i915_params.h
> > b/drivers/gpu/drm/i915/i915_params.h
> > index 68abf0ad6c00..d5194b039aab 100644
> > --- a/drivers/gpu/drm/i915/i915_params.h
> > +++ b/drivers/gpu/drm/i915/i915_params.h
> > @@ -72,7 +72,6 @@ struct drm_printer;
> >  	param(int, edp_vswing, 0, 0400) \
> >  	param(unsigned int, reset, 3, 0600) \
> >  	param(unsigned int, inject_probe_failure, 0, 0) \
> > -	param(int, fastboot, -1, 0600) \
> >  	param(int, enable_dpcd_backlight, -1, 0600) \
> >  	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
> >  	param(unsigned int, request_timeout_ms,
> > CONFIG_DRM_I915_REQUEST_TIMEOUT,
> CONFIG_DRM_I915_REQUEST_TIMEOUT ?
> > 0600 : 0) \
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
