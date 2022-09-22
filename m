Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E55B65E6332
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 15:08:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CB6210EB06;
	Thu, 22 Sep 2022 13:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 868F110EB06
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 13:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663852132; x=1695388132;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mO13JcGGMCT9w4KWQ6V0J4KFp4jLnIiidCTWaSM0YNs=;
 b=VILf5vLvPuGOf7Ac8EU8FRZKAsRyT9341LO7r6B2bZdsFB/ri3NJnZuu
 +bIlOGRldM+gi83UNP0l0AgzDirufKuBEIwKxozqdmd9m0NxacgSXK67c
 W6FYyIh+Vt8RVWKDY5a7cEC+eHXbsvviV6g0vqJ11aG32KpFD//J1AeZ1
 TKZQj3/rbNR3Dka8OqW/AjHGpDSfEeTqq17FuVEjT/LAOKxeVnqqvIVHz
 KKXFgx/V7cjWhAnCvvgIjgz4zjQBO+SaMCIdEvSP9Fv+mFQJXfOZGZepA
 3Koq8WfRX51Ft6NujmXlSz6ru+zgp4IeqTTZsxxP9VlsiXaXVl/BWxGYW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280009634"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="280009634"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 06:08:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="597425433"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 22 Sep 2022 06:08:41 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 06:08:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 06:08:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 06:08:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 06:08:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDzVwcED/Z2bGMjEf15XcqJrnX5KSOmL0kX4lJmvmHOt++O12wBIndp/GDAMjKMfhPsO59ZhD7KUzwqAUGZw05uBW8atKkQFTmIbcn/ws3QXBKMQTylpyZcGfutyT+zjby/wdjsdQq2XFqJzRhCD4XHTKqRbN5CzsfziQ4QHXGMS98SksVAWl+0kJdaYRQKpiKcxGwUY36wiISlM0zVFBssL4PnIfU6TSPPxaAGt8aukDg3fO3muYAh13I78Fh0W4/dzkDOUe2Ksa0mn1CI8SNS8npk4J5zo0v6xw0bDejANet1Qoghz44s3bqF5vNe6VDOHD4agPNi+vyZwhvEgXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mO13JcGGMCT9w4KWQ6V0J4KFp4jLnIiidCTWaSM0YNs=;
 b=V26FV7ieF4zf/7Wqb6xq+VgRZUV1Cnq/Ii4BjaM9L+/fUBLfqtFGckFkdRSaw2ITRzChKs7yiiSLALtoTf+BGrpeVigVoQeSgDRlT85dTqycpOaRSj6RV8nqMkB0eou4x037LfAi6fxK/PsawCZRvkK2h9zDmdjAHDs1ry2NuV6mRvh06rRC33yJ7ppoN+VvhQ5ANQqOhs4f4F6beglzRLHX4sJfWFkRXBPfCf39JEMfGCXGaOs/nfO1kus3wDReLmTuiAfJRjadChjD8kj+zklwLx2bfdWl+pip+NZXI61J3J+UFIkclmz5YnxUFe8CDqqw2Rs+cTGrOsP+KeoSRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.19; Thu, 22 Sep
 2022 13:08:38 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5%12]) with mapi id 15.20.5654.019; Thu, 22 Sep
 2022 13:08:38 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field handling
