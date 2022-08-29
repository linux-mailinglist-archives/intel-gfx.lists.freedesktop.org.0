Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9865A4121
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 04:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4977F10E57E;
	Mon, 29 Aug 2022 02:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24DBE10E57E
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 02:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661741302; x=1693277302;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ga0M2Ao5XTTpLqplWedYH9zzjttrvo2zXIibcP3LbHA=;
 b=Jt+44mX1o2JDqGXMiQyefhmbo1/oyIRw1wwZvLJXHfdUwyngidceCwB/
 GkgFU1eLYtJx02MF/6jbWIecV3MYPdDp3K2kDihjxcQLSEN51fLqGwA91
 OOca7flUQM4Mu/DvP1xko49V3AQQVRKhuYk8f902cHTVPqoF3RqtgbAdO
 xmI3A+e1rrrDEDhemTI3ly1KK/O2tX9ZOJ/VTmcReo7m8OSMOOZSsQhXp
 yU2ZTvNljXX9uVYiODti1NsR4/p1jTbXlFOpsUWVR86x7myugim7xt7FH
 k28rWi3ZqIzEe7L9PwrgSr9C/eCngwwXtFWAzU6TbbxryT0/QK0G3v+mw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10453"; a="292374742"
X-IronPort-AV: E=Sophos;i="5.93,271,1654585200"; d="scan'208";a="292374742"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2022 19:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,271,1654585200"; d="scan'208";a="672207214"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 28 Aug 2022 19:48:21 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 28 Aug 2022 19:48:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 28 Aug 2022 19:48:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 28 Aug 2022 19:48:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCDfHjZo5/W8YwXkxtfpSQTcXNyC1X+dlOCWsnrvP37lvzPq6PPTaPZhx+Vf84CLpEJJbUx3+dYVHJ367CJ48A6feh+aI7IkuRhyVkBz24w6cnEGUO2ojHMFQxEFIT1P/b5uAXuSVSqYvuPmiSvd6uowUa9aXh7dPdXFc9frgNxmWI0C4yCDW+z1a3QZBctY/eo9dV2IiH3xLOT440JCCA3n6n3r3wOKOYoBEdyjLgXMvctWGEpyg6CkApFtVUCCqsCzOJJKKp2dFTgIvHiq7UHU5nW13epdf8+Dk7+BNmWZKLRJxSFgrefRMJDBEoqIReq0gZmiSVZOJuu05Uxe0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ga0M2Ao5XTTpLqplWedYH9zzjttrvo2zXIibcP3LbHA=;
 b=C6osnrxhzgBA9L0ZLHCamtD427WbqHahDexru8FiskkH5h6LPUmKrOJCq2x3ukPyatc3ge72MAe8sitFWFop0pZWfcxBKn/Qcx9//0EACw2cWA4pznywwIJNKmPn0AaDSYEO72bdnS/mYomamA37ePIfeXCYbPeVo3lUt5Bw4MS+txbMQ+fcdtwwrqE7sG9bRJjDJLjj3wBR7dM5ZjWxWymwgn8kwpHG7E4IYwhYrjBh+e9vri4HS0YrYpm4h76buiDhrzjuIZyHh3jrahh7MSUa4CnkVmIpnlCGRvUtsLyaOGL7vh3Yxt/4qKFKfsIpEq4wyEnR5OyKs3QWPugEzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN2PR11MB3983.namprd11.prod.outlook.com (2603:10b6:208:137::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Mon, 29 Aug
 2022 02:48:17 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f491:53c1:acd5:d8ef]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f491:53c1:acd5:d8ef%3]) with mapi id 15.20.5566.021; Mon, 29 Aug 2022
 02:48:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Added restriction for
 plane downscaling
