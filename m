Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6xJiNilfrmk5CwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 06:48:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3672F233FCE
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Mar 2026 06:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE2C10E48E;
	Mon,  9 Mar 2026 05:48:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DBGR0Yzm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA87F10E48B;
 Mon,  9 Mar 2026 05:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773035302; x=1804571302;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=PHCnYfT0bUf+cBNsiIfvPz8RSbSI0dIMd29ckgeOvp8=;
 b=DBGR0YzmypW5OaFHaUblbstwpRQYkPGNXAJ+xwkGciCpmvXHxqZgw/fw
 a9Kv6ctrJhn/QC0Ml7sSe7OfpMdrLq71Zdky6Vixn4OpK5iOnlSxsXGdH
 m1p3/wOyrEOaG5QBXKfAQ7FpXPr1Id1UP68osOmp8OMdtja53bXFkBg5y
 WzIiGoBQqNOLFkob2CsJhlu6/u6b8VmWdFMyUYRVCUtf8ZSwdstOHzIcu
 hqtT5sOLepJpVZGmW6tW8M5g0PruCaV2bqdUytKJzGQhP3bOdbr/7eHVk
 kjd5wEjb3L2nttrFVCL7u3QQcqb7RMqzgFCjvU7M2nAvmT+sGU3Rypgrp w==;
X-CSE-ConnectionGUID: R17nwjHlQniOk6x+XNmtMA==
X-CSE-MsgGUID: 7UBf0f6US7mMr9EtKlq7BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11723"; a="84685486"
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="84685486"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 22:48:22 -0700
X-CSE-ConnectionGUID: Abl05MUsTtuip4ZJZYsquw==
X-CSE-MsgGUID: WgUZhnuPTNii3o7RB9iBUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,109,1770624000"; d="scan'208";a="224346902"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2026 22:48:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 8 Mar 2026 22:48:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 8 Mar 2026 22:48:20 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.19) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 8 Mar 2026 22:48:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A9rgakvG3kw8969VE5L7LEjeuKiGElxS0nIqMcPAykOTVXSthJLHvdtIWlsZOo/6XPWp7Gsd2U0UfiSLVPbhs9xK2bY0Fm7MBvclFqMsCzdWEngbFSfhpK8+t3jQp83VTY3cUaYli2IjUoWN8tZHRpREiJJhihx+dNGnbuk5Mr3XlBmaBphNEJDgzMWTU8pPwhzTMSvu+Oz0gFkm55WX7C550BXhqRXE0kWtNzXktAVr26x8wWUZxx63UsWmBx9LvZXiR4RBMy/L36MHiGCjF5x2FX+RiWVXUovSEST88jd7PR3qZwbkpuAR2FaevTc65J/a5jyR4+0TzD7ZXBBAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PHCnYfT0bUf+cBNsiIfvPz8RSbSI0dIMd29ckgeOvp8=;
 b=JP2RXmxa0On7fHjBRenWnrrpagAhrCiuehWRlEak8amn+N9Esv7d59so7a8xyaozywRDCW+P2uKjzT2gMXTw38ZJkgwymCFsTHJaMGufulgeWKfD7/AoVRTr3kUlTkVgSBG7Jrd6rWZfsH1/twhSUc1uaDTTw8/RJYqDXtKorwvItingbd/i+jjEyBrUedl/M1J5JyduErWvmMycf+peygxykh65cdnXLP4REyKLlIAYW3NVW4w5y8U9qhdrriBybIeoxj7lM5zU7MdLJoAAl1a9ip9TprHHjZuancz7B290QzfDLGyo27M4DL6bElyyts69FvTg9gsPfLn+9TJ1cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB9474.namprd11.prod.outlook.com (2603:10b6:8:265::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.11; Mon, 9 Mar 2026 05:48:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9700.009; Mon, 9 Mar 2026
 05:48:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH v3 4/4] drm/i915/psr: Write DSC parameters on Selective
 Update in ET mode
Thread-Topic: [PATCH v3 4/4] drm/i915/psr: Write DSC parameters on Selective
 Update in ET mode
