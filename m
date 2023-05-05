Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A55F6F7EA9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 10:22:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E1A10E208;
	Fri,  5 May 2023 08:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D50E10E214
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 08:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683274962; x=1714810962;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=XRm4NrtXBq6X7Wcz4PXw4zvGXobsadZMe6MPJUo63Iw=;
 b=IGMb0jQQVJw0yuayhY1VjCqBRmdhz/8DJFU4RrMP2RClQFql6VbAojqi
 UgCDfhH428gr2GZCo0dEB9X/IVkP+U8E63Zmlp53vpwM2Zddqsozfqw/H
 +xYblJsoNn3YeuGrOVyMK99sMqSGfocasHxvhBueqPXb7XNYFQiWPFHLi
 h1htcWWkUAz8kNrXBV6vTY0iMr1Vblu9DErutMBs+pmTj3rxmwbKbELkj
 Mznv8NVVMiqPzlV5MsamAfkjK5LdD35WXvTo7AMgophroJbgKsS8ObXXa
 Ud4a9YiGHN6XQ/moTNftcp2pdDte4ZUjW0CZEZ35xIs2w8dabfMpNBlyM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="349197389"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="349197389"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 01:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="674950227"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="674950227"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 05 May 2023 01:22:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 5 May 2023 01:22:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 5 May 2023 01:22:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 5 May 2023 01:22:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=noVxzPFBZR2xEJbBVUQNcH4fIk+rbBM4b6N4ueLoKR1qXCfrW451NCOYE/LO+XrYSM7bx9VITzbzumZI78vdIRiwKrxtj8RLYrg1FOA0q1hFpyc6tvnAViBh116gLgMCx/tgH9pvl2beIDvcZMsnTdLR/mumsnW+QTzL5/YWYEoPbYwlzQBTU0pNetilpDGmVPmbwjEfzojVCok/f2SugNDQENrPMs+jDllFhDLVQG2QLY8QyNwFE2mY+Fu4gkO8XXp+mmIolWml8jpcsVL9wKYbFBtksiOSHSjvZITXxe2jWfYuRH79sqYmmhZjWtio23iRu+SYGRqJNhNKTjg0ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XRm4NrtXBq6X7Wcz4PXw4zvGXobsadZMe6MPJUo63Iw=;
 b=SngACsg9DICSETmDHtASAgUvEZAVmjkAMvEOpM4LXZqfCQmz0ZOwprUDPOylrgDgv6Ks3P1a55oNQkdJYvgsVC0rdbuwzErdu/8UuWg12Ns8gblLBq1jvtBBGStYZEbH7ViOYJPEYpoN+tz/RgB4N5Y3TxHrXwSU2F0P0f+RJ2SSzNa5yh6cOgo35KHyBIYm1bAUKRj5GGJryxHj2VhZEUtSRUmGKWYBhWS75BaHRruipam+x1fIUxUgoXBHzX6FkM5netlzMQxtcC0Vg1VlO2XIJrjMoggym6o0A6IQNocWpZ3OzrJV1d+P3VNVsJcQBYQr18RMTjH38JkMncdddw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by MN0PR11MB6302.namprd11.prod.outlook.com (2603:10b6:208:3c2::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.22; Fri, 5 May
 2023 08:22:36 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::16ef:78fa:40dc:31bc%5]) with mapi id 15.20.6363.027; Fri, 5 May 2023
 08:22:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Convert link training
 error to debug message on disconnected sink
