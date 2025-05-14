Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C80EAB671A
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 11:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BE610E3BA;
	Wed, 14 May 2025 09:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QoMjAF+H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9230010E3BA;
 Wed, 14 May 2025 09:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747214347; x=1778750347;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tMiFWxf2JKmTQ+dGCzcMltbYknzVhgraO1fqeD8Y6lc=;
 b=QoMjAF+HM9sINGwMfA0e+F6OzZSi3pTc+RAvJULiuswUBHsuwP+gO5wf
 O+CRDespmGmjYiHnZHKBKs4dRyT3/SyQCdxIrBD1ZnYu3WrJVIIQCFP4g
 AQvMjwLGztd74MZJKrFVYP/FFF3lWm64I0x3FYLKdY8/Oas27QtcffpVV
 qPZRIvZD9u+htvgcXx98UBLzfg+0L3nj4RCitKTBejyKWvumyPkOYUwK/
 aMJUGilzrC0nPGZC93uxsQZdRvMN/1ifzpvS0gGePDpys74w6ViZ4pmNe
 /dJenJbid1Vh6hhLA/wDWq/4Y7ixIzhiwpJFArYIH66b0g1ogSGTpFeis g==;
X-CSE-ConnectionGUID: AyZfhgBmR5q5Ixn932T0tQ==
X-CSE-MsgGUID: QA560GAyTk+m1IRiK3fq/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="49217662"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="49217662"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:19:07 -0700
X-CSE-ConnectionGUID: 7IECCD9zRl6TGuruM3gkug==
X-CSE-MsgGUID: lXdsR/WtQNOUZ6rBmh6XDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="143101491"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:19:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 02:19:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 02:19:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 02:19:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K+R7gUkdY003EgbDy6fGCaqdwPmwI1Lh7c6RUJ+ZWWxYdltXntFGjMBU58TtLui+QhHyrjp8OWwA5KEQ8SMtP5+UoRNMRkTlYrBF1R/XsBCHN+mYN7Yuz9X2Q3JQ7V+mlUp0k1jckh9utvLxVIr5voldoesX41W7rEzwtxZlObN4/QlsP4F/A6H+f87DZnddxok2dC/rIcqxaeGjVvQKVgGE5CpwwnakvdKhrDwtnssDUf6TAoz9EZVIUxPCMwqBZx6unL88OvQeYRewsSrxhEUcYLCGZ6DEy/gw7hurFmnoGBbEpoC2JtSqTTQFPH85mU5fLZjDzJ74vBWdN6J+MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wd0BXXg37xNh6oqJKQ5Vszfrs2c+W7bWszfVOBPL/Qg=;
 b=ja7R8cDkHkEX/fA7OWePHXWFEvgzO8AdNL0kNECH+da5yHIX/8ycSInZMxnyntsRQiI9A7dbNhGMY36gTo5uO2IJkMrp9Af6yYLJJq5cg9XiRRWAljlSkm6/e9SItv9qTu44+HKAgLeBEkAayBZyl3Uh6r5/msoVfW266XosAo1upMt32vXZX+rx135CAH51VGqR7fIl1kZ9LRFkojSjCflcA69/BvXnhuj3zE9MhriTgek7JtMWb8yRyDO3nYPM11AhJNhrI1OQJJk9Y6Ar27sKP7Zi8Uz0M6ByhcAftNFx9AjBXjzwe+Kmc+EXQTcvIxHSbyHsIGjRiMKhpLvIPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB8289.namprd11.prod.outlook.com (2603:10b6:303:1e8::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.28; Wed, 14 May 2025 09:19:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 09:19:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH v2 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
Thread-Topic: [PATCH v2 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
Thread-Index: AQHbqHedDh7pmDQXIUqaUTckeIg9KbPSEVeQ
Date: Wed, 14 May 2025 09:19:02 +0000
Message-ID: <DM4PR11MB6360B0751C9933539D41E68FF491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-6-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-6-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB8289:EE_
x-ms-office365-filtering-correlation-id: 26a04934-fa65-4e77-4fd8-08dd92c85de8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?3PZN5TXP/agNL7zniyUNgi6tjyXXrYiIH4Q4HIqPu3d1uRyWAozYOXYaW0Pt?=
 =?us-ascii?Q?o0VTXt/o7WREuDqrLOlQGdBHrcPMAHiXB6E78wy4U56xop7Mn/SMsgw2TRay?=
 =?us-ascii?Q?Ced0f7CChVwiZr/4iJf5yadre4fTH4Otkc7/yfuG0hXQtdUPgNO9aSKg+xPz?=
 =?us-ascii?Q?bPB4sQI3YjHCiPRSDcFPsXktl+VsJo7SLV15BkmnR0Abo45CgGQjwpYUxqbG?=
 =?us-ascii?Q?DZVOlMgITBOuiJFoSv+IwCWCGvOUs1F3sj8zaXpc01sj+nKOhkR60zgXqx1b?=
 =?us-ascii?Q?0lY1VAqqmXOO9HJhQ2G7AltobOqZYHStfZmEA+Jo3OVhe1Kmkvfp5DxzJAGN?=
 =?us-ascii?Q?jRsWaY/JMIgmnIoTkF9+6/FdNePlff7niWjJr/FGLvQXjwSEI6fE02n55fYI?=
 =?us-ascii?Q?rZ14pe7yFeGGe8gVj7qErthrY2ividBudDMMo/wIb2zGBrue0Y0kJGAUYC4h?=
 =?us-ascii?Q?UuHUejVC8PSQpssQIlzhhuJjRVWiuyYQY5iSQyBk6VFm0NgMiVuMVCmBYBBw?=
 =?us-ascii?Q?lh3J7q/pVuAb7KXR81vbKxKFN+Vs3tgrFhI1MZ8rnaJFSA1RLCtI8PQfTGbA?=
 =?us-ascii?Q?8bGCeC8rryI6bTU+RWcWeWuQvVTC8P/+YBMTP3Cz7GGrgNlxIIhdfnkG91dg?=
 =?us-ascii?Q?sX/rr83CAPzWqdglgKZ/0TSVQAU5/7RgwxamR/dmP84gYbiAZwqEPE5zDktu?=
 =?us-ascii?Q?YTJDn2wgBOmQ7MdUk3pVfhkaQBvfpN4u62Ml7UP/WhWafW67sUUrPlATejS1?=
 =?us-ascii?Q?5PhG7M8CjPvlbKp/gsbp0ZZrY99eNNebufx+ZkWQsq/N9I98l0FkVk7vHqJ4?=
 =?us-ascii?Q?0QcGupDFx0bgbvhDm9WLYTW/JruMyjmzHVQtPieH5oUcFSULgrcc/u5eKUXF?=
 =?us-ascii?Q?b68svXzvlwfD2NTgZoF97Q5jUXzY9VpLbJsSH8o0xhd7fm905hve9IeZ++aA?=
 =?us-ascii?Q?IUq8jDBnNq9LNRiGyIi38h10WZ5NswuXvYR0pQj8wwlkTRc9B3CbKwva6NA5?=
 =?us-ascii?Q?Iu5KYtY6lvgDuQLp/0yJzzm9oJl5HR2ys7XyvBW/ObPEifqbROAddQaniOYq?=
 =?us-ascii?Q?RQd8CrTXPChQsCjVrz4ul5/0E1HAo3w9Ets1Yhhuhze4lj9eTlyh4zk43gqE?=
 =?us-ascii?Q?Durt4fSeVZ7o7OovrgUzsLNqtXu1yws0aGpGHlBYbx4rBJndpG4+KcR3gi5Z?=
 =?us-ascii?Q?Sg69JwANJyCiMBvFc30na2Nz8fAYVlELAMj6bR4gptC+ALddvem8mzzryh8y?=
 =?us-ascii?Q?p73zlHaiQ6c21t4j0dhkuju0fEiqraPz1rZWQlwU9CKmBpFLwcUsQadHENe+?=
 =?us-ascii?Q?GoybCiL+ovcWq5nmA5pFocGkLwo9m5pJQ7JEK6Z/acllh0yhUk5NY13lvCgD?=
 =?us-ascii?Q?ZMdkdRo/8YLNQahWIOhfZJ5gWh22F0eLW0XUJSmbtiD9UDs1ODgWPTmIUgMK?=
 =?us-ascii?Q?70zIdr8fcPjhUdnCCtzfW/LLskHZm33k6XZaLakohd02QkNXHGKW78m/f5uT?=
 =?us-ascii?Q?3aT8pLX/2DlZC3s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XT9ARWTfmUvbBbjcsCRGheSYGHUK+wi4yWO7vDUtCwVnDZf4VAr3M+hVFJRw?=
 =?us-ascii?Q?lz3kpPd7bJpMGuPzgl7YoP6sLjQ/d7FeGP5l1lrWSNc/7tz82f4W/iJLMz+f?=
 =?us-ascii?Q?0eOwfXbjaVVR7U0Xny02rk6Amj1pVgrcRFEWyPrFC4hBRCObDu99/05G9JwJ?=
 =?us-ascii?Q?oQuL8ujXViPkdhal5O2EQdqM85nGuAAt1O4PoD9bJ4gEqZYrTg8yPr9BAveD?=
 =?us-ascii?Q?hWoOOI/b4Pbmkrg9a3vsaOoG7OiYzJET6tnxnbe3nhi6Zp357PTqxz6zrl42?=
 =?us-ascii?Q?g0GsBx8vOJTL+7/OUooR1A3RJ+gGo7p6SXMDFrUUcB71bfrDhk3sR3aW1bMK?=
 =?us-ascii?Q?KmDgBickjSkHQ24F07dT+3lplpsfYKsk9psyRS5Tyd/zUVy232cDSkeO81wc?=
 =?us-ascii?Q?/bTsgnNdJtbWQ+4JOfpH/eXl9anEqpuDPvkDJ0uAkBnHo3YEARUTYhMZSjnW?=
 =?us-ascii?Q?gpgIUriJf7QeJX1fh5JDeg3HoHAGRo3gGZvG3umSl8jrxHeBullmVMgCA8f3?=
 =?us-ascii?Q?IPt+AN7blIS5o19vzP8Mn+3tI16nf+QGkzRH1xZOlhjNchKZyHOvQLnht08k?=
 =?us-ascii?Q?QY/lSKarEcU4AepNSSQfGM/c9NvLMGBlkELX934NX6Ri9IRZxfcIoL0hVPlg?=
 =?us-ascii?Q?ScdG7khCxqlbDMVaKe0jyHEjHiPaCNQsYINB9dvnqMt5tot/PLGjlxMyZYDo?=
 =?us-ascii?Q?TW19DK6p/54abTf3LmVQlZrXsu+nHf3Cfy4eRKNMjL1uHeTPFtEjxsI8J2we?=
 =?us-ascii?Q?V/e5DaPJdmIpyP2VL2vnVdV3Bwr2HP8fk6FPILTFO7E+zRF/RtgxjctbQIqn?=
 =?us-ascii?Q?G/b2YXJNckjcNv3OTBgtrxG8TCA7l+PU6sCsPuNSyqyFoXG+6hVxehjjnZ+U?=
 =?us-ascii?Q?S1vD1sgB6piK9E0uODXxU0A0C+YvR54pkICGG0K+rl0UlyL3sAbGR9t8Ed8v?=
 =?us-ascii?Q?3tmmzr9Qos0WkKRGYvKYxcMWyuBH+wH2WWFMNzx8majW6rBOYLWptg9vLleg?=
 =?us-ascii?Q?hmWyZDaBVKaXIWW0DrLMffCIRto9eVJtUDMEz1/wI4ilpibZ1M9LYI18oe98?=
 =?us-ascii?Q?KX10aRQ4k6LlXG+3ora1bshCNBWC/RgeZ7K7wPgIgtzAzLb/xtDA1Y9ZsTPK?=
 =?us-ascii?Q?RXJfRa60cD89Z7aUi/SfM3w+15eSn44KtTqHmLri+3kuCxBKYELhotteLToP?=
 =?us-ascii?Q?+Z9IxMTELfNeyPDPsoD1kL9foMYQWNWZFKlOPF/glOHpDoyAZqtAFMHLnq37?=
 =?us-ascii?Q?ZLEPZPDIW/KExp4knp8ePikRzsrg5N4K3LHXzCCDivESNbtm2fOtFEFiADco?=
 =?us-ascii?Q?lMUnlXe9XsgVWJirhtEoR47jY5jUb6VpKk5mxU8yDDqHIRT382eujVHyVrKF?=
 =?us-ascii?Q?GIUbINFPVs8IyBenKYBd42jYKmZKsNHoPbIn162wvWpprB16Scfxf16xpQ0k?=
 =?us-ascii?Q?iOM62c6MS+DZjTBUYRKN6mezAsVKL6h6Im/hOk23LIQ+rXZ5a1uUyMP9QKUa?=
 =?us-ascii?Q?vroPCVNNdvnEIIPwraz3+A2N1YgZMfjXdovg233m3gFHyzZQYr/EHNG3OP+7?=
 =?us-ascii?Q?5m6VNYH4x0/9jb6E8hHCm9ZkCMXwkt48xlDgrULH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26a04934-fa65-4e77-4fd8-08dd92c85de8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 09:19:02.2597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ligAWb8U+5x+0XB/MHZbAVGkgLH5Yi+f/TCGC3E0CfDRR8IVqFZDK7RcL6YWC57qZsHtvT5AmXX473HqiWfByQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8289
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, April 8, 2025 4:30 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v2 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
>=20
> A DSB buffer which will be used for GOSUB execution does not need the DEW=
AKE
> mechanism but still need to be 64 bit aligned. Add helper to finish prepa=
ration of
> a dsb buffer to be executed with GOSUB instruction.
>=20
> v2: Add a cacheline of noops at the end of GOSUB buffer (Ville)

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 13 +++++++++++++
> drivers/gpu/drm/i915/display/intel_dsb.h |  1 +
>  2 files changed, 14 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 2cda6fc7857b..97ea3c655590 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -585,6 +585,19 @@ void intel_dsb_gosub(struct intel_dsb *dsb,
>  	intel_dsb_align_tail(dsb);
>  }
>=20
> +void intel_dsb_gosub_finish(struct intel_dsb *dsb) {
> +	intel_dsb_align_tail(dsb);
> +
> +	/*
> +	 * "All subroutines called by the GOSUB instruction
> +	 *  must end with a cacheline of NOPs"
> +	 */
> +	intel_dsb_noop(dsb, 8);
> +
> +	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
> +}
> +
>  void intel_dsb_finish(struct intel_dsb *dsb)  {
>  	struct intel_crtc *crtc =3D dsb->crtc;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h
> b/drivers/gpu/drm/i915/display/intel_dsb.h
> index 8b2cf0a7b7e6..6900acd603b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -31,6 +31,7 @@ struct intel_dsb *intel_dsb_prepare(struct
> intel_atomic_state *state,
>  				    enum intel_dsb_id dsb_id,
>  				    unsigned int max_cmds);
>  void intel_dsb_finish(struct intel_dsb *dsb);
> +void intel_dsb_gosub_finish(struct intel_dsb *dsb);
>  void intel_dsb_cleanup(struct intel_dsb *dsb);  void intel_dsb_reg_write=
(struct
> intel_dsb *dsb,
>  			 i915_reg_t reg, u32 val);
> --
> 2.25.1

