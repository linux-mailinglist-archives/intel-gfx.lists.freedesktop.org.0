Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E1A7AF1AA
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 19:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586B510E145;
	Tue, 26 Sep 2023 17:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6175A10E145
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 17:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695748751; x=1727284751;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fA9CgpgmNG9AiB7lb3EKcljTaD2R26byDs+cedcu5DA=;
 b=d7qfJgjdD7GNj4DkuuehbNTlpoA5npemDS5JzaV0xamz/nDHcqR/952q
 HSG/yDd0Q28779AEVC96bshjOpTUbBh+4EXNfr/lMCAhhuM4VsFdMhufD
 PVqQb6zT8AtGGmaguRFuvOoCIqlVi7Yya8EcSKNARwfs8j/LhzJa+TbNr
 brSwl1TFn3D1KQxfOtMMMMnVY/a9QfYP0kCfjbWra2Qi+auB0En6PdGPO
 oPuo2WCHiJA4F//QcVytvjT1JQPEB5JyV338WxZa5UEyr7dIR3CKVnsKE
 qy/OjY+81DUc9JgIpH3z+wN7e6LPl8yL5rhW+vy8SWvJXm1oC87sYlkXC w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="467908048"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="467908048"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:19:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="819108492"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="819108492"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2023 10:19:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 10:19:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 26 Sep 2023 10:19:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 26 Sep 2023 10:19:09 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 26 Sep 2023 10:19:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BImXlygDjUIbDk7ViH3MBGiRzY94SWFL1CdtqZg4rZN45XGiP/XCWtDur6bMxY+f4A15QRmPfcOSDyr6AEcSKAyZfYYwmBmWLMsrUsPFSNFYdEIY4G23yTCjmHNFI8rI5WViy6F7mSsVj997gqvsGT4CguDb11uUTDMUEc4fH5QUGosUA09Vq0llD3g2XlPr8MaAZNLASj5OoLKDeNguyVvBhwSYcbu1hu3F/5WOcHRD3cC8sRbFdX1KhRP+261bRdsIStMtjNDp58JSOLMS6HNJ4z9aqnpPjojepzzVWQd8ZloajN/kSe7OO7oHuQD2xhnKc/2nlgepPCDmbVJTHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fA9CgpgmNG9AiB7lb3EKcljTaD2R26byDs+cedcu5DA=;
 b=Nnb40S7TCGsxN7whkLn+xc+huCwSKlXc6xr+H+OjoBkd0GQ/7YK5GTv4Ry07DZLMY5oeouGg0tg8T1HHik2YXiV9jr3aXGrDdo1w2vahmxTrepeaF66tllbZ4nCrnA8sPEFu42yT3A0Mx93hhpH79ZInajby05GOaXsm8OlnysT5xv/PtmH4GsoUWcJRnC/k9GZrfZD+sNulhrvNftZrvJGTbOMt+pVCpitBTdjvA5hyVIlwaPP+DXwCWbTKxb1SnBzLTz8v7iHjioUNLj17haJUDO5rDggCJe59MuEidS6ZEviGLzPwqojXIQa2Ic+LxQ07LcLcoxfrz2t8KTKtTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 IA0PR11MB8379.namprd11.prod.outlook.com (2603:10b6:208:488::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 17:19:06 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::7bf2:1b4c:1512:79c1%6]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 17:19:06 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>
Thread-Topic: [PATCH v3 2/3] drm/i915/guc: Close deregister-context race
 against CT-loss
Thread-Index: AQHZ45seqXXI7ubqskaSXVFu9eXSZ7AaesqAgAy7zwCAAKcigIAFlicA
Date: Tue, 26 Sep 2023 17:19:06 +0000
Message-ID: <1e6a8881d56c30792a17d165992196f48fdd643e.camel@intel.com>
References: <20230910035846.493766-1-alan.previn.teres.alexis@intel.com>
 <20230910035846.493766-3-alan.previn.teres.alexis@intel.com>
 <ZQMoG9nW+3lVj60j@intel.com>
 <804676f03a1760361ea7954681eb208e3af1a38f.camel@intel.com>
 <CY5PR11MB62111B46E008A712F5ED060C95FEA@CY5PR11MB6211.namprd11.prod.outlook.com>
