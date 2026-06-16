Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VwGUNfNHMWoNgAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:56:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3974668FAAA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:56:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VOmt0CvO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E8310EBAC;
	Tue, 16 Jun 2026 12:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9939510EBA7;
 Tue, 16 Jun 2026 12:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781614577; x=1813150577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=of63kdIyIPLmC74zRY0nNSDAEElOyCSdyx93Q25+mbo=;
 b=VOmt0CvO2prDcxpVEXGxWCHguklgg9S/rp0diRahzC2acIt2VPTsqmAD
 sZztW2oYA5cl2R0+WX/ZyPSWsrr1Y0rf0GCHG+8Y4uuzMkIkjk61ThRsr
 9l/bGCvroZ8wU98ROhE+DGcGjS8E2AOMxSZ9qkFi9xAx83HREGsL1xBMz
 rQVXJS0PT2plFWT6/S452cECmcZFPg7oOHLUVGZEgWWqZOSs5YV+0mS9k
 g96YJsSO8+JfOYo9eMD15ZcnOgL3wvXCR4NMaFUAuQ+sScwyTNFhrM+3l
 KCjbe72ayMqHo0pK+osKA//OfMxCZYArJwYolHjSBBsBcHVyShv6PgyM7 g==;
X-CSE-ConnectionGUID: 1ELdFYAYSs20qUPGdVzK6g==
X-CSE-MsgGUID: 5hh0NY5PR7KUWN0aSZhaKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="92938682"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="92938682"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:56:17 -0700
X-CSE-ConnectionGUID: y1Vql1U0TZ2cqAODaLNKhg==
X-CSE-MsgGUID: 0CpulZEYRn6Jj9CTDIJLqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="245390941"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:56:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 05:56:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 05:56:15 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 05:56:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nDBkZBvkqohfowHO5YAeR0wz74syHab9qqZfZGRUs3oP4wYt0I8L/nAarCGOG2Q6vpZXuCWbSfAksnAihzEpbXTOjePHimqh/sj2F1GggBEe/66Hf2RUs8WVjIvHRHEJM3tKUjBElOhwTHsypzkd6vZ8dl2x+wFPJg/dhi9VVZX+DzaDP/B6lTwz9G0sWZTN80TdhpgV9NDffTk7Yy5Dl9Kg+VHIQ3wlKgJP/MnVOM03hjaakN/7jqFv+y+fTJYW9yg6oWV+6S4IcYzKBjWLI7jFuQ3cYBWpdfSAbBlVXk3IlX5uTljkTzeOMdsChUVvDAB9rrylidd2LSmr4QvCUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=of63kdIyIPLmC74zRY0nNSDAEElOyCSdyx93Q25+mbo=;
 b=i+sp7KqMMhzuo7whKzLxdG/Jul9kYxULgNx33lrZLYf0sQlRaX6/CJNZDgQWcYliNujZR9l3V/i8xEJjfATtqoN04RJas7Q981SO/KgZFHY2RsD7pBGVOFE+7IFN6+kJgMLuiJtAwB3iapJfuROTrizgj3A/UdNRnLH1sc+sqz+j6hspudqeOVH8i1xLlOvvELWTsatV38GU6xWOoQFnTC0oYqI95KKXX9ufHvNkOsX2EMfSBcIBlbFmy6zj1KYRkHA7VwRc88u7hlo5vVYOF9yl8//1xyIxLANU1Am0GzSEkHPZHDMMKljVSA1jbgptiyahZDzEHBAGeQdQBCXN5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY8PR11MB7265.namprd11.prod.outlook.com (2603:10b6:930:98::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.14; Tue, 16 Jun 2026 12:56:12 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 12:56:12 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v9 00/22] CMTG enablement
