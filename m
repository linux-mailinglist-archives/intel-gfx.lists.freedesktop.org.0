Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39BB163C6D5
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 18:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E717010E13A;
	Tue, 29 Nov 2022 17:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C63510E13A
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 17:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669744451; x=1701280451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=TUOIAvFpA64t5AeersQ35gVug5jgCcgL/803oLRaa7Y=;
 b=M/4FTukJqr5XQGJQR6LkILoD8tWqSQs9nCMrkAbraTUNU8yzWpaKQ2qq
 u+9e4HG9XVlakCP34hSPPpVn3t+4d/Ox94yj+mxNXbl+E5AQHxJguLVFz
 cvLWl8Vls4kqeQsWzHslbNthKzw0IfV3USllAMTnC+oOh1PWG8MP8RknC
 vLFq5FvB2Nk22FqfOxbIhj7fguQYHcOAE+eSVMVxcwbput68qXti9sprF
 NMaaHVNvdnkYu2FDwISUWZg8Enl/boRsT2sZSzUENlWOL/1ywddCrucOZ
 WX1wb84kPRGRIcivGqYE/kjGZHAWU5tdoVqFfoEOqayeQS5s1zNAXyRzY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="302789553"
X-IronPort-AV: E=Sophos;i="5.96,204,1665471600"; d="scan'208";a="302789553"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 09:46:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="674709568"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="674709568"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 29 Nov 2022 09:46:55 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 29 Nov 2022 09:46:55 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 29 Nov 2022 09:46:55 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 29 Nov 2022 09:46:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FPBZI2zVoGWpCtxSizc7lR9p1SsEump8fYsa3cCei4+tAVacssG0ntqzCU2hoQjdb2rjqbL1bmEN6X4O4bs1huR/4kR4vk1vdoOda0QUuJAyYxFdEkNTVp/dqN/qtEjKQYvtHdfu9gnZ/t022NmB9582porDS2o1DBceIzMgMNBIn+THATNNu+vKtbCQdccI6cWxtbb0NihsHDwFkONiQmRf8duZNQ3DpTMC+QtwGY/j3Lfdr553IIWEufkb5i5LfBiCVZyMIztvsnD8BPETXWTFAMEf5bePUmG5ZtYa+rgqoRKYhK5f3K3e06zQoTtTKomB6vS6UPsJXYGAK3DO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TUOIAvFpA64t5AeersQ35gVug5jgCcgL/803oLRaa7Y=;
 b=SJ8w+HV/9KmgSqkRkEgA5m5Jah3wMtykO1Pxl8NurupQyCTyyA9wsqsYcgrGBF868qJpTyaXFVvz+UCJUlm3m6l2BHmWaniFBUdbmyle0jy1U8DLo6iKLiUBnYWpwR/wREsLof9H719tzjgRWarXPurdme6XGkWM50qvsJLe+n0pMGrxN8QjZJxNajTmB3N4KRMMPJmmcfjtBkRMEx/rz9iHrk5IhMFpBHuYDT+DS5j5oiaCQyBrrJQJ3rEXb4UppJg6Bms6eE23DK+/KCdNguG27g04hk0XpTtVJB9IG0wneVLLF2ZOZl91kj6kKh6uT51r3jXt82uRPrafI4Y0Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6234.namprd11.prod.outlook.com (2603:10b6:930:25::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Tue, 29 Nov 2022 17:46:46 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::851f:5d95:8679:c897]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::851f:5d95:8679:c897%3]) with mapi id 15.20.5857.023; Tue, 29 Nov 2022
 17:46:46 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Add continuous full frame bit together
 with single
Thread-Index: AQHZA8djrhK1D/jnmk2vDfZiG7E0jK5V7ksAgAA/NgA=
Date: Tue, 29 Nov 2022 17:46:46 +0000
Message-ID: <c2ccd716d1d2486a04bb7145fc19bda8698abdf6.camel@intel.com>
References: <20221129075100.56655-1-jouni.hogander@intel.com>
 <61eb16851de8a3dab2fef98745a238b5668e93f1.camel@intel.com>
