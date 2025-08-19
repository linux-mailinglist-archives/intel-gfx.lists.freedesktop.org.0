Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4E2B2C082
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 13:33:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B2E10E5B4;
	Tue, 19 Aug 2025 11:33:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZGPU39+d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E749F10E5B4;
 Tue, 19 Aug 2025 11:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755603204; x=1787139204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+Xwn5atRGBzsZULY9Bf0+YyhTknpPhM3ornTUGmeHSA=;
 b=ZGPU39+dek2h/LY6+S+YBddgSpf7vio4om3HuzSUpP1Z1Mqvngpl2CEC
 r2Q3o3CRNJBmARSa/00fqvKKcbA5py2ZC7uxh6V95DUnOlQiGMjaTOGHk
 8qdninD+7gQMku0G+1iZozzjh8gste/2ltbXn2HAMCaSTGJUS8fQ0+p2V
 4tbvmuzgVR8jnM4VhxWYoZyh0mEgEv6ZMVgNn5Pc4wCnqC96T99i2rZxC
 JNaSsbV4j0wYSTGi5XQH1gxq1OtkP9aL/WVaKOPDTge8qOfd/hPJuZvF0
 cvf9vzlMFCjZyIZhhyaiJhZwDWyTyfqqAydFKcG2UfOdxdeg1eVvLT7i6 Q==;
X-CSE-ConnectionGUID: nOmM0gONRUKAc1S/POhtnw==
X-CSE-MsgGUID: xSKnYLhlRqyPF+GXETyA1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="61653754"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="61653754"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 04:33:23 -0700
X-CSE-ConnectionGUID: eAzCFIDTRZWJOm8PoAzeVg==
X-CSE-MsgGUID: AL08RW8KTE+r325S34mLCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="191520095"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 04:33:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 04:33:23 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 04:33:23 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 04:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xeXAsIGqxINiLYXS7gK36IAzptrMEKFWRjJPjr4Awh4L5pIoA8sg6cN8fx9Me20Tg3BZ8PNQJXX9T7yCe4x2QYVj+hCd1r5EPqZkCyJEgD5Vrylh7z0rHEzLumPXOZsMHhL6XnvMg6QWDnePP5s2yf7IbVur9WmLqw4KbTmIOUpEHCHy0W0LWkvC3WqgEWhSofQ5ks1H/IXD6Fin//71bujNiWG1y3egWb5qGfaCH/Vlofyv0ZljGxsnqsD9yWvBSJi02N2QF8jlgTK2xhindOVx6OFnwGba9fhU/TEEuNeWxBVVhd9wlTbxpOKJ2LqlqztC6qWgV+3pWlYUQVhGdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xiJIbpC1u0MY+oT2wfF54cHsDUTwAp1dynbff9+zCkw=;
 b=dgJC/lZpXg6v9RVZZvK0Fk/SibPLCipKtJ4jcdP1vCYMUQqay2Qcs1ZhJCpzh0tKEyKnBDlosLMJS6fOsBLubCTvKXZJipvfbFXFlRvj23MFVH7J266lMMmBJK4wDYv3BNt+vYXXbB4Q4w6kMKMUZ7+wJdROdlgyM9QLqhEvs3nWHRi8qSI8xy69pf/IE3ghi3NQ4xbpXSJAbzXzYJDvSeN3pN8SqOQAUlERdXd6w3Q8mYXZbAwJjLbYDCBCcNX2Dw3kJhVdIbf0+huwPBNTmmZiAWyqXF80hnF8pRWvjuOd6OBLqs9/VYtbmL9znPeddiePix0i8AGin9bzIGZfzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DM3PPF9623118BD.namprd11.prod.outlook.com (2603:10b6:f:fc00::f3a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 11:33:21 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%6]) with mapi id 15.20.9031.023; Tue, 19 Aug 2025
 11:33:21 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 12/12] drm/i915/vrr: Fix seamless_mn drrs for PTL
Thread-Topic: [PATCH 12/12] drm/i915/vrr: Fix seamless_mn drrs for PTL
Thread-Index: AQHcEBVFlNRbb6NO70GRlvE1q86b/rRp2J3w
Date: Tue, 19 Aug 2025 11:33:20 +0000
Message-ID: <IA1PR11MB6348F276208FB46CD8B547AAB230A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
 <20250818073128.2319762-13-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250818073128.2319762-13-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DM3PPF9623118BD:EE_