Thread-Index: AQHYzllhiDr/c6LwkUSnU2UTUOSTEa3rbCYA
Date: Thu, 22 Sep 2022 13:08:38 +0000
Message-ID: <3dddd19c98061e1e8173c65d1a8dcc8f5b380b80.camel@intel.com>
References: <20220922075948.111558-1-jouni.hogander@intel.com>
In-Reply-To: <20220922075948.111558-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|PH0PR11MB5880:EE_
x-ms-office365-filtering-correlation-id: 80597bae-016b-434d-bf8f-08da9c9b9046
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c2sTnMKD/WvEdxBXymxOyg3Saa3NEUvR8NbyT8d4H7Pt6+Qe4gqgxtDalQgoD7F5XrWPY3fFXclpP72jL/bFk61OE3DUSeTKREpdTAXXTNyxh3nbAf5lU2a2bdFzJYwVdM//2Yz5hPGCLk2d3Wb3I/lWhulOebrLqpdeBiBL2GSJyi3V4fr2wrZopysjs0LHJVTzf9YgqAkTUEtJZKv3C42tIr5Cj3d7Yw2y6YZlTIylo2y9Eq290h0+weWdhhKCDgsgnxCsKHysD1djl4ddrMle5ekMwB/zVMNEa9rUTgzMkyzfeM7HYo12V5dhdyuEz2IT5d6fyGXLoeDOt4CJEiv2eMfN28g/yBrK73P8x4c37JpAotjqVdCL4FgpEPP3fYyTt2o4fffQSR47pvNDz9t5Ly6SBbXp+FrZrBNqccc2FpuL9IwWiAz3nXtViNVCk0CpBEfjQFeuEp7+T6gKNCV/nGyfmBTd/3uc7kabyWYmDU+qChjqx/79RqdQits6B8mNDwgA2kfSzbiyQxuO4JL/Fg7t1F+aSkO0Lj14RM2oZRnsX0Og7AjLdtcq/JrR+RChZU6WRm2DdYPa6QYMOyh46cIoKtraHc3hxVxRapDAIdGfKdqYQMAaL0VsNVcGvjg3JtFAe/+MmbG6tVXUIUB67Dr0Uh+HdXENLl2cdZwxv0Z7q72GH9Tw5X0r+oYsFkQyOfSRu+0XKTC7yDh2OA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(136003)(376002)(39860400002)(451199015)(966005)(82960400001)(26005)(8676002)(4326008)(2616005)(6512007)(316002)(91956017)(66446008)(66476007)(66946007)(76116006)(66556008)(64756008)(6506007)(107886003)(5660300002)(38070700005)(6636002)(122000001)(2906002)(110136005)(478600001)(41300700001)(6486002)(86362001)(38100700002)(8936002)(66574015)(186003)(71200400001)(36756003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmxTS3owTS9rNHQ1OUlBTlA0UTNKeUVuQllWNFBCaDdmcHVEeU1MUjUzUENN?=
 =?utf-8?B?NmJpZS9sYTNWa1FpaUhzQW8rM3F4cTF2SW1QYXZ3Z2l5ZERVQU5IcXlQT2dI?=
 =?utf-8?B?STI5a05NOUxmUkRnYmRRODQzZ296VGx4V25MN1VDZWJwVHhkeHNCeEpKeWN3?=
 =?utf-8?B?ZjVrdEVOc29ycXN2YXlLajdBWkdwdkxQc1FPNEVjajNobitEcUVaLzg5eEJz?=
 =?utf-8?B?YnRSUFhNQW5FK0xDK0NkRUk2SW8zcGp1Z28zSU5sRVZybHd4Q3NNaVFPZnY3?=
 =?utf-8?B?eVh5eGQwS2wxUFN3ZHhDczhKa2hQUU5ucjRRMmZXYWhYRTNmSkNCd2l0Q25L?=
 =?utf-8?B?OWZhRmRUUW1CRmpnaGw4eG5zZGQ5OHdTNG9Sa1BhbFltMjczOG1IelZ1NFl5?=
 =?utf-8?B?T3B5Z1pmSCt5aEludkY2dnBkNWh3Mk5rdW5BeGZmK2dhanViZXVNZWVuUEpT?=
 =?utf-8?B?Q0wwVmpTcHFyeU9PZ29QMjZEUmlnYjZNd2ljdEN3TFBlK3pzMXdWZjQweTJY?=
 =?utf-8?B?QmtOL0VDcnVvQW0vRDUxcEN1a2FWVnlUNEx6T2xKS2dXcFl5QWg0RXgwTmN5?=
 =?utf-8?B?OGxjYXBJZkJuTmJ2elhnZlJtbDVidU5VUm9XYmpiZFVxYUJpNk8xblFjV1U2?=
 =?utf-8?B?YU9PR0NGbjJqYVFOeGVtdWJwT29TejNPTWZqQ1d0S0c3NEQ5bC9mY3IydXNM?=
 =?utf-8?B?dTMrcXpvUk5xc3lIOXFHZndnb2xGN20yTk1GMzBrNXFOQWNoWC9uMXFib2dZ?=
 =?utf-8?B?NGY2RFJKay9nSlBmeFY1Q1BydE9FQnlrNFdwVUVza3VGWlNHeFQ5OERkWnh2?=
 =?utf-8?B?MkUrODV2MnljZkdyTTFGVVBOSFdQY0x0Q0FCdHdKelV0ZVoxdEhYOVQ2K3Ev?=
 =?utf-8?B?Q2ltNDhzMlRXM1VraXlUZlV4OVYxUE1MQnRRUmVuUFRDQjlLTktteXdSOTZZ?=
 =?utf-8?B?dDBWK00zbkxWSFovekhwMEV3bWN4eDRpN2pzdjJwYjUySEpISFZva1ZYaFI2?=
 =?utf-8?B?N2JEbkNnZmwzUHI1bkllNUZIb01nZGdnbW1yRVNjUnhHZ2Q5QVdIaVl3TktB?=
 =?utf-8?B?bndSOFZOM0tzVlZQa2ltWWhjSk9vZW9TM1p3cVR5MGc2allaMWV3bDdNaUJN?=
 =?utf-8?B?ZmM5MWozMUxoZGFGdVhCVHNGN0YzcWxrcFY1RllldlZVSVl5WWJmRkJJSnFo?=
 =?utf-8?B?THRwWUpxZkMzQWw4a2tHVnRWMisxcU1Sc0ZFS2JVTXRzaTVZUHRNd2NqTTVa?=
 =?utf-8?B?ZTJ5TVUwanFLT2FPenplOXJ0U2p0T2lDYkNKSzd4bmVMNzZJcUxTZWhKZVJ1?=
 =?utf-8?B?NWd6VHozZ0JCWUNnRllKREFFVHluOTkzMXlyd1hiczZibVp6N3pzdVpsZy9p?=
 =?utf-8?B?TGVrbU1HbnRDYnhxK041QU1QOGphT3pqK3hoUEFYc1R3eUc4OVVNR1N6aWVX?=
 =?utf-8?B?dVRYOUNVazhKLzhnUDliOU54YnJ1SHpUYTkyTVI0aTkrQkxoNWZRNk5mTjJW?=
 =?utf-8?B?VUlzbnVyRnpMTUtEdS9UWktTTjI4dVBtWHQvVXFwU0dnMFZ3L04xOHNVUW9y?=
 =?utf-8?B?dEt2cHluWnhWYWpyTzFHQTlabW5XQ0V1K3BJU3RJZ0E5bzNFVSt0RzJmUlVx?=
 =?utf-8?B?VkIrOGNMMHVxaHJGWlNmOUhhdGZ6NHA1cjVRbVdJUTd4cGpRKzl4Nkd4Syth?=
 =?utf-8?B?Uk15Vkp5bUdSNWdraWk4Y1VCWkFXYnF2M3ZLajVsZG9IeUg1NndGRGVhTFJy?=
 =?utf-8?B?d3BaUk45d1hiMUVSSEZLT0lGaVJmSGxnS0lzcTN2UHZCN0E5WitUYUJWRzds?=
 =?utf-8?B?RW5nRVR1eFF5T1ZrN0h5OE9xMUk5SmUxSUE0ZkFvUGF0ZTJFRXp6M2k4UTM5?=
 =?utf-8?B?UjJZQUZCcXhnT0w0eWRlTzZ5ZEIxT0p2QmlXSG9FdTRJV1gzZVBOaXFnODBq?=
 =?utf-8?B?V20zQW1pZnNnYmhBT1E3Tko3eW5TVDF5OW40Mm10RzViQ0t2OW00THh6T0FE?=
 =?utf-8?B?elliek94SDBmUHFKbUNwY0J3YW9ZeGxJaDVsbmhmK1RURWZQL3N5dHJZTDln?=
 =?utf-8?B?cVFwdnNtaG5TR0xZcThEbk50Ny9VTUJRUUdiOHU1cmpmVTB5OGliSTJWSi9I?=
 =?utf-8?B?QlFOWEY5ZjZwS083TUQ1Qnl4anA3cjA1dU1rdEthVVV4K1Z1aHVjdjM1aDgv?=
 =?utf-8?B?UkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EFE101979FCD9E4A9EFD585641B33BD7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80597bae-016b-434d-bf8f-08da9c9b9046
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2022 13:08:38.0453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P/cPhj3v7y6ObihDxVXbD6Me3t26N6C97R8YSV/4iJ6/+DitpsF8xMySdew8EH9ubLr/hxgsApBsrcsyaMon1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5880
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field
 handling
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

