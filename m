Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2B08C1026
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 15:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB62F10E8E8;
	Thu,  9 May 2024 13:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="egWpuEy7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D05510E8E8
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 13:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715260230; x=1746796230;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZVtA4iu3lAgfI71TO/4b6utvj+/EL7e3JB3NceH48CI=;
 b=egWpuEy79S3+DcUANAx4/Bm3lgBBx1564EcKczq5c5Knt3rIEzTivxWD
 LewWEgPIJ+ItFEFpe5QyUvJpnM1UosuqgTlzFZQettV1CM8zP9jVmDhzu
 dHHP0QvQReFlC35kAoqsKSwqUB3ETYWMdCEFhjHYE3SNE8ipmuv18GrEy
 3GeQDEQmKXddmat0FOC450r2znR9VVMV6dsfRFRdc5zVMAXy2IWz8C2bI
 1RMjwhHY/VU2hDLolzsvWlXVvqstvXdk4HFViG+xZtya1WxNLJzhCGKTj
 NXf9GHp3Vd5lskvS6QXJrcGltvfU6piQHK6Jeh4l/rreVf7ScAnJtVaRj A==;
X-CSE-ConnectionGUID: Ohv2KSRCQfWuAvP+fBXPPA==
X-CSE-MsgGUID: co7HbNP1R1mlVzMOC/mAbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="21747791"
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="21747791"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 06:10:29 -0700
X-CSE-ConnectionGUID: GWWNlVnFSJaWYqzqsjNt4Q==
X-CSE-MsgGUID: hB46ymfAR4uZknD71jwbeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,147,1712646000"; d="scan'208";a="29222510"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 06:10:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 06:10:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 06:10:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 06:10:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=adZ8FhcUE8SET8uwHw15ntCul8LYRCX6jCiIfDPF7U9AshqC5sprASWHNnCuJf+vTk4TBxpXcYL1MzxgVWND/Xvht8kWI/6TW1FBJ+aljgw8Cu59s0dgEBb9Jjgv0+z68WSGzijO35IXoTodg87py3e8026OIDid5KPLQHsXYpFSOjWWhmOkhHvVeALWG+Bf0p1UawP3c5haDlI96d1+DB9MotIBIcQrsUx4g/a8j4So2fVAQyFnDnrKZZanEOXitqypezQBvjc6BQulUAjAsimkz4LhA+bsY8VKByoiyDN6wWqLpqRT0ZvLmjuLVWzYeV3m9YN4D/KIrOLjQvB/5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZVtA4iu3lAgfI71TO/4b6utvj+/EL7e3JB3NceH48CI=;
 b=hGB6Tti6fImUAKbAsuoE/qvZfyfCZOi14eGz+H9Nrt9SSDdon+bsY/RLcsTzHmcQXt9c+5VlhQEswkKdhcNGz7U3++5NyS5VFctapiW7taCslj521NR8bcwO2yuwjYFNyTU4/cNsHFqOZ2i0zqPLBQnNckF6Drr3qfQOOOtjNp8D5tHqyslu+ExwGrsYI2mkjt9QaoKTBPuC/eNCjApyX08H3wSfNn0xkcILymAo1sVd32YcAK2dKx+/wkHIoIEacThZ1f3cKahhpHW96dUKlj52I22y12U3taw/FLaSC7p5+Pgb0Ip9hcgoyPRIWEBjOVxZJFPVkkhrVBdGpyvi1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB6767.namprd11.prod.outlook.com (2603:10b6:a03:47e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.39; Thu, 9 May
 2024 13:10:25 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 13:10:25 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v9 06/12] drm/i915/psr: Detect panel replay selective
 update support
Thread-Topic: [PATCH v9 06/12] drm/i915/psr: Detect panel replay selective
 update support
