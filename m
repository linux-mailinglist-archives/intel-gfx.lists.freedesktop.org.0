Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE759090E6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 19:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8541510EDF2;
	Fri, 14 Jun 2024 17:04:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mWj8+uhY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FD610EDEE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 17:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718384639; x=1749920639;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8HbUEWVvnG7JjdUxvncGEl0hpF3XxeMP/df3vRoj1lM=;
 b=mWj8+uhYQpQ3ZEH/5TQhWaYMbGyNa7N5pVoWkXKTt+LaM5coqGPXZ+ht
 7e7CH84TMyP24LcPGy6dMIBS3Mr4UjMudo61l8cOjZb6eb6IU2aVxwPvU
 jcHICGbQElcNCB1u4sTP0rMVIXkzqaaUOod8tweSDx3aKxrkVDAZa8bZH
 QafhrZhNuTVWXhxt5ieyUmab3YGK/lCm60D291PtPvesm/NKdpyrG1DkL
 gaA4C84mvBSS6qfDOtbVgbQohojvv+LdcRj1iA3c2hxkxvuhFNgBK9y3x
 HKIM6SzW5HGHqpAX8Svg2/+VDjhA9u7Xl9QUjJ2naxPDxk9cKfxStRfiA A==;
X-CSE-ConnectionGUID: oYm2utaWQtevIbUMRJvJMA==
X-CSE-MsgGUID: me7XLAi4T+qLnBuYLW+05g==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="15118534"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="15118534"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 10:03:59 -0700
X-CSE-ConnectionGUID: +dQylv6BQ/KDxefsWZggfA==
X-CSE-MsgGUID: mFqEcw/HQbetkv8MehbWVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="40477883"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 10:03:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 10:03:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 10:03:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 10:03:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 10:03:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aAXO8fqejjKMnIqOR/Y9rClAGWZVFAEp0rjHRd772DF1VgcA1ShpI9dzO6Yp4ANhMbV6BO0ion/CT1O50jP6ViD3RKG9JfLlMYML803T3D9l/f1HhFM9bnlxC4QHqLzLHox7S8lyVXTrJzzyne7AbBFsxnp4AmZSvY2sJirksucqTFMPD1IO7K74p5ZtBZJX7CX+mflu0kIOd4sDcIZ39tAQbQohCaI/j4rA3YLkDJjfmWnzz7RwCaenqZNsl+OxMRL3l2iT2eQBCEkHpG/GGhqYoemK4H8UroNCnRPge5zdehzl8o82Hnjmja+9p5Ei380ZQcJZffZPrFjIH6rUSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8HbUEWVvnG7JjdUxvncGEl0hpF3XxeMP/df3vRoj1lM=;
 b=W9BuX/v05n1FT14/GO7ArjJxRXAedKsz08Sc3AnboUYQslyuhlk2PVObCNqPeYfGr9AU/FnxqZC52wwS6uPPvFKa8hgxpI48Z4EUsGKgat/H+XPxYDrlsxWpbBcY7R2sgMEbgoQslbY4G8g5wYftNaEpQiOq1WDmMKtB3oZSZqKZrEItc0t2jPD+wNc9OLiOLD/OL6V9Jw641EcFX4q6pqfR3gMrto6bA0XDUmDIP1bEqcXLS1PuspKwGe5UL5ZXkuaiTJqzwBXVPtrWl8kfLonQbPcocqUR3RRUjnDmfWhAu9xgBuSPbFt5vEQrDRfHzyrXYaviE8SK26aDhJQEug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 17:03:49 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 17:03:49 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 07/20] drm/i915/psr: Disable PSR/Panel Replay on sink
 side for PSR only
Thread-Topic: [PATCH v8 07/20] drm/i915/psr: Disable PSR/Panel Replay on sink
 side for PSR only
