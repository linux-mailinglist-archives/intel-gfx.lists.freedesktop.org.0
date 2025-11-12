Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26308C507E7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:16:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6C510E18E;
	Wed, 12 Nov 2025 04:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/jCGvB9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9B8510E18E;
 Wed, 12 Nov 2025 04:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762920959; x=1794456959;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F+grh6G0ELxjeFjrljRRZ9C3ud7ZvdBoGjSxtFUPo0w=;
 b=n/jCGvB90utvrnH7ntd71sntZ8/9ZtcZ2gM2qjpOIor5jl1FdabpQBw0
 Z6v7nW57QzaWAoVr9xXhj3Gfb1W/F3nkQ9F9pjcu33zbPXrhyq5z5mAU8
 dVzvFy9MB1XyKnm0EM3L2GjUpZJ2L3Xkm1d0/WOiac9A4RQ36ghZL94R6
 rwJtz14kpfsShhfR5wblmKyhWl5xRCx7W/01FnqPf4nSTbMpioFcBPejy
 x65duHpHkl69GES0iv2IKYOABb2SnAGSn9Iqq8JsLArugCBnPER9TT6TE
 r3n1Xz9cB5LZAAi/w4pZSvcIKil/tgkJSkH0Aog4cdr6cKNoLy2Irm+3X w==;
