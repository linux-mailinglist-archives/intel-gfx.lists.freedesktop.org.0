Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 649BE9FE59B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 12:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7F1D10E4A5;
	Mon, 30 Dec 2024 11:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="goIFXFVl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 984D910E4A0;
 Mon, 30 Dec 2024 11:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735557934; x=1767093934;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=97zCeseY3vJeD+5c6bWv5hS1Dqi0qC+Yv9OneXTrGZA=;
 b=goIFXFVl5MdW9GhMuZUZ3KBXk6Vur6ZI9xtpheR6ZSSIMS8pZZLNMF9o
 fNV+VBsAbRiziMzFqXGnRfgp/Y75EiSGve/hRvyA9GIDqLa4alPurtCV2
 vK2a5aQqINAna2A56hiyB9nI2qEmJiY4dAhHqjJhoCm2uVjZ2/OMw7tzD
 t8UloC6TZxX+ajZNehK1kJ7KW1UXOkpUA+RYsZuYlTwd6+9iQBgU9cOA+
 2Z3rtBgvJgN8JFF0mQXJHre7avH/zoCKGO147nSahEe8UBh0P/HMNgYoV
 qRb8lXjqR+QCBINIjTHF/VjrbHDyFQBNJZv5zI7FexDZk3z+4vwi4ubxE g==;
X-CSE-ConnectionGUID: +9yFpTk8TI2f9AACwbJkbQ==
X-CSE-MsgGUID: xG0HBktoSjuQ1yLawXHpGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="36005400"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="36005400"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 03:25:34 -0800
X-CSE-ConnectionGUID: VT7lAMDvQseMNrZE/bJF/w==
X-CSE-MsgGUID: ZZscGxj5Q3ymG9qySL8jnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105764624"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 03:25:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 03:25:34 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 03:25:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T1UiBM9j3VQurxc78Nzq7Nt624WpAijNGO3VAJ470MdVLFauEFUDiNaiLn6zGPQIlNxvnuT+fOXfpnoUyv4x4VFhUxVKH3lAhHzaas63ELdtuJ8cCMUJYzRt7jlTFjD7qX1Usi7vHTGGmxBAcTWxLhNzw8tlvua9I7WsVU7ju2IvBkF5xkoN/sETAIU9vK0GaCYYiJg9aXdoxs9Kgza2zVbyxRKVop36+D2U665Dx8AH6Eb/zfj5QdRS+fXutTYyjiuWx6o2A6t6lQkeiQ6g+9KUHHKOGsU33w0PTySgpwRU2Z4h3zxDq8tNWVLUD1ZWwq7xbDTEYl06okU9Jlw88w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zx/DXvwavWlWInIxWseV9ysPwi8TO8FVpbZJd99sJ1Q=;
 b=rT3zNSWwSGqf2INZh1UQKjT7q/S4jFxJdPgZNQf22jSkwDND2qlpbHFojturLtQewzlWnCcZHSf20zJofcyymgiCykz3CEokg5RrOMFbl40KIWTF/88K/xfxBnX83msYy9nin/y99Am1TaZkH3prQgvTPyOmxH3hUkc0NGS80gwgpzumBfIZ7SB4ZlB28t/r+8UF0/r2/YIMrnmk02eehuK4WEEGfZf2tV+2khavyqZ3Jkr4KdUFgoHZlJMsqlRz5sQsebcG7bgszp9y3uIwd6dKIjWZu4SLMQJWAUrOmNA4hhm4bqdZiqRXbe97Kzt6vGMv7ok/91pFHWbgsPFfHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.19; Mon, 30 Dec
 2024 11:25:27 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%6]) with mapi id 15.20.8293.020; Mon, 30 Dec 2024
 11:25:26 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/4] drm/i915/dmc_wl: Allow enable_dmc_wl=2 to mean "match
 any register"
Thread-Topic: [PATCH 3/4] drm/i915/dmc_wl: Allow enable_dmc_wl=2 to mean
 "match any register"
Thread-Index: AQHbUmN+AIxzRXkj5EKHpaM0eAJUjrL+r+lA
Date: Mon, 30 Dec 2024 11:25:26 +0000
Message-ID: <IA1PR11MB6266BFB2F6D151EA3624D999E2092@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
 <20241219221429.109668-4-gustavo.sousa@intel.com>
