Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF779CFD937
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 13:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B36110E599;
	Wed,  7 Jan 2026 12:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJiGHCt2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023D410E599;
 Wed,  7 Jan 2026 12:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767788020; x=1799324020;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DuO4jObvWEPM32G0GOdVilRVqTg6hSn/Wj2t8GOz6GU=;
 b=YJiGHCt2cbdAsRFfj4ZIo9yZF5tBQ/aXw33sJS2tcu1Tu9bxuHbW9dx1
 uSr3NGmzRtg2V8WIPZisgsRWdIIGzdUTlK5X3T4Edx0wAktKXmcnCv9cd
 K5pmznfdVLOGFlpdd22oLtOfckWyOzyFEsbk22jKoIeQoEzWV7iduLZ57
 54/1W727Frxotz7ysufrARqXzg2JsweGR3feVeTZ1yOnc2ntRrfafGI+9
 50N+bhspnDnAno9fdtBGJ029fXUsr8fd+gV67Xb6UpCEpxzq2Ab2NwMzy
 XFq60fF7C+rw3vQx1JkkyAD8780KnNnzk5eHsxviC26mNL8ETl8VZzRPB g==;
X-CSE-ConnectionGUID: QOLdTqxAST2j/tk4m5LWcg==
X-CSE-MsgGUID: Sg2KdzQkRAmN7Vb3O/0uHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="80517615"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="80517615"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 04:13:39 -0800
X-CSE-ConnectionGUID: COn9IvitTM2EpmZ9ldTPmw==
X-CSE-MsgGUID: WOSonL3hRiKNbGj6HREiWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="207975260"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 04:13:40 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 04:13:40 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 04:13:40 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.14) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 04:13:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aB1gkwB37X/otn74Usu9QWA3MTiEICKQCFrVM5tmroCo8Rum1vJ+Gqqm7An1hZvWftYKnmJYctxygkFE4MBIQZ1TtAcTzPP3ahh0bC7/EFRKlMrPI6XKDrtg9t7oShZKkGRD3WdGonBc7XlbD3YJIXjPgZwRkAXEI6UCEBEOxgjxcZzVVMrvoX8pQ8uUZ7FfTGDp1CzKnc9dPJMNd5Kt98TuZbaeCTTsQPtIm9o2nHwI7BoDlRBoaG666P5HjUwdV0Nt1LHV0YzWzzn3P4dum7PJNjSiF3JE8Oz/RERYQP81xwrZ8Bis1VsaGOALMP+mxB1Do9AOPYMytEsGwvtF+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DuO4jObvWEPM32G0GOdVilRVqTg6hSn/Wj2t8GOz6GU=;
 b=wxN8CPNB7KSlOaT9s/O+AazgdKwCJX8zPLVh0sXVKd5dgYPIiWKf+lKU6+CqnC66JHd45ja+pkRiIIw0cnloErapJ7h1bVDeHUU5weQSHnTNq3jmYmnrdDo8x0k6n7NyDxiZe8SvzUt1kvuBRraf3JP1FIb/hnQGQ7yWG5tLHMaqgTrkc8XOv8GExrYf6KgjUHXJyO39wycXRa+K15Uf6qOf4vBbpIJHCp/4q2x0Pf9NCJeeOf5S6u2CrUGpdTCZpPV18z9DeGcIvGrSIF7cDF5llUL5vp/BlB2UOQMVFflSoWVBPIToFV8cho97HrzVmCVzJtSZt3RkFPgw+57y7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 12:13:37 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 12:13:37 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: update the wa_22014263786
Thread-Topic: [PATCH v2] drm/i915/display: update the wa_22014263786
Thread-Index: AQHcfjDzSbKiIzBcNkWRbYQ2ruG+ELVD2YyAgAABS4CAAsbgAA==
Date: Wed, 7 Jan 2026 12:13:37 +0000
Message-ID: <a3ddbf34482d00892c7e1a65e72ac83fc4167437.camel@intel.com>
References: <20260105104858.283686-1-vinod.govindapillai@intel.com>
 <176763507911.9480.16301562560632046947@intel.com>
 <176763535723.9480.4501748588399787683@intel.com>