Thread-Index: AQHcq8paIHB1o9kWd0+vje8WZxzYhLWeRk+AgAdyxQA=
Date: Mon, 9 Mar 2026 05:48:13 +0000
Message-ID: <bd106fb92e5fde355b84d4f8fe081295bc13dea0.camel@intel.com>
References: <20260304113011.626542-1-jouni.hogander@intel.com>
 <20260304113011.626542-5-jouni.hogander@intel.com>
 <0a746369-5939-479a-93d0-3720f4c78ede@intel.com>
In-Reply-To: <0a746369-5939-479a-93d0-3720f4c78ede@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB9474:EE_
x-ms-office365-filtering-correlation-id: 44c56e18-0e6e-4ab8-b37c-08de7d9f745b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: X+zmqyfW8zUIW9lhZ/JdChjPHlQ3zTiBIzw6aMSpB9D01MM7YAI71glmBvWm1QrLBrnFYaxVfLM5EZ8kFqc3+c1yap0EbDZmOGAwLO3+Ckcz7l8Xvm08hfKhtbtb8JkSuRXLsA9VJ0SqYRgGKsLRA/VUnp0t1p09xzuwPPoPDL6uu3lmTdgeHYdchY7eXMYeM/bCBhdJEJXtL7srales72sawyCeWSxqLgV4KNTBCVX0k+KNnWOinouDDX7j0PTAzBBKRVC3tvc+sZtSzOsTbu1qxk78YRRZJNQe2tsbfkAjeFYeTjhuSmNhJuZ9EPpdY8h4cqvsnJKE1Pnx/45B2I3yW+EvCMuk+Vv2g7Erq/IY4+XiHOYQfR7seSMk80DTSVkryJltoWz9iHshOX6KE8nKQczjRQqPEWSOstwzOPyUThXfgTn9y8ENH/JunDTIW94WeSByI99VsJHLhbl1TBOGIeMFBNzcENpmHCcpMCREJ7+vGzhFfKgicyneXmvaX7Y6KE/W+1fDoYmA4vDnS9YOKxdb47rnBIkFJAs6poJeiClZo+9/2flLq4nq3/TZ3CULSXRKLZ+GyWJXoO3/1OQlPkqMIvJReg3uTNBMaD5GniFzCfrMAxjvhfGWM/xONwIndwzMbwhR9npx+Aob9YnkI8I+Q3JGYTTAIglpvF5WDUlup0eOdt1tsF2XFmeI81RzVdiB0nrW5QShAQQu9QV9YR0LeFKIsM0hS9s010GSGHCVCnJU/LNdk3xuU/A6OVJY2+KBD2gJNSd7NsNwpmD0NUQy5+CYIludYrOSxak=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clZLTFJ2K1d6UDdPNHR6ZGozYnNHZnV1d1BGd3dyejhvSDNlWnFoNFoxVHc4?=
 =?utf-8?B?MFNWY1AwTU5FbHNnQllGV0Y0NWhiTy90Q0ZSSW1zdHpPczhxQXdWUytHZk41?=
 =?utf-8?B?cGpwYUhhV0h2aVdnM3BYNXc4d2FvSlZvNFF2WGFWZU9pR3ROUHVNb09VWERF?=
 =?utf-8?B?Rmd0bmVOUnlSQ0hybWJwN0pMd3hVUFQyUGZ4Zk1oVFBwTGxVZjJNNk41dGR6?=
 =?utf-8?B?QzIyZTduZVZoVE9Oa29ubEZqcTQzelpoWS9CNjh5OHd6Y2Q4QzJqbnVSU010?=
 =?utf-8?B?c0xYVi9NRFErcU5LVGN5SUV0a2tmQUlNenpTZ0JEL0J4WVVTOVkvMUlIMzlX?=
 =?utf-8?B?L3B1N25DVlptUGEvdnAveWFuVlBkaG5EMlJYZldvSitCMWxCMVhsdTJ0MUp2?=
 =?utf-8?B?OUc1T3diTm1tTnpES1plWGw1Q08xYjAramlGRGFvdVdMNmhQbmhROGxyYmln?=
 =?utf-8?B?TUdlaFd3MTBpYm02Q0NYMlpLbWhXOWllQ2Y2Y0R1OElBbUM5VHR6WDNlblQ3?=
 =?utf-8?B?Ui84N3BRRzFBaU40SFpIMzJLRFRLb0RpakJsWk9vaFRFaVlWUkJrd3p6bkZX?=
 =?utf-8?B?VU5LVEppN01NSnFMZmw0d0w1bWJibWF2MzQ5UG5TNWRseW1FeGdTNGFibGM3?=
 =?utf-8?B?dUVoVkszQU9FQ3ZTVnRWcjhhTWt5YVJwQTlOb1ZmU0JJSTZicUpKbWltenRJ?=
 =?utf-8?B?V1I5YTM4TjVKQitha01tK0ZZTXVFMUorYnRpK0g2U0lsZWRKOUNkTTNsMGY2?=
 =?utf-8?B?VTZDMHZIWUpuR2tQMDFXVDZIcG1EampZSGhQVFNsSkdZNnZScnVGRjVqQkY0?=
 =?utf-8?B?eWNmM2hXNGdVOGZ5ZEc0RWxybHhDSW5OZW1pQXNLVldLYXBwNkxOMFBjbXFH?=
 =?utf-8?B?Y2M3SzZHQ2IyQ1VRcjM3RmlIdUt4WGRvb29ha3lmRjR3ZU1DZjlGVm9XMG9p?=
 =?utf-8?B?M1lyMFJiaUNZSGtFWWZkRGNkM0FrWDZIekw0K3FreS94ajhoQlNMSEpiMHBQ?=
 =?utf-8?B?Zlp1TWgzcUF4ZjZzcG9jZnJpanBNSXJUMFZ3NEJvNHNrMlpKQy9JUW90S3RT?=
 =?utf-8?B?WDNZNG1SUHREL2ttaEZxZW9qU21uRUQyalp5QU43R29oaUNLTGRRekk4K3ZU?=
 =?utf-8?B?WDF2aUd1TG13SHhqdWh0RGVrNWp0Ymd3K252Sm1hRHdsazJCbmc2TnlFS1lw?=
 =?utf-8?B?QWhWK2dZVGplUVp5M2xVWGcreUtEandSckluaXhaN2NhYUFaUnFna3NRUXJt?=
 =?utf-8?B?bHVMeGRTRExSbWducmJ0alVsYUI2ZnAwS2hqcUJocnZ4ZllaZGVSVVBKV1Mw?=
 =?utf-8?B?RkRaMTgxMFZUaGlCNi9SZ1UxZ2p6MU1leUg5VlliM0FwNG92b3A3Wld4bUp0?=
 =?utf-8?B?ckd0Y1ZtcURxR0JJM0RMQTRjVVdRajRDZmRDdlg5S2RkK2kzVUl0ZTJsbjMw?=
 =?utf-8?B?RjJGWC9EOG80dmExdnVTWkNqRURmR3BNdUhua0dtMnZPMWMrNXNTQlNMOURR?=
 =?utf-8?B?eVFDaFBWRE50ajUzaXlycitlSlZJR2tzVjIrU0hOUExBZVdsM0E3T2I2UmZw?=
 =?utf-8?B?NXNkT1NXVGVCRmlSSXNwem11T1IzV3F1TzEzOHBUWDVlVStYaUE4cmxXQ285?=
 =?utf-8?B?Znp3ZWdVelBjSDduN3NJTE1yYkxwTWdkZEo3UUhXdFdsc1o4ekp3TFZiVkpW?=
 =?utf-8?B?SVJPNFZyT29SK25qRFQ0ZHV6VStXd0RQQWp0Q1FnYlF5dExHL2VxSUd2Y3px?=
 =?utf-8?B?Wm9VTCs0ME41aVZOVzNGZU5xdXRIbktmOHBuaXE3c01jNGVEQzBKZ3hpaGN1?=
 =?utf-8?B?RFRpb3BhcTZIZWFmQzNoYjYrcGZLd2JWNVpjc2xVZzA4K3VIdEwrdjhyUW42?=
 =?utf-8?B?bVhWQWEvWkp3cjR5SHVIS2RYQUpoS2c4SDQ4NVdFNGQ2OTZLcmJCUFJXbHh5?=
 =?utf-8?B?bG0zdGNkbTFQZmxWS1pRYlo0OGxWM3JrSnU4eDBHcGxKZVJGdFZhVUF5Qm5L?=
 =?utf-8?B?WkFoWGtUdVUyVk1vNUlzaGRjbVpVVFV0MXQ5RWpXM2ZjMHIvbm54Yy9mZm9n?=
 =?utf-8?B?c0tqRlVrR2JBOXdhV0Qxb2svUU85RG1rN2xDRmc0VHdNYWRYcGJMb0ZRVS92?=
 =?utf-8?B?RVlJSExaN01MdmlNclZiR2Fjb09Iakc2NjNZV0VsVVZyQ3NXcDY5MHp3emc4?=
 =?utf-8?B?aUpVbWYyemdQdGM1SkU5ZFAvSlYycDlOM2RSN3RrNjZvbXFBelEyYmNMalcw?=
 =?utf-8?B?Z2tpTDZuTUhxMDdiaDN6alZHTEhaOHJEbVcxbVRkYmdXY3FMdXl0K2NITHk0?=
 =?utf-8?B?R0h2aFhPaU10WXBRRi8ydk9wZWtHelJ5eERyL3c5VHR1NlhrRWhCSkN6eVh3?=
 =?utf-8?Q?Gj0fhCETZiXJh2TyRdu85ZeLlyJzaMLMAi5JfnkW3gvYZ?=
