Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B1B88F748
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 06:33:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E22EF10E448;
	Thu, 28 Mar 2024 05:33:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dic4k3/5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135B310E448
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 05:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711604012; x=1743140012;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Vv2HL9wnCC0sH/XaBOBnpCY4+J0QTPzWWJou9JrSclk=;
 b=Dic4k3/5oWeMK/xkoyK6BZcasTQ5JvxFgyBcrXQvkacdD00KXhhdvo7y
 u4YltAcdIz2A4ehglRy5jq5rAYu+mRq9JfKAGSmOBAAcX09hu+YNWbYk7
 XV4kY/O+wXZ9/g3q+Yy2R4pTha/kd4VISLyv0jqAuiYxRC9r6zxxqjBCR
 3s5QZsz128z0SHPOwC5fFXPix5HnB497ICyxtAghVeekSH6dmANPryste
 z6WvVu3s64CSCW387fNXLJiRB5GoPwbjI3emRtAC2eAywWI1wD+jeKZQl
 0XIUSopOoT+FT726gWLdtIMjlWE9cNP7tQjRHo4VPW95JUmxqG1AV7bFG w==;
X-CSE-ConnectionGUID: DiYo4nKeSGycqvf7mi4hOA==
X-CSE-MsgGUID: W2yimv4xQa+4AwSRQTAezA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17467195"
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="17467195"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 22:33:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,160,1708416000"; d="scan'208";a="21195946"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 22:33:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 22:33:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 22:33:30 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 22:33:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQHXlKvHmZBRpoC3pLpowrlqcec44P0REhjp0gHAv/+dIFtntiNa4M1va9zF7KB1soX9E/ERApsYoZdfHbuERZAkGBvmC7jVAf7CK7ulEd874ULzNJRMiCK9w35cuREdZ/NjRPfT909JGSqqusIhawMpGmsX7ltCaQptSbnm7zn5aAi1VEiYkJtfMi++tPJqJDQB1dRdFzkeyghy98y4IlkrFQnCpa+TAGO3HY/kAN0mREXEVbtll0MJQZLyqisOgafRk8ueqRaZSR6JFjhGRVb79ZRc8eko6ixrPfg2qJfEkR8P/0p/gDgOW0IZiJyM7PtTlskBwuP5vjjKAC8v7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vv2HL9wnCC0sH/XaBOBnpCY4+J0QTPzWWJou9JrSclk=;
 b=hqojDLc3Xa29l/7xNKM7GDzxN7/0yj2W7tDF3rMYEBK/vvtQnjCoD+0Y6WLyWkzpdGYOT9Eg9LIuUBQd+ESXc/NE5l68PCh+iXE1Yx451WtJAnwT/rR0zodwJaJ1q5iTlU2e7X6NBnBbTVBsWu7rD/AqB5RnUhzN1hRzNwsWfBOVi1zAHXLXK+++HbAZE1Um+uvtEt7xFNKINn4b5uCu//AdcHpjoXUCTcj7AzF9yrEmRHTUxTOHHkYZSsvrT+5L/FaWbDtnFeLd4HR/TFrPs9mnkjFNnuk8+HKEGij9/7Dh5k9ebsaUfPglh7Bwfr/FoSM5QMvYePINpMweSTQalg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7629.namprd11.prod.outlook.com (2603:10b6:8:146::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 05:33:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 05:33:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v5 0/5] ALPM AUX-Less