In-Reply-To: <176763535723.9480.4501748588399787683@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8279:EE_
x-ms-office365-filtering-correlation-id: a24d4627-a605-4afa-723e-08de4de62fea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?NThhVm5WczhOMWVqeU1BQXE3T1RCNXZOYTBQSzlqOUYxUDgvV2xZNjRzNjMr?=
 =?utf-8?B?MGkxVk81L0ZWYUJvK0NtYSttTHQzTnl6cFl0NHlnL2ZReXAydGsrdDFRK2Ru?=
 =?utf-8?B?VDV0bVNpRGF1REQvS1lwaWp3UzVuaElKc203eWttRXU3WHh1bzU4NTFZV0Nn?=
 =?utf-8?B?MThkMlNxQ1BnbVUrMFRtWEorZ084QURCSmZhRVIyYUhkenp4TjllNnRjaGlU?=
 =?utf-8?B?WkIzVkVWaHRrZzF0aXdzZ2FPS0R2RlVBUE5lOGl4a2FiYll1dHpCRDlvU1pY?=
 =?utf-8?B?N0VMeVJ1UjZjYnJZcWo0UWhxN0ZsZUtEUUdEVy9XNEVHN2p0aFhhZHN2cGtC?=
 =?utf-8?B?MTdpdnJnb25pNmdKdDNNSDNRczNoQThKTXhBNklCRXk0WXVkMGFyaldiaGls?=
 =?utf-8?B?SmhPUHgzR1dKTm1xajJwbnlGeHJqVGJ3VHRhMkhlcG1rYno4UUwvd0ZqcjNO?=
 =?utf-8?B?empoMTB4N2oxVlduQlphd0FZSVAzam5mUTU4VldMbDNQUVpoNnY5RDJJdGlH?=
 =?utf-8?B?M0wxa29PMFd3Z3Mvdmh1dHZ1anZHd0RPT1ptOWF6YlBQaXlRWWNaNER1NXIw?=
 =?utf-8?B?UExuRk5HQ0I0MUhQejVna1p5c1NSVnpWajZncFBBcWVneEsrQ3BmWmNyTzlG?=
 =?utf-8?B?MVEvTHkvOHlpVm9oZEx6bUNYWGV3K1JPWjNWNVI0T2tiVm9mVFJSY2ZteTVi?=
 =?utf-8?B?cHZxOE5rZkVSSDg4QmYrY1BaV25hd0NCeDZVdFFRcDF4SitsazRGajkvTWRQ?=
 =?utf-8?B?SlVONk5GNngwM202ekVFS25PMzFRb0tnc3ZYTkU4UkZqbVBHL2RVL2hNa2pu?=
 =?utf-8?B?SHdTN3hQc3I0NU9GVzlXRzZ3UkpQZkdWZmtZQzh1dDA0TnBwWTdhL0dsRE1H?=
 =?utf-8?B?WXcwMThDdTFxcE5mclNEckVNdG5EUG0rdlE1R1Z4Q0tEVGJHaWlZNWZ1WmtK?=
 =?utf-8?B?RGVVTTUrRVVMSUs1T3ExSWc5UERlVkVUUWRsNGNlTmprUG5oRmp1T2RxYlpk?=
 =?utf-8?B?bXVWUkwwT0o5YnJLcHRlSm5MUU93L05aQkxYbktSS01HVG5zQjdYcWdVaVRU?=
 =?utf-8?B?bVhnL3NGbFBuRU5qWmU1bWhHY0ZNSW1tV3VnS2NPcCtxNTFmTzdaeUJ1RTVK?=
 =?utf-8?B?aHJvUEZmTmtWL0xZdHdQQnpwY1dhc0tsb25rRFRQQ2pmdXpWME41dkh6MXBC?=
 =?utf-8?B?MjluMHV2bVBlcmY0YUxHZENnSW12clMzbkZlajk0S2hHNDhDeHJkRzc5bHBM?=
 =?utf-8?B?V2c2cmp3UlJ4ZnVJMHl2eldQYWRUR3hnR0hHcTBMUFdnU1VJWDZITTRaZE95?=
 =?utf-8?B?WXZ0bU9WQlRQMm5uazZSRXVYMEtiVmlwWk9td0haRmxFYUFrOFYvYW8xS1E3?=
 =?utf-8?B?VlROc3dFMmx2NTVqMEJBU1NrWmF4YittdGdHZ0RJNndRb2hBR3N3WXl4Qm9G?=
 =?utf-8?B?Q0dBc1V1WkpuUldRWGEzeEt1MnFOUDRjSjh2MWJxRk9zZ2hjVGVrY2wweHhk?=
 =?utf-8?B?OXFyVFpRYUhRYXBOOW1DdmtBS29oU3ZTVUwyMXYzRmM4MFRoNlFLZm50MUI0?=
 =?utf-8?B?NnFPNWpsbGlLNFFRSTl5dCtBZnArWUdPd1diSk9LTkJHYUVyY0F6K3JqVEsr?=
 =?utf-8?B?SlBLUDdQS25aTXNUblJGZjZqOGRZUWpwSUo3ZzN3MUVmYmhuR1VwWWZkMjFS?=
 =?utf-8?B?T0E5dUt4bVVNRlppWlVMMVA1REF2WEpTKzBPSEdwRk5WemdaaDNyczZUYzkx?=
 =?utf-8?B?b0ttQTRoRWpFVndrbGR6c2tqVVppeDZVRnl6YjRGR1U3V1crZEtRZkh1ZVIv?=
 =?utf-8?B?S1kySWNPQW5TcVIxaWxPRFc0ODRnRkoxck5vUEtHVnk3SnJlSjRGZXNmSGVk?=
 =?utf-8?B?L3cwandoMVBydTBVK3lDODA2eUs3OE5Bd2huYUFXVWV3L0NvNjhjSGNSV3BJ?=
 =?utf-8?B?Yi83OUlZd0ZqMUgvNU41SE16bUpyY013TC80bVJRakhqYVQxVnZkbFFySjEz?=
 =?utf-8?B?VmVkdldtNnR0bi8zY1VGcmRiRWFaU3FRMTl6OGM0cXJNeW8zNVltdW5RbUNV?=
 =?utf-8?Q?R7nb+E?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnFwSFlXVHg1TUM4SVFWKzU4bFh2dzVrLzlMWXRYbWoyaEtOTU13NThiek1s?=
 =?utf-8?B?eENYZ0ZUeW4vMFhvYW9QblpzQ05DdDduNE53ZFNDaC8xb1kxaU9zY2lxN1h2?=
 =?utf-8?B?aTRXNFBkbTdmR2FKQ3FvT0trZitOSHAvdlYyQm9ZeklCbXp6d0MvWVVwQnRh?=
 =?utf-8?B?U3VrTkFLa3psMlc4Mm5ZUmJ1TDE4d05nOWQwMTRZVGdrclUyLzNYQVZFSGhH?=
 =?utf-8?B?ckhyaDlabnYvNXRZaU5VUXdGcUxZSy9HVDVnWEVzbTRwNlhZWnpFcEpTTTRJ?=
 =?utf-8?B?dDdWcUN1aDhYRXZ6SlNRMlk5aldKTFpsOGw4aHBIdUQ3QnNyeFR5M0p3R1R4?=
 =?utf-8?B?bzhJbklTSDV2azJtVnl4eDY5dncrcytJdVM3UXREbnhBVVJtc1k2c21PenJo?=
 =?utf-8?B?YkhxRms1VHN0Q21IdUJnN3Arc0k1bk5GaEthZE15emdiV25lQmlVeVdadGJ5?=
 =?utf-8?B?SEZPdzBhSmh2Y003N3M1UEw2YVZsRW9MSmtPZVlucDZ6ZmQ1V1JnRm5mb290?=
 =?utf-8?B?V0VoaU8yT0VjN3BRWUNqMDdMVGE5MmNXMUJLWXdOcldpc09CZysyLzdGK3Y5?=
 =?utf-8?B?d0tKdlFBUW53dXl6emJWVCtQSEM1aGlRbnZKRXNtdnhHdkVtK0R0ejROL0FW?=
 =?utf-8?B?b0Q4M3BnQ1pWVW1KbitiZERxdHlOSHZabWUzWFdRaExnRnI4VDRiajBUNFY0?=
 =?utf-8?B?aFpyYU1xUnFQNTd3TDdtalBTYUowNjluWEhpRzR1QzMzZkEzcEVIclJiaXB0?=
 =?utf-8?B?c082MkloOHRoQzZpN2I5NG1ONmhjWDg1R0RTelpEQjk2Zi9UekRFYjMyNFhT?=
 =?utf-8?B?NDFkdFFHU0VnMVBBeWxWQURNS0JOR0VvSzJMci8zWDVQWlVRUlVpL3BxQWVl?=
 =?utf-8?B?M2JJYzFtUlo5WUxtazZlZnUzQlFjQWNwM2QvRkhJaWVWNFBWcm1scjRFdThD?=
 =?utf-8?B?dzFLV3VQVXI0U1d4NWUyY2VjSW5lZUh6ZS9PT3VjQStmTnlxc2wrVThJSTJq?=
 =?utf-8?B?ck9GMGNyTE5yRjdZV0k4VTIxcVp5SzlUbGh2dFlBYmxVOWFCRnBET3lxTzRw?=
 =?utf-8?B?WVBtVG5KRmh0SWtKYVJxWk9lQ01RQlpxMFBOYUJsOFRtZHFTcVRBMU13Tkt4?=
 =?utf-8?B?SWNVMXRHbjJPby8weUVYTjBMUE9CT2JSaGFzenoyTFBzSG0rM0psZXZkQTlQ?=
 =?utf-8?B?R1VmSHVpbnVodDhaa1ZWQkhPNzl3N05RS1JKbzY2dVNWVHNPNjNzcHMvNXk3?=
 =?utf-8?B?OEpXdmt0UUtrcUxHdC9mcXpzb1dSaXFBSG4vOXoxLzl5NVlieE5wV3dsbVhI?=
 =?utf-8?B?MTJSR2lMbEcrNlI1Vm43MmUyQkprL3NTNUNWVDlnV3RFQlVqRVMxRzY0a1Fk?=
 =?utf-8?B?QlhNRi9aZ3cxSUZGbmlyY0Roa1E0eEsvRmdmc3RPS0FBcVBSc0ZEUk1YNHFQ?=
 =?utf-8?B?dHM5Mm4zamxnTHVsSHQycUcyTEVMeWkvb2xoMHN5b0ZHSERUOEFuOGVKeHZ1?=
 =?utf-8?B?QStJem9XaFVyTjlKb3Rvc05RUVMxT0lPOFJtRkp0aGFjSkE4MitJcEVKbEk0?=
 =?utf-8?B?cklvUXpTQWRMaXhwRk1rL1RJcVBJZmVtTEd6cmZMUDU5dHRBQlFpa2trL1JQ?=
 =?utf-8?B?RkphWjV4UkRQcE02YlFUM3U2NlVVWkZHN0JzSmVrMU9iOUc0M0MrSno4OGtC?=
 =?utf-8?B?WjhvMlZOa3FwKzMvenc3TXFUYWhRVjJ4MHZTbnFPdnM5SzdNZ2Y1OFhDdmI1?=
 =?utf-8?B?cWxBemZUSHRrQ3ZVMFZHemxKTVZGM3ZjNWIyNFI5N0RsclQyR0crNkNlYnph?=
 =?utf-8?B?T281M25wZzZmeUJtaDlCaTZOK3JEeDV4MmZNdVpkK3A5STlIaHVvemhPQ3JJ?=
 =?utf-8?B?elptbk1OcmJlK3JMWnN2YzhrMGhRb0lvY3RQQkppRUcyZERTYXVmSEdVTlZ2?=
 =?utf-8?B?MW9pbGYzaENIc0RYbHFlbkJDK1FNeURHWG5HQ3NjaDkwaE1uYXFNcnFOQ2Q1?=
 =?utf-8?B?Ylpzbit3N2tnYTZDYk9JWnBnYzNQT2dWNjJSaXZoTCtQOEVUeVEwb0ZqLzh6?=
 =?utf-8?B?MkNKdVVqNFA0aDBQdzlzSU4zUUlwVkY1QzZqbVdYYkloa2Vkem0xK2JURHJK?=
 =?utf-8?B?bEcrRll1cHo4QXdiSFcyZDVxQWVBbFpRSFZ0UHVSdWVpUVZZWkRGVTE4TUFx?=
 =?utf-8?B?eFptOVFWM0JRd0lMSmtjYm9uTjdkMVlhaEZKMHB0Tm92MkFXeWh6TTVLR0Jl?=
 =?utf-8?B?VDlySXJiQ1dhMjVVSGNkc24rbVBDSlllRW93bTRIVlNDLy9JY0w2TzBwck1J?=
 =?utf-8?B?Uk1SVkU1MDhnSGtVL2Z0SjRGVElCQUpNUDFvR3ZHWVBHRFQrWkE5V1A1YS9L?=
 =?utf-8?Q?yWlz16UElh4vMCNHa/epr+Z5K8gSjbbmy7yXQxBJjPGc1?=
