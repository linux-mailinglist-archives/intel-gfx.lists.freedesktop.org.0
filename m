Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0566C718A5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 01:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4816010E285;
	Thu, 20 Nov 2025 00:19:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T0iRJGY4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 076C810E285;
 Thu, 20 Nov 2025 00:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763597971; x=1795133971;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=HkcT2tby3IK7107m4qdoqamGGTK1gCjZ815jl3Fzbkg=;
 b=T0iRJGY4avLHaDOh7tCWSyAFXT/s6dCdpnMADr00MJNCxGTM/UibvOen
 17K2uCEIOq5Cj3QBp18+QstEvGLyde+lk3u9jWpp+Ooon9x5t23lsTidQ
 wyx3dNa0ABovmMJt05Z6iqeivnfGei5J+nkL/y+xrne0F9x5VG3KB7nHy
 wKbmP4equOgxyoEhW6zB3vgGawgWwPF7lZVjGXrt+/lfWex1/qFMWhZCM
 eTJ8acs4NYRb+RBTeVwrZUnc7Ps8nJhsDrQ+3s8x/n4B84iyscLnCOffA
 A4Z4C3ZNyH+qhopLd5OjcRbgqB8CLcjx7iJ8FpgwWj+CEWxt8xZ+n2WlE A==;
X-CSE-ConnectionGUID: 3OPr7ru3RGm1STsGOpuoBw==
X-CSE-MsgGUID: fapwDGonQDu2DYurGCHg7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69523481"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="69523481"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 16:19:28 -0800
X-CSE-ConnectionGUID: vWfn+tdIQDuvAE6gP8j+FQ==
X-CSE-MsgGUID: GwuEsJ03Rl6VCVNmy3/Dug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="195691795"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 16:19:28 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 16:19:27 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 16:19:27 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.41) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 16:19:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HPdJ/Zswn8HbjNYsSx9nWbl/yeYvr5lza+mS1QZEmjJ3HFUfw1yWMW5MsEjW1FO/55m3j9i882vRDFfBfUqeovm2RRvku/6g4pwG0PsSYnYeddtB9O5omiR1VkVE+8C4z3cgEYrO6ETiSBWzHj9Jb/Mdlr+u/iedZrszYYwp5ByyTnW8ft14yG9dwJFrYxjzq/59Q9nF4siva4jAXlEQ+b0w1uf9toTQH6aREyE0T9QT4uq/QcRMQrjziXf0W7gHGagLUJZI2WxbWNPQf5OFdA5+yoeFqBgtDoVLOiCdSifR6MnzjR3DK+lLpzIsL8O6jax/e48mnAkaUMfJbNbYag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kDUSqdraKOdKjui7BEdYZ0VYN1bTECii54qVD/8OqbY=;
 b=JuU6hGJ+A0HY02J5z8E1DDT+KB4zIhAgVImtDmptbC1wteYoSG3I8eqxwP7jZsxpIalvgI6HPNfeucgOX59K/Y5mI2GWITyoUTnUlDYiSzydSGSjiuFI+eb0pa22l9iNgEOQzuwbDT0v+74P2izSXtg7WPSANlU7Q34dgS/Ki6ys6CSUADZX9FYpOohaspO9q8mTq4rwkMR1br8wGBIlFlGUIVxLA+20KaWvqhKs5wB6sQkGPghV0k8+LpLOC8z7AU7iI2p6Bk6F0SKX2EfdqW/En7m8oMzSENqn2Z05oCSFkgqOOZfMA9/kKuS9yAQtvbl0fCo7K4upcCSpraJClg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by DM4PR11MB8132.namprd11.prod.outlook.com (2603:10b6:8:17e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Thu, 20 Nov
 2025 00:19:25 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9343.009; Thu, 20 Nov 2025
 00:19:24 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>, "baolu.lu@linux.intel.com"
 <baolu.lu@linux.intel.com>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: RE: REGRESSION on linux-next (next-20251106)
Thread-Topic: REGRESSION on linux-next (next-20251106)
Thread-Index: AQHcUgxxcVhkxCy/KkSOgc4hzGsZELT3sYoAgADnF4CAAA/igIABAt6AgAAIQ0CAALM+gIAAUo1AgAAHfpA=
Date: Thu, 20 Nov 2025 00:19:24 +0000
Message-ID: <BN9PR11MB52763448A1880B37B21BBBA08CD4A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <a79fe616-52c7-4fa5-906c-382b5ff2226c@intel.com>
 <20251118161341.GC90703@nvidia.com>
 <0c3cd494-e42a-4607-896c-4c341f90c270@intel.com>
 <BN9PR11MB52760A6BE22F89D29685690F8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251119185119.GP120075@nvidia.com> 
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|DM4PR11MB8132:EE_
x-ms-office365-filtering-correlation-id: 5bed7696-e7ca-4f70-9383-08de27ca75f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?WvjG620LbmRoBMI8ZUPdku6VYnbZczfl5Byp/Pg6TFoyJG0Z7x7gaftPXq4/?=
 =?us-ascii?Q?bKodYkqtu75wqD/eToeyqXbdcK2OhwtuRRJR5FvO5CQGbYmN/oZJ0ItmbGJM?=
 =?us-ascii?Q?pi1Qr8zROkPJDVWGL5syh4qdC8m1ofCrHs2V+86IlZDWQsT5yAeCFpmalqzu?=
 =?us-ascii?Q?dfAuYIxIO2ws7S7vAIWDfempV3P8FSdagH04wbcLjjmLFyL+0Z3bwobtYfyG?=
 =?us-ascii?Q?BkD67Jv41GqUSbMsi2Z6o4n6zCfDGvuC9ldvZP9sS+hKerKFLFJsI/ZQY8Jp?=
 =?us-ascii?Q?2FZSCzn4vLpc8DkV16nzNAdR1xCesu2XL7uf1GpoAQrl4tnXhu779akJzPPX?=
 =?us-ascii?Q?5lM+B4b1tHw48tILGvIoTKJhqbz2yNqV2yh01ZvSKrXIGW8QYjcnZQ0niIzN?=
 =?us-ascii?Q?ComD4ro0pY4u9Ua2mEdAL4XqUu5JHA5l9uaRSFwxZ9YmK6+1cG84ucopOqmT?=
 =?us-ascii?Q?1qrItIWZ+8wew7xMpLHHMeK9FwvNB7pRRi2l51kHsLWZaNkMwTcS6kbR+3D4?=
 =?us-ascii?Q?KlEMvMOZ7cUOWpWaVgZSIZpNI2tF/T50VP8As8r+Z0Wemfb5qYbsVlN7jqrX?=
 =?us-ascii?Q?C+gLzwaJckWIYZehuaa16VK+OtKiZwrM41dfb5UULxvWjMzTfQtTVrIxjRDt?=
 =?us-ascii?Q?sqRDE0XZ3NxktVfSc7YqruOHw1RO1UFeYfkO+dWLAFd+18Mqli6IUng+1+AZ?=
 =?us-ascii?Q?cnnTYY7wwrUiZtdHMFlIeLbFK0AsrdZHfB7kJJdSV3tBRzOgqtBnjz7jk7Mx?=
 =?us-ascii?Q?RwaB4rhCi0X3SBxEhcK1zWgaqQpQjv3iY6tAcZOM2O3af6C509ApA/g7mYZG?=
 =?us-ascii?Q?/+cuQzFFYHmpJCnUhoW8ytBiFIai9kQjhMtU9pNauLBl/q0c9g2gqq+iXW6L?=
 =?us-ascii?Q?W92jKlacMP44IWhl0XsfOc7yee6flIanld54Pp1wDzxcjiwR/3IaEiBVNJFn?=
 =?us-ascii?Q?IZSfTNyru1SCqTGRvF0zTZx6978LpZPnOoh7/Zy9AJHNuSuHrs+fiNqgDI7X?=
 =?us-ascii?Q?gmF2vukJSBLFAJtSpURXTB7+mjhA7Ep0KNTJLrbEFJhLPrSU+untH4zrtvt9?=
 =?us-ascii?Q?eqDSG5/Hf6TPzX9PmDDwhEEeAvzWzP1bUukuHOJxn2mStLQLpQpl4ydx3Pi9?=
 =?us-ascii?Q?xN9PJ4H+vYzhdLC+mzN9ijAIuSdqMA6UpBhfk8ps9SCpAO4sjV0pt9GW440o?=
 =?us-ascii?Q?59yZpXEeZKwAtqhcfaGg5n00BTUYVBDVXgveYaUwzIaxT4lsopCqi/wo83nf?=
 =?us-ascii?Q?3qmizPcCC9VEi4UAiE3y/mi1U0E7hs8vxdXCcEY5h8cgUV9VObQgUUiO5kJj?=
 =?us-ascii?Q?IQYezcR0Vcs/xlnZdmkPdihY6kb6hvfCn5FPEHtkozxaM3ks0m+7TzQKUv6O?=
 =?us-ascii?Q?AbZqVgFVZCCnk8ixKFd0vVkDKqlqPvWOHM+8JocKPtkNTZL6YJ9tHL/4BpzO?=
 =?us-ascii?Q?uXaCsmw+yYAheFL9jvAdQocY7TkHFAmN8E+SceDqUvwtpBMtRCHIIz2slx7F?=
 =?us-ascii?Q?dlc0xDOTSKtZMgC7qgKsZUS8NKP4QJ1xbXM8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HSpquqPRvpYH4T41c3Wwd/E7v5NCnyBNwyzrH+7jqB+VtZOY0KwsBV4/0V/6?=
 =?us-ascii?Q?XBOPsVW71elY6I0kLwzWUjCpsu6lUIJuRSMm/24afcN2Askyg9VWpvY8HR/e?=
 =?us-ascii?Q?GeGeDnZASrtj9HYN7dOADBEF9zL1+GaDMezWjrvJuN5acHVnnSo9c0tCM+bh?=
 =?us-ascii?Q?ZgBh9XxObWDF2/BIB2pxhq8fCYwipAn5p+k84+IHfqE1laeauJVbs32HZ7Ru?=
 =?us-ascii?Q?mgy9iWv+eCNHesz4Ewi8Zzn/CjNF9RPAtMqNsVdolLpJG9r/v/1NUsC18q+U?=
 =?us-ascii?Q?LvaHGBStPihinXvYX3x8niY6wXRImeItdsWj2ZxDXyrH/G3JbxrdabwRpsbr?=
 =?us-ascii?Q?nV5hcQX5FyHMwXSXt1VjPEEtkK5dGAX1ZuncDQowks9tM2fdtT644tvt1h+s?=
 =?us-ascii?Q?XPyXj78ljwXf7QHlZfpJ4bGMHCppb3Tm7sd7m0RnclQTBjCu4l/xYW+MHEhs?=
 =?us-ascii?Q?JKXn3iKmAlE+e5v2Pv4yXOZgAOtz9VQwsmn55CDSV7UNSqmE2DKW01cOTk2q?=
 =?us-ascii?Q?9Oa+tCOCfUks9rz8A2nYJRn8Jzg6USo5uUYGpvHr1Rjz48a5dXY1dcwHHnkw?=
 =?us-ascii?Q?YjYUWc0HWGkZP+5jOSsr4DsPUzWUwyiuSskvu9uyuvz966yL9bVT9WpBzizf?=
 =?us-ascii?Q?IGAka1X+Hr2EVEkTjtWDwpTDtaMLNRmCsiaO2sxuO6gfo1PBKoNQncfFSeSu?=
 =?us-ascii?Q?Oup6xF3FXUcqWwAp64a70rb8hKduT6ekwXunKXL2AN1WuoVi3BTeLO70QDrm?=
 =?us-ascii?Q?i74WyiGPTCnNNmsRFgD4nBhOl4m1TThlLgkDPGHPW6v7Ewc6CU5XHx10USJY?=
 =?us-ascii?Q?R92LZDvwesO53Zf3G30PJyvG/bubHAvMOM9L//WFK6GPbP79BSj4wurpMxBl?=
 =?us-ascii?Q?o7/8RXPM8UmN833BON9QFtXYDwRgqSG6q8717igRvNrUw6MdBwpsyJ2osny4?=
 =?us-ascii?Q?dcvuoPusyJxI19qFhfiS7LC9LxUODKOCkU5FYVRp7x6lTT2yg+xT8glNvTqo?=
 =?us-ascii?Q?AUDyTc7qY9XioOUpEjjl82fKO1TZS4F7WEwCWqe31ZHoiR1WAa+II5BrBXcP?=
 =?us-ascii?Q?n/6LbGEzjbQ3c7S7y25Y0Rlgu+EE/c4J92Zga/N/jFIu2YWS+A2Q81LpMZBe?=
 =?us-ascii?Q?6niudec1L/mtdCxNAV//hq/3UHBoeFUSz0OC1fcXh6OUdN/JDC7LespKrRho?=
 =?us-ascii?Q?I49DXQsTQ0LKmkjynP7ac6WaUJGK6MGJ9A6BkeLQg4/cbf6em0etK2q69GiE?=
 =?us-ascii?Q?JKN4ZT+I4U8bQQo2YFG3DLcq8AvKW0PK8dK0KCXCVKCdzp5VGNbCxh3Reyig?=
 =?us-ascii?Q?Wm6bJcbA6DxBchG/WV9uDNMa3jamBPK9YYD0Yl0wR0qBt5MSDwt/Y/jKhH2G?=
 =?us-ascii?Q?2IPL/0GfAf0CanbL9VJTqRlVX2CoxLa7NgsukLObWf0zEvtfzPu3bPvIzpXD?=
 =?us-ascii?Q?DsKHGQencafh1TsDLfTmemEkvc6+xWwtH7HwbVdiAhRMiOpi8sovkvK0oFct?=
 =?us-ascii?Q?5vOHXI/LeMRH9EKwgV20JFUDIJECNmWm/EzDYPzgGGMkeh4qcXkRDPKylSYl?=
 =?us-ascii?Q?nC+JKAXfU+3n9AEKtHUSK0B4Chy23t8N2EX+nyLG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bed7696-e7ca-4f70-9383-08de27ca75f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2025 00:19:24.9254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cFFlF/8OKMbkl/C0aZv2FBZbpQ+MNkJw8ks73pAlfhPaPHx8OZWSDQmCCmI9culQeT7PbJy2fe3+P3USIoSd8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8132
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

> From: Tian, Kevin
> Sent: Thursday, November 20, 2025 7:56 AM
>=20
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Thursday, November 20, 2025 2:51 AM
> >
> > On Wed, Nov 19, 2025 at 09:31:50AM +0000, Tian, Kevin wrote:
> >
> > > old way:
> > >
> > > 	if (first_stage)
> > > 		domain->domain.geometry.aperture_end =3D
> > __DOMAIN_MAX_ADDR(domain->gaw - 1);
> > > 	else
> > > 		domain->domain.geometry.aperture_end =3D
> > __DOMAIN_MAX_ADDR(domain->gaw);
> > >
> > > i.e. both are initialized around domain->gaw.
> > >
> > > but the new way has difference between first-stage and second-stage a=
s
> > > Jason pointed out already.
> > >
> > > Baolu, what is the number in "Using xxx-bit DMA addresses" when
> > > using second-stage?
> >
> > He said 42.
> >
> > Indeed Chaitanya's dmesg has this:
> >
> > [    0.079787] DMAR: Host address width 42
> >
> > Which I think explains the bug. The dmar->width is being ignored by
> > the driver except for that print.
> >
> > > my  understanding of various 'gaw' fields are only about second stage=
,
> but
> > > maybe there is something we overlooked...
> >
> > That is what the spec says:
> >
> >   MGAW: Maximum Guest Address Width
> >
> >   This field indicates the maximum guest physical address width
> >   supported by second-stage translation in remapping hardware. The
> >   Maximum Guest Address Width (MGAW) is computed as (N+1),
> >   where N is the valued reported in this field. For example, a hardware
> >   implementation supporting 48-bit MGAW reports a value of 47
> >   (101111b) in this fiel
> >
> > Seems very clear it is related to the second stage in that paragraph..
> >
> > So, I think what has happened here is the old driver mis-used mgaw for
> > the first stage:
> >
> > 	addr_width =3D agaw_to_width(iommu->agaw);
> > 	if (addr_width > cap_mgaw(iommu->cap))
> > 		addr_width =3D cap_mgaw(iommu->cap);
> > 	domain->gaw =3D addr_width;
> >
> > And fully ignored dmar->width, which happened to work because mgaw <
> > dmar->width
> >
> > So we should be using dmar->width to constrain the first stage and
> > expect that mgaw is less than dmar->width ?
> >
>=20
> dmar->width is the host address width, i.e. for OA. so it's irrelevant
> to the input iova here.
>=20
> I checked the spec again, looks the statements in it are inconsistent
>=20
> "
> 3.6 First-Stage Translation
>=20
> First-stage translation restricts the input-address to a canonical addres=
s
> (i.e., address bits 63:N have the same value as address bit [N-1], where
> N is 48 bits with 4-level paging and 57 bits with 5-level paging). Reques=
ts
> subject to first-stage translation by remapping hardware are subject to
> canonical address checking as a pre-condition for first-stage translation=
,
> and a violation is treated as a translation-fault.
>=20
> Software using first-stage translation structures to translate an IO Virt=
ual
> Address (IOVA) must use canonical addresses. Additionally, software
> must limit addresses to less than the minimum of MGAW and the lower
> canonical address width implied by FSPM (i.e., 47-bit when FSPM is 4-leve=
l
> and 56-bit when FSPM is 5-level)
> "
>=20
> so it's indeed restricted by mgaw.
>=20
> I'll check back with our spec owner to get it fixed.

and interestingly looking at "7.1.3 Fault Conditions and Remapping
Hardware Behavior for Various Requests", it doesn't define a fault
code due to failing check against mgaw for first-stage. Only about=20
canonical.

that might be the reason why no iommu fault is reported...

