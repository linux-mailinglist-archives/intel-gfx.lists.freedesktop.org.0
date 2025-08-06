Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 974EAB1C317
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 11:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949E110E738;
	Wed,  6 Aug 2025 09:20:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BcJywBFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D078F10E2F3
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 09:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754472014; x=1786008014;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QlO43Q5VMQEs2gGfkOWBqNBLaE35NrhCPRFOfStY9gc=;
 b=BcJywBFF99HF+EXiw8eAiTk5CPjpVlODan1GRrZtQMObjooVR6UGKFj2
 hT95LjUtjl6y2MzjBen3FGc4C32SnJoLOfL1IA9e2zHfkuPNiZs7eF9kL
 0KjhNutoRfFYGeyHthGzi+rK8IRPPlBWlkE3sVQz2+wyNRdGHAdZxAIh2
 cMGug6eDzIDfVB9t3UDUPawBRYt7030NbxXMwJV+YShY1UHjK2iBpnUx0
 K05B8oJ63akmAQuNUnCFeWNN79gHb26wNKKS4H+7EcQLd++yGmq6IzVpX
 7yCWnK9Y2ZAJ0V6JHDIh1HUUaFQDlbuuRFl+SeNCjrelOEtefCkJ1jfTd w==;
X-CSE-ConnectionGUID: 23pl3HuwSy+t+jEGU7nLbw==
X-CSE-MsgGUID: 3udKDTg9RFeSYgjkGJmEOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56700176"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56700176"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 02:20:13 -0700
X-CSE-ConnectionGUID: 4E/qoc0/SMC7Ob13I/syTg==
X-CSE-MsgGUID: pBWX5x1xTzmE2+IX1hdH9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164743645"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 02:20:14 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 02:20:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 02:20:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.87)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 02:20:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ti7mJPw94xRndZtgnC933NYNABmhozM6rv/a1+NrmX/jmJJUD3NTXeKgCmF2Zf33vD+Frba1/UJo12MEBe+fAx5Xm4M71hg4NeMnqYSOlb6+Yotz+XmQs30cwbXN7WWX080tx6uyUuCdyjxUJFCe6ehHcaWXl4h3CScYLpusYNC+6CTGlJeFHl6HIj+S9Q3o2LqRzisZFHnjIdf8L+epGMiJWKXEloiH6ONiivCbqT6/16yKIDtdQafHKjG2Gn6Pl9+RlQS6i5+9fwg4EICmQH3Qbh/UjsTDJrns3HHOYL1RlwAqmp6H24f+LEhG5qwOx5wH0sSq9FRG+Kg8XuySUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YRDy4I/aSN3rpzD165Ha+UN4x0gE1ROkeqC5FpXJjFE=;
 b=qr4ejLEK3UCkQoVi8cjWrXDoz6EH1iIvSM4CkzcGVgxAhCyjFvdzFmVHlqFx/yzVIgp53KcmC98h/qiA9OfLrIIjrwqB8oAkzq7lGik8J/ySdOWigkXeQQ/Y3wRsPPCXEGHp/4KbhrXyQWP+fY3AtpHqYOe26rAGFSJBFUzJd664mFr3c/WmI8RtGWOxwbwBSCqtf7hpjQJkDVc6PNYdIQL6/w9TRLT5vgylu7QaY0Xt2uPhSt1u/iV1lblmCXvlSkYErlVP8BCRQLT8jfsdMPT7Bpuc4IXRvz+iVJIuFducDTRasmoQX11WYYrwLsNkVt43p5FGinOOlhRCWHIFRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) by
 MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Wed, 6 Aug
 2025 09:20:09 +0000
Received: from DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::708c:96d6:bf31:36b2]) by DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::708c:96d6:bf31:36b2%4]) with mapi id 15.20.8989.017; Wed, 6 Aug 2025
 09:20:09 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Thread-Topic: [PATCH] drm/i915/scaler: Fix for WA_14011503117