Thread-Index: AQHYuUZokKFMA3sIY0CZIKde906Twq3FMKhw
Date: Mon, 29 Aug 2022 02:48:17 +0000
Message-ID: <DM6PR11MB3177C91BAF3D7E483D0B2825BA769@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220826121741.25485-1-animesh.manna@intel.com>
In-Reply-To: <20220826121741.25485-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10e8cf42-1689-4412-f770-08da8968ed15
x-ms-traffictypediagnostic: MN2PR11MB3983:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r+WmHDbw5kQEEJAYQF94FMCvzc+7H01c5iASdtLuPqD4SvzudN9JHOLUNTj3oF8PONLnKiFpdsewZxbis+MLTaCENtJxZ/QZd11v+QIH99U9LzTXZ6xK6qcUEcUK3lnjAnWVBOGYVcb62jigQA3vW9jym6Ukrefa1K1S59nqS9ZPR4xY/Vm+N9gf2VOjNLKImNVi5E9g0qumKfLFxst85MxaKHejoccUS9VVKoirX6Is7WJnfcuwydNx98TvZCV5ubrMCq5/Mg4NkgpighYtUEK1yjfewuHeWsk5DkC/1VfwfCF3hqGC3aEAoQX5FNx2mg2aFfypYaZFFjgNS/R/R67yWkq7HhIKkKbUmH6ngeH8Te28kyTsimPeASDCjxKTh16RH68bp5y/Ay0EW2kXQ5mYFu66x7lahBjNAL2bdlarjORXxNPuLgsTj/Cw0qp5nMiQAQjjXsnh9iuefrj011R0lCD4kkQX+BJ4uaqTrH4U74yP7+k2fHR8VMns0EYLu2qdly2KlsJ2thYicqPznJz6CP93x+WgBGvAOvofaSk87D5nBVaOfee/d70Sg5YdsWrE4uCReY+Gt+bIyClLopgwbiQ4fpknMDwv7mdKtlmTqanc5pZtYiPhz+QBLaXq5+JiTEct2nmlJl5bt5FV78ZiGAOCGCTf54FkqTvCqCnx5C59Wcgk0kjb9hUanV7VL8jqOxtOxZPq3YxuvstfKp1Qdx65UD+loZvbghRO4ksKSJvm3+2vWbjMA+ljNbSHiPDHHcV6B5Foub44plaHOg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(39860400002)(366004)(396003)(136003)(66446008)(66556008)(76116006)(66946007)(64756008)(2906002)(33656002)(53546011)(6506007)(52536014)(8676002)(8936002)(55236004)(7696005)(41300700001)(55016003)(66476007)(186003)(83380400001)(66574015)(86362001)(478600001)(5660300002)(82960400001)(26005)(9686003)(38070700005)(122000001)(38100700002)(316002)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUhndU03dFFLNXQ3eWxnQmIyM3pIZGs1WkRGZ29mMzZZb2lhc3pIYlZsdHV6?=
 =?utf-8?B?aWF4b3lPNitSbzlQdGYvZ3I3YXVrOW04dkloZU5uNFRnRHpVV1Nva2MrSGRC?=
 =?utf-8?B?VExKYVFxcEp4cEVwbGdmdURMYXdtYlV6WGxpSi9oeURVYVNlR2FDR3BuYTkr?=
 =?utf-8?B?dlNuN3RXTDZZbTB6NDJmRm85U0FjaE5Mb29RdFh5Z3AvYVVuejU1d1lmUkpY?=
 =?utf-8?B?aXBSY01waFdwNnhGRTU1V0ljVFhRSDU0RElPTkZSZFF2T3o2NUpscHN5VDNF?=
 =?utf-8?B?WGVUMkNBMldONFY2SlFxemFlblRMUGRrU3JVdlY3dnRHZUpFZnFZUXZmVjZ5?=
 =?utf-8?B?SjBUTFlkeG9Sa0N3TlhsWHBtVERmSTErbFV1d2h2YW5tMVBOTUttaXBCUHpW?=
 =?utf-8?B?T1lRTGIzSE96VW5XU25xZG95NkxxbVVqTVBBUHdyVkFrd0hsSlZibHhHVDhI?=
 =?utf-8?B?ZlcvYUFTYXRHd21MOTQ1ekdYYWZtTk5FaUNkTkpBQUJ3OFpTOWxrSmsveUxW?=
 =?utf-8?B?R3AreFNQNWJRVDQxNzlGaEhab281eHRacWtkcDBma1RLd0NRb0FlYUpXNGxH?=
 =?utf-8?B?NG5LK3JIWGdyWU5Hc3Z1c3pnb3Vxc0x6OTdEcG05RWE5M2krOWJpeFpyMDdJ?=
 =?utf-8?B?VWNsMXpBb3NMckdJc3VXMDRSMmZEOHZLUTdyZXNVejA1Vkcrc2RHd1JBU2NQ?=
 =?utf-8?B?YTNRMDNmenFYQ3k2WTJHZ3VoeURTTlhuNTdlQ1UvVEJ0eXhDQkQxS2pudmt6?=
 =?utf-8?B?VXpEbDIzWGdjeS93WkphVlk1MVZkdkY0VitxNUQ0bWZWa0Z0QWN4aUNKc0do?=
 =?utf-8?B?Z1NzTy9rbDJpMFdDdHo3OHRYQml2YldJVG1wNUdjcE9nOUkrWTNpNVJQdE9a?=
 =?utf-8?B?QlBUdXlOU2lFZ0RyQzNuSG42bVlTTXc2ZUxZOFcrV094c0RKU3NHRjlONFFF?=
 =?utf-8?B?MkFyTFIzdHFDZmhUcVEva3orVkt2d1FlYTdGSUZLQmVBV0NJcnJ1K0V5U2N4?=
 =?utf-8?B?clVtY290d0lPVUN4UU05SGlYVVVuWDlQeWRUTThKbnFLcnpvWU1BbDd6RWVT?=
 =?utf-8?B?NVk3MUlBTFViUkc2UC9wdUtkS005WDNGVHVwWTFMKzBYVjJwbG9BZzNXWjJV?=
 =?utf-8?B?N2g0WWIxc1Z2OEpFUW81UHJGWnZRNHF4dndQRmp4K1poVU1ZNllwRlhpRVlR?=
 =?utf-8?B?K1NwYzMwMUZTNmpCaE42RjdXMjdNOGh3M2cySGtyT3B5dVdDTXl6ekpHY2xN?=
 =?utf-8?B?MWFHTldIYzRVaHowb29PRkNKOUVDUTJFQzRlekw3UVJpZjJmQXloem1zUklG?=
 =?utf-8?B?TFRsQkRRVHBGTlNaTldHNGNMSkVheStVbWtxZ0ZvTzV4MVpnTGFOR20vOVdy?=
 =?utf-8?B?akJSc0VTZnRueUxNT0E0N0NVQ3l3SXNVVHQzbmhHdlJwRy9qcEh2MFc0TFpV?=
 =?utf-8?B?QncvbjU4THBvYUp5WWw1T09ta0lTNnR4MEJ2TkpxakRkSlBrKzdXZEwyYWx3?=
 =?utf-8?B?SVZlTHB5akR2VnM0SHdXZ0t3OUhkeGZ3bmRhYWJyL1RyUmpDN051Z0JDSS9D?=
 =?utf-8?B?dGZPeGx5TmdhRzJkUzFQdUV6cG1xRDh3c2JJQXdrcE12V0RxdllFUTM4Vjc1?=
 =?utf-8?B?QlQ5Zyt0V1ZDNmZ6SFludG9RR3MxOEIvbEl6Q0VPV3l1a0xPV202ZXVaMi8x?=
 =?utf-8?B?Nm9YbCtWNUNqN0MxSXdpUXFsclJPNmoySnU2Q1hkTEtNWFkvTllvQUF1SENL?=
 =?utf-8?B?dk1udGtFSVF5dW1KdEM4NkZHZWd2R1ZWNGRIUnBEenJSdkxveGlQWmF3QWUz?=
 =?utf-8?B?aDJPamQ3dkhzTnJmV1VQU1Z2Mng1VWtyUlJySzlsUC9wQkluRmphUGtWRWZB?=
 =?utf-8?B?Uzg4THNLV3I1VGt0b1pIQ1Rsbll6RVRQbjBwTzVxZ25DNmhxTzIwNU5FQkZZ?=
 =?utf-8?B?M0ZQNWpCR0ZjZWxBaWZ6S0twMktxUi9Uc0pqVGl1UGVXbVQvajE0RXQ1Mzdm?=
 =?utf-8?B?UEQvb2xNMXVhRUg0cTA3V1ZmSFdQMGdnVUk0UlR2ZVBGSFI5TW52d1BVYVU0?=
 =?utf-8?B?VFZlc2E1Z1FyS3FHRyttck11VzcrcXREOUhkVSsxM00yYm5ZUmx2NnhCcnQw?=
 =?utf-8?Q?KZgXpX26a9RLjPG3/2vWzdZEJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10e8cf42-1689-4412-f770-08da8968ed15
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2022 02:48:17.3121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uPdVHbbpvAnHOnf6ZOAZ06hq7Hm4IjMdKr42Otz4KSzQtuqDy+sFx72M80q4Bg69I0WZ2TZ5OHR2GVXvZ0jFiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Added restriction for
 plane downscaling
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IEFuaW1lc2gg
TWFubmENCj4gU2VudDogRnJpZGF5LCBBdWd1c3QgMjYsIDIwMjIgNTo0OCBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMS8yXSBkcm0vaTkxNS9tdGw6IEFkZGVkIHJlc3RyaWN0aW9uIGZvciBwbGFuZQ0KPiBkb3du
c2NhbGluZw0KPiANCj4gVGhlIHNlY29uZCBTY2FsZXIgKGkuZS4gU2NhbGVyIDIpIGRvZXMgbm90
IHN1cHBvcnQgdmVydGljYWwgZG93bnNjYWxpbmcgKGkuZS4NCj4gaXQncyB2ZXJ0aWNhbCBzY2Fs
ZSBmYWN0b3IgbXVzdCBub3QgYmUgZ3JlYXRlciB0aGFuIDEuMCkuIFNvLCB2ZXJ0aWNhbCBwbGFu
ZQ0KPiBkb3duc2NhbGluZyBpcyBub3Qgc3VwcG9ydGVkIG9uIE1UTCwgc2NhbGUgZmFjdG9yIG1v
ZGlmaWVkIGFjY29yZGluZ2x5Lg0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZh
cmVAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF91bml2ZXJzYWxfcGxhbmUuYyB8IDcgKysrKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGluZGV4IGJjZmRlODFl
NGQwOC4uNmJmY2RhNzQ4ZTdiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBAQCAtMTQ2NCw5ICsxNDY0LDEyIEBA
IHN0YXRpYyBpbnQgc2tsX3BsYW5lX21heF9zY2FsZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsDQo+ICAJICogd2hldGhlciB3ZSBjYW4gdXNlIHRoZSBIUSBzY2FsZXIgbW9k
ZS4gQXNzdW1lDQo+ICAJICogdGhlIGJlc3QgY2FzZS4NCj4gIAkgKiBGSVhNRSBuZWVkIHRvIHBy
b3Blcmx5IGNoZWNrIHRoaXMgbGF0ZXIuDQo+ICsJICogRklYTUUgT24gTVRMLCBhZGp1c3Qgc3Bl
Y2lmaWMgc2NhbGVyJ3MgZG93bnNjYWxpbmcgY2FwYWJpbGl0eS4NClRoaXMgc2hvdWxkIG5vdCBi
ZSBGSVhNRSBhbmQgdGhpcyBpcyBhIGxpbWl0YXRpb24gb2YgaGFyZHdhcmUuIEEgTk9URSBjYW4g
YmUgYWRkZWQgaW5zdGVhZCENCj4gIAkgKi8NCj4gLQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYp
ID49IDEwIHx8DQo+IC0JICAgICFpbnRlbF9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBsYW5hcihm
Yi0+Zm9ybWF0LCBmYi0+bW9kaWZpZXIpKQ0KPiArCWlmIChJU19NRVRFT1JMQUtFKGRldl9wcml2
KSkNCj4gKwkJcmV0dXJuIDB4MTAwMDA7DQpDYW4gdGhpcyBtYWdpYyBudW1iZXIgYmUgcmVwbGFj
ZWQgd2l0aCBhIG1hY3JvPw0KDQo+ICsJZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDEwIHx8DQo+ICsJCSAhaW50ZWxfZm9ybWF0X2luZm9faXNfeXV2X3NlbWlwbGFuYXIoZmItPmZv
cm1hdCwgZmItDQo+ID5tb2RpZmllcikpDQo+ICAJCXJldHVybiAweDMwMDAwIC0gMTsNCj4gIAll
bHNlDQo+ICAJCXJldHVybiAweDIwMDAwIC0gMTsNCj4gLS0NCj4gMi4yOS4wDQoNCg0KVGhhbmtz
IGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg==
