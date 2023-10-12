Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1C97C6683
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 09:38:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40E210E430;
	Thu, 12 Oct 2023 07:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B1E10E430
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 07:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697096324; x=1728632324;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NFOQHnBUAislNn3E5N+0RZ5CgmHt9766NCb/kid4H/c=;
 b=dM+X9gwXX29m9pb8l3Bq/KVVfeyjF46b9xrzZU7Izfq7q9oeCaVHZH3H
 lThALQpdP3ng5DTUrbs+dQr812rOGzVCOvFq5hA8HJBjCp0Qu/+BAg1ls
 4ascLLkww+TjkQAeWM6/cmYoN6kGgA2NYVXOboj7CSqYjWYcThdNZevsw
 vk/WjZl8xmQ1CqnMdCWZkZb+Wm226A7Z+UnTMMiStIahoUJfDF5snrFcy
 DAKMYTq8G3EC1F2zE7SlMKAIvGK/KvwwV/tqLFU82pv2pWVXrWTnuuIXG
 lCkJvF5Pv41gIRQ81C8+EabJZRTgMQAI6/EqnOpK17WrNEt8rJP6ycs8W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="384709511"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="384709511"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="1085561448"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="1085561448"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 00:38:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 00:38:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 00:38:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 00:38:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 00:38:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hM78yWHIZX6kcUFabZu/VWRu7A+2eKNcNJq9lHoj7wL2m6BnZ02NmpeVmUnzaZ+mH3Vf93GMYeBZY6D1OBwNUGOXWjbc+5mHDAp1XCifNjvrBr4VoIn4FjpBDJkN8ei4mvlKScsKPVaiKghT4qMrb2QZR6VI/3Krh34MeULq7dFu3dOKS1U/9bKFTE7OQjmRXiAM4LasBIh/MGKdh2vbn9FFeJl7EZt+QTlRbBVQ2WjYWWJlbjZDq+qzCcvEzOj1gQJOixrHpvwk5mIXXs10gBGjxZ4+jwCqX4CyovmhMjDDAdfFaWlS8SUycNYGssJIpjnawjHSX4iI7rd5d0sLHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NFOQHnBUAislNn3E5N+0RZ5CgmHt9766NCb/kid4H/c=;
 b=drj5Ed3rFLuLBM1tZEvz7SNgxTO3Bu7T/F/pOycEvdkiZ1YNNuEIX140JshyJI1+2RjMs4/y92wh+cmsQQTacuOOMtFmbhHdXVtNzf6Ov3lxPCnTUdfnrPNcnRWUinqiDsNpg+NSldXQV3NOKsRGJ36LsXSno4TjdrykXvApm7gB7XS6LGtg9XdPl87rxZlokgc/9zE3pChzIycyKBb+31XUviCeeRPA84r6/zJe//Qvpl0U6fX/ic1nEwlbfj3WPzfj7inoOrynXTSSEDgR2YsLM6x9/ei/EyRrCQ1RsyrQt3mndWa2UjeTOwgh91yIzW1pknyYoL6nPutvXg8Ehw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB5983.namprd11.prod.outlook.com (2603:10b6:510:1e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Thu, 12 Oct
 2023 07:38:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6863.032; Thu, 12 Oct 2023
 07:38:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 02/25] drm/i915/display: Dump also display parameters
 into GPU error dump
Thread-Index: AQHZ+27tpDcYxmfOuEGlDwwqqk35OrBFx0qA
Date: Thu, 12 Oct 2023 07:38:25 +0000
Message-ID: <6904de72903a1fab0ee306a2c14e61b3e3bc6d4f.camel@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
 <20231010114120.2504103-3-jouni.hogander@intel.com>
