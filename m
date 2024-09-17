Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C121C97B1FB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 17:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E471010E491;
	Tue, 17 Sep 2024 15:40:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n4bris+O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A347110E491
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 15:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726587627; x=1758123627;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zQWtwpJ75jpgAVqhUYxat7f4DEBqogWCS6MNl/DdfA8=;
 b=n4bris+OjEgm6bKENynPhwUHzsmuo2nTD2Zo20MQmglEQNErwPIRvqtj
 QU4YMMsZz7nZ+PzzycT6taB1+fh5/dd7tYcErQMUiOuKr+fFu1h6hVSOB
 wuB5gAv+SaNlM4NwcozftUZAW/ZbVLvuNeDjuFrB30BQlM8JOmg/ETt1v
 ficF3dmpAJkGtMJ1f9yIoAWeetZGtr+pW6BxNyyZ/m1nwf9yimdbbyqcJ
 JP53FlX2Z/gRGPTlbeeAOdgTdbAkqV6IIn/xVSVH6R0ND49Tw1XIHDCyf
 ZvZ7wnOmdoNf2btrO4MF3VZqvsv0N7h1QvpC3RAytQQtJZqO6qrGkHQ+e g==;
X-CSE-ConnectionGUID: pBlcX1icSPeVOm5Vu4XGKw==
X-CSE-MsgGUID: QDis7GPcQ9SiN16YUJNrbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36833539"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36833539"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 08:40:26 -0700
X-CSE-ConnectionGUID: 8TRxoJJ1TG+t2asZH0LxXA==
X-CSE-MsgGUID: 4lVgiScrSae7ZYsDcq6vqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69327933"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 08:40:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 08:40:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 08:40:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 08:40:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 08:40:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bz/8osfMc65VXmQ8qw31upPcqc4kT14JzpI+OFQ1GGn+rRS2ejE/feJCkUiaMwh91u4z/UwDSUeyurYWI2866+hBO5XK0tVw9ab7M+v7JsDOI0TyKXCgkmUrpcCs1hpwE/926Ki0dywmcpAoBzgzid3SnwefNHO49Pskwo4DFuMQQKyASHpzTkzP4Ix0pU1GyvzGkKG8++gmCZV9J0bpiZI37AvxkEFTbP5N8AZa4UllQCa31RUvF3r4Y791h/7aI+eEh4ge6BXgRUJ49ANnoLQ52buLZRj4R9TkZh357h1nluHQWNb78YhWPkbLwe8L1z9Egeu8WJuVeUHcuXhiVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qPh088GVCsE6V6w3Cha52CEDHKxKnJuQPFDirlhHeGI=;
 b=kmY9pnVLEIa1sM/zI9le9nXE+lMLCpT2KyAdzzH2Lctz1rqJlQ7lCuldXu672U2ZyYCaY6CfRyByGRLgRKDVq7zNBRZ5AyKY/eC+gpuusGDIl1bnUXPN2uzJh9MdqCbJoDBaNcrsPlM4LL95PyAnEJlv6B5vPiowmt1194TqPbl5EOWYsvaRsUDHicxS4ukA5M33wN/cjJbB/2KVdxbIAW5N4iFjn/nWI61i10bi5PFIA9DWZp1FuW9/C5OptxmUMKXT2m2/5FcJU5j9b8o0Za/ClzE3oVwMHmX0NYaYjI1s1JM0U40LtJ1dw16+YQVXDGlqBvVbWH6/8MNg/1L/Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB7680.namprd11.prod.outlook.com (2603:10b6:208:3fb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Tue, 17 Sep
 2024 15:40:17 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.022; Tue, 17 Sep 2024
 15:40:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsL0znkcFXfG40iUXf2B2ytMb7JSdcUAgAA71ACAAA+zgIAJyq0w
Date: Tue, 17 Sep 2024 15:40:17 +0000
Message-ID: <IA0PR11MB7307954A9F86EC0455DB2C97BA612@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
 <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
 <SJ0PR11MB6789255E3DAECD9AADD9A9398D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
 <SJ0PR11MB67899B9001872BB0AFEF18928D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB67899B9001872BB0AFEF18928D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB7680:EE_
x-ms-office365-filtering-correlation-id: c94701e8-e1d9-443b-fc10-08dcd72f07ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?llxli84gew0C8/4cQx1y48DDFT/o1ZVqTkyHnnUTwvoqMkBvRkxkB4vb4Rd0?=
 =?us-ascii?Q?5rRFI7tYMAdUoqD1qL4/NV9UeIyuy9lfodadcknVhzZzxIBT0ZGMOqR7an2R?=
 =?us-ascii?Q?uB27KincMTjN6NZv+zt0JQLFPgoDPnzLEYP/RxhvTurGT4WDlaq7Y1AJw47S?=
 =?us-ascii?Q?Ej8fe1JGEAtvvkpAjc4B5nzgT17ekMxbRdlDzNeNone/vU4ibuAO+zfy4ejZ?=
 =?us-ascii?Q?GDV4Hv7gvVKzYycIPDZR5mgIRchP1olitfLj/DVUr8inNo+HHx28eBDHwBcU?=
 =?us-ascii?Q?ctzZ5f6FHCePmMVx+nFQbu2M47UDQ7JlFWu/Q4qiG4lKfIOfwvfXVSv6VexL?=
 =?us-ascii?Q?mvi9+KodtC7FfYgdPlemZyN8h+InXPs6cehhCyx6wqSA676y+f7O0m3u8c38?=
 =?us-ascii?Q?3UNuGPm0pMfJLcMwiUU4JUlOaW9bBEnnfRf2zwJiMLUCC6CjFsXca/IvD6u3?=
 =?us-ascii?Q?6j49GjtEKNyp9a6MPulWYbTpI5mgKOXZEmvdWbWWtnw69xHQCBvFDaXyWYPS?=
 =?us-ascii?Q?Qm8drCgrxSLOrjf1rv6dAGbwsfjEMo37qgTT8w4xUwQqOR3PYWMH4STYan+3?=
 =?us-ascii?Q?Xx2yQxHkrz1v8Qq+p3tE/Ke308EBH3A7+RKCl2JM8DBP5Ic3spkmYIf4qH/V?=
 =?us-ascii?Q?HMuQsivqdnWImt7PbQkRGS4daq7GAdiEyAEM8nrmYx829HujIngatgOuMc8m?=
 =?us-ascii?Q?o0xKsvd80LKWOclCXqUYTb7NcIew4Ij/gCS0myyoR1q4S2oCdiH68a2SG8a7?=
 =?us-ascii?Q?QR1HZk1kL8ZMPxm5zUK+cgkAcRVRySHI5p3gaWaiSqDXmw4EV7FV+MqY3bu6?=
 =?us-ascii?Q?WJSBY4Izo83/dUYr8p9oNpBfBppjqzf0rvPhhanXEK9quCmv1GWDnvH39OJI?=
 =?us-ascii?Q?id7MgzYKLBChel9Cvl+7zsG8oG7CfUO6YCrErltgpidjaug7HJTScyyZ/hIj?=
 =?us-ascii?Q?B4/9rLSJhi28qH3DyYxmlx+N1P40m750dTW4Ub9S+bbN/0rSzPhNKn5aZNc7?=
 =?us-ascii?Q?oeydNur6WE3MwuvX44DmKOdvBoEgpRGmIhDmV5cjJ22wTmSoI97kvM9Pg1Fj?=
 =?us-ascii?Q?Qm2lhIERfOGDzGIzKNAu+PGUZ7mvdtZLYp9XAPgpkzJm0N90Tt9TvKruQ6vD?=
 =?us-ascii?Q?qBbMiJirYfq8kY30iZNmjMMYX59cGzJhLbvwT3WjpqOwFRP9yOwnzaN+2/Ff?=
 =?us-ascii?Q?YX2B+VMZkWTyak2IZkN9TDh9u6HvQODwNyO2VH0jLYWHvY0qUfC056j53AaL?=
 =?us-ascii?Q?zJ6v1XRZp7Y3ibGjjJwpTJljIsSs7EJ7GeJRWyvthwPKIogxmYub3qpMavQl?=
 =?us-ascii?Q?AksOf+JnbPHvwcBe55AU4mDxCZgZRhZvn/9Q/p+F156Z+8Cfo+pgoW/M4Dqg?=
 =?us-ascii?Q?DoiOWQesD8bse1A+wM5jNeQhgJRqZt4zfH2fkiQLaC3/6sdgzg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qrJxSY3yYiNaDG51YHMwSXxMciEXWVhibg1TGXmmo5Q1HyLIVbSjRIGvPicc?=
 =?us-ascii?Q?JI/4IbubB2EFpJZvdlekTesJWUCGbnSEGObRgKLEk++CWaRbgBlw2UKw2Aut?=
 =?us-ascii?Q?3HwNG7O1Sh6uGW399EcGZQPT6BX/jzT2gogoaHvwmJ1khksFrRUbhmdG+AEZ?=
 =?us-ascii?Q?V1i6TZfGnxrbIrwu4pS06V7MDq/Q3MwGLaddEHszYV0lPCsyJ6Y90xDnUjp6?=
 =?us-ascii?Q?+rcMlMdUW0MGquzecfWtGmJLu3OASferp+MHmATS82sCjBOTo8BN0/h/Q7Ck?=
 =?us-ascii?Q?rGFEgKYI16eHRrh2VS0+quZtYfJQsLRa84DB4og7ewxjGGABKP4APKZVzUXB?=
 =?us-ascii?Q?G6hq6Px8qClNe3k6BdZet2A2CZk+g9twzEVgSpKRb0/1S1+BQ6reEmihdeFT?=
 =?us-ascii?Q?8mTXmsA5pkffjgiJ1fJzaK8gS2hTbP52++J71ncg0ktP9oF7G9rAfJreiM9S?=
 =?us-ascii?Q?f9KAAdvSj/v31VXIW2cmpCAXyhnWsS3C55NIgg9Jx8q1lCkCSqH5YoD32Byq?=
 =?us-ascii?Q?bnMPqcOltYmr9bf3yvD7Bkbi+tZiVzWgJzyF5VQ9xmippHEt2LPtnGPqJ3bl?=
 =?us-ascii?Q?mw4RKGpxJDQuXYt+dvPZP6mCSRrxaTWuvvA2khqr3E653ycQ9jVjAApNAhOb?=
 =?us-ascii?Q?e6jLvhWgNy1GdfNqMU68r6gqbV+5HbacbYNkIAi5ZAnE5FzSJU0pQ0AIqNro?=
 =?us-ascii?Q?kWbLRpSOjodLzaj5JWCWUkbLOoQlKMiRDpGzWVxnsmMhRALsMSVglOy+NcGc?=
 =?us-ascii?Q?MHi1AWUXkC/zmHOF/dW7O4/nWWBDSDOke+ODJ1Nle9HQ/+OcbaKrc3v2K1iU?=
 =?us-ascii?Q?dAFMifguoVj24+PUB9BM2ZGCsx/g0zxc/4ifz2Uo9KfLD10m+cEk0VlIVQUn?=
 =?us-ascii?Q?phG0Q65QynnigUYBhuOZPAgUcqBsO29lT54RHTcP/yknxUbT4jBH2ych8YbL?=
 =?us-ascii?Q?3f+u7jNlFbbwquHubOGhrhyNIir6denTA79PIGPJJea8g4x0Bal78yAhd/+R?=
 =?us-ascii?Q?exrrvJudBdqRrPkGu8FU9oRlbFrih6ULt9fWZ9GKjkRM5MKDTUBsElv/Nemx?=
 =?us-ascii?Q?6XPUWtGHFU5ZrhUEQQ8Gs0r9VK2rKIyGrngmHU8IVdC05jdSuUwL7SBkhxwj?=
 =?us-ascii?Q?sll6mM5LDfIHOcblsnbzZokeKngZW12vUJgKnS4ekOYycPdg548Z7moSouvM?=
 =?us-ascii?Q?hTTHQKkDcAxWxYvPI+iN49RQqbwE+qB5UvPkYh4di8N4NbC5SwoGqYohbSMW?=
 =?us-ascii?Q?SNKhuG6Ww4F5IkPXi0t/Jbq8yWPs0oodOynF90l0KBL9tuoEkQfyH13HDiMD?=
 =?us-ascii?Q?pbr1kokmJq/Mgg3rJ0l5iReHAr6vRIGy+Q+tEuyVCgyXRcOlfOVTO7XOCRtC?=
 =?us-ascii?Q?iWIgpThVH8Zs5Xi1wk7aXrLhdv6vHeZKPB+9l4cRxfjW0pxrNd25FOlZQn+8?=
 =?us-ascii?Q?33cO33e27dN97eMZWq9DihqaQp35MTz/uCQw9ihhT/d4c3j47zXwLlwBxRbl?=
 =?us-ascii?Q?r4RU1pU8Ij1JBcdVYwkaKPByHAR6B8BzRitxngzIDJemZik9wWsTMZb+kqFF?=
 =?us-ascii?Q?7Gd/x898dsOTptCjO/FALnyTVl70CU9OS5c7hoUF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c94701e8-e1d9-443b-fc10-08dcd72f07ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2024 15:40:17.1673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ekigTvWU3wyN93DmSt1DIDQb4X966iYEX0J0Fy6A0GIK/KJdOEK8ELKbZB7WcQPl2Wzzi1z3NalRoJUEdWIu8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7680
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

> > > > +static int intel_crtc_set_property(struct drm_crtc *crtc,
> > > > +				   struct drm_crtc_state *state,
> > > > +				   struct drm_property *property,
> > > > +				   u64 val)
> > > > +{
> > > > +	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> > > > +	struct intel_crtc_state *intel_crtc_state =3D
> > > > +		to_intel_crtc_state(state);
> > > > +	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> > > > +	bool replaced =3D false;
> > > > +
> > > > +	if (property =3D=3D intel_crtc->histogram_en_property) {
> > > > +		intel_crtc_state->histogram_en =3D val;
>=20
> Should this not be set only if the value changes, rather than setting it =
to true
> always?
> > > > +		intel_crtc_state->histogram_en_changed =3D true;
This is to flag that user has requested for a change and the value 'true' i=
s used for that.

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index c2c388212e2e..94e9f7a71a90 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -93,6 +93,7 @@
> > > >  #include "intel_fifo_underrun.h"
> > > >  #include "intel_frontbuffer.h"
> > > >  #include "intel_hdmi.h"
> > > > +#include "intel_histogram.h"
> > > >  #include "intel_hotplug.h"
> > > >  #include "intel_link_bw.h"
> > > >  #include "intel_lvds.h"
> > > > @@ -4324,6 +4325,10 @@ static int intel_crtc_atomic_check(struct
> > > > intel_atomic_state *state,
> > > >  	if (ret)
> > > >  		return ret;
> > > >
>=20
> I see that you may have kept it for future use, but I cannot see any prac=
tical use
> for this in this series.
> And what could be the future use is not mentioned either.
>=20
The selective fetch series of patch is expected to follow up this series of=
 patches.
Here we will have to validate the co-ordinates in atomic check.

> > > > +	/* HISTOGRAM changed */
> > > > +	if (crtc_state->histogram_en_changed)
> > > > +		return intel_histogram_can_enable(crtc);
> > > > +
> > > >  	return 0;
> > > >  }
> > > >
> > > > @@ -7503,6 +7508,14 @@ static void intel_atomic_commit_tail(struct
> > > > intel_atomic_state *state)
> > > >  		 * FIXME get rid of this funny new->old swapping
> > > >  		 */
> > > >  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state-
> > > > >dsb);
> > > > +
> > >
>=20
> > > Since there is a wait_for_vblank in this for older platforms only,
> > > what is the expected user space behaviour here for enabling
> > > histogram and updating the iets.
> I have couple of more comments here, since you setting  histogram_en_chan=
ged
> to true always, the disable code inside histogram_update will get execute=
d
> always until someone resets this flag.
>=20
In crtc_duplicate_state the flag is reset to false.

> > > > +		/* Re-Visit: HISTOGRAM related stuff */
> > > > +		if (new_crtc_state->histogram_en_changed)
> > > > +			intel_histogram_update(crtc,
> > > > +					       new_crtc_state->histogram_en);
>=20
>=20
> > > Is there any particular reason that this code is not part of pre plan=
e update?
> Had missed couple of comments in the previous reply. Have added it here. =
Sorry
> for multiple emails.

The reason for not having this is pre_plane update is this is a crtc featur=
e and to be enabled at the end.

Thanks and Regards,
Arun R Murthy
--------------------
