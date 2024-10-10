Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B9D997B9C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1220510E849;
	Thu, 10 Oct 2024 04:05:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XY4OewAV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF4A910E085;
 Thu, 10 Oct 2024 04:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533151; x=1760069151;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yBXW25D+4QSkIznLNS21bCymxqP0m4MC3FmtWfD7OoI=;
 b=XY4OewAVUZdsnRGB+KsSE5ItaV4x6hiBGcwIPf1lRUpoPLB23/A70GMw
 ckxWuPnt/KFOKnEDcrE1bx06uih6WlzqkRlTusB+iP7r2uOYWsSKJJhh4
 qtxEcKpXOcVU5WiC7R95ZQJzZ8i8TJUO0hodxIoRGY0VdFcrD87VcAxxf
 GPgbkECDwrVE86fGXFFETN0VhVJztcjqCG7lKY1bKSwIfRvbZUxItsfs0
 LFQzpw4lJXlOK3YdmUxZ268Hl/8KSyFZcyCeGKH7xycnuP/HkgmV3Mzl7
 Ym5zlxWBftrlhoSp2Ob3rUbnCoboRXIwt3fRMnvDkY873r6jyr3RwP8Mv w==;
X-CSE-ConnectionGUID: Jx/QsVtgQ5SIlsfpCMtZ/g==
X-CSE-MsgGUID: fIYXWzUrQBKq1h5yIZsiVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27986770"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27986770"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:05:51 -0700
X-CSE-ConnectionGUID: pes3vhVERT68JtcToCHkIQ==
X-CSE-MsgGUID: Et4J4D0XT5mpNyMY0cKAeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="99782064"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 21:05:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 21:05:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 21:05:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 21:05:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qxpc11R+nhpqEEDMtCcOQBNSz87JSr7z/VcUxIQPucKCRPKil5gZtDUcBWOzpc28/j6ggxROH9iYZcYaoL2DaWyPT4uPdfsyJF4frIa+nQA8uamPGmDJQqO99t8kVJyaorD/hPmJRPHzMK6ihFXuRhODB0coi/YtkDtHarChQxMVOndqHEtnxVIGs1LQD3D3XH55/pK7Xs5GcKWcfnP1B5WkgMpWzZte7dWLhZe5geqxFznAJ3hL3ua4LIifkXN9X4B4Yl2CKfUkeZtEsSXC0nC6iyKf6nCl1+5SLPBbmzGKgu/OMvcOW/jbnvNjtqZVSf1HIDkEjbE6Fl9uKz1OVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1mQLwn/wXI6qnoUU7VHvYxNQPqdjlxZTQxvjTf8Lgo=;
 b=vXIZi6yie83wtjOUmThgBcGX7mud6cKW/x53b69HGpGneZ3PIed5qeBAL9AR3MSn5rQiwgfnwLHbOA1TXloTEhviunbXGefCKk+ZVXG41k3jaRKUZAbNyLxDXkZXzj+L0Kx7crd1BltN1Fh0CHLXAZsyOeGMgKeC0p3r9POc3UZSCZ7JHY2CfqxOuK7sLD8G3jooiC/V0QpdiEunxg5O1pge6DapXuQfJMjncwaVPa0Nc99M6k3QeqYUoU5JFOml0QuVlYbATxanrtvqT0g7k/HkI77Z9UyyoUAHgMHbL2lu5ZKNy8aad2iD4Vhvi7rZCmUpUr77hhPQPExX+tVWuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 04:05:47 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 04:05:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH] drm/i915/color: Use correct variable to load lut
Thread-Topic: [PATCH] drm/i915/color: Use correct variable to load lut
Thread-Index: AQHbGhYrvlDZXXxmyE6xFO1YMH/e6bJ9/CsAgAAeCoCAAAI1AIABP7QA
Date: Thu, 10 Oct 2024 04:05:47 +0000
Message-ID: <SN7PR11MB67504D90C9493C590E082567E3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009063753.1799234-2-suraj.kandpal@intel.com>
 <ZwYoymdhNQAh42UQ@intel.com>
 <SN7PR11MB6750FEEFACE7052E8FA88077E37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <ZwZD1qYnJn7Hnvtu@intel.com>
