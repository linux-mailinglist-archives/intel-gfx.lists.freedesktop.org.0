Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A2171FFAC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 12:46:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F1E10E656;
	Fri,  2 Jun 2023 10:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28EC710E656
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 10:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685702796; x=1717238796;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=2gHTKT9dhspgdv7S3p6vT+FoUvGvwJi7obZgtSADQKg=;
 b=jGtkIWsPDDf/4wSBEee24VfNhJyqx6SM5RpJbHrm4gzSNXaWaM+4qubt
 4Cn7uu+flJ/7/tP6oj/esB5EeFiJcc+3CuMPeB+b7TrD9hIUJK3xvo948
 iLLlG9uYzFp3qDp95osZQ9uErrDsmW/oXCQjNBDjFDDBN44lISEdWTIgd
 D+7MJ75WrpOBKjUbvp8rHGDzSdZ9t9tlYn2T/p4i1cskzCltg4jJYpO4I
 Fp8sUzEVRnfkk3i+dVxBYpj+gCuIwipe3DldQ6Y1srkgIEjTiplV5t/iB
 rQiWQiA1UHWI9QoRU0tdQWbka9Aa7gopeASwwx4syVl3NJi5rXithMN52 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="384120895"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="384120895"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:46:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="954454008"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="954454008"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jun 2023 03:46:35 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 03:46:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 03:46:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 03:46:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jWM8oZgq4mS2vIFLlbXgnyoQt8a590LlycTjDl47LqZQ4B6SGsVqUS4tzIBgrjYm4Nrf03Yn6ZndUQWuXJTujGCvtDYXKTLV5YH3fHqBbiTrW2FKSywqz2yOLZD0jCKmqZNG9qr3mMiBlSBj6vlklRZGP2U6KV2BHjKQ2nQ4f00zmr7uQ6wT6P20ZtxKBz5o8sQDcJRdsTzohFQJUje4uJ4czGxjSFL/1gYW9SBwNdHkDyzR14V7XICd1hvDW9vd+ZfNe8ynTcPv+g9lA8lud07SY+recyujw+22fUWv1pWF3NyQb+kxOiSGy32bEsaKcGPpVUo37b76c3V1HG+5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2gHTKT9dhspgdv7S3p6vT+FoUvGvwJi7obZgtSADQKg=;
 b=dLBEXBX7cEPLyQ/I0EBj9H8SAkxx0+GO6wxlf3RPend6YMki3Zg2Yx75vTPXoexbNe3ECV0UY6KCoZrWC3gHEc62fNbFfdEwBeC8e7Yj6g/H6ACY3UR0mRFVVUiSBLITdOQmQpbuVULzJGs8DoGR83GpUKxW+ICYAxZt2sZ+9idUq+nKW4rtbZqTX4yuUsNgIhcA+Z7udKqgGo5uso9KsTls/VClhoGobFSz5Rmd87NKeumLI2OG0FitWKcHo5rB/YrjfzckQU7y3ajvJKzhNbW/g8iIq5xY93y6THPWNSTASPt/E21PDlfhuNoOuHVduWcEov2HTjHOLcdc7OjvrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5403.namprd11.prod.outlook.com (2603:10b6:408:11c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.24; Fri, 2 Jun
 2023 10:46:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%6]) with mapi id 15.20.6433.022; Fri, 2 Jun 2023
 10:46:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 00/10] Clean-up Xe FBC additions
