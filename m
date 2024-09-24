Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49108983C4A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 07:17:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6619810E095;
	Tue, 24 Sep 2024 05:17:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwAIfF6T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400EF10E095
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 05:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727155051; x=1758691051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5/rc8jDUfBstQqZqqK0p61WRId1s5wBQpqXhSXFg9Hg=;
 b=bwAIfF6TlFeNqog5tdHkfvBS0l94bbM6NLNZ3Bjr0vZSkbHLJuuwJRte
 s4d1ZXtGOZ8+c3gdAfCrsBB/9C2WiURTU2rHyVmlvJKEl1kAci4B4h1fx
 +CFIwMGgExejUKLwDWDODJtSzQEUTMxsqVuYixWq/acxbu61AJqKS2DWw
 gMs/JqOzrtLVlYGnl0JUrue+bWcaFag1MHSGYcs06j6tA/2SDt2OvRyTD
 XHr6SRZikBfifOQkeZ4JWwR3Yos8rd3r8MLfnHdQ6nrW0fI1WqFLSJVdY
 7Zngc10JE4EUoWJWlboUv0AzpkieLfc9hN2fL9JqsHPaY91okjMnqOxb5 g==;
X-CSE-ConnectionGUID: 7gfBLU0IT0ieusdGJmLrUA==
X-CSE-MsgGUID: 9qFP1XrLR36YjD7t9fpvzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="25996284"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="25996284"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 22:17:29 -0700
X-CSE-ConnectionGUID: uGIBLBUqRHyNiTNjV28ejA==
X-CSE-MsgGUID: Ik2Jiv0HTICm+xlYPkJt0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="102125970"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 22:17:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 22:17:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 22:17:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 22:17:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 22:17:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qdKboWUBCsbD/v3WfBKqFP0NoDS9THH7KRbAy4dxVIBKJf0/7VThZrwlpGY+bcWy6F3h/oZBxRTxtLdxNu58hqXOPc7JMuby+A5/T90Rs/cL96cZjmVYo5J6hxv7GZtjv0uRXfl48pWdju89WObp4dB7uJJy8mqxVkYhedoKH3VJUYh58S8ZVcmWulNFGSe3UR3teYdfhfR0QNd+WjFJqIzo/39QNrzvZ89k8yuzRH042rYMVIPWRFNNrr7AxifDNNN0DXD0yQ6H58/dYBxMXNYIBt14AwDMMiw2ln0dwQkcHg3RvnEmxwHtNGPywkGbOIs9W3k62kCgluYZre55gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90bC3bJUOqgo9go8iXqjIxejyUxSt905HFmYcU/QqP4=;
 b=VMEnMlBBCrqfZHKm86dpshbxfmriqSAdGYaqJ0UejRtTX0dzalB32n1PxnFe/NYAuO47fdkPeNuPifEiEj1a9IRsM1CEBWVEAqRzfYn5RneiTpGoGakywd+LSb212cILIvflE3KPFGEZwFEiyNWOSwRVT93OUy0BK5FFi+RuVQ4D1ciVK/FeQGiONrxv0PNXcWEzIpvvxgPh80kb7YEsngnDI5Ov5+QHs4MaVtQKSXz4kxXRuTcwKYrkynwyzReXsNWWECAO1M/QHGndziM7cG/kiy85P503IsaRaMxOHyGF9wTmZLxGrbWFCyd7IZqDodyR8l8RgOa9svioF8c/Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 05:17:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 05:17:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
 DISPLAY_VER() == 12
Thread-Topic: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
 DISPLAY_VER() == 12
Thread-Index: AQHbDWZ96q530uZ0WkuRE0bk5cOBDrJlpAeAgAAIloCAALpUMA==
Date: Tue, 24 Sep 2024 05:17:25 +0000
Message-ID: <SN7PR11MB67503EC3DD874E2E2521E779E3682@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240923031007.1058072-2-suraj.kandpal@intel.com>
 <20240923031007.1058072-3-suraj.kandpal@intel.com>
 <ZvGnm0Uj0KzErdM5@intel.com>
 <20240923180919.GA5091@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20240923180919.GA5091@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB8550:EE_
