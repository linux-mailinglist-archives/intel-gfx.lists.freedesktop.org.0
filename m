Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3EAA03B96
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 10:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E701910E3D2;
	Tue,  7 Jan 2025 09:55:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZcFbQHzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B700210E3D2;
 Tue,  7 Jan 2025 09:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736243744; x=1767779744;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SWrwDtx3aJ2iAPxziD7akQwa6y3of+icHOonVrZMCWc=;
 b=ZcFbQHzjt381AjOzkStRwlCS5iMBheWkFFDBr1aV2rgirtIdoBufPtaz
 9b8ZBSdzUdmix67McD6j/2LT0A3h8ynniaDFC8nXhsID5x15jhuuYVhqK
 nQWrYniwAsEYgFL1iGJMnNgrivG+ITXNLQ9c5bjf1m10fkzAc3JnFMm4I
 TLSADPl29kAf/Dv181ILWJJCdbOrfOZLSIzVXADtyYpfp5azPMY7HeEun
 AMcTHBUQcr1lP+POggFnM25YUBLFlMT0o3+nFlIOlcn4ruFbJA+OgJR22
 Hkjk4Js8i03r8vWDyuRzqL6oBTLnMTOSALIS0zJ/nBS44cVkay7mvbMSh g==;
X-CSE-ConnectionGUID: NUeZbZ/vScK8RTgm3Y48Ew==
X-CSE-MsgGUID: T7e9QZVUQdaIU+S0al1z8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53956039"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="53956039"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 01:55:44 -0800
X-CSE-ConnectionGUID: nnKxKyqDT0SquXEQrYcYhQ==
X-CSE-MsgGUID: uuzqyX8UTleLAtU33/hIzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102589371"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 01:55:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 01:55:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 01:55:43 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 01:55:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cldCqxP5K3IxEA3gcjiPYUKAEbQXLKrPG/7Rng9sMy3zE05F9+R1+wpVCqeXGLi+EGbkC/LjvtzAnear+aRkuLMEd92DhzEI8uYGEybUtz60pmkOw/pEHrA9gSw26ZoAEbO4Q8elUun5Uq1ZZEJX33N2d+O6o1mszZ5o9eSLZ81vt6TeOYAwIm/axS/9QEL40TFvP4NyhJaPDFIIHzV10/DvwoF/QFUnxXZuBHmqOInQvmECgTr/6k7xe5P0DHJe7arGwDOzMPeVQX3IuYluZ7oj/TlUm2Dh3ypd4ZulHibLJw73pduIwGr+YDsVOiFbwLEIdnViPB8RyEdzL0/WGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I8rMWSXdhrewSVjy8YHbhTYUcwH63YX525eVubhQA9g=;
 b=h8haRe9o9otULo2puNmPW50A59zks66Bw1Zlp1Ui5CjWNUF20dmthEtkYgLryCvEz45OHmNHsD9usjuBwdUw1gV/LB+2NAo0wVcox+lzmBgOyZtZ/jr3GPBjXwrxzSJbvVVfmS13qFxt1NA0fM8Z7usBZnAIIugKboJmO0CasTeQwqz0WWMhvT37lc8nnt77fdGAwku38lqLYIeVYle+dLCEI1CIZHZOSOyLDywGMDFtM4n4o9HyWBBJklBcZB5gKaeE3liuGdwCW6Nw/3yBhGhZv748c9nF4nAn+iPfWIPe0zu2vRnAHHUK5whBcZVyRrv//iLJ0j438mh7qHivxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DS7PR11MB6038.namprd11.prod.outlook.com (2603:10b6:8:75::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.17; Tue, 7 Jan 2025 09:55:10 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 09:55:10 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Topic: [PATCH v3] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Index: AQHbYCKGIwNibL01q0ySrtyzYIftc7MJvFuAgAFXhmA=
Date: Tue, 7 Jan 2025 09:55:10 +0000
Message-ID: <BL1PR11MB597981842A15A1372A65978DF9112@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250106094408.1011063-1-animesh.manna@intel.com>
 <SN7PR11MB67506A4238D726CC831AB565E3102@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67506A4238D726CC831AB565E3102@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DS7PR11MB6038:EE_
