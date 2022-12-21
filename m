Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 115946536C5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 20:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37BE10E47E;
	Wed, 21 Dec 2022 19:03:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8229C10E47E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 19:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671649382; x=1703185382;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QHrs7M64HVCZ9bsY69ybmZZ1AieK26HdkvuZOgUL9R0=;
 b=l3chjHtJFALubUsBiX3riDhnw9NwUTgS0jjtWXm9saSE6BNcGziyOhQu
 bjOZImcUGnxaWzrbSx/Qv4CBxrDGHcBPilgsqMbF8lFs/4PXIDYvXoD8q
 ylBiLYCnAb/Pj11CW4r1hRju37EhyNv0azquxaV4z5VW5ClH84uJJ/iYK
 S+i4V/myj549/sGNiJz33JBLBDjEwhZKXphXnxrWkmpWN68zYgagVzR81
 1LnFFP2kCu/PMcOOe70lVIpXGc5BwahViZhwacEfEkRI9P6vTwO6iBFE4
 IEFG/4kVPSZ1kuYWTQFkRiGV+OLp/b22eRrJg49vF3IqBeEqeUgX5wy3v w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="320001676"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="320001676"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 11:03:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10568"; a="793810762"
X-IronPort-AV: E=Sophos;i="5.96,263,1665471600"; d="scan'208";a="793810762"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2022 11:03:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 21 Dec 2022 11:03:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 21 Dec 2022 11:03:01 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 21 Dec 2022 11:03:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mHXSy/aC3ZxRMN2TA/nlF9huZjxjGRJk87x9z/G6o2lk+bTGCmMX/Euw1yVFSB4omxdXSjYp67e83+i7I2BZpN8nzxhLhsFlD1NRv5fDMtb303d705X74YDPt6oBD4f3XgkOFYBivqew/WCf0UmOVDCKa97d3ckBsLNU7Q9QA06Pd1c6TTZO7+0cF+YgYfA6t2/1P8KRp9U1lXpiPnTt0lqPan43P35V5vG3GMicPmeh+/uTlZWizIa8QVyZ94hxPF762/Vvy2zMa4k6543vulFVhSV26KNf4wc5NYTueKtPktWFVvbNRtviV0ARQTQAFlcYqyECBBjUox9/8qKvfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QHrs7M64HVCZ9bsY69ybmZZ1AieK26HdkvuZOgUL9R0=;
 b=FN9tqm3MtmijrrNQbAQvjmfHyRY26vSX2pBHV+9G2l27S/7f2VZCmWs68g43ZG25cXnqTyKC2i/jorhFze9yn2vXNmEreuaFTgQ6d8Jmc5GyT/jGgNKY5yjPbb353e4yh3yU21Urx/327ON9nbUP9ncsTo1wFwhPcp7yu3ezHGJfkTGjX8fcsFPUbgkSoISNcmNVz+18leRA9uq3uBFhHk1YXbO0NgvyIIGlqL6qhRZVSVHkgrGYIOw1dWdZoaxiRi6QvI0AFEfr7fKa37Viy3wg96g8EW5mGYTWtC6FOYmKT6ZD4ha3/LwDmvK1cwajsKhcc6KKKNkgdLiAHSsQHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB7564.namprd11.prod.outlook.com (2603:10b6:510:288::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Wed, 21 Dec
 2022 19:02:57 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%5]) with mapi id 15.20.5924.016; Wed, 21 Dec 2022
 19:02:57 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
Thread-Index: AQHZD5vcX31f4EZl9U+u+fEcHDPX7K5vWe8AgAcNtYCAAleaAA==
Date: Wed, 21 Dec 2022 19:02:57 +0000
Message-ID: <85ee977fc43e77c67338cab6d267c362724c1481.camel@intel.com>
References: <20221214090758.3040356-1-suraj.kandpal@intel.com>
 <20221214090758.3040356-7-suraj.kandpal@intel.com>
 <f3d574fb267345d286721f35e84c6383432921e7.camel@intel.com>
 <MWHPR11MB174179BCC29B8999CB616291E3EA9@MWHPR11MB1741.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB174179BCC29B8999CB616291E3EA9@MWHPR11MB1741.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB7564:EE_
