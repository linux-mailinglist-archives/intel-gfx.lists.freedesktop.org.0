Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64A7A94C31
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 07:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CFC10E346;
	Mon, 21 Apr 2025 05:43:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LKCgP3Be";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 967B410E343;
 Mon, 21 Apr 2025 05:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745214231; x=1776750231;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y/9Q+QfNniebF5QhV4Cd4LkWE6abMGcfOgZrVX/JtmQ=;
 b=LKCgP3BerNC1+cLAy3/LE87PyntnZkSYHgMh3gPrkEsjie4sycv7A2W0
 90fuQs/0j04aAQ6GgI9kkSz1Xr33DjzbSBZ9xuGacOuvrRnuw9oQXniRZ
 qSNwvc+bHsgFIZ+KVOvEUtPp53rmu3lPM6gTyNNKYYaEUgMNmklWHS3qB
 ks9oN+jjrzkt/LZ2LYx1CATM3alxsnIIcaYD+768DC6tcgC/KYAEbPYgC
 iAYwUoqxCaeIGszBji1m1ZjFvPKSrMd3ItOtiTGw8BCdIrc3jXEpSiyEC
 n0xU5iywm0J/KY5n2sCTW4sp5jjv1qZTBdnZW7GIsI266+O/xbflWJkUS Q==;
X-CSE-ConnectionGUID: YqcaXTQXTxOHfrOqCzeOWw==
X-CSE-MsgGUID: lmdOQ4TMScC4ZJM6LLLUHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11409"; a="46862511"
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; d="scan'208";a="46862511"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2025 22:43:51 -0700
X-CSE-ConnectionGUID: 8eDCSrVORIuXayWRojPyfQ==
X-CSE-MsgGUID: H1u7ImO3TqOkqMTUFvdy8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,227,1739865600"; d="scan'208";a="162585633"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2025 22:43:51 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 20 Apr 2025 22:43:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 20 Apr 2025 22:43:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 20 Apr 2025 22:43:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PSYxFLxmvXPQ+9p8bNLPbR3INmcT7064f1NjpvB7m4snwb9ADBhEri0zOx9nISy4iWnWa9Tu8N17vUi3aITH6I2IDg0RzH18vXh7AWIixuufhvuYc8jJ2njLJbGMqT9JcfVRh0AYZvuDeU2MMh6jR9x/WCcfgOxnr4Kn/CyHqeL8CrI4lxuCHv6qYEtn/lZ1/1Ma4H46MLWIav9c7cLoruAZ5iTCYMH83Iff0m++r6PUi5Q6cUjp4QFj8cMSvwGEbFmBn+nCHeleoQJIB1M4ZmjG8ccoGqPYz+c6bmV5FBHUxI95Eu8a0WgFr/043+f2a0DI1PHZMQgX6tDvOlwmAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C4HGtdYD5v/8zlpOE28JtzWbuQav85mK4PuLMTUqSvg=;
 b=PVkqKW7gZMXyjVKnJlU8zQ6IJY/X+bZ1Bin4A5cz4++0JtGNmS78ZxNS2O2T/UfcmfARzy+p6ViLCEy46uhwvI0HQidareybSY4SvmdwyMc0VWv9Mjurvn0inQCGxb4cJI8Bg8mq2fyJz6VIO8FVEB8w5hDwHcSgc4yaClVnCwO2O3GQgedJrNzMB8O4ApfUpP992x5gZ+kmaC8PL0foMrcPOwoHDqU70aoa7wfVUAlpvAFtXVZ4U6SqOfnN/SJk6OJRpmRcVdE2pFOYe9l9DlHOmsjrAvyN4Cx8XMiASGSVtbX8N4RGytNH4OgqQI3ddhEuSz4Ha7cjJFEYCiAncg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Mon, 21 Apr
 2025 05:43:46 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8655.031; Mon, 21 Apr 2025
 05:43:46 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 1/3] drm/i915/display: pass struct intel_display to PCH
 macros
Thread-Topic: [PATCH v2 1/3] drm/i915/display: pass struct intel_display to
 PCH macros
Thread-Index: AQHbr3iorQYItcrmYUa6F/uH2fFVIrOtoa0Q
Date: Mon, 21 Apr 2025 05:43:46 +0000
Message-ID: <SJ1PR11MB612936A75B38A19FB5ED33F9B9B82@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <cover.1744880985.git.jani.nikula@intel.com>
 <999f4d7b8ed11739b1c5ec8d6408fc39d5e3776b.1744880985.git.jani.nikula@intel.com>
In-Reply-To: <999f4d7b8ed11739b1c5ec8d6408fc39d5e3776b.1744880985.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA0PR11MB7696:EE_
x-ms-office365-filtering-correlation-id: fe754af7-b3e2-4f1e-2c6f-08dd80977be4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?kfsa71ymXG0rEm/Bd3OyVdVJ7nbCehgARSmuWSKZg5RSqNcZEtVZKoH7P1Zl?=
 =?us-ascii?Q?kp+DNEKLZHsKzHQGwYOx7ggJM6K4Ar/xTnIhzxVFguCOLO4+swPiQsd19nqn?=
 =?us-ascii?Q?MA8SNGQrt6IrXFk5c/QZ+UcCN2PYoORvlg6GaKxw3w+tPFcCBWydZ+8AuQEb?=
 =?us-ascii?Q?rkW/q8jFvM+m2PizniswdcsmmgL9OkkJPUP7Wph/5G5vYm/VqYRKas3ECuIy?=
 =?us-ascii?Q?l+WlCPMiwpULriBeDhAiP67RW33XH6eyuRXX135zIlvupRedZowQZN3WiYuN?=
 =?us-ascii?Q?6giAGddblXph0jrkDofkblptbAljckcbm2mJtiO+sTxOsVZBgRBj9g9ZKFsG?=
 =?us-ascii?Q?UR55RDDIKRc92xfrC5GZPNkdrJKK+CC1JzE56BcP5PFk1slGceGAAAy3+6Jm?=
 =?us-ascii?Q?RXXGw5syPrbkBabx8VkQiq1L7xKS0svdC6cWBG9ImlqN5nDEcrYMV1GGg+2T?=
 =?us-ascii?Q?NevyFqXPQDYUoZP+aMEqW5nqjR5isVS36UnKQ4aHsn1zJlS3dTJ7dI+lQ6MW?=
 =?us-ascii?Q?avr7TnFyfoPvsXT7PgFgWFjFVioj87wg9UJf1v6q5+U/t1/TFMUiIAYXSdE3?=
 =?us-ascii?Q?pjRU8CymAlmldgtFSDo6eXpYaK/1tU+f2jQo3lkOblZ57kMJuDOFTFfMiuAy?=
 =?us-ascii?Q?5u2/fn/ENmcrTqie6iFOpGMuTxNd2ZkGxDshYbQaEqFi/T9SxsDO20x23+MH?=
 =?us-ascii?Q?pmRXaFoptB/lKZQvs3U3doKuTxMa3h/+mrmhTF5HoZpIHiUZJw3lZu3+g2Aw?=
 =?us-ascii?Q?bw2n1WkQveJMOYBQ73i3sWPTzISIqMJYR50SrcfTphDXo3GVfWJY+XZm18Jy?=
 =?us-ascii?Q?HKWUXcSqZUzHJDPZNiSnOHWBjRAfYC5fnr9wKEaxohX/+DuTYIFDhQCJ0Ro1?=
 =?us-ascii?Q?b+u7imqKSvV07AbJGg5wVXG78kYLqWl8jqFG6gHRPXtRpjzoQDLZ+rWEYidZ?=
 =?us-ascii?Q?GIRmPr1En7EafYVf8VtSjsjM07J3UZH9eH/RMvarpG2B2IrXmnonY9b5toch?=
 =?us-ascii?Q?vIBB1B2ZSPRzonpTg4YarX2r3Uw5jDzdvvriMF2uR2b9PATNYJv6FDyvPbi8?=
 =?us-ascii?Q?rYWya/tCLGTUnl4uWvmK+5peaonf6Nm/pzCp6anCqrNHt7w3ReuWq1a7oS4z?=
 =?us-ascii?Q?xl6riwHqBB8uOLPialSheNebsoKpWjugSl/WkjbQfcS703IxJjJzJGQKXIw2?=
 =?us-ascii?Q?FYo0rflmO1tkRl8KO37+q62f6xQBaEDP5VzraYDhLvGmwlOnMRVYK6LARRzH?=
 =?us-ascii?Q?zmfZErDBvkjThPrWr4FUhwAtSgoIPiF9yy54SOsQayw4/nbjdElPvmk9L9ZA?=
 =?us-ascii?Q?Y/GlvW8z3yJFaGpnolO7fQuIXX1CVIcnkHxMuyMujr5KNRG71HFr9AVSurve?=
 =?us-ascii?Q?QvWJ27k1qnFm8rLGe7N5Ft+HRBauLBZVBtcHdnogUd6VGpiV3df9pyi9F4Rc?=
 =?us-ascii?Q?AXN3H0NqAyM2A1A69bOXNEX6pXstK1nvopQTTyEtQa0EOuWlg4gsiRzoWxrx?=
 =?us-ascii?Q?xMx3LHTtYGFqCFE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?9b2xT68BYPdhVgnMlx8B6k/sM21VvX3CILPHN+XNlT++c48Lki908wnhYUg+?=
 =?us-ascii?Q?e1/TnCBuQ9on2sp2Jr0Q5oHcDkTqoppuBNO9owwMLWPTwQTbLcbG9pRj4bzb?=
 =?us-ascii?Q?MOA7zIOOLthm8miIIsMpcimgE3wilGjPH15BoLC9q4Vc9S6UxSHXS84w+oSe?=
 =?us-ascii?Q?Fv/TMEHw8OdXeEN7ssBQVYTi3UAtFfvfdnsPWHrYyLRDxfswoSwwGWQH1Wbc?=
 =?us-ascii?Q?igJA4VGTrfmb9hFXcw0hR09Qoe1GrE+6B5Ic89lNf7LsV6MHnVV8iFMVnf9o?=
 =?us-ascii?Q?ZYq0sRCZkDTbGUWI2sR8v0IUohkr7zC30YxKodoXunINqS6WyxOohi1cclB7?=
 =?us-ascii?Q?XRhiSJng1XUA4A0TNqtKQPpr0704iFwROpF/3REUsP4k+qObpjcWp4EaueOE?=
 =?us-ascii?Q?EYb38mlsULnTvrAXfW6LcDRnRLC6Onw0GeEJC1b5MUtVRdvDpJM5uWwAEeeR?=
 =?us-ascii?Q?T0qWU4tr3FTJGE6JPkpuo2TqmTOQEbpZEgZ6Y+j1mY2osKXqA9X9uMCXvaY3?=
 =?us-ascii?Q?JwqVoJJ20xaYq/feN1K7NhpR1UnRrrNmip3QVWbZj5IYTVUW514zShOa/LVP?=
 =?us-ascii?Q?U1SWNgULfLE1/uB+fGDB4M2W4iJ1V2d60ajy87F9HYXz5R3nnpxiQvlqQ7NZ?=
 =?us-ascii?Q?OgiLhZ9Q87amWG//9Kbgez01MKiJk2AAr0EdE2/k9EoRNqOLefj4xRivOW1c?=
 =?us-ascii?Q?Sd5dBtBG0RQXrXIkd0tGYxAfW9i5plNHze5JBc83eNC0EsBvnkDeoqCcd9Vm?=
 =?us-ascii?Q?1BdMU0KlJqsDxOF8sfWeHHPq8DTxYnPhPSJ0pgUaMYTqChMXyiEpM4FT9shb?=
 =?us-ascii?Q?2OW/A/38Pldy+Lyofpl19QwIaw/3oqmKk+b8Tov0kAtT+OL5VY6JMKTbvWvI?=
 =?us-ascii?Q?xb7j/TuFmvN1MFN4KbmtafsphMXIagnK+SHvxChPmVMrCgOYyrkfV17rZEs4?=
 =?us-ascii?Q?SdNDUVtIo1GLMRus6IGRBZ2wETGcLPwU0SHPwbWU6iO/F30vGyMumZpHcLh0?=
 =?us-ascii?Q?rHCggavp6CUs+6LdUdPO5cUBG9Xu/bWjnZArrtSThyqWwyofMzFcu80Gm9U9?=
 =?us-ascii?Q?Lcqft3RiSbGo7EugyvCZHPc66I59unvFT0HikniD+iRSyaR06DnSmcYpuHQ5?=
 =?us-ascii?Q?WadeQv1cRl5iqYBNQg/l2SZ7go/mOSZwu5VaSXB5p3fAuosujDjugEcxq7du?=
 =?us-ascii?Q?vDNqqXglyV8PsIFdggFTiIrYZCCJeT9awc7gwVfcCgYIzRoKnBOr266FTr/h?=
 =?us-ascii?Q?Bp8jrFOQeHpRGVojZ6JmZz30SwMQaWTAEUbEMWE7mvjQx6FeTiXZuwXVLjmd?=
 =?us-ascii?Q?pHD7nfP+jwbpZpTaUfQFvZkEPsMdQB/kr+xhbN88KmVqByrYWt4JZVxbvRWa?=
 =?us-ascii?Q?x/npWQDBBECaVSPnECCcLf6YSK9cBWxvCHEHsArbDosM+cgmSVU7dNNPBX4p?=
 =?us-ascii?Q?+/oSo5zHFxm0yych5rEtjwmzsiYXjyMqbEOKubDTFa5FBWmNzuqpk02ymSIK?=
 =?us-ascii?Q?hJh2Lrul56GWtUt5MK7HvhMxF7ms6rN+We4KyqGivz6u/hhCjOoNrVp/K+Rm?=
 =?us-ascii?Q?6EAzrp0iV9zTOIFkr5dyMPBqDIEPOfJTvjvgeU1uhEOEQ27GC9dhCHV+Fn7i?=
 =?us-ascii?Q?YQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe754af7-b3e2-4f1e-2c6f-08dd80977be4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2025 05:43:46.3015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /wwpC9ULQoSt0fKiPzWTtEdYUlhMzHWwKe0gl+JWh3IjkXX8ciJhhcSn8bmzcTCaSKzQ4GTrZWR+ZzZ57Rl/gV+KbHgyjKFPfWxesUvnzm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, April 17, 2025 2:41 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH v2 1/3] drm/i915/display: pass struct intel_display to PC=
H
> macros
>=20
> Now that INTEL_PCH_TYPE() and HAS_PCH_*() macros are under display, and
> accept a struct intel_display pointer, use that instead of struct
> drm_i915_private pointer in display code.
>=20
> This is done naively by running:
>=20
> $ sed -i 's/\(INTEL_PCH_TYPE\|HAS_PCH_[A-Z0-9_-]*\)([^)]*)/\1(display)/g'=
 \
