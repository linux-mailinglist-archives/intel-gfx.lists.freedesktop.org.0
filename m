Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB426CA217
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 13:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9D910E087;
	Mon, 27 Mar 2023 11:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28B0F10E087
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 11:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679915215; x=1711451215;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rXVYmuSlk1nZ5KpvwNZ+rG78MHZytNzMt4ohiuV8TRM=;
 b=KJx0lKaC0soHwn0lhzuacLnSUw91pxermBBQqUXGwJIxlSx/EcdSwFUS
 4llw+0fS7K7m5O8lKtGJXFYGbCzo4U7wyNT6/Sl0pP+Hkl1ns/8nL9c2v
 Kxo162gboyT3HwTG65fIi0PZbYHuu0BzqrbJ3bf+HYEDEEWawlYUbR2RZ
 Xhu245rodHs2Vo9fJ+HYkowQ/qfHvWzMFcLp/kACfiLoQzLo2onfa7d/0
 uTjhC+2KQkQYJ5wl16fm3FkR7tpjyqGy+jcMiU0SxK9qAdZBdxZoNmkdp
 xu/W6qC4vuBRBQ/MTnJI/3092eSgP7i/vczT5kEv5zRvtkLx38IaiSGwm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="319894036"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="319894036"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 04:06:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="747961732"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="747961732"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 04:06:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 04:06:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 04:06:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 04:06:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7TPTKAjY8oxsp+dpFXIlh029kSc+JYv5CgvB3+luOmyp+fiWw3Fzze0orT7KNwCUpYXzS74078k+8lY6NeyJXInmYyQjxrb4XsFzgK5VMpXfad2gFm7V6fsAVubWRnBxd4DOziK5BhbdNoigvoD9hd5ugWB8H9X/tgvsZFvfILBDJHWuwPJlkcyz+YZOPzk8fVQtEdUNYnFLDwdKxsip1926DiRZ6DdUt6um1jqRFU+8CIKZqB5EzN9zgqysiUBO6ad8dvwiCfhg2wwtrNpVJ6i1sac4uC0a0cdVkadD1J4CkN8vT0ecGIbTMz1w99mxuNKlVceYsN2MA4NX9e2yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rXVYmuSlk1nZ5KpvwNZ+rG78MHZytNzMt4ohiuV8TRM=;
 b=GSBxj/v7Z61kqekfZmKsVXPDjf4zAi6cF+K/+leWnxNNhReg/QjKlKbl15zOXy50gYPyRzCSUjEa7RJQ62dYg5aE9yvM+M6jE1HCZYRwyT60lcyTALFQpTbGtWnujJkm0UMmfELRrSZdk3npdxZhV2Cd8ZCwxi78SKxJHD9CxZlu0EWUB/VAv8j6X/tzr77vRZ1jJ9pnC/WRVImtKbexC2wBoEohW+Nbo7Jzr+HvNkvydsgN3XcFXAk8SLEBHbKmNSeaB9SAnmjOYYDec8QaZRIiXbglBlOllENgZksWrLV9m5TZ3bsirvID3P9jcateBPpxpxFpB2hkmWgO4kDrkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.30; Mon, 27 Mar
 2023 11:06:51 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::3910:8188:6548:993b%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 11:06:51 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 15/29] drm/i915/tc: Check TC mode instead of
 the VBT legacy flag
Thread-Index: AQHZXZLabKWbd/+tfkWyRP7ux1UEdK8OfTww
Date: Mon, 27 Mar 2023 11:06:50 +0000
Message-ID: <MW4PR11MB70545156F7B9A73B8D5AD764EF8B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
 <20230323142035.1432621-16-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-16-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MN2PR11MB4710:EE_
