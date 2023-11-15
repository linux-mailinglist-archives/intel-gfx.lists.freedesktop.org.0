Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0EE7EC417
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA6B210E059;
	Wed, 15 Nov 2023 13:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B456D10E059
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700056274; x=1731592274;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qj+j+gNTgGO+776uljpk69wR1/ggcJala53hCowNq2E=;
 b=V9so7WPGKJMQkbySF/6cKlNluLlLl/QokP+KQ0ARLQ0+6do4kOA0Ughi
 zg2f6pCaAH+PDJDhkCGolKP5XadYOucz59mfM3fCIRoRqrHEoKTh7bbme
 EKM69VLbcCdobMwcOenlg0f5sysBap97Y0Jyd609UPuP3J7mynUiSByzn
 6dTVd2J3rjNp+vSCTkH9TETqYjtFIoemJxZ7k/NkEZyWIVTvCJfjauFMd
 AFn76PcKdDEEyWFoOGb/vYGhZv60FZUrl6OgJU9u/JxLqRXlJF6xrfGDQ
 bHSc+hiUtwF4MQfxdEzHTVlEHBQuy6XP8mkkNOe5QIxTxh+Pfh6tZmbnO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="393734445"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="393734445"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:51:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="12790062"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 05:51:14 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:51:13 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:51:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 05:51:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 05:51:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bWykHi4IahC1a0qWNBroQ0ZINfsQ0dQ3Vg27SOvZOswO/2X7/pdLqGoy8xjjJFujUkcMxCiEQKhihIMAhwhbIaHMRxAYsWSSIQppweEh9p55ph3oOKiFgq1vgPjUHflSva6Lc7w7Of5EiWrhsPBs9t3myw+/mpygdZxB9WXGcNkwk5ElQhHKy1TZO/Mxz1R94k0zhNUs1VJD1GMkfRfJWIRx6LWhqKj/YCxdB8tDvJxjm1w4aI0R0oNd/ad4dzPmQpPSPD5QL/EAwk+luazLADHOCKwfsAJJ2PxZHpFNAPEuqHkqigG04ajCtEnmvBHNUTYG7nzMGwhb8gpnv3gxWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hEsDUWrlBDNcuMZFbS51r+bW03sfzuKF4sNlOoV7eok=;
 b=IOsGObN1zgnppd6yP22ctD8EePSbEf+QFKuZ4gto1shJysgwuVDw9g6wJ+UJ0t2Xl6XVu/SheZ9jTcsQOZbLcK22922QNLWjsUo8SndnqfAEGXieFqMqmqbZ5uAowAe6o4q7xIYH/vEUYSzkYpNSX9wCeyNCc6sC/A+HLUr0cx73gzONhkAiA8oMZzzOdvfVJ6z9lcZvquSSg773CKSbm7RysR8gUw7pVAhTLH2gNbwZGTjvTOqppoqT5uBp3kKT17KXFBzNp5uVYm3Y1zqZ39pd+jLNtJrXd5jmppcYBaaAmmxVLaU60nHJmDw/MjsB8i5bRdn6Af8WJGj6Olmv1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MN0PR11MB6157.namprd11.prod.outlook.com (2603:10b6:208:3cb::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.17; Wed, 15 Nov
 2023 13:51:04 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::f5b4:48e7:2fb2:d788%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 13:51:04 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 2/3] drm/i915: Add Enable/Disable for CMRR
 based on VRR state
Thread-Index: AQHaF44KjBg/wJwtb0W60aukFobubrB7E78AgABSo8A=
Date: Wed, 15 Nov 2023 13:51:04 +0000
Message-ID: <IA1PR11MB63486D8070F3F0514AAB2793B2B1A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20231115063054.3754600-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115063054.3754600-3-mitulkumar.ajitkumar.golani@intel.com>
 <87msvfqtud.fsf@intel.com>