Thread-Index: AQHZlT6hfhWQXAcAMU2d6Hr+EK6tOa93VHoA
Date: Fri, 2 Jun 2023 10:46:32 +0000
Message-ID: <230b8cc4820a928620b4986df716b1e5052c288b.camel@intel.com>
References: <20230602103928.1012470-1-jouni.hogander@intel.com>
In-Reply-To: <20230602103928.1012470-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5403:EE_
x-ms-office365-filtering-correlation-id: 9267568f-936d-4692-c5cb-08db6356a10a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PZkg7HnDaGeeEH+V2BhUKyRiTo/vCth7DL7ixNDjKeh1HllT3atYJxaCMLG0csywK1gHP1Bz+21m1CcbFWAaCtFIPQzA6sptGCP8MlG1C2MeqaIq3YTDFS14ecPyzOt/YEQ87TxNEkmoJMSi6Sn2CiAU3CaYNVeE10zLzqBwBHC3n6jPQkDxrsiEDI7oikpJSBqsYTeNYdiNzt/5n9iPmfKxGAjGDrdQKr2Cdz2I9QG1N5J4RxavT4nRrO94nvnVaQH/Vi4vHMP/d0Y9N+lcRJWyM7I5Hmvl384EovYouD0UecakrEiSrWER7zC+T6+MafF7Q8dQbgbXIY+/DLNg199p/4t+M3dMh+5CQyQ5wCL6yCdwaWgF4q0YszjAOIbwc6Zocj8FdVzKjzAVK7j0WImmfMes+blwbJtQQlbFHhMFSQrGxFcjuuTg+ZAMoDH1qymQdIb346wWd3q9k+IgveznHz5PihYUrgUK09/Ah72u+9YjAqOrSQt8KSC/uo+YMCQGHhvsqpBW7oNEROb5paY4YalNJUE0NjN5lFEv7StenBqOq/sQuu0bxa/mX4v1p03Gq1W/zndZ4RCuiWzD5l5HAQfpmgA0g3XTa5CO9GZwortTMAB5jixME5pbqV7F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(376002)(396003)(39860400002)(451199021)(91956017)(64756008)(76116006)(66476007)(66556008)(66446008)(66946007)(6916009)(316002)(41300700001)(5660300002)(8676002)(2906002)(8936002)(6486002)(71200400001)(478600001)(26005)(186003)(36756003)(6506007)(83380400001)(6512007)(82960400001)(122000001)(86362001)(38070700005)(38100700002)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGpKYzlpU2Q3SWNmeDFnMW82VWM5ZG1BZXVjZWZqTDFCZlpaS1pSK0ZaTFlk?=
 =?utf-8?B?SG85a0cvZVQ5cWg0M1M2b1QwNWQxTWwwSFYwRjNTNTd0ZXYxZHIyZkU0bGFq?=
 =?utf-8?B?MTBpTmJ6Qyt1blF2czUzZTE2WFRFUWYzOG9FNzFlYnBaanpsN3NqSUp5T04x?=
 =?utf-8?B?dk9pS1loNkdSTkdBejVwaktObXJXQzhwWk96bG9KeG5rd0VNak1GL2h1cXBS?=
 =?utf-8?B?c2MrWnRxYXRVMVpBUmdIYUN2OW9OTGo5VkYreUZFMEZUOHBLZmtkbVBydG1O?=
 =?utf-8?B?d0hsRVpnVWxCWnZ0ekhGSlhGV0xUM3c0Mjk3NnlueWRJUkZERDVkU2ZUZENV?=
 =?utf-8?B?Q0lvZm5BSXk5T2dPMXZZWkpibmlkYmRRazdHaUhWZkNkTnpVMDJaNzJGV3RY?=
 =?utf-8?B?RjFZRjdETmF2YW9Sb0I2S0Yzc285cHd5YzU3KzFMbjUrNjZ6M2kzTEcyYyt6?=
 =?utf-8?B?OERoVHpiNmM1K3Rnc2VJc2RFbC9xelZBVEJJcWwyR2lKY0Q4Qm56ejE3Y3RL?=
 =?utf-8?B?TkJhQldvWWsvN2RsQ1BpTVBVajVBNlRNVjdkOTh3Mk1IQktPeUJ1MnBKN0RW?=
 =?utf-8?B?a0ljV3ZTRzNnc1NiNmNjNGgrUitjbFJvRy9zWldPVWFkV2QrYWl1N013TjRk?=
 =?utf-8?B?UStVQjg4NGlZLy8xQy85NVh3bWVhUWNSTFdEZWxoQzRwZnNYUlFBSnVkTnBX?=
 =?utf-8?B?ZVFoK2E1Ry9LWERHbXJWNGYyMC8xdTVWWDZ0ckloOHRDTEc3d05KZEt0SFNB?=
 =?utf-8?B?ek9oZW83bGN3L25MWlFwUnJOVWFXbWFsQzJtTzhaaUxYcktMaTA0bGRieGU1?=
 =?utf-8?B?elRPdmlFMzRKdGd2ajJwWUQ0QjQ1TlNjdWZvcDArVStodzd3ZFBWbTcxeVJK?=
 =?utf-8?B?Q29HUVN5dXJJdDhleG1nemV2eUxvU0NrTnVvUnBOY05CRC82dVdPZzMvT1RQ?=
 =?utf-8?B?YU9HSVlqU2V4UEgxZUNFcHpZNkozVGlaVW1kS3NrcmpWdEhwTS9iYTgyMzcw?=
 =?utf-8?B?M2tvZXhnMmplMG9qcFduREZKTjc2VWFPSzRHazVpOWxiUXU1bVJUbnA3bUZF?=
 =?utf-8?B?OCs5TlJjNTluR1IvR0JLQW5SYW9TUnBWMzZZNE1sYmJkNitoelVCUEJ6ODY0?=
 =?utf-8?B?TjcyNjhKN0dkaGV6RVE4SFBNWUMrL3UzN0pjc2RJNHdmTFM1bkF3K29yWk5J?=
 =?utf-8?B?aU9LRFQyQjBlL2xBZHJwWUxJS0JkamdMS0F5aTBlMStNTHJUaVVSeFUyRWlS?=
 =?utf-8?B?eXFSV2hZY0kxSmlGYTVhdXovRmdkNVhzZnV1Mzh2bi9vcE1EYzNReGM0Zmx6?=
 =?utf-8?B?RGVzRXAzZjlnL3gzYXVvNXUvWW5uTVVGbk1PblRwUmRWejBUYzEzZ1c5Wmpo?=
 =?utf-8?B?eDlUUXV0V2I3Z3B2VFluZVY0Y0k2Q2QzcGpFMTBPQ05lL0NhNU1nNXhOREpn?=
 =?utf-8?B?cEpxcnhPZVJraHdkOWpLazBzWlE3N3lJellOc3pQcE15MkZ4UEJBZk9lUHhC?=
 =?utf-8?B?Vjd4ZHlQMm0wUWlJTUVEMzY4R3ZPb1VNcXRXalZNZlpWdVVGYkpOR2pTRzhu?=
 =?utf-8?B?bTFlWlJ3Z3hoRkExT1owVWFnZnBGS3kyVHRxODcyNTRtV3UxOHd4VWdrV2d3?=
 =?utf-8?B?bDE4bytCSG9lbEk3TjNWK0tLRllGemk4SFJrbFZHdWJDbjJ4YlZZN1dTT292?=
 =?utf-8?B?RUh2aGdycVVRNXMrb1JnRHBMd1lza0g5MVZUcnJXNVhoQ0xRc2NwSGx4Ui9x?=
 =?utf-8?B?eitCR0V0TGwyd05XRk5sNWhuZCtoNDNWME5FT2p6UGNqdzkxRUM5eUQ2NU40?=
 =?utf-8?B?cEFmdDNFbERNdHNZc2FUMkg3VzZucEZYREtzTGdVcDVmQVZvR0hHdFdxRDdr?=
 =?utf-8?B?bGlReC83cVRGMWo2dm1xN0lRRXp6dXhEQllKbDFhYnFrd0hqeVBxNmUxLzQy?=
 =?utf-8?B?RFJjcDJ4cnhJcDlIcE00Q29Ob3hwcXU3T1BsV3dWR3UvUE1tTzgrL25GMDEx?=
 =?utf-8?B?ZEp0L0VTNDdlUnkzVmZmMDdmakg0VEIrRXBvdEdpYnRyelFyMGRtdFdBenNh?=
 =?utf-8?B?MVhmRlVIc1dUWjVqRnRnZlN1VURlU01zVmtoRFBIZnB0blhKTjk4T0tJd1Bi?=
 =?utf-8?B?MXc1U0RPVzlSZDBTdzF4eU9tN3l2ZTRqVStZK01rZDhlYkpLYm1HckEyd0Jy?=
 =?utf-8?B?cUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E2B1DE9A85D6D4A9E33C0D36CCF9D1B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9267568f-936d-4692-c5cb-08db6356a10a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2023 10:46:32.2674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /c1HGqQP8DG1wVQOnmZDsbDeHL2Om3s5GJmA2m6RXhLnWG0j9LvqYkPKeRY2oFqEdiAb7osRyyrvGnAgxw7UCxsdCItqEVV5wbda15geJms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5403
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 00/10] Clean-up Xe FBC additions
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