x-ms-office365-filtering-correlation-id: 926fe3ec-d464-4ced-5dbc-08dcdc582d59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?lCWKEcRKQ4JUinr1Vqe7atIefkr03d7zjxTD6+zmIabt9+c2lQFhB4xDEY?=
 =?iso-8859-1?Q?3BqCtblCd/2WE4E87PyZtmq5qbLqpmOLR3J3Usdmmw1MOXEpYW8rj9Ngie?=
 =?iso-8859-1?Q?hj5IqOQcJ65jnLjqG8rCuqik6qlKAvMnUa+LiUD2Papa/NruHLvTj7uLMB?=
 =?iso-8859-1?Q?fbeAebCLBseaYHypq+b9X9wo5+NC/k8Ex5CT7iESsWpwHhMyr+fnLAYRSl?=
 =?iso-8859-1?Q?qKhGnq8S25ZbafGfFynGtjxKwywnD/9jrwQP8qx1EzcW1/PTUrZskRvwTc?=
 =?iso-8859-1?Q?CSZe/RaOBAfQ0H4gwfKwvXqlWZXhO/pEEzQHs6NI7anpyt4ewL6847sZSX?=
 =?iso-8859-1?Q?xCWHTOwXJQ7M/Ri11vEDyqgRn+AnfdCcHB69fLRdyci3+LD1QTXtRa7xRF?=
 =?iso-8859-1?Q?CDzY1rRkAPih+C9nsuddPdjtdu7iuSSWy95J7PYVx4XLqGX8RPr4LVEnqY?=
 =?iso-8859-1?Q?o8I4y/yKHaRo7m2+u3bpu3wM1lXhbmA6B9D5qAAK1LMw0ULrdneG97kTQ/?=
 =?iso-8859-1?Q?ATRGR0oeyKo+CplUD2cC+QXj9trY/vwJt86HiSeMdZFl6sGnfPCIF6Xswo?=
 =?iso-8859-1?Q?yJq3RkOJqmdBgi3QwF8xaspvC5ZcSYxViMZtCLSWUO5y3G8xJnFKK8LKH8?=
 =?iso-8859-1?Q?MzqSTB3e2ijUYXkEZxsKMX/6lptp+rij1zcpCpGuDroNIt+NY3qMHzUXC3?=
 =?iso-8859-1?Q?xeC0o7MCQ8Ot71JccoUSxz9G5ioh7qH/y/rBlM1N9/oTt0U1i/66+g8iwS?=
 =?iso-8859-1?Q?OIwmI6LeJFuvcnNH0ZuX7Ln8eJYs2PyxDZJkI6h6dvdnlscoGLUY/7Girj?=
 =?iso-8859-1?Q?s6Exf44HJgCZiy9edq/+aMpckV6cBOlIOWflqSkzUfNkWQEaWYdXhDO+o+?=
 =?iso-8859-1?Q?6bGRRUHMutp+yAFXdLepFwrtHHDUD7XQV/ntek5KzasE9wrQv/m8hEOgnc?=
 =?iso-8859-1?Q?C9nO5xIZOSjf45pOykFJ1AaCj360pRTT4fxfhx1CkBoE7WSJWz8Y0+a8Ph?=
 =?iso-8859-1?Q?5MWQ1sbubFr67S0er2E6tC2Eww0n9OfpTqFoCbaXadAsmzkmqtDOJpExso?=
 =?iso-8859-1?Q?W4cMb//mpY1cVE/DOelPAOZj+v2L0l346y/pJVZSQop40Y+mGxZ7WUpCpv?=
 =?iso-8859-1?Q?yhfI8+EUc9dMovSR/5fIuYxZigzlKeJdAZ0l+m+LLQAaFXvbQRIXnt4gXF?=
 =?iso-8859-1?Q?BwVTaoao8tECXsSnw1JCLUclBX0SGPCoDI0jcAf7s9sAsJbdpo8ereCg4m?=
 =?iso-8859-1?Q?09yazNeg3inIs7C93bPU/6iyCx1XSzYbLY7OGkYg2VbNqbq35RuSL+pNff?=
 =?iso-8859-1?Q?CoY0vjIHUcbUKSD6OvYy1YCoTLYfz4JwKjTTcy9GzzpIRJB/V+9NxRWK6J?=
 =?iso-8859-1?Q?uxyCVZwfGasJyKBnWBX0FdtT4mwqpzxdQBiGmG68luWbCR+oRQYvJEyUXo?=
 =?iso-8859-1?Q?CKjqUl88+SDAOV47ZJs5mIP1Vf1JE4yuEmXWyQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?49vFo5LAP2C27H7VwQt9wpA4TSE+fIc02OVK7u7oehtjpaGtRmR7DdCzQM?=
 =?iso-8859-1?Q?z3anu0j2P5VmOlJZUFzMC21ejU8tdG/HjeWYYD/oZGYPFdY/8rTO5p7YCg?=
 =?iso-8859-1?Q?wyA19Hdk41uzYGanOmWjxfheeeT3GB34og79bHVH7zn4ndUH9/ERATIdM6?=
 =?iso-8859-1?Q?lkecIUqDywGM189mA5VxMWYnS3wLz+vvnDK4Jqi2Do8rpvlPlFKEpNGm5A?=
 =?iso-8859-1?Q?7FGDcTZMWwnFGyyfZjAHZIfdFVuGmgeXp+jJWY0iYjheXdW2gtZrqCdRH5?=
 =?iso-8859-1?Q?ULIXEZV/ORqe6KLB1ztBNJhQ1yL89ez+FM7gimFQIcX9VHxZGtbPHd06ky?=
 =?iso-8859-1?Q?i/vzlut2JrFXnX5xWWl5rMcP4XeYnMYJN4P6NPugWfArScvdoRaKSTTGNj?=
 =?iso-8859-1?Q?tPPI6r9vkGJCAEep1Lk8oqWuTVoeVNVTYpqITUnw9j59UIxwQDmfxaLD9X?=
 =?iso-8859-1?Q?deDbxfPo7IbE/xsNjLRb1iu7PCoZdtu5sd1QCeXcq7LIAvhuiJSXjZJAhQ?=
 =?iso-8859-1?Q?eWqJL1k+wMehgUy5hZC9L6WGOLPXbkSOsdZbHGercDXLf6k500lnioqNy/?=
 =?iso-8859-1?Q?7+xYSy9fv/+CIGdp3dIJQLlIf4vTXJIWQDuDScuKx0lQcGUStpSdTtfOtR?=
 =?iso-8859-1?Q?yS7lrohOIgLkgMMNyUocOR1RtOsFYqoO66imV3huOjKI1V1bC+EIpbiV/v?=
 =?iso-8859-1?Q?gU1MnzkozH03A0mgT1ieg5GUh3HpVbHMra9v49x7Pd8AAxtv4B3mtjo+Xd?=
 =?iso-8859-1?Q?iZhAkqqSw17fct44XypUhZgc3KbLe48b+XwPgH6zRNQACLmgTiRDLWfT7/?=
 =?iso-8859-1?Q?bxWpZSK0O19vPH3BS49mLrpYhhELz7YrIJEijS8PeusNO5FOx1r/gp+l64?=
 =?iso-8859-1?Q?asEHcgYyTmYF4MLnc27LxDYSs15f0ltZCXaM/NAtcuEykoMaAimCnG0ehl?=
 =?iso-8859-1?Q?+JhW5jpkG/KFw8a95EYIg5EhNBM7CCCVmt4wJ5RROiHJdih0ppkvyRTSPR?=
 =?iso-8859-1?Q?OwYPIVeqgwxNeQ7q9PEAmf3a9XhcH5x3Y3Y5rIu3sHuc/E4oW+GcaGp/9f?=
 =?iso-8859-1?Q?ngqup7jcA0V8JKSVgOq13jHoZodwuFxRvwD9dZIuF73xdmOZvuZ6X90Lef?=
 =?iso-8859-1?Q?MRuoDAgTL7btPJFDzyHQ4OgsmVeO7gRt8DCB6Vk3t2QnKp6m0rUzPyWSMh?=
 =?iso-8859-1?Q?tWhuivStBuajtV1WtqwfD4ATqdQmwE59zBA2siF5EOq8GaSWm1rr8Bv48n?=
 =?iso-8859-1?Q?0dm8IBs0qZG03TBoHjO5dUalUlHi/RVHivyceV14tmTfaEPC/xZkAq7Ibe?=
 =?iso-8859-1?Q?G1D3fgkLttCh3q56fR7IqhhxGtqRyUcxQYCxPzdETWzOA1df4MdfF/rPVT?=
 =?iso-8859-1?Q?BX6TD0ca4v2wM7vle4MUKcilawa6+wTPiQQx0EtkUo9rHuNH5aDixs/FGe?=
 =?iso-8859-1?Q?Q59U6cz45uQBPM5Z9RADxGUBXsPnhQ/BNis/7TQ34A5lH6QMboNCsgh+Bi?=
 =?iso-8859-1?Q?FNsiXbxqj4b7pD5HW1ihninAyfNfdSmLENK5UF83Ab6sBPGSnZsfyt3cY4?=
 =?iso-8859-1?Q?hD0KiLzLKdI7ep4aB60PTnNBDYvV1S7SZO68S75kt5T8W4AEeMDagVcxSz?=
 =?iso-8859-1?Q?hU+lAd9sKKFd1YM4zMk8v0OsKVOtAtNJEG?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 926fe3ec-d464-4ced-5dbc-08dcdc582d59
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 05:17:25.5278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xLeUUOHBN7H2omx8OCO0JKeVIjQXNWGNyaWCIzh2NFp0kYV3gKHD02y9rvibHxOkid9oQSjsofQc2R/ncgQHsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, September 23, 2024 11:39 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
> DISPLAY_VER() =3D=3D 12
>=20
> On Mon, Sep 23, 2024 at 08:38:35PM +0300, Ville Syrj=E4l=E4 wrote:
> > On Mon, Sep 23, 2024 at 08:40:07AM +0530, Suraj Kandpal wrote:
> > > Reduce SHPD_CNT to 250us for display version 12 as it lines up with
> > > DP1.4a(Table3-4) spec.
> > >
> > > --v2
> > > -Update commit message and comment [Matt]
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > > b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > > index 2c4e946d5575..8427386132e6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > > @@ -849,7 +849,11 @@ static void icp_hpd_irq_setup(struct
> drm_i915_private *dev_priv)
> > >  	enabled_irqs =3D intel_hpd_enabled_irqs(dev_priv, dev_priv-
> >display.hotplug.pch_hpd);
> > >  	hotplug_irqs =3D intel_hpd_hotplug_irqs(dev_priv,
> > > dev_priv->display.hotplug.pch_hpd);
> > >
> > > -	if (INTEL_PCH_TYPE(dev_priv) <=3D PCH_TGP)
> > > +	/*
> > > +	 * We reduce the value to 250us to be able to detect SHPD when an
> external display
> > > +	 * is connected. This is also expected of us as stated in DP1.4a Ta=
ble 3-4.
> > > +	 */
> > > +	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
> > >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
> > >  	else
> > >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> > > SHPD_FILTER_CNT_250);
> >
> > IMO if we start reducing this for older platforms then we should just
> > do it for all of them, instead of based on some random cutoff.
>=20
> There is a note in the bspec (page 4342) that says
>=20
>         "Program SHPD_FILTER_CNT with the "500 microseconds adjusted"
>         value before enabling hotplug detection."
>=20
> for CNP and ICP which is where the cutoff originally came from.  I'm not =
sure
> about CML (which uses CNP), but ICL at least supports DP1.4a, so I think =
the
> note in the bspec is probably just outdated and we'd still want 250 to en=
sure we
> align with the DP spec.
>=20
> So I'd suggest just dropping the condition in this function and using 250=
us here.
> We can probably leave things be in spt_hpd_irq_setup which gets used for
> CML/CNP.
>=20

Sure will do that

Regards,
Suraj Kandpal
>=20
> Matt
>=20
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