x-ms-office365-filtering-correlation-id: ee74e97e-822d-4a2f-f0ed-08dae385f8db
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fIQHsQAOPxuJLhir00+QguH2jVNaThjofZtQFppSbodgTbuZu6eOEOiSmbtaZLnaLlJc20W7b4MhfDwWHP/nOQGYTanZKxWzG9BrbbYbck6NEGPNPvUzZwrYWwROqbIQFWBorlXeqAtj3pOcotyuchoWQtd7dUnHCy5LC2hCCXcHk+CW3bM3hmYW5VrM/QLwVlsJQk+J4GrGwPpXOV695x6dSUAZY57RSn28Fewy8Td0jYIhTyYQ4A723MZVoscgufnponpprjPCOaXTVj86IlEXT4bsJZCCLmR4seZaqpeaU7csZDztARbH4GRgn8YZ6kaRv5EvP0GMSMAXGNS5KlzpNzmuOArArIWrH+WuezQgoVz/Kk2ZnjV/BgYSBzESOdWWwwaRFDOHOhonAzpFguALEQwiA3MpdTUnxJLZPKsZ87OWPVPsym1UM2HfuzvO+rTIfbn/pPhUaZtwBm+ZTxTpE2Lu13V9Jhrkza+1hI6HAxT89l38RJdytf+pYHQcZZXjh1XbadzxsnRZ7UW6LvtrynThyLk6XXlVaXrN8g6ORj1mGKDyyLhwCdockOwHmzVLCQ2PHkubHykVX19r5LvKME+k36V3+GRIejd22G/r7p9iut5JxMpQc8aYcSDbmAkCmuvEckz9WwPvMnw+mYIqk8u7CsHZFxcz7R3CksUYYsI3lUPfMmGUNPXucIm88+ZtXXLDNc05eXMmCoQ2pg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199015)(2616005)(38100700002)(2906002)(86362001)(4001150100001)(91956017)(54906003)(82960400001)(38070700005)(478600001)(36756003)(122000001)(110136005)(107886003)(71200400001)(316002)(6486002)(186003)(26005)(5660300002)(6512007)(8936002)(64756008)(66946007)(8676002)(4326008)(41300700001)(76116006)(66556008)(83380400001)(66476007)(66446008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bE5lclBaZjJzWlRjMnY1Z2IrNjhQWHU2WjVOQzU2aE55TGp2VHRreEliZkYz?=
 =?utf-8?B?N0VVb1pEczQ4djJWQTZLMlBNckl0RmRLTFppZGVMSjM3Ums5ZkozWXRDaWc2?=
 =?utf-8?B?U1BoZVFPMHhZT3FwU1R1QlFwNWFlQVJQVGt2cWhReXh1N1EvTEFFMjhPWnVk?=
 =?utf-8?B?WTJGeElxK0h6bmhPdk9FRTFPRzVPbTk2RndoUkZCOUxJRk5KNWtZVzY4VHpM?=
 =?utf-8?B?VHNvNThmK0pVNW1EYVV0amhHcHREbjNPa2IySUZUOW45RjlNcjd4RXM0Yk0w?=
 =?utf-8?B?em1FWFJGV1Nhd3VyK2xZQ0c4VVlmMFdVejBYK3RURHBsb2RoQmszSHlsTXp0?=
 =?utf-8?B?N0VicjE3ZEVGbXd2SWg4YzdGNEN1cjNkT3FnZWlBRmplaE9zWDZoK014V2N2?=
 =?utf-8?B?QXVOOGtPNGs0emh2bFJYbEE3MFJGRkNtZ1FRbVVPd3lXZERZQUpZbDVMNUcr?=
 =?utf-8?B?SmlxQXowNS9oam91eEJ1OU9LLzZXWUh3ZUxUbExXeUZweEY4WEVQS1J0SDNU?=
 =?utf-8?B?aHc0cUlOcUhDM25uRDZ2dkdjaTE3b0NZYUUzeHA5U0JBbjR1Q0VjY1JRYjNC?=
 =?utf-8?B?Zlk4NTdvdjhML29KWGhBN3psNGRtVUlyK3NoNjd1MWdKaUN3WGV0VFp4c3lK?=
 =?utf-8?B?NFVPczdROUtza0NnM05IajVxbkRNRXdna2VnZWhxN1NkTWZZSUczbXM2QlN2?=
 =?utf-8?B?R2p4ZDh6TDlqM3pRQlU5WWIxRlpNZTdROXp1bkhWd0xsc0tjdTVkZ0xaWVAr?=
 =?utf-8?B?YjRRNmI4My90VzZHWnAzZFJ0RElmK3IxaWE4dWNBRTVMU3BiT0cyNXY0cWly?=
 =?utf-8?B?RXdRU2swZzV4USs1U2lSZEdRWXBENmFZL2VRNjN1UVBkQ3F3cEt1N0hsSWxX?=
 =?utf-8?B?bVRsa2pxaFBXb3NUalVTTE8rNXJsYnhyNUJLRmFNKzhob0lvckRDSDRKcVA4?=
 =?utf-8?B?SjBxZ3BpbzFwL3NqT3N2b0pQaWVVSmZlaHRwSlpLc3crU3ZZS2dCMXJxUWh2?=
 =?utf-8?B?QUl3bTZwMTRqcTZrbUUybSt6elg3YXY2UFhjYkFOU3FjMnVVb0p5V0RrQXJE?=
 =?utf-8?B?THcxeGtNU3BlL05hYzFROWt6MEVZZlBNZDdwckVJRGw1aVNkWTRzTjY1WFdx?=
 =?utf-8?B?UnlRYmNwNUV4TkxHRTVHdXRreTBXRmxpVjR4TUlrTlRGb1poRjFpVzN0a2kv?=
 =?utf-8?B?MVVMYjQvbU15S1FqcUlDUFd0WnhSc0FKTlBiaGJUL0hZQTBzeU05VUZPUmpU?=
 =?utf-8?B?YXpuYVhxRGhZbC92eWd3ZlkzMEcweTJtODZLSGt5c094R3N4cHUvOUd6SkNO?=
 =?utf-8?B?SWhxaTVXalh0aFdZbm9Yd2hBcFVuUXVtOVMvVWk5d01mbzVJQ2c5QzNGVjU0?=
 =?utf-8?B?V21JU2RrVVNyTTVJYTd0TkE5S241S0Z5dG1EWC9zaDNPK0wvelM5RXBPT0dh?=
 =?utf-8?B?Y2h0Y3JSckpiem8vQ2RkUWFxN1phU2dPU3hhamZrNXprWWxwNkVLRkRoUVBW?=
 =?utf-8?B?bkVKbElvMGQ0MkU1MHZRdkJFZWVIK0RTTVBhRkE4M0NtTTZvTU9nazdLYy9N?=
 =?utf-8?B?dXlLenNhQzhkNHJXenZocWpMSlNaOFRkdXNOL3hkbnpLSzM2ZGM3M2libC9G?=
 =?utf-8?B?cTZUc3ZYOW0yNEdBbVhuMHBuYld5N1M3SXVKSW0yaktaSEdueWRCYVMvMmo0?=
 =?utf-8?B?aThvdmpFbmtHdndZa0Eza0REZEdWenJyQXZrNjNmbjZ2RjlKeDBhSWU3R2o1?=
 =?utf-8?B?M1NmQjR0Mko0K2Eyb3h2d2ZWWlZzY2RUeWF5UW42eXMwUnZXdFZnMmw2WENZ?=
 =?utf-8?B?RFpEQWRBUkcvdU43a0VBUlZlZEpPekZMY0tNSGZNMSs4RnFCb3cvL3dkeUd0?=
 =?utf-8?B?K1N3bSt0VVM0VE12YkU3RU5HNnBzTUE0Z3JiMWF4eTlDNENIbnM2VDM2SVF1?=
 =?utf-8?B?VmZqbzhlSUwxbS9RZkZqc0t6K09abHdnci90Rm1RMlVpK0s3bUNhZEFqWkNr?=
 =?utf-8?B?L2s1MS9HYUJwaEZ5Z3gyL2hNM0FFYVJkYmZaVi85T2VqcnVIR0J6bmNHT3JL?=
 =?utf-8?B?YUlFZ1VBVHVxdkpLZm4rNmJGelNYb0EwdlFLSlplRVo1bEJNb1VpNTJjRkZ6?=
 =?utf-8?B?NkF2b0ZkMytrRlNZd0FlZFpzODkyN0IwZHdOaUJ1bDRHUWt0V08yUjhqcHVa?=
 =?utf-8?Q?p3ouusRZFQ+HBvUSUY07JbY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8D04765218C91E4B84C753E9F2FFD561@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee74e97e-822d-4a2f-f0ed-08dae385f8db
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2022 19:02:57.1040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yhhq8NkN+5zIP4w1HsLKQJuyDk/Ea+H3HL37jIICCsq5XTLSfT6DEqqBwcVB4LdyhImy/9Wacvbqg3WdEdNCTAb+ZrB8D637Q9XCKBG5yjsEVOucrc5skeB61rrChHt8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7564
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 6/7] drm/i915/mtl: Add function to send
 command to GSC CS
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCk9uIFR1ZSwgMjAyMi0xMi0yMCBhdCAwNzoxOSArMDAwMCwgS2FuZHBhbCwgU3VyYWogd3Jv
dGU6DQo+ID4gDQo+ID4gT24gV2VkLCAyMDIyLTEyLTE0IGF0IDE0OjM3ICswNTMwLCBTdXJhaiBL
YW5kcGFsIHdyb3RlOg0KPiA+IA0KPiA+IA0KPiA+IEFsYW46IFNlZSBteSByZXZpZXcgY29tbWVu
dCBvbiBwYXRjaCAjMSAtIGkgYmVsaWV2ZSBtb3N0IG9mIHRoaXMgZnVuY3Rpb24gYWJvdmUNCj4g
PiAoaW50ZWxfaGRjcF9nc2NfbXNnX3NlbmQpIGNvdWxkIGdvIGludG8gYSBjb21tb24NCj4gPiBp
bnRlbF9nc2NfZW5naW5lX3NlbmRfaGVjaXBrdCBmdW5jdGlvbiAoaW4gYSBuZXcgZ3NjLWhlY2kg
c3BlY2lmaWMgZmlsZSwNCj4gPiBpLmUuwqBpbnRlbF9nc2NfaGVjaS5jKSB0aGF0IGxpdmVzIGlu
IHRoZSB1Yy9nc2MgZG9tYWluLCBub3QgaGVyZSBpbiBkaXNwbGF5LiBJbiBmYWN0DQo+ID4gdGhl
ICJzdHJ1Y3QgaW50ZWxfaGRjcF9nc2NfbWVzc2FnZSIgYWxzbyBhbHNvIGJlIHJlbmFtZWQgdG8g
YmUgInN0cnVjdA0KPiA+IGludGVsX2dzY19oZWNpX3BrdF9pbmZvIiBhbmQgaXRzIGRlZmluaXRp
b24gbW92ZWQgb3ZlciB0byAoYW5kIGluY2x1ZGVkIGZyb20pIGENCj4gPiBoZWFkZXIgaW4gdGhl
IHVjL2dzYyBkb21haW4uDQo+ID4gSSBiZWxpZXZlIGl0IG1ha2Ugc2Vuc2UgZm9yIHRoZSBjYWxs
ZXIgdG8gYWxsb2NhdGUgdGhlIG9iamVjdHMgYnV0IHRoZSBjb21tb24NCj4gPiBoZWFkZXIgdG8g
aGF2ZSB0aGUgc3RydWN0dXJlIGRlZmluaXRpb24gYW5kIHRoZSBjb21tb24gZnVuY3Rpb24gY2Fu
IGRvIHRoZQ0KPiA+IGNtZC1wcmVwLCBzdWJtaXNzaW9uLCB3YWl0aW5nIChhbmQgZXZlbnR1YWxs
eSBjaGVja2luZyBvZiBwZW5kaW5nLWJpdCkuDQo+ID4gDQo+IEkgY2FuIG1vdmUgYSBsb3Qgb2Yg
dGhlc2UgZnVuY3Rpb25zIHRvIGludGVsX2dzY19mdy5jDQo+IEJ1dCBJIHN0aWxsIGRvbuKAmXQg
c2VlIHRoZSBtZXJpdCBpbiBhZGRpbmcgbW9yZSBmdW5jdGlvbnMgYW5kIGZpbGVzIGluIGp1c3Qg
Zm9yIG1vcmUgcmVhZGFiaWxpdHkNCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRwYWwNCj4g
DQoNClJlcGx5aW5nIGJhY2sgYWZ0ZXIgdGhlIG9mZmxpbmUgbWVldGluZy4gU28ganVzdCB0byBy
ZWNhcCwgbXkgY29uY2VybnMgaW5jbHVkZToNCg0KMS4gSW4gaGluZHNpZ2h0LCAicmVhZGFiaWxp
dHkiICB3YXNuJ3QgdGhlIGNvcnJlY3QgdGVybSAtIGkgd2FudGVkIHRvIGhpZ2hsaWdodCB0aGUg
aW1wb3J0YW5jZSBvZiBob3cgd2Ugb3JnYW5pemUgdGhlIGNvZGUgaGllcmFyY2h5IGluIGFjY29y
ZGFuY2UgdG8gdGhlIEhXIGFyY2hpdGVjdHVyZSBzbw0KdGhhdCBpZiBjaGFuZ2VzIGluIGZ1dHVy
ZSBodyBvciB3b3JrYXJvdW5kcyBhcmUgcmVxdWlyZWQsIHdlIGNhbiBldmVudHVhbGx5IGNhbiBt
YWludGFpbiBhcyBtdWNoIGNvbW1vbi1odyBjaGFuZ2VzIChhZ25vc3RpYyB0byB0aGUgaW50ZXJu
YWxzIG9mIHRoZSBoZWNpLXBrdCkgdG8gYSBzaW5nbGUNCmxheWVyIA0KMi4gQWxzbywgd2l0aCBy
ZWdhcmRzIHRvIHRoZSByZXZpZXdpbmcgcHJvY2Vzcywgd2Uga25vdyB0aGF0IDMgc2V0cyBvZiBz
ZXJpZXMgYXJlIGVtZXJnaW5nIG92ZXIgdGhlc2UgY29taW5nIHdlZWtzIC0gZ3NjLXN3LXByb3h5
LCBoZGNwIGFuZCBweHAgYW5kIGFsbCBvZiB0aGVtIGFyZSBnb2luZyB0byBiZQ0KYWRkaW5nIHBh
dGNoZXMgZm9yIHRoZSBtdGwtZ3NjLW1lbS1oZWFkZXIgc3RydWN0dXJlIHBvcHVsYXRpb24gYW5k
IHRoZSBnc2MtY3MgaGVjaS1sb2FkLXBrdCBjb21tYW5kIHN1Ym1pc3Npb24uIFNvIGl0IG1pZ2h0
IGJlIGJldHRlciBmb3IgcmV2aWV3ZXJzIGFuZCBvdXJzZWx2ZXMgaWYgd2UgY2FuDQptYWludGFp
biByb3VnaGx5IHRoZSBzYW1lIGZ1bmN0aW9uIG5hbWVzL2xvY2F0aW9ucy9yZXNwb25zaWJpbGl0
aWVzIGFzIHRoZXNlIGNvbWluZyBzZXJpZXMgYWRkLW9uIG9yIG1vZGlmeSB0aG9zZSBjb21tb24g
Y29kZXMvLi4NCg0KU28gYXMgcGVyIHRoaXMgbW9ybmluZ3MsIG1lZXRpbmcgdGhhdCBpbmNsdWRl
ZCBEYW5pZWxlLCBoZXJlIGlzIHRoZSBzdW1tYXJ5IHByb3Bvc2FsIHdlIGFncmVlZCBvbiAtIHRo
YXQgYWRkcyBzb21lIGNvbW1vbiBoZWxwZXJzIHdoaWxlIGtlZXBpbmcgb3RoZXIgY29tbW9uLWh3
IHJlc3Bvc2liaWxpdGllcw0KYXMgY2FsbGVyLWhhbmRsZWQgKHRvIGNhdGVyIGZvciBkaWZmZXJl
bnQgZTJlIGZsb3dzKToNCg0KQ3JlYXRlIG5ldyBjb21tb24gdXRpbGl0eSBmaWxlcyB3aXRoIGNv
bW1vbiBmdW5jdGlvbnM6DQoNCgkxLiBndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0
LmgNCgkJMS4gZGVmaW5lIHRoZSBtdGwtbWVtLWhlYWRlciBhcyBwZXIgbm93DQoJCTIuIEFkZCB0
aGUgImhvc3Qtc2Vzc2lvbi1oYW5kbGUtcnVsZXMiIHdlIG5lZWQgdG8gYWRkIEJJVC1NQVNLUyBm
b3IgZGlmZmVyZW50IHVzYWdlcyBmb3IgaG9zdF9zZXNzaW9uX2hhbmRsZQ0KCQkJdWludDY0X3Q6
IChkZXRhaWxzIG9mIHRoZXNlIGJpdG1hc2tzIGNhbiBiZSBkaXNjdXNzZWQgdGhydSByZXZpZXcg
YnV0IGhlcmUgaXMgd2hhdCB3ZSBjb25jbHVkZWQgZnJvbSBtdGc6DQoJCQkJLSBCSVRNQVNLUyBb
NjMuLi42MF0gKDAwMDAgPSBoZGNwLCAwMDAwMSA9IHB4cC1zaW5nbGUsIChkb3duc3RybS1vbmx5
IDAwMDAyID0gcHhwLW11bHRpKSwgZnV0dXJlLi4uKQ0KCQkJCQkJLSBjYWxsZXIgbXVzdCBvYmV5
IC0gdmVyaWZpZWQgYnkgaW50ZWxfZ3NjX3VjX2hlY2lfY21kX2VtaXRfbXRsX21lbWhkcg0KCQkJ
CS0gQklUTUFTS1MgWzU5Li4uNTBdIChjYWxsZXItbWFzaykNCgkJCQkJCS0gY2FsbGVyIGNhbiBm
aWxsIHRoaXMgd2l0aCBhbnl0aGluZyBpdCB3YW50cw0KCQkJCQkJLSBQWFAgd291bGQgdXNlIHRo
aXMgYXJiLXNlc3Npb24tcm9sbGluZy1jb3VudGVyLCBoZGNwIGNvdWxkIHVzZSB0aGlzIGZvciBw
aXBlIGRpZmZlcmVudGlhdGlvbg0KCQkJCS0gQklUTUFTS1MgWzQ5Li4uMDBdIChyYW5kb21seSBn
ZW5lcmF0ZWQgbnVtYmVyKQ0KCQkJCQkJLSBjYWxsZXIgdG8gZmlsbCB0aGlzIHdpdGggYW55dGhp
bmcgaXQgd2FudHMgYnV0IHJlYWxseSBzaG91bGQgYmUgcmFuZG9tbHkgZ2VuZXJhdGVkDQoJCQkq
IG11c3QgYmUgdW5pcXVlIHBlciBjYWxsaW5nIHByb2Nlc3MgKyB1c2FnZS4NCg0KCTIuIGd0L3Vj
L2ludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQuYw0KCQlhLiBoZWxwZXIgLS0gaW50ZWxfZ3Nj
X3VjX2hlY2lfY21kX2VtaXRfbXRsX21lbWhkcg0KCQkJCXBhcmFtczoNCgkJCQkJLSB2aXJ0LXB0
ciB0byB0aGUgbWVtIGhlYWRlciAocGlubmVkIG9iamVjdCkNCgkJCQkJLSBtZXNzYWdlX2FkZHJl
c3NfdHlwZQ0KCQkJCQktIHBhcmFtcyA9IHNpemUNCgkJCQkJLSBmbGFncyAoYWZ0ZXIgDQoJCQkJ
CS0gaG9zdC1zZXNzaW9uID0gKGhhcyB0byB2ZXJpZnkgaW4gdGhlIHJ1bGVzIG9mICJASFNIKSIg
YmFzZWQgb24gbWVzc2FnZV9hZGRyZXNzX3R5cGUpDQoNCgkJYi4gY29tbW9uID0gaW50ZWxfZ3Nj
X3VjX2hlY2lfY21kX3N1Ym1pdF9wYWNrZXQNCgkJCQkoZG9lcyB0aGUgc2FtZSB0aGluZyBhcyB0
aGUgY3VycmVudCBjb2RlIGJ1dCBhbiBpbmRlcGVuZGFudCBmdW5jdGlvbiwNCgkJCQkgTk9UIG92
ZXJsb2FkaW5nIHRoZSBnc2MtbG9hZCBvciBoZWNpLXN1Ym1pc3Npb24gYmFzZWQgb24gInBrdCIg
YXMgY3VycmVudCBwYXRjaCkNCgkJCQkJCS0gbW9zdGx5IHRoZSBzYW1lIGNvZGUNCgkJCQkJCS0g
Y2FsbGVyIHdpbGwgZG8gbXRsLWhlYWRlciBwcmUtcG9wdWxhdGlvbiB1c2luZyB0aGUgaGVscGVy
IDItYQ0KCQkJCQkJLSB0YWtlcyBpbiB0aGUgb2JqZWN0cyAoZnJvbSBjYWxsZXIpLCBjcmVhdGVz
IHRoZSByZXF1ZXN0IGludGVybmFsbHkNCgkJCQkJCS0gbm8gcGVuZGluZyBiaXQgbWFuYWdlbWVu
dCAtIGNhbGxlciBoYW5kbGVzIHRoYXQgdGhlIGNoZWNraW5nIG9mICJwZW5kaW5nLWJpdCIgKyAi
Z3NjX21lc3NhZ2VfaGFuZGxlIiBlY2hvDQoNCgkJYy4gZm9yIFBYUCBhcmIgc2Vzc2lvbiAtIGRv
bnQgdXNlIHByaXZlbGVnZWQgaW5zdHJ1Y3Rpb24sIHVzZSBnbG9iYWwgaW5zdHJ1Y3Rpb24uDQoJ
CQkJLSBuZWVkIHRvIHZlcmlmeSBpZiB0aGlzIHdvcmtzIC0gdGVzdGluZyB3YXMgZG9uZSB0byB1
c2UgR0dUVCBsaWtlIG11bHRpLXNlc3Npb24gLSBleHBlY3RlZCB0byB3b3JrLg0KCQkJCS0gaWYg
d29ya3MsIHdlIGNhbiB1c2UgdGhlIHNhbWUgMi1iIHN1Ym1pc3Npb24gaGVscGVyDQoNCg0KDQo=
