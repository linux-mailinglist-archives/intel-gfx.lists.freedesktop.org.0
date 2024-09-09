Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D2970DCC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 08:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8024B10E163;
	Mon,  9 Sep 2024 06:21:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="apOifGoy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A900C10E163
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 06:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725862915; x=1757398915;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FsgOz+MU8vej/UFBR6HOsFott2/Rk5FvIwJ5vAh9ABw=;
 b=apOifGoyIKGgwGDY5ko/pxlxJuf+48aQcmNaRMmGuUTf9oEKzq2iP1Yu
 U33kyAu64wFMao9cUXgVejA8vQD88ybxa4FMk9z2+3bB1YjRAEJhvP/2J
 GU1n1dXYHDkbfcyidqb0VwYKhFZ2c+7/dFVEiwSja/AXJlP6t8xgbEETP
 vHjdnNdvIorYOmAQrhL3fIAveKIs+EY7gS+e0/+ybvkhUotKrQiBWQw+/
 uV1BXCesHyW0U1BP1AFwTYD9IuYse9dy8LQoUX43j/duhkUJNdVHmSZML
 5XNA1+73+FwN8qZ1lurqIal8vUh6vMCKjQG3Uuc1uyoDShnS3IRgs+mMX A==;
X-CSE-ConnectionGUID: 03iU7HyoSFir7Ak8daTOHw==
X-CSE-MsgGUID: UNR/WEy4RBCQVIuLyim5JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24680516"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="24680516"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2024 23:21:54 -0700
X-CSE-ConnectionGUID: TLIwTT7ORQKfGxA6scJySA==
X-CSE-MsgGUID: tT+Ebo0mR66LF3f1hjGjMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="97270523"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2024 23:21:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 8 Sep 2024 23:21:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 8 Sep 2024 23:21:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 8 Sep 2024 23:21:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 8 Sep 2024 23:21:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rNWcI2iSjuenK3vg54LVjsiovMRXFwgte9Dc9Xg4iztfKt0j8nRHqUcW+XFYIHWIfBEYuLBrEoZy6ScridTIxr8/7lMb3GpeViRdWSx7Wo/ZGUpASjYJSo5uH5uO6Pcb53a2Bw+TwTW5AIZzUlX1TvDadzT7r6gaudVuIVMABzrJCECZYeG44fSiZF9Keu25mueRy7xcw2HkdK95+umiwzXxwC2R/28K+Hb6dxGNlRJjerLePwgoQ6bdi1fAA6f5EiGnk7okdkP/WAZ0h1hPbfiuxEaH8haA5WY+kpioAJBWlGFb99XZhhKpOwi+ipedE59jIGY8biVGenGhCOmmng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+4zUJoHiYJ3PYWY3rWYtGXUZda4JaJbgOEtCS6vedCM=;
 b=cHKsfsFTTXjaFJYYxqbHBy+8rzBpHS0UMEX/Fc2edQqp+GldxemL+q8PsTHVEesHw/PlQvlLL095XPndxrVwZseLY1YM/HNZrey4FuZm8PJ3QvB4U5sJEhI3KIOuS8sGyXLvG2FXAbbO+XigkvF8BiyXEG7Dv1fcXWFTsvLM5KiCNrOCbR9ZtBaPuwOnrjzzA7l+iaO3OrmZvP+ExlMqFhNr7XEJexkPWmlXfyjRNw2GM/BRCH7upn0mCMexLiFR/fu4XD7SMkFalQmxd/CF+yz1Ux/WNZUMjK3CI6D4T/mQkOlBM3+ZIOt1cydrIVMPEg4TIyfTK10QEeECKbwE/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6467.namprd11.prod.outlook.com (2603:10b6:208:3a5::18)
 by PH7PR11MB6698.namprd11.prod.outlook.com (2603:10b6:510:1ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.17; Mon, 9 Sep
 2024 06:21:50 +0000
Received: from IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45]) by IA1PR11MB6467.namprd11.prod.outlook.com
 ([fe80::af0a:68bb:7bbf:5a45%3]) with mapi id 15.20.7939.017; Mon, 9 Sep 2024
 06:21:50 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Ville
 Syrjala" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
Thread-Topic: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
Thread-Index: AQHa5wBbHR9wRUlhnUG7cShmEhcj07Icz/6AgAgNbwCAKlS70A==
Date: Mon, 9 Sep 2024 06:21:49 +0000
Message-ID: <IA1PR11MB64675961872D4D12CD82D4B1E3992@IA1PR11MB6467.namprd11.prod.outlook.com>
References: <20240805062538.1844291-3-nemesa.garg@intel.com>
 <20240808045407.2365733-1-nemesa.garg@intel.com> <87cymc272n.fsf@intel.com>
