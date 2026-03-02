Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QK48NMQ3pWnt5wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 08:09:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB921D3ACC
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 08:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA81610E212;
	Mon,  2 Mar 2026 07:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CExys2t9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B0D10E212;
 Mon,  2 Mar 2026 07:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772435393; x=1803971393;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=V9w7Q96tqRPlom6I7ySfvRE0PoqzBpe6SSVLKG1/rYc=;
 b=CExys2t9NQaCekI3bqwzfQGtZ2avZCuJo/FWHY6qG4SYzVHYqik1azEx
 hafMder06XhGPKeODC5d+rAaxQt6Ky3W9BIZBq+kSTfxCnXBNik6qFXg4
 Ix4guHSzhDb9TN9GfkQiX9oG0OX5dC7Rzx3Ymo1r/ZYAhrL986ara9VM7
 mYynSoQcMKjgsh5sqv+MKFLVWNKqgm1eChZFb/vwlm5ayiYPGR/lm3Z/f
 VkUWvKupb5Ydf9IKOxgWMWhMB1NmGUTYp6lzNj+5dOkMjIfcigkRIHL/N
 x2EtReaRXaYZP9kMT6MCg5ycDNJ5cyHCb4psAmsyyfh+NasuImDfecFTm A==;
X-CSE-ConnectionGUID: Ewbp0zxtQlyn0NsroRK8nw==
X-CSE-MsgGUID: t4xQegePSgK0g5Gz8RAGFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="98905320"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="98905320"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:09:49 -0800
X-CSE-ConnectionGUID: Hi5l0m3wR92UqvJUrTl3vw==
X-CSE-MsgGUID: 9fxf/XyLT4OOr9QIDK8w1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="215238459"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:09:46 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:09:46 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 23:09:46 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:09:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o/HwLuD3riXBDkNuCSRWGNRNc7wsFI/ggxxNRCOp5gvb6zA3Kkr1iwOeN0i97jAzRB1X41DWP27r3GYwqbOLZ9JvLPaefrCBcqwq3cC+fnlk6NEb9x7Cq/FHIL2RnD+SvQDjreuBzRR89cXGPf9TWI5kVEPZrahCW/iKD8CCIJ77Kvaj6x61pHak6xcutBCiU5MUEdSldwqColPzLo16KuMws6BlevZhj0LegPW99h/q1LC66CNKQOG+syvE+1iqYTmdBIEbxP5Ai2o3bE5blxgJqHAbJcS6YE6edJjmhKodUeQIqMFbwZuXQbvCEGGC3DMwYa3d+Ueb6cHIWWxRvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9w7Q96tqRPlom6I7ySfvRE0PoqzBpe6SSVLKG1/rYc=;
 b=E+QHJlI1PEgnYsp+49V0sQcqiMmucD8DvytVaJ7agBmhI/srvyjoxrVyS5dQjAy0Q1uj6aKVM4A7L8E0SKdjM0FlkRYXfUYsN4cpnPK6wJNvj3ZlHtKONVcWcboTJaW+izOYeoJc8n7AG0JYaTmE3DumLsfJAk6NryJOU6OY2NMWPF+slHYyMo08aSyRS30oO2a/f4vStyMabej5uar7hvRlbhR2h9b9e4c9I2C2yqkfJJ+wVPcnC3vGdo5lgC6RdeSd925bKV4puUrCFuzJKjjNjmeIuFoKusFn/oVUej6i+i53Htdd00IFku401qn0nSBZHPCGpzDytFXMBPveqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.21; Mon, 2 Mar 2026 07:09:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 07:09:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: Re: [PATCH v4] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v4] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHcp9EfrnU8GYVM1kmaBFdph9WZMLWa12+A
