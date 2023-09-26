Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0A37AF366
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 20:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B715810E151;
	Tue, 26 Sep 2023 18:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D973510E151
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 18:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695754667; x=1727290667;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oGI7lko0wgK0xcM6mRQncOxtvlykI2sTJDuFBJJbMBM=;
 b=FbSH2Z6ZBDBipOcW9AVPEzzDgSgHhr2Gu60hUyvhfMvgscmN7wtFG6sa
 CuDAzkfBK/GCTGa5/5RVYfWT8TZ6l8gIzROco9rRxZLddImGR0v3sKoWA
 WdTM0kot1Ep3y3gguVAiby/bvrbKrTlJXLVZTV+gM6Dxxs4k5auwU7lwu
 LCxdIKVYA1QcZsFLXDmaZGu33iRhTU/KsiJv096YYAspzmqD2SRkGcs2V
 rpO+uS9dDSqYq+gWU2J2LsVW96zbeI+eaaPObDyOTJ556V8Ukh/m9rsN8
 Aq/IPHl4FSCmD/34VEiBapVQRRGk64SHvQDz9rwdw0NIOT2v1dzVFA+Hx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="448140039"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="448140039"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 11:57:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="819139470"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="819139470"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 11:57:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 11:57:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 11:57:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 11:57:36 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 11:57:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SkivdJXsaDnsNJr2Ky213d9zISBZInTZp5Ss69/sUdbV1yp5DTcqsaEBGLYqCIHeTwXabBEUlyCbuHERpLl8a3GfzOkUcC7ZLUME/REkmceN5XnCdXSjRXYMVA2vPSX8+nzBo4KQnxXR++wK/jvHEPZInB+ZjjDyLPVBqyDsWJ5QhB6Vb7U8aIA9UBWw2Ew4T4QQJqwQ5pD5Do/iUQCTCo26iCzIfYX/SoRODlQZUQhTcFV4Y77S9s6+AMqx6RlvbYkYca6R/zpjdlZSk+xKUjuVU/Omi9IqPcvqH5KK2+HgWHj7QxNrba5l7hOWd5vitqxqxXbazfisqMK1UcbxZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oGI7lko0wgK0xcM6mRQncOxtvlykI2sTJDuFBJJbMBM=;
 b=DKlSe0UjFLcs7xL1MlfDduCFowE1MCyPAZIwBF6i7Le8FnjIMk9YsrYSQXQGF61Xx6Pcr5wfGnEG/o9kJbrRVRPvJhmlVjkEtPs16c5mS6j++nNppSwFOg8qTZKtRU0zt8S00IOGPHSgS0CAxaOgZdoyOxensbLIzmRyF1WlsDjmO9f3s1c0kPLBLyY8dYfSsWk6BXEumvkhlgGzq+CTdJm0XnWaDnhvM7ffRAV1i8LQqboqdXKMVtd1sV5lcJ109adr6qzTOFp6vtOwgprCMfSaUKels9ekUppC7GGh78gcb0snuZD/vBEaacxYLbh2lBHP/RwMLcaNtn/O/GBzLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.23; Tue, 26 Sep 2023 18:57:35 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 18:57:34 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2] drm/i915/display: Add a wrapper function for vga decode
 setup
Thread-Index: AQHZ73uS6ynOnIqy70+V+p8DBDRpCrAs8LCAgACGn8A=
Date: Tue, 26 Sep 2023 18:57:34 +0000
Message-ID: <DM4PR11MB6360B58EF8067492F1B5512CF4C3A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230925065014.1252784-1-uma.shankar@intel.com>
 <87h6nhkxw8.fsf@intel.com>
