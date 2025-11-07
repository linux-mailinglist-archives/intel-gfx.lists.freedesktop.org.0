Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C107C40BA9
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 17:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C867610EB11;
	Fri,  7 Nov 2025 16:01:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CEDWplq+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 722DC10EB0E;
 Fri,  7 Nov 2025 16:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762531292; x=1794067292;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QU8Lpge43qkeDGhRS0BmS3HJKqjz9p+0QJVjfORMlto=;
 b=CEDWplq+2Scxbk5V7qx6vcDvepaKiQt7NWmkXvf2sPLmH4ZqT/gvazc8
 bo86vRt4So0bAvNQ1laVHLLl6Bf0tA8jJDm4Mj/lRLuOssFAf+Uf8IlPj
 6pBbBZ/uRGrZv8IVLI8Uf2pGHmMBlVREYnxCw+h93887MRyhUoP+D6mh+
 D6rP3jfAOWcut7XXEoRF4z0oFRfPpoaQZQpEcifwDV3kHqgkcuMRLlOTi
 90cfo+li0oDqtXmZ1ZqVktMsnZutwGxmj1kpehchI83OVkxGP3GqK4o+J
 138etuu3bzY8/ach3QPS/wn8WvTTgm0QRZ/J3UBHQaeylfW/3VoYcSIlI g==;
