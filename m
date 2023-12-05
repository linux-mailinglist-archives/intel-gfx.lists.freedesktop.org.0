Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D708062E7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Dec 2023 00:24:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 094C810E642;
	Tue,  5 Dec 2023 23:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40BF810E642
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 23:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701818637; x=1733354637;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+1P29P0kMp+eMOIoILRE+QfKo20xgcKBQxYeHyg4ZR8=;
 b=ihCyJY9BWl0ASIaarhM89NsC8HOm7imgSjtAKaST4ydyocru2whPIJsu
 9OinqQ93A73y9aFpBMpQMi9KMwucXfnJYDdKmIcXT5yCIR77epQs9abCQ
 dfFMwsW5QNHynjMguKWMjAxbIqYVvNzb6mdc1/gvHeI8bHjz9edvrdg/H
 PghqXDYmWAPpQtZ7X3/T16oJpVwmlkhbt3ba4PgOLfgQCbHRQgKZfZCyo
 ACPYj+r2bXSI4xgsUsFsv3aqEyDQF5zncoSh28mT3yejKuLjw9OWTySDh
 pQHbS13Qhvf62y+efpxs852Jbo4hbgS3QdNskYLW7vGXuozP1kL/x4Nt2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1033155"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; 
   d="scan'208";a="1033155"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 15:23:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="841636213"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="841636213"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 15:23:55 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 15:23:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 15:23:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 15:23:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 5 Dec 2023 15:23:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JWnrT49EcGyAcdv7yOzGRzbQBmoirGTtjxDF2YgKqRcVrbXz3EfKXWPxMfrB8HW3NDLJxWNsomuBjmY1RWoMTVn6RBIqHsPxV5tYPiQxcVfX2mNog2wcML71VDHdU+7BzlSD+KkmvaeDVrSzlC6s9no8pd3N/7L36qdWp8nYlXFCxXRgc4nWXHwQjfv0cAt+DV0HqSfppzHh89oNASSKrB82Wik6+xHy44NhAa3gl35V626FxEJy73ikLpcFp6GdvxF0VVoReZTuE/rEw50ytEizRni2kZfC3rBp7uHzW+41Ddwewu0r12n8VuYobX/bGWXJkXZoNctg7YvCh2w84Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+1P29P0kMp+eMOIoILRE+QfKo20xgcKBQxYeHyg4ZR8=;
 b=R1yr5qJfI5SEeRP+l9RqJsxqIPjdLM2M+fTSkv6qF4qki/Fk0ef41/2fhzqGiaJNGCxJ/k9LRs9WIMebOz/T6erAy3ltQ4w/fl7172rpYErdnG6VNnSWtyTFiG+TaMvx6HspSa6WWXKbfHFv3i9+iVbL5Fi3uKoP60pqdNpSefbXeJ+BNs33Qqiu+/bwTgNBXy33CUZ3AoeN82X6JQKzhqxvkjMVFEt/MxeEkAfPB0ByGlEg6n1R4fc18VAFkoy73iu23X1kFQecOY4NoFtL5sGo73MxsYjAHbE1By/I26TE+0IkKvSUK+KIO4EzVqKMzNGGc15IPj9q/GcD/utCIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 CY8PR11MB6889.namprd11.prod.outlook.com (2603:10b6:930:5e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.34; Tue, 5 Dec 2023 23:23:53 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 23:23:52 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: Drop irqsave/restore for
 flip_done_handler()
Thread-Index: AQHZ8iC7Pb6x2mhIF0K16TN2HVVJdrCbv8Sg
Date: Tue, 5 Dec 2023 23:23:52 +0000
Message-ID: <DS0PR11MB8740ECC56285C4F187B40187BA85A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20230928152450.30109-1-ville.syrjala@linux.intel.com>
 <20230928152450.30109-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230928152450.30109-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|CY8PR11MB6889:EE_
x-ms-office365-filtering-correlation-id: a6ca84d7-59dc-4aa6-9284-08dbf5e93e6f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: czlnRDYmSB/lQG98mcicL4EDzkdlOC3GWRbEIZ9cQXGckoSH3LB7B/4WJAKUONv1G9rO52JeQbs0NzEVy7rcT+eubNp96fltW3h4f1uQcCCnx4Sm+UPwYpoIkPj7aAEj15mDlRU8xEiOLPAbSrwsu0bVKFGEeEQG/Uj5LPNo239esLJgkJDzDQmy9TDKwbQ4Qdomm5uR4xaOXVTau8/AnlnqpecVTVQVXSsBPD1PsVia/XOSXMMs3V5AFA4HOt0DVcL/USMitrs9M5xkJPIO9Vu0Cppazw8exs1kFWGdpv2WiseKRpPZ71JnvCh1l5rxMrG8q9G14GaWD5Q3eNjSbGy2/O8F1qNC7ZmrdhtnZhVXES/DUiylk9YuDJEMFniqt008hfiM+9rwGcoWzDsuOzgppi5NwvB7rHXocSyeSFz4dYewLxrytDq/GaKBmLmJ3U/tL2ZOh2m8Lt5LQWxMsrMYMmhsVH0G3W66qz95jxJxnECOMCzDaw7y3b1jrpCZKHVzjjRgSzGMLjTZEOv1OfvvepxVQh5gTcEP7mL3lALsZZVcpoOe9A5+yGYEJ7zDQmRV5J2w3Ji75REIMIc/kxWH2pk8ao3+pWzdTRMT6yN6pRH4B01Umty11HheZHlM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(2906002)(71200400001)(66946007)(478600001)(8936002)(8676002)(52536014)(86362001)(66556008)(110136005)(66446008)(76116006)(66476007)(64756008)(5660300002)(55016003)(82960400001)(66574015)(83380400001)(33656002)(122000001)(41300700001)(38100700002)(38070700009)(9686003)(316002)(53546011)(6506007)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTRnbTJmTnNJUythOEdZeFRVY2lGdGRRajVERmY5eTlwaEZuRlVHZzBSczNU?=
 =?utf-8?B?RnB4VWxtSS9qVW9nbVA1YU5NR3FBM1RRc240Q0Q0bFRTQ2tXcmZrZm9PN3Va?=
 =?utf-8?B?OHVZWW5QUWJWRnA5cFlVbmJSUko0ZkJBb1FXa0tvcGpsQTlEUFpKNDFYcnlY?=
 =?utf-8?B?TXc4NWxwVlpTb21rNytkVDNZNnQrczRoQUIxYmdMY0d5YmpVQ255Ti92OHBn?=
 =?utf-8?B?UTN1cGJ2TGlBUy92T3BPVXA1THVvVmJ1ZE01QmtHZ3VRcnVSckMvNnREWkUy?=
 =?utf-8?B?Y0VKV0tBbVN0YldTR1RXSksycnl3UEo1RGluTStnTFJjLzVUV0FaeVFHandI?=
 =?utf-8?B?SjF0enYxaFFaekJTaVlVMTAzMStSeTZHbCs0OWp3OUhIZnpFeVFKRzljakpi?=
 =?utf-8?B?c0g1eFhxZktUNnVHM0xiQUtMMEFDMkx2WXkwMjlFdzl0ZWVVWWduYkR6Z1Nu?=
 =?utf-8?B?RjczZ1FmVlp0Qzd5MEQ5OGdEb2lFWHU3djhPVU9ldGVibENlT1M2ei8xc2lV?=
 =?utf-8?B?NGhpM1BEYUNnTU1YTlUvWU9jRXU1c0EzNUhtOWsrWmt2Z2pobmdSVnJOS2N1?=
 =?utf-8?B?NGJrR1VGbnB3aTlyQjFBRFFMeXpIYmlNejFwc3g4Zm9rOHpvWU5TVDZzZXVO?=
 =?utf-8?B?ZXc4YmJ2LzNUeXFjazRLRTBlK2NFUmF2NmVBU2lMeVJBbEQrVmFxcUJyU1cr?=
 =?utf-8?B?akhiTTQwczY0aE92TU51K25vdzduYkxXd3lrWnBBeW9oamQ4MzdwMVlxUm5Q?=
 =?utf-8?B?SHQwUG8yU0wxOXZrSjhEQjFSd2tUKzVYeVhBTlVJSHVKT0JCYVRoanpaSmVN?=
 =?utf-8?B?TnI1OTM4R0tFK09rQmFTdW5pRjdLV3NSSi84dTJlZGZRTngyaXNqTEg4bENo?=
 =?utf-8?B?NnAzbjdGSG56S2ZOZ2RqK0NpWC9BMGpvcnlXekxkZVpIVHNIQzJ1NjNRUStR?=
 =?utf-8?B?WEdTS3gyUnpNekNvb3lBaGR5akRvKzVRNmY0VlRyTkluMlB3YXJoUjVOR0hJ?=
 =?utf-8?B?VEVzSEludldnSVdtbGQxdVNMalB4L0NHQlpRVWE4cUJ1SVBGMGdIMW9VTjM4?=
 =?utf-8?B?cktYNmtETjRBN3Q0ZnAzRGRPNG1mM3U4NEdVMGk2U3dGQ3gwaWUwSWdVQ2xH?=
 =?utf-8?B?VlR1Z2hob21ndkdlaFpuY0grOHJhSkVucGV6WVAwUWVFeUlIaElPMi9ybXBW?=
 =?utf-8?B?WFdYMXp3dVRER2pwY1htOEV6d2hWM0VwYVZaelFYSFIxZTFPOE1aMmtzenFY?=
 =?utf-8?B?WERWTkkxN2FTM21GLytrcVh4OVdDbkx1a3JWREsyUHFNQ1FiNWpBVkN0T1hZ?=
 =?utf-8?B?M2FJeXNlcmtXVnI0WWdweDdTQjc2T0QzU0lrUjJ0Y2xORy8xUEtXOXd0MDFx?=
 =?utf-8?B?ZTRsUWI4NTJZMWZ3STMrNVBQWElNYThPTnE3ckJFMmZtb2FQR0c4WlBzUXFE?=
 =?utf-8?B?NGY2Q2pDdStqWHpmVjlhQmxxZTRiV0NkWHZla1dDbzg4Y0VTWElwN0NicFFK?=
 =?utf-8?B?QmhlK25lRVRJVjZKRFMvbkp0c1grelI1T1lreE1HdnBxWllLN3oyVERqaVhZ?=
 =?utf-8?B?Mm9peFFLS0RGMEtwVFpaa3FUNFRHamdIemxLWFlNbmdTby9mdENJVXFreUsz?=
 =?utf-8?B?M3ptTkNSSXRxMW5rTnN2SjNrTmhoNEJVQXByZE1JNnhhWm96ZjFnQW11bEl5?=
 =?utf-8?B?SG81OFBVZmx3MlI0b3EvZ2x6Mks2bzdNTXo2VEN3MHZxbERKUkk3Nm40Wm1o?=
 =?utf-8?B?NEhiL01rbnF1MmswSEVLSjBYNkdSUm4xcGN3NTltdHk3cjhOa0pTcVhsSVJU?=
 =?utf-8?B?U2ZUTmtkSjJ3c29kMEpjemtzZ3dJWXh0UGQ0UjYrVUZ3Rmp4MEl1LzAxaG04?=
 =?utf-8?B?cERtaFVzd0hrNmVLQWFTMzFXVFNNVmc3TUV4WURLZmVJYzBaZUdxdWZ5UGk0?=
 =?utf-8?B?bldEMVFnOG5FRkhseXkwZEhxVWVMWUlRRFJLRnZlbGJsTFRpcjk4UUhla3Vt?=
 =?utf-8?B?UmN3WVBITW1nQU1sZ3dYS1pza21zTHNPQ1ZOOUR4cG5QYm1LWmswUlZqQ2lQ?=
 =?utf-8?B?QlROcDNGTFEvay9WL2dCR3N4NkRSOGFnbmw5U3dtN2tTZzVUM3BSMWRCMEdl?=
 =?utf-8?B?SnVQdXkrVnNVVzcxbVM3N200aU4vR0NJMXBvWDE5QTI2UFlITCsxWG92cGU5?=
 =?utf-8?Q?q7VxHUWx7CujgcjLoKaY5FrAzxCSizFEQPJRtqhm4DDr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6ca84d7-59dc-4aa6-9284-08dbf5e93e6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 23:23:52.6555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yjRRJ3f8puPV+6HrR2CJMgAgMNb/s7K5yfRyeRWgYklA3vvfw1YX2sDIuUZaUNy77rCK8MccBj+w3/7XSe/aWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6889
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Drop irqsave/restore for
 flip_done_handler()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBTZXB0ZW1iZXIgMjgsIDIwMjMgODo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMi8yXSBkcm0vaTkxNTogRHJvcCBpcnFzYXZlL3Jlc3RvcmUgZm9yDQo+IGZs
aXBfZG9uZV9oYW5kbGVyKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTaW5jZSBmbGlwX2RvbmVfaGFuZGxlcigpIGlz
IGFsd2F5cyBjYWxsZWQgZnJvbSB0aGUgaXJxIGhhbmRsZXIgd2UgY2FuIHNraXAgdGhlDQo+IGly
cXNhdmUvcmVzdG9yZSBkYW5jZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQpSZXZpZXdlZC1ieTogQXJ1biBSIE11
cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFy
dW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jIHwgNiArKy0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IGlu
ZGV4IGQzZGY2MTVmMGU0OC4uOTVlMWJmNWQ4NzA3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+IEBAIC0zNDAsMTcgKzM0
MCwxNSBAQCBzdGF0aWMgdm9pZCBmbGlwX2RvbmVfaGFuZGxlcihzdHJ1Y3QNCj4gZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwNCj4gIAkJCSAgICAgIGVudW0gcGlwZSBwaXBlKQ0KPiAgew0KPiAgCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gaW50ZWxfY3J0Y19mb3JfcGlwZShpOTE1LCBwaXBlKTsN
Cj4gLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gJmk5MTUtPmRybTsNCj4gLQl1bnNpZ25lZCBs
b25nIGlycWZsYWdzOw0KPiANCj4gLQlzcGluX2xvY2tfaXJxc2F2ZSgmZGV2LT5ldmVudF9sb2Nr
LCBpcnFmbGFncyk7DQo+ICsJc3Bpbl9sb2NrKCZpOTE1LT5kcm0uZXZlbnRfbG9jayk7DQo+IA0K
PiAgCWlmIChjcnRjLT5mbGlwX2RvbmVfZXZlbnQpIHsNCj4gIAkJZHJtX2NydGNfc2VuZF92Ymxh
bmtfZXZlbnQoJmNydGMtPmJhc2UsIGNydGMtDQo+ID5mbGlwX2RvbmVfZXZlbnQpOw0KPiAgCQlj
cnRjLT5mbGlwX2RvbmVfZXZlbnQgPSBOVUxMOw0KPiAgCX0NCj4gDQo+IC0Jc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSgmZGV2LT5ldmVudF9sb2NrLCBpcnFmbGFncyk7DQo+ICsJc3Bpbl91bmxvY2so
Jmk5MTUtPmRybS5ldmVudF9sb2NrKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9pZCBoc3dfcGlw
ZV9jcmNfaXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAt
LQ0KPiAyLjQxLjANCg0K
