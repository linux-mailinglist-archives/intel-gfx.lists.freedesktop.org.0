Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905F0A4B3E6
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Mar 2025 19:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB52F10E165;
	Sun,  2 Mar 2025 18:01:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jr297HNv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B3610E165
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Mar 2025 18:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740938505; x=1772474505;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=HyeyyuVApXFics+HzDX+FChYmz0b7UWfaktKxTJVoNo=;
 b=jr297HNvfuxVZU3+3ovoUajUYvEY5WEJUtXYUbOcyWO8r0/iOa4h6M/A
 FeG/efSFuU8+1gj+tJYBz+qmWZrNLHk/WMtgaVK1mB2H6uulJqG3q1jVz
 ZQ59+XnudTLoiuv/nAyLUsyFg+UVLDQDsWsYKHfWtLL2dfMAQ4fdqbNpm
 3SbsFpKUSWUhPUJStjGJNZ5SVsOtE59xRBzTW7+I2wVk7HRwKjvIFUxOd
 b2Qx1UjMp4LzdSG3RN4bdNOE2WvN5vAGAlljBW/9PqP+/45hF04v8OFsn
 9LJAfgbcH5OH+8AlJlChjeYgWWG8va0/DDzvIGM2C5WtZOJGIkiQiER3M w==;
X-CSE-ConnectionGUID: tTCcjdFZSfCAO8k6RGL4uQ==
X-CSE-MsgGUID: Tx+VNTl7T5+Etr+RfPGWNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="41701234"
X-IronPort-AV: E=Sophos;i="6.13,327,1732608000"; d="scan'208";a="41701234"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 10:01:44 -0800
X-CSE-ConnectionGUID: KkXnXjAGRKKHYQ0cTlCOfg==
X-CSE-MsgGUID: 1QDsIN7gQ1W5bthGf41xCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123045330"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2025 10:01:44 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 2 Mar 2025 10:01:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 2 Mar 2025 10:01:43 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 2 Mar 2025 10:01:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wTBNLgH9RHwn4TfetgQLiIZHhl8yFn0q7E9OQzhGe8Ic6/3Ogcs5OpoocYF48/FcUE9+zgt8TB1ha5rql/E1QfjAfG5n6xGStnCQaOTOfP1UFU6nXSBuCDJgd42t4Khc2rLh2cXHpZ2Oe8n87vbN0aXCDmNnyTaRaPRBa6zzi4sxbgOjq3ISAo/po4yuKUg9RChSm5/hrnX5QiJi5+nM6oxg5lkdsKTAN03cpaiJH7pegQ7o2z0fn1LBwm/U/lNvMqLJxvi3ns/5Kg/XgnvJfIAhWkGVEt+XCQuh3VHNcnnqdDnrebZUATqjbgy8e84KkpQaRKGjhbvApqXOsOa0nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HyeyyuVApXFics+HzDX+FChYmz0b7UWfaktKxTJVoNo=;
 b=YR12BuWZy9tII8ADy+uFIOifHLtfwQm4WhJtyT3cOVeUojybXeFddj+Yu4bbpO/q5IEZPjpBw0P1wf1Y4P2dnkDWjls2DWtQFXzJOp1X4aWvfBYia6PX7vo+CWbqjSP0nfQyN3yzab9Ha2uzUTmZcyH4DdQA1n5ugTRNwMO08ES6TUwdjrcjjUaBuiNqRkd0oowWXjkriOEkcX5dkS8P2BR5Q/qDcugHgyvgUk5SlmFlZ47dCx10+k5lyoAp+HWWytmxuaVc/fLZxg/4IPeUA6ruIm1Y6g9o9YxcxUrJUzzMCtKF7jXAmYoGO4tcjEZSjfxjmTLIy8+0vLuSQ00+OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA0PR11MB4749.namprd11.prod.outlook.com (2603:10b6:806:9a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Sun, 2 Mar
 2025 18:00:52 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8489.025; Sun, 2 Mar 2025
 18:00:52 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 05/19] drm/i915: Extract
 intel_cdclk_crtc_disable_noatomic()