In-Reply-To: <20231010114120.2504103-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB5983:EE_
x-ms-office365-filtering-correlation-id: 90ef12cf-4567-4cee-5c0e-08dbcaf63828
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 17AvTegrzgGvLuWYZ7of2keVhiU8Sq3Pxk1SQdzb5eBODyoXE/AAl2MQB4HE9b//i1zxgOHs3qA208zVJgU+Qnov6CDY3eOYegi+upPnYjtcnxMtKqVEllW0+6g66HayZVkTFs/RpXeG9WtpQovpYFewUiCMAuf6A0UzmB1oOFK4/2M8GrWvmxHNjlG8YcOBFb2T6la+WKF7Tljs/j75pQ7kbwInWXNwM//Irxq3Xsmcg7M1C2CRE+BBejkDA7Dxf5sPeYWMBJ/A4i6Z2plcWNz1NMB7m6Ufro0CSQhKrZBGyBvXIGe98Q21rosa9TKzzN/ky6szc29snP7Pt35xROZQuqXRCttH644AWQEWVJwdQW18wBh7iuM1qEJWVXHFjL58i0tBTUF0zCyj/o1YScT9i56jqKM7Z+9ww0BpFL+R4sqsexytHL9drg3duB2MpOGjY6++YaD1Jmi0atP4hHI7W9Pt47jt/d4SjA0aCwQdFROK2wS9pNWDTPIjLKomaDeQIFpwbJMr0N8CSZWSflqnBeXvpjS4ZCOElC7vloGWg5nVofLh16nexts3w7IBM+5hyFQPUDMqkzZLq7x08YD5NXfgOoaO9XVr4l40vWWICFjzkr3PeyOtKgVdtn0m
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(366004)(39860400002)(136003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(6512007)(36756003)(478600001)(6486002)(86362001)(6506007)(122000001)(8676002)(38100700002)(8936002)(5660300002)(82960400001)(4326008)(38070700005)(316002)(66446008)(64756008)(6916009)(66556008)(66476007)(66946007)(76116006)(2906002)(91956017)(41300700001)(4001150100001)(71200400001)(66574015)(107886003)(2616005)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0Y4MmRXNnpMcm1qNXFvWXpzVVRCMkZFaXA3SVJoK0FpcGpxVnptSUIwSHg5?=
 =?utf-8?B?TW1sQ0IrWGUxbVlabEIvV3ZFU0E0UkZJbnJvd3NRR1l1Z1pWUWNWcUNxTVRZ?=
 =?utf-8?B?aW1sTXZoMGVZc01mMy9vV1NIQ1BLak1xMnZqdkRRYk41WkdOSXBRQzJ2cmp2?=
 =?utf-8?B?Zmt2YjM4UldIV2ZMaUtvQ3FzUUFCblpVSTVWV2o5OHZKS1V4bWZoZ1d2ZWtX?=
 =?utf-8?B?Y25TemQrd0hUY0tqay9RZGthSERlMXV5NVJuNm4raXlsdGkwbTBqb0cyeFhV?=
 =?utf-8?B?Y0VidUhKbHlmVllGSVBDem1rcW9FRmM1TkNxaFhTNXdvY3N1ODcvOCs3ZTlr?=
 =?utf-8?B?MXh6Q1NuUEgrMkRiWGFXZDZDdVBVcFIvUmY0SzVBaGtaTnpwaXRWR1VTT1Ji?=
 =?utf-8?B?bXRmZTZMY0VaYkpta3laTy8vZlJEZWpGWnRDSWg5SmJEbmhXTjlQeVpRcGdU?=
 =?utf-8?B?ejdhWFJ3WWFsYnE5bzUvT25nZGxMWUtZNW1jKzVJR2xZRkFER0NZN1NOYU5J?=
 =?utf-8?B?Q1oxT0VtSXMyNFJvc1FYS01GZDB4N29JYjJSdk5FSzg5UGQzWFBNbFRnQzJn?=
 =?utf-8?B?bjdiaFZRbnZLZ0FoTzUwUlZNSjNxa2NLT2VMQ1lhY1BpMUVoVEZjZTVST3lv?=
 =?utf-8?B?QUtxQWxld3gwUk1SdWdZOFZ0Z2lmaVB6SjVYdjAyZWk1VUZ4Z1JlSHYrTG9W?=
 =?utf-8?B?aU01Yk9TUC8yM0VIS0JnM0QrY09kdFp6UkZKTC9ZckNUWWJMOUdKb0FsVjFB?=
 =?utf-8?B?aFY0ZUVWMU1HVEtNRDZUKzhhZnNmNDlla0xBcTI5VWRTc2ViV2hHSkF4M1BY?=
 =?utf-8?B?QVhzRGo1akZBQ0w2MEFJT0JhL1JoaXdocUpGZGFzM2xoZ0JKWDRDNTNLdHZI?=
 =?utf-8?B?dGRDTk0yU3BIS09IQUhrbU9GN0lYbk9rT0tuYWJ6RXZhRTNhc1VjUEh3MnQ0?=
 =?utf-8?B?NmdFMHY0VXR6am1ScGNDaDdUVFdUVWlMdENvZ2RrU2FvVVRhYldhWDNDSEhh?=
 =?utf-8?B?dFp4aVkybDd1Rk9NRk5ubXg5d1NBOVFLTWNQT2FFQXhSell3Q0FTcy9WU2Rt?=
 =?utf-8?B?ZkJ2RGpqNGdnMHMrZFk1TTg5b3kwUVlkWjFTN0lEZ0RGZ3RWaEJkMDJERXhF?=
 =?utf-8?B?QXdNMmpxQnNUVmR4L0JGRS9JS0dFUmJFSDk5eFVrdkJmRFR4b1NYN2pnU1B4?=
 =?utf-8?B?VmpIM3dmdnBiSjZmRFR5K1RrYXhiV1pyM1dZVUdkYTZKWDc2VitPMXV0SVJJ?=
 =?utf-8?B?Z0hoRkpZNHcwLzNZV2VuVVVqcVFyQUI2dDArcmRyT3QvalVpTGpUenp6QUNs?=
 =?utf-8?B?b3ZNOWNYUDFOMS8rNVhxb3Z6cDQzbFVodjJyOTN4OEg2VHdGQkM0SGh2U3V2?=
 =?utf-8?B?UG5sVGhyeFdRSlBtRVJmUld4UThxUWx3UWw0Z0F3dVZCU2RmczdqSmh3Y2JS?=
 =?utf-8?B?UEtna2RnWUppYVRmZU5ocTBROHFLVUYwLzY4MmpvclRqM1hINm4wOTUwY1Ra?=
 =?utf-8?B?VEs1Y282ZUtaa1VBa2tTdGxnaEo5eHo2cURMeWkvWlMzajU0aW9mMkNFRVBU?=
 =?utf-8?B?NElmWEpseTBjL1E2a0hoeEV2L3Q3L2NOVUpqS3BveXkxVnk4ZFlFSWczMDZ3?=
 =?utf-8?B?NUxmTWtOYzFGS1ZMcjgvYjFuU2RIcW5nQ1JzS0FkTG5QdEgrbS9td1RLY0Nw?=
 =?utf-8?B?c01URk51Z1VUUG9ZSXBDemZKTTlvQTN3ZUlMTnBMQTVUWHBSSjQ4TUhURU8z?=
 =?utf-8?B?T0dKYzdETDBOZ1l4WVZUV3JCaW0rZGpjRXQ0bDZkSTJ4YXVKcGxlVVlOMGlr?=
 =?utf-8?B?OUM0eXdMVHR4Z3VIYU1FL2F0LzJIRjdBbCtkeTNKdWZUa3p2VnY2YndBNnd1?=
 =?utf-8?B?cEc2MGZqRkxieElWQnVPU29HN1JKZW5vbGsyWVdGbnR3VGJ6NE9oZTZyV01w?=
 =?utf-8?B?YUc3TmVMUFVjajhvSmdISm5IYitjNUNWeVVEcVU1Qy9HY3o0eVpLaUZJNlNq?=
 =?utf-8?B?dG0zbDdmUnhoaDhTdkg2amxmSkIyai9HYy9tSDgzZnI3ZGZSdzRiem13bGY2?=
 =?utf-8?B?NlRHNERWc0JMOUxwazQzVWRXYzI2RDA3VzJ2TWtkUzRHQ0twUE84bzRwUWRP?=
 =?utf-8?B?Ry9zdWwxNEtsMUxEYjZtc2NLUVh4VXlBa2prYXkzMkUrQm9IdmtKWVJuT21W?=
 =?utf-8?B?TFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9185AA90D8DD0B428A820B2F61F0BA5F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90ef12cf-4567-4cee-5c0e-08dbcaf63828
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2023 07:38:25.5637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5cD/tDZc2y51ITbA800N1OjXPD5Ovcy/WsrFeMQsz0jzraPvxkg9qeXd+QMm5nUiLj83F+7f+LzPzmLnaiyFKXE/0BeUaQF5QXJNPnOg2Rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5983
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/25] drm/i915/display: Dump also display
 parameters into GPU error dump
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