In-Reply-To: <ZwZD1qYnJn7Hnvtu@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB4771:EE_
x-ms-office365-filtering-correlation-id: 383f2582-c8cc-40af-4e0c-08dce8e0d1d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?kWUq9MXv1l63fLQgvUVpOjOFjpdGLQXbWZPWLppIgZTRNRwAI9HO/QxVqV?=
 =?iso-8859-1?Q?hUg12ubDsKHb3BeyOT7APlCL+pvuKBFdzwrcThSXUPRNfN4zk1jdMLkKNi?=
 =?iso-8859-1?Q?zwpW9qbP7RDKQJB16ZgI1tzmxDHwMc8tMGUwcA9tDoGd3P+yp693snr5dw?=
 =?iso-8859-1?Q?DQYHk/M+r10j8nHkKQtl9J1BMPfvKzzhc/jawxRV2thpKjnGe20yszIXg7?=
 =?iso-8859-1?Q?Ci8mae77tm+tM6lWEqQeSt2wVeORSkqrlJxmpa2oaJq7Rmv0+VNlfFQ14q?=
 =?iso-8859-1?Q?Vt3QnBxk1passF558sdm7KDwoknm6uu+Z1ErP5G0LQZDDPs1EUPsbYcncK?=
 =?iso-8859-1?Q?PKANzdcP8SwWrz/9wzM/k6xz/PKzIoIEMSk+O+ZaMZub+uPh6AOugTeoIA?=
 =?iso-8859-1?Q?zFkAUPMydlFlR0OwEsXSfq6WhdOCtHpOW5BgMDOAQDVCscxviKDY1zPj2z?=
 =?iso-8859-1?Q?kXhMJCxynuH72GACjBl17jPQD8iKWEEWwf63sNrX4flZuIEoffk24cOxxy?=
 =?iso-8859-1?Q?zr7ViuhHxWSKhpZBf59znWzn8E//LCi/klvIvyt1o+sgMrkNus3K4vM5Qn?=
 =?iso-8859-1?Q?7attYcSCIfq3izyiS709c0f91hAsoLMgGZyrbPN/c3z0XQ/IMx39f9MsD3?=
 =?iso-8859-1?Q?d3kQn0g+hPYW55hdhJC1/4svLwmtk7NszLS59x7HCsy17oaFkiYswWFe0I?=
 =?iso-8859-1?Q?xoHHDacv5r5j3rTYUmclbHdCWjWnKmDYVhh67MQccylzLfnF31/PjRf9jJ?=
 =?iso-8859-1?Q?8o5xkH/J4kUOIrlNjrBtNvHJ1p6rwNpmSaFpnrIcph6Es+R7+tby2MdaQc?=
 =?iso-8859-1?Q?jKMnzZszZdvWuinTY6wW0QVodg8LwVRn7atp0+T/w4PB/0mgAAtxDwcC7U?=
 =?iso-8859-1?Q?zn3JKW5fg/QLDEPJLyOHjvOUOvBq5c+do8Y8rCjxxO5Rj+3DNOIJAviKbl?=
 =?iso-8859-1?Q?bneJhFzVjGC+JkPA5dK9Ehxs3SHhmI01IS1ef2DBu82CJ4aJcmRy7I4HnM?=
 =?iso-8859-1?Q?b8cYV0gx17m7Q5LggqMPYCFrwGkdfSGyiobJnGnMQlJCT8d2Cu9PGAXjTf?=
 =?iso-8859-1?Q?wDvZ6HqsnYJCm/pbaAv6cLJBiGymqsz+HzMsx75xeqSU6TKZT0nQy33ZV2?=
 =?iso-8859-1?Q?CEJG9tD7WIWYTrQC99Kk7fY4hRzDfEYB/cSLdHpFY8cYccP2C0RXw9fltM?=
 =?iso-8859-1?Q?/Ds9djMY89bZskQzIPHzOFy8Q6HKUzxSXunLcy3t5NzbTQFtQCo3lRvDiQ?=
 =?iso-8859-1?Q?R3S+U+YTD6ONipTBKdBfFvJe/kxeHm1WPkmdwtaAIVesGTp91T8e0tAjeJ?=
 =?iso-8859-1?Q?8zadqbHRdmtkRDLPDzgt+EHIEnrYa+Y2sMLryPT7/yeru9m1TgI42nGuRd?=
 =?iso-8859-1?Q?/JFnd4753f6hbfHYsCRGsIpWaQYsjs/A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?M7qnP/EGc3uBWcaHc+cNS6C9/w15AGCB5+Oy0bE3qUH1OQtXo4sqwcqUQC?=
 =?iso-8859-1?Q?vlFYS43u2MJUE4P+08fNCeczOrOCqYWBJDJqgM1sRg1TdrcttQ+Uv3pUbr?=
 =?iso-8859-1?Q?bCOHZ+cUQMx7/mGULxXcfoq3Yw4XeKNqh0+HCLs43zheyTzT3iW31g/luh?=
 =?iso-8859-1?Q?Hpoa0pFGqxHhxu158cadJXx900lKbF4DjAL4nrLAL/4d1E1X0AXxZ77XiE?=
 =?iso-8859-1?Q?d5J6mC9d3ajTwRt9MsF9ZDEdr9lLzHGQyiW7Q+NUK+ySnA5pmmTBIqpFX2?=
 =?iso-8859-1?Q?DTeNewxRw+CM9iUkj235i/r0Ua4Nl1B00f8K7/qbyXlJ4YJXuAbKZTjofD?=
 =?iso-8859-1?Q?jggKr2FwzInhpkI0vY+vKTGWOdZyQhXq9wfSTuIdZjyYXt2lIJ5Pjf+Qkn?=
 =?iso-8859-1?Q?anvb1wuEZeornBOfEQ4tBHghzz9ZxAjQHaLel3TztyLBO7OETjgXRyzoOt?=
 =?iso-8859-1?Q?TOsApNdKVUjEPDzvDA+cjWmsIbrckxu1Is1e7lSSkvfBLBSlVsM8pXgKqN?=
 =?iso-8859-1?Q?Ac3YRMne+Q3d/b1zZcrW/d5F73+Ytoq+h1jlvJCV92YSdOXovF/yntMtZA?=
 =?iso-8859-1?Q?9xRhtBN5aZit0nEfhnhyjwvHzVaq+X/df9W5rreJU6Hat5W69mFOz1UGPw?=
 =?iso-8859-1?Q?SxsA+OEASYmk41jX/ThpYuQuMgu35I35EFJ9OuU+4wWkQkeAFpAqzvVa9E?=
 =?iso-8859-1?Q?kw7acZtyeg9TyPHpjX8p/JeAQ1/onShdW9mXBCkH3o1q1DbBFq1sK1q5et?=
 =?iso-8859-1?Q?pV+PRNVF+MXlSZqUz6WqVnXxK2v7gqcuvlSYvHr1eAc354oNIbZZ0W54v+?=
 =?iso-8859-1?Q?K0JUTazxsaFy2Qhb8r64Nt5fUASfzsD9gQEDXT6wVyeyOM0UgyVmcRbQ7x?=
 =?iso-8859-1?Q?9zuxjX4KByRjtOOze/Mt3fZedpIP3EBD9tlzoMosWu+z9El/kkXNCgy/1C?=
 =?iso-8859-1?Q?E75wvqj1ujtpWjaKD5QY2WJSN6+XcV4hKge6Z10WK/aqx43j83B+hXzO4N?=
 =?iso-8859-1?Q?0BlSEWfGQbTQgYpzmQo6Bw9H+VRjmqNX3nlKNwP47hGYBjge8Xjyr3GWJj?=
 =?iso-8859-1?Q?gobAQmk/kurleb2htTW230HBR9Nap49OVPZvFqoHxnpqVQjTy9OMrvy8tw?=
 =?iso-8859-1?Q?UYzI+vm+ut0SRT7b06h+Sl2E6yhylGNlP9tHkexSTyibc9CeH9jCS6Wzrb?=
 =?iso-8859-1?Q?GsYxzFGF7ng30MKEdttbammc/kyHCibnJ+Nya2jbFC70RHm/IsGqdgKsk/?=
 =?iso-8859-1?Q?7/MvhyVRHYIk6dk7tgM3dK1alsBvUdOpHpyT3BS6Syy/sNSCLQri+ToDSk?=
 =?iso-8859-1?Q?ctFJyL4YhGSPptYrXcqg5RBJa8bTI+3w1diYCcF3xmDIgpvjSt43Aqp5Jy?=
 =?iso-8859-1?Q?P0Dc8475aEJk0fTYRGEFSfRrIysncThaEHak2UhNuE102XyWVJLvM3GR/o?=
 =?iso-8859-1?Q?8IIle507HgmKkSju4+h/F8vjehaXYPqa4h0GecagVrH4UZaAlyc6h4hRG7?=
 =?iso-8859-1?Q?tYwVcoU/nL7f45A3KMe17QLArDU/0GekZqMMmpTB7K8aO/e4V8n1HnYhil?=
 =?iso-8859-1?Q?HDMSu2xna28dfnHi1JyWBt+wEOvyZp4UY/2ZIW6drJ6KBn8wPTTeymsQ23?=
 =?iso-8859-1?Q?rnNrTA/KKS+8MW3Uy1417D5wg/ghF+3pVh?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 383f2582-c8cc-40af-4e0c-08dce8e0d1d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 04:05:47.0513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IXpBoTqtrjiWU9mNnflrpVKtM0KM3fQGlIaopnJ1Mt/rzPXun7SCKXKc8mCpH/Ntah6dKTBm2TlpLErQx1sSFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
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
> Sent: Wednesday, October 9, 2024 2:21 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shan=
kar,
> Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: Re: [PATCH] drm/i915/color: Use correct variable to load lut
>=20
> On Wed, Oct 09, 2024 at 08:46:20AM +0000, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Wednesday, October 9, 2024 12:25 PM
> > > To: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org;
> > > Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> > > <chaitanya.kumar.borah@intel.com>
> > > Subject: Re: [PATCH] drm/i915/color: Use correct variable to load
> > > lut
> > >
> > > On Wed, Oct 09, 2024 at 12:07:53PM +0530, Suraj Kandpal wrote:
> > > > Use the blob variable instead of post_csc_lut as it may end up
> > > > being null.
> > >
> > > Not possible. We always have a LUT for each half in split gamma
> > > mode, and if we don't then someone screwed up much earlier before
> we end up here.
> > >
> >
> > If that is the case then the code line const struct drm_property_blob
> > *blob =3D post_csc_lut ?: pre_csc_lut; wouldn't be needed but it has
> > been added  presumably because there are times
>=20
> That is for the non-split gamma cases.
>=20
> > that we reach here with post csc as null and in that case we at least
> > make sure we are loading the correct lut hence the fix.
>=20
> post_csc_lut is the correct one to load here. Trying to load the pre_csc_=
lut
> twice is just complete nonsense. And if post_csc_lut could somehow be
> NULL so could pre_csc_lut.
>=20