Date: Mon, 2 Mar 2026 07:09:41 +0000
Message-ID: <9c59cb73d9c9733ebc33ede88146b3655aefabc0.camel@intel.com>
References: <20260227093923.3170382-1-animesh.manna@intel.com>
In-Reply-To: <20260227093923.3170382-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4556:EE_
x-ms-office365-filtering-correlation-id: 999aac48-86e6-4a21-0834-08de782aad00
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|366016|376014|38070700021; 
x-microsoft-antispam-message-info: LKMy8MsCbWWjPGNPVDwd2n7rrOLAvj+DYj+l9SlYi/nRuNzq7mVLol4m5DK0SvQVVC3oTf3dkbLFfd2vODw5U8mLaeKwlx/S/Lt4t5R3VKhpR7UAAj5E9xzZkcO/ohvoF6bMX+nVGBJWOJZ1gouBaDv+hZ+DyqTkuKmUiI8HL2V47mixo6kt4f47CrfAeWjD/MTMghotP7w8kDGxau8zF1HvEwRXRzPtDwtFja80fx2Ts4AeGZIhc+AiQWesp1g7sFlupcUskISeMDqkoj75wmGR4djIFyzzcTirmpRtZ39FmLnHSNLr81NaZTBdyHX527H+dr1cyxRiA6d/z8eOXiETCmFFTM5AkPipdcdNeU5H+X1UY8faywm8/rvFVWyvuIHkhtof7vlqU6m1pZwsqX2S2W38pXc9JzuyZVdfb6wdO1XhUKEesAJCaCscQeUg2yo5K371woUv3nYaGbQL8QCXKvP+9m8BtUZPG1AMqY4LDHlgIUSbic/PLv8+ReCH+SKMQOb4UAQQjlHEcx+4T+rgyBEuWmESUnYh9zNzLwAudv4TiMecNdM/FaEMO0i6uEdi8AlIVcKqok51fhTTIAkig7diD9m7pcV1hXlqkWqw0nlQsiuGHWrVFYUYaE83jhHJBdTS8CjRskN8d+1HBgC8PoV+WE/4kLl2sxQizS5k+0ALatE0nIy6y+R1e/GINNiXopI4QeNwxQCZIgsycF5koaFp2aIstAXLd6aoLTq5xEMnrTXkeqwzYOTrJ4HGPmKqCGFiZTG43NHqndawrbGxsv/kT6kA4PHKu/d7hsE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MHkrZE43ajhaY1d2VS9oNjd2N0d2UWhsSGpHVmJpbTJJT2tPOGtyN3NzVjdK?=
 =?utf-8?B?eFVjUENhc0dlRVpsNEUzaEJQak9JRkYrOTVzdUZydG92UXRGODBkQ0l4T2dE?=
 =?utf-8?B?OVY0L3JsTkdheENWbDd2NFBOVi9XMHJ0UFNIbnVWZEhPdjdnVVRlS29LUDQw?=
 =?utf-8?B?aW0yVmpidS9LcEx6Njc3SHVXN25rc2dzUWRmNFZUZWdIS0NNQ3Vyc21SQzBC?=
 =?utf-8?B?ZiszSndvU3k3Mkw1SW9UR2FwTGcrYVZxczRqU3RsclZDSVhNSlJ1em95UkJn?=
 =?utf-8?B?T1I1UFR1b3FUZzNNRSttL3BSTDVjTDVVZGNEMXJ2dWUweTJYbi84OXFqKzZy?=
 =?utf-8?B?VXd4c2F2NUc4bEtDL3FNaU1wb0RVaGluSnc1N0s5TDlSaTNnOWY3VFZ2TnJS?=
 =?utf-8?B?OWtNUFQ1enRaaGxzZWFueUJUSVBhdDJPSkNFTm1PYXhhZUtzYlJRVTBRd0p0?=
 =?utf-8?B?QU94TG9uTlVCQ1lSdDJ1SmUySURaYkRlS3IvelZhci9GL3UrMjRyN2oramN3?=
 =?utf-8?B?eHVaVm9nQ0VEOVhYbHRwRzVQWXRUOVQrVFl4RXNZKzVBOHo0L3FEMlBtbkEr?=
 =?utf-8?B?eVVlRmh4dlZneDNsdEpXTER5cERtckxyeDNIcWwzMWE1MG1xWkZtMnJiZUh4?=
 =?utf-8?B?ZVRxaHJNYTFEbVRCdnl6VWpLeEVXam9kUk1JUFNGbVlKeTZoekNjZEtmemxD?=
 =?utf-8?B?ZUZMdFNUemx5cFh0RTRnLzh5QldpQ1puNnV2Vy9tSFBrTU9xMEF3OFVoYVpE?=
 =?utf-8?B?QkFtV0FGaUZCeS9oaXp5c1lXSERodnMxN2dTT3JEZkxiQk0vbkRIazljNnQw?=
 =?utf-8?B?NDFnS1BrT1VwWnB0ZFpoN0VPU25kcUVKcCs3UzlLeFJoOE5wdUZneERKRk93?=
 =?utf-8?B?SzhaTS9maWM1U1JJZHZuNlk1U0UyMEwwbkpVTlpBa3ZnWEUxSEV5ZDBPcFRS?=
 =?utf-8?B?N25SZGQ2V1QyTUV6VG5ackVCRERSWWRmZHo4ZXg1cVNJMUw2YmNrcjNvaXhE?=
 =?utf-8?B?aXhieW5jdEl0RXpSQjBhdndpYTRNY1NHWmlQZmIwTWtSSlRzMXVwREhxbHp3?=
 =?utf-8?B?d0U1K0R2SU5MczFVYmp6REZ0cGtEMGpjWHB3WmhxSWJ3UkRCQmxZdDAvK0Nz?=
 =?utf-8?B?eDAyYzFpYS9nOWZMYXpBRnY4S1Q2bWFBMjV1ZTExbVllNFVycVpoYkI4OHAv?=
 =?utf-8?B?bGFkbVFqMUxkRTJDQ2k1dTdLR2VqbEpTc2R0UW1mbVh6WlNKRlBWNHd4MG1u?=
 =?utf-8?B?WmRBU0JtN1VUYlRoL0krTXo2OVkrRFZ5aHozc3VENTl2RkRyelRJL0YvUmJ4?=
 =?utf-8?B?eVF5eDhrRVBmdThLU1psTnhiRWdPclAyeVV3U3RaQ045MFRDYkwwNldFb25x?=
 =?utf-8?B?bkdaSDdFaXRtMS9uWWtUNlBXb3ZGQzF6T2E5Wjl1REw5UEk5QXBtTVBGTUJQ?=
 =?utf-8?B?T052TytjdDBVVE9nZ0dlZEVyMkFuU3RBQmI1ejl1S1BDTUFFQkpHVWRrekFQ?=
 =?utf-8?B?UzdudERpTEhVeDk3ZDZzOTlBMm5qVWlEZDNtOXhoNEFra1d2UG1sQVVxNzBL?=
 =?utf-8?B?dng5YUxyeG5KcHg5MzF2eGVaalhXdGk0T2M3WnVrK3NpVVFpZ3ZjZWFvOHFY?=
 =?utf-8?B?MXUzR2psYVlGSHVRUUh0bzhiT3RVdFRxUGwrWEpCSmlkMDJLV2hYWjlVY1J4?=
 =?utf-8?B?RENVanJJdk5kR29yWDZldVNiMmt6OXc4MlRoT0FpVG9HQi8wSTZnTmQyd0Fq?=
 =?utf-8?B?RDJvYnQxYlg4SEN2YVorUDZvU294blplY2drNms1b3NSZ0Rka0V2UWprSWRi?=
 =?utf-8?B?SG9OTFowRzUrK284S2xkWEdsaWlqaUkrSEg5WCtuekU1L05NeVlwVTJpYTV0?=
 =?utf-8?B?ODN2TGh5YU1zZmJFMFEzek5OVzN0OUsreVhhTWlEb1NnLzFMam1Td0IvRG5z?=
 =?utf-8?B?SnU0b1MxclBMQnRaR21rbFRTUjQvYiswc3IycE1xdkZSa2FXcGJpaVRtUHRY?=
 =?utf-8?B?a3ZLd1Jyd3hicTA0ZkorV0E2Wk9Ndjk3RWFZV0NFZXVuTGpjenN3UVF0YjlI?=
 =?utf-8?B?TXZNNDZSejhYdG1sQXg2c3lzejk0SVdzVlE0Tyt2bFRPakZ4U0ZhdEFMZ0Fo?=
 =?utf-8?B?ajFXSWtHd09HemJCaGk0eENxdnlEUlpDS2J1ZzM4TUU4MVhBNGUzNEJVT2xw?=
 =?utf-8?B?eHNKNHpQNlF1RnRnd0o3OHBZUy9sVnVNbzhUUnFIUG41bkdiR2hXcWhIaEZ6?=
 =?utf-8?B?cnNRL2ZtNldpNUswUnZxSU92OUFUMzVXNkNSbXJEMEZLMGpEcHNVcEI4TmMw?=
 =?utf-8?B?SDRIRXZWQlk5MzUrQWVuVUNlaDFxYXhwdVZGWHVYTndublRkd1NjU2RxZW5Y?=
 =?utf-8?Q?4SgMaWbf704yE5Y9A36pDy6XUfU8rCWxmf49xXPvGWnOZ?=