In-Reply-To: <87cymc272n.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6467:EE_|PH7PR11MB6698:EE_
x-ms-office365-filtering-correlation-id: 8041ce75-f2fa-4b84-fac6-08dcd097b086
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+dEaN3stRgyMuS+i82zKEhQUkCI3XDT+YAJCGTxujOHP8jLBhHcnnhIjmlbB?=
 =?us-ascii?Q?vXuzPAXgPLmtZq+EDOid1SqlbRXNGqoj9LN651+3hoaVAm/aAkFl0LrIxusF?=
 =?us-ascii?Q?/30T7ckJZ311zWJo1aC2JCI5ydP/I/n3XI8BliAa//LJBhneuWcog9yIMUyJ?=
 =?us-ascii?Q?2SaTX85mbFnjybVBHvdjiM8onCPLr5uL69edDHN3v/2gMABllqKygtIgxFan?=
 =?us-ascii?Q?pVywZ0G95861GyB6tfh894aoWGeFr2p7gQpTkVJzMUA6K/RyFSJvOYN+7pea?=
 =?us-ascii?Q?abOsZnfVXTD8Fn5jXHlmpPzKW/EHG2NhV1k44Du3ZZD4MGTZvAEm5dT/CGkx?=
 =?us-ascii?Q?xfnqvqSeRdC8kA/tq4Hwqrjf8RVNrt4xB7ARDSqNu6SS/fpwviawhnSrciLA?=
 =?us-ascii?Q?HRQFoLKX5GaytfnCUQS+vAq/byRV0qULltSHnucBf50C0I7MxzXz9R0aTnJN?=
 =?us-ascii?Q?1vRDtASCa5N2LunJK3HrQ0Y3Aw1HTBL8pBu7W60UTAeB958aOZFYsTnTIFZD?=
 =?us-ascii?Q?gIG5GzM9UiGqBPWuDlWuyNfC0+YJBsFp/Vf6wKoLTIP/CG39MMwysNRjYTud?=
 =?us-ascii?Q?7WoxPHOjj/aVr6GcVChkVcZPF2oSfzSC+kw/yvW9LEN33uWea1NWeD8twlg9?=
 =?us-ascii?Q?88eKum9R0BCfDTxYFQ/GVnlyoL3l9YkPGOKLEGZ9FYg9nmbcquOK7iQ0B88f?=
 =?us-ascii?Q?/qJh6cF6rBMeTAKGEx7YgM8LInVeYeAAO3yOhrpW4pKX2fxhh7+aQpFCMbLj?=
 =?us-ascii?Q?Tbm2CYpR2qj7CX05jJ0k8iNFEaDHsBOjcCRaYxTwyZ5LTK9sPZH4okAJSAGD?=
 =?us-ascii?Q?kmunnF2Jfu1LsHWdAUeTL3tLirFNNYI4ROq7v1tTezmqPJlBpMUs1s5W7VRt?=
 =?us-ascii?Q?GC2CUwEhye+W4eriLJS0QZJYD7AleE9zUE3uF8b8jErwmzbRQBVJf9FjVhe2?=
 =?us-ascii?Q?A/7kX+clc7BmvZTFZgebFgVwf/dT0X4vcZdXJBjZwA1KENoJYrMFqpOymp1e?=
 =?us-ascii?Q?owxR01sUFmF9jG1Xl+9JVotymnMePL+/nnSRJmK9w8EtQpWyyqZAGx3YL2jG?=
 =?us-ascii?Q?TqSmCGvzgaSq3dvXIL/UmUvlTFEysXsTnrpTEA8DnareQ094oG23kO9Fti0i?=
 =?us-ascii?Q?aMU2BP7sCRFPBsy0o7nta4rokKSWNZJH8x7b0YbGz2QMLXmEW7tIvfzV9oOG?=
 =?us-ascii?Q?RiIYTbaLasFVDpxtiGBm9U0hYNkhlgbjwmRd7H2XUJXdjDKEVLrUClPOX9An?=
 =?us-ascii?Q?D36ImhG5iKwlbaA0ToG3pN8ufuPddAr8ORRiwPSf4vEW3tNtAw6sIhdTUEXN?=
 =?us-ascii?Q?AARQUKd2MUX1pwH9McV7mpjcVcSUngngFN2wgLFL79vimwNqvPA5UwuhgZ5M?=
 =?us-ascii?Q?H3sCewYNAfVp1yYe97zdsDzJk+W739otcknDhuwNyCsRZf3uvg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6467.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qft1bT7UHh7i+dZEpQdunAP6P4rBY80h6SKe7iVDnxqJxv9tcxsMm33SyTZu?=
 =?us-ascii?Q?SxEJ9seklHV4fQ3ej8XFFr1//2Ygv8VE8zIn7sOPIboW3n/iDGrsnux1Z7BC?=
 =?us-ascii?Q?C0p6enFfQHT2jdhrc7GOp0I3ZQNpBrPPtyjj73M2rXUDNIPvvEcUEiV59Dmx?=
 =?us-ascii?Q?6IO7ZvuXt+5sEoUeEIGm0KKVQKyzwmzpUdMQuSmRSow62BK66OEfgk/dO+8e?=
 =?us-ascii?Q?neNrcu6BovlPb0gKRnoFHiDFGPJN2TC6dDLx/FwC0SoXxIYe+tNzfxF5u62w?=
 =?us-ascii?Q?OBgGEmTv9/AyeX4Wy6PLJY2PuOF+XB1ZGtydiYuCdvgNaNPjMiqrzy1lPxy/?=
 =?us-ascii?Q?R9HAaodw4xShy0PCugJSGuLCvMouu/6kMZQsHVCB7qLulLsY+e5Ov+boy/g8?=
 =?us-ascii?Q?aoNwZrcROamftrN/SLTkYU24KLY6bAJAi5JY3IZHS1ea3kw7SFBy0G3yA1lq?=
 =?us-ascii?Q?uP5FPEdOhGOr0WbgBawOFDtoqZjQslX4Ro2lMWVhyDrHZFlqAVo82qo6n/D4?=
 =?us-ascii?Q?jRxvvyzcbRKWKJHARMvo0XAkbkMdWOKINsjZW8J29JW6p6ARTzZ/wnQKZPeI?=
 =?us-ascii?Q?Zuz0pW7FvFZQTLHFS6V09tHDzo2igLNjUH7DZKmPvlr1DL30lVgVF2qGk4X+?=
 =?us-ascii?Q?B8MCW2qp+s9o4widqFNNL9rpl1ArnzaP6/8W1CJ07ja/OTLLpX5+tS5NDZoa?=
 =?us-ascii?Q?fx6A62bhxwO3JLXI1LNVDuR1XIfq7Fb1qwVLzcxAENdCbWLU6nkC9FiYtGRp?=
 =?us-ascii?Q?WnqkoQlgSobECG2ONzuEZDNTmqlG9njL3rZ1MLe88hi08diMnyqjv8/Ld18t?=
 =?us-ascii?Q?hpCbm3KipDLhvKW93abq9pMMgK6u6W/c0XXPkUTuCEQcnyIG1gSnPLH+JbjJ?=
 =?us-ascii?Q?jEIQcRe78ebSbjOj06egZgrQ9gn1lZ/tRmlyD1Xrwqu4nxS2FfSO+pWm45Gz?=
 =?us-ascii?Q?oI41JXAr1QvARXxxDRH0WjHupu6AVnRJpenaGl1fsc+UCj8Ep/65jV8FHRyq?=
 =?us-ascii?Q?Yf4WYWpezCV3BQYLL67l9pBUONeaOnAbKMEsqEWHn2DGO8pw5zrQ5MXpnNQo?=
 =?us-ascii?Q?qb2+zfa/lO4btPcZYh1yggmb6iV0dowZZNcX0m42CSfHuZpQFP+rnIkEQBj8?=
 =?us-ascii?Q?pvNsxqJUvD/4GgdHjg+MHMDE+gmgdzDoxFvKJeZQOGJ5pMJOdyX/V6/orn2V?=
 =?us-ascii?Q?EDHp0Us8ZTctGn5NIGGdxKq7uZD+js2S0+AUhjAvjo6IDVXS4FtvOm0m/IwK?=
 =?us-ascii?Q?3QoJ3nto/cDTwFowRaKFBScFOPDgUkG+0q/ukQb4+mfNydttTJ68J2l6GVIW?=
 =?us-ascii?Q?Dhm+ZRb5/hqMbqkeU5O3m9FdcIOHH2pA4lfTaPI0W2Sv51uIPZuSa/Fp7px+?=
 =?us-ascii?Q?wFybfQWI5m3ZS8w3ljy8i27MqwhspYcUZjNoViiceBAS2VBnpiSntIYjYHrf?=
 =?us-ascii?Q?mMiAaNepdysxQ/Zc1/G7Yy0UELXf1rweJbRicCVQLsokFfSp2vPcV7wirGiT?=
 =?us-ascii?Q?CxXJcAedo0WiyHweTnqBIah66PwQC8gOT+MujYwZSgzZSOQvAvjFv537iJLe?=
 =?us-ascii?Q?qA4t2qp4jfA5nDMNPcyF/7QQADkzVgABHL7oHuw1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6467.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8041ce75-f2fa-4b84-fac6-08dcd097b086
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2024 06:21:49.9921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N0Q444idGt8PXFORuUvndeymxfwgqpIb0LSZpvMoXw1YTJAyA7Mk8RZOHb7q9DqLW91Nz2H7EsKShZyK244HIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6698
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, August 13, 2024 1:22 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org=
;
> Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_c=
onfig
>=20
> On Thu, 08 Aug 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > In panel fitter/pipe scaler scenario the pch_pfit configuration
> > currently takes place before accounting for pipe_src width for joiner.
> > This causes issue when pch_pfit and joiner get enabled together.
> >
> > Introduce a new boolean flag need_joiner which is set during dp
> > compute_config in joiner case and later is used to compute
> > panel_fitting in pipe_config. Modify pch_panel_fitting to handle
> > joiner pipes by adjusting crtc_hdisplay accordingly.
>=20
> So I still don't like the fact that intel_panel_fitting() is called in di=
fferent ways for
> different connectors, controlled by a flag in crtc state.
>=20
> That said, I couldn't come up with a better idea either, apart from movin=
g *all*
> panel fitting intel_modeset_pipe_config().
>=20
> Cc: Ville, in case he has some ideas for this. Please hold off on merging=
 until we
