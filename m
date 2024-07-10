Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DC592CDFD
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 11:13:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE8610E713;
	Wed, 10 Jul 2024 09:13:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QaA75IH2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2702210E714;
 Wed, 10 Jul 2024 09:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720602796; x=1752138796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=USUAQ0ahf4hNHQoWUBRu45JOFm6lv1wI479hiO3EWOg=;
 b=QaA75IH2zQrJXYYpj5hHLGYy1swA+rurymrWn7utf1kkTpffTGhNaYeb
 sZkIHXDgmpW+6xY9dTWR2ME4UM3fCaHV653aQKYJBSZcRG2jE7/tRYUqt
 sgspFWpOUDlAfp6Yo7FXvE8dCXGEycQudi1Nfa1C/T5aVye/2sIG+vBVm
 5GftGazOuBxtL0Dm17AegYmdg9G6QD/Z5W34mBUP2cesz1hpmSq08YcMK
 U2eF7NvhjPQD67x7kg//Pr6Kv5yANLBvEo9aF9MXIQGuMCUanOG5kwNe1
 bMAsNtAuexbHjrhkJtKhtVqJXPHfhgPsr0wPPI/6B4UuRa93n9q+T+iif w==;
X-CSE-ConnectionGUID: sXluwB/GTJah5JBEWvmUyg==
X-CSE-MsgGUID: e5xTyPiTRw+iFMGNVH2GvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="43332221"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="43332221"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 02:12:57 -0700
X-CSE-ConnectionGUID: iPd+Sjd1T4Wg4o+AbwT9Gw==
X-CSE-MsgGUID: dc41WxLpQ4CL9+VNHBqc4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="53104421"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 02:12:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 02:12:56 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 02:12:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 02:12:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 02:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fh40p7p7GI7fjKMoe+OfQvae/te05Qf+tirHZHwQdV1mSMQE4pI5icDCqzLtXvRWzWazP3IVoQAIKgYeWS3DSACLfaTVuEAKClkZcFW/GJnyQ/4roneajeLCrKBgpBNaUIB0OHLNZ0i/avOkt9m+Z16LMMUCWWTB58QDdiNMBUZ1VpzMp9o83T8Abeud4wsgXPEyWlTnYVRAbYqvhTLS15K2qOtRjmYUB/+UGW+DuYSHnPZESERwMx7zf4Ntjc3xWg/1XFk/xNQJemw56EKX6q+sPXQSxXg5Fr7yS8WuG91vPhKupIAv98nlGd1vewweKxflvtDuzucY0glKSBh7lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=USUAQ0ahf4hNHQoWUBRu45JOFm6lv1wI479hiO3EWOg=;
 b=luW4WkUO+aNYkMwvoHpHPfWFueHOAeepZ8ZWRHEbc4c5BCrfcFA0geF/MHF3Fuu0LB+lPAOLOdAbcjK3doTew0W/7poupiNSfiJnscvzqUsiEdPjeLJ+2DQnD2mWAivjsDBkQ9Q9PXJZUVN0luR6n0vfQgaEwMhzCsQ/WK3XCb6ywoLnA32fVyCspA8EehKZGcN6q18U+KmYaB+D8XMSz6f+jTwzwOAQ9ZwpZ9mU/d2byCYauOh+FBqWowOF3lerxBklXHdjK4jxdKqjnh2OGwYzvV69HKeDuZ3MJ1KDWv0VDg6ppqxpNwt8jyAdQjkmDwlSpktoI3japw62aMoWAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6473.namprd11.prod.outlook.com (2603:10b6:510:1f3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Wed, 10 Jul
 2024 09:12:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 09:12:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 20/20] drm/xe/fbdev: Adjust fbdev stolen mem usage
 heuristic
Thread-Topic: [PATCH 20/20] drm/xe/fbdev: Adjust fbdev stolen mem usage
 heuristic