T24gVHVlLCAyMDIzLTEwLTEwIGF0IDE0OjQwICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
Cj4gR1BVIGVycm9yIGR1bXAgY29udGFpbmVkIGFsbCBtb2R1bGUgcGFyYW1ldGVycy4gSWYgd2Ug
YXJlIG1vdmluZwo+IGRpc3BsYXkgcGFyYW1ldGVycyB0byBpbnRlbF9kaXNwbGF5X3BhcmFtcy5b
Y2hdIHRoZXkgYXJlIG5vdCBkdW1wZWQKPiBpbnRvIEdQVSBlcnJvciBkdW1wLiBUaGlzIHBhdGNo
IGlzIGFkZGluZyBtb3ZlZCBkaXNwbGF5IHBhcmFtZXRlcnMKPiBiYWNrIHRvIEdQVSBlcnJvciBk
dW1wLgoKVmlub2QgcG9pbnRlZCBvdXQgdGhhdCBjdXJyZW50bHkgcGF0Y2hlcyBhcmUgbm90IGR1
bXBpbmcgb3V0IG1vdmVkCnBhcmFtZXRlcnMgd2hlbiByZWFkaW5nIGk5MTVfY2FwYWJpbGl0aWVz
IGRlYnVnZnMgaW50ZXJmYWNlLiBJIHdpbGwKd2FpdCBmb3IgbW9yZSBjb21tZW50cyBmb3IgYSB3
aGlsZSBhbmQgdGhlbiBzZW5kIGEgbmV3IHZlcnNpb24gd2l0aAp0aGlzIGFkZHJlc3NlZC4KCkJS
LAoKSm91bmkgSMO2Z2FuZGVyCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgo+IC0tLQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9wYXJhbXMuY8KgwqAgfCA1Nwo+ICsrKysrKysrKysrKysrKysrKysKPiDC
oC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmjCoMKgIHzCoCAzICsK
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmPCoMKgwqDCoMKgwqDCoMKg
IHzCoCAzICsKPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmjCoMKgwqDC
oMKgwqDCoMKgIHzCoCAyICsKPiDCoDQgZmlsZXMgY2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcGFyYW1zLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wYXJhbXMuYwo+IGluZGV4IDkxOTUzYWUyNzE0NC4uMTFlZTczYTk4YjViIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMu
Ywo+IEBAIC0yNyw2ICsyNyw2MyBAQCBzdGF0aWMgc3RydWN0IGludGVsX2Rpc3BsYXlfcGFyYW1z
Cj4gaW50ZWxfZGlzcGxheV9tb2RwYXJhbXMgX19yZWFkX21vc3RseSA9IHsKPiDCoCAqIGRlYnVn
ZnMgbW9kZSB0byAwLgo+IMKgICovCj4gwqAKPiArX19tYXliZV91bnVzZWQKPiArc3RhdGljIHZv
aWQgX3BhcmFtX3ByaW50X2Jvb2woc3RydWN0IGRybV9wcmludGVyICpwLCBjb25zdCBjaGFyCj4g
KmRyaXZlcl9uYW1lLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBjb25zdCBjaGFyICpuYW1lLCBib29sIHZhbCkKPiArewo+ICvCoMKg
wqDCoMKgwqDCoGRybV9wcmludGYocCwgIiVzLiVzPSVzXG4iLCBkcml2ZXJfbmFtZSwgbmFtZSwK
PiBzdHJfeWVzX25vKHZhbCkpOwo+ICt9Cj4gKwo+ICtfX21heWJlX3VudXNlZAo+ICtzdGF0aWMg
dm9pZCBfcGFyYW1fcHJpbnRfaW50KHN0cnVjdCBkcm1fcHJpbnRlciAqcCwgY29uc3QgY2hhcgo+
ICpkcml2ZXJfbmFtZSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbnN0IGNoYXIgKm5hbWUsIGludCB2YWwpCj4gK3sKPiArwqDCoMKg
wqDCoMKgwqBkcm1fcHJpbnRmKHAsICIlcy4lcz0lZFxuIiwgZHJpdmVyX25hbWUsIG5hbWUsIHZh
bCk7Cj4gK30KPiArCj4gK19fbWF5YmVfdW51c2VkCj4gK3N0YXRpYyB2b2lkIF9wYXJhbV9wcmlu
dF91aW50KHN0cnVjdCBkcm1fcHJpbnRlciAqcCwgY29uc3QgY2hhcgo+ICpkcml2ZXJfbmFtZSwK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29uc3QgY2hhciAqbmFtZSwgdW5zaWduZWQgaW50IHZhbCkKPiArewo+ICvCoMKgwqDCoMKg
wqDCoGRybV9wcmludGYocCwgIiVzLiVzPSV1XG4iLCBkcml2ZXJfbmFtZSwgbmFtZSwgdmFsKTsK
PiArfQo+ICsKPiArX19tYXliZV91bnVzZWQKPiArc3RhdGljIHZvaWQgX3BhcmFtX3ByaW50X3Vs
b25nKHN0cnVjdCBkcm1fcHJpbnRlciAqcCwgY29uc3QgY2hhcgo+ICpkcml2ZXJfbmFtZSwKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjb25zdCBjaGFyICpuYW1lLCB1bnNpZ25lZCBsb25nIHZhbCkKPiArewo+ICvCoMKgwqDCoMKg
wqDCoGRybV9wcmludGYocCwgIiVzLiVzPSVsdVxuIiwgZHJpdmVyX25hbWUsIG5hbWUsIHZhbCk7
Cj4gK30KPiArCj4gK19fbWF5YmVfdW51c2VkCj4gK3N0YXRpYyB2b2lkIF9wYXJhbV9wcmludF9j
aGFycChzdHJ1Y3QgZHJtX3ByaW50ZXIgKnAsIGNvbnN0IGNoYXIKPiAqZHJpdmVyX25hbWUsCj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29uc3QgY2hhciAqbmFtZSwgY29uc3QgY2hhciAqdmFsKQo+ICt7Cj4gK8KgwqDCoMKgwqDC
oMKgZHJtX3ByaW50ZihwLCAiJXMuJXM9JXNcbiIsIGRyaXZlcl9uYW1lLCBuYW1lLCB2YWwpOwo+
ICt9Cj4gKwo+ICsjZGVmaW5lIF9wYXJhbV9wcmludChwLCBkcml2ZXJfbmFtZSwgbmFtZSwKPiB2
YWwpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgXAo+ICvC
oMKgwqDCoMKgwqDCoF9HZW5lcmljKHZhbCzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFwK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJvb2wgOiBfcGFyYW1fcHJpbnRfYm9v
bCzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFwKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCA6IF9wYXJhbV9wcmludF9pbnQswqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgXAo+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IDogX3BhcmFtX3ByaW50X3VpbnQswqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoFwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHVuc2lnbmVkIGxvbmcgOiBfcGFyYW1fcHJpbnRfdWxvbmcswqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgXAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2hhciAqIDogX3BhcmFtX3By
aW50X2NoYXJwKShwLCBkcml2ZXJfbmFtZSwgbmFtZSwKPiB2YWwpCj4gKwo+ICsvKioKPiArICog
aW50ZWxfZGlzcGxheV9wYXJhbXNfZHVtcCAtIGR1bXAgaW50ZWwgZGlzcGxheSBtb2RwYXJhbXMK
PiArICogQGk5MTU6IGk5MTUgZGV2aWNlCj4gKyAqIEBwOiB0aGUgJmRybV9wcmludGVyCj4gKyAq
Cj4gKyAqIFByZXR0eSBwcmludGVyIGZvciBpOTE1IG1vZHBhcmFtcy4KPiArICovCj4gK3ZvaWQg
aW50ZWxfZGlzcGxheV9wYXJhbXNfZHVtcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwg
c3RydWN0Cj4gZHJtX3ByaW50ZXIgKnApCj4gK3sKPiArI2RlZmluZSBQUklOVChULCB4LCAuLi4p
IF9wYXJhbV9wcmludChwLCBpOTE1LT5kcm0uZHJpdmVyLT5uYW1lLCAjeCwKPiBpOTE1LT5kaXNw
bGF5LnBhcmFtcy54KTsKPiArwqDCoMKgwqDCoMKgwqBJTlRFTF9ESVNQTEFZX1BBUkFNU19GT1Jf
RUFDSChQUklOVCk7Cj4gKyN1bmRlZiBQUklOVAo+ICt9Cj4gKwo+IMKgX19tYXliZV91bnVzZWQg
c3RhdGljIHZvaWQgX3BhcmFtX2R1cF9jaGFycChjaGFyICoqdmFscCkKPiDCoHsKPiDCoMKgwqDC
oMKgwqDCoMKgKnZhbHAgPSBrc3RyZHVwKCp2YWxwID8gKnZhbHAgOiAiIiwgR0ZQX0FUT01JQyk7
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wYXJhbXMuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3BhcmFtcy5oCj4gaW5kZXggMWIzNDczNjU5ODhjLi5hMGZiM2UxYWEyZjUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5oCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5o
Cj4gQEAgLTcsNiArNyw3IEBACj4gwqAjZGVmaW5lIF9JTlRFTF9ESVNQTEFZX1BBUkFNU19IXwo+
IMKgCj4gwqBzdHJ1Y3QgZHJtX3ByaW50ZXI7Cj4gK3N0cnVjdCBkcm1faTkxNV9wcml2YXRlOwo+
IMKgCj4gwqAvKgo+IMKgICogSW52b2tlIHBhcmFtLCBhIGZ1bmN0aW9uLWxpa2UgbWFjcm8sIGZv
ciBlYWNoIGludGVsIGRpc3BsYXkKPiBwYXJhbSwgd2l0aAo+IEBAIC0yOCw2ICsyOSw4IEBAIHN0
cnVjdCBpbnRlbF9kaXNwbGF5X3BhcmFtcyB7Cj4gwqB9Owo+IMKgI3VuZGVmIE1FTUJFUgo+IMKg
Cj4gK3ZvaWQgaW50ZWxfZGlzcGxheV9wYXJhbXNfZHVtcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX3ByaW50ZXIgKnApOwo+IMKgdm9pZCBpbnRlbF9kaXNw
bGF5X3BhcmFtc19jb3B5KHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BhcmFtcyAqZGVzdCk7Cj4gwqB2
b2lkIGludGVsX2Rpc3BsYXlfcGFyYW1zX2ZyZWUoc3RydWN0IGludGVsX2Rpc3BsYXlfcGFyYW1z
ICpwYXJhbXMpOwo+IMKgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z3B1X2Vycm9yLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiBp
bmRleCBiNGUzMWU1OWM3OTkuLjgyNzVmOWI2YTQ3ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9ncHVfZXJyb3IuYwo+IEBAIC02NjAsNiArNjYwLDcgQEAgc3RhdGljIHZvaWQgZXJyX3By
aW50X3BhcmFtcyhzdHJ1Y3QKPiBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKm0sCj4gwqDCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1fcHJpbnRlciBwID0gaTkxNV9lcnJvcl9wcmludGVyKG0pOwo+
IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGk5MTVfcGFyYW1zX2R1bXAocGFyYW1zLCAmcCk7Cj4gK8Kg
wqDCoMKgwqDCoMKgaW50ZWxfZGlzcGxheV9wYXJhbXNfZHVtcChtLT5pOTE1LCAmcCk7Cj4gwqB9
Cj4gwqAKPiDCoHN0YXRpYyB2b2lkIGVycl9wcmludF9wY2lpZChzdHJ1Y3QgZHJtX2k5MTVfZXJy
b3Jfc3RhdGVfYnVmICptLAo+IEBAIC0xMDI3LDYgKzEwMjgsNyBAQCBzdGF0aWMgdm9pZCBpOTE1
X3ZtYV9jb3JlZHVtcF9mcmVlKHN0cnVjdAo+IGk5MTVfdm1hX2NvcmVkdW1wICp2bWEpCj4gwqBz
dGF0aWMgdm9pZCBjbGVhbnVwX3BhcmFtcyhzdHJ1Y3QgaTkxNV9ncHVfY29yZWR1bXAgKmVycm9y
KQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBpOTE1X3BhcmFtc19mcmVlKCZlcnJvci0+cGFyYW1z
KTsKPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kaXNwbGF5X3BhcmFtc19mcmVlKCZlcnJvci0+ZGlz
cGxheV9wYXJhbXMpOwo+IMKgfQo+IMKgCj4gwqBzdGF0aWMgdm9pZCBjbGVhbnVwX3VjKHN0cnVj
dCBpbnRlbF91Y19jb3JlZHVtcCAqdWMpCj4gQEAgLTE5ODgsNiArMTk5MCw3IEBAIHN0YXRpYyB2
b2lkIGNhcHR1cmVfZ2VuKHN0cnVjdAo+IGk5MTVfZ3B1X2NvcmVkdW1wICplcnJvcikKPiDCoMKg
wqDCoMKgwqDCoMKgZXJyb3ItPnN1c3BlbmRfY291bnQgPSBpOTE1LT5zdXNwZW5kX2NvdW50Owo+
IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGk5MTVfcGFyYW1zX2NvcHkoJmVycm9yLT5wYXJhbXMsICZp
OTE1LT5wYXJhbXMpOwo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2Rpc3BsYXlfcGFyYW1zX2NvcHko
JmVycm9yLT5kaXNwbGF5X3BhcmFtcyk7Cj4gwqDCoMKgwqDCoMKgwqDCoG1lbWNweSgmZXJyb3It
PmRldmljZV9pbmZvLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSU5URUxfSU5GTyhp
OTE1KSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVvZihlcnJvci0+ZGV2aWNl
X2luZm8pKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJy
b3IuaAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuaAo+IGluZGV4IDlm
NTk3MWY1ZTk4MC4uNGNlMjI3ZjdlMWUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ3B1X2Vycm9yLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dw
dV9lcnJvci5oCj4gQEAgLTE1LDYgKzE1LDcgQEAKPiDCoCNpbmNsdWRlIDxkcm0vZHJtX21tLmg+
Cj4gwqAKPiDCoCNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmgiCj4gKyNp
bmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmgiCj4gwqAjaW5jbHVkZSAiZ3Qv
aW50ZWxfZW5naW5lLmgiCj4gwqAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfdHlwZXMuaCIKPiDCoCNp
bmNsdWRlICJndC91Yy9pbnRlbF91Y19mdy5oIgo+IEBAIC0yMTQsNiArMjE1LDcgQEAgc3RydWN0
IGk5MTVfZ3B1X2NvcmVkdW1wIHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3Bs
YXlfcnVudGltZV9pbmZvIGRpc3BsYXlfcnVudGltZV9pbmZvOwo+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgaW50ZWxfZHJpdmVyX2NhcHMgZHJpdmVyX2NhcHM7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0
cnVjdCBpOTE1X3BhcmFtcyBwYXJhbXM7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rp
c3BsYXlfcGFyYW1zIGRpc3BsYXlfcGFyYW1zOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBpbnRlbF9vdmVybGF5X2Vycm9yX3N0YXRlICpvdmVybGF5Owo+IMKgCgo=
