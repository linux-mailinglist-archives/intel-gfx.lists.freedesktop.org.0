Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BBD6B8F02
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 10:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F253F10E755;
	Tue, 14 Mar 2023 09:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98B010E75D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 09:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678787425; x=1710323425;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JwlHfak4lUo0F2HsxxZ/b1OWEZ9G7AFHE2g70uJk6is=;
 b=MhME2eMCzQE9/ooO4TvM9q8OcWx/yet1W/2wWHAoInM4vtX6gcm3E6CJ
 t1snc5vJKqMmhc/dTrxxBk1AhNe3IcHvSeAZimJIZvZSWuTCor/Pb5D+R
 RfpoMrStVG0zAgBKIe2zsOgTCluD0FQdBLt2dArsLTeIEFnl9wd8dxAba
 IujbsqQvpsVTeZv8+Vy2NuSiQm3+5z631s9+Vlfat8QNIX2+KgA+kb7ue
 F3TjMztv595W/0NASwN1rruVU3WB75sg4dXZmQSNx/oSBQPDUyKF7z5eO
 +1WdjHEDQvyjFoE0GKmWqRNmWEbWnfmgxMA6JyFsotnvjBMRknn+BcfaQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="338923325"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="338923325"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 02:50:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="789295311"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="789295311"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 14 Mar 2023 02:50:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 02:50:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 02:50:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 02:50:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 02:50:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X89kwIfjUsQWyfg7OPUoI1C7Lr1MgTLIRpKmbQ7SKii3QvrdFP5BCrGctsgAwi4GRuWr2hdMTnlYD7uP7amfMS7I6MzysNDScVxle6a7gEW+zvhouloUnyGGKDi9KLpZpOf78ExTvyIvG9Z85dRsX/PhQ6At6GOgk/hEh8jgXzc7o89OtkEcQUE5lXHFsOKCKRb7vdi5AnqHyMbIj7TmEYJLqsCUgQ8Wx/3zvcHeIRpQFy5EB9cjs6AOGMgEK/zbRBOUqvyrsIcVkWK0P6jRXow6r0rIP5r/93ZknO4l+j/UjOA46hfOiHZ7z+LRUGGaCIoIYxkJFG1Oil5tQgw4uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JwlHfak4lUo0F2HsxxZ/b1OWEZ9G7AFHE2g70uJk6is=;
 b=hKfn1p6kdlyigAS2d89z6GNIfwmIOrW28Lz8Lh9WXWkzJmkRUkaoybp5U07Y0MxGSDXUmvcCDLsUaNTQN2LCUplQfxbYEZr96xtJJXXemg9Ekfy2lWdcxti5ocEPutW/is74mTvN2TX3Lh2oe/VtzA/zkjsbCnSCLOBKedwzx/V0DxgA0kTIbd5I2B5HuCu0xbZwrMMYZIBRk2BSDzunPA9hKNp+EkR1nbKV8yPl4IwBhnsVRNYpsXcCQ0+ttFstO+sbmelgXpcsJVi2ovW+8VyOGGT4FQYoSyI6DCwnLdewk269C8bMsJZfhWzCkfZIA5e3d8j+04+dCvSL3CK2QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SA1PR11MB7040.namprd11.prod.outlook.com (2603:10b6:806:2b7::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Tue, 14 Mar
 2023 09:50:21 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%7]) with mapi id 15.20.6156.029; Tue, 14 Mar 2023
 09:50:21 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Power management SAGV/QGV calculation rounding
 fix
Thread-Index: AQHZU15Jg8ZjaeQo906b7iPhUF7uVa76B6yAgAAGXYA=
Date: Tue, 14 Mar 2023 09:50:20 +0000
Message-ID: <9ffb0ff303cb4141e71a2766f14ec746988c42db.camel@intel.com>
References: <20230310144035.30754-1-stanislav.lisovskiy@intel.com>
 <7ddeaf24abf10e7e2728150310e154f4366a076c.camel@intel.com>