x-ms-office365-filtering-correlation-id: 68f197d0-a33d-4498-c2e0-08dddf14334e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VYYHsijdp8T7Oe2iQYDlbDtPmxP25E3g5mTX7zK0o1VentJCyFvo/J9/oJP3?=
 =?us-ascii?Q?CGcil+mc5jC0S7XGEkdmXRLnQXZP3zNvRp1slD/bvc1p7CY7dshe9HQHkOyL?=
 =?us-ascii?Q?WwROEK3H5aWlEb8FtiDJOb+JV2yMSqIovDiHTdoKd/6Jt7AEYKvPoXB/G5vh?=
 =?us-ascii?Q?nRWsi65tXaKHdLE4R6FLHT8XFRxhDDuU97seKy4F5lDCrotYEUSqxMkriMuF?=
 =?us-ascii?Q?xN2bTJtZp8UM+7liItZcTmXPBFTbe2hxfvlVXZ1Dwid2oU6gdK2kjM8rgTRc?=
 =?us-ascii?Q?Ip7tV+rEIjrm8ACJdC9D3Jc6L4dzfToZsA4wup1i7JQdKVO23a1ijSFbeLwC?=
 =?us-ascii?Q?eh+ZPutyH7powthW0xXvBLAwQlR5Bg64Z94ErXFB9OFrA5JkYUQOcq90mZ6x?=
 =?us-ascii?Q?dw0vcqWIihXSorg5aMAPUIhLevyCydZAVjtbUMqcPWvWQcMgJe4uS7HxCbb/?=
 =?us-ascii?Q?cjXusvzBadGcapBj6kxp3VhaCMXqZrUldIiLF4rCoGIw7aiZmUNr0+s0Xpcn?=
 =?us-ascii?Q?VY0VhAvD3mXoBltrYMVaDmSr5NIOqpXzE4FtRWcdicNCnMbq9d69Hh5mh9hW?=
 =?us-ascii?Q?vNW6q1OqC7YHOu9xBB3tp34pLnsTzjOQco3dErLtHP/KOicXmUBWDHRLsnoi?=
 =?us-ascii?Q?HMTTQqAh7NSUhHKfh2I+VfGY+chokNCFlXArx235tqnwn3LPVz9x7KD5D+Of?=
 =?us-ascii?Q?EGVHiaSDHQkWG9ag56KltByOP6PTZNIzY1WkLl9e7xMt6It8hZ8FLXrhxC25?=
 =?us-ascii?Q?fknL8+mQWgBuveYi8ip1GB6Ip4ZfvrxggbBboanTNlcKPCVmW4EeVsDRuTqT?=
 =?us-ascii?Q?414mKzKEUa5n0ch6pLyLkY1UEv7S/X974TsnJ3PUmYeZoFUiQEobQFc3w5FY?=
 =?us-ascii?Q?Toy7TfaLteL4yEd1c/9iJyKHg0E0T88HYVbHMKcm7Ixs/MiMIbPB6EOg/iuA?=
 =?us-ascii?Q?4traraXpttET2xtAxejM5mxzshXNvtN689KC6Hgq5Ywe7T8K3CXgBGFHfl6z?=
 =?us-ascii?Q?vvALhMExue7hEupD+5C/GLeL69gZBn8WNUT1uyHnUz9RlNZ9714n3FDmU9EH?=
 =?us-ascii?Q?9bJCuK0G62k26h1Wbk+hI2kE4/2WOwqhgBzUc+Q4tXGkSfU82du/wS5ZQPcR?=
 =?us-ascii?Q?+Il0X9wqSDbhlMDIbTO2fB9niWVr5J+TmQjN+sEuTACV8w3voqoy+EEtZAz7?=
 =?us-ascii?Q?VGcGQIeNcXg64uZeb06p3OQb2/mKEsRS7bR0E6b5EixC7KpUhm5A9Og84nRO?=
 =?us-ascii?Q?pZHCxmNV8jlJaFwJFbwGD6CJzUZjgMafcSF016FO5vKXsTIdX4ssK97p2P70?=
 =?us-ascii?Q?UM1LCG3m6jVoODZykj5qWRDBdA+MJYgVAHY5aKlTLdPPn+c8gfcIFIHAcHGm?=
 =?us-ascii?Q?Yqtuz4rvRdE1Q/ybizPaFv4j+PRluUlxmi2/S2KdRA4EwftxNEPRorAc38Jl?=
 =?us-ascii?Q?nYhwuNjiZZGWWp3BqJ3pawMn5PV/UuF8IbkkGqf6AjLx/uYutgmJ8I6LRmkY?=
 =?us-ascii?Q?s7YhxPNYWkA68C4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GxRju49OvdqN6qx4bwY97ECPs34xMDvwzHMwAlT6iBl+t2B1QjlXYKHkhqVf?=
 =?us-ascii?Q?e2J0d0OngJCra7IsKkqPe9DHM5I28t5KHhrcKB2Jz0ikIyPHGSKCVNa/q0Rj?=
 =?us-ascii?Q?WAM2a5Zl2TOcV3EevX8U04KLZdU9osn5JenRqP1Okd3KDq86a1VR5fvvEbQQ?=
 =?us-ascii?Q?0S8br8WRikCHo1hZVcmizWvOwaaOpwrEhp6xG6Jz3IZx0AyYThkFR1a+dqu6?=
 =?us-ascii?Q?CPbq/kPORu8cszzmgW5+qHe121BsJO3StTj853G0kB4JbHTC7Q8nWVBor57b?=
 =?us-ascii?Q?BjonsCEPZcxGV95OsIzqo7487jjBZUvacfHe3sxJpgsy1KLL9dU9R6HwTMYb?=
 =?us-ascii?Q?TmfZluVv/ZUKSAq5LCVy3gW4ztgxahnBCEe1iBOISNmPL0LL2jLdoj6W7xpq?=
 =?us-ascii?Q?73qULJsazlwNxZ+4Y8WMd9AS2gTpSCBlF5iK2zHY/3NbMvX+lyvzoFR0Yrjo?=
 =?us-ascii?Q?vJ9acc5jv+iGu9yEgBkCwQmM3KJUzEEM8Ba0dTQsFX9NyzsNXSFrDEIR5E65?=
 =?us-ascii?Q?b0t3PvSj3ZOo2UH5BNFjQCQPi10psVN0RquePuSEVGZac/bqx0LQ4dLt9Ih9?=
 =?us-ascii?Q?q7HeXtIG+OlEQ6eNtg2B3Dgvbkx2MUA1ZADTCp5JlBFibo/WJ+RugdjNHtFT?=
 =?us-ascii?Q?avKSU8+sPbb4DqYBsIGQn9xLtI7/Y9hHyUe3yJDVIZvz/NMgp5DRqxqWKc9f?=
 =?us-ascii?Q?xfqd1OSmTDj4ktwpkJXRzQJaCRNbnOurbldMjMoDkAnBl5HaVeE/SkJLlmnD?=
 =?us-ascii?Q?FoMjy5kxzbb9i01r1MlCQEx1MqTdjEzfBedAC/Z6pFV7vHkSo+Ckyu2U/+c+?=
 =?us-ascii?Q?yQYDXxPmV0zmphZRDeCj0bZ16hulh7mhURuFOZqf6Klfnk1G4sjr3ahZNUT6?=
 =?us-ascii?Q?pvF9du88WECxDxnP0M3bASPoD0vWBh6TrB7bdQqE0KvbYaK9dZYwmxfMpgDT?=
 =?us-ascii?Q?A9QoRoMqrMbG7tpUkYUnTIzd8jYfyfvJjyyKjGIorXc8otWj6/eAhAM/7eQB?=
 =?us-ascii?Q?0FmuLw2U9kHRV/2aBHGjI7fbqPd13KYdI5gPGN/FM0KfrJ+sXt6S5mWBCYho?=
 =?us-ascii?Q?fKR/I+4aYEztAYPF369iwTRKHYicwOJSE321WcLTwonR+5ypCAkAJhNdCuUv?=
 =?us-ascii?Q?pF4YMSe0c1rBt3iP94i1LGwkSmPsuCLQsUJo9kkdM6VHkgv5akaOgX6lXgSK?=
 =?us-ascii?Q?UCg0k/nqPH6oPoktn3q3Jvm4ekJJAT4Z4ti9dhzVhBukkVr/hQrbO3pXIVf2?=
 =?us-ascii?Q?VtSDSUSaZZew+JOyuFSOh5PqXj+tsKVbPs3GSFGNRgc6xZBnfmLV/Ylb7boM?=
 =?us-ascii?Q?S4MBa/fPAquLcEzFEMxaHbKoy0X8eGXR8xx6ND3KeJQcol4VnwmOqRDAK2v5?=
 =?us-ascii?Q?A0Hkew6MkYZ1Oa0hZLP1D1C1XwRkrUQwDwY3qEKW4/QjHkeJ/djWbmRh597k?=
 =?us-ascii?Q?F5futBq1mvBhjS8EjNnM/ZN12M82BRQFax/MHx2jdHd+x5wDHX1Duj1rgVtQ?=
 =?us-ascii?Q?xoKjX0pwDQ/mqagkuaxIn4uqOefQbhPBz+1hYThX/H6yLnyyy/OXIGBSAGfg?=
 =?us-ascii?Q?2kwkAKwE5EaYSvbtYf+l8YEQaCUcq6qu2UjTg9hF3yjoWOQZ2alyMxHscm1v?=
 =?us-ascii?Q?15qCfwn4HWdb4tZby4z5POs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f197d0-a33d-4498-c2e0-08dddf14334e
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2025 11:33:20.9104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i988Bt7aMVfZ41p41jTyeGFrJ0+QC3p9IBTlajcd1deMUOAZAa2X8Q4XUJUWt+M+/HsK1WJxC1DBcHEA/guKWiqDtiyjg3yLkJgTOT4Ar294sVX2IJS+QnPgdeneM2Nu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF9623118BD
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: 18 August 2025 13:01
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [PATCH 12/12] drm/i915/vrr: Fix seamless_mn drrs for PTL
>=20
> With VRR timing generator always on, the fixed refresh rate is achieved b=
y
> setting vrr.flipline and vrr.vmax as the vtotal for the desired mode.
>=20
> This creates a problem for seamless_mn drrs feature, where user can
> seamlessly set a lower mode on the supporting panels. With VRR timing
> generator, the vrr.flipline and vrr.vmax are set to vtotal, but that corr=
esponds
> to the higher mode.
>=20
> To fix this, re-compute the vrr timings when seamless_mn drrs is in pictu=
re. At
> the same time make sure that the vrr.guardband is set as per the highest =
mode
> for such panels, so that switching between higher to lower mode, does not
> change the vrr.guardband.
>=20
> v2: Add a new member `use_highest_mode` to vrr struct to help set the vrr
> timings for highest mode for the seamless_mn drrs case.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 74 +++++++++++++++++++
>  4 files changed, 77 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0d945d1fedd6..5df6fda7c4ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1318,6 +1318,7 @@ struct intel_crtc_state {
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax, guardband;
>  		u32 vsync_end, vsync_start;
> +		bool use_highest_mode;
>  	} vrr;
>=20
>  	/* Content Match Refresh Rate state */ diff --git
> a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2fa80b2750f8..c49d98d18aa5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1741,7 +1741,7 @@ static int intel_dp_max_bpp(struct intel_dp
> *intel_dp,
>  	return bpp;
>  }
>=20
> -static bool has_seamless_m_n(struct intel_connector *connector)
> +bool has_seamless_m_n(struct intel_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 994994d68475..75470eb7022a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -215,5 +215,6 @@ int intel_dp_compute_min_hblank(struct
> intel_crtc_state *crtc_state,  int intel_dp_dsc_bpp_step_x16(const struct
> intel_connector *connector);  void intel_dp_dpcd_set_probe(struct intel_d=
p
> *intel_dp, bool force_on_external);  int intel_dp_compute_sdp_latency(str=
uct
> intel_crtc_state *crtc_state, bool assume_all_enabled);
> +bool has_seamless_m_n(struct intel_connector *connector);
>=20
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
> b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 170f7bcdb8a8..9c74aec9e416 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -11,6 +11,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_panel.h"
>  #include "intel_vrr.h"
>  #include "intel_vrr_regs.h"
>  #include "skl_scaler.h"
> @@ -299,6 +300,16 @@ void intel_vrr_set_fixed_rr_timings(const struct
> intel_crtc_state *crtc_state)
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>=20
> +	if (crtc_state->vrr.use_highest_mode) {
> +		intel_de_write(display, TRANS_VRR_VMIN(display,
> cpu_transcoder),
> +			       crtc_state->vrr.vmin - 1);
> +		intel_de_write(display, TRANS_VRR_VMAX(display,
> cpu_transcoder),
> +			       crtc_state->vrr.vmax - 1);
> +		intel_de_write(display, TRANS_VRR_FLIPLINE(display,
> cpu_transcoder),
> +			       crtc_state->vrr.flipline - 1);
> +		return;
> +	}
> +
>  	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>  		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>  	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> @@ -318,6 +329,49 @@ void intel_vrr_compute_fixed_rr_timings(struct
> intel_crtc_state *crtc_state)
>  	crtc_state->vrr.flipline =3D crtc_state->hw.adjusted_mode.crtc_vtotal;
>  }
>=20
> +static bool needs_seamless_m_n_timings(struct intel_crtc_state *crtc_sta=
te,
> +				       struct intel_connector *connector) {
> +	if (!has_seamless_m_n(connector) || crtc_state->joiner_pipes)
> +		return false;
> +
> +	return true;
> +}
> +
> +static
> +void intel_vrr_compute_fixed_rr_for_seamless_m_n(struct intel_crtc_state
> *crtc_state,
> +						 struct intel_connector
> *connector) {
> +	const struct drm_display_mode *highest_mode =3D
> intel_panel_highest_mode(connector);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> +	int vtotal_new;
> +
> +	/*
> +	 * For panels with seamless_m_n drrs, the user can seamlessly switch
> to
> +	 * a lower mode, which has a lower clock. This works with legacy
> timing
> +	 * generator, but not with the VRR timing generator. To run the
> +	 * VRR timing generator in fixed refresh rate mode flipline and vmax
> +	 * need to be set to same value.
> +	 *
> +	 * The function intel_vrr_compute_fixed_rr_timings set these to the
> +	 * VTOTAL. However, for this case we need to set the set the flipline
> +	 * and vmax to a higher value such that the VRR Timing generator can
> +	 * work with the desired fixed lower rate.
> +	 */
> +	if (highest_mode && adjusted_mode->crtc_clock < highest_mode-
> >clock) {
> +		vtotal_new =3D adjusted_mode->crtc_vtotal *
> DIV_ROUND_UP(highest_mode->clock,
> +
> adjusted_mode->crtc_clock);
> +		crtc_state->vrr.flipline =3D vtotal_new;
> +		crtc_state->vrr.vmax =3D vtotal_new;
> +		crtc_state->vrr.vmin =3D vtotal_new;
> +		crtc_state->vrr.use_highest_mode =3D true;
> +
> +		return;
> +	}
> +
> +	intel_vrr_compute_fixed_rr_timings(crtc_state);
> +}
> +
>  static
>  int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)  { @@ -3=
96,6
> +450,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		intel_vrr_compute_vrr_timings(crtc_state);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> +

Typo: new line not required ?

> +	else if (needs_seamless_m_n_timings(crtc_state, connector))
> +		intel_vrr_compute_fixed_rr_for_seamless_m_n(crtc_state,
> connector);

I am not exactly sure, but could this become a special case of fixer rr tim=
ings ?

as below while computing  intel_vrr_compute_fixed_rr_timings, above logic c=
ould also be addressed ?

or should be kept as a separate case from Adaptive mode and fixed rr mode ?

>  	else
>  		intel_vrr_compute_fixed_rr_timings(crtc_state);
>=20
> @@ -478,6 +535,7 @@ int intel_vrr_compute_guardband(struct
> intel_crtc_state *crtc_state,  {
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> +	const struct drm_display_mode *highest_mode;
>  	int dsc_prefill_time =3D 0;
>  	int psr2_pr_latency =3D 0;
>  	int scaler_prefill_time;
> @@ -490,6 +548,22 @@ int intel_vrr_compute_guardband(struct
> intel_crtc_state *crtc_state,
>  	int guardband;
>  	int pm_delay;
>=20
> +	/*
> +	 * For seamless m_n the clock is changed while other modeline
> +	 * parameters are same. In that case the linetime_us will change,
> +	 * causing the guardband to change, and the seamless switch to
> +	 * lower mode would not take place.
> +	 * To avoid this, take the highest mode where panel supports
> +	 * seamless drrs and make guardband equal to the vblank length
> +	 * for the highest mode.
> +	 */
> +	highest_mode =3D intel_panel_highest_mode(connector);
> +	if (needs_seamless_m_n_timings(crtc_state, connector) &&
> highest_mode) {
> +		guardband =3D highest_mode->vtotal - highest_mode->vdisplay;
> +
> +		return guardband;
> +	}
> +
>  	linetime_us =3D DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
>  				   adjusted_mode->crtc_clock);
>=20
> --
> 2.45.2

