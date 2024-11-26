Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBD39D9844
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 14:20:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8195710E406;
	Tue, 26 Nov 2024 13:20:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lg+zGH2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9150410E893
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 13:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732627207; x=1764163207;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hJl1U84MH4T9IKupnbCDqTIBcWonxOycUM+LjlU2Oy0=;
 b=lg+zGH2owSBTIao3A0SgEEOfnXgU5Q3O6wFCs/rf4mgRAdr5dZWKwG8C
 vz7TczCmV3TY3SY3TLCCMnE+f+rXhFNfcu40zfD0sVP3yzaeHKn7x8yY7
 xuoxh2C3v9Og7ymRtdHhOS/W63tp35NNiyusv9n2+5D5PxzOaR+veof3R
 ICYiBun9fz9p3piaTdKwbnKlwlEPZG7X4PSQQEUaMeUANtYBDZluRcJT6
 jbL2qj8wZSquIVY/kZfdJcWCbi7qGZYhRjojm1SXIbPJH9+DPI4F3j6eT
 a4/FzZcc67M4NC3jjqkILwEMkF3h33oTtrJHEHJYy4wFWN4pKrv4g6cqg g==;
X-CSE-ConnectionGUID: rh4dsvVOQGCsF+UlEwtByA==
X-CSE-MsgGUID: Cyov9Tu2Qdiw/fPNjVvoag==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="44170191"
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="44170191"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 05:20:06 -0800
X-CSE-ConnectionGUID: 7mRdVnddRoufOG7/Q5DrIg==
X-CSE-MsgGUID: gmhgsEstQEaywikBxIQFsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,186,1728975600"; d="scan'208";a="91431904"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 05:20:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 05:20:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 05:20:05 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 05:20:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fmrLN2VvDqf7zWzx8ExwB/8z3K9YnPVi7Sf43vvw1Is0d6/+NIje+8jHh/SBENnQntUcT/T3T9JAOl1N6qVB2eLyr41AnJQP7j+5CkoPHmNiCyvSFnAbwrp6AxnvwxB6sPH6F4nzRSCDnsPH8kSNFWiPt7nXIsslMfUfVm1Su8nanzxN+DBdHjfCHnD4VWdbLab+vaFeCHoHL86r+z64hEfQdqJCA2yiyegCEXdAewOMltnM/xauc+KeEgta5GNtIed0gpEq4BKyrDlQcf/fl+c1L4bVx9PFwlDTSf0/TB4w1xY6sAM0B1lhWEq3RaEwUQVU4LBMOncgD6Atm+BJnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hJl1U84MH4T9IKupnbCDqTIBcWonxOycUM+LjlU2Oy0=;
 b=E4aWMI3106x7/2LofrQhCP8CsTJcYoCMCwgIFE47F2ZFz4KojcJC7y0s7SHu+1RGA0eGJET23ew4FtWRjaA/R/j4FnSHQc1V46EmQbwDRU4CKqVKoDUZd7fQtbT0KhWpHCZbMsYHNIa4CHHowz2FVuscSR1NtgAhPJ1mqh/YvW5ujA97Sdiq4YmzUj4TeoO+PoiRzaRV8yGUY3cgAPLc3jQgwKPvFIs6j2JZNx4VboiNDx0dWQtiNdjR/uAlh76OLhHfnCVfPSS98/l5tWGSqunT5ngHkpxwLQViLhdPagJvCxZclICWmOX1Cxz3u+tIKkCZsQsKwLhwUqcClSq3ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Tue, 26 Nov
 2024 13:20:02 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.8182.019; Tue, 26 Nov 2024
 13:20:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Jadav, Raag"
 <raag.jadav@intel.com>
