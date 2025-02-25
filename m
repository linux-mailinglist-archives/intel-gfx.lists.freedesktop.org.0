Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0046A4377F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2C110E5B0;
	Tue, 25 Feb 2025 08:23:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U+0jSU4A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E7E410E5B3;
 Tue, 25 Feb 2025 08:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740471818; x=1772007818;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XqDg1LdkJl5o3sHqpmw9ySBPbwIL7xHKNFotWqntDQ8=;
 b=U+0jSU4AxIPfIkNQaMLsW+EeC3TcpPmeupaaJ8Ffoy9Jowc8ODFwkQHR
 1gROENQLmzlvBCSkuwIMuwHEfqfzTyjxtKDQHDHb+BQ+NZyXW7/al146F
 558fjKypY47qFOvoX8WfLxltLkcTAhzYJZVheQ5YOObzklDr0XviKPWsR
 m4gWoTruNMIKBUsoj4yXAYwm2lnvIyrvYQDxI0QtGytWK16E6a14BNh+9
 jvffy5ftJeK/QDtW6iGdF/HOjwoKKgm2hipmYs1kw/ydKcJakZZk83DbO
 FEbf8mGXvgLyieda2n7pt3z+XRnDQZURVSfTV6ONLtik8ETpmD6a0pDxx A==;
X-CSE-ConnectionGUID: D6iLPqllRmap3SPaGHDwmA==
X-CSE-MsgGUID: 9j+wZszET2yy/MvxvxVtWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41110909"
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="41110909"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:23:37 -0800
X-CSE-ConnectionGUID: BGgRreG1QOqJ+Fo7Vy+6jw==
X-CSE-MsgGUID: 1OFF7PU6RZuEn5tJ4l0TKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116169805"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:23:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 00:23:36 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 00:23:36 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 00:23:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LY0PnNcQLtDKZlfuS5f7MCheJoIKBq9IjOTf6a7j3RnnUFipk3xHrnJ8q7yADi7/lEBc0C814CBWNMNA98Bhi/rS3RvwXnxG9jj5FgpxTQbmMEJENEIu8fNB53AkejYSAe4KQrJIX83biDqxJZN+jZaKBcCGOi29OJjV6HmgJA0DY+JyWieugeQH1KWjdfDZ1SjyQiZHfS1wcZ7mmZ9Bn2mvSFVWQqaeMI20XkAqZjQRFyZT77axlkyaZdnDGzvq3AqYayTbH63ZWs3xT3q24/rxHEzB1SKUs3U1klmiec6F+ZaMj7gSG1m/G8VwGEXWJ47Bce7Nqc139slGmS9pMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fhqy6zKBt57fHOaTTQou1ILgODlMBRLipS9sq9mjLAE=;
 b=OMpFE9hM2g+ApbfsNZ7i6t/O3GPk+AaQNIusObwAqTvYjXSJNSzD2iY+rXWPKJyufXxpbkFVwhFXpV9jIDBAK8o+0z6VLPdLVbL7tD8k9GW4gKT0bZ6KGErRajHy/iTmZUG193BwUFRl3HAzQgw3ffuCorjbgg9eLwQQW0gvE0LMIPFfBTEyD2/rWfd9N6XaoD7AHGC8E6jfoNOARHlQetbqQk0snoTGx9PoBLkoevPIxVxvKR+PlEd+HcGnt9zTHbebzviPmsXxUy8srRuFJlPwGygudN2K4upv5hSGuQWQ+6yE5aKB+dsT380sUm+O4JfsldM10sNI330Bo5QhbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW4PR11MB5936.namprd11.prod.outlook.com (2603:10b6:303:16b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Tue, 25 Feb
 2025 08:23:33 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 08:23:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 1/8] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v4 1/8] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbhpZwuPd/9SOZB0SJlU+C0SIlHLNWREwAgAFrgJA=
