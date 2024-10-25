Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC509AFFDD
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 12:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A19E10EA6A;
	Fri, 25 Oct 2024 10:18:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kDs1ezKW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030A010EA6A;
 Fri, 25 Oct 2024 10:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729851502; x=1761387502;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=arqiH+GCSP5KiNsipDO/S3i//4uerxwZjeuv4dxIf10=;
 b=kDs1ezKWkuIsj1tmwQYl1oJ1oihzaRjFBYBIMhHCEEt+3/gXzNwi4wHM
 xeWuKIT/C1h+5AaZDoblZOO8FeZWpzyUAYQ1Ho1n0MSK6zm6ErK74Y2LA
 NmwolOVRoSNJmjxSHZfZzFMCAbrfpwYupe1DoF79Vd9JgMDWVX0A9APjr
 oKxLejUlV5j6XMp4ZejLrweC7y617UpWeDaZILk9k9gwJUs3RFxO1RLkc
 7G6Chrg1Y1kolvLWObMMVIt71rxR7zV3Dafs95UNASPLgT0S3jHhkfmSE
 OiRgousXfQaHI9pCfLi68HaYIt8Kpxc7HGldXLg+Mkhjju4H6uQDS4cAq g==;
X-CSE-ConnectionGUID: H1V2zkrxRyWoGuo8GCkVJQ==
X-CSE-MsgGUID: tp/lXWMMQc+ybMNj/NPhcg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46979302"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46979302"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 03:18:22 -0700
X-CSE-ConnectionGUID: E8xM/SFITluhX1qcPcWZlQ==
X-CSE-MsgGUID: ax2pgKmPTLCVPohJbCLf+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="81194363"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 03:18:21 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 03:18:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 03:18:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 03:18:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fCnwG5ItUYT2878uXIvoCo1UgL/2nn9UcMUpFI27acg/IQ+46b8vJsKELeFDkbuFGuITd2XMdy451E9fef8DEmYXxTRaNfvvdM/OQssWG8i/K7iS1MTdWGajj9ciLY5eAteS/FolHwpn4x26o5Yce4qUX+EVNRVaiLsbZUcK41W1URGFe8PS9qVyfPRGm684Rh+2eWt0ezeQAElnfwo0PX0ZTmRvoNJAawRnXqxySUaYZu3cpL94BFZDVpn36PiK0d92GWRFlLv5aMiaiwtd3jvSGLukOByoTn7bHcQJmdU6fslXTAuzxvK44+N+yTqzcE9lZnsCZyHvLbi90El32w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8JrwAnHSpHhGrYfSp6/leKzs/VCQKnkocXj49LluMQ=;
 b=dp43IFTpj6LP87EJX6E6hpIOA5HsVezc3+i/oXIKUdANzHbEP6sBpOSLDXxl6T+K28P9OFfUy+yoFzV0HlSWWQ8MiYIr+n+tV8ytaQqC4Ppa0i9Y7JuOoCemsB8TqTbJvI6dmazCOxt6BXDy+l00yOCguftsoaPKqKmZLAJp3udNybYkIYU2vQZXFDKS8CKl4uNRnrknLvu7938j1ASubeftLfqwSebhJkQvJk12o6jm5VzJvwhjT9L97pcihu3BNjpSCPOsk3GVRd4U5KwJtPzOEDGJQepp7QMZm7V+rULlfbOGKu3jDofTTawJDTFBxZcSUX7kATRMOttScAGcFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by MW5PR11MB5857.namprd11.prod.outlook.com (2603:10b6:303:19d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Fri, 25 Oct
 2024 10:18:17 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%2]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 10:18:17 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during
 modeset disable
Thread-Topic: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during
 modeset disable
