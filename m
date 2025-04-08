Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E58A7F70A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 09:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688B910E5F7;
	Tue,  8 Apr 2025 07:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YNNtxQcL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D2D10E209;
 Tue,  8 Apr 2025 07:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744098594; x=1775634594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=8I8YaNvjRzN1s6m26nmM/8tqOwMXzv+UZc2Nc0kZi9A=;
 b=YNNtxQcLV9KUbfZTHNQEAZoTl7AxBqouoYNFAsq72OkpX/JbALG4lrqB
 xlWwuRMPYySJeYdM1Cst9ihoXp1LlxNgAO3EOY1l2+UV9RXO7xsN7B2FN
 lK67oUhpgMhC6UJp2WQTucjdcQnK068YVw1Ifozp/uamxbhXgi8kYWNhs
 k4glPEE7KqL2RPq7IVJn38vmzbk3P3zC15KutaAFDTBTYGEy/1+wQeRI9
 EEuJFi8Nj5zB3X2OxGeWdIwb7nagi2ctcdmb/r6DUsQ9GYtwR4S7OSV2+
 45NxB6q7af4O56BuhlMa9OgRmbuJphYl5QeiLDYEjlDUjp51X3ipAYAjw Q==;
X-CSE-ConnectionGUID: MMFCos+CQQ2vt2xyu8NZlg==
X-CSE-MsgGUID: qtdRvEnaTFaBaU5M+YElag==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="70894236"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="70894236"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 00:49:54 -0700
X-CSE-ConnectionGUID: MFyhC3M0Qo2C9hZrz+K5Fw==
X-CSE-MsgGUID: o1bDJKl2T5WbIfGuaQYC0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="128519847"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 00:49:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 00:49:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 00:49:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 00:49:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XXMStXRmnxv41zBEtiP1+4BKtHBzb9aMysiNrXo+o+BnCLf6Au8NhGt8mxnPYIyekD4hBxUYPeB2kutevm6Y/1dgNhg1lKvrfuChuYIKA/hGD+et5q2riFZe8qILIpD4tPSMtHICChtGJUa56OnGRTzqF3QDJmQGsHbqNOrRChCFq9lon/R6vJ5zaQaUJyx3otpOStfNPE48Z/bmHUYepkCfgsxpFZdtVvUhinKIDz9ZVOcarnEOqvCOV5Bp0Ztlqc/3i3LT0f9l7bHPcCndYlrcnsAOomUEszjkV0wana4B3zRHzhQpG1Zxj+nc3p6sB99GzHFfUHpt50cRKhx5lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8I8YaNvjRzN1s6m26nmM/8tqOwMXzv+UZc2Nc0kZi9A=;
 b=K9A7ni9miv50KhHfMheA6JcGPtmNDHkjDKGwPbLR3PjKoXLfW95W8mmUGj8mFo9rCef3kDYq8weSktLyMZnvpYREVxH1McKwBxPwxlE4dZKEHz9NdVmhHkpTcVLPYTNDwnxTwzLCnfFxZxqf6x0bR+5b1a8S1W9J/jtQukHmINncN8teAr63DhKpzPRjm2j0d894mNdoFvMfrK0B1OLMasLPeoFhR9sqUFlF30uQCWjGi9sQUIECWuh+UyWm6b3Xurr1cpfK40bwC6x3X7c3xcn8mDQ7kjN51sgk0Fz7OQJbHawJH5s7qgvDRCBnpJJTGEnPaZH4CrE11nHe/53v0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ5PPF1FF629472.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::818)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Tue, 8 Apr
 2025 07:49:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 07:49:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v7 2/8] drm/i915/lobf: Add debug print for LOBF
Thread-Topic: [PATCH v7 2/8] drm/i915/lobf: Add debug print for LOBF
Thread-Index: AQHbpH30DroiMldDpECNr3kMAvbukrOZbJ+A
Date: Tue, 8 Apr 2025 07:49:51 +0000
Message-ID: <f779f49fd81dca8d5dda42d01f23ea74760f937e.camel@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
 <20250403092825.484347-3-animesh.manna@intel.com>
