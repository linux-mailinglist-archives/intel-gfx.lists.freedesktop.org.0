Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0236A85E8EF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 21:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C8F10E1CD;
	Wed, 21 Feb 2024 20:19:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NFg2lgzE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6CCF10E140
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 20:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708546783; x=1740082783;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zM9JaR9cQF0d29jvKfapNgAAqsh2n60HKWUgclttHCI=;
 b=NFg2lgzE3i/Ig63LkXY3d17csZFFwcbvWjvbi+h9g1Kfp6+APcFPlbzM
 nymcyTRighjmllH0kwnjh7I7D0vDP+I3Egt+KhabAnr+JOGbVzFS6oAjY
 gTGter7DqqImpFfdtrQztzldvZgsCfvQHPKq+mxIAu50Tp42AFfc6sQuR
 khiNtT+r++fK4BcF2dn1HHIBMyxOrRoePq/eSAjwt7U9LgH6rWrkulcRI
 yXQdxzvqMsmvFcNgueUJuWdg5HUn5KA5QsgsngLexFt90gW5acjJxJWdx
 nTiSnLM8L5cEp0/Ot1bcLwjJGAXSZk3GjB0wv3iwGr50Bp6F0RGDtoag7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="20277515"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="20277515"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 12:19:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="913365543"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="913365543"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Feb 2024 12:19:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 21 Feb 2024 12:19:42 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 21 Feb 2024 12:19:40 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 21 Feb 2024 12:19:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOF9g5+2GQvD2Oy41fC2XrO6aJf3iIA/FN2DIAIsZBFVqljiFpmiS4Jprj9oNThKyp03WiYgj4Wwy51aihJcT80onzEwODIyhRZRQlkeTak4yVyPvlx74XV/zYtK5GlM4OKCRmMSlrXVPQbNgSFIR7fAu9O8NUP2dPQY0m0W8ejltDeqmtFGTeDZcjf/l6FYxygMogATTZ5zBxmzvq8uyJGqZYwcmoaUuV6dlAhLPvAg8NZmw+6QrKJB+ubkzO9p6RHRNq73RYemq9/zZKteqKsrqiMnsrlyqMe0IgkTZn9Lr/S2sKe0uLez5AdrC6qNS1L1rWmfzFqofEg2s3gOGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aKEa+YRZ/JikgvU8Z3LeOa+cbxORHZJs4SyTlRJ+inE=;
 b=HI0tecC+kF66FXgSlisbwMLVoLx4jXj2CvnIyE5zzQucWnR7Iy81Ms0RAabIsSGPgj+u+24Bqi9ffhrgqdsc4Z16IjEKMXjqvdrQGQoGbrdzi22sF/d9Ulkf0NA/wWqdl0ZhOVlUzKqZ0/0sNgE3tdTepDFw7q4sF0J8FwaMGakTfWVcfbTRgKCRVnPKmrMTEsyftLhCqnMLvZCEFPiPL/W7xf44tIkkr+Qut1E2/dRQT7PIOyHyRhXsOgNWGmRbK1F+++JrOQEEtjHPjzC+CarFdrHrWNjYv90WqRB6kPvxhrtQBEEdnemESrpoJ5PEVtgG6DdghKQc8ay+ajpc5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH8PR11MB6755.namprd11.prod.outlook.com (2603:10b6:510:1ca::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.21; Wed, 21 Feb
 2024 20:19:35 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7316.018; Wed, 21 Feb 2024
 20:19:35 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Hogander,
 Jouni" <jouni.hogander@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Topic: [PATCH v3] drm/i915/panelreplay: Panel replay workaround with VRR
Thread-Index: AQHaZAnS6gmHAvSuYU6JkEouW05FobETgAYAgAG76nA=
Date: Wed, 21 Feb 2024 20:19:35 +0000
Message-ID: <PH7PR11MB598164A6F2EC328A7604B4FAF9572@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240220141919.3502674-1-animesh.manna@intel.com>
 <ZdTkUFmBcxcpqTV3@intel.com>
In-Reply-To: <ZdTkUFmBcxcpqTV3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH8PR11MB6755:EE_
x-ms-office365-filtering-correlation-id: 6debbe81-e71b-456c-7368-08dc331a6c1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p3JvwI6WIJG2XSjrcZZ3Fzbhi++ag+3ywE6JkdnKKf4CTAKNafVytxOTrOnrSIchVnThufWaqjiWXk3jDL9V1MPv/olLlMSYMOfkyque5dbet1gnSdxeydkh7Ts1tYVJnunIz18W7Y0GOPxkGWkxxGi09+eC9FG1iXPcWgg9w/2h5/sqd1n1+oVj0Z0/XBqiL2eOuPDsAsZOJxrknrsUmSKpYc5Sc/ZfrG2Bp3OHLB+I2V5+pKf0vavzZONgxbGQDtPoAIed+dwvpvWVfrch8axyD9p7/E3FqoSgbdCeoGtIPD5NoTw5EthKOL/5tK2ewHP2iDwRLAv2sU4NFcXnr0oGau0slnFyibW181kEaJuoYAZmNysX6B/41sspXo5gnAfk5XvW7+4hoZbdH4YusdkGnk7PIhW0KAhGPAEqFtfdIo5ntzT/nphqnzxBvALGUPYKmZjs7ILFUDqENqlBruLtQTCAR80EXiUwmSyaUREEmoT/MdDzdofch0jaTZtWkX+0+LQkVHlAXXTQl2qIvJVbetXYChmIOeE3PO2glK4Psw6GTRo1D9r/HEK8j2Fbi2DE67Mz9TCkqzMZZsqYAFXnQXf+VbD6MU+UzK4x3DA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HZrZmupq+lZt5eZDkcu/IkyLdPJg8x+7Kc4zRubtcURe0TYwlYTOBQmfoXLJ?=
 =?us-ascii?Q?W6vQS5JJhJ9F1uK4vw5taNPxj0LhJ0HimGP4Pr/yDXoe/m1FQZVpGzHR4o7B?=
 =?us-ascii?Q?jJiwCK1kIAonTtftTyBaup+V267cai1eP3qf+qcLwcRMK2h33kEvvKD/VfDe?=
 =?us-ascii?Q?wq/H+BV+ep+DBTQI6VqtIgrsJ4wQ0LgAx7PRqn0qMAMfujArfn2tzCPmQmgz?=
 =?us-ascii?Q?gd35pJRTGQYRg/bRyCWNSAhXrt1eomBQnZIIzPeBmkC6+ZWb0aK5hde8C+uX?=
 =?us-ascii?Q?KxVqiYBYv0C2xa0v8CtseaFzV4UdG4+95wbb2Cpko54guhd+jGbPiJtLoJ/E?=
 =?us-ascii?Q?XcUNb+fUWbkG0gHFs0ahwGmUh7+QSGQjreIhYEmgQ9Z//78u34Sux2fq9xvw?=
 =?us-ascii?Q?KzQ2UwEnRZLVcfDL/KM5gZQ96BVLZZ7/ykTLD7FGDsbZZ8FWIvSX8lOhzOot?=
 =?us-ascii?Q?owDOrWyI0KJEeoq6AQmOwECvcvI3rsoYS+mCShP9iAZ5FnfRV1H+BHlY6h4C?=
 =?us-ascii?Q?inopEFB9rP+6k1Evq8qJFH9o0kiXr8vggcf4b/YzXqjhhtpNqkrFamuewa5y?=
 =?us-ascii?Q?RV4Ui1oLaOSZVWStEZA2AIN3ivdeCJCyepLcybMB3YQuo7GRxge0vRecI2SB?=
 =?us-ascii?Q?DTKVpJ33o0iq7xJSjWtKArouFHf2plBeVYXlw8fIc2PAkKxR7PxuMhay9zUf?=
 =?us-ascii?Q?mwQiCgXOCJCEhwT+WYYxwEm1jrpktjR6w5KC/S5Ya6lCeDAhP6EACLdoEHii?=
 =?us-ascii?Q?2E0REIVjmX/JcM4CjlXDbVf3NgbWRXPWWwIovuq+lhxIy/RjpKVd11MnQfbe?=
 =?us-ascii?Q?2iVtTXqenyV3W9zXX1RD/7dy9JpRA7H7v1ZeHWNboQvh1TWzzFTKum88giRO?=
 =?us-ascii?Q?arCPXx+wyXbWjzSS53AfRLzxSSbL+0u6w/83h4Cydly7+yqNT/1823XEQ2kg?=
 =?us-ascii?Q?lB8ln2hjTvU+25S2TcFplUp7w9Dor2uFqyJ7k727XqraSTGC+WqxjteWv3rm?=
 =?us-ascii?Q?UqCgsIcE4aAldy2oZq6mQ44n+1ewDiGfu8KKPKvSn60EnU/6tKKKM4l2PnGA?=
 =?us-ascii?Q?Yy60tgUKtJL+5K4TQensLISi7tVq+6yFWu6u7CBIeRYJdnaGr6WyIWUbr4sh?=
 =?us-ascii?Q?W0Wh9fim4Uhp6YMh4DkMv+UEg01rqJsG7bhfoLBHNXAPegbvUQsM+9o11b31?=
 =?us-ascii?Q?lSMPxcOfYD+wNAVTmweNlixyxhzgbyDMTZ3M8lxfQ1G5C7J4nkoNOhIXZzHF?=
 =?us-ascii?Q?TicTAELK+5mpRb3RjFsIZXCQ/GQVvJVGuhnOoHKbKu7IUNED+Uan+ojY3oZY?=
 =?us-ascii?Q?NKkxToiBJyLNWlBGNRRP1EkdBIIdmq2exgQMwZBTbfIlYPisa7szhVKxJNVP?=
 =?us-ascii?Q?51/EgsGBSagkks0/YGl2dxwsT82g+5D2HproDJJ+Y0a8eB9otZTz5vNOUb4N?=
 =?us-ascii?Q?G9QWa3jodBcsz/fCXY/vfrlE9yZDoyfsJ3ODflGQdA7Aglb2EewkF0W1Tqu1?=
 =?us-ascii?Q?vbSgG8qY2n+y5N8KEAZcqz1bUyJrA0sFlQhqgQi//TeCFJZ+nZn5ldtLYl0c?=
 =?us-ascii?Q?v3vHkUWxeYufPxMT+6QRPfGOiFbpukNeq9FzEbgw?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6debbe81-e71b-456c-7368-08dc331a6c1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2024 20:19:35.5318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pybYO7PXhm6B4p0qjraWiP46IJlWaoS/d/Ov8mqZKc7HH41936WmzR7EHPs5vvu+BC2EQC9dTdaz3XlgYS5FUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6755
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
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Tuesday, February 20, 2024 11:12 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Hogan=
der,
> Jouni <jouni.hogander@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [PATCH v3] drm/i915/panelreplay: Panel replay workaround wit=
h
> VRR
>=20
> On Tue, Feb 20, 2024 at 07:49:19PM +0530, Animesh Manna wrote:
> > Panel Replay VSC SDP not getting sent when VRR is enabled and W1 and
> > W2 are 0. So Program Set Context Latency in
> TRANS_SET_CONTEXT_LATENCY
> > register to at least a value of 1.
> >
> > HSD: 14015406119
>=20
> Unnecessary mark since the wa_name already is a pointer to the HSD.
>=20
> >
> > v1: Initial version.
> > v2: Update timings stored in adjusted_mode struct. [Ville]
> > v3: Add WA in compute_config(). [Ville]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 217196196e50..eb0fa513cd0f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2948,6 +2948,18 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
> >  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
> >  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config,
> > conn_state);
> >
> > +	/*
> > +	 * WA: HSD-14015406119
>=20
> this is not the right one. You should use the lineage one and then mark t=
he
> platforms.
>=20
> /* wa_14015401596: xe_lpd, xe_hpd */
>=20
> or perhaps
>=20
> /* wa_14015401596: display versions: 13, 14 */
>=20
> and also add a check for the display version with it.