In-Reply-To: <20241219221429.109668-4-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH7PR11MB6836:EE_
x-ms-office365-filtering-correlation-id: 8ff38f8b-417d-4e03-3daa-08dd28c4a8de
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/wlKzySRJ8wYfNS/v2Wd8VIhdHJ4NufF1WR4O6fVpKs1jSYbjG9Otw6M7enQ?=
 =?us-ascii?Q?BHuShzlrqzN6Z0C7KVBZUYXJs/qVtQ0El2N4Sx48jMXZdEqyweZXjV7A4icP?=
 =?us-ascii?Q?EDnU0+pDXi3YEKHkuYypTFA4Hj16N0evchN3qajpj7S9XI9V1XFIS8FhNnT8?=
 =?us-ascii?Q?EIeMmtJugJfk2W/Kuh23sgjs1Rb43/9XZYJJepKVhhDEqBF6tdJQvnJwzxvD?=
 =?us-ascii?Q?6GOkqHQKZ5VoDUCIULR7b5pg8mtJ7n4jt3sphWD89pJFuzvLpQDczfpUxScp?=
 =?us-ascii?Q?3WBawUocgbBTNzbM3AzxVaf+U73uiiB0MfH7BBSpgfICsjjJb3+G8KCo6g+z?=
 =?us-ascii?Q?e7K3VRNrvTrzyd+5XhxRXtyJGZp/KVvu7kEYrzwmA7L5UV3u4hdP5UGjfKUT?=
 =?us-ascii?Q?4Ufw+/3WFsB32wcfpleIkvpCllN8e6n7ExdKx7fXHfy1QplgDH5yOmg5/lmR?=
 =?us-ascii?Q?UQ7CqOmcGafIqxMdt0CUgiEsmOXIiEL0BvCgmhwU0MEG3svPmj1pOPaWnIiN?=
 =?us-ascii?Q?R9GEUzkvN8DnLwvAuRNqJM45KQgf+N/W8Tg7S+Z330qO3s7XAJvhWjaytRXR?=
 =?us-ascii?Q?KzqyJkGwYcwVDRn4fP0FG3VVi42UC0kxR3UZwXZkqpVx14aqdPy7Q/0qWjDO?=
 =?us-ascii?Q?zPKn4i0wBJiXkP2LtsXxwxMcawUc0PYpYsBYBuuOw1/DUF4MAfZe6XwehDWz?=
 =?us-ascii?Q?PGs7o9Ym7aBkfWV8Jj5AnV4l+RsGxv6pfW0brCSaNvgc823BqOXRbYx2XBT3?=
 =?us-ascii?Q?xfHtM2PuTwTiU8kP/wPYsOvDjT/Gm6Hq1umgsgjAfRluTo5N78hlFgPnoSri?=
 =?us-ascii?Q?svrF0SwS4N/m4ypulJ6epOirOxK3TMtH+k28kxx6BF9pLnQ5Jtn+XeoIBF9N?=
 =?us-ascii?Q?jZQq5+NYxZ2+epvOTOJeh6DwNz8dBmyxXZB0k2xz+nirD4CCRCfb6K9dPvko?=
 =?us-ascii?Q?9lQDPmt1grW30MLQmLPA5TzOO2d4+KSZcyh+SACv3GBwcUDGYrIeyjoCRthu?=
 =?us-ascii?Q?3Pyl/RQtBB3cMXLpk2AHTAk0mOOv3GuNQygJLe8OJFyDuvMXK85FLCY9egNR?=
 =?us-ascii?Q?GGdwGIo9LIceNlhX5ZtzzYQQRmREKBxTPqJmPQuQc52UByjeFGLPJvaebERm?=
 =?us-ascii?Q?Qu4Dr/+pfW5+NkPnvJIAmgedFz1jzLElySam0BiDstOq4ahyK91Pf1TQd8uN?=
 =?us-ascii?Q?p+nBqrhknCJsMD8Zbi5/nIj8f4dWfrV6YXhdcJuCiXvK2td+HbCib56XBAGC?=
 =?us-ascii?Q?jMNdnYmR6+vGOxrmZoktkjrelvzxw3N9iOpS42Ey6vEmO7Uk92ulgdGa0ENh?=
 =?us-ascii?Q?dvmaijmLWpJCDij+539j/QyxzomVc6HLajKq6YGKlG2NojDpvfJvsn9hfMNN?=
 =?us-ascii?Q?1bavUixF/u/gkpxRlyPlYQDCa8n/0ffQ7i2vi3dOqUj08KN58FcCOERWEhB6?=
 =?us-ascii?Q?TPE2Uu8KS2Kbfgp0NS1NUhmh/PJtxsJr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GNBme1JPwj32aSIC3TehmdnsCYLOSB4vLr9rgpf1Lm05PJvBC06Nxf0A5Gkw?=
 =?us-ascii?Q?LxPNR0/plRbjpzHaDOwpoxXOcHhJT8XeLW0ZVC2MghOLXTe76MUlXq3O7gah?=
 =?us-ascii?Q?5Ugtt53RTuDryyWlr5/aoqaoUj+6KbviTYGPzpEsnsh9AMzFAKN0D3ZfyR62?=
 =?us-ascii?Q?eBtYhRsdqJkD9TtIm0JynKWKm+N1vGBoxwQZkcGXLu5Ga+FYnYvtA9qx1Cdb?=
 =?us-ascii?Q?33+fFbg4+vVMvbkZaCUI1f6umZwGuNjnRTQ3De2/u2oggOJ5R53YATasiC2n?=
 =?us-ascii?Q?RjBW9Px3et9TDvdzhVcDwX25NAfrQFVRbHb9lt08E/VQUGnedOSNVyPBvweB?=
 =?us-ascii?Q?QtZ8l66/SUFY/xwUY1k7hZn9c/EQ4et+YsTcWBfpyW1/ArZU3y5D/UcvK0S3?=
 =?us-ascii?Q?FqIUiZdvJOLXRc+oJtoTqDUidoTlRqL8R712uKmMN0jIEqb9vuvISQ5oLFVi?=
 =?us-ascii?Q?fKBK2yJe4GcAjDQ/+61K5CxavS8NoIvHFyI38UsEqB/c47Jygcr/F0thzo+x?=
 =?us-ascii?Q?JsZUvsMqyOYcWwaat92LozpcZIaUt5LjNCD8ij61H6yhgCNt6BYd9Wx97cIO?=
 =?us-ascii?Q?apLh1UKwzuTEhi4ztqgOlznegvxk9wFCyrtfTJL5hv7ifxSrWw8qMggt/TD/?=
 =?us-ascii?Q?cTqPtxTsHdWmqIlmMMVNu6tZG1Y3c1TQC21N3kCDeGFryZRhW4n9neTJ3P9D?=
 =?us-ascii?Q?ecAgMXT+dr54pHKr/k+ev0kymS2/aZm3g3bjdV+q4pMnJSaMwWyNnZhlmJbU?=
 =?us-ascii?Q?d0/3DhA8jQjsOqD7K7Bbdy7RL9dILSEzAsKWj5NzBXtaDNWFybU4evSrEUCt?=
 =?us-ascii?Q?AV9HJVaXC4IcM/zdg9aEpKpaSSrkxj05HPzaj4Vv49qjxQedc0sqecbMgTdj?=
 =?us-ascii?Q?tAkEL4rfJ+VELUjY6hV6+58TxqHnnn2lwQDjdsxjIGsutVugmVZwpCBI0N0f?=
 =?us-ascii?Q?yrjMaEU4pELCbWQ53iqfag0RDcMqGubHw519t9ZLRZwPD507okhVVO7lU/7U?=
 =?us-ascii?Q?tWGcdJN/tcqkVwD0HuynllYjwhCUxiaiWAP5Y0qvA/q7dqmBqFHI9zW3Oeke?=
 =?us-ascii?Q?h3C0f4mILoHIEWxqR4CyDckbDWLbV3pxFEBsn9cy+8Domr/D1jHDFv9UlNkZ?=
 =?us-ascii?Q?xX7gT5C4JjF56BjbYvSLTL4Up7Z2pijSq6ci7Y6JOqZKJ+XgnYvB4DXcgfxO?=
 =?us-ascii?Q?K8vV4PRpbLmoG3PGwuBMVmeVxzNo7Ibuek1HsuOcoKDj2fws3ROt8YdmpFj9?=
 =?us-ascii?Q?tJwaN2l5ZC17kLfPZpO3RFhgr4lxJSFmlPMRMG8SROOAS/D527keEHmnqXZw?=
 =?us-ascii?Q?X6IlBsqEUbni+TYhjNQJhh4ZyE9RbVuu7BKN5HFp5FyEz7uG/h4NQDuPaOu3?=
 =?us-ascii?Q?GXZOv5mBMW5y/1OHz8lGyWJ0jQ4rmQVJqJuGF/0MaFIWCP00b6jJ6SRUko+G?=
 =?us-ascii?Q?7yOsjrubYGbt2vrmalYIto3DQzyjL8PQ6pZD+9sMHIqWU1L/HmBVR12l8cRG?=
 =?us-ascii?Q?TEjshaCkdZfZXGLEWtP8wRa2CwXUfV4vHB+KvnpTkxcLRxzJeSnssWTwRV6I?=
 =?us-ascii?Q?v2wYB+4YP4r034nNyRIkohL8B5sXm2+Sit172x3xIAw9vuptNOmsbkaIkYe1?=
 =?us-ascii?Q?vQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff38f8b-417d-4e03-3daa-08dd28c4a8de
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2024 11:25:26.8014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nxsAGF5dnPcIhpg6fbkSZmd1XABrjf2G4U5qqImFnN07YaGriYlvl4XnzHGHdECqDlNprcrwi80iBDobj/GSEtIj+VptVYZezy4h3E/w8OI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Gust=
avo
> Sousa
> Sent: Friday, December 20, 2024 3:44 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: [PATCH 3/4] drm/i915/dmc_wl: Allow enable_dmc_wl=3D2 to mean
> "match any register"
>=20
> When debugging issues that might be related to the DMC wakelock code, it =
is
> sometimes useful to compare runs when we match any register offset vs the
> regular case. If issues disappear when we take the wakelock for any regis=
ter, it
> might indicate that we are missing some offset to be tracked. Support mat=
ching
> any register offset with enable_dmc_wl=3D2.
>=20
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Dnyaneshwar
> ---
>  .../gpu/drm/i915/display/intel_display_params.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c     | 17 ++++++++++++++---
>  2 files changed, 15 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c
> b/drivers/gpu/drm/i915/display/intel_display_params.c
> index f92e4640a613..f0f388f38fa7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -130,7 +130,7 @@
> intel_display_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>=20
>  intel_display_param_named_unsafe(enable_dmc_wl, int, 0400,
>  	"Enable DMC wakelock "
> -	"(-1=3Duse per-chip default, 0=3Ddisabled, 1=3Denabled) "
> +	"(-1=3Duse per-chip default, 0=3Ddisabled, 1=3Denabled, 2=3Dmatch any r=
egister) "
>  	"Default: -1");
>=20
>  __maybe_unused
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 2315c6318b51..22e963da65c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -56,6 +56,7 @@
>  enum {
>  	ENABLE_DMC_WL_DISABLED,
>  	ENABLE_DMC_WL_ENABLED,
> +	ENABLE_DMC_WL_ANY_REGISTER,
>  	ENABLE_DMC_WL_MAX,
>  };
>=20
> @@ -239,10 +240,15 @@ static bool intel_dmc_wl_reg_in_range(i915_reg_t re=
g,
>  	return false;
>  }
>=20
> -static bool intel_dmc_wl_check_range(i915_reg_t reg, u32 dc_state)
> +static bool intel_dmc_wl_check_range(struct intel_display *display,
> +				     i915_reg_t reg,
> +				     u32 dc_state)
>  {
>  	const struct intel_dmc_wl_range *ranges;
>=20
> +	if (display->params.enable_dmc_wl =3D=3D
> ENABLE_DMC_WL_ANY_REGISTER)
> +		return true;
> +
>  	/*
>  	 * Check that the offset is in one of the ranges for which
>  	 * registers are powered off during DC states.
> @@ -303,6 +309,9 @@ static void intel_dmc_wl_sanitize_param(struct
> intel_display *display)
>  	case ENABLE_DMC_WL_ENABLED:
>  		desc =3D "enabled";
>  		break;
> +	case ENABLE_DMC_WL_ANY_REGISTER:
> +		desc =3D "match any register";
> +		break;
>  	default:
>  		desc =3D "unknown";
>  		break;
> @@ -429,7 +438,8 @@ void intel_dmc_wl_get(struct intel_display *display,
> i915_reg_t reg)
>=20
>  	spin_lock_irqsave(&wl->lock, flags);
>=20
> -	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl-
> >dc_state))
> +	if (i915_mmio_reg_valid(reg) &&
> +	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
>  		goto out_unlock;
>=20
>  	if (!wl->enabled) {
> @@ -461,7 +471,8 @@ void intel_dmc_wl_put(struct intel_display *display,
> i915_reg_t reg)
>=20
>  	spin_lock_irqsave(&wl->lock, flags);
>=20
> -	if (i915_mmio_reg_valid(reg) && !intel_dmc_wl_check_range(reg, wl-
> >dc_state))
> +	if (i915_mmio_reg_valid(reg) &&
> +	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
>  		goto out_unlock;
>=20
>  	if (WARN_RATELIMIT(!refcount_read(&wl->refcount),
> --
> 2.47.1

