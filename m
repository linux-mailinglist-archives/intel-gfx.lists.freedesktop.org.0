Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDW1NLr6DmoSDwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:29:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61B95A4D47
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:29:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F90210E356;
	Thu, 21 May 2026 12:29:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fb6sH31Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4675C10E356;
 Thu, 21 May 2026 12:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779366584; x=1810902584;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Nb9k2RHTAu/XYTvvLRUWuGiGk9DfDSnDtEWTi3hjLBc=;
 b=fb6sH31Y3kd0sfsrHqS/afOyxjvAHQ35EdhxyG0XeKlQswEqjskWj21W
 wd8uv0ysUkMZVSQWmgaNq5DujgbJVEE8X989s05P2i/Vk6SkncHXAV9d/
 DHxVKCoy2eItAsvZQAStXsTPRBuVeloyN3/sXF7iEaGY8FD3kIQ/p2Lu8
 N+3vQSs4tYSqUQ+SNc9Pa0w4EqMSvR1SXxgPqOMSAXKHqK9ZGPXjgTmvA
 av1g0sHuslp0nTdLO2CzqJVhVsvsI9PPrE8RrjgvnvHPO23yf0MkGXlnI
 fP+54JsiffjxTDtZgmvcr5OdvH9pVqBadmv4J/kjK/aVlAg3O0vNBSQwD A==;
