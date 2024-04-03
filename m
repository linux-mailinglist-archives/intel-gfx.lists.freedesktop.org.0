Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 168B8896381
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 06:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2B910E65A;
	Wed,  3 Apr 2024 04:32:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="htTgNBVA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C3110E65A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 04:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712118754; x=1743654754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AyjqdBiJLXmyQvn/elLw7bK4vSLX/Ht0GhMZiO0kCoM=;
 b=htTgNBVARFhXCpCKjixqOCfRCCbGuMZD7OsNQEey/cgF2vrKkL1DFgoJ
 HV3eGuvvF9jDWG0AHnqDrrJooke0Xzlk86QQo5QUOIpOA0cyQ7Yj6DYtZ
 0XoBMUrkquy4KskWn8G4fEEf9bzEyokrkUDQXaUror8sotfSNHFHgC54S
 qd+x6x5eArg9W0jG5SIIgtxiBB/Tvlibva3jivmmXbNkQ/OJSEkxOBIXK
 fwESC8DQia1kh7I946vPB9JG3+V9NQDtwhGF0wG3We3JoHQH96a08pzFc
 NdjMlro0mff2kquxJs7QoLKs16EfjGdtHmlXqDGkgvkB3Fu8UnLnv119d g==;
X-CSE-ConnectionGUID: VFp0h8d+RVaB7l8SFW/4YQ==
X-CSE-MsgGUID: 0gXWvEbZSJmulPQhiRj3Hg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7192215"
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; 
   d="scan'208";a="7192215"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 21:32:34 -0700
X-CSE-ConnectionGUID: RWciOiEqTGml1sl5cVvolA==
X-CSE-MsgGUID: 8VmmJWdoQceBvXZ0Xt/j5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,176,1708416000"; d="scan'208";a="22781372"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 21:32:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 21:32:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 21:32:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 21:32:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBi6ooYdhKLiWVeuk2Cp+qJ9ld2XCn9ry38SDBsK434O9d6d8/qePbRvVAvDZm2DkRNnw3HeRRj0Yz91hTA7BGwtadWXVZF3kZ10NZIt4Iupd3nJEVDSRvGrx9ryb/DYDZxmildb1SIpqLiS8FkA38A18IhfkwAJ4hz6Enmfg/eIq3e/RBxJ8YCpIdbJUndvx7/v1AQAhpDpwmPVJ5gcj+aI/5r2wLM0r74oE/dCOizBPONOVQHMAHkA667/ACW10zEgI53hnjAiU8Wq4nHp9JNIjo7ytcqsH7NpCZ1EMfnjQyevH/J6JKJXAUh+poxzMUsDp29UgSkQ22VaJOW+lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yFRBy8fIzWztzAaxB3RghoqdK7AzpGzZ82hPopdaD+U=;
 b=GyECSUjRE49ZuuKGpbqfiKnBRt/YaAsV7XqR+CtGbOjHdLjUS03C12qfsQl+QZ+vl/27KlBZ0da6djdF3IahNvhT7i3uMyhsPfaHZ9gmX35M8MMfrW9Xa86ZIBxa4c3fDLgtLftZJHk6aD5yiwl+9AE4hPKdFWVXbejQliSRHigpyyd+eQ3oU2cPBzWYJSBbWDk1w3SJIgPbc9sofdgQ9ssK2DWl9mVdfusP2q6QPq1b6IuqZXD2h+RLe4QOGcr+xmsLDk7sktfa5B6xzCbZWz4jdSfQINWMrwDcVNI1AACtfpk2OiMAsuTsN/xmkztJWSXKmQOlVATBvC7EJjhcng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6076.namprd11.prod.outlook.com (2603:10b6:208:3d4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 3 Apr
 2024 04:32:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 04:32:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 18/22] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Thread-Topic: [PATCH 18/22] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Thread-Index: AQHagXZqY2/kzeK8dUas92L6DLrvg7FS+mKggAJwnoCAAJGyEA==
