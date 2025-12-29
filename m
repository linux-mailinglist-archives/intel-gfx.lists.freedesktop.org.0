Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D92CE6622
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 11:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BD410E3B6;
	Mon, 29 Dec 2025 10:36:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mMgjeVpM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B3B110E3B6;
 Mon, 29 Dec 2025 10:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767004608; x=1798540608;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4YvgMQwNgd5tFu6g2XiZRLTkZecPPS3C1veBJLlMSm8=;
 b=mMgjeVpMPUvYXoEJ90nlnKNPiEWJ9IPkf8JVAxi315l10EG+BQcV9RYe
 WVIWwae7TDNaHSA90B6lFH/PeYTCwdRdZisfohLA4aeAQWuI5pcfwFu+I
 XA5BR+gxSzv3jl1t2LVsI8XrSG8u7tZW3AbpNj+wlVsBGb+YsHndbuQhy
 CHPyCBSZKgPiRPsa0Z6S/kHmv3RvIRuS6iMyDwY5lnAzZmrXanXS3kKc4
 ZLm6cgSZLX8jsaBoYWBgcPYr6Aus1T7LvUwPjwBtUSx/I5kv9NIQHguVb
 yax2bCVdKG+sJm1ZKrl9tfVKi0Hr/BHS6KqshDHJKPPG+OrCHH0esw0ko A==;
X-CSE-ConnectionGUID: J7nrnKEVTvCGSbGNLO6oBw==
X-CSE-MsgGUID: rVOEOJXHRGmhfMfdlE8/gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11655"; a="68660803"
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="68660803"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 02:36:48 -0800
X-CSE-ConnectionGUID: 5guqL9+mSz2cCFjL9hYvvQ==
X-CSE-MsgGUID: 2hQG8oBWTS6SG0Y0pf+inw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="205369786"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 02:36:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 02:36:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 02:36:47 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 02:36:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q4AUmeTspSO5xLc7fLb3DDI1hHtqoS1KDwC4ay35BFTnnPE0yAsiCk+bgndvxKvIMLHC53ohHtA8fYYjnvMJJ03YJi6gvN5rYies93K3/VSE8bpISre7ksyeayQqrqyIkxsWOEENu+TEbCcfLdc96vNxesbkeTqAp/dm0WY6brS35xelHZIEAX1+7bDCzYWj18r5slVQd3UqmosCsaH2QkQ4AtCF3jxRO+ysMp5PJ0zxnhamZ2FUwVJ1q1sHvqXvyxIqt2txjqPgjLoDi6ce71AKBetOIaMR8lq67qwXCBDJelBsNcCCao4aABkyCRdwDx1xUfL+zIqxJlKFCxCqzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V4n5J2Y4veRowyM0hlLe7skQMpTTROzXNVLBR/aUqTg=;
 b=xK7JSgpcfF8hEWPT4S16oDZwlhLZgdens6dnLLLUl4pG8tWN1oI81EY3qN2ylUl8z+GM8Q0H0pRVU6ENot9G6Vz1d+w2jqHoiU9xGQDvyr1Jq8qUnGKI7yV/6bXRs20nYUt4yTqiFl/C7vLp9g056rXPr+ruTi8gnRsYvlh6h0EDzQ3161Ef4EyBXs3gxKOpK5qeg3u+FqEqLQFUMXTImhqg5x96rnzseRSIsyOWwIUUvbBcCgh4fOWfFoYTEOCc48+DfOAyK1GDwFD7tHsbA6k5Nmu42DI0kXc9uBMF8Gm1BZ3chD1rVE9J7+NPXKwiCO56riddNqgrmpiFxQMSAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB8042.namprd11.prod.outlook.com (2603:10b6:806:2ed::20)
 by CY8PR11MB7172.namprd11.prod.outlook.com (2603:10b6:930:93::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 10:36:45 +0000
Received: from SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d]) by SN7PR11MB8042.namprd11.prod.outlook.com
 ([fe80::6f98:55b9:6172:1b0d%7]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 10:36:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v2] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHcay+wcvQpqZ3p4EeueHh7c27aeLUdpgsAgBrhYyA=
Date: Mon, 29 Dec 2025 10:36:44 +0000
Message-ID: <SN7PR11MB8042747AF1B3961C8CD8C3AAF9BFA@SN7PR11MB8042.namprd11.prod.outlook.com>
References: <20251212055423.1925044-1-animesh.manna@intel.com>
 <c84b7dd4373a572778ff74b97b16e37012d813fb@intel.com>
