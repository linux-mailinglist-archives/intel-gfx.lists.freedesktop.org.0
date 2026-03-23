Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DAVD186wWn2RgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:04:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D58BC2F2759
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 14:04:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B07510E357;
	Mon, 23 Mar 2026 13:04:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BN3+eMEa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FEF010E3E7;
 Mon, 23 Mar 2026 13:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774271063; x=1805807063;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=C9+xbJbCbTkEq/WpuEpOXIIdxIf8qVsULS+zo64QHyU=;
 b=BN3+eMEacFQC+dFDUJ5AU5N03OeXtgaVI7n5SuQ9cazJjUobe35UgVga
 wKvJq3xk3eb5DkkmxIiBsfpiSMuV1mj/AONLZJ8iWp6TPY8QrIoPv5/0x
 Iw6LTv4oja//Mui5vqJa9kcpn1mLjflkxxpRk42SPq2tXMT9UxRVKnEi5
 ezyP12byQB+obmTOIRAh8389URN/W6mmffcnlT3Ex+TJJ2F5bXtIwovRS
 0Wwo5cwVfs2PS27FeKh+kcHPUmR0JZq9FIucCw3ByL3hllxbaPrlMDBQs
 aSyqOhcamgYwCTidQeZhYTVq2EW5yfSMIlVwtp0xTLDydFTc5xayzjN8O g==;
X-CSE-ConnectionGUID: xQAMdOLNTJ61NbukShC5Cg==
X-CSE-MsgGUID: 5P1zbQzxSvCRJFkBd60Fvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="78863409"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="78863409"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:04:22 -0700
X-CSE-ConnectionGUID: Myibe5dxS6mTmdhEaysIgQ==
X-CSE-MsgGUID: qSXtZFJlQFmu5eoyJFPeXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="261938006"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 06:04:22 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:04:21 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 06:04:21 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 06:04:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gSOor6MtRCSEQGlAwaBf24jzZcPSoCPDQlAE/wTOo+CLY8BamLSM04qKA3zFgddjCHRc0SsMGTGex2VFkKFDwFDCsBPWNiB8Q5jkI6l70huTWu/+kSfwQ5IVAXdr/xQmgwpa2cvie/oZB/cul54N4G6DGfXXWA50ikv1nEXupPIWfnB48JChGa1HLGhLz4WlLy32gy8RXlRp1yl/6bk3keh4VGozj2OToMhVWbBWlfjEuIlfzJ1rh0zo5RjKU12d52MXHPtwLIsIViY4kjpdFdyXkzmSAritTtsm5QXo8cP4OZV8N/Xf9edhgkxG/TDE6YKE82CQkhHaS2SzTrdy3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C9+xbJbCbTkEq/WpuEpOXIIdxIf8qVsULS+zo64QHyU=;
 b=Qqktys4zvDj8tlDr+9YoGR3HQ2ABYGSj9iFewySDs07iugubDumfWJA2Hep6qkS8UmlYSWr72JlE9YJ2wJlMkcaq44B7GBHsQaZd6DqSLDkshuQiH0u0KOhyzmaU/wD5D/1xDW3QHh0kHJKULiw5Ybg4mNsMKC5l2dVX50LH9ymw0SvxsIy2FiNIL9CfRESG3laSXNbuKIo8/Njmfh3QpL9LN4EuCYNpF/tUi7pxU35nWVQkNTP6tGUcjOZGu3hRyNZKO/RJzFJHmhsLUWx+4LKdyH3IkAm5wCHr5UsPxoDCCcpCFm0Siv//lzfQ/0lrSDo4HJAr5QGiqyY99jt3lA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB8495.namprd11.prod.outlook.com (2603:10b6:610:1bd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 13:04:14 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 13:04:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Manna,
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH v8 2/3] drm/i915/display: Add hook to check optimization
 support for Intel platforms
Thread-Topic: [PATCH v8 2/3] drm/i915/display: Add hook to check optimization
 support for Intel platforms
