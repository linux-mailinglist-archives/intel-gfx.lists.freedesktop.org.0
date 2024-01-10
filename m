Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E04908297FE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 11:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2347010E765;
	Wed, 10 Jan 2024 10:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9310F10E75F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 10:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704883813; x=1736419813;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=siZ98K6uaqyxkutR8RVXeCHAtzOv8/4BnlEqi1UGQ2g=;
 b=BNdIxQfPEFXqVr2W/YRg2AKTPx9mYLf+0DFSKfhjaga9z/NpX5Je/GIH
 7P0LZkWMBxzxLQQ54tzdR8qsaiPI9XJea6xN7s+o63uc+B73syr805my/
 Fr0ifbHV+FxqbIR0ahb4S5u2gNh9gGw43Tr1LQYMJEo8Zz69osV/wZ5i/
 SBvl/qOKr7rsXSWy0261o9WjtLfR0T2fGfOmBe4RedmNMyVYMsbXJR1UU
 FneN8M46pZW4xK3lAatefQVw8QDJtS066Pbfr1G+0C3P1gz9jGqQRdNhB
 o/uOk0XCvp6+rhMCqQre0bvME0p6ML/9VvlxicylX1tiDqCJCrC0qVJ+k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="5254995"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; 
   d="scan'208";a="5254995"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:50:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="30551322"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 02:50:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 02:50:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 02:50:10 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 02:50:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Axb14/beHNGea/KzYGmLSFVxe9CrT2kgL49lWJ+iTvUt1iKgpyM+yZ6/PreGnuzwbbEhv6Px+bzPGXbcJ+sBdKalTsl7j6eWtA3EKwFSfH2SmXKgoLbvGO2uGPJ0H4ncyqLdUE+vKOQucpQG44gWO5mTuT4Pis4jbPSjp26wQrey7l/pWnqXLp1uc2YPn+wug4wDvDTdfa0AUuBXzLS3wvSmzMdJ2QOUQv+pslMFijeJq4CulCKstO3yej9gPIT8ADQlaFdpFXWi9Z0l1MKNDXEQltCZ4ay3N/cda/eAUnEVpYF+ul5ZG//gIrcqJp5M4qAjoMbvBLFq9Y+wHwPP6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=InIDE2WP1ei/Wfq55DQpyy3T600rDnJ1p05ruRV/Aac=;
 b=YZLW9yQ5SSXwbkWhWcnhnNvdCgIEvHTq5S8lvx+55zk3wiMXcnbEute6ajes8BnetA+TWyCQNoWyR/nECHVSRbKjVmfsGpavAfdl+NXJulhwwhmsQz6Bqsk8JAthPvVRfKOrLAhwM+ebetmrfHkUbeWCYsCnwoyuyiM1Jjk50+bVgTGcOYbHdjQJygoFbvMyXQ1tGhvoN9DXskyB7UQvwl6P2TXOv7qSpx+l9AkDlYWPMoni3VqYW+omAlR0yETBlSR+/kEdVCZrh9wfMKCvoc7XJDqokdIZNJpRW+aat3WuASDqcXcQbMq8vKY29C61xnUAsB43vhhUnE3xh0l5pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB6879.namprd11.prod.outlook.com (2603:10b6:510:229::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Wed, 10 Jan
 2024 10:50:03 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7181.015; Wed, 10 Jan 2024
 10:50:03 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Topic: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Index: AQHaPiWugxUDmfbxeEuHGhQ3RnYr6bDP8XUAgADan0CAAHPqgIAAAFOAgAGoflA=
Date: Wed, 10 Jan 2024 10:50:03 +0000
Message-ID: <IA0PR11MB73073A46D0967A2E6A569165BA692@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
 <875y04x88t.fsf@intel.com>
 <IA0PR11MB730740C0117353DC60DAC4B4BA6A2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87zfxex3do.fsf@intel.com> <87wmsix3bq.fsf@intel.com>
In-Reply-To: <87wmsix3bq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH8PR11MB6879:EE_
x-ms-office365-filtering-correlation-id: f6344f42-1baa-48d7-6788-08dc11c9e690
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2orG+ef6C+XieK5ciFhtZEhmOiXo/0JOa9PodQge0AmGPJUSEsRSsrXeahcWuspKrlRO6r2blWc+gnqjgTY01ThLcHANcj8PYROWBspRDYU9mGxpNURY9b+tjSdu6bcBoIie+8H0lh8GOuGvCeaxRGC1Vp82ZVXQFwGs8YJedPL3lNL0a0IV3RPjLKk2Rn40lCA3RNovT4WJsUdyGB6oc2PkVQp9XOZqP40htXCgGn0A7HFVEz2wY/FKNjHxvIRTf8nsmIjWBOOm53E778UxS+7nNGcG4sNxRZiV0nHQZuWGv8Tj8OipGW9N32T9C0Cg+Wj7h566zltqsX/719NJSLGpekjtAyH47be25Gg5M8fuKmTGYKLJLpo0wRk5ngPAw9ZY4KVWMm0FehMYJEjG6L8zR9uqc7TGAST/YpTVM4SyeBlH21U0GLZ6icjphWMsK1g0QrHOjUGmqefPc/VY2ljJO8v0e96Gx2xDx1ae/S68UUiucU5T58IEtu7tKK7vGuYN/veduN2b1iku32krVm9UELBL2YlReXn5bAPBTNBp/mbebRZdlJ/wd3upcbI/1aQyoh4ACwoiOymRoDsyfuaFEZfi+zL2wugUzNCkShKdjRPBdbA86CinVmqZkoIi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(376002)(346002)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(5660300002)(41300700001)(2906002)(52536014)(38100700002)(122000001)(8936002)(8676002)(33656002)(82960400001)(86362001)(83380400001)(478600001)(53546011)(9686003)(7696005)(6506007)(26005)(66446008)(64756008)(66476007)(316002)(6636002)(110136005)(76116006)(66946007)(66556008)(38070700009)(71200400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?79YO7rPOfiMCS628Jkr5rqT9X6q098ZPNl81oEggEP/IsdszFnhMAyYZygNy?=
 =?us-ascii?Q?S9VRGz6lyXo9Yaq65OQU0Kk2cfBXATGDdZ1/tsZMifucj5LKytaZjaWoKRmC?=
 =?us-ascii?Q?n3hlUpUb8mPP1syCqzAdV72wVZaH5y3VOxqdc6bFDqZkPpTzmjsVe63Vor/m?=
 =?us-ascii?Q?50pROugqkLtm3KN2jP2it2+Y5GAzWQqniuh02QhTzx5gFFT6myTy5/cX8UgU?=
 =?us-ascii?Q?ofFnNVCBzHc8p9QIY3quao0PeJKgY17aOunh//jfsT/lEaNRGHIPiy/iZFa6?=
 =?us-ascii?Q?bFzUeGoM6VRufuw7JTAR8h56gWu5wKsZrt0vvflqiDitqCU6lSXoIiQ4Fles?=
 =?us-ascii?Q?/hTimNGvZF8SA2+kk0ko13pubwcVdTVnkaDFoZE/7OhLW30W8FWD4eFRGIZI?=
 =?us-ascii?Q?cQ8DatftlQoY28pqOmgs+dW+6EppUB9Rdm3cUbqlVQoPR83E4rYfrJfr68CF?=
 =?us-ascii?Q?12+dZT8XxIbT4rI/1H+GoiBp1TzF+g2gg5YoCIrApint1LRuRItzPTz3gWHY?=
 =?us-ascii?Q?6qVUymJSa+4C/CmtjG8gm2Wj85yU+aPa8UuJN5Jc0LH3Ei4xdnAzZLlstV9h?=
 =?us-ascii?Q?gSywwx5RYU7Hami27j4+c9d1uiuirBXA5sz9VSXbmdWczO3nmr9UbouKpUn4?=
 =?us-ascii?Q?rn6MmJq0FFTzJm3C6pxzzS8yn6sf1xVO2qZyGag+zaBouYgppkeNSFU3gJBF?=
 =?us-ascii?Q?ehTOHXolnELhqreQkfXFTIlGIWL3B3gZN2oFdUvLtQAZoFhrO+kJslNdJiiD?=
 =?us-ascii?Q?4xt+C+AETkP0N5LWAF7wMGvE7Aav7MvAu9X/Ki9hTt2PPQ6Z8ZSw1vgRPDXS?=
 =?us-ascii?Q?eYE0En1SOsCtgjFDqGi4NfvDNPpG7OnsMSjYwj6o2NzZuwh5KaD+z0jjOUFe?=
 =?us-ascii?Q?TWZ/ls+NvOcI2yaB0VzBHmMT/QelgVAw+ts7uy/X73b+VpbkT6k97yi+1pFJ?=
 =?us-ascii?Q?aWw9z171+hRvZ6Gm/Fv/i0EQsvMqUFkgDrUR1b2TymWAUnlmWNEtQ2oTty86?=
 =?us-ascii?Q?G/5m8xCBUZKYPyd8Fve1PJvn8anpnhwvq7JGtoINRRyfA35e3eTYryUPIFpx?=
 =?us-ascii?Q?8Dz9EXD0dAHqZZ67/gbxtJOLq+c9mc7jD/SahrSaRRKoyaRV/FLwAPuwFAos?=
 =?us-ascii?Q?C4V881Evns/FNiceveE+GEbxhrOMJiL1PIylaf4tZ9n+AfcPcJnBUPU61bm+?=
 =?us-ascii?Q?9Pq3V/pCGn5PgplXWE5CEamW5bAz+FPFU24sB9gbtMaA4T8iny+cKpLmqLxi?=
 =?us-ascii?Q?7REfx18Viv0+R7fmPeAbIRDnV+Hieidu8/6cRsqoELCIszIhfwyUnpnm+sF/?=
 =?us-ascii?Q?T5mox2zI/pgNMV/jQaWJNVHTMcLTLOGGGQpmfwxe7U8GSynicnA9g0yC3sb/?=
 =?us-ascii?Q?zRnWXQsZQZbH3JAft2GMVHhB4LfcWFDsEI6cJy0n4aFqgwSnjkjpD1ljW5Et?=
 =?us-ascii?Q?hW4TYviQM9HVIZBEOFytlZW6zmk+yMRtfRw+WyeXGmnjWjJxSGhG8CeEuDEs?=
 =?us-ascii?Q?OgG2szLInXMZmahgU9t9GRXWILKGb8CfODgC0owGuhfN2BCQ/CUj5LGoqKcK?=
 =?us-ascii?Q?24teNrob7anmeyuUybdsyE+y19UPQAHcDDPN7r/V?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6344f42-1baa-48d7-6788-08dc11c9e690
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2024 10:50:03.4045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J7VHzgTkGCypdZdaQoRmuLiPOwARu4iwnoZSmPj3VypBK1WhHHnBlOXksOxzDgXsJ0ExUcJTdxL/BU/EQ3zZXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6879
X-OriginatorOrg: intel.com
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
> Sent: Tuesday, January 9, 2024 2:59 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Deak, Imre <imre.deak@intel.com>
> Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
>=20
> On Tue, 09 Jan 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Tue, 09 Jan 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >>> -----Original Message-----
> >>> From: Nikula, Jani <jani.nikula@intel.com>
> >>> Sent: Monday, January 8, 2024 7:01 PM
> >>> To: Murthy, Arun R <arun.r.murthy@intel.com>;
> >>> intel-gfx@lists.freedesktop.org; Deak, Imre <imre.deak@intel.com>
> >>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> >>> Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable with
> >>> SST
> >>>
> >>> On Wed, 03 Jan 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >>> > With a value of '0' read from MSTM_CAP register MST to be enabled.
> >>> > DP2.1 SCR updates the spec for 128/132b DP capable supporting only
> >>> > one stream and not supporting single stream sideband MSG.
> >>> > The underlying protocol will be MST to enable use of MTP.
> >>> >
> >>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >>> > ---
> >>> >  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
> >>> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >>> >
> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > index 9ff0cbd9c0df..40d3280f8d98 100644
> >>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>> > @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp
> *intel_dp)
> >>> >     if (!intel_dp_mst_source_support(intel_dp))
> >>> >             return;
> >>> >
> >>> > -   intel_dp->is_mst =3D sink_can_mst &&
> >>> > -           i915->display.params.enable_dp_mst;
> >>> > +   /*
> >>> > +    * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR
> >>> > + rates
> >>> then
> >>> > +    * DP2.1 can be enabled with underlying protocol using MST for =
MTP
> >>> > +    */
> >>> > +   intel_dp->is_mst =3D (sink_can_mst ||
> >>> > +
> >>> drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
> >>> > +                       && i915->display.params.enable_dp_mst;
> >>>
> >>> We use drm_dp_is_uhbr_rate() in intel_dp_is_uhbr() to determine
> >>> whether the link rate in the *crtc state* is uhbr, and by proxy
> >>> whether the link in the *crtc
> >>> state* is 128b/132b.
> >>>
> >> Yes! If the link rate in crtc_state is not uhbr then we dont enable 12=
8/132b.
> Also the return from drm_dp_read_mst_cap() return 0 or 1 and if not mst t=
hen
> 128/132b is not enabled. We need to deviate here and a value of bit[0]=3D=
0,
> bit[1]=3D0 in MSTM_CAP register is 128/132b with SST. Hence this hack is =
added
> to see if the return from MSTM_CAP is 0x00 and if uhbr rates are supporte=
d
> then enable 128/132b.
> >
> > Per spec it depends on intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> > DP_CAP_ANSI_128B132B, why not use that here too?
>=20
> Also, shouldn't we ensure we don't try to do more than one stream?
>=20
Yes, this will be taken care of in a separate patch, tracked as part of sep=
arate JIRA. VLK-55112.

Thanks and Regards,
Arun R Murthy
--------------------
> >
> >>
> >>> There, we've already decided to use uhbr and 128b/132b.
> >>>
> >>> This one here is different, and I think it's taking us to the wrong
> >>> direction. For example, it should be possible to downgrade the link
> >>> from uhbr to non-uhbr on link failures. We don't have that yet. But
> >>> this makes untangling that even harder.
> >>
> >> Yes upon having the fallback, I think we will have to handle fallback =
in this
> case separately. Change might be required in drm core,
> drm_dp_read_mst_cap() should consider the DP2.1 changes to accommodate
> this 0x00 value.
> >>
> >> Will be floating the fallback patches very soon.
> >>
> >> Thanks and Regards,
> >> Arun R Murthy
> >> --------------------
> >>>
> >>>
> >>> BR,
> >>> Jani.
> >>>
> >>>
> >>> >
> >>> >     drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> >>> >                                     intel_dp->is_mst);
> >>>
> >>> --
> >>> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
