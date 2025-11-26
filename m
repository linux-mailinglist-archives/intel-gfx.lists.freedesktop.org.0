Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68FFC8BB9F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 20:56:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA97C10E68D;
	Wed, 26 Nov 2025 19:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oKN41Foq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F0510E6AB;
 Wed, 26 Nov 2025 19:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764186969; x=1795722969;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z3DaoPbyGFAKIAveC9PIwnF6wr314KEjDYs8SYZClUU=;
 b=oKN41Foqmj/fwlMrKtNJ1an8CN8hQ1SkkLUh+Uf48vnscxg9t7f8vNWB
 AwXsjVxJ9pO6BgBAtPKp1r5gYqZZsdReSSg86sjGPpIiHodJiByEyeT+H
 lS8LuT7CFMlIoSaeT5Ae+ceug6R8Ik8wW29kMYthFCG7fugNxrocPe8Gw
 nLPELsY9FVZht1ixnEw0Q7UurARsfdkjPUS0fYNqw84kjMVRYpUxJvBmV
 +nPU4mInefF9KQV9Jg6cHH0eUNtxDFtK07hq3gHBfaJhwX6MwLGL0SYFY
 qQLPMtWX0uBtkHgSgF8a35kfMfRV8+ZIWa/fdtxtXdqQV+KSx9C2iOApg A==;