X-CSE-ConnectionGUID: 0rOZOwLBQ/S/zTaORxpEBQ==
X-CSE-MsgGUID: PI3XdZbRSBuQSR4gK8fRug==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64913432"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64913432"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:15:58 -0800
X-CSE-ConnectionGUID: 3m1Stz9iQ1yKcf55NBLpxw==
X-CSE-MsgGUID: d8XdxZldRiOXMuGRf++Szg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="189083250"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:15:58 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:15:58 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:15:58 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:15:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xzNzpV7u0eNbmq82VXxYt+fHeftDnWBX2SmDckshQc5WYwPVzEMIHIQvgvnvY2DQgViOQNd3uUSXHadQ4E7fItl0ytTomT0Vv1lyj+Ab+wRK9XQyBszLyTLoU9b1dxDV9fTF5+QkwQD6KIMpVvnDHCzRudl3+plekZlotiSDhHgzpWoRySIiF53p+2x7chT88kxMgVDt6w2sNTj2bY/Nun7dxezVFygexOXV0dzkP9H9Nwfa14QchBst61EsB5Y8cjCIIQ2huusT2N2eLTNdbkwZP5vDH2DlEnOlpscDVRDHvU5TkC/kud4lwQmeR9lDEf+SIcoRplmp4c767b0u3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SFU0SHdWRHylSvgcPCTo+gb22/XznPQRxeFpCP5gDYk=;
 b=qSACDKZ5AfrXfiPypmCZpGTZHlolMiYxFE1IfnRGqSKShKMpMB3RxJ5e5apGFnlT6QBTSC7J48orBH6+ic0ui3EzaDpNa4EEYMun9jTEVWDHfPale5h8JyQA+vKiILdhSq3fJGIqrWkZkgy74y/+M9gr3DiDQoCnFQVwjgn+LnCj8a+2XAfOOEk9HSZe8G/6PrhI9R79uLxjyLN4ifjyOsfnO2O04ikQt7PMufPOdv2nNWS3XLUJHoBBD0W9J1LkapGup25KqeBp7YmaFM3cNmAov61bUV1luATpXE68i6sPFqh9NozMUIfcX8dNHABpafuLcIzM6YOCmcSeXi3v1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB6667.namprd11.prod.outlook.com
 (2603:10b6:303:1ea::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 04:15:55 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:15:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [CI 11/32] drm/i915/display: Determine Cx0 PLL DP mode from PLL
 state
Thread-Topic: [CI 11/32] drm/i915/display: Determine Cx0 PLL DP mode from PLL
 state
Thread-Index: AQHcSlaJWa1uImT/rkSSV9Yk/+xj3bTtDUsQgABFIYCAAS7XcA==
Date: Wed, 12 Nov 2025 04:15:55 +0000
Message-ID: <DM3PPF208195D8D082279C895C9F2966823E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-12-mika.kahola@intel.com>
 <IA3PR11MB893752DEB841A09898BEB562E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aRML00uJoXeoHj8J@ideak-desk>
In-Reply-To: <aRML00uJoXeoHj8J@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB6667:EE_
x-ms-office365-filtering-correlation-id: 7fc34de5-1d02-4390-30a1-08de21a22cfd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?t4y6Ld6QXh3gS7QQlMSulDH+3lLNuRLudrjbl4go83+iklvESdoGe0kQAMRl?=
 =?us-ascii?Q?HpGWZZXIDkmFtKYy+mqo4cnFM+rys0LxkdVZxDH6y5F2sa07OeTBbGPAyvyg?=
 =?us-ascii?Q?SKh1cEgEavH0DL4CEXtvlpWjW7648WQrKdlDFg5DO6k5EzDdgU3vBzgVK5xT?=
 =?us-ascii?Q?P20Spgu6V112w9nHb4NjUae0twU8X1rSd+Hp2XHmwBD02u2rNZkuu743M5Eo?=
 =?us-ascii?Q?QsRsMJFi4sy5ZtSSCTQgdmbgf2dLTLYdoMkPmULPcxSPc98T8t9rOrzIi0Pg?=
 =?us-ascii?Q?IaHnZZmaAFlCLiANKbq5LdzfJffVZFtDb2V4kVvdIgzX+M/gC9xRCP+iLeTb?=
 =?us-ascii?Q?EOXhsByRpXie7zayFudBy5I/ODxd/gTTPhTGsFiLp4lJ1cSx9A5OWIS9xAp9?=
 =?us-ascii?Q?SPDOPBG6ziwLrW4J0FS3rVdYYY2aQqVDP+6dl453oWjf4ujSovMz9rYnTEfp?=
 =?us-ascii?Q?AZY9XjEoX3w8m870F9zvrgJLx5lBjJdIPFxw9oOfV65eTPh6u70eZ0xQFPdS?=
 =?us-ascii?Q?jIox7imoxwBpFmVpWrzwp7f85jTp1cZpu89UR20Md9m3WL3u8NRHDmDClq9N?=
 =?us-ascii?Q?Jpb8l7sbiT5g/EssiSBsLH6Yy0eYR4cc/zL84T6dDhXtlYJO3eEV5slXAAAf?=
 =?us-ascii?Q?rGkybSBV7yVlNJRfHPabiX+Tn41AGAS7ETBjABNQpT8MW351wMzTeROSztHZ?=
 =?us-ascii?Q?URP9KLF4hTDbiGpn+pAZQgYYpPq2coztBl4kCGVfLMBDYHXb9xV6vtsOvU3C?=
 =?us-ascii?Q?Ke2hOYWJpX+cz4Kwd7faz8GI3sKTpn/noLokdaAszBtj/Qgk2XukjlmzqZ5R?=
 =?us-ascii?Q?zwuz4XcCzyEU9HUgyu1pf1M+iKDBSW5tgRgZ1bpLx3eb/jt59C0nht3+sHR+?=
 =?us-ascii?Q?b2Y8WJZNKXMHI2zXjzp21v2T4tpnnkCkLauMSrZwGMgcew5B/WCcNamT/eGJ?=
 =?us-ascii?Q?0AbAa8jQ2+UVlfqPkMe+cKXly7cSqbiMMlh0BWGZTTFdeuOwvaxEqiZ8aQHs?=
 =?us-ascii?Q?DyQF9ItQnbwO/CAu4OIc/DO1LPHFFb+g9l8L/qqoRg+B545p+bZs4KdB6766?=
 =?us-ascii?Q?zm4dAy4FAes71CdIRoh/yf586k7tgGVscAFZyCvkPP6Upo6t6bWJPiL5xaRr?=
 =?us-ascii?Q?uL0+FLYLXDZeu/gtlF2hT8BGQpkYQi/xFcRHfzX4jwcTLLMBCfQgSxMRTub+?=
 =?us-ascii?Q?dNyGQm9JrmDl0Vo4jfsrY2bqmzJGWQyFb4Y3WhjJ3EgdDqdtIpnUiI64Qqm8?=
 =?us-ascii?Q?tF5e5pabszBRlsZOQalfHAxsrR15PYQFdmW8qNdAEDqiBwRcUZdiXCGt9WY9?=
 =?us-ascii?Q?VWstbcjXjGwr7cecmQ939YYMaexxnheP07dUlr/PpKX+1Z5uvNks8vPwJbtN?=
 =?us-ascii?Q?O9NB30W5G0p9tENai43f9dYakv+m74xVSS2Kcha2WbiQsuU5CGNcv6orrK33?=
 =?us-ascii?Q?/C0alW5DhNG5cS23+TVWgvWh53SOzHM2v74QOegCeyxFQBJq3DY5S6vaTPy1?=
 =?us-ascii?Q?F5KXpEBl2cpr6G/4oVS8o66AnQevvnJa9tPk?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2EFRTXIrAoZdhDamTOH6Bbq2F24rq3tilaTWTk5hxoa6C13Bwgxv47CYRU61?=
 =?us-ascii?Q?hFMBPlcLH4NQ3Az/SVfHQLxAs47S/TcBWJxUdILOnm4ARuyf7wf3dK2N4+wa?=
 =?us-ascii?Q?+8Mgrs323XOXWOt7Rhp1kX3F+w9Za6QwLb6QNcs5NvWAzcwk3gW4y+t9Mf3F?=
 =?us-ascii?Q?sSMO0B6lwbZ3tyD9jtymkTm4KWybP/GQueymmbO+kioHFGUyGj2n5nVrTnEh?=
 =?us-ascii?Q?WrXn1tGp1RNI0p3zgGIgmqwYXisE5NGIUY50JtgRubLOcQLrppyQxtFUsWPU?=
 =?us-ascii?Q?e9B3syfA4Y+cuOnSygYLjWkgpgmdZJt0QpQnlviSXGLtr6bptvnviN/r+h9q?=
 =?us-ascii?Q?og/gSK6Tbb5yTcV/2TaHsuWHqch7CCUi7RJ4OXsSeOQ/5ufZPG9R6zxOMvHJ?=
 =?us-ascii?Q?hFxCUOOCybXDeu5fdYYzDsPtUqYM9LcCirg6Kx/aNYE/iK/RHb/gyjRCszyX?=
 =?us-ascii?Q?6UhEqQyo0QAmVkgHZXsUBs6w41iMXvGUzwdnZNF7naX0ckMeuA3f/Dr2qofE?=
 =?us-ascii?Q?Ih78IqeO4z9nE64zbHhAV5bPs0DD276ehIToAYAIEZ4i5J0Ienac7MIO5/2T?=
 =?us-ascii?Q?aj992L9DgCwV+8UVUMyYIPDF4W9oaN95cPZEd2YO+WaR4SODRP2r/OwNEUln?=
 =?us-ascii?Q?PkjKO4P9HMXIm3svsPNvHRi1m+LawxBbf8zLaX3rFnWUrJrfsh33+NaCtpgo?=
 =?us-ascii?Q?GQp7Cf8uGTK5HRAknjXiPTHZHh5ihUBoF7k88CDW34Bb+nJjvcY6y72bHHXN?=
 =?us-ascii?Q?C/hysYGUgfXbWWFaYWRwVm1psA0hVnGrLol3uDzXK7FenA2d4tWJuyHLCOfs?=
 =?us-ascii?Q?FRlrQ3SfJzmG2cgSVhBWlvhsbkY39uVoxD3xW9VS8gT0o4nWxdOyrG44vSPx?=
 =?us-ascii?Q?5fCq6wI7QcRik6uz99cAz030RAFehrZNRuYeoDwz1II9z4pNziAOKwUeb70L?=
 =?us-ascii?Q?IhoO6/mJ1YSb3yWcNpGMgzjSJleDs++K+3TX+dE0HOxSlnZlOhIj5FFhdQoA?=
 =?us-ascii?Q?BLW2FRjGBukVUXFbLK3cyP0MyeNzpRENIoAq2YJXh5q1J7Ux8rNViRL5jPMO?=
 =?us-ascii?Q?yZyBRX3zW8FuDswBxdR5G5KALayB9hyN5+AMz6nKFO2e8rHj3lNiHy7DAEtc?=
 =?us-ascii?Q?vYq62vqJxFT2j/+WNRe3wiE384MP37eM5wF1k0L5tGQAVr1U8hCcDYGuv/Jf?=
 =?us-ascii?Q?Y1Q5aKetbdvYVn1nzUkQWDiF/ZCp2vgAxQNWmFWQX+VmELC+u47PjZ2EDl8l?=
 =?us-ascii?Q?a9WeC9otvx6qFsHnAb8Kr1X5WOfsm1mszajMLO/UGtVflcerQ0MRapwBAxbp?=
 =?us-ascii?Q?ubzhSneQAm1MkPd0be55KXvw5S+xIoDmCTMRp3MqnJzrKhDPbt5Ut5mnEm4L?=
 =?us-ascii?Q?4f6SPOGfCvNGbjnDG1AHqsZuHGUpvvHqTfKO8FqNT+h3M3AtrF+6GmzbuyR7?=
 =?us-ascii?Q?6dr+MzUQg2qeWZnfL4BInh3alObi2oG5TWlteZVasDgjQBLx523Py/j4zMKM?=
 =?us-ascii?Q?wBNg3UQLVM2/1ybOb8zzHTfhem1WxdDH5ljPe8Ue9tdXqc2u4TS0Ox3WalIV?=
 =?us-ascii?Q?rw1+SPiMBAnkw1WZWF32ac4tlEEhsqs5lv/1m2Pr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fc34de5-1d02-4390-30a1-08de21a22cfd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:15:55.5707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eAZeSkkRfT93geFuEncVgDKvh3btZcUHovdOSZxrUZt78VJHQC0nUZ2FE6thebuvAQRiZ4lAG+wJIEGatOgcSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6667
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, November 11, 2025 3:42 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Kahola, Mika <mika.kahola@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Subject: Re: [CI 11/32] drm/i915/display: Determine Cx0 PLL DP mode from =
PLL
> state
>=20
> On Tue, Nov 11, 2025 at 08:08:34AM +0200, Suraj Kandpal wrote:
> > [...]
> > > @@ -2929,10 +2958,11 @@ static void intel_c20_pll_program(struct
> > > intel_display *display,
> > >
> > >  static void intel_program_port_clock_ctl(struct intel_encoder *encod=
er,
> > >  					 const struct intel_cx0pll_state
> *pll_state,
> > > -					 bool is_dp, int port_clock,
> > > +					 int port_clock,
> > >  					 bool lane_reversal)
> > >  {
> > >  	struct intel_display *display =3D to_intel_display(encoder);
> > > +	bool is_dp =3D cx0pll_state_is_dp(pll_state);
> >
> > Wouldn't a simple check of drm_encoder's type tell us if it is dp or no=
t ?
>=20
> For a DDI encoder drm_encoder::encoder_type is
> DRM_MODE_ENCODER_TMDS, from which you can't determine if the encoder is
> used for a DP or HDMI output. This also applies to intel_encoder_is_dp(),=
 which
> will return true if for instance a DDI encoder wired to a DP++ connector =
is used
> for an HDMI output.
>=20

In that case LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > Regards,
> > Suraj Kandpal