In-Reply-To: <20250403092825.484347-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ5PPF1FF629472:EE_
x-ms-office365-filtering-correlation-id: 699130ee-2274-47b0-c989-08dd7671f190
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?TFpZQUg1V0lmQTI0QnFPN21sbE92RDkvZU14L0RQN0pHaWJ3NDBYbng4NWpZ?=
 =?utf-8?B?QkdhYSs0NE04SU96R2EwVG11VnFKWW9HUWRLYlVPNWswTGVnT1VYdzllNGtH?=
 =?utf-8?B?TmxxVGhnUzBLTjVBZnI5UGREY1FCZVcyeGN0c3JaOE9QUWJmMFUwa2g4UXJY?=
 =?utf-8?B?VGJkSmpIVnNibE1sVDFqU3lBRjhEc255RkFPbUdCTzh0MGZtaHZlTVJPRHRT?=
 =?utf-8?B?dUpXSWNFSWo5bG1tSk9jMUNHMWkwbFpKa2kxMWoxb2tUaGEyNm85ZHZRTStX?=
 =?utf-8?B?SlY1MFhLdHlwUVorSUUyZlZZSnZxT0cyVnRoNXFEcElwWm5oUlRuK0ZmOUlp?=
 =?utf-8?B?Ri9EQVhWMVJGbGhTeXRmb3EvSUxFc0JDaVljNCtyTERTYlNBTlNBSUtrT04y?=
 =?utf-8?B?WTN3Nm40MTdvNjhLdk5iT0VUOUJsUThUbHFrQ3ZESlBuTDZYT0xzK1ZGU09y?=
 =?utf-8?B?K0h4QW5UR2ZUUXM1SWtrTzR2aXhYMnZ4c3RwUXBwaDlQWCtBNHNSL2NaVmZB?=
 =?utf-8?B?MEJueFU2RDc1VW16cHBFVURZMnkraEpWZ0plalV2bittTm5uOXJVRG5qeG1B?=
 =?utf-8?B?NW9CbWFWZWFIeFNiUzJkMWxpeFpBNnhrR0ExVTRkTWVIVUJqQnE0WEc0UkVB?=
 =?utf-8?B?SGZrbUFGWFRwRnhsN2xYMXZqTVFGMm56M2pmdno0TjhVRjRBUmdVcHhmNS92?=
 =?utf-8?B?bUxkQk12aXJsTHNCYVh5YUxDSWtHVDFMWFRJVGNaMGpwcWM0a3VCdXZ1dkJ2?=
 =?utf-8?B?OGY4MStlY0ppRlNteVQ3V1NRZmpmWWhtclNiZGl3eXRNNmVVT2lFRVljK1M3?=
 =?utf-8?B?VGhiQVFpN2QrL2lSVzhXbVgxMGVwY3VCZW1FZmpjaStJQXVIRVNVUTZPQ2pt?=
 =?utf-8?B?ZWlocGl5Z3ZldXFiT2hRM21xcFh5UEhlUWYxUG5qTXpSM0RhSE5PVjBGMWZB?=
 =?utf-8?B?Q2NENS9WVks3MVJsM1ZQTEg4MDIxcHUxTkFGZU04UzBTb2NYVjBqb0JvUjFt?=
 =?utf-8?B?cFdpaXVrTFYyczFrbmNkQTUwZXkvajRPa0QrdWcyMXVvaGxxeWc3dXgwMVdI?=
 =?utf-8?B?MXpEcVJ4Vk43TzQvMTE1cTBJMmR3am1CZUxTM25NRGoxaEYxZkdNOGE4N1g5?=
 =?utf-8?B?SjdibmR3R0QxTEk4b3NuTnI0SXdkMGlpU1cxdXYxYk9mY0lDM2J1QXFFWXVT?=
 =?utf-8?B?QUptOVI3SXRzZkVWU05tcGt5US9VZHZxOFN1Wkd4b3hraDU4alRVNnBwSG9w?=
 =?utf-8?B?SldrK2VobzFTVis5N3dZdzY3WW5hSjJ5QWlKZXRoY2dPUWJjVmpLRFVWTW81?=
 =?utf-8?B?cFh2TGV1SkFBenpjOHJualNzMmxsbWhYVXhrWXBrYnVnMEZYaGtaajhoNEZN?=
 =?utf-8?B?d3p2K25mR1V3MTl2T1RSUlI1QjZvYjNvS1FZcnUwdGxoOVZ5cmhpUjllbHBU?=
 =?utf-8?B?aElxQ0JRcFpwdTRoclNQc0IxT1BGMWJMN2R3c016eDEzcDl6WmZmaUlWY1Yx?=
 =?utf-8?B?WG9hbHV1ZHFNakhIdlJMUnI5T0MyVFovQWNUNlRFZUlXMit2QWhUUjI2ajgr?=
 =?utf-8?B?dmhZakNWUm54SE9YaGU5Tll2WGI1dkYvQS9UQXd4MG9sUEFGVktGVE1GZkJs?=
 =?utf-8?B?MisxMmFTY1Zac1FVejVRUmRRN2xkbHQ3bjlRQkI5UWNVN3UydThnWWQzV3BL?=
 =?utf-8?B?c3ZXSENJbVptVWM0MVQxdVBEeXlENlJ2L0RFZllTNkNqaEhsM2JsWEZRWVU4?=
 =?utf-8?B?RERPUk5lbmFSVm01eFkwWjdnSXdKZ2ZTeEN0QlNvckRIa3dMOWJCOXJTYm8x?=
 =?utf-8?B?T1l3Q2xrdFRER28wbEpIRTNmcDhPcitsNHoxWTZEZGI0UVBNcUxDb1N4bHFS?=
 =?utf-8?B?ak0ybU83V2ZnRkw5akhoRlcrU2l0aDllZGdhM0RRMktWaUZlakczZDhmMDV5?=
 =?utf-8?B?QXlLczlsb09uM0JXME1MQTcvUmxXZmFtcHRXU2Q3THhMNTF6WXlRYkk3VFZN?=
 =?utf-8?Q?ctndn5DhSSQdNA6Ybye2Cclw/Rf3BU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z2FEZkNNVlRhYzZOTzdQL085a24yUW15RG9NRXF4NUZuaUlITUxMSmZMbXFT?=
 =?utf-8?B?U2FsbGRpOXY0T3pCanI3bnlCVURLdFhsNmphdFZRemVMblRYejc2MGc2RldB?=
 =?utf-8?B?Mll2NksyQmc3aGxpdjRNdmloS21Cc3dFMjFlNHV3MmY4Y2xzSDFsa01nWm5p?=
 =?utf-8?B?VEptR2pkYWl2cWlJaFpybjJhSjl2dWFMbFdQeDNROUNubVpBMDlvLy9mLzBn?=
 =?utf-8?B?cU1IOHZTSWFQRUhvbDN3UDBRVThkSHZudm9ONVU4RkZHWWlLb2lkOHhDb250?=
 =?utf-8?B?bjBXMHpwSk9pcStCM3RQMzhRYnpxdzdxTHl0QkVDeHdKR3ZBRE1VNnowemY3?=
 =?utf-8?B?N3lFTXN5aHNqTzdIeTI1Wld1N1hZUWhTOCt1WExYWE8vbEs1VUh0RHMyNE1X?=
 =?utf-8?B?bmNNb3BLekN5T0VXcXNVcVJhVnBuNmVZVkl4UlV6eEV2U0hlSG5GSjdHK09k?=
 =?utf-8?B?T2NSZTM1RUdRQmUwbnhsMUZiRUZJamRVenRXVGxGcStldXlieEpDcUhBaDBZ?=
 =?utf-8?B?RXZOWHJYZ2xpMHY1cFNmRVZFOS84RlpsTTVlSU5YUDBVSlBibkQxWTNhNDZl?=
 =?utf-8?B?WGhPbU1IRkxzc0RqOVlWaEJDNnRyVjRyWEtDZ0JEVnl5UWVuWlFzYXF6UGsx?=
 =?utf-8?B?Nm1kNEFyb09TaXR2dll0bGdJYnA4ZjVPc0RPbmp6Mnd1amNEYmdKL3VCT01B?=
 =?utf-8?B?V3Y0Sy9uVGJZOFkxMHFKZHV3VEt0RlRmM0VITFRUL3NxRmN3cVNHTEg1N241?=
 =?utf-8?B?T1pBWUk1Rk0wSUtuRlk4ZjNGZlltbXdZM01WQk9yZG9pZXoyQ0R6OU1UTmU3?=
 =?utf-8?B?alZWSnBQMWdWZ1FmT2swYm1lMFgwSE9DYlRzNi9jcjFKcHpUMGVrZEVMMHp5?=
 =?utf-8?B?VVNkN0I5Z0dtVnd4MzZxeFJFNVFiSTZFZUdaU3VDQitnSGN6MG9ITGpFL29h?=
 =?utf-8?B?NlVUTE5KYmpOVm1ZVUVqdjF0bDJ3YkJyd1kwbWc1d241UlI0RVFYV2FKbDJa?=
 =?utf-8?B?M1BlZnZEdW1kTml5SGhaZUY5MEFLSDA3OHpObWZIU0RGS0xjbi9VcDVVNUNu?=
 =?utf-8?B?bFNsRGZ0WHhYaFp4cHArZ0xydVJ5ZW1sQXVVOTMwQjNudHpSaHM1NVVYU2RG?=
 =?utf-8?B?eUdXNDc2WU5BWHhjNmQrVkRrdERuczRxOFBNZFAwVW1jejk3VmhlRStHZnlQ?=
 =?utf-8?B?UDQ0NXNpeE52MkFqTFNIbVg4NEwvNTZ0cGsvTUo3cHZ1QWNzT3B4Z2h2N1Jn?=
 =?utf-8?B?Q3VhS09Mb2Q3TG5wd2xQeGR4VkR0Z2FMMjJZZzNPb25EUmk0eWpoUHJwd2R5?=
 =?utf-8?B?RmFJYktPSURPbGZRM2UwWGtBZ1d2WmxiNU9wZ05sWHBMVkZPOGZsR0lhWG1E?=
 =?utf-8?B?MHdKaUp2NmlBL0dDMGY3eW94K3BuWVhNSDFzR0RhZlcxbTY1REQ1c0xhUllo?=
 =?utf-8?B?dndBT2wxb0hlRlRlaG5oeFlCK3pWL21UbEVFRkE3MUtsSFJMWENZUkVsZi9B?=
 =?utf-8?B?K2d2UzFOM2c1S29CTmZWNVBudjV4WWo5ZFJJMUdtMTJGRmVZd3JHVEJxamlT?=
 =?utf-8?B?eUVsQXoycjA5WndLVTBXWXlrTE0yTEIvRkppWGVYTVVBTWtoZVFza245d2Ur?=
 =?utf-8?B?ZjVDa3UzeWUyTDc5YldDdWQrell2MFcxQm84L1YxL2h2YXlTdmJDYkRrWlU0?=
 =?utf-8?B?S0x5Zkp2WEtHTmJYY0pFUDR1VkJ6SFdwUGYwMTVTanQ2cmFlRGxPdHkrTDBR?=
 =?utf-8?B?bUVIMXMwc0xNc0VGQUpuQzg0cm5xeFo5Z3BPT2I5QVQwM2lXU0RTMWtOMGIv?=
 =?utf-8?B?WURDSytMcG1KM0llcnBFYnFERU4yRGVEQ0U4T2N2alI0aTVtbU0rT2E5V2dS?=
 =?utf-8?B?OHVmM3prZEc2Y1NmcHFNWVgwRmpHYnh3a1VTTjcwVjVlZ2xRZmpMSEpZTFgw?=
 =?utf-8?B?UEFpdlFGeVUwa3pWa0JydzJOKzlXTlQ0MVhKQ2szdzBOWmsrTVRUbzR5d3VX?=
 =?utf-8?B?Kzg1bkdrbkVseXJXMm1lRzVSTVR5RUFIS1pHbXh4citJR0JpNXBFcTg3WS9n?=
 =?utf-8?B?Q00wM2xSWTc3NnVrU21KYUY4VCtlUEp3dEtSRitYNWx5MC9wYkd2ZElOblVk?=
 =?utf-8?B?OGhqaVNmV0poSjg3MmpSZHJ4Q3lweW1hNXFoTE1TaXlocS9rZWpDd05RVjRF?=
 =?utf-8?B?cEhZRFgvK0lBbGg3clJlaDBNY3hLV2J4UGJLeEdEUGdSTERVOUdDNTduQW8z?=
 =?utf-8?B?STZjV2lMMW9EOWhNMUFWcE9QZ0ZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <97DE70F5BC0EBF489329A39FD97F96E6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 699130ee-2274-47b0-c989-08dd7671f190
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 07:49:51.2193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WWS8npBWj0NHv+enO/oCft0/0bvfqAa5wNM09XgX2JqEpG6cl4mYeOPnIV99Jon7MO7kMB+YlXQZ039B5t7f/IbXEMY4LoV9kS2YuGUE23M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1FF629472
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