Thread-Index: AQHbJmWNRQDOaRow/0SU5GjqkyBP6LKXGvFwgAAl9xA=
Date: Fri, 25 Oct 2024 10:18:17 +0000
Message-ID: <IA1PR11MB63482661B1F86AC8B3741965B24F2@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
 <20241024223114.785209-11-clinton.a.taylor@intel.com>
 <IA1PR11MB63482ADE3D0596888F72D216B24F2@IA1PR11MB6348.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB63482ADE3D0596888F72D216B24F2@IA1PR11MB6348.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: clinton.a.taylor@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|MW5PR11MB5857:EE_
x-ms-office365-filtering-correlation-id: 594aa0e3-1a81-4f79-b699-08dcf4de57ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?WwOY0TVKuxOxoimsQia9mEX1htUeMrMHIhEv8VOmwmkZVmesSj7UNSX3YPfA?=
 =?us-ascii?Q?C+0+dOHStPOfsfiOITT+z2anG6qiOXpK0VkTSc1oWHWLTsX6y7XZoZyhot93?=
 =?us-ascii?Q?Pv+gKkrEqPnYLz3Xai3JpgVEzfDxawOCIyqFunajdjbXd1Fx9IMSH9CynYsz?=
 =?us-ascii?Q?K4/80MdI2UjRpSs7yV5icPScYoOu0f+k6uuQrhdmNtnM/lYH0Ct/D0DmWsyS?=
 =?us-ascii?Q?UZIcWm4Wd71hfS6LSxUcIV7i4JhUypKfF9/DDg+HkLXx6oR5xOETwirNokEP?=
 =?us-ascii?Q?Jbg6Mi2kXAONlMeBRgGieZ+1PaaC3hlNOBelcxIc8HkeVrwFohWtmbHm5rvs?=
 =?us-ascii?Q?ZKr0vlUYDyzuwObIo1aPDMpk+znvzj0+cD39HIrwSMQutIhDFpe8RCsCBgcS?=
 =?us-ascii?Q?An1eU+52/ZLBkBsrZ+ucTwwymyfnxUub1rpdFo7+E5ThpD6uDiSh1dwTfc+0?=
 =?us-ascii?Q?wMNMnVqTzjbNv0LUwv5bDm5mVAUYIjGbSIzMonW6ejeq/tZf9VwlyLijWByo?=
 =?us-ascii?Q?TE8eOEOJz2lfNZT5usY3/Jkp81w2eg9NN3R54GQBWiOMzrZDplzgc3g87xXg?=
 =?us-ascii?Q?qaPKWkDosJI3CF+Mi2/0/w9cXswtlDDJfLbjtldh7yREP+AZoZMRRTy91IN8?=
 =?us-ascii?Q?LTK9US8CWmq0x8EBqPBzf5eNEtDfdB+3oBDQh2ygGZwM2P/RdCT+5kQdkeX3?=
 =?us-ascii?Q?ooC+TkBx9OFKzBx8AeMKzwDJOLfLSF6RVsnNj9Wg8DBlsT0jg3igof+idEWh?=
 =?us-ascii?Q?CkZfTnVWqxFopQvqXmJsAe2d6VOtyK4sac9/9af6IanUY9ltAHzQwuX+mg6J?=
 =?us-ascii?Q?s09JglIQL7S1VZVgrsbdCGo/orYTfQQORLT6GD0XdQdt7ziaAbuXoqFTWHKN?=
 =?us-ascii?Q?YhPThYfCceNgK/E/O3Kxw504DTPI+BWZA5C9sr28sK+gyb+TVWKBtcI9xrEc?=
 =?us-ascii?Q?DG6PHFnm4YHk7/XYglViFk6HJWSTjbd6xdu0Wn2PZn5KkKqKNcpc3V7lLmg0?=
 =?us-ascii?Q?gIyjqbywoLRh6TKnBmEKLcRROtw06e+LraEaAkpu42tOLG7eSxW8zRRJaC7H?=
 =?us-ascii?Q?Nd/z42Xmt8jdOHAjUM3tOV6Zi60VYzJO/YFjefAxjEurv80nWxOdMJVZyC83?=
 =?us-ascii?Q?vQk17QSsYw9mPHHhJheuZr90fA2VoCVMGITWvDaCK6WMttFLgB7YmKZveC1n?=
 =?us-ascii?Q?185YchBF5M0BlFV/KCqCsv2tfvo4vQc9JXBkZLeLRNh+w2jOO18V2SDMUVZf?=
 =?us-ascii?Q?EzLeHAwwadZ/UC3BUo1S4NBxzIJxXFjJmWOMz9Ppn1mbJ6TkdlPq8dIca4ut?=
 =?us-ascii?Q?/qEEqJCpkOA/Z8WIs/XZLkOa?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tE3so4eFwVol1ufshrCz59kmH3jrCbaYT9z06xSGb4z6cymTpM/uQ8R57VmB?=
 =?us-ascii?Q?VkviqhIreC0PwYJhPjidw3vbAgKjY78dEgZjWrsCv4S1Ef/xi72QJDtAcmVE?=
 =?us-ascii?Q?0gvMQN6wnegQnG7QvXR1cmE0pl4o/Ys0gotzSp/PSTl4eiVwKwr0dXy2wfPU?=
 =?us-ascii?Q?z1goTrja5HNHjSVCIuYr26hkWh8a8rrgoqSGW3o6IMC0t/jNStpLblqX7HOu?=
 =?us-ascii?Q?fjHizXT+z2HoSHQStB34hBdUK2Omil1GTSNZdbTm3VcNOCdTA0w75LheiDyA?=
 =?us-ascii?Q?I+LdlIrkx4J6ElKaFvGR/2+acdD5HWExH4oOzND01SwxznsQSJ+ijCdq+uqz?=
 =?us-ascii?Q?jjxBUoHhLcbU8mXpViA/54TiTI0/aojJakD1d3p9YaZYNS6/R5ZlV+LHUCNe?=
 =?us-ascii?Q?K6LoSOR9Gem0z/H0nJN8ILtBJMg6j3mzD78JDoTMaQm8kkBoVOkh7T0seJ2Q?=
 =?us-ascii?Q?Ysyzo9lnVAJYcbyrFlLWSsd/JCqCXhejpXCt+9ROTcYHwSsDomqKvYCkHpoR?=
 =?us-ascii?Q?J9uB9XZiXZYpTT4K/Rybeuo2JrjNYrH3liepnToKu5TUG7Dz71cIFsA8y7Jx?=
 =?us-ascii?Q?pjWWMviwfzQGQpEFBgs6sbjeTXnRz0/DJa1zcKzRcyQK4etUIX8hZUvcnArd?=
 =?us-ascii?Q?Tvv9m7BPekdBFDWec4zTuqYoE7n4ijx3tSW2j3VzaOok01eqGdjonGwaLCpu?=
 =?us-ascii?Q?daZ+riHXLURvs6FIEnOVNEEIY7kQ0pXXonLQ5IhHxXiEi6uV4a+me4QQ53KO?=
 =?us-ascii?Q?dR8auiAwB4hHNt0C9nJKR5hkg1TQ1mfZq+7k12e5pST7RuMYRmU1wAcQHBy4?=
 =?us-ascii?Q?W/50kK1DcIfrT/2TRUUQdkJJRWcrg+3AyaJAYdGN2kdOIZVkiuPwd23O2GaQ?=
 =?us-ascii?Q?1cK9rZjPz9r6aOPN1H2B34eYoVBOr/xP1lB19ikLlF9qCBnUtfDgflS93Ed9?=
 =?us-ascii?Q?6Ahe6+qt4dEAY9W1I+r5sheJpO0t2FHQw/f1ZPmlAy/elEkL6vJqrFuDbCih?=
 =?us-ascii?Q?CiYsDhu/RQesLgpYp2j5oNHXOApEpJE3VcAKEH4SGdi6Oe7VA9KZH4Uakuda?=
 =?us-ascii?Q?WlnwZT5fKnSkIZNm83LQnLZCqAQHU/c7GDnjjUR3zWUw7TZiN9XbBxO0LkBD?=
 =?us-ascii?Q?9wDJ6+Zy5K0l6ZpyEkuvmNhpIpIYHbr58Xx/B4AoWOxAwVNJ5wJ4u4TtTtX/?=
 =?us-ascii?Q?soRfbsJfu7twFwjKutnED1qdRulHmo/J42hejsn9JN3iUI8SF2cMrV9Wbesk?=
 =?us-ascii?Q?fxHdfr1/pT4aHyXYFDW4W+6B71QvBp3L+Z6nMJK0RXmA0STeHgxhKWsfh8Ge?=
 =?us-ascii?Q?X3kNVMxHL4RVhPnS4Lv5p5lSAZYZe/QS4aoC0q81vpWlK0Ua2kiL8nfkYUEv?=
 =?us-ascii?Q?aQnCsHyRcKpRYSP92+FG0eG1JYSwDwFFcDjBFfqd5iFHNGmSueM+Dolb5Php?=
 =?us-ascii?Q?3GhGtEjKulJEFmsvGS/AW5ZxgB1lOUjRW5hmn15jkYsyYgj5aT8jKgd0baNI?=
 =?us-ascii?Q?qfUsrkoIUO4T007gKx6i8WVi9OwH0z0vTBcbGTGAyH/yUmH90Y4/cNj8g9F2?=
 =?us-ascii?Q?X3uTGOQJnqw+MxujQRHIVVjF3iQx4Orw/bHhrIowqBSOONsKOp+NvHHEcyIB?=
 =?us-ascii?Q?nsE8teZFLqeLKWHX5ei5fDM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 594aa0e3-1a81-4f79-b699-08dcf4de57ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 10:18:17.4631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ghAd6GpWt29+LzxARrtcoSFDUKWa7RA0w//6HEn3OV6QV+csgzCnceaYeQdJq5FyXKJpzZCltdc+827v1T3lt2zcGA5HJoeMi3l+Rnlv1s2cDUuqq9vhA0hCTyjXCVfy
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5857
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