Date: Wed, 3 Apr 2024 04:32:31 +0000
Message-ID: <IA0PR11MB7307B430E4B294B5A0A9AB0BBA3D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-19-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307310C4E64AD31007F2DCFBA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <Zgxhb9nlcFDSI3OG@intel.com>
In-Reply-To: <Zgxhb9nlcFDSI3OG@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB6076:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4/3ktx3QMYQuKSSsE2MwH9Y4xVCmgUsKYY9vO0hQjNDr+5sUzb8wGqhFZfvwKpRo505WAVfPm46b6y8ex/5opfHGip0cw00vcexgiTtY7eQXtL7RlldyUNVCWURMMNSpIOkApicaJmUtyyAaOcYzte4w1W2B92CmGw4A6818xB29FwZlo0BGmLm0VuP51FCrkTLPalNatM85W50IW1u3gXjbyRpuER7EuQ8XmAilZankbrXR0sc37zpECl3sG7wc9hBnu8pxplIYSahwXDqnbZj15l+RHWvgvQPMSrzB73oS9ZNZqCJwM/XlSAhkM+2SbK8/Red+9MQCFyyyz4ku5uU9/jLdscnZeb4W/Dh33aGLQQvqydNmzTRRvm1hHJEJTGXt6+sndsSS+lP1OBuzH5Wq0CiHMrQyK7y3bnslo+CFl+XwNmpPA+wfE1lKHEYUo0NQVgQyND+ic/KiXDlPMOx0LTIeddISkyo5q7q/EHbWBgG3sXzGO06RafPZYUPBlbYTLpzLx6hPho2dHZrhrJvg356HersVx1+yO64caJXf0Ba2AHW11wERBqS8ApEkl76kyTkxs36h2M8tZlp0zo0TWeL6LEN4LKYIxjjIG8ZnJ8O0NjEiHOY/47VQ+A8zraRE7/qNCzlb9YOpn4DumEVBVmamTid/vGZSZEGS4VY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?OBvP4EWV9fdzvo2FsUqtfP0dG0Vx4atg+YAFi4MRmPemkQ7LG2/H46bzGM?=
 =?iso-8859-1?Q?zocQXQb6b6jwGXFtDfFlvwUVlbox0x0DMgHNAlg/g208mH7BvgVTXOOMrU?=
 =?iso-8859-1?Q?rXB8e0gbQq7Bq5molcJFReFfkto6i0ubX5gBmCRPkaOf5Wgs4dFxE6oq6b?=
 =?iso-8859-1?Q?hQSu0eCQ0oxAxY97aU0RP8CDqaNkk7f3ST73fUG+TPNv9MqNmSXZYH3JZR?=
 =?iso-8859-1?Q?IVut8ywDyDvqpBKHPVtjFcKxKiOJk8SD0CWnvB75NQZqdGYjMyzxGxp6VM?=
 =?iso-8859-1?Q?FHHA36g0BPS5XgwEgn+V4qktiPnBTLVzbreog40LmFV3lFKAu0VD5BAVKU?=
 =?iso-8859-1?Q?ncXxOE8xEElWF2mS5vVuoxQRYwIIQkDEtZ5SXTPHwUmkKUpZRyEHn+UMnW?=
 =?iso-8859-1?Q?T93/II7x0ZDVRAK7M9CpXGejovspGdXdyWhcuYXvDZ7BD2gY2FtD/1rWBS?=
 =?iso-8859-1?Q?YbCI4faPZ0zBCOWz05pgKVglh+D+bbIFU9t6U8QRVkvkjy5QEaJHNynY1Z?=
 =?iso-8859-1?Q?udtr4ClX7O4S3vxVuANG7QcnDDISA/Q7auK0VwLQ+bcdsR83iJPW/x1u+B?=
 =?iso-8859-1?Q?Q/ngpDCp+9qRPg92tRXru3KWAfzMg6HXZTknOPgZLGj5oIanGY7KoE3+re?=
 =?iso-8859-1?Q?NrbJ76Prngq3s/t/XFzctjMBlVtlYfIe0rNEU8hCA0sdtaM9HmixnG70uA?=
 =?iso-8859-1?Q?/KysSm8a9P+NPQBlFPwGstdwnrfvoYgxVgjUFfsXMgGsu4CgCFiUgVMX/X?=
 =?iso-8859-1?Q?2ZmgFixSxgAU5nB6fzU6HVNzH8quvqxsWvm8Rvw/BA8QD6eSkn6YIWlg17?=
 =?iso-8859-1?Q?v1KIKQeKGwGnR23Q0gXpI3r8W/IJDZ8VJhO2l3t/zNaCFdODLnnLg/AB5v?=
 =?iso-8859-1?Q?VtN33HpkBWNNj0TygFC1V8JbY9Ctp3wS7sTIajxKQlhZ9qK9ACua/7/SCA?=
 =?iso-8859-1?Q?Cc19oW7aQeZOqIeWs9alkVMbeh3BaOVR+ZsGNr/lRHdmv1AG8PkB7cugBb?=
 =?iso-8859-1?Q?ZXnwN61ggL4AlMyw08Y0EN0MvWjNImecxUgAQ6cY8eCSnrt4IRqneHmMM+?=
 =?iso-8859-1?Q?oQusgsGG04nIgGCruYVUidy2dr4dTVnoumyMnC4gjigjnjH2Njw3v3FPH3?=
 =?iso-8859-1?Q?6tNAXSS9vfhOHydIZuZgz+JYAjjpnYKBRCxFVb/VfJGfl6z5MglmiF7++0?=
 =?iso-8859-1?Q?elLG7JSq+QLa31eUy3oeculK45A1148tDDmHEbZ6+aPXEXkxLQcVIm/YXy?=
 =?iso-8859-1?Q?DzLeshhdkgW/l+Eor8iELJqsbqIonal/HZXSuwRcgFKRsN5mPQIfC4G9pC?=
 =?iso-8859-1?Q?fZgd/SmBIk0awJSaVjSZTYr8ocJE2H9Jpn0TREoxOXgFqH6vgrI3KpWIUs?=
 =?iso-8859-1?Q?Vqoy2w87fuV0Q2qlnQoAw2gLftKk8mdf6OER/rYHX1QO0xf7k6p5edvc8O?=
 =?iso-8859-1?Q?vb7pqWcDDWjRTHRG5AzEFgKQLHYyQW+8xeuLyy4EpywVwgAb6I/RZZzw8H?=
 =?iso-8859-1?Q?jdUPNwwpjYxk0Bs/Be29CAyB7LIuWegyrg6w0/nkRM2JpWltB6VLaUiudx?=
 =?iso-8859-1?Q?ulBvU2RetEQPcsy6/CSd1MOPUNiwowgp3NFhMf9EFny9s88IiaReL2N4dq?=
 =?iso-8859-1?Q?pbWgEaiaVBJTxdb1nSgLkwen1lBOgLm0aS?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fdaa13b-59bf-4663-2b96-08dc539713b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2024 04:32:31.5087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H1fcoBlempKxVrbySDq7bHEOgdUkFRbv2LbxNytCyjjRi902UGrbOtmOiM6Z9lW2zrke5nOhi+l0SXs/OTyX8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, April 3, 2024 1:20 AM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 18/22] drm/i915: Handle joined pipes inside
