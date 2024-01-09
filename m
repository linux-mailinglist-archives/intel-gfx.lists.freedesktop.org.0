Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB13828657
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 13:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F72C10E02E;
	Tue,  9 Jan 2024 12:56:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3BC10E02E
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 12:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704804964; x=1736340964;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z00ooZg5868M1BNBa+pMjloxyGtriYjEg9GI8Ea4Vx0=;
 b=HDfT7cNFjJNOHf0kR5X13jR8oeSZ/W+JgnoIjbdLarfKYC4KcOxYfWWr
 GyKT6g0IDejw1MmsBmXgAZk89VpfVZtp4mhwZIruLYerLm9O54oTINtR3
 t6tbFMGr9xh3Xwy02ZFBWmx5cD/9mQnbrRAoJcV8XBa19HcfBfTZ0+NwJ
 hUWmt9tazzyDtBo9DsNZXNt2U1dq8ESSsvo2SMAMo9jdwk8L6hsPqwLPP
 uZTzmt1mQr1Fhn268ENEal7AM7upU4tYH8n7Vh3G/u3kb27mPpJie8ZxK
 xobw0pjKsJriGp/XIA5jJkNn5ISRX/2OkGlk1CltvDtiUUpAKadSfnVxt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="19691930"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="19691930"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 04:56:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="900756717"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="900756717"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2024 04:56:03 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 04:56:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Jan 2024 04:56:02 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Jan 2024 04:56:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQxw7qy8xhQ9G+S8WF5V8G/Nfte7Q1czw8xCAbDI3k3yKpkYx6U5Dl54+S+QA0TWxwajp0fe5HhbCpPcJKIDEMIgCM1bAAQY4yyAzt95YC8XcIFCmuG/H90aJ1POgNClQvWWQxVnDgccy69AJ9rVJ3f1VISyItoMATxsuB2W8RnI1THZ91crhfNSILNwlTmeMeWkrROrSxyu1U0V77s3+A1JC52ZewHOJx6hFWyz0iaZo7UC/pmIoQ2RvSBvRSHBh6YGBvCtn1LURGzPVvHZg82KFaM+iZhY881jUY5QLISe2yooO+4e8oNzvLZ9CH0Rz7vYEzv2DJ+511daShR8WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z00ooZg5868M1BNBa+pMjloxyGtriYjEg9GI8Ea4Vx0=;
 b=XD4/n/i+59qfAFCpuXmFvq9N2VHfGV6Lwc2A4OMhQ69XTXMPstaklHn768OWeL0N/H0RSvvPCPFsp6+LQzb6FYtG2gF9zrJ9V79j66dMpDeIoyZ9jOPpMseNNSBUHfL+BSXLhTUUJA7NKQnlWaxHdygse2cMKXFDGAbifwOB3n/gO7f+W7xPW/LNgvLnFVcf3IJXxMsJ+W/x2JHAB0SKX+lkZEFUwImwFTYyZsVLhYsu3PS5Pedk1ZeLA0STEFUtxbzkR/hpVb7QdOBN5OhtnHBJX3SBtTt/XYnZUUh+NrZLWmsAJhYpYO/tsIUNzHUr2ren2h9cz8OU2o/jPE1RPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB5897.namprd11.prod.outlook.com (2603:10b6:806:228::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Tue, 9 Jan
 2024 12:56:00 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 12:56:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 6/7] drm/i915/psr: Enable psr2 early transport as possible
Thread-Topic: [PATCH 6/7] drm/i915/psr: Enable psr2 early transport as possible
Thread-Index: AQHaMeBciJUqE70/Wka/U40v85V1F7DRkogQ
Date: Tue, 9 Jan 2024 12:56:00 +0000
Message-ID: <MW4PR11MB7054F0839B88C56AC09D7737EF6A2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
 <20231218175004.52875-7-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB5897:EE_