x-ms-exchange-antispam-messagedata-1: RgSb+ALRHctEc0jjKU1Rd5hr9jSazdQ/uYM=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5E37D773DBA78C47A0A6BB050439C114@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: RfN5SY6uworDTqj1g8cTu+5CON0nhf4cAgIX/xZEpQFc9Nfuqj+pd4S/52lwUdhxldP3cpujUwS7zxJv1le1MUMo2wNYSyR/pK8Y3uNvPSZZm5Qc1efUIK/51N3DedxInjCM2qblthJGWhaUJ/QSx3mX7fJ78seNGIaHp1wi3CIbjJ5Spq2QnotBg9AICOS5jfXF4PKsFHOn/I5JHx/BXmfcu6mXLkDCvova3NTbzyqXGKUN7t/umpRzT8oxn5s7E6S2S7CRW8visHdcnQo4i49FXCg1xFXMFue1Yy5Y6Ho1FXwLOfdWJhG2dHUeril4+LNbpZgcNcL4nEYn8HsJag==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44c56e18-0e6e-4ab8-b37c-08de7d9f745b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2026 05:48:13.8348 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LIuW3SW2eWDUPmkhWa95pxJSbpL7FYNK3e13db58pR8/1OD0Q1lIgN0eZfTP4fhympLK4bE5zznhlJvGolH+Sgm2OJ1s9K/7ik4Teb6KUzw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9474
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
X-Rspamd-Queue-Id: 3672F233FCE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAzLTA0IGF0IDE3OjMzICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDMvNC8yMDI2IDU6MDAgUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBUaGVyZSBhcmUgc2xpY2Ugcm93IHBlciBmcmFtZSBhbmQgcGljIGhlaWdodCBwYXJhbWV0ZXJz
IGluIERTQyB0aGF0DQo+ID4gbmVlZHMNCj4gPiB0byBiZSBjb25maWd1cmVkIG9uIGV2ZXJ5IFNl
bGVjdGl2ZSBVcGRhdGUgaW4gRWFybHkgVHJhbnNwb3J0IG1vZGUuDQo+ID4gVXNlDQo+ID4gaGVs
cGVyIHByb3ZpZGVkIGJ5IERTQyBjb2RlIHRvIGNvbmZpZ3VyZSB0aGVzZSBvbiBTZWxlY3RpdmUg
VXBkYXRlDQo+ID4gd2hlbiBpbg0KPiA+IEVhcmx5IFRyYW5zcG9ydCBtb2RlLiBBbHNvIGZpbGwg
Y3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhIHdpdGggZnVsbA0KPiA+IGZyYW1lDQo+ID4gYXJlYSBv
biBmdWxsIGZyYW1lIHVwZGF0ZSBmb3IgRFNDIGNhbGN1bGF0aW9uLg0KPiA+IA0KPiA+IHYyOiBt
b3ZlIHBzcjJfc3VfYXJlYSB1bmRlciBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcCBsYWJlbA0KPiA+
IA0KPiA+IEJzcGVjOiA2ODkyNywgNzE3MDkNCj4gPiBGaXhlczogNDY3ZTRlMDYxYzQ0ICgiZHJt
L2k5MTUvcHNyOiBFbmFibGUgcHNyMiBlYXJseSB0cmFuc3BvcnQgYXMNCj4gPiBwb3NzaWJsZSIp
DQo+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY2LjkrDQo+ID4gU2lnbmVkLW9m
Zi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IA0KPiBN
YWtlcyBzZW5zZSB0bywgbWFrZSB0aGUgc3UgYXJlYSBmdWxsIGF0IHRoZSBlbmQsIGlmIGZ1bGxf
ZnJhbWUNCj4gdXBkYXRlIA0KPiBpcyBuZWVkZWQuDQo+IA0KPiBSZXZpZXdlZC1ieTogQW5raXQg
TmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgQW5raXQg
Zm9yIHRoZSByZXZpZXcuIFRoZXNlIGFyZSBub3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0Lg0K
DQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMCArKysrKysrKysrDQo+ID4gwqAgMSBm
aWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IDdiMTk3ZTg0ZTc3ZC4uY2Iz
ZGYyNjExNTE1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gQEAgLTI2MTgsNiArMjYxOCwxMiBAQCB2b2lkDQo+ID4gaW50ZWxfcHNyMl9w
cm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gPiDCoCAN
Cj4gPiDCoMKgCWludGVsX2RlX3dyaXRlX2RzYihkaXNwbGF5LCBkc2IsIFBJUEVfU1JDU1pfRVJM
WV9UUFQoY3J0Yy0NCj4gPiA+cGlwZSksDQo+ID4gwqDCoAkJCcKgwqAgY3J0Y19zdGF0ZS0+cGlw
ZV9zcmNzel9lYXJseV90cHQpOw0KPiA+ICsNCj4gPiArCWlmICghY3J0Y19zdGF0ZS0+ZHNjLmNv
bXByZXNzaW9uX2VuYWJsZSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJaW50ZWxfZHNj
X3N1X2V0X3BhcmFtZXRlcnNfY29uZmlndXJlKGRzYiwgZW5jb2RlciwNCj4gPiBjcnRjX3N0YXRl
LA0KPiA+ICsJCQkJCcKgwqDCoMKgDQo+ID4gZHJtX3JlY3RfaGVpZ2h0KCZjcnRjX3N0YXRlLT5w
c3IyX3N1X2FyZWEpKTsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+ID4gwqAgc3RhdGljIHZvaWQgcHNy
Ml9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3Rh
dGUsDQo+ID4gQEAgLTMwMzksNiArMzA0NSwxMCBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hf
dXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoAl9
DQo+ID4gwqAgDQo+ID4gwqAgc2tpcF9zZWxfZmV0Y2hfc2V0X2xvb3A6DQo+ID4gKwlpZiAoZnVs
bF91cGRhdGUpDQo+ID4gKwkJY2xpcF9hcmVhX3VwZGF0ZSgmY3J0Y19zdGF0ZS0+cHNyMl9zdV9h
cmVhLA0KPiA+ICZjcnRjX3N0YXRlLT5waXBlX3NyYywNCj4gPiArCQkJCSAmY3J0Y19zdGF0ZS0+
cGlwZV9zcmMpOw0KPiA+ICsNCj4gPiDCoMKgCXBzcjJfbWFuX3Rya19jdGxfY2FsYyhjcnRjX3N0
YXRlLCBmdWxsX3VwZGF0ZSk7DQo+ID4gwqDCoAljcnRjX3N0YXRlLT5waXBlX3NyY3N6X2Vhcmx5
X3RwdCA9DQo+ID4gwqDCoAkJcHNyMl9waXBlX3NyY3N6X2Vhcmx5X3RwdF9jYWxjKGNydGNfc3Rh
dGUsDQo+ID4gZnVsbF91cGRhdGUpOw0KDQo=