In-Reply-To: <87h6nhkxw8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB5341:EE_
x-ms-office365-filtering-correlation-id: 1d4cd88c-df84-4e2a-57f4-08dbbec27203
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: S06jEMMzhb/ybfim+luc9HZZvEJgcUDaL2Z5gg1QIh6Bg1hnNGpJzRXS33SpGT3d7d+ffY+Rw0V7d8JCRYP5g31zLYJFrGddGJaujODlXGSarE79Ic13voRxPioYp/YEhlbvlw69PjOx/63yLIqygF541mqubcaZ58zLgK7m0ngOH0To7vTv3iP1wxz3IcS4vbRAyIN0KgcC6uewZW8BY1zlL5h78PA6I6JkQXIN/JTvnFmQ/zkrIHK6nPJq7EShx4QukoLGX62PGPThHpkc1FKvM4g9IhFqAcLZqwyLbxAFMFckel7vLu6qv5A54hPBxbd+hQxtyhrGHOWFnR4WrqPfIM2xetYFAtmuPFEYL6VAbMJCn0PNmvLJhIZeBVsDLZeUdIRssvmKRyOkFfdY/RsdkTLMzypvPy0lvTDpCiE/77/rA3NALClWsDxIiZXx5m/oUnuVkIjwh3Rv8sNWVgmNe9ESkx06khtwUHtB1wsa+k/Xoi1UPYWVUpP49wmpzmrjxY0ynzZVRMJk4wGOrVwgljc4/eywpo+hC7cFlylo4R3BbYDF1Wouz4hUqqZJLwXrgRIr5GcqWyh06nOUUS9cNXAe6vqk1ziBzO5w612x8RgeiY2v9u5PAZlTIXUT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(136003)(366004)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(2906002)(478600001)(6506007)(7696005)(53546011)(71200400001)(38100700002)(82960400001)(38070700005)(83380400001)(122000001)(9686003)(33656002)(86362001)(26005)(55016003)(41300700001)(52536014)(8936002)(8676002)(66446008)(110136005)(64756008)(66476007)(76116006)(66556008)(66946007)(316002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUxzTUVteW9ROWMzMEJrU1IxVjJNVWVWd2pIaGZxKzZFYmxlT1Npb2hLdjFh?=
 =?utf-8?B?c1dUb2FBdmIyV05nZFowazlQUkc3NENsbERRWkVUUFNBTGtqeTRES3doK0tp?=
 =?utf-8?B?WHpNUURMUUxsRGNUREsxRW1tOUt0Y25WK1VydDZQL2hySlFpWmRCblRWZGVs?=
 =?utf-8?B?clRsL0RMZ0tTS1lLSTVFVjRJZkNpTTlEeUhBWGplcjVtUmtTbm8rMkJLd1Ax?=
 =?utf-8?B?MVh6UzkzNnNGbzZKYkEzdENzaTVRWWFydHV1MXhEMWx6NVVJbTRNZDVFUXgw?=
 =?utf-8?B?K1ZscHpBeXlWdTFFbklUVWNIRFM0eUN0cWk0bXp0b1I4dVh1bTJodkNTdkhN?=
 =?utf-8?B?eHFZc2wxNTFVVTQrUkhDOU4vS0hZVlhxV25uUEZMMURsQVBybmtwL29nVUxZ?=
 =?utf-8?B?WERiR1NQaGJhendDYllXN0xqZFloNnN3WjJqVm9FZC9zNEZZT2xIdUhGS1Ft?=
 =?utf-8?B?ZWxqZGZJZEJlUUp1ZitkZlIxVVBjVzZMeW15aVhXN3JzWTdLRXhuUTREK2Zt?=
 =?utf-8?B?RWhTUTNDSStyTDV6Q1Z1c3orRWU1WUpDbTY3OVpaMmRhaEhjcEhmS29zOEI0?=
 =?utf-8?B?YWllWWdVb0hxS2gvY2JZbS96TFpxTjZ6Z3hOWWlQSnVCQW9WSUpCazJBbGZv?=
 =?utf-8?B?TEZjRHRvT2ZlMkc2ajdrSHMxT3RRRG9kcjdFS3c2WmJpYXBjUTZTVzNwWXZ2?=
 =?utf-8?B?dnBhMUladXVQakZ1cUdpaTRscWdRUEthVDMyMzJ4N0FrOFNINm1NMk5hello?=
 =?utf-8?B?bFc4eTBweGdJR041Vy9BdWM3Nzk2MS9aSi9rSHFrVlV1RjhSY3ZLVGZoQkU2?=
 =?utf-8?B?VnJvNXd2WUVYTXRuOTNBbHRyNDlGa0RxQllMcGFTaXVzNnpoYUxxMGEzZjE3?=
 =?utf-8?B?WGFvTUV1WUVyNnNnVjYrLzRMSmNVK20rZXY0VUJjV3dXbHdRQUZMb0phR1FK?=
 =?utf-8?B?MUxBWTdFUGJFK2lxb3phaVNBM3dVdmhYSXFueERhbHpuRG84bEtxK1djanZT?=
 =?utf-8?B?MEkzSWhRVUxsSkJwVDRVV283SWFmVSsxT3l3QWNMMFB6ek5aU3NkMGxHbmZS?=
 =?utf-8?B?SldTWEIweEljVWZpcWRnS3ErVWl5akc2eTlqc0ZIWXpzWU1Oc0pQcW4rWklY?=
 =?utf-8?B?MlNBc2EvUUJWN2FEd3VqSzNDVEF0S1k3TTNrKzhzU2Zha2lYc09VaUdKU0xV?=
 =?utf-8?B?Nyt3aVlyYkZCOXpTdmFZRG12R3ZXdTUwSXZDRHRReTdJZ2RvbW9HcklRK3hE?=
 =?utf-8?B?bE13VUVLTGowRllycm5BRW5MVGtmZXlWNDR3dFpOa0pqYTZuYmF4blByeUVq?=
 =?utf-8?B?ZU9mTXQwV2VyMm9ZeVJHRjhVbmFtTEJZNzJHaEo2cFNsdWVnQzQ0TTBaY1dQ?=
 =?utf-8?B?ajRSSHpwZVdkeHhSSGlmNWl1NUh0NmtUQ0crQWtjUU9hajhEbS81ci9QbjFq?=
 =?utf-8?B?ZWtINkVqZVJZMjhxendZYnJoRzJtTlVnSTdiTk9LZjZ2SzZHL1JCanZJUW44?=
 =?utf-8?B?OTl2VTZZSVA5T05MVVozSVpaWnlGK0dNYktMT2J0blNNYy93dkg4ZGhOMlhm?=
 =?utf-8?B?NnROWkYzaWdSckpqUU9SL3NNWTNsblB3NnRGcmY5T1pUeTZTSW1oUHNJdjdE?=
 =?utf-8?B?R1NGYzdxUGpsQlMxUGk0MDg2L05JY1NPaGxGb2k1cXBWdGRyRFV1ZzdQcmZT?=
 =?utf-8?B?S3BoMUFyTDl2enkwU1JGS0g5bXh0WjJISzA5UHBJNFJXRXN4aTl5cTBBdWRl?=
 =?utf-8?B?MHpKS04wTWQxTW1NWlFzT200Q2cvZEJqUmQ0NFV3TWJEWUlyVmJiT0ZJUW9U?=
 =?utf-8?B?KzFwRGFSSGVhUCs1RWcwNG8xaTEwMmd2M1NCc1h4cTdjbDNaYnBaYng1L0c2?=
 =?utf-8?B?aHdRaTR5cHFaUVNQM0M4d01zU09NdFVVd21WOG9GaTN0STlsdDRkU1haaisw?=
 =?utf-8?B?ZkswT21IUjNyYVlhMEFRQjBJY3puRnR1Z0VGY2VFRXJnbFlTMkhRWHNyc0x5?=
 =?utf-8?B?a2s0UnRDb0pXcVhLMEgvbmJaMk9ZM2tnZzFYUTBkUk9mUzNuV0RObkJVOVdv?=
 =?utf-8?B?RDBYcFpnQXJ2WjBuTHJ0Z1NmZW1LWTJzK1lNdDJGU2w3T05TbGEyN3NBU29j?=
 =?utf-8?Q?tqWiiJxSjXy5kmzU1IrJbec2P?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d4cd88c-df84-4e2a-57f4-08dbbec27203
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2023 18:57:34.8350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bd1fGqTi/Fk7h0P5IBB7lYrYbK9I2PYueWC4bP6eNpHnqsirWwkhGuO4M7AbqGxMba0vEK9fBsVY/kpWdG3Cbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5341
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Add a wrapper function for
 vga decode setup
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIFNlcHRlbWJlciAyNiwgMjAy
MyA0OjI1IFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFNoYW5rYXIsIFVtYSA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW3YyXSBkcm0vaTkxNS9kaXNwbGF5OiBB
ZGQgYSB3cmFwcGVyIGZ1bmN0aW9uIGZvciB2Z2EgZGVjb2RlIHNldHVwDQo+IA0KPiBPbiBNb24s
IDI1IFNlcCAyMDIzLCBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPiB3cm90ZToN
Cj4gPiBTb21lIG9mIHRoZSBWR0EgZnVuY3Rpb25hbGl0eSBpcyBub3QgbmVlZGVkIGJ5IHRoZSBw
cm9wb3NlZCBJbnRlbCBYZQ0KPiA+IGRyaXZlciwgd2hpbGUgdGhpcyB3aWxsIGJlIHV0aWxpemVk
IGJ5IGk5MTUuDQo+ID4gQWRkaW5nIGEgd3JhcHBlciBmdW5jdGlvbiBmb3IgVkdBIGRlY29kZSBz
ZXR1cC4NCj4gDQo+IFNvLCB0aGlzIGR1cGxpY2F0ZXMgaW50ZWxfdmdhX3NldF9kZWNvZGUoKSB3
aXRob3V0IHJlbW92aW5nIHRoZSBvbGQgb25lLiBJcyB0aGF0DQo+IHRoZSBpbnRlbnRpb24/DQoN
Ck5vIEphbmksIGl0J3MgYSBmdW1ibGUg4pi5LiBXaWxsIGZpeCBpdC4NCg0KPiBJIGd1ZXNzIHRo
ZSBpZGVhIGhlcmUgaXMgdGhhdCB4ZSBkb2Vzbid0IGJ1aWxkIGludGVsX2dtY2gsIHNvIHlvdSBj
YW4gYWRkIGEgbm9wDQo+IHZlcnNpb24gdGhlcmU/DQoNClllcyByaWdodC4NCg0KUmVnYXJkcywN
ClVtYSBTaGFua2FyDQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+IA0KPiA+DQo+ID4g
djI6IEFkZHJlc3NlZCBKYW5pIE5pa3VsYSdzIHJldmlldyBjb21tZW50cy4NCj4gPg0KPiA+IFNp
Z25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMgfCAgMiAtLQ0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5jICAgIHwgMTQgKysrKysr
KysrKysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX2dtY2guaCAgICB8
ICAyICsrDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZnYS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zn
YS5jDQo+ID4gaW5kZXggMjg2YTBiZGQyOGM2Li4wZjY1Y2UxMTUwMzUgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMNCj4gPiBAQCAtMywxMSArMyw5
IEBADQo+ID4gICAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uDQo+ID4gICAq
Lw0KPiA+DQo+ID4gLSNpbmNsdWRlIDxsaW51eC9wY2kuaD4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4
L3ZnYWFyYi5oPg0KPiA+DQo+ID4gICNpbmNsdWRlIDx2aWRlby92Z2EuaD4NCj4gPiAtDQo+ID4g
ICNpbmNsdWRlICJzb2MvaW50ZWxfZ21jaC5oIg0KPiA+DQo+ID4gICNpbmNsdWRlICJpOTE1X2Ry
di5oIg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21j
aC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5jDQo+ID4gaW5k
ZXggNDljN2ZiMTZlOTM0Li5mMzJlOWY3ODc3MGEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc29jL2ludGVsX2dtY2guYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NvYy9pbnRlbF9nbWNoLmMNCj4gPiBAQCAtNSw2ICs1LDcgQEANCj4gPg0KPiA+ICAjaW5j
bHVkZSA8bGludXgvcGNpLmg+DQo+ID4gICNpbmNsdWRlIDxsaW51eC9wbnAuaD4NCj4gPiArI2lu
Y2x1ZGUgPGxpbnV4L3ZnYWFyYi5oPg0KPiA+DQo+ID4gICNpbmNsdWRlIDxkcm0vZHJtX21hbmFn
ZWQuaD4NCj4gPiAgI2luY2x1ZGUgPGRybS9pOTE1X2RybS5oPg0KPiA+IEBAIC0xNjcsMyArMTY4
LDE2IEBAIGludCBpbnRlbF9nbWNoX3ZnYV9zZXRfc3RhdGUoc3RydWN0DQo+ID4gZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgYm9vbCBlbmFibGVfZGVjb2RlKQ0KPiA+DQo+ID4gIAlyZXR1cm4gMDsN
Cj4gPiAgfQ0KPiA+ICsNCj4gPiArdW5zaWduZWQgaW50IGludGVsX2dtY2hfdmdhX3NldF9kZWNv
ZGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGJvb2wNCj4gPiArZW5hYmxlX2RlY29kZSkgew0KPiA+
ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBwZGV2X3RvX2k5MTUocGRldik7DQo+
ID4gKw0KPiA+ICsJaW50ZWxfZ21jaF92Z2Ffc2V0X3N0YXRlKGk5MTUsIGVuYWJsZV9kZWNvZGUp
Ow0KPiA+ICsNCj4gPiArCWlmIChlbmFibGVfZGVjb2RlKQ0KPiA+ICsJCXJldHVybiBWR0FfUlNS
Q19MRUdBQ1lfSU8gfCBWR0FfUlNSQ19MRUdBQ1lfTUVNIHwNCj4gPiArCQkgICAgICAgVkdBX1JT
UkNfTk9STUFMX0lPIHwgVkdBX1JTUkNfTk9STUFMX01FTTsNCj4gPiArCWVsc2UNCj4gPiArCQly
ZXR1cm4gVkdBX1JTUkNfTk9STUFMX0lPIHwgVkdBX1JTUkNfTk9STUFMX01FTTsgfQ0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5oDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfZ21jaC5oDQo+ID4gaW5kZXggZDAxMzNlZWRj
NzIwLi4yM2JlMmQxMTNhZmQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c29jL2ludGVsX2dtY2guaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRl
bF9nbWNoLmgNCj4gPiBAQCAtOCwxMSArOCwxMyBAQA0KPiA+DQo+ID4gICNpbmNsdWRlIDxsaW51
eC90eXBlcy5oPg0KPiA+DQo+ID4gK3N0cnVjdCBwY2lfZGV2Ow0KPiA+ICBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZTsNCj4gPg0KPiA+ICBpbnQgaW50ZWxfZ21jaF9icmlkZ2Vfc2V0dXAoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOyAgdm9pZA0KPiA+IGludGVsX2dtY2hfYmFyX3NldHVw
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsgIHZvaWQNCj4gPiBpbnRlbF9nbWNoX2Jh
cl90ZWFyZG93bihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7ICBpbnQNCj4gPiBpbnRl
bF9nbWNoX3ZnYV9zZXRfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGJvb2wN
Cj4gPiBlbmFibGVfZGVjb2RlKTsNCj4gPiArdW5zaWduZWQgaW50IGludGVsX2dtY2hfdmdhX3Nl
dF9kZWNvZGUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGJvb2wNCj4gPiArZW5hYmxlX2RlY29kZSk7
DQo+ID4NCj4gPiAgI2VuZGlmIC8qIF9fSU5URUxfR01DSF9IX18gKi8NCj4gDQo+IC0tDQo+IEph
bmkgTmlrdWxhLCBJbnRlbA0K