Thread-Topic: [PATCH v9 00/22] CMTG enablement
Thread-Index: AQHc/QaP+YJdjKVMn0msOXNHW1rjtrZBJAkg
Date: Tue, 16 Jun 2026 12:56:12 +0000
Message-ID: <DS0PR11MB8049137DF026AD05BC8A3F89F9E52@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260615200339.885190-1-animesh.manna@intel.com>
In-Reply-To: <20260615200339.885190-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY8PR11MB7265:EE_
x-ms-office365-filtering-correlation-id: fbb4035d-0cc2-43e0-cdc7-08decba6a4f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|23010399003|56012099006|6133799003|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: KHd5MRPimpt4TGhpuDRkRDjuFW15GcGcZJMCXKjxWM7VvVBF4w6vTO9+ZwPPTAbs1250IljrEh2wstUB2oYyW6JEqNbkR3fhEuWfXOErwnw1xUM2Mrjyf6mXKiLv7rzp0iRUiZ7cyfFYVzyp0mqExsEV/w3MiF3C+FcwwZwG1aUwnpSUAKS73tPNqRGFD3B6HUsauds+W/MkZNXYiyjCLIsfDd7ey0EchVTQsYJjy+n6j58MyuOoXouVBvzMERMAcRBwdSHmh+V91NPHTXnFcX+bpitJX+dqErUUp6/i3ZC7XwDfUOfb3oxcWrX+J0L1WQHVcCaCG7dDSbIFyD+WlSb7epK/JsP7lfAEVoj5b63xrV0BJ/awDDkJSLtGwmxF+gwXLIAcEEKNX3JT4GRuy16vpf8YE594UZnBeql9e0xwB2IcyBz9ddp+X5SztHMOlpRTJCB+qamgpB745zJT5nnODnaJQaf8pcOjJ5THWmShTKFiSlI2eOAwZeV+mencipbcYVdOgnQn88zOuhE35v6WZ0v6GEynKLUs271opzKyvZp2J96UYiCggTOaXtBA1C70YzQfhGDTcUf9hmXVC3osZKcrUBX5zNx3AqMTnG3Y+GT7jBb2aOp7PbNWf/9BA1klQTRolX51zGdsg6rUjAu4rIcF/7HnKMpmgS3QJkEOownJbqWyziP4bYDKU2MVXB3P67t8b/2MHbvf73r6rjw2kRRCOm0y5mcYVz56r9BNjNtPz8nRMUpYvDg+oCVw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(56012099006)(6133799003)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WU1OYmRFVWZVajJmTWhVU1hzcEpVaDNLQnp3NVV4VjgvdWlGK3RNZXU1RFVT?=
 =?utf-8?B?Z3JEd042YmZVQXhnT210QlFZdmY4TnVwclg2U01aQ1Z2RGdxU09iL1BSL2pz?=
 =?utf-8?B?UmRJWFkxWTZqTjl2cHlQalFucDdVMmF1dHJLdXVrZ1JLSUJoVnU1cTNCYTdM?=
 =?utf-8?B?N2N6WWd2cnRDWDEzWlF3b0M2Y2FoMFFkTnY1VU4ySDVyajhtc09ESERCRE1n?=
 =?utf-8?B?VTdSMmxiT2JzUDM4eXNiRTVNRUN0b3JKL2xTdXdmRWZuc1hrWGtsbXJSM2tH?=
 =?utf-8?B?WlMwTXA4YkZrSDYzaTZNZW9majJCQXlNaEhnNkJrbTdPMFowU0dxdmpwQzlC?=
 =?utf-8?B?WkxieVRIbFpWZ0tOdHU1bk9WZS9ENU5rQ2NDR3RFUmVXYVZxZ3pUVXZKUVFP?=
 =?utf-8?B?dElpczl4WDFWYnpDaHMwWUV4a255V2tiTVN1TmFJNVIrSjUxQVdCSXhLU252?=
 =?utf-8?B?SDdGanhYMnZTSmpGOGZXTmNlNDIyb0VCcjBTT3k1TkQyWFF6RmdnWEt0SE5h?=
 =?utf-8?B?eXNlb0F6NWU3bCt4RUhqQ3U2YlhFTm5rUG1sSXp0a1V5TnNJRTJvQk9jS1Y5?=
 =?utf-8?B?cXhNMGt4eFgvanJmSXA5dk9hY3RXODMrNHZmeWd3UVFJMGlDNUF2YzQ0dnlz?=
 =?utf-8?B?SGNXS0RhanZhSmxKdGZEaXU0SEkyK200cU9nSElHUER5UEU4WG9jS2UxMXcv?=
 =?utf-8?B?My9NMU50bS9IOThRWU9hVmQ3QnZaSy9uWXRSMXdOTEh6bUlFeEVUdktTUU5F?=
 =?utf-8?B?RlhoaVJLSUdNVXVPbXN4c1BIdEp4WE9OblNyVTJDNEh3azJhZVZFbitPK2pt?=
 =?utf-8?B?N01lYUFvWkFFeGlCNzg0bE1wMjNIY3hiNHhtME1sSHBmYmhEbWFpVDlqb2VD?=
 =?utf-8?B?aFpYWFBxemt3VEhGd1ZDKzVwbC9ZbXpYeW1EMGxFSHBJU1JZQXh2K2xQMDNV?=
 =?utf-8?B?RGJiSDE5dkZzcmg5NER3NGdWaW1TbHpIMnF0WXlvdUwyMjJJbzRKcDBmUTVW?=
 =?utf-8?B?UmFXQVpUR09aU3dUazJMMFdLSFh1WkRFdUdETUNmSlF5bytJMDVLV1c3ZStt?=
 =?utf-8?B?QUE5OUUyS2Z5WUZSbXAxT3BKSm1sb3lUODFuK1JTaWV4dW01ZUI2SlFBWmxF?=
 =?utf-8?B?NnZFL0c1ekxDN20zTytBNHZ5ajFYYW5UMHExLzRhVWJwYTN6aDVhVUlhaGxQ?=
 =?utf-8?B?Z2tFNythSGVvRHVQNjVvcml0aGpUdUFMYXpYZDRjaGVDU1FwMHpKNUYxL0kw?=
 =?utf-8?B?ZDdob0RSWSszYVZSUlNzTUV0OUtud0JibXEvVDNVL010YzljVDRQdSt2dllt?=
 =?utf-8?B?THYyR05PZGYwelRKeWpZWFdIdTIwZzFmMWorN0YrNGdJTkNwYlhVaDFiNkJU?=
 =?utf-8?B?Q2xxWFJkU1VWV1hvZmdCbVJnYU5MZi9tV252YWFTdmV3WGxUYktrempBVGNU?=
 =?utf-8?B?K3U1Zk1LSzhVQUk5RDRFeTlCdUthYkh0M0dxUUd3ZmRRMENhVFVNcVVwZ0Jr?=
 =?utf-8?B?RWJ5NjFqVGpPYUJuaC9LdUlzWUtuQVdtVk5oS0R4dGdNcHoxWjQ1Rm5EWUF6?=
 =?utf-8?B?VWNuOWRqZ2FZVW85MENZZ1dVajlFMTd4SlplNmwxVXVpNzUrWVVab1F5RXdG?=
 =?utf-8?B?WCs5ZUx2SWk3OS9FV3FxVytxYVVkWS93U2N2NXZESFd4Mk10d2JmT3R6dHF2?=
 =?utf-8?B?ZU5WR21saVB2RTN4WXo1RjJtanl0UTJVWmMvNkhSMjFNdXhxd1NzZ1JFSFZr?=
 =?utf-8?B?QnQ3RkVxOTRVS2xMQ3BjNTJrSklXaXlJTWE3ZnVJWlRMM2dGOXYzTitVbVp1?=
 =?utf-8?B?MTBwSG5EVmpLc3BTYU9ibTFmNERYd1czbnZDbTN6RjF1VHVTdGNsWkttZkNq?=
 =?utf-8?B?QlQzaG1tRFNHUjBxb0dFZWV1OXpOOXNHd3JqN3FmeE5KTlNuQnRaUy9sbFBt?=
 =?utf-8?B?WTV2Q0dISGE2bXVpUTV6RVlaWjluTzVUc1ZGOXI5OHNQemF1SU9PRjhwNUZR?=
 =?utf-8?B?aG0rWkNtTWZFNU5JQjczWCsxRlhTQ1A4b3luVUNCUm1sUnpCbFJiTm00UjNs?=
 =?utf-8?B?cVdqdlMxTVNtZ2llZzVhSTVyOHc2ZytvYUo1bzI5cm94cys5dGovQkR2dmox?=
 =?utf-8?B?bVdzaFFNV2pUZWt2VDVvWnpDUUNDVnltbzBKOVd5UStxQ2JpVzArRTY4VnNx?=
 =?utf-8?B?VFdWZHl6aFJ4RjBOQm02NzlKTkU0TGVKMWZ2N0k3MUJkV2sybjBNRkpVYTIz?=
 =?utf-8?B?UDJPZCt2VHRtc1dZRVhYS2xMVTVjcUx1RG1JUTVMQWwydk1oRGEraEpVZ3My?=
 =?utf-8?B?bEJVVlJrZ2V4NkNvYTNTNzAzQ3VTUkJ0U0x6WXV0aEw0ZzlWS2NDZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: VZ6ZC7amCUHGIHfky9ChgQAGgPKKEF9BtbIf3SrVPu1CQ1wZeDZN4TkyrUTTGntyoAp1Rec2YLk3NmoF/ivaqunWVH2VFFUjVBkIAu5odwiYlKrsKaQP4LAYMuIpeCwoOTnwhujZkPYdopdASGVQDwfJkH3Bj6yrGJqllev0vhiE6tm9Ruee2/Tp4LD/e4TtEdZlnszPzqaYipGvtvM5iq011ySI+RyzUWf9Z0Xhqh7OF1wN32nI+9GFNtIgd79jJG7XTlIuVjRnoUWPyx42Vl1GgwPzSVEbXxgF9XCTrUNi1baqv5zkHqAt+4yxZpKt7BDpHtCHokIafvRma05+gg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fbb4035d-0cc2-43e0-cdc7-08decba6a4f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 12:56:12.5674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MhjJ+NoGREagh+tGQdHBK0cSF9sVzTtVCDaN8GzQ8Vv7S+PxYU+hLJcA+hcw84CQ9cnBe+C72vX5dWsxZTPRvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7265
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3974668FAAA

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gg
PGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKdW5lIDE2LCAyMDI2
IDE6MzMgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhl
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBp
bnRlbC5jb20+OyBEaWJpbiBNb29sYWthZGFuDQo+IFN1YnJhaG1hbmlhbiA8ZGliaW4ubW9vbGFr
YWRhbi5zdWJyYWhtYW5pYW5AaW50ZWwuY29tPjsNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb207IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgTWFubmEsDQo+IEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDAv
MjJdIENNVEcgZW5hYmxlbWVudA0KPiANCj4gQ29tbW9uIG1vZGUgdGltaW5nIGdlbmVyYXRvciAo
Q01URykgc3VwcG9ydCBpcyBhZGRlZCBOVkwgb253YXJkcy4NCj4gRW5hYmxlIENNVEcgd2hpY2gg
d2lsbCBiZSBuZWVkZWQgYnkgb3RoZXIgZmVhcnVyZSBsaWtlIGR5bmFtaWMgZGMgc3RhdGUNCj4g
ZW5hYmxlbWVudCBsYXRlci4NCj4gDQo+IFRlc3Rpbmcgb25nb2luZywgY3VycmVudGx5IGNvdW50
ZXJzIGFyZSBpbmNyZW1lbnRpbmcgYXMgZXhwZWN0ZWQuDQo+IA0KPiBBbmltZXNoIE1hbm5hICgx
OSk6DQo+ICAgZHJtL2k5MTUvY210ZzogQWRkIGludGVsX2NtdGdfaXNfYWxsb3dlZCgpIGZvciBD
TVRHDQo+ICAgZHJtL2k5MTUvY210ZzogU2V0IENNVEcgY2xvY2sgc2VsZWN0DQo+ICAgZHJtL2k5
MTUvY210ZzogQWRkIENNVEcgdHJhbnNjb2RlciBvZmZzZXQgaW4gc3RydWN0IF9kZXZpY2VfaW5m
bw0KPiAgIGRybS9pOTE1L2Rpc3BsYXk6IFBhc3MgdGFyZ2V0IHRyYW5zY29kZXIgdG8NCj4gICAg
IGludGVsX3NldF90cmFuc2NvZGVyX3RpbWluZ3MoKQ0KPiAgIGRybS9pOTE1L2Rpc3BsYXk6IFJl
bmFtZSBjcHVfdHJhbnNjb2RlciBwYXJhbWV0ZXIgdG8gdHJhbnNjb2Rlcg0KPiAgIGRybS9pOTE1
L2Rpc3BsYXk6IFNraXAgRFBfTUlOX0hCTEFOS19DVEwgcHJvZ3JhbW1pbmcgZm9yIENNVEcNCj4g
ICAgIHRyYW5zY29kZXJzDQo+ICAgZHJtL2k5MTUvZGlzcGxheTogUGFzcyB0cmFuc2NvZGVyIHRv
DQo+ICAgICBpbnRlbF9zZXRfdHJhbnNjb2Rlcl90aW1pbmdzX2xycigpDQo+ICAgZHJtL2k5MTUv
ZGlzcGxheTogUmVuYW1lIGNwdV90cmFuc2NvZGVyIHBhcmFtZXRlciB0byB0cmFuc2NvZGVyIGlu
IExSUg0KPiAgICAgcGF0aA0KPiAgIGRybS9pOTE1L2NtdGc6IFNldCB0aW1pbmdzIGZvciBDTVRH
IGJ5IHVzaW5nIHRyYW5zY29kZXIgdGltaW5nIGhlbHBlcnMNCj4gICBkcm0vaTkxNS92cnI6IFBh
c3MgdHJhbnNjb2RlciB0byBpbnRlbF92cnJfc2V0X2ZpeGVkX3JyX3RpbWluZ3MoKQ0KPiAgIGRy
bS9pOTE1L2Rpc3BsYXk6IFJlbmFtZSBjcHVfdHJhbnNjb2RlciBwYXJhbWV0ZXIgdG8gdHJhbnNj
b2RlciBpbiBWUlINCj4gICAgIGZpeGVkLXJyIHBhdGgNCj4gICBkcm0vaTkxNS9jbXRnOiBQcm9n
cmFtIFZSUiBmaXhlZC1yYXRlIHRpbWluZ3MgZm9yIENNVEcgdHJhbnNjb2Rlcg0KPiAgIGRybS9p
OTE1L2NtdGc6IFByb2dyYW0gVlJSIGNvbnRyb2wgcmVnaXN0ZXIgZm9yIENNVEcgdHJhbnNjb2Rl
cg0KPiAgIGRybS9pOTE1L2NtdGc6IFNldCBsaW5rIE0vTiBmb3IgQ01URyB0cmFuc2NvZGVyDQo+
ICAgZHJtL2k5MTUvY210ZzogQWRkIGhvb2sgdG8gZW5hYmxlIENNVEcgd2l0aCBzeW5jIHRvIHBv
cnQNCj4gICBkcm0vaTkxNS9jbXRnOiBBZGQgYSBob29rIHRvIG1ha2UgZURQIHRyYW5zY29kZXIg
c2Vjb25kYXJ5DQo+ICAgZHJtL2k5MTUvY210ZzogQWRkIHRyaWdnZXIgdG8gZW5hYmxlL2Rpc2Fi
bGUgY210Zw0KPiAgIGRybS9pOTE1L2NtdGc6IFJlc3RvcmUgQ01URyBhZnRlciBEQzYgZXhpdA0K
PiAgIGRybS9pOTE1L2NtdGc6IEFkZCBDTVRHIGludGVycnVwdCBoYW5kbGluZw0KPiANCj4gRGli
aW4gTW9vbGFrYWRhbiBTdWJyYWhtYW5pYW4gKDMpOg0KPiAgIGRybS9pOTE1L2NtdGc6IE1vZGlm
eSBleGlzdGluZyBob29rIHRvIGRpc2FibGUgQ01URw0KPiAgIGRybS9pOTE1L2NtdGc6IEFkZCBD
TVRHIEhXR0IgcHJvZ3JhbW1pbmcNCj4gICBkcm0vaTkxNS9jbXRnOiBBZGQgQ01URyBzY2FuIGxp
bmUgcHJvZ3JhbW1pbmcNCg0KVGhlIHBhdGNoZXMgYXJlIHB1c2hlZCB0byBkaW4uIFRoYW5rIHlv
dSBVbWEsIFZpbGxlLCBKYW5pLCBhbmQgRGliaW4sIGZvciBhbGwgeW91ciBmZWVkYmFjayBhbmQg
cmV2aWV3cy4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5jICAgICB8IDI3NyArKysrKysrKysrKysrKysrKy0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY210Zy5oICAgICB8ICAxNyArKw0K
PiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NtdGdfcmVncy5oICAgIHwgIDI0ICst
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyAgfCAgMTEg
Kw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgODQg
KysrKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAg
fCAgIDQgKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYyAg
IHwgIDE0ICsNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgg
ICB8ICAgMiArLQ0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJx
LmMgIHwgIDE5ICsrDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9p
cnEuaCAgfCAgIDIgKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9saW1p
dHMuaCAgIHwgICAyICsNCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYyAgICB8ICAyMyArKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5oICAgIHwgICAyICsNCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3JlZ3MuaCB8ICAgMiArDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggICAgfCAgIDQgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92cnIuYyAgICAgIHwgIDE5ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zyci5oICAgICAgfCAgIDQgKy0NCj4gIDE3IGZpbGVzIGNoYW5nZWQsIDQ2MCBpbnNlcnRp
b25zKCspLCA1MCBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IDIuMjkuMA0KDQo=
