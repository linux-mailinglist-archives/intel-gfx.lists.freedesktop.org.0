Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A08786D95
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF05810E522;
	Thu, 24 Aug 2023 11:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DDD10E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692876009; x=1724412009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mXo4OqazNFjUmnOWMbXEzV6zdEwwZrQPfTDith0x4uM=;
 b=UbWYnMonkGAYNFwrdI5aByhifi4xRe0sjBGqXmYuonpYiMqW+JH7jz/V
 dFhWSDXx9ujRarErl0EOb/vrwW3DoBffdi7WxCN/nm6fkT1ajM9+0dBS9
 WMISTb94q2Yx9XfgwFTBPG6oMevyLq6i1SWGgxtYJtCMp5Q61qGYiRmAa
 k8N77jVftKgbrvPLwsFGHGUdEiSgYgcb6UW7wei062OT9awCblPV6pNh4
 VEhtX0/Kdn//HauIHQJYmHcxA/uibIkgg8Kb3K2/hKOz2ECvDU+k735Hd
 XZuM4uwNRozNURUZZuULPwv21EqNSPdgpMbGenBPbXcxUiIrBAXWqqF7T A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="373292172"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="373292172"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:20:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686832308"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686832308"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 24 Aug 2023 04:20:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:20:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:20:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:20:07 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:20:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T/BDwrRYJZQFBH9Yb24kMC9gFnd2wXvv+mbjTNceE04cfWKrybNQcWqS8cAEB0IJ0bpdJAis2vmzti1SNlo34DASghOc27KI3jmavF5L/naxfwZUBcDeb0dTvsXscL4AlZTV23K0AcCNTeuOHZcteSB5yki8Oy3XEuUQyDoIvGk3uxd/ZMrMeJC432gDBTi4Ue98CwsnZe6YnPiHhs9WldfOMK+s4EZAVU/cnupiYIKswh5+S756nC5pSVEq1PffjFLLTMlq7S5sNl2g6/oIdHdBbqRrxcmk87iBEBek9Bbec25X9Dx5LsTC/6AOzYNDMr1tAKkztIYX4DAygR7gtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mXo4OqazNFjUmnOWMbXEzV6zdEwwZrQPfTDith0x4uM=;
 b=jnsTx1JlPeyZzKoWqObYya5KRE7o8hX6gsX2WT6oRI7q7wtqr04GTw2xOWR95KmT27L3MvHH+y8vLQ/fIj2GYGOABJf/2x8Wi0Kj68EqU1VgXALt/DOWC5v6CZaT3ftttZfQNHQXNVfIEGcrIZPbg/1wJ98Qyhnb1RNEEu2TD5U4/5bAQu9ZwzceAJJdMF32TIy3zJ1m7feICavIN4gHY2hMfT4AkuvGxgt9/qR9hd6jfyzwL/zZTxA7g5t/14jokYL7QamJrGlluOZMLeRSa0a4z+DNlmExHmvM0U3XJeShIN3iP+2KX5tSRczbMt7iBW+Y2PubKM8nKwFGh1x4MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA0PR11MB7790.namprd11.prod.outlook.com (2603:10b6:208:403::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 11:20:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:20:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 2/6] drm/i915/panelreplay: Added HAS_PANEL_REPLAY()
 macro
Thread-Index: AQHZ1kJbm2477Id9vEKbWLyv6m4bl6/5TVWA
Date: Thu, 24 Aug 2023 11:20:04 +0000
Message-ID: <0745a8e13d8a8c07debf89398895e2db3579757b.camel@intel.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
 <20230824040952.186407-3-animesh.manna@intel.com>