x-ms-office365-filtering-correlation-id: b5a8f249-96bb-4cdf-c185-08dc1112544f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3HU64NEX2MKiZtFrEi8UTsiBp1vTnRVoHgqul8rVRt9aEcnQfAJGbf3Kv4YWAUO0ysCAHr7lYOkfU2bVa9uhbl9iV4iVr83xpzlYJcR4uZFVv/SsKZrl+K9z3/odowNQ5IrCX55bJITOsGUHiwex0ga4T77dG0ZVQjN5NGbpmbR4azNmvOVbeKScC/qO1yWyooyRnmLrbPl8Qk4u8SA1uASqE0OiuS0yRtyprL8t5SThidsFEN7/sQ0W6DxQlULyFiftk7EkDOhfhoqMdFAgjpjz6PIC0TCu4WAKSxYoVnpt1hJ0t1SNO2NpZyBDYYowL2b8g4jgMB/5POyvulp1vuTN1SMQFe2OIv4wEm4vTHHqTb1QHYN3ibwDfyTsJxGS+D9JKbh9ANc2mQGbHMVW/8jaOZ48jl+1/s4FTZwpDyPXsCYeD7yiW7HbjpT22SV7vOSAX2f7ox26guN8CSjE28jF7Fo0dTId1D+48m2rg1OrIaoKuY9Xjj+sdd+brB20SvbJvm/xOdaMMCRAk5Mylu6Quw3gFgPz2VxLCMappCcu/ZOq/DjxYSlGx0VN8Ecxw6XbjUlp2RIFX0fYK5HD/VSFFdWNQW72pQJbl/yyB4HFikQbukiqD3JcDFl4uOro6Q1rhSYaVNzWsbGjvVRQlYoaN7VStqtfI9rkYs1jUdA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(346002)(366004)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(66574015)(9686003)(53546011)(6506007)(26005)(122000001)(38100700002)(8936002)(8676002)(5660300002)(52536014)(2906002)(7696005)(478600001)(71200400001)(110136005)(64756008)(66446008)(66476007)(66556008)(316002)(41300700001)(76116006)(66946007)(38070700009)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ejZPQXF1bnNjS1RQM2hiR0wwbWNhK3N0MktKMytTUUtCQk5BYis5TEoyRzUz?=
 =?utf-8?B?TUljMERiNUdoK2paRzBMTWVvNThUM1VCTEN2OGl6amhVZWNuV2Q3M0pMRlVH?=
 =?utf-8?B?SlJ1cmxpVjRBdUEyNzNBVjdzOWlNNlU4cWRYdHlnSEZGdGM2VldjNlVTU1F6?=
 =?utf-8?B?UTBqRVdRS1dEd0pTTmZKSThyUTRweDdNcFUwNVJFUTZudVk3NVNtN3BXTEtr?=
 =?utf-8?B?ZTZCU2c5RHZIUTU4QVhoWWtFQ2wwVWwwbG43VGQ5TnVoeXlFQlMvT2dRMW5z?=
 =?utf-8?B?NXZYc3BGelVRNW95Q0ZIRGg0RTBlRVRwc1Q3MVNIR08zWmRLSzhHR3M2RFZ6?=
 =?utf-8?B?MUd3NmZySkZEd0wwTUdOaGdaZmhUeXZLL1BhRU9zNHI1Y0xRbHkzWFA0eGJ0?=
 =?utf-8?B?cnJtbmoyY2NkTmVGZE4xSndPaHJGZUhESlB1NkxBcDJCcjNYamk0TmQzVklK?=
 =?utf-8?B?UEtiYnE1TCtheUpxZDVaMCtXVlQ2a3JvVnQxWkNySkIrVkVUTFRpVkRuL3VN?=
 =?utf-8?B?bkZpVjVyK04vSEY5QkM4VzBhZllGRXFZazZqL0c2QUpmeXFDYVNXT1c4L2Q5?=
 =?utf-8?B?ZWxlOWlQczZKeW1SdmhPZysramsya2YxNkhsUTc5WWIwcG1HdVk2MSt3V0Rx?=
 =?utf-8?B?TmdzMFowb09ONUJrd2h6aW5aMkJYN1F3QXlnYUpUdWw1dGRQOWNXdUZmVGM2?=
 =?utf-8?B?bFJ5Q3ZtSXZIZ3NmL1d0cnRXWGNGcGFpQlVrM0RNVm1sSEpKVFI2RkduaHls?=
 =?utf-8?B?Y2tNQzFHbFhjYk9IbDhKQjF6QzMyMU5ZV3BKa1l3aXRoSlN2VkhTU3ViTTlh?=
 =?utf-8?B?MDhITW9JejdGUjhEcEtGWHZwM3F1czFlMEpDakI0NGNZcGdxS24vMnBjTldB?=
 =?utf-8?B?Q1doRVU5ZVpKS2dZeS9wS0NxOHdseFExZjNNVW1MY29MUkh3NVZQMDZ5SHhZ?=
 =?utf-8?B?LzQxVmJMbGJzOSt5ZitQd2h1OCtSQVBkYjBnRUg2cnZkM09SWmpkRWhIM1BX?=
 =?utf-8?B?bWFkblBZeHhsTE9hc1B4NWZjaG1rbkFaUkNKSHZlN0M2Z0lhOWx0RTVhQ3Qw?=
 =?utf-8?B?M2tzOGtaR0s3dllvNTFjVUxEV2RuWnZWcUpjR2pxOUdwcVhKWEI2T3Q5Y05R?=
 =?utf-8?B?WFp5ak90RDN4cllVaGpvMmVwcjNYeitud0dWTEEydzh2T01qVTdZVW1GUDA2?=
 =?utf-8?B?ckJQUTVFWnNNZ1BtcVFqOWd2TDJwNTV0Z0ZWY1J3bGhJT0tUSG50UFBDTWpO?=
 =?utf-8?B?dEthR2o2QzlPTytXYkdCcnVycm80MHVHbG5hbkQ4V2lTOW9MNUNuVVNsblpp?=
 =?utf-8?B?MXIxNkxCaFVUbUluL1lXaGZtY05TYktQTW5BU0drMzJRWmZqUTdUQitTN0Jn?=
 =?utf-8?B?L0NFenNPWWxCc1RWZmVYUlpOWUVHSUtIVldpbkRxcUdFQ3lnaXA0U0x5cTY5?=
 =?utf-8?B?dDZQYnRLOVpRWVVORkxFYndFM21HRExJN0lVMm5ndUhqTWxjWHNtRE14T0F5?=
 =?utf-8?B?QjltL21pQnZJRHpRNHNpTUJXWUFPM0o0MEhHSGlJem5XWVdxcnlTbWRVZW1x?=
 =?utf-8?B?LzFPclFBZkF5UmNwNkNOL1BjL1QzajUwL3J3dlVrclZxbUNBZ0kxQ1RoSHFq?=
 =?utf-8?B?aUdvRTcyMmt2NCtKQTdvd3ViOGNJOHEwLzNZS0xIeXJzOGFscUVONm5Hc0VX?=
 =?utf-8?B?QjdpVGVwSktwTVRaY0x1YVlxSmVKeDB3bmJBRDMyTzJKazhEVmJyOENoaU9E?=
 =?utf-8?B?eVZLdjExRHZ0OTY4b3JhNEdnU1pFZm1KQ3FXUWhpYmVocUtyOHROVTBPN0NV?=
 =?utf-8?B?QVA0ZkROSlBNQi9Od25ld2J4eDZQRFlYTDQ0T0wvYzZSZ2ZlSXZNV0Z6MGNY?=
 =?utf-8?B?QkRDTURKeGZTWXgvZm1uVGpHMEdLbHdKM0lUTndUWVFPdEVEa3RsWU5EcjBS?=
 =?utf-8?B?bmREeVRqK1NNZmF0QzJrTzhtMkxxVFJPRGJ4UmtRdlQvUjlzeGZHT0lpb0o1?=
 =?utf-8?B?czZnS1BrSUVCSDNsRlhvaDRRTlRzQjVOZTVJMzBEaG1mZG4vT2pYeTc3cFdU?=
 =?utf-8?B?MXdWUWU2ejBjVXFBUytGNXpPbHNZaVRXNmRyVFdteEtHMkFhaWFFWXZjd1pQ?=
 =?utf-8?Q?cDYbScpRVbSNx/nE8UeNvOLX4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5a8f249-96bb-4cdf-c185-08dc1112544f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2024 12:56:00.1313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y2FqSUKzQ9LtnioF+JWm7cOPIu9u/G4UHnYkVoD/N+BQQPyulhy3zncq/m+QT8o+peD3B0mVArNxEVDMamrgsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5897
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDE4LCAyMDIzIDc6NTAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDYvN10gZHJt
L2k5MTUvcHNyOiBFbmFibGUgcHNyMiBlYXJseSB0cmFuc3BvcnQgYXMgcG9zc2libGUNCj4gDQo+
IENoZWNrIHNvdXJjZSBhbmQgc2luayBzdXBwb3J0IGZvciBwc3IyIGVhcmx5IHRyYW5zcG9ydCBh
bmQgZW5hYmxlIGl0IGlmIG5vdCBkaXNhYmxlZCBieSBkZWJ1ZyBmbGFnLg0KPiANCj4gQnNwZWM6
IDY4OTM0DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggICAgfCAxNiArKysrKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMjIgKysrKysrKysrKysrKysrKysrLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5oIHwgIDEgKw0KPiAgMyBm
aWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgN
Cj4gaW5kZXggMDVkZDhkZWNkNjEwLi5jYThiYzkwOWVhMzUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0x
MjE1LDYgKzEyMTUsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+ICAJYm9vbCBoYXNf
cHNyOw0KPiAgCWJvb2wgaGFzX3BzcjI7DQo+ICAJYm9vbCBlbmFibGVfcHNyMl9zZWxfZmV0Y2g7
DQo+ICsJYm9vbCBlbmFibGVfcHNyMl9zdV9yZWdpb25fZXQ7DQo+ICAJYm9vbCByZXFfcHNyMl9z
ZHBfcHJpb3Jfc2NhbmxpbmU7DQo+ICAJYm9vbCBoYXNfcGFuZWxfcmVwbGF5Ow0KPiAgCWJvb2wg
d21fbGV2ZWxfZGlzYWJsZWQ7DQo+IEBAIC0xNjg2LDEzICsxNjg3LDE0IEBAIHN0cnVjdCBpbnRl
bF9wc3Igew0KPiAgCS8qIE11dGV4IGZvciBQU1Igc3RhdGUgb2YgdGhlIHRyYW5zY29kZXIgKi8N
Cj4gIAlzdHJ1Y3QgbXV0ZXggbG9jazsNCj4gDQo+IC0jZGVmaW5lIEk5MTVfUFNSX0RFQlVHX01P
REVfTUFTSwkweDBmDQo+IC0jZGVmaW5lIEk5MTVfUFNSX0RFQlVHX0RFRkFVTFQJCTB4MDANCj4g
LSNkZWZpbmUgSTkxNV9QU1JfREVCVUdfRElTQUJMRQkJMHgwMQ0KPiAtI2RlZmluZSBJOTE1X1BT
Ul9ERUJVR19FTkFCTEUJCTB4MDINCj4gLSNkZWZpbmUgSTkxNV9QU1JfREVCVUdfRk9SQ0VfUFNS
MQkweDAzDQo+IC0jZGVmaW5lIEk5MTVfUFNSX0RFQlVHX0VOQUJMRV9TRUxfRkVUQ0gJMHg0DQo+
IC0jZGVmaW5lIEk5MTVfUFNSX0RFQlVHX0lSUQkJMHgxMA0KPiArI2RlZmluZSBJOTE1X1BTUl9E
RUJVR19NT0RFX01BU0sJCTB4MGYNCj4gKyNkZWZpbmUgSTkxNV9QU1JfREVCVUdfREVGQVVMVAkJ
CTB4MDANCj4gKyNkZWZpbmUgSTkxNV9QU1JfREVCVUdfRElTQUJMRQkJCTB4MDENCj4gKyNkZWZp
bmUgSTkxNV9QU1JfREVCVUdfRU5BQkxFCQkJMHgwMg0KPiArI2RlZmluZSBJOTE1X1BTUl9ERUJV
R19GT1JDRV9QU1IxCQkweDAzDQo+ICsjZGVmaW5lIEk5MTVfUFNSX0RFQlVHX0VOQUJMRV9TRUxf
RkVUQ0gJCTB4NA0KPiArI2RlZmluZSBJOTE1X1BTUl9ERUJVR19JUlEJCQkweDEwDQo+ICsjZGVm
aW5lIEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9ESVNBQkxFCTB4MjANCj4gDQo+ICAJdTMy
IGRlYnVnOw0KPiAgCWJvb2wgc2lua19zdXBwb3J0Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNjdmNjhjMjZhMzEyLi5jMjlmZDcwODYwOGEgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNTI4
LDcgKzUyOCw3IEBAIHN0YXRpYyB2b2lkIF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApDQo+ICAJCWludGVsX2RwX2dldF9zaW5rX3N5bmNfbGF0ZW5jeShpbnRlbF9kcCk7
DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSA5ICYmDQo+IC0JICAgIGludGVsX2Rw
LT5wc3JfZHBjZFswXSA9PSBEUF9QU1IyX1dJVEhfWV9DT09SRF9JU19TVVBQT1JURUQpIHsNCj4g
KwkgICAgaW50ZWxfZHAtPnBzcl9kcGNkWzBdID49IERQX1BTUjJfV0lUSF9ZX0NPT1JEX0lTX1NV
UFBPUlRFRCkgew0KPiAgCQlib29sIHlfcmVxID0gaW50ZWxfZHAtPnBzcl9kcGNkWzFdICYNCj4g
IAkJCSAgICAgRFBfUFNSMl9TVV9ZX0NPT1JESU5BVEVfUkVRVUlSRUQ7DQo+ICAJCWJvb2wgYWxw
bSA9IGludGVsX2RwX2dldF9hbHBtX3N0YXR1cyhpbnRlbF9kcCk7DQo+IEBAIC02MDQsNiArNjA0
LDE4IEBAIHN0YXRpYyB2b2lkIGhzd19wc3Jfc2V0dXBfYXV4KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApDQo+ICAJCSAgICAgICBhdXhfY3RsKTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBw
c3IyX3N1X3JlZ2lvbl9ldF92YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSB7DQo+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4g
Kw0KPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCAmJg0KPiArCSAgICBpbnRlbF9kcC0+
cHNyX2RwY2RbMF0gPT0gRFBfUFNSMl9XSVRIX1lfQ09PUkRfRVRfU1VQUE9SVEVEICYmDQo+ICsJ
ICAgICEoaW50ZWxfZHAtPnBzci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9E
SVNBQkxFKSkNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsNCj4gKwlyZXR1cm4gZmFsc2U7DQo+ICt9
DQo+ICsNCj4gIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKSAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGRwX3RvX2k5MTUoaW50ZWxfZHApOyBAQCAtNjE5LDYgKzYzMSw4IEBAIHN0YXRpYyB2b2lkDQo+
IGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCQkJ
CSAgIERQX0FMUE1fTE9DS19FUlJPUl9JUlFfSFBEX0VOQUJMRSk7DQo+IA0KPiAgCQlkcGNkX3Zh
bCB8PSBEUF9QU1JfRU5BQkxFX1BTUjIgfCBEUF9QU1JfSVJRX0hQRF9XSVRIX0NSQ19FUlJPUlM7
DQo+ICsJCWlmIChwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZChpbnRlbF9kcCkpDQo+ICsJCQlkcGNk
X3ZhbCB8PSBEUF9QU1JfRU5BQkxFX1NVX1JFR0lPTl9FVDsNCj4gIAl9IGVsc2Ugew0KPiAgCQlp
ZiAoaW50ZWxfZHAtPnBzci5saW5rX3N0YW5kYnkpDQo+ICAJCQlkcGNkX3ZhbCB8PSBEUF9QU1Jf
TUFJTl9MSU5LX0FDVElWRTsgQEAgLTg2OSw2ICs4ODMsOSBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0
aXZhdGVfcHNyMihzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCQlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgUFNSMl9NQU5fVFJLX0NUTChjcHVfdHJhbnNjb2RlciksIDApOw0KPiAg
CX0NCj4gDQo+ICsJaWYgKHBzcjJfc3VfcmVnaW9uX2V0X3ZhbGlkKGludGVsX2RwKSkNCj4gKwkJ
dmFsIHw9IExOTF9FRFBfUFNSMl9TVV9SRUdJT05fRVRfRU5BQkxFOw0KPiArDQo+ICAJLyoNCj4g
IAkgKiBQU1IyIEhXIGlzIGluY29ycmVjdGx5IHVzaW5nIEVEUF9QU1JfVFAxX1RQM19TRUwgYW5k
IEJTcGVjIGlzDQo+ICAJICogcmVjb21tZW5kaW5nIGtlZXAgdGhpcyBiaXQgdW5zZXQgd2hpbGUg
UFNSMiBpcyBlbmFibGVkLg0KPiBAQCAtMTAzMSw2ICsxMDQ4LDkgQEAgc3RhdGljIGJvb2wgaW50
ZWxfcHNyMl9zZWxfZmV0Y2hfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+IA0KPiArCWlmIChwc3IyX3N1X3JlZ2lvbl9l
dF92YWxpZChpbnRlbF9kcCkpDQo+ICsJCWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lv
bl9ldCA9IHRydWU7DQo+ICsNCj4gIAlyZXR1cm4gY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2Vs
X2ZldGNoID0gdHJ1ZTsgIH0NCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzcl9yZWdzLmgNCj4gaW5kZXggY2VlZmNjNzBlOGY5Li5iYzI1MmYzODIzOWUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3Mu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzcl9yZWdzLmgN
Cj4gQEAgLTE1OSw2ICsxNTksNyBAQA0KPiAgI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9CTE9DS19D
T1VOVF9NQVNLCQlSRUdfQklUKDI4KQ0KPiAgI2RlZmluZSAgIFRHTF9FRFBfUFNSMl9CTE9DS19D
T1VOVF9OVU1fMglSRUdfRklFTERfUFJFUChUR0xfRURQX1BTUjJfQkxPQ0tfQ09VTlRfTUFTSywg
MCkNCj4gICNkZWZpbmUgICBUR0xfRURQX1BTUjJfQkxPQ0tfQ09VTlRfTlVNXzMJUkVHX0ZJRUxE
X1BSRVAoVEdMX0VEUF9QU1IyX0JMT0NLX0NPVU5UX01BU0ssIDEpDQo+ICsjZGVmaW5lICAgTE5M
X0VEUF9QU1IyX1NVX1JFR0lPTl9FVF9FTkFCTEUJUkVHX0JJVCgyNykNCj4gICNkZWZpbmUgICBF
RFBfWV9DT09SRElOQVRFX0VOQUJMRQkJUkVHX0JJVCgyNSkgLyogZGlzcGxheSAxMCwgMTEgYW5k
IDEyICovDQo+ICAjZGVmaW5lICAgRURQX1BTUjJfU1VfU0RQX1NDQU5MSU5FCQlSRUdfQklUKDI1
KSAvKiBkaXNwbGF5IDEzKyAqLw0KPiAgI2RlZmluZSAgIEVEUF9NQVhfU1VfRElTQUJMRV9USU1F
X01BU0sJCVJFR19HRU5NQVNLKDI0LCAyMCkNCj4gLS0NCj4gMi4zNC4xDQoNCg==
