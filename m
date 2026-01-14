Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0968DD1C94C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 06:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5B710E367;
	Wed, 14 Jan 2026 05:24:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R68D/ikt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAEAC10E127;
 Wed, 14 Jan 2026 05:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768368253; x=1799904253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jKM1HAECvpUDmakSl85Ad6eTxZUK5cNgCk6npz4xwHQ=;
 b=R68D/iktwsm5v7zcU811mA/q21HcDOWCNGzJ2Wg5NeDLgNja001Pto0U
 xcKQzekehkE6PwVIBUmOGLw2dOIfz4bLzibucgER4pk5aLvKHFgwKouf3
 3/A0f54m5ZV0L5gw7w9zxfZASK1ABpAU66/NrGm2A1zjGfteG4fVQaHjA
 Hkk/y1cXdI8TlJZ+4/mqAmtOZehIYQGbr6VSajWXggv1I4afySGHDuDP6
 WL6TjovmgvAhEup/Kl+4FYmHwEFANfy4a+Uog6bvhMDHBG9OJnTG5bvfE
 552FDE4ERIeHCZwxqxrDgkXpOkqKziVZLIU4qRBaW5IEZQi71Vrk1jReM g==;
X-CSE-ConnectionGUID: 8pgrBRl9T16AugUBkFTyBw==
X-CSE-MsgGUID: e/TvfjIQRBGWaeGXYazO0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="95136440"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="95136440"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:24:13 -0800
X-CSE-ConnectionGUID: GBkwpQdbTDqzyIAeUwk4iA==
X-CSE-MsgGUID: Wg0wKKNAQoeG/766SCEzWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="204474397"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:24:12 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:24:12 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 21:24:12 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.49) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:24:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qo0+ZvTbq2hnoPoiq9mjUbAj4YBkppPjOmktG7M9gMErtePnUw4MWDaa+VReKeLjHd2QzbgFHCU6tLIO023N7xqvJefcgJzwEKxvhGVnjCO96iqu1muw7jHutLKOJi961UZalfFJncELWOU55riPioIaaNp4jhMwYluGTUJC0jI723pPOiO1HOIjy6WignkZq2wKDqlrNZtPpKwDtujGv1UT5/ldRjLjYhIvm2JqD7rCAcpf8n8LF4M9K7tHKpXmixy6DNmMND4v0IMXv6UV8X3QB/CxvBkmcsyQJErewnGhrjIrtXtyxJu88Ype5C8JrKZd0d0y46GOu9PP+G03qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLspZtFG6IuePnCsV0UNi04aTwYO9+p23Nwnscc1b4U=;
 b=biknIvjqLyGz/IcKRZKi1emCqcL1ZZLmIllq08prSBs8kIxkjvmlBbuujV8Ws4lO1ewJIeG1UgqTQYaQhhj8O44QDELCz4jTb5a6xKqu2AnPwzNXh1fLhNExAQ6M5BSqG7B3CB2RlGqYgsK8sgGFHBUy8kLOOXk/jvQN4DXE5aq54aipx8K+WzOWgmP8Xx7R3yrWxVlj+Y6VZyI4abvkKORuOolfPTQE/WbzMOGVVtqcvtvx0W9dXL6YpJXiYIsYeGjfT3vCr9o7nKgRleM1k/M9dMLOAMjV99AZ6oJwUf5BRSNLtySiHEJX/CDUjtSbExuMY+O31qCt4aZReFTDmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB6998.namprd11.prod.outlook.com
 (2603:10b6:510:222::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 05:24:10 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Wed, 14 Jan 2026
 05:24:09 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v2 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
Thread-Topic: [PATCH v2 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
Thread-Index: AQHcb2sLE2UHXI/l/kmI99GB+cj0TbVEs+OggAPD+oCACNUr4A==
Date: Wed, 14 Jan 2026 05:24:09 +0000
Message-ID: <DM3PPF208195D8DF85F5F2353434D93052AE38FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-12-mika.kahola@intel.com>
 <IA3PR11MB893760F05BC486300F40B951E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aV-_iwPmDy7Xk74s@ideak-desk>
In-Reply-To: <aV-_iwPmDy7Xk74s@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB6998:EE_
x-ms-office365-filtering-correlation-id: f93709b2-d367-4cb5-e577-08de532d2565
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?BTkaNEhZ7KnKlkOuKiV2vePmY6s3e5ITOsD3IOURm4oZs/DN4DYBFIhGcPOM?=
 =?us-ascii?Q?nTRM5cpqiv0cMoqdVPfLljkNDj6bo3Jf+BzI7XZHj3joDoNwl9H311qaklwg?=
 =?us-ascii?Q?/nc6IklXPIMHTZOi3GpdClWkAngI11tlOR2sMtgVL3MCz7lW4ymBoRPtZYPU?=
 =?us-ascii?Q?Jetg8biYbTadyE/GRYu3X3t1iNuiddEEwn2QoQpeJxcuW34O1LlLNMWI8MgZ?=
 =?us-ascii?Q?5Ills+7mAIP/H4EUA9pUoov7ikyP6TQ4QYYuJ1/3vqPbQJHLeEpK9CgY4E8a?=
 =?us-ascii?Q?vM3D23K5CLxTBrSMonXM51ISCFlzgZkzcj/Fh/HByW5BJR2AtHTxMqLym1dH?=
 =?us-ascii?Q?jFhM+pZ2+fjnObJSf5ggnUvvwGJ95tdixJ1a2DbbHLbuCPcI4lNmaZ1keGWO?=
 =?us-ascii?Q?QiqxmQQtGmO5USZLB9vs11ZucKaJ67vCSL8tN1Krkq7IM0SnMXuLC5bXvk5c?=
 =?us-ascii?Q?Y3VTasReUQx2P9aBYiqJrwLV6DNL/2dHhvskQroJ8EMh0gHUakJ/xVqnJ4r+?=
 =?us-ascii?Q?KuTH41Eef3+9FEGP1PtbpZMJT57T82yx09DB2admCvKg1Q92cRXrmnN62Iuw?=
 =?us-ascii?Q?+jagiOwX5xZetbMVndhsdIM0nyed0xLMP7UcBknUctFZdaDwCyUoOPK/YXTj?=
 =?us-ascii?Q?CRmdrXke/IEUHejb+/+yonjdKTMJjNegoaVrZaIB+yYD6vqBH5gmKUPWgxcz?=
 =?us-ascii?Q?xVfXISeSCNyrkz6r0OS5MW5HA3sqrhb8ibn2MtcgQYPO8HcBWXjU+8Pu0sFW?=
 =?us-ascii?Q?pl4b9EDD5CJbkXWiQJmqnWppupfTTv/YyOgi3Do7NzNxT6P8CnyuXStIkWSa?=
 =?us-ascii?Q?/dDpOr8RY6whCc6y6ks1n59uLuMqxHeN4BhlOTtLli+iLLXIvVzDdOllJRJW?=
 =?us-ascii?Q?bVWsUup4xmOI/rDl300nHptdgha0cQXByymK6mb9SUIav6P3dye+Yx/RhiA1?=
 =?us-ascii?Q?upgLPkPjtcG2q00CeKv+AYde+HoqijjGpCjD1N2T1Uj3nPHiFqw4BNMwmssz?=
 =?us-ascii?Q?qZV6Hx26Z4jVjQo3hMN8mDbWKpeNQrqx0Y+q1R+RBO8yjTxkCpTVx17CWPOJ?=
 =?us-ascii?Q?CwoYqbeaqqn/P4qGoHmguTxM3xwB9Lj1GNPdk6/hKz4DgDsxEbhVXz/AzLfa?=
 =?us-ascii?Q?mdAdMUufd3fMQ+w5JIYJYIAEjrXDYikE8CizgZbE5CmmFc+w6r70CyUTkE0z?=
 =?us-ascii?Q?Y0QHtA05GzRW5AO32W6WJH99fmz0yTRPpvY8ZKxMtiB/vAhZV6FHeCOkWZe/?=
 =?us-ascii?Q?DJfqbrUCGas/13n2qd3dTFm//Qds6Nu+0ZolaaZ64jzGZfvK4QMx4uoAstd5?=
 =?us-ascii?Q?MHdB3SC9XrB7AytZX8a6ER/UJFBxVwmZzQI757/dNv4Qau/p81sisskCJ2N3?=
 =?us-ascii?Q?GBfoS9FjyBHN+AysO8GY0zJ0qNFNpeG4BIsA4dRCHDNC9QU9hRkDMg6g4Lfl?=
 =?us-ascii?Q?SIHdm4Mz7TMzrsbNSXozpYsT/4rCZkKd+QmSvpJ50HdHhLjvl3jhVD/evDhP?=
 =?us-ascii?Q?7gt5P5IoQCTbFMyxLmuUIfX/OiM68x/Pwhaa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oqlZh3CX9ykHnXpTGL3TyoWSshA7K4kHYKoa0VLTFXxUW6Q/Ljno59CU3OEt?=
 =?us-ascii?Q?j1y1pknOP8ObZ6GeiBzCCMrGtDB0Jxo/ZqfebT5cyTQ3l0RMmF9jFhJHqeMr?=
 =?us-ascii?Q?tDmvj3f7lJnLumUTZlnoqwBbJxXZfmkYlqWG250ZFL9vBaO63mHq6RfeJBAP?=
 =?us-ascii?Q?q9pTXGzMeGHWmCaItpf+RYWtBEr28PhnI+nN0FYC9uiB41hQKXwVj1fk6YCg?=
 =?us-ascii?Q?g0fdrQfoaNeRaQyKvtlny/3525/yMU7Li92f27fOxyxaSAC3LxjCY4KLl6uC?=
 =?us-ascii?Q?mDllOVBWiErVQl3GUhlzsBeXzjNn7alzdJJyg1PguamA+gSXBLV1giyVrly0?=
 =?us-ascii?Q?8un/mdYO35+lsttnn4JT0cJQVUt5FFDU7zpJVoK546F+ifk6RPvrduciRXyR?=
 =?us-ascii?Q?1Gj+WJQVs/Jyx2fIr6+RTRxH3ACgZ1cqhsN+ZaTU66QKTwECOElWFxQwpXtI?=
 =?us-ascii?Q?mAPKTMGAz6pX2SncPGWhyk8/lYyWE01SQAXC8SFisJTnJtoVYN38Sjp1jKVj?=
 =?us-ascii?Q?rtC5GX2ZA0+qvLUgLy27APtuvUj0DX/dVMCqXbMd2phQBVXr1w0Z//FLJkd2?=
 =?us-ascii?Q?hhIGzCamIP5wgkuTwf13FbXIDeGlQVOXTMyqiHR7OI/n7G9jx4Kryn8hQ16n?=
 =?us-ascii?Q?OGxZbb2R/nIRgWXvvqaKsb08CTRk1yFK1guRpWsgTlqkmAUFVhhLujo9V7zq?=
 =?us-ascii?Q?+LShh+9NK9Y3EkK7EwVdOr4HxFvOmp2R/IEQOhZb3oU8PYP4yViM68BpXEue?=
 =?us-ascii?Q?2SVwzG/AMGWBqCE+h2rynXQ0uZKWGrybZ/007tBnPqK8S+9KhkLN8/KXie67?=
 =?us-ascii?Q?apNhdbUj19w0ZVcWIoZE3R26d9zdKyE/lG08jncQ81BPEIQYzMLiMyMP0c5N?=
 =?us-ascii?Q?nhm8ZFh1fUFAjNV8bQu6KrJE2ZniyqmQ6I1LIAnwO6ZMaKYVpqyLN1HpUIcD?=
 =?us-ascii?Q?wTgbFpVmT2Lk5hxBGL4armenFaMQMGJoio/8+83FYkYbNNPJHBmODvwQJKK2?=
 =?us-ascii?Q?T0hh2Vth/1lf5GD/WSpLVcIcQXkaaCq5y/Qz/vce5djHki9dQgLmUTVoZUVu?=
 =?us-ascii?Q?kTqsaWrCRm21r++FPn1STTt38rqLUZZ4aHOye3Y8jEkrURvXctL+Al0YEz/8?=
 =?us-ascii?Q?dyLaUyYjbpE+VwFDQnqEWixn90hQXkoGioepJB4JnXSr7HUrRz8mR/jmq1Qt?=
 =?us-ascii?Q?A0IaBmIVLxH6hUSwIHkgZJmKzQtCCf0BYy+iq3UP5ZkjMljU1aiVVt3u3xkU?=
 =?us-ascii?Q?o5byi9hnW7VvyDP0UUmr8+GaQ0F7B5872DIXx2DkeNiBnPu6xhdqtTA4njYI?=
 =?us-ascii?Q?DjKYF4C0Ets7RsoHjN3Jo8zpLRD9djkloztJWK9UuNsOVB6s9TctvkpYJB/5?=
 =?us-ascii?Q?W0ZOeDHYCQes4+TEnpuDPoP9QvbZqwcNm+O+ebOhU3WjdHGh6B3a4vIpXwC5?=
 =?us-ascii?Q?jMvwYXP9a1pQWnaq1jcEKJ9NxqrKuBWkoJymDPJDhOgGQuLo298xxIsZGQKg?=
 =?us-ascii?Q?1GmS+w7Vzlvp6N1yylYWDAiUq0or3hF5Lby+/vRW/W5jMTh5/JXu8K7wJ6Vi?=
 =?us-ascii?Q?29+Fs67BT7FqyLm9AUZYAUAkhhVqttR1LIl69+RZvgj1hXFA8qNWiENlg9Hq?=
 =?us-ascii?Q?4wQlgDHm/dRsfS7VJkMrcywUGCiVD0Lynn4ooHlKKwyq6zqEes3jcwgwiXXd?=
 =?us-ascii?Q?fpkAl3ZEChYIB0meaFwoyVTBC+ue9+Gx0TP6CdgPYqdX6QyR5aC14NuCewfN?=
 =?us-ascii?Q?G23b76y0rA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f93709b2-d367-4cb5-e577-08de532d2565
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 05:24:09.8944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TlUOGEreX+NRhWpV7PrY9sZTFqSI3e+GmeiLL2CHpwccTqEdtWALaPMd46/hDMwryWFm6LzNahxVV1T0IJ0bnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6998
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

> Subject: Re: [PATCH v2 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
>=20
> On Tue, Jan 06, 2026 at 05:04:48AM +0000, Kandpal, Suraj wrote:
> > > ...
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > index 3d9c580eb562..c0ac67f7b11f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > > @@ -78,6 +78,7 @@ bool intel_mtl_tbt_pll_readout_hw_state(struct
> intel_display *display,
> > >  					struct intel_dpll_hw_state *hw_state);
> int
> > > intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> > >
> > > +void intel_cx0pll_verify_plls(struct intel_display *display);
> > >  void intel_cx0_pll_power_save_wa(struct intel_display *display);
> > > void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> > >  				 const struct intel_crtc_state *crtc_state); diff -
> -git
> > > a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > index 9aa84a430f09..7127bc2a0898 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > > @@ -4613,7 +4613,7 @@ void intel_dpll_init(struct intel_display *disp=
lay)
> > >  		dpll_mgr =3D &pch_pll_mgr;
> > >
> > >  	if (!dpll_mgr)
> > > -		return;
> > > +		goto out_verify;
> > >
> > >  	dpll_info =3D dpll_mgr->dpll_info;
> > >
> > > @@ -4632,6 +4632,13 @@ void intel_dpll_init(struct intel_display
> > > *display)
> > >
> > >  	display->dpll.mgr =3D dpll_mgr;
> > >  	display->dpll.num_dpll =3D i;
> > > +
> > > +out_verify:
> > > +	/*
> > > +	 * TODO: Convert these to a KUnit test or dependent on a kconfig
> > > +	 * debug option.
> > > +	 */
> > > +	intel_cx0pll_verify_plls(display);
> >
> > According to me having this done during every boot does not make
> > sense, maybe as a test it may but here having the driver Spend time
> > doing these calculations for every table for all the rates seems like
> > a waste.
>=20
> The overhead of the calculation is insignificant. There is also a TODO:
> comment above to move it to KUnit/debug test which would remove even that
> insignificant overhead.
>=20
> > Specially when you take into account that all these tables are static
> > which means you have the values and the algorithm beforehand And
> > before adding the static tables you can get this the algorithm tested
> > against the table and fix it accordingly.  Also it should be the
> > responsibility of anyone who adds any other static table to see if the
> > clock matches.
>=20
> The purpose is to make sure that no PLL table entries are changed, breaki=
ng
> them, after they were initially added, even if the initally added entry w=
as
> verified manually, separately.
>=20
> Additionally the function calculating the PLL clock value from the PLL di=
viders
> and the inverse function calculating the PLL divider values from the cloc=
k must
> be also checked and kept correct against any potential future change that
> would break these functions.

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> > Regards,
> > Suraj Kandpal
> >
> > >  }
> > >
> > >  /**
> > > --
> > > 2.34.1
> >
