Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KC2BLhlOBWq1UgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 06:22:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1437053DA25
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 06:22:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7791B10E260;
	Thu, 14 May 2026 04:22:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QDdajad8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE7810E121;
 Thu, 14 May 2026 04:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778732566; x=1810268566;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=crWmalePVZMFCksl1Hwy/3Gpd3l7P1RIDdaSvyfSl5I=;
 b=QDdajad8dCk/1Wdr6OHoc0zkpm/Kwqn+JKaY9bsKXB3KtPxC+fzGGiYD
 ytnzd8TyPTEEt4bfAxsSf88AlQbX1mfXLHk7WsY55XH9OExzDFvIgUsKI
 hmZphAC5BdTWOa8XQh4KFfSGlNSnXolgA3S3Y0I5Qo5I6S6sCOT4je0Xc
 5+eXaAsQsM51byFcztiOWct7xgw3lnG6I3nrWGFnZEIvTXwKYjD47pmuk
 SJAFuV4S1vmrhSF+RCyevnZ4rIOIG1gNY/UmNKfd1d25QTDomh+fono0T
 TOrO5jOtttYTREhRVVCbTDhaozDZMJDQcCcw9hbqmYkqyuI/4fimta6no A==;
X-CSE-ConnectionGUID: TZNDujucRtOwO4pHucbbVw==
X-CSE-MsgGUID: 66z/UrwJR6Sv9ykrvFKjNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="79623245"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="79623245"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 21:22:45 -0700
X-CSE-ConnectionGUID: GNP0jxzoT8GzfKAaKkR6hQ==
X-CSE-MsgGUID: aWTvUCOJS/uFDpknZHnkcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="234001075"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 21:22:43 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 21:22:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 21:22:42 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 21:22:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W0bic0XxiU7AFXBGlRU2irFdH4cToxQS1WjtXwZwHQImdSJtN/h5hWfBN2Ss9Q8UhYT/qtetP4f2LFTph4JQ/591Smbxn/HbKdDdK+RajjIRk6HcTiQv924cb79XBSZ/wI8kInJWCdxRotELyrU/c3zIN++pIe40tDYRMElTgxNoWRDgRfJpRywMUi4Zd8DMruclIZAIyGVDUxsnknO1DO4w68NJlA0bEq1XuMnZiZtv7P6aJ1ff+D+AWRTNjyJn/PQ5tfiYfbixyLcmhiUaLdIzuJ1pkKfK1nSwUBj8V//TMa/HM/Qnzgr2iH7ExYRlLK5Rw3TBbEWm/8eoCaZRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crWmalePVZMFCksl1Hwy/3Gpd3l7P1RIDdaSvyfSl5I=;
 b=oIqgo00pP+tjUV1FLIjKRI4dY3R8f/bC8u04HfeIWorFvXaWrme2zjzLsu+n2uFSLwFnekMkNg6GinE/jp12Rv6CxoRdj6cB0BKblyUh/ajIec1gB968KodzOzkBzy3WCqGwhPku2UgI6TvWxEstcvuaGeURNir6JVwACxitBkf1ZNuzNmAm8nIPeBOGEFU7Q1HyGmVwpApjHRPebnLNHrJ54Y37DwEdzJhdR288H4/XBqiZUqcy1Jb9VuCStI5rPqiCh2mwDFnKXyLDitufjiFshqam9czamXslsXv6wGXtxAHJ3/StnCRZYM/2DHAx08wUBJpsIsneSjT0XHi+mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB5018.namprd11.prod.outlook.com
 (2603:10b6:806:11a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 04:22:38 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 04:22:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/4] drm/i915/psr: Read Intel DPCD workaround register
Thread-Topic: [PATCH 2/4] drm/i915/psr: Read Intel DPCD workaround register
Thread-Index: AQHczJpruF5lOuyeOEqN/FRn3MhFTrYAq+OwgAH20gCACnaNUA==
Date: Thu, 14 May 2026 04:22:38 +0000
Message-ID: <DM3PPF208195D8D2F7481F65902FDE98634E3072@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-3-jouni.hogander@intel.com>
 <DM3PPF208195D8D5A61CDAC6A255BC5D27AE33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <26a2456c93e47c77ec0b837c65691beebbd9b9ff.camel@intel.com>