x-ms-office365-filtering-correlation-id: 8b3019b1-c78c-4854-12d8-08dd2f015fb4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?JYOMvJWlDJlGfrWJGpMaJyjkzlMjMaIS5Owl+F04bwWwYgYAJHmgTfiIEeYl?=
 =?us-ascii?Q?GwVcpWFUeGovq9iMW+sAsmt0TDlvDoF3Y918Y7+L08dq7IdoRbbqKlZTkmeb?=
 =?us-ascii?Q?yHP0JfvkOA8pDedSp1ESfXgCud6IWtSabkOqbppb0eOVt9gcLstZ/ncyul3w?=
 =?us-ascii?Q?uLPNlc/uInwjV0b2s9HyMdE8Jxf8t9MQvWuwk6hm+wt5kzVHdWQiBw3akyPc?=
 =?us-ascii?Q?++cHz77EiN8OYIqm+ldrtuzNcKWKgPIvTOXLtV35ZLRufHCALMfF+n5SBhMo?=
 =?us-ascii?Q?zF5A4uhmzrrvwMQ0M52hj/biR5kao+sSBx/I+Ae1bHGbLDtwk2dyum8S5A06?=
 =?us-ascii?Q?3stSpnmi9VYILZEukATOWCKErz69iaz1OFlw9bVlawvuYcvdrz6fR4fNc1uP?=
 =?us-ascii?Q?yaDbCpCpS6CXvfpC78FaNnQNoICrDqMbIjI04u15xxIDZl9NEsAVCl1Hc4jY?=
 =?us-ascii?Q?Jo3r9hyP8i6YD291yE6/TY+F7t17VQXyJUGswrKFkM2GycYeTqDwnzUMzUS+?=
 =?us-ascii?Q?gFO/yPbLDmBr+GsIz9tPMCxXQf9j/6eLdjyVrxSAsi85KdIYjA1uhbLbB7tv?=
 =?us-ascii?Q?/sfBdfjHSrJZ3bjyZ0wYZaY0l8TNrg9qtN69Mc2fJMg87Fe3mvlODC8yyyLE?=
 =?us-ascii?Q?wceWv9Gs4F/HeNc+v8ERmO/4jXTr9GxiBHQRXgFDwqTJhV50x70QYgGIB7cB?=
 =?us-ascii?Q?D/c9C3HNloEK5W1wFI0HblxyqNvHsqETSZ+yFHRL3iwqBEBm3TKNeYFC5sNM?=
 =?us-ascii?Q?dc9EniOn9z2lrVgIofefsPp4JL+hI2GJmKcAiYq1sLkLhQQ/rnf7PbquMZg8?=
 =?us-ascii?Q?UQI+Rsooo92jlHeYBL688RFlWeryy6C1Hwp3ns5HUwV7pceHaNVoRSIrSYM4?=
 =?us-ascii?Q?YSOMhJX0btzF2vJVk89IrFoSsWYlnIcuTMOoDthPaoWcNNJhmwtwKe1tfmyQ?=
 =?us-ascii?Q?PekTCEEiF9vot9c/nGBGXrE2NPNUwB62fHbtXJwI/28XxGUDA6mSEVEkVbn8?=
 =?us-ascii?Q?48hFwo/OWu487p3dNCIz4VxpJI1aqvoZu+6QHipD8u60vSUiBC13s8FQsizK?=
 =?us-ascii?Q?nKPvIn8eH46rH9EpyFkrZPuIY8Dk03qQfXzH4/kkVCsLu0VIwbNd19oUcgFQ?=
 =?us-ascii?Q?XnXMEePWe1MIt7MPvtNR408+Syu05uUtBApi/I90jsjtV94BfvwPmmP20RR1?=
 =?us-ascii?Q?QIPcE4DA/iaA4tZhmBHoi59GQ4Y+UToa7xkpJduldGKgtqN8I+F9tFF/ImEa?=
 =?us-ascii?Q?N20iTBZ3/y+JftpZwiwnmCAZ8Y3gtx+9FLieXjx4o2uLazM7aot/P2VhuVpt?=
 =?us-ascii?Q?fePFvu5PNPchxhq5xnI87q0YF1TMApGC4SvJQtjU33bQQVhLcyKjTDWFlave?=
 =?us-ascii?Q?fsqN1T83AwmQKoNRotymHYKL+xHcMk+7nys6S8pqUMoMJbTGrh2DPuoAbtuT?=
 =?us-ascii?Q?TurA2vXFu7SrPJ2egRJM+14/ufd+OvSI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D71wPF8PtGSINPmF1UelfYSskGEh7C0EiFmPfIpN3yD5AXI1Y1aRoOt16aGT?=
 =?us-ascii?Q?PYnkSXbThcJEb+FPZtv/ErCcK4ANuC2huyBVNrM+ApKY0PN57q1xk3+LcWtM?=
 =?us-ascii?Q?EFiDp2EP5S79II9rNOXrodaVGSZ+yyWEvAbYdtSzstad3h43rLmWpirsCCe/?=
 =?us-ascii?Q?yvC3cpcL8Gxdy4DPQ5Ya8yEms4w4owHselgyUejAxKVb/ASjQCYLpfwbpdic?=
 =?us-ascii?Q?KLVFdVrQS+Vz/Ds4eOo7PFqIcu1Zh7jTOloGm7RvcRh/pi3x4Z4fdeEhHT7W?=
 =?us-ascii?Q?0dDF4T92SIFZoOIly5H2GXzWgE5T2S6ypHqMUx89fow4voAc3FfRDcNw6cLO?=
 =?us-ascii?Q?vyVoW7LBpCdwhZmYHlVyehZpsGgrFeSsJL04k5YgFKJW0rRP0oO3d688g3r2?=
 =?us-ascii?Q?51es/jJfNLkYyZBkNFfZGAZAxWt0t7iDwwjbp8Fwf/iTAXzp5HYGslJ9F2Qq?=
 =?us-ascii?Q?AjVe6QjniqFmGL/pMEH5HfotSHPQIm5IhlaPxBuNpqMMBH2OuWqO0ww7QB8T?=
 =?us-ascii?Q?986nmhyAVOER46cFPYBShaCQ8kAG8e0QbvJcsLfUZSmHR2HcQt3Zq8Gku4xs?=
 =?us-ascii?Q?NHgxg8rIrPiLDPorJoEaro+EEgsnw9Ep8ZHriqoMvTHJ/ZInW3G7rVv6u7m6?=
 =?us-ascii?Q?yUGLoxFpWevkW8qLnfrMQAMQ0hPKhXAUmS8fZ++3UC+1MeTJgDWRMHvqAQ8B?=
 =?us-ascii?Q?SST8R7VgATy/xbo7LI5EQbMfPQlnYDU+bZ9Mv54+wLF3tci5Peo6/K4kyGK1?=
 =?us-ascii?Q?Dxp4rHVwgfTSg2NgRyAp2L6EL8urnBqfDOB83Z0PSbh0RRL1IK6gj3RZpoaY?=
 =?us-ascii?Q?UjK4U8wIAqT7n9qOFSsWisRwGu1+cYAx4MPV8zkLOXmuk5yefxp4eKWannJP?=
 =?us-ascii?Q?xB9VnrcHHbFqqfCt0b/jk71HhxQ3aIx5xnzN1ibwblKJxM1ujKkzNpmUalQ+?=
 =?us-ascii?Q?mxEP7Yvkw4kZm70IFo9YbSXiz319r6XjD37gRMNUmSFJPIyfZM6cMvApVqfY?=
 =?us-ascii?Q?T57ZjTM7ghRr1DP6BNeYNMmY3x2nKSYg9+fnkQNBYtggWFbdKxExYzaF0U2C?=
 =?us-ascii?Q?GaKrfhCo0Aj70o7prJZMvlKl/ZU4VMAmS/v53cg6z9d6lC0QYy75LgQeteOW?=
 =?us-ascii?Q?vLHwUWMNWZ041OdNtWk0YykPGGleEq+lhrKVCA+I2LSfvhDkDW5WxKkOy2zH?=
 =?us-ascii?Q?5tkLXR22qrMiAzBYZN66j2KNjFHvPnBUQi8tbjXk5QYzRXej1UWc42q6MC7d?=
 =?us-ascii?Q?EvtUBxeMOPh4/UCXq8z1QQD8vTEX0pjAKOu2TeD3oD5IQM5EEah5mkAUo30Z?=
 =?us-ascii?Q?vYKIRnuJfhxWnGrcIpqvL7Jgzlp4Ibt7t88E8IabL82a0Y5gmGMzAzYIjQvk?=
 =?us-ascii?Q?9b8Mua4hYD+AEtArOgxIrFTuR6v7AH0KLJEtlTtunO1CisBD2s5zK0S7B2go?=
 =?us-ascii?Q?JrHWJngv5q0gxw6AodaHth07ClSXNgxDBbBRa6HfR5xrtPkh6l6TrzsilElj?=
 =?us-ascii?Q?QK+o/35QZRcU9afIPimX5bB1GnGhvxerJvGdz9+qmDs9TwT0MSOyG0m6NqAK?=
 =?us-ascii?Q?CyD+gZL6fXMeIGKmupefzuPC8NXKJLeiWWleEVZB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b3019b1-c78c-4854-12d8-08dd2f015fb4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 09:55:10.3062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FcDPwUV5tlOb7O/hO+lyzsuORXbQbuK3rdoameYLlzY285bdFBYDDQNmm4umdl3L+1duM3KfYNTbtYibznhMiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6038
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, January 6, 2025 6:54 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH v3] drm/i915/display: Adjust Added Wake Time with
> PKG_C_LATENCY
>=20
>=20
>=20
> > -----Original Message-----
> > From: Manna, Animesh <animesh.manna@intel.com>
> > Sent: Monday, January 6, 2025 3:14 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Manna, Animesh <animesh.manna@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>
> > Subject: [PATCH v3] drm/i915/display: Adjust Added Wake Time with
> > PKG_C_LATENCY
> >
> > Increase the PKG_C_LATENCY Pkg C Latency field by the added wake time.
> >
> > v1: Initial version.
> > v2: Rebase and cosmetic changes.
> > v3:
> > - Place latency adjustment early to accomodate round-up. [Suraj]
> > - Modify commit description and cosmetic change. [Suraj]
> >
> > WA: 22020432604
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>=20
> LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks Suraj for review, changes are pushed to din.