T24gVGh1LCAyMDI1LTA0LTAzIGF0IDE0OjU4ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBMb2JmIGlzIGVuYWJsZWQgcGFydCBvZiBBTFBNIGNvbmZpZ3VyYXRpb24gYW5kIGlmIGhhc19s
b2JmDQo+IGlzIHNldCB0byB0cnVlIHJlc3BlY3RpdmUgYml0IGZvciBMT0JGIHdpbGwgYmUgc2V0
LiBBZGQgZGVidWcNCj4gcHJpbnQgd2hpbGUgc2V0dGluZyB0aGUgYml0ZmllbGQgb2YgTE9CRi4N
Cg0KSSB0aGluayB5b3Ugc2hvdWxkIGFkZCBhbHNvIGRlYnVnIHByaW50IGFib3V0IGRpc2FibGlu
ZyBMT0JGLiBIb3cgYWJvdXQNCnR3byBtb3JlIHByaW50b3V0cyBhbHBtIGVuYWJsZSBhbmQgYWxw
bSBkaXNhYmxlPw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgNCArKystDQo+IMKg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggMzU0NTEw
YmI0MzdkLi41MjkzY2JkMDI5ODggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0zNTMsOCArMzUzLDEwIEBAIHN0YXRpYyB2b2lkIGxubF9h
bHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiDCoAkJCUFMUE1f
Q1RMX0VYVEVOREVEX0ZBU1RfV0FLRV9USU1FKGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJz
LmZhc3Rfd2FrZV9saW5lcyk7DQo+IMKgCX0NCj4gwqANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+aGFz
X2xvYmYpDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19sb2JmKSB7DQo+IMKgCQlhbHBtX2N0bCB8
PSBBTFBNX0NUTF9MT0JGX0VOQUJMRTsNCj4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAi
TGluayBvZmYgYmV0d2VlbiBmcmFtZXMNCj4gKExPQkYpIGVuYWJsZWRcbiIpOw0KPiArCX0NCj4g
wqANCj4gwqAJYWxwbV9jdGwgfD0gQUxQTV9DVExfQUxQTV9FTlRSWV9DSEVDSyhpbnRlbF9kcC0N
Cj4gPmFscG1fcGFyYW1ldGVycy5jaGVja19lbnRyeV9saW5lcyk7DQo+IMKgDQoNCg==
