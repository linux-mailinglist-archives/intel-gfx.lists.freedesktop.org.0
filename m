Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AD684B9C7
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 16:37:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64ED0112C98;
	Tue,  6 Feb 2024 15:37:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UDeNQi+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 06 Feb 2024 15:37:18 UTC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D19112C99
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 15:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707233838; x=1738769838;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GvXkRSD6QKCiJW1c9Hma5GMLYdRATO927kH9q8W8clU=;
 b=UDeNQi+kXadXJcq/zqDm842JCOWWm3W/Zv3x7ucnx+SyyqhwGwJuB8An
 p/n6/9B1fQSb4OVUZftTAXugDlvfuLLpN8x2rmpY5CMbs5j1qep5Pc+I5
 C3L72Xf2Vov3/T0K/FEhMUCWRLtEmocNu5pnQ64E4nbmgoau3Gzr0Fkom
 qo4RHRLHgVee5EqXozagsjoLe84160TS4ljcfH0Q94UDCtBoFiVyOp+tG
 faJ/bPKloYUcpvwr8utYcfjv4Okb2MpQY7RPgHSl2Ykaw4N9dZvz2vFFv
 dafczwpoJTxEyVtJ6uicJv/y5Z1EbNG0F7sKAB6tXyu8QZ5M3OiKIBPri A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="656781"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="656781"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:30:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1383922"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 07:30:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 07:30:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 07:30:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 07:30:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOX5kzV2p5MKUgCSCpeDMxG04N/nat7M1M9fHwbmRfSp0ezSRZHdG7oXE7Q6jn0oCXbl33t1/DVHpHUKGQU3LprduQeIKLydhRGyNgqjdNWRzAoCWUdcNIdz8m6pzgnOFkRNor1epro9P+NauRPVRm90zxa0RmokANXjzzps7htlarvqBVUkLLer2V0cQrHbkfFxheUFJblUcQQ2KAUOxTl/kIqqygTslU7au2jiBaxuTrO1hMyPpd6L1HKElFwWLa3EsDdWYsJiT1EoA702S30GoOGGeFeB3kUB0cMhpxzuw5FL2rxRtX6Npj7JuVo0Zc9xfPgU97FYLqeO4vm+Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GvXkRSD6QKCiJW1c9Hma5GMLYdRATO927kH9q8W8clU=;
 b=oMQIm0hXXk3b5+7HJeWPdfM/Cquob4ozd8hjyy9OUWhtCV7jODnEMsdbR5z6T0aBS/rI5CU9fcqu2nND3qpVOJW1R+jUdmAkq6PDuP0qP6OVFqoTyRw1zTk7R5OA0zTzrOGtoqSOaaRI67yy0h1vDNgQ2SJ8cSsD4MppMOf9vBT7/E8A/03jFYdz4826tatkZSO4D7lngdlIy3Kzts3IHRp5oIZU0rxxipVnhwpMi57coP4bNhl+0EAMizIMIuDaSnvLR+8pPDC307xYytiHmnCRzyqHpvXobSPGiiEaTR7J5kwNVdcGvMUQHdMhJmenpVLMKhiiwMtgLMXJeq/MwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB6719.namprd11.prod.outlook.com (2603:10b6:a03:478::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 15:29:57 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 15:29:56 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Thread-Topic: [PATCH v3 4/4] drm/i915/alpm: Alpm aux wake configuration for lnl
Thread-Index: AQHaU20lGryu8B6p10aFKBmm9YofbLD9e59g
Date: Tue, 6 Feb 2024 15:29:56 +0000
Message-ID: <IA0PR11MB7307C9323C2B9C351AAC5B4CBA462@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240130111130.3298779-1-jouni.hogander@intel.com>
 <20240130111130.3298779-5-jouni.hogander@intel.com>
In-Reply-To: <20240130111130.3298779-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB6719:EE_
x-ms-office365-filtering-correlation-id: 455df378-934a-493f-90f9-08dc27287953
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LvkY2wjkpSoN7qS7iGUPpoInDN6YIxjckzmg/7Lh3dzmsk7nkGD6Q6cktIZXuxwZ85rCVAWKu7q4vanDyOzzxPaOg/YkynApehjYL8Q96kMUxKkvYxAMEsvd0ho5LrT8GELKmsVGMEy+3o2SGh1JZzyo9EUveziWFwZAcCjr7miUZ62OQzrqBGRQewWY+aetNqt77thgNeSp1uDXOrELHnG68S2SlkQ4IedfPOSedA4ovgYLSMiWcGYZ9r8cvF5QAMWGXjswURm/sL06LYpNDX2gqHG4cOWe7oybkIz09o84NJ61+eYKna4OhjHADg6DdtEc78M06zqodK1eGReC/IteNpPExPQDQXumlG5hF1OUEBdWFONFVzhL6faCEXd9Cc/U/z70Aan9n/QmOZnN54XvF+xq1H+XnyNid5kcjo7uCYjXJ4fPOwUJIwHwolI2FBvOQ9o5tuC3NVHkylGbwntRus4Pew0tXWn9Lt55MNUXP0WAGSG6idiTaZf7tg/v82s4WLSO24tPdvVcHv+CKSGXWRMYPnsU3T2Q7z4NsZQpyi+Dh+MyXCdhG4fYtK52wocKtUy3I+vZppYwxQsWDCKbWeBT1DyggLr6i32d+QJn6RZBuaZ6qdfl4g6r2yG2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(396003)(39860400002)(376002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(5660300002)(52536014)(2906002)(55016003)(83380400001)(38100700002)(82960400001)(122000001)(86362001)(6506007)(7696005)(53546011)(9686003)(33656002)(110136005)(66946007)(64756008)(66446008)(66476007)(66556008)(71200400001)(478600001)(8936002)(41300700001)(76116006)(38070700009)(8676002)(316002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWtqbk9nc0h1V00wZ2ZtNThMSjlVWWVjc2V3S1I0cE1VUHUzS0Q1RUEvNFBP?=
 =?utf-8?B?M2laU3hWMStsY1Y4eGY0cnBSN0pKeDhkTXFEYndNU0NKRmdVWitCY1dTT3oy?=
 =?utf-8?B?d1BSbkFML3pFOW45Skpmb0FSTnJhcC81N2ZNTm5FdUU3NGo1NU9keGQ5bjk1?=
 =?utf-8?B?SXRUdCtNdjUzUFQvUmJ4RVMxaGplK05JWjV6Y2ZxVzVERU02T3g1VUZ4MW84?=
 =?utf-8?B?VEE1NTc4SzhXYmFyTUZJZlhMeHB4eDJ5N0lmMGUvVXVJV2NpNkc2TjBJbThn?=
 =?utf-8?B?SWhJOFFHZmEzVmxQLzl4VXd1OGNuUWltM2ZXdFUxM0d2bzhkR1NmM0JuQWdM?=
 =?utf-8?B?YjVNUUZYdTBrcU9vd2RWdU1yK2ZTOTI1Qm5hTWVCaUJacVZLeFgybjdLTHlC?=
 =?utf-8?B?RHZ1a2JmUkJzVDNhQ2dFb3VhTTJVdVIveTlxckJEU1NLUUVXRzYwL2dSUUhi?=
 =?utf-8?B?WE82VU00Qm0yTjJwSXZxSS9ZUmc5RDhGcEpSQWVYcnE3czQzRzRTeDZIaDNK?=
 =?utf-8?B?clNoRWFydEpWU3J2d2hkOG1LSW80TW9yRWpLbGhpcTVQSmFJNVNHM3ZIa2N3?=
 =?utf-8?B?UkdocHROb3NSTVA3YTcrdERrVWZtMm1ReGFtUStCT3ZONWp5WHMwK28ybFFq?=
 =?utf-8?B?djFwN1FaZ1VLczBxT1VJeGh5S3RxbHhQaFJiTTBIQkQ5ZDR6dlVmUnBSZVZa?=
 =?utf-8?B?bUhEeE0vWExCQXM2alBiSEg1dFoxcEFlYkxHMHJaZjNjQnBQbU5naTFVaUJF?=
 =?utf-8?B?VjdnQThmVGlUdDRmU0NYa1ZmbWFPNGpwQTV6MEY4Wml6TU5DNEIwcGVsYVQv?=
 =?utf-8?B?d0pvb3Q4WEdHU1JzOGdoalVRRjNITDJjbG92WU04Wmp4MDZsc2xuRktTNkI4?=
 =?utf-8?B?b1RYQWJsblgyOVBwL0ZtdURkTFVHUFUrbS9vTzJwczZ0d3Q2TElsc3JuSXNQ?=
 =?utf-8?B?bHYvNjBKWWo5YnQxSUltcjhXTUtvRis5K0hpTklPc2Mza29XYTd6WUlUTWZI?=
 =?utf-8?B?Zzlrd21HcHJCWEh6eGxWVkN4Mi9GbzRISkFvT1daZkhCdjRFZWxSQlcvYUh5?=
 =?utf-8?B?WjRwc3UremFtUzFHR0pLaFFIMnp6NkE5R1k0VnZBSFkxMTlmcGlBUnRkM0lN?=
 =?utf-8?B?RHdBMlB6bUU3TXBid0hzSWErckEzQkcxVm1reVBzbFY5MGFWcUgzdFQ2QjBJ?=
 =?utf-8?B?VElmczd4SlNYbFVBQ29FdW1yNUZnZERqcW0vZ2UyNG0ydm1EY2djdjl6dGxG?=
 =?utf-8?B?VXp5aHo5UXRmRG55RTllUGdxN05QQXFJZHZEMElReGpnbzhMSEU1UkI0VWYz?=
 =?utf-8?B?UmV4dDRiTzFxdEtUVDRwNFdTSHBacXlJQW1HWk9HaFFhYVAyUW1WQjMwUUR2?=
 =?utf-8?B?cDdYdy91eEFjRExmVi9iMHdQVlUyQkQ3NjlTQ3RKTkJjZTRxV25HM1czK0Jq?=
 =?utf-8?B?MmhUT0UyM0VadXpWZTBVbHFtajhOQ0VXRklvanR1VnpORHhEYkNyUUx2QXRF?=
 =?utf-8?B?OUZ2UDc3QlhraXR4Mkh5aTZ4U09GalRuNnRCT241Nk56Y2Fvc1czNUFDVnUr?=
 =?utf-8?B?YXlaQXRkZFptNjNOc2VHMXdmTjlIenlkZTdObzYrZ2Q5VlA2ci9zcm00UzVm?=
 =?utf-8?B?R0NaZ1M1YUdxWm1rbjEvOFJrazRiMTJ4VytLRDhVVDNtRXl1ZXEvWml0ek9Z?=
 =?utf-8?B?a2ZuUXplQWduR2lkNWx1NzRJVUxkV1FvbzBycURwNm9ONXV4WHlGQU1YeENa?=
 =?utf-8?B?Q2E1N1liWFRwUlZ0TkFzaHlkUm03NVJ1UGgzcWc0eFJjOXEyOE1waXE4L0JE?=
 =?utf-8?B?MmNQRGxtbWN6RDJIUmxZOUhQbkg4N2F1YTZoaXAxdVN2dk04ZXJEK2o0Qk5V?=
 =?utf-8?B?ejllVGhBWjBWUEdsUk16ZU1oa2RkTnRsenBHWXY4elYrYlc4cHNlUVlZajRS?=
 =?utf-8?B?UjRVYWRpQ0pXeG9XKzA4dEJreXVFVll4UTJWZCt1SjFzWkJ0UnN4dENNK0N4?=
 =?utf-8?B?N3N2RTR6MFBDZXhEZWNDcVBGa1k0anhPOW8zc0g3WEtUMkJ6UkwwZ3hBRlRW?=
 =?utf-8?B?WnlpMmh4YXlyMkJma2FzYlRneC9oa2VHMjFYNm0xZWdEQnBia2o3WFlZcW9E?=
 =?utf-8?B?bmdxRHBpM1RxWWtSL0dEY3pxZ3FzZ1ppQlJrUmhNTUlHQmNpWEIybHhNdzR4?=
 =?utf-8?Q?UgRy19op6T0MiPbbm7eCw4EnilYiWIJ5QluZ+t0bTyBH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 455df378-934a-493f-90f9-08dc27287953
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 15:29:56.7060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pZncuTjsKihnd55LOwWgTJcXX6h84R4pifTM6ZDrH18sL94gNIYr3AeEzJwH4+5Xm5X5V86VmXb2nU0MTyXzVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6719
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBKYW51YXJ5IDMwLCAy
MDI0IDQ6NDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3Vu
aQ0KPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgNC80
XSBkcm0vaTkxNS9hbHBtOiBBbHBtIGF1eCB3YWtlIGNvbmZpZ3VyYXRpb24gZm9yIGxubA0KPiAN
Cj4gTHVuYXJsYWtlIGhhcyBzb21lIGNvbmZpZ3VyYXRpb25zIGluIEFMUE1fQ1RMIHJlZ2lzdGVy
IGZvciBsZWdhY3kgQUxQTSBhcw0KPiB3ZWxsLiBXcml0ZSB0aGVzZS4NCj4gDQo+IEJzcGVjOiA3
MTQ3Nw0KPiANCj4gdjI6IG1vdmUgdmVyc2lvbiBjaGVjayB0byBsbmxfYWxwbV9jb25maWd1cmUN
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiAtLS0NClJldmlld2VkLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5
QGludGVsLmNvbT4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCg0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDE3ICsrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGluZGV4IDdhZWRkYTBjYTJkMi4uNzJjYWRhZDA5ZGI1IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE1NTQsNiArMTU1NCwyMSBAQCBz
dGF0aWMgdm9pZCB3bV9vcHRpbWl6YXRpb25fd2Eoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCwNCj4gIAkJCSAgICAgd2FfMTYwMTM4MzU0NjhfYml0X2dldChpbnRlbF9kcCksIDApOyAgfQ0K
PiANCj4gK3N0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKSB7DQo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9f
aTkxNShpbnRlbF9kcCk7DQo+ICsJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gaW50
ZWxfZHAtPnBzci50cmFuc2NvZGVyOw0KPiArCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRl
bF9kcC0+cHNyOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDIwKQ0KPiAr
CQlyZXR1cm47DQo+ICsNCj4gKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQUxQTV9DVEwoY3B1
X3RyYW5zY29kZXIpLA0KPiArCQkgICAgICAgQUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX0VO
QUJMRSB8DQo+ICsJCSAgICAgICBBTFBNX0NUTF9BTFBNX0VOVFJZX0NIRUNLKHBzci0NCj4gPmFs
cG1fcGFyYW1ldGVycy5jaGVja19lbnRyeV9saW5lcykgfA0KPiArDQo+ICtBTFBNX0NUTF9FWFRF
TkRFRF9GQVNUX1dBS0VfVElNRShwc3ItDQo+ID5hbHBtX3BhcmFtZXRlcnMuZmFzdF93YWtlX2xp
bmVzKSkNCj4gKzsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9z
b3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCQkgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+IEBAIC0xNjE5LDYgKzE2MzQsOCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50ZWxfZHANCj4g
KmludGVsX2RwLA0KPiAgCQkJICAgICBpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJs
ZWQgPw0KPiAgCQkJICAgICBJR05PUkVfUFNSMl9IV19UUkFDS0lORyA6IDApOw0KPiANCj4gKwls
bmxfYWxwbV9jb25maWd1cmUoaW50ZWxfZHApOw0KPiArDQo+ICAJLyoNCj4gIAkgKiBXYV8xNjAx
MzgzNTQ2OA0KPiAgCSAqIFdhXzE0MDE1NjQ4MDA2DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
