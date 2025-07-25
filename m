Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB60B11BD7
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 12:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0103310E9BF;
	Fri, 25 Jul 2025 10:11:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S0MUG3zQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4604A10E9AF;
 Fri, 25 Jul 2025 10:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753438317; x=1784974317;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bCyHbXrWWZIGJFB6L7v7JoMqBa/ce6VR3pLbJlMXzHA=;
 b=S0MUG3zQKv4dgZ40I0h47B+J1D5aEOglkebqXsJCT/rI/UaLrdavT4g3
 efxtl0N+6RsJFaEjsJfi7G2ySKt+YGajxXg1Oo9mKi0aaJMbSWl9Wrm+Y
 LaPtzYJ+9bg860an3OdFVXnCLT9Y+C4GTvFTVuzTX9mitfAwdt2eUI5MB
 8DC41NY5TjxGSw7cD5WJR1S9eXA61gMQm1TPFDEm+MGDby7XvKTMSC9Kx
 16fYvy762Wmi+uRyv7AbiU0HiJnHEWDB1hrilMEGHDFi8M4NqV8m12bdC
 51qS56ttQYnrllxuFz9gvKw+ltCU3TN1aoZuSfeiPPd/4pbZGatbgk/86 g==;
X-CSE-ConnectionGUID: Zax6/UpsSIakLkBnhTQgHw==
X-CSE-MsgGUID: NQtFb1YVQR6xGo3OU2XSXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="59589150"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="59589150"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 03:11:57 -0700
X-CSE-ConnectionGUID: neUUjY4bQHqIz/fRJyV+Ig==
X-CSE-MsgGUID: OIa7gjKuQoml1NiGutEp+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="161310177"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 03:11:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 03:11:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 03:11:56 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 03:11:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WsOSC+08uka8H+Xdjp7b3IwDA0iXAax7OiqWilOyG6/qg4H61L4/1dIUC4An9N8cq4SNLBc6J5UxfjzQD9ihMY6p3kmkzii+Rdhmu5V2F/SGIFueFGOGcmmwUN49z9UTIHw8dNndfLXB87/rD2oPCfqSJcIXB8HvL9DtFhd38DGUXNVu2YzUuGxVWJkWQhgTeiJYATZdRPEh2/7NRMbqwDXymVZABSeo2Bd7izdgcyMTI/LlDQF42kpHTpaZCHVZeY42Hx6KIG6fdXE3HZba5uAqifPjid+ppozVhHBv0z0iPoYnqpef5qxbKE/icStRBzpU1T0s9rH+KHN3U/rxBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCyHbXrWWZIGJFB6L7v7JoMqBa/ce6VR3pLbJlMXzHA=;
 b=bgbDr05ceBOIV2SyTtboPmzZmwbXMH1mzzVq/UWKeEOM05I5BiBspAg68nD2YRCQnTP/zL1rPFaILCjejj5P844mtjYuPtMQkA+dPS2GaIQozzzVNBN23tiPrhB3AQXn/OFv+QcymgpblG5Fc/cLPBsAyFuzwADn1WqeGMw4/orKHpwhr6yRTdbWEmq0VqQEvqyxqXN4VwaiuRknNkPqkTJsL9VHPOui2AcFJFuUE9/hSIYVC4A8GVwdvoVFR0dLsDrGnzGKmZKBNrC5Gflkb8Mj8smlSy19wAEX6MRprjKCtimikHd0gj3RGciQFYtHc/NlZx6vIgMu0WAYYkhAZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS7PR11MB7739.namprd11.prod.outlook.com (2603:10b6:8:e0::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Fri, 25 Jul
 2025 10:11:34 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%7]) with mapi id 15.20.8943.029; Fri, 25 Jul 2025
 10:11:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH] drm/i915/dp: Fix disabling training pattern at end of
 UHBR link training
Thread-Topic: [PATCH] drm/i915/dp: Fix disabling training pattern at end of
 UHBR link training