Thread-Index: AQHZfhR+34sRucxpHUa4R1uZ8djKPq9LWVMA
Date: Fri, 5 May 2023 08:22:36 +0000
Message-ID: <058076d9802657c59f846856e1fb5f692cb8692a.camel@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-9-imre.deak@intel.com>
In-Reply-To: <20230503231048.432368-9-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|MN0PR11MB6302:EE_
x-ms-office365-filtering-correlation-id: 106d3951-f7d3-464e-d817-08db4d41e1fc
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: x8VZBBNBGk2LZiPHmNxMrypAgJuBEE1KKXYj2Wpfm/RH519tZeU7Wvbwo2x/aedyv2vODhYeyGS3K7mj46ZCK/5cve5nLzLOVWqQsyQK2rOahvjEwhu4cVbTDhMO9+tzfmVOo+v5RXrbx3/L4giDVGbCjItZJNv96+c7UTiVaiCdt5pd1fOCXzAE+6Su40JpGe0FekaG/w6B2FBev7oYD0WWRtIm4d+6wHbePwvoQ18VmpbIVQ21lj0n8I73ZgffsUgvGJsYRj1RtwWIw7brozPXh8YHM+VBt3ePOlLiUyqMREQnSlxVyLjxEq+AdS2Q+TuXFPt/gItc6a/TCpg5flHvsvO49YXqDr6QOQ8qgfE+E22JpCyNeUXkPMT3etM+AyAa+018gaInCdWcqIV4n+uq3gX8fsniq5eqsuTdWLT4LQ0zzQuZPCGY8Bmtf0MotMg0xhtG2sR3jw/sPaMs3QOJ4QjqLShIdqAr3c+m2XDsuiaDRUL1Rv3WNd2ucZ6AIXYmeXRAcBVrZWV7XNO+NKILQIgc64EaE+GDVtkpED7pQKNZSrSH2T5zTBA2Vk6jQuKCw+sr4ewAkDWM1lZqDgIdxsaOtEqgrZi4sE8DfGOahWGYqTba3qeQwet+wpc9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(136003)(376002)(366004)(451199021)(2906002)(15650500001)(38070700005)(82960400001)(38100700002)(26005)(83380400001)(6512007)(2616005)(6506007)(186003)(122000001)(8676002)(8936002)(66476007)(5660300002)(110136005)(71200400001)(6486002)(316002)(36756003)(478600001)(86362001)(66446008)(66556008)(64756008)(41300700001)(76116006)(6636002)(66946007)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bW1yR2oxZ0tQWVQ0UzRwK2ROUHFMaVhjRzBQS0dvbTNXc0J3Tll6UmZoSVdy?=
 =?utf-8?B?MzVGU3NaRjR3SEtmWFp3VnBkckNTRnB1UVhSMHJUT0FySmw2Z2ViZWlBeU9j?=
 =?utf-8?B?Q1VpeWpRTkJUdXNtUlM4YUMzdHVMWW8xRVRaSm01dzlmSnpEL1ZRU2tMTWda?=
 =?utf-8?B?aEhtd0NIbzE4Q1A1YklKQzgwZXJpN1o0ZDdRYVcrcmREL1pQSXA4MFhXVkhv?=
 =?utf-8?B?d0dvcVNPNnBocFBscUt6MU5SUGhhWjQ3MHRsSVN5bVBzR2NSUFFRQklxbndz?=
 =?utf-8?B?bXhFRGo1a2ZhZm9VUDhLQWkxZllnWW84QkRBQ2pXelRPZzJVNFZhaC9QNUty?=
 =?utf-8?B?bDNJMFlVaGo0eTJjYm5sQmlSTjRRN2VGVUtLUkVnR0xtbUFzUnk0Q2ZxS2lD?=
 =?utf-8?B?dHBYbGdIbERJRVpYa2tTSzg2R1lBOVFvRGRRYUZmWndkR0xDYXhXUDdWaStL?=
 =?utf-8?B?MlZVNnI2Sm1yYWw4eDFNMkNpdkZiOUllck1UcTJmTzF3VjBEeGtqdGdMYlFQ?=
 =?utf-8?B?aFB3bHpFYTQvVU5OMm9yd00zaWJ6Ym82YldKS2dVai9CSnFnK1pMNERZenNq?=
 =?utf-8?B?bWV4amdGTmNnaGpvZ0d0L0RvaWFqVStsSFgySWZYZkh5dThWa0ZvWWhwclUx?=
 =?utf-8?B?TzF0RWdYQTd6TnFidFFrckFQVnJsQ2s5S0JZTk5vT0ZKWEhGUFdkWmJJVzd5?=
 =?utf-8?B?K2ZNSWY5YmEyRXdnZ3RlQmtXRDJId2VxK3hpLzExdlVmTTlMZ01KZ0NZbDFj?=
 =?utf-8?B?TnRNV0ExL05RclJ4bXlqSVp2bXMvK1A5eVoyTHNnT0k5cmU0dmlxQktuc2Fl?=
 =?utf-8?B?aVhIUjhEOFpZZjhxQ0oxSitvMmF5UUEyOEpvRDVCRHFkVlp2OWtqcUJ1MXA0?=
 =?utf-8?B?dnE0WUhlUk9PTWF3ZHJpL2tTN2ZncGtqKzlDMkpuSWl1TGlEQ1JDREJac3lp?=
 =?utf-8?B?cHY3SDdrT253OU5vdGVDRTdQMXRibzMrcU5YZVZJRnpudUtGa1pETTNMWEhx?=
 =?utf-8?B?Nm84MlNKMXc4aHVMME9PQUIzMVFiVXhtWVZqNWcxcU9CRFBWUEFMUVQwN0dx?=
 =?utf-8?B?N3pDQ2FVdkd3V0ZDaHJoL3hpUEQ1VExVR3RrbVc5aTE5UE9zMWtnVDdYK0k5?=
 =?utf-8?B?NnByOEVnVGNiRTV3YnhjelpiNVVtMmFacWRnZ1IvQzhOODFieUdwU0Q0NHU3?=
 =?utf-8?B?Tkw1UkRUalRxYWFsMWpqSVplTzNTcTdJWEI0L2JSS0F5N3hjQmRlYzNjWXAx?=
 =?utf-8?B?N1grUTEydUVQT1BhSVhJZllZVDIvZG83K3pRWTBINTh0bzN3cW5CNXdSbkdI?=
 =?utf-8?B?N2JYTDJWNWZud3U2LzNoTjVsVzEwSUJQaG5xbnIvb2tSRGUwNWlaeXhrbDA5?=
 =?utf-8?B?eDUwOUdLL3RQaXh3NVNPcmNNMTBaL0JLTWwxK2d2eHVZU0hncnlaNThnUTdh?=
 =?utf-8?B?djhpUS85Z2F2Z2RQalRxSzBweGZIVlpMS2pVZ0FIbGxHQlpxdjRiVHVJRmVY?=
 =?utf-8?B?OEo0bEtRMnRkajdiNkZsTmVDNXRJT1BZRG40RzNkRWI1WnhjcHBQQVJmY3M5?=
 =?utf-8?B?MHp5K3lSMENIWThQdUgvZWxFaitURXorWWFqdjQwRndncDlRZTJON0Mwam8z?=
 =?utf-8?B?QkpSWGJBYXk0NUF3SnB2SUNTM1A1UGhGQ21OOTdTZ1JNZ1IyRnRPV2lrYkk1?=
 =?utf-8?B?UE42QkNmU1d4UUZITnpROWtkcDB1RXQzcjZZWWNQaVo3UGtRcWxRV1pWSXpv?=
 =?utf-8?B?QlRBV2JkcGowUlBlNy9tU2VzYXJtZGlYZlpBUXRiS1FOdHJ1ZXNTSnRvWlZG?=
 =?utf-8?B?c3F3by9qNlVqeFBnVUV2YzFIODJxTEVtRDE0dmxoSjhRSWNrcnp4d1dkUVdX?=
 =?utf-8?B?THhXZzhtRkxYYUMyRzlob2U1UjhTTHJ3MUttd0JhS09MVmVEdHVLb1FpWmYy?=
 =?utf-8?B?bGd3T25uU3liTkFHZGlEUjdGR2hWM05UOEowSXNBUi81NFovSUsrUjZza0E3?=
 =?utf-8?B?RjFnaUc3b2hwUnhXYmhmdGpNdHhRZG0zM2lrNDM0bFFvSGJFYm90MERLeWZ3?=
 =?utf-8?B?SGN5eHVmV0g5Wk1QMnpKNzJxWHJ1VzhWQmtpamlHRjFTQ0wxYkp4N1dCQWFn?=
 =?utf-8?B?T0FjYmJJOUFMZEVkQmZibC9QZnJWUkVTTnNscFZSSjhrQXRSd21yR2VoaEFM?=
 =?utf-8?Q?CqmFyTAg16AVU/6qFARun/I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6E6DA7AB59027C45A309DEBC9882D542@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 106d3951-f7d3-464e-d817-08db4d41e1fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2023 08:22:36.2393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lIb149ThbqYIbjdg099S8pi6AYteG0+felb/FJwXztGFUE9JSqjoc6LM/1agjFSM9RCBKBmoEwIp+T12GHNlcCTC17n1in9vnYYP8kBPdr4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6302
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Convert link training
 error to debug message on disconnected sink
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