x-ms-exchange-antispam-messagedata-1: VcWMEGM2ReBTRQ5ZJkTFcJs221bMsZM2gdc=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C64E0B9A3094D34499F995780A0B2755@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a24d4627-a605-4afa-723e-08de4de62fea
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2026 12:13:37.4633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W0m2VfktCQSNH0j8kryybw6fqh76siB4JPllrim5O+rmPth4qadgZbZreR6lTWJ7FAgFRyebt322YOzyVNgdYLWimwgl4X4WEhvt3BpK7ns=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
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

T24gTW9uLCAyMDI2LTAxLTA1IGF0IDE0OjQ5IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBRdW90aW5nIEd1c3Rhdm8gU291c2EgKDIwMjYtMDEtMDUgMTQ6NDQ6MzktMDM6MDApDQo+ID4g
UXVvdGluZyBWaW5vZCBHb3ZpbmRhcGlsbGFpICgyMDI2LTAxLTA1IDA3OjQ4OjU4LTAzOjAwKQ0K
PiA+ID4gRm9yIERHMiwgd2FfMjIwMTQyNjM3ODYgaXMgYXBwbGljYWJsZSBvbmx5IGlmIHRoZSBu
dW1iZXIgb2YNCj4gPiA+IGFjdGl2ZQ0KPiA+ID4gcGxhbmVzIGlzIGdyZWF0ZXIgdGhhbiAxIGlu
IHBpcGUgQSBhbmQgcGlwZSBCLiBDdXJzb3IgcGxhbmVzIGFuZA0KPiA+ID4gYW55IHBsYW5lcyBv
biBwaXBlIEMgb3IgcGlwZSBEIGFyZSBub3QgY29uc2lkZXJlZCBmb3IgdGhpcy4gQXMNCj4gPiA+
IGZvcg0KPiA+ID4gREcyIHRoaXMgd2EgY29uZGl0aW9uIGlzIGJhc2VkIG9uIHRoZSBudW1iZXIg
b2YgYWN0aXZlIHBsYW5lcywNCj4gPiA+IHRoZQ0KPiA+ID4gY2hlY2sgaXMgbW92ZWQgdG8gdGhl
IGZiYyBwb3N0IHBsYW5lIHVwZGF0ZSBjYWxscy4gVGhlIGZvcmNlIHNsYg0KPiA+ID4gaW52YWxp
ZGF0aW9uIGNoaWNrZW4gYml0IGlzIHNldC91bnNldCBiYXNlZCBvbiB0aGUgY29uZGl0aW9uLiBG
b3INCj4gPiA+IHRoZSBvdGhlciBwbGF0Zm9ybXMgd2hlcmUgdGhpcyB3YSBpcyB2YWxpZCwgdGhl
IHdhIGFwcGxpZWQgYmVmb3JlDQo+ID4gPiBlbmFibGluZyB0aGUgRkJDIFVuY29uZGl0aW9uYWxs
eSBhcyBiZWZvcmUuDQo+ID4gPiANCj4gPiA+IHYyOiB3cm9uZyB2ZXJzaW9uIHNlbmQgYXMgdGhl
IGluaXRpYWwgcGF0Y2hzZXQNCj4gPiA+IMKgwqAgZm9yIERHMiwgYWN0aXZlIHBsYW5lcyBjaGVj
ayBzaG91bGQgYmUgZG9uZSBhbGwgcGlwZXMgbm90IGp1c3QNCj4gPiA+IMKgwqAgdGhlIEZCQyBw
aXBlwqAgKE1hdHQpDQo+ID4gPiANCj4gPiA+IEJzcGVjOiA1NDA3NywgNzIxOTcNCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkNCj4gPiA+IDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4NCj4gDQo+IEFoLCBhbHNvLCB0aGUgY29tbWl0IHN1YmplY3QgaXMgYSBi
aXQgdmFndWUuIEkgd291bGQgbWVudGlvbiAiREcyIiBpbg0KPiBpdA0KPiB0byBtYWtlIGl0IGNs
ZWFyIGl0IGlzIGFib3V0IGFuIHVwZGF0ZSBzcGVjaWZpYyBmb3IgREcyLg0KPiANCj4gSXMgdGhp
cyBhbiB1cGRhdGUgb3IgcmF0aGVyIGEgZml4PyBJbiB0aGUgY2FzZSBvZiB0aGUgbGF0dGVyLCBJ
IGd1ZXNzDQo+IGENCj4gIkZpeGVzOiIgdHJhaWxlciB3b3VsZCBhbHNvIGJlIHdhcnJhbnRlZC4N
Cg0KeWVhaC4gSSB3YXMgY29uc2lkZXJpbmcgdGhhdCBhcyB3ZWxsISBCdXQgYXMgdGhpcyB3YXMg
REcyIHNwZWNpZmljDQp1cGRhdGUgdG8gdGhlIHdhLCB0aG91Z2h0IG9mIHN0aWNraW5nIHdpdGgg
dGhlIHVwZGF0ZS4NCg0KQlINClZpbm9kDQogDQo+IA0KPiAtLQ0KPiBHdXN0YXZvIFNvdXNhDQoN
Cg==
