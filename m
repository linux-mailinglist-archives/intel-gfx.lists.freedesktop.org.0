Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0E576A919
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 08:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2356A10E0D6;
	Tue,  1 Aug 2023 06:30:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C2110E0D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 06:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690871451; x=1722407451;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gw4YnWCUdP+s3qxIK2GcL8hI94mvD5GS/Uih5FGFGUU=;
 b=SrXc+6TPlHrxITazea9PjdoV44vykzoduZ/jqG8unP5Roy2vSxvadJVK
 NckwtCtNv/0y2OkJbHHeid+mZPHOjYEq84+cdTUKk8jUY7pI6dWrIhuMg
 yI+fwxRmX3tW+3j8zBDJZjFTbRMn/l1kQUksi+6QpYC7B76AbsQA+iyBs
 7mJEjpUtk1zKXZrSTn6Qkn3FtHZyUodAOpnm2xayy/IHfjN+h7eLdOY8Q
 AIOf3q6iNY2+K5lccwqFj7jg6RmhGTFofYbH8TA4EmKSXZmw8NAGUP41O
 uZwe3jJ4mHODCHrNCm+Brhm242nNEqKjBcQCo10iQ+0MtV0KXOHF4aEA4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="359255417"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="359255417"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 23:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="975152854"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="975152854"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2023 23:30:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 23:30:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 23:30:50 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 23:30:50 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 23:30:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VAVmUQtjylcxfScHfflRKU2yp9NfsWg6ZrO+KHB9zJKAh5i5dhk8IcF3ybyOG/0Mx0kdv5orZcZ6aXaITj59ePCOvhx5hUbtkeZ09gwhf0gdUJ1gqC1O6IAklg3gTpBYkRApUjkgESJNONI6DpbkiAZ1eYMKT8JS9X5x39fDRJaKf+SATmfLZols7IxjOq5OVHLIjTXeweY5ENkoMaTZfy4jUom+B7syhuIduKAse7XDf8X4HlqOdhgwTX4gzOgMHej4HUnQLfY4nn/flbKeQ3FHRqgOX2ImXypaRZY6SpRoN9SAAJ0mwS4neu1qkDdxhQPCKt7/xxC1A8fdw6GTbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gw4YnWCUdP+s3qxIK2GcL8hI94mvD5GS/Uih5FGFGUU=;
 b=AbhaCzUKXm6y6xWyByzTS2sWUESt7ldVD4ojs8PK2r2dHpgRuysaH4lAlnnAo4x34HoBPQvULti88yc1IOiNV6NXFkAGOjWzMJmTa76Ys0JklaKvHxLJAtB1eZfa18l1P8j/hayYvs0MdyE83oo0QJ3uy3e+kCxjkZNFydpdZHbrXcC78/4/kYmJAAggK9pS2fJgOs8nLQCD2DWa2U/4TAtEWj2f58WWe+V8eIT1Yj/R+9RU3HWoo3JIEQ9Kf9sp7ZFrDarFW4mBRIl1MBAm3P4vFec6ALwu7ikz66OOPOltvBN3hxVMdRDuy9w7v0EI2HW0wy4uGsoNLCuZzki9gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB5159.namprd11.prod.outlook.com (2603:10b6:510:3c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 06:30:48 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d9be:7bed:df51:87ef]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d9be:7bed:df51:87ef%7]) with mapi id 15.20.6631.042; Tue, 1 Aug 2023
 06:30:48 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 0/6] Panel replay phase1 implementation
Thread-Index: AQHZwVLrXyVFcVWj8UyahnD9Np5qrK/TaYUAgAGWAHA=
Date: Tue, 1 Aug 2023 06:30:47 +0000
Message-ID: <PH7PR11MB5981080BFED5BCF488E7BAFBF90AA@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
 <4b28c4fc9f2f3507987c360eb9aede976491f8e1.camel@intel.com>