In-Reply-To: <7ddeaf24abf10e7e2728150310e154f4366a076c.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SA1PR11MB7040:EE_
x-ms-office365-filtering-correlation-id: b8d7673e-6c57-4e5a-7f8a-08db2471867b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DSzFFfPgpmTfExQlgJ1lSEAjSHc5ETwcBWgorWLDNK6/4PKMhzzXVn61QjAISgFPsqoHjoLqUAKsHgWnQxLisIgsNZWOa4XqNJVBEZeLCiJY+Q+YH25msjJolfwq7JSRicnCF5wMVC93+ZONDZ+Blp67BR+RnwVUFui5kVacpjG2Yg8lvTJxnes1Ls5JGuY7C1IgapivK5crDhnV8qYXKeETkrugiSyFhe8v8FeTzvZ6NKqw+5o0yWX9Dn/68KvLyZZnh+ze+HeD1U3l4xZyTqSb6vRkRirl6+JBRr1kj4cVho84/7m/8TPqt7qZB+jLtC10pePkaGSeycgamjxkt4Vyxhi0TdNFMYANITK/7kqG/n/lOA9SPlAWP33USX2OaN8Gk8rctDKb7ZPJpA3JVBI07OW8w5eJoI3iMdcRaOT9OBENurPxlaGVdI40Cffgmcw5lkqzjLByDTCDNjJ4/sJ93s7nCPDtE7QIeIFymyOPZfh3K2nu0SMT7ZYZUIK3pCNav79In+lcrK4tjsov+psE2dO9XzmmJvzg+L0QFCI/BYI7mVgq0a62ShLXuwr3k1ta9NPjWMBYb6ZdML80297wMPFoIsRDcNaLfsrmcp/s+VcFBCE5kjkzI0fH4RiIQ8faYJdUbYsPJ/jgH+YoYXP2AaHmCM+ZEjIXREebhM62WIYXhlbpdFJBjTgIzum3DDVkZ0auCf04sq0D0zxieg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(366004)(39860400002)(396003)(346002)(451199018)(54906003)(110136005)(316002)(64756008)(66556008)(66476007)(66446008)(66946007)(8676002)(4326008)(76116006)(91956017)(6486002)(83380400001)(478600001)(36756003)(71200400001)(38070700005)(5660300002)(186003)(122000001)(38100700002)(2906002)(82960400001)(6506007)(6512007)(26005)(8936002)(86362001)(41300700001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekU4SFNxS3h3N20ySStoTWJkUU9IOG1McldwRUNZNTdCS1RzKzVXVDlvNlBo?=
 =?utf-8?B?ck94ZnpVZy9TL1RwUit5djdoTG1JZmNJYkpMRlczVVpaOTFJNjJyM2RZZmlL?=
 =?utf-8?B?NmdxbnlUcXRhaGQvREJMWTlyQldCclVHZWMzYzA3S2xTOU9pcFd0b29NOXd3?=
 =?utf-8?B?NXZZRGxNbk5jMjdjemdhbU5IeE81MnhZNDNTcUJhSHFabVphV3M5QXBpemth?=
 =?utf-8?B?aWg5WXd2ZDRWU3g2cWgveFBZWVRQWUdaMk9CcmszTDFtUEgwQTlPVEVKdWd1?=
 =?utf-8?B?R21PdjhvU1ZBNFU4UDRqMjJLd01rL254U1doMlJkM3lXc3ZSRW84YU1rUnhB?=
 =?utf-8?B?d3B0RE1qbDd6MCtXYVRjWlJPcUNqenVBSjhzN2tGUkRRRW93ci9XRUp2RFNn?=
 =?utf-8?B?Ty9sUnk3RmticVViSkN5TzZBdVZLQVd1ajZ2Y2FXM0pzUmVZUVJaSnZ5bmJ5?=
 =?utf-8?B?NUM0WmczS1JHNk0zZThud1hDd1Q2QlRvalFsVFlhcjFOV2ZnbmRoZlpsSUt6?=
 =?utf-8?B?QVZqUkt6R3VnRHBvN0JVd0Q2dXNHV2ZhZUtxcWJoTXNoSzhocUpqSzJkTWk0?=
 =?utf-8?B?VmxEMndoR2RWblVuUlZMVVFZNk1uUTB1RGJFeGhMNVZ4OW81ZDZYT1lDNjlX?=
 =?utf-8?B?cWc3eHdtVUcva1l0RzRVRnFUL0FGSlNMN2F3YnZRZ2dyQnlwUkFCQnNnbi9Q?=
 =?utf-8?B?Z28vMmUzSXd5TlFuRTB4WkFRbHhlMlpnL2RwTkVTb1diRGRTMGNLSmFIWHVv?=
 =?utf-8?B?SVhHdzJYbmY2UDVlVDhLVmlYenIrVmlxTzFZV21yREJOYml1ZWpVNW4zMWxU?=
 =?utf-8?B?b29TTXZQUUNoUzVsTEVZWFRjaXhKcWIzRlR3SmtlUWtDdzJDNGJSK3hVSDVU?=
 =?utf-8?B?UWFUZHVtMUszRmNyN013NW9sS04xVDd1RmdXVktrQXB3SWdQSThXeElBUkFZ?=
 =?utf-8?B?MXdEcHRHRnY0WWUwZG16LytCYzZIeHhEaUFla2ZNRStxMnNNbWdSekNheC92?=
 =?utf-8?B?dW5ka01UNDhFM1V5TkRaOVVSQzM0TWcya1diaE9Hb3hlb0xxSW9tbExVc2xE?=
 =?utf-8?B?M3Y0SzRMUVN5eGdjRWMzd280RWRNVTZqejBtR2o0NkdtSHpaREFWRUNIcXg4?=
 =?utf-8?B?RERUdjU2QlppL1VHSlV3SkpQUC85OXBWRkhtM0R0Zm5aUVdjL2J6THU5MTJa?=
 =?utf-8?B?dnZyMmZPYWVnNFVIRlVDU015RDFNYUdnakJPTHZrT1hGcGNIc2JKV09lalJ1?=
 =?utf-8?B?YU9rRzVvMGw5TllGTHpYS0FWRUk4eG1kT0tyOXg4MXI5NWt5eHkwTEhZcHcr?=
 =?utf-8?B?elhBN2JzbGExS0VuYSsyMkl2NXRyN1d2MHBPZXlZVHg5aEJiTGUxbVhQOVBj?=
 =?utf-8?B?WFo3MS9MNTZZZkxZSFd4UGcvV3NJY1NvbWVCaDArN05vM0tQSXdWYkJ2V01U?=
 =?utf-8?B?V1k5L3ViczdvTDFldnIxYkpqemtEUVRIYkMvVXpmZUlGOE1BU0QvWU81Nmli?=
 =?utf-8?B?aStBeWZOVHJFb1JuakpSbkhOWVhVeU5zSTM5aWMzeTh1SHU0N2ZydkV1Z2pn?=
 =?utf-8?B?RDhIbEdtVm5JQWZ3TXBRdFhyL2NEblk0SXE0VkdDRFBUWUR3dVlkaEtmckIz?=
 =?utf-8?B?UEUvQk1lcjZ3MGwzTVZWdE1JVjFQdzZRdXFralBWaGNYRy8xckxwZDJxWS9w?=
 =?utf-8?B?KzBPODUxa2pJSmhsTnlMUElMdTJCU2g3b09ETDJJRzhlRjJoZkYrZEl0SDBE?=
 =?utf-8?B?SHEvblJlcE4zZ3BMZ0JiQWRCUlR4L2Z5WkduSjlIYkN6RUZIS1BtTHpoQXgr?=
 =?utf-8?B?OFpIVW95dGJudFAxWWo1L3FhU3RjVmZYSk9tamRRMXlyY3BtY3k2TVcraWZi?=
 =?utf-8?B?UzRsKzltVnpiWE9mSUw3eWwyVWErUTlvMUJEZ2NONEpGdkJIa3ZPWG4rMkRS?=
 =?utf-8?B?SHNGd2NoU0FGT0xZWStKdkVpSG1PbDJCQlJ5ZytQTVBDa0lrME1DS2FKSEdX?=
 =?utf-8?B?Nm1VRlg1OU9XTUd5bmF0R3liQjJLTkRuU3J3VndWdFBZQUYwSWJ6QTJqNVZJ?=
 =?utf-8?B?cUZjRlM3NlNBUkQ3U1RUSFRyc1ZEYUpTTHlCdDJuYjB3RlNYODR5RGxaaTcz?=
 =?utf-8?B?K1dNZnNxSk1KRWJEUmw3dThvSWMrZWJQVVhkVEpYcFRjNHA1WWlBOWJlL29D?=
 =?utf-8?Q?FBrZULKu4mrcc+uMWOckJt0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0CCA839999122C408D88BCBFF5CD2980@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8d7673e-6c57-4e5a-7f8a-08db2471867b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2023 09:50:20.9045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jgKSnl9rqic/eUCUQPB38L9MpU1nyDPLGUa82x6sg7VKlMfowMyeZBwJQkfimw5CPZjiQTz6+I7vLukdB2GNNtIWvWSi7GF1/ZkY36U+7rA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7040
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Power management SAGV/QGV
 calculation rounding fix
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
Cc: "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3RhbgoKRmV3IG90aGVyIHBsYWNlcyBhbHNvIGRvIG5vdCBjZWlsIHRoZSByZXN1bHQgYXMg
cGVyIHRoZSA2NDYzMQoKZGVpbnRlcmxlYXZlLCBwZWFrYncsIGNscGVyY2hncm91cCAKCldlbGwh
IEkgYW0gbm90IHN1cmUgaWYgdGhpcyBoYXMgYW55IHJlYWwgaW1wYWN0LCBidXQgRllJCgpWaW5v
ZAoKT24gVHVlLCAyMDIzLTAzLTE0IGF0IDExOjI3ICswMjAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5v
ZCB3cm90ZToKPiBIaSBTdGFuLAo+IAo+IAo+IAo+IE9uIEZyaSwgMjAyMy0wMy0xMCBhdCAxNjo0
MCArMDIwMCwgU3RhbmlzbGF2IExpc292c2tpeSB3cm90ZToKPiA+IEN1cnJlbnRseSBpbiBvdXIg
YmFuZHdpZHRoIGNhbGN1bGF0aW9ucyBmb3IgUUdWCj4gPiBwb2ludHMgd2Ugcm91bmQgdXAgdGhl
IGNhbGN1bGF0aW9ucy4KPiA+IFJlY2VudGx5IHRoZXJlIHdhcyBhbiB1cGRhdGUgdG8gQlNwZWMs
IHJlY29tbWVuZGluZwo+ID4gdG8gZmxvb3IgdGhvc2UgY2FsY3VsYXRpb25zLgo+ID4gVGhlIHJl
YXNvbmluZyBiZWhpbmQgdGhpcyB3YXMgdGhhdCwgb3ZlcmVzdGltYXRpbmcKPiA+IEJXIGRlbWFu
ZCB3aXRoIHRoYXQgcm91bmRpbmcgY2FuIGNhdXNlIFNBR1YgdG8gdXNlCj4gPiBuZXh0IFFHViBw
b2ludCwgZXZlbiB0aG91Z2ggdGhlIGxlc3MgZGVtYW5kaW5nIGNvdWxkCj4gPiBiZSB1c2VkLCB0
aHVzIHJlc3VsdGluZyBpbiB3YXN0ZSBvZiBwb3dlci4KPiA+IAo+ID4gQlNwZWM6IDY0NjM2Cj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNv
dnNraXlAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYncuYyB8IDEwICsrKysrLS0tLS0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYncuYwo+ID4gaW5kZXggMjAyMzIxZmZiZTJhLi44NzIzZGRkNGQ1NjggMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+ID4gQEAgLTUw
LDcgKzUwLDcgQEAgc3RhdGljIGludCBkZzFfbWNoYmFyX3JlYWRfcWd2X3BvaW50X2luZm8oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkY2xrX3JlZmVyZW5jZSA9IDY7IC8qIDYgKiAxNi42NjYgTUh6ID0gMTAwIE1I
eiAqLwo+ID4gwqDCoMKgwqDCoMKgwqDCoGVsc2UKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZGNsa19yZWZlcmVuY2UgPSA4OyAvKiA4ICogMTYuNjY2IE1IeiA9IDEzMyBNSHog
Ki8KPiA+IC3CoMKgwqDCoMKgwqDCoHNwLT5kY2xrID0gRElWX1JPVU5EX1VQKCgxNjY2NyAqIGRj
bGtfcmF0aW8gKiBkY2xrX3JlZmVyZW5jZSkgKyA1MDAsIDEwMDApOwo+ID4gK8KgwqDCoMKgwqDC
oMKgc3AtPmRjbGsgPSAoKDE2NjY3ICogZGNsa19yYXRpbyAqIGRjbGtfcmVmZXJlbmNlKSArIDUw
MCkgLyAxMDAwOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqB2YWwgPSBpbnRlbF91bmNvcmVf
cmVhZCgmZGV2X3ByaXYtPnVuY29yZSwgU0tMX01DX0JJT1NfREFUQV8wXzBfMF9NQ0hCQVJfUENV
KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAodmFsICYgREcxX0dFQVJfVFlQRSkKPiA+IEBAIC04
Nyw3ICs4Nyw3IEBAIHN0YXRpYyBpbnQgaWNsX3Bjb2RlX3JlYWRfcWd2X3BvaW50X2luZm8oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gcmV0Owo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqBkY2xrID0g
dmFsICYgMHhmZmZmOwo+ID4gLcKgwqDCoMKgwqDCoMKgc3AtPmRjbGsgPSBESVZfUk9VTkRfVVAo
KDE2NjY3ICogZGNsaykgKyAoRElTUExBWV9WRVIoZGV2X3ByaXYpID4gMTEgPyA1MDAgOiAwKSwg
MTAwMCk7Cj4gPiArwqDCoMKgwqDCoMKgwqBzcC0+ZGNsayA9ICgoMTY2NjcgKiBkY2xrKSArIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPiAxMSA/IDUwMCA6IDApKSAvIDEwMDA7Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgc3AtPnRfcnAgPSAodmFsICYgMHhmZjAwMDApID4+IDE2Owo+ID4gwqDCoMKgwqDC
oMKgwqDCoHNwLT50X3JjZCA9ICh2YWwgJiAweGZmMDAwMDAwKSA+PiAyNDsKPiA+IMKgCj4gPiBA
QCAtMTc5LDcgKzE3OSw3IEBAIHN0YXRpYyBpbnQgbXRsX3JlYWRfcWd2X3BvaW50X2luZm8oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gwqDCoMKgwqDCoMKgwqDCoHZhbDIg
PSBpbnRlbF91bmNvcmVfcmVhZCgmZGV2X3ByaXYtPnVuY29yZSwKPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgTVRMX01F
TV9TU19JTkZPX1FHVl9QT0lOVF9ISUdIKHBvaW50KSk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZGNs
ayA9IFJFR19GSUVMRF9HRVQoTVRMX0RDTEtfTUFTSywgdmFsKTsKPiA+IC3CoMKgwqDCoMKgwqDC
oHNwLT5kY2xrID0gRElWX1JPVU5EX1VQKCgxNjY2NyAqIGRjbGspLCAxMDAwKTsKPiA+ICvCoMKg
wqDCoMKgwqDCoHNwLT5kY2xrID0gKDE2NjY3ICogZGNsaykgLyAxMDAwOwo+IAo+IE5vdCByZWxh
dGVkIHRvIHRoaXMgcGF0Y2guIEJ1dCBhcyBwZXIgQnNwZWMgNjQ2MzEgYW5kIDY0NjM2Cj4gwqAg
c3AtPmRjbGsgPSAoMTY2NjcgKiBkY2xrICsgNTAwKSAvIDEwMDA7Cj4gCj4gRG9lcyB0aGF0IG5l
ZWQgdG8gYmUgY29ycmVjdGVkIGFzIHdlbGw/Cj4gCj4gQlIKPiB2aW5vZAo+IAo+IAo+ID4gwqDC
oMKgwqDCoMKgwqDCoHNwLT50X3JwID0gUkVHX0ZJRUxEX0dFVChNVExfVFJQX01BU0ssIHZhbCk7
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3AtPnRfcmNkID0gUkVHX0ZJRUxEX0dFVChNVExfVFJDRF9N
QVNLLCB2YWwpOwo+ID4gwqAKPiA+IEBAIC00MjUsNyArNDI1LDcgQEAgc3RhdGljIGludCBpY2xf
Z2V0X2J3X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBjb25zdCBzdHJ1
Y3QKPiA+IGludGVsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGN0ID0gbWF4X3QoaW50LCBzcC0+dF9yYywgc3AtPnRfcnAgKyBzcC0+dF9yY2QgKwo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKGNscGNoZ3JvdXAgLSAxKSAqIHFpLnRfYmwgKyBzcC0+dF9yZHByZSk7
Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ3ID0g
RElWX1JPVU5EX1VQKHNwLT5kY2xrICogY2xwY2hncm91cCAqIDMyICogbnVtX2NoYW5uZWxzLCBj
dCk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ3
ID0gKHNwLT5kY2xrICogY2xwY2hncm91cCAqIDMyICogbnVtX2NoYW5uZWxzKSAvIGN0Owo+ID4g
wqAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJp
LT5kZXJhdGVkYndbal0gPSBtaW4obWF4ZGVidywKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGJ3ICogKDEwMCAtIHNhLT5kZXJhdGluZykgLyAxMDApOwo+ID4gQEAgLTUy
Nyw3ICs1MjcsNyBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdAo+ID4gaW50ZWwKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3QgPSBtYXhfdChpbnQsIHNwLT50
X3JjLCBzcC0+dF9ycCArIHNwLT50X3JjZCArCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoY2xwY2hncm91cCAt
IDEpICogcWkudF9ibCArIHNwLT50X3JkcHJlKTsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYncgPSBESVZfUk9VTkRfVVAoc3AtPmRjbGsgKiBjbHBj
aGdyb3VwICogMzIgKiBudW1fY2hhbm5lbHMsIGN0KTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYncgPSAoc3AtPmRjbGsgKiBjbHBjaGdyb3VwICog
MzIgKiBudW1fY2hhbm5lbHMpIC8gY3Q7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYmktPmRlcmF0ZWRid1tqXSA9IG1pbihtYXhkZWJ3
LAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYncgKiAoMTAwIC0gc2Et
PmRlcmF0aW5nKSAvIDEwMCk7Cj4gCgo=