Date: Tue, 25 Feb 2025 08:23:33 +0000
Message-ID: <PH7PR11MB5981ACB4E126266774FB9E97F9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-2-animesh.manna@intel.com> <87zfib7hfp.fsf@intel.com>
In-Reply-To: <87zfib7hfp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW4PR11MB5936:EE_
x-ms-office365-filtering-correlation-id: 8a3830c9-ad9f-4de4-c119-08dd5575b1c2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?rdofTi6tX5++moWjakpdsNh24xrkHPrrxhg+W3iQ46J6quL5sLbbPvhH2wtb?=
 =?us-ascii?Q?RDc+bCIdDMlpO4SPTfrYHENEViGcbGG9hXieNMa/UGZg9B1Gsggu9iWSpb7u?=
 =?us-ascii?Q?uKV5K1DVCGCw8jcoK+Xtw6/1kMzn3Qw8+RU+MhF/gyfwNE9SINLWd7CQ833I?=
 =?us-ascii?Q?OVjJd5Suav3BZODpJbTGzPJk7S2HOpEjqAKQwCY0WIOcev3xxqDVY640Dkav?=
 =?us-ascii?Q?HvVOCd4Aj7w665kUneHU1G3/A6xy90Z/guW8cfM9GfCUXk2YXKUnyWskVlbB?=
 =?us-ascii?Q?0E2UdIvHlGc2Fb22Ge5SOfjTccx3ndL+hBC+hWGMS/0Qdu8xN/XE6v7thQ7b?=
 =?us-ascii?Q?PkwPUwSGDYxe13ecPaJAfbZwOF+wDAeanyXlRHnH/Nqwyqd4HH+xqFb61aHs?=
 =?us-ascii?Q?xX6pXuhchRo1bS9p2RHTBqkB9YAwVMhZ859tNZ11rYRSENDa38Zkg0LTBy58?=
 =?us-ascii?Q?vur+rkG1dJc8wfEWOk6cj2Cus2o4OFdaAp4I8JFt6a4QeP5Tlu5dZcFum0Nw?=
 =?us-ascii?Q?brDh5MchZdxb+vsJkLDXXKj4pMlHcgv1TMWMAujkHYUfv3np/6NIxZiv/bJI?=
 =?us-ascii?Q?/3r18PT67Z5ynfeLKD30IORnIz4Ye/vP7btObFbxrKPHq9x0jJVr60DFb0Us?=
 =?us-ascii?Q?Tfio5o7yh9PHmURjGjtTWNHE3w+Bk8vUYCt8E9qaSmdJW4TrbYxTdnxIJYpL?=
 =?us-ascii?Q?F6esPvr7icYqiW9czV1ngFeM6Qr9V436Y1JNbXxNGEil4NGXW/6eOWUA4fWp?=
 =?us-ascii?Q?+YOO7Clws2o1co4Ve233X9UKIe021SNJVu+l6il8RX2hYxJ9qtrgvdaOcJqz?=
 =?us-ascii?Q?iSd9ksKwoa4E7XTWPy6ew9jgutPvjn5UxTFcvJNYtktVzbKzPdfwDAm3Cgx1?=
 =?us-ascii?Q?Ou5SMEVbirLMEFHoLilWywK60ZSTIqCPTZReXYA9HkedG/y0iyRJbWTKVHId?=
 =?us-ascii?Q?Nf2MnFFCtHg8HTUju34tyKRPRnfRwCdD77nf+Ll+DDLNRGfhkbHuedhJnEjQ?=
 =?us-ascii?Q?Hzh8JegZKR3bmWAy3KqvbZ31/xez2vxfhr/1YKkua4T7e62uNYdvJBBEMvD8?=
 =?us-ascii?Q?LlohoZ6GchOs13i9ptLS/gPx+CjQltI4+08kgu4GtLNIoA3I9j4bAsfxrZkL?=
 =?us-ascii?Q?1zGBlfc81YQXI2bBAhv45rFVWoywK+WrDCJoZare8cqPpIILONmJwPpNmIrs?=
 =?us-ascii?Q?EtJbB9+/tY69xraATiWxp6ZjwFrEzVXDjpQAzftJTlgKBl77VXRSDi24nBmR?=
 =?us-ascii?Q?/vg7/fKl622P9acC1i15paLmd8o7hrpFuosPZ1/d/WYwyB5M+N9akqclCHTX?=
 =?us-ascii?Q?Ij/az963cZEeuiYDGTOg9kwd9+TOUPYFvz1arpemHL/D7tK4Q4as7/VIa6fG?=
 =?us-ascii?Q?mCNnbQfD8z4BtTAC/Gdde/T5h9hJqlcxQfZ6i+TVukH2U2JXEra4QxiqXGp/?=
 =?us-ascii?Q?JguiETBJkx0shfIY5ummXQeceqFGDRWS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Pn/eItHryPEXM3J6gmS22q2CU2RRHoacWWN9Bp2MsX56dzPzFEqsIi8l9Zc2?=
 =?us-ascii?Q?C0AHK9jdH4qMVC2tnRY7p/twuiQ6zMUnh0RuKETJoEf8U1GF9LT8a8KNS5Sf?=
 =?us-ascii?Q?i4uAPinSFWpahRYxO0QwCnvnhiGnhRGxRQ6NPqB2b8AUQPk2eKfeylU+RbSt?=
 =?us-ascii?Q?8TsNZ6T0DFUUusqdfJKUYbwHJg2uV0XstHxp9R/c/F8ev3YqAHJ2jHBPBg3B?=
 =?us-ascii?Q?UcubdDl8L728ETwOjjSIf9ohFHAhRej6lP2yABfo1zVbJsPB0p27tx5keG+O?=
 =?us-ascii?Q?nJc3D5ZI0nwUsnm2PlkE6Mli09bT6jlCQ9qfnnF8wEeDFXP3RVewQch+MvS7?=
 =?us-ascii?Q?984Ko0J5z/ZdNcDL9nd6ft0MriZ+Oap8JzH+YvTbgs1Coq44rEIVdpzbm7kz?=
 =?us-ascii?Q?Cl3ffHPwPjmMrtCboTfFQMnQYZlIxgk34F3zZ2pmqalUxm72AtejJiQEoxmM?=
 =?us-ascii?Q?9/J9mYMZqvkc9L0rRXJKG3ayG2fSSLjXMrMUtqDC6C7BBlw3RBhYhkk+fU+F?=
 =?us-ascii?Q?ygQ1Ytr3VQm+1t4MhQ2bqTNhRdDLjLLSu/6WpZm4KBjRWLDnKRRgDU++et5h?=
 =?us-ascii?Q?qEWUDV7ZiTgO0uwZQ4UqdTmfgWLXJG6X01gnbZgoqXsd3KDO6qjxciMDMXTZ?=
 =?us-ascii?Q?sz4ZJHzcY6r5pQ/1jCb5svg3xzqeIDKhYD7UZtas+fMHpDU2atnKsB6ZgPY8?=
 =?us-ascii?Q?8pQZS0BBShK7V/2P4i4TiXeGFZiOlTLKzvIUDfVZF90ALHbERzXqZocx729z?=
 =?us-ascii?Q?uXKUx+qi0e3i29T0D9NU1PqUCeimBiRsU4HGbX9uE6KVCHmr2qeEjkuhMMOR?=
 =?us-ascii?Q?9gBaL40GLFlJlrwToi0o6BxwhDrSAZUEHKYkgNXcgZ36LZwwt3xVCcrTWxiw?=
 =?us-ascii?Q?iXTABflAFUrprW7x66SKlYJiJaWFMibd+pl5e4Htic0KB3b9fSpuvW5Qa2Ib?=
 =?us-ascii?Q?EjqSVe5mMYzllHxNc4Udr2qiASgz2Y1Ta43OzJ0xeNC+DiAR4FBNW9pmFuW0?=
 =?us-ascii?Q?yC8+OQchFByMMxCiDCDAvFCJ11lYVwVZjmkPWWQ7Qj/Qm6lzsb0V6rF1mBCo?=
 =?us-ascii?Q?pNLS61CgSrJjsgiKNxIKwjZ/pn+LP/0nmbdiUfw7G7GCI5vvA9o+PA+GKEtX?=
 =?us-ascii?Q?oK9eiDwYBY5KUBP3+YjDHszspEfw7VUVF7kicEH1TgzuJ72lsglcMR5/8ccB?=
 =?us-ascii?Q?ZJ5bUNj0cQm1Knpm6lJsCbGbhKy7BYxE1gdhMRcePkGTemuazohxO48ZU0Xr?=
 =?us-ascii?Q?+Qg6lI6W7rtKBd//ABP3TBp/Z1k2veqITFzb04eBOOQcn0rscUOok1VTHGBH?=
 =?us-ascii?Q?MOQWyinZNpHYF/FfbyS/uszyLi0z/UCDiqEHXbt999+aGJpgPnaYXZLc/xnF?=
 =?us-ascii?Q?6hJnxFHN5pf4rsgFY9f2rgpwCI1L0W1YC4aomob/R7CFdmwuSgxmK7Pu8qGY?=
 =?us-ascii?Q?ewk/WFhV1ouMWnO5/0ICrBZnIo3gmnUduRKJ2UlgEcWuBRkXVJe8Y8eDXt7w?=
 =?us-ascii?Q?bNr8tFJMFpOPVn1KH7nVIovN+wljccbtxZqao+Vstj/urayCNpt34FH7rlQA?=
 =?us-ascii?Q?61U0Fk7iGWCZDdGaMRPVxDMyEkDiWUrXj9StDH4+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a3830c9-ad9f-4de4-c119-08dd5575b1c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 08:23:33.7834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FK1KAGk48oTgJ3L/XR4/0v6YmYJf5e9UFvxpctUrC2GGD0I3t5cLKn/Aer4NW2B0M+kzWrIvSehDlQXpgC4B3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5936
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
> Sent: Monday, February 24, 2025 4:12 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v4 1/8] drm/i915/lobf: Add lobf enablement in post
> plane update
>=20
> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > Enablement of LOBF is added in post plane update whenever has_lobf
> > flag is set. As LOBF can be enabled in non-psr case as well so adding
> > in post plane update. There is no change of configuring alpm with psr
> > path.
> >
> > v1: Initial version.
> > v2: Use encoder-mask to find the associated encoder from crtc-state.
> > [Jani]
> > v3: Remove alpm_configure from intel_psr.c. [Jouni]
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c    | 25 ++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_alpm.h    |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_display.c |  3 +++
> >  drivers/gpu/drm/i915/display/intel_psr.c     |  3 ---
> >  4 files changed, 32 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index 55f3ae1e68c9..a53ed83f6b22 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -367,6 +367,31 @@ void intel_alpm_configure(struct intel_dp
> *intel_dp,
> >  	lnl_alpm_configure(intel_dp, crtc_state);  }
> >
> > +void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> > +				  struct intel_crtc *crtc)
> > +{
> > +	struct intel_display *display =3D to_intel_display(state);
> > +	const struct intel_crtc_state *crtc_state =3D
> > +		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct intel_encoder *encoder;
> > +
> > +	if (!(crtc_state->has_lobf || crtc_state->has_psr))
> > +		return;
>=20
> I think this would read better as "if not lobf and not psr" than "if not =
(lobf or
> psr)" because of the need to verbalize the parens.

Ok.

Regards,
Animesh

>=20
> > +
> > +	for_each_intel_encoder_mask(display->drm, encoder,
> > +				    crtc_state->uapi.encoder_mask) {
> > +		struct intel_dp *intel_dp;
> > +
> > +		if (!intel_encoder_is_dp(encoder))
> > +			continue;
> > +
> > +		intel_dp =3D enc_to_intel_dp(encoder);
> > +
> > +		if (intel_dp_is_edp(intel_dp))
> > +			intel_alpm_configure(intel_dp, crtc_state);
> > +	}
> > +}
> > +
> >  static int i915_edp_lobf_info_show(struct seq_file *m, void *data)  {
> >  	struct intel_connector *connector =3D m->private; diff --git
> > a/drivers/gpu/drm/i915/display/intel_alpm.h
> > b/drivers/gpu/drm/i915/display/intel_alpm.h
> > index 8c409b10dce6..2f862b0476a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> > @@ -12,6 +12,8 @@ struct intel_dp;
> >  struct intel_crtc_state;
> >  struct drm_connector_state;
> >  struct intel_connector;
> > +struct intel_atomic_state;
> > +struct intel_crtc;
> >
> >  void intel_alpm_init_dpcd(struct intel_dp *intel_dp);  bool
> > intel_alpm_compute_params(struct intel_dp *intel_dp, @@ -21,6 +23,8
> @@
> > void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
> >  				    struct drm_connector_state *conn_state);
> void
> > intel_alpm_configure(struct intel_dp *intel_dp,
> >  			  const struct intel_crtc_state *crtc_state);
> > +void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> > +				  struct intel_crtc *crtc);
> >  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
> > bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);  bool
> > intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp); diff
> > --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 065fdf6dbb88..5d5cee808bff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -55,6 +55,7 @@
> >  #include "i9xx_plane.h"
> >  #include "i9xx_plane_regs.h"
> >  #include "i9xx_wm.h"
> > +#include "intel_alpm.h"
> >  #include "intel_atomic.h"
> >  #include "intel_atomic_plane.h"
> >  #include "intel_audio.h"
> > @@ -1077,6 +1078,8 @@ static void intel_post_plane_update(struct
> intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> >
> > +	intel_alpm_post_plane_update(state, crtc);
> > +
> >  	intel_psr_post_plane_update(state, crtc);
> >
> >  	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits); diff
> > --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 4e938bad808c..c1dd9c739fd4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1903,9 +1903,6 @@ static void intel_psr_enable_source(struct
> intel_dp *intel_dp,
> >  			     intel_dp->psr.psr2_sel_fetch_enabled ?
> >  			     IGNORE_PSR2_HW_TRACKING : 0);
> >
> > -	if (intel_dp_is_edp(intel_dp))
> > -		intel_alpm_configure(intel_dp, crtc_state);
> > -
> >  	/*
> >  	 * Wa_16013835468
> >  	 * Wa_14015648006
>=20
> --
> Jani Nikula, Intel