Hi Ville,
do you think it make sense to have a documentation above this code to expla=
in why this made sense
here and not the other places(this being the split gamma case)? to avoid co=
nfusion especially from newer
people as myself who aren't as well versed with the history of this functio=
n.

Regards,
Suraj Kandpal
> >
> > Regards,
> > Suraj Kandpal
> >
> > > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > > > b/drivers/gpu/drm/i915/display/intel_color.c
> > > > index caf1af039960..22b7090c4f6f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > > @@ -1503,7 +1503,7 @@ static void ivb_load_luts(const struct
> > > intel_crtc_state *crtc_state)
> > > >  		ivb_load_lut_10(crtc_state, pre_csc_lut,
> > > PAL_PREC_SPLIT_MODE |
> > > >  				PAL_PREC_INDEX_VALUE(0));
> > > >  		ivb_load_lut_ext_max(crtc_state);
> > > > -		ivb_load_lut_10(crtc_state, post_csc_lut,
> > > PAL_PREC_SPLIT_MODE |
> > > > +		ivb_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
> > > >  				PAL_PREC_INDEX_VALUE(512));
> > > >  		break;
> > > >  	case GAMMA_MODE_MODE_10BIT:
> > > > @@ -1531,7 +1531,7 @@ static void bdw_load_luts(const struct
> > > intel_crtc_state *crtc_state)
> > > >  		bdw_load_lut_10(crtc_state, pre_csc_lut,
> > > PAL_PREC_SPLIT_MODE |
> > > >  				PAL_PREC_INDEX_VALUE(0));
> > > >  		ivb_load_lut_ext_max(crtc_state);
> > > > -		bdw_load_lut_10(crtc_state, post_csc_lut,
> > > PAL_PREC_SPLIT_MODE |
> > > > +		bdw_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
> > > >  				PAL_PREC_INDEX_VALUE(512));
> > > >  		break;
> > > >  	case GAMMA_MODE_MODE_10BIT:
> > > > --
> > > > 2.43.2
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