Thread-Index: AQHctrlcSEXCPpxmgEq1F01bsBxS5rW8HaMA
Date: Mon, 23 Mar 2026 13:04:13 +0000
Message-ID: <c7a00eac4f5fc2d606db15d631c0ceb2b769edd4.camel@intel.com>
References: <20260318085642.3621166-1-animesh.manna@intel.com>
 <20260318085642.3621166-3-animesh.manna@intel.com>
In-Reply-To: <20260318085642.3621166-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB8495:EE_
x-ms-office365-filtering-correlation-id: f779a165-8769-44c1-8808-08de88dcaed4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: 4oW+y3wCxh4KOfMugQloePvsm4JVOa3C6Z2vDIonc3j6PZvEuKreSEknvbGX+nxS69DPuKYzbjKnaqZWZsFQIL2xO6gQlPmqzyne/tx0VvYNiBKb4+awqBbcWwpPcnq9OYvK6vNGRfiExYuts2AendL7e/HNloMda5JfI4p9ZyN5ehDy1wx3aoQk2FfmrZ4ryO6kkTkuOwz9YYWEPWugvzYhEHsieBzVgxm6eB43cfmgz4bST9pAL9u/B3b6fcQ5Oj0GGqdGatl7JR4gKrOy+2QfVuVuE7G4JYj9Uh6dTICyTGLNx3HLExjG3AEaf7qAn7uW6rN52zgV3UwgLqiwToTW1xMiNyxeXyLKQgK7FUxNDMjcvgdhR3A49xQwhLB1m537XKHkKAWIL+W+50n9vGfdRKdL5WnposE8Q5i7ylPkBuQBysJobH90WBYjkhW/Vs4wSR+KHcAcgMV1LrLd3ehVcgxOga1HVmHiwWh09u+iTJW/lABZdTGfEJCtAATmav7bChMJQtXoZHGRFnaFfjV8F7+G/m/xEP959i71WT0/zHxucOx7IfmXfRwa0VHUW9rSMtul87z4oBsp3Bm1g2xrc6lCobHhlxpqhOp/kvrNUUA0SiGWpenpqodQKWyAT8z4e1poEJvzprLTAddIoWzO1Az+RHpGMLcSx+WW19wAWyxoZkxFT6STdxsrk3Z13HaFofOAKC1XtGAYvY3B8YmhvcdcJgeysFPAjTsUQ6nFBB+iNQCr8AHaS+TU9B+ePXABL3cF9HqudgVyhn14ZSiu7ZX24XlsLehnZuemOuM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alJtK1orNzVYTlNpMU9IbUtTMWlOT3JiMHozSTRRMlI3eWZaQ3pLbmg5QlJx?=
 =?utf-8?B?RlYzUHg1RWlGTlN4c2ttalZBRTlCQWV6SHpFVmFTdExDclRjWHFTU0t2cGVU?=
 =?utf-8?B?elFrMVBTYjBxTTYzU0M2ZktvbmhpZWhPd3dUOVppTjlMbGJ4YWJycm1GZ3da?=
 =?utf-8?B?L2ZVODdYWGJtRnZBNysvRU0wSnFsd3ZQMU9WQnF1WGN0TC9FL0dhYXlEd3pm?=
 =?utf-8?B?bUJicFlZNDZFbnMyT2xFcnpidks2YThmdjdDTE5UYWdTYmh1Ri96R1lqT2cr?=
 =?utf-8?B?TndzYlRDUVgrV1ZsNTMvaEVCYjJRQUtRMXNtWUtNU000L2kzbU4zSEc4U1Fy?=
 =?utf-8?B?dGxOQ0dJS1FvZ3ROb2M5NFAxTUI2dUJaRjZ6VEdTV2l3WEo2UEFnOW11ME4w?=
 =?utf-8?B?K1N5Z3pQYkZ4ekxjbU53YjhyakE4aU1VRjJ1cWZWNkJObWUvM3NZTTJsY2Y3?=
 =?utf-8?B?VWw2NlRhQ1ErR0NLVjhhaSs4UC9UTWdoTFVveS9wSURxakQ5Qkh3SE1sQ09s?=
 =?utf-8?B?TDJEOXZoZWEyOWxrUCsxQkxGTUNRTE1FakdoaEdxaldhbUhKRDQ5MUp4QjE3?=
 =?utf-8?B?akpFVEIzYVRjNFUzN2dxOHJsZWNWcWE5MmYxVUVqN3lOYnBVRkkzMXlRUW55?=
 =?utf-8?B?VDBYdDFrWWQwd0V3NVhESXcxNjVxVnppMXBjUGRNOGlzM01uVUhDUU5oeGJ6?=
 =?utf-8?B?cHIzRzl4UTFVNXhLU01zZEZLbWc3UzZGb3pTMGQybXpRRDNtT0NNMXRSc3Fu?=
 =?utf-8?B?Q1B1dTVTMTF0cy91S1l2V080eE5MLzlxZ2JaTjFwbVJOdmxBQVNvS2QvVlRv?=
 =?utf-8?B?VzR2YVVkYitMWHFhUnNvdGtWWW11YWs5Rkw0eTFXOFVPNmF6Wkthak13S2Rk?=
 =?utf-8?B?MmF6ZGlBQmVHRThSaFJqMnZUT2I2WmdjMVl3eWFxUGJuemdPdHBMekJKZDNj?=
 =?utf-8?B?NWdPMXlxRytxbmJ6SmZ5bHVkQ2JtQnhXMW43MC9acDhkYkRNcEloRkdnckpl?=
 =?utf-8?B?UmpwZ3FBUkRjKzRBRWhsOTVOcUpQV2JCbEdobGdJbm1YZ2luMjNudXhFVE9h?=
 =?utf-8?B?R0NtYmlzWDlrY1lWeFVaUHZxQ0xpQ0xJM2x3QTlNWFE3MS90UU13QTF3RENC?=
 =?utf-8?B?cjRHZXovQkRycEVQejAwR2k0Q0N1QWhxWjVVQW1FanpJb0lJU2NjSys5THFl?=
 =?utf-8?B?NEVweGpWY3hZRHJrOWl2WGlreURPeTdQRG5SZThUYkRBOHlTQ0ZYSEdWWFNs?=
 =?utf-8?B?S2lrYTVzajF6QnJPT3kvQWJxTnl3a3ZOUE9uNWRndjZwMysvWGUzZ2t6cjlq?=
 =?utf-8?B?ekFiTmJRdWZpSGZoYTBFSTR5T3Rzckg0MDljUE93UUVINUZ5ZXg4ekdWUWtI?=
 =?utf-8?B?U0llQmtabGdOOUsxOElaOVByYk1VZ0xSS05KQUJZL280NUFPV2RzRXd1Wksx?=
 =?utf-8?B?NlNxbDh5VWdOQUEyZlc0RTVocGtsR3VNaUk1T0ZhbktZTkwxVWxCUzhsMW4r?=
 =?utf-8?B?Q0RZU1hrTnY2UGhGdFpqM2Z3TjJBeWlLbXE5czc5ZUo1Yk1sSGFwWUxsUC92?=
 =?utf-8?B?enpFTktBODNKemZQSHhlclhRYXBBdWl3aVRaTWlicEM5eWwvakVVQkE1R29K?=
 =?utf-8?B?VlRuZ25OanVqN2U4M2hZWmEvVW5zS2xsRVZldEl3V1Y1NHB3eFpKRjFSOHBB?=
 =?utf-8?B?MU1Ec1lTNmYzaTFRaVZFNlNUN2szaDUyWWxpdlRqTExVSTU0R1hueXhDK1Ft?=
 =?utf-8?B?U3NZQ29ybWFQeUpIQ1kwcllEcWhFSlMxaG5qUHplamtFRi8wRzM5Zzh5bFVX?=
 =?utf-8?B?Zmt3T3ZIVlNqUHFtU0c2Vm9jUFNKVU9waS93NitGOGJueVJhelgrYUlMT0Jv?=
 =?utf-8?B?cXFZR044RTF5eURJenR1elJNZS9hRnFXVEh1RDVHdlZ2cTltUDVIa0FpMmd0?=
 =?utf-8?B?YXQ5TjJNUktORVVwVDdxZHhGWTFzTU9kUzdMZkJrUllCUEVJc3FxNXNhbUgz?=
 =?utf-8?B?UTVkZ2s1N25ibnIwT20vWm90ejEzV1ZoRXpMMVZ1SmlvVk5POVdhNFhnZnlH?=
 =?utf-8?B?Mkx3a2hYWEgrRXIwdUNjS3VYUWxKYThVUWgxQ3NMYXFMc3NBN1dCcW1Ja3JN?=
 =?utf-8?B?SW1BQTFwSElESEJUdnBlSFdYSENmdnhtK3FKMTJiZXRDY01yYlBQSUl1UVVz?=
 =?utf-8?B?U0dULzR2NWxiRFlVTU93RHQxQUpjOUlpNllkelpxUXJ0K2xoU3JzNmFSSXFI?=
 =?utf-8?B?eE5tY0JQR2RxL1JSclc1dzkyS2VETytIbzU1NW9TTWdaWjhJQVdNbmdqL0xW?=
 =?utf-8?B?alZHd2g5ck8wb0JLbnY4cWlHZ1VBcStUWVUya0FSK1BWOEVCMGg5c1ZWd3dX?=
 =?utf-8?Q?bUEOyndY/pewpn8YbSeTsjNrfybS7VSyD90ruSbplYCyT?=
