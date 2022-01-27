Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AE949D999
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 05:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C05D10E503;
	Thu, 27 Jan 2022 04:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFDAD10E4D8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 04:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643257610; x=1674793610;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=W2YS7qpSSYXFREifaFQOyGA3nlSM24B4DZS2t3LSIg0=;
 b=E2/oqAUhuPGCkt91w5ooa5NYswpflNWA5xHiJiUZwJym/kQFjNvlGnc5
 Xd3W9s0GwWSBSfvvA8qpUAyK5VXSUKkDzVn/0vKoIHFkz/uT200Qsv8Ae
 2Sxb6mflETE/HsSdQWV9XC/330vJxTmHQWiCpPaEwpVZ6I6XFhm8XxUn1
 x07012NdI5Q1BXfqHqlHK2cVrtv9JMqLvmjg9aH+29X37UwNJm4nL2+jt
 5PLR6xFVyloR6UklyBEHNjoo399JHbYMalfdjYwc8grDvcKogyC9Xqjo9
 h5Ag9elg0/J5AjcmoZ6MFi1o/y8iJq/zDz4FxbCrpE/kmygi62ebe6Biv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="227417173"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="227417173"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 20:26:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="674588101"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jan 2022 20:26:49 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 26 Jan 2022 20:26:49 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 26 Jan 2022 20:26:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 26 Jan 2022 20:26:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jEaTYLfxKvGrmm6HVA97wpaWKzbsqEnCWZvTemz0suzxOYY+bInOUg1ZR8lDQhMAU/8UbYXCPMOJvyfiPSh8h1vXPXcUjL3oo7WWoWqkaxRjLEd0QOM7w6ZHpnMW+PL9UZtQxfAgQTCcCjXKhQbWT5QRjiX20jMTHL6cpzlO7woH71y+1OWznZ0REgVpaCkghWSjl0XbASxTXVoBM/Y57FmOWSp1m42OBtvSqtpKBa69td8U+qbn0fOlGDvzp47FzakzrTrMObOaqj+gNuC4om3FDOJgwRtgRSLNcG6GhpZcOrI0pj2ovF4GukuNhp6EE7ROmxYqVJVcLSVTeHNOuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W2YS7qpSSYXFREifaFQOyGA3nlSM24B4DZS2t3LSIg0=;
 b=lcYUJCKlfSnxDPLPrO/67g1NlKbyhQ+/qxiXB+lUMNz/VQj/IOhZrbad7f/+Llom6OAen0KAGFaeNfMUBBy2nstn9wyt6Hr7581l5IVK6KiOc5FCsL8FmxNNKjiU2e3315fmjVmAIOeb6jp+BMCzRwQIPJvKB7f4rIpJzj6St24p5PibXTtmwUzBH3mFtdxCnqxiyByYE/2rTinCoczvwgm41J9TaMqRwcGep/rkLkyyYh6ZMrdlPscXnKrG3/9WovsKooaL6BTLDBNRXbOssjAZtGoleuqzkzKJm4w1y2/YyJDxn0adqnyd9GfoBzSNBxQR1lSg9EiN7ecV7/OAeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3786.namprd11.prod.outlook.com (2603:10b6:5:142::33)
 by BN6PR11MB1457.namprd11.prod.outlook.com (2603:10b6:405:8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Thu, 27 Jan
 2022 04:26:44 +0000
Received: from DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::1456:4aad:3dcc:79fe]) by DM6PR11MB3786.namprd11.prod.outlook.com
 ([fe80::1456:4aad:3dcc:79fe%4]) with mapi id 15.20.4930.015; Thu, 27 Jan 2022
 04:26:44 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v5 06/10] drm/i915/guc: Update GuC's log-buffer-state
 access for error capture.