Thread-Index: AQHavXS6VoQn7Rr0JkOMFwTsjdpCs7HHfpLg
Date: Fri, 14 Jun 2024 17:03:49 +0000
Message-ID: <PH7PR11MB59813E46A1B7F933D3BDFDC1F9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-8-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL1PR11MB6027:EE_
x-ms-office365-filtering-correlation-id: 3ad643cb-13d8-4c0d-723b-08dc8c93f5e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|1800799021|366013|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?Zk9LSXdIbXJTTFdRZDZkNEsyVktUV3k4alRWeVJwMWdFT3JnNFVGVW0yR1pq?=
 =?utf-8?B?Yzc5L3UzczlyK1Q3NXpxUEwwdUdQcG9zQTVNQ2lxdFVTTkZKTHhzSWM2OEdC?=
 =?utf-8?B?S2lLRmFhTGNsVGFJVDR1RFE2bmZiY2ZKUVpuV3JpQ051aVN5VzgwWTA2R2Rp?=
 =?utf-8?B?cmo5ekF0ODl5TTRYSGJXWjdNOGJya1pRYndMaC9oMDFXb0NuR1BuZnZjRDV5?=
 =?utf-8?B?YUt4K1Q5TFI2WTBuSFFpQUtsUlFQNS9rV3RqS3hjWGhJQnhUT1dmOGowUTZm?=
 =?utf-8?B?cnkvM2llWm5CMTlSZzl1NVc5ZjY4c0txSDc1VTVNemxMTEZWZjZORU9KWFVW?=
 =?utf-8?B?Z1I1TjU4cFVtVU9SMFR0SDd5czBmRnl1UkhDZ1BKaFYwZUFRQTlMNTF4VHdl?=
 =?utf-8?B?L3NkcFV0c00xYk40Q2JnWGorZ3k3NXRkVWpvaW1mVldEa3grQ2ZjWHJBUEVa?=
 =?utf-8?B?ajZSaGdmOUdjbnlkc2ttTmZhWmZxZFEvbjluOU51bFMxRFlZUkwyN2hWbEFG?=
 =?utf-8?B?dk81a1Z4YkhWYjA0ZEptS2pWNDc1M3BCQWxiRFNLOURXVy9EVDlNR0wwYXNN?=
 =?utf-8?B?RkEyWEkwc1o3d2lId3lEZUFQUVVOTE9OUG1LSE1Db2RJRmhYZ2gvL1BrVmU4?=
 =?utf-8?B?YnJGL0N0WURnNVNiU2JhcWxCSWVwRXdyTUhyMW1NOThaWWR6QXlvQ1R3V05u?=
 =?utf-8?B?L0pQNllXVy9JbnlJTU9neisvazlzV1RvcWFidUhpb0wxYm9OY09uUEIyUXZB?=
 =?utf-8?B?RzVPTENFVVRycGRxT3hvLzBUbWVTd0cwbEdkMENJUkNQa2hIcERtRHZJOFdP?=
 =?utf-8?B?bWgyOG5aQnU3QmVoSkkxSE1EcktMOVh5U3dGallyL1dTcWlPNXJSU3QrNkQy?=
 =?utf-8?B?NjUvakExL1U1ZTlVdEF2bmZ2bld6alprUnhYbm4zb29IVVBwNWQ0Z1dqNVR6?=
 =?utf-8?B?MmZOOC9JZ0NpU2V3VG9LMEdZMWVLUnpyd0ZUbmF3dTNzWnpNc0p3QmFaWDR6?=
 =?utf-8?B?UUpZRzBBcytpUllmeFFZODJVWHViWTYrV3V0UWxPeWlycDk2Y3F4dmpvdGxx?=
 =?utf-8?B?KzB1NEhHTHgwUDMyUktnTlJHSTZtc0FBVFFhZ2hqZmZtSG92T1NMNWE0Zitj?=
 =?utf-8?B?V3Zvem9IR0JJdHZVWFovdnhwd0c3SVJUTHNHVVk5QnFRQTRFREdwSkJMcTll?=
 =?utf-8?B?KzFrWG5lUGxraUw5UGN5TGU1U1FmejExNllsbVhvYmhkVlJnVFhGM1ovYTlK?=
 =?utf-8?B?MHdyWjdVVmFKL0tUc3hOZzFPSjlYeFMwQVhmTGZhWHRnUE9keXlkQ3lwbG5P?=
 =?utf-8?B?NE0yczNiYVlLYSt4T0NuanVNd0FmZGVJZG9OUU9JL1dEckIxZGNJd0hTR21l?=
 =?utf-8?B?RU4xdDdSS0htWjZRQUJYSHFGMVlRWFcvZWxVOGFBNWJlUjlQcUtBT3NLcjNR?=
 =?utf-8?B?WHd6bElCUUlQeHFsRmNBSVJwaDltZi9yMU9HclFFMnE4TEV3dllpMVhVRVdR?=
 =?utf-8?B?azZPZHdQckh2ZEFKb0RFbmRXdHY4cll1Zm1CQ2ZjOTZrL0VWT3dmWXM4ZDV1?=
 =?utf-8?B?cWdNQVVadTd0eTFpd0ZlOTN2NHhJeGY1VXkxMGtleWwxVEhidjZmQlpLWTJF?=
 =?utf-8?B?bnNQa3NCRHlKNVdleXBOT1BUR2ZJMnpESHhYdkEyd002MC84c2c3SW1XcG1X?=
 =?utf-8?B?SmF6NHN3aHFrY0FmK0FpVFZ3OFlsVUN6V0I1KzNhV3VTM0tjSW9Fd1o1em42?=
 =?utf-8?B?QzhMVk1xNmp5MTRQUDN2VHdOT1pHSWQ5Ymd3QVYrS1RlbjZHT1RwVnVXQ3RM?=
 =?utf-8?Q?JchtWKk3YyUQIl3FWQGEPHYATqgEdUHkDm+2A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(1800799021)(366013)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y2NkaTRiV3hlUElMdk5IblRhajFPL1hXcW9mckh3TlA2MlIvU29YTmJuc05r?=
 =?utf-8?B?cmYxOFV5Qm5xSEpLT2FIeW9BRGpKWG9oa0J3cmNzelB4bkFVWXRneVE4SU5D?=
 =?utf-8?B?SVZ5dE81dWMvamlEZWNXM2pLWlM3aXBNYkRxMnRPb29mT3dKT2xFZVBnZDFm?=
 =?utf-8?B?ZzVLanR5cTQwN2RaWTFRS1dtMGtJazRRdmsrTXd2NGxzcEVoaEtVT0R1TVpO?=
 =?utf-8?B?c0Q1M0VWcUVRLzBhYXpHWTRvMHBMYkM3QWlPZkNxUFFrSXJNbnBqQmlIdDN3?=
 =?utf-8?B?RlQ2K0JuOUhuR3F6UDhkdkt6TEE2K2hERFlRQWJNY1JjR3hXOXBvSE8vczFH?=
 =?utf-8?B?K2dqT3dGVDQ5MEFNbFp5VEdkQ04rRmViem1CcnN3aU1hVDJsa0xTc2hWdGVT?=
 =?utf-8?B?K1lxQk80alFNTy9BYXNkZjl4VHdHcHMycDNVTnJEQUFGRUdDK25pa0duVlpk?=
 =?utf-8?B?d2tmS3cyS1ArZVZMU3Y5QldBTGhLMEZGcDJUZlg5QnBmMlFYWHREUjdBT09m?=
 =?utf-8?B?RkFFcXhxYjNpSExOTzc2OWliazh6Rk1kRVBrZVFWUG1ITE1zRDd2aEZFNDd4?=
 =?utf-8?B?bUNrbHkyR2pVUFJTdkx3SGl0Qjg2WGtLZTJBdnFpa0hZb21LMVlsZkZiUm1S?=
 =?utf-8?B?ekt5NTl5N0VkRWQ5bUhldFVRYkxyUVZVNWxmbnhiZUhsRCtGMnpid3laT0ln?=
 =?utf-8?B?V2UxUzc4VmZ5YUwyVDNYNXlOdjNFYzBwTWpiZUJvSDV4YjVVWHJpU3hKcHJM?=
 =?utf-8?B?QXRiUTJ2U25qaHYrWXdYZkJWWmNoSUZZbjZsR2JvYk5lWHBsb0R6VzZhc3dy?=
 =?utf-8?B?NHZjN2JoNDZXdnI2UHJVUXpYK2tLaGtYUXhyeDRkdmdFajhKMXdGcElmazJL?=
 =?utf-8?B?L3FKWUorRVdDb3htMFRyZmQrZVViSGp1ZTJlRDJRSXdxMU0rYnVZMmZBTHlH?=
 =?utf-8?B?YnlnU1lDeEluMG5Ob2J3YkxBMkdrWHk1TS96c2licWc3NFJJaW40S0lmUjdB?=
 =?utf-8?B?VktrQVd4V3B0YnFGNWVjZzh5M3QxWUdDcUVnaEpucUJGOWp0QVljeGtwbjJn?=
 =?utf-8?B?WUUydkh6SWZlQmhXU21Pc1FiMHo2OHdyenRWZGVuVVRjSVFidEJnekFxN29a?=
 =?utf-8?B?ejRzZGVZdWRlcXVHWXRvUk5iZE5SbHVMaXoxcWsvajlkTFdnMTFWMXA0YUJu?=
 =?utf-8?B?ZEdXTVRJZTdvTHZvZFAxVHJpZ3dZTzhsdFpwbE5BeDVKeFpzOXZ0VGNkTmhM?=
 =?utf-8?B?OVI0OG9OMUE5WjR6M3pOc294TEFEaTlFUzYwaG85ZmNkNEp4RW9ZYnlmV1Bl?=
 =?utf-8?B?UlRXc1VUVkdEb01hTk5ndVJBM0phTXRDdndqdlJNbmQvQzhuSjJYb0N2WElo?=
 =?utf-8?B?SW9QNVY1UFJmcm1ZYTNtd01GZElVMzhWLzVYSGNOZmt6SkdkQWRXRURJOG9j?=
 =?utf-8?B?cnVkOVNjOWNpeHNNTFBZK1pYR3FKaDBvUUdxd2RyMTNLeHhFMzhtZUNxbGxD?=
 =?utf-8?B?MW1yUXRrNVhBM3ZGZDI4UDU1cEd6bVFad0xvOFEyOEVzNnFrcWc3dk5seGRh?=
 =?utf-8?B?M0xmbmIyOU1hTkowSWlVT003dWYva1cvcmQ5aWtnZzBsNk1tdEEvc3ZLV1NN?=
 =?utf-8?B?SVBJRDJLWkZXNmVZdDVJanV4cEpvM3RpLzdLdkoxTFp0cStqSXlReGlpOE9L?=
 =?utf-8?B?TDFPWnk4Vk5rOTlKN0k2TWFHRk5lQnZ3b0FDY1JNQ3dvcmdaU252TFhCV1dE?=
 =?utf-8?B?b25keThUdVJuY3lhN2JNMU1HV01YcjhGd1lQOEdpNGYybCtpc1N4amNjTTht?=
 =?utf-8?B?cjRLaWVBenEwN2tLUzNvdzlId0JoaVNHbUx1dFRmRFdmNklsaXFIRXduQTZX?=
 =?utf-8?B?cktmYnNiUFpxc3BRRk94cDBVbFd6Y2ZKbHBHRjIrZWxXakNTNFJtN2l1ZE5v?=
 =?utf-8?B?OGtVa0tPd05DZXk2T2gwb2s2dmdGNGgrYktOMlZtdlM0a0FnSCtRdUFvUGFu?=
 =?utf-8?B?UncxMU9VZkZFQzlta08zQkFWcWs1cnJQcEw2TEF4b3RmK1gxZkNYNXZNYVhI?=
 =?utf-8?B?UmRLell1aXV1ZVNnVlVDbTJJdXVzYzFONC8zNmpMZ1JRUi9SRUFuQmhzQTRi?=
 =?utf-8?Q?KuQwUQNbmPWhemS1xayML7Ho1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ad643cb-13d8-4c0d-723b-08dc8c93f5e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 17:03:49.2919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2qnCE583GEk/XbKPbMv/80ZeBgalgQG3VsonmnU5Q0VvFiR9rzPsW7g9zAaUFjRJW2uM/hlzE/GL2SmtoAE+4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwNy8yMF0gZHJtL2k5MTUvcHNyOiBE