In-Reply-To: <c84b7dd4373a572778ff74b97b16e37012d813fb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB8042:EE_|CY8PR11MB7172:EE_
x-ms-office365-filtering-correlation-id: c5c7ffbb-056d-4446-1f3b-08de46c629ae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?coxQq9l+rdaws40I0PA1JVkSP4gua94FxxO+LeiOxjQnoScojzVnMOrRdJnb?=
 =?us-ascii?Q?6oob1gvyls/7RZUi1OI1GmkmUg6WAUjOUSR7cnpUiKpuhkD+3wKa/wEsSieD?=
 =?us-ascii?Q?nM/IZfusi8pXwAU16uyZv+PJYAJIIDh9zGTiuXSjzwEvne3dTZZWV9XqdoxN?=
 =?us-ascii?Q?BKGbaanElTImFR7HvkZZOuPgBDITQ7cvZ/oWDdYzIjQFiOlqpMZEI0dgcPCB?=
 =?us-ascii?Q?/FOKpOdj1Woh5ytBOuM22dfSG0pYdV90BC+ESduPuthXbOUlLCVJ4LXh7Dn5?=
 =?us-ascii?Q?h5+X0hHukzzK5chu5kEQk4bC+OHleiecH5ApaosIjGD9AfwqamBbBWY4c6r7?=
 =?us-ascii?Q?6xYnxuz5C1NGaaXAZ7gAEouPIocDEYrKKRIoGLnmYVthed7E72766kEV/Bgt?=
 =?us-ascii?Q?TcxvjUcq0xIAeKvykF90puCyrrw8Yw2odwTHYJbEEt7KTgE8Fnhh4Ji4+Int?=
 =?us-ascii?Q?477X8GlUH5n0iHI/5uMcjrpg3sCx8QPO1KBOoIp1lwGMfcMHoTqov4zE7Q1e?=
 =?us-ascii?Q?GhLjQTRBkHO35hrw9TexhjPFn9ogIm3ovA/ORIJNCeIPnohRVGB+0VIwc7u8?=
 =?us-ascii?Q?w2fIIVYsgnF/y+xhODQumHzGk0sZR2ciskN5XgvkaDiF66vXZ04ucXgvB+yt?=
 =?us-ascii?Q?r3GAFpp4HIvcADUriCsDzWEF8/al5/tcaegILgmnDSnKpvcs+WXcbAbx6GIA?=
 =?us-ascii?Q?ojdhTDm3OEoCClxI2C6xuwnizXs6Hpb2q0DKQ/DwECLdKi1FEkqsxeXaXc3b?=
 =?us-ascii?Q?jX3QDg2lT1zR1gPUg9v8FNnAJgps67vzeTYI6+umEaZFNoRSzGq84nY+ocE1?=
 =?us-ascii?Q?qswhD2yXXL6BTNmR7drHq97rqKnrNSNndHuCWAP9TQLIPpdnUf1ckgf7Jxjg?=
 =?us-ascii?Q?+n6PMcKGn6TxPr/z75+/TBoZYuN8FQdqWDwZaIGOmiNV4e7Yq+IxN15orzO+?=
 =?us-ascii?Q?5dHPh+CDgYus5Bxk6/EbtQPh/yOT1g0UhBIvF37mpzH0dKxNECLqrDx1nmhI?=
 =?us-ascii?Q?bHV4KmIPuf75Qi0oa6eJ0h+RRCo9SMEtjjb218ThvympNCV6ENsIZ2ULsi7J?=
 =?us-ascii?Q?zlUXnqIsDxIyg8erwXSJACRPPFclMtNM8JFnQwuP8Nad1fr8T2BoW9rnSt2c?=
 =?us-ascii?Q?TLPibKWh/BwXQw62Iyzo8Z24TjZ480u3mxdkIECU9WPWJfcTHYfAALAgDYSu?=
 =?us-ascii?Q?/xhZ6JfTTToT2CiwMbdgMwG+0XbfpKVpaqMByLenJfsnXuS/pm3S5r8EUU9j?=
 =?us-ascii?Q?4AbX2KPEi1VHh4EtVlFcVsjCIP3IfE2B4aHQm3NK8CEUrKv8uNcHlk1hcQyt?=
 =?us-ascii?Q?9lgatwxRZzeylvYljCmz3cNTM4TinOPA0nP4C3LfA39ufTNJKzPznBKkE3OK?=
 =?us-ascii?Q?Cu1i0ts8X46eSyH1e4Hp79h9CE0iUsgFsRESc8lK+dbWVek/KN5lnrFMAO+k?=
 =?us-ascii?Q?UG43qy0mcCGb5Sy1L50+7ornE6XjT6OSy/qpkx0nMv2KBjzPpFwOziDvfb78?=
 =?us-ascii?Q?3ullo3PkFOLzfYrszE9F4aHFf+XFpOwBXOs2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8042.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T5lZ7T2RIolrKuhEHoeFbVR4bd5ZXl72HpMaScoUzQmjHJf5bZVAUj+AZexD?=
 =?us-ascii?Q?qiu6s+Uy9TPgMLFXheV3aEMQIaRP3YQhpjfYjB5raCAsrHxvuudVYQtub+a3?=
 =?us-ascii?Q?6owo6bU3WsIjtvGooOJehgG/VUmS8sZQZpYoiw++F5E9QIWEBtqkQUsmA/Up?=
 =?us-ascii?Q?8Bp/WQlNp0MR3xHVH7zUtzClJWREpKeRya4jWCQ3oPunax5TGgBxifjYyiAx?=
 =?us-ascii?Q?oFWmM1lIcRpkG7a0B4EKpr1521X/tLtG5r1+5DjCattzGRd+ebGLdaxYMJlA?=
 =?us-ascii?Q?RygJaPX1iG17P20mpfP1G5RChTGfDZmOp4uIavICyJkVwcoW1kp8yUk0O/SM?=
 =?us-ascii?Q?jUvh5h97A4j0eKdtlQLCNRpPN/sG+F6+MiJuDHpp8gB/6A3z2n5C5UubOA1k?=
 =?us-ascii?Q?av8O/NEL2R1n6718RZNUO9/V5Cum4Nwqso8mIQESHsVk528R8UXbxl0vhB1S?=
 =?us-ascii?Q?kjs2IHWBCd1naktk8Q6h6IXcSnDBs84e8hJTVYdtSeaSm01WgJF51r6n2aQx?=
 =?us-ascii?Q?msaoPoENa66hnroBAJ57rnLoWU9iQAw3LsSjxOOC9KVLyF191HlIEBq0Djn/?=
 =?us-ascii?Q?TImuvY5LdXPg5YJk4fxfbs0AcpZDxoaZVLKZiGpepFgGxC5aCd1zI98+MBG/?=
 =?us-ascii?Q?C0DEWjV54foQTMJQZR2frV8QCVeri87ws+FNbIlctisQiP3jTfh7plO5Namy?=
 =?us-ascii?Q?V5AolzT7guyiTp8oF2/KOXKoXf279rgHEDGuw+oMRDVZlN+rKBsVQ/RIRJwE?=
 =?us-ascii?Q?eiejWn0YOxVgFCoWc7PmIACk82rba5g8NabkOSslwrTkRH3R6C7lG8zb9iGQ?=
 =?us-ascii?Q?zxrB1FF4z2l6n++BjeALfRCqbcLApWKCHFti2qYUSAnMEevGX5knBXTOe40C?=
 =?us-ascii?Q?QIu+CvkngNph+cxlcUnw7RcQ9V3FuArblODsVCAkCFadzSyDONE5rpHfyILp?=
 =?us-ascii?Q?qeFKXizirEF8jiYN47FCyLqvy8rPer2ag1dY8O9kVYvhWWoOZRI1XcBQS4uO?=
 =?us-ascii?Q?hKgVmcSX5hPDj9tn9c75W/+FWky8Q29gLgrzPg15ivYlVU9CICQu2DgCTX3x?=
 =?us-ascii?Q?zzC5ORbcAiKZkNSZw4TXCNPqTnwBs8+hdeKoG8A7eTE07PY/jtCsi/4Em5IG?=
 =?us-ascii?Q?3b4MUql70K3nu6CO4u/yFPA0J418pU0YfetYHYNta5BTpYIUdv7/lIdlBX+j?=
 =?us-ascii?Q?pgYWpfW2F3BZ2ogiy2a9Jjnvhcz8BFxYJ6CVM05J8LdkEh0ts5kfNL1TU4/b?=
 =?us-ascii?Q?l9xuGdp6OhyyEM8xNMmTl9HJ1VCtL38QZPnFbM31H9VHn+KdaThv1K3qmTJI?=
 =?us-ascii?Q?YFTApjxHy57u+NlQDTEwCjbbm5VfrrFxpLoPFlvYh5tobSELbHm0BOKVmb6B?=
 =?us-ascii?Q?N/N3Dxjtv0gO3SasADW8ldp2f66UcXmdUP0l2kdTb2OxqqIb3d0ONK8slcFO?=
 =?us-ascii?Q?ZFBhO5zcAlLYAdBhOaW/nnGCqWk+YLtdiLGVacrDdx9gKWk9HbEJxscKs/h1?=
 =?us-ascii?Q?KUHUoEDNLb5YcUB4YjQ/KFmh9CqWpUBEtA/AmiHIxhCM0HWojEpIegG2Y5jq?=
 =?us-ascii?Q?csUcRa4vkcOPg8w59+zUJAtXKxAFys/jFq+HhIQ9fh1TU5ttK0mqHwrvhtIA?=
 =?us-ascii?Q?f6ywtJb1Nv9STOUZ3bCh0GDwFsTqMGbhfIlitK9IQZBA1X0ojSx+3wWHTjcD?=
 =?us-ascii?Q?UC4F39Djsl+L7ieirYpT8NMZfiJ2Pj4cLqDR6+gASrwqZ6EBPpsxbX5XdDyY?=
 =?us-ascii?Q?hV+APlmjnQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8042.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5c7ffbb-056d-4446-1f3b-08de46c629ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Dec 2025 10:36:44.9842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RIR8pTLOdHfcp4cD5vnC+mddZyebxmINAXbZqMP2znuStsp6rnjF+4ahWdtMpKlaiFzTQTK7io5rZnOOWm8grw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7172
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
> Sent: Friday, December 12, 2025 1:36 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v2] drm/i915/display: Panel Replay BW optimization fo=
r
> DP2.0 tunneling
>=20
> On Fri, 12 Dec 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Unused bandwidth can be used by external display agents for Panel Repla=
y
> > enabled DP panel during idleness with link on. Enable source to replace
> > dummy data from the display with data from another agent by
> programming
> > TRANS_DP2_CTL [Panel Replay Tunneling Enable].
> >
> > Bspec: 68920
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_regs.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 23 +++++++++++++++++++
> >  2 files changed, 24 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 9e0d853f4b61..b6fc249a9f09 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -2051,6 +2051,7 @@
> >  #define TRANS_DP2_CTL(trans)			_MMIO_TRANS(trans,
> _TRANS_DP2_CTL_A, _TRANS_DP2_CTL_B)
> >  #define  TRANS_DP2_128B132B_CHANNEL_CODING	REG_BIT(31)
> >  #define  TRANS_DP2_PANEL_REPLAY_ENABLE		REG_BIT(30)
> > +#define  TRANS_DP2_PR_TUNNELING_ENABLE		REG_BIT(26)
> >  #define  TRANS_DP2_DEBUG_ENABLE			REG_BIT(23)
> >
> >  #define _TRANS_DP2_VFREQHIGH_A			0x600a4
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 2a378a5adc59..0d4cac30e40e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -44,6 +44,7 @@
> >  #include "intel_dmc.h"
> >  #include "intel_dp.h"
> >  #include "intel_dp_aux.h"
> > +#include "intel_dp_tunnel.h"
> >  #include "intel_dsb.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_hdmi.h"
> > @@ -1018,6 +1019,25 @@ static u8 frames_before_su_entry(struct
> intel_dp *intel_dp)
> >  	return frames_before_su_entry;
> >  }
> >
> > +static void intel_psr_set_pr_bw_optimization(struct intel_dp *intel_dp=
)
> > +{
> > +	struct intel_display *display =3D to_intel_display(intel_dp);
> > +	u8 val;
> > +
> > +	if (DISPLAY_VER(display) < 35)
> > +		return;
> > +
> > +	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> > +		return;
> > +
> > +	drm_dp_dpcd_readb(&intel_dp->aux, DP_TUNNELING_CAPABILITIES,
> &val);
> > +	if (!(val & DP_PANEL_REPLAY_OPTIMIZATION_SUPPORT))
> > +		return;
> > +
> > +	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> > +		     TRANS_DP2_PR_TUNNELING_ENABLE);
> > +}
> > +
> >  static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
> >  {
> >  	struct intel_display *display =3D to_intel_display(intel_dp);
> > @@ -1041,6 +1061,9 @@ static void dg2_activate_panel_replay(struct
> intel_dp *intel_dp)
> >
> >  	intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
> >  		     TRANS_DP2_PANEL_REPLAY_ENABLE);
> > +
> > +	if (!intel_dp_is_edp(intel_dp))
> > +		intel_psr_set_pr_bw_optimization(intel_dp);
>=20
> One of the thoughts behind having it here was, would it be benefitial to
> do the TRANS_DP2_CTL changes in one go, instead of two back to back
> rmw's? What does bspec say?
>=20
> And, of course, you wouldn't inline all of
> intel_psr_set_pr_bw_optimization() here.

Thanks for review, taken care in v3.

Regards,
Animesh

>=20
>=20
> >  }
> >
> >  static void hsw_activate_psr2(struct intel_dp *intel_dp)
>=20
> --
> Jani Nikula, Intel