In-Reply-To: <CY5PR11MB62111B46E008A712F5ED060C95FEA@CY5PR11MB6211.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|IA0PR11MB8379:EE_
x-ms-office365-filtering-correlation-id: a1928c1a-ec82-4669-de1c-08dbbeb4b01d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 66urhL2LJe5mAO1CMLVCrzQAf3Dqptwv1SW8Bqt4z9F/yO2CqIz/t2KuwDbVUT3AMw5c8cbEKXt0MWe372ugIOgU6LJ6JUwOM8WOv4BcTEXASw0Zk5gZYfDbWoKwHuMiuXMPIoLuXzaw+VSzARUU//YAdSYmTXKxS0bMQEE4RGIZ1otaDH6i7muj/7AAc9oB4PYFc9CmeFcb1doXW7QeezNGMrAkXhlJ0yULQU5WTCTHzSVFQvn6l9gkkAxM5kB8YHbZs9aBf334UNA6QLFZ3UHJwZvtiJ1yOvaDiZruaEtEez5yBrJ6650Cep7w7kPs3Bqst31DnpzCOC6Drq/LP4LK/Jouhmfz7eSBHcYArfYbZbeod5fWU6jheNMDHr4Z5Zg8fktnyQBbaEGvwfX2/QQBlZ3/OUvMH3T8GwEsmexw9ENHuguxzRZ4rrjS3pM4J8YLu/HYSUQ0mpJOnH3EwPYfHcSbUSdwerqR999crnYsuKd7E3mUvS7F5SO2SaqlRPCkzzauZ0tDrdfEMhOOijs8SfdUpjVCJFK4RNuDS6eruMP7k9LTLbgOM8sJJwhI/qL5+V5ahIpvtHJusB78Zzmc1JjIww1ZlnOreZacdRXpurmAphQVZP0BEJK/rY4i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(346002)(39860400002)(136003)(230922051799003)(1800799009)(186009)(451199024)(6512007)(6506007)(2616005)(86362001)(38100700002)(38070700005)(36756003)(82960400001)(122000001)(26005)(2906002)(478600001)(6486002)(71200400001)(8936002)(83380400001)(5660300002)(41300700001)(8676002)(76116006)(66556008)(4326008)(66446008)(110136005)(66476007)(91956017)(64756008)(6636002)(316002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGorSDFlazVoN3VWdGZOdnhXTkxWeDZqbGNsekM1eUdLUVNJdllWd2d2M0p1?=
 =?utf-8?B?QWY3TTZ6R09maGNmZ0d5WStBNE1UVUFuOTYvZG1kV0hTd3JkREdERmNUNXZ3?=
 =?utf-8?B?a1BMWWVsSXFEd3ByYVlrUCtnZkZKNHo5ZnZ5Vk4wc1ZYZ3o4eHlISThNTDlV?=
 =?utf-8?B?ZFlqSlVRZUFxY3pCOVJSSW15U28xK1haR001NkRiNGUyWUJHVk1vNHMwMHh1?=
 =?utf-8?B?cmxTanh6NTREQm1hNWcyYVRFUElmM2VESmY1em90TngwU2xGQk1oSjFzRjRq?=
 =?utf-8?B?bzBWU200M3BuZXJjeXVMSldWa3BZZGxsMHYvQzhMb2FrM0JyZjdqRFRZWnZN?=
 =?utf-8?B?MVhNWkxDYjJUQnNxWHdhTi95VzJIT3o4Y2lMa20yeEtGRmJMbnVFRGdGazBY?=
 =?utf-8?B?TlJ0Zlp6aVVCTjVJNHJERHgxVXJOQ2NUUmRHRjFrdThvS2FUQjRDajNpNDA1?=
 =?utf-8?B?Y21vNm4vVS9WcDRJeEZZN1pUWXkzMG51YWVQN3hkaFhsSFVrMmFFWjB1bGhy?=
 =?utf-8?B?QU5JRW1LRUFNc0MxUFZ3OXV3di9tTVA2bzNxTW1qT0tiS1ZTdkdCZ0U5TFdy?=
 =?utf-8?B?TXZ1Zk9CWFErcEFUV0hjLzZGYkl0QTUramhHdzNSa09JL1RRQjFualJoSVFp?=
 =?utf-8?B?NUx3c0lkd1RiUk5DZXJaNFNBTVI0aTg5U2xPRlNEaWFWTFhWYm15NWFCSk1k?=
 =?utf-8?B?SnBCUlprUWo0dEhqZkxXZCs3aHBpV2N3ZGxBNVUrdzZJby9uSXlWWW04UXRY?=
 =?utf-8?B?eVNqM0VnSFo1cmlZNUtpekd2R2kvK05UbGx4QlZVVWdLU3pZaGdZTG9nS2FJ?=
 =?utf-8?B?eDNqamdHVzRnOG9qa1pKYkk0dDBOcVRvS1ZURDh6bysvMzljZE1wZ2l5OXIz?=
 =?utf-8?B?d2ptVkc2anJoUzR0SjdWeUNlNGFPYXVMQk85RnhNbERTRkxNMHJ1M1phUXR0?=
 =?utf-8?B?QUpzb0JSQnc1RG1JQjNkdjVIOGZzSkErMHZjbGFveW83eUlsaHRUUUNvdDBR?=
 =?utf-8?B?SjNERnQwdkdabkR4NU9nVW9scGYwcTlZNVJVdXkxSVJMdXJqNzZ3cXFKQ0dW?=
 =?utf-8?B?cklPQmZDMUdwQkJrMG05bTZFSi9OTHplMXY3NnI1TDViVzdxdG0rTG9FU3d5?=
 =?utf-8?B?UVllR3BsK1phMVN6NjB4aCtrbSs1NlBsTUdRSkUyNnlzZWpxeDFJMWxNTFlF?=
 =?utf-8?B?MzFpeE9QM2txTk1rZmZhS1JhbUJTaG15ZUVyaXJPZHAwZ3V1TEVZdFZVdDVo?=
 =?utf-8?B?OWVESEtpYmxWTUFiRnBNUjFtTzlRQ3kvcEJQekJnM1pVaDBLRi9ON1d4OTFQ?=
 =?utf-8?B?MytKZjM2MEZMSUNLbDRVNU92ZGYyYktCYlk2ZjByRWVYS0JHVUFndXUzL0da?=
 =?utf-8?B?UThELzRpN1JpQUxEK1lWQUVoa3FyOFRhdUlQOFAydTRmS2QwMXhHSHg0MEVI?=
 =?utf-8?B?K2VJejRpanIwMXczQU5XQmlSZEE2SEIrNE9oSGVmbFliSkZwZmQyOEVaRHk4?=
 =?utf-8?B?N3VCQlNUSkhvc0VZTlVqQXhjOVA1WjVyaHNYVG1WWXZJc1dkTUxDeXRRTVFM?=
 =?utf-8?B?bG1GTjJOaURRb0Y2TWJwcU8vdkJtN1hDb3EyVVVlMk1XZWNkNUZHMWd3cjMw?=
 =?utf-8?B?Ty9wSkVVUWJGWG5xbVk1bXlTMXRBcGhkb1BLK3BIeVdVRE5oTXF4bDREWFlQ?=
 =?utf-8?B?d2h6WkVrNnBOdEo5T1hYanpWdEsvM2dhQWx5WThZc2NpMFQ5Ni94Zmoxc21u?=
 =?utf-8?B?NEtqMXlkUFBSKzRCcTBCczBlWWF5RnB3T0hTcm9mVFlXZngxNFhyS0hzV1ht?=
 =?utf-8?B?Y2JrNWZlcTlXY21WVG1xSTlnTzJZK2hxZktheFFtQ1VOeWxaTnBYT0l6MGx3?=
 =?utf-8?B?MGIwUlJqSWxYZHBKL2d4bXpIOHRGejBGT1l1ejFFOGVVL090U213TjlTaWto?=
 =?utf-8?B?RkJrdTB6b1BjRlNVNExWMkVvUzdNTStBc0Yvd3lNZ3N1MkxkajZWQTV6cUFm?=
 =?utf-8?B?Y3lWZUhQdU1BRVFVRDExYWFYVUx2eUxvcDlVRXdYSllsSzY0eVhZczZ5VjBv?=
 =?utf-8?B?VktIYXNrM0pCdVZnT3ZLREZnL1ZUM21tWUhJcXgreUJyN2cxOURmdXBRWjVI?=
 =?utf-8?B?eTY4MGJVVXhCb3lIbWJSU2V3NWw2c094OTZhNDN2VW9lUlhITGp3ZGQ2b2lS?=
 =?utf-8?Q?lpKq1nILizPf/mthnIjJafo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D5BCCA9EFC629E4185909A3A20BBF381@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1928c1a-ec82-4669-de1c-08dbbeb4b01d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2023 17:19:06.0752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ac0QTS4pGHbW1iytkOmtOZ59xn3Wg8RVNVoWTUM/oaSWLZ71X3G3btyg++XWF48LM46DFEeHMLv3Qc9wHlR24xbCfi1PbI/G+aXoI33Y0mhvSU94LRdow/OfJ42S3KfD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8379
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm/i915/guc: Close
 deregister-context race against CT-loss
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

