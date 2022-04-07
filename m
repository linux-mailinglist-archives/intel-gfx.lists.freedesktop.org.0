Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F10F4F7EBF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 14:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE07E10E9D7;
	Thu,  7 Apr 2022 12:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E31C10E9E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 12:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649333392; x=1680869392;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=hmDjiy3EFS5PQnPala27suBJR9QlBhgVxrpLReeBJG8=;
 b=Y0+k/D/KBMAMld3bhMQMJhY4cfpbyrsOFY17uPJEeYwIUHa4dv1v13Du
 b5xeI/lSyLczDhih84/yJUwi+9HrOspHYKFd1rtz7RQPcuijCywNZ057H
 CHXG8HNySG5fquNFTTaGe/yRVxEF/4UrBrokIdkFsr65ofvSJ5N3u+kkK
 iElT5JuxWUeM9QwW2+3ZaWD+N3Kf85DiqGSmPG3U6MN2D2GnBwmoEX32i
 RpYDOIEsYk7cGF/RskzG0vEDm4yL/X8nazrV1yzxh8NstLH3Xbz4Ljwn3
 5iyApNoWLW0eaOEPNWAxgC1Cn76HwihwrYSJ3J3Fw5tZGcwFf9bbk4l3I g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="261299381"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="261299381"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 05:09:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="722938280"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 07 Apr 2022 05:09:51 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Apr 2022 05:09:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 7 Apr 2022 05:09:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 7 Apr 2022 05:09:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eJ0ZcJna1o6gDq7MOlH58DoGV7mtM07guSxx9giTcNS8qei+ZwOrOR/gyw6z2gWcsirhGeV6pxe7jIpdEy7KQV2y19IqZZDRSlCxKtRd4l/QwRQNr1RMtJuer1AQHCVMD0LvP8D3HKBMBbU9fpCaahRQQjdXVF4UyjdHIMPtcUZd2G/QrnpJiM9OI1BbP8M6NhkJAWa+smKpK0Nd99NCKhFJhxpNU1iXgKUgEPaJQu2WgGYi+Ca1qXkhmMSk7exc6eqlCinimSp4cFN3o5Pc1cixrAJ5uxez0zSAoBvxsnkKZpcyVvhKvyZR7sOGSFPAIkDEtqPDgS1IeCtqmr/dMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmDjiy3EFS5PQnPala27suBJR9QlBhgVxrpLReeBJG8=;
 b=kFkxD4OWo8ltYiWa9rmMJRPsl9C03qiQPKw+EYvCwxel6iS7bLQOUvFQe9Px5nVnIPcjN7RnOlarQitRpYxUZzJzCkMfKInFRSyCf1GquLlJQE42ZHJmK//78Bf+vPDv2sZ8vHSW/MxW6EFOAQCmggKLvlftlZtr67/o2VCZ/H0sW2iNKdq4vhGzWb0CdNO/mdTwk17xC02VP1TT6oEIRn6ydmGu7I9oH0xGA8CbS0EJ5hbxD+1tGuE5rTnjV95vJMk4ocidFWqXZzM8YSlS7fAfSoww9+ECFLvYQGsUZ8zmrBadx1U81fwItnHOYWa5r1rlMaUx0cI/Tuz9244B/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by MN2PR11MB4677.namprd11.prod.outlook.com (2603:10b6:208:24e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5144.22; Thu, 7 Apr
 2022 12:09:48 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%8]) with mapi id 15.20.5144.022; Thu, 7 Apr 2022
 12:09:48 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [PATCH] drm/i915: program wm blocks to at least blocks required
 per line
Thread-Index: AQHYSbSYiEPeU/SmNUGg/JKV45vY8qzi5boAgAAEiICAADYDAIAADyAAgADS3wCAAFsSgA==
Date: Thu, 7 Apr 2022 12:09:48 +0000
Message-ID: <5b133d1f8fb9d6c96270e8c00f0ae978d28da9a8.camel@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <Yk2MAo+cfr3npN2O@intel.com> <20220406134526.GA22124@intel.com>
 <Yk2dQ7VIKWFHfFDl@intel.com> <20220406171446.GA22549@intel.com>
 <Yk3XQhkYplbMxkkM@intel.com> <20220407064350.GA24386@intel.com>
