Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD17E4A8E4B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 21:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC57810E76A;
	Thu,  3 Feb 2022 20:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE6610E76A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 20:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643920627; x=1675456627;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fR7r9h57wJqRyFnWPpPakkGWSj9+GNvz5NXkoiiB1ZA=;
 b=kYyuitCL0tVjc9DVyUWZroyl6BWeEQqFa8HkrQ8x82tcBOWBZAgKZ9c3
 AAlQD1zBoEoPy3GBet3KNV/IJPYseNK/iYhAv3as76mhUjgs1on7qfh0H
 6s8ycb92Fv+q+oc1mf/dlIy+/0Zpd5bPNmRNYukXbLBkwxnELhjhh8gtn
 oYjdtTiPpl7g1jEGSt6yt6CHXCTbXB2SxaiigtTh0C+giJjOsWv0hhfDs
 nbTMZ8aM67UtDBZW4b1orjgGSGxHsuzN5zzJjTMZtyoO9uHeBYkiXXANx
 BDuPzxqDDXc8s4478Qkpt+i6rcCMLwfQ6/04GbBmfOC997UtFk41UZ8n7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="231816744"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="231816744"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 12:37:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483382183"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 03 Feb 2022 12:37:07 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 12:37:06 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 12:37:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 3 Feb 2022 12:37:06 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 3 Feb 2022 12:37:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbfBrpesbKQJkyl8IF+kfMFvSmu90XMkLft4uTdprTiA15kf5nAXgFQsc8qX1MAEiziCKPsCZzBaeAfBaw5HxCpEbIJr8YwdDgprJS8vGt80M2b/B41sPvgW90+mRA+bQFzKYw4M5KQQZWl7JcnjdYD06A/6pygDTe+n0hmSeYVUenJ/QRg4N3Y/yjjJ3vG/Jsr9GxjvvKqvoexBXAt63etiblMo0Xxat4nzdwYwLVclDKd47hIpiE7I59h9OM5QuxDVIGFOraiQLrT+EGy6F7Tn2rRhtkoF5tNBM4kWkCaXsAItY7KVylsvLXuMyGCCD2stzt1gdAl4mCnV+rqvXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fR7r9h57wJqRyFnWPpPakkGWSj9+GNvz5NXkoiiB1ZA=;
 b=WKKQ7bDnlN3bxqCwtPiQ1z6ZT9NTAQONrDSxDlBzvByXkhF6sl1KpSr5RUWRP3Dd2zF34ryEmCmfKVdUKitHnFNF0U2gZ9+g2wJZy9nMAeJ8hUeiWUYC1FD4MGvCfzSyACb/KHCEcYisgXZqtxD3dFTOw5CV3D2hk+NbhkhxknJgjdi/ZLoQX8ny5BVTpN8h2+ya3uxpqWrz4RUS0ml/1DkseNsiUGtfnzzDWOr1uUQCrzgZmjpudkVolGuqRJhR5vSM/rOOopAJvAKHu1kAupdu3VLt/pSrJX+C6gRI65ycScTxpXoG7TmFlMi5wb/WduzBtu/bOoOW8oINtKtEdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM5PR11MB1707.namprd11.prod.outlook.com (2603:10b6:3:14::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Thu, 3 Feb
 2022 20:37:04 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4930.022; Thu, 3 Feb 2022
 20:37:03 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>, "Harrison, John C"
 <john.c.harrison@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
Thread-Index: AQHYEqH5AesT2BN4CkW6nekEruHB2ax1582AgAxUXgCAABEugIAACZeA
Date: Thu, 3 Feb 2022 20:37:03 +0000
Message-ID: <d96b56cd199796f429263ebb5335d97dfd2d9e3d.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
 <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
 <20220203190324.GA4413@jons-linux-dev-box>
 <20220203200453.jrxhact4bcmwfpw7@ldmartin-desk2>
In-Reply-To: <20220203200453.jrxhact4bcmwfpw7@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8184cd1c-5382-41e4-4b06-08d9e754f007
x-ms-traffictypediagnostic: DM5PR11MB1707:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB170774251934BE3070E6F7CA8A289@DM5PR11MB1707.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ws/RpNvLn1A36srsIEtFi6rRH/awx+eDTKle0SPE/3PUybAZAYwcA96Z2iovnR57k30EoRtIEp4P9kxchJW6uOO+MANnAvyfCHOpEm8MIgI+DrmnDIJ7oS//rgy9BUywMOYasqhIDO3PG2Z7Qjn/bN70QU3Wo+M3ne44GQuaxP/yAhvw4uZsR7Enc5F4a8A+543UKvtnUuiy28UDrNpu3QwcIdWMyH3L3q1KpuQ02TA8oHmFNIA998VuOTlxfghgdcld15bEh+LyG3T256HoSde6yx8jd22G+cJZmtzapYZyEOiys8AzWQ+JWpOif+GeKXk2Ek1gY+kgLZalk8U2UawaxPGJqZG3DVf/DtawQmw8kEw/1ZO69pGVRlRNXJzVYuuvdpdc6ccgqNe6J5rTcFU9287oVl9CAdiANwEeCRn3c0jIEAownEJnD32DNQd4MYaGpO0ldiAYVH9ep4SUC8sJd0nUI4IA3BhGYbD1WYCN6353jW1qqepyCv4WX01De8nnbhj9Jg+JjCWZCx1sHUPpdczpe5lbdzkJVchtzFMVNKQisnwulmnCbouypXdbTM/dvgip2fVffrdhYHghgeqbecuPALyUUoxaiWEQX7semEl5fZi6mV2CIza7sj1XgaLtTIeA71XuEd0niz0c+olRasbZcV3cAfGHPf/HsKKbVSo7kmhgQSE2XaAmZSFmrBT+xdugu5lLG4qF9lbHYIc7dadf13t2/ooohOuxD7U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(82960400001)(966005)(122000001)(5660300002)(15650500001)(6506007)(6486002)(6512007)(38070700005)(86362001)(38100700002)(2906002)(71200400001)(6636002)(8936002)(64756008)(66446008)(110136005)(83380400001)(8676002)(76116006)(66946007)(66556008)(66476007)(186003)(26005)(4326008)(316002)(2616005)(36756003)(522954003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2JrYm5vTkdPWm5Yb25lTlZVeC9QWWpYREwySm9USXk2UVdKVVpTc3kxT2V0?=
 =?utf-8?B?T3RLek1wWmNhTnNyMTVDZUE2Z0Z1ZG8rR3h5b3lySVM1UVpBWm9VNXN3bXdR?=
 =?utf-8?B?V01sOVExRnBkMU93N2k4Mk5NQ0ZIYUprOWl2cVpNTU8yb3RxUkJhTmkzaTFL?=
 =?utf-8?B?d1E3SFRpcG5CeHlSWFVOUEsrRHd6Q09XNldUWkpQZjJ2cURQUytRYmI3NTNq?=
 =?utf-8?B?Skpod2lFUndlTGNGOWFKb2d2ZGpnQjE0NU1wZ2tTRzFlTHBHUzlnRjZ2ZkpJ?=
 =?utf-8?B?TytTTjZBNDUzYm1tR3ArZFZmVEIrdEFqcTE1UFplaENxekc4T3BPNzJ0Nlp1?=
 =?utf-8?B?WTZsaEVIc2dsQTZFdVpwOXVyY2p6WnlwQXZmdDhmK3Q5cHBLczZ3VWNlQmlv?=
 =?utf-8?B?SFNXSWJJcER0TnVXTTRKZkpSSlRQSVQ1ZitIZytxUkhkV0JYck1IdVZvZE92?=
 =?utf-8?B?R1k0bSswSER6bXU0cnJIUk5EWEtSbEJsdWg3cy9uME9sNnM1VkV3clNzZ1Vr?=
 =?utf-8?B?VHFpU1E2bGRUdEZSZWQ3UjNWaFl5NFdsSU82TmUzWnA4VzFKRng2V1BScVZJ?=
 =?utf-8?B?aGFsaG9nYTV4Y2JkY1AvUXBNSnJEbjc0ZVo1WStyVjB1YVVkWHcyaElHRWlV?=
 =?utf-8?B?a1hHVFdQbXc3K2pVR0t2T3oxZ3RnRWU5ek5IZzJJN1lEVlA4MVJXT0l1Z1hM?=
 =?utf-8?B?d0gzS1FoanBVMDYvOE44aEs1M3A2a0NlUG5sSktiNXBWOCtpaVV4Y0hZYkVv?=
 =?utf-8?B?SUkzYktXN2x6SW1JVHNCd256VXBidFZMOEhxS0Y5RmlHTjdTNkt4TWtqS1dX?=
 =?utf-8?B?TW05Qmw1VU56N01xb1QxY0xvbVZ2OWtKMUp2UXJVeDZDbENMQTcwaUprOWJ2?=
 =?utf-8?B?c21uQWlPU2hkbU9ESWVidHdVbktpRy9nQlV3QWV3LzE0SExFQUJsam9qOFdm?=
 =?utf-8?B?L0pJVGc2UDhldGF4UXdKd3MxVjg5K3hPMEhCYnFzRks2RGhUS1lHbmFYR3U4?=
 =?utf-8?B?ZU0rTlAxWFF3c1dCTHRuTDlnZk5PaVFoeEExYURoeGlLTS9Dai9xT2x0bmMr?=
 =?utf-8?B?WUVmaDgvTUkwUlJNZ3JjMlBzTE8wOWYxN2JNSGxFZWt5VlBSNENRT2VtMzlB?=
 =?utf-8?B?b0hRSGNLRXpiOXlqM3lLdWErZEl6TFBoOUZtbjhmL1V6TFZuTW1SOGVjZ2RH?=
 =?utf-8?B?RWFlSXpBdHZtVFJPTFB1QVU1Uzl5alU4dk0yNHdKY3NLNDlRdGJnMjVlK01M?=
 =?utf-8?B?YkVPMTNXVXVVOXZONEIwaWVlTGd2UEJ6N0ZyQlF1S3RYYmZwTWxmOVRxT3RM?=
 =?utf-8?B?a0VjWTRMcUdnMy9UbGJXNEg4eEtmdWZoMmxjRnAwc21GM05rcEpPU0NSdTMv?=
 =?utf-8?B?MXJJbWdNdTlta01YOGhnd1lQODJVWWRKWHVRb2huWVdCQ0hibkpmakZETmlK?=
 =?utf-8?B?YWd4VHJPUExxSDRpMXdGSFRZOS9pQWFOTVNYYUFPQ1d4WGU0emlNcnM1V3dP?=
 =?utf-8?B?eERlVDVMTWNmcTdNMXE2QWNsQmR1V3Yzc0JMYlZZc1M5VUVlRVNqOTRoVk5y?=
 =?utf-8?B?a3Y1Szc3ckJFemhVQVJJUlpvbHlpVzBBdTRnckZwbUgzZGNTalZYc1c5ZDI1?=
 =?utf-8?B?c0srYjFRMmpJSm84WS9tREZMTjJ3SEtDVnozd04yeWVEZEJGUjF3UEFaamFz?=
 =?utf-8?B?MnBtQ1RIajI1RzdFVjVlZHJ2eDVlVXd1ak03WS9YemhnTXIyYWRrS2dQSUx1?=
 =?utf-8?B?dDM1VHBWblkvVmxvV0paenVKK2xwNU55cW1IdkZyR3ZrVGNyamVIc2JXbEFC?=
 =?utf-8?B?MjFxRE5qQktLN0dZUkJNUnJVZm42MGx2TlZkY1ZFRXFsZlFmeW4reW8rVWh5?=
 =?utf-8?B?ZTRtOFg0ZXhpdWo0VmNBNlFaQlZOeDdsbDN4T2FxbzVWeGdKZUZjK0lzQlEx?=
 =?utf-8?B?TGdEc1ZmQXd4bUc5RzIzU2Q3bXNPcjhXL2R1RDVHOFA3YVBzS3lqbkRoMXEv?=
 =?utf-8?B?eDh2dlFMaGpJNzVGWlllY0dPRlVuRUQ5QldjWit3UGFQZmNzQnVZSmk4MzFs?=
 =?utf-8?B?QnZMOTZtVDRBSWN5cFhmZUgzNjhQK1lVaXlKQXkzaG5TSnhreXE0cWQ1NnJr?=
 =?utf-8?B?OVdMT2dPVlNYSHUrenNadjB5Z01mcm5LdTRYOE1rSVFSYUVSamV1a3JIQzRJ?=
 =?utf-8?B?aFN5SVlMM3dOdDNhbnBabmRscUtWTEFLaEpMWnBUbys3TlJqaDZ0STA2S3M3?=
 =?utf-8?B?bDkwSXJEVytUTEFFQkY1cDU0dVdlZmEvYkgyZkZPMUJxb09yek1jNjN2V0pv?=
 =?utf-8?B?a2x0TXJrdStFTG5sVzlFQ2FKMi83UjVaaXlUekhpVk1VcDBrdHAxUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <56E1673698011043B79868D67AACA3DC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8184cd1c-5382-41e4-4b06-08d9e754f007
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 20:37:03.8977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W7aewFjAXtKYYKcvpj6LSj6IFi6hQx3YtuZg5FKSmDLvysAu+Ugqxs4lzAmohBXiFIqucPMS65nzlnueqAhoNn8/6OUqA+Jb+oyAv5u6kcqTH3X0KBZ9XO69ioQkpx85
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1707
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBjYW4gcmVmYWN0b3IgbXkgY29kZSB0byBlbmZvcmNlIGFuIG93bmVyIG1vZHVsZSB0byBvbmx5
IHJldHVybiB0aGUgc2l6ZSBhbmQgYW4gaW50ZXJpbQ0KYnVmZmVyIHBvaW50ZXIgKGt6YWxsb2Ms
IG5vdCBpbyBtZW0pIGFuZCBoYXZlIEFEUyBtZW1jcHkgZnJvbSB0aGF0IHBvaW50ZXIgaW50byB0
aGUgQURTDQpzdWJzdHJ1Y3R1cmUgcG9pbnRlci4uIA0KDQpCdXQgSSBob3BlIHdlIGNhbiBtYWtl
IGl0IGEgcnVsZSB0aGF0IGl0cyBva2F5IGZvciBhbiBleHRlcm5hbCBvd25lci1tb2R1bGUgdG8g
DQprbm93IGFuZCBkZWZpbmUgdGhlIGxheW91dCBvZiB0aGUgMm5kIGxldmVsIHN1YnN0cnVjdHVy
ZSBsYXlvdXQuIFRoaXMgd291bGQgYWxsb3cNCmZ1dHVyZSBuZXcgQURTIHN1YnN0cnVjdHVyZSB0
byBoYXZlIHNlcGFyYXRlIG93bmVyLW1vZHVsZXMgaGFuZGxlIHRoZSBkZWZpbml0aW9uDQpvZiB0
aGUgc3Vic3RydWN0dXJlIGxheW91dA0KDQpzb21ldGhpbmcgbGlrZSB0aGlzOg0KDQpndWNfYWRz
X3RvcF9md2lmLmgNCg0KQURTIG93bnMgdG9wIGxldmVsIEFEUw0Kew0KICAgIHUzMiBwdHIxOy8v
IHN1YnN0cnVjdF9mb28xDQogICAgdTMyIHB0cjI7Ly8gc3Vic3RydWN0X2ZvbzINCiAgICB1MzIg
cHRyMzsvLyBzdWJzdHJ1Y3RfZm9vMw0KCS4uLg0KfQ0KDQpndWNfY2FwdHVyZV9wcml2YXRlLmgN
Cg0Kc3Vic3RydWN0X2Zvbw0KDQoNCg0KU28gcHV0dGluZyBhc2lkZSB0aGUgZmFjdCB0aGF0IGFs
cmVhZHkgaGF2ZSBBRFMgY29udGFpbmluZyB0aGUga25vd2xlZGdlIGZvcg0KZ29sZGVuIGNvbnRl
eHQsICByZWdpc3Rlci1zYXZlLXJlc3RvcmUsIGFuZCBvdGhlcnMsIGJ1dCBtb3ZpbmcgZm9yd2Fy
ZCBpIGFtIGhvcGluZw0Kd2UgY2FuIGF2b2lkIHBpbGluZyBvbiBtb3JlIGFuZCBtb3JlIHVucmVs
YXRlZCBsb3cgbGV2ZWwga25vd2xlZGdlIGluc2lkZSBvZiBBRFMuDQoNClRoZSB0aGUgZXJyb3Ig
Y2FwdHVyZSBzdWJzdHJ1Y3R1cmUgbGF5b3V0IGhhcyBhd2FyZW5lc3Mgb2YgcGVyIFBGLXZzLVZG
LCBnbG9iYWwgdnMNCmVuZ2luZS1jbGFzcyB2cyBlbmdpbmUtaW5zdGFuY2UgYW5kIG90aGVyIGZ1
c2Utc3BlY2lmaWMgYXdhcmVuZXNzLiBTbyBpIGFtIGhvcGluZw0Kd2UgY2FuIGFsbG93IG90aGVy
IG1vdWxlcyB0byBvd24gdGhlIGRlZmluaXRpb24gYW5kIHBhcnNpbmcgb2YgdGhlIHN1YnN0cnVj
dHVyZQ0KbGF5b3V0Lg0KDQouLi5hbGFuDQoNCg0KT24gVGh1LCAyMDIyLTAyLTAzIGF0IDEyOjA0
IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6DQo+IE9uIFRodSwgRmViIDAzLCAyMDIyIGF0
IDExOjAzOjI0QU0gLTA4MDAsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6DQo+ID4gT24gV2VkLCBKYW4g
MjYsIDIwMjIgYXQgMDI6NDY6MTlQTSAtMDgwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOg0KPiA+
ID4gT24gV2VkLCBKYW4gMjYsIDIwMjIgYXQgMDI6NDg6MTNBTSAtMDgwMCwgQWxhbiBQcmV2aW4g
d3JvdGU6DQo+ID4gPiA+IFVwZGF0ZSBHdUMgQURTIHNpemUgYWxsb2NhdGlvbiB0byBpbmNsdWRl
IHNwYWNlIGZvcg0KPiA+ID4gPiB0aGUgbGlzdHMgb2YgZXJyb3Igc3RhdGUgY2FwdHVyZSByZWdp
c3RlciBkZXNjcmlwdG9ycy4NCj4gPiA+ID4gDQo+ID4gPiA+IEFsc28sIHBvcHVsYXRlIHRoZSBs
aXN0cyBvZiByZWdpc3RlcnMgd2Ugd2FudCBHdUMgdG8gcmVwb3J0IGJhY2sgdG8NCj4gPiA+ID4g
SG9zdCBvbiBlbmdpbmUgcmVzZXQgZXZlbnRzLiBUaGlzIGxpc3Qgc2hvdWxkIGluY2x1ZGUgZ2xv
YmFsLA0KPiA+ID4gPiBlbmdpbmUtY2xhc3MgYW5kIGVuZ2luZS1pbnN0YW5jZSByZWdpc3RlcnMg
Zm9yIGV2ZXJ5IGVuZ2luZS1jbGFzcw0KPiA+ID4gPiB0eXBlIG9uIHRoZSBjdXJyZW50IGhhcmR3
YXJlLg0KPiA+ID4gPiANCj4gPiA+ID4gTk9URTogU3RhcnQgd2l0aCBhIHNhbXBsZSB0YWJsZSBv
ZiByZWdpc3RlciBsaXN0cyB0byBsYXlvdXQgdGhlDQo+ID4gPiA+IGZyYW1ld29yayBiZWZvcmUg
YWRkaW5nIHJlYWwgcmVnaXN0ZXJzIGluIHN1YnNlcXVlbnQgcGF0Y2guDQo+ID4gPiA+IA0KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlz
QGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiANCj4gPiA+IC4uLg0KPiA+ID4gDQo+ID4g
PiA+IHN0YXRpYyB2b2lkIF9fZ3VjX2Fkc19pbml0KHN0cnVjdCBpbnRlbF9ndWMgKmd1YykNCj4g
PiA+ID4gew0KPiA+ID4gPiAJc3RydWN0IGludGVsX2d0ICpndCA9IGd1Y190b19ndChndWMpOw0K
PiA+ID4gPiBAQCAtNTczLDkgKzU1Myw5IEBAIHN0YXRpYyB2b2lkIF9fZ3VjX2Fkc19pbml0KHN0
cnVjdCBpbnRlbF9ndWMgKmd1YykNCj4gPiA+ID4gDQo+ID4gPiA+IAliYXNlID0gaW50ZWxfZ3Vj
X2dndHRfb2Zmc2V0KGd1YywgZ3VjLT5hZHNfdm1hKTsNCj4gPiA+ID4gDQo+ID4gPiA+IC0JLyog
Q2FwdHVyZSBsaXN0IGZvciBoYW5nIGRlYnVnICovDQo+ID4gPiA+IC0JZ3VjX2NhcHR1cmVfbGlz
dF9pbml0KGd1YywgYmxvYik7DQo+ID4gPiA+IC0NCj4gPiA+ID4gKwkvKiBMaXN0cyBmb3IgZXJy
b3IgY2FwdHVyZSBkZWJ1ZyAqLw0KPiA+ID4gPiArCWludGVsX2d1Y19jYXB0dXJlX3ByZXBfbGlz
dHMoZ3VjLCAoc3RydWN0IGd1Y19hZHMgKilibG9iLCBiYXNlLA0KPiA+ID4gDQo+ID4gPiBubywg
cGxlYXNlIGRvbid0IGNhc3QvZXhwb3J0IHN0cnVjdCBndWNfYWRzIGxpa2UgdGhpcy4gV2UgY2Fu
J3QgcmVhbGx5DQo+ID4gPiBkZXJlZmVyZW5jZSBpdCBzaW5jZSBpdCBtYXkgYmUgaW4gSU8gbWVt
b3J5Lg0KPiA+ID4gDQo+ID4gPiBTZWUgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy85OTM3OC8gd2l0aCB0aGUgaHVnZQ0KPiA+ID4gcmVmYWN0b3IgaW4gdGhpcyBmaWxl
IHRvIG1ha2UgaXQgY29uZm9ybSB0byB0aGUgcnVsZXMgb2YgYWNjZXNzaW5nIElPDQo+ID4gPiBt
ZW1vcnkuDQo+ID4gPiANCj4gPiA+IE1heWJlIHRoaXMgbGlzdCBjb3VsZCBiZSBhcHBlbmRlZCBp
biB0aGUgc2FtZSByZWdsaXN0IGJ1ZmZlciBhbmQgd2UganVzdA0KPiA+ID4gY29weSBpdCBvbmNl
IHRvIGl0cyBmaW5hbCBsb2NhdGlvbiwgbGlrZSB3ZSBhcmUgZG9pbmcgd2l0aCB0aGUgcmVnbGlz
dD8NCj4gPiA+IA0KPiA+IA0KPiA+IEFncmVlIHdpdGggTHVjYXMgaGVyZSwgbGV0J3MgY3JlYXRl
IHRoZSBjYXB0dXJlIGxpc3Qgb24gcHJvYmUgYW5kIHN0b3JlDQo+ID4gaXQgc29tZXdoZXJlIGlu
IHRoZSBkZXZpY2UgZGF0YS4gT24gQURTIHBvcHVsYXRpb24gdGhpcyBtb3JlIG9yIGxlc3MNCj4g
PiB0dXJucyBpbnRvIGEgbWVtY3B5IChvciBhZnRlciBMdWNhcydzIHNlcmllcyBhIGRtYS1idWYt
bWFwIGNhbGwpLiBBbmQgb24NCj4gPiBmaW5pLCBqdXN0IGZyZWUgdG8gc3RvcmVkIGRhdGEuIFRo
ZSBjcmVhdGUgY2FwdHVyZSBsaXN0IElNTyBpcyBmaW5lIHRvDQo+ID4gYmUgZG9uZSBpbiBhbiBl
eHRlcm5hbCBmaWxlIGFuZCByZXR1cm4gdGhlIGRhdGEgdG8gdGhlIEFEUyBjb2RlIGJ1dA0KPiA+
IGxldCdzIG1ha2Ugc3VyZSBldmVyeW9uZSBpcyBvbiBib2FyZCB3aXRoIHRoYXQuIE1heWJlIHBp
bmcgTHVjYXMNCj4gPiBkaXJlY3RseSBhYm91dCB0aGlzPw0KPiANCj4geWVhaCwgc291bmRzIGdv
b2QgdG8gbWUuIE15IHdvcnJ5IGlzIGV4cG9ydGluZyBBRFMgc3RydWN0IGxheW91dCB0bw0KPiBv
dGhlciBjb21waWxhdGlvbiB1bml0cy4gQXNraW5nIGZvciB0aGUgZW50aXJlIGFkcyBibG9iDQo+
IChvciB3aGF0IHdvdWxkIGJlIGRtYV9idWZfbWFwIGluIG15IHBhdGNoZXMsIG9yIGlvc3lzX21h
cCBpbiB0aGUgbmV3DQo+IHZlcnNpb24gSSB3aWxsIHNlbmQgc29vbikgY291bGQgcXVpY2tseSBz
cHJlYWQgdG9vIG11Y2gga25vd2xlZGdlIGFib3V0IGl0IHRvDQo+IHRoZSByZXN0IG9mIHRoZSBk
cml2ZXIuDQo+IA0KSSdtIGluIHBhcnRpYWwgZGlzYWdyZWVtZW50IHdpdGggYWJvdmUuIEJhc2Vk
IG9uIGFib3ZlIHN0YXRlbWVudCwgYXJlIHdlIGVuZm9yY2luZw0KdGhhdCB3ZSBtdXN0IGFsd2F5
cyBjb250aW51ZSB0byBvbmx5IGhhdmUgQURTIGtub3cgdGhlIDJuZCBsZXZlbCBibG9ibCBzdHJ1
Y3R1cmUgbGF5b3V0Pw0KRG9lc24ndCB0aGF0IGFsc28gZm9yY2UgdGhhdCBpbnRlbGxpZ2VuY2Ug
b2Yga25vd2luZyBpdHMgc3Vic3RydWN0dXJlIGNvbnRlbnRzIHRvDQphbHdheXMgYmUgaW4gQURT
IG9ubHk/IFNvIEFEUyBDIGZpbGUgY29udGludWVzIHRvIGdyb3cgbGFyZ2VyIGFuZCBsYXJnZXIg
d2l0aCBjb21wbGV0ZWx5DQpvcnRob2dvbmFsIGRvbWFpbiBzcGVjaWZpYyBrbm93bGVkZ2U/IChn
b2xkZW4gY29udGV4dDogZW5naW5lIGluZm8sDQplcnJvci1jYXB0dXJlOiBkZWJ1ZyByZWdpc3Rl
cnMsIGV0Yy4uKS4NCkkgYmVsaWV2ZSBBRFMgc2hvdWxkIHJlYWxseSBsZXQgdGhlIHN1YnN0cnVj
dHVyZSBoZWFkZXJzIGJlIGFjY2Vzc2libGUgdG8gZXh0ZXJuYWwNCm1vZHVsZXMgdG8gZGVhbCB3
aXRoIHRoZSBwYXJzaW5nLCBzaXplIGRldGVybWluYXRpb24gYW5kIHByZXBhcmluZyBpdHMgY29u
dGVudHMuDQoNCk5PVEU6IHNlZSBteSBuZXh0IGNvbW1lbnQgc3BlY2lmaWNhbGx5IHJlZ2FyZGlu
ZyB0aGUgcG9pbnRlciBhY2Nlc3MuDQoNCj4gSSB0aGluayB3ZSBzaG91bGQgYXQgbW9zdCBleHBv
cnQgdGhlIHNwZWZpY2ljIG9mZnNldCBpbnNpZGUgdGhlIGJ1ZmZlcg0KPiBhbm90aGVyIGNvbXBp
bGF0aW9uIHVuaXQgY2FuIGZpbGwgb3V0LiBJbiB0aGF0IGNhc2Ugd2l0aCB0aGUNCj4gaW9zeXNf
YnVmIEFQSSB3ZSB3b3VsZCByZXR1cm4gYSBzaGFsbG93IGNvcHkgb2Ygb3VyIGd1Yy0+YWRzX21h
cCArDQo+IG9mZnNldC4NCj4gDQo+IEFuZCB0aGUgb3RoZXIgYWx0ZXJuYXRpdmUgd291bGQgYmUg
YXMgeW91IHN1Z2dlc3RlZDogc2F2ZSB0aGUgbGlzdCBpbiBhDQo+IHRlbXBvcmFyeSBidWZmZXIg
YW5kIHdoZW4gbmVlZGVkIGNhbGwgaW50ZWxfZ3VjX2FkcygpIHRvIHBvcHVsYXRlIHRoYXQNCj4g
aW50byBhZHMgaW4gdGhlIHJpZ2h0IHBsYWNlLg0KPiANCg0KQWxhbjogVGhlIGZpcnN0IHBhcnQg
b2YgYWJvdmUgaXMgYWxyZWFkeSB3aGF0IGlzIGhhcHBlbmluZyBpbiBteSBzZXJpZXMgdG9kYXks
DQp3ZSBoYXZlIGEgc2VwZXJhdGUgcmVnaXN0ZXIgbGlzdCAgaW4gdGhlIGludGVsX2d1Y19jYXB0
dXJlIG1vZHVsZQ0KdGhhdCBhbHNvIGRldGVybWluZXMgKGJhc2VkIG9uIGRldmljZSBhbmQgZnVz
aW5nKSB3aGljaCByZWdpc3RlcnMNCnRvIGluY2x1ZGUgb3IgZXhjbHVkZS4gVGhlcmUgaXMgYXJl
IHN0YXRpYyBnbG9iYWwgbGlzdHMgYW5kDQpwZXItZ3QtYWxsb2NhdGVkIGxpc3RzIChiYXNlZCBv
biBmdXNlIG1hc2tzKS4gVGhlIGxhdHRlcg0KaXMgbm90IGluIGN1cnJlbnQgcmV2IGJ1dCBhbHJl
YWR5IGNvbW1lbnRlZCBhcyBwbGFubmVkIGNoYW5nZS4NCg0KU28gaW4gcmVzcG9uc2UgdG8gdGhl
IG9yaWdpbmFsIHJldmlldyBjb21tZW50LCBJIGNhbiBjaGFuZ2UgdGhpcw0KcGF0Y2ggc28gdGhh
dCB0aGUgQURTIGdldHMgYSByZWd1bGFyIGhlYXAta3phbGxvYy1hbGxvY2F0ZWQgcG9pbnRlciBh
bmQNCnNpemUgZnJvbSB0aGUgZXJyb3ItY2FwdHVyZSBtb2R1bGUgYW5kIEFEUyBkbyB0aGUgY29w
eWluZyBpbnRvIHRoZQ0KaW8tbWVtIHB0ciBidXQgaSB3YW50IHRvIGVuc3VyZSB0aGUgbGF5b3V0
IG9mIHRoZSBlcnJvci1jYXB0dXJlIA0KbGlzdHMgYXJlIG5vdCBwcml2YXRlIHRvIEFEUyBvbmx5
Lg0KDQpBcmUgd2Ugb2theSB3aXRoIHRoYXQ/DQoNCj4gVGhlIGludGVncmF0aW9uIHdpdGggaW9z
eXMtbWFwIEkgY2FuIGZpZ3VyZSBvdXQgaWYgbXkgcGF0Y2ggc2VyaWVzIGxhbmRzDQo+IGFmdGVy
IHRoaXMgb25lLCBvciBJIGNhbiBoZWxwIHJlYmFzaW5nIHRoaXMgb3RoZXJ3aXNlLiBCdXQgSU1P
IHdlDQo+IHNob3VsZCBub3QgcGFzcyB0aGUgcGxhaW4gYmxvYiBwb2ludGVyIGFyb3VuZCByZWdh
cmRsZXNzIG9mIGlvc3lzLW1hcC4NCj4gDQo+IA0KPiB0aGFua3MNCj4gTHVjYXMgRGUgTWFyY2hp
DQo+IA0KPiA+IFNwZWNpZmljIHBhdGNoIEx1Y2FzJ3MgaXMgcmVmZXJlbmNpbmc6DQo+ID4gaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQ3MTA1MS8/c2VyaWVzPTk5Mzc4
JnJldj0xDQo+ID4gDQo+ID4gTWF0dA0KPiA+IA0KPiA+ID4gTHVjYXMgRGUgTWFyY2hpDQoNCg==