> hsw_crtc_disable()
>=20
> On Mon, Apr 01, 2024 at 06:46:20AM +0000, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Friday, March 29, 2024 6:43 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 18/22] drm/i915: Handle joined pipes inside
> > > hsw_crtc_disable()
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Reorganize the crtc disable path to only deal with the master
> > > pipes/transcoders in intel_old_crtc_state_disables() and offload the
> > > handling of joined pipes to hsw_crtc_disable().
> > > This makes the whole thing much more sensible since we can actually
> > > control the order in which we do the per-pipe vs.
> > > per-transcoder modeset steps.
> > >
> > > v2: Use the name 'pipe_crtc' for the per-pipe crtc pointer
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 64
> > > ++++++++++++--------
> > >  1 file changed, 39 insertions(+), 25 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 58ee40786d5c..c15ea046c62a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1791,29 +1791,28 @@ static void hsw_crtc_disable(struct
> > > intel_atomic_state *state,
> > >  	const struct intel_crtc_state *old_crtc_state =3D
> > >  		intel_atomic_get_old_crtc_state(state, crtc);
> > >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > > +	struct intel_crtc *pipe_crtc;
> > >
> > >  	/*
> > >  	 * FIXME collapse everything to one hook.
> > >  	 * Need care with mst->ddi interactions.
> > >  	 */
> > > -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> > > -		intel_encoders_disable(state, crtc);
> > > -		intel_encoders_post_disable(state, crtc);
> > > -	}
> > > -
> > > -	intel_disable_shared_dpll(old_crtc_state);
> > > +	intel_encoders_disable(state, crtc);
> > > +	intel_encoders_post_disable(state, crtc);
> > >
> > > -	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> > > -		struct intel_crtc *slave_crtc;
> > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
> > > +
> > > intel_crtc_joined_pipe_mask(old_crtc_state)) {
> > > +		const struct intel_crtc_state *old_pipe_crtc_state =3D
> > > +			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> > >
> > > -		intel_encoders_post_pll_disable(state, crtc);
> > > +		intel_disable_shared_dpll(old_pipe_crtc_state);
> > > +	}
> >
> > As per the sequence is considered, should the pll be disabled prior to =
disabling
> the encoders and then followed by post_pll_disable?
>=20
> The correct disable order is:
> 1. encoder disable()
> 2. disable transcoder/etc. (nop for hsw+ as that stuff
>    has been sucked into the encoder hooks) 3. encoder post_disable() 4. p=
ll
> disable 5. encoder post_pll_disable()
>=20
> which we should be following here, thouh the diff is rather hard to read =
due to
> the indentation changes.
>=20
Thanks for the clarification. I verified in the source code.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> --
> Ville Syrj=E4l=E4
> Intel
