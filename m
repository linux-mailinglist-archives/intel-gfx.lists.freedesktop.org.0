Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDADA7DAFE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 12:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE2910E41B;
	Mon,  7 Apr 2025 10:22:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bnhW+0OI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E36710E417;
 Mon,  7 Apr 2025 10:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744021374; x=1775557374;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=usjxMmDFmU9sFRynfP/wLSdoBdIfZy7AAjARO4jYfz8=;
 b=bnhW+0OIC4zbolNeKtplICxJ1Tz9bb6glJ3jEkVOd30ip7D5wwFLpazu
 GAODhNRSM2ZTNvqOIg82v/ybagIOBRuYIcA/AUKGDroYfQ7M6GwuRb9BO
 LY4p9mV9dFTSwbUszTExErQzLbdRQLQgknnKcxIyKyxE7v5x2o0mtv+cL
 RnUuY8KIPe2QVHfL1lwyAW1gAaV7eDPt7uk2P13ePSXxOPeG00vKKf632
 vScujeJq+HcXBDkd5G8QBaUcpFdLtlmr7rE68bjEM1fns84SB2taf6p3F
 oB7+MG7W4+LKcTZYZWI+RiWoYZ2mGu+VfNqkQmUT7xztIUSExnZ3druKE A==;
X-CSE-ConnectionGUID: nTOIq6+rTziRefC4VOl6+w==
X-CSE-MsgGUID: u8pmJbxXQTOD/lPVXXanMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="45288496"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45288496"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 03:22:52 -0700
X-CSE-ConnectionGUID: IoWQusjRRqax8j+VXgcbbA==
X-CSE-MsgGUID: W0dPKEoCQfaaukCrDWZn/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="127665760"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2025 03:22:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 7 Apr 2025 03:22:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 03:22:50 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 03:22:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ocCu9Gg0ByYs3Bm7a4Jg1Xq4PyMy6S1q+vRq/gmOJvfBSrK651FX+UBXBelM3nO+g15+zYSdDe/6TaX4iq2wO+srAKylDpzZKbjcBJbkP7elo3nDHc3QTLvds/r9lGSquGe9GdM+Zxe4uy8Oaj1Mx7lf3oITth8r/tHN1RrwJ7o68dZsP7aj8sE6jQDAQagp0fJ2pta60skeJZ+7Qp424RosifahjwlcvO4YaKpKyx6w0TS68EVltENDavjRQ6HEY7GTv9E7GjIo28AWgv+9jUE0hYzOpEpHt5fkCWe5gGLLTUaZTgz4kBkaSaJIHo3zCz1Tyq31FAQd8Xgn37KiVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=usjxMmDFmU9sFRynfP/wLSdoBdIfZy7AAjARO4jYfz8=;
 b=EnqFB3+YemmFteg765aCXFq2awCdGJD748vqpey4n3yveBrhU02MGs0dSKbahqTzQKTCId7kbEQwpuX50NwOOiAOTathJoYl2ZZImNkC7HAVL/iUJaVa8deYBAdIiOtq5DWT2JGixONRhufJ5VVBFVW2HghLUZmloZ4Nl6iNbkNYCE48OT5QABdI8FWD/WHLqt2b5dIrWsl/bWfjYap2WO0gRDaJ5dTRzcniKZPo53HtY1Rhp7W+jSpnZGN8YrOXfjaLI94pZbzAevmY7uKi23NkeyV3LICmlBroPaia3+rNaSxB19hISBA/HpXmCxy3tWrbWiAqfL7dPJictM6D5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8606.29; Mon, 7 Apr 2025 10:22:48 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Mon, 7 Apr 2025
 10:22:48 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [RFC PATCH 01/11] drm/i915/display: Add new interface for getting
 dc_state
Thread-Topic: [RFC PATCH 01/11] drm/i915/display: Add new interface for
 getting dc_state
Thread-Index: AQHbj08ify5wHjbxG0+QO8fgGKKAHbOYLxuw
Date: Mon, 7 Apr 2025 10:22:48 +0000
Message-ID: <MW4PR11MB7054C2754A43904CD8D95EDCEFAA2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250307105237.2909849-1-jouni.hogander@intel.com>
 <20250307105237.2909849-2-jouni.hogander@intel.com>
