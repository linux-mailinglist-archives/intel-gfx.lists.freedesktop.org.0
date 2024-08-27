Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 393E996004F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 06:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34CAB10E02D;
	Tue, 27 Aug 2024 04:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H8PyawaT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5D310E02D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2024 04:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724732973; x=1756268973;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=+Y9h6LZtq6iFMjNSz84t+eR6icx/a6rJtFfIw7MtUOw=;
 b=H8PyawaTYPfWcUF0zRCehoNvWeQfP8BmptjpfRn4AV5UMYtmvqCXKUFC
 /vlBW1PmeQE5liRNsLPZhoQ6tjCHlRUZKBo4fJt8+AwhC+1Wr1dgRm9Hf
 NTyAQRY6CU8RfL+0xMffh+1l0x4u7zRsaCFMGlZ1qTV/GBLUl4mtk7QCr
 FH/AyyHaXrTpQeGWHWfUfWzLalZTYRqbb1j9aCYIKjH1JcEbrUzKb/44e
 PBuAxTkNKE+EMM7GytXY243D8XnAc30Gh/EssfingzXaPdms5k3P4uWYz
 rHEWwkmO77e1mRZv05eNZQr/awzXz2BuZuHzk4hd66ww1VwjFY5kP11oS Q==;
X-CSE-ConnectionGUID: HSPUPCqDSf+pMbOhifPM0g==
X-CSE-MsgGUID: uV0daLppS7OkT7fZgecxxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="33812370"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="33812370"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 21:29:32 -0700
X-CSE-ConnectionGUID: a/8hOJT8Szu4HUPUSVdh8Q==
X-CSE-MsgGUID: fo5ZCGkXTcWo8+zwlk705Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="63042022"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 21:29:32 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 21:29:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 21:29:31 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 21:29:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nMVccUZbAGo65bOjQUiYdKtvd+nHWAQwYZuesamljWalynwH7v3hjpPIcv7C6u+7lrdA/6P+z/YPy7MZHGHB3t2xeGVcD3sE5ZBMTpYZFV7isXhGLmyOBRCRFk+BAKhODtSY73ojErl0uV8cQKO52Rr5tGlmbqk5dtJdlbUgMGI1/8ylLPTIucmfznzXgDzCBiS93RXM1DyW9jagqfR/JjLgGYwxCc6j4EjvVneGpE6edTLK65znULn+Q0crN8DInlWY2/K6LJ2SCrqfhkNXpS5RilysT9m2i4pRjlVKA7+sUQuW1Abdynb+5fYd0Gd3TFwcS1s8rVOwSe1W43T3GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MjOkXhhWGjuD7f+IW+UDM3vqevb80aLYerOXwNEehXo=;
 b=QCLREZwSOvjVqzKOQglNF8yj+9q98CAqLKDaX7ULgGh0Q8JB++lUkchI/IpSCXG3ihoRhca2sP5lQ5hddPtQEtPhZwIL0jc+40VAfe9TSTJ6bwxlQb2b2ueEQiRqhhjOIWuOZ9oOUB8Imm1os/lKoqLXL3rAF7PAjKSkAcF6mL/Fo9vGDm/v9j/ol9azFArplO7m0rPi/F+iP0hWV138+NV56tvbI7IcR9k+A4jC5h6yAZgdTLeMcPy0NuZagoog7c1IF+3WRKWFSiDBLH3dWzQBpvqLRESELAV8svdyZNTLx1E84kaKYrSperSgZlTWVf+4G8xJePYVox2lOssdHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16)
 by DS7PR11MB7905.namprd11.prod.outlook.com (2603:10b6:8:ed::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.25; Tue, 27 Aug
 2024 04:29:23 +0000
Received: from DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c]) by DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c%5]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 04:29:23 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/display: use old bpp as a base when modeset is
 not allowed
Thread-Topic: [PATCH] drm/i915/display: use old bpp as a base when modeset is
 not allowed