Subject: RE: [PATCH v5 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Topic: [PATCH v5 1/2] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Index: AQHbL4ZUPJRVaGvlQkO2Lzm8cO7lbrLJbHoAgAA9CWA=
Date: Tue, 26 Nov 2024 13:20:02 +0000
Message-ID: <MW4PR11MB7054FB29CF01D5F87524DCBCEF2F2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241105131732.331436-1-mika.kahola@intel.com>
 <20241105131732.331436-2-mika.kahola@intel.com> <877c8qxrzb.fsf@intel.com>
In-Reply-To: <877c8qxrzb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB6117:EE_
x-ms-office365-filtering-correlation-id: 0a4da04b-98d1-4bb8-ed31-08dd0e1d08f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TkQwZUdHWEU5amd3VW9TYU1wQ1g5VUtJRjlIelF3NHEzVnJHNUNtZ0dCTEll?=
 =?utf-8?B?TG1RczRXQjEzNjc1SzFkdmo1cWpMSjduOXkzM0dVRHhIVTR3dzdpUkoxd0Nl?=
 =?utf-8?B?VUJpR0I4YXBBNEF3YzRBaDRHc1NSOC9DQVh0dFZ2ekpEam5yTkhTUHpMb2dz?=
 =?utf-8?B?cW9Kc29jVG9kZHhmcXJ3bk9WVUkyeFp6UkJGY0VxL1dYbU43ZUwvQ1RtdG91?=
 =?utf-8?B?NnZzblY3SUl3Q2szRThJbTlmUFpaQmF1M2VlQnVJMFVSNEduMGxNUjVwUTBy?=
 =?utf-8?B?U05sUlFadmxBWHNkYmJIYU5FTUFYeCtBcTlTZmdFRXhNZUZFbDlyTGE3USsy?=
 =?utf-8?B?bnUrVTdnUnhNY0V6WklXUEo5WHJ2N3IzdXdiRHlmSkE0cjQ0ZFpmODJ5NC9U?=
 =?utf-8?B?WnFnaWtiY2R5d2dvSjdMWDM2VHU0SmxwODNQbDFFVkNydk96b01Gc0Jrbm5q?=
 =?utf-8?B?ZFZXL2g0MTdtTlpXNWF1ckhqcnNIbW9na3RCL0J1Y3ZjUW9iQW1YMWQ4d2M5?=
 =?utf-8?B?MS8xZnVqRjg0Y2xvNmxrdU1rblkrdXp1OXZmSEFtUDZlWkpGRTlsUXZtSDE5?=
 =?utf-8?B?OGl1U095NE52WTBMYXVjYjJxSFpmY3F1UEQ5MEh6eTJ1ZFdkaFFZZm9MN1VK?=
 =?utf-8?B?c3I5RGN3TW0weElXM1hhM1plWEVrQzVXaU84OXg2YmVCazZwQ0FBQTliUlQ0?=
 =?utf-8?B?b3NESmV6cUFCQzVKTDZ1VFJsL0FBUkZxN2o5TlVoczRKR3lua1JlU2tvUXl2?=
 =?utf-8?B?cnBQa0dTcjBITHdUOXJ5aHh6bk0wdzlJVVdxZnhTVld5SFVoNWpwckwyNVBm?=
 =?utf-8?B?V0V4b0RyUjA1QklhYldubXhyM21FbFNFT21CYjE0U1BLejBGK0x6ZGNsWEVZ?=
 =?utf-8?B?NDFmYnEvR0Y5NEx5ZEVONkROcnE0SWgvY3lPSG5LVTVBVklQbnVidzJBOGt2?=
 =?utf-8?B?d0RlS3dJODFIelF0SkNhRDVmT0xwQXhhOUlOais5Q2NmazF5QW1lQXprdU9x?=
 =?utf-8?B?SHNzM0x5c1YzTkF6MTZCd2FWTHk5ZEN0L2ovMVk4ZEhPaFNpRzZlQWVXM0ts?=
 =?utf-8?B?QWNkWERVakI1Ny9VSXIzeDh4MGs3UUFSaFBPK1VBTjJtY3RrVDk0dm90S0o3?=
 =?utf-8?B?Wm93NzcwVDFCMkJTMDgxV05sRXY2eDFYOEdIWU9jUzlEOStWOXA0Vzc5Z0c3?=
 =?utf-8?B?QlVaczdPNjB5UjZGT3VKVElQL0V5cjd5cU9wV1JJZ09FMEZYcEVHdnRweFcy?=
 =?utf-8?B?cFJybVNWZUY2S1NQV0RJUmxTTnpFQk9mMGsvSS9mYW9aejRjR1FBeklLelFu?=
 =?utf-8?B?Rm1SZ3pVVjVZWTMveHR0OUFPR1graW9IWlpRbTVSVHhKb1pSdEtyMVh1a3Vw?=
 =?utf-8?B?RGhtTzVFUVZmY0E4bW96Y21wOXRaTXNjYk1Rczc3ZVo0NFVPNEM0K2NBQUxJ?=
 =?utf-8?B?Z1pndXk1NFp6T1hrSEpuajA4Nm1ZM0hFWFlnSzhYR0Qxa2FZYnYzd1dGa0k4?=
 =?utf-8?B?SWRuUjQzTnFUOHhCMkYrZis1ek43UVFDNHFSSE8rZjVOL0FFVjN5cWZUdUtT?=
 =?utf-8?B?V0NIWnRVUHk5SWRWb3lKUnFvU2V2V3U5dU5SUmVHdG9obGV3Q3pia1VOVUgx?=
 =?utf-8?B?OUZjUDdJU3lJQVRITDZ3NmtYMitoM1pDSzRxRE5tR2l4bzdJWGtSK3lkRzF1?=
 =?utf-8?B?QUN0Y3hYZDVPdGR3dG5YTjVKcitYTy9BeTFkZm9hbXR3cmEybnI0TzFTQS9l?=
 =?utf-8?B?TnY5azd4bUJrNXFEcldQNEVzWEFvWmxWdkJoQzhjWkZDV1BxTUt6OTVHcFlh?=
 =?utf-8?B?ZkxJQWE2K0ViVlBRSWkvSXkwOGJiRnZmeGQzRkYwTG8rSGEwUHR0Ujd4Q3hl?=
 =?utf-8?B?SEhHV3RleU1zd1gvbHhKSEhVSDRERU80QUZjTTdJZkVEZGc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WkovNDQ0bXlrYllCZkxPdzJYWjJpakhDb2Q2NXo5Z0dJUnl6ZjR5TXlaQ0d2?=
 =?utf-8?B?dTNUUi84LzNqZXI4ZkxYQzRMUXd2MmVmdzRjaHNnZUV5c3dOL2hZa01wZWp5?=
 =?utf-8?B?TVRnQm1vUlNNRkdiTGQ1NndrNEhLcy9OVHYrRCtybHRoS1JKSUFscGhGZlho?=
 =?utf-8?B?NEZxRlVXZDBmU3BGR1YzaDZZMFhsMEVOMFV4bkQwSEh6U1piNGgvTHk5QWFX?=
 =?utf-8?B?YzdsZG9rdXZwNy8vVzM4dFoxQUVQeWpZai81U3BxSG9BTG40SHNzZzFhY2F5?=
 =?utf-8?B?YUwwUVczaDc3M1hKMkhKMURjdEliWmFBTWJRczBiZ1FhZjlVM1dUck5IaXQv?=
 =?utf-8?B?RjB4MXZPNnJFYXBJa2d2cHlscldDWmtYU1ZRRXRwYVUwMjAxR3hJYXRhbVZx?=
 =?utf-8?B?bWtCUFpaQ1JMY1d1UnJMZ09yVU1jQ2VSY0JuemQxRjNHL0ZTS2NISWdET05a?=
 =?utf-8?B?aHA2Qnl3SXNRM3paS29UNk4vV0JjM0EyMnM5NUtMZUtKejlNTGNMc0kvcG1V?=
 =?utf-8?B?MHdFdXNDSHNqVVViRFZmekJKN3VqRU5hL29ZaG1RK3A4clgzK0dXdnRrZ3Uy?=
 =?utf-8?B?MW50ZmNYUHByd0dFdnFEYmZXSFVRb0hSaDROS0NDOTZuMXQvdU1VenVqcTVj?=
 =?utf-8?B?Z2tUUzV5S0xkNHlneGhwNlJacGo0aXR6a0dQQXkrc0JpWWl6RGZCRWNOVmxi?=
 =?utf-8?B?NGtEcVgxM3Y5SS9QaGcycEFPQk92d3MrVDVob3pXNTdUYS9LTktsYVVvdWlm?=
 =?utf-8?B?WW5OT1BOSkg5aGlqeFpnRU1QTlgzeDl2QUZsK0ZmWTNpNGk2YjhXRmFhNW13?=
 =?utf-8?B?L2QwdDlhaUVueG9hanJlNmFNcHc4QzNVQ3JMaC9qVkhobmI5MkFkeCtnQjlE?=
 =?utf-8?B?TEd6UWpXVTNjTW52NjYxL1ZBcnltWXQvbnRXNWNvbER6SjQrSENDbVJwMXpu?=
 =?utf-8?B?aTdLZ201UnBJMnNDWEIzU0dDbkhLRFhXclFkZmgrQ1A3bmVpRzAyK1dQS1Zp?=
 =?utf-8?B?d05FQ2FOQjVoaXZWVFNWcXk0bkRaamdNV2h1Y0w5ZmxnejNIU3cvamhDL1ZJ?=
 =?utf-8?B?Z2NqcnZBOG9Jem02RXRYMGI0NE9lUFlYQllWaTdnYkMwOERycVhkWSt1ZlBs?=
 =?utf-8?B?Z2dBRGpmSXlrUU9xQXNmTGYzbEF5MzRjb2twMlNHTksyUjdlZWsxM3dxWXVS?=
 =?utf-8?B?MkRuVnN3SmVDdStIaytZRXl4TDM4RmkxcVZVT29aa2NaUVY1SkJLWXNjb1pm?=
 =?utf-8?B?dE5sWGY2bHN5U0QrZWVha2NidmFpVkR5MkxSR1dnNENSUzkxVjBvM3pUVjNU?=
 =?utf-8?B?U25ISUV6dmNTOTFnYTN5L0hqMjR2REJzQkFRUnNBQlNyZllwNkFJWGtnc3gw?=
 =?utf-8?B?dFpJL3Q0Zy9yNmRMQlNiZGdIY0RpUE1obVg5Wnh3aFlhUVhhMlRsTG5GTlQ5?=
 =?utf-8?B?cWU1VVhVRFQzeElQVjdSNXVMS1hXSjNRM1RsalJvRkg5SjZnQ1k3R0R0NFlX?=
 =?utf-8?B?Rk9QcXBRbTVLUElKTTRvR2lSY2hLQ2psNDhVOUxVRlZRc2RSWUtHQUNpNmpj?=
 =?utf-8?B?b3hndENla3pkWkdiMnVJZW5NR29hekN6MlZkOHBkUnVKQmNQUmRBdno4NWs3?=
 =?utf-8?B?d1kwU0x1aHo3ZUh3UUlKMVRlQXZyTm1CVGVSb0hyWEhoTmN2WHZXbC9Nd3lx?=
 =?utf-8?B?T1E1UEtSb3pja3dTYXZLWjM1bFFFYmpoVkhkemN1cFVFS0NQbHNOZDdxOWJP?=
 =?utf-8?B?eHY3U3E3NXdpY2hlUVpuM1FHMG1ZcEV3Y3B3RFZqa1lkRGtPNWp5dHY4S09R?=
 =?utf-8?B?dGNCMHZiRWZiYUZtWHltcS9zWTJYNnY2Y2ZIbXF5UmVHNUtWKzRpM0VGM2Yw?=
 =?utf-8?B?ZGJCb3RseVNyeHZvNHoyclkyQlE1LzFKTEMvMVRIYlBnRzZDNU9CdktqOTdC?=
 =?utf-8?B?bUlYdWRCdk5BeU5IZk5EajRGM3NGcjdqL1h2aEdRY05XaVJ5bXRwWGRLMWM5?=
 =?utf-8?B?UHhqaGM5Y3lRQkV6akR3ci9vdFErTDBVWjFyb3o2ZnFRWXRNbE1wNDhSaDZz?=
 =?utf-8?B?K0UwTWp5S3RaV3dRK3BVRTR2UmhGRlNkVWhiVlpGTndFaWtDYW80eXhRbnRj?=
 =?utf-8?Q?rdjEGwPeOCOP873Wybjp27lGK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a4da04b-98d1-4bb8-ed31-08dd0e1d08f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2024 13:20:02.3267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B930tXoqNn7dOqb0c0s9N6UV97oFaLxZNjiwIS7sjiu+mTI+l8wBbI4j4NNtWg3RJa6J5D4MFJhOHvrBvOUURQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6117
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCAyNiBOb3ZlbWJlciAyMDI0
IDExLjMwDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNvdXNhLCBHdXN0YXZvIDxndXN0YXZv
LnNvdXNhQGludGVsLmNvbT47IEphZGF2LCBSYWFnDQo+IDxyYWFnLmphZGF2QGludGVsLmNvbT47
IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BB
VENIIHY1IDEvMl0gZHJtL2k5MTUveGUzbHBkOiBQb3dlciByZXF1ZXN0DQo+IGFzc2VydGluZy9k
ZWFzc2VydGluZw0KPiANCj4gT24gVHVlLCAwNSBOb3YgMjAyNCwgTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gVGhlcmUgaXMgYSBIVyBpc3N1ZSB0aGF0IGFy
aXNlcyB3aGVuIHRoZXJlIGFyZSByYWNlIGNvbmRpdGlvbnMgYmV0d2Vlbg0KPiA+IFRDU1MgZW50
ZXJpbmcvZXhpdGluZyBUQzcgb3IgVEMxMCBzdGF0ZXMgd2hpbGUgdGhlIGRyaXZlciBpcw0KPiA+
IGFzc2VydGluZy9kZWFzc2VydGluZyBUQ1NTIHBvd2VyIHJlcXVlc3QuIEFzIGEgd29ya2Fyb3Vu
ZCwgRGlzcGxheQ0KPiA+IGRyaXZlciB3aWxsIGltcGxlbWVudCBhIG1haWxib3ggc2VxdWVuY2Ug
dG8gZW5zdXJlIHRoYXQgdGhlIFRDU1MgaXMgaW4NCj4gPiBUQzAgd2hlbiBUQ1NTIHBvd2VyIHJl
cXVlc3QgaXMgYXNzZXJ0ZWQvZGVhc3NlcnRlZC4NCj4gPg0KPiA+IFRoZSBzZXF1ZW5jZSBpcyB0
aGUgZm9sbG93aW5nDQo+ID4NCj4gPiAxLiBSZWFkIG1haWxib3ggY29tbWFuZCBzdGF0dXMgYW5k
IHdhaXQgdW50aWwgcnVuL2J1c3kgYml0IGlzDQo+ID4gICAgY2xlYXINCj4gPiAyLiBXcml0ZSBt
YWlsYm94IGRhdGEgdmFsdWUgJzEnIGZvciBwb3dlciByZXF1ZXN0IGFzc2VydGluZw0KPiA+ICAg
IGFuZCAnMCcgZm9yIHBvd2VyIHJlcXVlc3QgZGVhc3NlcnRpbmcgMy4gV3JpdGUgbWFpbGJveCBj
b21tYW5kDQo+ID4gcnVuL2J1c3kgYml0IGFuZCBjb21tYW5kIHZhbHVlIHdpdGggMHgxIDQuIFJl
YWQgbWFpbGJveCBjb21tYW5kIGFuZA0KPiA+IHdhaXQgdW50aWwgcnVuL2J1c3kgYml0IGlzIGNs
ZWFyDQo+ID4gICAgYmVmb3JlIGNvbnRpbnVpbmcgcG93ZXIgcmVxdWVzdC4NCj4gPg0KPiA+IHYy
OiBSZW5hbWUgV0EgZnVuY3Rpb24gKEd1c3Rhdm8pDQo+ID4gICAgIExpbWl0IFdBIG9ubHkgZm9y
IFBUTCBwbGF0Zm9ybSB3aXRoIGEgVE9ETyBub3RlIChHdXN0YXZvKQ0KPiA+ICAgICBBZGQgVENT
U19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIGZvciBjbGFyaXR5IHdoZW4gd3JpdGluZw0K
PiA+ICAgICByZWdpc3RlciBkYXRhIChHdXN0YXZvKQ0KPiA+ICAgICBNb3ZlIHJlZ2lzdGVyIGRl
ZnMgZnJvbSBpOTE1X3JlZy5oIHRvIGludGVsX2N4MF9waHlfcmVncy5oDQo+ID4gKEd1c3Rhdm8p
DQo+ID4gdjM6IFVzZSAic3RydWN0IGludGVsX2Rpc3BsYXkiIGluc3RlYWQgb2YgInN0cnVjdCBk
cm1faTkxNV9wcml2YXRlIiAoSmFuaSkNCj4gPiAgICAgTW92ZSBkZWZzIGFib3ZlIEMxMCBkZWZp
bml0aW9ucyBpbiB0aGUNCj4gPiAgICAgaW50ZWxfY3gwX3BoeV9yZWdzLmggZmlsZSAoR3VzdGF2
bykNCj4gPiAgICAgTW92ZSBkcm1fV0FSTl9PTigpIGluc2lkZSBXQSBmdW5jdGlvbiAoR3VzdGF2
bykNCj4gPiAgICAgUmVuYW1lIHdvcmthcm91bmQgZnVuY3Rpb24gYXMgd2FfMTQwMjA5MDg1OTAo
KSAoR3VzdHZvKQ0KPiA+ICAgICBVc2UgYm9vbGVhbiBlbmFibGUgaW5zdGVhZCBvZiBpZi1lbHNl
IHN0cnVjdHVyZSAoUmFhZykNCj4gPiB2NDogRHJvcCBkcm1fV0FSTl9PTigpIChSYWFnKQ0KPiA+
ICAgICBGaXggZnVuY3Rpb24gZGVmaW5pdGlvbiB0byBmaXQgaW50byBhIHNpbmdsZSBsaW5lIChS
YWFnKQ0KPiA+DQo+ID4gUmV2aWV3ZWQtYnk6IFJhYWcgSmFkYXYgPHJhYWcuamFkYXZAaW50ZWwu
Y29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5
X3JlZ3MuaCB8ICA4ICsrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYyAgICAgICB8IDMxICsrKysrKysrKysrKysrKysrKysNCj4gPiAgMiBmaWxlcyBjaGFu
Z2VkLCAzOSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5X3JlZ3MuaA0KPiA+IGluZGV4IGYwZTVjMTk2
ZWFlNC4uNWEwYjU1Y2NhNGEzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeV9yZWdzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHlfcmVncy5oDQo+ID4gQEAgLTIwMCw2ICsyMDAsMTQg
QEANCj4gPiAgI2RlZmluZSAgIFhFTFBEUF9TU0NfRU5BQkxFX1BMTEEJCQlSRUdfQklUKDEpDQo+
ID4gICNkZWZpbmUgICBYRUxQRFBfU1NDX0VOQUJMRV9QTExCCQkJUkVHX0JJVCgwKQ0KPiA+DQo+
ID4gKyNkZWZpbmUgVENTU19ESVNQX01BSUxCT1hfSU5fQ01ECQlfTU1JTygweDE2MTMwMCkNCj4g
PiArI2RlZmluZSAgIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9SVU5fQlVTWQlSRUdfQklUKDMx
KQ0KPiA+ICsjZGVmaW5lICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0NNRF9NQVNLCVJFR19H
RU5NQVNLKDcsIDApDQo+ID4gKyNkZWZpbmUgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfREFU
QSh2YWwpDQo+IAkoVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIHwgXA0KPiANCj4g
V2h5IGRvZXMgdGhpcyBjb250YWluIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9SVU5fQlVTWT8g
WW91IHNldCBpdA0KPiBzZXBhcmF0ZWx5IGFueXdheSAoYW5kIHRoYXQncyBob3cgaXQgc2hvdWxk
IGJlKS4NCg0KVGhpcyBpcyBhIGxlZnRvdmVyLiBUaGUgc3VnZ2VzdGlvbiB3YXMgdG8gdXNlIHRo
ZXNlIHNlcGFyYXRlbHkgYW5kIG5vdCBjb21iaW5lIHRoZXNlLiBTaW1wbHkgZm9yZ290IHRvIHJl
bW92ZSB0aGlzIGZyb20gaGVyZS4NCg0KPiANCj4gPiArDQo+IAlSRUdfRklFTERfUFJFUChUQ1NT
X0RJU1BfTUFJTEJPWF9JTl9DTURfQ01EX01BU0ssIHZhbCkpDQo+ID4gKw0KPiA+ICsjZGVmaW5l
IFRDU1NfRElTUF9NQUlMQk9YX0lOX0RBVEEJCV9NTUlPKDB4MTYxMzA0KQ0KPiA+ICsNCj4gPiAg
LyogQzEwIFZlbmRvciBSZWdpc3RlcnMgKi8NCj4gPiAgI2RlZmluZSBQSFlfQzEwX1ZEUl9QTEwo
aWR4KQkJKDB4QzAwICsgKGlkeCkpDQo+ID4gICNkZWZpbmUgICBDMTBfUExMMF9GUkFDRU4JCVJF
R19CSVQ4KDQpDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5j
DQo+ID4gaW5kZXggYjE2YzRkMmQ0MDc3Li5lNDBkNTVmNGMwYzQgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gQEAgLTEwMTMsNiArMTAxMywz
MCBAQCB4ZWxwZHBfdGNfcGh5X3dhaXRfZm9yX3Rjc3NfcG93ZXIoc3RydWN0DQo+IGludGVsX3Rj
X3BvcnQgKnRjLCBib29sIGVuYWJsZWQpDQo+ID4gIAlyZXR1cm4gdHJ1ZTsNCj4gPiAgfQ0KPiA+
DQo+ID4gK3N0YXRpYyB2b2lkIHdhXzE0MDIwOTA4NTkwKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5LCBib29sDQo+ID4gK2VuYWJsZSkNCj4gDQo+IFllYWggSSBzdGlsbCBkb24ndCBsaWtl
IGZ1bmN0aW9ucyBuYW1lZCB3YV8xNDAyMDkwODU5MC4gSXQncyBtZWFuaW5nbGVzcy4gV2hhdA0K
PiBkb2VzIGl0IGRvPw0KVGhhdCdzIGEgZ29vZCBwb2ludC4gV2UgZG8gaGF2ZSBmZXcgZnVuY3Rp
b25zIGluIG91ciBkcml2ZXIgdGhhdCBoYXZlIHdvcmthcm91bmQgbnVtYmVyIGluIGl0cyBuYW1l
Lg0KDQpXaGF0IHdvdWxkIGJlIHRoZSBiZXR0ZXIgd2F5PyBBZGQgYSBjb21tZW50IHRoYXQgcmVm
ZXJlbmNlcyB0byB3b3JrYXJvdW5kIG51bWJlciBhbmQgaGF2ZSBhIG1lYW5pbmdmdWwgZnVuY3Rp
b24gbmFtZT8NCg0KPiANCj4gPiArew0KPiA+ICsJLyogY2hlY2sgaWYgbWFpbGJveCBpcyBydW5u
aW5nIGJ1c3kgKi8NCj4gPiArCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkaXNwbGF5LCBU
Q1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQsDQo+ID4gKwkJCQkgICAgVENTU19ESVNQX01BSUxCT1hf
SU5fQ01EX1JVTl9CVVNZLA0KPiAxMCkpIHsNCj4gPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5k
cm0sDQo+ID4gKwkJCSAgICAiVGltZW91dCB3YWl0aW5nIGZvciBUQ1NTIG1haWxib3ggcnVuL2J1
c3kgYml0IHRvDQo+IGNsZWFyXG4iKTsNCj4gPiArCQlyZXR1cm47DQo+ID4gKwl9DQo+ID4gKw0K
PiA+ICsJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgVENTU19ESVNQX01BSUxCT1hfSU5fREFUQSwg
ZW5hYmxlKTsNCj4gDQo+IE5vdCBhIGZhbiBvZiBib29sIC0+IHUzMiBpbXBsaWNpdCBjb252ZXJz
aW9uIGhlcmUsIHdpdGggdGhlIHJlZ2lzdGVyIGNvbnRlbnRzIG5vdA0KPiBkZXNjcmliZWQuDQpP
ay4gSSB3aWxsIG1vZGlmeSB0aGlzIHRvIHVzZSB1MzIgaW5zdGVhZC4NCg0KPiANCj4gPiArCWlu
dGVsX2RlX3dyaXRlKGRpc3BsYXksIFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRCwNCj4gPiArCQkg
ICAgICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIHwNCj4gPiArCQkgICAgICAg
VENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0RBVEEoMHgxKSk7DQo+ID4gKw0KPiA+ICsJLyogd2Fp
dCB0byBjbGVhciBtYWlsYm94IHJ1bm5pbmcgYnVzeSBiaXQgYmVmb3JlIGNvbnRpbnVpbmcgKi8N
Cj4gPiArCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9jbGVhcihkaXNwbGF5LCBUQ1NTX0RJU1BfTUFJ
TEJPWF9JTl9DTUQsDQo+ID4gKwkJCQkgICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9C
VVNZLA0KPiAxMCkpIHsNCj4gPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ID4gKwkJ
CSAgICAiVGltZW91dCBhZnRlciB3cml0aW5nIGRhdGEgdG8gbWFpbGJveC4gTWFpbGJveA0KPiBy
dW4vYnVzeSBiaXQgZGlkIG5vdCBjbGVhclxuIik7DQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsJfQ0K
PiA+ICt9DQo+ID4gKw0KPiA+ICBzdGF0aWMgdm9pZCBfX3hlbHBkcF90Y19waHlfZW5hYmxlX3Rj
c3NfcG93ZXIoc3RydWN0IGludGVsX3RjX3BvcnQNCj4gPiAqdGMsIGJvb2wgZW5hYmxlKSAgew0K
PiA+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0Y190b19pOTE1KHRjKTsgQEAg
LTEwMjIsNiArMTA0NiwxMw0KPiA+IEBAIHN0YXRpYyB2b2lkIF9feGVscGRwX3RjX3BoeV9lbmFi
bGVfdGNzc19wb3dlcihzdHJ1Y3QgaW50ZWxfdGNfcG9ydA0KPiA+ICp0YywgYm9vbCBlbmENCj4g
Pg0KPiA+ICAJYXNzZXJ0X3RjX2NvbGRfYmxvY2tlZCh0Yyk7DQo+ID4NCj4gPiArCS8qDQo+ID4g
KwkgKiBHZnggZHJpdmVyIFdBIDE0MDIwOTA4NTkwIGZvciBQVEwgdGNzc19yeGRldGVjdF9jbGtz
d2JfcmVxL2Fjaw0KPiA+ICsJICogaGFuZHNoYWtlIHZpb2xhdGlvbiB3aGVuIHB3d3JlcT0gMC0+
MSBkdXJpbmcgVEM3LzEwIGVudHJ5DQo+ID4gKwkgKi8NCj4gPiArCWlmIChESVNQTEFZX1ZFUihp
OTE1KSA9PSAzMCkNCj4gPiArCQl3YV8xNDAyMDkwODU5MCgmaTkxNS0+ZGlzcGxheSwgZW5hYmxl
KTsNCj4gDQo+IFlvdSBzaG91bGQgYWRkDQo+IA0KPiAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXkgPSAmaTkxNS0+ZGlzcGxheTsNCj4gDQo+IGxvY2FsIHZhcmlhYmxlIGFscmVhZHkgaW4g
dGhpcyBwYXRjaCwgc28gdGhlIG5leHQgcGF0Y2ggZG9lc24ndCBoYXZlIHRvIG1vZGlmeSB0aGUN
Cj4gYWJvdmUgbGluZSBhZ2Fpbi4gWW91IGNhbiBkbyB0aGUgc3Vic2VxdWVudCBjb252ZXJzaW9u
cyBpbiB0aGUgZm9sbG93LXVwLg0KT2suIEkgd2lsbCBtYWtlIHRoaXMgY2hhbmdlDQoNClRoYW5r
cyBmb3IgdGhlIHJldmlldyENCg0KLU1pa2EtDQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4g
DQo+ID4gKw0KPiA+ICAJdmFsID0gaW50ZWxfZGVfcmVhZChpOTE1LCByZWcpOw0KPiA+ICAJaWYg
KGVuYWJsZSkNCj4gPiAgCQl2YWwgfD0gWEVMUERQX1RDU1NfUE9XRVJfUkVRVUVTVDsNCj4gDQo+
IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbA0K
