Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9821F8FEE71
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D039710E0D8;
	Thu,  6 Jun 2024 14:44:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h9iISA/q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878B110E0D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717685099; x=1749221099;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bfSjIotdXHdC1JkKbpqRtGF8Z7fwtgoICNhSMr+7qw4=;
 b=h9iISA/qOplegPBGew1R3bUEua2l4nhNU6wNLGdKpCTBjWOoz2LXBBCW
 LcSu9FPSnHQiWOAt4bBwrQFZYGXfO3OefoRoBOFy/3ysOLY6V4uR8MIjW
 vfhHhXq2PDjEM5rOX3BOOPVoDBggmhu4tzyeiGhRdqyh7F6y0JtBdjFAo
 cnINTjCWkWlUDgfAmctjeLRlEcNkA7NVXUEuYKFuwOGK9TnoqVh+qYTk0
 a50DJUOwG+Xg3smCqPW/ZOt+gHY16e7r3Zo4tYHuoREjUWGWsjTXm5fss
 rro9rM3hZ7+vQVI/CP4bUiJryIecEnAvpN3/L/HDhpTmjHHL+ULATlW3q g==;
X-CSE-ConnectionGUID: rzdFqaihREaH4ku6eTv6rw==
X-CSE-MsgGUID: xZbhcZZzSH+UY/iA4KYJxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14317089"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14317089"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:44:58 -0700
X-CSE-ConnectionGUID: r26I/AP6QReNcxOFY/zggA==
X-CSE-MsgGUID: SPkNVu6CS7u+zOB9OzY8UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37935497"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:44:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:44:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:44:57 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:44:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TB3DcJlcv5d5Fi9XPvFiyKzf8UPi3zH7xdlEM0xKnczswefz/gbpMu9PGmE+NAXeWtblSp5n75e7sLqonUKxvmL22RMY0vwDF7dYyziCoy/G1gv/y81rNvPrXG1HYe8Wo8F4El+3MObTxXuSxiI2v7gUCyRwmeMOhghgo2488wDJjEehUTmdNFmtFk2kUoKmXAl1Oc7UfWF8Ze5iJ17T3RAToRduGEdZNcAXAzysg9FgZX0dxklv+v/AGVHZ+zqlw30EPTbAzUULKQujK7KKW2WMoI50sumECj8csLFphMvelqlvSSF/8GZnx2WB19TrPh4M9kE46Pn32UK7fPPVhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bfSjIotdXHdC1JkKbpqRtGF8Z7fwtgoICNhSMr+7qw4=;
 b=JM+zaGvUKnmf/Z+m0PqtBj1+ilQiLU16co7NdFr5dhHR7NVkFgyhha7g2mgUIHy4WEKgt90OpyIwwPyLuVtDW41pgl5hv8jrxL9fKfl9CtZHygPCTMRjbVwQuky4FWaby8frwNKEcinOgpcbTUEGEnTeH9tZDFvzh6Y2a59ZG/pvWHmArcP1JTkFcPmESM+zT4kmvdiTba5O15S9YfDqKBfFxhoexg+vc8XKW0iH+zTRwGyMTWNEJPNxFd3DaG8Ts4P+30WaE8NAoMOl/K02UEF68oMTcjE9Qc6gvkofxHXBmQ8mPjUEZiToShmk70BfOSqaYEstCCycXwINVyZqAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW4PR11MB8291.namprd11.prod.outlook.com (2603:10b6:303:20d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Thu, 6 Jun
 2024 14:44:55 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 14:44:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 07/26] drm/i915/alpm: Make alpm support checks
 non-static
Thread-Topic: [PATCH v6 07/26] drm/i915/alpm: Make alpm support checks
 non-static