PiANCg0KDQo+ID4gYWxhbjpzbmlwDQo+ID4gPiA+IEBAIC0zMjc5LDYgKzMzMjIsMTcgQEAgc3Rh
dGljIHZvaWQgZGVzdHJveWVkX3dvcmtlcl9mdW5jKHN0cnVjdA0KPiA+IHdvcmtfc3RydWN0ICp3
KQ0KPiA+ID4gPiAgCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBndWNfdG9fZ3QoZ3VjKTsNCj4gPiA+
ID4gIAlpbnQgdG1wOw0KPiA+ID4gPiANCj4gPiA+ID4gKwkvKg0KPiA+ID4gPiArCSAqIEluIHJh
cmUgY2FzZXMgd2UgY2FuIGdldCBoZXJlIHZpYSBhc3luYyBjb250ZXh0LWZyZWUgZmVuY2Utc2ln
bmFscw0KPiA+IHRoYXQNCj4gPiA+ID4gKwkgKiBjb21lIHZlcnkgbGF0ZSBpbiBzdXNwZW5kIGZs
b3cgb3IgdmVyeSBlYXJseSBpbiByZXN1bWUgZmxvd3MuIEluDQo+ID4gdGhlc2UNCj4gPiA+ID4g
KwkgKiBjYXNlcywgR3VDIHdvbid0IGJlIHJlYWR5IGJ1dCBqdXN0IHNraXBwaW5nIGl0IGhlcmUg
aXMgZmluZSBhcyB0aGVzZQ0KPiA+ID4gPiArCSAqIHBlbmRpbmctZGVzdHJveS1jb250ZXh0cyBn
ZXQgZGVzdHJveWVkIHRvdGFsbHkgYXQgR3VDIHJlc2V0IHRpbWUgYXQNCj4gPiB0aGUNCj4gPiA+
ID4gKwkgKiBlbmQgb2Ygc3VzcGVuZC4uIE9SLi4gdGhpcyB3b3JrZXIgY2FuIGJlIHBpY2tlZCB1
cCBsYXRlciBvbiB0aGUgbmV4dA0KPiA+ID4gPiArCSAqIGNvbnRleHQgZGVzdHJ1Y3Rpb24gdHJp
Z2dlciBhZnRlciByZXN1bWUtY29tcGxldGVzDQo+ID4gPiANCj4gPiA+IHdobyBpcyB0cmlnZ2Vy
aW5nIHRoZSB3b3JrIHF1ZXVlIGFnYWluPw0KPiA+IA0KPiA+IGFsYW46IHNob3J0IGFuc3dlcjog
d2UgZG9udCBrbm93IC0gYW5kIHN0aWxsIGh1bnRpbmcgdGhpcyAoZ2V0dGluZyBjbG9zZXIgbm93
Li4NCj4gPiB1c2luZyB0YXNrIHRnaWQgc3RyLW5hbWUgbG9va3VwcykuDQo+ID4gaW4gdGhlIGZl
dyB0aW1lcyBJJ3ZlIHNlZW4gaXQsIHRoZSBjYWxsc3RhY2sgSSd2ZSBzZWVuIGxvb2tlZCBsaWtl
IHRoaXM6DQo+ID4gDQo+ID4gWzMzNzYzLjU4MjAzNl0gQ2FsbCBUcmFjZToNCj4gPiBbMzM3NjMu
NTgyMDM4XSAgPFRBU0s+DQo+ID4gWzMzNzYzLjU4MjA0MF0gIGR1bXBfc3RhY2tfbHZsKzB4Njkv
MHg5NyBbMzM3NjMuNTgyMDU0XQ0KPiA+IGd1Y19jb250ZXh0X2Rlc3Ryb3krMHgxYjUvMHgxZWMg
WzMzNzYzLjU4MjA2N10NCj4gPiBmcmVlX2VuZ2luZXMrMHg1Mi8weDcwIFszMzc2My41ODIwNzJd
ICByY3VfZG9fYmF0Y2grMHgxNjEvMHg0MzgNCj4gPiBbMzM3NjMuNTgyMDg0XSAgcmN1X25vY2Jf
Y2Jfa3RocmVhZCsweGRhLzB4MmQwIFszMzc2My41ODIwOTNdDQo+ID4ga3RocmVhZCsweDEzYS8w
eDE1MiBbMzM3NjMuNTgyMTAyXSAgPw0KPiA+IHJjdV9ub2NiX2dwX2t0aHJlYWQrMHg2YTcvMHg2
YTcgWzMzNzYzLjU4MjEwN10gID8gY3NzX2dldCsweDM4LzB4MzgNCj4gPiBbMzM3NjMuNTgyMTE4
XSAgcmV0X2Zyb21fZm9yaysweDFmLzB4MzAgWzMzNzYzLjU4MjEyOF0gIDwvVEFTSz4NCg0KPiBB
bGFuIGFib3ZlIHRyYWNlIGlzIG5vdCBkdWUgdG8gbWlzc2luZyBHVCB3YWtlcmVmLCBpdCBpcyBk
dWUgdG8gYSBpbnRlbF9jb250ZXh0X3B1dCgpLA0KPiBXaGljaCAgY2FsbGVkIGFzeW5jaHJvbm91
c2x5IGJ5IHJjdV9jYWxsKF9fZnJlZV9lbmdpbmVzKSwgd2UgbmVlZCBpbnNlcnQgcmN1X2JhcnJp
ZXIoKSB0byBmbHVzaCBhbGwNCj4gcmN1IGNhbGxiYWNrIGluIGxhdGUgc3VzcGVuZC4NCj4gDQo+
IFRoYW5rcywNCj4gQW5zaHVtYW4uDQo+ID4gDQpUaGFua3MgQW5zaHVtYW4gZm9yIGZvbGxvd2lu
ZyB1cCB3aXRoIHRoZSBvbmdvaW5nIGRlYnVnLiBJIHNoYWxsIHJlLXJldiBhY2NvcmRpbmdseS4N
Ci4uLmFsYW4NCg==
