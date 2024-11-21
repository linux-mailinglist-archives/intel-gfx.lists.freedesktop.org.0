Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CA839D46DF
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 05:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EA910E869;
	Thu, 21 Nov 2024 04:38:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMcQpp/Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23D2D10E869
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2024 04:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732163923; x=1763699923;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tvyTFA8mC6DCSUCzO/sSuLWPFyhBVgdNPSvX9Ehpna4=;
 b=OMcQpp/ZDcl+GJc35OjDV2SYjOGvi0+pVk/YRT9bemMSHEe87UHiJNAR
 ZRBhYUEdhH8HpRekw1NJNj9y+WpvO1CKJZPdLAC6Yn5Ooib0xMB56TJoz
 fUMazOyCyYY9YUqFZ9QPVHAnB1NlGNyPZ0PLIjEF7tmNVBJWPYasOLyp8
 qaEKoOSOHcd4wIkBm3ChUsxbZ1zvzsrOQOtnJmAgUFWE3IKUHOCxuil79
 KfLedq/gB2HsQBwrmqh8gUZLJ29EoAeKSMJCT5kbFzsGgO8oMFeIvzaSG
 0MXN8xUAFEroFKOvunNus0m7+QKSF6Tr48GdmnMCU2FEYpnW4+mtqJUfx g==;
X-CSE-ConnectionGUID: wuBUIQpnR5mi8K3Ov1W9fw==
X-CSE-MsgGUID: MSn0/tfoTRC3k+qbNE1k5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="35114403"
X-IronPort-AV: E=Sophos;i="6.12,171,1728975600"; d="scan'208";a="35114403"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 20:38:43 -0800
X-CSE-ConnectionGUID: h9rwWodaTRuJCyWw6+UaSA==
X-CSE-MsgGUID: MFxsjuE4RwKxymqEZ2Nyfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,171,1728975600"; d="scan'208";a="90523429"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 20:38:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 20:38:42 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 20:38:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 20:38:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BN1BWX29aYDdMVD+IpTFQkig7tkRHxPPhO8IkJcfp4WIdZQRveU8XzzJc7rzJzcp3l+I5zPYuX+IG8ZU25j41MJtKOjdUGT8ZldcWkleejN/jgFg8/CpbMg57mIIOvhUTzuLU3aYx7/usRhSx9l0qQ1AfIUmeqAytdjD6ucNqTXVFRyodcs4x+LrfJpQZjpUrPIuTQPN6Ql0watyhK2h4lNJCvY+UNBd1RZB6GguuhHIZMRIw0KwRzNkEA6TWLQWssdKELnfcm4vrg8UP5Sc+GNIdjxRPZSSv1LF62n/7DpRK+n0IvGB/prEmyuKY8IUnMiC8rnkkxg0WlJLy2uL9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=89R2bntZGHFGRzifnGXs9GHy6pjG/Fem3adkTUk7OVw=;
 b=NPBiCDah3+y2mfDV7UvS6AO/659TYRccYXAKUF3VRlsB5gU4CMCN9VWUxrycrX3vqNh7xnkeNk8N2oBGzYvz6IzC/a+PCmkUiJneSCWiA3x9JYUizOD6Ym3N0jkfAGeSu/OLJ411X4pR8KfSB9ZYGtlpuzfjSrn+lc2y9mOwLLMD3u8Pu+8lnrjF1QJRvtxTNJYrwvFdwCbx+zjkms/paJqALRkepcyk0gtpFNCFeBzzZsNWmmeT7gq9IO0q/JmWc657fHyovXGhWrWJx83s4XFDZs4C4VSG3Ri+lxlKMw56vHDB7KC5UZu/GnUnmIHBSS8hptD4rVeMS1ea02LvYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by BY1PR11MB8007.namprd11.prod.outlook.com (2603:10b6:a03:525::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Thu, 21 Nov
 2024 04:38:39 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8158.021; Thu, 21 Nov 2024
 04:38:39 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v4 1/5] drm/i915/vrr: Add crtc_state dump for vrr.vsync
 params
