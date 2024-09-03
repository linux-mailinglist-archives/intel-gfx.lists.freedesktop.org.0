Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4C9969F05
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 15:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FF810E5AD;
	Tue,  3 Sep 2024 13:28:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIweCi8t";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5C410E58A;
 Tue,  3 Sep 2024 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725370134; x=1756906134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W8Dc0ozL1TNgecsy/pl6fAO32KlGSpjnh3G26FbbPvg=;
 b=nIweCi8tqUOlYnRrmTIBF3hGfJn3gZLoVurlmuUlsCCMfoHjpM+QGwE5
 C57+gIh+B/SDF7kYe354eTII/yLyfPYyTim+Bv9+ZI3KTgO1LuryaHkwL
 9M/o+uwiElY+DrbIrcaYKv8SLwwR1JnifGUlf5NduZIIawSgAFb48KCAm
 /+siToB7obQDZC4PqgMCP8KXfHIvbNwbCKnVuuSRISiF1EudYwPEKvj01
 DpssPdOZYv+VGkpfpcTmEPM2tXqWFqCszRlSWoovTY4bMvmQ/6hN9Ur/+
 WrSO76Pu4SCeSMAxyIFc5owO+05higV5zj10yoULK7hVH96KTTPx3vL9Q w==;
X-CSE-ConnectionGUID: H27/FGYxRTKAPVPptY1yew==
X-CSE-MsgGUID: ea+/ORErTmupBrgiGU6urA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23843132"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="23843132"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 06:28:53 -0700
X-CSE-ConnectionGUID: Mp3F7eawTQCaEwsTwT7yLA==
X-CSE-MsgGUID: nIXfcC7/Tb+zrkTsf3jdVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64927748"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 06:28:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 06:28:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 06:28:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 06:28:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 06:28:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w0n61yNMlC7rS04n/HmRID64Zl84HjzIvDw8w1jA9livrG2AF0OHz+7VYItVzFIhoy2mwUevoj5ifMVJVaC6Rg90vvGeoWuThowVlohau28IaIzjvFFAIUqrfXkF7vngg19lrP0hIaHW0ejwkF1KOE2Xty1LXxxA7WbvVlTDuYaiQw62Tx/A33xel9Tyx3keAGy/tjhKFSQXvPg3PipBvUDCD4lFbZ+ExM7vtQcFB50a3aGqmrGa1QE8OkNa6QQNEb6R6chcYahpa+MuEo/bgf0cIOB6EE9TlOM/KfXyfQjhRGOtDt2IYj2QDGHUZjzuNn+irMnr+vUyl1ITJuWXYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W8Dc0ozL1TNgecsy/pl6fAO32KlGSpjnh3G26FbbPvg=;
 b=Ia/ibSFSi4Jlkus6EzkD2r2t1jQHCqMIeEap2+J6zmpmbPn7yPpK0C9/SN8nmZK3MvqNt1z9frbmf3+q6Ey1MI5ZfE5ZuIxJros0kmNqFPBNW7bOuCfO+hr0L/G9HmjaRTyygL2v3U8/GA5d4nVL603+9qw+7HoNmV9T0fUVAvI6PKlaZ5stHMgesLeNFTOFsoLUXf8hioffGcbGSSQiWz7A2xcZCatlpDvFiYQJ3i1x8WHFtcMMdReqHBdH7aS9Xm9oG/tYwwtEBtkSRU5LHXjm9WkYwnXuc9dqDSy/I7qhpW6sL6JUCdIfT+pLZ7niszx1Z5wAgjnLWfpjzEWWCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5293.namprd11.prod.outlook.com (2603:10b6:5:390::20)
 by CY8PR11MB6890.namprd11.prod.outlook.com (2603:10b6:930:5d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 13:28:48 +0000
Received: from DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::e1f5:3b23:9560:2dc2]) by DM4PR11MB5293.namprd11.prod.outlook.com
 ([fe80::e1f5:3b23:9560:2dc2%3]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 13:28:47 +0000
From: "Bommu, Krishnaiah" <krishnaiah.bommu@intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Intel-gfx@lists.freedesktop.org"
 <Intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm: Ensure Proper Unload/Reload Order of MEI Modules for
 i915/Xe Driver
Thread-Topic: [PATCH] drm: Ensure Proper Unload/Reload Order of MEI Modules
 for i915/Xe Driver
Thread-Index: AQHa/UOnmQzQLBqT0U2TL2rFPYp72rJF+W4AgAAWSKA=
Date: Tue, 3 Sep 2024 13:28:47 +0000
Message-ID: <DM4PR11MB5293F63BBF3C31706145908C9D932@DM4PR11MB5293.namprd11.prod.outlook.com>
References: <20240902141041.18467-1-krishnaiah.bommu@intel.com>
 <20240903120826.lint4c3v7gk2s2zd@kamilkon-DESK.igk.intel.com>
In-Reply-To: <20240903120826.lint4c3v7gk2s2zd@kamilkon-DESK.igk.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5293:EE_|CY8PR11MB6890:EE_
x-ms-office365-filtering-correlation-id: c1af426e-163d-462f-fd1d-08dccc1c576b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TDAxT1ZsK3greVVHSXlqUlZieHkwZFEwdTJlbWkvYjNCQy9HZWxkeFgwbXhV?=
 =?utf-8?B?cXh6elhVcmY1OVd3VXJuUTYxcHdQc3AvVWNjUjFIQStoRTI5OVBkczFGZlNs?=
 =?utf-8?B?UjNOZnRrd3A3NWx1NEtKV2ZKK0NJdTFXdGFpbXB1d3B6WGJNSVU5eHhveW5s?=
 =?utf-8?B?ZFBEdklaMkp6KzdNdGVNbEg3M3hNNTNkZzBuMHNuNjhsek5tOXhaeXZzeUd5?=
 =?utf-8?B?TTg5Q2JXREExMUl4andIenFsV3dtMTVVc1NYNFVQRmNmZFh2RUQ4a0UxWkJV?=
 =?utf-8?B?OXQ1Zk9hMEVHdURNbUk4WU10a0p1L0lzeWtqbVNteUpOOE5MU0x3SEdLNkxK?=
 =?utf-8?B?eTdYS3BXVUNXb0E4R01IcllRdWRhQ28wS1lRRjFlcnJSajQyY2I5dGtMUTg5?=
 =?utf-8?B?VTlRUjhPaUpCbTZITVNKSTR2ZTB2bDRpK0JhSVRLclBhWUlXK2VrY2k5TDBp?=
 =?utf-8?B?VHBJMjlRV09iSFBqWFphNGsxR2M1UUZRSWVJdmtiaWd1VlhLSTY3QUFiM2tn?=
 =?utf-8?B?NXl1SExTcUZNZXB3Qi9XV0VGOHZDQ3FsdHlrYXFxZ3BNRmx4N0FFbVJ4alV1?=
 =?utf-8?B?eVhHN3JhYlU3TUtLTmthYW45cDEyNzF3azBLWjR3aWV4K0dYQUNjeUh1blVq?=
 =?utf-8?B?dWVDVGNhaVlWNThScVY0czBCTXlyQ3d4TGR5TjZyalNwMXVNYjE3bWRISlBa?=
 =?utf-8?B?NDBwa3p1SmM0VnpHRlpLSkNtc0JGSXlON2psRHNtQWM4bjBEMVJ1RnVVMHhi?=
 =?utf-8?B?TFFYR2lOUUQ1OHRpdWE1bkN6dWRhMEZpVnRwY29JQWJ5dHJMRjhkUTZ0dGgy?=
 =?utf-8?B?dnd3cVVEOEc5YkpjU2FhUnZVNFdYcmk2OWgzMFFuYTFGZU1vTFVTZWpQRVRL?=
 =?utf-8?B?YVpONzNNalNyT0V4TWtCUUJKUzYrcmVhblhzQlpTRFVlNTYzdmJMWTBubGNB?=
 =?utf-8?B?aHdZTG1LR05BZUZaaUMrWkJES3dwcWZFaXBaUW9MZS8yS29Kbjg4TWdGK3BE?=
 =?utf-8?B?RDBtL2t5aXJCWSs1NVdPUUZLblNUVitUcGc3MDZIaW85cllQbzlxblQvcnkv?=
 =?utf-8?B?V2VoeFVYZEQ1V1FhTndXODFaUUtrSU1xcjRQeU9SR0JNUWFBNlFSRzg0dGgy?=
 =?utf-8?B?NmFXRGdhYWdRODNRbTVyejh5d253RUpyeUFNV1BvdHgzS05ibkJ6a1c3MzZ5?=
 =?utf-8?B?dVhGd3BnZFNJNFBlSnRNQk9qNUxjKytXb2l0ajNjUm8zQXJaL2pjTVpiMW5E?=
 =?utf-8?B?UEpsZ0VDdmZ5Y2FMZlBBeUppUEtEam5tWmhtaURhM3NoWkkra093TVhDOFN4?=
 =?utf-8?B?L0lGSk9NcGtuYzNubVdYbUxua3hRRDUwWndOVTRiTGpCTjRrV21sbFJFdlVG?=
 =?utf-8?B?SXpvWjU1QXJPV0FBelZVNG40ZWsvbnVQYTlxZUhJMms4czl0MWh2ZFA2bVNp?=
 =?utf-8?B?akhvaW1teEY0QVFkQzVydUx3ZmZMazNpVHZ3L012eTZ6VGt6a2tpdkxhUFhI?=
 =?utf-8?B?MVFXdWp1bFJiS0xwdG5BZHRacjhqRGNNa1FlVFVMMzRpcXExWERiVXhiZ0lO?=
 =?utf-8?B?ZVM0Y2orRjhPWEdqMzBNSy9jaGphUE9oam4xTHNNQjFnOEY2QTVMOTFtekg2?=
 =?utf-8?B?aE1Ta3VtMERUUHlMNWZadEQwZUpQNGcwMWx2M2FRdFV4VEZYNGp1b2x2NHhD?=
 =?utf-8?B?WEc1dDRRQlFHRDIxVUJwNmxoMy9JRXRFRGN6WEwwYnR6VnBlRFhiQStnY0hx?=
 =?utf-8?B?Vyt2Ylh3TXBCR1h3bW1mVDVucHZXWDV3SFRlUVJISEVORGJJeWFKTXhOaWtl?=
 =?utf-8?B?eXowdkhKOFZvM0NkeGZhRWxxaCtiWCs1bHVML0dkQXUxUzZLekdSeEEvZ1da?=
 =?utf-8?B?VU84d3A4ZDROSkVybGJrT3pKcFRSdHhhSUFsYnVhVHZyV2c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5293.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0dBNjI2bmFETXNHc2RCWmJpY2RRZUM4MXpOVm9WNEFSYkV2QUVkKzlwNk1j?=
 =?utf-8?B?RUF0QVpNdnFWb3JWeVhJRE8ySk45c2NnU2pReVBjM2cxT1FwelFnR0ZTRnRD?=
 =?utf-8?B?ZWFyN2UrVWRHZTNnTHVyTnJFKzAwTmY1QkdxTElXejVrUVMzc3p1M2lac0FK?=
 =?utf-8?B?ZzBDYWFJQmw5S3QvY1NwNVBXeThEYWdJem52dUF0cUdESWswQXUwN0VVY3l0?=
 =?utf-8?B?Q25TQ3F3MzlQa3ErbFdSYkh5TVo3TG9mMms0QjNqVnplZ1JSNytGdkxqYUVu?=
 =?utf-8?B?Z0VvWlpXaWlUUjV3a3AxbjlSdXc5R3NMd0p0bm9mY2x4NkZ5eHNMN0JLNmxj?=
 =?utf-8?B?ZStHandhc2t5RGkrUDdFSUpXbWxjc2FOSkUvNWJ4c0I4YzB2MTJwbzFKNzM4?=
 =?utf-8?B?TDNreFY2N055SEZNVFRiRkNPbnlxcWRvRm9ibmVuUzErRC9jcFlVcnNMRndq?=
 =?utf-8?B?Uld2TGVpbno4T0ZHMFROL01lM2h3QS9tWDJxbW9ER01GVUozNTZRYVJyVmta?=
 =?utf-8?B?U0JSVDdLeEdjdlNPVkhkQ0dpV2UycEpxZkJnYVdZRFRsWGc0U1lmUHBWQ3hv?=
 =?utf-8?B?b0VuVHRwbHZmakFGeFNZT01zc0xXN2pjMEdNU0M1S2Fpak5GaWlTWUtvcC9k?=
 =?utf-8?B?eTZKOXFhU0lqL2pSTmQ1TUZQQlI2dWpiSUtpVm5uK3JnblJkeDF6eUMxdHQw?=
 =?utf-8?B?cUJYN3ZlVjhOZjRLL25nQ3pYUG5vYldNTEZiVlAzQjRvRmR1NWZRb1I2K3VB?=
 =?utf-8?B?cmdNNkl3YnQwWDFiQmJHby9mdngzU0NMLzRwcmlvTHd5Nnh3ZDZzSkNXVzk0?=
 =?utf-8?B?c0haWmRXRlN5RXp1MUZPdFdwTk1QSmZoaTl1Tlh2bG9teG1pUXBqL05aL1I1?=
 =?utf-8?B?aERscDVZM0FVSjk2dEtlKzVtSm10Nm5MK2VCTkZLQ1BLcWZDUzlaREpyV3ht?=
 =?utf-8?B?NnhDOGNWTkhYcndudUF5aGJleStKZXR4ZzNWdGhrZHlyTTVITGFoYkZQSnZn?=
 =?utf-8?B?UWJQdTVEMTQyNkNaay90UU5oKzEzNUsrc3ZSUzN1cFRWSmJIUVJYK29mQVc1?=
 =?utf-8?B?QW80cVJqaERFcnY0ZUxNMnkva1NyRUUyclZ4SFhDSUNmYWVlZEJCbjBGRlFH?=
 =?utf-8?B?WThqUmpodWdMaW9QYWd5UHY2d2RGL2tBaFJmdVJPVXNLRlJNcjR1RWhjaGg3?=
 =?utf-8?B?bnpYVmdaSWNqTUd6YjRaam1rSm9KeE45S3VTcnNwcEwzMWZFNVNaZzhvTmhF?=
 =?utf-8?B?NXUrNTB4dU8rOG5LUEs3TjUxYjdFMk5MRDZlRjY5OGtKQ0FzZmphWlU0RWlt?=
 =?utf-8?B?TGVjYVF0dzhsTXBVR0lRVXFiem8wTm5xL2g5amVOYmZYMnFKTWZiTWZEN2RI?=
 =?utf-8?B?RHMzdDJRQnQya0F6VklURnVncXFmYkIzTUc4cjZtYnhuY1h4NVd5UzB6QTFZ?=
 =?utf-8?B?QXNyUmx2dTRzUFpkWGg4UTZkZlBrcHRzMTVpcFdUNlBDbldCQmkxbUYyOUdr?=
 =?utf-8?B?YnpUNkpGcXVKVEx4Y3Q0Mktja2NReXlBOHpjanBmdTlRUVI5VXlCRVdDMjAv?=
 =?utf-8?B?ckFER0VIZmF1Wm1xa1FKTU9qMHJJSzlPQ01BNXBSemZjQ0NLYXRxMDk2cXpP?=
 =?utf-8?B?a2ozazFSeW1LUWVZb0I2a2ZqR2RNc0V1a1FUUS9yZEJtUS9UNFhOTkdVbW9P?=
 =?utf-8?B?OGJSVlZreERzWXNzc1I3andpR2RPeTVDeDZYY1k5UVBtNTcvZWpJZHRaSWYx?=
 =?utf-8?B?elF4QUF4M1Rpa3hpcldLaW42YTMvdEdwa0R5dnpkQkF5R0JZOHBHL0t4b1pl?=
 =?utf-8?B?T1IwK21BM2JLTHZJd0lKZHU4LzJSaldBN09JWlZ4Y3BXOWxNdDBwS2JoUUFs?=
 =?utf-8?B?bUp1dE85WUxaSFd2QVFtcXRaaTF2SUJ3ejdHbEJJaGxsMnl3S3RhVXR4bXE5?=
 =?utf-8?B?KzI1SGJXWGtoclJSR08yOHhwSnQwVlJaQWloZ1oxbzA2VWhGZHZJSjNkcFND?=
 =?utf-8?B?MS9iYkZsdmpDKzZDL0xmZ3ljbEJGYVFwMnVxU0dLWWpBTXFHSnFIRUpqYlEw?=
 =?utf-8?B?dmpLem9EV1Y0Tk1yYkZuUkxNa3BnZzhvWG5WVGwzVms1TmtnQStDTXJpRW5U?=
 =?utf-8?Q?a4AcuOr+jd/Myy4Zb6LdxG9Pf?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5293.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1af426e-163d-462f-fd1d-08dccc1c576b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2024 13:28:47.7170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /E1x5s3S1MJguNIipXh49R+vi8Z3Q9zhxDItuECpBhoK/HU/ye/uoPLegamOce+ls8xctwVkUJEeugCQx+eDaVlsmPO2hSQe2W8oLlO/SJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6890
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

KysgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQo+IEZyb206IEthbWlsIEtvbmllY3pueSA8a2FtaWwua29uaWVjem55QGxpbnV4
LmludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDMsIDIwMjQgNTozOCBQTQ0K
PiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBCb21tdSwgS3Jpc2hu
YWlhaCA8a3Jpc2huYWlhaC5ib21tdUBpbnRlbC5jb20+OyBDZXJhb2xvIFNwdXJpbywNCj4gRGFu
aWVsZSA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMN
Cj4gPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJt
OiBFbnN1cmUgUHJvcGVyIFVubG9hZC9SZWxvYWQgT3JkZXIgb2YgTUVJIE1vZHVsZXMNCj4gZm9y
IGk5MTUvWGUgRHJpdmVyDQo+IA0KPiBIaSBCb21tdSwNCj4gT24gMjAyNC0wOS0wMiBhdCAxOTo0
MDo0MSArMDUzMCwgQm9tbXUgS3Jpc2huYWlhaCB3cm90ZToNCj4gPiBUaGlzIHVwZGF0ZSBhZGRy
ZXNzZXMgdGhlIHVubG9hZC9yZWxvYWQgc2VxdWVuY2Ugb2YgTUVJIG1vZHVsZXMgaW4NCj4gPiBy
ZWxhdGlvbiB0byB0aGUgaTkxNS9YZSBncmFwaGljcyBkcml2ZXIuIE9uIHBsYXRmb3JtcyB3aGVy
ZSB0aGUgTUVJDQo+ID4gaGFyZHdhcmUgaXMgaW50ZWdyYXRlZCB3aXRoIHRoZSBncmFwaGljcyBk
ZXZpY2UgKGUuZy4sIERHMi9CTUcpLCB0aGUNCj4gPiBNRUkgbW9kdWxlcyBkZXBlbmQgb24gdGhl
IGk5MTUvWGUgZHJpdmVyLiBDb252ZXJzZWx5LCBvbiBuZXdlcg0KPiA+IHBsYXRmb3JtcyBsaWtl
IENMUywgd2hlcmUgdGhlIE1FSSBoYXJkd2FyZSBpcyBzZXBhcmF0ZSwgdGhpcyBkZXBlbmRlbmN5
IGRvZXMNCj4gbm90IGV4aXN0Lg0KPiA+DQo+ID4gVGhlIGNoYW5nZXMgaW50cm9kdWNlZCBlbnN1
cmUgdGhhdCBNRUkgbW9kdWxlcyBhcmUgdW5sb2FkZWQgYW5kDQo+ID4gcmVsb2FkZWQgaW4gdGhl
IGNvcnJlY3Qgb3JkZXIgYmFzZWQgb24gcGxhdGZvcm0tc3BlY2lmaWMgZGVwZW5kZW5jaWVzLg0K
PiA+IFRoaXMgaXMgYWNoaWV2ZWQgYnkgYWRkaW5nIGEgTU9EVUxFX1NPRlRERVAgZGlyZWN0aXZl
IHRvIHRoZSBpOTE1IGFuZCBYZQ0KPiBtb2R1bGUgY29kZS4NCj4gPg0KPiA+IFRoZXNlIGNoYW5n
ZXMgZW5oYW5jZSB0aGUgcm9idXN0bmVzcyBvZiBNRUkgbW9kdWxlIGhhbmRsaW5nIGFjcm9zcw0K
PiA+IGRpZmZlcmVudCBoYXJkd2FyZSBwbGF0Zm9ybXMsIGVuc3VyaW5nIHRoYXQgdGhlIGk5MTUv
WGUgZHJpdmVyIGNhbiBiZQ0KPiA+IGNsZWFubHkgdW5sb2FkZWQgYW5kIHJlbG9hZGVkIHdpdGhv
dXQgaXNzdWVzLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogQm9tbXUgS3Jpc2huYWlhaCA8a3Jp
c2huYWlhaC5ib21tdUBpbnRlbC5jb20+DQo+ID4gQ2M6IEthbWlsIEtvbmllY3pueSA8a2FtaWwu
a29uaWVjem55QGxpbnV4LmludGVsLmNvbT4NCj4gPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4NCj4gPiBDYzogTHVjYXMgRGUgTWFy
Y2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfbW9kdWxlLmMgfCAyICsrDQo+IA0KPiBpbWhvIGFzIHlvdSB0b3VjaCBp
OTE1IGRyaXZlciB5b3Ugc2hvdWxkIGFsc28gQ2MgdG8gaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gDQo+IFJlZ2FyZHMsDQo+IEthbWlsDQo+IA0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0veGUveGVfbW9kdWxlLmMgICAgIHwgMiArKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfbW9kdWxlLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfbW9kdWxlLmMN
Cj4gPiBpbmRleCA2NWFjZDdiZjc1ZDAuLjJhZDA3OWFkMzVkYiAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X21vZHVsZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9tb2R1bGUuYw0KPiA+IEBAIC03NSw2ICs3NSw4IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgeyAgfTsgIHN0YXRpYyBpbnQgaW5pdF9wcm9ncmVzczsNCj4gPg0KPiA+ICtNT0RV
TEVfU09GVERFUCgicHJlOiBtZWlfZ3NjX3Byb3h5IG1laV9nc2MiKTsNCj4gPiArDQo+ID4gIHN0
YXRpYyBpbnQgX19pbml0IGk5MTVfaW5pdCh2b2lkKQ0KPiA+ICB7DQo+ID4gIAlpbnQgZXJyLCBp
Ow0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUveGVfbW9kdWxlLmMNCj4gPiBi
L2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9tb2R1bGUuYyBpbmRleCBiZmMzZGVlYmRhYTIuLjU2MzNl
YTE4NDFiNw0KPiA+IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9tb2R1
bGUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS94ZV9tb2R1bGUuYw0KPiA+IEBAIC0x
MjcsNiArMTI3LDggQEAgc3RhdGljIHZvaWQgeGVfY2FsbF9leGl0X2Z1bmModW5zaWduZWQgaW50
IGkpDQo+ID4gIAlpbml0X2Z1bmNzW2ldLmV4aXQoKTsNCj4gPiAgfQ0KPiA+DQo+ID4gK01PRFVM
RV9TT0ZUREVQKCJwcmU6IG1laV9nc2NfcHJveHkgbWVpX2dzYyIpOw0KPiA+ICsNCj4gPiAgc3Rh
dGljIGludCBfX2luaXQgeGVfaW5pdCh2b2lkKQ0KPiA+ICB7DQo+ID4gIAlpbnQgZXJyLCBpOw0K
PiA+IC0tDQo+ID4gMi4yNS4xDQo+ID4NCg==