In-Reply-To: <20230824040952.186407-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA0PR11MB7790:EE_
x-ms-office365-filtering-correlation-id: caaaa322-45e8-41f3-5376-08dba49410d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bTdxG4TP2waMOVCMQftgCYWtLHJi3pviXjAzEb7ipo2Y3Jp+fon1Hhrplpw5nIijd95111iI5IOIrvN5dubbCrTg8BUdDi7ZfwO6QGmAcN1R4N9ouWszL8CUoXIqok3X+KWL1mh8xkdxmMSZX3F/Ix25h+tzJ2eN4SNtl/q6tL0qR8V4QpbzIT+q56cTMT97xhlzWu48XVJljZaclsnj9zprFBRniIbnhLIKKK8dP/giZyYhGIGRxrrNCkFSydUDUoCsp42In/V7XAtZ+ogmgafdjClPCfEQiZW1wnR7A+DC9QgskSXHL+uumlBOo5TDxdoraG+eZ9P3AWxTnHP9N0ISFEbZDx3eYdCxGe4DbCPlm7JP4FEC7pR+uPlnPKy+NGD9rVMZ3Tg43uSZ9OYR6Yw8DhK6eCUzmf+xd6s0rDCj0bWZcJkPjupixAcTIrLItAq/RIWldoGTf+KW9w68JYs1VEj0rW3le8vEybmDA7gHJWrhzOQl78vUMRy5Lp9JxEhR1TLI+LIFcJowSmlCWJLtfI/FdovMh255VpdjsufKE4vz3qMQfihEc5htfThlGiWprsMlFyBGR0U1DeXi+yZZQ+Edl4ai5aauCb1wUubWuRyVqa81Vgq3Do6CENAB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(136003)(376002)(366004)(1800799009)(451199024)(186009)(86362001)(122000001)(38100700002)(38070700005)(82960400001)(36756003)(6506007)(71200400001)(478600001)(6486002)(5660300002)(2906002)(316002)(8676002)(4326008)(91956017)(110136005)(8936002)(76116006)(26005)(6512007)(64756008)(66946007)(66556008)(66476007)(66446008)(41300700001)(2616005)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWVJM3lpMnl2YmlKMmxOTzA1TEhnaTIvb05kZHQyWDBHRThNK3puUE9tc00v?=
 =?utf-8?B?MStIZktSNUQ5OFFweVVNMElTSlBjWDZmWVphekVPQXo5VUJxYXhLaXl2ZW90?=
 =?utf-8?B?RGd3OFhLTVEzREVXdVlYT1BJQngyQ0E5SmV5N3ZSZk9YcUpYbVZFREU5b1FC?=
 =?utf-8?B?RS9hdVQrdlNNalFjKzFDMTZjWk5XVUIwdVdJWkh5c1FnZVpCbGVZaDkyV0tk?=
 =?utf-8?B?eVc5OGgyeDYwOWVjVDBNY0lrMVRJaXR4cTBYc0p0eU9MV2R5OEhDYnFOZTdM?=
 =?utf-8?B?NVl6bVVyRkp2a210anVDblFPYkRzVXRpQ0lRdStBTmV6NWszM0xNZUtwdEhq?=
 =?utf-8?B?NmpQVC9JQ09WaWpTSGlweTl6Z3lkZldsa0UyTTFVQ0lHTUczMGFmOHNqVjdw?=
 =?utf-8?B?OEFZc2cwNDVyY281ZExBUkpSZWdlL0JiMzJ1dE5oWUFQaFJlamdDUktKSnQ3?=
 =?utf-8?B?R3k1RjMzNjEycndrK2NmVHkxbkQxVEE4VVdmeHF3bEdSdkVYMENnVDl4Q1pU?=
 =?utf-8?B?RE5ENzM1MmtpUjBGZERPRUVGbWNWQ0t6VEtuT0xkNUpPYlpzRGFveE5NOVNX?=
 =?utf-8?B?S1FOdm8yMGFRRUJCTnJOOUxUeXorUmQrNlRCenZPM3Q1cTU1VStBU29zd28z?=
 =?utf-8?B?VUpzYjgvNUt6U0J2Vld2SUNTRVNObFNWNlZmcW9sbzZ1bFdseW9zSTg1ckRx?=
 =?utf-8?B?N2U5STlnZ3h1MmNEaDVHV3pLbXhaVnJiblJJQVlVclViVzhIRDRQS0ZzY1Zw?=
 =?utf-8?B?cU5LQysyZGZ2Q0RlN0RiZjdWcE9wM2JVQyswNVRUaW1ZZmx3UmtmK20xam45?=
 =?utf-8?B?SC9rMlhGODAxUkpSOGF5ekZ0Z3k1R3Mwb0RMREhxSkh4Y2tBdEpaa2s1TnVI?=
 =?utf-8?B?VVRseWhDZHh4eVdYbVE4aVFGbDBZNkIvL2pNYk9oT1NSSUZoeDhXaVlpTE9B?=
 =?utf-8?B?UlJKcUpGTDVOQnNWTFBLdzVYREdWeWEwUHo4QlMyanBqOVJ6WS90TVpYbldU?=
 =?utf-8?B?SGh6M0Z0VS9ET2RweVRnbE5PdVRldjZkeDJHbXRSYnhpMm5uUVp5YWdYekNT?=
 =?utf-8?B?R1BLZDdJelZ4VHI5Z0hydDFlRGVmT011aklLVTdGWGlZZGlFK09JaERVQmRx?=
 =?utf-8?B?ajYzUkc1K2t1SXdTMWF4V3UrelhKUDlEa2J1TW5YNi9hbjVNOEVyVHlET2o0?=
 =?utf-8?B?ZzlmNkVBTXpPQ2dCdU9ra3lVMVByRUNEWDZJbXFMMWdtN0JmRDNsVzNSd2Q1?=
 =?utf-8?B?S2wrd1NueTBuSGlUWStjR3pESlZERW0yTGcvSXZna0ZLdHljWnpIN1c2WFlz?=
 =?utf-8?B?cjZmUUhybnRrR0FCazlmMloxbzRJb1NSb1FFWk5OcWlpRzg2MUt6MlRqNFpE?=
 =?utf-8?B?VysvT0RDZUpraE5aa0pVSlEvYkUvcjYvZjBYekk2cWtCbXl1SGVUQi94eXVN?=
 =?utf-8?B?STFTcmU4SGpydXhzUXlDVzN4RG85K2Zab1ZEcnJqdVNJbW91ejNxRGhiRGo1?=
 =?utf-8?B?SVNZOUljbm51OE9TbmFRTDZxdG9NSXliMzR0UmxYZTZmMHNLQzZhNUYyVlBM?=
 =?utf-8?B?dVBrbXBlWTB4UE5FOFFCWDZxSzFlYmw1VnhOLzlVaG1jRWJqQ2hjWXhiclAz?=
 =?utf-8?B?M3B6cDFnQzhDYk1vTFpYMm01cjRTZ2JnQ1ZxOGVmeUk3Szc1SFNEZ1NzTERa?=
 =?utf-8?B?RzV4enZyQkZKam5FWThMSFcyQ3RLajhmVnoyNnRZajJyVXlLekpTZm0yeUZC?=
 =?utf-8?B?ejlGaFFDdmtKK0ZPdnZvUUs3ZXQ2WTBaNUtJS1A0OHYrQkNxNGlXZXdxY3Yz?=
 =?utf-8?B?OElYdUcrNWVMSGM2ckdZQzVBaytMWUVYbDFKZmtTdzV6dmlZZjRRQ2krYWdu?=
 =?utf-8?B?UmxjYVl0bUJ1ZktpdkEvVGNvWHB0REwvY3locCtwYjk3TFJlMzV0Z3ZybDA0?=
 =?utf-8?B?UUVKSU5OYnlVZnlGbkVvVkYvMUNBSmtYRENERmJhZ212bURYTlV3S3hFaWN5?=
 =?utf-8?B?WjJtaWJBRVBubjVWcDFEaURjd1FwdncrR2ZvbTVLOW9NZERZR2JiVERhTGFo?=
 =?utf-8?B?NWhRcTBtSG1GRnI2WXRiUTFBM1ZpMFp5NjQzMUVITzBpRTZ6Y1VBQzV6MTBh?=
 =?utf-8?B?S0U5S2lQTFhyRDl1TENGdktRSFo0d0M5c2tWN09FdG5Kd21paURCNHVZWlAr?=
 =?utf-8?B?ZHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <14406A1191FED64E91E03D8EDD1E86FD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caaaa322-45e8-41f3-5376-08dba49410d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:20:04.7366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FpTOk3AoRdST6vlalhV27HC6tRNFWIYb0+464WDqHRXHliCpEVICgsNYvjE93eoicpmxM+wSrJ1Kco531LxZww4q0kQ3zI9rKTmnq8YshqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7790
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

