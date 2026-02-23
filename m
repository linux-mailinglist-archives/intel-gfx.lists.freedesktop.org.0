Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aL7TCkMwnGkKAgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 11:47:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868221751A0
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 11:47:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3F310E346;
	Mon, 23 Feb 2026 10:47:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YZ7fAX+q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B0510E303;
 Mon, 23 Feb 2026 10:47:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771843647; x=1803379647;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=T9mOqK0yPvnTYsWv2Ko/M95uL88ozeXh+mwEzHdPdfQ=;
 b=YZ7fAX+qL+lFA3jYcYOOFXEro8FQn2b9otlVxG364blnAprwujn3mv/g
 uJ1rzqo132/nnwHDoJ8IUYb7XJ4hMXeIxc2YgVpumad5qrrgcecrkFGsq
 3lQ0e0lyMRAKhVrGCvfBHvBUAF3BCJ5b4+wtHJgWIWNtBnMCtAIOm9Thb
 GQkVa2tX4b9Pyp8z75Z/r6GSHOt08EADHtXwFLAk1UyF5MrOmJt1Tcg23
 7wXSnNm7vSDCYtrC4u+51aO1uDIxhOxbsjyrwnBItiAT9o5fBywkjdFui
 Y+Qy4l2A4NIk/aTEt0P23MFzpmaMaXW/pOaDXrQpiuz+LSujRQWHwN9vV w==;
X-CSE-ConnectionGUID: Q01nka93QiCLSTg8iDvB5w==
X-CSE-MsgGUID: 4Xrwj4aTTf6GJN/Nk05nHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11709"; a="83460878"
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="83460878"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:47:27 -0800
X-CSE-ConnectionGUID: HFD415qjQ2GbinRmfG4bAg==
X-CSE-MsgGUID: 8Ef5Qf3CQ1iO3RQz9BaXaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,306,1763452800"; d="scan'208";a="243698164"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 02:47:26 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 02:47:26 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 02:47:26 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 02:47:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gXwOfAptLQ6Qnwif2/iMAKXO8WO9Mde0len6pDA4vP0j498128+t4m9NPIFfwWdm4w+0O/fZLxEHghYZeHeIC/NIfxmmaNsep3+pHehaiGcuxugdVqpy1EvCvE25a4YuWoAHjW8q2M8hME1GXBU4+10MpdahEZGO3S1uUUWEpu+A8plHuYNN61jSuHQKrdZT5MoLoHEHQDntS4V2xf3QGgi7xdVckZzawuc6B1lVTGfOvCoRRkkVjFnyU4s6x7vn04Ju1NGLf8tGlZqiNr4ewj/ChpWxvWvzJjYwfS47i8QhQHkR55YrpjQVp3vf5ntqMU8E6046TDiB+G9Dum3Nrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T9mOqK0yPvnTYsWv2Ko/M95uL88ozeXh+mwEzHdPdfQ=;
 b=eCW6aE+j3AYwnZKhqHEdESjuMvc9dboV+0uIlajEkzIF2IjHIKl8M0LAD4eFNzMlJ7TQb8YeIxe5czk9gXjv2rv8o/8o77j30FiRraue3GtXrASptHI1U3Snmqq+JgCqZ5k0Z05NSu0RwTRyljTk1/0ugmecHL3e/Nq9CtwLoBgQo37Wnez+QrJaQbK2PGRfftvummAMsNEydhirUG0R5QCciwwRNdF0tUG+2Rm4l6gLwgC/mNafPUB//XpHXJPFCmzJzdIvhHzhNo0+uImuDdnUV1hr/W/xSVShZHSaTdT4pg0KsMJUQeitgnrSviwffBdHe1xbC4dCoxwVoshyUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS0PR11MB7765.namprd11.prod.outlook.com
 (2603:10b6:8:130::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 10:47:24 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Mon, 23 Feb 2026
 10:47:24 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 16/19] drm/i915/lt_phy: Get encoder configuration for
 xe3plpd platform
Thread-Topic: [PATCH 16/19] drm/i915/lt_phy: Get encoder configuration for
 xe3plpd platform
Thread-Index: AQHcnOQEgaMWfxofsU2sTa5mKWQkLrWK6/GAgAU9MGA=
Date: Mon, 23 Feb 2026 10:47:24 +0000
Message-ID: <DS4PPF69154114F56B9956177515BB924A6EF77A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-17-mika.kahola@intel.com>
 <DM3PPF208195D8D43363DC29EC03C710245E368A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8D43363DC29EC03C710245E368A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS0PR11MB7765:EE_