Thread-Index: AQHanSP7nIGVn4LauUiqlFyPBekxsrGO6gew
Date: Thu, 9 May 2024 13:10:25 +0000
Message-ID: <PH7PR11MB5981004588E1B0306147646FF9E62@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-7-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB6767:EE_
x-ms-office365-filtering-correlation-id: f795dca1-5623-4a3c-027f-08dc70296408
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?ek9WTWt1MjF0bkxINUpNdzI3cmsyY1lGUDVuQzY5WUM3OTE0MVBEdWQ5cyt2?=
 =?utf-8?B?dFJrM1RPV2trL1BCd1A3bC9CMHpaSnlhQ3FOOWt4bXhXWnl3ZUNObXZnY3RC?=
 =?utf-8?B?cm5hVUVwSjJGangrQ1pTaWVERkdRVEJNbytxUCtRNUIyYWY5TWxjL3l1YTN0?=
 =?utf-8?B?UFZpa3N5M2JCb3RmYjlCWi9nUjhxS2JncHd5N3htekFJY3UvV3ZYazR1K3BK?=
 =?utf-8?B?NHpGTDRVbjdwaisyV0U0cW5ydTY2cVk1ZjEzaFBwVjN5cDNHYXNZaTdFQm9l?=
 =?utf-8?B?enBYUTM4bWtTSXVpeXVUUEowYUVnd0JMTTRMWEhpSG5Md0srcnV3cUwwNnlM?=
 =?utf-8?B?cW5saTBLSHlRbmJCK0FEL1VXU0tYaDZwWDczTjdodzdCVnJlcVRFTU5TbVpP?=
 =?utf-8?B?eWNkQjMwcWdOWG9rVFVmQndQVEx2T0xQWWFnTlp0VXpIdC9qbi9Dc2xVc015?=
 =?utf-8?B?cGZ5elgwNXdtNDcyV3hGV0oyN1ZCcjh6bEpMWXFtU1Uvcm0xLzNoRWN4cmtI?=
 =?utf-8?B?b05UbVhPajlNSUNzcUdVOG40Mmw0bUVwZ1pYWVBVdmQycXBZYkRQYUtUL0dT?=
 =?utf-8?B?ZGtDQ3hXOTRhbnFSZ3Y5TzcvcE92UGZObnlVb24yaEtFTFozRUFHZENlaWNv?=
 =?utf-8?B?TTNUb3drSEoraFNTeXBMbHVJUTVNcDZxU3VKR0RGaitzQUkwY0hpZE1DNS9H?=
 =?utf-8?B?cVA1QU1tYStMUDZIcTFGYy9ucnBtV3hvNjdpbXVWUkpKMTB2RzJLZWJmRFlY?=
 =?utf-8?B?aGZYNEFnbU5wblZTN0wxNGtsZys1QVJGWGh6L0M5K1Fuc21BNW0xa2IraXVa?=
 =?utf-8?B?VzZxSjI4TmF5NEJsU2grWGo2MzNmQ0hxN0JLOEdlWUh6b3FyNFZWK0xPakxX?=
 =?utf-8?B?NFRoL3FsYkNvNXJYbDdONFQ2QVk2Um5XeXhScXZYb1NMSEoyYjM4eUNTL0RP?=
 =?utf-8?B?bjRqci9RQWpuaWlERWJXRUJQMCs2U2N5Rnl3b05CZlhidmJTVkJjWGt3UXVO?=
 =?utf-8?B?TWowMnIvZVQwZ2RDUVpCaHhnQnhnYVJtU2RWMkhvWTRINjBXZEJIUGNQYkJv?=
 =?utf-8?B?MzRxaUI1TnJZRkw0Ukt3czVmcXNPRUZZbnZmVHNwUUlDeFFJOGdJUDMzV0dO?=
 =?utf-8?B?bDJaOGVoMlNXSnU5NzZlYmM1TW1oa2FRVVJDcVloeTE0UENMdXFMcGZwbWdW?=
 =?utf-8?B?WVNheE1Kekl2S09ncGtGSGdtQm1CVTQ2NjBnNnZrZ2pQVGJCTW16aVZOaSsr?=
 =?utf-8?B?VHpDc3FCY3M5TGxrVXpqMkI0RDJSTnpheXZVVGdERm1POXBtcUxnYi9WQ0dK?=
 =?utf-8?B?dDNjWDBkSUpqMGVGY0k0c3RBdzYybGRzeGtGQTlmeGZab3R4RkY0RDdjK1E5?=
 =?utf-8?B?MWFxZTlrY3RtZWJJM01NUkhaTlVQK0pScGFYTlNXWFNSc3VGNUpyblRRMXV2?=
 =?utf-8?B?RjlJWXRjT3dhaE9keTdtQlRQK2Y3SUpYaHRiTzRXRFBPTTZsSHNLQVFSRkpz?=
 =?utf-8?B?UVJXaHZETlR6TU5iU1VSZ2FhMzZHWU9JZEhTUkhvVU9uRUdEVzdmZ0dKS21J?=
 =?utf-8?B?R0h1RmVtdUFGRlc0KzhNa21YWUptSlpPZjc1MlhQRUtKekhWS1NBcW82LzZs?=
 =?utf-8?B?WFFDRWhSTjY5YXJsK3o0QnBMT0Jlb0xUVmpzSXFGeWIvY2l5SkJVZklua1pV?=
 =?utf-8?B?WVg1NG1VVkh0aXlsYzFoVTJOYzE3cUo5Q251NzNZZnhyS0NyYkxGc3kxckth?=
 =?utf-8?B?M290b1hyQ1JockxBSC95dGdzN2VSeWx6cFRJSGJhcTEzWHpSU2htZExZcGJE?=
 =?utf-8?B?My81ZDVISVZ5dEEwd3Fwdz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0laak9ydlY0QnBBclJIdE0zYldQUng4OWdWSmNUeit6ZDF1K1Z3cXhZZWtQ?=
 =?utf-8?B?dWFqNmRqemxPQy91aWkyN1Y5eTg1c3FQZmplbVJsSEROME5MZEVyNzl3TGpT?=
 =?utf-8?B?SVJLeU8reTg0WXJLQ0hvMFdFeWpkNVFpTTVPN1BlOWNUa1p6clpOZHhCY0hN?=
 =?utf-8?B?eWUvQ3UvaXBRWk5abXkyUmpFdm5RNHA3bzEwVWhJQ1NyeXZOVWFkb0FzUnFp?=
 =?utf-8?B?RU1ER3ZLeFBSL3VacjNDVjNJN0NwbHZMWkNONW4zNi9kR1NxOERNRUZWZncz?=
 =?utf-8?B?TElqYXh6MW1OdmdqOW9qNGxSY2hjcDJkSjJBNnJEQkpCK2RBK1VZU0VLdHRn?=
 =?utf-8?B?ellkLzBWYmdpTVBoMUY2NkNhMTRmQTdzVWhUSnRnYVJKS2tQajd5bWk4VGs4?=
 =?utf-8?B?aW4wa1g5Qk1VM2hhVEd3NEdDYmpuaWlHNWdVbHlPYWxrRCtGSUp1bUViZ3Jm?=
 =?utf-8?B?dytGQ2tUdDRzaGVJVkJJanVwUVJXVWlxQmtiU3p0bEM5bDJZSTlYcGYraFIz?=
 =?utf-8?B?K1Vha2M0Y2dac3YwR3FraEovTURRcGp1NXlOcE1SVHRZTDd2VFh3dHYzRytW?=
 =?utf-8?B?U3VDcWRjL0NvZVBSZGZYRW9qQnVoZk1CQVJzZTZrWjhDVXAxL3BPdFJOQk8y?=
 =?utf-8?B?SkpNcS9BajhUR2hCV3RyTDRDL3Z2Zk9RUVdNRFZ0akJvdW12aDdnRHJpWldN?=
 =?utf-8?B?L3ZBUjBPeXMyWVBMczdYaFdEeVdGSnVJTnVMRFNsYnc1V2dMWDRRR1ViYXRF?=
 =?utf-8?B?ckJISFp5OXZyT1cvWXpjWVpsV3FwSnp0ejdtMXNyaHhiSVhGNlpRRXQ1WmEz?=
 =?utf-8?B?TWdNbTEwNVdPM0Z6SWtjYm5WOVpNQ3cxV0NlYVoyTW12TG4ySEFPc2psSk5a?=
 =?utf-8?B?Ynl1emZpQWdER203WDNaVXNNdUlTMm1Ec0kzbERkZVVOWXM0alo1OSsyZE81?=
 =?utf-8?B?OGVKY3c1TUJlNWtZekxtdzZtblZYaXphOHNFZHVDQzZYV2hRK1duOUl3ajJn?=
 =?utf-8?B?ZHhia0dJK05rMCtTSkdDTjBNRW85bGlRT2lOc1ErejVWYUtNZjlNREk0M2R5?=
 =?utf-8?B?WHd4WmNPOXh1QWhhMFNZVStrZitaem5jSXNpS01KV3drZnFSZEtnaUFyVjRp?=
 =?utf-8?B?djQxZ0xqSlFjdUFWaFBzR3pNSVhTQ1dWVDJvNWxmeW1rdmlyOTZxeTdLdGFt?=
 =?utf-8?B?V3RGNXJreDVUOXdQMGd1L080QUdjbUUvcUYwL3BzYnZmL1djUFVGeTZWWVFY?=
 =?utf-8?B?ek1GNTI2eGVaNGsyV3VlUnVXOE55VnBQSndDUUJ1TGhQaEpMV3V6cm4wZDNz?=
 =?utf-8?B?SUJaUzlXbXZnMG1pTWFtcVh0V3RpUnRHb2lCTUw1aFdUYms5bjdUeW1RemJV?=
 =?utf-8?B?WnN0QXN2MWRIMDh1UDU1S2Z3clVQbnVTaE5aWUQ0ZW5IM2MxRHlvbGRNczdH?=
 =?utf-8?B?MkJZV2ZDUnQxYkM3cTd6ZVRHSFZ3TGhOZlorcXVBN3p3WFgzL2xaTkhqS05j?=
 =?utf-8?B?ek1NN2FhR2tqSTZLeFVzV3BtYlEybkZDUldXdnlFRmJaVjVKbUl6Y0hhY05o?=
 =?utf-8?B?UDVKMkV6VnowaWljNDV4UnB1ZjZ1aU5DbUtEZEJkUG51Q3lXSzBUNmViYUht?=
 =?utf-8?B?T1ZSbHZlRGszMHpNUW1wOWo4UUJ3cm5zdGU0dFFBeGZPdXhucjNSWFlLdzFv?=
 =?utf-8?B?S3hDYWtwd3huOGFSZGxEL1RydTIyRC9mc2J5RDhaSnc0RFREWjRjN2E5N3ox?=
 =?utf-8?B?ZjN3QzZOOVNGUWNQamh4b0dLdmRuYW5sVVpSMlc3cERXc3JSRWhJS1hseDEr?=
 =?utf-8?B?YkJDWllDQ1RnU2d2Rjl6RFl3RUhpckJnaTVhdjNqS1MrMjB5emFpZ1U5SFlB?=
 =?utf-8?B?K0hVeCtQSTNhMEx5dXRjYlZjYUs1blJSeGV4MzJQQ29TbUFDMjgyZjJkbmR5?=
 =?utf-8?B?UVhrU2lWdkExRlJic2VTWkRTU3BVTllkRE5VQk40WmlsMy85ejY0U3VqaUhv?=
 =?utf-8?B?UjZBMm9YZmJoZWdRV0FLbEg0VWRPcFg1UzlFT2x6c3l0RWZYcUNzMFIrR0pQ?=
 =?utf-8?B?RzFFMmh5b0dmdzVPYzMrYi9xSkI2Wis2cHZDYXd1WXJDM3VtaXIyb2diaFEr?=
 =?utf-8?Q?x+HQl0VQ4+E1FZIbgidJgi3yD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f795dca1-5623-4a3c-027f-08dc70296408
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 13:10:25.3874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rd0IleVy1/8YS2XmGZJLzWMKeFm6ZcHUsx6r8to1v7gEGSm3sDn/ODhRTOFMhYdrFnjBQyYYfjjELnorE4iVGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6767
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjkgMDYvMTJd
IGRybS9pOTE1L3BzcjogRGV0ZWN0IHBhbmVsIHJlcGxheSBzZWxlY3RpdmUgdXBkYXRlDQo+IHN1
cHBvcnQNCj4gDQo+IEFkZCBuZXcgYm9vbGVhbiB0byBzdG9yZSBwYW5lbCByZXBsYXkgc2VsZWN0
aXZlIHVwZGF0ZSBzdXBwb3J0IG9mIHNpbmsgaW50bw0KPiBpbnRlbF9wc3Igc3RydWN0LiAgRGV0
ZWN0IHBhbmVsIHJlcGxheSBzZWxlY3RpdmUgdXBkYXRlIHN1cHBvcnQgYW5kIHN0b3JlIGl0DQo+
IGludG8gdGhpcyBuZXcgYm9vbGVhbi4NCj4gDQo+IHYzOiBDbGVhciBzaW5rX3BhbmVsX3JlcGxh
eV9zdV9zdXBwb3J0IGluIGludGVsX2RwX2RldGVjdA0KPiB2MjogTWVyZ2UgYWRkaW5nIG5ldyBi
b29sZWFuIGludG8gdGhpcyBwYXRjaA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgIDEgKw0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICAgICAgICAgfCAgMSArDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICAgICAgICAgICB8IDEwICsrKysr
KysrLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IDE1MGU2YzhlMDMyMC4uYTY5MzcyOGY4MzQ0IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiBAQCAtMTcxOSw2ICsxNzE5LDcgQEAgc3RydWN0IGludGVsX3BzciB7DQo+ICAJ
dTE2IHN1X3lfZ3JhbnVsYXJpdHk7DQo+ICAJYm9vbCBzb3VyY2VfcGFuZWxfcmVwbGF5X3N1cHBv
cnQ7DQo+ICAJYm9vbCBzaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0Ow0KPiArCWJvb2wgc2lua19w
YW5lbF9yZXBsYXlfc3Vfc3VwcG9ydDsNCj4gIAlib29sIHBhbmVsX3JlcGxheV9lbmFibGVkOw0K
PiAgCXUzMiBkYzNjb19leGl0bGluZTsNCj4gIAl1MzIgZGMzY29fZXhpdF9kZWxheTsNCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCA1NzMxYWE4NDk5
MmUuLjE4MGYyM2Y3YjM4MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBAQCAtNTg1OCw2ICs1ODU4LDcgQEAgaW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCW1lbXNldCgmaW50ZWxfZHAtPmNvbXBsaWFu
Y2UsIDAsIHNpemVvZihpbnRlbF9kcC0NCj4gPmNvbXBsaWFuY2UpKTsNCj4gIAkJbWVtc2V0KGlu
dGVsX2Nvbm5lY3Rvci0+ZHAuZHNjX2RwY2QsIDAsDQo+IHNpemVvZihpbnRlbF9jb25uZWN0b3It
PmRwLmRzY19kcGNkKSk7DQo+ICAJCWludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vw
cG9ydCA9IGZhbHNlOw0KPiArCQlpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1
cHBvcnQgPSBmYWxzZTsNCj4gDQo+ICAJCWludGVsX2RwX21zdF9kaXNjb25uZWN0KGludGVsX2Rw
KTsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBp
bmRleCBhZjE4NzI4NDYwYzkuLmI5NGY4ZTMzZWQxZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC01MjAsOSArNTIwLDE1IEBAIHN0YXRpYyB2
b2lkIF9wYW5lbF9yZXBsYXlfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAp
DQo+ICAJCXJldHVybjsNCj4gIAl9DQo+IA0KPiAtCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sDQo+
IC0JCSAgICAiUGFuZWwgcmVwbGF5IGlzIHN1cHBvcnRlZCBieSBwYW5lbFxuIik7DQo+ICAJaW50
ZWxfZHAtPnBzci5zaW5rX3BhbmVsX3JlcGxheV9zdXBwb3J0ID0gdHJ1ZTsNCj4gKw0KPiArCWlm
IChwcl9kcGNkICYgRFBfUEFORUxfUkVQTEFZX1NVX1NVUFBPUlQpDQo+ICsJCWludGVsX2RwLT5w
c3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCA9IHRydWU7DQo+ICsNCj4gKwlkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLA0KPiArCQkgICAgIlBhbmVsIHJlcGxheSAlc2lzIHN1cHBvcnRlZCBi
eSBwYW5lbFxuIiwNCj4gKwkJICAgIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vf
c3VwcG9ydCA/DQo+ICsJCSAgICAic2VsZWN0aXZlX3VwZGF0ZSAiIDogIiIpOw0KPiAgfQ0KPiAN
Cj4gIHN0YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