Thread-Index: AQHYEqH5/+h2jkBMckGW0JGoCGdjO6x2R3qA
Date: Thu, 27 Jan 2022 04:26:43 +0000
Message-ID: <7434f58f9b95604c096e3c2b2040ab887638d6aa.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-7-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220126104822.3653079-7-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45001ac9-67c0-4747-a842-08d9e14d395e
x-ms-traffictypediagnostic: BN6PR11MB1457:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB1457355714F16C47A0FAAE8F8A219@BN6PR11MB1457.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zrloxF5jj1wNSjlicCY11Pjc3F1J8Xcbz6YPsj4OZ8ltI38ktX76p4voxmIaq3EhQ2d35MOwqw2o5POFSTpsoNRr+41VslJnl3c1WffWSW2642HVfmG//ZOmd4x7aBZz554/VFdMDqXv7RcGlfEVGRFdCCF2WssjwX7TDb7LmUHK/kugHwozGLP8aWWIweOKtpkc3pAetutG7alQ0NwHLZ2e16v4OkXu8y9+1OCVdWnAfpw4gsV3wslgIadnsmsoHDR+x5AyxDTmiW5/xwbVyMsvp9niZHkbmvbql+yzuwImz2gdkAYOOeXBz9b6wzHyDI8DZAX7E2ly+A5Bjs4pFOvCJJghdqpEnELDiUq6qCXH1QS0YQPpS3Ju3wfsqQbF+i8Wu2F1PRDi7eT2qR2Fg/75yy8Caj/6BeQVbVH/hhcwikOVkzJR5gLxUYJsW3KEZzM4//6KAATWqpurz6rla1j/h6Fq9TnNZDUPlLngoRLff0CcnkHAlskI3yiTGx5fy6Zwz5hpViC7IVEGzJo1l8QDIOBtUQUOvVYD4eARkY+lzhug1epXU9OxiIh/s8S9DEe4XRWSedvIgbyNAMlU5t0Gr5MhpTLjsrLh6jWjcYzLf8OfINWDrMEfPXMGSg3W+kbYb/mpeiGSPW51pB6Ht44YQDGRf7NHFnjSsA1uSBuGuqeW3K9ekuZvBJTra0t84tcfNCTaadsJrkZilfWhWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3786.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8936002)(82960400001)(508600001)(6486002)(8676002)(4326008)(186003)(6512007)(316002)(26005)(64756008)(15650500001)(2616005)(107886003)(91956017)(66446008)(66476007)(66556008)(76116006)(66946007)(122000001)(36756003)(2906002)(71200400001)(83380400001)(38070700005)(86362001)(5660300002)(38100700002)(6506007)(6916009)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d3llY2pjQnhwb3Z6OWxTdE43YXNQSFBZVkluN2lidW5xcmRXTS9lYTRTOWtQ?=
 =?utf-8?B?WVVMM01Tc1FyYm1QVkRYSXRPTGs2V0hqU2F6ZVNMZ0lITkdPZWdOMUUrQjVa?=
 =?utf-8?B?ZmVOVVhWOERRZDh1aXNVUmJGZk5HcE1oQ0Nsb0hKNHAzTHBFMjkwc2N3ZTJC?=
 =?utf-8?B?MjBsdzlCbEhNZlY0clJjYTBHanRSbGY0anNocmx1TEIzb2V1TVg0NlB5OWwv?=
 =?utf-8?B?Z25oMXhDdjdqUDZEajB3SmpYWlVOQ2diaEl1VkRQR3h6UktSR1NidlZnNzRY?=
 =?utf-8?B?TlMyVGRud3l5LzgyMkUrSDJnVEZvOEpGbVo0TTJpaWo2enNiUGZGaUhwZEow?=
 =?utf-8?B?eFV4QUFpN2U5RzA1L0FyZG9GWGdLdmJOclpraEVnUzJ4dThPdWpEQ2E1dEpk?=
 =?utf-8?B?Q3owRURUZlErTmlRdERZR2V2MWVBL245a3AzeWNYTGgrSWZaZ1cwM0FLcEh1?=
 =?utf-8?B?cFY2T01QM3l2b0hhamJiTFdwRkQ0NElRR3dhcHRheTl0VEpCSE5FT0hBazRN?=
 =?utf-8?B?eDR5a1dQVWFMZW1QQi8vTnZjejdrT0RpV3lteGlCOWRzNlVFMFBiYUtsTmNB?=
 =?utf-8?B?VmNRb1I4VEdidXczZlN4cmEwdDVFR05YN1JJbnhZaXZSOHoxUXV3eDFjREJX?=
 =?utf-8?B?eTk3U1pjVzExd3h5WndHc3ZVL3dBQlJHOGlwWkg5aUpxTkNhYXhkOGdSTWFv?=
 =?utf-8?B?YWxYSTN4b1pFNlJqakRRTlFReDNWbnZyQ0FlRmlIWWo3N3A4elhtakw1eGg5?=
 =?utf-8?B?N2R3TDVmM3pRWk9CQ0R4MnRBWlNSQTBpdmJocEpjY0crNStBYis1bTBaTFI2?=
 =?utf-8?B?OUFKNFl3WlNncmUwakYwYVkvbDdOOUdlVHE1dnQ5UUpwY1NLVlVQblJkVnQ5?=
 =?utf-8?B?NHJxeXlzNUM5Y3RBWWZab05MSG95SVMwSHJ2cWZ2bkVrbnRvN0pUalhvSStM?=
 =?utf-8?B?LzVObGFyQ3RXbTJVNERRdGt5N1V4cGNJRTZOYktRT0pGMHkvSkhoMkwwRDRt?=
 =?utf-8?B?eGlaMG51bjR2Z0xsVEtja1prUnZ2YlJ0aWJKeWU1RituNzZnR2NJTmtqVmVa?=
 =?utf-8?B?MHRPc1hydG42OHpwdTlIY05Nckh4bjNtdUFxcHl2NzBQMCtKQ3JRMEpPb1ZS?=
 =?utf-8?B?VVRaSHVNZWIrWEFEdDhtUHhSZXRIRVJmNU9KL2JyT2Q3ZnFOYlN6Umh5bTdT?=
 =?utf-8?B?WXJQSko1dkorZjBaQ0sreGpsUVd0cjRub0NQVVRmZkszZ0NLaEl1M0ljSTlk?=
 =?utf-8?B?Q011eXluaUNmZURockV6alIrdkhYc0ZtSGJIV0NydTZWc3NUcGdySDlFV2V0?=
 =?utf-8?B?OXhPT1JMbGRQYTV2RGJpSXlKYlFlWTgzdzQ5a0pFeGVKdmFXYTdoS3ZRVFNx?=
 =?utf-8?B?VnRFMlRRK0RlQWExV09YOGluRWdJa2pLekZjc1hWRi84Z3R2NlNKcEhuc3RM?=
 =?utf-8?B?eVNrS013RHZkbkFmTjBHN1dEeExPSVJoaDN5WEZIS1BQYjlJdU8yV2tCNjdK?=
 =?utf-8?B?VEVGWVBicHNnOVNHM2RvOEJJcjZnSVdSSk51T3R5NmlCRG5pdjFibENiNy9o?=
 =?utf-8?B?RlkxdkhEODNra1hjcWF4WW9TSXAwSnJPa3I3ME9lMEozYysrNldYWHplZk9J?=
 =?utf-8?B?NkpDYURsaWhyZGJSa3R0czVUUWVVRjlFRzQyTFJKbE9ibktFRGhkeWVWOXBH?=
 =?utf-8?B?Mk43UzJmam1CYm5kUy9TRlZ6cFg4eXBEdEFiR2dHQ2IrWVQzcmxuTHJybTRh?=
 =?utf-8?B?TU5JVytEQ3dWc1VsVVlXT1pIMnB6N25XbTUvODR1cXVWZWp1V2RUQ3cyUS9k?=
 =?utf-8?B?Vy8vWGxlYkZaeW5MOEhLcFdnSEFlNWRzT09Ld1VXYzZSUXVPdkRGRW5LOVNR?=
 =?utf-8?B?WXZkamt1ZEtwQjFYNE5nWi9NaGZHbjN1Q1Rzbm5ZYmNxczRweTcydi9UVE42?=
 =?utf-8?B?cGZrTm5qZXFoVjA4a3RvMWlSdUdLTThzVS9ON0dNMGxXYzhTN3FETVBOdDlV?=
 =?utf-8?B?T2orVUY3NGVtU2E0THZzOER1eFAzVmxoWU9QQnhGV29BRml2cDFpRklaK2Jy?=
 =?utf-8?B?S2tUdm00NGdxbjBVRXhHNUNCcXVtTkI5TUtKbHp3aTlxZEpXT1R0bkhCakxR?=
 =?utf-8?B?bWF5S3BUWndueVdQUFRKUi9TWitvcEQrLzduNitrSG84NXFYbVN1SXNZYVhu?=
 =?utf-8?B?VFdsRmZEcXVEdkdhV2UreWFsMGRUYjBkamhNZ0RpZXNyVEZlRmFNRmd0dWUv?=
 =?utf-8?B?WEtFNTdPcHlNa0ZqUXFra0FOcW5XQ1BsVmRYS1BDdTVlYlE5S1h6NGZtTWRz?=
 =?utf-8?B?VXV6ZkVRVDZhSjhLTzN3a054YVhHU2dqVE1ha3BMSlJQZ013ZHlldz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DF8E568913A5384EAD458EEA2D2F5113@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3786.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45001ac9-67c0-4747-a842-08d9e14d395e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2022 04:26:43.9778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /PIeXh2BqI29snw8RSnjSLLnKNTlsAhrWZwHD3aeUitCTQnJ4sXSzDPmgTmSNpemR4aF5Grj/Ton7YWCuUdSwKhpNQqIX7b06eL60NVXz/cxu4jbF6E7fvq5heOCb/PP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1457
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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