Thread-Index: AQHb/MjyCuA2Do41YUuzY4FlgBwnXrRCnpxA
Date: Fri, 25 Jul 2025 10:11:34 +0000
Message-ID: <IA0PR11MB73075F3014E9390D8AD78321BA59A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250724182900.160891-1-imre.deak@intel.com>
In-Reply-To: <20250724182900.160891-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS7PR11MB7739:EE_
x-ms-office365-filtering-correlation-id: 1959c388-cd40-404a-9835-08ddcb63a276
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dXp3ZXczeDMwOEZ1d0JMeis1dzR4VW5QdUxyOWp2dTd6L2k2WFNCRklhNXk3?=
 =?utf-8?B?NjZxcHZ6OVhobmNoTWxkV0UvOVM5QmhPSWdIUUtFb1Q0cnFTMDl5QVVhUzJR?=
 =?utf-8?B?a3duWkN5akVRTFo5VEVmTUdud1hEUURFNkh5Y3lZSzFyRzQxUFZmMkRKSW15?=
 =?utf-8?B?eElXdnkxVitheUJVY1lEaEFhU25zcDJMcStMN3RaYzNDcDdYZXNoNHBvUTBs?=
 =?utf-8?B?cHpvU2p1VkFSQ3RpUzR0QzE2NXBmaW5pb1A0Q1ZjMCtBYThhWk9YSE03REhv?=
 =?utf-8?B?Y2ZybzE4WFhBbGNodkVBaFZNTGR5cllsR3Y2ZFk4S01mYUJKSmNMaEN1QzVy?=
 =?utf-8?B?S2JUbDNIOVNRelY1dDhLODlHVlE0LzNuRU1HcTg0SHVseGNvTEpUSElEejhV?=
 =?utf-8?B?VzdYVjdjUnpvYVBiSnRoekVsOU11Y08xbVArSWd5NkxRdHRUMi9vZjdkekhW?=
 =?utf-8?B?MU9YNi9HM1E5UGhDYjN0UkVoQTZxRE1JSjZkeDZabGJ2NFJVQkM4Q1UzR1A0?=
 =?utf-8?B?T1M5cFNwQTRZbmlndmIzZWtNcmlZT0dYK0R1THpBTjAzZ3ZlUEtDd25tNWYr?=
 =?utf-8?B?c0ZkeHBMZy9xUDl2eTY1bjJSb252L3VPQk00U2VDK29qdU55b01qUUxDWng1?=
 =?utf-8?B?dWJUYXNEcGJWbGVMZ1ZjVjZlZVE5S1M4Sk9yTk5XT1ZxcWpJZE0ycFNGUGF3?=
 =?utf-8?B?d1hqV3hBM1JjWXVCOWZ4SURwWHdwN2x4cUwySkY0NFZXMEdkK2cyNnlhWWlx?=
 =?utf-8?B?QzQ0M1Y0L2R6UEQyRzBodlhORGRGVUxvV1F1SkJqYWovd3BzVENLejVzUmNp?=
 =?utf-8?B?NkN4aE5qNDg5YXd3ZFljTUYxSVEvM0UzU29EenY3TEI5UXBoZE1wL29UUlVr?=
 =?utf-8?B?ZHdMaURPN3h6cWVTdGlhU0xRYUdiWmtJNDFLeWFOWmNkdGFjTWVwOW9CTzdu?=
 =?utf-8?B?VVpmbm5ubmRKVWJxSk1lTUpEZkxzWitEQ3BzU3Bhc0k3S1YrWmFLUnc1Vmgz?=
 =?utf-8?B?QjdVSWZUMm85R2o5TU9KTnQybU1zSHYrQTZPREZEcnBIMTgvRndkS2pCYS9M?=
 =?utf-8?B?T0l2dERGMlcyTktMbzJSU1R1MkZFZ0o5Y2orLzhVek1mOG5OOUx3SWRrOG1T?=
 =?utf-8?B?U3JjaFVWNjB4VkladjB0bjBsOGVVRU9xNGFTaWZjVXZxcEhHQjZZQ0QzSjBj?=
 =?utf-8?B?UTJQNXBIcTl2ZHlINjlXcS9ZaVVLcUJUWVRzT2Z0b3NuZzljV0NjUENrbkFC?=
 =?utf-8?B?cWN0bkYyY2sxWHhkdUVoNjZUQW9XSGJkRDloTHM1Y3FZcWl0amZzMXd4eWcw?=
 =?utf-8?B?cXB1T21jTGNLb3d2L245UE81UTJlaG1wdFhBM1hJVDFnaXNJMUd2Sng0T3Q2?=
 =?utf-8?B?eWNmRkpEUUV3Y1ZnblVhdzNtZ0pSYzAzdytRVTRYN2pkUUp3ajYveisxY2VS?=
 =?utf-8?B?UVp2WGV3REN4N0c2OGI3QjBtanl1SUtRdmVFV3VOanphNVdoWU5DRVVUTVVv?=
 =?utf-8?B?aHQvUklNYWE2ZERPajF2Q2lYb3ZBUGluMHBrOTFpMjZsNUxpMWZSTERTK1FT?=
 =?utf-8?B?eWJrZDhJcGJBR3Bobm5SSEYwSi9qOVA3aERTUHpCUW5KdHJjeXhzZHU3YTI4?=
 =?utf-8?B?RVZLN1NCOERyU3BRTGlYSHVJNFI5OW82bytWNmNrdFBoZTJoRTM2SDVZbWcv?=
 =?utf-8?B?bkJOWmExcUtzWkliZ3pFSjZTSCtKLzVlRXk4K3lyT1hjSUlnREp6ZG1DaFJ3?=
 =?utf-8?B?bWE4RTI0cjcwQlVjQVQ1SmNFWUI1a3lEMW9NemNZY1l1bjFFK0JnN0tyVVBv?=
 =?utf-8?B?VHdOTTBzWWIrcmp2S1YrVkJ4aTV0TExUK2tPK3R5Tm55UnYzOEd5dmRnRlRN?=
 =?utf-8?B?akQvWGZpVEpvV3VTYUhoQ2tpL2xhdkxyQVJ4cEZjOEJKSlZ3WmFtVDZCTXlD?=
 =?utf-8?B?N05GbGRJREgwTElzQ1YwTkNORzBBcHRCSmNndkU4aXVVVXc0RVhLWWIvRlN5?=
 =?utf-8?B?bmp5eHo1SmtBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?elNRbFZPYTA4ZmNjVktWNUtQSEtDeHpTQ29xeGViM3hWZWR6QUVJL0hURkZx?=
 =?utf-8?B?SlUyMkxHYlNuVGZoSXJQanN5MkdEU2wyendYUmJid0dhT2Z2RnpjMEZkZXFi?=
 =?utf-8?B?VHJFSitaUDQvdWJwVUVQUllGM0xHcmV1R3o4ZG8zdm95V1BYWWd5QXFqOUg3?=
 =?utf-8?B?TUVvYnNPOVhLRzhpMXJ1TktQMHllN0Y0SUdXVmpKK3JjL05tRXNBY0xQbGdS?=
 =?utf-8?B?RVFRbWthWXpmK2MxSzJRUWNLUTVtdjBqZ20wcHdHNUUxY3dzWEQ4OGIzNzJS?=
 =?utf-8?B?bCswV0FQU1UxN0FWaXBVeUhKaFFwQTZQZ2xabVhRK3VxaUlZV2hpNmhUWC9X?=
 =?utf-8?B?V0NDS1pHM3VjNkFaaHNqdmFLb0FNZkRBTDRPQjlsT243OXFPM2tnQVUwWDdB?=
 =?utf-8?B?RFhDbUpKYUtJd0UxanZZSlFBcGNwYmlEeW8rOGNqcytJUTN1SUw2a01lcTNJ?=
 =?utf-8?B?aDNjaDA0MzR2OVFmcEErbEhMdlBld3lVNlN6emZYTU5SeVlRa1FWaW9HRENv?=
 =?utf-8?B?bEthc0JBZFYvcDV6SmJReVlkajVHZWF5OXhrbWIwYVVHd3V6NCt2TFkrOFVa?=
 =?utf-8?B?MXgzd29sNTE3anNmTzdaOUYralJpOVdZTGQ0K01wYVh5OE95Q1MzSDF4bVlN?=
 =?utf-8?B?SEJsRHVkdVg3N0Q5NWVsWk9VdkRqeEx0cE1IVDBFeXdzOEJZaVBCU2QrU0VJ?=
 =?utf-8?B?ZGNORWhRVVRGRlVGTDNpZnI3U0kvc05INjdQR3ZwNHAyZzB4ZmZHUnlKZVZu?=
 =?utf-8?B?UE5YRkNRVlY4QXBRYVcwZ3dyMXpjTC9qemxmelNOUDkvWXpXdGVBdUc5Rjdx?=
 =?utf-8?B?SGI3NkplUXBIY3ZWRHFCZHJERmtOTEg5aVlZRU9KWHZJWDNqaFNZc2NxTXVn?=
 =?utf-8?B?RTd3WVIybDZBQkFORGE3NEVhSC80YjJjWHdRZTc3bEdlWUhzWFVLRGRKZzhr?=
 =?utf-8?B?NlFoV1lCbmw1UmU2MkdGTVRZeWhNS2g2TjZDVDlGS3dPcndPNDEvT25VZWU2?=
 =?utf-8?B?dDlzNUhWWGVZMTAxbStLeTBVaGU1NGFERy93RHV3cDVNZ0RCczE4SEZjeHB0?=
 =?utf-8?B?dXYrUUZUTUpqQVNPMUVSSHFxM1BKKzNzWGJGc3BPYzF0Zldzak5GWUdBL2dT?=
 =?utf-8?B?Um51aU1neTZSc3pvQjIvemdrYXloT0xib0dmQ1liZnIzbzZGaTJvT040RTY4?=
 =?utf-8?B?N3Z0eGp3c1RXWFViK0xhd0ZRQlpWeUpDcDBpS3g1dURrUEZhQWxFdGtvenRt?=
 =?utf-8?B?ekR2ejVCWGF2TjlnUkNhZHYzZ2V5YmE4eVFkQ1orZzU2QTBZd290UGZ6ZnRC?=
 =?utf-8?B?V2hmbHdwRWk1R2JkaU9vL2FrR052VzFJZTR1NVB3Z3J0TFJ5MGVnUXU4VjFC?=
 =?utf-8?B?WmQrM25HN0xvSjJ2K2lkVmNMbVFwZVg4VjJDTDA0TC9NNXJzZVFGRXNoTWVV?=
 =?utf-8?B?MWIzTTFUOFZXSjlOZ2hoZDk2WGlXcUl3VXVvQTNKR0xhNmVVUGgvanV0M210?=
 =?utf-8?B?SEZKN1NON1krMkIrR1ZMZXlFR1puTXI0TTNhVXlTZTY0ZytJeThMY2p6Q01V?=
 =?utf-8?B?dVdIc3d0V00vVWwzUU5KNWJSZC9mdEpqMmlJUmtzMFpIUUYyWlBSMkJ2cDk5?=
 =?utf-8?B?SDBVYlhta3JobDFwZzJka1JaV2liMThjQlpDTGJpaEovMzE3bmVVL29YZ3FB?=
 =?utf-8?B?MCt1TWRna200ZklCNjdmUEdIdUhFai9lU2JWYTVzS3NjUFYrb0w0bzYrQ1U4?=
 =?utf-8?B?emlQZGNKdkNpSkhYVURmRjMyemJZc1FIRHdwMVBOZmp1Sy9wNXZ2WStHUWVq?=
 =?utf-8?B?Z0VEcUY1aXhOeGlCV0JxVk9QRDJOdHNWKzNRSGlWUGhWUVQvVWUwM3VWZWpj?=
 =?utf-8?B?L3FHNGwwdU9qcUd1TTJ2eVNYY2RyNkJvNi83Mkt2aXU5WGhIVitzaDdxWVlE?=
 =?utf-8?B?YzZhZ0ZBb0dUc21ycVgrM0RJYVA5aUJka1lFMWtSTDFFL1FpQmtQcHlxWndY?=
 =?utf-8?B?Y2pLMis5VENzRzRSNDlFTFV3UVJKWDVNWTc3QlphaUlkOXFVMjBUdEV0R1Iy?=
 =?utf-8?B?MnZvQ3VnNWNiUkVzVHA4L3A1SG1OcEVXaTI3WXFyeVlXdnBMbG0zNHJWTjRS?=
 =?utf-8?B?ZHJ3Wjk1dHhIWFJHOERGN2FTMkx6WENEL0NVZzNaaTBxZkdiRDB6NHNvTk1N?=
 =?utf-8?Q?yx6V3uZYqFWHSVjz+1NNXcNqJnp20pTXIXp7qq52zw9J?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1959c388-cd40-404a-9835-08ddcb63a276
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2025 10:11:34.4242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B8sTAWDL6YxjhB81ihkFrQVJmYQ2bnSGhO3T+kvt+F3CxpAGRjRYf0gFICMhWE/WvIgB5YUArsoap1qkEFhK0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7739
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSW1yZQ0KPiBE
ZWFrDQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDI0LCAyMDI1IDExOjU5IFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvZHA6IEZpeCBkaXNhYmxpbmcgdHJhaW5pbmcg
cGF0dGVybiBhdCBlbmQgb2YgVUhCUg0KPiBsaW5rIHRyYWluaW5nDQo+IA0KPiBUaGUgRml4ZWQ6
IGNvbW1pdCBiZWxvdyBvdmVybG9va2VkIHRoZSBmYWN0IHRoYXQNCj4gaW50ZWxfZHBfbGlua190
cmFpbl9hbGxfcGh5cygpIGlzIG9ubHkgdXNlZCBmb3Igbm9uLVVIQlIgbGluayByYXRlcywgYnV0
DQo+IGludGVsX2RwX3N0b3BfbGlua190cmFpbigpIGlzIHVzZWQgZm9yIGJvdGggbm9uLVVIQlIg
YW5kIFVIQlIgbGluayByYXRlcy4NCj4gSGVuY2UsIGFmdGVyIHJlbW92aW5nIHRoZSBkaXNhYmxp
bmcgb2YgdGhlIHRyYWluaW5nIHBhdHRlcm4gZnJvbQ0KPiBpbnRlbF9kcF9zdG9wX2xpbmtfdHJh
aW4oKSwgdGhlIGNvbW1pdCBtaXNzZWQgYWRkaW5nIHRoaXMgYmFjayB0byB0aGUgZW5kIG9mDQo+
IFVIQlIgbGluayB0cmFpbmluZyBpbiBpbnRlbF9kcF8xMjhiMTMyYl9saW5rX3RyYWluKCkuIFRo
aXMgbGVmdCB0aGUgc2luayBpbiBsaW5rDQo+IHRyYWluaW5nIG1vZGUgYXQgdGhlIGVuZCBvZiBh
biBVSEJSIHJhdGUgbGluayB0cmFpbmluZy4NCj4gDQo+IEZpeCB0aGluZ3MgYnkgZGlzYWJsaW5n
IHRoZSB0cmFpbmluZyBwYXR0ZXJuIGF0IHRoZSBlbmQgb2YgVUhCUiBsaW5rIHRyYWluaW5nIGFz
DQo+IHdlbGwuDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gRml4ZXM6IDExZmFiNWEyYTFhZCAoImRybS9pOTE1L2RwOiBDbGVhciBE
UENEIHRyYWluaW5nIHBhdHRlcm4gYmVmb3JlDQo+IHRyYW5zbWl0dGluZyB0aGUgaWRsZSBwYXR0
ZXJuIikNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0K
PiAtLS0NCkxvb2tzIGdvb2QgdG8gbWUhDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1
bi5yLm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0
aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jIHwgMiArKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gaW5kZXggMzQ0Yjc0MTA5YTgzMC4uOWQx
NGI0ZTU5NTQ1NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gQEAgLTE2MDksNiArMTYwOSw4IEBAIGlu
dGVsX2RwXzEyOGIxMzJiX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwN
Cj4gIAkJaW50ZWxfZHBfcHJvZ3JhbV9saW5rX3RyYWluaW5nX3BhdHRlcm4oaW50ZWxfZHAsIGNy
dGNfc3RhdGUsDQo+ICAJCQkJCQkgICAgICAgRFBfUEhZX0RQUlgsDQo+IERQX1RSQUlOSU5HX1BB
VFRFUk5fMik7DQo+IA0KPiArCWludGVsX2RwX2Rpc2FibGVfZHBjZF90cmFpbmluZ19wYXR0ZXJu
KGludGVsX2RwLCBEUF9QSFlfRFBSWCk7DQo+ICsNCj4gIAlyZXR1cm4gcGFzc2VkOw0KPiAgfQ0K
PiANCj4gLS0NCj4gMi40OS4xDQoNCg==