In-Reply-To: <87msvfqtud.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MN0PR11MB6157:EE_
x-ms-office365-filtering-correlation-id: 46cf6559-52ca-4ee3-60d9-08dbe5e1e94b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 26/DlRGV2p8b/ybK5+5s5b9OoPpxrHEKgXm2a2KtDaNEIGt9SPDI+vajhgEopmKX06AD4vk45pPGWA6AFk37P+WsmrJ9+8JmX5FAQDfYm9N5aiEFAS5wTJnQ3OsKL30O9jHaR3AKSiFSTanAfGtYvi9bcSas1O2l1sgZBqx2uZ+YmQwoRYvqW2iYWut7TA2cR1RXPdXeNRfuMZKv/SYrZBgGHXYskb9rXLKqcyl3alOO2u3TbgDsxL6PRJEy7NjY6FMV8F6aaBpbz3a6daEjWz3b74nJqgh5NViLQun6cOCBmlShHrOaZJFIcnIg2Q7lkqtrjWUiu5sBocAsvObTL3dku2+LZZ1mmG7YhngCxuyfTiP/WAjAXsiLLQ27FytqFEWgZPIz8pEL4Wx+Dr8P5N1Scdn6kDgbLsyMhJBifQNhqa4pl1y7FoVHi5flpWz8jvPMssi2H0znayStTdcoChCiKPe5l1g9bUhR1iYhzeOSOfSKmvXyYDIkGdl+BxNVL2d+a0ZLzU7buucFuUADNN4hvrvnZHsP9fZrOWeYAcZbbRUStApF7z4hN2zHDm2kAF6ysn0S0C8lYnYVXiCSnkid6SiVXtvZy5XxbSmt7ug=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(346002)(39860400002)(136003)(396003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(38070700009)(55016003)(8676002)(8936002)(71200400001)(9686003)(55236004)(7696005)(2906002)(4326008)(53546011)(6506007)(83380400001)(26005)(41300700001)(38100700002)(33656002)(122000001)(82960400001)(5660300002)(52536014)(966005)(76116006)(54906003)(66946007)(316002)(64756008)(66556008)(66476007)(66446008)(110136005)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+MjD4NslufxxXI9QfKo12ZhJkFDZGHlJvfea9VwENlfDsBrfDwrwhd+YzI15?=
 =?us-ascii?Q?CDjL9u2fhDOAgmqWaWfxsE24TfK6AFsaFfrRjcqsJXSqG84P7z6P00J2LBxf?=
 =?us-ascii?Q?a04v9gBmg4oOMh4jL73MrOQkO2GQymeQXvIhqesG2zUp/Z/Vj5RrvbuHQR4W?=
 =?us-ascii?Q?1zrfbrdtonAvTxg7d4uKT8qMk2X3+Wwr9MHcBDKpkGqJES0ok08csbuiXY+W?=
 =?us-ascii?Q?oVJDZvuNxawHEHAYc0mHyq5/dZ1oBZjus1jD7Iw4hgk2FeEsq5xwCzzm6j89?=
 =?us-ascii?Q?BK0XLJ6XJ8rvd9ypNFj0qBxJ72C9zof8ngRPyO9HzxvMQTMt09cTeaKqvjkG?=
 =?us-ascii?Q?XqaBRTBihSTUghOQJWbFvsSwpBxHi49Digd/3VpXUeaM7yrRG3RhcvrLz7qx?=
 =?us-ascii?Q?6FJnncZKikfNDKlNaxdvQzu4JexlTX3JpVeAKqFeI2qtel58NW5r8e9OUblI?=
 =?us-ascii?Q?1xhZB0oEURYODCyvxSGWsw4D6LyOcYPZ7IJr/AfZsl6TOjojfc2oNXGkt/kY?=
 =?us-ascii?Q?MdGn3nQdgjewLhFNKNHqrCZrWjrSMyUQX0Ykuq8oHywfcGSorWO2vHbbIh7Q?=
 =?us-ascii?Q?oy/5lBxefbabiNOnP5WCFlRp/GtudwYGdyWpYxuuAZyG3N4GvFl18tpGktDp?=
 =?us-ascii?Q?x4HqdmTazgGzL59KWn9hrBAqYjJwpcPqjeLJ8JVNPPWNPc50CbabIZkFyB5l?=
 =?us-ascii?Q?G5c4149cvbH9LK2H+WLq5/ZgLLMxLtyLuwxOTiowK69dQ9D7Z62VHw4Gjm8M?=
 =?us-ascii?Q?X6P/z1SRZd3K25BplmAPzreyIkw/9ma0w8AQcR/ijaWQnT3xxCGVyzdWokei?=
 =?us-ascii?Q?idBZoh7qvjHs+8ph/4cmEdKS26tzDycndnmtSdRTalmkeE6qrwsNR1iTvj92?=
 =?us-ascii?Q?irqb3axJvQ9fIwehbiqrlFVkVwSsq1Gu4/MDUf5NbC3tdFF4WzztnYCvaH/o?=
 =?us-ascii?Q?UEU5BCx8x3HS3x41O/WDwOgC39891uCZwOH6N69W/Y1XeV1dwrDo0opt2rFq?=
 =?us-ascii?Q?pBAw82lJpsiHidr5vF6X/xlZVjMJZw0S1TmNfithWbm7jxiQjCI73bo6b7MU?=
 =?us-ascii?Q?nhR1ddISEr6FSVFGwyNpel4YgpV0xnLZJ5wCVuZ00rVIV8brRYTKZv9QuoBY?=
 =?us-ascii?Q?N3t05y0zkLwATUct9kpUcMXQJ8BXKQcrDdxc1JZ/mlrvuwksSyhp3GVIIS3R?=
 =?us-ascii?Q?AKjhDa3ChagQ5C4P1qpPyaJva+YEbeesQt0PggUjI3XumCG/t0+GoLxav984?=
 =?us-ascii?Q?3vXgmco7fDAKW/eRiK9sTaZDevLGwPUqiMRXON1pQgCt+7Hgk8pzwmNo2sWz?=
 =?us-ascii?Q?K9jMQw89YCC8KazWRiTGUgyfPogbzKk5q5+Gf/5zF1VVFBbOq1LF0FFRBFTB?=
 =?us-ascii?Q?6UvVDh+6s6/M39utf3i2BB3uL+Xb6DQil+2a3KvV8PSDVthafZv2M2JoV53B?=
 =?us-ascii?Q?6UIfk8Nr7YWvi873HX55IOFfEWWCV+Z6BXkBvjAPgeq3UrKRCm7vjAiqVgvU?=
 =?us-ascii?Q?MhMnrE4ogzBZt1Ckfq5MT6Do+RSVJOA/RjAM7B9sIQM6iar1WU5TW36Fz/dp?=
 =?us-ascii?Q?6YqbM1qzsU17cBKY/TERE3ohdUZQg+PXQB6k0rBFJdNzwKA1F0KV7bLmMtY9?=
 =?us-ascii?Q?d4/GiQy2nEW7LFmiICANz1U=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46cf6559-52ca-4ee3-60d9-08dbe5e1e94b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 13:51:04.7439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dScOYf90Q6++rYZCtIiRh+84kE7DCFbyWtCy9Jb3p/AuX0Uk+u1ozq/IbkWfedbY1Btt8GX8/aFTTyHUGfv19i/0H31CZObm/eCldAt7KojV2HDrrkNgaTEex+rIuY1j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6157
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915: Add Enable/Disable for CMRR
 based on VRR state
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks @Jani Nikula

Addressed all review comments.

Regards,
Mitul

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, November 15, 2023 2:25 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915: Add Enable/Disable for CMRR
> based on VRR state
>=20
> On Wed, 15 Nov 2023, Mitul Golani
> <mitulkumar.ajitkumar.golani@intel.com> wrote:
> > Add CMRR/Fixed Average Vtotal mode enable and disable functions based
> > on change in VRR mode of operation.
> > When Adaptive Sync Vtotal is enabled, Fixed Average Vtotal mode is
> > disabled and vice versa. With this commit setting the stage for
> > subsequent CMRR enablement.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
> > drivers/gpu/drm/i915/display/intel_display.c  | 24 ++++++++++--
> >  drivers/gpu/drm/i915/display/intel_vrr.c      | 37 +++++++++++++------
> >  3 files changed, 48 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 2d15e82c0b3d..908a4c4ccb00 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -299,7 +299,9 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
> >  		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
> >  				  drm_eld_size(pipe_config->eld));
> >
> > -	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline
> full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n"=
,
> > +	drm_dbg_kms(&i915->drm,
> > +		    "cmrr: %s, vrr: %s, vmin: %d, vmax: %d, pipeline full: %d,
> guardband: %d, flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> > +		    str_yes_no(pipe_config->cmrr.enable),
> >  		    str_yes_no(pipe_config->vrr.enable),
> >  		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
> >  		    pipe_config->vrr.pipeline_full, pipe_config-
> >vrr.guardband,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index f99d2de840bc..f5a69309e65a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -937,6 +937,12 @@ static bool vrr_enabling(const struct
> intel_crtc_state *old_crtc_state,
> >  		  vrr_params_changed(old_crtc_state, new_crtc_state)));  }
> >
> > +static bool cmrr_enabling(const struct intel_crtc_state *old_crtc_stat=
e,
> > +			  const struct intel_crtc_state *new_crtc_state) {
> > +	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state); }
> > +
> >  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_stat=
e,
> >  			  const struct intel_crtc_state *new_crtc_state)  { @@
> -946,6
> > +952,12 @@ static bool vrr_disabling(const struct intel_crtc_state
> *old_crtc_state,
> >  		  vrr_params_changed(old_crtc_state, new_crtc_state)));  }
> >
> > +static bool cmrr_disabling(const struct intel_crtc_state *old_crtc_sta=
te,
> > +			   const struct intel_crtc_state *new_crtc_state) {
> > +	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state); }
> > +
>=20
> See
> https://patchwork.freedesktop.org/patch/msgid/20231106211915.13406-2-
> ville.syrjala@linux.intel.com
>=20
> >  #undef is_disabling
> >  #undef is_enabling
> >
> > @@ -1064,7 +1076,8 @@ static void intel_pre_plane_update(struct
> intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> >
> > -	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
> > +	if (vrr_disabling(old_crtc_state, new_crtc_state) ||
> > +	    cmrr_disabling(old_crtc_state, new_crtc_state)) {
> >  		intel_vrr_disable(old_crtc_state);
> >  		intel_crtc_update_active_timings(old_crtc_state, false);
> >  	}
> > @@ -6754,7 +6767,8 @@ static void commit_pipe_post_planes(struct
> intel_atomic_state *state,
> >  	    !intel_crtc_needs_modeset(new_crtc_state))
> >  		skl_detach_scalers(new_crtc_state);
> >
> > -	if (vrr_enabling(old_crtc_state, new_crtc_state))
> > +	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > +	    cmrr_enabling(old_crtc_state, new_crtc_state))
> >  		intel_vrr_enable(new_crtc_state);
> >  }
> >
> > @@ -6851,9 +6865,11 @@ static void intel_update_crtc(struct
> intel_atomic_state *state,
> >  	 * FIXME Should be synchronized with the start of vblank somehow...
> >  	 */
> >  	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > -	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
> > +	    new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
> > +	    cmrr_enabling(old_crtc_state, new_crtc_state))
> >  		intel_crtc_update_active_timings(new_crtc_state,
> > -						 new_crtc_state->vrr.enable);
> > +						 new_crtc_state->vrr.enable |
> > +						 new_crtc_state-
> >cmrr.enable);
>=20
> Please don't use bitwise OR on booleans.
>=20
> >
> >  	/*
> >  	 * We usually enable FIFO underrun interrupts as part of the diff
> > --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 4aeccbbf1d2a..1e33661062b3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -224,7 +224,7 @@ void intel_vrr_send_push(const struct
> intel_crtc_state *crtc_state)
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >
> > -	if (!crtc_state->vrr.enable)
> > +	if (!(crtc_state->vrr.enable | crtc_state->cmrr.enable))
>=20
> Please don't use bitwise OR on booleans.
>=20
> >  		return;
> >
> >  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), @@ -237,7
> > +237,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state
> *crtc_state)
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >
> > -	if (!crtc_state->vrr.enable)
> > +	if (!(crtc_state->vrr.enable | crtc_state->cmrr.enable))
>=20
> Please don't use bitwise OR on booleans.
>=20
> >  		return false;
> >
> >  	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) &
> > TRANS_PUSH_SEND; @@ -245,15 +245,30 @@ bool
> > intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
> >
> >  void intel_vrr_enable(const struct intel_crtc_state *crtc_state)  {
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc-
> >dev);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20
> Unrelated change.
>=20
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >
> > -	if (!crtc_state->vrr.enable)
> > -		return;
> >
> > -	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
> TRANS_PUSH_EN);
> > -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> > -		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> > +	if (!crtc_state->cmrr.enable && !crtc_state->vrr.enable) {
> > +		return;
> > +	} else if (crtc_state->vrr.enable && crtc_state->cmrr.enable) {
> > +		drm_WARN_ON(&dev_priv->drm, crtc_state->vrr.enable &&
> > +			    crtc_state->cmrr.enable);
>=20
> Please don't duplicate the if and the drm_WARN_ON() conditions. You'll
> want to do this as the first thing with and early return:
>=20
> 	if (drm_WARN_ON(...))
> 		return;
>=20
> Then you can have two independent blocks:
>=20
> 	if (crtc_state->vrr.enable)
> 		// handle vrr
>=20
> 	if (crtc_state->cmrr.enable)
> 		// handle cmmr
>=20
> And you can remove the whole complicated if-ladder.
>=20
> > +	} else {
> > +		if (!crtc_state->vrr.enable && crtc_state->cmrr.enable) {
> > +			intel_de_write(dev_priv,
> > +				       TRANS_PUSH(cpu_transcoder),
> TRANS_PUSH_EN);
> > +			intel_de_write(dev_priv,
> TRANS_VRR_CTL(cpu_transcoder),
> > +				       VRR_CTL_VRR_ENABLE |
> VRR_CTL_CMRR_ENABLE |
> > +				       trans_vrr_ctl(crtc_state));
> > +		} else {
> > +			intel_de_write(dev_priv,
> > +				       TRANS_PUSH(cpu_transcoder),
> TRANS_PUSH_EN);
> > +			intel_de_write(dev_priv,
> TRANS_VRR_CTL(cpu_transcoder),
> > +				       VRR_CTL_VRR_ENABLE |
> trans_vrr_ctl(crtc_state));
> > +		}
> > +	}
> >  }
> >
> >  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> > @@ -262,7 +277,7 @@ void intel_vrr_disable(const struct intel_crtc_stat=
e
> *old_crtc_state)
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
> >
> > -	if (!old_crtc_state->vrr.enable)
> > +	if (!(old_crtc_state->vrr.enable | old_crtc_state->cmrr.enable))
>=20
> Please don't use bitwise OR on booleans.
>=20
> >  		return;
> >
> >  	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), @@ -
> 280,8
> > +295,6 @@ void intel_vrr_get_config(struct intel_crtc_state
> > *crtc_state)
> >
> >  	trans_vrr_ctl =3D intel_de_read(dev_priv,
> > TRANS_VRR_CTL(cpu_transcoder));
> >
> > -	crtc_state->vrr.enable =3D trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> > -
>=20
> Huh?
>=20
> >  	if (crtc_state->cmrr.enable) {
> >  		cmrr_n_hi =3D intel_de_read(dev_priv,
> TRANS_CMRR_N_HI(cpu_transcoder));
> >  		cmrr_n_lo =3D intel_de_read(dev_priv,
> > TRANS_CMRR_N_LO(cpu_transcoder)); @@ -306,6 +319,6 @@ void
> intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> >  		crtc_state->vrr.vmin =3D intel_de_read(dev_priv,
> TRANS_VRR_VMIN(cpu_transcoder)) + 1;
> >  	}
> >
> > -	if (crtc_state->vrr.enable)
> > +	if (crtc_state->vrr.enable | crtc_state->cmrr.enable)
>=20
> Please don't use bitwise OR on booleans.
>=20
> >  		crtc_state->mode_flags |=3D I915_MODE_FLAG_VRR;  }
>=20
> --
> Jani Nikula, Intel
