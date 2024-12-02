Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE749DFD42
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 10:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D50E10E687;
	Mon,  2 Dec 2024 09:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVYUXzSC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C716910E684;
 Mon,  2 Dec 2024 09:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733132047; x=1764668047;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Py9fA9y1FaldmU/o7U7wQ29QHmLeTMc7rG8AoK+OQb4=;
 b=mVYUXzSCsKUoRA3U8HYdpl2bTas5pD/Lu3OveZwV+pO25DouzFvrnb/8
 6slt/a9KYiKW/AZyTdv1ovL/pUjlvNNi1lpzLt4SEebIrAzFNz7Oa13lx
 Gbfu5NnidyKRaFCppKY43d7SOw+cuPCKf9e/G8ZIxizwXReI++UUE+TPO
 DJuDPih37LtpVBY6rFSfW0mVzpG4l406u+wGyM+xNmzkfgodB/TsCdNo8
 Xv+lqSJD4Ox2exoqF8DEF4VIDVT56zl7CmC0yVNC5f3Uo78DrfYsCxXnW
 203QzXVjc28oNM4pkr+6QqnCkmB6tmqOUoS+eSTOXCRdyOvsvCg5xJHf/ Q==;
X-CSE-ConnectionGUID: 5rh4h+czRY6AN8klggZl8g==
X-CSE-MsgGUID: wT5O6oWYRBSSeyoVy1We1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="36155390"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="36155390"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 01:34:06 -0800
X-CSE-ConnectionGUID: hnn9mCy9S0C7nS5T49SJOg==
X-CSE-MsgGUID: IphuYbwBQnSquDRXTiPh6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92887780"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 01:34:06 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 01:34:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 01:34:06 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 01:34:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ny/JB6DMeC0AhIE6Xjxdr9O2kubMki4mE6MuKUcvlmRlE88zEOA45DffuQmB3rLekSQh8/eTika5FK/RJ6oj0qk3p47iss8tmAqCL0ACTyiDKsGmxZYOq5gkd+xfpngm6cIXpmlBNsRFTjFpEtglax8Y7S/FB4SaqltPU1W3OwzFKViuiEGgTN6KG4lZTafvlq978nDpXkxA2JYT2xV4rEi7aBP6hQx4JWr1tCNbRY2o6KgG9b2Z3ydrCuGMZlozN0rT16L5PbTrXh96Vz7dd6HFINBRLp2j5E0rorJCjEhymjRJcUowNn8g7HEh4SZQfNTZdxFYXqdZSUaD3BXYIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2KWpvkg9eF4zVcW4jVTRooTqKWTu1bw0rR6YJsuctQU=;
 b=PLYncqEoO9/D9tc2P/e0N+iHjntvLP4uzO393hbEJuE2a+Nl4pM2kUHFXDTqtmkpKQmF2h14tybquyoCZghEqUExmZOycnuwYc+3Sbm+CjUtIXbGm3POXhUvGTJKSlamKmIWDp4+AlVl8ECeLni4OKxPp3RwSyDN95ZsDlAncJ4bX/cJO63T5dOtQ/i4LXKYGOlJFsWX1lp9aCiX0quXpH4iub6jv/OX5+cBUA/Oj/u815NX7rlSpAkJdUpqPx0gsGdd7Uf/ASXp49RpOw2udfNMWclZJjUiiTBLl+0D16Q90ro54B1HieThenAhc+SGThr+n5j2TFohlNCg94GahQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by PH0PR11MB7614.namprd11.prod.outlook.com (2603:10b6:510:28f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Mon, 2 Dec
 2024 09:34:03 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Mon, 2 Dec 2024
 09:34:03 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
Thread-Topic: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
Thread-Index: AQHbN3e1W95pPVGTIEKE2NmYjuzsirLSyGHg
Date: Mon, 2 Dec 2024 09:34:03 +0000
Message-ID: <IA1PR11MB634869A6013703B13A3B0C47B2352@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
 <20241115160116.1436521-3-suraj.kandpal@intel.com>
In-Reply-To: <20241115160116.1436521-3-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|PH0PR11MB7614:EE_
x-ms-office365-filtering-correlation-id: 459266a5-d614-426c-e307-08dd12b47597
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?coUpwmF0e3vNiY/5MlS+CCWXxBvP43jveVWfRellrIh7JtHRq6PnZ2i4wz3n?=
 =?us-ascii?Q?cbZvLxAGQsZTMjL6YuCE6TJgOzQhxRGjqKy52F5qCmJEphO8tvabRhWgDzEn?=
 =?us-ascii?Q?LFBjJqGOAjrH+EUQxDTZWrVohU9DeRmLP5uMQWvPg9CMBnNeFhsaRyPquSUI?=
 =?us-ascii?Q?aoKBuRSzOdui4VhtpzeTAYx7hNnBLKzEr0TYSwFjaLmZXyQri2XpaRZoqx+b?=
 =?us-ascii?Q?h56dlemcT39eeJwVmeQrjWH5VwFCwH056h+x3os/DtmV29CZD0IXhtUghqZQ?=
 =?us-ascii?Q?ngDElMsa0z+ettWdziRLHCjno0ftbdeq2v3A/hrBRISZwtnNGqtuna8FPhDg?=
 =?us-ascii?Q?9lLivOBtCRH8Hv9s81Vyrp5e04WmsDtr4t0p9jlIRs4CPb+d0vjYRHa8bE38?=
 =?us-ascii?Q?mT00mSz6BV5qUUoISRLt3sr9R3NXltzhknYItoj31MRTjLO610ssdC7gk/dO?=
 =?us-ascii?Q?vQ32eNoSKdxfeSSjF2LglUf8M9An+2YpJiyuFHg5nRGdUEaZ7WsZZyCI9w5G?=
 =?us-ascii?Q?x6eBAkYWcZBwZCtPBMhJppW4NqnkRPW0pJXHA/5hOyC8A0GNVn8qjjGJK4NL?=
 =?us-ascii?Q?eK/GGlZ0/eeDGkUe2nkoBJxRZ1Ev84lB5WqB5aONv8P4fTo6uFkdNCBZ9MNb?=
 =?us-ascii?Q?PYyBkGvuXfMSjEU2qbJMPqwRFCvKBMdxx3701+PPiBpUT9jgfQQ0xkC4RCql?=
 =?us-ascii?Q?Rc/TYoQ0R7ZXnx7AHWUHM227I7QQBu5xhLFpRgx2ZUyIC5R5wZR2CcTh2/NQ?=
 =?us-ascii?Q?KJ/7WPurw1P66YbvgYpoI6W36HJtUhbbY0KPhfZAM8GhYTuxJylEGiD6NCz2?=
 =?us-ascii?Q?vfkJJbTCmPxLEDVxuyGi/P63j8o3S897VPsNFE43YHi/U4TIIha49U7OqDPm?=
 =?us-ascii?Q?IEKPrgQL08xqMNh/nl12MOYTZpJbyg6YBta4n8AKy2CqOuDvkOX4CnyAyf8i?=
 =?us-ascii?Q?j3KHkXGTlMsX1l/r4gSiJ9VHB+OVHOvFS/868d1OWOm7DsM7osgUWYI3m4po?=
 =?us-ascii?Q?9+5Q5uUFDehEsSPFAMEAVPiOTNdq0qNd/wQVGe4IwEjOZm+vMBLoP0hnqphN?=
 =?us-ascii?Q?Jt7jZYA1kZsP08Saud4HlYHw1kNWXCEqWVtPLg2H6swR+L0YZ1PuQn9KBMq1?=
 =?us-ascii?Q?zP/Z1cu5cGm/Urcu9Pargfk7RbrNJ4R6dTJJNkHyBjg2yxhrL4jcHdKiA0/3?=
 =?us-ascii?Q?DwPk2ijfUYdv6pPnV7fkLLGeGQiS25++jzZ1+xWX4e4O0wVQytxWMlJzmjrF?=
 =?us-ascii?Q?tFfr1QKBFRXaPvQDO6TJzH/YXhvM+fg13mX2A01YocmpSKzltA/je3gEk1oJ?=
 =?us-ascii?Q?ica/5dWmpzYaqZNq5BrKIgdk/69ECnBMBvwDFbuMYYtAMbx2G3oIDeoMt7/H?=
 =?us-ascii?Q?4OmB8Go78nNNPHxIPNujOji6S+maGNJm40+ZYgFOgHPG+hw4iA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?isuqCJ3/F+C5G1jVHsJPPGxbX5EhFS55ag7SWHj7deeZ7INHqjx063rIDTDs?=
 =?us-ascii?Q?fyXQy6+IShnKWvYjFmwB/MA7p52OpjOnoH1fNhvu5lZTYc8see8SBX/oqUOR?=
 =?us-ascii?Q?2uVyJdIUyPJUV/OTnWS/HToBYpf0R7dkfX7uOfkDuttD5JJyIPMtmJt4tARc?=
 =?us-ascii?Q?IergzjCT4Uy68GEPUT1KtVVwSV8tM5Zuo6OVvk7f0OwzLCb2f7f0idUUTSPC?=
 =?us-ascii?Q?52SEuKruT6JMdF27rXX96CpPuF4xltnY7zJ7s5QxrtG0FHGiNhQJxA4lFW6k?=
 =?us-ascii?Q?n1ON2/C1Fgeqfhw5K7eNoSfFbTYr0lgossOTZJ9UGX0cY/1FsTogNIp5YHn6?=
 =?us-ascii?Q?7dQfyICtIheZ+lJQC95d/j7jRyX583rf+H1wm7IVd9TY//vZy+xgz81OsAnn?=
 =?us-ascii?Q?um8z3ehntfy0MyTAQKZLtTnq1N5NoVmRgtA6o08MsjIOkn+eV3MOhr/pStJd?=
 =?us-ascii?Q?p0yhcgstSDV25aUetsgd6xDam2QptYKdBI5g005YpWBk3lB4AnIjUsDL00OU?=
 =?us-ascii?Q?rpi2ceHYvPv5kVl0yBLAcpLZ+gZhYT2iVSOOgUuS2ANigKPDSDwfHJ+jeSJ6?=
 =?us-ascii?Q?fVjBi5fXnOdIKZperKVj1a+4YJ5JnLxeKjFcs2/3f0qIAh9AB2PnYttG2pxz?=
 =?us-ascii?Q?UKXjLpBb3X3ZZVi/OQvR/+uleTv8Ievf9z/0xnlUpAOIL2sx5srz014U7rUU?=
 =?us-ascii?Q?eEDcFr2in/3XIpgd0Wniqyw259Ayvua6y7HWaS21hBXi7o4Z9P2CF1eZPJfD?=
 =?us-ascii?Q?w7ZPu90JsMQT9N+g8jq8nv27KRdZPwwvxg/liAZ0e+ZyG10T78c6SFmvKdVT?=
 =?us-ascii?Q?83hWV3E5wYeEozvVpasIdA1o5B/0/RWw4trv00QD3XCv52TEg05tv1IXtr2k?=
 =?us-ascii?Q?lizimRj+3zpm2MGvdsX14DnZmgrNWxLjQuGXfLkwPpKizukdnpHPoFIsqOMv?=
 =?us-ascii?Q?5Fc5dakhihaxCkVelpGfOmo2PPphQjmPEFYfYlem2e8g9JRe8VodwCPr7i1w?=
 =?us-ascii?Q?YOj+c9p29G34xxUKRdHyXAoPokuCIMOlWYlYIyCG3XFJnP6KJfBq9n/o/Z+z?=
 =?us-ascii?Q?n0kxXeaLIWX80a8QkQEd/l0CddN5pUG4ohM5nlJCZzzoNiucn62kT9T8zRUu?=
 =?us-ascii?Q?gyULA5J1MAuj2ppL5KM4JMDOiTUFs1ylYOSGSN09iFKLsqMTiIS0AlujcMAs?=
 =?us-ascii?Q?exTrRfQ6M0mfJZPznfyp3vW9F7nXqF/82wNmt/peqUqIESTFBwjxgae8nE3h?=
 =?us-ascii?Q?ARIwakrheBDk87V98oh001x5Y9E5DgGLzB69gbhx1/t6OBY0nIKVw3KUVa/Z?=
 =?us-ascii?Q?F6ey/9Ei2MxjtGuvWIwqG6a22LfySkKQqoJL2gQL47TYSrnT38GUbr0hTR1r?=
 =?us-ascii?Q?RLgTMkDAbtK7QwoJuSTwT1aeH5+BACa9f7QH//uGM2f1MA7LCKeFReHaOEa8?=
 =?us-ascii?Q?SQZy9Px7wwm8MerxXFOYA5w11w1Letixz8psOAs0W4Qs8P+xKWL3xIfQTb7x?=
 =?us-ascii?Q?x2HuTPzI0in08AJ5Sb30scDd04hF8XBDPPtND3QyONLPs3P7hptiiksoiW5S?=
 =?us-ascii?Q?/cWdyjYnmnSfR9qlVV+8+G92gWYScN5pWfBUwqa8NU9JshOWbWX0tVStEmj5?=
 =?us-ascii?Q?SyNEKAucLgZQ515tvbVrlN0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 459266a5-d614-426c-e307-08dd12b47597
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2024 09:34:03.2660 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Nx5IN8H2Ks9fKqZSM+f/NmSJWuusXoyri51rLx9OdBIdEeD953WtJhyFfG/7MC0Ye92Snz+iZ1N45ygBQRo8XA+8t2njQTLD3iddltUO8yGs4FPzpvoTJSwuKbbVbU+H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7614
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: 15 November 2024 21:31
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 3/6] drm/i915/wm: Rename enable_dpkgc variable
>=20
> Rename the enable_dpkgc variable to make it more clear what it represents
> which is that if we are in fixed refresh rate or not.

Changing names for the sake to this function doesn't make any sense to me h=
ere,  can be dropped if not required.=20
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 6d5f64ed52ed..9ce3b5580df4 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2855,7 +2855,8 @@ static int skl_wm_add_affected_planes(struct
> intel_atomic_state *state,
>   * Program PKG_C_LATENCY Added Wake Time =3D 0
>   */
>  static void
> -skl_program_dpkgc_latency(struct drm_i915_private *i915, bool
> enable_dpkgc)
> +skl_program_dpkgc_latency(struct drm_i915_private *i915,
> +			  bool fixed_refresh_rate)
>  {
>  	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK, added_wake_time =3D
> 0;
>  	u32 clear, val;
> @@ -2863,7 +2864,7 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)
>  	if (DISPLAY_VER(i915) < 20)
>  		return;
>=20
> -	if (enable_dpkgc) {
> +	if (fixed_refresh_rate) {
>  		max_latency =3D skl_watermark_max_latency(i915, 1);
>  		if (max_latency =3D=3D 0)
>  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
> --
> 2.34.1