x-ms-exchange-antispam-messagedata-1: QRC+tTc+VxxcD5ebnWaVydRQGn9/LVSnaZY=
Content-Type: text/plain; charset="utf-8"
Content-ID: <242AF97D1BC4F54DB3F7E69D0ABA95ED@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: URLDtqT+BFJRS+LuYVoznxloDaYNzia2sgzHLC7uYcGm+Zrb6PxEnE6+mc6y3goH9SnOkiPafldSCFdPLSQ20IKK0E+a9DVYvXK+9DdRaVwC6+XBo0lrq8/qprDMLmVXPe+6ME1ikqDh8rcnvLG185vAscd12QC9THx/XlrfJDfKSDosER5owxsnQ+OtQTtC4QADiWXC4srJzrSnKAa0DNYZd6kWoXbFutCpAqiE23lDT+goKEzFmwt6KgXxN5NTMK45++bsaDJi9zzNdTfIaiM13e6wy/LmFxNtwEstQzFhsR60ktr7iXJCtEEqyC6BQomEhJzG0WPsPcEB7+hToA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f779a165-8769-44c1-8808-08de88dcaed4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2026 13:04:13.9974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4rfMLmA3KicqPfz7JmnePb8or+gjZdRkrSfBicfWLMTPnzg0JbZVbeRMJ5NVQ/yXCV+FzQjq6aV7HTzQPDLzY1p4A3vN0HCVpuBzBxlZ+fE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8495
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	SEM_URIBL_UNKNOWN_FAIL(0.00)[intel.com:query timed out];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	SEM_URIBL_FRESH15_UNKNOWN_FAIL(0.00)[intel.com:query timed out];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D58BC2F2759
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTAzLTE4IGF0IDE0OjI2ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBBZGQgYSBob29rIHRoYXQgdXNlcyB0aGUgZHJtIGNvcmUgdHVubmVsaW5nIGZ1bmN0aW9uIHRv
IGNoZWNrDQo+IHdoZXRoZXIgcGFuZWwgcmVwbGF5IGJhbmR3aWR0aCBvcHRpbWl6YXRpb24gc3Vw
cG9ydCBpcyBwcmVzZW50Lg0KPiANCj4gdjI6IE1vdmUgRElTUExBWV9WRVIoKSBjaGVjayB0bw0K
PiBpbnRlbF9kcF90dW5uZWxfcHJfb3B0aW1pemF0aW9uX3N1cHBvcnRlZCgpLiBbSm91bmldDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
dHVubmVsLmMgfCAxOA0KPiArKysrKysrKysrKysrKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5oIHzCoCA2ICsrKysrKw0KPiDCoDIgZmlsZXMg
Y2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jDQo+IGluZGV4IDFmZDFhYzhkNTU2ZC4uYjgx
YWM5YTJkNzI3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX3R1bm5lbC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfdHVubmVsLmMNCj4gQEAgLTI5Niw2ICsyOTYsMjQgQEAgYm9vbCBpbnRlbF9kcF90dW5u
ZWxfYndfYWxsb2NfaXNfZW5hYmxlZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDC
oAlyZXR1cm4gZHJtX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVsX2RwLT50dW5u
ZWwpOw0KPiDCoH0NCj4gwqANCj4gKy8qKg0KPiArICogaW50ZWxfZHBfdHVubmVsX3ByX29wdGlt
aXphdGlvbl9zdXBwb3J0ZWQgLSBRdWVyeSB0aGUgUFIgQlcNCj4gb3B0aW1pemF0aW9uIHN1cHBv
cnQNCj4gKyAqIEBpbnRlbF9kcDogRFAgcG9ydCBvYmplY3QNCj4gKyAqDQo+ICsgKiBRdWVyeSB3
aGV0aGVyIGEgRFAgdHVubmVsIHN1cHBvcnRzIHRoZSBQUiBCVyBvcHRpbWl6YXRpb24uDQo+ICsg
Kg0KPiArICogUmV0dXJucyAldHJ1ZSBpZiB0aGUgQlcgYWxsb2NhdGlvbiBtb2RlIGlzIHN1cHBv
cnRlZCBvbg0KPiBAaW50ZWxfZHAuDQo+ICsgKi8NCj4gK2Jvb2wgaW50ZWxfZHBfdHVubmVsX3By
X29wdGltaXphdGlvbl9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4g
K3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXko
aW50ZWxfZHApOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzUpDQo+ICsJ
CXJldHVybiBmYWxzZTsNCj4gKw0KPiArCXJldHVybiBkcm1fZHBfdHVubmVsX3ByX29wdGltaXph
dGlvbl9zdXBwb3J0ZWQoaW50ZWxfZHAtDQo+ID50dW5uZWwpOw0KPiArfQ0KPiArDQo+IMKgLyoq
DQo+IMKgICogaW50ZWxfZHBfdHVubmVsX3N1c3BlbmQgLSBTdXNwZW5kIGEgRFAgdHVubmVsIGNv
bm5lY3RlZCBvbiBhIHBvcnQNCj4gwqAgKiBAaW50ZWxfZHA6IERQIHBvcnQgb2JqZWN0DQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5o
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuaA0KPiBp
bmRleCA3ZjBmNzIwZThkY2EuLjAzZTE0NzczNmI2NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5oDQo+IEBAIC0zMiw2ICszMiw3IEBA
IHZvaWQgaW50ZWxfZHBfdHVubmVsX3Jlc3VtZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2Rw
LA0KPiDCoHZvaWQgaW50ZWxfZHBfdHVubmVsX3N1c3BlbmQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCk7DQo+IMKgDQo+IMKgYm9vbCBpbnRlbF9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxl
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK2Jvb2wgaW50ZWxfZHBfdHVubmVsX3By
X29wdGltaXphdGlvbl9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCk7DQo+
IMKgDQo+IMKgdm9pZA0KPiDCoGludGVsX2RwX3R1bm5lbF9hdG9taWNfY2xlYW51cF9pbmhlcml0
ZWRfc3RhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiBAQCAtNzYs
NiArNzcsMTEgQEAgc3RhdGljIGlubGluZSBib29sDQo+IGludGVsX2RwX3R1bm5lbF9id19hbGxv
Y19pc19lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHANCj4gwqAJcmV0dXJuIGZhbHNl
Ow0KPiDCoH0NCj4gwqANCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9kcF90dW5uZWxfcHJf
b3B0aW1pemF0aW9uX3N1cHBvcnRlZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAr
ew0KPiArCXJldHVybiBmYWxzZTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBpbmxpbmUgdm9pZA0K
PiDCoGludGVsX2RwX3R1bm5lbF9hdG9taWNfY2xlYW51cF9pbmhlcml0ZWRfc3RhdGUoc3RydWN0
DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpIHt9DQo+IMKgDQoNCg==
