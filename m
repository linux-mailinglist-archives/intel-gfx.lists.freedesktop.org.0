Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B28CB51A2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 09:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F5A10E7A5;
	Thu, 11 Dec 2025 08:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eq4M0nDC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C24E10E770;
 Thu, 11 Dec 2025 08:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765441748; x=1796977748;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=enfmjfDAfV8x2o9CqrAP5J3Jn6L+CLgC5jxMFh5zYNU=;
 b=Eq4M0nDCfkwD8v0xFGXbwO8O9V+gPZSWz/b+CtEG+3tCPiEvLb6pXxW+
 FVqtdyxzy0sYieDamPJzfKoBI+TMpz3Ey39PnbNSfHYmncr6JrKb1Sqm/
 rOxSWgOtLXiK+Dy4Eq8UaEQnkwBx/jb5SJUD/aJmjSRAh21y2FcELaeeu
 RJ4RWlQXg+W/xklymR6BeRjZAwA7ayXYjExAEhzjtLMSod59NbsVOr16D
 Pj9hM+0QDRy/oFZ2C0debu7SM7ZJnePmxL9MmtzE4FpIUmoym59/lBw7q
 tZuVMiIIfNrLMMM6nZuww1l53zqqs3jomyacNfzG4DgPuC7L1Ge8hN/fe w==;
X-CSE-ConnectionGUID: 2zNhDASoTGejJCmtNSSsoA==
X-CSE-MsgGUID: WM1o+9EsTpKr9bzd7zaRwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="67305449"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="67305449"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:29:08 -0800
X-CSE-ConnectionGUID: slUUqw9MTHaE+kmhillmYg==
X-CSE-MsgGUID: EK+IV/OqTG+5ZLQA8PN0XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201220380"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:29:08 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:29:07 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 11 Dec 2025 00:29:07 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.61) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 11 Dec 2025 00:29:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ILghhLt15V3GLkMVVdPz0RfF/VGzg3Pa9s13gBLMiHqTuWt0s/9d8fnZIIg2Tw8DutY1fbhR7mI/9kbzoeaSQzWB2nWrzk3dZjPTkUJ6c/CmtjTfjYopEuJ3gmKMaaJ0ufA8ARRvPXSPYAwO2IO3JhHNJ3Leu8Z00EIWP1ItoTh+yPASnTUWr9cijaqund5Hg3Isn33fNwzfFTxmzD3XDl+jyRMKb2SUVCxjRyKgdSr+GVoGZtbM9inmiKK0ENa83PDUO4Qfwgv7AVTDYgSo6Xvtt1XOwlysjGOyCK9yMWj0/JmaaPPO73g4NWvrdzyqSSNH5eQASFZox5CZs3WCZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=enfmjfDAfV8x2o9CqrAP5J3Jn6L+CLgC5jxMFh5zYNU=;
 b=mf5DRjy5NffquYysP01nFudf16ygy5OGsni/YrZkrLvdbRDHrZzbZqv32h2JZf8SPdjdTq1jrapsl3MMyV8WD0X/KiiiQbBZulKeRLCmDlKPlS+spIFg2/CXwyuHua90i1o36hvzWxwNoRoGLH1AZHWaaAnQZZNtJaBu/2NsFrrcuaGhMecRIhABooUodG3nyPfUcidZ6Se3jhQIM5kCEbCa+v2aNvnhYeEkCmuUMOESUVLYc6QU3ETXfpeobmj2V7y72BHVLxAwBIL2nmefer+aNLDe8X0k4zzRGAUEJof1nNRYLCVafm1pGX11IoqT9Kr6VZmrm0KUadawiEv7Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH2PR11MB8778.namprd11.prod.outlook.com (2603:10b6:610:281::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Thu, 11 Dec
 2025 08:29:04 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Thu, 11 Dec 2025
 08:29:04 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 19/50] drm/i915/dp: Fail state computation for invalid DSC
 source input BPP values
Thread-Topic: [PATCH 19/50] drm/i915/dp: Fail state computation for invalid
 DSC source input BPP values