In-Reply-To: <20220407064350.GA24386@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 071b5804-db39-430e-f5d1-08da188f8337
x-ms-traffictypediagnostic: MN2PR11MB4677:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB46775ECB6385BF2F02F988BEF6E69@MN2PR11MB4677.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1hBdnQUT77TeFj8HiK4KaNw6RwfsRxdm5UclPh7nBOddJeJOvIIO0SHTkqdC4BFfGq1M+Sqx6hgJNquGpE238uWTVZdtrcMnhbQj3aa+jqKaNYdjk/4gbAcYKJ4QcJaxl2ZhwNGnkG72UnzbjgHua6GZY0YbzCr3RdJI87024s/Qc5jRnRvWM5c9ZRGOqujRXPw+uSiE6vPDzWNQfzUcP0WLjCnSMNTRx3/Z7YZnvuxZ1ba2jNGu+trjbslAlCRbUFiryVaFBobmB9j/dYs0bzDK+kMMMFkWAnlQHlB0rQ2v0XgcwQHR7K0PQJCRoZz6becbaCjUm/OVyXlWCxArIT9iKZdbPjImoIxvBePVlMclc69WltqZV9Pc6ybgviCFMm0WUI+R5ae0I7fZXBbYqDCYLuMoV8k7RWrwPbDlQtRsNf9OUyHYeqji0R6gUGawoyQ2AMkFL3gmR0IGkfkEYeA7PeXIyIrHi4ZJyq5YCYw1dRlGehHV2zugVkuvAx7yovQmD0WN69sE2F4TGYUd/caln7vwQ9L0LK1zXKo+h291KH5IqqTNJkLrkvAQT4+K62gBParHCzADizQdVOKm9vUhsUeRxuc/zxOfmdcf9X4vmN4PEI2hktJM9Or7UjY9vHfAPYv4TfXKms32wMO3m0HXHrUQ/jAxMc5zkjxHrJuIZAZHmgP9ofEHc2JnAwknELWG+ZMfO+2MhNKMRG0BFw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(508600001)(91956017)(6636002)(82960400001)(71200400001)(316002)(6486002)(38070700005)(76116006)(38100700002)(36756003)(122000001)(86362001)(83380400001)(66574015)(6506007)(64756008)(5660300002)(66446008)(26005)(186003)(2616005)(6512007)(2906002)(8676002)(8936002)(66476007)(66556008)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUxkeVJoK2FQWnArazd2bS9kUVV1RWhUVmZvQ012czQxa3Y3cTZDZ2k2RGxV?=
 =?utf-8?B?bGtPZk5oSUVOZHV0VTFhNzVLU2x5U1JKRWxXSzBIVWJjOExhVkRhaTJuUERI?=
 =?utf-8?B?eEhyTzJNRkg1Q3k5YzNMeGFhUVg0RkFFNVNlY0EwQ3dXR3ZqVWJ5YVE0VVNT?=
 =?utf-8?B?K1dmMlFCTUhWKzNvRHRUU2pHWEs3UEFNZytOYml3U2dFdk9zTkNOY0VwZFMy?=
 =?utf-8?B?V1d2dDhId1BMVWRMMzU1MWJFbFJpVFVuend5eHRtdG5DWUlLRVpHQ1lieXcz?=
 =?utf-8?B?dExFZVVvNXhGMWxKbHY4VC9UL1E2b3U5dWtjREoyRll3eW5HVExjU044V0RO?=
 =?utf-8?B?Tk1pdFV3S01jZXBvT0JEZHRzOGJteFArTFpVUXlvZjlQbzM1ZGtvVWlxWEtO?=
 =?utf-8?B?VVI0TVpHOFNOM2ZUWE5NaUljN3docjJUbTRzcE0waVd1cHFXYXIxNU0vMmxi?=
 =?utf-8?B?TkpML2NveW53YVNwNzZieGJZUkxpcGpqUWdRVHllYXF0REVSSDRiNldrS1Fy?=
 =?utf-8?B?emMxQ1I4aU1ib2VXZmpMSTFGL2JBZzhQMDNvTGlZaDlWdko1ZnVFcHZiUEgr?=
 =?utf-8?B?R0g1TlhTUy9LdFE2MlJmeTNTWm1TUzdIK3lLZHVGUlp5dnBrdGp0SnpGd2Fs?=
 =?utf-8?B?OWJpTHBvMmE2d2JweDZPTkdQRnVMQmRPa05JYTVRVmRQSTZOZWp2SlFsaFNC?=
 =?utf-8?B?cjU3ZHFJRDk4bEtlK2toSGpSUXFrb0lJczJhZk9tTk9ka3BYWVMraElsMEw4?=
 =?utf-8?B?c1IyRnNsTlJXZ1ppY0pnWFZURXBpVkNkaFUvNFBMRkVnQjNpUHo2TkY4aGht?=
 =?utf-8?B?aEo2eGlLcnd6ZTlBQmthRnlLcUxoY05NOXpmRzVFd1dsZDg5SEV0NzJObUxH?=
 =?utf-8?B?NkN1VndndDJNVlBhT0lLT2VGYWxyMUdYVXpjY2lJZFpuOUlTbTNGOVlwK2NH?=
 =?utf-8?B?alFmalRPcnYwVnBTSHd4bFpIbUNGS0ZtYU1rejdRd1REZWNjOEZTUkZnQUx2?=
 =?utf-8?B?dmlCUXlMVnUzVXZ2alZ4VzJFakRpZjhZSkVuWE01bUdVS29kRUhLYmdTQ0RX?=
 =?utf-8?B?aVkrOHJ3cHVpam14aUs0Ny93OGFDaHZBcDhSUkFwZUpyVUg3TVRLOS8wazFx?=
 =?utf-8?B?RVprUEViRlZFVzZ5OGhSa0tEQllreVdrdjZXQjNIQWdCN3hOMENKL09YVGNT?=
 =?utf-8?B?MnRITzI5UStyekRGU3VSbFk4OUQ0MmlnTXBPTUZVK3liaHVJTGZ6VGZFV2Jy?=
 =?utf-8?B?em9aNWV4UTd4b05MWHAxVWRRbk8yd1pXNG5iejJ5VmxiMEd0WVFQazdIWGZn?=
 =?utf-8?B?cFF0eHYzbXVvY1J5WWhQZlJPU3g2dmszWHVEQmw3TWphSVNFajBYVnFuekFH?=
 =?utf-8?B?djlWVWxFZkVqZ2sySHAvSFNnOXRtU0dja2QvR1FVdlAvRXhyemhJSVZOa0hu?=
 =?utf-8?B?QU42OEwweHl5MkRVZkUxejdqV3VwTkNzNVRrN09wUEFkZ0JSeC9FWkFnaFAx?=
 =?utf-8?B?UTJXMWRMMklSTlZKaTBGQTJCWWpLNjJVSHdiZW9OT202OGNUZW90MmRtdTNB?=
 =?utf-8?B?bWcyZmdQTndEZjVHc1d0K0phTUp3OVlDU0svejl5TlFkV1dIUEluREFMMDNr?=
 =?utf-8?B?REZmV3lmbW93aFppSGlqK0NJUXNMUW40aHdUdVdLaTIveDJvV255bEQzeitU?=
 =?utf-8?B?OWZxd2wyREpzWnk2V01tRmpUNk9nMUdIcU1icHcrT1ZNTzBzdlV5R1Jjd3Rp?=
 =?utf-8?B?TlZCb2U1ODBOZkRTQS83K1VKZnJMakNsM0V6V2QxajZhZzR5MDBDbHlWNU9K?=
 =?utf-8?B?OTZUM1E1ZnE5Y3BsUUxybEpoTyt2SFRBcGdyVmU5RnNJSHEvK08ybUc0NytD?=
 =?utf-8?B?SnhhOVdyNUYyQmFaYmp2MTdhc3IvY3h4RjdmcE8rdkx3UFJqbTNYczFHWXcv?=
 =?utf-8?B?ZlNLOG5pSys0dldwSngwNUpacE1aQzNqMml3dWI2ejlwYVl6SFBzRDE1RjV0?=
 =?utf-8?B?czZqcG1mRGdOa0pMQVh4eURVMXVaTC8xVnhwcFEraERTRGNiS2RnMUFiYytj?=
 =?utf-8?B?TUtRZWhGNzY1bnhiTG4wS0owRTQ0S3ppTm85NG1ibW5yUExIS2IxblVCQ2Yy?=
 =?utf-8?B?T0gybkJSTDNtelgvY201Sy95N2V2TTJLdVdHemxwWU9hSk0xTisrVnNWc210?=
 =?utf-8?B?akp2Um1RWXE4S0EwakVmZ1ZXbFREeERtM1lGdWYwdEFoaTN0bktHM1N3dm9v?=
 =?utf-8?B?a1pEcnJCMmxIdlVJbjYzRU9LWVdzNVlvRGR0SmNXWnFqNEEzcGVmUGgrc0Uv?=
 =?utf-8?B?NFAzcXhBQ0dqVXNjZXJSKytQUEJ6bDRINlAxdzZpQ3lGd2FoMjdXaWZad09D?=
 =?utf-8?Q?I/6H56P1seFMyPIu+YCvdGFpMvubSFJXp2piU?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DAA58B37855F4F42ABCA3C717411EB8E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 071b5804-db39-430e-f5d1-08da188f8337
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2022 12:09:48.5969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KVMbjRpHA30Mned69Yktsu+O03KWP+ZwJh0GK9qUbWkOIKU6w+36MsTOECuKu5VJSV4IgvKetahi+fZRogYvzyzei8ZGLz6fYbZXIDTcfEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4677
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: program wm blocks to at least
 blocks required per line
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