In-Reply-To: <61eb16851de8a3dab2fef98745a238b5668e93f1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6234:EE_
x-ms-office365-filtering-correlation-id: 181ad890-6bdf-4bbf-f851-08dad231af8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bbMv0R2oxNTqS4ayAxe9BKe3CMcrlefJMjg8RQEZIUfJAvFEWrBIV2fRSewPQ4CngOXE/SgBvqHcbo9mj3Wt9MRG6LMM1d1x60LwC4R6Uf/JR+iyaTk4wZgwYfFGy3BrhIajR6QldcwUcLmCR8It26AEhbO1juNGSU4JIjQLDDu8M75liaZ9SYyFHVVdDVwDYXooUYWQrb95QIEnzroywYMsUK78loUZ0Ht3NEsjDM2ERAj/75uB3jCxz6EbZd36WSbaCkgCfpGnxM54CYb0jy2I3Fk0CBMHlzG2Bic82AawvTedIzZDd/mQP+/LsZjblBh0sTofVe+i/o5XuOVQV0uyEgUd/RggxVfV1ytZ4q6JjwQ2cAEUAT/SRenRZ0/9xAm9ofiae91WogaEWixXisNSnPCCPI+SHm9ecLv+NP5etE9ublCsotIOnoaKq3vRgSNqZY3FKN6BQWsXbL1gs7Q6Nro4N9WBstwC6FuASANPB2PWjKhJluIXUF9iJAhTPoyBLXeAZHnRYvyOGvPHDak+jo1xCA08kXSTHtS9q4qQ/ZA8rN0/xRrEg4R3xIGVFOIGHFyh+n49AEnUDai1vKgy3zhxxvlosuZMovW819iH5USCi5cMnLXGn6hwfJ/LlXpD3qDJbJ54fYVdBrS7B0J0MLH060roc2sG8qg61OvMLwXqajKcV3d/NxM/VqDmxSnJJHypgwlSMTrJPNgJ3Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(396003)(346002)(376002)(366004)(451199015)(186003)(66574015)(2616005)(71200400001)(86362001)(6636002)(54906003)(316002)(110136005)(6486002)(82960400001)(38070700005)(36756003)(38100700002)(122000001)(83380400001)(6506007)(26005)(6512007)(4001150100001)(4326008)(2906002)(478600001)(8936002)(41300700001)(66946007)(5660300002)(66556008)(76116006)(66446008)(91956017)(66476007)(8676002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2oxQU16R1l1N2ZKaUUwS2pRcUxQcTJVVjVIcVIyUU5LeFZDOGU5bzgrZDUr?=
 =?utf-8?B?WUNFOVlOaU94LzhFcHg2NWozeWc0WDNobklaQ0NkRGRqeXk0ZlFIQnRuek10?=
 =?utf-8?B?N3Z2ckljd3dwZ05EM2tuaTUyaStQNkR4TzJ3UmEvOEsydlliUldocTEwcFFK?=
 =?utf-8?B?Z2FyMnNKd3E1MWdjYUZmamtyUzd6Z09VVENvSlM3eG1rM3BxL2oxYWtCMlFh?=
 =?utf-8?B?YWVDMmx2dFNReVFQaGZlTmc5U1I3V0J2NlhtNVYrMXcxYlRUOUxBVUk3cjNh?=
 =?utf-8?B?c21kMXk1ZmwwclowZm9HbEtKZEZYMkt5M2x2cXp1Sm1aR1lPaUFJS2NBNEc0?=
 =?utf-8?B?cTRsdVk0Yk1GYS9kUVluamZRNEdVajBLTGJNZmJkOTN3L1J4NTVhTUhWOW4z?=
 =?utf-8?B?aHFORUJEYmU1eEdSWW94ZVJ6RjdubzBYUmhhOGkyQ0RFd2d2dWZvQVhUUXBO?=
 =?utf-8?B?eDR6clVKMUxEdUlIdG03UlFFSXg3UFVTS2tlMGxMS2NQSkdtYzJHNFB3T1ZF?=
 =?utf-8?B?RkVBVGpPb1BPOUEwME5GTXh0NStDQWo5Y08xYnpncWNScWlpTTlSWWtJL2J2?=
 =?utf-8?B?TXN4S1pxNDJuUGJkZlVWZCtpUUw3TDNRTzRWc3ZkTW41emV3VitiaHdxVWlZ?=
 =?utf-8?B?TjkxendHU1d1ZVZJcStWQTI1QzgxeHA1MUp0YW9kdkZGS0QxVzRTcjNCTFU1?=
 =?utf-8?B?RThac0NwU0ZuK09MRFJRbDQ0ZXFIdGdVZVBtK2Z3a2p4Z21KZm4xQ0crcTJR?=
 =?utf-8?B?Ty9uTGovZ1ZwcXBmMDhjaXcyeHIxRVI4ZURvMFBBNk5xaEh1VnlMREk3WDNv?=
 =?utf-8?B?YVQvS3h4cWF6R3lZZXVXYWVuUGx5SURWWVY0d0RSc1puUFlnQUpCZHlLQU56?=
 =?utf-8?B?VWpMMzIzWjFqOHZ1cVBLSWl3R1o5Mzc0ZGExUWNDa2RaZ2lVTHIrMTFaMTVZ?=
 =?utf-8?B?MTVhMjcwdlJIbDM4VDBnSi9sSUZwSWY5SjJlZjFOSWlLQkFBTy9zMlNNbm9Z?=
 =?utf-8?B?LzJTQ0dicDNvTzliU3ZlWTBvR25rOHVvY01sRURZczRDemsxbHl6ZWhuV2Ix?=
 =?utf-8?B?ZGVlOFFJT3ZKcjRaQkQ0SGhpa1lNbjY0b3JKcmVwdmV5Z0hrZmdBSnFnZ01T?=
 =?utf-8?B?TlIyTDJNVVJ5UUMydTFZaFg0bW1wSG1Pak5TQVNVSUtaWjZvK0ZkaVc1Mk5w?=
 =?utf-8?B?aDZSa3VaM0FKTDI0dzN2eHp6VEQ2SzBrUDdYaDlNSkE5QkZUTW85WkpRTEtN?=
 =?utf-8?B?T1oyWGhZTHI3dnNDNEgwNDVJK0NrcTFFU1hoNXA3UXAwL1BRMGlzRytXZTNl?=
 =?utf-8?B?SkNObE8wb1lWeW9EajNZSThJcmp4TVFFc3hQVm0vMjUzcTdqeEpSQWZqOVBB?=
 =?utf-8?B?am9pWGJxVXlVNnhnVWtqYUh5UVNyTURNaW5OWEpuQVNzVDlBVWpZdTFaVVph?=
 =?utf-8?B?KzY3a1ZLdmlYZ3VGSFhRb0E4V3FUSzRuVWlHaWZCZm02OWQ2d3RDY3BaWVoy?=
 =?utf-8?B?U1pIVTh5UTRSZmV2TnVpWHA5cDJoNVdvdUo2OEJpRTJuYlVtcGgzNEdhcC93?=
 =?utf-8?B?OFREaTVmUlVCNVhwYzZzMmlBcHRRQmxZY3N1WWdFTVY3d3BVcVJITU5rNXQ3?=
 =?utf-8?B?ZWRZMkVsUTVHR1JzNGZpOVE2aXpwTEhzVGN1QXlpZ3VuVDJyMkRMWnpEenhI?=
 =?utf-8?B?YitDdGZPaWRyUFhtU0JCTVRVei9acFZKcEJPZDFKdjMrWW16TURMQy82cVVS?=
 =?utf-8?B?aFFwRE16LzRyaHpFZzdXT3ZTRGdBWjJMbW5NUCtZeUpXU3crdWRJaUs4VHE2?=
 =?utf-8?B?RG1IN2V6RkQ3UmF4Z2laNDVIeTY5U3dSMExIaFdLYjBpVW1MNWFQaTltbXo1?=
 =?utf-8?B?QThVSy9kYklkMWRqeW1xcDduQW1wTG1SMVdCZGI0UDRhT09scjd5ZVcvR2Vj?=
 =?utf-8?B?eWphcmNseGhXSGhiU2Rud0NUaGVPQ29pcDNscjNxczlaS2dobHBNbFY3U252?=
 =?utf-8?B?bzRZTzJ6aUtqVUZWaC95TFBTRWtUTWM5bnFMQWRGbTR4cW1PZWl1aHNFcFJu?=
 =?utf-8?B?MHR3ZjZ0OVRKMnNwL3NRWTVCWHlUYTAybnRsbnUvdDhXbFFvRm85ZDlVUS9N?=
 =?utf-8?B?WDBoLytPQmdvSHk4OHE4RW5xZFBqdTNpOFNuclFwUmRNWWNqUSswa1lTcnJL?=
 =?utf-8?B?elE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3F1C9FAF665E27428E14C333E9D57354@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 181ad890-6bdf-4bbf-f851-08dad231af8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2022 17:46:46.6072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FE27K2QaTnrldsaihy5M6glb3v+AuQKJeT8NiltM5wtttCj3OzNfRZkOIEbJPzKEuw9vV4ct3ihZ3ESNael/crMDVWbFt8+xoIujOVx0Hho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6234
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Add continuous full frame bit
 together with single
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

T24gVHVlLCAyMDIyLTExLTI5IGF0IDE0OjAwICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToKPiBP
biBUdWUsIDIwMjItMTEtMjkgYXQgMDk6NTEgKzAyMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToK
PiA+IEN1cnJlbnRseSB3ZSBhcmUgb2JzZXJ2aW5nIG9jY2FzaW9uYWxseSBkaXNwbGF5IGZsaWNr
ZXJpbmcgb3IKPiA+IGNvbXBsZXRlCj4gPiBmcmVlemUuIFRoaXMgaXMgbmFycm93ZWQgZG93biB0
byBiZSBjYXVzZWQgYnkgc2luZ2xlIGZ1bGwgZnJhbWUKPiA+IHVwZGF0ZQo+ID4gKFNGRikuCj4g
PiAKPiA+IFNGRiBiaXQgYWZ0ZXIgaXQncyB3cml0dGVuIGdldHMgY2xlYXJlZCBieSBIVyBpbiBz
dWJzZXF1ZW50IHZibGFuawo+ID4gaS5lLiB3aGVuIHRoZSB1cGRhdGUgaXMgc2VudCB0byB0aGUg
cGFuZWwuIFNGRiBiaXQgaXMgcmVxdWlyZWQgdG8KPiA+IGJlCj4gPiB3cml0dGVuIHRvZ2V0aGVy
IHdpdGggcGFydGlhbCBmcmFtZSB1cGRhdGUgKFBGVSkgYml0LiBBZnRlciB0aGUgU0ZGCj4gPiBi
aXQgZ2V0cyBjbGVhcmVkIGJ5IHRoZSBIVyBwc3IyIG1hbiB0cmsgY3RsIHJlZ2lzdGVyIHN0aWxs
IGNvbnRhaW5zCj4gPiBQRlUgYml0LiBJZiB0aGVyZSBpcyBzdWJzZXF1ZW50IHVwZGF0ZSBmb3Ig
YW55IHJlYXNvbiB3ZSB3aWxsIGVuZAo+ID4gdXAKPiA+IGhhdmluZyBzZWxlY3RpdmUgdXBkYXRl
L2ZldGNoIGNvbmZpZ3VyYXRpb24gd2hlcmUgc3RhcnQgbGluZSBpcyAwCj4gPiBhbmQKPiA+IGVu
ZCBsaW5lIGlzIDAuCj4gPiAKPiAKPiBIb3cgZGlkIHlvdSBnZXQgdGhpcyBpbmZvcm1hdGlvbihz
dGFydCBhbmQgZW5kIGxpbmUgMCk/CgpJZiB5b3UgY29uc2lkZXIgd2hhdCBpcyB3cml0dGVuIGlu
dG8gcHNyMiBtYW4gdHJrIGN0bCByZWdpc3RlciBpbiBjYXNlCm9mIGZ1bGwgZnJhbWUgdXBkYXRl
IGluIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bCBhbmQgaW4gCl9wc3JfZmx1
c2hfaGFuZGxlOgoKU0ZGID0gMQpQRlUgPSAxClN0YXJ0IGxpbmUgPSAwCkVuZCBsaW5lID0gMMKg
CgpPbiBuZXh0IHZibGFuayBTRkYgaXMgY2xlYXJlZCBieSB0aGUgaHcuIEFmdGVyIHRoYXQgd2Ug
aGF2ZToKClBGVSA9IDEKU3RhcnQgbGluZSA9IDAKRW5kIGxpbmUgPSAwCgp3aGljaCBpcyBiYXNp
Y2FsbHkgc2VsZWN0aXZlIHVwZGF0ZSB3aXRoIHN0YXJ0IGFuZCBlbmRsaW5lIGFzIDAuIElmCnRo
ZXJlIGlzIGFuIHVwZGF0ZSB3aXRoIHRoaXMgY29uZmlncmF0aW9uIHdlIGFyZSBvYnNlcnZpbmcK
ZnJlZXplL2ZsaWNrZXIuIEkgY2FuIHVzZSBDRkYgaW5zdGVhZCBvZiBTRkYgYXMgYSB3b3JrYXJv
dW5kLiBJIGFsc28KY2hlY2tlZCB0aGF0IGNvbmZpZ3VyaW5nIHN0YXJ0IGFuZCBlbmQgbGluZXMg
YXMgYSBmdWxsIGZyYW1lIGlzIGFsc28KZml4aW5nIHRoZSBpc3N1ZS4gSSBjaG9vc2UgdG8gY29t
ZSBvdXQgd2l0aCB0aGUgZmlyc3Qgb25lLgoKPiAKPiA+IMKgQWxzbyBzZWxlY3RpdmUgZmV0Y2gg
Y29uZmlndXJhdGlvbiBmb3IgdGhlIHBsYW5lcyBpcwo+ID4gbm90IHByb3Blcmx5IHBlcmZvcm1l
ZC4gVGhpcyBzZWVtcyB0byBiZSBjYXVzaW5nIHByb2JsZW1zIHdpdGggc29tZQo+ID4gcGFuZWxz
Lgo+ID4gCj4gPiBVc2luZyBDRkYgd2l0aG91dCBTRkYgZG9lc24ndCB3b3JrIGVpdGhlciBiZWNh
dXNlIGl0IG1heSBoYXBwZW4KPiA+IHRoYXQKPiA+IHBzcjIgbWFuIHRyYWNrIGN0bCByZWdpc3Rl
ciBpcyBvdmVyd3JpdHRlbiBieSBuZXh0IHVwZGF0ZSBiZWZvcmUKPiA+IHZibGFuayB0cmlnZ2Vy
cyBzZW5kaW5nIHRoZSB1cGRhdGUuIFRoaXMgaXMgY2F1c2luZyBwcm9ibGVtcyB0bwo+ID4gcHNy
X2ludmFsaWRhdGUvZmx1c2guIFVzaW5nIENGRiBhbmQgU0ZGIHRvZ2V0aGVyIHNvbHZlcyB0aGUK
PiA+IHByb2JsZW1zCj4gPiBhcyBTRkYgaXMgY2xlYXJlZCBvbmx5IGJ5IEhXIGluIHN1YnNlcXVl
bnQgdmJsYW5rLgo+IAo+IFRoaXMgbG9va3MgZGFuZ2Vyb3VzLCBoYXZlIHlvdSBjaGVja2VkIHdp
dGggSFcgZW5naW5lZXJzIGlmIHNldHRpbmcKPiBib3RoIGNvdWxkIGNhdXNlIGFueSBpc3N1ZT8K
ClllcywgdGhpcyBtYWtlIHNlbnNlLCBJIHdpbGwgY2hlY2sgdGhpcy4KCj4gQXQgdGhlIFNGRiB3
cml0ZSB5b3UgY291bGQgZ2V0IHdoYXQgaXMgdGhlIGN1cnJlbnQgdmJsYW5rIGNvdW50ZXIgYW5k
Cj4gcHJvcGVybHkgaGFuZGxlIGZ1dHVyZSBQU1IyX01BTl9UUktfQ1RMIHdyaXRlcy4KCklzIHZi
bGFuayBjb3VudGVyIHVwZGF0ZWQgd2l0aCB0aGF0IGdyYW51bGFyaXR5PyBFLmcuIGlmIHlvdSBo
YXZlCnBzcl9pbnZhbGlkYXRlL3Bzcl9mbHVzaCBzZXF1ZW5jZSB0aGVyZSBpcyBhbiB1cGRhdGUs
IGJ1dCB2YmxhbmsKaW50ZXJydXB0cyBhcmUgbm90IGVuYWJsZWQ/IEluIGxlZ2FjeSBjdXJzb3Ig
dXBkYXRlIHRoZXJlIGlzIGFsc28gYW4KdXBkYXRlIHdpdGhvdXQgdmJsYW5rIGludGVycnVwdHMg
Z2V0dGluZyBlbmFibGVkLiBIb3cgdmJsYW5rIGNvdW50ZXIKd29ya3Mgd2hlbiB2YmxhbmsgaW50
ZXJydXB0IGlzIGRpc2FibGVkPwoKPiAKPiA+IAo+ID4gRml4IHRoZSBmbGlja2VyaW5nL2ZyZWV6
ZSBpc3N1ZSBieSBhZGRpbmcgY29udGludW91cyBmdWxsIGZyYW1lCj4gPiB3aXRoCj4gPiBzaW5n
bGUgZnVsbCBmcmFtZSB1cGRhdGUgYW5kIHN3aXRjaCB0byBwYXJ0aWFsIGZyYW1lIHVwZGF0ZSBv
bmx5Cj4gPiB3aGVuCj4gPiBzZWxlY3RpdmUgdXBkYXRlIGFyZWEgaXMgcHJvcGVybHkgY2FsY3Vs
YXRlZCBhbmQgY29uZmlndXJlZC4KPiA+IAo+ID4gVGhpcyBpcyBhbHNvIHdvcmthcm91bmQgZm9y
IEhTRCAxNDAxNDk3MTUwOAo+IAo+IFBsZWFzZSB1c2UgdmVyc2lvbnMgaW4geW91ciBwYXRjaGVz
LCB5b3UgaGFkIDIgcGF0Y2hlcyBpbiB0aGUKPiBwcmV2aW91cyBhcHByb2FjaCB3aXRoIHRoZSBz
YW1lIHN1YmplY3QgYnV0IG5vIHZlcnNpb25pbmcgYW5kIG5vCj4gaW5mb3JtYXRpb24gYWJvdXQg
d2hhdAo+IGNoYW5nZWQgYmV0d2VlbiB2ZXJzaW9ucy4KCkZpcnN0IG9uZSB3YXMgc2VudCB0byB0
cnlib3QgYW5kIHRoZW4gdG8gaW50ZWwtZ2Z4LiBJbiB0aGlzIG9uZSBJCmNoYW5nZWQgdGhlIHN1
YmplY3QuIFNvIEkgd2FzIHRoaW5raW5nIGl0J3Mgb2sgdG8gbGVhdmUgb3V0IHZlcnNpb25pbmcu
Ckkgd2lsbCBhZGQgdmVyc2lvbmluZyB3aGVuIHNlbmRpbmcgYWdhaW4uCgo+IAo+ID4gCj4gPiBD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENj
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+IENjOiBN
aWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgo+ID4gCj4gPiBSZXBvcnRlZC1ieTog
TGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxOSArKysrKysrKysrLS0t
LS0tLS0tCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
Cj4gPiBpbmRleCA1YjY3ODkxNmU2ZGIuLjg4Mzg4MjAxNjg0ZSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IEBAIC0xNTEwLDcgKzE1MTAsOCBA
QCBzdGF0aWMgdm9pZCBwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChzdHJ1Y3QKPiA+IGludGVs
X2RwICppbnRlbF9kcCkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQU1IyX01BTl9UUktfQ1RMKGludGVsX2RwLQo+ID4gPnBz
ci50cmFuc2NvZGVyKSwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYW5fdHJrX2N0bF9lbmFibGVfYml0X2dldChkZXZfcHJp
dikKPiA+IHwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoAo+ID4gbWFuX3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRl
dl9wcml2KSB8Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoAo+ID4gbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dl
dChkZXZfcHJpdikpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+IG1hbl90cmtfY3RsX3NpbmdsZV9mdWxsX2ZyYW1lX2Jp
dF9nZXQoZGV2X3ByaXYpIHwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiBtYW5fdHJrX2N0bF9jb250aW51b3NfZnVsbF9m
cmFtZShkZXZfcHJpdikpOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gwqDCoMKg
wqDCoMKgwqDCoCAqIERpc3BsYXkgV0EgIzA4ODQ6IHNrbCsKPiA+IEBAIC0xNjI0LDExICsxNjI1
LDggQEAgc3RhdGljIHZvaWQgcHNyMl9tYW5fdHJrX2N0bF9jYWxjKHN0cnVjdAo+ID4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiA+IMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gbWFuX3Ry
a19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRldl9wcml2KTsKPiA+IMKgCj4gPiDCoMKgwqDC
oMKgwqDCoMKgaWYgKGZ1bGxfdXBkYXRlKSB7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgLyoKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBOb3QgYXBwbHlp
bmcgV2FfMTQwMTQ5NzE1MDg6YWRscCBhcyB3ZSBkbyBub3QKPiA+IHN1cHBvcnQgdGhlCj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogZmVhdHVyZSB0aGF0IHJlcXVpcmVzIHRo
aXMgd29ya2Fyb3VuZC4KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsIHw9Cj4gPiBtYW5fdHJrX2N0bF9z
aW5nbGVfZnVsbF9mcmFtZV9iaXRfZ2V0KGRldl9wcml2KTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB2YWwgfD0gbWFuX3Rya19jdGxfY29udGludW9zX2Z1bGxfZnJhbWUoZGV2
X3ByaXYpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBnb3RvIGV4aXQ7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gwqAKPiA+IEBAIC0yMzA3LDEyICsyMzA1LDE1IEBAIHN0
YXRpYyB2b2lkIF9wc3JfZmx1c2hfaGFuZGxlKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2Rw
KQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyog
Y2FuIHdlIHR1cm4gQ0ZGIG9mZj8gKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLmJ1c3lfZnJvbnRidWZmZXJfYml0
cyA9PQo+ID4gMCkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUzMiB2YWwgPQo+ID4gbWFuX3Rya19jdGxfZW5hYmxl
X2JpdF9nZXQoZGV2X3ByaXYpIHwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gbWFu
X3Rya19jdGxfcGFydGlhbF9mcmFtZV9iaXRfZ2V0KGRldl9wcml2KSB8Cj4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAKPiA+IG1hbl90cmtfY3RsX3NpbmdsZV9mdWxsX2ZyYW1lX2JpdF9nZXQo
ZGV2X3ByaXYpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1hbl90cmtfY3RsX3BhcnRpYWxf
ZnJhbWVfYgo+ID4gaXRfZ2V0KGRldl9wcml2KSB8Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
bWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhCj4gPiBtZV9iaXRfZ2V0KGRldl9wcml2KSB8Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWFuX3Rya19jdGxfY29udGludW9zX2Z1bGxfCj4gPiBm
cmFtZShkZXZfcHJpdik7Cj4gCj4gc3R5bGUuCj4gCj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKiB0dXJuIGNvbnRpbnVvdXMgZnVsbCBmcmFtZSBvZmYKPiA+IGFuZCBkbyBhIHNpbmds
ZQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICogZnVsbCBmcmFtZQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogdHVybiBjb250aW51b3VzIGZ1
bGwgZnJhbWUgb2ZmCj4gPiBhbmQgZG8gYSBzaW5nbGUgZnVsbCBmcmFtZS4gU3RpbGwKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqIGtlZXAgY2ZmIGJpdCBlbmFibGVkIGFzIHdlIGRvbid0Cj4gPiBoYXZlIHByb3BlciBT
VSBjb25maWd1cmF0aW9uIGluCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBjYXNlIHVwZGF0ZSBpcyBzZW50IGZvciBh
bnkKPiA+IHJlYXNvbiBhZnRlciBzZmYgYml0IGdldHMgY2xlYXJlZCBieQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICog
dGhlIEhXIG9uIG5leHQgdmJsYW5rLgo+IAo+IAo+IHR1cm4gb2ZmIGFuZCBrZWVwIGJpdCBlbmFi
bGVkPyEgbWFrZXMgbm8gc2Vuc2UgdGhpcyBjb21tZW50Lgo+IAo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGludGVsX2RlX3dyaXRlKGRldl9wcml2LAo+ID4gUFNSMl9NQU5fVFJLX0NUTChpbnRl
bF9kcC0+cHNyLnRyYW5zY29kZXIpLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgdmFsKTsKPiAKCg==
