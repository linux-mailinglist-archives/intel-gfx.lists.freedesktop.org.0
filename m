Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B87D08063
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 09:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C2A10E859;
	Fri,  9 Jan 2026 08:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ibhFAuNq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9792210E859;
 Fri,  9 Jan 2026 08:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767949091; x=1799485091;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pXZhE11qUKsWUfaNqUZBrQn/oc3fm+sMkBnEQ3RWP6I=;
 b=ibhFAuNqYbZEOGsD6/93C9sU4vWTHR3K6ruVD9ClEijF/Z9ggNAXfzHj
 H3nX4BVynkzUJcUhr2gIk4DMSqsp3fm/i4zOHnuFEhE4Aw/yKqoOrvdDY
 dqL9mNaEAxHSszEZXwrQ1BevQYzkSRAXY1+N7fF/oxiKpNXIA5bEomloQ
 xcruM+132ceUJb0CueXqb3NfVcZ1nrVYnQ1uithy82VshTKIv2nla58/a
 ZmOP9CuzWqXwaFCkK8Z8tIhp6qx5w/WuppQR+J+ij+k392krQtINQ8MzB
 9XHV8RqHjHDAqMo4M0Csba67zu1sbtnPo4xIAwTigVXLkuLE0XUT3eRBU A==;
X-CSE-ConnectionGUID: ZErkYDEDSpSfmfFpXFkg3Q==
X-CSE-MsgGUID: H1L0UaBsSqa7lSKLTpjzWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="72964457"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="72964457"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 00:58:11 -0800
X-CSE-ConnectionGUID: VlmlqoXAR2+SRL+Vs873ig==
X-CSE-MsgGUID: 8Jh5gKfBRpOmt1oXM4Df5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="203046538"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 00:58:11 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 00:58:10 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 9 Jan 2026 00:58:10 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 00:58:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lPFBgxuJ5NEWG1BNW6TzoNl0KYtkgmC7llNmodTTQZ8tA3GEbhBNK5L6BqpbfJX/qDFIrWa93e8z4vOYXYu/+LkUxTXYsxIgd8PkWMz0xFfjK4124U+FRwPfVnRwCpadnDB7C4YYJkVunWokkDXw5SL5m0ZRtxR2wWvGmeQjMQIAHXnO8Xehjplt/dzYB+iBqhcOHl6kzXWWybnAC7OQHzH6JH5hYpLoJD0376YELQKrqWBzWmCoafnF29QT7NQ6/msS35MpZBdO5Tc6WSYjgzPu/EwnvBgP7Hm5KSgyUpuD1x4Ko+qqXS4haEYPVpm/40GZLTeIyc2DIcawFT2jmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d/PPjy8UuSRZ61jrmn9QmgnXflq4iz0wbHLd/D7WNJA=;
 b=XP1M5KPn8hWmJEMqzTJ13CZlA3NqlZjylldQmjml9pWYpg6/qX/nFRVxRfSeSJLx6sVQINVExkZA1blAdtraoXpMXcoLpRP8XEea+PQYbyqnQYq5staENL0OQU05XbA+iRvjE3e4Kc99wf8gF7FloTVJ6fvpNenqxiCEwApudHA2b/sPh4ThLBRtKTnJOcZ5Izk6Jjd9Y3B3WkFKoy1/zCnTzxYw5LA36qPbjyP4dbj94OVh99BvCi/mAnifRH2q2uWNfUvodeEo27YRIcpflmpPnQjt9u4uGUVUuqqm7zF9zw8r2cLd61/DB6K34jpGDpIIhlQw7nqaxYYIaBBSgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB7547.namprd11.prod.outlook.com
 (2603:10b6:a03:4cd::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 08:58:08 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 08:58:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/dp: Avoid joiner for eDP if not enabled in
 VBT
Thread-Topic: [PATCH 2/2] drm/i915/dp: Avoid joiner for eDP if not enabled in
 VBT
Thread-Index: AQHcgJ5v/Ov8b0V++EqPoyHgAu6Z+rVJiskw
Date: Fri, 9 Jan 2026 08:58:08 +0000
Message-ID: <DM3PPF208195D8DC04B3848C91D1F13C5E0E382A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260108124141.1407760-1-ankit.k.nautiyal@intel.com>
 <20260108124141.1407760-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260108124141.1407760-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB7547:EE_
x-ms-office365-filtering-correlation-id: d776ef56-3b77-4ba0-d4cd-08de4f5d359d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?vDZyMbHQaLohvmnxIoc/s38VS+AEGhRGx1Cw2+hlBVtrWbzWfSPj3QXr/2E/?=
 =?us-ascii?Q?vFRoCnmq//RkuI5n/WJx92OqbkIrBtQITsi3y+SrMlUs0c8KukCSGN+mOybb?=
 =?us-ascii?Q?uGU4w344VpymHllO/e1F6n/xemATe5371dw3lN58SfcfZd1y0nELyS0XtbWX?=
 =?us-ascii?Q?6sj4ybooQ7Q/n6X8JUDtQnBz7kOwa/q23Mo2s5EemkbxJeFnHfdDwDIq6XN/?=
 =?us-ascii?Q?s/wzL+gSCTUFLxMSr+eUHsNMTla7rO/sGvl3fD9xr4GG48xgiqyeRNDLGEpN?=
 =?us-ascii?Q?7ArpKaf1TSY8cSubJSKsoM0N77QTnJd9Bg0cquqm37FIeLjbbbPCS/0kzZHZ?=
 =?us-ascii?Q?Ry1A27YtOLAwCkje8jywcunXzjD7cy/HbxqwS0AB2SiUCuE3ud2KgSUH3ebk?=
 =?us-ascii?Q?xlTkifg3xecg6UhCdnPmWguQsgsRIJuBE0X+qJ5H54ziSVbFBj3YQdY0Ibg8?=
 =?us-ascii?Q?FbtJ/mwSzW9emEwflA9UWwsW9tKanQVUhgZR+BudklCZQthSwGbqwmTQdPVT?=
 =?us-ascii?Q?loyPC3TFGapoGqk9RlNlf7K8AXPRttFgBLJROZNFnrt8MmPgjDuT6md78V7n?=
 =?us-ascii?Q?TL3i7N+gH7jGrq7i1xIw0n3oLCTq3fNDPHAUTvrrFsu3fQRVv29RP/VlFtFy?=
 =?us-ascii?Q?qXa/nf3zvBsQuRZBKO6/B+I7BOv0cTgPc1aecPJf4zf/9cF7jxKQKQT86sNg?=
 =?us-ascii?Q?T5mUoxarxbw2WU9IiedAaXEMepV8bC73OpaxGQge+bm51T+/N7ruO3gC2WS5?=
 =?us-ascii?Q?0hwc+eFtm0yAY+82QUBhxlKUpZcbdRldE2Bn2pl56F9xB24fgeYq3chMASco?=
 =?us-ascii?Q?MRod8DFD7UzeE9d8dNvAtcZy/pOQjcjLFjM+MWSJe9IoG+c14mbjMbFUCxOp?=
 =?us-ascii?Q?D6Nd6FraOcm8kBux4ojjerWTi/K9057k1B/O+BjnzDJS4QVlZcG1YC8lNPAH?=
 =?us-ascii?Q?EKaYUTx9VSl/PWEu6Aia8iykdzlHdqPR6w81KAV4rggD7ICrEzqg04qBSHDo?=
 =?us-ascii?Q?5XnLmiV4in2XG4pXK1Eofjcv1fhj/zQoKqg5pkoDksPMYPXL264mCVm2ddgd?=
 =?us-ascii?Q?C5A998+X6o6Wg0oRAa1SPl/iB1wLuodDjasRDXmeNwcWyHEw6aZ/5fNUscw7?=
 =?us-ascii?Q?q5NPA1yoNuN3NrEn3xjtZc4v3necKEput47gSd83SMw7d1ethIrp0CdHmskh?=
 =?us-ascii?Q?FIzz3NUy0dKFgaL2SCpj4ucEos8Q0yyV+AYZ+JeA6Vp77ttZbEDozRpOaSrX?=
 =?us-ascii?Q?EuQKmDHFHafDBBf0KwbK0DXawIVbJ4WZGXpwku8Uv/x758iLrSHUTQ3zEh7o?=
 =?us-ascii?Q?mbIZeaQRzze4tMkEkdN12rpXJkh8Ck4nItCAmPbxg9aL9mZsFsoCEYmJNpQ9?=
 =?us-ascii?Q?W0ZQh0nC1lrJo1OHYElfdTDLmFPt8wc2aI8QzpUhVsFGd+MatKZQ+m5IXe+9?=
 =?us-ascii?Q?+Or4iWrZFBmTySpYJOhiU9FU54ofzRgvXrCjP1fftGksMA0ctSATaM5fs6f3?=
 =?us-ascii?Q?8m5Kw8D1u9+aMPArksUWm4kXvAjmD6gvZaI5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yHYAiGPcVX3/nMciA3WXzmEOHD+6wtGdUITacOs2fgIWrQVF81AfmlunEsm9?=
 =?us-ascii?Q?ZRI+t0G3gxho3rt/cAdn9VRNBEFjdyC/yJozJgM/PJ3jnG7+1hdBUJm2ESrX?=
 =?us-ascii?Q?92Ly3fKjhzPV1MIxh5/s8H5DGsk0Js7brAakbVu5gSHQGb6R988TaG+nxEVH?=
 =?us-ascii?Q?s8X1jQp3CA2pSqRHR6PyVIIe5L6SBlsU93ScnVQJ83H81hypkgNGjkqxyHkO?=
 =?us-ascii?Q?V5kv8Eyqe5UsEBAu17K6ApKLbOaTvFqnf0AKjIzgB1u7hJSqj5nQjNchgWVT?=
 =?us-ascii?Q?zoS1HgRieVHwfFYaEG050jN+n/FyQ16ORE7+v9UDgDqHyHwFO9Si5d8x/U1i?=
 =?us-ascii?Q?aKVAdPlL68MP3gf3ehRloj6LhNGiQLlx+VWtFxJKONeEvkeOZ/3z7B/Znbtr?=
 =?us-ascii?Q?SoMYwFutB8jKUO6hu2XRV2yz1SFQ5nstHmIW+UDKNnMHWEqhv5i1bIF8K4Zy?=
 =?us-ascii?Q?uG9X7H8Hl/MZRQDhZ4BHToa5d3nT2GrKDokCuHG10T5xPlW3zVZxGN0P03+3?=
 =?us-ascii?Q?xaIXy/wEkaxQuAlaUoqs2nn3HXRSPGlBpYvTrpvwSDlyh3iV56FTPQyj/Omf?=
 =?us-ascii?Q?FYx/PiF5+/S2xUWyUumXOIep6lkPd4t7GWG+pXcokRRP9/XQw8QncRyNMC+0?=
 =?us-ascii?Q?eYhl2sNkmMKcEql3ufvD33fxyqgmhRIQHoKOVEdoB1tdt9DKQA7s5BuBmXc/?=
 =?us-ascii?Q?2ggypybMp7TpEA1PYaGxgB7FDCYaYQK3CH6n8YbhbNrU6GePN1h/v8s0vbDa?=
 =?us-ascii?Q?KC3hrpr3G2dMnGfUAoaLqoMvG1kahBjoctP6MK9HfmVb31sQho5+tNVdzvDY?=
 =?us-ascii?Q?V3k28xRygleWLjzP3PvACfseXOREkC7WTRr3+dsdmEzvRFQLIvzwe/tTTb9/?=
 =?us-ascii?Q?JhqIUKuZD8jlMTmGFD6jrMRTDXIpreCvdlIVCD8PccGOpU85tUcrxfZnlhKX?=
 =?us-ascii?Q?HysbcvXQequQHITpAGuhmVzxuwaFYWBrZt7kK9VWiQrwYuWW11rQ34UmjZUq?=
 =?us-ascii?Q?tyoZnSW5+emgxW8EDAlKjrGm7C9b5OESRsLkt6lEYzgeDetvlwWSdmA0BLBP?=
 =?us-ascii?Q?u1lgMzopkFnpvRGgqMl+fKKce42UGosn4S3wrS6ajn4SO04EYosxNbEz9ekG?=
 =?us-ascii?Q?ByTEZhaCcFbkubSopc852ZepPlQ6AqejOtIgJhejbs2W2wmWX/aHEF/p69ZF?=
 =?us-ascii?Q?1KDc/3+q1mHVLk9XFtfKmjCv1peOLtianxao46jkTyailD+L1he82QkT1G01?=
 =?us-ascii?Q?U2ryYDzljRsT7hpG3Gq+V/M75EoWZrrkGCs8rz9eknaLjW36xwoaFV0xtnrs?=
 =?us-ascii?Q?xyqpaj7FyrErZ+OVsNzkgneKQVUX1cnebCb2Ls49ZtwAr0HYdQFavm/guSMh?=
 =?us-ascii?Q?oSdwXVVzt9z8totGJbBlDfXbUDViTL6JtC5Jy50SxCLjn6feGFxQrIe7kuth?=
 =?us-ascii?Q?CATJOksQ3tVXs0L+6zPMuvXxtOmzdG/0mCAIsvp52FqSO/f9Fafb1Tc4EkKG?=
 =?us-ascii?Q?J08uStxyFfsl1hwwMKZ2R/xWA3TpnGpMXm5apYQBe0MJ4OqoWXNtHxa/Zt6Y?=
 =?us-ascii?Q?VHpwkq4IXyb6q3kAMiWD4GRM18MpZE12w0w3p4T6q0mFoTSXREs9+5RNMObF?=
 =?us-ascii?Q?16eaiGr6j7frEUQgqAloC1+//JgdyJ7kNIXkfDhylr01Gaf48Ss6sK+mjub0?=
 =?us-ascii?Q?pYbk1b50FDhGdcCQWunPt9M238V4E2IlaJShBK/N4tWJDiCNlG4NeZRNx9jy?=
 =?us-ascii?Q?0LQDcZVgJA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d776ef56-3b77-4ba0-d4cd-08de4f5d359d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 08:58:08.2932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Wo9JB9D0inQsBRBT3M4BmvOtQS5TaeHzVvzvX6NEEk34xj6O3qLIN0YUfzwtWliv+hf9xTF/FDXyDl29Sznow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7547
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

> Subject: [PATCH 2/2] drm/i915/dp: Avoid joiner for eDP if not enabled in =
VBT
>=20
> For eDP, enable the Pipe Joiner feature only if VBT explicitly allows it.
> If VBT disables the feature, skip joiner for eDP, even if the hardware su=
pports it.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2dadbf7e8922..649d1018af1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -508,11 +508,16 @@ bool intel_dp_has_joiner(struct intel_dp *intel_dp)
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_digital_port *intel_dig_port =3D dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder =3D &intel_dig_port->base;
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
>=20
>  	/* eDP MSO is not compatible with joiner */
>  	if (intel_dp->mso_link_count)
>  		return false;
>=20
> +	if (intel_dp_is_edp(intel_dp) &&
> +	    !connector->panel.vbt.edp.pipe_joiner_enable)
> +		return false;
> +
>  	return DISPLAY_VER(display) >=3D 12 ||
>  		(DISPLAY_VER(display) =3D=3D 11 &&
>  		 encoder->port !=3D PORT_A);
> --
> 2.45.2