Thread-Index: AQHcBrG4Fj6r8vYL8kKSMJ61f8GISbRVVm+AgAABqWA=
Date: Wed, 6 Aug 2025 09:20:09 +0000
Message-ID: <DM4PR11MB6477966EB0148F033870CF76E32DA@DM4PR11MB6477.namprd11.prod.outlook.com>
References: <20250806090334.2950066-1-nemesa.garg@intel.com>
 <640cb51f90eddba4936ca352db98bdd726b31bb0@intel.com>
In-Reply-To: <640cb51f90eddba4936ca352db98bdd726b31bb0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6477:EE_|MW5PR11MB5812:EE_
x-ms-office365-filtering-correlation-id: ace56f77-12b8-48aa-65d3-08ddd4ca70dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?YvgdI4gOcKozW02DTLxRwP9XOm7z6zuCqR0K75PwuS7KHYlDwSlnP2YnSVGb?=
 =?us-ascii?Q?aCX90YqRgohe76BFsS9SPd58xGNG0KDFetSUPojweKLmvQ4YYhzaJAdrHW0i?=
 =?us-ascii?Q?qpxcDmIJjD/EVzl9jOmTJs81GkzGPyg1wjEzdPLeanG+D8u8sziMoaoo1Yib?=
 =?us-ascii?Q?euAmVf9zh7RcxtjZpVHDFVVWpBLv1U+m94YucWXxHTxnT/lrMH5PD+2qrGGG?=
 =?us-ascii?Q?xsR7JqRWMMwXbOOLpQls9Cdv4DPu9td8NMhjtKkFoDQ3l8Cg4gn02GXeNBRK?=
 =?us-ascii?Q?t891onfZRIAgshuRz5f+5tgbo5DCdFOqo8BNBLyYu5uTPFn/OOCIxVuRYbcA?=
 =?us-ascii?Q?evuVYg+GsI4z3eUwhUo8qcQeou8ADNGNwGOMaNiP934+vphQxADZHkMNWhgp?=
 =?us-ascii?Q?a5oiw7uONC8MbqV2x7Ll6VOyhYdh8nY3lFu/43cfDjGGAmTEgobaxTNSKf5b?=
 =?us-ascii?Q?HvbUTbkN2P2ZVn4EzQ/bDZp6aaKLBiMEHr6d80cGP8iCNRcobBLtJgp6s4o5?=
 =?us-ascii?Q?TqN6V6NNJzOrvEq5H1BQoQIC3HlyNniueYfKH1f8Gh/T4b5SMSJQALRoqSFk?=
 =?us-ascii?Q?2DDun+lEet3JQKn4NceBm2F7aZIwQCEQIOO9BgktWIjJf/0dLviIoYEC4orb?=
 =?us-ascii?Q?7cugtfdYir1I+DET2vsWLLOFffkL/g/mTpvRTB8vcC5rUxYhIke5+REWVvux?=
 =?us-ascii?Q?YfcIR//u0s5K3BLJuJsMsVo9nniH/qV0DyGk7Q8M1idbl44CCjtR+9/Or17l?=
 =?us-ascii?Q?Qmvu5EyvsHjDqXnJvP2Yo1WE/QaNYeSFcUoRPLSEYJKDYb6+4DmN5NwwMMQ5?=
 =?us-ascii?Q?aK3M1j7Wu8DvJwEF40V2+oR7PEaEMrucyusr/KCJRWopSmp5Wt7BtbzKfhKX?=
 =?us-ascii?Q?q/fUtS2aYJO33ragFQiApBhO32fS84lNX5AhVfzHt94SrHvliVh0By3dhXcS?=
 =?us-ascii?Q?GCwC4oNpHsHwCLEzC2UN9P/5ErCY+mdWA13hOqTeH7JNnaRPd4mqvy7ci5Wj?=
 =?us-ascii?Q?Pj9nY22z9nLvp+N7qW0OurS+y+fuimsh48u/myVWkmB5bkMVNg7h4JcMyQiV?=
 =?us-ascii?Q?uBafmTCSwqrmD21zvwJfslRKbIr1RM2SFA6V6Aoal0veaML+Xese57bHJ/I4?=
 =?us-ascii?Q?Mef9eKHNIKFiwGNw2lJoYC1Y9Z4k4kUY65ujYpzpNq8wc6knttat9gztDSMe?=
 =?us-ascii?Q?zivW5oZz+1ubcoQCNM9IVKRVvbOOz0xp12k2I5oGkdvGdsDes/fwE2T7fqVw?=
 =?us-ascii?Q?imABWb/nxcHh/hk8PyRCDxd+4Y7WwylEzKDHVMJGVlibvTZ0I8NSTynSgVcj?=
 =?us-ascii?Q?+/V32+u4Arze8FsBwHNY51dwKwS6nO9dON5P29LW7iBElfYJpP+wquLMq1NZ?=
 =?us-ascii?Q?ZsHD754WZp3lb73ZxVkXMH8fr7H1xHG1wZaXpmnev27MeSzl9FA/2NoR9iu9?=
 =?us-ascii?Q?+UsrHvtC8g/h7OE+XuARAVJneWOiY1Zy8AkFtNwD0snTvxPC3LfQKQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6477.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fDuFRS/niGSACr/Aap9MAPJYnf1opoSjq4H6syyUVTCuC72vk5+hTEJ9sesm?=
 =?us-ascii?Q?QlAwyuDCjBhWzFEX8VQlWWS4OzrEIlpYKS8/esYx13pC6/DrqkTPL6aWo5DR?=
 =?us-ascii?Q?Fqt/9XZogxKL0ptD3qJ7gc3QaHmuRquwsV2UskWDXTbj8FXZtPfq86DpnW1s?=
 =?us-ascii?Q?1HMaO/fGqL8rAMrw3OtgEawfc2xn83qBNpd9idGgNFK5V51wb2jYEY0EVmEs?=
 =?us-ascii?Q?FZBzVybBxZwbVfJLVVnpv3xhSZW9MMVAuXyTa4BsF7+sdGCCDfsFqem8AvAe?=
 =?us-ascii?Q?aMTquwMxVb3YfqMb/Hjbfvhi+wJR3bDiNusmbKbQUTsAI0CJx+fJeFC6Mgup?=
 =?us-ascii?Q?s2uiKXP1sHm0v9Q2TX+pDDFl2YtJH+CMPgtqQZNDk5uacNzfu1vKSDuESrGW?=
 =?us-ascii?Q?y0lFTfaOxt7WJGw7vVIw79RO8FKultac9cynHJ4mzg9fktSoq2dAHkb+Mt0F?=
 =?us-ascii?Q?fUzzCNjNykozda+WFx9SWt+KEILCrlvyJiu9NvtFlUAggeQDXl0kpfLJJgqJ?=
 =?us-ascii?Q?0jmDnt/qqMjmTBS9UuGIR5dddMuSCpaXKEGVtzCwp2kjUCez2eRa0jYQcJi4?=
 =?us-ascii?Q?Vvqiu2dg6nyod0uWmzzrxqFuw5JyBdXDRSpOem8gMLrEfp5uwMnhoT4l42pd?=
 =?us-ascii?Q?CyXWf508+i7MBeIOCU0yTTjK3+2RFLb48CHdrwo/cUHjPDnYRot6l+GbUmYA?=
 =?us-ascii?Q?PUtCKXx8V+uWvunuJlhk9o6/ddSuo+cOPZJ0QJB3fghmx8ahXnZhBLq0cwTk?=
 =?us-ascii?Q?wz2rXK9mmMdBQ1v0IfJYROyMrvRusuolws4lO9J7nhXyWRx3vaX4uytNjtmp?=
 =?us-ascii?Q?0VQPI4RtNsbHfBsmqtGIJVHosPCQMX46facRbTr0PyTsYvYwfaRa2kzFKC9d?=
 =?us-ascii?Q?9eqmBgEzA7sA3xjZv9TXYLQuK9qBknkWd/Xal4Qedh92aYEqJFva0gxp6/B9?=
 =?us-ascii?Q?2/ontXg4xJHqJ9tE2ROtKWtr856UmW+dXunZ7seGCTw91XtuE/Fvd1HrZu2H?=
 =?us-ascii?Q?iB9G+CBKjMiqtm1jnMMoRSgDl7Gv3x31uvT0jwJE0ktzf1b5axqMVoMyB/2s?=
 =?us-ascii?Q?NCfU4tNhHGLf0+nmnOUEwEUmGaRcXxILek9wvtGBcdnlZft1zBGK+0DYN8R4?=
 =?us-ascii?Q?f0+f679DQr6Q4esLyc3fA5VjbMAVtAY/U28yAphM5WvsUeJYsh2Mb8+Jy13C?=
 =?us-ascii?Q?Ym8oJJrbW1zoSp27O6VJSDWORy824YkdSA4oorDUfWeM1u+6b0vzMJU7jkMA?=
 =?us-ascii?Q?Eu0WoeHY5zJvoiP6PRRITQ2aTzMYmfI7tSG5sBJMAUSf3p4S29y7TuKmyE7p?=
 =?us-ascii?Q?TIc58ozFEYIbrvr3ZBlzudgdfEh/dszZE/EyfTbIiV20Pzx2jdlFKgAO9YPq?=
 =?us-ascii?Q?ahPwJ2sr6X6nD8dAj4js09of/+indxZjwp1wxEmUAMWIUrv6aHqvKKPxLCS+?=
 =?us-ascii?Q?tnuQCoROCr28QSyqN+N3gNmAeN5npRkkbIXzn/hmAdl2ioZZTo9f3NBly/Wg?=
 =?us-ascii?Q?+qes6D6wLrVPqSW8rMNWbwkkpROoydDyo6OsHMZUpeqY6oLF0+lCibFvW+X5?=
 =?us-ascii?Q?ZQoCZk1FJAPoyHyvvSarezLGjRutkP5PWXzCAdoE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6477.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ace56f77-12b8-48aa-65d3-08ddd4ca70dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 09:20:09.7902 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZfYgfL1Ej1w92S4q8tWIJ6dPU3LC1F7ErzHShHmgnnG0eo1p4lMBKheNYPp9Xmvn7fGt18KapG/nUZFi8sfB0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5812
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
> Sent: Wednesday, August 6, 2025 2:40 PM
> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: Re: [PATCH] drm/i915/scaler: Fix for WA_14011503117
>=20
> On Wed, 06 Aug 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
> > Remove the redundant check statement.
>=20
> What if scaler_state->scaler_id =3D=3D -1?
>=20
This is being called in case of pipe scaler getting used so scaler_id will =
be 0 or 1.
But yes adding this check can prevent the spurious write.

Thanks,
Nemesa=20

> >
> > Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_scaler.c | 3 ---
> >  1 file changed, 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c
> b/drivers/gpu/drm/i915/display/skl_scaler.c
> > index cd7ebbeb9508..602198798174 100644
> > --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> > +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> > @@ -960,9 +960,6 @@ void adl_scaler_ecc_unmask(const struct
> intel_crtc_state *crtc_state)
> >  	const struct intel_crtc_scaler_state *scaler_state =3D
> >  		&crtc_state->scaler_state;
> >
> > -	if (!scaler_state && scaler_state->scaler_id =3D=3D -1)
> > -		return;
> > -
> >  	intel_de_write_fw(display,
> >  			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state-
> >scaler_id),
> >  			  1);
>=20
> --
> Jani Nikula, Intel
