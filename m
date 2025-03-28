Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA5EA74E91
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 17:32:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19AA810EA6A;
	Fri, 28 Mar 2025 16:32:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DHNLJ3Et";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6303B10EA50;
 Fri, 28 Mar 2025 16:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743179537; x=1774715537;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=c4g/SJjbTlVW6FxWNnx7uxLK2K8yqIDNgIv5yWKQwHc=;
 b=DHNLJ3EtEmIGYABxXFx8eFnGFAX3xoTTL+GeIXnHUEcLR1ED7/CxKaNq
 AY+fJnze6yYI+e7CBrj9CWSSsbJt+a7s5iFfm9e1w9igfqnm4XdI+A6zF
 XI5FIjJUxHY2O66baRt7mnZNsL2uV+npWZntnWc9etogp5lCUF94PP3qu
 amYocT3PzrF6EUW6yjRChLC0T7ywwGgdJqBplFJLuSZ65jDhd+bElNlM+
 FPhOH3hNgKus6xbr5U9HxmsJeAbgMvD20S8przMzMOQT1mzlIaQ3exLEF
 hxFxwIJYzo+8p/CQdmvTHVv75xNHuONnwDEBkFZomkILjia0Tad6HZNq8 Q==;
X-CSE-ConnectionGUID: eBoysEIJQp2g33NAYlVqPQ==
X-CSE-MsgGUID: wB7gQQkVTVuDjr8m4p3oyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="44676253"
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="44676253"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 09:32:17 -0700
X-CSE-ConnectionGUID: GFXYzi4NTzKWG8aKUxJZFg==
X-CSE-MsgGUID: /WZetrwIQrW1nqXuSwLbag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,283,1736841600"; d="scan'208";a="126412764"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 09:32:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Mar 2025 09:32:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 09:32:16 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 09:32:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OcTLyh62SksgaPPfW280dnrKsRi5mqX6RTSOmD19pwR2TyP/4y0XCRMtZRo9W8jK/9nLk4rCRzbp+asjGqAuXEuazYUfUy1aCOzA/6ToWqN8omO0OhkkYx+HgRmhym47bgT0u+2b9BsQkwt+rcLP38+XIgb4iAQBSMPSRC4J2fpW5XX9OisN2ADuU/WOi/o0YCTbXsZqWVt2Y/fiGp8EaVoPzohdNdD777p7X4rl5fedeudY96aOOLO5XI851zpPB5zg4/QpJvgZdtyWaZXlIfUK5hE9UEgNG4XQSeEzKF9rPaJ9kz2SoJ+lAcMv5W6YpcckCbUFDdjR67hcMxKU6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c4g/SJjbTlVW6FxWNnx7uxLK2K8yqIDNgIv5yWKQwHc=;
 b=fv24aOC0d5JSzgDHyk4GqDicB/yekoK2Q6GM9UajDhtTlgynKukseXYe6JC1pqSHrWYZJRHjzOfESRrFu7KBFyPzqh3AMg7dgYakfJ0hhnU5A4wUyKr8E8ko+KCOdPnHfIvLluxm76jH6x5X41GcrgoPvFu4BHnfyKraveX+Kb/k513PZrVO7x/yvf4JE9sjTqIuannkVLzHMa5zLzSN3ZeZ36wy/PLialSceyka73BOqlmmQ3Oz9WqC1NjvxDj6mLQLbyc+hYcSSixcxoSJd5lG2wOba1F/bQcrIIJkIXnjwgXcSvhdXMVD/9qKWFIAEoWO2zuu9XkyXRvhp6gdTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0056.namprd11.prod.outlook.com (2603:10b6:303:1e1::21)
 by CY8PR11MB6818.namprd11.prod.outlook.com (2603:10b6:930:62::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 28 Mar
 2025 16:31:45 +0000
Received: from MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a]) by MW4SPRMB0056.namprd11.prod.outlook.com
 ([fe80::ef7d:dc3b:4791:fd7a%4]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 16:31:45 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v3] drm/i915/psr: Add PSR pause/resume reference count
