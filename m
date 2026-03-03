Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIG9LE9fpmlVOwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 05:10:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9548D1E8A4B
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 05:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A3410E623;
	Tue,  3 Mar 2026 04:10:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lT9/MWAM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01F910E623;
 Tue,  3 Mar 2026 04:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772511051; x=1804047051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8q1FcsFFRxEL7ygmaE2mCag4q1GBZ5928raHXRx+VV4=;
 b=lT9/MWAMoOBsVI3jlXxge9rHJTLRISGvA882oSlWwHmqoKtTsbVqWvex
 oVjqGqsEiFsbQ+EXPyKNbnyzMN36bBFsxsa3zV4I4kuLnNlorMqKmW+3T
 tqrQ4sulFCBHziRDL/5y9hSIBz9BGJJuanYHMVgLObSR+NCw2Y5eSur3H
 ukrXtb1ZKE/Q/Qi8x4p/SGSbhSieDopGRkxsJf2ac1+v4cP3lxzWGV6fP
 TkGL0vvDEHHQkqn3+QQutNcI0CriIPRnbs8L9t2oL/tsh8ku00bX36B+k
 0q7dPIVvk17+d4ftsTsP4dQLGN5larJ05ICCwDABeangIe27PpQXCMdFF g==;
X-CSE-ConnectionGUID: Fvlwhdj2TcWxQ8GfVhvYuA==
X-CSE-MsgGUID: iwbBpJ9wScmAVr6rZHIYqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="77372561"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="77372561"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 20:10:51 -0800
X-CSE-ConnectionGUID: KOQUmGYjQ4u4G6O+1Rj2VQ==
X-CSE-MsgGUID: k66/+uPfQAWU04ccSpwYSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="244802704"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 20:10:51 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 20:10:50 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 20:10:50 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 20:10:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AIQ0ikzIV7GZpy06a5KCmDMZ3MlkLbH/QaUe4twXC7kWYjaB7CSXc+hRmK78PZoCqhj6dw7IKuQ8GpQXKPPU1zKajZ43SpX0ZDBz1bKb4SfxJuyaNDjEYsV9BLc279KHynMKKVcaxK0txebUuHtoskctkftg8LMEUaBF9V+cGaYMbUJNDt+1WJbXVBnrHu9M03wS1tfGWySF2dqlNNVvyTxujzLDkLq9upAC0o2eHp+RtOcSXbi5QJa6HwGl/+KJ8JzwW+VQD7tXNyDMjzRzOrhRAMCp/NH9O+4uQfzDfsgd4IrNkIzDnnOKmmU9xMkw7YHAEn+9kb+MCCFBv0QDmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8q1FcsFFRxEL7ygmaE2mCag4q1GBZ5928raHXRx+VV4=;
 b=DxAivNzr7bG6GZZl6Qy9xu4rKOl/OL8VJxybxBzpr+pLmivSac9ybNOvjXkYf1fnpwLdZ7TxT8IU90n+xV5phkg0+JYMeMKcbfK6cbXvJ7NE4dN9fuBrXSgEk6D/p9j9NEMvWByTe5W+Qxy1dxV4sG15aE9t6tQcyb1GrCyT2A5zvi6a11yps8oua6VJf2zFa8W+NRmHhoXOwu8w87nrJum1Nw0uQT2nfSbvW9q8bdtPlSG/K+vJhTlE1s7Em6XOVuw6GdvtS0gDGjFD1+KniMYPTFOkPWxEILBfgO3JMRMgEFGaixUAVhYWouLAmkq4H8vY7yzW+yN7ZD8VbGgf1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB5214.namprd11.prod.outlook.com (2603:10b6:a03:2df::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Tue, 3 Mar
 2026 04:10:44 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9654.020; Tue, 3 Mar 2026
 04:10:43 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCHv2 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
Thread-Topic: [PATCHv2 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
Thread-Index: AQHcqiB8W6YFUGqG5E2twaIrRKHorbWbVa+AgADdP2A=
Date: Tue, 3 Mar 2026 04:10:43 +0000
Message-ID: <IA0PR11MB730712128783EA3F50860777BA7FA@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260302084030.463284-1-arun.r.murthy@intel.com>
 <20260302084030.463284-2-arun.r.murthy@intel.com>
 <6f9c65e1-b110-4cad-b2dd-d9d8a1b73a51@intel.com>
In-Reply-To: <6f9c65e1-b110-4cad-b2dd-d9d8a1b73a51@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB5214:EE_
x-ms-office365-filtering-correlation-id: 14924b73-141c-418a-229d-08de78dad6f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: rsLNhYUO5o5+7LbWOW1O4Mg4NzrfSvv3hej0SSVPieahQCS8nMAY9DTkB2RCDZIPGVHRCG8sPQ8EE9P9MLr8i1FOYwIaPg7schCF2+WdJpIK0hWZNZUhVYVL4ofxI2EDw3BsvkpYIF/0isKmkoBXueo8ESQbZfcD3cjN6WY2gehkALxtx5cZmDmGQG1a/3mfGDXCQOQ2QXwTjn37H9vFEOln0amw3zuzosgLOq1rk9JDqxSg/QTPJik+PMf6bG9GVh5oa/Wfrgd0YCqhAsY7945kREYXG9/Q/jEJSfHU3+S92IZqcepgE3qjkhMUx9iGmY+v8+MJ872ypR+l4ZtOFs4ZEB3uQGTJ33unlo3i6Sq0/MTHPiFdx/h3GAAznU6jlosk98Rha2ayAMGISeSjv1NwfM68S4Mf/1rZugfczIR2rEFmUXKAYBieo8Pd3mgxtZTVGLOXtMXhML3DZWwRJyYvE6GJAeTSgLmQdnk3dnK95jlpLOmWRH4LRBK/0C2MGfalxYcu2QZBHSPWNzt3Ovq5dzFu2tIzIgzHK9A8QM+CR4xwI76FWfJc0lMvX00O7x8QxvhICXMixP8kFzZxrUMdiN/h0S3EfEoF1HT1lQWZxazxg5JtEJFQ8F/mbH5dJ9DIqjQp57QdOkqDasAnhNePE74GvjCy62IENBLx7+8EL4lX3CQpRbqHuQwmApj7r4DVfh/UnVblgA50g1YPLwoNCkcZg5hDBAs/P3cozDF2qOkyB4IjnEVXs6FRUKpQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UDc4QTV4cXcvR2ZXWU5UK3JScEdneVhQSlNZU0dUa3JoTS9HQ3Z4d1ZROHMw?=
 =?utf-8?B?bC91QU4rcXlCekNoMVRMZU8yM25kRVJxR1JLTzIzNkJJdDZPbHVnSXl1Zklj?=
 =?utf-8?B?SkhCMGQyNzkwZjAxc1R3QUhFRkhQbkk5THB1Z2V4d2dIcWxDUDJSOXFzWFNP?=
 =?utf-8?B?L2E1MzIxcE5WRmNMRHNJNjEzV2U0dnpPTjNGS3Y0Y2taV1FzOGliTisxdC9F?=
 =?utf-8?B?L1JOSC9WZmJ5bGdvYk9jY2dlZ3QybmhkeWgzamUrSm5hdXd4a01IS24wWjVl?=
 =?utf-8?B?U3M0eHBIclF5bGxXeXJvZjRMU3YwRS9YRzdkZ29vS05lM2NkZC83TS9HVGJ1?=
 =?utf-8?B?alc0L0ZQVkM3S0xKdW9vd0VyZFVVNGZ4MVNYS3JwUUhQOEVrUEVUZzErcVlG?=
 =?utf-8?B?bS9NR2pvK2RlRG04d20ycXZiR25aVDlkZ0k5ajBCQzgwM2YweE9aYlc3NG84?=
 =?utf-8?B?WjZsSkppdVVXb2lnVTZRTGVOY1oreXFVbjJ4eTVEcWRRQW9aM3J5YVh2eDNv?=
 =?utf-8?B?RTNOMGdZbUVnalZpcWRzWTNYT2hTWk1CN0FNMG84eVVGcnVjMWl5Y1pxd0ZQ?=
 =?utf-8?B?cENJM1dXRlVJQTdvdWRJbGVsd0U0TFBURmFFdHhYcHJzU3RXQzRaZW13TWNQ?=
 =?utf-8?B?YU4xdmZOSi9IUlFsNis4WGdYenp5cEtLcUViMExpV3FZck9JKzJjTEkyRnU3?=
 =?utf-8?B?ZUR1dlVsMWlZTHZDNlFNU0x0clEvNjlwVnNMUnZHaTZIQVBUMTZwTWlmYjRE?=
 =?utf-8?B?WEc0RlcrZHJRTXBlNzBFcWJqVXh3bCtCQjArQ2ovblM1R2pNYnpZeVorUGN5?=
 =?utf-8?B?N056bEQ1TTUvcENTL3ppV1lqRjRMSi9vL0ZLRThIL0hFWjV5bkhuRnJCTHVu?=
 =?utf-8?B?T2FNTS9RNGNZR2lLeElUSlh3L2hkem90czRzTGFNY2diMDdzREZkYVpMQytG?=
 =?utf-8?B?TkJJN1BUWUNIVDF4NFMrUDQvdk5Ddk52Mi9tbVJpV21NRmc1WGlkcnVVM1lC?=
 =?utf-8?B?YTRVRk1rUDkxMERjbWJMek5vL2o3K01qWXRaaVhnWjh1MEJzbzlPRUxYdGlO?=
 =?utf-8?B?bnZCMmVaNjFZTkZsWWp5VWxmWTNWUUw2MVNkQW5rMlVwOTY4WVZ0VTd4aHlW?=
 =?utf-8?B?bmxiQWR1d0hKMHdOWVk1L0dSeVkyMjhDdUV3ejc1QVV0UkFxV3AyUGRKay8w?=
 =?utf-8?B?L29OeU43VlE1c2RvVlhpK01hUS9IaVFkVXpHVmtBR3FXL0xHN0MxdWt0WlhF?=
 =?utf-8?B?aUVqa0VHMGgrU09pS1ZzOGFMNWFNVHZ6R2hXdXBaWGhzMnNtMGFNbE5zcWpN?=
 =?utf-8?B?L1p3RU8xQ3J3Tk9sZjFybWl2aDFTYUNkK3FKOG8zdnZ2WFVVSUdyalF6N0pp?=
 =?utf-8?B?UzF1N2VhTlZEajZwRHVlNlNxL3crQ0JreHBtT2lIVG5uSjJnV2NRVDZDdFk1?=
 =?utf-8?B?YnlOVXRQYU9jMmVoUDRENFVmV1M2bzIwY2hKVEFMYURUOUpmMFl4Z2xyclFK?=
 =?utf-8?B?V285aTZTb1FvSzFXZ0ZOOTRHdnB6OUw5OFVRK2RqaXFqOERwSTI0Y3JVaTRo?=
 =?utf-8?B?MDlySlc4ZDE1ZFVsb3YrSzBqeE5BM1lIaXZ3YXNWa1AwaU9mbDZXSzhDWUZ6?=
 =?utf-8?B?alZZTWFpcmlzV3Q0N09UMFdicm55amRpNXAzWEpGc3JQMTN5ZzQ1dGIrUDlO?=
 =?utf-8?B?MnQrT1AySlk4ZkV2STN3RHRHM0VsMldoS01VMk5TbkVKbXIrSUZsK1ZNZXFQ?=
 =?utf-8?B?cVZPdkZIaXNnQ0NzdGlPQjFNZGQ0RTgvbk1aWld4bHo3ZUhONHNLN2lTRE15?=
 =?utf-8?B?dEp3TXQ0S1hlVlBlaWIybkR3NDgxUGtxL2REckk0Y21BSllXNzlIOTV6WVBH?=
 =?utf-8?B?S0h3QVd1dXU1VWZtemJRK2QxWWJXMXpRMmRRME1yWmZTRUxlY1NXWUc3Mms5?=
 =?utf-8?B?bWVJdEFHamFZelVLYzlidzV0cEgwVTJqYmZ5QVZ4elhlOG5NSDhyY2ZKYzFW?=
 =?utf-8?B?TUkvblkxamh4dkk1WTJGOTdhNWlQa2pJTDJ6eWw0TlNSdGhNNmY0TWxlR3pF?=
 =?utf-8?B?eVlHbFdlVmJJVm96V0huK2djTXRoUnJlZGh0U3VxMDhvOFJqeTRuaEsrd2U5?=
 =?utf-8?B?KzA2WUN4SkZURXBpOWl3aFloa1gwOVVzaVFLSkpUcHdZN1dRRFkwS2NxNG9w?=
 =?utf-8?B?NS9aN2FUZGZtR0xnOXVPTnY4VC9qZmlJbWladER4Ti91ZXlabXJ6d09rMDVk?=
 =?utf-8?B?OTRPc1IzeXNqOE9WcUJsdHJTUjEyNGVGRUI1VEVFWkdHOXVRU3FmOXZjNUZ1?=
 =?utf-8?B?MWQ2UytJYm9BbUUrR2Y3VGltNVZ6bVJXQlZQM3l2ZFloS09NQzdkUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14924b73-141c-418a-229d-08de78dad6f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 04:10:43.7863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MWglyTfn9D+Ym1uxIRN2f+5qLf+x0EkxXbouvJKZEQ+JfX9XRBU+GleYbqTJZlF2y0enjNvhP66zcNAMrExJqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5214
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
X-Rspamd-Queue-Id: 9548D1E8A4B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IERpYmluIE1vb2xha2FkYW4g
U3VicmFobWFuaWFuDQo+IDxkaWJpbi5tb29sYWthZGFuLnN1YnJhaG1hbmlhbkBpbnRlbC5jb20+
DQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMiwgMjAyNiA4OjI4IFBNDQo+IFRvOiBNdXJ0aHksIEFy
dW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOw0KPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1hbm5hLCBB
bmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IE5hdXRpeWFsLCBBbmtpdCBLDQo+IDxh
bmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPjsgSG9nYW5kZXIsDQo+IEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0h2MiAyLzJdIGRybS9pOTE1L2RwOiBSZW5hbWUgYWxwbV9pbml0
IHRvIGFscG1faW5pdF9kcGNkDQo+IA0KPiANCj4gT24gMDItMDMtMjAyNiAxNDoxMCwgQXJ1biBS
IE11cnRoeSB3cm90ZToNCj4gPiBJbiB0aGUgZnVuY3Rpb24gaW50ZWxfYWxwbV9pbml0IHdlIGFy
ZSByZWFkaW5nIHRoZSBBTFBNX0NBUEFCSUxJVElFUw0KPiA+IGFuZCBzdG9yaW5nIHRoZW0gaW4g
aW50ZWxfZHAsIHNvIGFwcGVuZGluZyB0aGUgZnVuY3Rpb24gbmFtZSB0byBfZHBjZA0KPiA+IHNv
IGFzIHRvIGFsaWduIHdpdGggb3RoZXIgZnVuY3Rpb24gc3VjaCBhcyBpbnRlbF9wc3JfaW5pdF9k
cGNkDQo+ID4gcmVmZXJlbmNlZCBpbiB0aGUgc2FtZSBmdW5jdGlvbi4NCj4gDQo+IFJlbmFtZSBs
b29rcyBva2F5LCBidXQgbXV0ZXhfaW5pdCgmaW50ZWxfZHAtPmFscG0ubG9jaykgbG9va3MgdG8g
YmUgb3V0IG9mIHRoZQ0KPiBwbGFjZSBpbiBpbnRlbF9wc3JfaW5pdF9kcGNkLg0KPiANCkEgcGF0
Y2ggZm9yIHRoaXMgaXMgYWxyZWFkeSBmbG9hdGVkIGJ5IEFuaW1lc2guDQpodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNjg3NzExLz9zZXJpZXM9MTU2NDE3JnJldj00DQoN
ClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0t
DQoNCj4gUmVnYXJkcywNCj4gRGliaW4NCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQXJ1biBSIE11
cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8IDIgKy0NCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oIHwgMiArLQ0KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgfCAyICstDQo+ID4gICAzIGZpbGVzIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBpbmRleCBiMzMzNGJjNGQw
ZjkuLjhiYTc0NjNkN2ZlMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+ID4gQEAgLTQyLDcgKzQyLDcgQEAgYm9vbCBpbnRlbF9hbHBtX2lz
X2FscG1fYXV4X2xlc3Moc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCwNCj4gPiAgIAkJKGNy
dGNfc3RhdGUtPmhhc19sb2JmICYmDQo+IGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9zdXBwb3J0
ZWQoaW50ZWxfZHApKTsNCj4gPiAgIH0NCj4gPg0KPiA+IC12b2lkIGludGVsX2FscG1faW5pdChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICt2b2lkIGludGVsX2FscG1faW5pdF9kcGNk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gICB7DQo+ID4gICAJdTggZHBjZDsNCj4g
Pg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4g
PiBpbmRleCAxY2Y3MDY2OGFiMWIuLmEyNGE3YTAzYmRhYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gQEAgLTE1LDcgKzE1LDcgQEAg
c3RydWN0IGludGVsX2Nvbm5lY3RvcjsNCj4gPiAgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7
DQo+ID4gICBzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gPg0KPiA+IC12b2lkIGludGVsX2FscG1faW5p
dChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiArdm9pZCBpbnRlbF9hbHBtX2luaXRf
ZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiAgIGJvb2wgaW50ZWxfYWxwbV9j
b21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ICAgCQkJICAgICAg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiAgIHZvaWQgaW50ZWxf
YWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIGRpZmYN
Cj4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggMTU0
NDc1OGMwYmJjLi40ZTlkZjg4YjkwY2QgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTQ3NDksNyArNDc0OSw3IEBAIGludGVsX2VkcF9p
bml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yDQo+ID4gICAJaW50ZWxfZHBfaW5pdF9zb3VyY2Vfb3VpKGludGVsX2Rw
KTsNCj4gPg0KPiA+ICAgCS8qIFJlYWQgQUxQTSBEUENEIGNhcHMgYmVmb3JlIHJlYWRpbmcgdGhl
IFBTUiBDQVBTICovDQo+ID4gLQlpbnRlbF9hbHBtX2luaXQoaW50ZWxfZHApOw0KPiA+ICsJaW50
ZWxfYWxwbV9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiA+DQo+ID4gICAJLyoNCj4gPiAgIAkgKiBU
aGlzIGhhcyB0byBiZSBjYWxsZWQgYWZ0ZXIgaW50ZWxfZHAtPmVkcF9kcGNkIGlzIGZpbGxlZCwg
UFNSDQo+ID4gY2hlY2tzDQo=
