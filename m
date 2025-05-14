Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57ED6AB6708
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 11:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D794410E3C3;
	Wed, 14 May 2025 09:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4dDtOpX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E1210E2F8;
 Wed, 14 May 2025 09:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747213978; x=1778749978;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=pTE5Xt7uRuUEjFtbWhpDREzmANbAESAFQUc6P4YqO3Q=;
 b=K4dDtOpXGqq6pAqeB+3U5yPps17VocmrsYFffSbYCv/OkroVd3x6gBZ+
 BqKY0Bng0iOXcNrlEiX0Y8EcZ8y1hCHN9ryvu+e5jAXzEBf6JUe711g0y
 y0Vo+82WgHGNtg8jHaCgOcBhgjhNLl3VPZlXzWtZ1JDnDaqzm9bCtq/W6
 6CH5+gjzhXfnxSPrnC+I/vDJTEtH312rIqmxgG9h2pEfH7YjRCiOsj4uz
 XgcWKTaRR2RxUHuTuSu7Hui5zR+H6plH+itGiKZBVgQm6JwfC9zb0u58K
 bEq//ptv2vxfNjK0M2FxymXdnKztvMI0TbTCD8aSCs6wkiChJ7foXbCX0 Q==;
X-CSE-ConnectionGUID: A0lao7qHQp2mG94qafnIsw==
X-CSE-MsgGUID: MHONc6GrSRu8S4JH8lZp2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="60437697"
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="60437697"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:12:58 -0700
X-CSE-ConnectionGUID: Iq87QTsmQS6OnOxw2v1S+g==
X-CSE-MsgGUID: aozh3NKYRIWg5UMnJ4lylg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,287,1739865600"; d="scan'208";a="137899019"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 02:12:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 02:12:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 02:12:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 02:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dLtiQuF9Zsuxa5sQuo4fOciWrvfF5lBpOMIcDu46idrIbQeF/Qsftr4r12QGJVTDaLOFD6ZEbZloPIY3Ef3br+hRZgH/2diH1tRvyh7xSDBOgx4lF1AtNiARB4dI/AijOf+gEthGtn6h1bami01e97sYULpJY+Q1+eJj7yjce7t1CaldbSo9PSB7hXvzVyL2yTddYO4zAsuRubcErDCKm05+0TcNcK3gjtmD9Sg4Z+5O9fp3VWWpHb5VbzrcdxYzj8wb+nAv7Kc9YY7ibdPwhPXqSeqAoFjnzZ4IsTiqJcZVEiL1IrV6L9ydo9mDHW/PuNxZL47NyP1esZ2EVAcYJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pTE5Xt7uRuUEjFtbWhpDREzmANbAESAFQUc6P4YqO3Q=;
 b=jezKuLRLcobXgAd/TBkNfdvriXBQljf+txIRkhpIlmVjINabVYIwpuM7++atQVwOD1DSvRr1Qv1nhI6h4VlYKcgo0cessyyqtj6jrVBQzEH+xRuF85l+ansJUszPknUR93L3FXeZp9xYhQupeK0/81iOYtWEqAm8s1h0v6jfqF8e+dPuaReeNGOoI1V6d1PjrAKIAOf3JqJPfou0d0iKofUry2QodCsumviDaKQkn1kCWT0FIdzimLM4Xevpd6gTnAmQ3yOyLOeDD0uAmJ+n1xcFFedAdOw/+J7axR67T8gguV+0Z/iJNPfaPlMEOwRf72d8eSK8Tu1i0HjnETHBBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH0PR11MB5315.namprd11.prod.outlook.com (2603:10b6:610:be::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.31; Wed, 14 May 2025 09:12:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 09:12:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH v4 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Topic: [PATCH v4 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Index: AQHbw8qzGUQVzzx+JkOIPFRgSfQ4NrPQEWkAgAHHsAA=
Date: Wed, 14 May 2025 09:12:41 +0000
Message-ID: <029f59fd7002f28e2f655b5f7d1a2dfb0a5a8d35.camel@intel.com>
References: <20250513054814.3702977-1-jouni.hogander@intel.com>
 <20250513054814.3702977-3-jouni.hogander@intel.com>
 <SN7PR11MB6750F7541D2CCCDED7BDC0B1E396A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750F7541D2CCCDED7BDC0B1E396A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH0PR11MB5315:EE_
x-ms-office365-filtering-correlation-id: 2d866aea-089f-442c-d61f-08dd92c77ae7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZjQzS09RVmtRdmJZZllvWW1FYnllV0o0L3RsK0NqeU1HekZCUFBzdnMxalVh?=
 =?utf-8?B?eXo2MGFsSmV5cGdaajRaVVZWL1lzNlJjRXpZb2xmWklwR1JIM0F5VTBjWEUy?=
 =?utf-8?B?bUJGZzlvRDlsSFY3TTFpZStRY0xTdUo0eTcxRGN0bGlmQnFPbHlrbENNRzBy?=
 =?utf-8?B?Z09BOGp0SXhCZTc0TEZvVTJJeWpCQjNaQW1uS0RPQlA4YlRVM2Y3d3RhNmVZ?=
 =?utf-8?B?N1BYSDNVU1NOSzU1b2pyT3RocHNrRERSeXhOY2xVcThTWFY4RFpGQk50bDVC?=
 =?utf-8?B?Rm5VRFdNWjEwUHdLOHlESHpCR2k5UUFVVHp6QkxIeWxEdXkxTHIvOXBHcUln?=
 =?utf-8?B?ckRTUGU5U290eHFnSHREaTBhc1F4aUVybkNRZnJ1OFZyNWtLQ09EVGZVUXlt?=
 =?utf-8?B?N1J3dTNQekFDZzVlWjhsMS9EOHVTeTZWNjlBak5XdmFVM2pmQmNDaitncFUz?=
 =?utf-8?B?b3Q0VXRDRTJFWS9IWTY2SGVFMXBvcXFxUDM1OTRTQmJOOUZtdGRoSnl5akFM?=
 =?utf-8?B?TU50SG9ZWGdPeURGMzFOTnJzdG5QNmlTN2lPZzBpQlkvVUo3RzFINVJPdlAx?=
 =?utf-8?B?OWR3cHVsMXFYbk9rVGptOEhOb3hSUVU2ZVNPM3NvMkpZeXkwbTlkK1YxLzNH?=
 =?utf-8?B?NDFCMWpBeW10bEJ5L2RkNWQyamNlbFpaVVIxNHRqb01sdHdLVVlDb2Z4RkRO?=
 =?utf-8?B?WDFwczF4YnI5TE9zYmR0VzJzUTVVTDlWRi9nbWZScFV1R3pRbk1rdGNPYWR4?=
 =?utf-8?B?eW0rd3c0QVd5Mklicm4vYXpIWGcrODY0dzNFTTNubEJzMFBETzR6MGxxQ2dV?=
 =?utf-8?B?WTNmdDd5VkNySkhFSXA5a1hLelhsV0JJSGQzUGlGSDR1dUFraGlUKzArWUk1?=
 =?utf-8?B?c1ZRbUxNU2xqejlRa0d5ZHpqblhiVkJ4V1ZlWTVrUlo3aW9vOVJ3OU9HSjBu?=
 =?utf-8?B?ejRIcHJKUElCdTQwYW53dUFxZTUyQm1RMEUyUGg5OHJuTTdPaS8xS01FdVJR?=
 =?utf-8?B?bzJhUGVqN3RRR09yU1htSExFNGo5dzhmQTZJK1BSa3NOa29kRmptb2I1Kzdw?=
 =?utf-8?B?Wm95OC9LK0pOeVBxTVBrN1FIblhOcmNnZzZXaXdtRzR6ZEZmekVyYmdVaFZu?=
 =?utf-8?B?ZDRaVkFzSXNvVWNsQmNJS2xyejhOVkhFNUZiQXlRSUQ0bGI4azlHa0lTNjVX?=
 =?utf-8?B?YndXWWNOVkZWYUMvckpoYmZJdHNKbk8zckxSOWR5UjI0cGRPa2REeFBNcFZ6?=
 =?utf-8?B?bGliKzZHMmpPOWtWUnJIam83c2hpSUJyRGxtRHdLMkhWVDgwLytJWDBoclFr?=
 =?utf-8?B?L3pST21MeXB6MzdySXFrTGo3TC9ZYkNRQWNZb3hUUGlSQ1I2anZvNnUySnRn?=
 =?utf-8?B?Sk9ld3JRb1V1R2FGQ1lKMHo5Q1ZLcmxnQmNwQ29ub3doc2U2YmxEaDBhdnEw?=
 =?utf-8?B?SGY3emRqQVRubVNEZlZwU1Rad1kzd2k4Q3N4bUZ2eHl3UHJGb0VaLzVtWnov?=
 =?utf-8?B?TUM5cFlCV3NwZnpwQWo1YkNvMmxEZGI4dmY2U2F1VXVWNVp1R1VqeDI2VkJx?=
 =?utf-8?B?OE1xajdHbFlXN1RyanpYQXpkbnhoS1JURkNTL0lOQlNsNjlkYnU0NVZZcWRQ?=
 =?utf-8?B?N2VTazBIZ1dOU2p2cFBTa3NBb1lTOTZyQjNTQWZ0UjhxOEQraXI5QlNnaTBr?=
 =?utf-8?B?ZElFZ0F6UWpzeWEwTHAyaGNWYS94MmlSS0JTdVh6eEhLZTUvOUorbHp2ektL?=
 =?utf-8?B?SnhjcjF6QkIrNzZhY0J6U1FaQTJMV1M4bnFVKzgwcE8rQ2ZTeGp3K1NQb0RD?=
 =?utf-8?B?blhBbEk5akRTRkJHNlhGejZkVXYzZ3h6emVzVTFqbjFSYXNETEo1NkVBdG9u?=
 =?utf-8?B?TDB4UGpwMGJqSEozM0RpYlRkMWJYbENIRUxSU2JCSDJydUc4alVNTERKU0Nn?=
 =?utf-8?B?SkF2MFgyc3lzL1FhVkEzVjZ3WWVPaHZNTytBc1JvVzU4Qk5zWjNTaVFlclZ6?=
 =?utf-8?B?U3puZkh6RlRnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2hsNUdIOHBVNnVDRWtPYmdTTzB3VHMxamFDYkkxV2t0NklZVFRhZ0Fya0tD?=
 =?utf-8?B?SGlQbk5GRHRBbHBKUUxkcFZ3YXUyT211eFNENERnRzN1T1ZOYVhSL3VNNFoz?=
 =?utf-8?B?L0tUK0wwNnNXcDNsL2ZpZkZINGZlY3h1WjlYT3JwcXdFQU0vM09jT080ZDJy?=
 =?utf-8?B?aXFiOHJZc3lOQThKOSt0ZEMyRjhzNFFmaDEzOXdTT1pGSzU2YzNnMTZVMDdD?=
 =?utf-8?B?QUVVZXhWVzZ6aThpYXY3UFlxUk5mOUpLNlVJWjgyVnhSMXorLzJyOEE0UlZQ?=
 =?utf-8?B?LzE3MFkwSHlVTUpTeTh2MHE5U2gvU2hFcHRJYU9pMkl5QTIwVGZkcmVxNUt1?=
 =?utf-8?B?eWpvTnhFVWFZRy94bmFRa2wyamMvK2h1NWVIZk1rZW9ZNDJnVHE4VEVINnpm?=
 =?utf-8?B?eTM4VVZieklMMXFEOW1LWnY2MHVuc0JiT2Z3U00yV01zMno5bWRYQXVDNjZk?=
 =?utf-8?B?Qm1lRGcrNWpCTGVJN1FiOG4yWkZuZzQwdy8vTWRUOGxHa01nUS9pVUg2NnpQ?=
 =?utf-8?B?aXB2aGJZTCtzdTlKUGhualhLRldpaWdwL1VsMWM4V2RHbDFjejVHRnJBQVVK?=
 =?utf-8?B?MU9XdDFOczhreWRTWVhKNVV1aEUxVllrVnF5K3lBNDZsMTJ5M3hEZTlBUms3?=
 =?utf-8?B?djJNTjBtellRZW5PQ0pJVVllM0MzRVAwNVVUVWxWTWRBOStlaGl5NUVDN3Fq?=
 =?utf-8?B?aEdoVU1ZeWhTVnE5THAyY0RaOE1VTVprQ1VaUzMvWWlpR0RRczEyeUIwL0VZ?=
 =?utf-8?B?UTVQS2cwZDN6dnJ3cGUwZEFGNE5TNTRLeVowTnVzdTY1ck13T2xQZ3Z5ODdU?=
 =?utf-8?B?YjAvdFFHWVJLTU0ycFN3ejVwUk9KN2Y5bk1QV1hmRmo1dFFSNEFIdXpTVEow?=
 =?utf-8?B?NWZ5Q01JQXlScTgrQlRySkdFcC9Ka3hMelVKNVdNZU5yTVpHL1pKN21JQ3ZK?=
 =?utf-8?B?cFFJQmVHODdZRW9vV2xRQUk5bmUvbXZBL2xkbUVUdTlNSDc5OGJSVlgzOHBL?=
 =?utf-8?B?ckNSaGVlOTJlcHcwUzJzMzh6ZnZ1eDNQcDRkRGtRS1ZRM1liUXAxZGR2RFEy?=
 =?utf-8?B?YUtsQkp0Lzl3MEpSNnlVbVFIOEk5RVd2ZzBvSUpYT09RUXludkVvSmdMMklj?=
 =?utf-8?B?UUlGNUZQTmZoR2xINm5xdDlTcktJTVUzMDJhMmYzOEdwc3RUUTZsOHMwaGlS?=
 =?utf-8?B?OHVCUGQzbmxLNkNNbU9iRm5sUDd2Z0xuOEU2RjdWQW1mc0grTEFicVBPK3Zl?=
 =?utf-8?B?K3VuYkt6aG12TEprVGc5VXc5RUtkbGQ1TFNZek1CTTRmVkdrUjZpRXFWSmRs?=
 =?utf-8?B?N0M1alorQm1NT0tmU0lJSkF5aEZJYUxyV1k0TkNvelcyblJLSk9kZkVJclRm?=
 =?utf-8?B?Y0JvdFhXY0VOVithTTdjb1hnQ3RNcmp0VnFoMC8yNW92ZlorSXlSNEVvN2lZ?=
 =?utf-8?B?RDB5aHNXcmpvOEFMMGgxY01hbERrc1ZrM2JIOGxVdEdUQThWOW1TRTFtbnp2?=
 =?utf-8?B?L2ptTCtYQmJrM2FVeDkxc3ltUjRLNW5Ec3Zpa2FUYmExNWY0OXhobEdQTmI2?=
 =?utf-8?B?R2x4Wmpna3pYSDltY2VwTFMxM3F5dWY5dG9ScDcvckUwbHFjcXZyRGwvUnE1?=
 =?utf-8?B?dVQxRWF6VHpjRkV3ZkM2UHp1Nk9UWGl3Zm40TGE0VHhLa1o5RnhvZkt1Wkw3?=
 =?utf-8?B?TWtoRzJrUWs2dVNTcmFHYitRbFM4dEtseEhRcDB2ZFIydnorODFRdVNZL2JJ?=
 =?utf-8?B?VHF5dFN4U3VxZlZZeGgrTkJpREZndEl2Tm4yUU5namtsYmd4QUdjOG1wSEYx?=
 =?utf-8?B?K2s4REdSVUFZVXZnemQ2Tk1DVGp2cmlXWExJTXBYYmQ4UWd4VHlDNGtCUm8w?=
 =?utf-8?B?dVoyNWFWVHg4L0R5ZXpXN3h2Yk1RT0FlbFd3aVBTakNSNlRrM25BclVKT2Uz?=
 =?utf-8?B?Q25kcHY2Q1F0elkyWkNydXFXZkNaTHpFczBMRHJrQ1lRNFppK1VXSFVxYkVi?=
 =?utf-8?B?Vy9Lemsyd2w5bVEzdjM5SXcxdC94TFNTZkJVYTBWanNxYVlQbmlkOXJnZk1T?=
 =?utf-8?B?MkVsczFGQXNUR0wvWWlDVnk2OU52NWxBTFNtTU1Db20zSDg5dFZETXo0b2F0?=
 =?utf-8?B?eHlVckNnUXNpV3ZuUjVmMVBGV2pwNEUrOWV4TklhRndDenZ4bENodjRUaEpo?=
 =?utf-8?B?MVFHSUdsSVpmdldKWE1XTGx2MWQ5bzl1QWtBditEVC9ndmtFaFdUejc0OWxt?=
 =?utf-8?B?MzhwNTA1TFQ0dmtHZi9vdGwrSFl3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FC57599C76F9FE49AD620EAD9FC3DFA8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d866aea-089f-442c-d61f-08dd92c77ae7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 09:12:41.4416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a7PpmfH2TRZe4Y5hGNvHS/ipM0YdoxdsdivNOkFSPirTX6dly9elO0PkJQ8RZyc5GY8J4csyarX0H0mkVSVvc4lxb4Of2+8O5JgYNs2qodQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5315
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

T24gVHVlLCAyMDI1LTA1LTEzIGF0IDA2OjAxICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2RheSwg
TWF5IDEzLCAyMDI1IDExOjE4IEFNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBNYW5uYSwgQW5p
bWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYW5kcGFsLCBTdXJhag0KPiA+IDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0KPiA+IDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIHY0IDIvMl0gZHJtL2k5MTUvYWxwbTog
U3RvcCB3cml0aW5nIEFMUE0gcmVnaXN0ZXJzDQo+ID4gd2hlbiBQU1INCj4gPiBpcyBlbmFibGVk
DQo+ID4gDQo+ID4gQ3VycmVudGx5IHdlIGFyZSBzZWVpbmcgdGhlc2Ugb24gUFRMOg0KPiA+IA0K
PiA+IHhlIDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBUaW1lb3V0IHdhaXRpbmcgZm9yIERE
SSBCVUYgQSB0byBnZXQNCj4gPiBhY3RpdmUNCj4gPiANCj4gPiBUaGVzZSBzZWVtIHRvIGJlIGNh
dXNlZCBieSB3cml0aW5nIEFMUE0gcmVnaXN0ZXJzIHdoaWxlIFBhbmVsDQo+ID4gUmVwbGF5IGlz
DQo+ID4gZW5hYmxlZC4NCj4gPiANCj4gPiBGaXggdGhpcyBieSB3cml0aW5nIEFMUE0gcmVnaXN0
ZXJzIG9ubHkgd2hlbiBQYW5lbCBSZXBsYXkgaXMgYWJvdXQNCj4gPiB0byBiZQ0KPiA+IGVuYWJs
ZWQuDQo+ID4gDQo+ID4gdjQ6IGltcHJvdmUgY29tbWVudCBvbiBpbnRlbF9wc3JfcGFuZWxfcmVw
bGF5X2VuYWJsZV9zaW5rIGNhbGwNCj4gPiB2MzogZW5hYmxlL2Rpc2FibGUgQUxQTSBmcm9tIFBT
UiBjb2RlDQo+ID4gDQo+ID4gRml4ZXM6IDE3Mjc1N2FjZDZmNiAoImRybS9pOTE1L2xvYmY6IEFk
ZCBsb2JmIGVuYWJsZW1lbnQgaW4gcG9zdA0KPiA+IHBsYW5lDQo+ID4gdXBkYXRlIikNCj4gPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gDQo+IExHVE0sDQo+IFJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFs
QGludGVsLmNvbT4NCg0KVGhhbmsgeW91IFN1cmFqIGZvciBjaGVja2luZyBteSBwYXRjaGVzLiBU
aGVzZSBhcmUgbm90IHB1c2hlZCB0byBkcm0tDQppbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkg
SMO2Z2FuZGVyDQoNCj4gDQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2FscG0uYyB8wqAgNCArKy0tDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuY8KgIHwgMTMgKysrKysrKysrKy0tLQ0KPiA+IMKgMiBmaWxlcyBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBpbmRleCBkYTcwYTk4
YTEyOTIuLmMxNzZiZGJjMTlhMyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gQEAgLTQ1Myw4ICs0NTMsOCBAQCB2b2lkIGludGVsX2Fs
cG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gPiDCoAkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7
DQo+ID4gwqAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+ID4gDQo+ID4gLQlpZiAo
KCFjcnRjX3N0YXRlLT5oYXNfbG9iZiB8fA0KPiA+IC0JwqDCoMKgwqAgY3J0Y19zdGF0ZS0+aGFz
X2xvYmYgPT0gb2xkX2NydGNfc3RhdGUtPmhhc19sb2JmKSAmJg0KPiA+ICFjcnRjX3N0YXRlLQ0K
PiA+ID4gaGFzX3BzcikNCj4gPiArCWlmIChjcnRjX3N0YXRlLT5oYXNfcHNyIHx8ICFjcnRjX3N0
YXRlLT5oYXNfbG9iZiB8fA0KPiA+ICsJwqDCoMKgIGNydGNfc3RhdGUtPmhhc19sb2JmID09IG9s
ZF9jcnRjX3N0YXRlLT5oYXNfbG9iZikNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IA0KPiA+IMKgCWZv
cl9lYWNoX2ludGVsX2VuY29kZXJfbWFzayhkaXNwbGF5LT5kcm0sIGVuY29kZXIsIGRpZmYgLS0N
Cj4gPiBnaXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRl
eCBjY2Q2NmJiYzcyZjcuLjQzMGFkNGVmNzE0NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC04MDAsNiArODAwLDggQEAgc3RhdGlj
IHZvaWQgX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+
ID4gc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gwqAJCQkJwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAq
Y3J0Y19zdGF0ZSnCoCB7DQo+ID4gKwlpbnRlbF9hbHBtX2VuYWJsZV9zaW5rKGludGVsX2RwLCBj
cnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gwqAJY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSA/
DQo+ID4gwqAJCV9wYW5lbF9yZXBsYXlfZW5hYmxlX3NpbmsoaW50ZWxfZHAsIGNydGNfc3RhdGUp
IDoNCj4gPiDCoAkJX3Bzcl9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7IEBAIC0x
OTYyLDYNCj4gPiArMTk2NCw4DQo+ID4gQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9z
b3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoAnCoMKgwqDCoCBJU19ESVNQ
TEFZX1ZFUngxMDBfU1RFUChkaXNwbGF5LCAzMDAwLCBTVEVQX0EwLA0KPiA+IFNURVBfQjApKSAm
Jg0KPiA+IMKgCcKgwqDCoCAhaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4g
PiDCoAkJaW50ZWxfZG1jX2Jsb2NrX3BrZ2MoZGlzcGxheSwgaW50ZWxfZHAtPnBzci5waXBlLA0K
PiA+IHRydWUpOw0KPiA+ICsNCj4gPiArCWludGVsX2FscG1fY29uZmlndXJlKGludGVsX2RwLCBj
cnRjX3N0YXRlKTsNCj4gPiDCoH0NCj4gPiANCj4gPiDCoHN0YXRpYyBib29sIHBzcl9pbnRlcnJ1
cHRfZXJyb3JfY2hlY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiBAQCAtMjAyOSw4
DQo+ID4gKzIwMzMsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1
Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqAJCQnCoMKgwqAgaW50ZWxfZHAtPnBz
ci5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiMiINCj4gPiA6ICIxIik7DQo+ID4gDQo+ID4gwqAJLyoN
Cj4gPiAtCSAqIEVuYWJsaW5nIGhlcmUgb25seSBmb3IgUFNSLiBQYW5lbCBSZXBsYXkgZW5hYmxl
IGJpdCBpcw0KPiA+IGFscmVhZHkNCj4gPiAtCSAqIHdyaXR0ZW4gYXQgdGhpcyBwb2ludC4gU2Vl
DQo+ID4gKwkgKiBFbmFibGluZyBzaW5rIFBTUi9QYW5lbCBSZXBsYXkgaGVyZSBvbmx5IGZvciBQ
U1IuIFBhbmVsDQo+ID4gUmVwbGF5DQo+ID4gZW5hYmxlDQo+ID4gKwkgKiBiaXQgaXMgYWxyZWFk
eSB3cml0dGVuIGF0IHRoaXMgcG9pbnQuIFNpbmsgQUxQTSBpcw0KPiA+IGVuYWJsZWQgaGVyZSBm
b3INCj4gPiArCSAqIFBTUiBhbmQgUGFuZWwgUmVwbGF5LiBTZWUNCj4gPiDCoAkgKiBpbnRlbF9w
c3JfcGFuZWxfcmVwbGF5X2VuYWJsZV9zaW5rLiBNb2RpZmllcnMvb3B0aW9uczoNCj4gPiDCoAkg
KsKgIC0gU2VsZWN0aXZlIFVwZGF0ZQ0KPiA+IMKgCSAqwqAgLSBSZWdpb24gRWFybHkgVHJhbnNw
b3J0DQo+ID4gQEAgLTIxNzIsNiArMjE3Nyw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNh
YmxlX2xvY2tlZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoAlp
ZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gPiANCj4gPiAJaW50ZWxfc25wc19waHlf
dXBkYXRlX3Bzcl9wb3dlcl9zdGF0ZSgmZHBfdG9fZGlnX3BvcnQoaW50ZQ0KPiA+IGxfZHApLQ0K
PiA+ID4gYmFzZSwgZmFsc2UpOw0KPiA+IA0KPiA+ICsJaWYgKGludGVsX2RwLT5wc3IucGFuZWxf
cmVwbGF5X2VuYWJsZWQgJiYNCj4gPiBpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+ICsJ
CWludGVsX2FscG1fZGlzYWJsZShpbnRlbF9kcCk7DQo+ID4gKw0KPiA+IMKgCS8qIERpc2FibGUg
UFNSIG9uIFNpbmsgKi8NCj4gPiDCoAlpZiAoIWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2Vu
YWJsZWQpIHsNCj4gPiDCoAkJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9Q
U1JfRU5fQ0ZHLA0KPiA+IDApOw0KPiA+IEBAIC0zNDk4LDcgKzM1MDYsNiBAQCBzdGF0aWMgdm9p
ZCBwc3JfYWxwbV9jaGVjayhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gwqAJ
aWYgKGludGVsX2FscG1fZ2V0X2Vycm9yKGludGVsX2RwKSkgew0KPiA+IMKgCQlpbnRlbF9wc3Jf
ZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+IMKgCQlwc3ItPnNpbmtfbm90X3JlbGlhYmxl
ID0gdHJ1ZTsNCj4gPiAtCQlpbnRlbF9hbHBtX2Rpc2FibGUoaW50ZWxfZHApOw0KPiA+IMKgCX0N
Cj4gPiDCoH0NCj4gPiANCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
