Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BVaL4yht2n9TgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 07:22:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0256C2950EB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 07:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF55010E2F9;
	Mon, 16 Mar 2026 06:22:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LW2/v/qz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7732910E144;
 Mon, 16 Mar 2026 06:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773642121; x=1805178121;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QuQJcfTniZsE60m0LqGKgEZ57oqJMtCpam2p6xG0LCY=;
 b=LW2/v/qzGI6/Z9as40towQJsB7kKGbsKNFjtrpm7L2PT7WWFBsm1bgV6
 3W6XSsEfnR/oorm5nRYlagkaHpIevfwsESYqPcoxdGOxqkfcdr1PGvlxt
 OSQuObT6tq1hIoXc9iEkTyt3flitoYB/WQfiNRo6ZhBASLpJQs8syBD4D
 wJDAqBSEQxx/wxuLDM+lEQA5QDE3tzfYdTjDwXSa2s2QQnfNxuTtH6W3K
 RwuHffYbFpFI5e98FbevKKsPfgRUkihY/xbE0C2R5z8iV4ARd05czTwqT
 SsQPC1tzzuEILskHaoc67t/f1jcA4dFFq6m3JnLlv9OMhBbRvZIce6Qyd A==;
X-CSE-ConnectionGUID: suI+2P88TvaFIwV8OhNEMA==
X-CSE-MsgGUID: Jw1uplBjTKyLWVv5Hs7u0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74625746"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="74625746"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 23:22:01 -0700
X-CSE-ConnectionGUID: owG8dxnfTvqHXmoxjMo59A==
X-CSE-MsgGUID: /FV9rbFbSUWzrYzoYsVHyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="224061419"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2026 23:22:00 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 23:21:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 15 Mar 2026 23:21:58 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 15 Mar 2026 23:21:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MI7whGFMyjRW+KAm1xVI+m8WMZy92U+IAhFWbngU7Due7Ag9Jb2frZEJaan7/VMsoOy2AiMBXqW2VE1cxDTlvUDlj79VZIsjo+tPmhgu9+FHQXaZIA9m2zN1zworkl4GBxmDBnHhW8zAauZz39gIa9pi3znFXAzAlDYuu3rjfwGDBk81Bd1Mhae0DZhwryqSiRGbrY2rZJRBJSWua0VdUroWU7Zl3OAWxvRPceXwmJT/XcSUbqCiLPG1hBVOiuYTwuu7EgMOoi0WImAuSivigf8GS0dhJrTBNkJ8UMxoNpNVY3F+FfXt3fpvlbM5l1Lb09F56IPrLJPFzQEYBUZk7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QuQJcfTniZsE60m0LqGKgEZ57oqJMtCpam2p6xG0LCY=;
 b=jSAe0G8oRHI82vCvvfb47dPz5rqbx73yVirTEqdiCJkirdtuHI2Hehys9GJAGo/McdaJKJ7cfhnmwiu3wASH0FogSGox9kBdVNSx9H7tFdCa4GeQoEKKX3rvyMjx/+nCoHG3/rHPleapt5xaB7kkbivsIBqxD+0jVqU1smb/+AO3QbYxtt2jE/Tp/D5exS2n2i8GuScImEPcLNtTtcX4VRgaKivhSIYTpNHfHcJ1ZiCmBgAjWJqkvX74WZYa5ToNnCtEWYv5o1yoed5S7qn1eKNEJ6BJV33iN6ZwMjUxVXyHKuL7tRSEHGLhJCcWcaJnHxUe4LQ8TE5sABTv++DqaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7092.namprd11.prod.outlook.com
 (2603:10b6:806:29b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 06:21:56 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9723.008; Mon, 16 Mar 2026
 06:21:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>, "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: RE: [PATCH 2/2] drm/i915/psr: Compute psr_entry_setup_frames into
 intel_crtc_state
Thread-Topic: [PATCH 2/2] drm/i915/psr: Compute psr_entry_setup_frames into
 intel_crtc_state
Thread-Index: AQHcsfyLf16aPv5+v0i6fY6rpdxnNrWwtXEg
Date: Mon, 16 Mar 2026 06:21:55 +0000
Message-ID: <DM3PPF208195D8D80A172ABD37CE474F8EAE340A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260312083710.1593781-1-jouni.hogander@intel.com>
 <20260312083710.1593781-3-jouni.hogander@intel.com>
In-Reply-To: <20260312083710.1593781-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7092:EE_
x-ms-office365-filtering-correlation-id: 2e4bc16a-799f-4f79-559c-08de8324528f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: n7U4aXmxwl5lLkINbDTayiuMTWvipcR5o1tJsib/LUZsX9B1rebpBmvRQZX1/qC1QloMpCqPmRGDjyLPiK9VnoGcETogrQPIqUjo3eBSVDaJ/Y3UbZtaqq7wj388HCgXIs+Ph6pQSdEFcplGmW2i3xa879ZyKEzucvZABU1JXvrPOxNd1XVDW7VlFWr7hNp4OcW5gOOnddkMzIoKvCuzGiH3KfyJ4gu1NMIltDqwZPUKGSag0Y5p7cdUqZZRU6UbHArLd6kJnfGv2PeEdKrP0XTKeU8FIrgV1wnisy2doVUJSp/tMppJVlFh/HPBbg7OMnNBCkvCdG3gZEEa/w4ALrkLomudf/tK30uzcUNosUBg0APpmq0mRt5982TdYpGTa/vcWsH4cZmnX25Fwk/Jd48/swweJbFwumiCKvfzCDk2XVqEQ78TU4yMjixJoiEK9JOlAzcHNSwzqGSQ9LJnwpFAXnmZzMmAvK/C+YIllq3PHYv6vdjtx9d9aFWbsEvtfuX13oWiYhOoKlpbyhpP9TmxDmjjpftOcs02A9ZWBNpLGTR3rCKwA0PshFSRbnt5pZdSnzaDIsFMjcFVnUhoW7aoykIrIR3ItL245TQaVWQj9xodl24w8n2I3n3vhHo/R3RMT28GnCjkJ7Vcdb6AyYLQ2M6muKgem2/cPU5X7co0t6m2wWKOboLRGnM75K5Rbao88c8pvnqIHJo9EZpHFX/enH0T+4Ra0NfSE4pPkEQmO55qqK3zBjcqtcRyx7C4RT4+g4wyfUaeaisSsWgIWkE9qnUn5Kn9G8JVl8LPlnM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWFiMEhSdHNFaHlYWlJIMjRsaDhqbXBNRDFCOTFkeDJEa0thMUtzb29CTURB?=
 =?utf-8?B?Q1NMK28wdmtxV0o0Z0VBcm5GUXZRZUZBUGhiOFJLelJPTUEzVkRLdnpjeDBk?=
 =?utf-8?B?ZFRWZWoweTZOMUZBcXFNUmxFaEVIS216c2V2K2poSC9XTXV4QlAyRUNlOENJ?=
 =?utf-8?B?ZllFbmhVc0tDenBtbU5jTCt2NXd4bXBvUEJSYXZOQmxnaGlqaGFUZThxbzI0?=
 =?utf-8?B?RWdhQ0JRekJuS1JqYkpsZHZSTndUL3ZGa3h5YlhvTFdMYStaeFdxaDFrUmh3?=
 =?utf-8?B?aUhWSytqRnFwTUhwRE5JeG1oV2hNVUwwdURXUlBRcUQ2S0wzbDNlK1hYMnZh?=
 =?utf-8?B?RGpqOVBZUnJBOCs4VWRKcVFiZ05kaEg4OG95dEt5V2pRWldkZ2xZZkQ1ZFo3?=
 =?utf-8?B?NDF5QTJjZUh3dHF2SmNmdnZiTmhoVWhiR3hzcE1QVDR6NzNqQStkdHVScnNJ?=
 =?utf-8?B?Z1JnNVNoSXA0K3lWNnJRNzdPWVBDMzZNc004WEhzd1AyRWhaQlZSVjN1alRT?=
 =?utf-8?B?bVZwQ21nODdlTkxsalhXbldaeVVFZE16Q3BPRnlRNlgvS2VsbWlPazFwY1NV?=
 =?utf-8?B?eFdRQnIrdk9DdHFYRi9qa2cxWkpLQVhhd1ZkNmp6SFdtV3AxbG4zTWpadUlM?=
 =?utf-8?B?OFA3WlhIUnhWWDdFbjhvOWVaZE01MnAreFhWNmlEQ2xGcVY5ZDhqTmlDMDBz?=
 =?utf-8?B?aVkzQ2p2UG4wZDEzOWNuTG9ZU0kxRUZEaGkvY2FxYXJ6TkU4MTF2aHczZFJE?=
 =?utf-8?B?eWFsWGpFYnFzL2x6NkF3TTI1L1B5Y0VkVzg0cSticHhzVUNtb2dQRVJib2J2?=
 =?utf-8?B?WXlQTnA0Z2k1ZjZYOEx1WGZuN1o1YkpiVzNEK0N3R0xQYTBQS0hSMWI3M29z?=
 =?utf-8?B?cFMyRjhnN1NlNXRLajZjN3g2cHlzemJpNG10M1pxY1VhOXdocTdlRGlWa2la?=
 =?utf-8?B?WS9CWUZHZW9FclRYcHR4OUlYckpEV1FzeE02M0dzeld5L0Fsalh4QWxMQmpT?=
 =?utf-8?B?ZllmVkNlVTgwSzVNMEhVc2JtQmpTMFV0ajNhMmhRZEZ4Vy9xenhNNmVlTHJ3?=
 =?utf-8?B?OHk1cUhhSTd0T01FMGFabDlodjI3T3JlWldrOFZuekpPc1VUbDFMdkY3cVor?=
 =?utf-8?B?WHphbHNOK0YrN0tDZm1RNkhJbXk1RXlPcGhXeEc5STZSWm9NeUtCM3R0RzFm?=
 =?utf-8?B?VEFUZHZjWEZYOHhPMGticmNzc3JUZnRMaWYrbmZ3SUdVdWFDYUkxbHZoNm4x?=
 =?utf-8?B?bFdCSmZtZGNQa1pyRnFpNVVLbFVqZVozOFArYkc5KzY5QVRXbTYyMnFxMHd3?=
 =?utf-8?B?RVBxdFZBaFFUbWtYUUtsMVFqOUZyZEoreEs3VVZURjdmUFZab2RjTW02Sy82?=
 =?utf-8?B?WlQycUxsTjFsbEQ0a0JqK0xDalVLT3FlbjhWT2lLMFpVRWFtcFY5NitNZEVL?=
 =?utf-8?B?MGU2bzFCdUN4dk5HWHJJb3M0aG1Fdkk5dCtFek8rSGhJa29uME4rYnR6L3Q5?=
 =?utf-8?B?RUl6NUp1L2ZpNFpyZ3VHcnY1VTNDU0MxOHlXM01ZdmpwTXZIbTBURmczK0F0?=
 =?utf-8?B?b2JRdXVvTjcybzhTS1ZuMXVOdGdHU1JHd2M4dmhFOHpmWDJlWmtwdUxTZldz?=
 =?utf-8?B?RUFFUEM2c2VLU2ZXRjZZbXNyd24wOEFEb2E2em01VFFRV09kTVA2ZHMwejE2?=
 =?utf-8?B?TVByNUVGR2RucG1md2RLcm92N0Z1a3FwYm5QRzZSaGU3NkxlblhSNmZSU01i?=
 =?utf-8?B?b210TS9NcExWTmdqT1Q1SHdEVWJYVU9SdDdLcklLdnUwc2hsckcrRlpZUnQy?=
 =?utf-8?B?bkJ4c2kzdE5tT3BmMHJzYW5DdDFiUkU2NnQ0ZTlzb0QxN1pJbkNESE5kTWti?=
 =?utf-8?B?WWk0bDdSN3c5V0hjL3lGZklkbTc4T2g5TTVRVzRhV3BETlNNcmR1QjJXN3VV?=
 =?utf-8?B?NlJkVmQxMmEzY0RBQkdOMGJnOVJmdDQ5c0xvdG5uV0E1M3FWS21IUDVyZGdU?=
 =?utf-8?B?ODgvcS9adXd0eFZXRFNSa0xLQmFiSS9WOFV1SDVVRWxzU01JZVpMUTE1dUFB?=
 =?utf-8?B?TTlaQUhSWHQwM2xpbFVSeE1ONXZOSkdUVEpYOGVUdllmeVNUek5hR2tsR0I0?=
 =?utf-8?B?L3o5Y2xHS2gyb25KdWV2TUdXUFkzUmRLdjlpR2Z5VC9wb0lKOGhSN3BrbExI?=
 =?utf-8?B?Q2YxeVdUc2JHMUxOKzZOckllQ0Z5VFhLd3ZlcVg0ZnlzVGxLMlN1RkRPeld1?=
 =?utf-8?B?KzZubFM5K1gvVUdVamt2T2xnVWdYT0g1NXBsZm05S2JSRjBnRkxnSHZBeUJt?=
 =?utf-8?B?N1I2eUhvUkZkWjJ4UjEyRzZnVDJSTjI1ZVp6TGxHTFVNMFp3MEExdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OMRyTS+RmN2qdkshTsiVf25Ux8N6fbXn/9XmLZTK/Ni9ODslMp84bFWv7MTf1lb/WCx7an2ZechQMIfYF2z3xXAPCKTaoVpnmbw7RiqGdOHyDaf8Umf7TrbYh9xnxkoGBnxZOOe4BKwoqSgUPvQoeso9CRW+btXgSDmTwBMMi+mhKdNjI9xa6Y0PU6X3MtpPZMdxXnZwPbC2Fk6joxm5le1n0TjVUzgpF+hZqooYTJzfkho1v+IlxUk42nj6dcyFNqe+dQQk2Nr9s78zAC40HvaG2EoybPGW/yujfOiYhGoNhkAxdw82n2SnFX7Cf13e0qXCk3baOZjSwCSryfSGQw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e4bc16a-799f-4f79-559c-08de8324528f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2026 06:21:56.0148 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jrSz6W9NsK4am00QuA22c6DmJqqB6vjDDWxbNnsfw6SqDcxRYPEXBHugLhtQzmh6iPiajprM+j8Pa8lMZYaRPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7092
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0256C2950EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9wc3I6IENvbXB1dGUgcHNyX2VudHJ5X3Nl
dHVwX2ZyYW1lcyBpbnRvDQo+IGludGVsX2NydGNfc3RhdGUNCj4gDQo+IFBzcl9lbnRyeV9zZXR1
cF9mcmFtZXMgaXMgY3VycmVudGx5IGNvbXB1dGVkIGRpcmVjdGx5IGludG8gc3RydWN0DQoNClNo
b3VsZCB0aGlzIGJlIFBTUiBlbnRyeV9zZXR1cF9mcmFtZXMuIFNpbmNlIFBzcl9lbnRyeV9zZXR1
cF9mcmFtZXMgZG9lcyBub3QgZXhpc3QuDQpXaXRoIHRoYXQgZml4ZWQgTEdUTSwNClJldmlld2Vk
LWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiBpbnRlbF9k
cDppbnRlbF9wc3I6ZW50cnlfc2V0dXBfZnJhbWVzLiBUaGlzIGNhdXNlcyBhIHByb2JsZW0gaWYg
bW9kZSBjaGFuZ2UNCj4gZ2V0cyByZWplY3RlZCBhZnRlciBQU1IgY29tcHV0ZSBjb25maWc6IFBz
cl9lbnRyeV9zZXR1cF9mcmFtZXMgY29tcHV0ZWQgZm9yDQo+IHRoaXMgcmVqZWN0ZWQgc3RhdGUg
aXMgaW4gaW50ZWxfZHA6aW50ZWxfcHNyOmVudHJ5X3NldHVwX2ZyYW1lLiBGaXggdGhpcyBieQ0K
PiBjb21wdXRpbmcgaXQgaW50byBpbnRlbF9jcnRjX3N0YXRlIGFuZCBjb3B5IHRoZSB2YWx1ZSBp
bnRvDQo+IGludGVsX2RwOmludGVsX3BzcjplbnRyeV9zZXR1cF9mcmFtZXMgb24gUFNSIGVuYWJs
ZS4NCj4gDQo+IEZpeGVzOiAyYjk4MWQ1N2U0ODAgKCJkcm0vaTkxNS9kaXNwbGF5OiBTdXBwb3J0
IFBTUiBlbnRyeSBWU0MgcGFja2V0IHRvIGJlDQo+IHRyYW5zbWl0dGVkIG9uZSBmcmFtZSBlYXJs
aWVyIikNCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiA8
c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2Ni44Kw0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDEgKw0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgICAgICAgfCA1ICsrKy0tDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+IGluZGV4IGUxODlmOGMzOWNjYi4uZDNhOWFjZTRjOWQxIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiBAQCAtMTE4OCw2ICsxMTg4LDcgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgew0KPiAgCXUz
MiBkYzNjb19leGl0bGluZTsNCj4gIAl1MTYgc3VfeV9ncmFudWxhcml0eTsNCj4gIAl1OCBhY3Rp
dmVfbm9uX3Bzcl9waXBlczsNCj4gKwl1OCBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+ICAJY29uc3Qg
Y2hhciAqbm9fcHNyX3JlYXNvbjsNCj4gDQo+ICAJLyoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDdlMGU0YzNiZjk4NS4uYzEzMTE2ZTZmMTdm
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAg
LTE3MTYsNyArMTcxNiw3IEBAIHN0YXRpYyBib29sIF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gIAllbnRyeV9zZXR1cF9mcmFtZXMgPSBpbnRlbF9w
c3JfZW50cnlfc2V0dXBfZnJhbWVzKGludGVsX2RwLA0KPiBjb25uX3N0YXRlLCBhZGp1c3RlZF9t
b2RlKTsNCj4gDQo+ICAJaWYgKGVudHJ5X3NldHVwX2ZyYW1lcyA+PSAwKSB7DQo+IC0JCWludGVs
X2RwLT5wc3IuZW50cnlfc2V0dXBfZnJhbWVzID0gZW50cnlfc2V0dXBfZnJhbWVzOw0KPiArCQlj
cnRjX3N0YXRlLT5lbnRyeV9zZXR1cF9mcmFtZXMgPSBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+ICAJ
fSBlbHNlIHsNCj4gIAkJY3J0Y19zdGF0ZS0+bm9fcHNyX3JlYXNvbiA9ICJQU1Igc2V0dXAgdGlt
aW5nIG5vdCBtZXQiOw0KPiAgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+IEBAIC0xODE0
LDcgKzE4MTQsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3JfbmVlZHNfd2FfMTgwMzc4MTg4NzYo
c3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiANCj4gLQlyZXR1cm4g
KERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDIwICYmIGludGVsX2RwLQ0KPiA+cHNyLmVudHJ5X3Nl
dHVwX2ZyYW1lcyA+IDAgJiYNCj4gKwlyZXR1cm4gKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDIw
ICYmIGNydGNfc3RhdGUtDQo+ID5lbnRyeV9zZXR1cF9mcmFtZXMgPg0KPiArMCAmJg0KPiAgCQkh
Y3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpOw0KPiAgfQ0KPiANCj4gQEAgLTIxOTAsNiArMjE5
MCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdCBpbnRlbF9k
cA0KPiAqaW50ZWxfZHAsDQo+ICAJaW50ZWxfZHAtPnBzci5wa2dfY19sYXRlbmN5X3VzZWQgPSBj
cnRjX3N0YXRlLT5wa2dfY19sYXRlbmN5X3VzZWQ7DQo+ICAJaW50ZWxfZHAtPnBzci5pb193YWtl
X2xpbmVzID0gY3J0Y19zdGF0ZS0+YWxwbV9zdGF0ZS5pb193YWtlX2xpbmVzOw0KPiAgCWludGVs
X2RwLT5wc3IuZmFzdF93YWtlX2xpbmVzID0gY3J0Y19zdGF0ZS0+YWxwbV9zdGF0ZS5mYXN0X3dh
a2VfbGluZXM7DQo+ICsJaW50ZWxfZHAtPnBzci5lbnRyeV9zZXR1cF9mcmFtZXMgPSBjcnRjX3N0
YXRlLT5lbnRyeV9zZXR1cF9mcmFtZXM7DQo+IA0KPiAgCWlmICghcHNyX2ludGVycnVwdF9lcnJv
cl9jaGVjayhpbnRlbF9kcCkpDQo+ICAJCXJldHVybjsNCj4gLS0NCj4gMi40My4wDQoNCg==
