Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RupPC8xwJmoqWgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 09:35:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BF265395C
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 09:35:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="flEGGN/Y";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5CD10EE42;
	Mon,  8 Jun 2026 07:35:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB1A10EE41;
 Mon,  8 Jun 2026 07:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780904136; x=1812440136;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U4nZacc+JhSTaXpXHiL4SZD1+qz/1nHKKQWT8j1cH4U=;
 b=flEGGN/Yf2ImzZCjkErPXsHp6Qtfevzc6SnbR7cqhpzCWUE7jwLsyxSb
 UlibOGO6EEivliRUpVm+scjS0K5CZuupXztwTxBO6AZDGcJfsNKXmixNs
 EOdEqSST/Qa9geHiHjf4Mm2dG7LJPB6hT3hvJR7ymyuqfiOcMPkU7svHP
 t4ZZaJQjksIJTXiiTbeTUaDFjc/iKbBrmqd+lUr5ZZRUc+8Xjv5/k7UwZ
 vBvqyx7KWWOtR51pUn29UbujYcNtOX/YwN1YbM/K2CNPCvmf8nkFRjkfq
 TTAdIA6duqrblvlPsE1IbRTUokwplmdZ0nVxGLrD8ZYGaxvJUr8DlGxMB A==;
X-CSE-ConnectionGUID: ZAHGoIBcSyi9V0nVyIe37w==
X-CSE-MsgGUID: CpRxBDfbRT2gsRDIZByltg==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="84207394"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="84207394"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 00:35:35 -0700
X-CSE-ConnectionGUID: urJvxBELSGm6HPXVRDd7SQ==
X-CSE-MsgGUID: leU6bSP4Q1KFGCW3T+8daQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="242498406"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 00:35:35 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 00:35:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 00:35:34 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 00:35:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y8TfVaVqt+sGi5TSH+jMipNumUnnvyYii0Jpm5daIV6hvXTzmTrqUhsaSqu7/BbfPk8+sDw1qX9r75ODbzz8N8akKs/SnyXyyXKHtxCLVIpiK0tbMJhl9CGMDvtpYbIC/PZB9qK6jrfFhZWFkwqOtfbomuugSfklen5kOKCmBuZW/CQQxXJZtxw7vXvLAl03xrdrvfaUh3jJ7yR4D7ujJp8C+rPF/6aTUVOR6QugzCyFy+Jli+EJvG+Jji8Wm94Ea6wGfKvE9jIqZ0JRFnPFplUtQwKSIr95sRM+ED9efaCPh8AVIq/7KtKmXNRMfOfzkDF2QQKNZXWrWIK8gfNTjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4nZacc+JhSTaXpXHiL4SZD1+qz/1nHKKQWT8j1cH4U=;
 b=KgxVmDvoOwWTtudOYNNYIjYgPtIDPzKXaZPqukzSI3z4xY3641frZUGlOLx7U7dRNW05c6sobaOYzxZLPlZG+EiULteiehg11SFFzsOVWYZB7+VMA4Dn3JXCtV6KoBbxmj1uiPlmVSKCPfrsBlk61mwV2rxuPVaG8Yylvoh/cMSYl/RUBGjeVL1W6PQTdHK/u3D5yQt7uxa6byzI/Z1YXh/2fufHRZpHPbd1oyVqo1oiKgkwbGvI0GYKN1KWuQZDIJmFnEz736hGHZX9slj2ujxOzDxJJnl59gL9fuMH0ozh6nRG5krqaco78ktpF5cG+a+QHzN0JyHHNTpPctaupw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS4PPF451ADEEF0.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Mon, 8 Jun 2026
 07:35:32 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 07:35:32 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 13/22] drm/i915/dp_link_training: Add helper to mark
 link training failure
Thread-Topic: [PATCH v2 13/22] drm/i915/dp_link_training: Add helper to mark
 link training failure