X-CSE-ConnectionGUID: F9JHjz7CQY2qFn2atUR9qA==
X-CSE-MsgGUID: EjYPOVv3RdWUcwCyKIVWYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="76033783"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="76033783"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 08:01:31 -0800
X-CSE-ConnectionGUID: QAW1rQBtRsKt4jRnqV9p+Q==
X-CSE-MsgGUID: 7WbQUM0JRg2rrcNrOmyXlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="225327911"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 08:01:31 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 08:01:30 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 7 Nov 2025 08:01:30 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 7 Nov 2025 08:01:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SLTFYAhBu32sYo70qOPCoHvxlplyk116efUVLsDPv9nFSUBQVsxYdqiM6KD7WzO9Zv6GLM8itviUHp08Lpe/UWpdf3q9MoWw75zsJhGB3KwS685T++A0rXlfbt5Ec72Dm7+y7/Bxc2tiyAu74+sUz8nOAjfRadYpZ4PsuD5CFr1O7vjQn2qARbJss9cXF+olpDjwgFklZcd7uRcrAwMGL8La9YRalziCWG4MY5g+0o+UhapyO6qNK6Un7+TsXumhyS/fOzsQIUT5zzG3SftLl1RXCUMiRar4f0zVc5jyGtDLltqEnnkDTkM7y+pm/nfa1d8tSjwTHUy6ujrbUGMRRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QU8Lpge43qkeDGhRS0BmS3HJKqjz9p+0QJVjfORMlto=;
 b=Z0mSeRTNtn/6dqart8jYL7lNrD3IjINERPTs+DEyw5UGel881YzC2DEk6e8YIM9cRhsR2FfqYAXQWroRkeoVFs+8gm4XbfDKrHvIJxLxX1R1rpzf+WS1DkcH31o7mWPf9P3E+YntPMm0iZklEfpmNiLbaJcm7fkk6UTrhtHbT/uDFa+1d+JlWxc5jxafKe1PO4oY5S+SM3i/Bj1Eo1t9i8qTc68Q6x2enDR5vwkItYx3KtnLKk1AjR3++XRs0aI/LeDtkK/ytX2E72YBs70aRA9CZMOIPZFNXID8zBKcW6ZZ4JGjP1vVj6ZJQw2n8g0disOL6zECqkH1YBJF0nYJiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ2PR11MB8565.namprd11.prod.outlook.com (2603:10b6:a03:56b::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Fri, 7 Nov
 2025 16:01:27 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9298.012; Fri, 7 Nov 2025
 16:01:26 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/fbc: Apply wa_15018326506
Thread-Topic: [PATCH] drm/i915/fbc: Apply wa_15018326506
Thread-Index: AQHcT85ygCxk2/sVgk6fmRjLg1v38rTm/3yAgAAEtoCAAAnRgIAAK/QAgAAl9AA=
Date: Fri, 7 Nov 2025 16:01:26 +0000
Message-ID: <1c58f65890e97d104075f71d7ca6a630e6073c9a.camel@intel.com>
References: <20251107100734.67236-1-vinod.govindapillai@intel.com>
 <fb7031734a4c6b9cc0f26ff287fdf9fb23d07e65@intel.com>
 <ea443f4c5bf41ff20f65bef1ee4e74313d76f62f.camel@intel.com>
 <917da7d1e8e3a33d5724023f3275c51e36c3f834@intel.com>
 <sogg34aj3zol6vgybvzoid5as7wjyyvsdj3eth7g4pgsd5k2w5@xxkw7byvklfo>
In-Reply-To: <sogg34aj3zol6vgybvzoid5as7wjyyvsdj3eth7g4pgsd5k2w5@xxkw7byvklfo>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ2PR11MB8565:EE_
x-ms-office365-filtering-correlation-id: 40d8bbc4-d868-4d39-8112-08de1e16e84f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?VjBWK1RkaFVMU2txVGp5S1NiTWNVdkd2VHZiejh0Tm9sZVRNV2t2TXVtNHYr?=
 =?utf-8?B?bE50eDhoaGJJa2tqdzdwRnVaYWpzeWlBcVhDZEcwZktFdHNWeDFQRUgzTFcw?=
 =?utf-8?B?SWttLzU3NkZwQjRlcG5CRVRBUksxbmlZdXc5RXJxcm9FM2NwSTg5eWNhaWJY?=
 =?utf-8?B?MU1WSitHRjQxRTEzU2NlYXNCRElRcjJBb3oxaENETEN0TE1TNGQxdnBEVThu?=
 =?utf-8?B?Q0FGTzNybWNMK1BvOUVXUkpEZlIxdHQvSDVVbjI2NWlIVkdHeTV5cDZLWmJN?=
 =?utf-8?B?QXBGM1JQbWIrOWZuWUxLTUFTckRlYVMwN2hLcXAvR29SdFdMZ3l3bVZVcDJH?=
 =?utf-8?B?UHdURVM2RnJmdC9QdEU2U1lHZkIvUXl5SmhReHFMaWc5MTR0RFpmQlZLMmVz?=
 =?utf-8?B?SFNwMjdQenl0T0ZjRklpbFZhMmJKaVZKTWxHc3F5d1Q3eDY2L2czK2V1Lzhp?=
 =?utf-8?B?ZXhPYVZXUTBVdTAyc2lwYUxHblUvVDRlVjlaK2x6MW5DWlpSdHV0V3l1L1kr?=
 =?utf-8?B?RllMN1cyMEtLMll2b280ZFBRRVlhT3lLd1RPVU5UWFljSXBKSGVjUjE0TlRw?=
 =?utf-8?B?S1JOanZ4MjhGVGRaQ0N5SCtMc1lPdWRaTENLZ2FrZ3RzNjk4QTNteEdWd3N2?=
 =?utf-8?B?T25Qd1FQSlFZVWxZTXMyZmFTZHM3ZEY3aEJEd3MyTHVGMGVLOCtnbmFyUWx3?=
 =?utf-8?B?Vjk0M3ZObnFJalhFNlgxbFQzeW1PbmtwOTVzWFhmb1ZBQktMOTdDNjVCWm1u?=
 =?utf-8?B?QmFTK0lGV1BlczJjakdGM1VUWkNGN0U3cnhZRHF1U0szNURQeSt4QU5qVEdF?=
 =?utf-8?B?SUZYV21ybWtyWERXanB3dmRGNWxvV1gwb2NKSTZKRnR2cXA3S21EQ0xCZ2dJ?=
 =?utf-8?B?Rlg3OGpoeWR1U2UzWFlZZ0M0b0lNNkFZYnNmWFBDanFhbFdSN2liNEhRZ081?=
 =?utf-8?B?bklwWkJNNFAwTGdITUZZN3N6K3ZnY2RkMHRhMVRCajVSRDY3TlJ4OUxkUHln?=
 =?utf-8?B?bzhKYnVJK0hzd0d0bmo4ZWF0RysxdFBac09YOFZrd2VMNkQ1TXBUTjc2ampX?=
 =?utf-8?B?eHBaOFpqTEQrUVBxUTdyVk5ZQ2ZNSmJ4eEtDSHd5SzNxenFmYzVtTWdLYm9j?=
 =?utf-8?B?bDRRNGFNSHZ2SUNZY0t1Ykl0YldpcFBjWmtFN2xzYnIwZFFBNmxnb2tyQnNY?=
 =?utf-8?B?djR0bmRkT0pxUnoyVmJ2S2VNVkw3NG8zbkhtTXY1VzRJSlNrdVgyV05QTkd0?=
 =?utf-8?B?ZTZNZm5IUVZhamw4dXd3SnhKZTIwMkk3aVMrQmtKLzA2V2pEVDFJbE1OOVlO?=
 =?utf-8?B?V3ljaVVtSFd4VnROUU9oWTNCb0xwK1g3RmtlSDUxYmE4aHNCSmVrNEp3dmdy?=
 =?utf-8?B?Qkt4ZitXTWhUajBrRmpmWXlNcHVKT3orZmZjRi80eUpwYWZQUkZJU010R041?=
 =?utf-8?B?enQ0M2xqT2xRZHJZR1RmQ2ZwQXdJWHpUcjJDaHVKeEYyeWhMcTNCSStCaEo2?=
 =?utf-8?B?VlkyTUtRb0dWYXFYQTJwMVljUW5oUndLenN0VGVJV2x4WWJWeVluR1h6Vnhi?=
 =?utf-8?B?Vkl0bWY5Y3NVUkpSa3h3bGxqOW1NQnJyZE5sQkZYNDdyWHgzUkJpRWRFYVRO?=
 =?utf-8?B?VkxOSTVsVjNwdHl1N3dRMUZHaTNXTDlBQ09kdTZRdkNaa1cwUGd6Ritoa2d6?=
 =?utf-8?B?WXk4Ylo0dTRycURjemJPZzQyQktSemRSM0pZd3pRaWdzcytoazA0endEVGwx?=
 =?utf-8?B?ckFBejE0Z2NqMGZ2aVhkRkpqTHN2V0E0Und3MlAvbGJCR3Nick5DbGtqcjdE?=
 =?utf-8?B?OFhVNFdsM1djSHkreXUvWXRNazByTEZDSmxabWdDKzhGcjhsWXhndEdTbUpF?=
 =?utf-8?B?dkJQdkVHQzhZaG9TekRpYjJIOVhRSmtUcmNBU0sxekRKSEVSV0hrWml2ejg3?=
 =?utf-8?B?ME9YSlBHTkV0YVRDRkNDdnB3NjNUeUdabENYK0VnTW5WVEdUYTNZclBqZ1dz?=
 =?utf-8?B?V2xwVEJiczQ4bkZkTEx3V2t2MEt1VEFMSk96R0dPSm1nMkVZMGtxQjZtQ21W?=
 =?utf-8?Q?SwbqtH?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkJoWlNGNG1OZXRnZHlWdnF5OWIrRHQ3SlRBM05HQzdFbGFWSHBlMXJqZ2pB?=
 =?utf-8?B?RlBFRHdvajZsRnh4Vld4VUZyWGhnTStaTDFOUHJYektraTVvWFd5MDU2dS9u?=
 =?utf-8?B?a2YxQncyNmt4Mm9oMVQ4Tkw5Q3BlNzFzNWNjMWlTVTNVR1JjWU5ZVEk3b2lZ?=
 =?utf-8?B?a3B2NlY2T1Nxbi9ZUUFyMzhRMTduNXFQOUltbjBhTEFRVzYxYVREV2dRUDll?=
 =?utf-8?B?b0YwdDVoZVlYempxS2t4YWE1OXBRRDkxSDdUWCtaTGY3NjRLZEF4bm5HaENI?=
 =?utf-8?B?U01qd3VjWFpYUi82YUVyRWVUVkJTb1E2dzRUb1huTHhvVEJFV3IzYTZNbHY1?=
 =?utf-8?B?TkxNQm1hQmE4NDFzSmwzbXl4eU1teDV4Z0dVOGFMeWtmY05COEwvQnZNR2pp?=
 =?utf-8?B?a2tEM2lCNk11WEc5UlROY1U4NFJoUjNOUVllUmpqaG5SdTZPS00xRVN6amdV?=
 =?utf-8?B?MFhTL0dreityZEt4MkxUZHQwT2dMVWxUa3h1QjJvRUJzZmpaK2gzSG5JOUpl?=
 =?utf-8?B?Z3JkYWo2UExOWlNnTVc4U2xncklvK3d5OXhDRVFMTHlvUGFXQTdScmUyeHdp?=
 =?utf-8?B?aWRwcmR5QzZoT3JXdEhENG9Bcm9xaWxKYUdWVEgxSHdnd2w1WjVTWE9Ybytu?=
 =?utf-8?B?UURJM1drZFNzZWN1TTM2d05UQ2xKVjdIZmorV3g0ai9SZDNhLzBVSmNaTExG?=
 =?utf-8?B?UHoxa0p2QnlBRmh1UGs2SVltaStZMklyZERNNGo4T0luZVpzTWNmNWFDbStx?=
 =?utf-8?B?RUhJSW0xTm5rM2FTMnRITTJtSExxQkpxUlB2Q1BjQS9UTDJkaUV1SkZPRDdm?=
 =?utf-8?B?Q0lGV2xVK3pITENtK01mK0I1L0drdkczb1RTbXJLOGc3RTZ2YlYyRUphSksy?=
 =?utf-8?B?dUJ0UUdrUk1yUGJxOHd5dUdEOUppVXVpNkZHNXM1U21wU0t6amZTKzlpbXhO?=
 =?utf-8?B?ZW4yUTdiQ0dRcEhzR0VqU1UrWUdBYk0veUswcmZDaExIbTRpMXp4bnBKYkZH?=
 =?utf-8?B?akhIbkdiTkdMaTRHSDZmYThsbnNOWTI0azZQc2RpK0Mzd1RJYU1jdEMweUtw?=
 =?utf-8?B?NUliSGdraTB5Z0FkYm5MTkNjZUYzdWdjT3g1T1hDblh3dnY1eHhBOEVWWklI?=
 =?utf-8?B?ZGYvRk9Rc1BncVpSQk1pY2ZaMUpYUHd4MDRsV1B0cmRPMHBwNVh6V2R6Wjhp?=
 =?utf-8?B?ampmSTNhbTN4TEYzTzYrVDVKTERwcUZDWEp3NkZTWWt4NXV6aXFnbFlQSnEx?=
 =?utf-8?B?S2tDZERiZFZIbnpsNHBDQjVPMkNyUFB5czJzMjFIQy96MHBkWFZrRnppN0VR?=
 =?utf-8?B?aHdtcE9BQ0ZSU3JCWTVIWWdlUlBCZk43b2llbFRVeWROTXdnRTVTdXhiOVJM?=
 =?utf-8?B?OUFKcDJka2pFMjJKTnZTU3F4UXg2dlZiQ2J5NXlxUmtXWVRsWjVrcU43RHFQ?=
 =?utf-8?B?RHB6REJMVUxNN0xKdVBwOU9sbjVkWC8xbEphNVBLZzVob3dpYWhlbU5yWW9F?=
 =?utf-8?B?eUtSVHQ0T1Z2TVc2eUN3WDZCN0FROW1xYlM1YnMvU00xWkNhOFFuS3QxbFcw?=
 =?utf-8?B?SWJDdXBjTnpyOG1lbldwMjZqaTd2U0tZY21IZHpiSUVqNUxnZzZHVGcwTHlP?=
 =?utf-8?B?MTFTZld4MGd6YUhzYkl2YURQSjRHS2QrUFFpaHg4amRUWDFXUmZuVTFIUFg4?=
 =?utf-8?B?Wkw2NGEyRGVIVXFvTnYxdlBHWEpxdFROZytsYUZldFI2aWp5Yk5IeUljK3lI?=
 =?utf-8?B?YXQxNEptUWdXTXBMZkNZbnVKd1grREt2cFhnK3hLQ2dlNGx5TjRtQnlSd1VB?=
 =?utf-8?B?dEVxdCtUMjNKRnA0bXpLR29aSnM3WkRLSVRkR3ZZMXRRd3dQR2REWUlnRzd5?=
 =?utf-8?B?TVNCSU9uQThtZml0T0VVZ1hJbXVrTXM4V0psUzQ5ek0zT3RjdVBPd2IvcUFa?=
 =?utf-8?B?SUlvOE9Lc2l0WW10aThBZlArbTVpaFhBUkZyQTYzZlFoVmtoejd1MVBlQXVS?=
 =?utf-8?B?NVpFQnhTUkZyeU5KOFM2Z25FVXU4bTZROVl4UFlnNzVGWnEvRXhYVnhEelU1?=
 =?utf-8?B?MkVzVSsyeStJUldEUGNYdU5YeHZQc01ITVU5WDg3UzVpY2c3U2FuajRkb1lu?=
 =?utf-8?B?MzJVVFpGbGdxSkp2NS9RczlYTTh4MzJBTklzZzVqN2x1ZDFKK3p5TXh3Q2sy?=
 =?utf-8?B?d0JobTFxMkNtWS84VzJBY1hSYkY0SzhEanZLYzJJdlB3bXZTWFZ6R0JvZDht?=
 =?utf-8?Q?IQ975BJQj+wAiR5OeSeQJYgGmh/ZXzCE7dMRYdlP7U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7532FF6995EEAD48B07497BB991FA404@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40d8bbc4-d868-4d39-8112-08de1e16e84f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 16:01:26.8434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dSmDeHglAwfuNWHvtEhVcg2M3vdr3joZhp+1AfY8jhrwRNXoOMp2EPYXAOTml0gz+hComoLXChBK/rvOuCWDqRDNykItq/12NKZl8qswpfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8565
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

T24gRnJpLCAyMDI1LTExLTA3IGF0IDA3OjQ1IC0wNjAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIEZyaSwgTm92IDA3LCAyMDI1IGF0IDAxOjA4OjE1UE0gKzAyMDAsIEphbmkgTmlrdWxh
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMDcgTm92IDIwMjUsICJHb3ZpbmRhcGlsbGFpLCBWaW5vZCIN
Cj4gPiA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gT24gRnJp
LCAyMDI1LTExLTA3IGF0IDEyOjE2ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+ID4g
T24gRnJpLCAwNyBOb3YgMjAyNSwgVmlub2QgR292aW5kYXBpbGxhaQ0KPiA+ID4gPiA8dmlub2Qu
Z292aW5kYXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gPiA+IERpc2FibGUgRkJDIGFz
IHBhcnQgZm9yIHRoZSB3YSBmb3IgdGhlIGJtZyB2YXJpYW50DQo+ID4gPiA+ID4gDQo+ID4gPiA+
ID4gQnNwZWM6IDc0MjEyDQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBp
bGxhaQ0KPiA+ID4gPiA+IDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiA+ID4g
PiAtLS0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV93YS5jIHzCoCA0ICsrKysNCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV93YS5oIHzCoCAxICsNCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmPCoMKgwqDCoMKgwqDCoCB8IDEwDQo+ID4gPiA+
ID4gKysrKysrKysrKw0KPiA+ID4gPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25z
KCspDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+ID4gPiA+IGluZGV4IGM1Mjhh
YWE2NzljYS4uYmEyMjcyZDg1YTA0IDEwMDY0NA0KPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5jDQo+ID4gPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiA+ID4gPiBA
QCAtMTAsNiArMTAsNyBAQA0KPiA+ID4gPiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfY29y
ZS5oIg0KPiA+ID4gPiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcmVncy5oIg0KPiA+ID4g
PiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfd2EuaCINCj4gPiA+ID4gPiArI2luY2x1ZGUg
ImludGVsX3N0ZXAuaCINCj4gPiA+ID4gPiDCoA0KPiA+ID4gPiA+IMKgc3RhdGljIHZvaWQgZ2Vu
MTFfZGlzcGxheV93YV9hcHBseShzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+ID4gPiA+ICpkaXNw
bGF5KQ0KPiA+ID4gPiA+IMKgew0KPiA+ID4gPiA+IEBAIC02OSw2ICs3MCw5IEBAIGJvb2wgX19p
bnRlbF9kaXNwbGF5X3dhKHN0cnVjdA0KPiA+ID4gPiA+IGludGVsX2Rpc3BsYXkNCj4gPiA+ID4g
PiAqZGlzcGxheSwgZW51bSBpbnRlbF9kaXNwbGF5X3dhIHdhLA0KPiA+ID4gPiA+IMKgCQlyZXR1
cm4gRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMTM7DQo+ID4gPiA+ID4gwqAJY2FzZSBJTlRFTF9E
SVNQTEFZX1dBXzIyMDE0MjYzNzg2Og0KPiA+ID4gPiA+IMKgCQlyZXR1cm4gSVNfRElTUExBWV9W
RVJ4MTAwKGRpc3BsYXksIDExMDAsDQo+ID4gPiA+ID4gMTQwMCk7DQo+ID4gPiA+ID4gKwljYXNl
IElOVEVMX0RJU1BMQVlfV0FfMTUwMTgzMjY1MDY6DQo+ID4gPiA+ID4gKwkJcmV0dXJuIERJU1BM
QVlfVkVSeDEwMChkaXNwbGF5KSA9PSAxNDAxICYmDQo+ID4gPiA+ID4gKwkJwqDCoMKgwqDCoMKg
IElOVEVMX0RJU1BMQVlfU1RFUChkaXNwbGF5KSA9PQ0KPiA+ID4gPiA+IFNURVBfQzA7DQo+ID4g
PiA+IA0KPiA+ID4gPiBJU19ESVNQTEFZX1ZFUngxMDBfU1RFUCgpLg0KPiA+ID4gDQo+ID4gPiBJ
IHdhcyBsb29raW5nIGludG8gdGhlIGNvbW1lbnRzIGZvciB0aGF0IG1hY3JvISBUaGlzIHdhIGFw
cGx5DQo+ID4gPiBvbmx5IGZvcg0KPiA+ID4gc3RlcCBjMCAoYXMgb2Ygbm93KSEgSSB3YXNuJ3Qg
c3VyZSB3aGF0IHRoZSAidW50aWwiIHBhcnQgY291bGQgYmUNCj4gPiA+IGluDQo+ID4gPiB0aGF0
IG1hY3JvISBTbyB3aGF0IGRvIHlvdSBzdWdnZXN0IGZvciB0aGUgInVudGlsIsKgIFNURVBfRDAg
b3INCj4gPiA+IFNURVBfRk9SRVZFUiBpbiBzdWNoIGNhc2VzIQ0KPiA+IA0KPiA+IElmIGl0J3Mg
QzAgb25seSwgdGhlbiBDMSBpcyB0aGUgbmV4dCBzdGVwLCBub3QgRDAuDQo+IA0KPiBpdCB3b3Vs
ZCBiZSB2ZXJ5IHdlaXJkIHRvIGJlIEMwICoqb25seSoqLCBzbyBJIHdlbnQgdG8gY2hlY2sgdGhl
IFdBDQo+IGRiDQo+IGFuZCBJIGRvbid0IHJlYWxseSBzZWUgYW55IHN0ZXBwaW5nIHJlc3RyaWN0
aW9uDQo+IA0KPiBMdWNhcyBEZSBNYXJjaGkNCg0Kd2FfMTYwMjM1ODgzNDAgZGlzYWJsZWQgRkJD
IGluIGczMS4gQnV0IHRoaXMgd2EgMTUwMTgzMjY1MDYgcmVjb21tZW5kcw0KZGlzYWJsaW5nIEZC
QyBmb3IgZzMxIHdoaWNoIGhhcyBkaXNwbGF5IHN0ZXBwaW5nIEMwIGZyb20gYnNwZWMgNjgwOTAu
DQoNCkJSDQp2aW5vZA0KDQo+IA0KPiA+IA0KPiA+IEJhc2ljYWxseSB0aGVyZSdzIG9ubHkgb25l
IHVzZXIgb2YgSU5URUxfRElTUExBWV9TVEVQKCkgb3V0c2lkZSBvZg0KPiA+IHRoZQ0KPiA+IG1h
Y3JvcyB0aGVtc2VsdmVzLCBhbmQgd2Ugc2hvdWxkIGF2b2lkIGFkZGluZyBtb3JlIHVzZXJzLg0K
PiA+IA0KPiA+IEJSLA0KPiA+IEphbmkuDQo+ID4gDQo+ID4gDQo+ID4gDQo+ID4gPiANCj4gPiA+
IEJSDQo+ID4gPiBWaW5vZA0KPiA+ID4gDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ID4gwqAJ
ZGVmYXVsdDoNCj4gPiA+ID4gPiDCoAkJZHJtX1dBUk4oZGlzcGxheS0+ZHJtLCAxLCAiTWlzc2lu
ZyBXYQ0KPiA+ID4gPiA+IG51bWJlcjoNCj4gPiA+ID4gPiAlc1xuIiwgbmFtZSk7DQo+ID4gPiA+
ID4gwqAJCWJyZWFrOw0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiA+ID4gPiBpbmRleCAzNjQ0ZThl
MmI3MjQuLmY2NDhiMDBjYjk3ZCAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+ID4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5oDQo+ID4gPiA+ID4gQEAg
LTI2LDYgKzI2LDcgQEAgZW51bSBpbnRlbF9kaXNwbGF5X3dhIHsNCj4gPiA+ID4gPiDCoAlJTlRF
TF9ESVNQTEFZX1dBXzE2MDI1NTczNTc1LA0KPiA+ID4gPiA+IMKgCUlOVEVMX0RJU1BMQVlfV0Ff
MTQwMTE1MDMxMTcsDQo+ID4gPiA+ID4gwqAJSU5URUxfRElTUExBWV9XQV8yMjAxNDI2Mzc4NiwN
Cj4gPiA+ID4gPiArCUlOVEVMX0RJU1BMQVlfV0FfMTUwMTgzMjY1MDYsDQo+ID4gPiA+ID4gwqB9
Ow0KPiA+ID4gPiA+IMKgDQo+ID4gPiA+ID4gwqBib29sIF9faW50ZWxfZGlzcGxheV93YShzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bQ0KPiA+ID4gPiA+IGludGVsX2Rpc3BsYXlf
d2Egd2EsIGNvbnN0IGNoYXIgKm5hbWUpOw0KPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gPiA+ID4gaW5kZXggYTFlMzA4MzAy
MmVlLi4xNmNkOTlkYjI5NzggMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+ID4gPiBAQCAtMTUyMSw2ICsxNTIxLDE2
IEBAIHN0YXRpYyBpbnQNCj4gPiA+ID4gPiBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3RydWN0DQo+
ID4gPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ID4gPiDCoAkJcmV0dXJu
IDA7DQo+ID4gPiA+ID4gwqAJfQ0KPiA+ID4gPiA+IMKgDQo+ID4gPiA+ID4gKwkvKg0KPiA+ID4g
PiA+ICsJICogd2FfMTUwMTgzMjY1MDY6DQo+ID4gPiA+ID4gKwkgKiBGaXhlczogVW5kZXJydW4g
ZHVyaW5nIG1lZGlhIGRlY29kZQ0KPiA+ID4gPiA+ICsJICogV29ya2Fyb3VuZDogRG8gbm90IGVu
YWJsZSBGQkMNCj4gPiA+ID4gPiArCSAqLw0KPiA+ID4gPiA+ICsJaWYgKGludGVsX2Rpc3BsYXlf
d2EoZGlzcGxheSwgMTUwMTgzMjY1MDYpKSB7DQo+ID4gPiA+ID4gKwkJcGxhbmVfc3RhdGUtPm5v
X2ZiY19yZWFzb24gPQ0KPiA+ID4gPiA+ICJXYV8xNTAxODMyNjUwNiI7DQo+ID4gPiA+ID4gKwkJ
cmV0dXJuIDA7DQo+ID4gPiA+ID4gKwl9DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+IMKgCS8qIFdh
RmJjVHVybk9mZkZiY1doZW5IeXBlclZpc29ySXNVc2VkOnNrbCxieHQgKi8NCj4gPiA+ID4gPiDC
oAlpZiAoaW50ZWxfZGlzcGxheV92dGRfYWN0aXZlKGRpc3BsYXkpICYmDQo+ID4gPiA+ID4gwqAJ
wqDCoMKgIChkaXNwbGF5LT5wbGF0Zm9ybS5za3lsYWtlIHx8IGRpc3BsYXktDQo+ID4gPiA+ID4g
PiBwbGF0Zm9ybS5icm94dG9uKSkgew0KPiA+ID4gPiANCj4gPiA+IA0KPiA+IA0KPiA+IC0tIA0K
PiA+IEphbmkgTmlrdWxhLCBJbnRlbA0KDQo=
