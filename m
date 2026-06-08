Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3361IbhvJmrwWQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 09:31:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8776538D2
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 09:31:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XUFgAEPB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFED10EE2D;
	Mon,  8 Jun 2026 07:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A891810EE2D;
 Mon,  8 Jun 2026 07:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780903862; x=1812439862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6bkP6GtnxFOMiW0cEOzPFDaFhN2g6Eu2I4771hR01II=;
 b=XUFgAEPB4KR2jm4Gbk/mNBjHI+NQx6Ly2olvmXVEU4EWN0QILyeUipmu
 SvZXCjbeCAUWmyaTpnm1nZufNt7cY1+eIqBTcMIqE47VZffB9vGtgAKAS
 fCAU+jGlTqcWfxqtgwZ76odWav3SddZzL4NzkRlx1uWPRpJjGSLX+6fRg
 jUc4Heb6+LTqjj2Mx6gxE2nhf6mBamtR33P1ucLKl3wo0/gNC99hDnJCj
 PR07E5Ejrs2vO7idutxV8O9vaS2upY8QGir/PL0ADRqqPPCzPbAdNy/IX
 W7suze02rKHozbY03LK5/F+gZ314IeEaS2PIXt+Ad2uqDyo0XwKvkf2td Q==;
X-CSE-ConnectionGUID: xS/n8DUpRqS+OnG5VCFPMA==
X-CSE-MsgGUID: IaEZi79DTG6bk4cjjdgl9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="107072833"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="107072833"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 00:31:01 -0700
X-CSE-ConnectionGUID: 0M3dAooaTdSnO6mCVWov3w==
X-CSE-MsgGUID: AWGACrGQRGqhuc09MdS0ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="247326171"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 00:31:01 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 00:31:01 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 00:31:01 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 00:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gop2Y3jJdK9NCgheec27mwzBQrYaYbhvPeT8Z83FpY70zTcPTXyLmDy132hLmNekdukArpcXEzoGDLuNIpY4iIPCIZg536ZWJBVC9qeZ8CjKTnxXY7m25US0glNsYBPcNjWKmCezxR8q6jkO7+rnbR6WXPsOAMTGfHj05R+SarqkpgFlx7KdydgSqWgmaF8ZwNDdJ+EpNiL7sQ41Y38nmoYow1eKTndBx2xoNBzrQxgBHQ3ulUuBYfeNQaZvCLw2Yj8XLf0Q++JJeJdis77fhu8/uxmEPPoRghLhzN3kOPGnofaoOpEsR4kOfXcezNyvT5MekwXJRuW71wli6U0I9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6bkP6GtnxFOMiW0cEOzPFDaFhN2g6Eu2I4771hR01II=;
 b=PEUESivR4QPfcu/hWLd4bpXhjKfv4OINIgRkyfDC46DbISPRNRi94JJuZ+XAqrNEs5xcYIcbOcrd61wsXSDuh28onC6lVqBle0R6ETiXKt9kd65DREI3UaEfOJjh10RUjR5Js42W7YVWLwDdmtsdjyvNqgZpUwPQ6Wbx7Uxsvt/UK2m7a9i21chv1hSEmb2Ajt3VRL3p1J7xIYa0mP7Q1jno9rrPVk7L3P2/mKAeZjErGJ36vk+UmWkDWMt5kLpgYc2OPiC4Hhy83JRTrkG5PcMMdvMqpEPGfr1qkAZzRlNGMYFjeo0wXChL4N+sfy7g2ulwfiOrIyVRX+vq1xsTmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA1PR11MB5801.namprd11.prod.outlook.com
 (2603:10b6:806:23d::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Mon, 8 Jun 2026
 07:30:58 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 07:30:58 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 12/22] drm/i915/dp_link_training: Add helper to query
 allowed autoretrain
Thread-Topic: [PATCH v2 12/22] drm/i915/dp_link_training: Add helper to query
 allowed autoretrain