QXMgcGVyIHRoZSByZXYgNSBDSSByZXN1bHRzIGJldHdlZW4gdGhpcyBwYXRjaCBhbmQgcGF0Y2g3
LCBpIGhhdmUgaW50cm9kdWNlZCBhIGxvY2tkZXAgc3BsYXQgYnVnLCBpIHNoYWxsIGZpeCB0aGF0
IGluDQp0aGUgbmV4dCByZXYuDQoNCi4uLmFsYW4NCg0KT24gV2VkLCAyMDIyLTAxLTI2IGF0IDAy
OjQ4IC0wODAwLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gR3VDIGxvZyBidWZmZXIgcmVnaW9ucyBm
b3IgZGVidWctbG9nLWV2ZW50cywgY3Jhc2gtZHVtcHMgYW5kDQo+IGVycm9yLXN0YXRlLWNhcHR1
cmUgYXJlIGFsbCBhIHNpbmdsZSBibyBhbGxvY2F0aW9uIHRoYXQgaW5jbHVkZXMNCj4gdGhlIGd1
Y19sb2dfYnVmZmVyX3N0YXRlIHN0cnVjdHVyZXMuDQo+IA0KPiBTaW5jZSB0aGUgZXJyb3ItY2Fw
dHVyZSByZWdpb24gaXMgYWNjZXNzZWQgd2l0aCBoaWdoIHByaW9yaXR5IGF0IG5vbi0NCj4gZGV0
ZXJtaW5pc3RpYyB0aW1lcyAoYXMgcGFydCBvZiBncHUgY29yZWR1bXApIHdoaWxlIHRoZSBkZWJ1
Zy1sb2ctZXZlbnQNCj4gcmVnaW9uIGlzIHBvcHVsYXRlZCBhbmQgYWNjZXNzZWQgd2l0aCBkaWZm
ZXJlbnQgcHJpb3JpdGllcywgdGltaW5ncyBhbmQNCj4gY29uc3VtZXJzLCBsZXQncyBzcGxpdCBv
dXQgc2VwYXJhdGUgbG9ja3MgZm9yIGJ1ZmZlci1zdGF0ZSBhY2Nlc3Nlcw0KPiBvZiBlYWNoIHJl
Z2lvbi4NCj4gDQo+IEFsc28sIGVuc3VyZSBhIGdsb2JhbCBtYXBwaW5nIGlzIG1hZGUgdXAgZnJv
bnQgZm9yIHRoZSBlbnRpcmUgYm8NCj4gdGhyb3VnaG91dCBHdUMgb3BlcmF0aW9uIHNvIHRoYXQg
ZHluYW1pYyBtYXBwaW5nIGFuZCB1bm1hcHBpbmcgaXNuJ3QNCj4gcmVxdWlyZWQgZm9yIGVycm9y
IGNhcHR1cmUgbG9nIGFjY2VzcyBpZiByZWxheS1sb2dnaW5nIGlzbid0IHJ1bm5pbmcuDQo+IA0K
PiBBZGRpdGlvbmFsbHksIHdoaWxlIGhlcmUsIG1ha2Ugc29tZSByZWFkaWJpbGl0eSBpbXByb3Zl
bWVudHM6DQo+IDEuIGNoYW5nZSBwcmV2aW91cyBmdW5jdGlvbiBuYW1lcyB3aXRoICJjYXB0dXJl
X2xvZ3MiIHRvDQo+ICAgICJjb3B5X2RlYnVnX2xvZ3MiIHRvIGhlbHAgbWFrZSB0aGUgZGlzdGlu
Y3Rpb24gY2xlYXJlci4NCj4gMi4gVXBkYXRlIHRoZSBndWMgbG9nIHJlZ2lvbiBtYXBwaW5nIGNv
bW1lbnRzIHRvIG9yZGVyIHRoZW0NCj4gICAgYWNjb3JkaW5nIHRvIHRoZSBlbnVtIGRlZmluaXRp
b24gYXMgcGVyIHRoZSBHdUMgaW50ZXJmYWNlLg0KPiANCg==