Thread-Index: AQHcX8kIPbnJFNZS+keeLqawUMkzJ7UcMNWA
Date: Thu, 11 Dec 2025 08:29:04 +0000
Message-ID: <da2c250a10826f7e9915b799593dbe6ef6043447.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-20-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-20-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH2PR11MB8778:EE_
x-ms-office365-filtering-correlation-id: b5c16ec1-5411-4ce9-9a18-08de388f582f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?YWFLeDFmZW9DYm9EUWlheU5NeENaMkpsVW1vSWZqSjlmZ1BMVm5ibDFubmty?=
 =?utf-8?B?ZW1Kc3VST1FMTVZsdEc4NndmbnI3YWR4UlFOTkFVaC8vaEx4a042eEZDaFFz?=
 =?utf-8?B?Y2w3aVVuSkdwR3MzbU9Cd2luUEg5aGdLZnFWaW1xbWN6djlZcXIwdDc4ZGlQ?=
 =?utf-8?B?d0dWY0tvMnZkeE9MUW9QNlBOUlNlakpPTk82N09vY29OZXhSeGRsN1VTbWg0?=
 =?utf-8?B?Vk1CSlA0RWM0WE45WDBmV0pURUFQL3pTVXRpcVkrMHBDR1QwVERLVjFtbFl4?=
 =?utf-8?B?NTdVd3hFVFlSaXdqdDFwbk43Zm43dE9ZYzFJYzZOWEs3SjQ0U0MzR0ZzS0JY?=
 =?utf-8?B?VDg2ZTFzTUF0NnUyRkVmaDBNMmwyQ1ZVR05RZnE0dDlzdklJeXROQkw1TTFJ?=
 =?utf-8?B?QUxZdTMwWVp5N3NVSnBSODlQS1hjM09UYk5OVjVDaFFmRHg1UlRZeFRaRmJD?=
 =?utf-8?B?OWtBZzN5b2lzeExzdldXZGI0Y3R5a3IyWDVkMlM4WmJkbDZZYUhZcWcwTytO?=
 =?utf-8?B?NjEwbUtpbm16QTlQL0ZiMTFJKzVrbk44c0RmdUtIenhFbk9TZnVuclJ3TUxI?=
 =?utf-8?B?eXdWTnRqUXhGMElWcTZrWEFlZGwvQ2hLVWF0dllIMTUxdWZhelB5SzBvSVhn?=
 =?utf-8?B?VDMvbGt3RkdJV2UxUExDOGlNbFhqRlRyNzVqVUpDeEJNd05vNFR2WklkeFUz?=
 =?utf-8?B?TVBKcGhuSTJwSk42eHd6ZERQL2xXaWJtMEtaRjFsQS8rL0lRVWRyWStsZEE2?=
 =?utf-8?B?amVSdGFXNStuK2lBcStmYUE1TFVDTm9tV24vOFFycll2WkEzSkxIZ01DdlFJ?=
 =?utf-8?B?UVdiN0l4L3ZBK1pxYWZMWldEc0ljWVp1ZFVoenJlL2VzYnpsbXo4QklpSk1q?=
 =?utf-8?B?blBEcllwTFY4MEpaN0xPLzNRbW9wVW5tVGFuem5wMmpQY2l2dEYvM242RUxO?=
 =?utf-8?B?ck5mU2JlK3BycU1xamE0UDM5REo1OGV5bkI2YXc0Nm1oREY5N1Y5V2tvdkgw?=
 =?utf-8?B?emV5SE5qbm5tUCtsdWlJTWQ4RW9aODJIejBINmt5V01NNEp1aUtnN0ljc3Np?=
 =?utf-8?B?UkNXeWs5MUlaMmh6OFJSMUdOL2c4UjZQZFpLSHZ4YU8xK25DNWcrTUpzd1VC?=
 =?utf-8?B?ZjVUQ1VUcWdlc3loeEJZZkdtSE4yMXdKb0FYY3J5VklHMFdDUE4yelNYbXVp?=
 =?utf-8?B?YnhHektHZlhBQUVuRTVyMHdocUlSK24vc0FjdGZ6YjlLdHg3WmJxYzFZa1p1?=
 =?utf-8?B?elNkeUFISmxPNXlpazM1QitsakJ6ams1dGZwOC9EWkZSSzZmcTJpcW9SZE5i?=
 =?utf-8?B?MVBxVUVHNSs4VHNjaXhhTWhZL0NWaTRpdkdKeEJrVS9VVjZrK0JoVkU3TTRk?=
 =?utf-8?B?ekMxTDBoS3ozMmJSdFBMeVRxOWlLWG8xMzJ3ZFZyTUxNL296Wmg2eHJNN0pl?=
 =?utf-8?B?dmIwdk5hZ251cGhKZjY5RTI0KzlwYzZJb2srM0RDaTlrM1BQa3N5RVhsLzgx?=
 =?utf-8?B?Y290OVFjRFQ2QzRtQU43SlZCNjU0eUFkR0dRVmJnT0M5T1R3MjVJZ1Z3ZGJE?=
 =?utf-8?B?S2ZSc2U2Q1oyTUlldnNjL0k5L0c3YzVQVkRWTkVHWDBmay9TMHVMa0V2WlpS?=
 =?utf-8?B?a3NVZXFGUFM0UnlCa3BSQmxoRGphZU5zbk9Xa2dnZVZhd2NxN2NRUnhyL1Fh?=
 =?utf-8?B?ejJNTUc1OHRRZFFPV1RyYVRDUk5teXJIUktudzh4cDUxeEdJeTVQaHJEU3Rr?=
 =?utf-8?B?UThMdGNYWHRuT1U4dmJIRzY0b1RwVTJMbVRXQXV4MnZwUzVZdlkrVGlBUGt0?=
 =?utf-8?B?SlU2YjB5anpYQmtEV1BJenZ3YUp6OUIwY1F1Mk00ZGlxN2ZGcThEY2FYTGlx?=
 =?utf-8?B?c0dpQ0EwcmZIc0k0OGhzWXRFLzlyZDhsQTNCS1NHNnQ1WlkvaXIybTZUQWtN?=
 =?utf-8?B?SSthQ2hldEdLTDVFQnVyVHNTd1BWSXpIV0lTZzY4djlQM3dJMnZQRUFwMlN3?=
 =?utf-8?B?NytOVmloZnhBdVlHRmZ6Vy9FWHlzMkc1N2pOMWZoQ0Z2cWtacjlaMVNRR3cy?=
 =?utf-8?Q?ryJwTT?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnE2aXdtazl1KzQyekY1U2FyNndaN08wcU5icS9SaXlCQUMwUlNoS1NEdFpB?=
 =?utf-8?B?cW1wZ20yNHU3ZTRmR2pLZzFZVmxjNjRIamU5eE9kUnFvWGxPSllObGJYQ0J4?=
 =?utf-8?B?eGRCTnFvUW9Hc3JlWk1IcDM4WENma3ZuVitYaWhSQVNqcWtzTXhlL0JSb3Rp?=
 =?utf-8?B?NkdQRDg1aXlDYi93LzRjdTBUWlBrSTZIVHdmVFc0KzYvQ0dLZWtFWnFQa2gv?=
 =?utf-8?B?TXpGU3dRdS9LM3Y1SVFUK0plaGJwKzAzZmZwUDJhZnFaTHFqdElPMWZjbWJ5?=
 =?utf-8?B?TmpHTnZXeEZVamxNVjRzbUNkWG0xelhNUjJKNFVMQlc4cDN1cktaTExTcmE4?=
 =?utf-8?B?alZlTXRWQWVjejduQjdMOC9FazYwb0hLWmp5amZTaWRVQTZqS01xSmtFRWxL?=
 =?utf-8?B?c0UveW1zYk5aQWdMdVBrZHRGRVZiNzhYdkdXV2ZRNnU5ZjBGZWVmK29TWFZH?=
 =?utf-8?B?R2tablBYUWVoR2VIdTRpM0RyeC9aRjMrSXZBdy9naDZobGNUS3UwRmwvRzF6?=
 =?utf-8?B?WTVvZlp3cVlJSE5BckVhNkxNZFZLWTVDai8rNXJaUUw5Q2ZsMmhsU2NxQ1Ry?=
 =?utf-8?B?QnpWcTdNS2w4SmVXMkNCeWJyVTc3VVN6TW1zUkhCOWhJaHF2ejU1VUp4VE9T?=
 =?utf-8?B?VFpVbjIyMU5PbGlPYm51cmMvYkRQeG1BeXQzaVUrQ3cydDlob0lwSjlvWUN0?=
 =?utf-8?B?RG45V05rT01EZ3BmWmZIVWUrWSs3RUkyazNGdCtCcEJiQmJrMERBVDJEMFMr?=
 =?utf-8?B?RjB2M05vaWt5dzg4ODdDREtMQjhoeEh4bmhRbE12Q2hlWUNnVGpkdnBOY1lJ?=
 =?utf-8?B?TmtjdGd1dUo5MjV1Z0tqbnhrTkVuM21nNTF1cnlCU0hZWC9EbnJ1Z0VCangv?=
 =?utf-8?B?ZE03Y3c4VUhFVWdGUmZiYXh1SWhxblpSUS9HMkFTL1B4K1liOENTa0haVzBU?=
 =?utf-8?B?UWxmbDcyQW5pYkpac1JKd2czZksvUGhtZ2prdDBwMTkwOUhoN0RHSjJVaDdT?=
 =?utf-8?B?T2ZyT0VUeTlsdC9ubkJDRDhpd01DRVJBOVVqazZvVEVWWDd2cUFrd2J4Qkps?=
 =?utf-8?B?T29YOFZCVGhJVTJOQ0w2UFlrR3JNbml5QVgySWRzSE5hQzFZZTl6TkxBZzJ0?=
 =?utf-8?B?NXhvaGFENFVtMys2ckZYUS8vRjlWVms2Vmdvd2dIV2lZUmt4bHFBeGR6WGp4?=
 =?utf-8?B?cFlYcmlCQytFWTFjR0p3QWZpUTVQUmM3MVIxdkVXT055N29PSS9FakhNTFRE?=
 =?utf-8?B?NEJqZXNkV1FYNzZBUmpibklKbGhRUXhtaEJBcXJsWGc4RmxySklUdTZRemZo?=
 =?utf-8?B?ZEtHV2hkZWxSY3JkRjhDNUlDS29yVjJCS0c2VWllTW5QQTExZjVocEdLVmdH?=
 =?utf-8?B?QXpEcXJEeFdqRTB6cFZsS1pKWGxPN1l5RW52VCsvYWJLOWVYS1hhbWltajhE?=
 =?utf-8?B?NW0rK0VmektJU3kycU83NTZDZkxieHJnMmdMR2JkRDREUW92RDRQbFZsTGl1?=
 =?utf-8?B?Z2I5ZUpVcWdtbzFNZmZnamRhdVlyNWlvT3p6K0t2UU1mU1psNm1pWjdlelll?=
 =?utf-8?B?dU5KMnNnWU41Y2E3bW1QU3lJZjEwQmxVbThVL2JjT2pzN0s3SDA5VjRJTHRa?=
 =?utf-8?B?Y0h2YlhIcHJBYjMxdHdKZXRpdGpLT2lteXpSQlZ0VmhoUEdCcTAvMDBaejYw?=
 =?utf-8?B?MnplMTdHWkNJTnVoaUtZYzRrVDVYMTNrVlBnaXkxckszelZDUDZqYkVzL1oy?=
 =?utf-8?B?VFpxdU1SYUU3SzVhQkMvckUrU2hhMEk1d3VOTWVOOUhyeWNodWJOajd6VmQ2?=
 =?utf-8?B?QStXN3JBcFFaT1BpeVpUdGRCRTFXd1lzTVZpMW1SaGtBWERqNzArWUdtdmdj?=
 =?utf-8?B?TXd3Q29PelpkOXZSaVd4Z3Y1OGNCRDdlKysrY3QxS3ovenFwQkxNREZpcEZ5?=
 =?utf-8?B?ZksxSkV1WE9WTVdtVUExaWxPTlliUWZaZXU3QmY4TzVFb0hkczZIc1dtcXhF?=
 =?utf-8?B?Z0JKMnVwVnFjdWN1aVZZeUhCVVFrci9ZdzJpL0tjSmFscEFxOHd2WGRELzRy?=
 =?utf-8?B?K3ordFVJZHBpRFRkUHNGZTNacnZJZ3Ivam9tZGx5cm9aVjN0YVBZZGxEcFcr?=
 =?utf-8?B?M1RMWHByOC9ER3Y4SytJSld3bU53WmdOVUZXaklXTmlQOXNPYytVZDc5R2Ro?=
 =?utf-8?Q?q7+ojUUzBlFB0eV3TQAKKq0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1337733C5A7D92429B8EE516F3AC5759@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5c16ec1-5411-4ce9-9a18-08de388f582f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2025 08:29:04.4027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bD9SPWhlWbBI2D77qsShntRODEZZIqHj9RfVzB6UPqU2R+3M2/B3xvWwyLVQZNaZDitOQcnMAExqn+rCuiOqs8njQpzHiFZKhldOe4QzoIg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8778
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZXJlIGlzIG5vIHJlYXNvbiB0byBhY2NlcHQgYW4gaW52YWxpZCBtaW5pbXVtL21heGltdW0gRFND
IHNvdXJjZQ0KPiBpbnB1dA0KPiBCUFAgdmFsdWUgKGkuZSBhIG1pbmltdW0gRFNDIGlucHV0IEJQ
UCB2YWx1ZSBhYm92ZSB0aGUgbWF4aW11bSBwaXBlDQo+IEJQUA0KPiBvciBhIG1heGltdW0gRFND
IGlucHV0IEJQUCB2YWx1ZSBiZWxvdyB0aGUgbWluaW11bSBwaXBlIEJQUCB2YWx1ZSksDQo+IGZh
aWwNCj4gdGhlIHN0YXRlIGNvbXB1dGF0aW9uIGluIHRoZXNlIGNhc2VzLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyOCArKysrKysrKysrKysrKysr
KystLS0tLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9k
LmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gaW5kZXggZGI3ZTQ5YzE3Y2E4ZC4uMWVmNjRiOTA0OTJlYSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjY2OSwx
NiArMjY2OSwzMCBAQA0KPiBpbnRlbF9kcF9jb21wdXRlX2NvbmZpZ19saW5rX2JwcF9saW1pdHMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJcmV0dXJuIHRydWU7DQo+IMKgfQ0KPiDC
oA0KPiAtc3RhdGljIHZvaWQNCj4gLWludGVsX2RwX2RzY19jb21wdXRlX3BpcGVfYnBwX2xpbWl0
cyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArc3RhdGljIGJvb2wNCj4gK2ludGVsX2Rw
X2RzY19jb21wdXRlX3BpcGVfYnBwX2xpbWl0cyhzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ICpj
b25uZWN0b3IsDQo+IMKgCQkJCcKgwqDCoMKgIHN0cnVjdCBsaW5rX2NvbmZpZ19saW1pdHMNCj4g
KmxpbWl0cykNCj4gwqB7DQo+IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19p
bnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IHRvX2ludGVsX2Rpc3BsYXkoY29ubmVjdG9yKTsNCj4gKwljb25zdCBzdHJ1Y3QgbGlua19j
b25maWdfbGltaXRzIG9yaWdfbGltaXRzID0gKmxpbWl0czsNCj4gwqAJaW50IGRzY19taW5fYnBj
ID0gaW50ZWxfZHBfZHNjX21pbl9zcmNfaW5wdXRfYnBjKCk7DQo+IMKgCWludCBkc2NfbWF4X2Jw
YyA9IGludGVsX2RwX2RzY19tYXhfc3JjX2lucHV0X2JwYyhkaXNwbGF5KTsNCj4gwqANCj4gLQls
aW1pdHMtPnBpcGUubWF4X2JwcCA9IGNsYW1wKGxpbWl0cy0+cGlwZS5tYXhfYnBwLA0KPiBkc2Nf
bWluX2JwYyAqIDMsIGRzY19tYXhfYnBjICogMyk7DQo+IC0JbGltaXRzLT5waXBlLm1pbl9icHAg
PSBjbGFtcChsaW1pdHMtPnBpcGUubWluX2JwcCwNCj4gZHNjX21pbl9icGMgKiAzLCBkc2NfbWF4
X2JwYyAqIDMpOw0KPiArCWxpbWl0cy0+cGlwZS5taW5fYnBwID0gbWF4KGxpbWl0cy0+cGlwZS5t
aW5fYnBwLCBkc2NfbWluX2JwYw0KPiAqIDMpOw0KPiArCWxpbWl0cy0+cGlwZS5tYXhfYnBwID0g
bWluKGxpbWl0cy0+cGlwZS5tYXhfYnBwLCBkc2NfbWF4X2JwYw0KPiAqIDMpOw0KPiArDQo+ICsJ
aWYgKGxpbWl0cy0+cGlwZS5taW5fYnBwIDw9IDAgfHwNCj4gKwnCoMKgwqAgbGltaXRzLT5waXBl
Lm1pbl9icHAgPiBsaW1pdHMtPnBpcGUubWF4X2JwcCkgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNw
bGF5LT5kcm0sDQo+ICsJCQnCoMKgwqAgIltDT05ORUNUT1I6JWQ6JXNdIEludmFsaWQgRFNDIHNy
Yy9zaW5rDQo+IGlucHV0IEJQUCAoc3JjOiVkLSVkIHBpcGU6JWQtJWQpXG4iLA0KPiArCQkJwqDC
oMKgIGNvbm5lY3Rvci0+YmFzZS5iYXNlLmlkLCBjb25uZWN0b3ItDQo+ID5iYXNlLm5hbWUsDQo+
ICsJCQnCoMKgwqAgZHNjX21pbl9icGMgKiAzLCBkc2NfbWF4X2JwYyAqIDMsDQo+ICsJCQnCoMKg
wqAgb3JpZ19saW1pdHMucGlwZS5taW5fYnBwLA0KPiBvcmlnX2xpbWl0cy5waXBlLm1heF9icHAp
Ow0KPiArDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKwl9DQo+ICsNCj4gKwlyZXR1cm4gdHJ1ZTsN
Cj4gwqB9DQo+IMKgDQo+IMKgYm9vbA0KPiBAQCAtMjcxOCw4ICsyNzMyLDggQEAgaW50ZWxfZHBf
Y29tcHV0ZV9jb25maWdfbGltaXRzKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKg
CQkJCQkJCXJlc3BlY3RfZG93bg0KPiBzdHJlYW1fbGltaXRzKTsNCj4gwqAJfQ0KPiDCoA0KPiAt
CWlmIChkc2MpDQo+IC0JCWludGVsX2RwX2RzY19jb21wdXRlX3BpcGVfYnBwX2xpbWl0cyhpbnRl
bF9kcCwNCj4gbGltaXRzKTsNCj4gKwlpZiAoZHNjICYmICFpbnRlbF9kcF9kc2NfY29tcHV0ZV9w
aXBlX2JwcF9saW1pdHMoY29ubmVjdG9yLA0KPiBsaW1pdHMpKQ0KPiArCQlyZXR1cm4gZmFsc2U7
DQo+IMKgDQo+IMKgCWlmIChpc19tc3QgfHwgaW50ZWxfZHAtPnVzZV9tYXhfcGFyYW1zKSB7DQo+
IMKgCQkvKg0KDQo=