T24gVGh1LCAyMDIzLTA1LTA0IGF0IDAyOjEwICswMzAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gSWYg
YSBzaW5rIGlzIGRpc2Nvbm5lY3RlZCBpdCdzIGV4cGVjdGVkIHRoYXQgbGluayB0cmFpbmluZyBh
Y3Rpb25zIHdpbGwKPiBmYWlsIG9uIGl0LCBzbyBkb3duZ3JhZGUgdGhlIGVycm9yIG1lc3NhZ2Vz
IGFib3V0IHN1Y2ggYWN0aW9ucyB0byBiZSBhCj4gZGVidWcgbWVzc2FnZS4gU3VjaCAtIGV4cGVj
dGVkIC0gbGluayB0cmFpbmluZyBmYWlsdXJlcyBhcmUgbW9yZQo+IGZyZXF1ZW50IGFmdGVyIGEg
Zm9sbG93IHVwIHBhdGNoLCBhZnRlciB3aGljaCBhbiBhY3RpdmUgVHlwZUMgbGluayBpcwo+IHJl
c2V0IGFmdGVyIHRoZSBzaW5rIGlzIGRpc2Nvbm5lY3RlZCB3aGljaCBhbHNvIGludm9sdmVzIGEg
bGluawo+IHRyYWluaW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKy0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgIDEgKwo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMgfCAxMSArKysrKysrKystLQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKPiBpbmRleCA0MzYxYzFhYzY1YzNhLi4xOTQyYTA1NzE5Nzc2IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC00MTc5LDcgKzQxNzksNyBA
QCBzdGF0aWMgaW50IGludGVsX2RwX3ByZXBfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHAsCj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7Cj4gwqB9Cj4gwqAKPiAtc3Rh
dGljIGJvb2wgaW50ZWxfZHBfaXNfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Cj4gK2Jvb2wgaW50ZWxfZHBfaXNfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Cj4gwqB7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
ciA9IGludGVsX2RwLT5hdHRhY2hlZF9jb25uZWN0b3I7Cj4gwqAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5oCj4gaW5kZXggZWYzOWU0ZjdhMzI5ZS4uNDg4ZGEzOTJmYWZl
NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgKPiBAQCAtNDIs
NiArNDIsNyBAQCB2b2lkIGludGVsX2RwX3NldF9saW5rX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaW50IGxpbmtfcmF0ZSwgaW50IGxhbmVfY291bnQpOwo+IMKgaW50IGlu
dGVsX2RwX2dldF9saW5rX3RyYWluX2ZhbGxiYWNrX3ZhbHVlcyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludCBsaW5rX3JhdGUsIHU4
IGxhbmVfY291bnQpOwo+ICtib29sIGludGVsX2RwX2lzX2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKTsKPiDCoGludCBpbnRlbF9kcF9yZXRyYWluX2xpbmsoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgpOwo+IMKg
dm9pZCBpbnRlbF9kcF9zZXRfcG93ZXIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgdTggbW9k
ZSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bGlua190cmFpbmluZy5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
X2xpbmtfdHJhaW5pbmcuYwo+IGluZGV4IGY4Mzk0NGVhYWMxMjguLjJmZTA3NmUyZDY0YjMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xp
bmtfdHJhaW5pbmcuYwo+IEBAIC0zMyw2ICszMyw3IEBAIHN0YXRpYyB2b2lkIGx0X21zZyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBlbnVtIGRybV9kcF9waHkgZHBfcGh5LAo+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOwo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciA9ICZk
cF90b19kaWdfcG9ydChpbnRlbF9kcCktPmJhc2U7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBp
bnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IGludGVsX2RwLT5hdHRhY2hlZF9jb25uZWN0b3I7
Cj4gK8KgwqDCoMKgwqDCoMKgY29uc3QgY2hhciAqZGlzY29uX3N0ciA9ICIiOwo+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgdmFfZm9ybWF0IHZhZjsKPiDCoMKgwqDCoMKgwqDCoMKgdmFfbGlzdCBh
cmdzOwo+IMKgCj4gQEAgLTQzLDYgKzQ0LDExIEBAIHN0YXRpYyB2b2lkIGx0X21zZyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLCBlbnVtIGRybV9kcF9waHkgZHBfcGh5LAo+IMKgwqDCoMKgwqDC
oMKgwqB2YWYuZm10ID0gZm9ybWF0Owo+IMKgwqDCoMKgwqDCoMKgwqB2YWYudmEgPSAmYXJnczsK
PiDCoAo+ICvCoMKgwqDCoMKgwqDCoGlmIChpc19lcnJvciAmJiAhaW50ZWxfZHBfaXNfY29ubmVj
dGVkKGludGVsX2RwKSkgewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXNjb25f
c3RyID0gIiAoc2luayBkaXNjb25uZWN0ZWQpIjsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaXNfZXJyb3IgPSBmYWxzZTsKPiArwqDCoMKgwqDCoMKgwqB9Cj4gKwpIaSBpbXJlLAoK
SWYgdGhlIGlnbm9yZSBsb25nIEhQRCBlbnYgdmFyaWFibGUgaXMgc2V0LCBpbiBjYXNlIG9mIHNw
dXJpb3VzIEhQRHMgd2Ugd2lsbCBpZ25vcmUgdGhlIGxvbmcgSFBEcwphbmQgdGhlIGNvbm5lY3Rv
ciBzdGF0dXMgcmVtYWlucyB1bmNoYW5nZWQuIFNvIGRvbid0IHdlIG5lZWQgdG8gZG93bmdyYWRl
IHRoZSBlcnJvciBtZXNzYWdlcyB0bwpkZWJ1ZyBtZXNzYWdlcyBpZiBkZXZfcHJpdi0+ZGlzcGxh
eS5ob3RwbHVnLmlnbm9yZV9sb25nX2hwZCBpcyBzZXQ/CgpCUgp2aW5vZAoKPiDCoMKgwqDCoMKg
wqDCoMKgaWYgKGlzX2Vycm9yKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJt
X2VycigmaTkxNS0+ZHJtLCAiW0NPTk5FQ1RPUjolZDolc11bRU5DT0RFUjolZDolc11bJXNdICVw
VlxuIiwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBj
b25uZWN0b3ItPmJhc2UuYmFzZS5pZCwgY29ubmVjdG9yLT5iYXNlLm5hbWUsCj4gQEAgLTUwLDEx
ICs1NiwxMiBAQCBzdGF0aWMgdm9pZCBsdF9tc2coc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwg
ZW51bSBkcm1fZHBfcGh5IGRwX3BoeSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBkcm1fZHBfcGh5X25hbWUoZHBfcGh5KSwKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAmdmFmKTsKPiDCoMKgwqDCoMKgwqDC
oMKgZWxzZQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkx
NS0+ZHJtLCAiW0NPTk5FQ1RPUjolZDolc11bRU5DT0RFUjolZDolc11bJXNdICVwVlxuIiwKPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIltD
T05ORUNUT1I6JWQ6JXNdW0VOQ09ERVI6JWQ6JXNdWyVzXSAlcFYlc1xuIiwKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29ubmVjdG9yLT5i
YXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0+YmFzZS5uYW1lLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbmNvZGVyLT5iYXNlLmJhc2UuaWQs
IGVuY29kZXItPmJhc2UubmFtZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2RwX3BoeV9uYW1lKGRwX3BoeSksCj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnZhZik7Cj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnZhZiwK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
aXNjb25fc3RyKTsKPiDCoH0KPiDCoAo+IMKgI2RlZmluZSBsdF9lcnIoaW50ZWxfZHAsIGRwX3Bo
eSwgZm9ybWF0LCAuLi4pIFwKCg==