Thread-Topic: [PATCH v5 0/5] ALPM AUX-Less
Thread-Index: AQHafEQAaOo/P+o5wUakldXGtlAcqrFMqGHg
Date: Thu, 28 Mar 2024 05:33:28 +0000
Message-ID: <PH7PR11MB5981CF7E4430C02F02F6E0CDF93B2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240322103000.103332-1-jouni.hogander@intel.com>
In-Reply-To: <20240322103000.103332-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7629:EE_
x-ms-office365-filtering-correlation-id: a90ecfce-e0b2-4a7a-4ee0-08dc4ee898e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: g/An4EUxKZlyeClguxoBEn8cTECD3m107etO3XlybaEO7zZWONV4o/OeHObEnxzx3UwewGqBWHrp6nyjwfZpDHvsYe9v7vpvFpnknWUVjh1Hj27lCSj39a9Jt9HpIPj5lJY3z3+D/CgPkXmTreA8OYiKwm41rrXU5DL66yMYOEqRmzES8Gm94UeFYLqFYkWR+2HlmIT8QOUMDCpiTUxO0IE4FhW+a6rq2yWrb1tHOe6LJeXZb4rrtyL/XwvG+Bsu5Zm9E87Il86MLDIs7sZZvYEfja8hiYmlSlTh6+LGYmhW5IdXcqDkdOoA9cZO/FcXVGvDcItWNkXvWnSMXFpuLHRyxdYCPRAKassjQzPYcTHQxsy4B+haCXkwxUsn62yIrdAuawOjUhig+KUo2i/kKAhamVkmX8pjVbb9kF3nOeAvJ3uUlpUNKDAbzMnomo6ilXCyru4BfJ9dodjNkQcPyjBRPaOcVdRsokNGj9US90eFHewHUZHhpYRBcWcQp5ZCffvXGoDfPqFO1p/aN0hub8SCa80NIV9p/xUdXXPlUPSbswteqA1v68iFcMTn4ChCsoMYoddRyPl2SzAd0Knmg2gKKRPg1QsECKs6dyfyH6iPL2TW92QMZCNqW5j+nnsOlH2THh2BYPJ00WVQuZkWDPUjo73NNCNLBrlajZmRMqzC9hH4E5hk0LedqCsfMuWQzk1kaJI3zGCA+EExDECIig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTZxaDI3K3RQKzUyNi80Y1NmRDVsWFZpby9rYy90TkpnYko1cVdCNWxuUk02?=
 =?utf-8?B?Q21kYnZHRGFidE9ZTVI5T3UwRzRXUFl5TE5VNVNPdUx3N1FnYlRIUlZ3VHV6?=
 =?utf-8?B?OWYzZVN1NTFta1Jrd3RMaWdPSmJMUDB0S3hiOXBBMm4vQlEzZ1hKTTdmeEU4?=
 =?utf-8?B?UEpqRlNxMTFnd01QYVhmOGhFRVFCRmlqaTRPWFhlaFFKcjZLMWdka0tNekY5?=
 =?utf-8?B?MlI3RzlBK1MxU0JQWGxNL0VnczgvdjgyeDV4c0hiMmU2cnRHdHJlMHRqbTM2?=
 =?utf-8?B?M09qTHJHbGxXZkY4c3UwNHQ5WEdOWHZUVGlFVDNMODBJQjdsdkhYSXJTRDQy?=
 =?utf-8?B?QXNMWjdRcFhhWVdqOXNHZ0lTNzdCSFlETldXdElBdVNXNk9RR3VTMm4wcWdi?=
 =?utf-8?B?dU1nSGt6dlFBM2dQaVp3RGpUWWJJYngvbHgrMTlIVHQyWDdJZTdldlhKa05p?=
 =?utf-8?B?RzFOUCtJY0lkYzd0Z25yRnhleEowRHVBdHJtTERYMWhzSXJEbDJ1RHYvWWFV?=
 =?utf-8?B?d1A3REtRL0grWDc1SkdIQmt5aVppbHFjUHdFWk1rTGFEOGdySGJ4YzRxWjZC?=
 =?utf-8?B?V2gvSElUdlFHUStDQVh5eENEMjhVbnpPelV2Nk5XU1hYMHFVenFUY2M5cFBo?=
 =?utf-8?B?cFpaYVptZEFnazIybWFLVmk4TWNkYVlXSnR1WXhKdDUrbTlIVThsUWxBSUtv?=
 =?utf-8?B?VmZsaFgvMVlKZThBZzFNb3NoMDBHcnZnd1VWa0VBcXNXdEpLV0V0dWZhRzcz?=
 =?utf-8?B?cDZGZ1MvMzIzTE5wNk5QNkI4emZqMkJSQzMvR3dtbVdVekN0eG5PK0tERGxL?=
 =?utf-8?B?a0ZaVDVDOWtaNlFsYklKSnRjSjhPQTI5VFpiWnltZGs1WWZnSXRTREloZ1p4?=
 =?utf-8?B?TnB3YkV0K0xJY1o1MHcyRVRocHZWTWJXcEN5MDB6eUlGaWhiT0hCZVIvTWFB?=
 =?utf-8?B?STB6cUFpZ0UxZ3JzajBrbXZpcHNHWmpYV3RrMTBEMXlxanhhQlhGQXJxcjBI?=
 =?utf-8?B?WFNVQno5YS9oZE1JZVRBV0YxWW5mUXI5ZUtZTGJFTDlIVHN3RVZsd2lwV08x?=
 =?utf-8?B?SGh4U0E3SmpTVnprNno4Q2xmSVhoV2EwN3hBS0lEbms0ZFlFS1Z2Y2lHRUhO?=
 =?utf-8?B?MFpXc2laMmQvRTJieXZmczdIeW5WdUV4N28rNTZPQUJxWFZSa0xKMWxOd05q?=
 =?utf-8?B?dHJEa1pNRXkwTGhOOFBzcGh6MnRGUlVBa1dWT1ppTkdzcEFySEJNa2QvUmJW?=
 =?utf-8?B?ajVWZHdJbjFoSlZLdWYxTG5wcEdRSk0wTXZJVS9XS1M3YWYrNUE4b01pZXVx?=
 =?utf-8?B?UGY4ME9MV1p3ZXBhYXZHdHRVSnU2L2MvU3JkdWs2cldMaTZmamk5SFFDQXJm?=
 =?utf-8?B?eTQvWkpRL2Zkc0NjZTBOZFZOMlZpN2EzellyTmFSOXEwZFUrQjNCMjFSOG5x?=
 =?utf-8?B?SkcyNnhQYUlCQmkxNXNWL0RGYmF6MEVaZktiTVlGdXpuaXRvT2E4ZGlXTDlm?=
 =?utf-8?B?STBQcmlIOGNEcDBMTHJpVmNmQnlHOW1RK3lTR2VlOUx1UW90VFlkTnd4dVVV?=
 =?utf-8?B?RHFVM0F1VkFLYXJ1OTliTUZLNDZkNitPMUxQVGtQenFuQWxnZGxtZHBvVDYr?=
 =?utf-8?B?UzMzSzZYRFhHbm1SOHRwRmNMWFZuS1B3N2lWRmxFNkpKejM0aytaUTlIeHAw?=
 =?utf-8?B?b0c3M2dpdWhjSlN6NEV3Y0hrMGhYWVo2dzllTXZrbVlZTTVOSHNuRFR3SW9r?=
 =?utf-8?B?ajdtdzQ3aEpnTEVOYStGVTcvd1hBOTI1eXhMeU9lM0Iyck5XMCtwK0RFeHNT?=
 =?utf-8?B?ckNoaTEvRjgwU2tzckF4cE1ySFZqWkpCemJoem1xWWoyRDNyeGxpakhXeW85?=
 =?utf-8?B?cnNvakFnREdCSmM3dzRJTHBCTzZvaC94aFpta0tOTFE2TGNETDJKNytva3Vy?=
 =?utf-8?B?YWM0SE93WmJLalB3TnpMR3R4MEU4d3RoZlpENWp2T3p0QytBOG1ZVXJKVEp5?=
 =?utf-8?B?dXBCSHRhRzlsL20rcjY2aERua01NMUp3YTdncTVZRkVOc0I0WmlDY1ZocW43?=
 =?utf-8?B?UXdidTBzdlNETE1LTWQ2M2NrRGErWU9xa1FmZlZXcVFGb2NZRG1zZTI4aHBx?=
 =?utf-8?Q?Q7/Oa4+PN58GWtkmGtfKdPo2+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a90ecfce-e0b2-4a7a-4ee0-08dc4ee898e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 05:33:28.3962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I/PsZ9iBGojBS0SG7wrmsQ3pdM69weO09EqfzzBPeil+TZoez6SFmbbjX8qXe6x/JFYLab7vdFNY7hmg7B8+Ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7629
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjIsIDIw
MjQgNDowMCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IE1hbm5hLCBB
bmltZXNoDQo+IDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IE11cnRoeSwgQXJ1biBSIDxhcnVu
LnIubXVydGh5QGludGVsLmNvbT47DQo+IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjUgMC81XSBBTFBNIEFVWC1MZXNzDQo+IA0K
PiBUaGlzIHBhdGNoIHNldCBpcyBpbXBsZW1lbnRpbmcgY2FsY3VsYXRpb24gb2YgQUxQTSBBVVgt
TGVzcyBwYXJhbWV0ZXJzIGZvcg0KPiBJbnRlbCBIVyBhbmQgd3JpdGluZyB0aGVtIGluIGNhc2Ug
b2YgQVVYLUxlc3MgaXMgZW5hYmxlZC4gSXQgaXMgYWxzbyBlbmFibGluZw0KPiBBTFBNIEFVWC1M
ZXNzIGZvciBlRFAgUGFuZWwgUmVwbGF5LiBDdXJyZW50IGNvZGUgaXMgbm90IGFsbG93aW5nIFBh
bmVsDQo+IFJlcGxheSBvbiBlRFAuIFBhdGNoZXMgZm9yIHRoaXMgYXJlIGNvbWluZyBsYXRlci4N
Cj4gDQo+IFRoaXMgaW1wbGVtZW50YXRpb24gaXMgb25seSBmb3IgUGFuZWwgUmVwbGF5IHVzYWdl
LiBMT0JGIChMaW5rIE9mZiBCZXR3ZWVuDQo+IEFjdGl2ZSBGcmFtZXMpIHVzYWdlIG5lZWRzIG1v
cmUgd29yay4NCj4gDQo+IHY1Og0KPiAgIC0gbWVudGlvbiBBVVggTGVzcyBlbmFibGUgaXMgb25s
eSBvbiBzb3VyY2Ugc2lkZSBpbiBjb21taXQgbWVzc2FnZQ0KPiB2NDoNCj4gICAtIGRyb3AgcGF0
Y2ggYWRkaW5nIEFVWCBMRVNTIGRwY2QgZGVmaW5lcw0KPiAgIC0gcmUtdXNlIGZhc3Rfd2FrZV9s
aW5lcyB0byBzdG9yZSBhdXhfbGVzc193YWtlX2xpbmVzDQo+ICAgLSBhZGQgY29tbWVudCBleHBs
YWluaW5nIHdoeSBBVVggbGVzcyBpcyBlbmFibGVkIG9uIGVEUCBwYW5lbCByZXBsYXkNCj4gICAg
IHdpdGhvdXQgYW55IGV4dHJhIGNoZWNrcw0KPiB2MzoNCj4gICAtIHVzZSBkZWZpbml0aW9ucyBp
bnN0ZWFkIG9mIG51bWJlcnMgZm9yIG1heCB2YWx1ZXMNCj4gICAtIGRvIG5vdCB1c2UgYWxwbV9j
dGwgYXMgdW5pbml0aWFsaXplZCB2YXJpYWJsZQ0KPiB2MjoNCj4gICAtIHVzZSB2YXJpYWJsZXMg
aW5zdGVhZCBvZiB2YWx1ZXMgZGlyZWN0bHkNCj4gICAtIGZpeCBzZXZlcmFsIG1heCB2YWx1ZXMN
Cj4gICAtIG1vdmUgY29udmVydGluZyBwb3J0IGNsb2NrIHRvIE1oeiBpbnRvIF9sbmxfY29tcHV0
ZV8qDQo+ICAgLSBkbyBub3Qgc2V0IEFVWC1XYWtlIHJlbGF0ZWQgYml0cyBmb3IgQVVYLUxlc3Mg
Y2FzZQ0KPiAgIC0gZG8gbm90IHdyaXRlIEFMUE0gY29uZmlndXJhdGlvbiBmb3IgRFAyLjAgUGFu
ZWwgUmVwbGF5IG9yIFBTUjENCj4gDQo+IEpvdW5pIEjDtmdhbmRlciAoNSk6DQo+ICAgZHJtL2k5
MTUvcHNyOiBBZGQgbWlzc2luZyBBTFBNIEFVWC1MZXNzIHJlZ2lzdGVyIGRlZmluaXRpb25zDQo+
ICAgZHJtL2k5MTUvcHNyOiBDYWxjdWxhdGUgYXV4IGxlc3Mgd2FrZSB0aW1lDQo+ICAgZHJtL2k5
MTUvcHNyOiBTaWxlbmNlIHBlcmlvZCBhbmQgbGZwcyBoYWxmIGN5Y2xlDQo+ICAgZHJtL2k5MTUv
cHNyOiBFbmFibGUgQUxQTSBvbiBzb3VyY2Ugc2lkZSBmb3IgZURQIFBhbmVsIHJlcGxheQ0KPiAg
IGRybS9pOTE1L3BzcjogRG8gbm90IHdyaXRlIEFMUE0gY29uZmlndXJhdGlvbiBmb3IgUFNSMSBv
ciBEUDIuMCBQYW5lbA0KPiAgICAgUmVwbGF5DQoNClRoZSBhYm92ZSBwYXRjaGVzIExHVE0uIEZv
ciB3aG9sZSBwYXRjaCBzZXJpZXM6IA0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPg0KDQo+IA0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oICAgIHwgICAyICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgICAgICB8IDE4OCArKysrKysrKysrKysrKysrKy0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaCB8ICAxMiArLQ0KPiAgMyBmaWxl
cyBjaGFuZ2VkLCAxOTMgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+
IDIuMzQuMQ0KDQo=
