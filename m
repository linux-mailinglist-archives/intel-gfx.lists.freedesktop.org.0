Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E50F8C1010
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 15:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61ED110E5D9;
	Thu,  9 May 2024 13:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DXGUmas2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0CBC10E5D9
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 13:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715259870; x=1746795870;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Q/1GtRsHZYAGftqQSKXb2r1bg7Tyl3Olnoc/YtbRsc4=;
 b=DXGUmas23H//SPCs8FSE/fkXMsH/wIPLItUv0+F3+L5hscl42oBlT1Hl
 gCYt+PjbLsrVCgXD88QqPsRhVQC29UinpvRtxAMYDWRh53y4Hj7vJlxmQ
 QDgpxJ2KvAtnnHBJJuesZYuLSv1EE5+BSGGf6nSfCjYXFV8iWbwYrhJE6
 7Xo0f56cGD7kcTTU2egmfHJUKKa1kicVJmYKCUxvESMzbVfS/gPQHZ6yv
 qYVQlpOSelSBHGWKPnFCIM/eCc0xWWViDKi5qDZunhG+ugZxiY5m6d0rq
 N+NrqkPvU6JwTMN8nLj+yXelA5jtKXYYMil8xglz0igPnSk6Y9O+eyjWy A==;
X-CSE-ConnectionGUID: gYyalUB9RpqqHKQBS9z0bQ==
X-CSE-MsgGUID: zsmRpJYfQk6tWpEGYKA3iQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="33688847"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="33688847"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 06:04:29 -0700
X-CSE-ConnectionGUID: UEV6OkPdRNq88ISSagb0Ww==
X-CSE-MsgGUID: JOixvGHgSQqLkitgNR8AOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="29343476"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 06:04:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 06:04:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 06:04:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 06:04:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 06:04:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IgZgpTTSdowcaGUsiuL74TGeRX+Cs0hNWuNWHee6Fu6r1E7u3JTmm25/jma0DlJxJnu1ovtOQeO+283OrfuQssZ/B/Hqo2Yb4fUOK/f4F8sRCSU/MoX2MwbnWOVsmO04KGpDGnBHnpUTLubjQWAv4lYhA/aH7h1EEMmbvZiDgyyE9tGP51Ah/91CmJ2QILFA40Aq3UIJWQ9JhPdQTmgRSZXRu1b8Lw8YvdUPu3CDgzqZ4OJHckEgbFYvShMCMfpvV+x6FQxeB+/inxt/lNXsVBROmlhAXE83K7L65p1NbD1nN5PKnfhrULsttcnyyWB4ua3WjP9vm0AAToRtSzxKuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/1GtRsHZYAGftqQSKXb2r1bg7Tyl3Olnoc/YtbRsc4=;
 b=a8mJZ+UUBL5VdfAVp2qo/dEE3NlMlMwZbG2WbpU1iswImsyjQBPFTwdLjA7y6AvS0GVld76xoYv8n13jYVOE+XsGUK9X9YLJDOQRbsQszdq/uWlzCsApiQFLnPlDFedyV1MuTsEqpmZZXCJ7v8xi1xDV6wCAXvxaWGXpFAZ0ceL9ErSh9B3nfM4aLqyXJbFf6GlBGXRoXWWm1cK9QHur5RGWo4/lGb/dM3aGQGcHvXYl0k/Bx9H5DxOxW8NGb1Jfxm4nAsV5kJBm/BtL7DiwypNExBUXWiFcXKlDBpC8odbc6gfVS91t+qFxpb/iazxsrbtW7ueciCOeyN2jG6vp1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7049.namprd11.prod.outlook.com (2603:10b6:510:20c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Thu, 9 May
 2024 13:04:25 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 13:04:23 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 03/12] drm/i915/dp: Use always vsc revision 0x6 for
 Panel Replay
Thread-Topic: [PATCH v9 03/12] drm/i915/dp: Use always vsc revision 0x6 for
 Panel Replay
Thread-Index: AQHanSP34md/e+FJzE2ByxpERnpeWbGO6CXQ
Date: Thu, 9 May 2024 13:04:23 +0000
Message-ID: <PH7PR11MB598172E265ABEF7BBA05B7EBF9E62@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-4-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7049:EE_
x-ms-office365-filtering-correlation-id: 12de4584-ab77-4cf0-f17e-08dc70288c2a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?aDlqSVpCWXJ1OUVEUFdFMU1RWjB2TFFkMld1ekdNQjZSNkhEVzg2cm5MOTFl?=
 =?utf-8?B?M3orZ3BtbW02aFpvbEZhY3hnalZNNm5zclJmN1RhL3gyQTgxVm8xcjJWekhF?=
 =?utf-8?B?Zm55SEZKUTdUc2tuVUZGSWlOQ0RRZ2kyb3hDNWppNUs1c1loOHYxSERFQzJT?=
 =?utf-8?B?RUR3VEI2OGduTVpuKzFGQTZJQ1hSQkt6Qm5oNXJXdnNUWk9yOTJoOEdLNDJ4?=
 =?utf-8?B?TUplaDRwVktlTm1nMjUwRnREWTBpeWxuQmFWaW1TdTcwOGpHMDZFUmNqQjNC?=
 =?utf-8?B?UXk1ekUzd0tNQWlVYWVIWXJrV1Z0ZUN6aEJLck5Fb2JmYy9vQTdaSkJJSXhE?=
 =?utf-8?B?a0p1aFBnYjhseGtqRlQ5WWFMb1FvUDNyWUhINFN4RWF4aWhiSXg5MXJTbTlL?=
 =?utf-8?B?aVRzYUdTOVcycG1FaHR0cW02OWQ2bVY2VklVeUJvMTN3Q2sxbkc0SlJIUjRQ?=
 =?utf-8?B?anI5STBUejRJUlFrSHNIV1hHTFdxYUY2WVBPenNJbkxWR0p0dHVsTXNVUUYr?=
 =?utf-8?B?ZWF6WkUydTV5VkE1d2dtb21XOHFBWXBlR2NKYkFBNmh1VDB5c3BoZUg4OHhn?=
 =?utf-8?B?VkJSMzRBWVNKL0FpbjRwdmJXTjZGRFNKVS93VDVHbUxVSU40K05vcmtoOXJR?=
 =?utf-8?B?QUlGd3hFUERnRE11bHhXVEMxZFVSU2owQ01aZWwrN2kxNTlNSFNLem4vekVL?=
 =?utf-8?B?eVR6WlNuUU9uMWNreng4MmQrVG1MaEcvcWRteUZHckF4WVAxNjJXNHRSNUVH?=
 =?utf-8?B?LzFWMk4wK2JTaE5yRFpwc1lLWWVpSk9meFNwVDlaZGJiSGczMXd5V1BwNXY1?=
 =?utf-8?B?UVorMm5IUjJ5NnY5SEphRUViek5wYXBNajJvNXFyc1gwbXRqTjNTYVN6UVdJ?=
 =?utf-8?B?NFZtMjBXT2ZSdmpnSmQxTGRmYytIS3BIUUVIN3pqNkFCeTByOXhaOUFoOTM2?=
 =?utf-8?B?YVlFZnRjSFNqdUUxLzVvQkUxdS85UDM4WHZKMGtKTC94VDdtVEFVNEhhcFJY?=
 =?utf-8?B?Wi94L2RNcjdqSlRuaGFOSlJ5Z0kwNCtFaHhEZksvOSttU2dES2wrRkV2WmVn?=
 =?utf-8?B?UzBlaHo4OFR2UlZWbFhMZUxoYXcxSVpIa09WdXJndWJGK2NDZzYvVTMwR0pw?=
 =?utf-8?B?M1VLeXMwNzYyM0tqcGtXNlE2QmZ1UVE4cTRwQ0tSbnlpdUVPdzBXL29mT2Y4?=
 =?utf-8?B?UGhIZGJXeTZxYnVack1lSE1hcUg5ajhQamN1eGhPMytmWFNOby9mNDBTU2dr?=
 =?utf-8?B?dFhFWEtrR1RFdG1aYUx6bXJrVkJLVlFzT0pyait5bnBuQVAyZzM2WG9uVGZW?=
 =?utf-8?B?YU91TkNHVUx2ZHk1S0t3M3ZNZ0VHa2pRSDZQaTlqRDZUT3RoaW5WZlBkNEkr?=
 =?utf-8?B?T0JvRno1OWJQUk1MVVdISnVWZWJldHlUZkU0bm56SEEvdUxjV3BQaEhDZlR2?=
 =?utf-8?B?OTVGcGp5UmF6Vzc0T1FheGVzWHlQSnpocSsxVktxMXVPb0hxWWVLb3RhSnFI?=
 =?utf-8?B?eUowUExBWTFGQzg1ZXlDRVRrRno0aDd0VDBSaXVnTmRxMlpJenFHb0pkSzQw?=
 =?utf-8?B?Qk90QkN5SzlpTEJDVFBqZ1QyWUpMVlNaZWtsNnJYMVBJT016VjIvK0htczVY?=
 =?utf-8?B?c041WUF3S3hsQWZ3T3Q0TEhMbFBDWlZqeEI4YjhkL2RvUi9STmp2Tjk4a29W?=
 =?utf-8?B?TVJldmFLeXQ0bHJKc3dubnpJWHJ1WnM2U1lOeEQ5QjF2eWhad2lkRzhzdlFs?=
 =?utf-8?B?Z2tMMGUxTXg3VTExNlpvdUhpekVvc2VmZURTNWdVOS9ycWh6U0RxcTVKT0Iy?=
 =?utf-8?B?clJVbDh5eHRHVE5Dem00Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjdMU0dXTGxHNk8zU0tRSHo5VURxa25FSEM3WVJzZjNMR1FVU2xjMW9HTUkx?=
 =?utf-8?B?V0c1TUdzYVBkNzBnK3p0bHhlWis2TGpaZHU1amxkS0QxZldMcDJBK0ttSGZG?=
 =?utf-8?B?SjViY1NuUXk3aFdIeTlNVTduVmRIMXl6aUJOVGNEYnErU2JHUGdIOER2RmJ6?=
 =?utf-8?B?RWNUODc2WE50MnpyVzhhaUM5QkQ5V3FaeUh2QXRpS09HOVBKc2hUY0dVK0h2?=
 =?utf-8?B?bG80ZzJpbmVHaXhEeDc5MnVMVFZndmZONTlpdUs1S1BQd3duUit2YjZYQTlL?=
 =?utf-8?B?MEJ4d1BJcmRPQkNramdTOWVSWXpGMDV0cHMwOUVlaEpOSGdnY01yNGR2SnAy?=
 =?utf-8?B?RDB1VWJaV1RRU1h6L09YWkVqTlplbStBNElKUHpZRG1DTlZNb0RBaVNGdmZX?=
 =?utf-8?B?dy8vYjEvRVV3TStpVEFVNnUzVkJoL3psVUMzOThEcVdKbVNVMmtiM2IvY0FP?=
 =?utf-8?B?L3FEOWRDOWhEOS9mQitwZjJTbmdPSXcrMVQ0elBXSjNmMVRKNTc2MFBwUnZU?=
 =?utf-8?B?cFhYWUUwRStrWkxzZ0IzYTRHKzhKVDl3RHpjUk9zV3Q3VGM1Sys2cVB2RVk4?=
 =?utf-8?B?cXZibGJkejV0TTRUVHd5Wm1NVlQvYjNJM2xUYzRINTN0YmFteUhWckR6ZVdN?=
 =?utf-8?B?YUlPWjAzWXppQVVmRG12SkE1U0JueDd5cnZDZElBMG45SVJXaWlkVk9Wclly?=
 =?utf-8?B?WHUrMFB6VVZZY3JiZXB2TGQ1UVczVnZGWng4TWYwRVg2cmhwaVZJYnJGd3BU?=
 =?utf-8?B?MGdWSlc4bzUzczlHTmNFQnpJQVRONk1hM2dYS0g0WEpBKzU0T3pLQnVISmtt?=
 =?utf-8?B?dWdPaWhneUZwTGJFT0VKQmdjcUVWck8ralI4OCtXWVRGbFdSbmEyTHdLMzZw?=
 =?utf-8?B?K2F5K1dISE4xamlHT3psYVlWRUwrZjlSOUQzT1cxRWFvTWNWUnpNbXR0alVa?=
 =?utf-8?B?eUpsZEdpTDhLaUgwNnVRTGdPamJ2ZmliRGhWcU9ObGZETElhZ2MzeTh2MDhp?=
 =?utf-8?B?T2ZHdmhxL1JtVStCMTIwRjVpS1BoY2JSM3MyOXd0TEtRSndjcXRJNjIyV2l2?=
 =?utf-8?B?MnN6cUNkeHMwa0Vmby9NQlF0bUdCcmIyV3ZxbVBFWGkyQnB2MWhtTFBWK1JO?=
 =?utf-8?B?cmJ2ZFZmVFV6Z2VWS09oc3ROZ0k3SVNaN1pqbkVCQVJEU1p3WFRldTBpRDM2?=
 =?utf-8?B?d1l5VjZCckdFNWVwUlRxWThkMzVaQjNPdmNBOHF0ZWZXQjAvS01VZ3hhNFBz?=
 =?utf-8?B?WlYvdFRpdVpNRTJpTHJNM2pzOU0wMVFkVzBPbzF4TTNNeTlnYUZqRnpQdlc1?=
 =?utf-8?B?azNtVktnRjF0U2U2VUFGRGJqR3BlejdNd2JTdHFJZHMyeUdVTnNab0RYdWhy?=
 =?utf-8?B?Rm9KZVRsK29Ha25MN0MrRW1QY2dkM0IyT0U3NnltUDdtOFI5LzNwMGdJWmFa?=
 =?utf-8?B?L2dnTVlIN0puYVUwT0NQMVVvVnNjeGt4aVhROUtZMW9IOFVBa3VlMWRETzRI?=
 =?utf-8?B?dWRzV2Fzd09pckV6VjUxZzNXTjMxcURiR3pNaWc2OXpnS28wRXdXcm9UUUFL?=
 =?utf-8?B?UFg1bXdTUDlHM1BnZHNCd0E1bVBITUV6VXZMb3J0Z1BxUG03aGtjeldOUkxQ?=
 =?utf-8?B?R2dUWS9aTTVFWEVEVWFuQ2NYV1FSTVhjMUxPNjZGMTFVSytDaDNkSFEvb3JV?=
 =?utf-8?B?bmZ5SHhJNlprQjVnZ1lCc0gwRVFmVGhTMVdHbnJGT01qeDlxVzRBUHV1a1NV?=
 =?utf-8?B?MHZ2OERYd0FwSFlIZkRXZlBSZmk0Y003UzBIUEYrQ3FzMGtTdnhTblVwSUt5?=
 =?utf-8?B?dWJwanNCUFZZSWtUUTRqbTJHNVJxWEE5Ykt5NjZPRzcyZzJnZ2FSVDBkN0VB?=
 =?utf-8?B?QktUQ2xXWjhoRDd0NHNIWGVDbmh4NzJaNk1ZdnR3TE5hNkM4b0FxSmVaczlL?=
 =?utf-8?B?d01BbENiR1ZuRXlDdlM5TVBVSWFyeC8yVWt4aW1RdmlNWFEyUUFLNnc2OGNl?=
 =?utf-8?B?aW43bTR4SFhybGFDRERBYlNMTGFBY2xPODdUL3BhUmtqdFRiRXo3ZWFvUGNX?=
 =?utf-8?B?VlVZNnR2VERPbFJmWHRJZWNOUG10VmdMeklwZDRrV1dnMnVoelczTjRPZXhh?=
 =?utf-8?Q?yLTArzxmwb279rkdNd0a7SPEm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12de4584-ab77-4cf0-f17e-08dc70288c2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 13:04:23.1617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cyo8bSp4t1bBO5D8gnk6wTzzA4Ggim6O3duGRO2JHLu2rEkGvFJjEg5pNDb8NT4U+IohwmS6Jf1k+aMAMEzprA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7049
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDMvMTJd
IGRybS9pOTE1L2RwOiBVc2UgYWx3YXlzIHZzYyByZXZpc2lvbiAweDYgZm9yIFBhbmVsDQo+IFJl
cGxheQ0KPiANCj4gV2UgYXJlIGFib3V0IHRvIGVuYWJsZSBQYW5lbCBSZXBsYXkgU2VsZWN0aXZl
IHVwZGF0ZSBtb2RlLiBWc2MgcmV2aXNpb24gMHg2DQo+IGZvciBQYW5lbCBSZXBsYXkgbm8gbWF0
dGVyIGlmIGl0IGlzIHNlbGVjdGl2ZSB1cGRhdGUgb3IgZnVsbCBmcmFtZSB1cGRhdGUgbW9kZS4N
Cj4gVGFrZSB0aGlzIGludG8gYWNjb3VudCB3aGVuIHByZXBhcmluZyBWU0MgU0RQIHBhY2thZ2Uu
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIHwgMTYgKysrKysrKystLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gaW5kZXggMDc1NWJkZmM4ZDNkLi41NzMxYWE4NDk5MmUgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTI2NjAsMTQgKzI2
NjAsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9jb21wdXRlX3ZzY19zZHAoc3RydWN0DQo+IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gIAlpZiAoaW50ZWxfZHBfbmVlZHNfdnNjX3NkcChjcnRjX3N0
YXRlLCBjb25uX3N0YXRlKSkgew0KPiAgCQlpbnRlbF9kcF9jb21wdXRlX3ZzY19jb2xvcmltZXRy
eShjcnRjX3N0YXRlLCBjb25uX3N0YXRlLA0KPiAgCQkJCQkJIHZzYyk7DQo+IC0JfSBlbHNlIGlm
IChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiAtCQkvKg0KPiAtCQkgKiBbUFNSMiB3
aXRob3V0IGNvbG9yaW1ldHJ5XQ0KPiAtCQkgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9yIFNVIGFz
IHBlciBlRFAgMS40IHNwZWMsIFRhYmxlIDYtMTENCj4gLQkJICogM0Qgc3RlcmVvICsgUFNSL1BT
UjIgKyBZLWNvb3JkaW5hdGUuDQo+IC0JCSAqLw0KPiAtCQl2c2MtPnJldmlzaW9uID0gMHg0Ow0K
PiAtCQl2c2MtPmxlbmd0aCA9IDB4ZTsNCj4gIAl9IGVsc2UgaWYgKGNydGNfc3RhdGUtPmhhc19w
YW5lbF9yZXBsYXkpIHsNCj4gIAkJLyoNCj4gIAkJICogW1BhbmVsIFJlcGxheSB3aXRob3V0IGNv
bG9yaW1ldHJ5IGluZm9dIEBAIC0yNjc2LDYNCj4gKzI2NjgsMTQgQEAgc3RhdGljIHZvaWQgaW50
ZWxfZHBfY29tcHV0ZV92c2Nfc2RwKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJ
CSAqLw0KPiAgCQl2c2MtPnJldmlzaW9uID0gMHg2Ow0KPiAgCQl2c2MtPmxlbmd0aCA9IDB4MTA7
DQo+ICsJfSBlbHNlIGlmIChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgew0KPiArCQkvKg0K
PiArCQkgKiBbUFNSMiB3aXRob3V0IGNvbG9yaW1ldHJ5XQ0KPiArCQkgKiBQcmVwYXJlIFZTQyBI
ZWFkZXIgZm9yIFNVIGFzIHBlciBlRFAgMS40IHNwZWMsIFRhYmxlIDYtMTENCj4gKwkJICogM0Qg
c3RlcmVvICsgUFNSL1BTUjIgKyBZLWNvb3JkaW5hdGUuDQo+ICsJCSAqLw0KPiArCQl2c2MtPnJl
dmlzaW9uID0gMHg0Ow0KPiArCQl2c2MtPmxlbmd0aCA9IDB4ZTsNCj4gIAl9IGVsc2Ugew0KPiAg
CQkvKg0KPiAgCQkgKiBbUFNSMV0NCj4gLS0NCj4gMi4zNC4xDQoNCg==