X-CSE-ConnectionGUID: ER50XQBwT7+yL/33bZVV3w==
X-CSE-MsgGUID: 6zoh9qg1S9amPFxtKFy0iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="80248476"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="80248476"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:29:43 -0700
X-CSE-ConnectionGUID: 7pKiIsTTTSqBDp6cazpc+Q==
X-CSE-MsgGUID: 2dkiiWO5S6aSmabXICwNCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="264035459"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:29:42 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:29:41 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 05:29:41 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.44)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:29:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TN6cv201ZshLzP8qmK7dNOB9f5qFmoNhu2UrZRfTtyOof/NcgoZ4wF0D15tKozfQtbteW6p+yI84iRTeonClbtrQRySjN9kywL6nrhyA3YxmeFbEmmLbQUSoLP1BEvkVsyy2YKRKD82dfcwq3yoBVk6KBpzY9e0kQOLqziCCJcVS1gA/qkJwiaa45r895kOv9iuOG/TgFGhiGGULfYd6reC6qKco0ckGrMg7k1hRkdmHblPFJh5BhqDKkq16MQoLZXmLzmyu4H4ImJv/jbO96YeuOb0ut2XeoQlKGZZhuESLn+fdSn3FidlVtNfKjyKeBpeKgZ1LZpBkvxdH4+9xRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nb9k2RHTAu/XYTvvLRUWuGiGk9DfDSnDtEWTi3hjLBc=;
 b=hk0XsLxQmE20n8bv8DTajeeAlbBCac7U9PtXuzCza0XySHkEetzGOwK6E8KQB+A/sfXLgGgKMHc/LIlnHNEfpJmIZcNdC+5R0yPDo3cho4XdNjcXpf1XW2TYxh2OBroxSMHcbXIs2Zfeinn8lonxeVRz5BIqOdfYx5C25NNdPOrf4RlemNc4G2bw4NACGZwfGluVx6STzODKnUsJMuwKb8HJzf+JF9mbAIFYbfePMf8/0tGAFd6QZ/flLIW3hTVrruiSIQhWA8VFEwPzaGMRt/uZHaFD4+maJDdZHR5UphcO9ybsNRp9Eb7ztgH1BVg4KafSuoBcy+Ohaqhdv60NHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SAVPR11MB9574.namprd11.prod.outlook.com (2603:10b6:806:4e6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 21 May
 2026 12:29:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.013; Thu, 21 May 2026
 12:29:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
Thread-Topic: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
Thread-Index: AQHc5D+PFcgtibVD+ki2NBr7w5Nz37YYcnYA
Date: Thu, 21 May 2026 12:29:36 +0000
Message-ID: <5b17d5275e8020d6ffaa899e27b70e5b54a60429.camel@intel.com>
References: <20260515073616.2794146-1-ankit.k.nautiyal@intel.com>
 <20260515073616.2794146-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260515073616.2794146-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SAVPR11MB9574:EE_
x-ms-office365-filtering-correlation-id: 68399506-3588-4700-e301-08deb7349f15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|18002099003|56012099003|22082099003|11063799006|3023799007|4143699003;
x-microsoft-antispam-message-info: xhq7vVtD/npDf22zLXouv+/u5xEm+29zt+qzJSfCqAH/5uV0l2reJPNCAbxCNlkRVVNtt5n9az49g17MH0Hcm9A4hsOSTLtE4fMeJdsDaMWXeanokYlLW5Xl1sLQty5Hf+7xw16Id72QjBluAnh+xJOJIdpnivYeEHDBs0driHFWS7c006CMHL5s3Qov+yyRkfuztLnc6myec8HP7bFwYRZG3mm7212xZS1BOY3P+ACdq4kWbGCTdETAA5B2c1255EBQJqO3o/9PRXP4cqwLRYwCquZdFwHP1HKb/Ya3DGlmVNJbYKbn/xO0g/+ZcDnAApgsvWJM9X/VoHRru3790J2cr9Olz6FCrOk+5UTqhYJGn/ParmWGHxGbXRZyOyOAyfHDy1snNfN0nXKXMZCd5EUV/MlIUEGLmopyjwv/DnzaM5Sc43T6hZJ3n+ITRuUhzXgH3eeJp/HRkeM7kQ/m7nteQlJc8SyJs52F/DEAY75Vxk9hg5cezkQSF2OIm8Pw8B9dZpQ4dZ60xhOcW7U3XxKYnp+xo+C1lPOXP0oofZ9y8XmGSEEbPa+d2+mikFI7lWSlwwmmEFEG07PjdjIPntOBOrOiYC5W3My8a3KKnW7YqOQ0K17EXUhc+ZrYhNNW0PaKzT/1NHCpgClC44VWuR20hnTKTSU27FgxhTCBEwopAeRKOe8RjUzv3DJhUtBxqMZltMga/QSNJRPS5syp+slilrD4DxNFoa/GVNBZXgtCWuzKG9ubSirxpKff/ZFj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(18002099003)(56012099003)(22082099003)(11063799006)(3023799007)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWs3TldiSEZlOTRWODlGcnRvSThiak5EbW9hQUJEOUc1TEpSenEvSWFFN3dz?=
 =?utf-8?B?VHBoVXdJWCthcUNnWkRVYW1idEVLZTRDSExzdzFKR2JPMVRTVW1ueDdVSTJ1?=
 =?utf-8?B?YTlPbmxhbzF0VXVzZTlwZVFaK0oyZUUzbjNFUWxRdUgrK2Q3cGZnTGlQbnlT?=
 =?utf-8?B?VmxNTjBhY2srSDJGZVJHK3g3M0lYSXpGOS8rV1BDaC90Y1JvTTc0UHF2bjBO?=
 =?utf-8?B?SUZOeXF0WWQ3RzlGSXZtY0d1cElUOHpuNnBIaUI0UU9MQUFwcFQyWURySGJu?=
 =?utf-8?B?M3o5cU1wWVhpcHJYNkNsMFpTNExrblovbmUyRFUwdzFjUFpleks4bFR4MGpN?=
 =?utf-8?B?ZnhGTTFkTkp6VkxlYktzR1NZQXFrUGhlYkFZNjcxa1QyVThrSHAzOHg3Y3Na?=
 =?utf-8?B?UjZzd3JweWxxY1ZvanpzR3U5V0psdjBrS0JLci8rMVlzTnpmb2FmbkZPQTZi?=
 =?utf-8?B?OEVueHJXQW9qMWpWUld6ejI2YlBmUmxENk1mbUlKS2lBQitlZkxFZS9FdmV4?=
 =?utf-8?B?OXpiT1MrT3VqaVE4aXRGMHJkaHhxbkd5YnZ0eEc1M241WEt1ZDkxemVpOXdB?=
 =?utf-8?B?RjQ4VkxUK3dEMkg0Sk5QdDJra2tod3RvRWN1Z2szYlZ4RWlsWlNpUmhDbjlY?=
 =?utf-8?B?QnlSYzdDbUhxUnpKWUpjUksrVFpKSXV6OXlLZ2t1aE1vMkJRTEY1K0FsazlI?=
 =?utf-8?B?VU13emNuSnlTVi9PdmU3TmU4NDFUWUl0ak1XZU1VeWlPeXNUd0pwQUZvbDIr?=
 =?utf-8?B?K3FxUWRSenRnbzNKSDA5K3pqb25WMEVFNFVEdm5BQktHVDY0VG0xNUMwME1P?=
 =?utf-8?B?TW5YUmZVbVIyVURnRzYxUVFvaEhJenJvSjNpZ0FmTjFCVXl3WUlGZXcwMGxq?=
 =?utf-8?B?bC9vdWpGL3lpbThqNGtWalJSMUxoZDdPTUx4TC9zNXFaWDlncUhSanlqVDhw?=
 =?utf-8?B?NUdRVzhDR2hwRm9JSnAxNkNkckhZVE1RSUIraDN1ejBQVUZkNmR3UUlsR1dE?=
 =?utf-8?B?RFhwSVB4eEJTWUIzOHgxOVo5UGwzRm50UHNPaXJZS1FlOUhtTGdjdklkUzRP?=
 =?utf-8?B?QlpxYkxyTUpqOW5uTWFCSmNDcjA3ZmZwc2dSdzQ1RmNrUWFzU2t3YVhraVJV?=
 =?utf-8?B?NDdCTU9yVFQ1N3JZV28vWTROL1A2UGhlN2hLbWdBTUpNM0dBeTgrQU9wd0Va?=
 =?utf-8?B?NXpoZGhPYkpvWWovN1l2Um5EeXFrNHdaQzNJMUI2ZU9YSzJWVDljdFJuYVpq?=
 =?utf-8?B?cUhPSTRBYUN6WmEwcjhxVlJsSEhxU0ROUzRGQjNWYlZIaVVCODRPYU9wVVNO?=
 =?utf-8?B?M1hCZWtkL2w4MW1xOGxjcDdWT2hhTXhXSzZoRllHbU1vL0VGdWpKSGNyRFB6?=
 =?utf-8?B?WEhyT2xVaG1KMVVYVE5JOGovMDhtMXFwS2g1RFBpa3JyaGlBYlhJanVHVUJj?=
 =?utf-8?B?ZVhJVjc3ZTRKUkFSY3JhelVvZTRGR1NlazBIeU5jTmk0NVVYRllhT1dsWER4?=
 =?utf-8?B?TjZHVnZ6R0s0U2Z6bjFUcDNTK2ZTNHBkYWZ4NFBGY1hvOVJWamZjNFFXMmdQ?=
 =?utf-8?B?UjNFcWxKVzhUL3phbWJSKzJhZ09FUmJrT2ZLT0RWU21tVnM2VUVGOW5jcWtU?=
 =?utf-8?B?WGlHRzh1OWxSSnNHajFqajA3ckFaTjQ2bUxReGRjUmhtbzFOdEEvTmpIOW00?=
 =?utf-8?B?WTF6QWJZZ2hjeHJlZ1lvaE1HVHpxU3JXWm45WjZxS3IycTBZeEpuY2QvTXdH?=
 =?utf-8?B?dzhMejF0a0VLcXdFZ3NCL3BkUDA5akxvVS9FbWJhandYNnZ2cXpaZ2ZrTFdU?=
 =?utf-8?B?QVZldHM4MmJlSEkyd3NvYXUwVkQyMVJQa0hNSzZoM3dwU2NhWmNyVXpIaVU3?=
 =?utf-8?B?VUFiQWQreUVIVlhzQWFsdml4TnNDeldBMGdoS2NBcjh3NGJjT3VvSU1rTHcr?=
 =?utf-8?B?OW9PejNndm9RYXNaSU9pS2xSQmFSNC9YQWdXYXF0NWIrdnEvcjZBWEJGRW5J?=
 =?utf-8?B?bUhFRnVEUzI5UmMzWlhUMXRueXhtMXl2ZUNHMUpKR2lIVG9SamloV1pVYmJm?=
 =?utf-8?B?TXRrbTRMM2ZXZktINXFlbWpoa2IwelB2QytzcWRaNm1CZEdYZHZ6dlVYR2lu?=
 =?utf-8?B?RnVZWHJMcThlNDA4RFJrRzdPTnhJM1o1NGhJK0JyTUJSQzc1MU1rbFFmc1Az?=
 =?utf-8?B?UFR3ZnRCOGpOa2dUMG9uL1JGdlMxb2hwYTVyTGFmZGFUUFBoQ0lodFhsZVRW?=
 =?utf-8?B?VXlLZGF2bnlaeDM4TUw3L0VLM1dMTVFOT3FzUGc1bnFQUVlVQkpmQVJTUlRC?=
 =?utf-8?B?b1pXTWFQS1ZUZXlSVVg2aklrd0xRR0Z4ajlVRUJXRnR0bFdJbVJBNk5MUkRn?=
 =?utf-8?Q?raPSJuQ3fZR23GLM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <334E0EF4D20C054C8BBFC3D00AEBE885@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ZT1Wr8iLRt6garuQE0QDE6PmyFY8Jr553jMBGhj74kw2ZV/MV7moD6ZLWykNZB3GQHtp+o5IzFs5A9odBnoEcte6MOG60/Nzl70hqSL5iE7viFybx/T65gI79punKSzawWfHeb0vamBxgQ+bCbblRr4oj2St2PZknxUVge0yPv10bGwL/gJSxehMqgRT5IShe3HLjEvDLffa9S7fGta7ybGS0kbuu+PWgjriF/18soHSJArsI6ETphjrf/Cj9Ga1XHrJriVGEQNhj9HnAhKs6yEYDekHSFMm5gLxv3W0ozEegAYGd+cIWJtw1pU8bt2fJXXSrF+2xDFlo9bQfH7n9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68399506-3588-4700-e301-08deb7349f15
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2026 12:29:36.8019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 38tDpJbt5smpsCjttQIV5HdvMxk4IcDByKUMTJW3oGfa1r0u0mxY5kkFy3iSVpafki94dpgSQ1QDc1o9T5Q4XtIrUrjogANQW+w3J/NNwG4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAVPR11MB9574
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D61B95A4D47
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTE1IGF0IDEzOjA2ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gVGhlIFNDTCBjb25kaXRpb24gY2hlY2tzIGNhbiBiZSBjb21iaW5lZCBpbnRvIG9uZSBleHBy
ZXNzaW9uLg0KPiBuZWVkc19zZWxfdXBkYXRlIGlzIGNvbW1vbiBmb3IgYm90aCBkaXNwbGF5IHZl
cnNpb24gYnJhbmNoZXMsIHNvDQo+IGNoZWNrIGl0DQo+IG9uY2UgYW5kIGtlZXAgdGhlIHZlcnNp
b24gc3BlY2lmaWMgY2hlY2tzIHRvZ2V0aGVyLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5raXQg
TmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDEzICsrKysrLS0tLS0tLS0N
Cj4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDhm
NzBiN2RjZDg4MS4uNWJmMWQ3ODIxODhjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE0NzcsMTUgKzE0NzcsMTIgQEAgaW50IF9pbnRlbF9w
c3JfbWluX3NldF9jb250ZXh0X2xhdGVuY3koY29uc3QNCj4gc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUNCj4gwqAJICogU1JEX1NUQVRVUyBpcyB1c2VkIGJ5IFBTUjEgYW5kIFBh
bmVsIFJlcGxheSBEUCBvbg0KPiBMdW5hckxha2UuDQo+IMKgCSAqLw0KPiDCoA0KPiAtCWlmIChE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzMCAmJiAobmVlZHNfcGFuZWxfcmVwbGF5IHx8DQo+IC0J
CQkJCcKgwqAgbmVlZHNfc2VsX3VwZGF0ZSkpDQo+ICsJaWYgKG5lZWRzX3NlbF91cGRhdGUgfHwN
Cj4gKwnCoMKgwqAgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwICYmIG5lZWRzX3BhbmVsX3Jl
cGxheSkgfHwNCj4gKwnCoMKgwqAgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzAgJiYNCj4gaW50
ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRURQKSkpDQo+IMKgCQly
ZXR1cm4gMDsNCj4gLQllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDMwICYmIChuZWVk
c19zZWxfdXBkYXRlIHx8DQo+IC0JCQkJCcKgwqDCoMKgwqDCoA0KPiBpbnRlbF9jcnRjX2hhc190
eXBlKGNydGNfc3RhdGUsDQo+IC0JCQkJCQkJCcKgwqANCj4gSU5URUxfT1VUUFVUX0VEUCkpKQ0K
PiAtCQlyZXR1cm4gMDsNCj4gLQllbHNlDQo+IC0JCXJldHVybiAxOw0KPiArDQo+ICsJcmV0dXJu
IDE7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyBib29sIF93YWtlX2xpbmVzX2ZpdF9pbnRvX3Zi
bGFuayhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCg0K