Regards,
Animesh
>=20
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 29e8ea91c858..407af5b9f1dc 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2939,7 +2939,17 @@ intel_program_dpkgc_latency(struct
> > intel_atomic_state *state)
> >  	}
> >
> >  	if (fixed_refresh_rate) {
> > +		added_wake_time =3D DSB_EXE_TIME +
> > +			display->sagv.block_time_us;
> > +
> >  		latency =3D skl_watermark_max_latency(i915, 1);
> > +
> > +		/* Wa_22020432604 */
> > +		if ((DISPLAY_VER(display) =3D=3D 20 || DISPLAY_VER(display) =3D=3D
> > 30) && !latency) {
> > +			latency +=3D added_wake_time;
> > +			added_wake_time =3D 0;
> > +		}
> > +
> >  		/* Wa_22020299601 */
> >  		if ((latency && max_linetime) &&
> >  		    (DISPLAY_VER(display) =3D=3D 20 || DISPLAY_VER(display) =3D=3D
> > 30)) { @@ -2947,9 +2957,6 @@ intel_program_dpkgc_latency(struct
> > intel_atomic_state *state)
> >  		} else if (!latency) {
> >  			latency =3D LNL_PKG_C_LATENCY_MASK;
> >  		}
> > -
> > -		added_wake_time =3D DSB_EXE_TIME +
> > -			display->sagv.block_time_us;
> >  	}
> >
> >  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> > LNL_PKG_C_LATENCY_MASK;
> > --
> > 2.29.0