Thread-Topic: [PATCH v3] drm/i915/psr: Add PSR pause/resume reference count
Thread-Index: AQHbn7hfz7+083GMAE+Qol0KBUTDtrOIviMA
Date: Fri, 28 Mar 2025 16:31:45 +0000
Message-ID: <MW4SPRMB005610108B045DEE0B6F7A3AF9A02@MW4SPRMB0056.namprd11.prod.outlook.com>
References: <20250328080623.1183669-1-jouni.hogander@intel.com>
In-Reply-To: <20250328080623.1183669-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4SPRMB0056:EE_|CY8PR11MB6818:EE_
x-ms-office365-filtering-correlation-id: 758942e5-1631-489d-b00b-08dd6e1607ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?SFNKS1BzaUNRa0ZaV3VNTVhZbW03Ykd5bHFaV3VhWFpINVdKdnh6RDRRa0dU?=
 =?utf-8?B?MmIvM3QyaEdRVXBOVXZiaTBadSt2aE1FeEcvVXF1eWplbGlCME9LNWNhSU54?=
 =?utf-8?B?bUJmZWtHVEF1Rm11czJJOEduSzE2bkUrQXRMaTc1UW5nWFg1TEw2ZWU3MzV4?=
 =?utf-8?B?bjNTaWNQbFhGR2RvMlBVMjdSeENQdld5Q09UTWcyL3RuRHpWN1dMcmU1Wm95?=
 =?utf-8?B?RFBGMjY1OU0zUFZKYVZvd0J1N1YrcTZ0MVhpQk5hemR0aE92WW5zYWJ3SHF1?=
 =?utf-8?B?ai9YV3NlWHduejBCdDZyZ2hKL3IwRzRZdFVzeW5yRlFHTFVNZkc5eW5RQXdK?=
 =?utf-8?B?STRzWGlRWjdmeTFYSUx0NWtGWmF3M3pCSGlqclJHS0h0N3VtSlRoVTFJM0Jo?=
 =?utf-8?B?Z1N1Q2ZCcGc3VHU2cW42dStMb1RrbWp4ZmMvZ1NpUU9VejF2QzBNOVpCOXlP?=
 =?utf-8?B?UE02U0NXSHNKRnNMSFdQNWE2TFgySXlGazhOTk56SDA4SGdPbGhzTVZZOXRB?=
 =?utf-8?B?THNVajErbE5aTnJsczBYM3Z2RnQwc3pjUXFuMWVzUFEyNHZmK3BrQW5HRXQ3?=
 =?utf-8?B?cE1MdDYvVWs0T2FSdnNEU1lCU2dGYXAwNmJROU1NekdGVTc1MTlJbnQxOUcw?=
 =?utf-8?B?dk5UTEJrYnBlUXZNcm5sS2ZrLzVpNFhPZVpEVlVjcHFZN2NXOFNKN3BTSVV2?=
 =?utf-8?B?djdLS1c3N2x4M1pXTnVBa2VPczBVK21ESW5Tdy92QWpIaFNwczJ4K0pXQ0V5?=
 =?utf-8?B?RGlSems1aGI0a3liV3FSOUZGQUR5cTZ0MmVsdEk0NzB4eE5tMkg0eGNrbklZ?=
 =?utf-8?B?dnFwOHFXV21qWlhWQ2dydU5odzZ3RHdESmJHZFpKcGtZeGRkbTBaVGdFelVW?=
 =?utf-8?B?Y1VpclJRa09EaHZVeWQyT2dIM0dhWCtQVWgvRWYyNW5COG54WnRWRXl0NXRL?=
 =?utf-8?B?cDU4d3hFUlFvcDQ0L3BHbVJGcjlWYkZPTmxTNU5RNnVpN2MvMU8vbTI3Vngv?=
 =?utf-8?B?NEJwQ0QvNDB0ZWNqMzJDaDlSWENGQkdRd0xRWVV3QmxTVGtYa1k3R2hRT3VB?=
 =?utf-8?B?LzU0NjcwdnNlRGlqdTJwUlBtQ1pIaXVTdHF2RWdMbzFNUEFBaUViclMyQXZP?=
 =?utf-8?B?akZLOGdNR0F4ZFRFR3B6d3huZ2grbFNNTy9BbHdXd1N2K0x3a0dSQ3BWNGU1?=
 =?utf-8?B?WkpjRXQvb0lqSEdlem1UYVRHY29ySXhaaGErVm5LL0d0a2VKdmRiaUdXWUJ2?=
 =?utf-8?B?dWpPN3RNRzZmUWRHVklXblBSR0FFcHpNcHBXWGsydE5CYnA3eHo4ajdZbHRx?=
 =?utf-8?B?OWN6dlFGMFZGT3J4WGlyOTJuR280QjJqVHhKd0lxdUd3aC84NGY1MjZ1SG5z?=
 =?utf-8?B?MlRyUThCM3prSkhSbll0dU9ZbmJZaCsxL2xVVHFSV0lhQXJOenJmUHhnODlm?=
 =?utf-8?B?bGxCQ21BSUVnd3dicXZ3aDNJWTU0YUdIZDRnMERqL1AycXVwWlYxRHBLVnMr?=
 =?utf-8?B?VG8xY21LUW9wNUVjWnJJRzdrMUJUUll4Mk14ZnVRMVRwYnFMbTlPbmxDUE9X?=
 =?utf-8?B?bnZzaGp1M1ByVUJwc1RCSE1PdElmbWlXRTBwVHBBWS9QeWNWb25pMVNZdVg3?=
 =?utf-8?B?alo0N3N6U3RyV1ZmWHlCSGIwSWNyNUZENEs1bFhZcS9zeWZFMS9xb1FkZW1D?=
 =?utf-8?B?SW5zVmQwYjBKZ1gvOHZkL2FJYW03c3dSL1hwSXFDY0I5YktkY242aTc0SE5E?=
 =?utf-8?B?dHZ1NkRYaEtYRGJlRVpxallnQ3hra0V5aGFaZXZVdzVKdnRPY2FybjdsQmdS?=
 =?utf-8?B?WE5iT3ZxOHBzTDhhNUJuSmhFdjFpeUlGUTNZK3J6S3p0VzRPTUViVFBvUFZa?=
 =?utf-8?B?VzRYUjNHVm5sK2txRkI5dmMvYlMzTkhRTkdqdm1oM0hxVHhXWER3NjI1Szlh?=
 =?utf-8?B?bmUxaHF1a2ZxKzlDM1MreGVMTXRyVVRjUy83ZzlUa3J3cDltTVdaMUFENVdO?=
 =?utf-8?Q?imD5AQjSudaL7fmjzxrcVsNTU5IuHo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?emhqTzVoMkVkUGxKWkVST21oa1o1ZFFjMXliSW5RTjhFaGR0REx0b1l4Y0xD?=
 =?utf-8?B?ekFrUURzK0I1Nm8yZWNtZGE1T0Jud094SWU5MStHTWkySnphTkN1b3ZRYWJn?=
 =?utf-8?B?WTQvQUlyNEtjRmthYkFTSkZRTFNINmpHVFB5QnpMaHBlTXd3WFJNSmlKY01N?=
 =?utf-8?B?ZGgxa2Z4eEVhTng1c3FPaUl3T3lvTHlZeWp6dTd5dlIwQ0VoVVlaQXp2Wk45?=
 =?utf-8?B?Y04wQVNPTFlrOFI2c3UrclV2akRsVTR2QW95N3h1d0NqT0UrRklWRzVkamdU?=
 =?utf-8?B?WGFKSkMxNnl0dVd2N0dNeVZ5NkZtVFRKeEhiMHUxSVcycFc3aTYrVUZQMDFD?=
 =?utf-8?B?SjhEaTlqWTg1Mkp3dTRuY3lSV3ZMTmhDaVYybU1abmErSGpsajRId0owTjB1?=
 =?utf-8?B?STY4TVJpQnpMaUN1TUx1TlUrUTVFSDNtYXpWa0dUTDBvUW1XVjE2QkVHNVIx?=
 =?utf-8?B?a1MwM2Vod0Z6OEIrTlg5R2tPS05CQnVmOUI2TXhhS1hwY3d4RDNSeDJYNFNV?=
 =?utf-8?B?SGVSWmZzbit4clN2aWVVbk00ZFVWYUg0Mmwzc3BKaEpNSDd2RnpoSDVNcFpm?=
 =?utf-8?B?SjVXUzVGTEZMci92TVRYMUVDRzEydDJxeHQ4TFpHanpEdVN5Qno2bXU1b210?=
 =?utf-8?B?ZWFFeG1acmI3YXYrV1l4bmw5c21sdGMyL0lhWnUxK3BpL3lnRCtPUzN3Rldx?=
 =?utf-8?B?aURXK1JoWlB0ZTFiaHRlemRnWC9DNkl2WWR1SWNaRnBGU1lqMFZobE9CT0Fx?=
 =?utf-8?B?M0NnSlFKTjBhL3FtaFFDS1dxNDJwcklkaUJpZC9QWVA4MWY5bTB2N0hDUFZx?=
 =?utf-8?B?RTduTnozc0hFWkNRYUo2OU9CVUhKdFl2b1ltOGtIa1VtSk1FdmxlVU9WZ2ky?=
 =?utf-8?B?SzczQk15QWJ2elYvRjMxTmIwbXlmbWRudlpvOHl4UU1lZGFNTHZ0N2xITWVv?=
 =?utf-8?B?TTVsbUd0dTdYcDF6Nkp4QStqVU5oRDRCUDBReTJ5ZUFPMm5Idlg3YlU1WlBr?=
 =?utf-8?B?UTl3T0p1MVc4VWcxdlUyQnlSdTlqMUNER0RacEQ0Q2pLMHc4aHUxL25YemVD?=
 =?utf-8?B?dW5SdkY2RFZTT1hrc2swMG1Yc21DTlE5VlluY1Blck5QekVmekhobllvbFRn?=
 =?utf-8?B?VDJacU9vRnZBdlVmYlV0YzlpNUhZeEFYZDE5TFJreThRQ1VDN000RzZ0enpE?=
 =?utf-8?B?bWQ3N3RMSk01MkN5RUI2Y3NSaVhPa0xyY3BiakVldDBtTTRoUU9PcitldExu?=
 =?utf-8?B?cWpFK2pnRlNLWlJMS2YzeHpxZ3BpYU5BWEdJQlVUWG5MOHRoY0MzemtmTmpt?=
 =?utf-8?B?b3BhbEwyelhkSUt1SnB6djRDQjhDREFXVUcrYTRhN28wS3QxZDZ4NHFRK2Ri?=
 =?utf-8?B?MUR6clVFOFIvcWNLY2ZjNjRLeVYyQXc2THMwdjdqRHg4MWRMczlHUlFQeVAz?=
 =?utf-8?B?aWlkaVBwaFBXY1ZhRWRsKzFLeWlmcnRKOUJxR2lUb2VDdjRQUkh4ODZQZ2Y1?=
 =?utf-8?B?MVRZMTZ0VDRqUVk3SG1RNjkzNWU1d0UxQ3pFaDB2ZzROVHM0eFJvSTBGRjhM?=
 =?utf-8?B?V09uZ3crb3hKMnNidDFDNm45SmpnOTI3eW1ySWhxUWNMQ3dHT2JFaVd0Y3Jz?=
 =?utf-8?B?WEVTMlpSMmllWFpvZHZmU2JDZTdsZG94bE5IdllpMk1sbUhORFI3cWttcVJv?=
 =?utf-8?B?c2dnWXAyUEwzaFM0d0V6OGV2bElFQTBrR0VseSt1Ym5nZllicm1LM2k0aC9u?=
 =?utf-8?B?aXk4VWYwUUh0ajdtSlVEaDROcU5tbE5wa1k0NVdicjBDMVhzSTZ6RjBUekQw?=
 =?utf-8?B?UGlJTVlaQ3BkV3g0QTB0blFDWTRWMjJkWElTY0pxYlJlalJseGQ2YWhCTTJG?=
 =?utf-8?B?TSthUGF0SFFRS3o0QTJWcER3ZExmWWQ4d3hPRGFDbHllR2N5M3VUa1R5eU4y?=
 =?utf-8?B?a0ZXYUYwZTU4ZWNZU3ZOQ2FseW9zcGZuV1dUSkdOVXIyVk5OSnlRNkhIT2hL?=
 =?utf-8?B?d2I5ZnZXcG5iVHcxS0wxeFBYNkwzQVZxQmgzZDdJUlFQOEFEb1h5UXFlYlh5?=
 =?utf-8?B?c0FSUnJqUWwxZnI0TGRvejdiYWlGaFFCUWs0bGN6OVA3ZGRSbWl6RktyMFlV?=
 =?utf-8?B?TVg1U3JFMnZxQTJCVlR5cG0vMEhqSnlLNllqUGFiZzdLc2JMdU5ZVzNDTjRn?=
 =?utf-8?B?VkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 758942e5-1631-489d-b00b-08dd6e1607ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2025 16:31:45.7245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KpD9Kg8m/Adfo8TrmZDGOdZyybXH3Ha134M7vvExrQDm5S9xm0bQjqZ5wWeU4Zq4Me/Xmz2aOdrBHE1BNvbOFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6818
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjgsIDIw
MjUgMTozNiBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzXSBkcm0vaTkxNS9wc3I6IEFkZCBQU1IgcGF1c2Uv
cmVzdW1lIHJlZmVyZW5jZSBjb3VudA0KPiANCj4gV2UgaGF2ZSBub3cgc2VlbiB0aGlzOg0KPiAN
Cj4gPDQ+IFsyMTIwLjQzNDE1M10gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dIGRybV9XQVJOX09O
KHBzci0+cGF1c2VkKQ0KPiA8ND4gWzIxMjAuNDM0MTk2XSBXQVJOSU5HOiBDUFU6IDMgUElEOiA0
NDMwIGF0DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM6MjIyNw0K
PiBpbnRlbF9wc3JfcGF1c2UrMHgxNmUvMHgxODAgW2k5MTVdDQo+IA0KPiBDb21tZW50IGZvciBk
cm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBzci0+cGF1c2VkKSBpbg0KPiBpbnRlbF9wc3JfcGF1
c2Ugc2F5czoNCj4gDQo+ICJJZiB3ZSBldmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5lZWQgdG8gYWRk
IHJlZmNvdW50IHRvIHBhdXNlL3Jlc3VtZSINCj4gDQo+IFRoaXMgcGF0Y2ggaXMgaW1wbGVtZW50
aW5nIFBTUiBwYXVzZS9yZXN1bWUgcmVmY291bnQuDQo+IA0KPiB2MzogSW5jb3Jwb3JhdGUgY2hh
bmdlcyBtaXNzaW5nIGZyb20gdjINCj4gdjI6IEFkZCBkcm1fd2FybiBmb3IgZGV0ZWN0aW5nIHBv
c3NpYmxlIHVuYmFsYW5jZWQgcGF1c2UvcmVzdW1lDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3Vu
aSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2Vk
LWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
IC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyICstDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgfCAzMSArKysr
KysrKysrLS0tLS0tLS0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDE1
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggN2Q5Y2M0MzBhNmI4Yi4uMzY3YjUz
YTllYWUyYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE2MjAsNyArMTYyMCw3IEBAIHN0cnVjdCBpbnRl
bF9wc3Igew0KPiAgCWJvb2wgc2lua19zdXBwb3J0Ow0KPiAgCWJvb2wgc291cmNlX3N1cHBvcnQ7
DQo+ICAJYm9vbCBlbmFibGVkOw0KPiAtCWJvb2wgcGF1c2VkOw0KPiArCWludCBwYXVzZV9jb3Vu
dGVyOw0KPiAgCWVudW0gcGlwZSBwaXBlOw0KPiAgCWVudW0gdHJhbnNjb2RlciB0cmFuc2NvZGVy
Ow0KPiAgCWJvb2wgYWN0aXZlOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gaW5kZXggNzA4ZmJjZmE5MDg5YS4uMGM1Nzk2NWY4ZjJmMiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMDI1LDcgKzIw
MjUsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxf
ZHANCj4gKmludGVsX2RwLA0KPiANCj4gIAlpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShpbnRlbF9k
cCwgY3J0Y19zdGF0ZSk7DQo+ICAJaW50ZWxfZHAtPnBzci5lbmFibGVkID0gdHJ1ZTsNCj4gLQlp
bnRlbF9kcC0+cHNyLnBhdXNlZCA9IGZhbHNlOw0KPiArCWludGVsX2RwLT5wc3IucGF1c2VfY291
bnRlciA9IDA7DQo+IA0KPiAgCS8qDQo+ICAJICogTGlua19vayBpcyBzdGlja3kgYW5kIHNldCBo
ZXJlIG9uIFBTUiBlbmFibGUuIFdlIGNhbiBhc3N1bWUgbGluaw0KPiBAQCAtMjIxMSw3ICsyMjEx
LDYgQEAgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiAgICovDQo+ICB2b2lkIGludGVsX3Bzcl9wYXVzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KSAgew0KPiAtCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShpbnRlbF9kcCk7DQo+ICAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7
DQo+IA0KPiAgCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50
ZWxfZHApKSBAQCAtDQo+IDIyMjQsMTIgKzIyMjMsMTAgQEAgdm9pZCBpbnRlbF9wc3JfcGF1c2Uo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gDQo+IC0J
LyogSWYgd2UgZXZlciBoaXQgdGhpcywgd2Ugd2lsbCBuZWVkIHRvIGFkZCByZWZjb3VudCB0byBw
YXVzZS9yZXN1bWUNCj4gKi8NCj4gLQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBzci0+cGF1
c2VkKTsNCj4gLQ0KPiAtCWludGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gLQlpbnRlbF9wc3Jf
d2FpdF9leGl0X2xvY2tlZChpbnRlbF9kcCk7DQo+IC0JcHNyLT5wYXVzZWQgPSB0cnVlOw0KPiAr
CWlmIChpbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIrKyA9PSAwKSB7DQo+ICsJCWludGVsX3Bz
cl9leGl0KGludGVsX2RwKTsNCj4gKwkJaW50ZWxfcHNyX3dhaXRfZXhpdF9sb2NrZWQoaW50ZWxf
ZHApOw0KPiArCX0NCj4gDQo+ICAJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiANCj4gQEAg
LTIyNDUsNiArMjI0Miw3IEBAIHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ICAgKi8NCj4gIHZvaWQgaW50ZWxfcHNyX3Jlc3VtZShzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKSAgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICAJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmlu
dGVsX2RwLT5wc3I7DQo+IA0KPiAgCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5F
TF9SRVBMQVkoaW50ZWxfZHApKSBAQCAtDQo+IDIyNTIsMTMgKzIyNTAsMTggQEAgdm9pZCBpbnRl
bF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IA0KPiAgCW11dGV4X2xv
Y2soJnBzci0+bG9jayk7DQo+IA0KPiAtCWlmICghcHNyLT5wYXVzZWQpDQo+IC0JCWdvdG8gdW5s
b2NrOw0KPiArCWlmICghcHNyLT5lbmFibGVkKQ0KPiArCQlnb3RvIG91dDsNCj4gDQo+IC0JcHNy
LT5wYXVzZWQgPSBmYWxzZTsNCj4gLQlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOw0KPiAr
CWlmICghcHNyLT5wYXVzZV9jb3VudGVyKSB7DQo+ICsJCWRybV93YXJuKGRpc3BsYXktPmRybSwg
IlVuYmFsYW5jZWQgUFNSDQo+IHBhdXNlL3Jlc3VtZSFcbiIpOw0KPiArCQlnb3RvIG91dDsNCj4g
Kwl9DQo+IA0KPiAtdW5sb2NrOg0KPiArCWlmICgtLWludGVsX2RwLT5wc3IucGF1c2VfY291bnRl
ciA9PSAwKQ0KPiArCQlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOw0KPiArDQo+ICtvdXQ6
DQo+ICAJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiAgfQ0KPiANCj4gQEAgLTMzMjMsNyAr
MzMyNiw3IEBAIHZvaWQgaW50ZWxfcHNyX2ZsdXNoKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNw
bGF5LA0KPiAgCQkgKiB3ZSBoYXZlIHRvIGVuc3VyZSB0aGF0IHRoZSBQU1IgaXMgbm90IGFjdGl2
YXRlZCB1bnRpbA0KPiAgCQkgKiBpbnRlbF9wc3JfcmVzdW1lKCkgaXMgY2FsbGVkLg0KPiAgCQkg
Ki8NCj4gLQkJaWYgKGludGVsX2RwLT5wc3IucGF1c2VkKQ0KPiArCQlpZiAoaW50ZWxfZHAtPnBz
ci5wYXVzZV9jb3VudGVyKQ0KPiAgCQkJZ290byB1bmxvY2s7DQo+IA0KPiAgCQlpZiAob3JpZ2lu
ID09IE9SSUdJTl9GTElQIHx8DQo+IC0tDQo+IDIuNDMuMA0KDQo=