In-Reply-To: <4b28c4fc9f2f3507987c360eb9aede976491f8e1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB5159:EE_
x-ms-office365-filtering-correlation-id: 2f9b4b5b-7392-4b1a-d4d2-08db9258d7c6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XzpsJc9empy8YJcTT62ebVvlJQCOPEWy9dr8sKMIkSsS66PqrGhI7uzlrIrYEjRcqvLkAuqSScmOF8K2wynQbdodox7nWzbuJd5X9kNwoDxmsU/vxD4PNqNiLCVvaV2f9lIb7A8wDTXgOgS1sExlpcHb9qqY2ig4me9y+0jL2yVFIdsLCa4bzwbGFqxZ3yP3ihkRUovWAw/O3uGnhi/PdHKdQ6Isc7dU2QnvSm8BoRMqtFO6Vfj/ebMHw4P0PoQN3PgyxiSHyIJUHXHHcwlshgHp9QoB2OubH/mTTi1a8mXmSX94fwvs9nH82S0U47Needxh71X5hHyuASkxZgz3ty2KV7KyVtz7jne3toYLq58wU42l3KZUXs4WmSK27zDuNPyh+TYtxn0ymEtYRVXSjJvZSujWLbXhlVq5KWN1aubj7/8vxgBHpXXgyLOyEKziEyKO7anZA8TUl6ChxB1UmwIz6O0G8D9mClrJkXEkxIAFmd7EkrS/mIH6RWxsK5A9OEpLtCXYTZ3XkY3axIGzbQo9Z0/a41++hCV4JT5Tx0pNmaXIucbh1ZRimFYL4eaxvYOfaFAecD7sjANCmPMYZCal3ipReY2XCoEJkjkkoibbTqtjhZg5J5MtvygQO84X
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(366004)(136003)(396003)(451199021)(122000001)(26005)(478600001)(186003)(316002)(4326008)(53546011)(6506007)(41300700001)(107886003)(55016003)(110136005)(82960400001)(9686003)(7696005)(38070700005)(38100700002)(2906002)(52536014)(83380400001)(71200400001)(5660300002)(86362001)(33656002)(8936002)(8676002)(66574015)(66446008)(66476007)(66946007)(76116006)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlVEZkdhK0dGaG5YeGJVaDJsckQvYTN5WThJaXNhbUpwbFdWbEQvMnpCYnpS?=
 =?utf-8?B?d1ZYT05COXJRQVlyZGN5Y2RaS2d3alNXQnV4QzVvUDd5VGN5ZkxiVHR4ek1N?=
 =?utf-8?B?UFhJdnlCaHc3SXhJbGU1bkc0VnBBVE9sYzNqenJxd0U4cjJaaFA5aCt1NVBt?=
 =?utf-8?B?azFxZTNWTnArR28rbjFBTy9Dbks0eVR6bnJvcG1GU3BaSVdkdXpVclJtRER5?=
 =?utf-8?B?RWwxYVkxN3dNd3hJYUlZY1JEVmI2MlkxNHM1c0RxZVFJTmZmdUpkN09iZkhZ?=
 =?utf-8?B?ajAyT1RKZHhLKyttdFUwSHgzMC9NdmNpVnkvTytvemlUVjdqczRZRTZUTE9o?=
 =?utf-8?B?SnBWaUhZdExBbllnZGNUQ0RMYWhwdDZQT3ZuckowdGVDczlLRGFGNEcxclR2?=
 =?utf-8?B?NWxPUlQ1WnprMFcwTS93aGZrWlFaODJ6NnhtaDdyNkU5cE5Sak5WekJ1MFlh?=
 =?utf-8?B?SXFGV3FEUzlzRVd4UFltTnRhTkRaNzA5OWRYUUxTYVBScnREdUhPOVBIbnVY?=
 =?utf-8?B?VWpBaVV6N2NSRDJ1VEU4RFBHTWJJMGRvRzdHa2J4MHZFWkxOK3JGUGZCSk9L?=
 =?utf-8?B?c0MyYXZ4WHZ2M0dVcTVwZitCZjRxTGdMNFAxRHl4N0VneEhmRTJGTEJZaDJ2?=
 =?utf-8?B?Yk9JN1k5QzYvb0xkTFZTODVYYXNFUUg2OTdKV2xuY1VDZUk1cnJhZjh1ZHY1?=
 =?utf-8?B?WFUvMC9FWmxTZmh1cXh6ZlZiamQxaEhRSlVDU1FoZkVnRUU1TFkxRCs1cVo0?=
 =?utf-8?B?SGk0YjdZbDhpbEM1UlFBaENHVnJEUjhxa3Y5K1o4SWxYWXV6WUlHa2wrU0tI?=
 =?utf-8?B?SjRQQWY1QStHcEI5T25xbzU1YjUvc0QwOXlGUVZySlVmRTE1THBpSlpZWFp0?=
 =?utf-8?B?SHNwRm5MMEEraENYV1ZFK0I2QU44Q1Y2Z3VCQjNsT1BTRFJMZE1HaVkzdDEr?=
 =?utf-8?B?cmFmRS83NDNGUFprUDFiRXVYRDVNakltL2VheFppSW1qaXd2djlrR25oMURo?=
 =?utf-8?B?a3diMXM4UVVSQzhlN0hqbk9ycTN6NnFRNUo0VVJWQXVtbzZicEhLRmZaRG9J?=
 =?utf-8?B?bVp0MGRBaVpIQkxSWXBQdi9VY3crdmFjUjg1TDlhb2llQkg5WnBySnVjVEcw?=
 =?utf-8?B?RDFsZmNLUnFHWUhtQ1A5NlMrNEdhd1lVc2tTQWRNczFkZ0FwYlUrRFFUVEtQ?=
 =?utf-8?B?M1czSlVudm5jRGxzMmROeWNHdjlXRXZDazk0bFpUVHh0TXNHUXBVbisvNldM?=
 =?utf-8?B?ZUFESlZrZ2JMTFU4YUxzREtaTnN4dk8rbDBJazR0SXVGR0xCblFjWmZucmxo?=
 =?utf-8?B?TmNtL1B5NG56WkJpVVJnUnZXMVF6TSt3STBoUFNBTmRpR0djRytOUUNZMWgx?=
 =?utf-8?B?RGI0dUlhaklnNXB1OEJIWHI1a3h1ZzBNTGsxK2o5Syt1Rzc0S2ZHZytDSnlG?=
 =?utf-8?B?Zzh3SkxGK05xTnV6QVh2MmNPdFFCMkMvaS8wUEZvVlEwMmo2RlQyVW4vbmtZ?=
 =?utf-8?B?VW9Gc2sxVWZoRXYwSjVuSC9HT0ttbWlBUFh1TTl5OEZyZXd3UmNjM2JOWXM1?=
 =?utf-8?B?KzBoZnZ0SHo4RFRKQURnWlR1b2k0RHdYcHFKY3crY2hxekRkd2RwKzJhUXFq?=
 =?utf-8?B?NHA3WERLN2VsVUV3TjhFTmpjMTc3UVA1SXRURVRwZWNIU0FkQWVsMHBtMjZm?=
 =?utf-8?B?UnRzdkN1ZmhaRDVUWFhHYmMxVVBqZXBTRVVnMkw4SlRud2dPbVN5RTZQdnBj?=
 =?utf-8?B?OW9Ba1hHQjI1R09KRnVNbFBCcjZwbHlpWlgvSWNweU5NTERDcitqeGoyYXg2?=
 =?utf-8?B?dFhyTHVYc1ZqWVEraEdHSTZ0Y3R0eEYycXhPeFNXaTBDRE5ueldJMU5IbkNk?=
 =?utf-8?B?d0RqOUxaSnBQbmd5N1VWdCtLc3hsS0FtcFNac1B5MEZzRjZtSFFFRXl6a3ZU?=
 =?utf-8?B?LzZ2VFRIRkJDN1JWcitWamFjM1dJSVVNd3FTNmIxcU52U2t0SFhEQnNMa3ln?=
 =?utf-8?B?cU9rcGJDcFl0ZDVlWWxUeXAzMjFYclFWZWZ0aUUycDBQSGQ5cWxwM3cxQ2pU?=
 =?utf-8?B?NFprK3ltcGdBRngyczFmOGhvemJXMmszS1lDZ3g2U1A5TGxXS1FwdFdqL1l3?=
 =?utf-8?Q?9uY/hcJMbXG1fwmgVtN90JUR1?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f9b4b5b-7392-4b1a-d4d2-08db9258d7c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 06:30:47.7819 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4IjukcbaNPGkCUVSCxPoOMaa9apr8UeMTGlVkJ3qapkFZSPcNiPagQ4V15dWfWmNcGHo/VLJR9EJDY0fChrITg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5159
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 0/6] Panel replay phase1 implementation
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

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpv
dW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgSnVseSAzMSwg
MjAyMyAxMTo0MyBBTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE11cnRoeSwg
QXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2
MyAwLzZdIFBhbmVsIHJlcGxheSBwaGFzZTEgaW1wbGVtZW50YXRpb24NCj4gDQo+IE9uIEZyaSwg
MjAyMy0wNy0yOCBhdCAxODoxNiArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gPiA+IFBh
bmVsIFJlcGxheSBpcyBhIHBvd2VyIHNhdmluZyBmZWF0dXJlIGZvciBEUCAyLjAgbW9uaXRvciBh
bmQNCj4gPiA+IHNpbWlsYXIgdG8gUFNSIG9uIEVEUC4NCj4gPiA+DQo+ID4gPiBUaGVzZSBwYXRj
aGVzIGFyZSBiYXNpYyBlbmFibGVtZW50IHBhdGNoZXMgYWRkZWQgb24gdG9wIG9mIGV4aXN0aW5n
DQo+ID4gPiBwc3IgZnJhbWV3b3JrIHRvIGVuYWJsZSBmdWxsLXNjcmVlbiBsaXZlIGFjdGl2ZSBm
cmFtZSB1cGRhdGUgbW9kZSBvZg0KPiA+ID4gcGFuZWwgcmVwbGF5LiBQYW5lbCByZXBsYXkgYWxz
byBjYW4gYmUgZW5hYmxlZCBpbiBzZWxlY3RpdmUgdXBkYXRlDQo+ID4gPiBtb2RlIHdoaWNoIHdp
bGwgYmUgZW5hYmxlZCBpbiBhIGluY3JlbWVudGFsIGFwcHJvYWNoLg0KPiA+ID4NCj4gPiA+IEFz
IHBlciBjdXJyZW50IGRlc2lnbiBwYW5lbCByZXBsYXkgcHJpb3JpdHkgaXMgaGlnaGVyIHRoYW4g
cHNyLg0KPiA+ID4gaW50ZWxfZHAtPnBzci5wcl9lbmFibGVkIGZsYWcgaW5kaWNhdGUgcGFuZWwg
cmVwbGF5IGlzIGVuYWJsZWQuDQo+ID4gPiBpbnRlbF9kcC0+cHNyLnByX2VuYWJsZWQgKyBpbnRl
bF9kcC0+cHNyLnBzcjJfZW5hYmxlZCBpbmRpY2F0ZXMNCj4gPiA+IHBhbmVsIHJlcGxheSBpcyBl
bmFibGVkIGluIHNlbGVjdGl2ZSB1cGRhdGUgbW9kZS4NCj4gPiA+IGludGVsX2RwLT5wc3IucHJf
ZW5hYmxlZCArIGludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkICsNCj4gPiA+IGludGVsX3Bzci5z
ZWxlY3RpdmVfZmV0Y2ggZW5hYmxlZCBpbmRpY2F0ZXMgcGFuZWwgcmVwbGF5IGlzIGVuYWJsZWQN
Cj4gPiA+IGluIHNlbGVjdGl2ZSB1cGRhdGUgbW9kZSB3aXRoIHNlbGVjdGl2ZSBmZXRjaC4NCj4g
PiA+IFBTUiByZXBsYXRlZCBmbGFncyByZW1haW4gc2FtZSBsaWtlIGJlZm9yZS4NCj4gPiA+DQo+
ID4gPiBOb3RlOiBUaGUgcGF0Y2hlcyBhcmUgbm90IHRlc3RlZCBkdWUgdG8gdW5hdmFpbGFiaWxp
dHkgb2YgbW9uaXRvci4NCj4gDQo+IENvdXBsZSBvZiBnZW5lcmljIGNvbW1lbnQgY29uY2Vybmlu
ZyB0aGUgd2hvbGUgc2V0Og0KPiANCj4gSSBzZWUgYm90aCBQUiBhbmQgUEFORUxfUkVQTEFZIGJl
aW5nIHVzZWQgaW4geW91ciBwYXRjaGVzLiBJIHdvdWxkIGNob29zZQ0KPiBlaXRoZXIgUFIgb3Ig
UEFORUxfUkVQTEFZIC4gU2FtZSB0aG91Z2h0IG9uIFNVIGFuZCBTRUxFQ1RJVkVfVURBVEUuIEFz
DQo+IFBBTkVMX1NFTEZfUkVGUkVTSCBpcyBQU1IgSSBkb24ndCBzZWUgd2h5IFBSIHNob3VsZCBi
ZSBQQU5FTF9SRVBMQVkuDQo+IEFsc28gU1UgaXMgd2lkZWx5IGFscmVhZHkgdXNlZCBpbiBwc3Ig
ZGVmaW5pdGlvbnMgSSB3b3VsZCB1c2UgaXQgZm9yIHBhbmVsDQo+IHJlcGxheSBkZWZpbml0aW9u
cyBhcyB3ZWxsLg0KDQpTdXJlLCBpbnN0ZWFkIG9mIHByIHdpbGwgYWRkIHBhbmVsX3JlcGxheSwg
SmFuaSBhbHNvIHN1Z2dlc3RlZCBzb21ldGltZSBiYWNrLg0KSSBhbSBub3QgYWRkaW5nIHNlbGVj
dGl2ZSB1cGRhdGUgcmVsYXRlZCBmbGFnLiBJZiBuZWVkZWQsIHdlIGNhbiBoYXZlIGEgc2VwYXJh
dGUgcGF0Y2guDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkg
SMO2Z2FuZGVyDQo+IA0KPiA+ID4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+DQo+ID4gPg0KPiA+ID4gQW5pbWVzaCBNYW5uYSAoNSk6DQo+ID4gPiDC
oCBkcm0vcGFuZWxyZXBsYXk6IGRwY2QgcmVnaXN0ZXIgZGVmaW5pdGlvbiBmb3IgcGFuZWxyZXBs
YXkNCj4gPiA+IMKgIGRybS9pOTE1L3BhbmVscmVwbGF5OiBBZGRlZCBIQVNfUEFORUxfUkVQTEFZ
KCkgbWFjcm8NCj4gPiA+IMKgIGRybS9pOTE1L3BhbmVscmVwbGF5OiBJbml0aWFsaXphdG9uIGFu
ZCBjb21wdXRlIGNvbmZpZyBmb3IgcGFuZWwNCj4gPiA+IMKgwqDCoCByZXBsYXkNCj4gPiA+IMKg
IGRybS9pOTE1L3BhbmVscmVwbGF5OiBFbmFibGUgcGFuZWwgcmVwbGF5IGRwY2QgaW5pdGlhbGl6
YXRpb24gZm9yDQo+ID4gPiA+IERQDQo+ID4gPiDCoCBkcm0vaTkxNS9wYW5lbHJlcGxheTogZW5h
YmxlL2Rpc2FibGUgcGFuZWwgcmVwbGF5DQo+ID4gPg0KPiA+ID4gSm91bmkgSMO2Z2FuZGVyICgx
KToNCj4gPiA+IMKgIGRybS9pOTE1L3BzcjogTW92ZSBwc3Igc3BlY2lmaWMgZHBjZCBpbml0IGlu
dG8gb3duIGZ1bmN0aW9uDQo+ID4gPg0KPiA+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X2RldmljZS5owqDCoCB8wqDCoCAxICsNCj4gPiA+IMKgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoMKgIDkgKy0NCj4gPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoMKgwqDCoMKgIHzCoCA0NCAr
KysrLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDC
oMKgwqDCoCB8IDE1OCA+DQo+ID4gPiArKysrKysrKysrKysrLS0tLS0NCj4gPiA+IMKgaW5jbHVk
ZS9kcm0vZGlzcGxheS9kcm1fZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgIDExICsrDQo+ID4gPiDCoDUgZmlsZXMgY2hhbmdlZCwgMTY4IGluc2VydGlvbnMoKyksIDU1
IGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gDQoNCg==