Thread-Index: AQHc8a4dH0yElXUczkS82b/W4XnJLLY0T1Rw
Date: Mon, 8 Jun 2026 07:35:32 +0000
Message-ID: <DS4PPF69154114F16806A516D4DC2EA760CEF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-14-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-14-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS4PPF451ADEEF0:EE_
x-ms-office365-filtering-correlation-id: fd3f9143-b385-451a-0807-08dec53085e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099006|11063799006|4143699003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: yXRmv82zCaGeRM5lQWFZRjGz+XaYLhwncaDlvKiRGd3wM9ud3900fffMGbuo2NUieR/evPvk+KhKVmW+3BbeHuyuK2DYOCu44/G5wphDVS2J5RzRkDAsPaxKiB7SLJCcmEsO2g4bWZNo0jdIDEyu5aO2gwAx8eq6yPtXFZZ++o+K3IfIvTPKMI6MQ7i4tkD+t56+5g/I6j5Aot+AphD9vLvey11JJsyQzAm4MClxQvpckF64W9VHM3GAWL9xrOcASRF3K4DzsvV03YwNtyIJP07Sjp8qcsWYI86f/nFnx+ML8W6HPBdyMro7i5vmekitsqaklY0IJ79gqLRKf2SVl3v6p0+t4dsvlmxLWFic553PxraHuWmmKVKrKkaCk36bhK9MGvJY6QlAL5+fSU9VzWErmGoFBVEC6EBMMPM0zoE7WeJLE9RgbYmB674HgvWh9cgcLTLKCqoiVrFNXUL40bTrt2Z2AtmldzLZBn6hk60A0ejrIRzvtDP2p690quTFZ5FZHcCsdHMSKxO9ML/VaVeF95AwhO1tlZykXpAf4urPw9RA7+NAn3Uf8WRXtiq5es5FujhKxSvWHCSK/mQzeAJU4A+mMSD7xH0k7pJqm0UI/B5MjP9ORGYDqiVz49FiLcaFGfFEoHm6OGwIIR0bi+yHJHrncgIe1bbfj53y+3UDZfQe5cvNQi4EpWtWxqo/iHIWdSHCjAYRVuk9VaDsNWdvQbwMVVkMoZijiqj92gLENI9P9pqFjvDXFLM6wnZl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099006)(11063799006)(4143699003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vm1tbUJ2SWN6TzhzdXBVZ3FCdlZjd29RemJyMEplNUJxWmw4aENnNzNMeGlr?=
 =?utf-8?B?QmxLeTRZa3JoL2hwSTZCU08wWFVPNzFPb2NGbmdQTUxIUE01dFVtdGI4QXh0?=
 =?utf-8?B?YXFWdkQ0c2gyOGxJdUdsV0EyQXgrMDBiTzJWMmZGN0tiRlJGRThHa1BjNXM3?=
 =?utf-8?B?SmlyNXdtNjZoQ3YzbU8xWmRRSUVldDFSNGZtVFlyK0pqZ3FMK3NDUEhSaDBa?=
 =?utf-8?B?MW1iWGR2RjhkYnduSDVNV2tzNWVyVmE3MXVlTUVhSUFwVVhvQk92aVhUZmFv?=
 =?utf-8?B?b2t6cUNHWkJpanpSSWVJSmNpZmNQWUt4UFlPTjdnNGh4Q2VqRExKVC9laVIr?=
 =?utf-8?B?RVFQcTcwcDhzaWkra2tsQWVIU1U3ZGVCWmRMUVNSRlhFVy90Nmh0c0FRWVhn?=
 =?utf-8?B?WUVFdUFDV2pBeTdHWitZSXh0ZmhmcWFkcWhEb21XKzZHTzk3bFVpVTFabDAx?=
 =?utf-8?B?OW56eEVaSmpUOURpanhxVkRDZmpZYnJWSk5xd1JVd0phaFRSM1ZlUkJiODFE?=
 =?utf-8?B?WXBoSlVwKzJTREJjdFM5R0hDeGVZWVhWL3V4bTVwYUxNRVVCdFlZMG5VMkhl?=
 =?utf-8?B?dkdsOTJYcXdoRnZJeTlPRktXek5jbUhoN3gweExJQ1JEK2JqYzN2bW5WL2dy?=
 =?utf-8?B?cmZrTko2SjU3NU1VQ05aZFdSVldrb0ZBMWx6blVNak40UVFnQnNScGYxaGgw?=
 =?utf-8?B?L3o5OGdHOHVZalFaaVFnU0NmM3FzV0VSUW9YMFpLUjJuR0RqclpaRzYyRktj?=
 =?utf-8?B?ZEIrOG1XdVRzNi9uaUFpQ1V5VXBmbWNCcFF5Y2wvNis2OU1TQ1Q3VWRQcFEz?=
 =?utf-8?B?cjlQNWl0NEROamNoUVBNRStwM1QwNlpHNGl4VnZQdk1uZllzdlpBd2w5M09q?=
 =?utf-8?B?bUl6dUIrRTJxU1VXcHc2eWs1aXdZblVVdHo0Mkt4cHI2b1dLZlE2SkNtVTZS?=
 =?utf-8?B?Y1RVNnUrakdOOTVSY0ZWckd1SlJsejViSkx3aHltZUxaY1lUYklueEo1QVdx?=
 =?utf-8?B?WDBSNWF3ZFZEZVIzTUVLczFtdTB3TDRqWkFTVUd2V0NBbmxEdWgyamVTeHcy?=
 =?utf-8?B?WkdqT09STXdXSzFhQjdXMDk0UnMwYzdJY3M5cFl6anE1UnA3VWdzcmMvZGpL?=
 =?utf-8?B?ZFBSZFZGUEVZU3loYUhFLzB6aktleHpiUlMxc2RLcEVGLzMvUjVDUWRGclpw?=
 =?utf-8?B?dWdLenhuN0d5YngvK2NlWGJDSG9VWVg5ZUhjN0RISnE3dGpYK1JjUHJIaC9s?=
 =?utf-8?B?SDhPY0tjOWZXR0JlM2lqVllLNnBIemJucTZkUTRNRm9PWkFxZEtzWE8wakNE?=
 =?utf-8?B?TjI2OXY1SnNoTzM1OU1zWHBwNnl3L0pyTDJ5WlY1VEFDRUhTRG5YeUJtNjNM?=
 =?utf-8?B?aXhjL2kvZFJkaERQUDlrVXFCbHFpS2NWRE9rTlNSeDNheXFsQjRsY2dVUjdl?=
 =?utf-8?B?aERMTmVpdVV2T096SWVEcnJxN09vRHU5bzJXZElTMDM5eW9JU3k5QVNvNW51?=
 =?utf-8?B?OFV0Sk9LMWxpQmNEUUpsekFUVVpOUGNHR3VndFpBSmhpQXdzbXRubEJyYmhy?=
 =?utf-8?B?Tktsa2d3Nms4bXVjZklZekU3cE5GR1A0eTAzSEVsM2R0eFQ3QUNtWDl1Vm5o?=
 =?utf-8?B?RXFhNkwwM2FOS0lwbUdMTGR3WHVBZUxVSzZxMzdwTUxRcU10VTlhQTg0Ymg2?=
 =?utf-8?B?T0xmakxwUGVIajl5Mm5PSzVJbFk3SFdZaXBhSEh1RHhPOWlWaTVzNk96YTBu?=
 =?utf-8?B?RS91Wk5UK0dhN0huTGdMQzA2blRTL2JMNUNtL2lwNjI2VWpKVGJqV3hFTG1y?=
 =?utf-8?B?ZHpQbDJJNlBoUmhlNFphYUVSbC9yT091Z092QllQblI4L1Y5SFBwUS9LRks3?=
 =?utf-8?B?WmZSVzc3c1NJQmY5UEVSa0tOUlZOdlFzUWc0YmtDOEtWTTdnYXpmaElIWlV1?=
 =?utf-8?B?cTMvMjI5WEZQVHgyV0ZCV0NBTTFnZ3Y1bFFKTytSdTNsajVJeXFFU3N3TTgx?=
 =?utf-8?B?OEtDMlUyNW1kdldUcGtaakdIOWFoWnZTb1lzUTZqcm5TOXI4aEZPdXlyWk9a?=
 =?utf-8?B?MnBwcHNVUVZRVGFsdU16Ulo0cVREL1NubFhibFd3c0RuVzFpcUtUNWRrQjZx?=
 =?utf-8?B?ODJiQUNmcDB6eHBGcURXaTg1SWpNcXBaNzU2dGt6bGJYV0V4VjJnRHNHNi9o?=
 =?utf-8?B?TmxYeEloT3poSkppVTZBRWF3NjBhOXlTQVRYOHZ4VG5UeWtuTVJHdWZ0VHNp?=
 =?utf-8?B?Y2I2Mk5Mcnk0SlJzd0p0OUZqOW9mYlZXUmZ5cnExaUN5VEJsdTNSa3Zvell5?=
 =?utf-8?Q?P2+eOMSOFLRcKGIAGs?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BWEP57V3TW6nUv5355tIcfHGpfkF4hPll4PqeuL9Q2MlgQWeQ/hvNeG3EInW6ddCq6cmaBozGGfHzjQVkxxrvjTIxuPZvlWQq2iOzkeuqDFjEQDEHb6LXEcVXvu4hV1/gbbu5+D4c1mYWteAxFK0WEFR3Gnb3xIZEbGv4JSpqzXVOUAyH3dUOnBcjjLHuDIPhqDmpFBsvDVs5fyq+qf62e/ipe5CCwxDOv6pcYkvd6UFySDWiIAxD2rVF4mk5V5/AyoBo0299jmhhIw8FcuYrgXdfMxGEYATukZxG8PCzc1yzCFLMxQmeUFn8Mwuek1K1vg2SqR5NBlO4f7LVjCcQw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd3f9143-b385-451a-0807-08dec53085e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 07:35:32.8196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cv8kN6h3Z60P02+jRaPkqyq1Z3ulf/iNrnrlDAKE5Gli6d2DXUJMqeka7CkBvdHmwlcjlMNCMkaY9GrhtB0cnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF451ADEEF0
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
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39BF265395C

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM4DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5p
a3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MTMvMjJdIGRybS9pOTE1L2RwX2xpbmtfdHJhaW5pbmc6IEFkZCBoZWxwZXIgdG8gbWFyayBsaW5r
IHRyYWluaW5nIGZhaWx1cmUNCj4gDQo+IEFkZCBsaW5rX3JlY292ZXJ5X21hcmtfdHJhaW5fZmFp
bHVyZSgpIHRvIHJlY29yZCB0aGUgZmFpbHVyZSBhbmQgbWFrZQ0KPiB0aGUgbGluayByZWNvdmVy
eSBzdGF0ZSB0cmFuc2l0aW9uIGV4cGxpY2l0IGFmdGVyIGEgbGluayB0cmFpbmluZw0KPiBmYWls
dXJlOiByZWNvdmVyeSBjYW4gY29udGludWUgd2l0aCBhbiBhdXRvcmV0cmFpbiwgb3IgbXVzdCBi
ZSBoYW5kZWQNCj4gb3ZlciB0byB1c2Vyc3BhY2UgYWZ0ZXIgZmFsbGJhY2sgc2VsZWN0aW9uLg0K
PiANCj4gVGhpcyBhbHNvIHByZXBhcmVzIGZvciByZXBsYWNpbmcgdGhlIHNlcXVlbnRpYWwgbGlu
ayB0cmFpbmluZyBmYWlsdXJlDQo+IGNvdW50ZXIgd2l0aCBhbiBlbnVtIGluIGEgZm9sbG93LXVw
IGNoYW5nZS4NCj4gDQo+IHYyOiAoSmFuaSkNCj4gLSBDb252ZXJ0IGxpbmtfcmVjb3ZlcnlfbWFy
a190cmFpbl9mYWlsdXJlKCkncyBkb2N1bWVudGF0aW9uIHRvIGJlIGENCj4gICBub24ga2VybmVs
LWRvYyBjb21tZW50Lg0KPiAtIFJlbmFtZSBjYW5fYXV0b3JldHJhaW4gZmxhZyB0byBhdXRvcmV0
cmFpbl9hbGxvd2VkLg0KPiANCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
DQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0t
DQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAyOCAr
KysrKysrKysrKysrKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IGluZGV4IDZjNDgyMTlkNzcwYmQuLmUw
YmI5ZjQ1YjBjOGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+IEBAIC0xMjkyLDYgKzEyOTIsMjggQEAg
bGlua19yZWNvdmVyeV9hdXRvcmV0cmFpbl9hbGxvd2VkKHN0cnVjdCBpbnRlbF9kcF9saW5rX3Ry
YWluaW5nICpsaW5rX3RyYWluaW5nKQ0KPiAgCXJldHVybiBsaW5rX3RyYWluaW5nLT5zZXFfdHJh
aW5fZmFpbHVyZXMgPCBNQVhfU0VRX1RSQUlOX0ZBSUxVUkVTOw0KPiAgfQ0KPiANCj4gKy8qDQo+
ICsgKiBSZWNvcmQgYSBsaW5rIHRyYWluaW5nIGZhaWx1cmUgYW5kIGFkdmFuY2UgdGhlIHJlY292
ZXJ5IHN0YXRlIHRvDQo+ICsgKiBpbmRpY2F0ZSB0aGUgbmV4dCByZXF1aXJlZCByZWNvdmVyeSBz
dGVwLg0KPiArICoNCj4gKyAqIFRoZSBjYWxsZXIgbXVzdCBwcm9jZWVkIHdpdGggcmVjb3Zlcnkg
YXMgaW5zdHJ1Y3RlZCBieSB0aGUgcmV0dXJuDQo+ICsgKiB2YWx1ZSwgZWl0aGVyIHZpYSBhdXRv
bWF0aWMgcmV0cmFpbmluZyBvciwgb25jZSBhdXRvbWF0aWMgcmV0cmFpbmluZw0KPiArICogaXMg
bm8gbG9uZ2VyIHBvc3NpYmxlLCB2aWEgdXNlcnNwYWNlIG1vZGVzZXRzIGFmdGVyIGZhbGxiYWNr
DQo+ICsgKiBzZWxlY3Rpb24uDQo+ICsgKg0KPiArICogU2VlIGFsc286DQo+ICsgKiAgIC0gRE9D
OiBEaXNwbGF5UG9ydCBsaW5rIHRyYWluaW5nDQo+ICsgKi8NCj4gK3N0YXRpYyBib29sDQo+ICts
aW5rX3JlY292ZXJ5X21hcmtfdHJhaW5fZmFpbHVyZShzdHJ1Y3QgaW50ZWxfZHBfbGlua190cmFp
bmluZyAqbGlua190cmFpbmluZykNCj4gK3sNCj4gKwlpZiAobGlua19yZWNvdmVyeV9hdXRvcmV0
cmFpbl9hbGxvd2VkKGxpbmtfdHJhaW5pbmcpKQ0KPiArCQkvKiBNb3ZlIHRvIGF1dG9yZXRyYWlu
IHBlbmRpbmcgb3IgYXV0b3JldHJhaW4gZGlzYWJsZWQgc3RhdGUuICovDQo+ICsJCWxpbmtfdHJh
aW5pbmctPnNlcV90cmFpbl9mYWlsdXJlcysrOw0KPiArDQo+ICsJcmV0dXJuIGxpbmtfcmVjb3Zl
cnlfYXV0b3JldHJhaW5fYWxsb3dlZChsaW5rX3RyYWluaW5nKTsNCj4gK30NCj4gKw0KPiAgLyoq
DQo+ICAgKiBpbnRlbF9kcF9zdG9wX2xpbmtfdHJhaW4gLSBzdG9wIGxpbmsgdHJhaW5pbmcNCj4g
ICAqIEBpbnRlbF9kcDogRFAgc3RydWN0DQo+IEBAIC0xODI4LDYgKzE4NTAsNyBAQCB2b2lkIGlu
dGVsX2RwX3N0YXJ0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmZGlnX3BvcnQtPmJhc2U7DQo+
ICAJc3RydWN0IGludGVsX2RwX2xpbmtfdHJhaW5pbmcgKmxpbmtfdHJhaW5pbmcgPQ0KPiAgCQlp
bnRlbF9kcC0+bGluay50cmFpbmluZzsNCj4gKwlib29sIGF1dG9yZXRyYWluX2FsbG93ZWQ7DQo+
ICAJYm9vbCBwYXNzZWQ7DQo+ICAJLyoNCj4gIAkgKiBSZWluaXQgdGhlIExUVFBScyBoZXJlIHRv
IGVuc3VyZSB0aGF0IHRoZXkgYXJlIHN3aXRjaGVkIHRvDQo+IEBAIC0xODU5LDggKzE4ODIsNyBA
QCB2b2lkIGludGVsX2RwX3N0YXJ0X2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0KPiAtCWlmIChsaW5rX3JlY292ZXJ5
X2F1dG9yZXRyYWluX2FsbG93ZWQobGlua190cmFpbmluZykpDQo+IC0JCWxpbmtfdHJhaW5pbmct
PnNlcV90cmFpbl9mYWlsdXJlcysrOw0KPiArCWF1dG9yZXRyYWluX2FsbG93ZWQgPSBsaW5rX3Jl
Y292ZXJ5X21hcmtfdHJhaW5fZmFpbHVyZShsaW5rX3RyYWluaW5nKTsNCj4gDQo+ICAJLyoNCj4g
IAkgKiBJZ25vcmUgdGhlIGxpbmsgZmFpbHVyZSBpbiBDSQ0KPiBAQCAtMTg3OSw3ICsxOTAxLDcg
QEAgdm9pZCBpbnRlbF9kcF9zdGFydF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiAgCQlyZXR1cm47DQo+ICAJfQ0KPiANCj4gLQlpZiAobGlua19yZWNvdmVy
eV9hdXRvcmV0cmFpbl9hbGxvd2VkKGxpbmtfdHJhaW5pbmcpKQ0KPiArCWlmIChhdXRvcmV0cmFp
bl9hbGxvd2VkKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCWlmIChpbnRlbF9kcF9zY2hlZHVsZV9m
YWxsYmFja19saW5rX3RyYWluaW5nKHN0YXRlLCBpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpDQo+IC0t
DQo+IDIuNDkuMQ0KDQo=