X-CSE-ConnectionGUID: 63tUUKoXTfSAFvfALfxcGA==
X-CSE-MsgGUID: 8AVBTSMMRYusWA1yzqiCiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="83840891"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="83840891"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:56:07 -0800
X-CSE-ConnectionGUID: o/Hs8CRvT3+t+3/pmf25oQ==
X-CSE-MsgGUID: EYc68MedTxuVvg8e4jPTPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="216384311"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 11:56:05 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 11:56:05 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 11:56:05 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.10) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 11:56:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j66f1Ko53LXjEKqqR0vQWLxWtB2zq2SAmNsVZxuP/q2g1ANPd34pvpGCDZXUwD+pAC4hJ5zlPENBuJtq+LOrKR+2bICrtwVbCpjeTUEwqlYx8U2KkxAPBjdJkB4Ldan74+byfLx02Qhi3OYbDmatI623t0E0kPO1PlcIywvNZ6hIklr7mMdK1Qq1s/gAl3H5tqnIX+1EG2lSQkBgjC5ZIY8p+GJS1lP+IbjtPTY0kPKrWtEy7p8nQw4jlvB/HwdOje1Bwm/CJqPG090W3UcWxbzUMu2EWp3+XPGQ1/h8b3ByC2+7HBBppPnkGoCF5xnNZxJACtfU8d66S8prVZ/S/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l35tYIlE6IDQvDjZHJIQr75XmMsVamtkQF6q8Ndyjy8=;
 b=mG0eveEdJL7pDsTXaWmtoq69I5EYICfWurIBgO3JWMZKMV/CJxS8dauNLiGptTDB64rtH+s43G6GacCCgLCR8yXKp0LwDPoeriOEHNlaHlZrS0PylgZbwGxndBPnTaDAfahxf9jsTleDm2qUIr6WtzFKUCbeNpZWkl7FK/CxVLpq/IbLDrw+I6vmBWXFRk6X1VjteBTkT4jvAdquwT6neBm3pesU0h6FgPXzBIJRM3vlwhzUPEpnlYp0v1md/evLggII22RmrGddMF94VrHrv7VZnpThpueMBKPx4GP/A3C1aFV8gGpMrV4R17f2sIP5RTqHiZaDH+/p+nrb8TeWJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB8096.namprd11.prod.outlook.com (2603:10b6:610:155::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 19:56:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 19:56:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "linux-rt-devel@lists.linux.dev"
 <linux-rt-devel@lists.linux.dev>, Mario Kleiner <mario.kleiner.de@gmail.com>, 
 Mike Galbraith <umgwanakikbuti@gmail.com>, Thomas Gleixner
 <tglx@linutronix.de>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: RE: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Thread-Topic: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Thread-Index: AQHcTWY1yWfvSF63uUSMAhwOOG89ErUFd4mggAAHXwCAAAJtYA==
Date: Wed, 26 Nov 2025 19:56:02 +0000
Message-ID: <DM4PR11MB6360D148BD7067E0BF59656AF4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-3-dev@lankhorst.se>
 <DM4PR11MB63609A43C9B11091A5FB41EFF4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
 <aSdYPKUJgbe84G1M@intel.com>
In-Reply-To: <aSdYPKUJgbe84G1M@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB8096:EE_
x-ms-office365-filtering-correlation-id: b3a5e921-d946-483e-5c4d-08de2d25d3b8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?23dCcyWy6DLJB9HaNaAhderje5+wpNC/xz1fECtTvIihZC1orVO6usooyO?=
 =?iso-8859-1?Q?a60xTY3NjTUtDrjVNs2TFgmExoO+u8JbJd7wta26Yv8TSb4+z8HWXfLQwq?=
 =?iso-8859-1?Q?71ROSWkVkMzu6X24gkDVeIo5Vqmf5sPjeahBAEzJpWSwH8fbUvybgsq8pP?=
 =?iso-8859-1?Q?iRQHlK99tp9Sx5+aD+UbFcco7i3004mc1aGeIxgcHdlbjbo7QFLX+cjhcG?=
 =?iso-8859-1?Q?1M1LbJcoKMtQg5ny2mlaU7DDZ7Vm5K+fcGrj/Kb7iLl4M6femAkzKU8wqm?=
 =?iso-8859-1?Q?sWC5PjpDrU8J/EEA/SghCVWJulhyzhwKMbTurB2UVz1cd9ZFEnGQ+L9MnC?=
 =?iso-8859-1?Q?zVnMPHb7AKRIl186yARspJX+4j2ICwsAYyai4oq1rhvZrh6N2QfD3vLoYH?=
 =?iso-8859-1?Q?GOHqS/DdZysKqvvyo0BINa9fq1uNJQrLh0iMGhRbBYQ/8cF7uMEEP69tC0?=
 =?iso-8859-1?Q?vn+6sI/ArRj83vakd5VAGPDHY2vsJYgkojwIYzqdYm0wYxpDWd0fIFo1+U?=
 =?iso-8859-1?Q?BqWGFkpm+rIfRugO6yzbRTgFu1/5d32t4EfzxRKpCsaWLkkMSGGMzsg83h?=
 =?iso-8859-1?Q?XsLpDO6MC/k4N5GxxOrJ/K5SW9yi5Q2NL4onICtFzCHwwCOGiZxjbCRYrd?=
 =?iso-8859-1?Q?qngGPplAHg9G+5gynQ5zQ55uTE51BKQhqW83QRtDfxA4Iby+UGtLe1X8/4?=
 =?iso-8859-1?Q?1LaGuVZz8cpenCxtNaJ6at2gm9IlrJUbO9XOY+HUNTypCKd/yiJp170+fS?=
 =?iso-8859-1?Q?oCZHptHVoPKlO5lXYdFXxfnQnmkmRV1Rb1oWELAX5+mgzHi5QYSVo7z01d?=
 =?iso-8859-1?Q?tx8HB4aAlojAxjGEzWEaHuBsbJsrYmLNgZcO5ckh6mjx7UhptJhKQHV3kn?=
 =?iso-8859-1?Q?RZZU13ZSi5DfpF9dMX5UdwN6gLdEjQ7MGsuFsWEXfx1UH+W2tNn41hPbce?=
 =?iso-8859-1?Q?vShzxqwIioWggW5TwXY6Lo9VOCDVcVXcOQyEpKS2iJnJD2I+9FYeElwtA0?=
 =?iso-8859-1?Q?jkkn4mn8OWHOvdPYDVjRQiyy2D908Q6tOzEWx8mZ7lLBbwPGWWXddrq6cr?=
 =?iso-8859-1?Q?v7WLaTMzGkbiomrlzWw2NVWrWeYyqFLy3Sb89DyL5VQ/IuEcTeqGcSuZuA?=
 =?iso-8859-1?Q?SoNFpM4rBC4BBJLdKsVYxPh1r1atIgRkqmys0vtAd8etMnj109UPUTqGVh?=
 =?iso-8859-1?Q?+P/b3G+zrumctsGF+K/3xJTeHS6pgfJ1PrRgZlXfdUjcLkYDQIzmlwKhHW?=
 =?iso-8859-1?Q?L7/PvoE/WWi2jrZf1eR7du4TGK8VpHea988e0e9enwqdYgV6zrrGgzPMu/?=
 =?iso-8859-1?Q?nXD4DUJtXUEOjc/jcSLSkSNY14MH+BRBXjzoDiFqcLXJECofJ9gKV/6ScT?=
 =?iso-8859-1?Q?0xAe9sowWUKfRjqSBUERZH2YVeutmkbj9gnwfExeoEZyWCcCb3dGjFChur?=
 =?iso-8859-1?Q?slHfZOkb3Bqv51zQXP2y4L12iMIGHepDr1lmyOhXNTf+XeVeej1tnk4dol?=
 =?iso-8859-1?Q?nCMqKXeojCpXwMxqgbhS/DZ38JzmeRFmnXQBe19LigxkZptuDt/85lHHOh?=
 =?iso-8859-1?Q?BY5tFL/9zLE/vbUCCabPULRfDANf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?MV/2NdV10DraxPzfdBgiP4r5Yj9H2zw3AgWd6jkpRiNJBTYHiooYD580vV?=
 =?iso-8859-1?Q?tMxgRBVzZ0at22nWVgjdtFR1VS1FZs1J76hkCwR8/SgAOXvCmQpfCtiph7?=
 =?iso-8859-1?Q?Hh35J9aKRB5HgQpmn2LoWs67KfK5jzb5ENAvD08bOWup7DXucaRunemXYE?=
 =?iso-8859-1?Q?vWJMbN+qPyU/ZEsJthDFi3hWczjzsNhrj2Gyp2PijlvAC3csvrfHnikhvy?=
 =?iso-8859-1?Q?pZcZdOAUTIkdlZh5pR20Vlr0SXeOGfpojwQpS+aP4B1iznuB5CJz76ziOL?=
 =?iso-8859-1?Q?spKjiFSqjf+N8BoB/DoVV/XwvDeSajeiw/ZnnhqfK4W5H1XjouxCRKkQ/w?=
 =?iso-8859-1?Q?iQiyqqyWrNjeQiwLlF2Vw9k+SvmkDLIylZ/HdZLI0IbzNxJy2SiOKjVkcs?=
 =?iso-8859-1?Q?XnJ5nRAxIa9bhptBasgSHJNBq6LXA1CoITmrhMzkeDdGsjW9hthnhryBfF?=
 =?iso-8859-1?Q?OaaWzzj0Is6BpJ0v088uBejzgJrwU+ea7u6FRgqZqqcTjqc1i1+0OWiaCH?=
 =?iso-8859-1?Q?3vElG4HH6diWKAFJOXcQmXMO580uGIWukGue50FJOxOIefiZE0ltyOyAgh?=
 =?iso-8859-1?Q?tleoow9wOcrOOkyizvjdpVucNeuDNcLhhuhaf4ZNADQa4axglrYP0sPE/S?=
 =?iso-8859-1?Q?szlTWgSnpPE05/OfsK6Mmm46PMFT61GojVwMq9BlB+M73lmq15XVjtCnEE?=
 =?iso-8859-1?Q?4tSypFteWoOUvfOvVL0OpgK1LNgVhKXXao5mn0T4AI6pl6+vjocnxB/Pnm?=
 =?iso-8859-1?Q?W5sAiHeaR5l8coUUkhBbZX1Jza+BwoLY4PM/5UlFmKdqaNpggXUdvD4w9+?=
 =?iso-8859-1?Q?GGvG7dkrR3ArqG3/japFK5vP3mtzRlNY+n3n2oF0h8Af7e88G0E3C3mUk2?=
 =?iso-8859-1?Q?ZPyLEa+uq/q6fzcp+5ECvJorTt9345qkVggtx7r+mVlTpzLGm3Qj09IyA1?=
 =?iso-8859-1?Q?EdPZFbAOKownOIjV0JPInk1cdt7Cn0WJyPdDZnhwDdmxedfPzBRa/4R106?=
 =?iso-8859-1?Q?lmqw7ct+JHj0vTsGlCqf3PkmFqJ6ntJ63i6y3q9wbzcaZLnUrGFMMlOly5?=
 =?iso-8859-1?Q?yb+r8PiW+DkPL0YtoAn+Vj6H7TJ45mJHEAWfP1oGVZX8LHM5aahnnGmr1h?=
 =?iso-8859-1?Q?0L4hZUavSO3hBbIRilEEeDmCCqCpK2YzcXv4rwXr/htORrd2nm4iFqq9pW?=
 =?iso-8859-1?Q?93yAsMzjbRqxTHm9kVzcx5VPnYmhfCNx5Id+GtZJbbdrIm7kO0iZJdryBz?=
 =?iso-8859-1?Q?P+N7qOrZ+hPNGGAv5YUUHvcAMUN0aMSg99b83HDug4YvwTVhbVHBivhfFj?=
 =?iso-8859-1?Q?GBynmqCZfQ8djQVG7c6yukvnmQYIRd+9cSg9eVarPGnHrpligv4vjIjKB7?=
 =?iso-8859-1?Q?5kq7Ov32/H+wuy0kr5ERwj7tIkG6f13t850jr8UQmatpo4w359c78222O8?=
 =?iso-8859-1?Q?jMNLt/FMT1palLRzFIgOx4j/ZsCqivv8il+BlJiPjOPxFWVgUy4zaAT12D?=
 =?iso-8859-1?Q?QIX6VacmnVX617r6YINdkIcStDALEc3mTQ/KeZWUe1Xsq6WvXGl9z+XMdy?=
 =?iso-8859-1?Q?cRi+iE7O28XNJC5hunpn+R/eRzBRfwAz47b9LD9CRNiYowKRr9HidO/djn?=
 =?iso-8859-1?Q?mObN86Y4JJPMHa+rCx750+qopq6+0Mx68x?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3a5e921-d946-483e-5c4d-08de2d25d3b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 19:56:02.1533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /BIbBIZxlatzqqdAVNq7fPz0c4WukQwBeV92fX1bpGWf/mhufQu04h8p0knEunnVrHaXEddbtzJJD+uLTsi6UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8096
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
> Sent: Thursday, November 27, 2025 1:13 AM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: Maarten Lankhorst <dev@lankhorst.se>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org; linux-rt-devel@lists.linux.dev; Mario Kle=
iner
> <mario.kleiner.de@gmail.com>; Mike Galbraith <umgwanakikbuti@gmail.com>;
> Thomas Gleixner <tglx@linutronix.de>; Sebastian Andrzej Siewior
> <bigeasy@linutronix.de>; Clark Williams <clrkwllms@kernel.org>; Steven
> Rostedt <rostedt@goodmis.org>
> Subject: Re: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
> intel_pipe_fastset
>=20
> On Wed, Nov 26, 2025 at 07:19:47PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Maarten Lankhorst
> > > Sent: Tuesday, November 4, 2025 2:06 PM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst
> > > <dev@lankhorst.se>; Mario Kleiner <mario.kleiner.de@gmail.com>; Mike
> > > Galbraith <umgwanakikbuti@gmail.com>; Thomas Gleixner
> > > <tglx@linutronix.de>; Sebastian Andrzej Siewior
> > > <bigeasy@linutronix.de>; Clark Williams <clrkwllms@kernel.org>;
> > > Steven Rostedt <rostedt@goodmis.org>
> > > Subject: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
> > > intel_pipe_fastset
> > >
> > > intel_set_pipe_src_size(), hsw_set_linetime_wm(),
> > > intel_cpu_transcoder_set_m1_n1() and
> > > intel_set_transcoder_timings_lrr()
> > > are called from an atomic context on PREEMPT_RT, and should be using
> > > the _fw functions.
> >
> > This could be ok but we need to be sure that all are called with power =
domains
> up.
> > I think would be safe to keep this under RT check so that we don't end
> > up breaking any generic non RT usecase.
>=20
> When removing the locks from register accesses one needs to consider what
> platforms the code runs on, what other register are on the same cacheline=
, and
> whether they can be accessed in parallel. If there is something there the=
n we may
> not be able to remove the locks.
>=20
> That's assuming the "system hangs when same cacheline is accessed from
> multiple cpus" issue is real for display registers, and I'm actually not =
100% it is.
> But we'd need to run some tests on the affected systems
> (~ivb/hsw) to get any kind of confidence here. IIRC some old intel_gpu_to=
p thhat
> directly poked the registers was very good at hitting it on hsw at least,=
 so that
> would be a decent starting point.
>=20
> Anyways, I'm going to be replacing the uncore lock with a display specifi=
c lock
> soonish, and I suppose I can just make that a raw spinlock to appease RT.

Thanks Ville, yeah I am also not confident to switch to the fw version. Eve=
n if we have
to try this should be made limited to RT cases, where we can contain and st=
abilize as
we test and find out any issues.

> >
> > @Ville Syrj=E4l=E4 Any thoughts on this ?
> >
> > Regards,
> > Uma Shankar
> >
> > > This likely prevents a deadlock on i915.
> > >
> > > Again noticed when trying to disable preemption in vblank evasion:
> > > <3> BUG: sleeping function called from invalid context at
> > > kernel/locking/spinlock_rt.c:48 <3> in_atomic(): 1, irqs_disabled(): =
0,
> non_block:
> > > 0, pid: 1505, name: kms_cursor_lega <3> preempt_count: 1, expected:
> > > 0 <3> RCU nest depth: 0, expected: 0 <4> 4 locks held by
> kms_cursor_lega/1505:
> > > <4>  #0: ffffc90003c6f988 (crtc_ww_class_acquire){+.+.}-{0:0}, at:
> > > drm_mode_atomic_ioctl+0x13b/0xe90 <4>  #1: ffffc90003c6f9b0
> > > (crtc_ww_class_mutex){+.+.}-{3:3}, at:
> > > drm_mode_atomic_ioctl+0x13b/0xe90 <4>
> > > #2: ffff888135b838b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at:
> > > intel_psr_lock+0xc5/0xf0 [xe] <4>  #3: ffff88812607bbc0
> > > (&wl->lock){+.+.}-{2:2},
> > > at: intel_dmc_wl_get+0x3c/0x140 [xe]
> > > <4> CPU: 6 UID: 0 PID: 1505 Comm: kms_cursor_lega Tainted: G     U
> > > 6.18.0-rc3-lgci-xe-xe-pw-156729v1+ #1 PREEMPT_{RT,(lazy)} <4>
> > > Tainted: [U]=3DUSER <4> Hardware name: Intel Corporation Panther Lake
> > > Client Platform/PTL-UH LP5
> > > T3 RVP1, BIOS PTLPFWI1.R00.3383.D02.2509240621 09/24/2025 <4> Call
> Trace:
> > > <4>  <TASK>
> > > <4>  dump_stack_lvl+0xc1/0xf0
> > > <4>  dump_stack+0x10/0x20
> > > <4>  __might_resched+0x174/0x260
> > > <4>  rt_spin_lock+0x63/0x200
> > > <4>  ? intel_dmc_wl_get+0x3c/0x140 [xe] <4>
> > > intel_dmc_wl_get+0x3c/0x140 [xe] <4>
> > > intel_set_pipe_src_size+0x89/0xe0 [xe] <4>
> > > intel_update_crtc+0x3c1/0x950 [xe] <4>  ?
> > > intel_pre_update_crtc+0x258/0x400 [xe] <4>
> > > skl_commit_modeset_enables+0x217/0x720 [xe] <4>
> > > intel_atomic_commit_tail+0xd4e/0x1af0 [xe] <4>  ?
> > > lock_release+0xce/0x2a0 <4>
> > > intel_atomic_commit+0x2e5/0x330 [xe] <4>  ?
> > > intel_atomic_commit+0x2e5/0x330 [xe] <4>  drm_atomic_commit+0xaf/0xf0
> <4>  ?
> > > __pfx___drm_printfn_info+0x10/0x10
> > > <4>  drm_mode_atomic_ioctl+0xbd5/0xe90 <4>  ?
> > > lock_acquire+0xc4/0x2e0 <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> > > <4>  drm_ioctl_kernel+0xb6/0x120
> > > <4>  drm_ioctl+0x2d7/0x5a0
> > > <4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
> > > <4>  ? rt_spin_unlock+0xa0/0x140
> > > <4>  ? __pm_runtime_resume+0x53/0x90 <4>  xe_drm_ioctl+0x56/0x90
> > > [xe] <4>  __x64_sys_ioctl+0xa8/0x110 <4>  ? lock_acquire+0xc4/0x2e0
> > > <4>  x64_sys_call+0x1144/0x26a0 <4>  do_syscall_64+0x93/0xae0 <4>  ?
> > > lock_release+0xce/0x2a0 <4>  ? __task_pid_nr_ns+0xd9/0x270 <4>  ?
> > > do_syscall_64+0x1b7/0xae0 <4>  ? find_held_lock+0x31/0x90 <4>  ?
> > > __task_pid_nr_ns+0xcf/0x270 <4>  ? __lock_acquire+0x43e/0x2860 <4>
> > > ? __task_pid_nr_ns+0xd9/0x270 <4>  ? lock_acquire+0xc4/0x2e0 <4>  ?
> > > find_held_lock+0x31/0x90 <4>  ? __task_pid_nr_ns+0xcf/0x270 <4>  ?
> > > lock_release+0xce/0x2a0 <4>  ? __task_pid_nr_ns+0xd9/0x270 <4>  ?
> > > do_syscall_64+0x1b7/0xae0 <4>  ? do_syscall_64+0x1b7/0xae0 <4>
> > > entry_SYSCALL_64_after_hwframe+0x76/0x7e
> > >
> > > Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++--------=
--
> > >  drivers/gpu/drm/i915/display/intel_vrr.c     | 16 ++++-----
> > >  2 files changed, 26 insertions(+), 26 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 42ec787986666..1bff1148fe9d7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -1573,9 +1573,9 @@ static void hsw_set_linetime_wm(const struct
> > > intel_crtc_state *crtc_state)
> > >  	struct intel_display *display =3D to_intel_display(crtc_state);
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >
> > > -	intel_de_write(display, WM_LINETIME(crtc->pipe),
> > > -		       HSW_LINETIME(crtc_state->linetime) |
> > > -		       HSW_IPS_LINETIME(crtc_state->ips_linetime));
> > > +	intel_de_write_fw(display, WM_LINETIME(crtc->pipe),
> > > +			  HSW_LINETIME(crtc_state->linetime) |
> > > +			  HSW_IPS_LINETIME(crtc_state->ips_linetime));
> > >  }
> > >
> > >  static void hsw_set_frame_start_delay(const struct intel_crtc_state
> > > *crtc_state) @@ -2543,14 +2543,14 @@ void intel_set_m_n(struct
> intel_display *display,
> > >  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> > >  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)  {
> > > -	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m)=
;
> > > -	intel_de_write(display, data_n_reg, m_n->data_n);
> > > -	intel_de_write(display, link_m_reg, m_n->link_m);
> > > +	intel_de_write_fw(display, data_m_reg, TU_SIZE(m_n->tu) | m_n-
> > > >data_m);
> > > +	intel_de_write_fw(display, data_n_reg, m_n->data_n);
> > > +	intel_de_write_fw(display, link_m_reg, m_n->link_m);
> > >  	/*
> > >  	 * On BDW+ writing LINK_N arms the double buffered update
> > >  	 * of all the M/N registers, so it must be written last.
> > >  	 */
> > > -	intel_de_write(display, link_n_reg, m_n->link_n);
> > > +	intel_de_write_fw(display, link_n_reg, m_n->link_n);
> > >  }
> > >
> > >  bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
> > > @@ -2737,9
> > > +2737,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> > > intel_crtc_state *crtc
> > >  	}
> > >
> > >  	if (DISPLAY_VER(display) >=3D 13) {
> > > -		intel_de_write(display,
> > > -			       TRANS_SET_CONTEXT_LATENCY(display,
> > > cpu_transcoder),
> > > -			       crtc_state->set_context_latency);
> > > +		intel_de_write_fw(display,
> > > +				  TRANS_SET_CONTEXT_LATENCY(display,
> > > cpu_transcoder),
> > > +				  crtc_state->set_context_latency);
> > >
> > >  		/*
> > >  		 * VBLANK_START not used by hw, just clear it @@ -2755,9
> > > +2755,9 @@ static void intel_set_transcoder_timings_lrr(const struct
> > > intel_crtc_state *crtc
> > >  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP
> > > mode.
> > >  	 * But let's write it anyway to keep the state checker happy.
> > >  	 */
> > > -	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
> > > -		       VBLANK_START(crtc_vblank_start - 1) |
> > > -		       VBLANK_END(crtc_vblank_end - 1));
> > > +	intel_de_write_fw(display, TRANS_VBLANK(display, cpu_transcoder),
> > > +			  VBLANK_START(crtc_vblank_start - 1) |
> > > +			  VBLANK_END(crtc_vblank_end - 1));
> > >  	/*
> > >  	 * For platforms that always use VRR Timing Generator, the
> > > VTOTAL.Vtotal
> > >  	 * bits are not required. Since the support for these bits is
> > > going to @@ -
> > > 2771,9 +2771,9 @@ static void intel_set_transcoder_timings_lrr(const
> > > struct intel_crtc_state *crtc
> > >  	 * The double buffer latch point for TRANS_VTOTAL
> > >  	 * is the transcoder's undelayed vblank.
> > >  	 */
> > > -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> > > -		       VACTIVE(crtc_vdisplay - 1) |
> > > -		       VTOTAL(crtc_vtotal - 1));
> > > +	intel_de_write_fw(display, TRANS_VTOTAL(display, cpu_transcoder),
> > > +			  VACTIVE(crtc_vdisplay - 1) |
> > > +			  VTOTAL(crtc_vtotal - 1));
> > >
> > >  	intel_vrr_set_fixed_rr_timings(crtc_state);
> > >  	intel_vrr_transcoder_enable(crtc_state);
> > > @@ -2790,8 +2790,8 @@ static void intel_set_pipe_src_size(const
> > > struct intel_crtc_state *crtc_state)
> > >  	/* pipesrc controls the size that is scaled from, which should
> > >  	 * always be the user's requested size.
> > >  	 */
> > > -	intel_de_write(display, PIPESRC(display, pipe),
> > > -		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height -
> > > 1));
> > > +	intel_de_write_fw(display, PIPESRC(display, pipe),
> > > +			  PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height
> > > - 1));
> > >  }
> > >
> > >  static bool intel_pipe_is_interlaced(const struct intel_crtc_state
> > > *crtc_state) diff -- git a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > index 00cbc126fb366..2e19673697fa4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > @@ -300,12 +300,12 @@ void intel_vrr_set_fixed_rr_timings(const
> > > struct intel_crtc_state *crtc_state)
> > >  	if (!intel_vrr_possible(crtc_state))
> > >  		return;
> > >
> > > -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> > > -		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> > > -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> > > -		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> > > -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder)=
,
> > > -		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> > > +	intel_de_write_fw(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> > > +			  intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
> > > +	intel_de_write_fw(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> > > +			  intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
> > > +	intel_de_write_fw(display, TRANS_VRR_FLIPLINE(display,
> > > cpu_transcoder),
> > > +			  intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
> > >  }
> > >
> > >  static
> > > @@ -693,7 +693,7 @@ static void intel_vrr_tg_enable(const struct
> > > intel_crtc_state *crtc_state,
> > >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> > >  	u32 vrr_ctl;
> > >
> > > -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> > > TRANS_PUSH_EN);
> > > +	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder),
> > > +TRANS_PUSH_EN);
> > >
> > >  	vrr_ctl =3D VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
> > >
> > > @@ -705,7 +705,7 @@ static void intel_vrr_tg_enable(const struct
> > > intel_crtc_state *crtc_state,
> > >  	if (cmrr_enable)
> > >  		vrr_ctl |=3D VRR_CTL_CMRR_ENABLE;
> > >
> > > -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > > vrr_ctl);
> > > +	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > > +vrr_ctl);
> > >  }
> > >
> > >  static void intel_vrr_tg_disable(const struct intel_crtc_state
> > > *old_crtc_state)
> > > --
> > > 2.51.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
