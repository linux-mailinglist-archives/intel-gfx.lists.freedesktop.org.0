Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mB6FNwMZnWlTMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:20:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD711815C2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 04:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDC410E19D;
	Tue, 24 Feb 2026 03:20:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJ2gQ2yd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D73C10E19D;
 Tue, 24 Feb 2026 03:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771903232; x=1803439232;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bZ3C12TZ0MbwWOaGGW9gDeOiTZIN3zbY3SxfQcga54Q=;
 b=dJ2gQ2ydHYige3TYgy1+IUxN8ITYshyYaa7ir1wtQ/JQ8CEDVLmKP399
 CluYq7/MxBuYD+W6Z9+YgEh625f7Quu7Km6iNn3Cw+b14HpeDQ1uj3OJU
 T04kO3DQHlY5llCxmYZU0r/35i7wHe6CzatZROBfYeMub8OgfDpGCK30m
 5s572Fz3FCBrkIRFkOjxEnFsw122yLRcA00cp6Y7tgBCfoSiguF7yDL8K
 KVBIF8e4qvK+r4qRcx3WgaUQ/vhz7rDu95aImJn3b27udU4bvdIU093oT
 aWffZIJlHToT8udTwq3Qjmr5VOjAlC6HwAPFbKVxR8l/cOiiJ8Bkj+kDm Q==;
X-CSE-ConnectionGUID: HHmwWrcsS8Kurj9NPyMuPw==
X-CSE-MsgGUID: 0kT2ytwAT26uTTdii1nzKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72123461"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72123461"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:20:32 -0800
X-CSE-ConnectionGUID: cF4xiHwCQSmkrTs5flsiIA==
X-CSE-MsgGUID: THxIb2YpRe+yxvkKzxCt/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="213626969"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 19:20:32 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:20:31 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 19:20:31 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 19:20:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yHBDHvAh3m+71wd75Oaoc4+KQhYLYYArpmf6Kd0ulYYEruE4+RCB95Ffr1xQqEcUjzDeVHAoyXBJi2loXJuHv59jEQ1VO6Q+9k78+3RkhfjPQW8C4BFznFLULfRGE9AFVHquhJtBRNM21VCyl0HMspjmqVMeMT8lF81jczk5kD4u85iDYq98DEFoASFNX4gYIt7+nxB5c2azTzsfezfu6P6kmTvvsVFH0yUqd4Ijx+OrbJVTox4PpBiLAmZxb1Cj6GpbsVmCARtp1vEbj1XmmIqM7BCoM5MTVK+1JelgMhAWPPvlM0IpFXWK9qS0xIZ7BClfOV5wacwWCFbj0ZWpDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZ3C12TZ0MbwWOaGGW9gDeOiTZIN3zbY3SxfQcga54Q=;
 b=ZtDkNoyB9yiZ4rdVPAFw3RZ5QcTAQMjt7BZy1JVz1bcxADP0ApGjEMsTafZRY3R3DROUpIvCegaCkn+y+1adSzRMFJnIHEhxY5wVSDk8WhUe6OCzbZRdQmRZPQr5ZMHWa6yrIWcILRGSd1jmoXtiMmww2HnxAEUGTp/LY7QBK5z7fWHXWIK2Wtk8A2YeR8H65KBoI4yzLrwpXCXsA1Qk5debXv5uRDZuChi+MPipVSyf/pr9jAvK8DLZb3YPUZYJ+z6sgkrwKz+oHm8dyCsHXXqg7In/p6q9nkuK7nzu7ItuCoY8qEZxppeEQUtqDx7BQOHD8Dmxi49T3dbv9YiNgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA1PR11MB7085.namprd11.prod.outlook.com
 (2603:10b6:806:2ba::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 03:20:29 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::b65a:1e88:89fa:c16%3]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 03:20:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 7/8] drm/i915/backlight: Provide clear description on how
 backlight level is controlled
Thread-Topic: [PATCH 7/8] drm/i915/backlight: Provide clear description on how
 backlight level is controlled
Thread-Index: AQHcoiYnonLxeaMvgkOpJQzilhrzUbWRMJEAgAADybA=
Date: Tue, 24 Feb 2026 03:20:28 +0000
Message-ID: <DM3PPF208195D8D75CD839398873412EF9DE374A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-8-suraj.kandpal@intel.com>
 <9191bad3-fc90-4524-831d-ef6f62123f75@intel.com>