Thread-Index: AQHatzLa2zIFmwHs+EOGht2qyFHKWrG60R8w
Date: Thu, 6 Jun 2024 14:44:54 +0000
Message-ID: <PH7PR11MB5981629B80AA7FA110BB5230F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-8-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW4PR11MB8291:EE_
x-ms-office365-filtering-correlation-id: 36deccac-8e24-49f7-e2d9-08dc86373aec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MWhIMTlTdEp2Z0xYcFFLSXFsNGhZUDRKQW1KV3lsSlR1YTJRRmFhYnV2M09v?=
 =?utf-8?B?cllONWFiQkJZMkxBMXJiV29PVERyR1JrZlBUUFF0THlXVUFQaXR6OFBDRTBC?=
 =?utf-8?B?V2FyTFhEbFVlenpJeGtnZC92YjZxZjRKakh3WkhpVWRQcVJwaFJxWTZRUFJp?=
 =?utf-8?B?bXd2QmhBaklKYkozZ21uUDV1VDN4M0IvU1pFSVdMMnhZU3NlM0VlL2ptaFlZ?=
 =?utf-8?B?WTJWVDMrNWowNW5URTJFUTJRd084VnIyeS9nZVRTc3FVMlJWQ3RCRDVSYnpQ?=
 =?utf-8?B?SEcrRWt3QVFsUUNtc1cvM25IYmJBdzFjQXBCdTAyU0xhS3l2Q3JWS2dwaUh2?=
 =?utf-8?B?NFBjR096YUFxZm1RNW0xbEp2T1Q4QnJRajRoNHo0M2tRcTNFVTgvTzFqUExp?=
 =?utf-8?B?S1NSb0RmL3BUWjYwUkFHUVNZTHNqaGw5TVJSRCtaWmxPZHhpdTIyYjR4bmFU?=
 =?utf-8?B?OU5PUktnRjI1YmVMVm5FNmNKSDNhRUtXQlJiTEdSeVBLUTErUkRpSS9kdXBn?=
 =?utf-8?B?UktVdC96M3Qxd0JUM3ZuY0QrejhLTW42ci8xTGRpT3FsZkxsUmNsNjdQenlX?=
 =?utf-8?B?MGZ4M0Z6OThvZzV6bmR1N0lsUEJmSjlSdEtMVzh5MGJ1VGZVS25IcmhZR0FV?=
 =?utf-8?B?Q2pNLzNNMi85OXlPNGdvL2xpNEZrMzVUaldRWitmOWhrY1Q1TENaK2F3SE9T?=
 =?utf-8?B?L1VhdzNmZEdHMU9IaFRRSkNkcWV3ejdQd2dtUjU4dFdWS1NkTndNUHRlV0Qy?=
 =?utf-8?B?aFNBSUdyOXB4MDBxOE9teGFUQ2JsOFFyS3h2bFkxSkI0d1E1ckszNklCdlFv?=
 =?utf-8?B?NkxCSG5Hc2ZpbmhENGg0R21VbEtPSDIydFI0cnFHVm9HNXBsT0xvQzdWSXJn?=
 =?utf-8?B?amlWVGJkUHgvN3UwUkVsZjg4WkZaY2xuYlBHeTl2UzMveTRaMERHYWpGWUIy?=
 =?utf-8?B?cG5zazgzS1BvWElIZndmU05CMGpTa3MweWxKLzdXWG5oRFpIM0NXSUF3RU1F?=
 =?utf-8?B?S2xMdERuTEd6dlZNQnJrTnpITUpSV2ZCbDZJcnp2Qm5hNmVRSGZ0Q214bzJh?=
 =?utf-8?B?cE13TkFTQVp0VDMvUGMzL3ZhY21ERzRqSHZWd2R3OWtRTkpIejk3cStVUXZl?=
 =?utf-8?B?SmpjWXVOSFFLZE5McVFDcjhTOGwxR2VvbTVkMTdOei93S09ueExCdnl4eVZl?=
 =?utf-8?B?aVAxS3JaRm5rYitTcTA4Zm5uenJadlN2bHhlcXdkUmFqbjhEMmRLTHlveU1Q?=
 =?utf-8?B?dEhKNnh6OFh1VGR3VDlYUVFBQ3JBMnl6L2pLUndKSTIvOHZybjRvNDM5dDh5?=
 =?utf-8?B?bElKK09NdU96SnNBTEhqZ0QyOGt3RElwbnk1RjR4TDR1OXpFNWxpWGlWV2lZ?=
 =?utf-8?B?Y2FBVmpMZXZnYWVpK0RMQWszNG4wRlJWdHJZd3FPYWwxcU9XTlF4UUpOVGlv?=
 =?utf-8?B?WnppUzZOb1VKbjgzSmxkTWV4aDlZQnFWM2hKeTdlc3JvUExXM0szalNRNC9M?=
 =?utf-8?B?RzIraGFWV051a3JMSzlyTzIvMDZuWUp0YU5KR2IvbUgrTGRVUTJ3K1JVa3Qv?=
 =?utf-8?B?WS9KZlVESmNMeWcvblBWc3dhL1pQNEtpdVZhemdWY2ZoOGVLWkFiTWExWEM3?=
 =?utf-8?B?VW5PTFdiM3JsbVdWTTFRZElqTXc5MWhRUTZ4ZEdQMWtTSjNkNFk3ck4wUjdq?=
 =?utf-8?B?dWY0amxiMVRjd3luZEZEUEpySlZiUVg5TE9PU1lxcXhGa3UwS3o5Y0RrVTRm?=
 =?utf-8?B?cnhLVFhiQ0NUdnltLzJzcVVzZDJVOXo5MjlHWTRLMHpIaUFnc1lIZGxsSEJm?=
 =?utf-8?Q?LkDD3f2vVqQeivXW0xql2foYAB/89haHGLhKk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a1NhUkprTlFwTTZFR0wxSHZWbVVFWEdLbGF2TjZnNkhhbTdCL3JyWE5RUHIw?=
 =?utf-8?B?UjhheVM4VkVKZG1rbk4xejloZXZHeEJrS1ZISTZTNTB3dksxdGF3ZW9QU29z?=
 =?utf-8?B?Z1luRURwZEZVNkRuMDg0THAxZjdUMHBaVUhDVlFHZnVrME5DRzJGMWVLbHYr?=
 =?utf-8?B?aEhGbFp5N3hqUVl3NE90V0wxWEJUSC9yUkJ0OTJyQzNEcERXTEhiN0FWNnhU?=
 =?utf-8?B?ZHBQR2NMemZNQUwwT29xK2VrN2dheE1iM3VJaTRnZnNSZHFPcm5CL0dvdkNa?=
 =?utf-8?B?ZDIzVmwzc2dkYmRvcUU2eGZHR29CcXFDYzNuUjVick14SHNKMkE0YzJTODFB?=
 =?utf-8?B?QnVlT2tXTVowVTFWQUp4N1owSU01M2pHUGwxRFQ3VkxJWDUvVXlkeFVObDh2?=
 =?utf-8?B?OEZ4eHpMT3NQTzdkZ2ZQNXpjRVM3MlV2czRqUi8xK3RmUDFpeEYwTW9VcHFC?=
 =?utf-8?B?QW5NYlpaSHp0cHBCOWtIaldlVm1sZ0ZjZ2ZSbWlmRHRDTGNlU3doTHpyL3BO?=
 =?utf-8?B?QlZPQmdOamJhbVFYbEJYUXpCWSsxYkJQRzBySFZhcWNldk5Hbk5yQjFPc3N2?=
 =?utf-8?B?clVVeS92Wm9FM0ZCbFU2TEg4TjNvT3oyUTVIZ0FzR3pHZnIra1ZDWUpSZU05?=
 =?utf-8?B?S2lWc1UwZHduY1ovWHJ4VUU0ZHlBZW11dmZkSlRkRE1QcXh1R0ZvRUI5cnFp?=
 =?utf-8?B?ZlBnTnRCbXlVaW1NOWY3b0xjbUhWek5WZVdGVEhYcHVtQ250SHlmVGhMdDI3?=
 =?utf-8?B?WGJWM2YzQ2ZjOXFYSHIwNzA3ZklsTldSK3BUVlZKb0R4N1lCcUJkaldWZlIz?=
 =?utf-8?B?RDdTRzBTQTBMUFhnbUVGemgwZmcrQzRzU254QzdZY0JBY3JmU0ltQkdxS3ZE?=
 =?utf-8?B?b0NQWEZtc2tWRS83bUt0N0Z6N0ovVXNaSzRsMWJyQzc2dTl4LzJjbFFRelRO?=
 =?utf-8?B?cUszVy9tM2dEd0hyUTREbCs0ejNYSUpndXI2dHZ0Vjk0RXBsazRZREZJaDls?=
 =?utf-8?B?SVBJYTBSdE1tZlBJSmlrMzNOeHFTRlFwTmdJT01yTzkyWlN2YlM1RWpMQ2pS?=
 =?utf-8?B?ZEs3YW92VllZR2ZjbzVHN0U3aDVZSC9TQVY1cEEwMUtBbmFBT2xZMGIxYzNp?=
 =?utf-8?B?TDQ4OVM4d2dLNjZFNUZQTnBBSFZpSGs2ZXd4WnJvcjlIb25ITEpiWmFFcGY5?=
 =?utf-8?B?UUprRWEzSkdtVnlGSTRBd1VBR3NDL1ZuQzBMc3VGMEdCTmhRWEoyMnZmaEY5?=
 =?utf-8?B?WUM0NUlKWnNRSk1CZU5rRUZRNjB3cXZ5dmIwYlBmS3ZKdFhqanhJbytsT2U4?=
 =?utf-8?B?QVdvR2xSWmNocHpNNnI1RmZGQU04TVM3ZitCVlUwQlpPZWR6YjRNZTV3aCtu?=
 =?utf-8?B?RWlINTcybS9HTnJsL3lBR1IxRytrR1lUK3lLOFgxUDVlSFN1Z2d6bHBKcmJQ?=
 =?utf-8?B?QjNxUnlreWpYaEUvbC9hNnJpTTBqV2doL0NmUGtmME5DR1J1REc0bGxEd3JL?=
 =?utf-8?B?L1JrTkQzMDRseHRJR291T2ErVHNValJtd2JMT0haRzJ4Mnd3MUlmRkVhOE1l?=
 =?utf-8?B?ZE5zRm9sdTdNY0Z6MmRuTWVNTEhKWllzeXVYU3ZFelVJQWlqMm5rR2ZxWmdI?=
 =?utf-8?B?dzFrbjVwSzV1cXNDamhhV0lpQ0RNbGZnNlMwc0M1NXdzcGVjdG1SMkJjYS9i?=
 =?utf-8?B?aXBKQWwyaGk4ZkhiSTh5NnpVcVpXcmhIK0UyaExvaU1WRHBhckVnWTV2WW9i?=
 =?utf-8?B?dWQwUTBIL29nNTBaWmIwU3h0bURyandGSjhkS2VwVWwwd00wQ1FpRlFQb2RO?=
 =?utf-8?B?OWZ5bm10VzluZnZXa3RGRHdyZytWMXJqaS9zeGZuTmJ5WXBNTmxxU0NEWlBw?=
 =?utf-8?B?cU1sOTRuTDd3SGd0SWxxbjJXQkRxOEhwZG1XSGVOaDUydDdIVHNZcDA3clJu?=
 =?utf-8?B?M1QxczZLc01EY3dSQVJkWERsZUFCUjZwL2s2WHIxNGUvZGRXZDBXUnpxemNq?=
 =?utf-8?B?bmZabXY5MlZWN1QzNTl5bGFqYVFvVTF6M2F2RERoMUthSS94OE9HWmtEdVVi?=
 =?utf-8?B?TlVRVjk0NTNCVXpEckRxN0pMYlNPZFdRaDJlRlpGU1gzMWdDODZudFI2RkFl?=
 =?utf-8?Q?hn6PIpXuCHCxHZ/FoimDZsKK/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36deccac-8e24-49f7-e2d9-08dc86373aec
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 14:44:54.9234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DY4x/1eQy5NzkXQ2M31vXnqQMMYqcYZrr7xBrKrX89CFuvedRoiLyLlHqKFhxPhQT26P2crA5W7mzOXqyvHuOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8291
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwNy8yNl0gZHJtL2k5MTUvYWxwbTog
TWFrZSBhbHBtIHN1cHBvcnQgY2hlY2tzIG5vbi0NCj4gc3RhdGljDQo+IA0KPiBXZSB3YW50IHRv
IHVzZSBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZCBhbmQNCj4gaW50ZWxfYWxwbV9hdXhf
bGVzc193YWtlX3N1cHBvcnRlZCBpbiBpbnRlbF9wc3IuYy4gQ29udmVydCB0aGVtIGFzIG5vbi0N
Cj4gc3RhdGljLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMgfCA0ICsrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hbHBtLmggfCAyICsrDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+IGluZGV4IDE4YzFjNTgwMzY3MC4uOTAwNzJmNmUzYTMzIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiBAQCAtMTEsMTIgKzEx
LDEyIEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfZHBfYXV4LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxf
cHNyX3JlZ3MuaCINCj4gDQo+IC1zdGF0aWMgYm9vbCBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBv
cnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiArYm9vbCBpbnRlbF9hbHBtX2F1eF93
YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiAgCXJldHVy
biBpbnRlbF9kcC0+YWxwbV9kcGNkICYgRFBfQUxQTV9DQVA7ICB9DQo+IA0KPiAtc3RhdGljIGJv
b2wgaW50ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1cHBvcnRlZChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiArYm9vbCBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICAJcmV0dXJuIGludGVsX2RwLT5hbHBtX2Rw
Y2QgJiBEUF9BTFBNX0FVWF9MRVNTX0NBUDsgIH0gZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gaW5kZXggYzgyZWNjN2I0MDAxLi5kNGZiNjAzOTNjOTEg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5o
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+IEBA
IC0yMiw0ICsyMiw2IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVj
dCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsICB2b2lkIGludGVsX2FscG1fY29uZmlndXJlKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsgIHZvaWQNCj4gaW50ZWxfYWxwbV9sb2JmX2RlYnVnZnNfYWRkKHN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7DQo+ICtib29sIGludGVsX2FscG1fYXV4
X3dha2Vfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOyBib29sDQo+ICtpbnRl
bF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Ow0KDQpUaGUgdXNhZ2UgaXMgaW1wbGVtZW50ZWQgaW4gcGF0Y2ggOCwgcGF0Y2ggNyBhbmQgOCBj
YW4gYmUgc3F1YXNoZWQgdG9nZXRoZXIuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gICNlbmRp
Zg0KPiAtLQ0KPiAyLjM0LjENCg0K