Thread-Index: AQHazusvVyEr1nmog0OCuOu/dAiqVbHvtMfw
Date: Wed, 10 Jul 2024 09:12:54 +0000
Message-ID: <DM4PR11MB63605EDDF2C0FC0CF0D5606CF4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-21-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-21-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6473:EE_
x-ms-office365-filtering-correlation-id: 549f6142-9e83-46ca-72f6-08dca0c07b6b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TnNEdkZaWFlwL2tWa2RvRHFOV2RqQnhhcjErU0RMdjl2UkZ0MTBBYmJoMXdo?=
 =?utf-8?B?V24wWnVhZFd0Q2hwcGMySm52YzZpbUNCRmloN0N2Q0ZrL3c3ellLeUF4cFlJ?=
 =?utf-8?B?UERLY044aTlxcTB6bytmUFYrbEJ5cVdmRmNxZ0xBeFIyM1NtTUhQVWdqb1Zy?=
 =?utf-8?B?eEV0eExLazRwMENzUEdOMFRpencvaWhtSldENjlRVk4zS2xObW1jcDh4aTF5?=
 =?utf-8?B?ZFZVcHljc3RwaUJpaDBUZ3cvMmdmb2ZsWGFkeEZtUEdxVGZMTmlGOFhjVi8r?=
 =?utf-8?B?VUh5UXlydzdsWTF1TURBZHRDcEhZY1haOUMxVFZBdjdxNEp2ZTIwYnI4Mmh3?=
 =?utf-8?B?bDd5N0NGT1diMkZpUjVQZVJxblZDbmsyK2ZGRnZpakNuUmlWQmR0Z2dZaSs1?=
 =?utf-8?B?TW44VDdWSjNmTDFDRm5FMTVjVWtPb2djSHdBakRjaWVKMXpBN281YkFwbGFl?=
 =?utf-8?B?dzRGMGx1NVNyUGlESHNDNlRFQVZHUUVVOWUwdnpWUkcvM25HWnAvTHc3amQw?=
 =?utf-8?B?UW84MlVuWUJEZ20yWkZsTi8yV082YkFLVkpuMFY5dFdxaWlWc1NPQjA2MExE?=
 =?utf-8?B?ZFFEVDQ3LzN1RUZmVXAyWXV4SkxwWmtpWUMrc2hpS0Q5cXBQWEVkbU5RMHc3?=
 =?utf-8?B?YnFlWFFMMTVuY0haUEZuV1VGdHpqeFJRZzZPZm9YSmJzcVB6RW1XOUdESXp0?=
 =?utf-8?B?RXdtNnVOcDRub0hDcklPb2drQllNa1RMeXhOS2dPaVppaGg2bEpvVU5kS2ti?=
 =?utf-8?B?dTNhZFNLRTc2SWtSTDhxMFF6QjhqSU1tVGVRRTl0Si9iMHVBMis4Z1NHUEt4?=
 =?utf-8?B?U0NTN3ZjdVkydytDdFpldWE4d3N1OGxHcndQUUx0V3FMSUR0cHRWTDU3Mnh3?=
 =?utf-8?B?NHcweFZ4ZWU2RlFkODkvNDdJbDNCWUhLOG1xNUxaQzFJMVlIb2RCQVhNbzB1?=
 =?utf-8?B?a0RXeFRHaG5kOW4wVFgyUUd0Q2FDOUNJUW9nM2owcHRtdEUwT2tJbzNxUjlR?=
 =?utf-8?B?bitNYmh5LzBzam1IY0tXdWJYUlhsRFgyQXJHdS81Z1JIaFkvbllRYS9aVWRK?=
 =?utf-8?B?c0YyUUtINWVsRURHS0RrdnZKTmhMdG9LNnlNREphOERqOVJMa3NzS2JrOHls?=
 =?utf-8?B?RzNEMmdTTG5GSitFNnFjWnh2ZlhSc1hyR3ZNM3pBZ3hkMnQrbHA3R3I2eWxG?=
 =?utf-8?B?QkxOY000MGZ2NnBPMWw4S0xXMEhYay84cTA4c3hvTys5U2RSVWJ2NkE5d2Fs?=
 =?utf-8?B?VzRpcXNaTGF6TzcvTzJ1NGZEODJYSzNISjRKOVloc2VlT2IwVWNzVjZUVk8x?=
 =?utf-8?B?bWJMQVl0bUlXbW4rMit6U3A3L01uYnNFWENsNlBpNzY1RmtrVXgxeUtGUVFw?=
 =?utf-8?B?ellTSm1sdjU4emVlZXBZeVBCUlVYTzdtdTlVRFliWU5Ba28yZ1VxdWl4Slow?=
 =?utf-8?B?UmZwbXJtME5FK1pzYUhOU3ZPaC9ubnJFYjV1ZmdpRzQzaWdXTEZ0alUwN1V0?=
 =?utf-8?B?UlBVVU1tVEpJckswS3lNNWxIL2lCK0NYeEpvMU5UVTB3WUZPNXVQakJTM28z?=
 =?utf-8?B?MStReUtxTzRkOEtOSGN5YWJSQTR1dmpLMDZRaDRTaXFVbmNHMy9JYzBXQkF3?=
 =?utf-8?B?RlY4SmZGNjVaeTFRclJid3FLMUROWXZxUEFVWC9MbWJjMnhqNXVHT0hHbUhz?=
 =?utf-8?B?djJkenJzSXJKVlBlMGNhYUhDUG1rTlhCd3BTL2JWMGZzMFpJYjFoSTdEb1Jj?=
 =?utf-8?B?bmt0aUdoZno0VHg4Z3ZiR3drTWd2cnQ2SWowZXV5SnFzZE1INEUrdzRyMThY?=
 =?utf-8?B?Tis1aU5sZGMzTlNQbE05Y2J4M0drVXVmT3JUTDUrSnJPenEzb0J1c1JBWkpx?=
 =?utf-8?B?M1o5YVF4dWExRjVwUThoaS9UQVlweEYwTFdaOFA4TkdNM1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmgrTDIweTFHY3lUYkVSS0kwd1F1YzN3ZTRoNmc4eHBPZWppQkI0L09xWDB5?=
 =?utf-8?B?dHViYkMyanZsZmFFM1JrSEx2MTNTVmNtcVFSMFFTZ0ovQ3NzLzBkak94dmFi?=
 =?utf-8?B?Nzg2YWlPWE55cDRRcTBXc21tRGl5bVBXTnJNdjNHSlRLdE0yNklBY25hMmNw?=
 =?utf-8?B?enRxcEkyd2M3VFdiMFhLcUt4bTFYQ3JLc2hPYTdnT2gvS3d2QXdGaFdyS0hK?=
 =?utf-8?B?SVVvVDF1eUJ5bXV4dWtkRDJ2Qk1nUm5mNHhyM3BWb2tyK2R4MUtabjBjTkZi?=
 =?utf-8?B?cGlPVnhaNjJDLzJEVDNlcVZRR2dmUnd4aWxYc05sZWdXVkVVNGViTE1saFpI?=
 =?utf-8?B?ZGFQU1gzY1VSVmNKK2JINU42NHVrU2hQMWhjWUxrT2FIR3hVNVdPWG9LZU5n?=
 =?utf-8?B?TkMvMDd6cTc5aDVQTVRxbmtlRk82MitBMnFnUXhEK1krV2N4akRvcllqdVJW?=
 =?utf-8?B?Vnl4dmllMDFZMnA2QkZnR0kyNTVNWUwxbVlrbGp0MFhTU3Z2TC9EYU5BUlho?=
 =?utf-8?B?d1JXdE5mY3MveEZzUm1WRUdrbjhWYUJ2ZDQ3MW9rSzNYMUtVZ1NSQXlxUUZX?=
 =?utf-8?B?OEd6VFlWdjNCdzl2cGZFTHYwZHJiS0d2bUNncFV5eVhvcUZSdTZEeTlkQlJy?=
 =?utf-8?B?MUNHbDhlN0MrNVhQSHNQNjdGVHJjRzJPcTZOajFTWU91Y3VWU3FQczhzV21s?=
 =?utf-8?B?cC9HQ1pwYkNFRXhNZERXSXJjUEtuNEdOemcxTUF2QVZaRytONzgySm12TGVB?=
 =?utf-8?B?ZDlzbmFMSTNwUkpDSzlJUEw0cGFES3gvMkoxZE4wM1diM3l4RmJ0b0NDMXZt?=
 =?utf-8?B?cVQ5Qi9nUE5jUGNmYVJhZWN1elpMRGc5SWlkMHJ2ZjNPakxkcDNvbUh5REJ5?=
 =?utf-8?B?RndHSGtETjVFaXh0NUpKWmhYSXBHUjF5WWcxMUg5QWg1dmRyd2JiK2piUU0r?=
 =?utf-8?B?dDBxdm5PR1U5MGV1TWlSS0E3QUtWNzV6WnB5R0g5VkJtY2wzOTFUbEh5ak45?=
 =?utf-8?B?NmQzNnhNeEtVV1Y0TkYxdFpUQjJsQVZPN3V1Nzh2djdoZm1ZNG5hSHBCeUM1?=
 =?utf-8?B?ZU14M1ZTTnFIcDgwNE0zNktHRmozeTNsL2I3Qk1IdUtvZEgrOUZHT056OWM2?=
 =?utf-8?B?cTNLZXljaUlZbk5rOGVTeHA0cEhVQ1huREJWU04rR0NhYmw0bzRjODBycHNQ?=
 =?utf-8?B?LzNVQkJQVG5BTVQzM3pFWE9PTEUySzRYUmd0Tkp0dzFNQ1ZtWkt1M29Dd0dU?=
 =?utf-8?B?Ly9icWY1TmZHNDFDcnlzWXZCQ1NnNTB6S3VGd2Z1QllRa0M4aE1BT1JPbk5V?=
 =?utf-8?B?T3hOUGw1MitBUVM4R1Vqa2puU3Z2YjdsVStyK2NGdmJnRTJmanZTL0hScVRI?=
 =?utf-8?B?VVo3YkJCSnlKVGpDb29TNm4zY2lIQjVxb0hYdVFIT2FQMnJLTVZlN1hTMnZW?=
 =?utf-8?B?ZkpYaVNvV3dZdS94enhmMnFmR0Z4eHdqLzBRTkdWbThNQW5yUEozcFJxSTRq?=
 =?utf-8?B?QXk2dnhSZTUyOWU4QWNkaTJsSjBXb1JGYWtPQjR6dm9aTHhBL3l6bFp3UDN2?=
 =?utf-8?B?MWlxdUphVXhXbmpRQ0ZQNnYya05hQ1IzMWtLdHJBbXdyMTZNYlErQU9RWUtH?=
 =?utf-8?B?SENjdlJzSDZKd2hlMEd5Tys3TXNZNUM2QXZ5RURIWE4zZXVDREorNlRqOFNL?=
 =?utf-8?B?b3BDL1djcGZkbW9qb2diMTFPRkRaeFl2TUNESXllcVlQcGJGK0RDNnNyTnlx?=
 =?utf-8?B?ZGoxNUNtWkZ6T2hEbVJucXVBWEhZY3pTK04zYUZhcGNlTm44Syt4OGhZZ3Vr?=
 =?utf-8?B?Mm5XSjVzK1ZMa2VLblc1a1ZVTlNEaVY2VEZKZmlRMHhjZ0V0Yk5iYVhzV3Fq?=
 =?utf-8?B?NHFMbm5WNGQ3NEhmYXUzbCtFSm9lZWJJOWtiRnpJQStZS2xjM0J2VXNST2tL?=
 =?utf-8?B?WEVta1hFUkdPOVpWT1JtS3IxM3ArS2wwVUdtNlFuc0c2empJT0pkT2hCQ0hO?=
 =?utf-8?B?OTFkS05QSHNMTTFYaXBKcHNOOW8rYVFnQVFyWDRvYWZJSkN6TDRVQWxEZ1A5?=
 =?utf-8?B?Z0sxcy9kT3I0eFZ1QmN3S2U0eUNib1RKNStIVHRacWFTTkNvMlBUMzd1SkJN?=
 =?utf-8?Q?ztdhRVBdFlmvUzs0fJrBJ7VLh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 549f6142-9e83-46ca-72f6-08dca0c07b6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 09:12:54.4538 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f1BEC2kBx+/1Js3ObmTVMjb4kCYcqTEIBjEvoSR/llmOhdQr+TAI4nJtBSFkUbCSwatmk7iwl2ZiJrqihCAaOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6473
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDIwLzIwXSBkcm0veGUvZmJkZXY6IEFkanVzdCBmYmRl
diBzdG9sZW4gbWVtIHVzYWdlIGhldXJpc3RpYw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFJlcGxhY2UgdGhlICIxLzIg
b2Ygc3RvbGVuIHNpemUiIGZiZGV2IGZiIHNpemUgaGV1cmlzdGljIHdpdGggc29tZXRoaW5nIGEg
Yml0IG1vcmUNCj4gY2xldmVyLCB0aGF0IGlzIGFzayB0aGUgRkJDIGNvZGUgaG93IG11Y2ggc3Rv
bGVuIG1lbSBpdCB3b3VsZCBsaWtlIHRvIGhhdmUNCj4gYXZhaWFsYWJsZSBmb3IgaXRzIENGQiB1
c2UuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5z
aGFua2FyQGludGVsLmNvbT4NCg0KPiBUT0RPOg0KPiAtIFRoaXMgZG9lc24ndCBhY2NvdW50IGZv
ciB0aGUgZmFjdCB0aGF0IEZCQydzIGlkZWENCj4gICB1c2FibGUgc3RvbGVuIHNpemUgbWlnaHQg
ZGlmZmVyIGZyb20gb3RoZXIgdXNlcnMgb2Ygc3RvbGVuDQo+IC0gV291bGQgYmUgbmljZSB0byBz
aGFyZSB0aGUgY29kZSB3aXRoIGk5MTUsIGJ1dCBuZWVkIHRvDQo+ICAgZmlndXJlIG91dCBob3cg
dG8gYWJzdHJhY3QgdGhlIHN0b2xlbiBzaXplIGFuZA0KPiAgIGRncHUvbG1lbSBzdHVmZg0KPiAN
Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS9pbnRlbF9mYmRl
dl9mYi5jIHwgMTEgKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hl
L2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5
L2ludGVsX2ZiZGV2X2ZiLmMNCj4gaW5kZXggZjY3YmMwZmQ4MDNiLi42MmUxZDE3NmIwN2YgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L2ludGVsX2ZiZGV2X2ZiLmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiBA
QCAtMjQsMTIgKzI0LDExIEBAIGJvb2wgaW50ZWxfZmJkZXZfZmJfcHJlZmVyX3N0b2xlbihzdHJ1
Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gIAlpZiAoIXN0b2xlbikNCj4gIAkJcmV0
dXJuIGZhbHNlOw0KPiANCj4gLQkvKg0KPiAtCSAqIElmIHRoZSBGQiBpcyB0b28gYmlnLCBqdXN0
IGRvbid0IHVzZSBpdCBzaW5jZSBmYmRldiBpcyBub3QgdmVyeQ0KPiAtCSAqIGltcG9ydGFudCBh
bmQgd2Ugc2hvdWxkIHByb2JhYmx5IHVzZSB0aGF0IHNwYWNlIHdpdGggRkJDIG9yIG90aGVyDQo+
IC0JICogZmVhdHVyZXMuDQo+IC0JICovDQo+IC0JcmV0dXJuIHN0b2xlbi0+c2l6ZSA+PSBzaXpl
ICogMjsNCj4gKwlpZiAoc2l6ZSA+IHN0b2xlbi0+c2l6ZSkNCj4gKwkJcmV0dXJuIGZhbHNlOw0K
PiArDQo+ICsJLyogdHJ5IHRvIGVuc3VyZSBGQkMgaGFzIGVub3VnaCBzdG9sZW4gdG8gZG8gaXRz
IGpvYiB3ZWxsICovDQo+ICsJcmV0dXJuIHN0b2xlbi0+c2l6ZSAtIHNpemUgPj0NCj4gK2ludGVs
X2ZiY19wcmVmZXJyZWRfY2ZiX3NpemUoJnhlLT5kaXNwbGF5KTsNCj4gIH0NCj4gDQo+ICBzdHJ1
Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiZGV2X2ZiX2FsbG9jKHN0cnVjdCBkcm1fZmJf
aGVscGVyICpoZWxwZXIsDQo+IC0tDQo+IDIuNDQuMg0KDQo=