aXNhYmxlIFBTUi9QYW5lbCBSZXBsYXkgb24gc2luaw0KPiBzaWRlIGZvciBQU1Igb25seQ0KPiAN
Cj4gRW5hYmxpbmcvZGlzYWJsaW5nIFBhbmVsIFJlcGxheSBvbiBzaW5rIHNpZGUgaGFzIHRvIGJl
IGRvbmUgYmVmb3JlIGxpbmsNCj4gdHJhaW5pbmcuIFdlIGNhbid0IGRpc2FibGUgaXQgaW4gc2lu
ayBzaWRlIG9uIFBTUiBkaXNhYmxlLg0KPiANCj4gRml4ZXM6IDg4YWU2YzY1ZWNkYiAoImRybS9p
OTE1L3BzcjogVW5pZnkgcGFuZWwgcmVwbGF5IGVuYWJsZS9kaXNhYmxlIHNpbmsiKQ0KPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
UmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEyICsr
KysrKy0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBpbmRleCAyN2NmMzMwZDEzZTIuLjczMDBkMDQ4MDZjZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xOTc0LDEzICsxOTc0LDEzIEBAIHN0
YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiAgCX0NCj4gDQo+ICAJLyogRGlzYWJsZSBQU1Igb24gU2luayAqLw0KPiAtCWRy
bV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwNCj4gLQkJCSAgIGludGVsX2RwLT5wc3Iu
cGFuZWxfcmVwbGF5X2VuYWJsZWQgPw0KPiAtCQkJICAgUEFORUxfUkVQTEFZX0NPTkZJRyA6IERQ
X1BTUl9FTl9DRkcsIDApOw0KPiArCWlmICghaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5h
YmxlZCkgew0KPiArCQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9F
Tl9DRkcsIDApOw0KPiANCj4gLQlpZiAoIWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJs
ZWQgJiYNCj4gLQkgICAgaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQpDQo+IC0JCWRy
bV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwNCj4gRFBfUkVDRUlWRVJfQUxQTV9DT05G
SUcsIDApOw0KPiArCQlpZiAoaW50ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQpDQo+ICsJ
CQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsDQo+ICsJCQkJCSAgIERQX1JFQ0VJ
VkVSX0FMUE1fQ09ORklHLCAwKTsNCj4gKwl9DQo+IA0KPiAgCWludGVsX2RwLT5wc3IuZW5hYmxl
ZCA9IGZhbHNlOw0KPiAgCWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgPSBmYWxz
ZTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