x-ms-office365-filtering-correlation-id: 8b2776c6-6e6d-4cc3-3936-08de72c8ee05
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Tyt1a3J3VGdlb3lOaHF2aVBlM2pvQWd0UzRCL1gwV1hRWXRJbDBqZGRZZkps?=
 =?utf-8?B?MlNPeFlPS1g3dm9VNnRqRGl2dk9PWU1oY3NDOFZ0T1JaUHpyblF1YmJYeXZi?=
 =?utf-8?B?Y24zWUZUZGVLbk4yOSt1UHk1S2lyNnpKZlFSNDRqcmxXb1VQVkxHNjEvNm1F?=
 =?utf-8?B?RTJoMHdSRnVkck1UVUVXY05NWUxiTHBBMmsvck9kSmJBWWVoZDZMUzM5MkpY?=
 =?utf-8?B?ZmZoUE5Ca0FTcnZ2U1FyOEtyNGloV1UraDV5VFdMZlJhOGFCeUNrb2N3V1l1?=
 =?utf-8?B?NHl2c0pUaXB2TWdYNFhoTEgvMWVsY3dIYUxjc25OenVzTEcvbFRMY05jeHRY?=
 =?utf-8?B?S1NXbnhxQWVsajczNUpLMVBQdHh5T3V2bm5VSzJYNDBrMkpCSzgzbnNYVTZS?=
 =?utf-8?B?UDZ0NEtRZzAyRzRidEpsYjlnanB4ZldLR25zejFRWVhTTHFFVzloNDVqaDMx?=
 =?utf-8?B?dXpWQkMzWndpNFhRS1hsWVRPRHZ5TXczK2NaVmlFUVYycklVaytxU2NGY1VN?=
 =?utf-8?B?R3QwUTNBK3h4eHpzV29iZk12THk0cktDYlFPcmhLeUJDVXNNR0lBZEdxTjlr?=
 =?utf-8?B?UEtQUUdWbXlQQmdkWU1UaUd4cUdaVmt4N1JrWmFDZzltcG03eUJoNGNnRGV5?=
 =?utf-8?B?V1dlNyszdDV3Yy8yTjR6NGYxRFp1WVhBUGtrc0Z4L1daWDFMOENzbmFBbFFv?=
 =?utf-8?B?dnpqZEtsVlJCbWJ6SGE5eFBWUHpZSUNJUWM0SUlQRkd6b25abThVaCtSRklo?=
 =?utf-8?B?K2hoTWkxWm9iUVJYdnhGbGk4a2tBYVk1SFIvbmFDQ1FmYzB4UVpVZ2JPbENu?=
 =?utf-8?B?S21Wd3pNVGhPZjRvNXYzOUY2VkZUWmdqcXppWWFZN3k1RzVITFFLQ2prazhm?=
 =?utf-8?B?aGd4UG5UaFJRSVlKdktLVTR2ajFra21DL2ZVbHZQNHpvZEV5cnZJUVN2NW9X?=
 =?utf-8?B?cmUyTGJpVm5FQUJlNUREZSt6WDVxRmlsdGViTmViUXhUWkZYeDl0RVRFWjl1?=
 =?utf-8?B?cUU4UWR4VkxXLzZTNEZMQW5JdElBY0xPMGdObHJjUGgwK3BTZzBGUjBlWTAr?=
 =?utf-8?B?eXF3cEdNZjhTZVpGaXluRlJYN0dOMWNSVGt6MzZqL2R5ekk0TituNFBlanBQ?=
 =?utf-8?B?dm9CTlVzNGNzMFhxV0pUQk5xZ2xsQmNSbWZSdUpoR3p2QS9Nd3dkci9yZnFj?=
 =?utf-8?B?L080RFhnM3BvTU41MytuTnFWSnlOU01hb2NFYzF4VHNVcDNnVW1vaEp6Tzlz?=
 =?utf-8?B?N0hxaWFxSlVFTG5MSU1aaEJVVk01dFJ6TjZLMWVxbkpLZXdTcXhnK0NLNkVS?=
 =?utf-8?B?RjFNY2pBMGdXSERHRm9pSGt2WFlha1MyY3Fyczd1UEVrWE5TZ01kTGxVRkFY?=
 =?utf-8?B?cjhBYXp0NDVISnd5MEdjL2gwd2s5TG1RK3MxYWluUy84NDdFQkVZbnhPN3pH?=
 =?utf-8?B?T0k3YW0veWlWTC96QjJNN2ZaSU5ydkFUY2lhaFFTM0dhSWhUOFJsTHFBcmtD?=
 =?utf-8?B?STV5Wlo5eEk1M2o2cm1KNTZ1b0V6emVqeURCVllHOW9INXlpSUJ4Tlg5S24v?=
 =?utf-8?B?UjN6SytUY0dlMmJCcHZVQmUrYlR2ZnFQOWJlVkp6VlV5L2FzUStyeE1pL1BJ?=
 =?utf-8?B?Q3FWNWVNcWM5WXo4SnhodW5iT3gvUzNWbTNqYUVNM2xmMWhQYTEvWG95OGFM?=
 =?utf-8?B?bHZVQ2t6ZVltZzUxSy9jUVRqNkNtVDhTSnlaTjI3aXY2dGVXN1lMRFVmbVFH?=
 =?utf-8?B?WkdHYytnZ3dxMHprTEY1d2pzRWhYZDZNQUl4TVRyUzF5WlI1OE9INGJveWRt?=
 =?utf-8?B?WFNneWJsc1FQMExzMHAyU04wdnFXdmFsaytRMTdaN2VRb3Nvam5hd05xdXdM?=
 =?utf-8?B?QzAvMnlVV1Z0Ym5QREt5ZjE5ME5CL2poMU9va3l2eVgxZlllckpKRTNxcnBJ?=
 =?utf-8?B?UCtyVVpVTE1WQmRwZW1xVVE5NjlKSmpXZHp3SEwvRDJzRko0U0FSRjVaT2hQ?=
 =?utf-8?B?bnRoM0NJVzJMd3piTTQ0MUFqdk1BUVdBdWFwM2ZuSkJMU21BYnEzVWxHN3B2?=
 =?utf-8?B?dTR2bXpmRVgwL3o5SHBuTGlDTU1OcmIyelZ4ZjBOeGdWVytZK0o0NFQ1MGo4?=
 =?utf-8?B?YjBHbmZ1K3FadDNuWHdmdlZNNGFUUVNaOGl3QzFabkI5eGQ0Y2pleWdlT0h1?=
 =?utf-8?Q?yf2azXDEIESj56aGIEAxAWw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnBCM2s2ZzdJNjUwa21VcmIxZ0JCVFp2UEgrUG1Tb0FpRXMyQTZsSmpaQ0Zt?=
 =?utf-8?B?REQyUkZFcHZ5L3JqTm54MHVzd2R5bDFHdm00L2hZSDhxeFJwbk53SXNzVVNC?=
 =?utf-8?B?TUlacXdFU3FKZ1pTSUk4Ym82K1VydnBza3ladlBsM0NWZzFBNnV4ZFBmQ0NF?=
 =?utf-8?B?NjFKaEFYY1F2SzhHTE5BLzlRU2Q4dTBtUENhQmRNc3lhVlNqMVNJdEFYOXls?=
 =?utf-8?B?TldyT2ZRZHpYdmpoT3djaTJzdkRJMkhyZXpRU2tDWUdlZzVZdzl4TUd6UjZ4?=
 =?utf-8?B?L3hFUUQ1NDYvQzZyMlNJNE5vM0pVUFBRK3Fpa1hsaUtja3hvb0pFVUJDSmlF?=
 =?utf-8?B?NFpta3ZYT3ZyaTVTeHZJdzdha3psWDlGVzh3UXZWSWdEVTN3aXhZQlJUSUZ5?=
 =?utf-8?B?S0JQMEdNMzV4eTUzQ2hqeFlNbXh0aVZkdytmczZoUnM4YXd1amFqMUhRV21C?=
 =?utf-8?B?SHozVUZEYUdaK2hRMTYweDdCY3pSRm1MQnVJMW9mc0lWNzRSdFFkdzltaG9v?=
 =?utf-8?B?ZkR5eGJneWE0RVA2cldBMnA1NmJRQjRaSzhVTUlwUlVyOTBTeEpsR2wyRUF1?=
 =?utf-8?B?NXhQa1ZhNXB3NExVWTdDOStENmgrRVhKOWFrbC9OVHVZOVJRc1ppZ1loS1lL?=
 =?utf-8?B?Rm53NjVkOHVjd2tIS0ZnQmhqT0V1NTZhNGlNcTRHbFhvUW5TT3Iza1VZSkxE?=
 =?utf-8?B?dDNCSWhaTG8xRUxKZ2d6eWRMRzJwaXBkYXB5aGpyZCsyQ3ArY2xMeTVZNnhp?=
 =?utf-8?B?dTN6UUZNNERCVGwwVXFKYUJvUW1MK1BFMkR2Y0VTQ3FxVlBHZzRzMXVkTzhj?=
 =?utf-8?B?a1BodWg2ZFprSEwvVzhzN1JRaGxyRkVsWDhyZU5nYlNkU2hzUXYranRHWFU0?=
 =?utf-8?B?dW12ZTVmb09Ja1J1S3JIYUlUN2dlY2ZGZGFIeTVtaGkwbmZQSjhkbVJXT3Ir?=
 =?utf-8?B?OW5zalN2dDlYNzNWWHVSTDJCcXdEQU5lbHYrQUowamRpQW4rdzhxeEhISyty?=
 =?utf-8?B?UW5BcTdpMkQzMzhOWHlmaHRrYlM5SnVxRkMzNFVycHRNYVdNWEY4V0hDL2Fz?=
 =?utf-8?B?UFk1allBYTFkaUs4YUl5MGVWajg4ek5zdFdwbUdoK0IremdBOWxMWUdQTmRS?=
 =?utf-8?B?YkFTaHFWRUgyVldnVG90Rmp3Mjk2SUdsVkpKNDM0amVoQUFPRnltMkNGYWxR?=
 =?utf-8?B?L29pYVI1MHBubVhNME91eVN0M05sbU5mT0RvbDU4Q2tQbUZDcjJqZGQ4ZDB2?=
 =?utf-8?B?M0NDZDB5dTAxa3htbzRrWTNtYXR2VVI3T1hsbDB1SHlza1ZTeTlMU3NPZHRT?=
 =?utf-8?B?Q01HdTdOOEt2Q3NRVDYyUThLSlFrbXRCY2IxSDhMNkFIb3J5cDE4VVMzVGRa?=
 =?utf-8?B?OFNXR0xtUGFxT1pjZ29IZVRaZW53QlZySkx5Y1FLRjJvUnY2WTFoM1VMam4w?=
 =?utf-8?B?eHVIMStXRkYrN0NHd0tjc0hvcWc5TThFek5jQ1VlN2k5K3lCciszZ2NGQ0lS?=
 =?utf-8?B?MTlIT2dDVXQrK005UTNNbmlCbnZNUW5PMEJ5M0lacDJUY0lENE9ORXpVT3dJ?=
 =?utf-8?B?cE0zaHFBL2RwdTNoYm5nSVBOcjZJZmNSMGZZeGtlWXA1d1QyNHN5bjBNZklB?=
 =?utf-8?B?OGdQdlRQYm16ajhzMXlCaG0yNEVYUGQ4aGRvbW9NdE9jTjhWQU8rOUZQVC9U?=
 =?utf-8?B?SGp6U0NiQ0xqNWIzS1pTOEtZcEQvWmdZakduM3VSUzl2VzZtM0x3dy9HbXp6?=
 =?utf-8?B?V0h5eW9RbFI1ZnpPSVdrbHlnNVJSMnRUQWRlZ0xRUVFxVW5iTEhQU1k5Z3hG?=
 =?utf-8?B?Q2paWnhPOUhYRU1LNkIxN29aUzJ3ZTFxZkZud2dzWUIzN2Nsbm5sektTVnM3?=
 =?utf-8?B?eHU5K0R4S3I2RXRkZjhqclorWnNMeGNPMTBtQ2NvSTN5dWV4U2I2YjIrb3Z3?=
 =?utf-8?B?cldiWUpsaHFlNmRVcFY4WlV0bmpUSEFWUVI3dERtOXY1eGpmendzQXRXM3h3?=
 =?utf-8?B?MlhGaVoyVG4yMzNTWThJWXJXQ1NuVzN3b2ZQN1ZOeldxNzllY0RJRXUzamNq?=
 =?utf-8?B?WUhtOEdySVJwTm8zVGxVWHhUZzFSbEw4Yk50N2t5cDE4ODVtRlFPdWs3NGsw?=
 =?utf-8?B?eW56MDBBZ3hLTlppNy9DZ3NxekpJeEZlcXdzeDdudUZCeHFhOCt0VzFLOEtP?=
 =?utf-8?B?cklDM0V1bHpiVGR6bmh1bDNzejB4NXpaQzdNL3VDM0wvK2xodEFxeXRwRjhU?=
 =?utf-8?B?cVVPRld0L2JWUkd0QnNDOUNyaUgxRUpVbGFabUFhUzFYbXEvZEo0S0xWaUhI?=
 =?utf-8?B?RGRtTDBLYm9pQkZhNEk4TW1pa1pjTndCWkwzVjhteVJrVEpxU3F0UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b2776c6-6e6d-4cc3-3936-08de72c8ee05
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2026 10:47:24.5443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LvsHufjl4qybVGqAZQBP7R2CL3Y7x8JiOJ0ne8oVNHBuEfVTqyjQBtiwOqtKq/I8FptX8qsx8p+YkduOLggsxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7765
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 868221751A0
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgMjAgRmVicnVhcnkgMjAyNiA0
LjQ1DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJF
OiBbUEFUQ0ggMTYvMTldIGRybS9pOTE1L2x0X3BoeTogR2V0IGVuY29kZXIgY29uZmlndXJhdGlv
biBmb3IgeGUzcGxwZCBwbGF0Zm9ybQ0KPiANCj4gPiBTdWJqZWN0OiBbUEFUQ0ggMTYvMTldIGRy
bS9pOTE1L2x0X3BoeTogR2V0IGVuY29kZXIgY29uZmlndXJhdGlvbiBmb3INCj4gPiB4ZTNwbHBk
IHBsYXRmb3JtDQo+ID4NCj4gPiBGb3IgRERJIGluaXRpYWxpemF0aW9uIGdldCBlbmNvZGVyIGNv
bmZpZ3VyYXRpb24gYnkgcmV1c2luZw0KPiA+IE1UTCsgY29uZmlndXJhdGlvbi4NCj4gPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAyMCAr
KysrLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
LCAxNiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jDQo+ID4gaW5kZXggNTMyZDdkNGUzYjI3Li45ZjNjOGNkMDJhMzMgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiBA
QCAtNDI0NCwyMSArNDI0NCw2IEBAIHZvaWQgaW50ZWxfZGRpX2dldF9jbG9jayhzdHJ1Y3QgaW50
ZWxfZW5jb2Rlcg0KPiA+ICplbmNvZGVyLA0KPiA+ICAJCQkJCQkgICAgICZjcnRjX3N0YXRlLQ0K
PiA+ID5kcGxsX2h3X3N0YXRlKTsgIH0NCj4gPg0KPiA+IC1zdGF0aWMgdm9pZCB4ZTNwbHBkX2Rk
aV9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+IC0JCQkJICAg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ID4gLXsNCj4gPiAtCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4g
PiAtDQo+ID4gLQlpbnRlbF9sdF9waHlfcGxsX3JlYWRvdXRfaHdfc3RhdGUoZW5jb2RlciwgJmNy
dGNfc3RhdGUtDQo+ID4gPmRwbGxfaHdfc3RhdGUubHRwbGwpOw0KPiA+IC0NCj4gPiAtCWlmIChj
cnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlLmx0cGxsLnRidF9tb2RlKQ0KPiA+IC0JCWNydGNfc3Rh
dGUtPnBvcnRfY2xvY2sgPQ0KPiA+IGludGVsX210bF90YnRfY2FsY19wb3J0X2Nsb2NrKGVuY29k
ZXIpOw0KPiA+IC0JZWxzZQ0KPiA+IC0JCWNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPQ0KPiA+IC0J
CQlpbnRlbF9sdF9waHlfY2FsY19wb3J0X2Nsb2NrKGRpc3BsYXksICZjcnRjX3N0YXRlLQ0KPiA+
ID5kcGxsX2h3X3N0YXRlLmx0cGxsKTsNCj4gPiAtCWludGVsX2RkaV9nZXRfY29uZmlnKGVuY29k
ZXIsIGNydGNfc3RhdGUpOw0KPiA+IC19DQo+ID4gLQ0KPiA+ICBzdGF0aWMgYm9vbCBpY2xfZGRp
X3RjX3BsbF9pc190YnQoY29uc3Qgc3RydWN0IGludGVsX2RwbGwgKnBsbCkgIHsNCj4gPiAgCXJl
dHVybiBwbGwtPmluZm8tPmlkID09IERQTExfSURfSUNMX1RCVFBMTDsgQEAgLTUzMDIsNyArNTI4
NywxMCBAQA0KPiA+IHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRp
c3BsYXksDQo+ID4gIAkJZW5jb2Rlci0+ZW5hYmxlX2Nsb2NrID0gaW50ZWxfeGUzcGxwZF9wbGxf
ZW5hYmxlX2Nsb2NrOw0KPiA+ICAJCWVuY29kZXItPmRpc2FibGVfY2xvY2sgPSBpbnRlbF94ZTNw
bHBkX3BsbF9kaXNhYmxlX2Nsb2NrOw0KPiA+ICAJCWVuY29kZXItPnBvcnRfcGxsX3R5cGUgPSBp
bnRlbF9tdGxfcG9ydF9wbGxfdHlwZTsNCj4gPiAtCQllbmNvZGVyLT5nZXRfY29uZmlnID0geGUz
cGxwZF9kZGlfZ2V0X2NvbmZpZzsNCj4gPiArCQlpZiAoaW50ZWxfZW5jb2Rlcl9pc190YyhlbmNv
ZGVyKSkNCj4gPiArCQkJZW5jb2Rlci0+Z2V0X2NvbmZpZyA9IG10bF9kZGlfdGNfcGh5X2dldF9j
b25maWc7DQo+ID4gKwkJZWxzZQ0KPiA+ICsJCQllbmNvZGVyLT5nZXRfY29uZmlnID0NCj4gPiBt
dGxfZGRpX25vbl90Y19waHlfZ2V0X2NvbmZpZzsNCj4gDQo+IExldHMgaGF2ZSBhIHBhdGNoIHdo
aWNoIGJhc2ljYWxseSBkb2VzIGFsbCB0aGVzZSBob29rdXAgYXNzaWdubWVudHMgKGVuYWJsZV9j
bG9jay8gZGlzYWJsZV9jbG9jay9wbGxfZW5hYmxlL3BsbF9kaXNhYmxlIGV0YykgaW4NCj4gb25l
IHBhdGNoIGxldCB0aGUgb3RoZXIgZnVuY3Rpb25zIGRlZmluZSB0aGUgZnVuY3Rpb25zIHRoYXQg
bmVlZCB0byBiZSBob29rZWQuDQo+IFNvIGFsbCB0aGVzZSBob29rcyBhcmUgYXNzaWduZWQgaW4g
b25lIHNob3QgYW5kIHRoZW4gYW5vdGhlciByZW1vdmluZyBsZWdhY3kgc3R1ZmYgbGlrZSBhYm92
ZSBpbiBsYXRlciBwYXRjaC4NCj4gDQpPaywgc28gbGV0J3MgbW9kaWZ5IHRoaXMgcGF0Y2ggc2Vy
aWVzIHNvIHRoYXQgYWxsIHRoZXNlIGhvb2tzIGFyZSBzZXQgaW4gb25lIHBhdGNoIGFuZCBhbGwg
ZnVuY3Rpb25zIHRoYXQgYXJlIG5lZWRlZCB0byBzdXBwb3J0IHRoaXMgYXJlIGRlZmluZWQgaW4g
c2VwYXJhdGUgcGF0Y2guDQoNClRoYW5rcywNCk1pa2ENCg0KPiBSZWdhcmRzLA0KPiBTdXJhaiBL
YW5kcGFsDQo+IA0KPiA+ICAJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNCkg
ew0KPiA+ICAJCWVuY29kZXItPmVuYWJsZV9jbG9jayA9IGludGVsX210bF9wbGxfZW5hYmxlX2Ns
b2NrOw0KPiA+ICAJCWVuY29kZXItPmRpc2FibGVfY2xvY2sgPSBpbnRlbF9tdGxfcGxsX2Rpc2Fi
bGVfY2xvY2s7DQo+ID4gLS0NCj4gPiAyLjQzLjANCg0K