Thread-Topic: [PATCH v4 1/5] drm/i915/vrr: Add crtc_state dump for vrr.vsync
 params
Thread-Index: AQHbOyjxYWK1uZlpt0mBkw6LQcgh3bLAHzEAgAEHaRA=
Date: Thu, 21 Nov 2024 04:38:39 +0000
Message-ID: <IA1PR11MB6348F101F5DEEACF59AEC18BB2222@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241120084948.1834306-2-mitulkumar.ajitkumar.golani@intel.com>
 <87ttc2133n.fsf@intel.com>
In-Reply-To: <87ttc2133n.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|BY1PR11MB8007:EE_
x-ms-office365-filtering-correlation-id: 0132c8cf-0125-423a-3d1b-08dd09e65efb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HqL61J+5gPblme6Kb1hvheI6XFWimuVyhSFtgzmsD+CU5OcZDALEtEiWVCWH?=
 =?us-ascii?Q?6Zojyqq2+dY63g5A3IolprlsxkGcEGCJysEgBtbua4W/Mt3qWDvL9P/dOquw?=
 =?us-ascii?Q?aqiPpmy/r9TRp8GgdlPUTlw5CR12cbM0mjTJUlsA0nBO+9HAWRs6MqG2c57z?=
 =?us-ascii?Q?IHZ29dv7G22f3dCwzUWNjzkkyY9gomcIOwEWs9SnMCLlpqtCMpLAxfiZE0P9?=
 =?us-ascii?Q?DdW9PGgJaeM49LNJnKI05TLW4xy2H+KUrrdMVOToHba2hAJUQe/JhZn022VY?=
 =?us-ascii?Q?CVvRxJMq7L9TQdVixh7jyDq7VjcgaDlqSmiFSV6dyMn4Fs2bLhmuDul/Agv/?=
 =?us-ascii?Q?7F08zKNfZV5ydVz4GYVhU10KyUz27HLyFiiklnhRRvZEN7mbfp7wBS7BCTjd?=
 =?us-ascii?Q?ou06Y2Qsdi28ILWwXoZdsGx2z91G8kpol1uCP31iZs8X1nVQhD/YetIp9fEh?=
 =?us-ascii?Q?mQVpEF4I1e1YBlIvbW4Mt03WGrFkSRnh08/n1S5q44aWDsKx3xL0pIAnpHJu?=
 =?us-ascii?Q?7qFVmt6LYp60NdtuAqDwOQaCbGUMmF+S6/lS1sQUwDWoZjV+TTQUfcqdDPak?=
 =?us-ascii?Q?cwLpkJe0Mi5gBLwZQH+ekiJmZA3t6f8XVP7fJBsIfEbznfv/M7mdif5TwzC7?=
 =?us-ascii?Q?WyRPchXLGSzcnxPAI/PafsKGdqp5z0DXBGXq4fNh0K+zVz7Rn2G24ojeDqf+?=
 =?us-ascii?Q?FeVz8131+6/qVMTUJwFfErZAKt4JIQeWbwUcoEYjEFedbrROeesmcCRfZMxG?=
 =?us-ascii?Q?dfjiyN3orQxIb98heW/ulUGLu0cQD303pGMS50eKgJTKnnCnwthEsp9hu40I?=
 =?us-ascii?Q?YFd06tMVz6nSA8smVPxlHaqU/9yYXxXhbv6yetVy1PpRbgW8HDUSjYrVFwmR?=
 =?us-ascii?Q?b1e/JjQ3stBe6UznkKtDKSgJZQN2RDweeYt5yHB2aPWHqVUOG+syDQFysKSv?=
 =?us-ascii?Q?QZaIieokF7D9HG5bAAxMMJSw7/4sBA0pnxWIey56lJJBmwFq61FuJ5jl8lOO?=
 =?us-ascii?Q?gWOa8lWoUVCSXnfzseZaYF1mijIReXqH8QWtuWZnB0/vOJt5SsqnP33BvLXV?=
 =?us-ascii?Q?RIem2mogqyJzlLfUonS4dxonasSgaMqZQd7ZWNEeiP52Omup7jXr2zwEKVp8?=
 =?us-ascii?Q?Sf+BgoMosCuGIYZHdxFSna929jfDjsCzjzzLRXTjETP1/WeQsL+CoLHz2Qni?=
 =?us-ascii?Q?K6fx6FAtA63TsCXZ+VGFz9GPAhXadKPpGZmsiap/kxkBPE+5LI9E4hPSlgf7?=
 =?us-ascii?Q?Zn+JQfPHXFKmQV0M5KV4N+U24Q2ZJiWxyMzr5q9MX0fpgb2uSKinZ0/kMtgr?=
 =?us-ascii?Q?tknpAZ4TqDL+HWO3US85dMR9i1OD+erU28tPJ9vHygFaOupn/RzqslFlUtbB?=
 =?us-ascii?Q?OIzQg+E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tKPSe+L5e8wE/yxxaKh4SoIVRaVoLEGFLtDVGSHQHu8fgOAYplsB4UMJfmOH?=
 =?us-ascii?Q?SMS2xTeMt+wOMtMGU6buu+TVUggTPJwrUlrHxm+epc/TCW4V8eio1NOUNBGx?=
 =?us-ascii?Q?nMbtHteCULQpPI22bFQRvcGZ6FEZITLmBfT7wNs1TAtnl8vk8UcK671zP/DD?=
 =?us-ascii?Q?KGmpxF4Okvl2SP51lEJhK+q4gI07F+F9BnlpPGSbx5n1GInJpzkyP2b2UclX?=
 =?us-ascii?Q?CoRQoDRGAGyIOC1++je9Uiy+bVwQ5GlNqzLMsTTba0fTikIR8/ErBv+qp3/e?=
 =?us-ascii?Q?GKhycWz8XGjl8M9mCqOKYbAOTCHaLR6l78pg8HSHgGasRmV/NvivvJq5iHJ7?=
 =?us-ascii?Q?ifdfMPoSvtookIaWozoR4HFk4wWTEOQS5tTGGQ1LDyk0YHT8lAB2kV0WRhK6?=
 =?us-ascii?Q?Tt1TjekUR8bWGTDmwNyJri5tC5U61+D0pjyFKzRHx5AmNUiVqlCG0eC9QfBJ?=
 =?us-ascii?Q?KGBPHr7Fj0GFSS6AjjnpEJRl/SbYiLyf0NDReq1S2nSHjd6GxlXMZFurzl4R?=
 =?us-ascii?Q?n+k50CqWTDUfVRN26Wwgfh+Ab6DiBJm2UJHluHwXwYhl03N+oXBy773PTMef?=
 =?us-ascii?Q?eO3xSs4Px8FABNW2PLmEAhaxmeokDEJJT294/TBtZ6zlcQar9xMaOcaOFvKn?=
 =?us-ascii?Q?5hXvjSRetgdxpqhzL20m0ejJldoQDdfwb8tPiHqb5qUhGnOkCEQLy2PMygsJ?=
 =?us-ascii?Q?z53WjPueY+42iFQsSP+D8NXijy8J/i3B+9SC2ZmgSx51hBoWtQktsBSwJftu?=
 =?us-ascii?Q?bwXw+RlTx0Axr+I+1rxvi1q4lMerzPFv1vq+pPkqt+CjX/+6JRplvwQLKrI5?=
 =?us-ascii?Q?1Knf0/tYRH/WGLnZ5A6seVMEDzAmeXiCyZh2Y6CJxAN0b1sqLn69aLO106yx?=
 =?us-ascii?Q?mmOXreQmprTpd9wmMc1pylBSil97Qgzv9f76643/jUOl1X5vCsHe/P3yyoqP?=
 =?us-ascii?Q?mid7+GTr9SIehl1CUl308Fss/7LyBWS+HEk4hu42t59Ehkp4Jk5SuYktDdUD?=
 =?us-ascii?Q?usZyVsVVSpkCLLyNxf/bqTkRGfAn6YBC6JmYFYD5O0jw8OKJtKM+luZnAuGc?=
 =?us-ascii?Q?CJuyNFtbTJGv3nVdrszC4Nfoz4XWI16YxlqdZ5OrZvx24P0sCs2oxe6WvUZK?=
 =?us-ascii?Q?C+weu+fyfIwWSNlVZCXxyuo/QCLut4eJw7QqKgNx6w6Xawf89nkNhWSc4gru?=
 =?us-ascii?Q?Hjrvdu4mFAhRDFfaT97z5nHHzHwkHIbS9gT8DlNZPxyjyLHNHnGtpK5QG7t4?=
 =?us-ascii?Q?/DjP0hKc2jsNIW0gTfg62SVRFmhxJd8H72wsINogczgLNCMX8FKzSFQ/sKha?=
 =?us-ascii?Q?bjhoV+rdvFpwDv69ZEIzl2q665AUwJyCnGMdqpyPsNAw2M+gm65PbdJs3pNQ?=
 =?us-ascii?Q?Gh6uuBa+GC66KnHGHqqzkT6puqB+Z7VJOkCWmhZmB3I0NSWrQnOB4a7Qt1r4?=
 =?us-ascii?Q?bM8Tsj2F7L8I+oS4OfYFkngc3Up6ZfEcCuMYu12vukX+1Rk6k9U74Mh01MZn?=
 =?us-ascii?Q?wXvl4fIHHMMuZeHquS3mKjpmIOdN+khgAFQrYCH8J5h9XQWCu9OvMTrcCkrB?=
 =?us-ascii?Q?zIrt+GzNvLrzAV+rBOwyKPI35Cys4YYCtFzi87aRk/HgLzFX63O0wI/DZxws?=
 =?us-ascii?Q?uvbqbvoJe0E5yz7FD6HCoZ0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0132c8cf-0125-423a-3d1b-08dd09e65efb
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2024 04:38:39.7099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sq26vT/jgrUNglKVLIl6PCfNF2Btj5zUD2qjeaMGmguHCip3588ugVuNGYbTDg1N8qLWWoZu4inacW41u3o8L9JjDqMG+hb61QCzVCTUQuPJWSGM1dqAs+dePMUywTFX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8007
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
> Sent: 20 November 2024 18:20
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>;
> ville.syrjala@linux.intel.com
> Subject: Re: [PATCH v4 1/5] drm/i915/vrr: Add crtc_state dump for vrr.vsy=
nc
> params
>=20
> On Wed, 20 Nov 2024, Mitul Golani
> <mitulkumar.ajitkumar.golani@intel.com> wrote:
> > Add crtc_state dump for vrr.vsync_{start/end} params to track the
> > state correctly.
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 705ec5ad385c..92dbf2cc150c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -296,11 +296,13 @@ void intel_crtc_state_dump(const struct
> intel_crtc_state *pipe_config,
> >  		intel_dump_buffer("ELD: ", pipe_config->eld,
> >  				  drm_eld_size(pipe_config->eld));
> >
> > -	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d,
> guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> > +	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d,
> > +guardband: %d flipline: %d, vrr_vsync_start: %d, vrr_vsync_end: %d,
> > +vmin vblank: %d, vmax vblank: %d\n",
>=20
> Please look around you, and follow the patterns.
>=20
> All the other fields here have spaces instead of underscores.
>=20
> The whole line is all about VRR, there's no need to duplicate vrr in the
> individual fields.

Hi Jani,

I will update with suggested changes in next revision. Intention to add vrr=
 as pretext to
Vsync_{start,end} was to avoid any confusion between TRANS_VSYNC and TRANS_=
VRR_VSYNC values.

Regards,
Mitul
>=20
> BR,
> Jani.
>=20
>=20
> >  		   str_yes_no(pipe_config->vrr.enable),
> >  		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
> >  		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
> >  		   pipe_config->vrr.flipline,
> > +		   pipe_config->vrr.vsync_start,
> > +		   pipe_config->vrr.vsync_end,
> >  		   intel_vrr_vmin_vblank_start(pipe_config),
> >  		   intel_vrr_vmax_vblank_start(pipe_config));
>=20
> --
> Jani Nikula, Intel