> get some input from him.
>=20
> Hi Ville,
Can you please suggest how should I proceed further on this patch.

Thanks and Regards,
Nemesa

> Thanks,
> Jani.
>=20
>=20
> >
> > v2: Address comments (Ankit)
> > v3: Change flag name (Ankit)
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c            | 11 ++++++++---
> >  drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
> >  4 files changed, 23 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 8bbde03f2508..82b67c0a90e0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct
> intel_atomic_state *state,
> >  		return ret;
> >  	}
> >
> > +	for_each_new_connector_in_state(&state->base, connector,
> connector_state, i) {
> > +		if (connector_state->crtc !=3D &crtc->base)
> > +			continue;
> > +
> > +		if (crtc_state->pch_pfit.need_joiner) {
> > +			ret =3D intel_panel_fitting(crtc_state, connector_state);
> > +			if (ret)
> > +				return ret;
> > +		}
> > +	}
> > +
> >  	/* Dithering seems to not pass-through bits correctly when it should,=
 so
> >  	 * only enable it on 6bpc panels and when its not a compliance
> >  	 * test requesting 6bpc video pattern.
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index a04d52dbf6e1..eb9713b088c6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1258,6 +1258,7 @@ struct intel_crtc_state {
> >  		struct drm_rect dst;
> >  		bool enabled;
> >  		bool force_thru;
> > +		bool need_joiner;
> >  	} pch_pfit;
> >
> >  	/* FDI configuration, only valid if has_pch_encoder is set. */ diff
> > --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 65182bf69b62..d5d9d4f21fc7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -2953,9 +2953,14 @@ intel_dp_compute_config(struct intel_encoder
> > *encoder,
> >
> >  	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
> >  	    pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR420)
> {
> > -		ret =3D intel_panel_fitting(pipe_config, conn_state);
> > -		if (ret)
> > -			return ret;
> > +		if (!pipe_config->joiner_pipes) {
> > +			ret =3D intel_panel_fitting(pipe_config, conn_state);
> > +			if (ret)
> > +				return ret;
> > +		} else {
> > +			 /* Incase of joiner panel_fitting is handled during
> pipe_config */
> > +			pipe_config->pch_pfit.need_joiner =3D true;
> > +		}
> >  	}
> >
> >  	pipe_config->limited_color_range =3D
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> > b/drivers/gpu/drm/i915/display/intel_panel.c
> > index dd18136d1c61..0da45c2330d3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_stat=
e
> *crtc_state,
> >  	u16 crtc_hdisplay =3D adjusted_mode->crtc_hdisplay;
> >  	u16 crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> >
> > +	if (crtc_state->joiner_pipes)
> > +		crtc_hdisplay =3D adjusted_mode->crtc_hdisplay / 2;
> > +
> >  	/* Native modes don't need fitting */
> >  	if (crtc_hdisplay =3D=3D pipe_src_w &&
> >  	    crtc_vdisplay =3D=3D pipe_src_h &&
>=20
> --
> Jani Nikula, Intel