T24gVGh1LCAyMDIyLTA5LTIyIGF0IDEwOjU5ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnQgUFNSIGNvZGUgaXMgc3VwcG9zZWQgdG8gdXNlIFRSQU5TQ09ERVJfRURQIHRv
IGZvcmNlIDAgc2hpZnQgZm9yDQo+IGJpdHMgaW4gUFNSX0lNUi9JSVIgcmVnaXN0ZXJzOg0KPiAN
Cj4gLyoNCj4gICogZ2VuMTIrIGhhcyByZWdpc3RlcnMgcmVsYXRpdmUgdG8gdHJhbnNjb2RlciBh
bmQgb25lIHBlciB0cmFuc2NvZGVyDQo+ICAqIHVzaW5nIHRoZSBzYW1lIGJpdCBkZWZpbml0aW9u
OiBoYW5kbGUgaXQgYXMgVFJBTlNDT0RFUl9FRFAgdG8gZm9yY2UNCj4gICogMCBzaGlmdCBpbiBi
aXQgZGVmaW5pdGlvbg0KPiAgKi8NCj4gDQo+IEF0IHRoZSB0aW1lIG9mIHdyaXRpbmcgdGhlIGNv
ZGUgYXNzdW1wdGlvbiAiVFJBTlNDT0RFUl9FRFAgPT0gMCIgd2FzIG1hZGUuDQo+IFRoaXMgaXMg
bm90IHRoZSBjYXNlIGFuZCBhbGwgZmllbGRzIGluIFBTUl9JTVIgYW5kIFBTUl9JSVIgYXJlIHNo
aWZ0ZWQNCj4gaW5jb3JyZWN0bHkgaWYgRElTUExBWV9WRVIgPj0gMTIuDQoNCkZyb20gd2hlcmUg
YXJlIHlvdSBnZXR0aW5nIHRoYXQgVFJBTlNDT0RFUl9FRFAgPT0gMD8NCg0KDQplbnVtIHBpcGUg
ew0KCUlOVkFMSURfUElQRSA9IC0xLA0KDQoJUElQRV9BID0gMCwNCglQSVBFX0IsDQoJUElQRV9D
LA0KCVBJUEVfRCwNCglfUElQRV9FRFAsDQoNCglJOTE1X01BWF9QSVBFUyA9IF9QSVBFX0VEUA0K
fTsNCg0KI2RlZmluZSBwaXBlX25hbWUocCkgKChwKSArICdBJykNCg0KZW51bSB0cmFuc2NvZGVy
IHsNCglJTlZBTElEX1RSQU5TQ09ERVIgPSAtMSwNCgkvKg0KCSAqIFRoZSBmb2xsb3dpbmcgdHJh
bnNjb2RlcnMgaGF2ZSBhIDE6MSB0cmFuc2NvZGVyIC0+IHBpcGUgbWFwcGluZywNCgkgKiBrZWVw
IHRoZWlyIHZhbHVlcyBmaXhlZDogdGhlIGNvZGUgYXNzdW1lcyB0aGF0IFRSQU5TQ09ERVJfQT0w
LCB0aGUNCgkgKiByZXN0IGhhdmUgY29uc2VjdXRpdmUgdmFsdWVzIGFuZCBtYXRjaCB0aGUgZW51
bSB2YWx1ZXMgb2YgdGhlIHBpcGVzDQoJICogdGhleSBtYXAgdG8uDQoJICovDQoJVFJBTlNDT0RF
Ul9BID0gUElQRV9BLA0KCVRSQU5TQ09ERVJfQiA9IFBJUEVfQiwNCglUUkFOU0NPREVSX0MgPSBQ
SVBFX0MsDQoJVFJBTlNDT0RFUl9EID0gUElQRV9ELA0KDQoJLyoNCgkgKiBUaGUgZm9sbG93aW5n
IHRyYW5zY29kZXJzIGNhbiBtYXAgdG8gYW55IHBpcGUsIHRoZWlyIGVudW0gdmFsdWUNCgkgKiBk
b2Vzbid0IG5lZWQgdG8gc3RheSBmaXhlZC4NCgkgKi8NCglUUkFOU0NPREVSX0VEUCwNCg0KaHR0
cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0tdGlwL3RyZWUvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lmgjbjg3DQoNCj4gDQo+IEZpeCB0aGlzIGJ5IHVzaW5n
IFRSQU5TQ09ERVJfRURQIGRlZmluaXRpb24gaW5zdGVhZCBvZiAwLiBFdmVuIHRob3VnaHQNCj4g
VFJBTlNDT0RFUl9FRFAgZG9lc24ndCBleGlzdCBpbiBkaXNwbGF5X3ZlciA+PSAxMiBkb2luZyBp
dCB0aGlzIHdheSBrZWVwcw0KPiBjb2RlIGNsZWFuIGFuZCByZWFkYWJsZS4NCg0KdHJhbnNfc2hp
ZnQgPSAwIGlzIGZpbmUsIHdlIG5lZWRlZCB0aGlzIGJlY2F1c2UgZGlzcGxheTEyKyBzcGxpdGVk
IGZyb20gYSBzaW5nbGUgcmVnaXN0ZXIgd2l0aCBhbGwgdHJhbnNjb2RlciB0byBvbmUgcmVnaXN0
ZXIgcGVyIHRyYW5zY29kZXIuDQoNCj4gDQo+IHYyOiBJbXByb3ZlIGNvbW1pdCBtZXNzYWdlIChK
b3PDqSkNCj4gDQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IA0KPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiAr
KystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXgg
OWRlZjhkOWZhZGU2Li45ZWNmMWE5YTExMjAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyB2b2lkIHBz
cl9pcnFfY29udHJvbChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCSAqIDAgc2hpZnQg
aW4gYml0IGRlZmluaXRpb24NCj4gIAkgKi8NCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYp
ID49IDEyKSB7DQo+IC0JCXRyYW5zX3NoaWZ0ID0gMDsNCj4gKwkJdHJhbnNfc2hpZnQgPSBUUkFO
U0NPREVSX0VEUDsNCj4gIAkJaW1yX3JlZyA9IFRSQU5TX1BTUl9JTVIoaW50ZWxfZHAtPnBzci50
cmFuc2NvZGVyKTsNCj4gIAl9IGVsc2Ugew0KPiAgCQl0cmFuc19zaGlmdCA9IGludGVsX2RwLT5w
c3IudHJhbnNjb2RlcjsNCj4gQEAgLTE5NSw3ICsxOTUsNyBAQCB2b2lkIGludGVsX3Bzcl9pcnFf
aGFuZGxlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1MzIgcHNyX2lpcikNCj4gIAlpOTE1
X3JlZ190IGltcl9yZWc7DQo+ICANCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEy
KSB7DQo+IC0JCXRyYW5zX3NoaWZ0ID0gMDsNCj4gKwkJdHJhbnNfc2hpZnQgPSBUUkFOU0NPREVS
X0VEUDsNCj4gIAkJaW1yX3JlZyA9IFRSQU5TX1BTUl9JTVIoaW50ZWxfZHAtPnBzci50cmFuc2Nv
ZGVyKTsNCj4gIAl9IGVsc2Ugew0KPiAgCQl0cmFuc19zaGlmdCA9IGludGVsX2RwLT5wc3IudHJh
bnNjb2RlcjsNCj4gQEAgLTExOTcsNyArMTE5Nyw3IEBAIHN0YXRpYyBib29sIHBzcl9pbnRlcnJ1
cHRfZXJyb3JfY2hlY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpID49IDEyKSB7DQo+ICAJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3By
aXYsDQo+ICAJCQkJICAgIFRSQU5TX1BTUl9JSVIoaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyKSk7
DQo+IC0JCXZhbCAmPSBFRFBfUFNSX0VSUk9SKDApOw0KPiArCQl2YWwgJj0gRURQX1BTUl9FUlJP
UihUUkFOU0NPREVSX0VEUCk7DQo+ICAJfSBlbHNlIHsNCj4gIAkJdmFsID0gaW50ZWxfZGVfcmVh
ZChkZXZfcHJpdiwgRURQX1BTUl9JSVIpOw0KPiAgCQl2YWwgJj0gRURQX1BTUl9FUlJPUihpbnRl
bF9kcC0+cHNyLnRyYW5zY29kZXIpOw0KDQo=