T24gVGh1LCAyMDIyLTA0LTA3IGF0IDA5OjQzICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gV2VkLCBBcHIgMDYsIDIwMjIgYXQgMDk6MDk6MDZQTSArMDMwMCwgVmlsbGUg
U3lyasOkbMOkIHdyb3RlOg0KPiA+IE9uIFdlZCwgQXByIDA2LCAyMDIyIGF0IDA4OjE0OjU4UE0g
KzAzMDAsIExpc292c2tpeSwgU3RhbmlzbGF2IHdyb3RlOg0KPiA+ID4gT24gV2VkLCBBcHIgMDYs
IDIwMjIgYXQgMDU6MDE6MzlQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOg0KPiA+ID4g
PiBPbiBXZWQsIEFwciAwNiwgMjAyMiBhdCAwNDo0NToyNlBNICswMzAwLCBMaXNvdnNraXksIFN0
YW5pc2xhdiB3cm90ZToNCj4gPiA+ID4gPiBPbiBXZWQsIEFwciAwNiwgMjAyMiBhdCAwMzo0ODow
MlBNICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiA+ID4gPiBPbiBNb24sIEFw
ciAwNCwgMjAyMiBhdCAwNDo0OToxOFBNICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdyb3Rl
Og0KPiA+ID4gPiA+ID4gPiBJbiBjb25maWd1cmF0aW9ucyB3aXRoIHNpbmdsZSBEUkFNIGNoYW5u
ZWwsIGZvciB1c2VjYXNlcyBsaWtlDQo+ID4gPiA+ID4gPiA+IDRLIDYwIEh6LCBGSUZPIHVuZGVy
cnVucyBhcmUgb2JzZXJ2ZWQgcXVpdGUgZnJlcXVlbnRseS4gTG9va3MNCj4gPiA+ID4gPiA+ID4g
bGlrZSB0aGUgd20wIHdhdGVybWFyayB2YWx1ZXMgbmVlZCB0byBidW1wZWQgdXAgYmVjYXVzZSB0
aGUgd20wDQo+ID4gPiA+ID4gPiA+IG1lbW9yeSBsYXRlbmN5IGNhbGN1bGF0aW9ucyBhcmUgcHJv
YmFibHkgbm90IHRha2luZyB0aGUgRFJBTQ0KPiA+ID4gPiA+ID4gPiBjaGFubmVsJ3MgaW1wYWN0
IGludG8gYWNjb3VudC4NCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IEFzIHBlciB0aGUg
QnNwZWMgNDkzMjUsIGlmIHRoZSBkZGIgYWxsb2NhdGlvbiBjYW4gaG9sZCBhdCBsZWFzdA0KPiA+
ID4gPiA+ID4gPiBvbmUgcGxhbmVfYmxvY2tzX3Blcl9saW5lIHdlIHNob3VsZCBoYXZlIHNlbGVj
dGVkIG1ldGhvZDIuDQo+ID4gPiA+ID4gPiA+IEFzc3VtaW5nIHRoYXQgbW9kZXJuIEhXIHZlcnNp
b25zIGhhdmUgZW5vdWdoIGRidWYgdG8gaG9sZA0KPiA+ID4gPiA+ID4gPiBhdCBsZWFzdCBvbmUg
bGluZSwgc2V0IHRoZSB3bSBibG9ja3MgdG8gZXF1aXZhbGVudCB0byBibG9ja3MNCj4gPiA+ID4g
PiA+ID4gcGVyIGxpbmUuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBjYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+ID4gPiA+ID4g
Y2M6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0K
PiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5k
YXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiA+IC0t
LQ0KPiA+ID4gPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE5ICsr
KysrKysrKysrKysrKysrKy0NCj4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiA+ID4gPiA+ID4gaW5kZXggODgyNGYyNjllNWY1Li5h
ZTI4YThjNjNjYTQgMTAwNjQ0DQo+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMNCj4gPiA+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYw0KPiA+ID4gPiA+ID4gPiBAQCAtNTQ3NCw3ICs1NDc0LDI0IEBAIHN0YXRpYyB2
b2lkIHNrbF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+
ID4gPiA+ID4gPiA+ICpjcnRjX3N0YXRlLA0KPiA+ID4gPiA+ID4gPiAgCQl9DQo+ID4gPiA+ID4g
PiA+ICAJfQ0KPiA+ID4gPiA+ID4gPiAgDQo+ID4gPiA+ID4gPiA+IC0JYmxvY2tzID0gZml4ZWQx
Nl90b191MzJfcm91bmRfdXAoc2VsZWN0ZWRfcmVzdWx0KSArIDE7DQo+ID4gPiA+ID4gPiA+ICsJ
LyoNCj4gPiA+ID4gPiA+ID4gKwkgKiBMZXRzIGhhdmUgYmxvY2tzIGF0IG1pbmltdW0gZXF1aXZh
bGVudCB0byBwbGFuZV9ibG9ja3NfcGVyX2xpbmUNCj4gPiA+ID4gPiA+ID4gKwkgKiBhcyB0aGVy
ZSB3aWxsIGJlIGF0IG1pbmltdW0gb25lIGxpbmUgZm9yIGxpbmVzIGNvbmZpZ3VyYXRpb24uDQo+
ID4gPiA+ID4gPiA+ICsJICoNCj4gPiA+ID4gPiA+ID4gKwkgKiBBcyBwZXIgdGhlIEJzcGVjIDQ5
MzI1LCBpZiB0aGUgZGRiIGFsbG9jYXRpb24gY2FuIGhvbGQgYXQgbGVhc3QNCj4gPiA+ID4gPiA+
ID4gKwkgKiBvbmUgcGxhbmVfYmxvY2tzX3Blcl9saW5lLCB3ZSBzaG91bGQgaGF2ZSBzZWxlY3Rl
ZCBtZXRob2QyIGluDQo+ID4gPiA+ID4gPiA+ICsJICogdGhlIGFib3ZlIGxvZ2ljLiBBc3N1bWlu
ZyB0aGF0IG1vZGVybiB2ZXJzaW9ucyBoYXZlIGVub3VnaCBkYnVmDQo+ID4gPiA+ID4gPiA+ICsJ
ICogYW5kIG1ldGhvZDIgZ3VhcmFudGVlcyBibG9ja3MgZXF1aXZhbGVudCB0byBhdCBsZWFzdCAx
IGxpbmUsDQo+ID4gPiA+ID4gPiA+ICsJICogc2VsZWN0IHRoZSBibG9ja3MgYXMgcGxhbmVfYmxv
Y2tzX3Blcl9saW5lLg0KPiA+ID4gPiA+ID4gPiArCSAqDQo+ID4gPiA+ID4gPiA+ICsJICogVE9E
TzogUmV2aXNpdCB0aGUgbG9naWMgd2hlbiB3ZSBoYXZlIGJldHRlciB1bmRlcnN0YW5kaW5nIG9u
IERSQU0NCj4gPiA+ID4gPiA+ID4gKwkgKiBjaGFubmVscycgaW1wYWN0IG9uIHRoZSBsZXZlbCAw
IG1lbW9yeSBsYXRlbmN5IGFuZCB0aGUgcmVsZXZhbnQNCj4gPiA+ID4gPiA+ID4gKwkgKiB3bSBj
YWxjdWxhdGlvbnMuDQo+ID4gPiA+ID4gPiA+ICsJICovDQo+ID4gPiA+ID4gPiA+ICsJYmxvY2tz
ID0gc2tsX3dtX2hhc19saW5lcyhkZXZfcHJpdiwgbGV2ZWwpID8NCj4gPiA+ID4gPiA+ID4gKwkJ
CW1heF90KHUzMiwgZml4ZWQxNl90b191MzJfcm91bmRfdXAoc2VsZWN0ZWRfcmVzdWx0KSArIDEs
DQo+ID4gPiA+ID4gPiA+ICsJCQkJICBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cCh3cC0+cGxhbmVf
YmxvY2tzX3Blcl9saW5lKSkgOg0KPiA+ID4gPiA+ID4gPiArCQkJZml4ZWQxNl90b191MzJfcm91
bmRfdXAoc2VsZWN0ZWRfcmVzdWx0KSArIDE7DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFRo
YXQncyBsb29rcyByYXRoZXIgY29udm9sdXRlZC4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4g
ICBibG9ja3MgPSBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChzZWxlY3RlZF9yZXN1bHQpICsgMTsN
Cj4gPiA+ID4gPiA+ICsgLyogYmxhaCAqLw0KPiA+ID4gPiA+ID4gKyBpZiAoaGFzX2xpbmVzKQ0K
PiA+ID4gPiA+ID4gKwlibG9ja3MgPSBtYXgoYmxvY2tzLCBmaXhlZDE2X3RvX3UzMl9yb3VuZF91
cCh3cC0+cGxhbmVfYmxvY2tzX3Blcl9saW5lKSk7DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gV2Ug
cHJvYmFibHkgbmVlZCB0byBkbyBzaW1pbGFyIHJlZmFjdG9yaW5nIGluIHRoZSB3aG9sZSBmdW5j
dGlvbiA7LSkNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IEFsc28gc2luY2UgQXJ0IHNhaWQgbm90
aGluZyBsaWtlIHRoaXMgc2hvdWxkIGFjdHVhbGx5IGJlIG5lZWRlZA0KPiA+ID4gPiA+ID4gSSB0
aGluayB0aGUgY29tbWVudCBzaG91bGQgbWFrZSBpdCBhIGJpdCBtb3JlIGNsZWFyIHRoYXQgdGhp
cw0KPiA+ID4gPiA+ID4gaXMganVzdCBhIGhhY2sgdG8gd29yayBhcm91bmQgdGhlIHVuZGVycnVu
cyB3aXRoIHNvbWUgc2luZ2xlDQo+ID4gPiA+ID4gPiBtZW1vcnkgY2hhbm5lbCBjb25maWd1cmF0
aW9ucy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBJdCBpcyBhY3R1YWxseSBub3QgcXVpdGUgYSBo
YWNrLCBiZWNhdXNlIHdlIGFyZSBtaXNzaW5nIHRoYXQgY29uZGl0aW9uDQo+ID4gPiA+ID4gaW1w
bGVtZW50YXRpb24gZnJvbSBCU3BlYyA0OTMyNSwgd2hpY2ggaW5zdHJ1Y3RzIHVzIHRvIHNlbGVj
dCBtZXRob2QyDQo+ID4gPiA+ID4gd2hlbiBkZGIgYmxvY2tzIGFsbG9jYXRpb24gaXMga25vd24g
YW5kIHRoYXQgcmF0aW8gaXMgPj0gMS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoZSBkZGIgYWxsb2Nh
dGlvbiBpcyBub3QgeWV0IGtub3duLCBzbyB3ZSdyZSBpbXBsZW1lbnRpbmcgdGhlDQo+ID4gPiA+
IGFsZ29yaXRobSAxMDAlIGNvcnJlY3RseS4NCj4gPiA+ID4gDQo+ID4gPiA+IEFuZCB0aGlzIHBh
dGNoIGRvZXMgbm90IGltcGxlbWVudCB0aGF0IG1pc2lzbmcgcGFydCBhbnl3YXkuDQo+ID4gPiAN
Cj4gPiA+IFllcywgYXMgSSB1bmRlcnN0b29kIG1ldGhvZDIgd291bGQganVzdCBnaXZlIGFtb3Vu
dCBvZiBibG9ja3MgdG8gYmUNCj4gPiA+IGF0IGxlYXN0IGFzIGRidWYgYmxvY2tzIHBlciBsaW5l
Lg0KPiA+ID4gDQo+ID4gPiBXb25kZXIgd2hldGhlciBzaG91bGQgd2UgYWN0dWFsbHkgZnVsbHkg
aW1wbGVtZW50IHRoaXMgQlNwZWMgY2xhdXNlIA0KPiA+ID4gYW5kIGFkZCBpdCB0byB0aGUgcG9p
bnQgd2hlcmUgZGRiIGFsbG9jYXRpb24gaXMga25vd24gb3IgYXJlIHRoZXJlIA0KPiA+ID4gYW55
IG9ic3RhY2xlcyB0byBkbyB0aGF0LCBiZXNpZGVzIGhhdmluZyB0byByZXNodWZmbGUgdGhpcyBm
dW5jdGlvbiBhIGJpdD8NCj4gPiANCj4gPiBXZSBuZWVkIHRvIGNhbGN1bGF0ZSB0aGUgd20gdG8g
ZmlndXJlIG91dCBob3cgbXVjaCBkZGIgdG8gYWxsb2NhdGUsDQo+ID4gYW5kIHRoZW4gd2UnZCBu
ZWVkIHRoZSBkZGIgYWxsb2NhdGlvbiB0byBmaWd1cmUgb3V0IGhvdyB0byBjYWxjdWxhdGUNCj4g
PiB0aGUgd20uIFZlcnkgbXVjaCBjaGlja2VuIHZzLiBlZ2cgcmlnaHQgdGhlcmUuIFdlJ2QgaGF2
ZSB0byBkbyBzb21lDQo+ID4ga2luZCBvZiBoaWRlb3VzIGxvb3Agd2hlcmUgd2UnZCBjYWxjdWxh
dGUgZXZlcnl0aGluZyB0d2ljZS4gSSBkb24ndA0KPiA+IHJlYWxseSB3YW50IHRvIGRvIHRoYXQg
c2luY2UgSSdkIGFjdHVhbGx5IGxpa2UgdG8gbW92ZSB0aGUgd20NCj4gPiBjYWxjdWxhdGlvbiB0
byBoYXBwZW4gYWxyZWFkeSBtdWNoIGVhcmxpZXIgZHVyaW5nIC5jaGVja19wbGFuZSgpDQo+ID4g
YXMgdGhhdCBjb3VsZCByZWR1Y2UgdGhlIGFtb3VudCBvZiByZWR1bmRhbnQgd20gY2FsY3VsYXRp
b25zIHdlDQo+ID4gYXJlIGN1cnJlbnRseSBkb2luZy4NCj4gDQo+IEkgbWlnaHQgYmUgbWlzc2lu
ZyBzb21lIGRldGFpbHMgcmlnaHQgbm93LCBidXQgd2h5IGRvIHdlIG5lZWQgYSBkZGINCj4gYWxs
b2NhdGlvbiB0byBjb3VudCB3bXM/DQo+IA0KPiBJIHRob3VnaHQgaXRzIGxpa2Ugd2UgdXN1YWxs
eSBjYWxjdWxhdGUgd20gbGV2ZWxzICsgbWluX2RkYl9hbGxvY2F0aW9uLA0KPiB0aGVuIGJhc2Vk
IG9uIHRoYXQgd2UgZG8gYWxsb2NhdGUgbWluX2RkYiArIGV4dHJhIGZvciBlYWNoIHBsYW5lLg0K
PiBUaGlzIGlzIGNvcnJlY3QgdGhhdCBieSB0aGlzIG1vbWVudCB3aGVuIHdlIGNhbGN1bGF0ZSB3
bXMgd2UgaGF2ZSBvbmx5DQo+IG1pbl9kZGIgYXZhaWxhYmxlLCBzbyBpZiB0aGlzIGxldmVsIHdv
dWxkIGJlIGV2ZW4gZW5hYmxlZCwgd2Ugd291bGQNCj4gYXQgbGVhc3QgbmVlZCBtaW5fZGRiIGJs
b2Nrcy4NCj4gDQo+IEkgdGhpbmsgd2UgY291bGQganVzdCB1c2UgdGhhdCBtaW5fZGRiIHZhbHVl
IGhlcmUgZm9yIHRoYXQgcHVycG9zZSwNCj4gYmVjYXVzZSB0aGUgY29uZGl0aW9uIGFueXdheSBj
aGVja3MgaWYgDQo+IChwbGFuZSBidWZmZXIgYWxsb2NhdGlvbiAvIHBsYW5lIGJsb2NrcyBwZXIg
bGluZSkgPj0xIHNvLCBldmVuIGlmDQo+IGlmIHRoaXMgd20gbGV2ZWwgd291bGQgYmUgZW5hYmxl
ZCBwbGFuZSBidWZmZXIgYWxsb2NhdGlvbiB3b3VsZA0KPiBiZSBhdCBsZWFzdCBtaW5fZGRiIF9v
ciBoaWdoZXJfIC0gaG93ZXZlciB0aGF0IHdvbid0IGFmZmVjdCB0aGlzIA0KPiBjb25kaXRpb24g
YmVjYXVzZSBldmVuIGlmIGl0IGhhcHBlbnMgdG8gYmUgInBsYW5lIGJ1ZmZlciBhbGxvY2F0aW9u
DQo+ICsgc29tZSBleHRyYSIgdGhlIHJhdGlvIHdvdWxkIHN0aWxsIGJlIHZhbGlkLg0KPiBTbyBp
ZiBpdCBleGVjdXRlcyBmb3IgbWluX2RkYiAvIHBsYW5lIGJsb2NrcyBwZXIgbGluZSwgd2UgY2Fu
DQo+IHByb2JhYmx5IHNhZmVseSBzdGF0ZSwgZnVydGhlciBpdCB3aWxsIGJlIGFsc28gdHJ1ZS4N
Cg0KbWluX2RkYiA9IDExMCUgb2YgdGhlIGJsb2NrcyBjYWxjdWxhdGVkIGZyb20gdGhlIDIgbWV0
aG9kcyAoYmxvY2tzICsgMTAlKQ0KSXQgZGVwZW5kcyBvbiB3aGF0IG1ldGhvZCB3ZSBjaG9vc2Uu
IFNvIEkgZG9udCB0aGluayB3ZSBjYW4gdXNlIGl0IGZvciBhbnkgYXNzdW1wdGlvbnMuDQoNCkJ1
dCBpbiBhbnkgY2FzZSwgSSB0aGluayB0aGlzIHBhdGNoIGRvIG5vdCBjYXVzZSBhbnkgaGFybSBp
biBtb3N0IG9mIHRoZSB1c2VjYXNlcyBleHBlY3RlZCBvdXQgb2YNCnNrbCsgcGxhdGZvcm1zIHdo
aWNoIGhhdmUgZW5vdWdoIGRidWYhDQoNClBlciBwbGFuZSBkZGIgYWxsb2NhdGlvbiBoYXBwZW5z
IGJhc2VkIG9uIHRoZSBoaWdoZXN0IHdtIGxldmVsIG1pbl9kZGIgd2hpY2ggY2FuIGZpdCBpbnRv
IHRoZQ0KYWxsb2NhdGlvbi4gSWYgb25lIGxldmVsIGlzIG5vdCBmaXQsIHRoZW4gdGhhdCBsZXZl
bCArIGFib3ZlIHBhY2thZ2UgQyBzdGF0ZSB0cmFuc2l0aW9ucyBhcmUNCmRpc2FibGVkLiANCk5v
dyBpZiB5b3UgbG9vayBhdCB0aGUgbG9naWMgdG8gc2VsZWN0IHdoaWNoIG1ldGhvZCB0byB1c2Ug
LSBpZiB0aGUgbGF0ZW5jeSA+PSBsaW5ldGltZSwgd2Ugc2VsZWN0DQp0aGUgbGFyZ2UgYnVmZmVy
IG1ldGhvZCB3aGljaCBndWFudGVlcyB0aGF0IHRoZXJlIGlzIGF0bGVhc3QgcGxhbmVfYmxvY2tz
X3Blcl9saW5lLiBTbyBJIHRoaW5rIHdlDQpjYW4gc2FmZWx5IGFzc3VtZSB0aGF0IGxhdGVuY3kg
Zm9yIHdha2Ugd20gbGV2ZWwgd2lsbCBiZSBtb3N0bHkgaGlnaGVyLCB3aGljaCBpbXBsaWVzIHVz
aW5nIHRoZQ0KImxhcmdlIGJ1ZmZlciIgbWV0aG9kLg0KDQpTbyB0aGlzIGNoYW5nZSBtb3N0bHkg
bGltaXRzIHRvIHdtMC4gQW5kIGhlbmNlIHNob3VsZCBub3QgaW1wYWN0IGRkYiBhbGxvY2F0aW9u
LCBidXQgdGhlIG1lbW9yeQ0KZmV0Y2ggYnVyc3RzIG1pZ2h0IGhhcHBlbiBzbGlnaHRseSBtb3Jl
IGZyZXF1ZW50bHkgd2hlbiB0aGUgcHJvY2Vzc29yIGlzIGluIEMwPw0KDQpCUg0Kdmlub2QNCg0K
PiANCj4gU3Rhbg0KPiANCj4gPiAtLSANCj4gPiBWaWxsZSBTeXJqw6Rsw6QNCj4gPiBJbnRlbA0K