>   $(find drivers/gpu/drm/i915/display -name "*.c")
>=20
> and fixing the fallout, i.e. removing unused local i915 variables and
> adding display variables where needed.
>=20
> v2: Rebase

LGTM


Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>



>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         | 26 ++++-----
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       | 21 +++----
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |  4 +-
>  drivers/gpu/drm/i915/display/intel_audio.c    | 10 +---
>  .../gpu/drm/i915/display/intel_backlight.c    | 37 +++++--------
>  drivers/gpu/drm/i915/display/intel_bios.c     | 17 +++---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 12 ++--
>  drivers/gpu/drm/i915/display/intel_crt.c      | 31 ++++-------
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 12 +---
>  drivers/gpu/drm/i915/display/intel_display.c  | 21 ++-----
>  .../drm/i915/display/intel_display_debugfs.c  |  6 +-
>  .../drm/i915/display/intel_display_device.c   |  5 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  | 33 +++++------
>  .../drm/i915/display/intel_display_power.c    | 31 ++++-------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  8 +--
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 11 +---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  6 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      | 13 ++---
>  .../drm/i915/display/intel_fifo_underrun.c    |  4 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 16 +++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 28 ++++------
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  | 55 ++++++++-----------
>  drivers/gpu/drm/i915/display/intel_lvds.c     | 21 +++----
>  .../gpu/drm/i915/display/intel_pch_display.c  | 41 +++++---------
>  .../gpu/drm/i915/display/intel_pch_refclk.c   | 15 ++---
>  drivers/gpu/drm/i915/display/intel_pps.c      | 26 +++------
>  drivers/gpu/drm/i915/display/intel_sdvo.c     | 24 +++-----
>  28 files changed, 201 insertions(+), 336 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c
> b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 18e51799d2a6..9a8c42d6aea9 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -59,14 +59,13 @@ static void g4x_dp_set_clock(struct intel_encoder
> *encoder,
>  			     struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	const struct dpll *divisor =3D NULL;
>  	int i, count =3D 0;
>=20
>  	if (display->platform.g4x) {
>  		divisor =3D g4x_dpll;
>  		count =3D ARRAY_SIZE(g4x_dpll);
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +	} else if (HAS_PCH_SPLIT(display)) {
>  		divisor =3D pch_dpll;
>  		count =3D ARRAY_SIZE(pch_dpll);
>  	} else if (display->platform.cherryview) {
> @@ -92,7 +91,6 @@ static void intel_dp_prepare(struct intel_encoder
> *encoder,
>  			     const struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	enum port port =3D encoder->port;
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> @@ -140,7 +138,7 @@ static void intel_dp_prepare(struct intel_encoder
> *encoder,
>  			intel_dp->DP |=3D DP_ENHANCED_FRAMING;
>=20
>  		intel_dp->DP |=3D DP_PIPE_SEL_IVB(crtc->pipe);
> -	} else if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A) {
> +	} else if (HAS_PCH_CPT(display) && port !=3D PORT_A) {
>  		intel_dp->DP |=3D DP_LINK_TRAIN_OFF_CPT;
>=20
>  		intel_de_rmw(display, TRANS_DP_CTL(crtc->pipe),
> @@ -276,7 +274,6 @@ bool g4x_dp_port_enabled(struct intel_display
> *display,
>  			 i915_reg_t dp_reg, enum port port,
>  			 enum pipe *pipe)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	bool ret;
>  	u32 val;
>=20
> @@ -287,7 +284,7 @@ bool g4x_dp_port_enabled(struct intel_display
> *display,
>  	/* asserts want to know the pipe even if the port is disabled */
>  	if (display->platform.ivybridge && port =3D=3D PORT_A)
>  		*pipe =3D (val & DP_PIPE_SEL_MASK_IVB) >>
> DP_PIPE_SEL_SHIFT_IVB;
> -	else if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A)
> +	else if (HAS_PCH_CPT(display) && port !=3D PORT_A)
>  		ret &=3D cpt_dp_port_selected(display, port, pipe);
>  	else if (display->platform.cherryview)
>  		*pipe =3D (val & DP_PIPE_SEL_MASK_CHV) >>
> DP_PIPE_SEL_SHIFT_CHV;
> @@ -337,7 +334,6 @@ static void intel_dp_get_config(struct intel_encoder
> *encoder,
>  				struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	u32 tmp, flags =3D 0;
>  	enum port port =3D encoder->port;
> @@ -352,7 +348,7 @@ static void intel_dp_get_config(struct intel_encoder
> *encoder,
>=20
>  	pipe_config->has_audio =3D tmp & DP_AUDIO_OUTPUT_ENABLE &&
> port !=3D PORT_A;
>=20
> -	if (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A) {
> +	if (HAS_PCH_CPT(display) && port !=3D PORT_A) {
>  		u32 trans_dp =3D intel_de_read(display,
>  					     TRANS_DP_CTL(crtc->pipe));
>=20
> @@ -415,7 +411,6 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  		   const struct intel_crtc_state *old_crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum port port =3D encoder->port;
> @@ -428,7 +423,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  	drm_dbg_kms(display->drm, "\n");
>=20
>  	if ((display->platform.ivybridge && port =3D=3D PORT_A) ||
> -	    (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A)) {
> +	    (HAS_PCH_CPT(display) && port !=3D PORT_A)) {
>  		intel_dp->DP &=3D ~DP_LINK_TRAIN_MASK_CPT;
>  		intel_dp->DP |=3D DP_LINK_TRAIN_PAT_IDLE_CPT;
>  	} else {
> @@ -447,7 +442,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>  	 * to transcoder A after disabling it to allow the
>  	 * matching HDMI port to be enabled on transcoder A.
>  	 */
> -	if (HAS_PCH_IBX(dev_priv) && crtc->pipe =3D=3D PIPE_B && port !=3D
> PORT_A) {
> +	if (HAS_PCH_IBX(display) && crtc->pipe =3D=3D PIPE_B && port !=3D
> PORT_A) {
>  		/*
>  		 * We get CPU/PCH FIFO underruns on the other pipe when
>  		 * doing the workaround. Sweep them under the rug.
> @@ -1216,10 +1211,10 @@ static int g4x_dp_compute_config(struct
> intel_encoder *encoder,
>  				 struct intel_crtc_state *crtc_state,
>  				 struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	int ret;
>=20
> -	if (HAS_PCH_SPLIT(i915) && encoder->port !=3D PORT_A)
> +	if (HAS_PCH_SPLIT(display) && encoder->port !=3D PORT_A)
>  		crtc_state->has_pch_encoder =3D true;
>=20
>  	ret =3D intel_dp_compute_config(encoder, crtc_state, conn_state);
> @@ -1272,7 +1267,6 @@ static const struct drm_encoder_funcs
> intel_dp_enc_funcs =3D {
>  bool g4x_dp_init(struct intel_display *display,
>  		 i915_reg_t output_reg, enum port port)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	const struct intel_bios_encoder_data *devdata;
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *intel_encoder;
> @@ -1346,7 +1340,7 @@ bool g4x_dp_init(struct intel_display *display,
>  	intel_encoder->audio_disable =3D g4x_dp_audio_disable;
>=20
>  	if ((display->platform.ivybridge && port =3D=3D PORT_A) ||
> -	    (HAS_PCH_CPT(dev_priv) && port !=3D PORT_A))
> +	    (HAS_PCH_CPT(display) && port !=3D PORT_A))
>  		dig_port->dp.set_link_train =3D cpt_set_link_train;
>  	else
>  		dig_port->dp.set_link_train =3D g4x_set_link_train;
> @@ -1363,7 +1357,7 @@ bool g4x_dp_init(struct intel_display *display,
>  		intel_encoder->set_signal_levels =3D g4x_set_signal_levels;
>=20
>  	if (display->platform.valleyview || display->platform.cherryview ||
> -	    (HAS_PCH_SPLIT(dev_priv) && port !=3D PORT_A)) {
> +	    (HAS_PCH_SPLIT(display) && port !=3D PORT_A)) {
>  		dig_port->dp.preemph_max =3D intel_dp_preemph_max_3;
>  		dig_port->dp.voltage_max =3D intel_dp_voltage_max_3;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 21b5db2fa203..4e8b13e9ddd8 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -27,7 +27,6 @@ static void intel_hdmi_prepare(struct intel_encoder
> *encoder,
>  			       const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> @@ -36,7 +35,7 @@ static void intel_hdmi_prepare(struct intel_encoder
> *encoder,
>  	intel_dp_dual_mode_set_tmds_output(intel_hdmi, true);
>=20
>  	hdmi_val =3D SDVO_ENCODING_HDMI;
> -	if (!HAS_PCH_SPLIT(dev_priv) && crtc_state->limited_color_range)
> +	if (!HAS_PCH_SPLIT(display) && crtc_state->limited_color_range)
>  		hdmi_val |=3D HDMI_COLOR_RANGE_16_235;
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
>  		hdmi_val |=3D SDVO_VSYNC_ACTIVE_HIGH;
> @@ -51,7 +50,7 @@ static void intel_hdmi_prepare(struct intel_encoder
> *encoder,
>  	if (crtc_state->has_hdmi_sink)
>  		hdmi_val |=3D HDMI_MODE_SELECT_HDMI;
>=20
> -	if (HAS_PCH_CPT(dev_priv))
> +	if (HAS_PCH_CPT(display))
>  		hdmi_val |=3D SDVO_PIPE_SEL_CPT(crtc->pipe);
>  	else if (display->platform.cherryview)
>  		hdmi_val |=3D SDVO_PIPE_SEL_CHV(crtc->pipe);
> @@ -133,9 +132,8 @@ static int g4x_hdmi_compute_config(struct
> intel_encoder *encoder,
>  	struct intel_display *display =3D to_intel_display(encoder);
>  	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state-
> >uapi.state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>=20
> -	if (HAS_PCH_SPLIT(i915)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		crtc_state->has_pch_encoder =3D true;
>  		if (!intel_fdi_compute_pipe_bpp(crtc_state))
>  			return -EINVAL;
> @@ -154,7 +152,6 @@ static void intel_hdmi_get_config(struct
> intel_encoder *encoder,
>  				  struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	u32 tmp, flags =3D 0;
>  	int dotclock;
> @@ -185,7 +182,7 @@ static void intel_hdmi_get_config(struct
> intel_encoder *encoder,
>  	if (tmp & HDMI_AUDIO_ENABLE)
>  		pipe_config->has_audio =3D true;
>=20
> -	if (!HAS_PCH_SPLIT(dev_priv) &&
> +	if (!HAS_PCH_SPLIT(display) &&
>  	    tmp & HDMI_COLOR_RANGE_16_235)
>  		pipe_config->limited_color_range =3D true;
>=20
> @@ -382,7 +379,6 @@ static void intel_disable_hdmi(struct
> intel_atomic_state *state,
>  			       const struct drm_connector_state
> *old_conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
>  	struct intel_digital_port *dig_port =3D
>  		hdmi_to_dig_port(intel_hdmi);
> @@ -400,7 +396,7 @@ static void intel_disable_hdmi(struct
> intel_atomic_state *state,
>  	 * to transcoder A after disabling it to allow the
>  	 * matching DP port to be enabled on transcoder A.
>  	 */
> -	if (HAS_PCH_IBX(dev_priv) && crtc->pipe =3D=3D PIPE_B) {
> +	if (HAS_PCH_IBX(display) && crtc->pipe =3D=3D PIPE_B) {
>  		/*
>  		 * We get CPU/PCH FIFO underruns on the other pipe when
>  		 * doing the workaround. Sweep them under the rug.
> @@ -674,7 +670,6 @@ static bool assert_hdmi_port_valid(struct
> intel_display *display, enum port port
>  bool g4x_hdmi_init(struct intel_display *display,
>  		   i915_reg_t hdmi_reg, enum port port)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	const struct intel_bios_encoder_data *devdata;
>  	struct intel_digital_port *dig_port;
>  	struct intel_encoder *intel_encoder;
> @@ -716,7 +711,7 @@ bool g4x_hdmi_init(struct intel_display *display,
>=20
>  	intel_encoder->hotplug =3D intel_hdmi_hotplug;
>  	intel_encoder->compute_config =3D g4x_hdmi_compute_config;
> -	if (HAS_PCH_SPLIT(dev_priv)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		intel_encoder->disable =3D pch_disable_hdmi;
>  		intel_encoder->post_disable =3D pch_post_disable_hdmi;
>  	} else {
> @@ -737,9 +732,9 @@ bool g4x_hdmi_init(struct intel_display *display,
>  		intel_encoder->post_disable =3D vlv_hdmi_post_disable;
>  	} else {
>  		intel_encoder->pre_enable =3D intel_hdmi_pre_enable;
> -		if (HAS_PCH_CPT(dev_priv))
> +		if (HAS_PCH_CPT(display))
>  			intel_encoder->enable =3D cpt_enable_hdmi;
> -		else if (HAS_PCH_IBX(dev_priv))
> +		else if (HAS_PCH_IBX(display))
>  			intel_encoder->enable =3D ibx_enable_hdmi;
>  		else
>  			intel_encoder->enable =3D g4x_enable_hdmi;
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c
> b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 40751f1547b7..77876ef735b7 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -4143,10 +4143,8 @@ static const struct intel_wm_funcs nop_funcs =3D {
>=20
>  void i9xx_wm_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	/* For FIFO watermark updates */
> -	if (HAS_PCH_SPLIT(dev_priv)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		ilk_setup_wm_latency(display);
>  		display->funcs.wm =3D &ilk_wm_funcs;
>  	} else if (display->platform.valleyview || display->platform.cherryview=
)
> {
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index ea935a5d94c8..ef07b5488261 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -587,19 +587,17 @@ static void ibx_audio_regs_init(struct intel_displa=
y
> *display,
>  				enum pipe pipe,
>  				struct ibx_audio_regs *regs)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	if (display->platform.valleyview || display->platform.cherryview) {
>  		regs->hdmiw_hdmiedid =3D VLV_HDMIW_HDMIEDID(pipe);
>  		regs->aud_config =3D VLV_AUD_CFG(pipe);
>  		regs->aud_cntl_st =3D VLV_AUD_CNTL_ST(pipe);
>  		regs->aud_cntrl_st2 =3D VLV_AUD_CNTL_ST2;
> -	} else if (HAS_PCH_CPT(i915)) {
> +	} else if (HAS_PCH_CPT(display)) {
>  		regs->hdmiw_hdmiedid =3D CPT_HDMIW_HDMIEDID(pipe);
>  		regs->aud_config =3D CPT_AUD_CFG(pipe);
>  		regs->aud_cntl_st =3D CPT_AUD_CNTL_ST(pipe);
>  		regs->aud_cntrl_st2 =3D CPT_AUD_CNTRL_ST2;
> -	} else if (HAS_PCH_IBX(i915)) {
> +	} else if (HAS_PCH_IBX(display)) {
>  		regs->hdmiw_hdmiedid =3D IBX_HDMIW_HDMIEDID(pipe);
>  		regs->aud_config =3D IBX_AUD_CFG(pipe);
>  		regs->aud_cntl_st =3D IBX_AUD_CNTL_ST(pipe);
> @@ -889,12 +887,10 @@ static const struct intel_audio_funcs
> hsw_audio_funcs =3D {
>   */
>  void intel_audio_hooks_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	if (display->platform.g4x)
>  		display->funcs.audio =3D &g4x_audio_funcs;
>  	else if (display->platform.valleyview || display->platform.cherryview
> ||
> -		 HAS_PCH_CPT(i915) || HAS_PCH_IBX(i915))
> +		 HAS_PCH_CPT(display) || HAS_PCH_IBX(display))
>  		display->funcs.audio =3D &ibx_audio_funcs;
>  	else if (display->platform.haswell || DISPLAY_VER(display) >=3D 8)
>  		display->funcs.audio =3D &hsw_audio_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 4f3fa966c537..5470fee7a707 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -473,7 +473,6 @@ static void lpt_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
>  	struct intel_display *display =3D to_intel_display(connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 pch_ctl1, pch_ctl2;
>=20
> @@ -486,7 +485,7 @@ static void lpt_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  		intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
>  	}
>=20
> -	if (HAS_PCH_LPT(i915))
> +	if (HAS_PCH_LPT(display))
>  		intel_de_rmw(display, SOUTH_CHICKEN2,
> LPT_PWM_GRANULARITY,
>  			     panel->backlight.alternate_pwm_increment ?
>  			     LPT_PWM_GRANULARITY : 0);
> @@ -503,7 +502,7 @@ static void lpt_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  		pch_ctl1 |=3D BLM_PCH_POLARITY;
>=20
>  	/* After LPT, override is the default. */
> -	if (HAS_PCH_LPT(i915))
> +	if (HAS_PCH_LPT(display))
>  		pch_ctl1 |=3D BLM_PCH_OVERRIDE_ENABLE;
>=20
>  	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
> @@ -1064,7 +1063,7 @@ static u32 spt_hz_to_pwm(struct intel_connector
> *connector, u32 pwm_freq_hz)
>   */
>  static u32 lpt_hz_to_pwm(struct intel_connector *connector, u32
> pwm_freq_hz)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 mul, clock;
>=20
> @@ -1073,7 +1072,7 @@ static u32 lpt_hz_to_pwm(struct intel_connector
> *connector, u32 pwm_freq_hz)
>  	else
>  		mul =3D 128;
>=20
> -	if (HAS_PCH_LPT_H(i915))
> +	if (HAS_PCH_LPT_H(display))
>  		clock =3D MHz(135); /* LPT:H */
>  	else
>  		clock =3D MHz(24); /* LPT:LP */
> @@ -1230,12 +1229,11 @@ static u32 get_backlight_min_vbt(struct
> intel_connector *connector)
>  static int lpt_setup_backlight(struct intel_connector *connector, enum p=
ipe
> unused)
>  {
>  	struct intel_display *display =3D to_intel_display(connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 cpu_ctl2, pch_ctl1, pch_ctl2, val;
>  	bool alt, cpu_mode;
>=20
> -	if (HAS_PCH_LPT(i915))
> +	if (HAS_PCH_LPT(display))
>  		alt =3D intel_de_read(display, SOUTH_CHICKEN2) &
> LPT_PWM_GRANULARITY;
>  	else
>  		alt =3D intel_de_read(display, SOUTH_CHICKEN1) &
> SPT_PWM_GRANULARITY;
> @@ -1259,7 +1257,7 @@ static int lpt_setup_backlight(struct
> intel_connector *connector, enum pipe unus
>=20
>  	panel->backlight.pwm_enabled =3D pch_ctl1 &
> BLM_PCH_PWM_ENABLE;
>=20
> -	cpu_mode =3D panel->backlight.pwm_enabled && HAS_PCH_LPT(i915)
> &&
> +	cpu_mode =3D panel->backlight.pwm_enabled &&
> HAS_PCH_LPT(display) &&
>  		   !(pch_ctl1 & BLM_PCH_OVERRIDE_ENABLE) &&
>  		   (cpu_ctl2 & BLM_PWM_ENABLE);
>=20
> @@ -1466,15 +1464,13 @@ bxt_setup_backlight(struct intel_connector
> *connector, enum pipe unused)
>=20
>  static int cnp_num_backlight_controllers(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_MTL)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_MTL)
>  		return 2;
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_DG1)
>  		return 1;
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		return 2;
>=20
>  	return 1;
> @@ -1482,14 +1478,12 @@ static int cnp_num_backlight_controllers(struct
> intel_display *display)
>=20
>  static bool cnp_backlight_controller_is_valid(struct intel_display *disp=
lay, int
> controller)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	if (controller < 0 || controller >=3D
> cnp_num_backlight_controllers(display))
>  		return false;
>=20
>  	if (controller =3D=3D 1 &&
> -	    INTEL_PCH_TYPE(i915) >=3D PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) <=3D PCH_ADP)
> +	    INTEL_PCH_TYPE(display) >=3D PCH_ICP &&
> +	    INTEL_PCH_TYPE(display) <=3D PCH_ADP)
>  		return intel_de_read(display, SOUTH_CHICKEN1) &
> ICP_SECOND_PPS_IO_SELECT;
>=20
>  	return true;
> @@ -1818,7 +1812,6 @@ void intel_backlight_init_funcs(struct intel_panel
> *panel)
>  	struct intel_connector *connector =3D
>  		container_of(panel, struct intel_connector, panel);
>  	struct intel_display *display =3D to_intel_display(connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20
>  	if (connector->base.connector_type =3D=3D
> DRM_MODE_CONNECTOR_DSI &&
>  	    intel_dsi_dcs_init_backlight_funcs(connector) =3D=3D 0)
> @@ -1826,14 +1819,14 @@ void intel_backlight_init_funcs(struct
> intel_panel *panel)
>=20
>  	if (display->platform.geminilake || display->platform.broxton) {
>  		panel->backlight.pwm_funcs =3D &bxt_pwm_funcs;
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP) {
> +	} else if (INTEL_PCH_TYPE(display) >=3D PCH_CNP) {
>  		panel->backlight.pwm_funcs =3D &cnp_pwm_funcs;
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_LPT_H) {
> -		if (HAS_PCH_LPT(i915))
> +	} else if (INTEL_PCH_TYPE(display) >=3D PCH_LPT_H) {
> +		if (HAS_PCH_LPT(display))
>  			panel->backlight.pwm_funcs =3D &lpt_pwm_funcs;
>  		else
>  			panel->backlight.pwm_funcs =3D &spt_pwm_funcs;
> -	} else if (HAS_PCH_SPLIT(i915)) {
> +	} else if (HAS_PCH_SPLIT(display)) {
>  		panel->backlight.pwm_funcs =3D &pch_pwm_funcs;
>  	} else if (display->platform.valleyview || display->platform.cherryview=
)
> {
>  		if (connector->base.connector_type =3D=3D
> DRM_MODE_CONNECTOR_DSI) {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> b/drivers/gpu/drm/i915/display/intel_bios.c
> index 8fe854a45243..ba7b8938b17c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2245,28 +2245,27 @@ static const u8 adlp_ddc_pin_map[] =3D {
>=20
>  static u8 map_ddc_pin(struct intel_display *display, u8 vbt_pin)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	const u8 *ddc_pin_map;
>  	int i, n_entries;
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_MTL || display-
> >platform.alderlake_p) {
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_MTL || display-
> >platform.alderlake_p) {
>  		ddc_pin_map =3D adlp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(adlp_ddc_pin_map);
>  	} else if (display->platform.alderlake_s) {
>  		ddc_pin_map =3D adls_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(adls_ddc_pin_map);
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1) {
> +	} else if (INTEL_PCH_TYPE(display) >=3D PCH_DG1) {
>  		return vbt_pin;
> -	} else if (display->platform.rocketlake && INTEL_PCH_TYPE(i915) =3D=3D
> PCH_TGP) {
> +	} else if (display->platform.rocketlake && INTEL_PCH_TYPE(display) =3D=
=3D
> PCH_TGP) {
>  		ddc_pin_map =3D rkl_pch_tgp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> -	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(display) =3D=3D 9) {
> +	} else if (HAS_PCH_TGP(display) && DISPLAY_VER(display) =3D=3D 9) {
>  		ddc_pin_map =3D gen9bc_tgp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(gen9bc_tgp_ddc_pin_map);
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP) {
> +	} else if (INTEL_PCH_TYPE(display) >=3D PCH_ICP) {
>  		ddc_pin_map =3D icp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(icp_ddc_pin_map);
> -	} else if (HAS_PCH_CNP(i915)) {
> +	} else if (HAS_PCH_CNP(display)) {
>  		ddc_pin_map =3D cnp_ddc_pin_map;
>  		n_entries =3D ARRAY_SIZE(cnp_ddc_pin_map);
>  	} else {
> @@ -2865,8 +2864,6 @@ parse_general_definitions(struct intel_display
> *display)
>  static void
>  init_vbt_defaults(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	display->vbt.crt_ddc_pin =3D GMBUS_PIN_VGADDC;
>=20
>  	/* general features */
> @@ -2883,7 +2880,7 @@ init_vbt_defaults(struct intel_display *display)
>  	 * clock for LVDS.
>  	 */
>  	display->vbt.lvds_ssc_freq =3D intel_bios_ssc_frequency(display,
> -
> !HAS_PCH_SPLIT(i915));
> +
> !HAS_PCH_SPLIT(display));
>  	drm_dbg_kms(display->drm, "Set default to SSC at %d kHz\n",
>  		    display->vbt.lvds_ssc_freq);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 6830950aae3f..b1718b491ffd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3494,7 +3494,6 @@ static int dg1_rawclk(struct intel_display *display=
)
>=20
>  static int cnp_rawclk(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	int divider, fraction;
>  	u32 rawclk;
>=20
> @@ -3514,7 +3513,7 @@ static int cnp_rawclk(struct intel_display *display=
)
>=20
>  		rawclk |=3D
> CNP_RAWCLK_DEN(DIV_ROUND_CLOSEST(numerator * 1000,
>  							   fraction) - 1);
> -		if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> +		if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  			rawclk |=3D ICP_RAWCLK_NUM(numerator);
>  	}
>=20
> @@ -3553,21 +3552,20 @@ static int i9xx_hrawclk(struct intel_display
> *display)
>   */
>  u32 intel_read_rawclk(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 freq;
>=20
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_MTL)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_MTL)
>  		/*
>  		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>  		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
>  		 * not need to be programmed."
>  		 */
>  		freq =3D 38400;
> -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_DG1)
>  		freq =3D dg1_rawclk(display);
> -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_CNP)
>  		freq =3D cnp_rawclk(display);
> -	else if (HAS_PCH_SPLIT(dev_priv))
> +	else if (HAS_PCH_SPLIT(display))
>  		freq =3D pch_rawclk(display);
>  	else if (display->platform.valleyview || display->platform.cherryview)
>  		freq =3D vlv_hrawclk(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c
> b/drivers/gpu/drm/i915/display/intel_crt.c
> index 8908b51dc3b9..415e59405318 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -91,13 +91,12 @@ static struct intel_crt *intel_attached_crt(struct
> intel_connector *connector)
>  bool intel_crt_port_enabled(struct intel_display *display,
>  			    i915_reg_t adpa_reg, enum pipe *pipe)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 val;
>=20
>  	val =3D intel_de_read(display, adpa_reg);
>=20
>  	/* asserts want to know the pipe even if the port is disabled */
> -	if (HAS_PCH_CPT(dev_priv))
> +	if (HAS_PCH_CPT(display))
>  		*pipe =3D REG_FIELD_GET(ADPA_PIPE_SEL_MASK_CPT, val);
>  	else
>  		*pipe =3D REG_FIELD_GET(ADPA_PIPE_SEL_MASK, val);
> @@ -177,7 +176,6 @@ static void intel_crt_set_dpms(struct intel_encoder
> *encoder,
>  			       int mode)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crt *crt =3D intel_encoder_to_crt(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> @@ -194,14 +192,14 @@ static void intel_crt_set_dpms(struct intel_encoder
> *encoder,
>  		adpa |=3D ADPA_VSYNC_ACTIVE_HIGH;
>=20
>  	/* For CPT allow 3 pipe config, for others just use A or B */
> -	if (HAS_PCH_LPT(dev_priv))
> +	if (HAS_PCH_LPT(display))
>  		; /* Those bits don't exist here */
> -	else if (HAS_PCH_CPT(dev_priv))
> +	else if (HAS_PCH_CPT(display))
>  		adpa |=3D ADPA_PIPE_SEL_CPT(crtc->pipe);
>  	else
>  		adpa |=3D ADPA_PIPE_SEL(crtc->pipe);
>=20
> -	if (!HAS_PCH_SPLIT(dev_priv))
> +	if (!HAS_PCH_SPLIT(display))
>  		intel_de_write(display, BCLRPAT(display, crtc->pipe), 0);
>=20
>  	switch (mode) {
> @@ -356,7 +354,6 @@ intel_crt_mode_valid(struct drm_connector
> *connector,
>  		     const struct drm_display_mode *mode)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>  	int max_clock;
> @@ -368,7 +365,7 @@ intel_crt_mode_valid(struct drm_connector
> *connector,
>  	if (mode->clock < 25000)
>  		return MODE_CLOCK_LOW;
>=20
> -	if (HAS_PCH_LPT(dev_priv))
> +	if (HAS_PCH_LPT(display))
>  		max_clock =3D 180000;
>  	else if (display->platform.valleyview)
>  		/*
> @@ -387,7 +384,7 @@ intel_crt_mode_valid(struct drm_connector
> *connector,
>  		return MODE_CLOCK_HIGH;
>=20
>  	/* The FDI receiver on LPT only supports 8bpc and only has 2 lanes. */
> -	if (HAS_PCH_LPT(dev_priv) &&
> +	if (HAS_PCH_LPT(display) &&
>  	    ilk_get_lanes_required(mode->clock, 270000, 24) > 2)
>  		return MODE_CLOCK_HIGH;
>=20
> @@ -438,7 +435,6 @@ static int hsw_crt_compute_config(struct
> intel_encoder *encoder,
>  				  struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>=20
> @@ -457,7 +453,7 @@ static int hsw_crt_compute_config(struct
> intel_encoder *encoder,
>  	crtc_state->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
>=20
>  	/* LPT FDI RX only supports 8bpc. */
> -	if (HAS_PCH_LPT(dev_priv)) {
> +	if (HAS_PCH_LPT(display)) {
>  		/* TODO: Check crtc_state->max_link_bpp_x16 instead of
> bw_constrained */
>  		if (crtc_state->bw_constrained && crtc_state->pipe_bpp < 24)
> {
>  			drm_dbg_kms(display->drm,
> @@ -482,13 +478,12 @@ static bool ilk_crt_detect_hotplug(struct
> drm_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct intel_crt *crt =3D
> intel_attached_crt(to_intel_connector(connector));
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	u32 adpa;
>  	bool ret;
>=20
>  	/* The first time through, trigger an explicit detection cycle */
>  	if (crt->force_hotplug_required) {
> -		bool turn_off_dac =3D HAS_PCH_SPLIT(dev_priv);
> +		bool turn_off_dac =3D HAS_PCH_SPLIT(display);
>  		u32 save_adpa;
>=20
>  		crt->force_hotplug_required =3D false;
> @@ -583,12 +578,11 @@ static bool valleyview_crt_detect_hotplug(struct
> drm_connector *connector)
>  static bool intel_crt_detect_hotplug(struct drm_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	u32 stat;
>  	bool ret =3D false;
>  	int i, tries =3D 0;
>=20
> -	if (HAS_PCH_SPLIT(dev_priv))
> +	if (HAS_PCH_SPLIT(display))
>  		return ilk_crt_detect_hotplug(connector);
>=20
>  	if (display->platform.valleyview)
> @@ -1011,14 +1005,13 @@ static const struct drm_encoder_funcs
> intel_crt_enc_funcs =3D {
>=20
>  void intel_crt_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_connector *connector;
>  	struct intel_crt *crt;
>  	i915_reg_t adpa_reg;
>  	u8 ddc_pin;
>  	u32 adpa;
>=20
> -	if (HAS_PCH_SPLIT(dev_priv))
> +	if (HAS_PCH_SPLIT(display))
>  		adpa_reg =3D PCH_ADPA;
>  	else if (display->platform.valleyview)
>  		adpa_reg =3D VLV_ADPA;
> @@ -1108,7 +1101,7 @@ void intel_crt_init(struct intel_display *display)
>=20
>  		intel_ddi_buf_trans_init(&crt->base);
>  	} else {
> -		if (HAS_PCH_SPLIT(dev_priv)) {
> +		if (HAS_PCH_SPLIT(display)) {
>  			crt->base.compute_config =3D pch_crt_compute_config;
>  			crt->base.disable =3D pch_disable_crt;
>  			crt->base.post_disable =3D pch_post_disable_crt;
> @@ -1130,7 +1123,7 @@ void intel_crt_init(struct intel_display *display)
>  	 * polarity and link reversal bits or not, instead of relying on the
>  	 * BIOS.
>  	 */
> -	if (HAS_PCH_LPT(dev_priv)) {
> +	if (HAS_PCH_LPT(display)) {
>  		u32 fdi_config =3D FDI_RX_POLARITY_REVERSED_LPT |
>  				 FDI_RX_LINK_REVERSAL_OVERRIDE;
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index b48ed5df7a96..99142b8cf569 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4902,9 +4902,7 @@ static enum hpd_pin tgl_hpd_pin(struct
> intel_display *display, enum port port)
>=20
>  static enum hpd_pin rkl_hpd_pin(struct intel_display *display, enum port
> port)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
> -	if (HAS_PCH_TGP(dev_priv))
> +	if (HAS_PCH_TGP(display))
>  		return tgl_hpd_pin(display, port);
>=20
>  	if (port >=3D PORT_TC1)
> @@ -4923,12 +4921,10 @@ static enum hpd_pin icl_hpd_pin(struct
> intel_display *display, enum port port)
>=20
>  static enum hpd_pin ehl_hpd_pin(struct intel_display *display, enum port
> port)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (port =3D=3D PORT_D)
>  		return HPD_PORT_A;
>=20
> -	if (HAS_PCH_TGP(dev_priv))
> +	if (HAS_PCH_TGP(display))
>  		return icl_hpd_pin(display, port);
>=20
>  	return HPD_PORT_A + port - PORT_A;
> @@ -4936,9 +4932,7 @@ static enum hpd_pin ehl_hpd_pin(struct
> intel_display *display, enum port port)
>=20
>  static enum hpd_pin skl_hpd_pin(struct intel_display *display, enum port
> port)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
> -	if (HAS_PCH_TGP(dev_priv))
> +	if (HAS_PCH_TGP(display))
>  		return icl_hpd_pin(display, port);
>=20
>  	return HPD_PORT_A + port - PORT_A;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 33c09999c42e..9c966bbbfd31 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1509,7 +1509,6 @@ static void ilk_crtc_enable(struct
> intel_atomic_state *state,
>  	struct intel_display *display =3D to_intel_display(crtc);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20
>  	if (drm_WARN_ON(display->drm, crtc->active))
> @@ -1561,7 +1560,7 @@ static void ilk_crtc_enable(struct
> intel_atomic_state *state,
>=20
>  	intel_encoders_enable(state, crtc);
>=20
> -	if (HAS_PCH_CPT(dev_priv))
> +	if (HAS_PCH_CPT(display))
>  		intel_wait_for_pipe_scanline_moving(crtc);
>=20
>  	/*
> @@ -2533,15 +2532,13 @@ intel_link_compute_m_n(u16
> bits_per_pixel_x16, int nlanes,
>=20
>  void intel_panel_sanitize_ssc(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	/*
>  	 * There may be no VBT; and if the BIOS enabled SSC we can
>  	 * just keep using it to avoid unnecessary flicker.  Whereas if the
>  	 * BIOS isn't using it, don't assume it will work even if the VBT
>  	 * indicates as much.
>  	 */
> -	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_IBX(display) || HAS_PCH_CPT(display)) {
>  		bool bios_lvds_use_ssc =3D intel_de_read(display,
>  						       PCH_DREF_CONTROL) &
>  			DREF_SSC1_ENABLE;
> @@ -6546,7 +6543,6 @@ static void intel_pipe_fastset(const struct
> intel_crtc_state *old_crtc_state,
>  {
>  	struct intel_display *display =3D to_intel_display(new_crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20
>  	/*
>  	 * Update pipe size and adjust fitter if needed: the reason for this is
> @@ -6562,7 +6558,7 @@ static void intel_pipe_fastset(const struct
> intel_crtc_state *old_crtc_state,
>  	if (DISPLAY_VER(display) >=3D 9) {
>  		if (new_crtc_state->pch_pfit.enabled)
>  			skl_pfit_enable(new_crtc_state);
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +	} else if (HAS_PCH_SPLIT(display)) {
>  		if (new_crtc_state->pch_pfit.enabled)
>  			ilk_pfit_enable(new_crtc_state);
>  		else if (old_crtc_state->pch_pfit.enabled)
> @@ -7638,15 +7634,13 @@ static bool ilk_has_edp_a(struct intel_display
> *display)
>=20
>  static bool intel_ddi_crt_present(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) >=3D 9)
>  		return false;
>=20
>  	if (display->platform.haswell_ult || display->platform.broadwell_ult)
>  		return false;
>=20
> -	if (HAS_PCH_LPT_H(dev_priv) &&
> +	if (HAS_PCH_LPT_H(display) &&
>  	    intel_de_read(display, SFUSE_STRAP) &
> SFUSE_STRAP_CRT_DISABLED)
>  		return false;
>=20
> @@ -7668,7 +7662,6 @@ bool assert_port_valid(struct intel_display
> *display, enum port port)
>=20
>  void intel_setup_outputs(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  	bool dpd_is_edp =3D false;
>=20
> @@ -7685,7 +7678,7 @@ void intel_setup_outputs(struct intel_display
> *display)
>=20
>  		if (display->platform.geminilake || display->platform.broxton)
>  			vlv_dsi_init(display);
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +	} else if (HAS_PCH_SPLIT(display)) {
>  		int found;
>=20
>  		/*
> @@ -8053,13 +8046,11 @@ static const struct intel_display_funcs
> i9xx_display_funcs =3D {
>   */
>  void intel_init_display_hooks(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) >=3D 9) {
>  		display->funcs.display =3D &skl_display_funcs;
>  	} else if (HAS_DDI(display)) {
>  		display->funcs.display =3D &ddi_display_funcs;
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +	} else if (HAS_PCH_SPLIT(display)) {
>  		display->funcs.display =3D &pch_split_display_funcs;
>  	} else if (display->platform.cherryview ||
>  		   display->platform.valleyview) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 3f7c605d47d3..957c9a579a18 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -53,10 +53,9 @@ static struct intel_display
> *node_to_intel_display(struct drm_info_node *node)
>  static int intel_display_caps(struct seq_file *m, void *data)
>  {
>  	struct intel_display *display =3D node_to_intel_display(m->private);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct drm_printer p =3D drm_seq_file_printer(m);
>=20
> -	drm_printf(&p, "PCH type: %d\n", INTEL_PCH_TYPE(i915));
> +	drm_printf(&p, "PCH type: %d\n", INTEL_PCH_TYPE(display));
>=20
>  	intel_display_device_info_print(DISPLAY_INFO(display),
>  					DISPLAY_RUNTIME_INFO(display),
> &p);
> @@ -85,7 +84,6 @@ static int i915_frontbuffer_tracking(struct seq_file *m=
,
> void *unused)
>  static int i915_sr_status(struct seq_file *m, void *unused)
>  {
>  	struct intel_display *display =3D node_to_intel_display(m->private);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	intel_wakeref_t wakeref;
>  	bool sr_enabled =3D false;
>=20
> @@ -93,7 +91,7 @@ static int i915_sr_status(struct seq_file *m, void
> *unused)
>=20
>  	if (DISPLAY_VER(display) >=3D 9)
>  		/* no global SR status; inspect per-plane WM */;
> -	else if (HAS_PCH_SPLIT(dev_priv))
> +	else if (HAS_PCH_SPLIT(display))
>  		sr_enabled =3D intel_de_read(display, WM1_LP_ILK) &
> WM_LP_ENABLE;
>  	else if (display->platform.i965gm || display->platform.g4x ||
>  		 display->platform.i945g || display->platform.i945gm)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 738ae522c8f4..61f76487397a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1711,7 +1711,6 @@ void intel_display_device_remove(struct
> intel_display *display)
>=20
>  static void __intel_display_device_info_runtime_init(struct intel_displa=
y
> *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_display_runtime_info *display_runtime =3D
> DISPLAY_RUNTIME_INFO(display);
>  	enum pipe pipe;
>=20
> @@ -1775,7 +1774,7 @@ static void
> __intel_display_device_info_runtime_init(struct intel_display *displ
>  		goto display_fused_off;
>  	}
>=20
> -	if (IS_DISPLAY_VER(display, 7, 8) && HAS_PCH_SPLIT(i915)) {
> +	if (IS_DISPLAY_VER(display, 7, 8) && HAS_PCH_SPLIT(display)) {
>  		u32 fuse_strap =3D intel_de_read(display, FUSE_STRAP);
>  		u32 sfuse_strap =3D intel_de_read(display, SFUSE_STRAP);
>=20
> @@ -1790,7 +1789,7 @@ static void
> __intel_display_device_info_runtime_init(struct intel_display *displ
>  		 */
>  		if (fuse_strap & ILK_INTERNAL_DISPLAY_DISABLE ||
>  		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
> -		    (HAS_PCH_CPT(i915) &&
> +		    (HAS_PCH_CPT(display) &&
>  		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
>  			drm_info(display->drm,
>  				 "Display fused off, disabling\n");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index d28ad70a3538..2e34af6e40f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -879,7 +879,7 @@ static void ilk_gtt_fault_irq_handler(struct
> intel_display *display)
>=20
>  void ilk_display_irq_handler(struct intel_display *display, u32 de_iir)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	struct drm_i915_private __maybe_unused *dev_priv =3D
> to_i915(display->drm);
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG;
>=20
> @@ -916,7 +916,7 @@ void ilk_display_irq_handler(struct intel_display
> *display, u32 de_iir)
>  	if (de_iir & DE_PCH_EVENT) {
>  		u32 pch_iir =3D intel_de_read(display, SDEIIR);
>=20
> -		if (HAS_PCH_CPT(dev_priv))
> +		if (HAS_PCH_CPT(display))
>  			cpt_irq_handler(display, pch_iir);
>  		else
>  			ibx_irq_handler(display, pch_iir);
> @@ -931,7 +931,6 @@ void ilk_display_irq_handler(struct intel_display
> *display, u32 de_iir)
>=20
>  void ivb_display_irq_handler(struct intel_display *display, u32 de_iir)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>  	u32 hotplug_trigger =3D de_iir & DE_DP_A_HOTPLUG_IVB;
>=20
> @@ -969,7 +968,7 @@ void ivb_display_irq_handler(struct intel_display
> *display, u32 de_iir)
>  	}
>=20
>  	/* check event from PCH */
> -	if (!HAS_PCH_NOP(dev_priv) && (de_iir & DE_PCH_EVENT_IVB)) {
> +	if (!HAS_PCH_NOP(display) && (de_iir & DE_PCH_EVENT_IVB)) {
>  		u32 pch_iir =3D intel_de_read(display, SDEIIR);
>=20
>  		cpt_irq_handler(display, pch_iir);
> @@ -1311,7 +1310,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct
> intel_display *display)
>=20
>  static void gen8_read_and_ack_pch_irqs(struct intel_display *display, u3=
2
> *pch_iir, u32 *pica_iir)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 pica_ier =3D 0;
>=20
>  	*pica_iir =3D 0;
> @@ -1325,7 +1323,7 @@ static void gen8_read_and_ack_pch_irqs(struct
> intel_display *display, u32 *pch_i
>  	 * their flags both in the PICA and SDE IIR.
>  	 */
>  	if (*pch_iir & SDE_PICAINTERRUPT) {
> -		drm_WARN_ON(display->drm, INTEL_PCH_TYPE(i915) <
> PCH_MTL);
> +		drm_WARN_ON(display->drm, INTEL_PCH_TYPE(display) <
> PCH_MTL);
>=20
>  		pica_ier =3D intel_de_rmw(display, PICAINTERRUPT_IER, ~0, 0);
>  		*pica_iir =3D intel_de_read(display, PICAINTERRUPT_IIR);
> @@ -1340,7 +1338,6 @@ static void gen8_read_and_ack_pch_irqs(struct
> intel_display *display, u32 *pch_i
>=20
>  void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 iir;
>  	enum pipe pipe;
>=20
> @@ -1465,7 +1462,7 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>  						     pipe, fault_errors);
>  	}
>=20
> -	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
> +	if (HAS_PCH_SPLIT(display) && !HAS_PCH_NOP(display) &&
>  	    master_ctl & GEN8_DE_PCH_IRQ) {
>  		u32 pica_iir;
>=20
> @@ -1479,9 +1476,9 @@ void gen8_de_irq_handler(struct intel_display
> *display, u32 master_ctl)
>  			if (pica_iir)
>  				xelpdp_pica_irq_handler(display, pica_iir);
>=20
> -			if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> +			if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  				icp_irq_handler(display, iir);
> -			else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_SPT)
> +			else if (INTEL_PCH_TYPE(display) >=3D PCH_SPT)
>  				spt_irq_handler(display, iir);
>  			else
>  				cpt_irq_handler(display, iir);
> @@ -1998,7 +1995,6 @@ void gen8_display_irq_reset(struct intel_display
> *display)
>=20
>  void gen11_display_irq_reset(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe;
>  	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
> @@ -2043,7 +2039,7 @@ void gen11_display_irq_reset(struct intel_display
> *display)
>  	else
>  		intel_display_irq_regs_reset(display,
> GEN11_DE_HPD_IRQ_REGS);
>=20
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		intel_display_irq_regs_reset(display, SDE_IRQ_REGS);
>  }
>=20
> @@ -2105,15 +2101,14 @@ void gen8_irq_power_well_pre_disable(struct
> intel_display *display,
>   */
>  static void ibx_irq_postinstall(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 mask;
>=20
> -	if (HAS_PCH_NOP(dev_priv))
> +	if (HAS_PCH_NOP(display))
>  		return;
>=20
> -	if (HAS_PCH_IBX(dev_priv))
> +	if (HAS_PCH_IBX(display))
>  		mask =3D SDE_GMBUS | SDE_AUX_MASK | SDE_POISON;
> -	else if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
> +	else if (HAS_PCH_CPT(display) || HAS_PCH_LPT(display))
>  		mask =3D SDE_GMBUS_CPT | SDE_AUX_MASK_CPT;
>  	else
>  		mask =3D SDE_GMBUS_CPT;
> @@ -2201,8 +2196,6 @@ static void icp_irq_postinstall(struct intel_displa=
y
> *display);
>=20
>  void gen8_de_irq_postinstall(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(display) |
>  		GEN8_PIPE_CDCLK_CRC_DONE;
>  	u32 de_pipe_enables;
> @@ -2218,9 +2211,9 @@ void gen8_de_irq_postinstall(struct intel_display
> *display)
>=20
>  	if (DISPLAY_VER(display) >=3D 14)
>  		mtp_irq_postinstall(display);
> -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		icp_irq_postinstall(display);
> -	else if (HAS_PCH_SPLIT(dev_priv))
> +	else if (HAS_PCH_SPLIT(display))
>  		ibx_irq_postinstall(display);
>=20
>  	if (DISPLAY_VER(display) < 11)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index c78315eb44fa..77f26d9856fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1365,11 +1365,9 @@ static void hsw_restore_lcpll(struct intel_display
> *display)
>   */
>  static void hsw_enable_pc8(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	drm_dbg_kms(display->drm, "Enabling package C8+\n");
>=20
> -	if (HAS_PCH_LPT_LP(dev_priv))
> +	if (HAS_PCH_LPT_LP(display))
>  		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
>  			     PCH_LP_PARTITION_LEVEL_DISABLE, 0);
>=20
> @@ -1415,14 +1413,13 @@ static void intel_pch_reset_handshake(struct
> intel_display *display,
>  static void skl_display_core_init(struct intel_display *display,
>  				  bool resume)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct i915_power_domains *power_domains =3D &display-
> >power.domains;
>  	struct i915_power_well *well;
>=20
>  	gen9_set_dc_state(display, DC_STATE_DISABLE);
>=20
>  	/* enable PCH reset handshake */
> -	intel_pch_reset_handshake(display, !HAS_PCH_NOP(dev_priv));
> +	intel_pch_reset_handshake(display, !HAS_PCH_NOP(display));
>=20
>  	if (!HAS_DISPLAY(display))
>  		return;
> @@ -1624,20 +1621,19 @@ static void tgl_bw_buddy_init(struct
> intel_display *display)
>  static void icl_display_core_init(struct intel_display *display,
>  				  bool resume)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct i915_power_domains *power_domains =3D &display-
> >power.domains;
>  	struct i915_power_well *well;
>=20
>  	gen9_set_dc_state(display, DC_STATE_DISABLE);
>=20
>  	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP &&
> -	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_TGP &&
> +	    INTEL_PCH_TYPE(display) < PCH_DG1)
>  		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D, 0,
>  			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
>=20
>  	/* 1. Enable PCH reset handshake. */
> -	intel_pch_reset_handshake(display, !HAS_PCH_NOP(dev_priv));
> +	intel_pch_reset_handshake(display, !HAS_PCH_NOP(display));
>=20
>  	if (!HAS_DISPLAY(display))
>  		return;
> @@ -1908,7 +1904,6 @@ static void
> intel_power_domains_verify_state(struct intel_display *display);
>   */
>  void intel_power_domains_init_hw(struct intel_display *display, bool
> resume)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct i915_power_domains *power_domains =3D &display-
> >power.domains;
>=20
>  	power_domains->initializing =3D true;
> @@ -1932,9 +1927,9 @@ void intel_power_domains_init_hw(struct
> intel_display *display, bool resume)
>  		assert_isp_power_gated(display);
>  	} else if (display->platform.broadwell || display->platform.haswell) {
>  		hsw_assert_cdclk(display);
> -		intel_pch_reset_handshake(display, !HAS_PCH_NOP(i915));
> +		intel_pch_reset_handshake(display,
> !HAS_PCH_NOP(display));
>  	} else if (display->platform.ivybridge) {
> -		intel_pch_reset_handshake(display, !HAS_PCH_NOP(i915));
> +		intel_pch_reset_handshake(display,
> !HAS_PCH_NOP(display));
>  	}
>=20
>  	/*
> @@ -2229,8 +2224,6 @@ static void
> intel_power_domains_verify_state(struct intel_display *display)
>=20
>  void intel_display_power_suspend_late(struct intel_display *display, boo=
l
> s2idle)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	intel_power_domains_suspend(display, s2idle);
>=20
>  	if (DISPLAY_VER(display) >=3D 11 || display->platform.geminilake ||
> @@ -2241,14 +2234,12 @@ void intel_display_power_suspend_late(struct
> intel_display *display, bool s2idle
>  	}
>=20
>  	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP && INTEL_PCH_TYPE(i915) <
> PCH_DG1)
> -		intel_de_rmw(i915, SOUTH_CHICKEN1,
> SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_CNP &&
> INTEL_PCH_TYPE(display) < PCH_DG1)
> +		intel_de_rmw(display, SOUTH_CHICKEN1,
> SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
>  }
>=20
>  void intel_display_power_resume_early(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) >=3D 11 || display->platform.geminilake ||
>  	    display->platform.broxton) {
>  		gen9_sanitize_dc_state(display);
> @@ -2258,8 +2249,8 @@ void intel_display_power_resume_early(struct
> intel_display *display)
>  	}
>=20
>  	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP && INTEL_PCH_TYPE(i915) <
> PCH_DG1)
> -		intel_de_rmw(i915, SOUTH_CHICKEN1,
> SBCLK_RUN_REFCLK_DIS, 0);
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_CNP &&
> INTEL_PCH_TYPE(display) < PCH_DG1)
> +		intel_de_rmw(display, SOUTH_CHICKEN1,
> SBCLK_RUN_REFCLK_DIS, 0);
>=20
>  	intel_power_domains_resume(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d7a30d0992b7..660b1a8c39a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6344,7 +6344,6 @@ static bool intel_edp_init_connector(struct
> intel_dp *intel_dp,
>  				     struct intel_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct drm_display_mode *fixed_mode;
>  	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
>  	bool has_dpcd;
> @@ -6361,7 +6360,7 @@ static bool intel_edp_init_connector(struct
> intel_dp *intel_dp,
>  	 */
>  	if (intel_get_lvds_encoder(display)) {
>  		drm_WARN_ON(display->drm,
> -			    !(HAS_PCH_IBX(dev_priv) ||
> HAS_PCH_CPT(dev_priv)));
> +			    !(HAS_PCH_IBX(display) ||
> HAS_PCH_CPT(display)));
>  		drm_info(display->drm,
>  			 "LVDS was detected, not registering eDP\n");
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 3245a15935db..b6ef2116164c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -111,10 +111,9 @@ static u32 ilk_get_aux_clock_divider(struct intel_dp
> *intel_dp, int index)
>  static u32 hsw_get_aux_clock_divider(struct intel_dp *intel_dp, int inde=
x)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>=20
> -	if (dig_port->aux_ch !=3D AUX_CH_A && HAS_PCH_LPT_H(i915)) {
> +	if (dig_port->aux_ch !=3D AUX_CH_A && HAS_PCH_LPT_H(display)) {
>  		/* Workaround for non-ULT HSW */
>  		switch (index) {
>  		case 0: return 63;
> @@ -785,7 +784,6 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
>  void intel_dp_aux_init(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder =3D &dig_port->base;
>  	enum aux_ch aux_ch =3D dig_port->aux_ch;
> @@ -800,7 +798,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  	} else if (DISPLAY_VER(display) >=3D 9) {
>  		intel_dp->aux_ch_ctl_reg =3D skl_aux_ctl_reg;
>  		intel_dp->aux_ch_data_reg =3D skl_aux_data_reg;
> -	} else if (HAS_PCH_SPLIT(i915)) {
> +	} else if (HAS_PCH_SPLIT(display)) {
>  		intel_dp->aux_ch_ctl_reg =3D ilk_aux_ctl_reg;
>  		intel_dp->aux_ch_data_reg =3D ilk_aux_data_reg;
>  	} else if (display->platform.valleyview || display->platform.cherryview=
)
> {
> @@ -815,7 +813,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  		intel_dp->get_aux_clock_divider =3D skl_get_aux_clock_divider;
>  	else if (display->platform.broadwell || display->platform.haswell)
>  		intel_dp->get_aux_clock_divider =3D hsw_get_aux_clock_divider;
> -	else if (HAS_PCH_SPLIT(i915))
> +	else if (HAS_PCH_SPLIT(display))
>  		intel_dp->get_aux_clock_divider =3D ilk_get_aux_clock_divider;
>  	else
>  		intel_dp->get_aux_clock_divider =3D g4x_get_aux_clock_divider;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 0481b1365b85..a9e9b98d0bf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -374,12 +374,11 @@ int chv_calc_dpll_params(int refclk, struct dpll
> *clock)
>  static int i9xx_pll_refclk(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
>  	const struct i9xx_dpll_hw_state *hw_state =3D &crtc_state-
> >dpll_hw_state.i9xx;
>=20
>  	if ((hw_state->dpll & PLL_REF_INPUT_MASK) =3D=3D
> PLLB_REF_INPUT_SPREADSPECTRUMIN)
>  		return display->vbt.lvds_ssc_freq;
> -	else if (HAS_PCH_SPLIT(i915))
> +	else if (HAS_PCH_SPLIT(display))
>  		return 120000;
>  	else if (DISPLAY_VER(display) !=3D 2)
>  		return 96000;
> @@ -1235,12 +1234,10 @@ static int mtl_crtc_compute_clock(struct
> intel_atomic_state *state,
>  static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
>  	    ((intel_panel_use_ssc(display) && display->vbt.lvds_ssc_freq =3D=3D
> 100000) ||
> -	     (HAS_PCH_IBX(i915) && intel_is_dual_link_lvds(display))))
> +	     (HAS_PCH_IBX(display) && intel_is_dual_link_lvds(display))))
>  		return 25;
>=20
>  	if (crtc_state->sdvo_tv_clock)
> @@ -1791,15 +1788,13 @@ int intel_dpll_crtc_get_shared_dpll(struct
> intel_atomic_state *state,
>  void
>  intel_dpll_init_clock_hook(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) >=3D 14)
>  		display->funcs.dpll =3D &mtl_dpll_funcs;
>  	else if (display->platform.dg2)
>  		display->funcs.dpll =3D &dg2_dpll_funcs;
>  	else if (DISPLAY_VER(display) >=3D 9 || HAS_DDI(display))
>  		display->funcs.dpll =3D &hsw_dpll_funcs;
> -	else if (HAS_PCH_SPLIT(dev_priv))
> +	else if (HAS_PCH_SPLIT(display))
>  		display->funcs.dpll =3D &ilk_dpll_funcs;
>  	else if (display->platform.cherryview)
>  		display->funcs.dpll =3D &chv_dpll_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 84df41086a89..c2f08b2ee455 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -609,13 +609,12 @@ static int ibx_get_dpll(struct intel_atomic_state
> *state,
>  			struct intel_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(state);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_shared_dpll *pll;
>  	enum intel_dpll_id id;
>=20
> -	if (HAS_PCH_IBX(i915)) {
> +	if (HAS_PCH_IBX(display)) {
>  		/* Ironlake PCH has a fixed PLL->PCH pipe mapping. */
>  		id =3D (enum intel_dpll_id) crtc->pipe;
>  		pll =3D intel_get_shared_dpll_by_id(display, id);
> @@ -4305,7 +4304,6 @@ static const struct intel_dpll_mgr adlp_pll_mgr =3D=
 {
>   */
>  void intel_shared_dpll_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	const struct intel_dpll_mgr *dpll_mgr =3D NULL;
>  	const struct dpll_info *dpll_info;
>  	int i;
> @@ -4335,7 +4333,7 @@ void intel_shared_dpll_init(struct intel_display
> *display)
>  		dpll_mgr =3D &skl_pll_mgr;
>  	else if (HAS_DDI(display))
>  		dpll_mgr =3D &hsw_pll_mgr;
> -	else if (HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915))
> +	else if (HAS_PCH_IBX(display) || HAS_PCH_CPT(display))
>  		dpll_mgr =3D &pch_pll_mgr;
>=20
>  	if (!dpll_mgr)
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c
> b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 40deee0769ae..db68c20947ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -464,7 +464,6 @@ static void ivb_update_fdi_bc_bifurcation(const
> struct intel_crtc_state *crtc_st
>  void intel_fdi_normal_train(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe =3D crtc->pipe;
>  	i915_reg_t reg;
>  	u32 temp;
> @@ -483,7 +482,7 @@ void intel_fdi_normal_train(struct intel_crtc *crtc)
>=20
>  	reg =3D FDI_RX_CTL(pipe);
>  	temp =3D intel_de_read(display, reg);
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(display)) {
>  		temp &=3D ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
>  		temp |=3D FDI_LINK_TRAIN_NORMAL_CPT;
>  	} else {
> @@ -607,7 +606,6 @@ static void gen6_fdi_link_train(struct intel_crtc *cr=
tc,
>  				const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe pipe =3D crtc->pipe;
>  	i915_reg_t reg;
>  	u32 temp, i, retry;
> @@ -647,7 +645,7 @@ static void gen6_fdi_link_train(struct intel_crtc *cr=
tc,
>=20
>  	reg =3D FDI_RX_CTL(pipe);
>  	temp =3D intel_de_read(display, reg);
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(display)) {
>  		temp &=3D ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
>  		temp |=3D FDI_LINK_TRAIN_PATTERN_1_CPT;
>  	} else {
> @@ -698,7 +696,7 @@ static void gen6_fdi_link_train(struct intel_crtc *cr=
tc,
>=20
>  	reg =3D FDI_RX_CTL(pipe);
>  	temp =3D intel_de_read(display, reg);
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(display)) {
>  		temp &=3D ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
>  		temp |=3D FDI_LINK_TRAIN_PATTERN_2_CPT;
>  	} else {
> @@ -1077,7 +1075,6 @@ void ilk_fdi_pll_disable(struct intel_crtc *crtc)
>  void ilk_fdi_disable(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>  	i915_reg_t reg;
>  	u32 temp;
> @@ -1096,7 +1093,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
>  	udelay(100);
>=20
>  	/* Ironlake workaround, disable clock pointer after downing FDI */
> -	if (HAS_PCH_IBX(dev_priv))
> +	if (HAS_PCH_IBX(display))
>  		intel_de_write(display, FDI_RX_CHICKEN(pipe),
>  			       FDI_RX_PHASE_SYNC_POINTER_OVR);
>=20
> @@ -1106,7 +1103,7 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
>=20
>  	reg =3D FDI_RX_CTL(pipe);
>  	temp =3D intel_de_read(display, reg);
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(display)) {
>  		temp &=3D ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
>  		temp |=3D FDI_LINK_TRAIN_PATTERN_1_CPT;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 451cd26024f7..7c7cd29b0944 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -346,7 +346,7 @@ bool intel_set_pch_fifo_underrun_reporting(struct
> intel_display *display,
>  	old =3D !crtc->pch_fifo_underrun_disabled;
>  	crtc->pch_fifo_underrun_disabled =3D !enable;
>=20
> -	if (HAS_PCH_IBX(dev_priv))
> +	if (HAS_PCH_IBX(display))
>  		ibx_set_fifo_underrun_reporting(display,
>  						pch_transcoder,
>  						enable);
> @@ -459,7 +459,7 @@ void intel_check_pch_fifo_underruns(struct
> intel_display *display)
>  		if (crtc->pch_fifo_underrun_disabled)
>  			continue;
>=20
> -		if (HAS_PCH_CPT(dev_priv))
> +		if (HAS_PCH_CPT(display))
>  			cpt_check_pch_fifo_underruns(crtc);
>  	}
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c
> b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 2a530bf35ebb..d55cc77650b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -152,23 +152,22 @@ static const struct gmbus_pin gmbus_pins_mtp[] =3D
> {
>  static const struct gmbus_pin *get_gmbus_pin(struct intel_display *displ=
ay,
>  					     unsigned int pin)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	const struct gmbus_pin *pins;
>  	size_t size;
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_MTL) {
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_MTL) {
>  		pins =3D gmbus_pins_mtp;
>  		size =3D ARRAY_SIZE(gmbus_pins_mtp);
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_DG2) {
> +	} else if (INTEL_PCH_TYPE(display) >=3D PCH_DG2) {
>  		pins =3D gmbus_pins_dg2;
>  		size =3D ARRAY_SIZE(gmbus_pins_dg2);
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1) {
> +	} else if (INTEL_PCH_TYPE(display) >=3D PCH_DG1) {
>  		pins =3D gmbus_pins_dg1;
>  		size =3D ARRAY_SIZE(gmbus_pins_dg1);
> -	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP) {
> +	} else if (INTEL_PCH_TYPE(display) >=3D PCH_ICP) {
>  		pins =3D gmbus_pins_icp;
>  		size =3D ARRAY_SIZE(gmbus_pins_icp);
> -	} else if (HAS_PCH_CNP(i915)) {
> +	} else if (HAS_PCH_CNP(display)) {
>  		pins =3D gmbus_pins_cnp;
>  		size =3D ARRAY_SIZE(gmbus_pins_cnp);
>  	} else if (display->platform.geminilake || display->platform.broxton) {
> @@ -627,14 +626,13 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct
> i2c_msg *msgs, int num,
>  {
>  	struct intel_gmbus *bus =3D to_intel_gmbus(adapter);
>  	struct intel_display *display =3D bus->display;
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	int i =3D 0, inc, try =3D 0;
>  	int ret =3D 0;
>=20
>  	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
>  	if (display->platform.geminilake || display->platform.broxton)
>  		bxt_gmbus_clock_gating(display, false);
> -	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
> +	else if (HAS_PCH_SPT(display) || HAS_PCH_CNP(display))
>  		pch_gmbus_clock_gating(display, false);
>=20
>  retry:
> @@ -747,7 +745,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct
> i2c_msg *msgs, int num,
>  	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
>  	if (display->platform.geminilake || display->platform.broxton)
>  		bxt_gmbus_clock_gating(display, true);
> -	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
> +	else if (HAS_PCH_SPT(display) || HAS_PCH_CNP(display))
>  		pch_gmbus_clock_gating(display, true);
>=20
>  	return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 120c63dfdd02..e08c01e5b9d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -979,7 +979,6 @@ static bool intel_hdmi_set_gcp_infoframe(struct
> intel_encoder *encoder,
>  					 const struct drm_connector_state
> *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	i915_reg_t reg;
>=20
> @@ -991,7 +990,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct
> intel_encoder *encoder,
>  		reg =3D HSW_TVIDEO_DIP_GCP(display, crtc_state-
> >cpu_transcoder);
>  	else if (display->platform.valleyview || display->platform.cherryview)
>  		reg =3D VLV_TVIDEO_DIP_GCP(crtc->pipe);
> -	else if (HAS_PCH_SPLIT(dev_priv))
> +	else if (HAS_PCH_SPLIT(display))
>  		reg =3D TVIDEO_DIP_GCP(crtc->pipe);
>  	else
>  		return false;
> @@ -1005,7 +1004,6 @@ void intel_hdmi_read_gcp_infoframe(struct
> intel_encoder *encoder,
>  				   struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	i915_reg_t reg;
>=20
> @@ -1017,7 +1015,7 @@ void intel_hdmi_read_gcp_infoframe(struct
> intel_encoder *encoder,
>  		reg =3D HSW_TVIDEO_DIP_GCP(display, crtc_state-
> >cpu_transcoder);
>  	else if (display->platform.valleyview || display->platform.cherryview)
>  		reg =3D VLV_TVIDEO_DIP_GCP(crtc->pipe);
> -	else if (HAS_PCH_SPLIT(dev_priv))
> +	else if (HAS_PCH_SPLIT(display))
>  		reg =3D TVIDEO_DIP_GCP(crtc->pipe);
>  	else
>  		return;
> @@ -2807,7 +2805,7 @@ static u8 mcc_encoder_to_ddc_pin(struct
> intel_encoder *encoder)
>=20
>  static u8 rkl_encoder_to_ddc_pin(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>=20
>  	WARN_ON(encoder->port =3D=3D PORT_C);
> @@ -2818,7 +2816,7 @@ static u8 rkl_encoder_to_ddc_pin(struct
> intel_encoder *encoder)
>  	 * combo outputs.  With CMP, the traditional DDI A-D pins are used for
>  	 * all outputs.
>  	 */
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_TGP && phy >=3D PHY_C)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_TGP && phy >=3D PHY_C)
>  		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
>=20
>  	return GMBUS_PIN_1_BXT + phy;
> @@ -2827,7 +2825,6 @@ static u8 rkl_encoder_to_ddc_pin(struct
> intel_encoder *encoder)
>  static u8 gen9bc_tgp_encoder_to_ddc_pin(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_encoder_to_phy(encoder);
>=20
>  	drm_WARN_ON(display->drm, encoder->port =3D=3D PORT_A);
> @@ -2838,7 +2835,7 @@ static u8 gen9bc_tgp_encoder_to_ddc_pin(struct
> intel_encoder *encoder)
>  	 * combo outputs.  With CMP, the traditional DDI A-D pins are used for
>  	 * all outputs.
>  	 */
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_TGP && phy >=3D PHY_C)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_TGP && phy >=3D PHY_C)
>  		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
>=20
>  	return GMBUS_PIN_1_BXT + phy;
> @@ -2891,23 +2888,22 @@ static u8 g4x_encoder_to_ddc_pin(struct
> intel_encoder *encoder)
>  static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	u8 ddc_pin;
>=20
>  	if (display->platform.alderlake_s)
>  		ddc_pin =3D adls_encoder_to_ddc_pin(encoder);
> -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_DG1)
>  		ddc_pin =3D dg1_encoder_to_ddc_pin(encoder);
>  	else if (display->platform.rocketlake)
>  		ddc_pin =3D rkl_encoder_to_ddc_pin(encoder);
> -	else if (DISPLAY_VER(display) =3D=3D 9 && HAS_PCH_TGP(dev_priv))
> +	else if (DISPLAY_VER(display) =3D=3D 9 && HAS_PCH_TGP(display))
>  		ddc_pin =3D gen9bc_tgp_encoder_to_ddc_pin(encoder);
>  	else if ((display->platform.jasperlake || display->platform.elkhartlake=
)
> &&
> -		 HAS_PCH_TGP(dev_priv))
> +		 HAS_PCH_TGP(display))
>  		ddc_pin =3D mcc_encoder_to_ddc_pin(encoder);
> -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		ddc_pin =3D icl_encoder_to_ddc_pin(encoder);
> -	else if (HAS_PCH_CNP(dev_priv))
> +	else if (HAS_PCH_CNP(display))
>  		ddc_pin =3D cnp_encoder_to_ddc_pin(encoder);
>  	else if (display->platform.geminilake || display->platform.broxton)
>  		ddc_pin =3D bxt_encoder_to_ddc_pin(encoder);
> @@ -2985,8 +2981,6 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder
> *encoder)
>  void intel_infoframe_init(struct intel_digital_port *dig_port)
>  {
>  	struct intel_display *display =3D to_intel_display(dig_port);
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(dig_port->base.base.dev);
>=20
>  	if (display->platform.valleyview || display->platform.cherryview) {
>  		dig_port->write_infoframe =3D vlv_write_infoframe;
> @@ -3010,7 +3004,7 @@ void intel_infoframe_init(struct intel_digital_port
> *dig_port)
>  			dig_port->set_infoframes =3D hsw_set_infoframes;
>  			dig_port->infoframes_enabled =3D
> hsw_infoframes_enabled;
>  		}
> -	} else if (HAS_PCH_IBX(dev_priv)) {
> +	} else if (HAS_PCH_IBX(display)) {
>  		dig_port->write_infoframe =3D ibx_write_infoframe;
>  		dig_port->read_infoframe =3D ibx_read_infoframe;
>  		dig_port->set_infoframes =3D ibx_set_infoframes;
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 2463e61e7802..c841399e5c88 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -133,7 +133,6 @@ static const u32 hpd_mtp[HPD_NUM_PINS] =3D {
>=20
>  static void intel_hpd_init_pins(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_hotplug *hpd =3D &display->hotplug;
>=20
>  	if (HAS_GMCH(display)) {
> @@ -160,24 +159,24 @@ static void intel_hpd_init_pins(struct intel_displa=
y
> *display)
>  	else
>  		hpd->hpd =3D hpd_ilk;
>=20
> -	if ((INTEL_PCH_TYPE(dev_priv) < PCH_DG1) &&
> -	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
> +	if ((INTEL_PCH_TYPE(display) < PCH_DG1) &&
> +	    (!HAS_PCH_SPLIT(display) || HAS_PCH_NOP(display)))
>  		return;
>=20
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_MTL)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_MTL)
>  		hpd->pch_hpd =3D hpd_mtp;
> -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_DG1)
>  		hpd->pch_hpd =3D hpd_sde_dg1;
> -	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		hpd->pch_hpd =3D hpd_icp;
> -	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> +	else if (HAS_PCH_CNP(display) || HAS_PCH_SPT(display))
>  		hpd->pch_hpd =3D hpd_spt;
> -	else if (HAS_PCH_LPT(dev_priv) || HAS_PCH_CPT(dev_priv))
> +	else if (HAS_PCH_LPT(display) || HAS_PCH_CPT(display))
>  		hpd->pch_hpd =3D hpd_cpt;
> -	else if (HAS_PCH_IBX(dev_priv))
> +	else if (HAS_PCH_IBX(display))
>  		hpd->pch_hpd =3D hpd_ibx;
>  	else
> -		MISSING_CASE(INTEL_PCH_TYPE(dev_priv));
> +		MISSING_CASE(INTEL_PCH_TYPE(display));
>  }
>=20
>  /* For display hotplug interrupt */
> @@ -711,7 +710,7 @@ static u32 ibx_hotplug_mask(enum hpd_pin
> hpd_pin)
>=20
>  static u32 ibx_hotplug_enables(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
>  	switch (encoder->hpd_pin) {
>  	case HPD_PORT_A:
> @@ -719,7 +718,7 @@ static u32 ibx_hotplug_enables(struct intel_encoder
> *encoder)
>  		 * When CPU and PCH are on the same package, port A
>  		 * HPD must be enabled in both north and south.
>  		 */
> -		return HAS_PCH_LPT_LP(i915) ?
> +		return HAS_PCH_LPT_LP(display) ?
>  			PORTA_HOTPLUG_ENABLE : 0;
>  	case HPD_PORT_B:
>  		return PORTB_HOTPLUG_ENABLE |
> @@ -940,18 +939,17 @@ static void
> gen11_tbt_hpd_enable_detection(struct intel_encoder *encoder)
>=20
>  static void gen11_hpd_enable_detection(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_display *display =3D to_intel_display(encoder);
>=20
>  	gen11_tc_hpd_enable_detection(encoder);
>  	gen11_tbt_hpd_enable_detection(encoder);
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		icp_hpd_enable_detection(encoder);
>  }
>=20
>  static void gen11_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
> @@ -964,7 +962,7 @@ static void gen11_hpd_irq_setup(struct intel_display
> *display)
>  	gen11_tc_hpd_detection_setup(display);
>  	gen11_tbt_hpd_detection_setup(display);
>=20
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		icp_hpd_irq_setup(display);
>  }
>=20
> @@ -1138,7 +1136,6 @@ static void xelpdp_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void xelpdp_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display->hotplug.hpd);
> @@ -1150,9 +1147,9 @@ static void xelpdp_hpd_irq_setup(struct
> intel_display *display)
>=20
>  	xelpdp_pica_hpd_detection_setup(display);
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_LNL)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_LNL)
>  		xe2lpd_sde_hpd_irq_setup(display);
> -	else if (INTEL_PCH_TYPE(i915) >=3D PCH_MTL)
> +	else if (INTEL_PCH_TYPE(display) >=3D PCH_MTL)
>  		mtp_hpd_irq_setup(display);
>  }
>=20
> @@ -1194,10 +1191,8 @@ static u32 spt_hotplug2_enables(struct
> intel_encoder *encoder)
>=20
>  static void spt_hpd_detection_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
>  	/* Display WA #1179 WaHardHangonHotPlug: cnp */
> -	if (HAS_PCH_CNP(dev_priv)) {
> +	if (HAS_PCH_CNP(display)) {
>  		intel_de_rmw(display, SOUTH_CHICKEN1,
> CHASSIS_CLK_REQ_DURATION_MASK,
>  			     CHASSIS_CLK_REQ_DURATION(0xf));
>  	}
> @@ -1215,10 +1210,9 @@ static void spt_hpd_detection_setup(struct
> intel_display *display)
>  static void spt_hpd_enable_detection(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>=20
>  	/* Display WA #1179 WaHardHangonHotPlug: cnp */
> -	if (HAS_PCH_CNP(i915)) {
> +	if (HAS_PCH_CNP(display)) {
>  		intel_de_rmw(display, SOUTH_CHICKEN1,
>  			     CHASSIS_CLK_REQ_DURATION_MASK,
>  			     CHASSIS_CLK_REQ_DURATION(0xf));
> @@ -1235,10 +1229,9 @@ static void spt_hpd_enable_detection(struct
> intel_encoder *encoder)
>=20
>  static void spt_hpd_irq_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 hotplug_irqs, enabled_irqs;
>=20
> -	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_CNP)
>  		intel_de_write(display, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
>=20
>  	enabled_irqs =3D intel_hpd_enabled_irqs(display, display-
> >hotplug.pch_hpd);
> @@ -1474,8 +1467,6 @@ void intel_hpd_irq_setup(struct intel_display
> *display)
>=20
>  void intel_hotplug_irq_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	intel_hpd_init_pins(display);
>=20
>  	intel_hpd_init_early(display);
> @@ -1484,9 +1475,9 @@ void intel_hotplug_irq_init(struct intel_display
> *display)
>  		if (HAS_HOTPLUG(display))
>  			display->funcs.hotplug =3D &i915_hpd_funcs;
>  	} else {
> -		if (HAS_PCH_DG2(i915))
> +		if (HAS_PCH_DG2(display))
>  			display->funcs.hotplug =3D &icp_hpd_funcs;
> -		else if (HAS_PCH_DG1(i915))
> +		else if (HAS_PCH_DG1(display))
>  			display->funcs.hotplug =3D &dg1_hpd_funcs;
>  		else if (DISPLAY_VER(display) >=3D 14)
>  			display->funcs.hotplug =3D &xelpdp_hpd_funcs;
> @@ -1494,9 +1485,9 @@ void intel_hotplug_irq_init(struct intel_display
> *display)
>  			display->funcs.hotplug =3D &gen11_hpd_funcs;
>  		else if (display->platform.geminilake || display-
> >platform.broxton)
>  			display->funcs.hotplug =3D &bxt_hpd_funcs;
> -		else if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
> +		else if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  			display->funcs.hotplug =3D &icp_hpd_funcs;
> -		else if (INTEL_PCH_TYPE(i915) >=3D PCH_SPT)
> +		else if (INTEL_PCH_TYPE(display) >=3D PCH_SPT)
>  			display->funcs.hotplug =3D &spt_hpd_funcs;
>  		else
>  			display->funcs.hotplug =3D &ilk_hpd_funcs;
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 89d26913e253..495f81cf5667 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -87,13 +87,12 @@ static struct intel_lvds_encoder
> *to_lvds_encoder(struct intel_encoder *encoder)
>  bool intel_lvds_port_enabled(struct intel_display *display,
>  			     i915_reg_t lvds_reg, enum pipe *pipe)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	u32 val;
>=20
>  	val =3D intel_de_read(display, lvds_reg);
>=20
>  	/* asserts want to know the pipe even if the port is disabled */
> -	if (HAS_PCH_CPT(i915))
> +	if (HAS_PCH_CPT(display))
>  		*pipe =3D REG_FIELD_GET(LVDS_PIPE_SEL_MASK_CPT, val);
>  	else
>  		*pipe =3D REG_FIELD_GET(LVDS_PIPE_SEL_MASK, val);
> @@ -243,13 +242,12 @@ static void intel_pre_enable_lvds(struct
> intel_atomic_state *state,
>  {
>  	struct intel_display *display =3D to_intel_display(state);
>  	struct intel_lvds_encoder *lvds_encoder =3D to_lvds_encoder(encoder);
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 temp;
>=20
> -	if (HAS_PCH_SPLIT(i915)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		assert_fdi_rx_pll_disabled(display, pipe);
>  		assert_shared_dpll_disabled(display, crtc_state->shared_dpll);
>  	} else {
> @@ -261,7 +259,7 @@ static void intel_pre_enable_lvds(struct
> intel_atomic_state *state,
>  	temp =3D lvds_encoder->init_lvds_val;
>  	temp |=3D LVDS_PORT_EN | LVDS_A0A2_CLKA_POWER_UP;
>=20
> -	if (HAS_PCH_CPT(i915)) {
> +	if (HAS_PCH_CPT(display)) {
>  		temp &=3D ~LVDS_PIPE_SEL_MASK_CPT;
>  		temp |=3D LVDS_PIPE_SEL_CPT(pipe);
>  	} else {
> @@ -421,7 +419,6 @@ static int intel_lvds_compute_config(struct
> intel_encoder *encoder,
>  				     struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_lvds_encoder *lvds_encoder =3D to_lvds_encoder(encoder);
>  	struct intel_connector *connector =3D lvds_encoder-
> >attached_connector;
>  	struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
> @@ -435,7 +432,7 @@ static int intel_lvds_compute_config(struct
> intel_encoder *encoder,
>  		return -EINVAL;
>  	}
>=20
> -	if (HAS_PCH_SPLIT(i915)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		crtc_state->has_pch_encoder =3D true;
>  		if (!intel_fdi_compute_pipe_bpp(crtc_state))
>  			return -EINVAL;
> @@ -798,7 +795,6 @@ bool intel_is_dual_link_lvds(struct intel_display
> *display)
>  static bool compute_is_dual_link_lvds(struct intel_lvds_encoder
> *lvds_encoder)
>  {
>  	struct intel_display *display =3D to_intel_display(&lvds_encoder->base)=
;
> -	struct drm_i915_private *i915 =3D to_i915(lvds_encoder-
> >base.base.dev);
>  	struct intel_connector *connector =3D lvds_encoder-
> >attached_connector;
>  	const struct drm_display_mode *fixed_mode =3D
>  		intel_panel_preferred_fixed_mode(connector);
> @@ -822,7 +818,7 @@ static bool compute_is_dual_link_lvds(struct
> intel_lvds_encoder *lvds_encoder)
>  	 * register is uninitialized.
>  	 */
>  	val =3D intel_de_read(display, lvds_encoder->reg);
> -	if (HAS_PCH_CPT(i915))
> +	if (HAS_PCH_CPT(display))
>  		val &=3D ~(LVDS_DETECTED | LVDS_PIPE_SEL_MASK_CPT);
>  	else
>  		val &=3D ~(LVDS_DETECTED | LVDS_PIPE_SEL_MASK);
> @@ -846,7 +842,6 @@ static void intel_lvds_add_properties(struct
> drm_connector *connector)
>   */
>  void intel_lvds_init(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_lvds_encoder *lvds_encoder;
>  	struct intel_connector *connector;
>  	const struct drm_edid *drm_edid;
> @@ -868,14 +863,14 @@ void intel_lvds_init(struct intel_display *display)
>  		return;
>  	}
>=20
> -	if (HAS_PCH_SPLIT(i915))
> +	if (HAS_PCH_SPLIT(display))
>  		lvds_reg =3D PCH_LVDS;
>  	else
>  		lvds_reg =3D LVDS;
>=20
>  	lvds =3D intel_de_read(display, lvds_reg);
>=20
> -	if (HAS_PCH_SPLIT(i915)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		if ((lvds & LVDS_DETECTED) =3D=3D 0)
>  			return;
>  	}
> @@ -915,7 +910,7 @@ void intel_lvds_init(struct intel_display *display)
>  	encoder->enable =3D intel_enable_lvds;
>  	encoder->pre_enable =3D intel_pre_enable_lvds;
>  	encoder->compute_config =3D intel_lvds_compute_config;
> -	if (HAS_PCH_SPLIT(i915)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		encoder->disable =3D pch_disable_lvds;
>  		encoder->post_disable =3D pch_post_disable_lvds;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c
> b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index b909ed18a5b2..de77d6487d79 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -23,17 +23,15 @@
>  bool intel_has_pch_trancoder(struct intel_display *display,
>  			     enum pipe pch_transcoder)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	return HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915) ||
> -		(HAS_PCH_LPT_H(i915) && pch_transcoder =3D=3D PIPE_A);
> +	return HAS_PCH_IBX(display) || HAS_PCH_CPT(display) ||
> +		(HAS_PCH_LPT_H(display) && pch_transcoder =3D=3D PIPE_A);
>  }
>=20
>  enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc);
>=20
> -	if (HAS_PCH_LPT(i915))
> +	if (HAS_PCH_LPT(display))
>  		return PIPE_A;
>  	else
>  		return crtc->pipe;
> @@ -43,7 +41,6 @@ static void assert_pch_dp_disabled(struct intel_display
> *display,
>  				   enum pipe pipe, enum port port,
>  				   i915_reg_t dp_reg)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe port_pipe;
>  	bool state;
>=20
> @@ -54,7 +51,7 @@ static void assert_pch_dp_disabled(struct intel_display
> *display,
>  				 port_name(port), pipe_name(pipe));
>=20
>  	INTEL_DISPLAY_STATE_WARN(display,
> -				 HAS_PCH_IBX(dev_priv) && !state &&
> port_pipe =3D=3D PIPE_B,
> +				 HAS_PCH_IBX(display) && !state &&
> port_pipe =3D=3D PIPE_B,
>  				 "IBX PCH DP %c still using transcoder B\n",
>  				 port_name(port));
>  }
> @@ -63,7 +60,6 @@ static void assert_pch_hdmi_disabled(struct
> intel_display *display,
>  				     enum pipe pipe, enum port port,
>  				     i915_reg_t hdmi_reg)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	enum pipe port_pipe;
>  	bool state;
>=20
> @@ -74,7 +70,7 @@ static void assert_pch_hdmi_disabled(struct
> intel_display *display,
>  				 port_name(port), pipe_name(pipe));
>=20
>  	INTEL_DISPLAY_STATE_WARN(display,
> -				 HAS_PCH_IBX(dev_priv) && !state &&
> port_pipe =3D=3D PIPE_B,
> +				 HAS_PCH_IBX(display) && !state &&
> port_pipe =3D=3D PIPE_B,
>  				 "IBX PCH HDMI %c still using transcoder B\n",
>  				 port_name(port));
>  }
> @@ -249,7 +245,6 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>  	i915_reg_t reg;
>  	u32 val, pipeconf_val;
> @@ -261,7 +256,7 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
>  	assert_fdi_tx_enabled(display, pipe);
>  	assert_fdi_rx_enabled(display, pipe);
>=20
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(display)) {
>  		reg =3D TRANS_CHICKEN2(pipe);
>  		val =3D intel_de_read(display, reg);
>  		/*
> @@ -279,7 +274,7 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
>  	val =3D intel_de_read(display, reg);
>  	pipeconf_val =3D intel_de_read(display, TRANSCONF(display, pipe));
>=20
> -	if (HAS_PCH_IBX(dev_priv)) {
> +	if (HAS_PCH_IBX(display)) {
>  		/* Configure frame start delay to match the CPU */
>  		val &=3D ~TRANS_FRAME_START_DELAY_MASK;
>  		val |=3D TRANS_FRAME_START_DELAY(crtc_state-
> >framestart_delay - 1);
> @@ -298,7 +293,7 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
>=20
>  	val &=3D ~TRANS_INTERLACE_MASK;
>  	if ((pipeconf_val & TRANSCONF_INTERLACE_MASK_ILK) =3D=3D
> TRANSCONF_INTERLACE_IF_ID_ILK) {
> -		if (HAS_PCH_IBX(dev_priv) &&
> +		if (HAS_PCH_IBX(display) &&
>  		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
>  			val |=3D TRANS_INTERLACE_LEGACY_VSYNC_IBX;
>  		else
> @@ -316,7 +311,6 @@ static void ilk_enable_pch_transcoder(const struct
> intel_crtc_state *crtc_state)
>  static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>  	i915_reg_t reg;
>=20
> @@ -334,7 +328,7 @@ static void ilk_disable_pch_transcoder(struct
> intel_crtc *crtc)
>  		drm_err(display->drm, "failed to disable transcoder %c\n",
>  			pipe_name(pipe));
>=20
> -	if (HAS_PCH_CPT(dev_priv))
> +	if (HAS_PCH_CPT(display))
>  		/* Workaround: Clear the timing override chicken bit again. */
>  		intel_de_rmw(display, TRANS_CHICKEN2(pipe),
>  			     TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
> @@ -366,7 +360,6 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  		    struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe =3D crtc->pipe;
> @@ -381,7 +374,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  	 * We need to program the right clock selection
>  	 * before writing the pixel multiplier into the DPLL.
>  	 */
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(display)) {
>  		u32 sel;
>=20
>  		temp =3D intel_de_read(display, PCH_DPLL_SEL);
> @@ -417,7 +410,7 @@ void ilk_pch_enable(struct intel_atomic_state *state,
>  	intel_fdi_normal_train(crtc);
>=20
>  	/* For PCH DP, enable TRANS_DP_CTL */
> -	if (HAS_PCH_CPT(dev_priv) &&
> +	if (HAS_PCH_CPT(display) &&
>  	    intel_crtc_has_dp_encoder(crtc_state)) {
>  		const struct drm_display_mode *adjusted_mode =3D
>  			&crtc_state->hw.adjusted_mode;
> @@ -459,14 +452,13 @@ void ilk_pch_post_disable(struct
> intel_atomic_state *state,
>  			  struct intel_crtc *crtc)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	enum pipe pipe =3D crtc->pipe;
>=20
>  	ilk_disable_pch_transcoder(crtc);
>=20
> -	if (HAS_PCH_CPT(dev_priv)) {
> +	if (HAS_PCH_CPT(display)) {
>  		/* disable TRANS_DP_CTL */
>  		intel_de_rmw(display, TRANS_DP_CTL(pipe),
>  			     TRANS_DP_OUTPUT_ENABLE |
> TRANS_DP_PORT_SEL_MASK,
> @@ -503,7 +495,6 @@ void ilk_pch_get_config(struct intel_crtc_state
> *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct intel_shared_dpll *pll;
>  	enum pipe pipe =3D crtc->pipe;
>  	enum intel_dpll_id pll_id;
> @@ -522,7 +513,7 @@ void ilk_pch_get_config(struct intel_crtc_state
> *crtc_state)
>  	intel_cpu_transcoder_get_m1_n1(crtc, crtc_state->cpu_transcoder,
>  				       &crtc_state->fdi_m_n);
>=20
> -	if (HAS_PCH_IBX(dev_priv)) {
> +	if (HAS_PCH_IBX(display)) {
>  		/*
>  		 * The pipe->pch transcoder and pch transcoder->pll
>  		 * mapping is fixed.
> @@ -646,8 +637,6 @@ void lpt_pch_get_config(struct intel_crtc_state
> *crtc_state)
>=20
>  void intel_pch_sanitize(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	if (HAS_PCH_IBX(i915))
> +	if (HAS_PCH_IBX(display))
>  		ibx_sanitize_pch_ports(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> index 1307a478861a..693b90e3dfc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -281,7 +281,7 @@ static void lpt_enable_clkout_dp(struct intel_display
> *display,
>  	if (drm_WARN(display->drm, with_fdi && !with_spread,
>  		     "FDI requires downspread\n"))
>  		with_spread =3D true;
> -	if (drm_WARN(display->drm, HAS_PCH_LPT_LP(dev_priv) &&
> +	if (drm_WARN(display->drm, HAS_PCH_LPT_LP(display) &&
>  		     with_fdi, "LP PCH doesn't have FDI\n"))
>  		with_fdi =3D false;
>=20
> @@ -303,7 +303,7 @@ static void lpt_enable_clkout_dp(struct intel_display
> *display,
>  			lpt_fdi_program_mphy(display);
>  	}
>=20
> -	reg =3D HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
> +	reg =3D HAS_PCH_LPT_LP(display) ? SBI_GEN0 : SBI_DBUFF0;
>  	tmp =3D intel_sbi_read(dev_priv, reg, SBI_ICLK);
>  	tmp |=3D SBI_GEN0_CFG_BUFFENABLE_DISABLE;
>  	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
> @@ -319,7 +319,7 @@ void lpt_disable_clkout_dp(struct intel_display
> *display)
>=20
>  	intel_sbi_lock(dev_priv);
>=20
> -	reg =3D HAS_PCH_LPT_LP(dev_priv) ? SBI_GEN0 : SBI_DBUFF0;
> +	reg =3D HAS_PCH_LPT_LP(display) ? SBI_GEN0 : SBI_DBUFF0;
>  	tmp =3D intel_sbi_read(dev_priv, reg, SBI_ICLK);
>  	tmp &=3D ~SBI_GEN0_CFG_BUFFENABLE_DISABLE;
>  	intel_sbi_write(dev_priv, reg, tmp, SBI_ICLK);
> @@ -498,7 +498,6 @@ static void lpt_init_pch_refclk(struct intel_display
> *display)
>=20
>  static void ilk_init_pch_refclk(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  	struct intel_shared_dpll *pll;
>  	int i;
> @@ -527,7 +526,7 @@ static void ilk_init_pch_refclk(struct intel_display
> *display)
>  		}
>  	}
>=20
> -	if (HAS_PCH_IBX(dev_priv)) {
> +	if (HAS_PCH_IBX(display)) {
>  		has_ck505 =3D display->vbt.display_clock_mode;
>  		can_ssc =3D has_ck505;
>  	} else {
> @@ -678,10 +677,8 @@ static void ilk_init_pch_refclk(struct intel_display
> *display)
>   */
>  void intel_init_pch_refclk(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
> -	if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv))
> +	if (HAS_PCH_IBX(display) || HAS_PCH_CPT(display))
>  		ilk_init_pch_refclk(display);
> -	else if (HAS_PCH_LPT(dev_priv))
> +	else if (HAS_PCH_LPT(display))
>  		lpt_init_pch_refclk(display);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index 4d4e2b9f5f2d..05e1e5c7e8b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -350,21 +350,19 @@ vlv_initial_power_sequencer_setup(struct intel_dp
> *intel_dp)
>=20
>  static int intel_num_pps(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
>  	if (display->platform.valleyview || display->platform.cherryview)
>  		return 2;
>=20
>  	if (display->platform.geminilake || display->platform.broxton)
>  		return 2;
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_MTL)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_MTL)
>  		return 2;
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_DG1)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_DG1)
>  		return 1;
>=20
> -	if (INTEL_PCH_TYPE(i915) >=3D PCH_ICP)
> +	if (INTEL_PCH_TYPE(display) >=3D PCH_ICP)
>  		return 2;
>=20
>  	return 1;
> @@ -373,11 +371,10 @@ static int intel_num_pps(struct intel_display
> *display)
>  static bool intel_pps_is_valid(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>  	if (intel_dp->pps.pps_idx =3D=3D 1 &&
> -	    INTEL_PCH_TYPE(i915) >=3D PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) <=3D PCH_ADP)
> +	    INTEL_PCH_TYPE(display) >=3D PCH_ICP &&
> +	    INTEL_PCH_TYPE(display) <=3D PCH_ADP)
>  		return intel_de_read(display, SOUTH_CHICKEN1) &
> ICP_SECOND_PPS_IO_SELECT;
>=20
>  	return true;
> @@ -499,7 +496,6 @@ static void intel_pps_get_registers(struct intel_dp
> *intel_dp,
>  				    struct pps_registers *regs)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	int pps_idx;
>=20
>  	memset(regs, 0, sizeof(*regs));
> @@ -518,7 +514,7 @@ static void intel_pps_get_registers(struct intel_dp
> *intel_dp,
>=20
>  	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
>  	if (display->platform.geminilake || display->platform.broxton ||
> -	    INTEL_PCH_TYPE(dev_priv) >=3D PCH_CNP)
> +	    INTEL_PCH_TYPE(display) >=3D PCH_CNP)
>  		regs->pp_div =3D INVALID_MMIO_REG;
>  	else
>  		regs->pp_div =3D PP_DIVISOR(display, pps_idx);
> @@ -1591,7 +1587,6 @@ static void pps_init_delays(struct intel_dp
> *intel_dp)
>  static void pps_init_registers(struct intel_dp *intel_dp, bool
> force_disable_vdd)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 pp_on, pp_off, port_sel =3D 0;
>  	int div =3D DISPLAY_RUNTIME_INFO(display)->rawclk_freq / 1000;
>  	struct pps_registers regs;
> @@ -1638,7 +1633,7 @@ static void pps_init_registers(struct intel_dp
> *intel_dp, bool force_disable_vdd
>  	 * power sequencer any more. */
>  	if (display->platform.valleyview || display->platform.cherryview) {
>  		port_sel =3D PANEL_PORT_SELECT_VLV(port);
> -	} else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
> +	} else if (HAS_PCH_IBX(display) || HAS_PCH_CPT(display)) {
>  		switch (port) {
>  		case PORT_A:
>  			port_sel =3D PANEL_PORT_SELECT_DPA;
> @@ -1791,9 +1786,7 @@ void intel_pps_unlock_regs_wa(struct intel_display
> *display)
>=20
>  void intel_pps_setup(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -
> -	if (HAS_PCH_SPLIT(i915) || display->platform.geminilake || display-
> >platform.broxton)
> +	if (HAS_PCH_SPLIT(display) || display->platform.geminilake ||
> display->platform.broxton)
>  		display->pps.mmio_base =3D PCH_PPS_BASE;
>  	else if (display->platform.valleyview || display->platform.cherryview)
>  		display->pps.mmio_base =3D VLV_PPS_BASE;
> @@ -1836,7 +1829,6 @@ void intel_pps_connector_debugfs_add(struct
> intel_connector *connector)
>=20
>  void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	i915_reg_t pp_reg;
>  	u32 val;
>  	enum pipe panel_pipe =3D INVALID_PIPE;
> @@ -1845,7 +1837,7 @@ void assert_pps_unlocked(struct intel_display
> *display, enum pipe pipe)
>  	if (drm_WARN_ON(display->drm, HAS_DDI(display)))
>  		return;
>=20
> -	if (HAS_PCH_SPLIT(dev_priv)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		u32 port_sel;
>=20
>  		pp_reg =3D PP_CONTROL(display, 0);
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 757b9ce7e3b1..c8e5ad4c4e79 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -214,18 +214,17 @@ intel_sdvo_create_enhance_property(struct
> intel_sdvo *intel_sdvo,
>  static void intel_sdvo_write_sdvox(struct intel_sdvo *intel_sdvo, u32 va=
l)
>  {
>  	struct intel_display *display =3D to_intel_display(&intel_sdvo->base);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 bval =3D val, cval =3D val;
>  	int i;
>=20
> -	if (HAS_PCH_SPLIT(dev_priv)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		intel_de_write(display, intel_sdvo->sdvo_reg, val);
>  		intel_de_posting_read(display, intel_sdvo->sdvo_reg);
>  		/*
>  		 * HW workaround, need to write this twice for issue
>  		 * that may result in first write getting masked.
>  		 */
> -		if (HAS_PCH_IBX(dev_priv)) {
> +		if (HAS_PCH_IBX(display)) {
>  			intel_de_write(display, intel_sdvo->sdvo_reg, val);
>  			intel_de_posting_read(display, intel_sdvo->sdvo_reg);
>  		}
> @@ -1360,14 +1359,13 @@ static int intel_sdvo_compute_config(struct
> intel_encoder *encoder,
>  				     struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D
>  		to_intel_sdvo_connector(conn_state->connector);
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
>  	struct drm_display_mode *mode =3D &pipe_config->hw.mode;
>=20
> -	if (HAS_PCH_SPLIT(i915)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		pipe_config->has_pch_encoder =3D true;
>  		if (!intel_fdi_compute_pipe_bpp(pipe_config))
>  			return -EINVAL;
> @@ -1527,7 +1525,6 @@ static void intel_sdvo_pre_enable(struct
> intel_atomic_state *state,
>  				  const struct drm_connector_state
> *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_encoder-
> >base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct drm_display_mode *adjusted_mode =3D &crtc_state-
> >hw.adjusted_mode;
>  	const struct intel_sdvo_connector_state *sdvo_state =3D
> @@ -1634,7 +1631,7 @@ static void intel_sdvo_pre_enable(struct
> intel_atomic_state *state,
>  		sdvox |=3D (9 << 19) | SDVO_BORDER_ENABLE;
>  	}
>=20
> -	if (HAS_PCH_CPT(dev_priv))
> +	if (HAS_PCH_CPT(display))
>  		sdvox |=3D SDVO_PIPE_SEL_CPT(crtc->pipe);
>  	else
>  		sdvox |=3D SDVO_PIPE_SEL(crtc->pipe);
> @@ -1670,13 +1667,12 @@ static bool
> intel_sdvo_connector_get_hw_state(struct intel_connector *connector)
>  bool intel_sdvo_port_enabled(struct intel_display *display,
>  			     i915_reg_t sdvo_reg, enum pipe *pipe)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	u32 val;
>=20
>  	val =3D intel_de_read(display, sdvo_reg);
>=20
>  	/* asserts want to know the pipe even if the port is disabled */
> -	if (HAS_PCH_CPT(dev_priv))
> +	if (HAS_PCH_CPT(display))
>  		*pipe =3D (val & SDVO_PIPE_SEL_MASK_CPT) >>
> SDVO_PIPE_SEL_SHIFT_CPT;
>  	else if (display->platform.cherryview)
>  		*pipe =3D (val & SDVO_PIPE_SEL_MASK_CHV) >>
> SDVO_PIPE_SEL_SHIFT_CHV;
> @@ -1841,7 +1837,6 @@ static void intel_disable_sdvo(struct
> intel_atomic_state *state,
>  			       const struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display =3D to_intel_display(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	u32 temp;
> @@ -1861,7 +1856,7 @@ static void intel_disable_sdvo(struct
> intel_atomic_state *state,
>  	 * to transcoder A after disabling it to allow the
>  	 * matching DP port to be enabled on transcoder A.
>  	 */
> -	if (HAS_PCH_IBX(dev_priv) && crtc->pipe =3D=3D PIPE_B) {
> +	if (HAS_PCH_IBX(display) && crtc->pipe =3D=3D PIPE_B) {
>  		/*
>  		 * We get CPU/PCH FIFO underruns on the other pipe when
>  		 * doing the workaround. Sweep them under the rug.
> @@ -3367,9 +3362,7 @@ intel_sdvo_init_ddc_proxy(struct intel_sdvo_ddc
> *ddc,
>=20
>  static bool is_sdvo_port_valid(struct intel_display *display, enum port =
port)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> -
> -	if (HAS_PCH_SPLIT(dev_priv))
> +	if (HAS_PCH_SPLIT(display))
>  		return port =3D=3D PORT_B;
>  	else
>  		return port =3D=3D PORT_B || port =3D=3D PORT_C;
> @@ -3384,7 +3377,6 @@ static bool assert_sdvo_port_valid(struct
> intel_display *display, enum port port
>  bool intel_sdvo_init(struct intel_display *display,
>  		     i915_reg_t sdvo_reg, enum port port)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	struct intel_encoder *intel_encoder;
>  	struct intel_sdvo *intel_sdvo;
>  	int i;
> @@ -3427,7 +3419,7 @@ bool intel_sdvo_init(struct intel_display *display,
>  	}
>=20
>  	intel_encoder->compute_config =3D intel_sdvo_compute_config;
> -	if (HAS_PCH_SPLIT(dev_priv)) {
> +	if (HAS_PCH_SPLIT(display)) {
>  		intel_encoder->disable =3D pch_disable_sdvo;
>  		intel_encoder->post_disable =3D pch_post_disable_sdvo;
>  	} else {
> --
> 2.39.5