Thread-Topic: [PATCH 05/19] drm/i915: Extract
 intel_cdclk_crtc_disable_noatomic()
Thread-Index: AQHbgkrimfgNhGm8b0ykY/sjeNqd57NgNXoA
Date: Sun, 2 Mar 2025 18:00:52 +0000
Message-ID: <6b20b9ec2845c66b5a5d5b9dff349b95ac583728.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA0PR11MB4749:EE_
x-ms-office365-filtering-correlation-id: eef004d6-be0f-437a-ee8c-08dd59b42c23
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?L3pyQnA4dVZRQm1ELzZwcm5ZWW9pTUZ0ZjRJZ25oU0ZGNnROd0d1dHNCVUNo?=
 =?utf-8?B?V1RGc2FJZnBYb3pVTzFlUC92U05vMTFnOE45aHpwWGVhUjNrLzB3MEN6OUlJ?=
 =?utf-8?B?QXM5VlE5YVVOQXRpYmxaMHpXYWVlVnZJZzRKeUxOSmZ4OVI1VTNkSWdLeDl6?=
 =?utf-8?B?UHpKQXBaSFpwMGRITjJ2MTN2UlFnVEMySndxYk1ia0JWYlg1U2F6Z2V3QThV?=
 =?utf-8?B?TVZhd09CaUNJZSsvUEhncDBOckZBcHJQb2xFSFlqODV4MmtQanE0Y1ZBUWMz?=
 =?utf-8?B?ZU5SSlBGcWVGOHo1U2JXS1FKVFhieU1PNFh2TzVPZzYzc3EwQ3hvSTRjVDJL?=
 =?utf-8?B?dUNKWURYMmg1RzluU09UYWtmZDc3dXNUYWcwUGIrdndkUGlobTV4N0h4ekxz?=
 =?utf-8?B?YXA4alh6SGRlTXpmbW9laXU3Z3lHeWp2SUNxSkRHZ3RhcHJobnZwaFo2ZDRC?=
 =?utf-8?B?UU1hRzhkYmJOeW1hS1NhSTJvTk5lRjZvQ29ZbVRDQ29adGg5cHFUQ1JDQzdz?=
 =?utf-8?B?MitvbjNLNGR4dE84bnhUbmcrU0I2V2ZsU3FzR1hzNFRTdlYxN0VYYTdySzZL?=
 =?utf-8?B?LzNPdEJEbXc3MWc2dVVwa1dRaXVxMFoyWkQxNy9nb1pDaTZQWFhlUFZsYTRa?=
 =?utf-8?B?dlZNaW1QZnlFUVRnTC9YV243TElaTzAzRy9pZXF3eW1sQjQ0TW5OdXd3K1RL?=
 =?utf-8?B?VHVhNTBWZFV0Zm9oeEJCU0g2bjlxVU0rVG1nY3MxRFNWNUZ2bDBBYVRYc0pn?=
 =?utf-8?B?ajdMQUNHUk9uNm5uUEM1bnNzZ204TVpmQnI3QVpBeElaNXJzVkRuMmJ5QWRS?=
 =?utf-8?B?akRadkwxK3BHUXBTR1R3enVWYnBvcm1GYmJNWWlZK2QzQVMvREtxT2loanN0?=
 =?utf-8?B?NlFBVVluOGdSZFdLLzg4b0FYeUY4M3NjWXRWYTIxOHlZV2dOSkQ0bGhyVHE2?=
 =?utf-8?B?UWJJQjMxWW0vVFdCTmJ5MHJIcEEyY1daOW5tUyt1L1BZUWlhMXM3K1JiaVdy?=
 =?utf-8?B?Q0R6ZXZyU2djazd5NW12K3k1OHhkWjdsck84S0Z0eTVDUUhTVkl0MTVzMEd2?=
 =?utf-8?B?Uncxd1VkMFk1MVJTakVKb01yRXErWVFlalQ3VnBES0huT2dSTlUvMjRZVXFW?=
 =?utf-8?B?MytVMkxPdmxJUStqTmpCbzNYelNGZmRPbDBZNC9iV25EYmpHTC9DcDlGREFC?=
 =?utf-8?B?WGsycDQ2ZGEyQnFBQ29kb213d2x5MGZIS2EwblVWV0RNd2tJUTJDVXZFaDV5?=
 =?utf-8?B?ZUNoUUhzNDVjWlFkeTB2REVVaVlITU9GK0NrbUtBdFYxakVwNlBaeFNscnpk?=
 =?utf-8?B?UWtRemJGcXZOUVhPU2Z0VHZNenRhSVlqdHQxNW84WUVnNG0zYzU0V3pZTUJ2?=
 =?utf-8?B?UEFWWHNuUmkwU2Q3Nnd6aVRWREl4UDIwUXJ0dzRtMkVpL1BqbE9JdlM5NlZn?=
 =?utf-8?B?aHNzOS81QmUxSGJqU0YrVkxxTHRub3lkM0UxVjFSeVJRTTRFZlEwTlE3TUtw?=
 =?utf-8?B?TmJlZm5qR211M2VtVDhQKysyNnJKL2hndGFRTVVnZ0ZhdWRNSGVIcy9PSkVT?=
 =?utf-8?B?cS8ycHgvNWtsMWluS0VDWjFsUHlhWHVOSjJQTWVNREdzY0RvQ0lpUGc3ZElp?=
 =?utf-8?B?cTNPdERoQUcxb3E5dk41ZWh4OHlmZHNtMlZmMXV5clZsaU5UYVlDalhTS0JU?=
 =?utf-8?B?MWJadEZGRHZQc3QwNzJzdit0Q0VNQ1R2eFI5NXA3MVVaa2xWTGdnL0F3RkI5?=
 =?utf-8?B?djU1Z1dEa3RiRm5YdEd4UExtTXNjTnkycTBvT3Jkc0pwQ1VZbThwaExuOGw0?=
 =?utf-8?B?R0xMajlQblBaNDR0SUhZWWoyalRKeFUvVU4vNTE3NHd2NEk5YXVXbmR5b3Y0?=
 =?utf-8?B?dkhEcFdYMW9ReUhGRWE1KzYzYnRqK1RJb1JjaTVZWXZQbExvMkxVS3pOWUJh?=
 =?utf-8?Q?QwnfnJST8/DizqKgYLNR+lbWk/i3SZ2L?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXFNT3QwNVhaTW9HeGRJbjlybGRjalZ5ejJYOHZKQkpYNEMxUmN2VUtxaEVt?=
 =?utf-8?B?THdXTHNTeE9jTm0wUEwrazdXTUdicVo0SUVoaDZNQkY2WE8vZTJ4MzRiRk1a?=
 =?utf-8?B?akMvTlEwWno5Zkw5c3A1UVBVekFPeTdVQTIwRE5GTUROSkwwOVZPeUxmalpL?=
 =?utf-8?B?OUMzdVRlZHhCeFE0b3FTY0M2enJCVnFQZmk5ZmtPMjlhUjFObksza2F3eHA1?=
 =?utf-8?B?N2Z2Q2ZSYUloaW5FU25zVG8wdkExS21wNjViQjYzMDdUS0ttK0JySDladW9v?=
 =?utf-8?B?NjF3RDc3YXVLRld3U0ZjWk1TdTVtVmFJUDhlWkpLZEZiQTdkQ3dCbVNrOFlB?=
 =?utf-8?B?N1JqNmJQVUx4bG8zWG80Tk5YTlZWRmhKVkNlTTJZRktyY1Nvdk1VeElhUVRT?=
 =?utf-8?B?ZHdxRG4yb2JlcVhzOVhXNHdhRS9WRFowMVdNay9QdGRYVUxDZncySmh6aGNr?=
 =?utf-8?B?aHc0aGJEaThVVGpaRmJJcUtaNWhoc1d3ckxqSXNjNjZoeGVrRWJTZ3VzdWN0?=
 =?utf-8?B?bU0zUzBXWk1vUko0ZDZuM0x0NkVXS1hWK3Q5bjJIa1VXRlpuUGZWK3ZpUTMz?=
 =?utf-8?B?SWJ5VWRhMk1HL0ZnMXg1K29xRW85ZS84Rk45bU9RV2ZJYStibElHWXpMbHl3?=
 =?utf-8?B?TjFVMjQ1S0pKb3dad3ZCTUs4enJFbC80dkFvaS9FWW02N2RiNGdXWmxxNTkr?=
 =?utf-8?B?R3F3aVZvNy9EVG1qbDcycXNXQlBQS3IyeG1WUXp4Y3dsZ0JSdTA1MC95K05C?=
 =?utf-8?B?bnA5QnB2OTRydzU2SDV1UjVyUDZvRDUraG9FNWNQdERtWUVOcEVjWUxLaWxP?=
 =?utf-8?B?N0pmR0k3LzFaNXAzdDh1V25vSXBhdjRFNVNKYXU1K21DZGh2bHJVZlNvNnpm?=
 =?utf-8?B?QmNnV2EwbkFVeGJhdGs2RmpXSVpNU21JV3VJWTk4OGJjdDQrMnBSYTVlZlJV?=
 =?utf-8?B?aEo2dmlXNFY4VjZzT0FRMzNRT1A5OFZWTThCVVJzU25XaXJoZFNXNzV1RUlx?=
 =?utf-8?B?eWprMXJaeW81MlRzQ0dzOWo5Mmppb2l0NHNReVBQbzJqZkFFbitDckcwbG0z?=
 =?utf-8?B?d1lRWGFuc1JwK255MTVWaEw2a2FtOVFaVkVLZ0srNlRremVUeFVSSDd5b2tY?=
 =?utf-8?B?bk52OWdsdHpJbm5WcmxpbVhpRHNjTDlxU1N6TVhLVENtaXNhOTFaVjRZeUUv?=
 =?utf-8?B?K1Jka3dMRW91RzRGTHhLd20yWU9kNzZSU05vZkxXWFd6UjlPVW1LMjFETlNz?=
 =?utf-8?B?dk1paTlDdDlINGNOSTBSMzVTZFBrVDNVWFVEcEdhM2VWRVJWL1h2VlIwSThM?=
 =?utf-8?B?WUk1OWFHQlg3UnZTMFJrQ0IxV1p0bmIzRXFoUGZzNWg5VGRabFlhWEFOUDRz?=
 =?utf-8?B?MUt2WUx3TXhKcFJKY2VsK2s4L0U1T2U5aXFSK054MDVtdHNsS2FtTlhYd1hE?=
 =?utf-8?B?dEZqUmhROFUrR3k4U29yN2djMGsxTGJUMUlXaUk3Uy82T0Q2OEc0b3hKTTF5?=
 =?utf-8?B?a3BmUXhERGtONWp4UXBkYk5YQ1lWa1NQelRHeHdLa0FZeGROY0RZck5yNXVE?=
 =?utf-8?B?RjZVNEJGMnJ4LzA1QkpYSTkyK3Z2a1BUUkhtc2RIN3dUbWc3UUwwMGZrWDNL?=
 =?utf-8?B?Q0MvdUFyL2xNMy9KaGxHTFdqRVZWK3B2bnFkRm01cUE1QStDUFVaa28rUVdq?=
 =?utf-8?B?RENPYk1Cc25PcFYwbXpXckNHanRVRHJFSC9jTHo0N3A1cVIrMkd1YnUyVTVJ?=
 =?utf-8?B?TjYxS1crZ3ljT1J5aFRLbStwNVgvYVgyR3BKS2F6MnZYYlNkOUJkTmNBVTlr?=
 =?utf-8?B?UCtGWW80MDAxQXM1Z3NVTzUzVkZmMGFxcVlKTkNtcnBwYzR0a0JGM2dCSldV?=
 =?utf-8?B?K0VDeFpkQWdVNzZaZUdDMVJaUVJlVDZaRHZmenl1M3FGRkJYZkdRWG9YN243?=
 =?utf-8?B?VVQraU0za043ZGp6Mk85Q3c3K3lnK2ltMVZDWlhaamtxYzJWN1hxUjhGZW9G?=
 =?utf-8?B?Z2hrSFBGa2V1blRDMnFobmZNUmkrdjZ4ZVRsMDg2d3E5ZTFsenRPZGJIQnFz?=
 =?utf-8?B?QWx6SkhBZ2w5Y2FsWXV4RWNmUzErNitLN0xmZ3c2MlFsZ3g3ZEh0dm9tVTJo?=
 =?utf-8?B?cTYwK212SzkveHpyOHdSclpFRjRVWnFYeFpNZTBZcXVTajZONTF6WkpKUnB2?=
 =?utf-8?Q?ML3+2RR/vL3Poy/ihHerl0A=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D0342BB689D2114CBAD24C2469F34DFD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eef004d6-be0f-437a-ee8c-08dd59b42c23
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2025 18:00:52.5442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i/yIoOuLV5uSESPecjXeWNTHKa9vYw/3V6wSgrGlm7T9s9FcnXghrxJevcS1V122Rucd0Z+9k7Y8YP9L8oREWuiCMctCDQR5mE14TqLmgKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4749
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gSG9pc3QgdGhlIGNkY2xrIHN0dWZmIGludG8gYSBzZXBhcmF0ZSBmdW5jdGlvbiBmcm9t
DQo+IGludGVsX2NydGNfZGlzYWJsZV9ub2F0b21pY19jb21wbGV0ZSgpIHNvIHRoYXQgdGhlIGRl
dGFpbHMNCj4gYXJlIGJldHRlciBoaWRkZW4gaW5zaWRlIGludGVsX2NkY2xrLmMuDQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xr
LmPCoMKgwqDCoMKgwqDCoMKgIHwgMTIgKysrKysrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5owqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArKw0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jIHzCoCA2
ICstLS0tLQ0KPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkNCj4gDQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3Zp
bmRhcGlsbGFpQGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IGM2Y2ZjNTdhMDM0Ni4uNGI3MDU4ZTY1NTg4IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0z
MzQwLDYgKzMzNDAsMTggQEAgaW50IGludGVsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gwqAJcmV0dXJuIDA7DQo+IMKgfQ0KPiDCoA0KPiAr
dm9pZCBpbnRlbF9jZGNsa19jcnRjX2Rpc2FibGVfbm9hdG9taWMoc3RydWN0IGludGVsX2NydGMg
KmNydGMpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRl
bF9kaXNwbGF5KGNydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqY2RjbGtfc3Rh
dGUgPQ0KPiArCQl0b19pbnRlbF9jZGNsa19zdGF0ZShkaXNwbGF5LT5jZGNsay5vYmouc3RhdGUp
Ow0KPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gKw0KPiArCWNkY2xrX3N0YXRl
LT5taW5fY2RjbGtbcGlwZV0gPSAwOw0KPiArCWNkY2xrX3N0YXRlLT5taW5fdm9sdGFnZV9sZXZl
bFtwaXBlXSA9IDA7DQo+ICsJY2RjbGtfc3RhdGUtPmFjdGl2ZV9waXBlcyAmPSB+QklUKHBpcGUp
Ow0KPiArfQ0KPiArDQo+IMKgc3RhdGljIGludCBpbnRlbF9jb21wdXRlX21heF9kb3RjbGsoc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKgew0KPiDCoAlpbnQgcHBjID0gaW50ZWxf
Y2RjbGtfcHBjKGRpc3BsYXksIEhBU19ET1VCTEVfV0lERShkaXNwbGF5KSk7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmgNCj4gaW5kZXggNmIwZTdhNDFl
YmEzLi42ODllMTJlMjE5NmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmgNCj4gQEAgLTEyLDYgKzEyLDcgQEANCj4gwqAjaW5jbHVkZSAiaW50ZWxf
Z2xvYmFsX3N0YXRlLmgiDQo+IMKgDQo+IMKgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4g
K3N0cnVjdCBpbnRlbF9jcnRjOw0KPiDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0KPiDCoHN0
cnVjdCBpbnRlbF9kaXNwbGF5Ow0KPiDCoA0KPiBAQCAtODMsNiArODQsNyBAQCBpbnQgaW50ZWxf
Y2RjbGtfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDC
oGludCBpbnRlbF9jZGNsa19zdGF0ZV9zZXRfam9pbmVkX21idXMoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsIGJvb2wgam9pbmVkX21idXMpOw0KPiDCoHN0cnVjdCBpbnRlbF9jZGNs
a19zdGF0ZSAqDQo+IMKgaW50ZWxfYXRvbWljX2dldF9jZGNsa19zdGF0ZShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ICt2b2lkIGludGVsX2NkY2xrX2NydGNfZGlzYWJsZV9u
b2F0b21pYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+IMKgDQo+IMKgI2RlZmluZSB0b19p
bnRlbF9jZGNsa19zdGF0ZShnbG9iYWxfc3RhdGUpIFwNCj4gwqAJY29udGFpbmVyX29mX2NvbnN0
KChnbG9iYWxfc3RhdGUpLCBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUsIGJhc2UpDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5j
DQo+IGluZGV4IGE1YTAwYjNjZTk4Zi4uODI2OTk4OTA5MDQ1IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiBAQCAt
MTU4LDggKzE1OCw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2NydGNfZGlzYWJsZV9ub2F0b21pY19j
b21wbGV0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gwqAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsNCj4gwqAJc3RydWN0IGludGVs
X2J3X3N0YXRlICpid19zdGF0ZSA9DQo+IMKgCQl0b19pbnRlbF9id19zdGF0ZShpOTE1LT5kaXNw
bGF5LmJ3Lm9iai5zdGF0ZSk7DQo+IC0Jc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19z
dGF0ZSA9DQo+IC0JCXRvX2ludGVsX2NkY2xrX3N0YXRlKGk5MTUtPmRpc3BsYXkuY2RjbGsub2Jq
LnN0YXRlKTsNCj4gwqAJc3RydWN0IGludGVsX2RidWZfc3RhdGUgKmRidWZfc3RhdGUgPQ0KPiDC
oAkJdG9faW50ZWxfZGJ1Zl9zdGF0ZShpOTE1LT5kaXNwbGF5LmRidWYub2JqLnN0YXRlKTsNCj4g
wqAJc3RydWN0IGludGVsX3BtZGVtYW5kX3N0YXRlICpwbWRlbWFuZF9zdGF0ZSA9DQo+IEBAIC0x
NzksOSArMTc3LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19kaXNhYmxlX25vYXRvbWljX2Nv
bXBsZXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiDCoA0KPiDCoAlpbnRlbF9kaXNwbGF5
X3Bvd2VyX3B1dF9hbGxfaW5fc2V0KGRpc3BsYXksICZjcnRjLT5lbmFibGVkX3Bvd2VyX2RvbWFp
bnMpOw0KPiDCoA0KPiAtCWNkY2xrX3N0YXRlLT5taW5fY2RjbGtbcGlwZV0gPSAwOw0KPiAtCWNk
Y2xrX3N0YXRlLT5taW5fdm9sdGFnZV9sZXZlbFtwaXBlXSA9IDA7DQo+IC0JY2RjbGtfc3RhdGUt
PmFjdGl2ZV9waXBlcyAmPSB+QklUKHBpcGUpOw0KPiArCWludGVsX2NkY2xrX2NydGNfZGlzYWJs
ZV9ub2F0b21pYyhjcnRjKTsNCj4gwqANCj4gwqAJZGJ1Zl9zdGF0ZS0+YWN0aXZlX3BpcGVzICY9
IH5CSVQocGlwZSk7DQo+IMKgDQoNCg==