x-ms-exchange-antispam-messagedata-1: jfZqpeleS/iA4QOi4ap/j3PJ+mchT9nAdOY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E27DD45275879F43B6EAEC3BE8047932@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 999aac48-86e6-4a21-0834-08de782aad00
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2026 07:09:41.9151 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8HqVh5NzZBK3kR5F36wLp1icr+QXstZj5fiUFJQKSxb8DlXEGDkWp/LQHKk6PtKbQ9/Tzb5PoX7t0L4mldOyDZ29fRyONdG2LpZ4OS44kXU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6AB921D3ACC
X-Rspamd-Action: no action

T24gRnJpLCAyMDI2LTAyLTI3IGF0IDE1OjA5ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRz
IGZvciBQYW5lbA0KPiBSZXBsYXkNCj4gZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mg
d2l0aCBsaW5rIG9uLiBFbmFibGUgc291cmNlIHRvDQo+IHJlcGxhY2UNCj4gZHVtbXkgZGF0YSBm
cm9tIHRoZSBkaXNwbGF5IHdpdGggZGF0YSBmcm9tIGFub3RoZXIgYWdlbnQgYnkNCj4gcHJvZ3Jh
bW1pbmcNCj4gVFJBTlNfRFAyX0NUTCBbUGFuZWwgUmVwbGF5IFR1bm5lbGluZyBFbmFibGVdLg0K
PiANCj4gdjI6DQo+IC0gRW5hYmxlIHByIGJ3IG9wdGltaXphdGlvbiBhbG9uZyB3aXRoIHBhbmVs
IHJlcGxheSBlbmFibGUuIFtKYW5pXQ0KPiANCj4gdjM6DQo+IC0gV3JpdGUgVFJBTlNfRFAyX0NU
TCBvbmNlIGZvciBib3RoIGJ3IG9wdGltaXphdGlvbiBhbmQgcGFuZWwgcmVwbGF5DQo+IGVuYWJs
ZS4gW0phbmldDQo+IA0KPiB2NDoNCj4gLSBSZWFkIERQQ0Qgb25jZSBpbiBpbml0KCkgYW5kIHN0
b3JlIGluIHBhbmVsX3JlcGxheV9jYXBzLiBbSm91bmldDQo+IA0KPiBCc3BlYzogNjg5MjANCj4g
UmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4g
LS0tDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oIHzC
oCAxICsNCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKg
wqAgfMKgIDEgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8Kg
wqDCoMKgwqDCoCB8wqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuY8KgwqDCoMKgwqAgfCAzMA0KPiArKysrKysrKysrKysrKysrKy0tDQo+IMKgNCBmaWxl
cyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+
IGluZGV4IDQ5ZTJhOWUzZWUwZS4uNzE0MTFiMjZlOTE4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4gQEAgLTIyNjUs
NiArMjI2NSw3IEBADQo+IMKgI2RlZmluZSBUUkFOU19EUDJfQ1RMKHRyYW5zKQkJCV9NTUlPX1RS
QU5TKHRyYW5zLA0KPiBfVFJBTlNfRFAyX0NUTF9BLCBfVFJBTlNfRFAyX0NUTF9CKQ0KPiDCoCNk
ZWZpbmXCoCBUUkFOU19EUDJfMTI4QjEzMkJfQ0hBTk5FTF9DT0RJTkcJUkVHX0JJVCgzMSkNCj4g
wqAjZGVmaW5lwqAgVFJBTlNfRFAyX1BBTkVMX1JFUExBWV9FTkFCTEUJCVJFR19CSVQoMzApDQo+
ICsjZGVmaW5lwqAgVFJBTlNfRFAyX1BSX1RVTk5FTElOR19FTkFCTEUJCVJFR19CSVQoMjYpDQo+
IMKgI2RlZmluZcKgIFRSQU5TX0RQMl9ERUJVR19FTkFCTEUJCQlSRUdfQklUKDIzKQ0KPiDCoA0K
PiDCoCNkZWZpbmUgX1RSQU5TX0RQMl9WRlJFUUhJR0hfQQkJCTB4NjAwYTQNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
aW5kZXggZThlNGFmMDNhNmE2Li4wYjMwZjkwODVhZmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC01NzYs
NiArNTc2LDcgQEAgc3RydWN0IGludGVsX2Nvbm5lY3RvciB7DQo+IMKgDQo+IMKgCQkJYm9vbCBz
dXBwb3J0Ow0KPiDCoAkJCWJvb2wgc3Vfc3VwcG9ydDsNCj4gKwkJCWJvb2wgb3B0aW1pemF0aW9u
X3N1cHBvcnQ7DQo+IMKgCQkJZW51bSBpbnRlbF9wYW5lbF9yZXBsYXlfZHNjX3N1cHBvcnQNCj4g
ZHNjX3N1cHBvcnQ7DQo+IMKgDQo+IMKgCQkJdTE2IHN1X3dfZ3JhbnVsYXJpdHk7DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMDI1ZTkwNmI2M2E5
Li5mMzVhYWZlMWU4NmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gQEAgLTYyNTAsNiArNjI1MCw3IEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJt
X2Nvbm5lY3Rvcg0KPiAqX2Nvbm5lY3RvciwNCj4gwqAJCWludGVsX2RwLT5wc3Iuc2lua19wYW5l
bF9yZXBsYXlfc3VwcG9ydCA9IGZhbHNlOw0KPiDCoAkJY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBs
YXlfY2Fwcy5zdXBwb3J0ID0gZmFsc2U7DQo+IMKgCQljb25uZWN0b3ItPmRwLnBhbmVsX3JlcGxh
eV9jYXBzLnN1X3N1cHBvcnQgPSBmYWxzZTsNCj4gKwkJY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBs
YXlfY2Fwcy5vcHRpbWl6YXRpb25fc3VwcG9ydA0KPiA9IGZhbHNlOw0KPiDCoAkJY29ubmVjdG9y
LT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5kc2Nfc3VwcG9ydCA9DQo+IMKgCQkJSU5URUxfRFBfUEFO
RUxfUkVQTEFZX0RTQ19OT1RfU1VQUE9SVEVEOw0KPiDCoA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNWJlYTJlZGE3NDRiLi5kYzNlNGQ4ODg1
ZmEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBA
QCAtNDMsNiArNDMsNyBAQA0KPiDCoCNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gwqAjaW5jbHVk
ZSAiaW50ZWxfZHAuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZHBfYXV4LmgiDQo+ICsjaW5jbHVk
ZSAiaW50ZWxfZHBfdHVubmVsLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2RzYi5oIg0KPiDCoCNp
bmNsdWRlICJpbnRlbF9mcm9udGJ1ZmZlci5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9oZG1pLmgi
DQo+IEBAIC02MDMsNiArNjA0LDcgQEAgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9pbml0X2Rw
Y2Qoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGludGVsX2Nvbm4NCj4gwqB7
DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShp
bnRlbF9kcCk7DQo+IMKgCWludCByZXQ7DQo+ICsJdTggdmFsOw0KPiDCoA0KPiDCoAkvKiBUT0RP
OiBFbmFibGUgUGFuZWwgUmVwbGF5IG9uIE1TVCBvbmNlIGl0J3MgcHJvcGVybHkNCj4gaW1wbGVt
ZW50ZWQuICovDQo+IMKgCWlmIChpbnRlbF9kcC0+bXN0X2RldGVjdCA9PSBEUk1fRFBfTVNUKQ0K
PiBAQCAtNjUwLDYgKzY1MiwxMCBAQCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2luaXRfZHBj
ZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgaW50ZWxfY29ubg0KPiDCoAkJ
wqDCoMKgIGNvbm5lY3Rvci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMuc3Vfc3VwcG9ydCA/DQo+IMKg
CQnCoMKgwqAgInNlbGVjdGl2ZV91cGRhdGUgIiA6ICIiLA0KPiDCoAkJwqDCoMKgIHBhbmVsX3Jl
cGxheV9kc2Nfc3VwcG9ydF9zdHIoY29ubmVjdG9yLQ0KPiA+ZHAucGFuZWxfcmVwbGF5X2NhcHMu
ZHNjX3N1cHBvcnQpKTsNCj4gKw0KDQpJIHdvdWxkIGFkZCB0aGlzOg0KDQppZiAoaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSkNCiAgICByZXR1cm47DQoNCi8qIFJlc3QgaXMgZm9yIERQIG9ubHkg
Ki8NCg0KPiArCWRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LCBEUF9UVU5ORUxJTkdf
Q0FQQUJJTElUSUVTLA0KPiAmdmFsKTsNCj4gKwljb25uZWN0b3ItPmRwLnBhbmVsX3JlcGxheV9j
YXBzLm9wdGltaXphdGlvbl9zdXBwb3J0ID0NCj4gKwkJKHZhbCAmIERQX1BBTkVMX1JFUExBWV9P
UFRJTUlaQVRJT05fU1VQUE9SVCkgPyB0cnVlDQo+IDogZmFsc2U7DQo+IMKgfQ0KPiDCoA0KPiDC
oHN0YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0
cnVjdA0KPiBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gQEAgLTEwMjIsMTEgKzEwMjgs
MjkgQEAgc3RhdGljIHU4IGZyYW1lc19iZWZvcmVfc3VfZW50cnkoc3RydWN0DQo+IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gwqAJcmV0dXJuIGZyYW1lc19iZWZvcmVfc3VfZW50cnk7DQo+IMKgfQ0K
PiDCoA0KPiArc3RhdGljIGJvb2wgaW50ZWxfcHNyX2FsbG93X3ByX2J3X29wdGltaXphdGlvbihz
dHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ICsJc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yID0gaW50ZWxfZHAtDQo+ID5hdHRhY2hlZF9jb25uZWN0
b3I7DQo+ICsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAzNSkNCj4gKwkJcmV0dXJu
IGZhbHNlOw0KPiArDQo+ICsJaWYgKCFpbnRlbF9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxl
ZChpbnRlbF9kcCkpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiArCWlmICghKGNvbm5lY3Rv
ci0+ZHAucGFuZWxfcmVwbGF5X2NhcHMub3B0aW1pemF0aW9uX3N1cHBvcnQpKQ0KPiArCQlyZXR1
cm4gZmFsc2U7DQo+ICsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyB2
b2lkIGRnMl9hY3RpdmF0ZV9wYW5lbF9yZXBsYXkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlz
cGxheShpbnRlbF9kcCk7DQo+IMKgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+
cHNyOw0KPiDCoAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNy
LnRyYW5zY29kZXI7DQo+ICsJdTMyIGRwMl9jdGxfdmFsID0gVFJBTlNfRFAyX1BBTkVMX1JFUExB
WV9FTkFCTEU7DQo+IMKgDQo+IMKgCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmIHBz
ci0+c2VsX3VwZGF0ZV9lbmFibGVkKSB7DQo+IMKgCQl1MzIgdmFsID0gcHNyLT5zdV9yZWdpb25f
ZXRfZW5hYmxlZCA/DQo+IEBAIC0xMDM5LDEyICsxMDYzLDE0IEBAIHN0YXRpYyB2b2lkIGRnMl9h
Y3RpdmF0ZV9wYW5lbF9yZXBsYXkoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqAJ
CQnCoMKgwqDCoMKgwqAgdmFsKTsNCj4gwqAJfQ0KPiDCoA0KPiArCWlmICghaW50ZWxfZHBfaXNf
ZWRwKGludGVsX2RwKSAmJg0KPiBpbnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0aW9uKGlu
dGVsX2RwKSkNCj4gKwkJZHAyX2N0bF92YWwgfD0gVFJBTlNfRFAyX1BSX1RVTk5FTElOR19FTkFC
TEU7DQo+ICsNCj4gwqAJaW50ZWxfZGVfcm13KGRpc3BsYXksDQo+IMKgCQnCoMKgwqDCoCBQU1Iy
X01BTl9UUktfQ1RMKGRpc3BsYXksIGludGVsX2RwLQ0KPiA+cHNyLnRyYW5zY29kZXIpLA0KPiDC
oAkJwqDCoMKgwqAgMCwNCj4gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX0NPTlRJTlVPU19GVUxM
X0ZSQU1FKTsNCj4gwqANCj4gLQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NUTChp
bnRlbF9kcC0NCj4gPnBzci50cmFuc2NvZGVyKSwgMCwNCj4gLQkJwqDCoMKgwqAgVFJBTlNfRFAy
X1BBTkVMX1JFUExBWV9FTkFCTEUpOw0KPiArCWludGVsX2RlX3JtdyhkaXNwbGF5LCBUUkFOU19E
UDJfQ1RMKGludGVsX2RwLQ0KPiA+cHNyLnRyYW5zY29kZXIpLCAwLCBkcDJfY3RsX3ZhbCk7DQo+
IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApDQoNCg==