In-Reply-To: <9191bad3-fc90-4524-831d-ef6f62123f75@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA1PR11MB7085:EE_
x-ms-office365-filtering-correlation-id: af792ccd-21b8-4a1f-5c03-08de7353a916
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VTNkdFZmOEpWNVhYUlRON3ZiVnFJREIyL2VHTTZ5alBIRm1sUHFtM1ErbjJJ?=
 =?utf-8?B?aHFVcG4zR3FxSjE3ZmJVUXhSbkFRUS9JWUxFR09kV1haQ2E5b2RHVGxiRWF1?=
 =?utf-8?B?ZVdNQ25BSko2ZjZValBMd0dKZUMxbnNSeWRiRUVKZXZSSkgrcmJHV25SZGNk?=
 =?utf-8?B?ZnppVkJGM0NOdDRkZ2hHTXZRQ3cyQWNYQWl1VkdSdjlsSFN4azlWVWhYMEhK?=
 =?utf-8?B?Qk1CZXFSbUt6RDVsbUtVbWx6ZHNlOWNKSS9WcjIrTGk4Vld4TjNPa2RtZWd2?=
 =?utf-8?B?b3h3MEpMUHYremNCY2xEdWZOR2c4UWVsT2hURGlYV1hzanc4bElYSklIUkxE?=
 =?utf-8?B?cWVsTEQ2dHF4UmZiWTNrRVRhelAyT0pDWGRrVytocWZUenV0N0tVdC9IeFgx?=
 =?utf-8?B?d05SQUhCT0V2MjU0aVpIall5eW9SbkFXZVhwdUg1NzcyR2RGbkxCa2RpRjVP?=
 =?utf-8?B?dStWZSs4RzJQUFlBaGNWUWZUMGpJaXkrdkdzbzNNWElDUkl0cVJSWWUxRVVX?=
 =?utf-8?B?d3FVNlZ3QjJSUXY5aFplam5ZdmJaT1pjb3psTmxMbXpLTzYxc3JKc2pMeHd4?=
 =?utf-8?B?VGF3N2l6cFN2R3RsajRHS2lPWEFXYkxFWVo0YVpYN21MbkZBM0hWb3hKWFUr?=
 =?utf-8?B?OUs0MUt0QXR4MWdzQ0hsYmxwMFZ5M1NRNHBKQkg2aHhFbXN1UnQ3VlZWRDdT?=
 =?utf-8?B?TWFsSm5LTkNWSEN6WUNpTkhqdERJLy9qZUJBanFjN1RnRzNncXhNdmlaZkY0?=
 =?utf-8?B?N3ZwdDJNem5TUWlMbkZlcExZTS9Kb0hrUzhieENWNy8wUytKa1FzOFpCSUtz?=
 =?utf-8?B?U09KWU1sRGw0b29TV2pUdHF3RmpLZngrOWRFTmVteU9LTFNVYmRJczlLakhm?=
 =?utf-8?B?YkZjbjFmSzl1Wnd2OXpCSWU0MENRTFg0SzJyTGZLKzViSmxTNmlWcHpQS2F1?=
 =?utf-8?B?Nk0zNHA2eU1Zb3dvaC9RQkpOS3J1Rzg2VzA4bXNsVnBESFIvZVhsM2t0R1Qz?=
 =?utf-8?B?Z3dDN2FVUGZ1OGt3cEE0bEZDYVFBZndYYnlYVGhmY3FVajRZcGxiZm85UzJV?=
 =?utf-8?B?UlkwUXkva3d1S09mKzFnMjVZTTdkSnlOMUdOVG4xbjJwWEViLzdXaWpZdlhr?=
 =?utf-8?B?NkloQnVFdzhiTGZvUkFIU0prRFJGRXVzMFQwSnhSUmpuUnpLc3JEcGJmVmY5?=
 =?utf-8?B?TTRJbFl6a1UwbWZkWmtQbUU1R290Qk1obHRaZ3dWSm4yb0ZKa240VGplY2VU?=
 =?utf-8?B?Rm9OWlhqRlIvdUxEVi9WSlRSajVWcjU5VTJuTXAxR3lVd3pYUEl3M2MwUncy?=
 =?utf-8?B?aDQ5TXVDM2FzZlZxSFRHUjNnbVlEdktDaExOeFZRcDdkcjcrZXNqa1hjWFhu?=
 =?utf-8?B?MTJldEVzYytNZWpxQWh5UGpYYVd6eStTbndqM2RIZUNpSXpFa25aY3JNSC9C?=
 =?utf-8?B?aGpHSHVLK3BQWUZVUkFrNGxEVENucmY3aVdEMUxTWlI3R2FBSW81NVE0azJv?=
 =?utf-8?B?M3RSaTFKZU1JQWNQclo5Qm05cC81WndYRjBGZERYMEV5ZWZWVnE1ZGwycUFB?=
 =?utf-8?B?OWNRUlpmSEY4NGN0c2xMSkNKWGtrYTUwNVNUYlFwQXVBZHBONzdFL05yUzhk?=
 =?utf-8?B?WjhEYVZ3QzFKdHBoTHBITFMzOUgxc29nbkptTkFDSTdlYzdBMTJxV3hhUFJl?=
 =?utf-8?B?Q0hWbVVlRUM1aytwMmpWSEpwcHgzT1ozblNjT2lnNkwwUnd1NjVHTUphdlNr?=
 =?utf-8?B?Mm4yVGhXTHZ0RWJ6aWtQcXBqS2VURFhvYW9RdkpQVmtmK3R5NHNyamxyMytS?=
 =?utf-8?B?VElnRDBMRktBVUltUC9LRGQ3dkpvaGFEdnJEdHhxNFQyVzVUUXFxS1ZmNFlY?=
 =?utf-8?B?c3lmdTVQREdETWNac2hRY3piTkdGM1k5N2R0RkF2ODdZUVBrd1UzOXM0Ylpx?=
 =?utf-8?B?clh3NGpxdmNIN0loNTlSc01nZDRHMllwV0V0SHNLdWVzUXJ4dEIvQVlJT2U5?=
 =?utf-8?B?U2s2NXlocGtjM0lRMlNBYVAwMTZWSFNaMmZBbGpmU0VxQmRMaDFJdW83UGNq?=
 =?utf-8?B?U3V0a1BYSEE0RUFsTG5JS2RqVFpQV1ZGWldJcVdaaWJqeXpFUFFiei9hU1hl?=
 =?utf-8?B?U2JLQkU5RDNpL3gxSnJ0ZjBMU3NyaHBlVWEwVDJzMmtUMzBDeVJWOHdGM3Nz?=
 =?utf-8?Q?gVdDlNiLpk3q797bGYdZMho=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R2xxYXVYWnNuc3UyRlpNLzVpTUUwaURtNWExbGRvN2hyeWF6aEJFaFlqQWl5?=
 =?utf-8?B?YmUyblAxMGhFc1FZclExKysyMkcrVk5teWVvaWI5ZVJsWHZVVHNyaXdzQWk1?=
 =?utf-8?B?QUJRb1ZvL0Q5amxiRDRTRmp1czZQRUg1VXZqd0FGaHI4MG9meDlNS1hCNXpo?=
 =?utf-8?B?YTRMQkd5aGh3WGtvNHRSVVczMkV5YlRMWHdNdVRVWFFQZkEza0NEenlwSVZa?=
 =?utf-8?B?VlVidnlzbStWVGp3UUl0VVZwcmlicG9mMWFZdGRwb0FsZ2ZpVGszKzVFS01z?=
 =?utf-8?B?WWxZZEZFbHM2TnhIbC8rcUlBaVFmU2M2Q3RpZVA3N0hyUVpNOS9yQzhzVTBh?=
 =?utf-8?B?NXZQeGIwdllRWWZaUjF1a1VSbkhHM0ltTHhRMERtSEJId0c4R2t6UHlYbmEw?=
 =?utf-8?B?QlhkSWZOd2t6OVJieDZObkVKaFQ0emR2RVpkYTZ4VENTWXpoZ2FTcCs4WmlX?=
 =?utf-8?B?Z1g3SHRTZURZdGpsS29BYy90ejk3MllCaUtJd3NHWDljZG5KdFRrVjRYNkN5?=
 =?utf-8?B?WW1tZFdSZXBqRHBGVXdiYzQvb1FIS1VueHVjTHlIbFV1TUlCblVnT1l1M2pI?=
 =?utf-8?B?YXF2VkoyN1RDemVLeFZwbDhMdzhRbGxaZWtQMjVobDhseG9xMDFTeXI0SkVN?=
 =?utf-8?B?Ly9iNmpqNGJVdEhVRTU1WWpaOXd5bUV5R0pKRjR4cTJaREVOdFg5NllpMzBy?=
 =?utf-8?B?NTEyZW8xbSs1L05DaXdOQXlIK1IzQ3laUDJOT01pQVQ0RHhGbjBCZzUrWk5q?=
 =?utf-8?B?ZUtOL2orWWpHZUVyaDhIeTNDWWVWZXVaQ2N5RElhVjlPL09mODU5aG1sYVVV?=
 =?utf-8?B?a2MybVNkdHFSVFE4LytLUGd5ZW9idTFEYmUyR3ZHRWh3RkdVeks4bmFkZzF3?=
 =?utf-8?B?UW5PNERYOUpkcFFEc21qUzA2dkE4YjV1bmZjZGhQc2ZXTlZrVEplUWhMQUk1?=
 =?utf-8?B?RXFHTXE3UnE1QTB5dWQxTXp1OGo4RzR6VkFYM2xVSTdBNDJxd25sSFFVTTkw?=
 =?utf-8?B?cWpLMGp5N0RlR3V3alVZeElHVUg0aUdFNHZvdExJMnNlRkFGeHBWc1A1ZkhO?=
 =?utf-8?B?RDJ2RjJNMTVGRnM5c2dub1M1NUpaMmFnNEwrdXdKcFZ1dVZ3VlpqMkdHRVds?=
 =?utf-8?B?SkZEMUFMcVFiK0FVQTlaQVFQOTZmNVBKQnpGVlJPdUJZZlcwK0R6ZnBwdTBn?=
 =?utf-8?B?MFphSHphZ2FLc3ZKQkthTXhoVGZ1T1JvSWJqdjdFWW1iQWpIalBrSnNoanA5?=
 =?utf-8?B?MkQ1dmN1SkRlZ2lnQWNJbnFyNm1BTC9OQmJPRlkwNFJjelBqUks0TVpRTVlM?=
 =?utf-8?B?OEZsZ1lxOW1oNVBiWHNlM3dTTy9jVStiQkZDOGtHMzI3dzdwZHJ3UXZiS2N6?=
 =?utf-8?B?MXBpcU9EQ0FEV3pBUjlyZlpLVHBRMG9OV2YzSGFudzdEVzZzdFJTMlpVZDk3?=
 =?utf-8?B?bjAvOWNHcU4yUWZhK0l1am50VHhkaysrbXdselFFZW4yL0pYOS9nSUc0ZzN1?=
 =?utf-8?B?UCtFVXVjK1NSTzdURkZ4QnlqZURyOFZmZWorZGNCY0ZWYksrYm91bnhrelNx?=
 =?utf-8?B?T2RhTFRjVHZOVzYrSXpKS2RJUFRQdzFoMG8reE8vMEpHMFNGRkhmZUN4TWlI?=
 =?utf-8?B?TzRvK2dUQXJ1dlUvRGZncTdqNzdqek1vVkhlaEFTaXVtREIxNkZ6QVY0djhV?=
 =?utf-8?B?dFptWmR0QWxEa2pGUEVMMFJRNlJNYWJxdi9nbmlkV3h3R3cyR2pPRU9BQjlQ?=
 =?utf-8?B?VDNVYlo1UXJQSklPMkRiQjJ6L3hXZnpEMlg3QjlVRHEyc092Zlgyc1ViNUt2?=
 =?utf-8?B?VitUOUtMVGVJSVZDN3NZLzlJTUJ3c0RZUU1EeTRWdk5BejEyRmVTOVZuR2ow?=
 =?utf-8?B?ZWRPVi8raEs5S2FvRHNjSjZQeTFtSWJ6YkNwbVorTUVSNGdmVkp0OVcwZlg2?=
 =?utf-8?B?U0VDUzBpRm84MFVYdE04QTBqdFBxUFdzcTgwNjBOVVlMSzNhN0d0M01RTXNo?=
 =?utf-8?B?ZXg3cnV3NmlaN1FXRUw2YUZtcTlFdDI1K2VxQXpJSCtNV3ZkeGUxMDlBUTZ1?=
 =?utf-8?B?WW9RTzZrRVc1cGxZZDRxV0FnTzBUMGZCK2RJdVhvQm1wcW5RYmVBanRGd2wv?=
 =?utf-8?B?TjEvY09FV3l0NmdmdkFQeFRJdWU0QzFoaEFoSSsyNlBwTXB3ZHdvNXA1a0Vt?=
 =?utf-8?B?OXVmVHRQZWZLSXJ1UFlwTkVQUEZjVWlsUlR4U2w0OENUL1U5d0FwR1RvYzRo?=
 =?utf-8?B?UGhrSHlVMmo5amQwbUZxMU0yTlVQV2FqS2VYcDBzUE1kamY1Z0pDSk9EUHg4?=
 =?utf-8?B?Zm5QWEVYZlhFYXJEQ0UyK2NHR0lDOGJRUEw3aHNKaitnV2hBNURjdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af792ccd-21b8-4a1f-5c03-08de7353a916
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 03:20:28.9121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rSbbTz+0sdUaQdM32YVFpuCrXCd8oiikzFqNj4Kr0QScNe3RYvEdiU+WOB2Hdl1dldeQsIlTIpv1ZXu5kHIZRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7085
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4FD711815C2
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBSZTogW1BBVENIIDcvOF0gZHJtL2k5MTUvYmFja2xpZ2h0OiBQcm92aWRlIGNs
ZWFyIGRlc2NyaXB0aW9uIG9uIGhvdw0KPiBiYWNrbGlnaHQgbGV2ZWwgaXMgY29udHJvbGxlZA0K
PiANCj4gT24gMjAtMDItMjAyNiAxMDozMiwgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBDdXJy
ZW50bHkgaXQgdGFrZXMgdXMgbXVsdGlwbGUgbG9nIHByaW50cyB0byBhcnJpdmUgYXQgdGhlIGNv
bmNsdXNpb24NCj4gPiBvbiBob3cgd2UgYXJlIGFjdHVhbGx5IGNvbnRyb2xsaW5nIGJhY2tsaWdo
dCBsZXZlbC4gTWFrZSB0aGUgbG9nZ2luZw0KPiA+IGNvbmNpc2UuDQo+ID4NCj4gPiBTaWduZWQt
b2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gPiAgIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDE5
ICsrKysrKysrKysrKysrLS0tLS0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYw0KPiA+IGluZGV4IDA0
M2M5YWVmMmVhNi4uYWFjNmNkYjViNjliIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMNCj4gPiBAQCAt
MzY4LDYgKzM2OCwxNiBAQCBzdGF0aWMgY29uc3QgY2hhciAqZHBjZF92c19wd21fc3RyKGJvb2wg
YXV4KQ0KPiA+ICAgCXJldHVybiBhdXggPyAiRFBDRCIgOiAiUFdNIjsNCj4gPiAgIH0NCj4gPg0K
PiA+ICtzdGF0aWMgY29uc3QgY2hhciAqYmFja2xpZ2h0X3VuaXRfc3RyKHN0cnVjdCBpbnRlbF9w
YW5lbCAqcGFuZWwpIHsNCj4gPiArCWlmIChwYW5lbC0+YmFja2xpZ2h0LmVkcC52ZXNhLmluZm8u
bHVtaW5hbmNlX3NldCkNCj4gPiArCQlyZXR1cm4gIk5JVFMiOw0KPiA+ICsJZWxzZSBpZiAocGFu
ZWwtPmJhY2tsaWdodC5lZHAudmVzYS5pbmZvLmF1eF9zZXQpDQo+ID4gKwkJcmV0dXJuICJCcmln
aHRuZXNzICUiOw0KPiBTaG91bGQgdGhpcyBiZSBBVVggQnJpZ2h0bmVzcz8NCj4gU28gdGhhdCBp
dCBjYWxscyBvdXQgaXRzIEFVWCBiYXNlZCBEUENEIGJhY2tsaWdodCBjb250cm9sLg0KDQpBY3R1
YWxseSB3aGVyZSB0aGlzIGlzIGNhbGxlZCBoYXMgdGhlIGxpbmUNCiJBVVggVkVTQSBiYWNrbGln
aHQgbGV2ZWwgaXMgY29udHJvbGxlZCB0aHJvdWdoICVzIHVzaW5nICVzIHZhbHVlc1xuIg0KSGVy
ZSB3ZSByZXR1cm4gdGhlIHVuaXQgdmFsdWUgd2UgdXNlIHRvIGNvbnRyb2wgYnJpZ2h0bmVzcw0K
DQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+ID4gKwllbHNlDQo+ID4gKwkJcmV0dXJuICJQ
V00iOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICAgc3RhdGljIHZvaWQNCj4gPiAgIGludGVsX2RwX2F1
eF93cml0ZV9wYW5lbF9sdW1pbmFuY2Vfb3ZlcnJpZGUoc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0K
PiAqY29ubmVjdG9yKQ0KPiA+ICAgew0KPiA+IEBAIC01NDIsOSArNTUyLDExIEBAIHN0YXRpYyBp
bnQNCj4gaW50ZWxfZHBfYXV4X3Zlc2Ffc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvciwNCj4gPiAgIAkJICAgIGRwY2RfdnNfcHdtX3N0cihwYW5lbC0NCj4g
PmJhY2tsaWdodC5lZHAudmVzYS5pbmZvLmF1eF9lbmFibGUgfHwNCj4gPiAgIAkJCQkgICAgcGFu
ZWwtDQo+ID5iYWNrbGlnaHQuZWRwLnZlc2EuaW5mby5sdW1pbmFuY2Vfc2V0KSk7DQo+ID4gICAJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+IC0JCSAgICAiW0NPTk5FQ1RPUjolZDolc10g
QVVYIFZFU0EgYmFja2xpZ2h0IGxldmVsIGlzDQo+IGNvbnRyb2xsZWQgdGhyb3VnaCAlc1xuIiwN
Cj4gPiArCQkgICAgIltDT05ORUNUT1I6JWQ6JXNdIEFVWCBWRVNBIGJhY2tsaWdodCBsZXZlbCBp
cw0KPiBjb250cm9sbGVkDQo+ID4gK3Rocm91Z2ggJXMgdXNpbmcgJXMgdmFsdWVzXG4iLA0KPiA+
ICAgCQkgICAgY29ubmVjdG9yLT5iYXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0+YmFzZS5uYW1lLA0K
PiA+IC0JCSAgICBkcGNkX3ZzX3B3bV9zdHIocGFuZWwtDQo+ID5iYWNrbGlnaHQuZWRwLnZlc2Eu
aW5mby5hdXhfc2V0KSk7DQo+ID4gKwkJICAgIGRwY2RfdnNfcHdtX3N0cihwYW5lbC0+YmFja2xp
Z2h0LmVkcC52ZXNhLmluZm8uYXV4X3NldA0KPiB8fA0KPiA+ICsJCQkJICAgIHBhbmVsLQ0KPiA+
YmFja2xpZ2h0LmVkcC52ZXNhLmluZm8ubHVtaW5hbmNlX3NldCksDQo+ID4gKwkJICAgIGJhY2ts
aWdodF91bml0X3N0cihwYW5lbCkpOw0KPiA+DQo+ID4gICAJaWYgKCFwYW5lbC0+YmFja2xpZ2h0
LmVkcC52ZXNhLmluZm8uYXV4X3NldCB8fA0KPiA+ICAgCSAgICAhcGFuZWwtPmJhY2tsaWdodC5l
ZHAudmVzYS5pbmZvLmF1eF9lbmFibGUpIHsgQEAgLTU2OSw5ICs1ODEsNg0KPiA+IEBAIHN0YXRp
YyBpbnQgaW50ZWxfZHBfYXV4X3Zlc2Ffc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gPiAgIAkJcGFuZWwtPmJhY2tsaWdodC5lbmFibGVkID0g
cGFuZWwtPmJhY2tsaWdodC5sZXZlbCAhPSAwOw0KPiA+ICAgCQlpZiAoIXBhbmVsLT5iYWNrbGln
aHQubGV2ZWwpDQo+ID4gICAJCQlwYW5lbC0+YmFja2xpZ2h0LmxldmVsID0gcGFuZWwtPmJhY2ts
aWdodC5tYXg7DQo+ID4gLQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+IC0JCQkgICAg
IltDT05ORUNUT1I6JWQ6JXNdIEFVWCBWRVNBIE5pdHMgYmFja2xpZ2h0DQo+IGxldmVsIGlzIGNv
bnRyb2xsZWQgdGhyb3VnaCBEUENEXG4iLA0KPiA+IC0JCQkgICAgY29ubmVjdG9yLT5iYXNlLmJh
c2UuaWQsIGNvbm5lY3Rvci0+YmFzZS5uYW1lKTsNCj4gPiAgIAl9IGVsc2UgaWYgKHBhbmVsLT5i
YWNrbGlnaHQuZWRwLnZlc2EuaW5mby5hdXhfc2V0KSB7DQo+ID4gICAJCXBhbmVsLT5iYWNrbGln
aHQubWF4ID0gcGFuZWwtPmJhY2tsaWdodC5lZHAudmVzYS5pbmZvLm1heDsNCj4gPiAgIAkJcGFu
ZWwtPmJhY2tsaWdodC5taW4gPSAwOw0K