In-Reply-To: <26a2456c93e47c77ec0b837c65691beebbd9b9ff.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB5018:EE_
x-ms-office365-filtering-correlation-id: 9d2e8776-4928-463f-c9e4-08deb1706e8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003|11063799003|38070700021|4143699003;
x-microsoft-antispam-message-info: AzK6YMJBLOwBFcpCRIrFgcAxr7sNv75wWKpMf3ZGliQbmbCIdN41E2MlQlPHuD1LLu6lueWib8+7tcxU6RMIlUYtVCoe9ViyXbt9mFzGNWcUnVo9wsi8V+Xhd9fbrk1Kr92wjXZWOzOP9OQgDYHNX6cK6id9ZR0H2sdAle6FEeDKG/dmaaQZB3N9V9EdmT90azY1EsshpGgAk1XjaAWhJs9c9lEzng/dOKfkAAHH5Yi80DMkt4M40t2YDCB2AfLbxqzzA0acthZr7uSUIKR5LGghhQUwGv74gCtcosIDFkrTyWf4Ge8dsvfjRo0bRdaUUaxQEfzlFCvEoUYknfA/Fq65Sgc7hAtukKBIHL+f4tGvwfSZzCJGCntNCQ1OetyA9/b7LI71yPGYiaeVUlifpQmUwYvtVSfHnVt19+D3fqIg4nAilJQiCAPolSYkDufa7M+aOjkzMxpd13ZC8+zXWvC5kkytW+NgvHW2eDPi5cqPCe/gNMouPujGA9SL0tUtVZYvy+7ilaX+dPT7KuwxDqTwlgnjsiIhEJfz0NQBtcTHeuHZYfIsX2UdYUPMXFUaKa9D6Fa+pdYG6niLmfdywg99oT0RF/9YqectYH/l95BlqtLXaE1ZGotK72B6iiKOF75NJLYba7VHHxgibuDvRms+U0IAkX7/33MU7QyZ55WrTh4fdjsk7dWnDSZ3dQ+wp7j84mHGQUSyVh4epnjFGDaseg57YKHkPe98gSHfSFC5CJx8cVVANxE2KSDOox+8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003)(11063799003)(38070700021)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dWtDTk5yYlBuQ2xRN0lMck50N3g0b05Uc01mbDBJK3ZYMFJTcjJURFRLY2tM?=
 =?utf-8?B?dTNQaG1OLzV5RmMvZFZiYTV3WVQ5NVN2ZENJUWg0d2NzcXlYWHJ2VEJQclB2?=
 =?utf-8?B?TjczNWZhQXFIS0JYWG9yd1cyRGM5NVJlZjFFUTVnSHNVOSs0VnJoMzgxdFVJ?=
 =?utf-8?B?NTQrZ1p4bGFsQm4xb01MNnd5bFhHa0hLYm9RVk94UjNWWjgzc3pvTDhJZ3NB?=
 =?utf-8?B?YjQ3enNZSlBUMFF6eGFFcjVjR1NuaHRKcVJJbGtKRFNpL0JBZnZTRGJ0UHJ1?=
 =?utf-8?B?WURxUlFHV0ZvdnZKU1NaMXhqZzJZOXVGYmlEU0txd2JGeGtZWHF4MmJZS25T?=
 =?utf-8?B?cFpSYWpGUXdUUkhMVzRSU2ZHRWFRYWRYeFNQa1JkT1crb1R3ZkM1Q3RIQzBi?=
 =?utf-8?B?WVZ2blNrbHRlekllMG52cnpHZTF0SjB3NDdEeU9ibW5TdDBLblRaQitWTTVF?=
 =?utf-8?B?NXJMZUxTVE55OGNhV3BXS1FHUzc1WXBZOTBDNE05YlVrMjM1MnNaTURMUFBY?=
 =?utf-8?B?L1N5bEpLRVJRL2tTR2hEQ2puNmZNcFBqUGVRZXd4eFY5aS9KL0xxMzQ2VWR3?=
 =?utf-8?B?OGRBamhtWWZtYjhwcCt3MExqbU9USExibVA2eEtpWEZZK3M3RDVPRGJCNmxG?=
 =?utf-8?B?M3JUY2d0RHhSV1hudFNHdk9yVTcweXd3UWlLdG53Zk9lSCtnTjlGSWpNRDVk?=
 =?utf-8?B?TnJFWFZMVnZoaEc1MW9zbUVPOGxpM2ZJbHFiYVI3aE95NnVYOVlRdmdNV2Yx?=
 =?utf-8?B?a2dwc3JDckg2dzd2K1ZRZlFBYnVuZEpqS3FOdlB5WDg0Qm5yZlRYMXljU1Nl?=
 =?utf-8?B?QUN1QUhJRzJNcDRERm1NbkpXMGI5aEZRUzBNenpwU05VSno4TzdKTjg5Nmhz?=
 =?utf-8?B?MWxJYk9KWjJzNEtWNTJUNHBHcTdrd3Z1WlVYYXFkeTZ2TmdBcW1zVFlrQmQ2?=
 =?utf-8?B?dmJGM2VxNWhzdGpwa1RPT3hKUnNLN1ZhY203aGJIR0pReldLTmVwUDFpakNS?=
 =?utf-8?B?YkN6Y2hxaHY5dmFuZjdpaUptQ3RvQUZyZjVZTE5zUGpicmZFVkdpMkpkOGQ4?=
 =?utf-8?B?QjFzWmJ1ZTBIcTVWK2pCUkNQTFFUSjlwVStBVEUrbTB0NHc2U1dLVTdVUTEw?=
 =?utf-8?B?NmdzSmZqQmo5R084NEdESHZLRmZIcHhpNG1EVnFXN25YRTg1ZXFDSGtyZ1Nl?=
 =?utf-8?B?YWJQZFhTNGZpSllTQktSTGpZdkFyMVRuN25vQTJnbXRGVFdOcnVZVFM4L0Q2?=
 =?utf-8?B?VUJ2QzgrK2kxcDcveWhCNy9yQVZvajI2WW82TnJvZ0NhZHdZYUJJbCtWU1VQ?=
 =?utf-8?B?STdZUEUyUW4wNDh6cVpYemk3WngrL3VRaVhtZ3hhdnhic21kRDNZT1pHWU8v?=
 =?utf-8?B?WFFCL04yWUt5OHVzYUUwdTRXUzVvUUIxUGE5KzZaWGVMcVoxOUZuejNuSDNu?=
 =?utf-8?B?TU1VdkdXMkh6Z3ZNeFc2bGRoR01kMGJNYXd4Yy9CelJvNjRweWZTMDR5SDFO?=
 =?utf-8?B?Tzd2Y2RoRUs1cGd5L0IwU0ZjT0Z3OEFLMitNQXlEZjRmeVMxWERBemdmNm5q?=
 =?utf-8?B?MENhU3F6dC9hWTMyQ0k1THV1UGQvNWdJbjVsMnMzM0tZZWMxb2lyMUxFQmox?=
 =?utf-8?B?UnE5eWE1ZkRyaUlDc0tqM0JNRG1rb0Y3WFNVeXJOQjFTc3I5VkdtVTdERkVI?=
 =?utf-8?B?ejlzcGYzNmkwOGRvNW9wc0swOVk4M09Jd1RkMVNubHVWTjdDK0tqQ1ovWjQy?=
 =?utf-8?B?R2ZITEFNS0ZFZ21JNHVlb09XZ1FWL1V3eEc2TE9OaWhKT1Z0am1Uc1dUWDFF?=
 =?utf-8?B?V1BvSUNIMXdvNmRzZFoyRlVLRk9RbWlYcktIdjZNcEg5L0h0OXNUYXdiREh1?=
 =?utf-8?B?T1ZCV3VOaCtaYXVQQm9uVVJEQUoySy8vRkorR3AyYUFJMTFDMURFMnh4eXFn?=
 =?utf-8?B?U0ZXbmppRm1QNHozQUFEYy9VWWNXa0h5aHBEd3M3Rml3R1FnRjRKVWUrUmRQ?=
 =?utf-8?B?Z0FyTitaSWpKbmxaWXhCeW1rZlg1OVhnc0duc1ZKekVVbUJqejBFeG02QjF2?=
 =?utf-8?B?bGNNcWRiUW9NWXk5cDRFWDlYMUNvYjNJNFkzNGhBcEh0UDJVZW0wZjFTaFlQ?=
 =?utf-8?B?aDVGOHQ4T0xRT042cytCckRCWWVzUzRvd2ppdHc2cVB2cUxwbDZ3MCtaelhT?=
 =?utf-8?B?SXJWY05LbFJsTUgyOVlmc2VtZVM1Wis1WlJJZUN1T0xrTE1POW92aUtyYWVH?=
 =?utf-8?B?VWQ5MEtnVlVQYjJ1d3RTRFcvQTIwUHJLOExFelMzV1k3SVZSa2tmYlY3c1VD?=
 =?utf-8?B?NVZQNG9nc1JnYkFPV3hMQU5tZnJiQ3NYK2ZXQVowT2xVbHRMWi82UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EXvVErtxe5DEYmvStGvrjiOsAG+m4uXhYgd8zKg0dbOWwh6z0AkWH0C0wQvG1Aavy/TVX6EjsXiUpcGii0JfhpygGf0/+kTNATsCjG0QLxocHRYhuZIoKPMHSFOkLaQS0fPBqn3p4WuQa2/Xl9EEKKN0cvJQDGMENshWFz8fcQ91D9ynlhtP3OewfBC8i4nn1nRDjPuDbQXyyDQ1LjeaVCnWS7Qjak0Rdp76TgiqZlyYmBMtH1hC1fzWcKzoCvnd265gzEgLmjhVb5EvdbbQNPo3rkkzHbYdfRZix3GWNhg4p6sEM9OWqCpVwVNxmU/qxKqDdD//HiN/dCihpQ0E0g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d2e8776-4928-463f-c9e4-08deb1706e8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 04:22:38.2388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M4UjLDgEzrrvGM/erdeBnabX2j6cl5ky4zG+9gLwCWvd1QVAnfc3qoISLtCTth6wnZe+E+anAbjF/V9SkHO3bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5018
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
X-Rspamd-Queue-Id: 1437053DA25
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkgNywgMjAy
NiA2OjA1IFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+
OyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCAyLzRdIGRybS9pOTE1L3BzcjogUmVh
ZCBJbnRlbCBEUENEIHdvcmthcm91bmQgcmVnaXN0ZXINCj4gDQo+IE9uIFdlZCwgMjAyNi0wNS0w
NiBhdCAwNjozOSArMDAwMCwgS2FuZHBhbCwgU3VyYWogd3JvdGU6DQo+ID4gPiBTdWJqZWN0OiBb
UEFUQ0ggMi80XSBkcm0vaTkxNS9wc3I6IFJlYWQgSW50ZWwgRFBDRCB3b3JrYXJvdW5kDQo+ID4g
PiByZWdpc3Rlcg0KPiA+ID4NCj4gPiA+IFJlYWQgSW50ZWwgRFBDRCB3b3JrYXJvdW5kIHJlZ2lz
dGVyIGFuZCBzdG9yZSBpdCBpbnRvDQo+ID4gPiBpbnRlbF9jb25uZWN0b3ItDQo+ID4gPiA+IGRw
LnBzcl9jYXBzLiBQc3JfY2FwcyB3YXMgY2hvc2VuIGFzIGN1cnJlbnRseSBpdCBjb250YWlucyBv
bmx5IFBTUg0KPiA+DQo+ID4gTml0OiBwc3JfY2Fwcw0KPiA+DQo+ID4gPiB3b3JrYXJvdW5kIGZv
ciBQU1IyIFNEUCBvbiBwcmlvciBzY2FubGluZSBpbXBsZW1lbnRhdGlvbi4NCj4gPiA+DQo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaCB8IDEgKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA4ICsrKysrKystDQo+ID4gPiDC
oDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPg0K
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+ID4gPiBpbmRleCBlZTA3NjEwNmJlODUuLmVjMDBmY2I0NjczNCAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gQEAgLTU4NCw2ICs1ODQsNyBAQCBzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yIHsNCj4gPiA+DQo+ID4gPiDCoAkJc3RydWN0IHsNCj4gPiA+IMKgCQkJdTgg
ZHBjZFtFRFBfUFNSX1JFQ0VJVkVSX0NBUF9TSVpFXTsNCj4gPiA+ICsJCQl1OCBpbnRlbF93YV9k
cGNkOw0KPiA+ID4NCj4gPiA+IMKgCQkJYm9vbCBzdXBwb3J0Ow0KPiA+ID4gwqAJCQlib29sIHN1
X3N1cHBvcnQ7DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gPiBpbmRleCBiNGNhNTg0M2QwOTguLjFmM2YwZDM1ZDUyYSAxMDA2NDQNCj4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IEBA
IC00NCw2ICs0NCw3IEBADQo+ID4gPiDCoCNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3dhLmgiDQo+
ID4gPiDCoCNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gPiA+IMKgI2luY2x1ZGUgImludGVsX2Rw
LmgiDQo+ID4gPiArI2luY2x1ZGUgImludGVsX2RwY2QuaCINCj4gPiA+IMKgI2luY2x1ZGUgImlu
dGVsX2RwX2F1eC5oIg0KPiA+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHBfdHVubmVsLmgiDQo+ID4g
PiDCoCNpbmNsdWRlICJpbnRlbF9kc2IuaCINCj4gPiA+IEBAIC03MTcsOCArNzE4LDEzIEBAIHN0
YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2Rw
LCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjbw0KPiA+ID4gwqAJCQnCoMKgwqAgY29ubmVjdG9y
LT5kcC5wc3JfY2Fwcy5zdV9zdXBwb3J0ID8gIiINCj4gPiA+IDogIm5vdCAiKTsNCj4gPiA+IMKg
CX0NCj4gPiA+DQo+ID4gPiAtCWlmIChjb25uZWN0b3ItPmRwLnBzcl9jYXBzLnN1X3N1cHBvcnQp
DQo+ID4gPiArCWlmIChjb25uZWN0b3ItPmRwLnBzcl9jYXBzLnN1X3N1cHBvcnQpIHsNCj4gPiA+
ICsJCXJldCA9IGRybV9kcF9kcGNkX3JlYWRfYnl0ZSgmaW50ZWxfZHAtPmF1eCwNCj4gPiA+IElO
VEVMX1dBX1JFR0lTVEVSX0NBUFMsDQo+ID4gPiArCQkJCQnCoMKgwqAgJmNvbm5lY3Rvci0NCj4g
PiA+ID4gZHAucHNyX2NhcHMuaW50ZWxfd2FfZHBjZCk7DQo+ID4gPiArCQlpZiAocmV0IDwgMCkN
Cj4gPiA+ICsJCQlyZXR1cm47DQo+ID4NCj4gPiBBbnkgcGFydGljdWxhciByZWFzb24gZm9yIGNh
Y2hpbmcgdGhpcyBJIHNlZSB0aGF0IHRoaXMgY2FuIGJlIGVhc2lseQ0KPiA+IHJlYWQgd2hlbiBy
ZXF1aXJlZCA/IE1heWJlIEkgbWlzc2VkIHNvbWV0aGluZyA/DQo+IA0KPiBJIHdhcyB0aGlua2lu
ZyB3ZSBkb24ndCB3YW50IHRvIHJlYWQgdGhpcyBvbiBlYWNoIGNvbXB1dGVfY29uZmlnLiBJdCBp
cyBhbnl3YXlzDQo+IHJlYWRpbmcgRFBDRCByZWdpc3RlciBmcm9tIHBhbmVsLg0KPiANCj4gPiBB
bHNvIHdlIGFyZSByZXR1cm5pbmcgZWFybHkgbm93LCB3YXMgdGhpcyBtaXNzZWQsIGRvIHdlIHJl
cXVpcmUgYQ0KPiA+IGZpeGVzID8gQWxzbyBzb21lIGV4cGxhbmF0aW9uIHdoeSB0aGlzIG1ha2Vz
IHNlbnNlLg0KPiANCj4gVGhpcyBpcyByZXR1cm5pbmcgZWFybHkgaWYgcmVhZGluZyB0aGUgSU5U
RUxfV0FfUkVHSVNURVJfQ0FQUyBmYWlscy4NCj4gVGhhdCBpcyBzdXBwb3NlZCB0byBiZSB1bmV4
cGVjdGVkIGV2ZW50IHNvIHJldHVybmluZyBlYXJseSBkdWUgdG8gdGhhdC4NCj4gVGhlcmUgaXMg
YSBmaXhlcyB0YWcgaW4gbmV4dCBwYXRjaCBpbiB0aGUgc2V0Lg0KDQpJbiB0aGF0IGNhc2UgTEdU
TSwsDQpSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+
DQoNCj4gDQo+IEJSLA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4NCj4gPiBSZWdhcmRzLA0K
PiA+IFN1cmFqIEthbmRwYWwNCj4gPg0KPiA+ID4gwqAJCV9wc3JfY29tcHV0ZV9zdV9ncmFudWxh
cml0eShpbnRlbF9kcCwgY29ubmVjdG9yKTsNCj4gPiA+ICsJfQ0KPiA+ID4gwqB9DQo+ID4gPg0K
PiA+ID4gwqB2b2lkIGludGVsX3Bzcl9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwgc3RydWN0DQo+ID4gPiBpbnRlbF9jb25uZWN0b3INCj4gPiA+ICpjb25uZWN0b3IpDQo+ID4g
PiAtLQ0KPiA+ID4gMi40My4wDQo+ID4NCg0K