In-Reply-To: <20250307105237.2909849-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: 38b4c762-dd8e-4383-ec54-08dd75be2529
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?M2RQNWphVnoyUzBveWZ0TmwvWTJIeFJFczBINmplMWppM29ENUV3UjZMK3Vp?=
 =?utf-8?B?S3I5eG42eU9RVG9RRDVCR2E1RThPNmVUYnU3amtuZDE0cXZISEFDNitROXdI?=
 =?utf-8?B?YlVEUHVCeXFFRkU5eE1HWjQ5MG9iQjZhQ2VRckgxSzNmUHZEdy9SNUVMSnV5?=
 =?utf-8?B?aE81QVJ6NVVtc1NKL3hIRmFPQXYwYW4rWVd6Njh1dStBeXFSUVBhUCtnc1BK?=
 =?utf-8?B?OW84MXZnU0JmaWdjUzNOVjJ4U1hrZWJxN2xDRElxL1BsWU0wT3RJenpERVR2?=
 =?utf-8?B?QW1ZSjk4aWh5bG1JdzZuRzNQL3ZVUklrRUJnLzY4aFRMQnZ4bkVjUk5Icmth?=
 =?utf-8?B?NklNdG0ya0g0ZGR0eWMvVlZ5ZG53VGp6dFI1elovZXNBSUk0cmp5QWJ2eGpQ?=
 =?utf-8?B?MTNhS3FnQ0VjNy9URVRHazFna0R1YXBRR1BUYlVmd054Yk1JTFRrYnc4bDJq?=
 =?utf-8?B?SjJCWExQWkJTUlNOa0VaZ3B4UmltU2hUY0YvWXg2UWV2MDZXMW01dzYycWxy?=
 =?utf-8?B?MktOcFoyd2pwSXNBRlh3TkM5WFdBK2o0Nk5VSzZkdXlHaFhuQ2dRRmNFQWdq?=
 =?utf-8?B?YkJnNXExUG9NUkZoYktudXpOWGg4cXp4dVBpc2xnb0tPU3VkejIxYU1Fd3M1?=
 =?utf-8?B?cktXOHE4b212STgwdVRsTStIdkxGeFIrTCtHSzNhVEFoQmVEVnNtdTRkRlAz?=
 =?utf-8?B?UEIwQmRnLytSMUNnZGhLZkNXZXJVU3BWNWlRT21EaWpNd21LOFNTYzhnYm9F?=
 =?utf-8?B?UmJTM3NPTC94czcwa2VKRzFkVHYrdzJXWWdJNlRkc2g0VlFMNWdWb1RhUGhU?=
 =?utf-8?B?cHc4TGw2cmw2WmtxTkV1Ync1M1NZTmlJVzViR0FzMkVRazZseU9RbkpCRVEy?=
 =?utf-8?B?QWgwU0R6TktOb3ltb0xZRVBOL0E1enUyWTMzS2lXaDl1dkRERTFKNlZqVmsy?=
 =?utf-8?B?Ri9vNFVtYjBPWWwxVFd4cmhsK2JJTXhqZHdSNmZkL2RYNUJZY3oyZXdzNEJF?=
 =?utf-8?B?YTZkeUtBcFJvZ01Ybmp3WDVMVVRFcXEzZHdTSlJiWDdnQkJPb29XUThYSm1p?=
 =?utf-8?B?N3JjT0MwMGI3bzNlVWt6Wm41R3hsdzNOOHB6UlYrVGZPaVhlbGlnNW1XdmFx?=
 =?utf-8?B?czJOZ2ZwM3poSDZDbHdidXhwajl5dk5VTGxNcXZSVlVTNnE0NmZOWmY5YXo0?=
 =?utf-8?B?SU1mTDlsNzY2dkZBL1oxSW1WQzRzeDlOVGxpT2l5cUx3bVp5WFd0MEo0dWEx?=
 =?utf-8?B?UmN3cC9wQ2VndXBObUJIRmVRYlRZZDFBTU80MEZOemMrd0o0cUlkMVhJU1Ba?=
 =?utf-8?B?dTBnOUtoUkdSWnJ2ajd2cW44RlZ3ZHBUQnB6dXdWRFp6MW9kRVFleTZCbkpB?=
 =?utf-8?B?dkZvMUR4V1MzWjVMbEQwZnBpSE1hZW11ZTRHaGVQZWgyVzZFY1JzanZlOUd4?=
 =?utf-8?B?Z0NYT1JaQ2R4elY2clFOOXpLVm9oNzc0U0ZSRlU5R0c1YmsvNnZlaVNTc3px?=
 =?utf-8?B?NzlBMUVoMkNORFc3UjdRQWlXblA5ek1qWjF5ODk2Sy9GdUlGdEcrUHY4ZW5H?=
 =?utf-8?B?OXMvSGJMVzIvWWFsM1MrKy93TGMvRFZqeFVyMjVEanRuenY1NExCTjVncjhY?=
 =?utf-8?B?UzlFWFF0Z1R4d0FNeXorbEx3RUgwU1ptMVUrQk1Wa3pFaGtVSFJPaHBMTTdW?=
 =?utf-8?B?dGgycVRhcE5TOWREL2RQUTRrU3hFaVJNN2VFWWs5V0NsNlNqc3huZmxYeUVp?=
 =?utf-8?B?RzZRTzQyN1p5S3VPMUpaWUExTmN1V0pJclMyTkdadm42UVdudVlPZERCZnVD?=
 =?utf-8?B?L0JzOFVEeGc4UVN5Smt4YThmKzVBa0dMQWNxYUN1bzAxUHk3VkdhRVlXVCtN?=
 =?utf-8?B?YnRtTWRxUS9NTDl0ZGxzWUtmdUpNUjllSlBTMEFxbEZHSUZaeXJKcEhKeEti?=
 =?utf-8?B?OEEyaW4zNXcxQVFPbUwyWDB2MXY1MWJvMW1SUzkxWmVpbmZYYldaVWtYR3cz?=
 =?utf-8?B?RVVWc2NiT0hBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eHFGTWxDVkxpeHVBOGRCTWNRVVVoVlBPYnBMYys2cU1veHNqdjVPT2ZqYm5i?=
 =?utf-8?B?M0hzRTExRjE1TGp4MFBYRlBna2JJU1hJb0ZTemdkVzNyRUZrRU5TcHA1MThQ?=
 =?utf-8?B?aTNRMklaMHVxaW5IcUtwLzNNbERnWjN4UTJEL2c5NGRJUGp1UGVaTUh0QUxv?=
 =?utf-8?B?TE1QWDg2cStKenlvSlJOZHc2ZkxrK3JxMnBMbnRpdndXRUVDbEQvUjNOcnFl?=
 =?utf-8?B?VkF6elRpRnhmTGJsMzhWcWRlUlBFdUlPZGhWUERySFVNQ1VlYVlwSXVlQTVa?=
 =?utf-8?B?VVZ3REVScS9BQmtVWjNHTWtySEZnZEYzYWtjOUZTNFUremY4dFJyN3dFRVBz?=
 =?utf-8?B?bGFQOERxNkx3NmVVeFJ2YUxHcTYvV3VpUUZXZ09EZllZZmRqR2x4cjdKR3Na?=
 =?utf-8?B?dWUrTjRXQkhXam0ycVVvVlFyUEVFMUt2anNvUS8wZjVkeWV0ZE1UZzBrUm4x?=
 =?utf-8?B?MmdyWmtVQnovdCtSN3NDT1I1Y0FEcHhmbmFlTEgyeWtuQkpPb0FUbjRCQmRG?=
 =?utf-8?B?YmJuenVVelJwVWR4Zyt1VEtxMGtLWEZPZlZ5a1l5bkExakhRTStHK29IaFhN?=
 =?utf-8?B?bDY1Q0xzTU9vaGhEbG4zVHFBcjdPWElyMTJoUk54ZVhzSmhYbWt0VVY2Q0l0?=
 =?utf-8?B?MXZ3cFBPQkVwR3JVWXFwWmQzTnFRUmNCbk1DVWpMbFp3c2x6NGU5U05DTWVz?=
 =?utf-8?B?ZWwzNjlRblg1ZVBtTWxEOW9yM1BROWJWZFozb3I4U3F4UmI4Y2xhYk41SzVa?=
 =?utf-8?B?U25DdDEvNXFwSXd5d0hEbThwTjlpdFRCVWV3bTZNQk9nY3lBTUJvaVYrN2lR?=
 =?utf-8?B?VVhmSWkzc3lTQmRtT3c5cWhiRkRDQW1PV2M3Sm1IZWJRejNTM0RwVnM3MUxF?=
 =?utf-8?B?RHp6c2ZwMVpocnVjMk1JeHJ3dENuaXlzaTZIZ1dpcVAxU1lycUpxaDhxVzlq?=
 =?utf-8?B?ZDVJZlozMnhoWDJ0L090eVhvNS90LzBYSWhUMC9YL1g4emYzcnZHSXdHRi9P?=
 =?utf-8?B?enlxTm1nTk9QNTZjOVJCck1SdkJhL3ZsSzhpMXZzSU4zMFl1c0prWHBZbGNi?=
 =?utf-8?B?Yll6VHpzTlB4ejFSckEyUFdPSnZrUU5Tc2lnVjh6ejg2V1hCK0xqTHVFZk9n?=
 =?utf-8?B?WVhSM1hQTytSMk5PMDJNSFhORXlKNTdSOS9WUHlvR3BFRUg0NUpka3JiRWtx?=
 =?utf-8?B?UkJ6Q1dENXd5QmJQMUFpeVVLSmhmc1gvd3hlQVZuSzgvcnRtZ2cyVlYrMmNi?=
 =?utf-8?B?QkhCUXFFQnBPbWZxTmc0ZGJyVlZLNGFDRnVaN09KZTFaQ01GdE9abzAzM2N2?=
 =?utf-8?B?QW02OGtHdjZzTWVXdy8zdEl6SnB0UzE5Q2JXK1dtN3hDYmlOQ1A1YVFBWDBC?=
 =?utf-8?B?aDA0Wnk5QldxN29NUFRkL1BZVDYyYUFUZElYMzhnUTFSbHRSN2NsTVhBaHVw?=
 =?utf-8?B?d2tsNlVkcjY2cmxiYjNUdStkbmd0QnRUNzd0cXV1TDRjSTAzYS9NYXVrMStj?=
 =?utf-8?B?Z1JQdllqSFFua1NGUTNkVW44NnU4dmtRd1BYYTllUHZ5ZWJjeHViV2M0aTJP?=
 =?utf-8?B?KzVKYVd4VW9qRktXTGs0OTZOZDE5amVHVlA4cGEvMGlOUTdYMGIwenRheE54?=
 =?utf-8?B?N0ZzTVcxYXowQ2I1UFhRMEtydzlFWlJWdm1URHNaazlPbWtmMmpqM0pMNkUw?=
 =?utf-8?B?RVhJbTlJOG9nRWFzWlJ2MDdHdFE5VjhZMXAzQ2hnejdVK2lsTTVjSUxyZ1Va?=
 =?utf-8?B?UFEyMW0za0toN2RSV0xndXJaajFVWmNkVnBBL0tneDBGdzNwR1kyT1pZbXVQ?=
 =?utf-8?B?YVVHMHYvMVJEeVRCMEFGc2JySU9za2lBcnZ4ZmRzWmwrZnhOdFh2R3lxdHR6?=
 =?utf-8?B?YldOVGhDWE5Wc1ZiM3Z0SWFkYWx0Qy8zNmIzR3RzOWtaZVBOeDhRY3h3R2lk?=
 =?utf-8?B?bkREdjlJajJuY2R5S3RVZ0FRMzZhemFyckl3UHBCTTVnakZHc0szcC9iRXdL?=
 =?utf-8?B?V0J0SGcydHlMeitOQVNaM2pUYjNkQzBGVTRTdXc0R0lUaFVyRXR2d0JCSWFJ?=
 =?utf-8?B?aVN4Sk5odHhCV3NveVZaZWE4VHVsUWk2eHBEeGZwODRac05DY20wK0p2SUZL?=
 =?utf-8?Q?wuyWB/GMStUoYCaA9pE7UyGJj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38b4c762-dd8e-4383-ec54-08dd75be2529
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 10:22:48.3881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9jf858xXZA3xE1SH71aviDy86/pZlxrMavWjTJbcHEmuSiEQAM71KC6G3kjpqFUFJfls95ilsLSHgHwW/O/7uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBGcmlkYXksIDcgTWFyY2ggMjAyNSAxMi41Mg0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogW1JGQyBQQVRDSCAwMS8xMV0gZHJtL2k5MTUvZGlzcGxheTogQWRkIG5ldyBpbnRlcmZh
Y2UgZm9yIGdldHRpbmcNCj4gZGNfc3RhdGUNCj4gDQo+IFRvIGltcGxlbWVudCB3b3JrYXJvdW5k
IGZvciB1bmRlcnJ1biBvbiBpZGxlIFBTUiBIVyBpc3N1ZSAoV2FfMTYwMjU1OTY2NDcpDQo+IHdl
IG5lZWQgdG8gaGF2ZSBjdXJyZW50IGNvbmZpZ3VyZWQgREMgc3RhdGUgYXZhaWxhYmxlLiBBZGQg
bmV3IGludGVyZmFjZSBmb3IgdGhpcw0KPiBwdXJwb3NlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgMjkgKysrKysrKysrKysr
KysrKysrKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oICAg
IHwgIDEgKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
Yw0KPiBpbmRleCBmNzE3MWU2OTMyZGMuLjZkZmU4NWE1NTI4ZiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gQEAg
LTMyMiw2ICszMjIsMzUgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNf
c3RhdGUoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICAJbXV0ZXhfdW5sb2Nr
KCZwb3dlcl9kb21haW5zLT5sb2NrKTsNCj4gIH0NCj4gDQo+ICsvKioNCj4gKyAqIGludGVsX2Rp
c3BsYXlfcG93ZXJfZ2V0X2N1cnJlbnRfZGNfc3RhdGUgLSBTZXQgdGFyZ2V0IGRjIHN0YXRlLg0K
PiArICogQGRpc3BsYXk6IGRpc3BsYXkgZGV2aWNlDQo+ICsgKg0KPiArICogVGhpcyBmdW5jdGlv
biBzZXQgdGhlICJEQyBvZmYiIHBvd2VyIHdlbGwgdGFyZ2V0X2RjX3N0YXRlLA0KPiArICogYmFz
ZWQgdXBvbiB0aGlzIHRhcmdldF9kY19zdHN0ZSwgIkRDIG9mZiIgcG93ZXIgd2VsbCB3aWxsDQo+
ICsgKiBlbmFibGUgZGVzaXJlZCBEQyBzdGF0ZS4NCj4gKyAqLw0KPiArdTMyIGludGVsX2Rpc3Bs
YXlfcG93ZXJfZ2V0X2N1cnJlbnRfZGNfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKypk
aXNwbGF5KSB7DQo+ICsJc3RydWN0IGk5MTVfcG93ZXJfd2VsbCAqcG93ZXJfd2VsbDsNCj4gKwlz
dHJ1Y3QgaTkxNV9wb3dlcl9kb21haW5zICpwb3dlcl9kb21haW5zID0gJmRpc3BsYXktDQo+ID5w
b3dlci5kb21haW5zOw0KPiArCXUzMiBjdXJyZW50X2RjX3N0YXRlID0gRENfU1RBVEVfRElTQUJM
RTsNCj4gKw0KPiArCW11dGV4X2xvY2soJnBvd2VyX2RvbWFpbnMtPmxvY2spOw0KPiArCXBvd2Vy
X3dlbGwgPSBsb29rdXBfcG93ZXJfd2VsbChkaXNwbGF5LCBTS0xfRElTUF9EQ19PRkYpOw0KPiAr
DQo+ICsJaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgIXBvd2VyX3dlbGwpKQ0KPiArCQln
b3RvIHVubG9jazsNCj4gKw0KPiArCWN1cnJlbnRfZGNfc3RhdGUgPSBpbnRlbF9wb3dlcl93ZWxs
X2lzX2VuYWJsZWQoZGlzcGxheSwgcG93ZXJfd2VsbCkgPw0KPiArCQlEQ19TVEFURV9ESVNBQkxF
IDogcG93ZXJfZG9tYWlucy0+dGFyZ2V0X2RjX3N0YXRlOw0KPiArDQo+ICt1bmxvY2s6DQo+ICsJ
bXV0ZXhfdW5sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsNCj4gKw0KPiArCXJldHVybiBjdXJy
ZW50X2RjX3N0YXRlOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBfX2FzeW5jX3B1dF9kb21h
aW5zX21hc2soc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucw0KPiAqcG93ZXJfZG9tYWlucywNCj4g
IAkJCQkgICAgIHN0cnVjdCBpbnRlbF9wb3dlcl9kb21haW5fbWFzayAqbWFzaykgIHsNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmgNCj4gaW5kZXggMWI1M2Q2N2Y5YjYwLi5mODgxM2IwZTE2ZGYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oDQo+IEBA
IC0xODMsNiArMTgzLDcgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3N1c3BlbmQoc3RydWN0
IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXkpOyAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3Jl
c3VtZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7ICB2b2lkDQo+IGludGVsX2Rpc3Bs
YXlfcG93ZXJfc2V0X3RhcmdldF9kY19zdGF0ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSwNCj4gIAkJCQkJICAgICB1MzIgc3RhdGUpOw0KPiArdTMyIGludGVsX2Rpc3BsYXlfcG93ZXJf
Z2V0X2N1cnJlbnRfZGNfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKypkaXNwbGF5KTsN
Cj4gDQo+ICBib29sIGludGVsX2Rpc3BsYXlfcG93ZXJfaXNfZW5hYmxlZChzdHJ1Y3QgaW50ZWxf
ZGlzcGxheSAqZGlzcGxheSwNCj4gIAkJCQkgICAgZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2Rv
bWFpbiBkb21haW4pOw0KPiAtLQ0KPiAyLjQzLjANCg0K