Thread-Index: AQHc8a4g3vidisFfVk6RXqBu498W9LY0Tfzg
Date: Mon, 8 Jun 2026 07:30:58 +0000
Message-ID: <DS4PPF69154114F263E8CCA98F8B3412397EF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-13-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-13-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA1PR11MB5801:EE_
x-ms-office365-filtering-correlation-id: 8141b5b7-efbf-4cf3-6cf0-08dec52fe255
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|11063799006|4143699003|56012099006|6133799003|18002099003|22082099003|3023799007|38070700021;
x-microsoft-antispam-message-info: 7GaRTGN6OZQguidDW+eV2Hfcig+npbguCeZPZBu6DW3maX9cc2ZRXtI1BMpFF6N7AtB/EmUF/vx8GJtBqMUTT9RmwA/btI3xEmVjAIxOEHuA28a9vwlFqZ3oSNPAXtGTYNlXpXsle889N1KuIZTRztmNzwjelob6fmH5/qFH8bowvVmIFzFt5mzJJdd3jApMuf7IzqCSHpct2OTngjW5+UO45ZEcacnAUIo+e8MrV7OmjxkwUPyHrrkmji9YYYW1zGhyICxUynEdzy3zMOoqcDbxvw1spELMML7dm9XaS0H47TAFAqTJA9K9yppiO/6mCZG7SFNpMmATueMqwEk/I1CKl3NyFntWnT3zUQs6LA2CKb+3deCvsQuNaNnNSvsL3lAQyGSq+I/iXxJ00JzmVnlyFnMcHMJJNU1w0ud9b9iK7b4XQRzYG/S/zCEr+p5VlcdETz+dvSk55YqDn2vPI+++cExlRmfiZ7qwU/c1jVIIue5fwNsYmZJp8qZxXzHftpHjfyxWyFJ/WFeVj27CYWxjFZgCk0N0ul7OiYy/CeG1MMjh7fdFRnN+yHmX9Z6DBhB7K0tGuuSzkuMUwiMpqqr+CTNl6nNmExLpgLxMFSMXBJbdJzB73dKh7rL0zSneBM2/r04Ftpp8uUtomKsZJUM0OqOv1HbMB9sl51YsJ5+UyGShtYDmoO3gJFVtVWq5d6cHw7dEtPRN7dsZAlkC+EHo/neOc5LKGI6Jw8r3Hy8Yz9PZRTn84hpL7nXTZKCo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(11063799006)(4143699003)(56012099006)(6133799003)(18002099003)(22082099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MmlRNWxpYld1aCtzYVYrd1VZNTB4WjJHSU51ZzFnMnFncUx0VFBnQkZPSUVC?=
 =?utf-8?B?VndxNUVyMmw0Q2pzeDI2RnhtS0JZNnR4U1Zacjk2RkkxOFVWaWxtQmFJZHFq?=
 =?utf-8?B?MzRnbnNjNUl4WEt0aVdTUEpiRFYwZUcrUDM1UlJCb0QxWjRXeWJubENyYndK?=
 =?utf-8?B?NTJuRVo3T09JVWE1REVMMHhtWDJQU013L0QyQ3FuTkxqUE9EcVU4bGs5RjMr?=
 =?utf-8?B?VHVLMFNYRFMzbW03OGFmRnh4aVlrS1IyczdreFkwK1B5UERlblQzWHdtRWJq?=
 =?utf-8?B?RzFCd2tZdUkybUFKVy90cis4dWdwSFZsRlY4K2Qzcm04UEhROENEakg4bGNj?=
 =?utf-8?B?UTBqdXRZOW4yZ0Y5dkdTb2xhaFpBdzA0R0xSZXFwTDJHMXoraXJMbVQzcEpO?=
 =?utf-8?B?YlJFaXE4Z01JeHhxZFZSL0IwbEs1R2NnblZudEZnU1ozUjZidHdSRzN5c1da?=
 =?utf-8?B?NEJTbEwvQU84czc3UUsvRFBhVFNkWjRlczM2RlVUS3F6YTVCM3NlaUh4VWph?=
 =?utf-8?B?Myt0Z0VlNVRVOWRYcStsT2NhMGRyaTRpMmxQZ3poaW9Bd3RXa3ZsTHBvcjFs?=
 =?utf-8?B?L0d5dDJySHNBQldCVWFYNk5Ga01wckNRM21JOWtxWFBmQ1ZJaHNoY3YvbmVM?=
 =?utf-8?B?NjhObGlWTXBvNG12RnRUWkhaK1VhR0kwYVZMKzErdzk1TndIYk1jMVJycFRN?=
 =?utf-8?B?WjZMeWlxNU5Kbjduei82ZGt0Y2dEMHUvLzQwSGNmbnNTdU5jcUFsSFVWQnBK?=
 =?utf-8?B?cEFmK3R4N0RBOGVsZkFmQ2hNRWUrRVdBa01EWllWZ213Uk9tQmowV1lYRmlk?=
 =?utf-8?B?WmE5dncxQWV3YWdmeEM2Q0pzaEJ4OWFZUDh1d0l1ck5nVDlUVWFaZ3ZhTWha?=
 =?utf-8?B?TTV5SFoyZlZUV2ZreFRhQ3VGcG9OeFduQitjNEVqNWZ0eFBHQ0R6NmgzWUdP?=
 =?utf-8?B?YzhSOFI5WjBMMFlpL24rR29KczY1VkFDRU80SURsMERkMjEyQ0wxZURtVUR0?=
 =?utf-8?B?ZGgrWWoveWh1VmdhMlVHMEpxcC9pVmZHNHdobUpMb3hTWU9Hc1MwWnNvL05U?=
 =?utf-8?B?SlBtYUQzTHNTNEFiVUEzTU9YYXM3dUFVYy9tWmtLdG5zeTAxWGEvWFpObGFH?=
 =?utf-8?B?czBwcnBFK3RMQlNNOXVxRWZIZTJBcWwveThEaUNiVFlVM2JOSVlVMTlVaXFm?=
 =?utf-8?B?M21EVk9RSjg4bThLWDc4OEswNjRhMmxlYUsybnZKTTVwTVMydTkvUFZON1ph?=
 =?utf-8?B?bTFoQTdKUFQydW5xa0VhbThyQmdGK01mTGl6Sm9BOHZ2TjFURjJvK3VMMWpB?=
 =?utf-8?B?OE90YWhWM25hQk5xdWdDSUNCQlcvclJhWHdSOE1HenVOTHFYR29HdFloSjBz?=
 =?utf-8?B?Qy9YeE9iSTV1Mlg4c2EwengrVmMvUERDNzJNSmowc1FGZlA1MHFkNThPMzhi?=
 =?utf-8?B?ZzFWNUZDR2FnVXI1bCtSMm12cFpKZkZPK0J4MXFHT0hseC9DRGtDZGZjNlVz?=
 =?utf-8?B?cWIzelREdkRzM0xVRVZ5NkpaeXI1bS9kdDNtRHVCRzc1WW5FMUlZWGM2QUFU?=
 =?utf-8?B?TUxiSGMyOFFEZ0RIbGU2dll3SXJHM3U3OE9PUEhZUy9ONE95WWZadnBCenRR?=
 =?utf-8?B?Zkc4TFBlSFI5RVRRMDJSUzUzR3h4U04weHNIc3kxa2w5ek9mUmRydlg1eFRT?=
 =?utf-8?B?OXJicTU1c2p3NVFQSGFlbkJoSGZqRTJTOXlYYnB0aEFuZkxZUWJvQlk1YVlL?=
 =?utf-8?B?NWo0d1B0b2dzVlI5anhuNVQxY005eVUyT2dxeTdac1dnZkJDRktFb3o4VWFM?=
 =?utf-8?B?c0lydm16WFd4TFpiNVZRemJ1VkFoYXRBbVZ5Nlc4amRGdDBSR2NxWTZSTG02?=
 =?utf-8?B?dUxqQlVyTUVRK2xrVDhCdThhQXJvS0JGbk9SYVllNHM0d3BWYUhsL1ZYRHJ2?=
 =?utf-8?B?d2pZeEJteTFyQ1VlSkRaejMrWjZ2UUd5VUcvbUFwOG91WUQvSFRvNnozR1Ba?=
 =?utf-8?B?ZjJOSUtYYTVlWDJvdEF0a3FNZ01td1hGZDJiR1RqUnJvbU5Sa051N3FEUWo0?=
 =?utf-8?B?SkJtd1p0clppQS85L2JKU3FYS0VlcXJ4cUVaUDYrR2I0T2RwZzFWbFl0U3lz?=
 =?utf-8?B?anVKZVRpUmhyOTF5cXpLWWNPcENOYmRGVFFTNXA1MlBQOHpmOVRtZm5KdHhQ?=
 =?utf-8?B?Mk1UZUsxRngyUE9tbUNGemk1TUUxeHVUTW1QSjl5ZjNOUityMUJ6NGZDRSt2?=
 =?utf-8?B?dngzbFN0SEdLNTlOUllNSzhpb1JicFdzQXg0aTZkNmd6Rk02N3l2RktyaTVC?=
 =?utf-8?B?V3hQNjRMSEZZMjNoaHlhSHFuWDl3b09Dc1BZRi9aWmtvZE9UR3BsUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kjY9VKPAlkVX5MvLdA1tQi/LM/yyd2jU8XKAcXPAvMk6YW7c0UMDcPcp1wI4Y3XWjdneA6it+UrFreYgLchw2YrMfgiNipf0lnFlje/92T43GxD4PxXALsZ1RbusUhUZ8bPVZtsn1YLcS0YVMkpZBSQzARx3y/mPRrsHLI6bSCN6LiUKkyj2zTcPQPTnfpv4KrP/eTO8c8ajH73JQNTmQxuMCZD0pbFyLp1awJlIIUJpi0V8cKKBNwY5udX1CaiBv1oNZ8dlJFLhdjK/Wf0oUvu4FFGV1GONCMUSRhhPI7aR1RdFrDQ+ElY56m8EvRQDhE/XgP5Vc9Rz4kPF/nTT9A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8141b5b7-efbf-4cf3-6cf0-08dec52fe255
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 07:30:58.4225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zL7j4lGJMs54xXWUAROFfRAWIG8pccp6clQYmKSX5cg2EXa4uUzCcyfGLF2nv5dLt58NrOX7FqUIuEbwiPiATw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5801
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB8776538D2

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOA0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1
bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYyIDEy
LzIyXSBkcm0vaTkxNS9kcF9saW5rX3RyYWluaW5nOiBBZGQgaGVscGVyIHRvIHF1ZXJ5IGFsbG93
ZWQgYXV0b3JldHJhaW4NCj4gDQo+IEFkZCBsaW5rX3JlY292ZXJ5X2F1dG9yZXRyYWluX2FsbG93
ZWQoKSB0byBtYWtlIGl0IGNsZWFyZXIgd2hhdCB0aGUNCj4gY29uZGl0aW9uIGlzIGFib3V0IGF0
IGl0cyBjYWxsZXJzOiBxdWV1aW5nIHdvcmsgZm9yIGFuZCBzdGFydGluZyBhbg0KPiBhdXRvcmV0
cmFpbiBpcyBhbGxvd2VkLg0KPiANCj4gVGhpcyBhbHNvIHByZXBhcmVzIGZvciByZXBsYWNpbmcg
dGhlIHNlcXVlbnRpYWwgbGluayB0cmFpbmluZyBmYWlsdXJlDQo+IGNvdW50ZXIgd2l0aCBhbiBl
bnVtIGluIGEgZm9sbG93LXVwIGNoYW5nZS4NCj4gDQo+IHYyOiBDb252ZXJ0IGxpbmtfcmVjb3Zl
cnlfYXV0b3JldHJhaW5fYWxsb3dlZCgpJ3MgZG9jdW1lbnRhdGlvbiB0byBiZSBhDQo+ICAgICBu
b24ga2VybmVsLWRvYyBjb21tZW50IGFuZCBkZXRhaWwgd2hhdCBhbiBhbGxvd2VkIGF1dG9yZXRy
YWluIGlzLg0KPiAgICAgKEphbmkpDQo+IA0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcu
YyB8IDMwICsrKysrKysrKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gaW5kZXggZjZhODEwMmEz
MDBjMS4uNmM0ODIxOWQ3NzBiZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gQEAgLTEyNzAsNiArMTI3
MCwyOCBAQCBsaW5rX3JlY292ZXJ5X2F1dG9yZXRyYWluX3BlbmRpbmcoc3RydWN0IGludGVsX2Rw
X2xpbmtfdHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcpDQo+ICAJcmV0dXJuIGxpbmtfdHJhaW5pbmct
PnNlcV90cmFpbl9mYWlsdXJlcyA9PSAxOw0KPiAgfQ0KPiANCj4gKy8qDQo+ICsgKiBBdXRvbWF0
aWMgcmV0cmFpbmluZyBpcyBhIGRyaXZlci1kcml2ZW4gbGluayByZWNvdmVyeSBtZWNoYW5pc20g
dGhhdA0KPiArICogcmV0cmFpbnMgdGhlIGxpbmsgd2l0aCB0aGUgY3VycmVudCB1c2Vyc3BhY2Ug
cHJvdmlkZWQgbW9kZXNldA0KPiArICogY29uZmlndXJhdGlvbiBhbmQgbGluayBwYXJhbWV0ZXJz
Lg0KPiArICoNCj4gKyAqIEF1dG9yZXRyYWluIGlzIGFsbG93ZWQgd2hpbGUgdGhlIGxpbmsgY29u
ZmlndXJhdGlvbnMgYXZhaWxhYmxlIGZvcg0KPiArICogcmV0cmFpbmluZywgaS5lLiB0aG9zZSBu
b3QgZGlzYWJsZWQgeWV0IHZpYSBmYWxsYmFjayBzZWxlY3Rpb24sIHN0aWxsDQo+ICsgKiBtYWtl
IGl0IHBvc3NpYmxlIHRvIHJldHJhaW4gdGhlIGxpbmsgZm9yIHRoZSBjdXJyZW50IHVzZXJzcGFj
ZSBwcm92aWRlZA0KPiArICogbW9kZXNldCBjb25maWd1cmF0aW9uLg0KPiArICoNCj4gKyAqIE9u
Y2UgYXV0b21hdGljIHJldHJhaW5pbmcgaXMgbm8gbG9uZ2VyIGFsbG93ZWQsIHVzZXJzcGFjZSBk
cml2ZW4gbGluaw0KPiArICogcmVjb3ZlcnkgdmlhIHVzZXJzcGFjZSBub3RpZmljYXRpb25zIGFu
ZCB1c2Vyc3BhY2UgbW9kZXNldHMgdGFrZXMgb3Zlci4NCj4gKyAqDQo+ICsgKiBTZWUgYWxzbzoN
Cj4gKyAqICAgLSBET0M6IERpc3BsYXlQb3J0IGxpbmsgdHJhaW5pbmcNCj4gKyAqLw0KPiArc3Rh
dGljIGJvb2wNCj4gK2xpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fYWxsb3dlZChzdHJ1Y3QgaW50
ZWxfZHBfbGlua190cmFpbmluZyAqbGlua190cmFpbmluZykNCj4gK3sNCj4gKwlyZXR1cm4gbGlu
a190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1cmVzIDwgTUFYX1NFUV9UUkFJTl9GQUlMVVJFUzsN
Cj4gK30NCj4gKw0KPiAgLyoqDQo+ICAgKiBpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4gLSBzdG9w
IGxpbmsgdHJhaW5pbmcNCj4gICAqIEBpbnRlbF9kcDogRFAgc3RydWN0DQo+IEBAIC0xMzEwLDcg
KzEzMzIsNyBAQCB2b2lkIGludGVsX2RwX3N0b3BfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLA0KPiAgCWludGVsX2hwZF91bmJsb2NrKGVuY29kZXIpOw0KPiANCj4gIAlpZiAo
IWRpc3BsYXktPmhvdHBsdWcuaWdub3JlX2xvbmdfaHBkICYmDQo+IC0JICAgIGxpbmtfdHJhaW5p
bmctPnNlcV90cmFpbl9mYWlsdXJlcyA8IE1BWF9TRVFfVFJBSU5fRkFJTFVSRVMpIHsNCj4gKwkg
ICAgbGlua19yZWNvdmVyeV9hdXRvcmV0cmFpbl9hbGxvd2VkKGxpbmtfdHJhaW5pbmcpKSB7DQo+
ICAJCWludCBkZWxheV9tcyA9IGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fcGVuZGluZyhsaW5r
X3RyYWluaW5nKSA/IDAgOiAyMDAwOw0KPiANCj4gIAkJaW50ZWxfZW5jb2Rlcl9saW5rX2NoZWNr
X3F1ZXVlX3dvcmsoZW5jb2RlciwgZGVsYXlfbXMpOw0KPiBAQCAtMTgzNyw3ICsxODU5LDcgQEAg
dm9pZCBpbnRlbF9kcF9zdGFydF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiAgCQlyZXR1cm47DQo+ICAJfQ0KPiANCj4gLQlpZiAobGlua190cmFpbmluZy0+
c2VxX3RyYWluX2ZhaWx1cmVzIDwgTUFYX1NFUV9UUkFJTl9GQUlMVVJFUykNCj4gKwlpZiAobGlu
a19yZWNvdmVyeV9hdXRvcmV0cmFpbl9hbGxvd2VkKGxpbmtfdHJhaW5pbmcpKQ0KPiAgCQlsaW5r
X3RyYWluaW5nLT5zZXFfdHJhaW5fZmFpbHVyZXMrKzsNCj4gDQo+ICAJLyoNCj4gQEAgLTE4NTcs
NyArMTg3OSw3IEBAIHZvaWQgaW50ZWxfZHBfc3RhcnRfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gDQo+IC0JaWYgKGxp
bmtfdHJhaW5pbmctPnNlcV90cmFpbl9mYWlsdXJlcyA8IE1BWF9TRVFfVFJBSU5fRkFJTFVSRVMp
DQo+ICsJaWYgKGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fYWxsb3dlZChsaW5rX3RyYWluaW5n
KSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlpZiAoaW50ZWxfZHBfc2NoZWR1bGVfZmFsbGJhY2tf
bGlua190cmFpbmluZyhzdGF0ZSwgaW50ZWxfZHAsIGNydGNfc3RhdGUpKQ0KPiBAQCAtMjAwOSw3
ICsyMDMxLDcgQEAgaW50ZWxfZHBfbmVlZHNfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ICAJCQkJCWludGVsX2RwLT5sYW5lX2NvdW50KSkNCj4gIAkJcmV0dXJuIGZh
bHNlOw0KPiANCj4gLQlpZiAobGlua190cmFpbmluZy0+c2VxX3RyYWluX2ZhaWx1cmVzID49IE1B
WF9TRVFfVFJBSU5fRkFJTFVSRVMpDQo+ICsJaWYgKCFsaW5rX3JlY292ZXJ5X2F1dG9yZXRyYWlu
X2FsbG93ZWQobGlua190cmFpbmluZykpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJaWYg
KGxpbmtfcmVjb3ZlcnlfYXV0b3JldHJhaW5fcGVuZGluZyhsaW5rX3RyYWluaW5nKSkNCj4gLS0N
Cj4gMi40OS4xDQoNCg==