Hello @Taylor, Clinton A

This patch can be dropped from here, We are handling this scenario with Ank=
it's VRR default timing generator patch series.

https://patchwork.freedesktop.org/series/134383/=20

-Mitul

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Golani, Mitulkumar Ajitkumar
> Sent: 25 October 2024 13:37
> To: Taylor, Clinton A <clinton.a.taylor@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Kurmi, Suresh Kumar <suresh.kumar.kurmi@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: RE: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during
> modeset disable
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Clint Taylor
> > Sent: 25 October 2024 04:01
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: [PATCH v4 10/11] drm/i915/xe3lpd: Skip disabling VRR during
> > modeset disable
> >
> > From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> >
> > Spec does not request to disable VRR in the modeset disabling sequence
> > for DP and HDMI for xe3_lpd.
> >
> > Bspec: 68848
> > Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index c904f529d0c5..7a6961432616 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1310,9 +1310,11 @@ static void intel_pre_plane_update(struct
> > intel_atomic_state *state,
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> >
> > -	if (intel_crtc_vrr_disabling(state, crtc)) {
> > -		intel_vrr_disable(old_crtc_state);
> > -		intel_crtc_update_active_timings(old_crtc_state, false);
> > +	if (DISPLAY_VER(dev_priv) < 30) {
> > +		if (intel_crtc_vrr_disabling(state, crtc)) {
> > +			intel_vrr_disable(old_crtc_state);
> > +			intel_crtc_update_active_timings(old_crtc_state,
> > false);
> > +		}
>=20
> Hello @Clint Taylor
>=20
> Seems comments from revision 2 got missed ?
>=20
> https://patchwork.freedesktop.org/patch/621235/?series=3D140196&rev=3D2
>=20
>=20
> >  	}
> >
> >  	if (audio_disabling(old_crtc_state, new_crtc_state))
> > --
> > 2.25.1