Sure.

>=20
> > +	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY
> register
> > +	 * to at least a value of 1 when Panel Replay is enabled with VRR.
> > +	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by
> substracting
> > +	 * crtc_vdisplay from crtc_vblank_start, so incrementing
> crtc_vblank_start
> > +	 * by 1 if both are equal.
> > +	 */
> > +	if (pipe_config->vrr.enable && pipe_config->has_panel_replay &&
> > +	    adjusted_mode->crtc_vblank_start =3D=3D adjusted_mode-
> >crtc_vdisplay)
> > +		adjusted_mode->crtc_vblank_start +=3D 1;
>=20
> why to mess with the vblank start instead of going to
> intel_set_transcoder_timings() and change directly what is getting writte=
n to
> the register when the register gets written?

I have done in previous version of this patch. But as per review feedback, =
added now here.
https://patchwork.freedesktop.org/series/129632/#rev1
https://patchwork.freedesktop.org/series/129632/#rev2
=20
>=20
> In case the answer is becasue by then we don't have the vrr.enable or
> something like that, then we should consider move around when we set that
> register?

This was not acceptable in earlier versions. As per feedback instead of ato=
mic-commit need to add in compute-config phase. =20

>=20
> or perhaps create a specific flag? one extra variable, 3 less comment lin=
es...

The above comment is not clear to me, can you please elaborate more here.

Regards,
Animesh

>=20
> > +
> >  	return 0;
> >  }
> >
> > --
> > 2.29.0
> >