Thread-Index: AQHa96Sl6vYzfgyDGkesglUNDBY1PrI6gv2Q
Date: Tue, 27 Aug 2024 04:29:23 +0000
Message-ID: <DS0PR11MB75781933AE3DCE12DCCE54F4A3942@DS0PR11MB7578.namprd11.prod.outlook.com>
References: <20240826104132.966597-1-jouni.hogander@intel.com>
In-Reply-To: <20240826104132.966597-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7578:EE_|DS7PR11MB7905:EE_
x-ms-office365-filtering-correlation-id: 451c1188-444c-4bc4-b6a6-08dcc650d3a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?WY0Rjw7FBqX5ySj+62pa4s0zxPjIhapICb0auN0Bo46MHTZZYZBKBhE1+6?=
 =?iso-8859-1?Q?TrcM8wNI3fDEHfeJxeOUD3lvxiq72kuHcm+UzPZfDCxG9ilcUMLAUNgNnf?=
 =?iso-8859-1?Q?jemEv9dE1sYvzhTi5+g+ZiAMAdn+2Dx0y0lQlMvL+Lfew51+Fpd2NqvLi3?=
 =?iso-8859-1?Q?4qeBu/czjvhTnLR/3cE+dyo3oDDKMwmrstN+FT8Oo/k8jGAJxOSsUfm9//?=
 =?iso-8859-1?Q?SX3SLYSGnVbJsnUrCN2/DmGNySrGqY18zjkwKlRfiMgqgeLP2/p0ZbKc38?=
 =?iso-8859-1?Q?HATEo4Q77VKq4TqlgkSA/ylkWX0dQvtPIWLAGej6N5EQQkksKj7NexKoP1?=
 =?iso-8859-1?Q?AdxKpK6KW8aDhU2qBdS/L/k/Xji9BvkeVgNUZrSBGHRFJ6PeE8ONyvsvjW?=
 =?iso-8859-1?Q?Pdf6EaP1OSoVECD0Nf+5RLGCqm/QTbbpxlsWsqaOTGiit5Fd4V+DLELoDM?=
 =?iso-8859-1?Q?cPmV/jg/5Ie5DzFoSFtCBiLhe+2Y1GPXXsPuYXIC6Ex/rIFZZf7JkNJV5y?=
 =?iso-8859-1?Q?0S2Os0VPKki7NZ9OpTnDbFfZ3yDQV3AyLQJPjmLGdPNlJSEwoOc9eTRsOF?=
 =?iso-8859-1?Q?tWgiLN81TGofmg2hy8BuhGRDuQWEcWILePbNC7Z/wdlBsQ2TXXy619+Gt8?=
 =?iso-8859-1?Q?/CpQZng/xpiaXK0lXmKAdS+Llrd2An1EgWpkPXPGzCYv0WfcY1Q9fphNCd?=
 =?iso-8859-1?Q?pF6k3HYyCxgqYwGqlmoHuxZv27AnK0ZbF9fAe1ezxrffP9pU1TcsDLDFRX?=
 =?iso-8859-1?Q?hJ3eazbr9JRGYnaZmjXFcWU3sj0DuvbSJZ+2B9urp6JYhj6xkoi48FOVzO?=
 =?iso-8859-1?Q?MLcfZCtfQwLrYFmp2eplZb2K1TIdnBehg3OLa6JmG2wD6ixfhy/Un94kO+?=
 =?iso-8859-1?Q?+ModczHRgvg2203ESlEkrGauXxUI2bryDFBKfsi8/jgpxWducKRwAZXrRM?=
 =?iso-8859-1?Q?bjO3IWdOdm68MuMy7Td670VbU2WVc1ZNw1pgP1A6uEbNN12joHB2a8FgTX?=
 =?iso-8859-1?Q?mxdElYiWpRKmRT4LY61Iqvu18UCvYWCg77XAV69oOnyiFNVcy2equEO1Wv?=
 =?iso-8859-1?Q?o3CoOpBvyskUf2ElkPe8ChKF01w0C4xriI01R81gLl7yRL79gkkbFHuS8W?=
 =?iso-8859-1?Q?hbVIYTAhODGOuBPLoTJvcY3aGMkIBA1QQ0KN0RvjZ672BRtfy9TZjIuF7x?=
 =?iso-8859-1?Q?H3PATvbXqMiV1utBDozl0ncxpX3y22dlpLDbrC5cxBtE9LQPnEZbLd26lU?=
 =?iso-8859-1?Q?1mrbXTJMCY1lZNEJXsjNrupB50VRodf+6O4thZm6OE0BcXGZBNcCItdBqH?=
 =?iso-8859-1?Q?iduK6q6QBFZnZ2+p0LMq7X8kOREEOeZ6AGxOmnv9AC38+uL9CPRgZdggdx?=
 =?iso-8859-1?Q?4FPJ8RQMpf/QM2lcmyptnY7TI4Kv373X2X3sdClLsVkcdla3fBc99Oz345?=
 =?iso-8859-1?Q?LusnmBhWBR8+t+4+AP+HY1cg1zjNeJrulR7Ylg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7578.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?YmRer48Vz9kv3hs7zEWOAq9NtBrFVbQc+YKY4JuuCtz/tTAEaJBdDDJW5G?=
 =?iso-8859-1?Q?/3VCAdDqlC/XxVwz/JHqM5NU+QbZfndrl7DgO9d1X1HtPonTl0dB45H+iM?=
 =?iso-8859-1?Q?WYyyPwSERsakcYv4ggw5G5fdoo2FBIPQn+v10bwI/yBcFEBc3okqbTovlP?=
 =?iso-8859-1?Q?l4fSSny0NCcuTyVaUjogimgAdvh9BIjPDvhxMmPNaJbehL2pNPjvaO+E5b?=
 =?iso-8859-1?Q?5c8oFBkqGZM45GlBQyuRDpscirHKneC6p1XVfbzApDKO6vrRP95goyyA4U?=
 =?iso-8859-1?Q?BME13oxE61rqKIt84+si2DUSpKbugNEsPiclUVostrhdenavbePzrthLLL?=
 =?iso-8859-1?Q?H2qfMB+vh8OGf0EPYCA+sbTJ/suntTfaNjgBjSi4qVS6Gmsevry5uXDm1X?=
 =?iso-8859-1?Q?RB+Ei3joWJmxr+yZA5iMtMaKSuX5RP7jnZj2TjgllBI4u7rOOIwkEi5Ggs?=
 =?iso-8859-1?Q?KFmXlS9cHU0a65oDiGvz55x31gS/n/e9XIMtxVBCAw8yIDy7MSlzDFzZkR?=
 =?iso-8859-1?Q?g3EKEp7RcbK8RkHg71fAouHPK/6YwITqRa/hW/tDwlen66FxWTKt37FRKR?=
 =?iso-8859-1?Q?dJIcvJwTFOGnY+vWSJxHXoBwOGkjb94oS6l/vWu1l2K5+np5zm43E6t3+j?=
 =?iso-8859-1?Q?Lp/77M/VrdQtzFFOk1Sn0YdaQhN4A7Au0rj7QK312xOUsP8eLUQ52LvoKY?=
 =?iso-8859-1?Q?DL02GM+9/J/lAebxXqdITpqXHOZ84R8IDrkrUnRumrcBcDoJR7F5IPiXSK?=
 =?iso-8859-1?Q?N7iF4CeFl7kTrbPaxAIAO4Z5TrwuNpHa9PVD69hWDnyQi/GPmXAWgg64T6?=
 =?iso-8859-1?Q?4KaqCa2WD4B7TLzspHvRv8Ay3tf2kp8iOhDzDa1qaNosxcCdM+5CqMQ8ZG?=
 =?iso-8859-1?Q?FjjQCGa+isbXeZzG5CKchoJyRIBD5bXEPRlJyrEz+f/zMOsmjVOhDKrjR0?=
 =?iso-8859-1?Q?xo4Z+o5hGfCbDwo/cWs1ebw+/VLO8zXoFpT3kJdjzuzk85Z7XcHPDIX0Ze?=
 =?iso-8859-1?Q?BwWycSqK6AYec4X4rR484qLJVoakY1mbSZu6fDPbPEkmzF2sCMOMSM3sSr?=
 =?iso-8859-1?Q?LEkC1YjAOTRtQISs7nvOBEkW1u6KlgRdwvjywYjJdHahYjVYF3Z+6lvXi7?=
 =?iso-8859-1?Q?IJ9bRFKLMFitrCmSsMMKZfDqDfp/P1Px1gulL/TJXOJ3w0ToxsSK0f30wW?=
 =?iso-8859-1?Q?vhkvMvy7dSteRawwpZ+jOO9gnHiqNe6F2wj0tCR0PM1UMe3C26bDufVzdL?=
 =?iso-8859-1?Q?ks6Ol3v7JBEx0h/wOSfcLUFdw7xtHgGNm6EutNPeFEKPOcuNfjFCa5Ehim?=
 =?iso-8859-1?Q?khaxCHFJF07Yn1oQRgfucuyVgSfjUfLCxxt2FWaSsPV9DZ5ZoyuojI/UZg?=
 =?iso-8859-1?Q?RYRQpvPQYRJk/o51sttB6x0FEPL+InBwniCQyg+JbpZpD5Fhzb7FG3fiqz?=
 =?iso-8859-1?Q?ozHGb9LG1lwFEggy239sc4qatHHEWM3SEx7Pnrx2O7tI8UFkK+w1VOGMs3?=
 =?iso-8859-1?Q?cITCVwFjpeJB5pzjDc25r+GUPphQudLObP/OtakvyTke140IDVKMHZXGAd?=
 =?iso-8859-1?Q?DhvnZKH+T4NVO5mwqir/TszhydVuraR3QUjxA6+geRDOJHQ4wJF537jQ/t?=
 =?iso-8859-1?Q?g7sUlWH8UKI7MMnzuYIXxSBlTw0R5kFYUR?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7578.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 451c1188-444c-4bc4-b6a6-08dcc650d3a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 04:29:23.0270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hh1SxgHdulF1EjUE0RGU47bJAaHN2WXi3pEZyGVqxPjt3HNZaB+GeijQUEEdDFaQ5ocgF1tqjyfkQe2JpWrTbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7905
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
Reply-To: "20240826104132.966597-1-jouni.hogander@intel.com"
 <20240826104132.966597-1-jouni.hogander@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