SGVsbG8sDQoNClNlbnQgdGhpcyB0byB3cm9uZyBtYWlsaW5nIGxpc3QuIFBsZWFzZSBpZ25vcmUu
IEZ1bGwgc2V0IG5vdyBzZW50DQp0b8KgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnLiBT
b3JyeSBmb3IgdGhlIGluY29udmVuaWVuY2UuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCk9u
IEZyaSwgMjAyMy0wNi0wMiBhdCAxMzozOSArMDMwMCwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0K
PiBUaGlzIHBhdGNoIHNldCBjbGVhbnMgdXAgWGUgRkJDIGFkZGl0aW9ucy4gQWxsIHN0b2xlbiBt
ZW1vcnkgZGV0YWlscw0KPiBhcmUNCj4gbW92ZWQgdG8gaTkxNV9nZW1fc3RvbGVuIGhlYWRlciBh
bmQgc291cmNlIGZpbGVzLiBBbHNvIHNvbWUgZmVuY2UNCj4gaGFuZGxpbmcNCj4gZGV0YWlscyBh
cmUgbW92ZSBhd2F5IGZyb20gRkJDIGNvZGUuIFRoaXMgYWxsb3dzIHJlbW92aW5nIGFsbCBpZmRl
ZnMNCj4gYWRkZWQNCj4gaW50byBmYmMgY29kZS4NCj4gDQo+IHYzOg0KPiDCoCAtIE1vdmUgYWxs
IHRoZSBpZmRlZiByZW1vdmFscyB0byBmaXh1cCBwYXRjaA0KPiDCoCAtIFJldmVydCBhcyBuZWNl
c3NhcnkgaW5zdGVhZCBvZiBtb2RpZnlpbmcNCj4gwqAgLSBpbnRlbF9ndF9mZW5jZV9jb3VudCAt
PiBpbnRlbF9ndF9sZWdhY3lfZmVuY2luZ19zdXBwb3J0DQo+IMKgIC0gQWRkICFXQVJOX09OKDEp
IHRvIGk5MTVfZ2VtX3N0b2xlbiBkZWZpbmVzIHRoYXQgYXJlIG5vdCBzdXBwb3NlZA0KPiB0byBi
ZQ0KPiDCoMKgwqAgdXNlZCBpbiBjYXNlIG9mIFhlDQo+IHYyOiBhZGQgbWlzc2luZyBpbnRlbF9n
dF90eXBlcy5oIGhlYWRlcg0KPiANCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPg0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0K
PiANCj4gSm91bmkgSMO2Z2FuZGVyICgxMCk6DQo+IMKgIFJldmVydCAiZHJtL2k5MTUvZGlzcGxh
eTogTWFrZSBGQkMgY2hlY2sgc3RvbGVuIGF0IHVzZSB0aW1lLiINCj4gwqAgUmV2ZXJ0ICJkcm0v
aTkxNS9mYmM6IHNldCBjb21wcmVzc2VkX2ZiIHRvIE5VTEwgb24gZXJyb3IiDQo+IMKgIFJldmVy
dCAiZHJtL2k5MTUvZGlzcGxheTogSW1wbGVtZW50IEZCQyBzdXBwb3J0Ig0KPiDCoCBmaXh1cCEg
ZHJtL2k5MTUvZGlzcGxheTogUmVtYWluaW5nIGNoYW5nZXMgdG8gbWFrZSB4ZSBjb21waWxlDQo+
IMKgIGRybS9pOTE1OiBNb3ZlIHN0b2xlbiBtZW1vcnkgaGFuZGxpbmcgaW50byBpOTE1X2dlbV9z
dG9sZW4NCj4gwqAgZHJtL3hlOiBYZSBzdG9sZW4gbWVtb3J5IGhhbmRsaW5nIGZvciBmYmMgc3Vw
cG9ydA0KPiDCoCBkcm0veGU6IEFkZCBpOTE1X2dlbS5oIGNvbXBhdGliaWxpdHkgaGVhZGVyDQo+
IMKgIGRybS9pOTE1L2ZiYzogTWFrZSBGQkMgY2hlY2sgc3RvbGVuIGF0IHVzZSB0aW1lDQo+IMKg
IGRybS9pOTE1L2ZiYzogTW92ZWQgZmVuY2UgcmVsYXRlZCBjb2RlIGF3YXkgZnJvbSBpbnRlbF9m
YmMNCj4gwqAgZHJtL3hlOiBBZGQgWGUgaW1wbGVtZW50YXRpb24gZm9yIGZlbmNlIGNoZWNrcyB1
c2VkIGJ5IGZiYyBjb2RlDQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmPCoMKgwqDCoMKgIHwgMTM5ICsrKystLS0tLS0tLS0tLS0NCj4gLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmPCoMKgwqAgfMKgIDM3ICsrKysr
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5owqDCoMKgIHzC
oCAxMyArKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmjCoMKg
wqDCoMKgIHzCoMKgIDIgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDUgKw0KPiDCoC4uLi9ncHUvZHJtL3hlL2Nv
bXBhdC1pOTE1LWhlYWRlcnMvaTkxNV9kcnYuaCB8wqDCoCAzICsNCj4gwqAuLi4vZ3B1L2RybS94
ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfZ2VtLmggfMKgwqAgOSArKw0KPiDCoC4uLi94ZS9j
b21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfZ2VtX3N0b2xlbi5owqAgfMKgIDc5ICsrKysrKysrKysN
Cj4gwqAuLi4vZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfdm1hLmggfMKgwqAg
MiArDQo+IMKgLi4uL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaW50ZWxfZ3RfdHlwZXMuaMKgwqAg
fMKgIDExICsrDQo+IMKgMTAgZmlsZXMgY2hhbmdlZCwgMTg4IGluc2VydGlvbnMoKyksIDExMiBk
ZWxldGlvbnMoLSkNCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hlL2Nv
bXBhdC1pOTE1LWhlYWRlcnMvaTkxNV9nZW0uaA0KPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtDQo+IGhlYWRlcnMvaTkxNV9nZW1fc3RvbGVuLmgN
Cj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LQ0K
PiBoZWFkZXJzL2ludGVsX2d0X3R5cGVzLmgNCj4gDQoNCg==