T24gVGh1LCAyMDIzLTA4LTI0IGF0IDA5OjM5ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBQbGF0Zm9ybXMgaGF2aW5nIERpc3BsYXkgMTMgYW5kIGFib3ZlIHdpbGwgc3VwcG9ydCBwYW5l
bA0KPiByZXBsYXkgZmVhdHVyZSBvZiBEUCAyLjAgbW9uaXRvci4gQWRkZWQgYSBIQVNfUEFORUxf
UkVQTEFZKCkNCj4gbWFjcm8gdG8gY2hlY2sgZm9yIHBhbmVsIHJlcGxheSBjYXBhYmlsaXR5Lg0K
PiANCj4gdjE6IEluaXRpYWwgdmVyc2lvbi4NCj4gdjI6IERJU1BMQVlfVkVSKCkgcmVtb3ZlZCBh
cyBIQVNfRFAyMCgpIGlzIGhhdmluZyBwbGF0Zm9ybSBjaGVjay4NCj4gW0pvdW5pXQ0KPiANCj4g
Q2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTaWduZWQt
b2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gLS0tDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oIHwg
MSArDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+
IGluZGV4IDgxOTg0MDFhYTViZS4uYWI2MTVhMzE5OWRhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+IEBAIC02
MSw2ICs2MSw3IEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsNCj4gwqAjZGVmaW5lIEhBU19NU08oaTkx
NSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoaTkxNSkg
Pj0gMTIpDQo+IMKgI2RlZmluZSBIQVNfT1ZFUkxBWShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLQ0KPiA+aGFzX292ZXJsYXkpDQo+IMKgI2RlZmlu
ZSBIQVNfUFNSKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BM
QVlfSU5GTyhpOTE1KS0+aGFzX3BzcikNCj4gKyNkZWZpbmUgSEFTX1BBTkVMX1JFUExBWShkZXZf
cHJpdinCoMKgwqDCoMKgKEhBU19EUDIwKGRldl9wcml2KSkNCg0KSSB0aGluayB5b3UgY2FuIGRy
b3AgdGhpcyBtYWNybyBhbmQgdXNlIEhBRF9EUDIwIGRpcmVjdGx5Lg0KDQpCUiwNCg0KSm91bmkg
SMO2Z2FuZGVyDQoNCj4gwqAjZGVmaW5lIEhBU19QU1JfSFdfVFJBQ0tJTkcoaTkxNSnCoMKgwqDC
oMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLQ0KPiA+aGFzX3Bzcl9od190cmFja2luZykNCj4gwqAj
ZGVmaW5lIEhBU19QU1IyX1NFTF9GRVRDSChpOTE1KcKgwqDCoMKgwqDCoMKgKERJU1BMQVlfVkVS
KGk5MTUpID49IDEyKQ0KPiDCoCNkZWZpbmUgSEFTX1NBR1YoaTkxNSnCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfVkVSKGk5MTUpID49IDkgJiYNCj4gIUlTX0xQKGk5
MTUpKQ0KDQo=