This patch works properly. Thanks!

Tested-by: Shawn C Lee <shawn.c.lee@intel.com>

>
>We are currently observing failure on refresh rate change on VRR setup if =
full modeset is not allowed. This is caused by the mismatch in bpp configur=
ed by GOP and bpp value calculated by our driver. Changing bpp to value cal=
culated by our driver would require full mode set.
>
>We don't have mechanism to communicate current bpp to userspace -> Userspa=
ce can't request to use current bpp. Changing bpp means full modeset. This =
becomes a problem when userspace haven't allowed full mode set.
>
>Complete solution here would mean adding mechanism to communicate current =
bpp to userspace. User space should use this bpp to avoid changing bpp if i=
t wants to avoid full mode set.
>
>Tackle this for now in our driver by using existing bpp if full modeset is=
 not allowed.
>
>Signed-off-by: Jouni H=F6gander <jouni.hogander@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++------
> 1 file changed, 23 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 9049b9a1209d8..7b805998b280a 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -4385,21 +4385,34 @@ compute_baseline_pipe_bpp(struct intel_atomic_stat=
e *state,
> 			  struct intel_crtc *crtc)
> {
> 	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>-	struct intel_crtc_state *crtc_state =3D
>+	struct intel_crtc_state *new_crtc_state =3D
> 		intel_atomic_get_new_crtc_state(state, crtc);
>+	struct intel_crtc_state *old_crtc_state =3D
>+		intel_atomic_get_old_crtc_state(state, crtc);
> 	struct drm_connector *connector;
> 	struct drm_connector_state *connector_state;
> 	int bpp, i;
>=20
>-	if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
>-	    IS_CHERRYVIEW(dev_priv)))
>-		bpp =3D 10*3;
>-	else if (DISPLAY_VER(dev_priv) >=3D 5)
>-		bpp =3D 12*3;
>-	else
>-		bpp =3D 8*3;
>+	/*
>+	 * TODO: We don't have mechanism to communicate current bpp to
>+	 * userspace -> Userspace can't request to use current bpp. Changing bpp
>+	 * means full modeset. This becomes a problem when userspace wants to
>+	 * avoid full modeset. Tackle this on our driver by using existing bpp
>+	 * if full modeset is not allowed.
>+	 */
>+	if (!state->base.allow_modeset) {
>+		bpp =3D old_crtc_state->pipe_bpp;
>+	} else {
>+		if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
>+		     IS_CHERRYVIEW(dev_priv)))
>+			bpp =3D 10 * 3;
>+		else if (DISPLAY_VER(dev_priv) >=3D 5)
>+			bpp =3D 12 * 3;
>+		else
>+			bpp =3D 8 * 3;
>+	}
>=20
>-	crtc_state->pipe_bpp =3D bpp;
>+	new_crtc_state->pipe_bpp =3D bpp;
>=20
> 	/* Clamp display bpp to connector max bpp */
> 	for_each_new_connector_in_state(&state->base, connector, connector_state=
, i) { @@ -4408,7 +4421,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_=
state *state,
> 		if (connector_state->crtc !=3D &crtc->base)
> 			continue;
>=20
>-		ret =3D compute_sink_pipe_bpp(connector_state, crtc_state);
>+		ret =3D compute_sink_pipe_bpp(connector_state, new_crtc_state);
> 		if (ret)
> 			return ret;
> 	}
>--
>2.34.1
>