x-ms-office365-filtering-correlation-id: 349b4a3d-bf1e-4343-444e-08db2eb35dbb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: quCu4U6M4HdsMI2arJtR2t4qgc9lk/MClFUKcQhdkEBwpurnhcLXStvS35OUXdlcoKHJwuPvsv/o6CPebnkp+Ge+jMO4ydCorlcjvThwIjCD62lHAf591b7yAYrZAefsuU0Uany2oXPQj4/QVA6n6+IFAoVa2ieZ2JFfR0suWk9/K77njBFWyfyiym9Po/7NPW5fvXDraDYE6QHTFK5DV+FfGFAa7LMKwErDIFTlvmSrdvRMxzqq6mt3/LwbKWutgy/XEfJqJi6xpGw7YL+i/0/9MQLCChGGEhYf22avcRP6VtkQxlBR7j0zPtGoMWSlQ+K5JYQW4GDcv0PcYmB+qhyBl85viKfA0PQ8nSmb/dg49WexiW7wI6odc/8SmJgmUaMKlwNyPAtbS52kUh7rjTvLbYjaSqWciY6XtuWL7JhUV63YexfNFH+Bbh73aYBqmwrO6FEd75UySYSYYE5aV5Dbr5q0rXy2ISRtcvtSm9+jbwn1aPuboz5QI0M9miF8MohM+sxSKLA4MULqbi3znTdNd1ijQ5a7SqQhrxrFjlqSe0pSCI1Da1fOo9DHUEu4pZrBTJ5iuMS+SL59Ls4+Fsku/Va/7vUnBvPQCvpLBfU8IytU5bLdb3WTmFBYsQ1G
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199021)(7696005)(122000001)(38070700005)(8936002)(52536014)(5660300002)(71200400001)(186003)(6506007)(9686003)(53546011)(26005)(55016003)(2906002)(86362001)(33656002)(83380400001)(82960400001)(41300700001)(38100700002)(478600001)(110136005)(76116006)(66946007)(8676002)(66446008)(66476007)(66556008)(64756008)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cXUzclM0am84eVY0dHc3cGt6cVJIU0RGQVVRMXh6ZytpcnRkMHk3ZmMyaFNZ?=
 =?utf-8?B?cUd0WlZYRzVIU29CYXRXZ29Hb3pqWjFhNG1qdGY0SDZKdzhlb2haZ1JreEpK?=
 =?utf-8?B?ZGpEUVd6Qm9LMm9DMjRWUTVoZHZ4eWFXeDJGUHFBUzBzTmI3QXZSK3RiakIz?=
 =?utf-8?B?eHVsd01pR045WnZublhHNDh5NWJ5SVk1czh1L2k1MUVFQlBQWlZXaEFQKzFH?=
 =?utf-8?B?dVJJcTJZSW5CVkhsSjI0ME5Ca1RyVUVwYXA1ME5VOC8wQk81Zi9OTjJNaCtx?=
 =?utf-8?B?dHYvZCswVDBVQWxLQzZSSDV5bzZoQ1lZK2JWQVFHQm1KTnNibDFCV2YwdHhk?=
 =?utf-8?B?RVpBRTVjSHUybzJKT056Y2xobG9RaXJncWFDbDRIcGd4T2dtRWNkdk9NUkln?=
 =?utf-8?B?LytQWUp4a1JyR3JlelRYdVJXMjRHTVZBa3MrVExXQ0xHUWlWVUJQSkJ1cGxV?=
 =?utf-8?B?NnlNei9DNDJXVzNrYWpnakxtUVRlTll0eEovR2g0VXBKVCsxbGs5YUFBMmFU?=
 =?utf-8?B?TXZOb25zb2QvS0xpSlNBcHhDYzQxdjAxVEFnN25xWkEyamZ2UHVTVjFBUW5W?=
 =?utf-8?B?cUJZNTFqTTU5OHNiZnhVcW9kYll6Ym9wL3dOMmd5eHpGbVl5a1pSNEl1T0sw?=
 =?utf-8?B?dlJEUW1XeHlZZUJoQ3RQbk90WnRIVTA4ZTk2M3Z5ZEo4aWE0dVdQVWxWV1p1?=
 =?utf-8?B?cTE0UWZwT2pVa1RvM01ERXdmNFlpVVhKbGJMWGF2VVJOV2daWDVBV0lHQWJP?=
 =?utf-8?B?SURXZHN2OFY2Y0hzSmJCTmszdUdFQzFmUm94YXhpOGIzeVltUW1xVlpYTkVB?=
 =?utf-8?B?SGtMNlpEd1IvRjEreUF1ejB5T3dPelFGSzRzRWk4aWN5QWZuL2ExSVduUGF6?=
 =?utf-8?B?MGxxNHZnR0tLNUZGTEVhT3gvbS9aczNySUhtOGNObG5DOE9qeWZ5RFlWWW1j?=
 =?utf-8?B?TVd2dUltWG1TbEFWaDNMcVY0akhrcGpBR2g0MGVHQW5RT0dYVkVnM3NBbFNr?=
 =?utf-8?B?WDJ2dlRvQUhzVmluU2hFa083bnVNR2p4dXZJanlLeDl6azZTbUw3UFhSZ1hE?=
 =?utf-8?B?OFFEWXF6ZFN4NllSN24vMUlGL0xuYk1rbURLUC9ELzBRZUNvR3NsY2VrRnd4?=
 =?utf-8?B?cWZVNS94TURUNENYSUZQa2xUTUZ2VWg2djVnejVBZzY2WXdRZEVYZE00U1pB?=
 =?utf-8?B?dlFKT1pUQ244amJodVFhdEZoWVJKWXVNTlJPMEpKSkV5bm5kRlJ1NmRvSnI0?=
 =?utf-8?B?ZGt5anNkQWJFU0VaYkw5VEp1RDFaZWtiYTlmZno4bXBCbFZSM1lIakdrMGEy?=
 =?utf-8?B?NktMZUtQWisyTHA2dGZ4Y1pISXY4Q1gxa0g3eEtwRy9nVzB5WWpuT1licnFi?=
 =?utf-8?B?RDZaYWVkVEsxNGxVTGZmRFFYeEhJUnExWlVpd0tEM0NxbThYZHE3ekRUQmo4?=
 =?utf-8?B?b2VmNGVBRTg5RGIvQ09sckVaVCsrQy8xcjJ2WVUvSmtSRHl4bTJLY25mSEFi?=
 =?utf-8?B?WEI3Qm1TOXhlS0tvWXRNSWdsZDBDdnllb1BMQjZpNm1mUzljT1lKNHRNQzJF?=
 =?utf-8?B?SllPelVrMWdlM05OZmRNOXZlNHpZa0RHUkloK3JUSUpCcnlJTTB0cVE4TjNi?=
 =?utf-8?B?VllEbVI4b0ZGcGFOUTd1Q0xDMnlmdmpaN0lTZ09TY2RWSnltendlcmhFcXBi?=
 =?utf-8?B?RmIvdXZMZ0Yvc1l3YnNzNWxjZjArbm1Qc2lXTGJwTG1KK2Qva2h4dS8yRXBw?=
 =?utf-8?B?WGx0WWFhaGQ2MmxUSjdnUkVBOUJ2U1did2NTNUdIdkp3TzZidnk3VEo0a1ow?=
 =?utf-8?B?WDdKWVlCWHlsczkwTUhSajgxcmlTQ2NpbG5mZ1Y5QVU2SzB2RnM1WnRtVDNU?=
 =?utf-8?B?aTVrQ2EwRUswMW45bUFub1pnSzM5YmE4d3Z5ZUFiS0lUSklaMUtSVzBCMGFn?=
 =?utf-8?B?Y1I1dDNnZE8vN05yem9tVmR5bVRnTDlFQ2h1R2EvK1MzTmdOOWJKU2FkZEpj?=
 =?utf-8?B?RzU5elI3bm16ZG1tVE9Vci8vRGR1Nk1Uc3gvMUt3S3VmY0dQbGpWSGI2Rkcz?=
 =?utf-8?B?MFlqYzAvdDQ1b1c2WGVCaS9Ma2NnMFRIMTJnSVR0US96TUlhQWNzclcwUnRH?=
 =?utf-8?Q?2pbr+sFQA8GzGdcCNjTnu5d18?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 349b4a3d-bf1e-4343-444e-08db2eb35dbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2023 11:06:50.9009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EdN2d0BP4ZLL90czT8BjMc4ljy/ilBolkFCQSlrFjaJyQySn1fGWjnq9WTeJeTfRO0zXL7IsMsqh6CLNBoLb0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 15/29] drm/i915/tc: Check TC mode instead of
 the VBT legacy flag
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUNCj4gRGVh
aw0KPiBTZW50OiBUaHVyc2RheSwgTWFyY2ggMjMsIDIwMjMgNDoyMCBQTQ0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0gg
MTUvMjldIGRybS9pOTE1L3RjOiBDaGVjayBUQyBtb2RlIGluc3RlYWQgb2YgdGhlDQo+IFZCVCBs
ZWdhY3kgZmxhZw0KPiANCj4gQWZ0ZXIgdGhlIHByZXZpb3VzIHBhdGNoIHRoZSBUQyBtb2RlIGlu
IHRoZSBjb25uZWN0L2Rpc2Nvbm5lY3QgZnVuY3Rpb25zIGlzDQo+IGFsd2F5cyBpbiBzeW5jIHdp
dGggdGhlIFZCVCBsZWdhY3kgcG9ydCBmbGFnLCBzbyBmb3IgY29uc2lzdGVuY3kgd2l0aCB0aGUg
cmVzdCBvZg0KPiB0aGUgZnVuY3Rpb24gY2hlY2sgdGhlIFRDIG1vZGUgaW5zdGVhZCBvZiB0aGUg
VkJUIGZsYWcuDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwg
MTUgKysrKysrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA4
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuYw0KPiBpbmRleCBlNjFkYWE0MDM1NmI1Li5lOGJkNTRkMTU4MmJjIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IEBAIC00NDksNyArNDQ5LDcgQEAg
c3RhdGljIGJvb2wNCj4gdGNfcGh5X3ZlcmlmeV9sZWdhY3lfb3JfZHBfYWx0X21vZGUoc3RydWN0
IGludGVsX3RjX3BvcnQgKnRjLA0KPiAgCWludCBtYXhfbGFuZXM7DQo+IA0KPiAgCW1heF9sYW5l
cyA9IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KGRpZ19wb3J0KTsNCj4gLQlpZiAo
dGMtPmxlZ2FjeV9wb3J0KSB7DQo+ICsJaWYgKHRjLT5tb2RlID09IFRDX1BPUlRfTEVHQUNZKSB7
DQo+ICAJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIG1heF9sYW5lcyAhPSA0KTsNCj4gIAkJcmV0
dXJuIHRydWU7DQo+ICAJfQ0KPiBAQCAtNDg1LDE2ICs0ODUsMTUgQEAgc3RhdGljIGJvb2wgaWNs
X3RjX3BoeV9jb25uZWN0KHN0cnVjdCBpbnRlbF90Y19wb3J0DQo+ICp0YywNCj4gIAlpZiAodGMt
Pm1vZGUgPT0gVENfUE9SVF9UQlRfQUxUKQ0KPiAgCQlyZXR1cm4gdHJ1ZTsNCj4gDQo+IC0JaWYg
KCF0Y19waHlfaXNfcmVhZHkodGMpICYmDQo+IC0JICAgICFkcm1fV0FSTl9PTigmaTkxNS0+ZHJt
LCB0Yy0+bGVnYWN5X3BvcnQpKSB7DQo+IC0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJQb3J0
ICVzOiBQSFkgbm90IHJlYWR5XG4iLA0KPiAtCQkJICAgIHRjLT5wb3J0X25hbWUpOw0KPiArCWlm
ICgoIXRjX3BoeV9pc19yZWFkeSh0YykgfHwNCj4gKwkgICAgICF0Y19waHlfdGFrZV9vd25lcnNo
aXAodGMsIHRydWUpKSAmJg0KPiArCSAgICAhZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgdGMtPm1v
ZGUgPT0gVENfUE9SVF9MRUdBQ1kpKSB7DQo+ICsJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJQ
b3J0ICVzOiBjYW4ndCB0YWtlIFBIWSBvd25lcnNoaXANCj4gKHJlYWR5ICVzKVxuIiwNCj4gKwkJ
CSAgICB0Yy0+cG9ydF9uYW1lLA0KPiArCQkJICAgIHN0cl95ZXNfbm8odGNfcGh5X2lzX3JlYWR5
KHRjKSkpOw0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiANCj4gLQlpZiAoIXRjX3BoeV90
YWtlX293bmVyc2hpcCh0YywgdHJ1ZSkgJiYNCj4gLQkgICAgIWRybV9XQVJOX09OKCZpOTE1LT5k
cm0sIHRjLT5sZWdhY3lfcG9ydCkpDQo+IC0JCXJldHVybiBmYWxzZTsNCj4gDQo+ICAJaWYgKCF0
Y19waHlfdmVyaWZ5X2xlZ2FjeV9vcl9kcF9hbHRfbW9kZSh0YywgcmVxdWlyZWRfbGFuZXMpKQ0K
PiAgCQlnb3RvIG91dF9yZWxlYXNlX3BoeTsNCj4gLS0NCj4gMi4zNy4xDQoNCg==
