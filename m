Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAA97F5F95
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 13:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAEA810E737;
	Thu, 23 Nov 2023 12:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 012C110E737
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 12:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700744189; x=1732280189;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=kV12DwtNk+bDl0L18shM0hs7WQRavltYbzF+IC7J7Mc=;
 b=FdZNHZGQd6xtvvf8AO5otcZyEZX69RGPI8Qx7xudGiktsRmDbIL/vqcZ
 JumvBvLMr+STDvvrFGwLuEyzL1A8gNFgCF816Kk6v8HV11xbHlOf5V1De
 HQxHfYuM3XurKpjwTSVuF0tbB9G2aaY3z99RYatKW5CQ16U9mxgiWasGI
 Kbd8QE9qKTPzgcotC7B3Czh/R4fu48BsBLxHQKG9YqZSyUkmGcyzkUw0Y
 LKBKaTdDrdW7x639X8wvN9rdP2sTp3aDIwrWAK10JfRrBvLNI0IQnxtyk
 /7Q38BU7gfzB1YrVhz9enLgmQIUliGV+PZHMeGkz8GFz2rCPJ1wXFfsIV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423392483"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="423392483"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 04:56:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="15332257"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Nov 2023 04:56:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 23 Nov 2023 04:56:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 23 Nov 2023 04:56:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 23 Nov 2023 04:56:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AmcPc1jTpe0Hzra3bJxWSZdk3QALHHT1juhCcvHlYDMpLvnn1GfQ9Ggt/7MLA+kNnejcrUWBNYPLh1MJW7HcflwRKAyYXmjkGhZnyqldATKJfCDdx9X087H9SbOm2s3aN1ZPr3c5+yrvJq+IdzZ4ZdGokR/JsRXa6s/BQmqD6s/jneY6JaDE2EHm13WCZ5g5pY6AXCcbLPjIVdvX01jg2EZn5HXd7IkHEyZi/ujFelKuly+Smz9Gt650AjqBZ4nW0NKMn1Z9AsFtyRXXpkMSI5ijnc+/H7LnaS4fIdT7tuTFrDp6XzSGHF4D/gyWENYtpZvTRMFvUzlHI+H8TTM9ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kV12DwtNk+bDl0L18shM0hs7WQRavltYbzF+IC7J7Mc=;
 b=mWtzEhMzYLKzNHvk/3RH1THTjupdu/aQ02pbyZqQiQvqxeuRVs+tVPMcvt7AZ8gvxd0QqHuOBtzdPppycjZsXDu2Pss0HnL9qk9tCYe0M/Mj7t7FWdSXmHy/CTz3oH5qxxHVMExYHdQeiAZkJGt7W3OzthtosbhTUg9p9t4DcEz+kdZ6BWINkYBurmu0VBartntS/bLv6hTO4jFZl0IBOV3MHLpyam72Ow5Vos2hch/TAdD0IQj27lU4IMftUoY4SWiy0GEnDQkwXnwJJjrHnJG80nTvb/Zn1/vlzaVmZSKNrqaIhNj71h5Mkkx7v3gD4xBsJRiikt7MMt0T1RmPAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO6PR11MB5572.namprd11.prod.outlook.com (2603:10b6:303:13c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.18; Thu, 23 Nov
 2023 12:56:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7025.019; Thu, 23 Nov 2023
 12:56:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [1/3] drm/i915/display: Separate xe and i915 common
 dpt code into own file
Thread-Index: AQHaFuQt8ir5bURbCkCeOqXqn5uQGbCH6yQA
Date: Thu, 23 Nov 2023 12:56:25 +0000
Message-ID: <7bf8b5dc9dd32d95060e1bcaa4c2df70d537f60b.camel@intel.com>
References: <20231113203239.128207-1-juhapekka.heikkila@gmail.com>
 <f0e20910ca78389a5077a027d79405dcd509d41b.camel@intel.com>
In-Reply-To: <f0e20910ca78389a5077a027d79405dcd509d41b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO6PR11MB5572:EE_
x-ms-office365-filtering-correlation-id: 46456397-e93e-4b05-1957-08dbec239a10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WYxJo3g1Ug4eqgX49H7Sq5RhBBdmXQqaZJ9F9/qHn0WcjseNAYhw4IMB4bl5aNWKAS+9AIkKxf4yin2GoUlVHv3rldA95/g7F5dpJTNE03zPvVF9xZCv3YgV8nrcM+Ec1ERvz5/lDfMJHf4iC9RUq02aa2DyGJ87dTgfWd8siTOkCf0/VcqgKSQmTLecznsq3EybmcGepRpwNqcbxPjmGGZdbwQiim3dg2GfY/xo/3HBA7AnpgxtHCcvBif9NjsNjfeXE5tBvh27LPxzJLq7FyjtRb9s2rJ20Cg9Oux0reW/f6rldOZB3UJgkQiiwKTejRFrLvlPavn0Q31/NafCpWyUBgO072JHNOpxJXTbtHjI/103WzOVKGbNWEMG8ZK+nWyVR5Up+WGUSKB0+vYmCt96MB4JdMpZUAZz3Qp8vJ0coWtqqU3dgp4NBaFhyipnhY6VxPEpGnVEJegAqz/ICRIZREQ5CmTyXCQVSzOF0KSsVkGes0+4cNJgAUGF6fZGwirppqpc/Jos2Rvu+IOp8QbE8wPGytQW5ND/6is84eXQNeQt0q0ifbm50Yir4nBinVz5sdCsAHKrQVGRfHPkdzqrKwhET6dcPj/l5fN8R3Kpa9yKxH+p3MqvwvPdhVuc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(39860400002)(396003)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(26005)(66574015)(82960400001)(66946007)(64756008)(71200400001)(76116006)(66446008)(91956017)(66476007)(66556008)(316002)(110136005)(8936002)(83380400001)(2616005)(478600001)(6486002)(6512007)(6506007)(2906002)(4001150100001)(8676002)(41300700001)(122000001)(38100700002)(5660300002)(86362001)(36756003)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M3p5YjIvK2R0K0pubG5hSlNGTk9KSE5EQ01iTDF1dFVCeTRxRk00dkJRQW00?=
 =?utf-8?B?eGJLcVd3NW1ndHhQandFV1N0NUVSWUF3emtrZllYcXM4VU55UXZ1dkI2U3R6?=
 =?utf-8?B?cUV1cmN4K294OEVhQzRmdjJZVmEwcFB5VjMxbFkzQnp2M3hTQ0hxNEZSRWpV?=
 =?utf-8?B?Unl6Z0JTNXNVRGIxVVNIRmhpbUNDMFBjcHRXUmwvYzI4di9TNWNCcVBTUE5X?=
 =?utf-8?B?L0Z0UXpENzJBdVpEWXNOdzdoa1BKM1JQSVJUSkh4Y0d6S1JDbW1sOUxrODVU?=
 =?utf-8?B?WVRrV3JmYjVicXpDSGprM0R6ajF1bDMvUk5LVW1mbTVYV3JJclE5QjBETnhx?=
 =?utf-8?B?Y1RVTHliOGJDSmVsR1FYWU1PNk50ZnBkeStucWlBeVZlbzg5b0xOT0crRVhm?=
 =?utf-8?B?UVpYbTdqbDRjejRjUU4vbnppN05IMUtIa0NEdmhXY1Q5eHYxUmZMRzgyekU4?=
 =?utf-8?B?R3NLc3NlNG1ZZkkxcXZXcXdCL1NlRDQ0U2pheGdzUlo3VG96akVxYUpvTVA1?=
 =?utf-8?B?WkF6U2FSRGJzakRFK0huSG5JcDVkUGNiNS9YRk5VZHlrZkVnMDRwUmhJMytl?=
 =?utf-8?B?WDIvaG1wbTdUQzJHank5dkg1cTcrNm5XVE1kMno5eVVoVlNTQ0tYbUNJakxi?=
 =?utf-8?B?am04NnRtcGRtNmg1bEE3ZWtFRmh3WVJiN21RRHpqNkh5RUJYZklIeFRIOXlp?=
 =?utf-8?B?S1YzYXNHNTZOU1RKaTcwUVcxM0pGZE5FS2c4MEdPMFpyS0pVdTNOVjlndkxh?=
 =?utf-8?B?UTAyc3J2RDVsaFUvTzArSTkwSGRicmRRMVo5QU40dVI2ZHkzS0hFNGczOWJC?=
 =?utf-8?B?Mit6RFhyRi9SdlFidXRwOEhCVzNpdEM5QVUxRi9lYWNCVlYrbiswUStPR1FH?=
 =?utf-8?B?a25lZ3V5eDc2aGdvN0JJc1RCTG04UXhkd1FIVTdTNER0VmJEcEFqa2xHQzh1?=
 =?utf-8?B?bWtRbkRCUjN4Q1JRLzh4cVBTbWFMNFNPNDhNMUhyUFByelM5OEhaSVdjZ0xK?=
 =?utf-8?B?NXVwYlZ3SHFacWxJT3RGVmxRZ3Vyc0krTTlFRmZZU0RURk4rcnhIVXVkOVVj?=
 =?utf-8?B?dHJ5TXFORXh2ZmROUzZqT0NKbUJFTjk1dlBSL05nSUM3aUt2c1dCSkpGaDJu?=
 =?utf-8?B?OE9QUjNYc1RpcHNXekZrVTlGYVRiVHBKL01ydWRoNGU2MDkrV2didS9BdTRq?=
 =?utf-8?B?TzdnYWNLMjlSMGtlSzYzeUk1bCtWUjhueVA4cXRiakRlTldZc1paTjBWWnFk?=
 =?utf-8?B?TWoyeFlPQnQxQmUzTnlybm1zbEVVMGJjdUpzdTBuZzczWk0zUkVDVHFPM1RR?=
 =?utf-8?B?WWJMM3BXZE83MzZFbVNnT0VNMkVqUWFCYXYxbnFXUHdEajVKZDdoR0N6VmNp?=
 =?utf-8?B?cW4zMDdONUkraktXRys3MkpyemUvQ2tlL3NBbE1pVWxTTDFhQzhsT3Z1THBV?=
 =?utf-8?B?UDd1eXZFTHVmNlE4SU9tT3JnWSs4MlRTVlJmRGhMMW9vbVV2L1Z2UG9CRmZX?=
 =?utf-8?B?cFNUZ3c3WVdCWHVaRjlCSXZYK3dvT0lmSW9CZzZoNGFVejYzRS94Y2FTYzY0?=
 =?utf-8?B?UmdVK3ZmT1FFUGZSN1NrSXFuM2M5cDIzNmFjREpIZlYyK1BMUXhoVFkreUZ2?=
 =?utf-8?B?NExwRUVxcnNHMmhZT0VhSFNLT1MwMnI5UmdYL3hxeXYwVjZ2S1pQMVllbzdr?=
 =?utf-8?B?Ym1rdHNyVjNGWTFqc1B4dDF1bHNYUnpTT05ZaWErbWZqWEN0Qk1CRG9lMTV1?=
 =?utf-8?B?bkYwMjhSSStYdFg3Mlg3a1pmMWhTSWN4Y0hhUGpreTJaNXRSRmpSOU9NaWtJ?=
 =?utf-8?B?K09sbnphU1ZlNW82ZXpsRDYxUEkvUnNobDJkK3ZJczhYMzNNaXQrcnAxUmMv?=
 =?utf-8?B?R081M0ZSekhGR1dsRkVNK0twSE12TWJLVWx2aTJhSFlJam5JYTg1VEdMdXYw?=
 =?utf-8?B?aU5pbUtwcU1wa3V5SExBMkh5ZzNoQjFkVmN1akFVRitmZXdJYkVvZWVLa2FO?=
 =?utf-8?B?ajFleEJnY1FMeFFnZGxHM2hoUFhOb1FhOXBzU3hSU2ZTczZCbko1S25aTnlh?=
 =?utf-8?B?MHpGMUxBVTJzaVkwZ3k0c2N4ZlJOQjBoVkZXc0lUL04xRytzVDVPZFRGTWZy?=
 =?utf-8?B?ZjNya3hKWS9EeFRxQzFqMEg1YWRxUTcvc2krZ1VIZDRsZmpmVTBtRzlxOWp6?=
 =?utf-8?B?ekE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F6982F4E9099934A9716C31B1F7CCF9F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46456397-e93e-4b05-1957-08dbec239a10
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2023 12:56:25.5724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i0m9DD66+4iROklhZa+NPBCtMJswkilpndx563Zc3D46k07vl7dlb6bnJMXI9qzO/djCKzK30cZ1PD5qhCLi0kYpeu7J5sWIMLibkMagA7A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5572
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [1/3] drm/i915/display: Separate xe and i915 common
 dpt code into own file
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

T24gVHVlLCAyMDIzLTExLTE0IGF0IDEwOjIwICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
Cj4gT24gTW9uLCAyMDIzLTExLTEzIGF0IDIyOjMyICswMjAwLCBKdWhhLVBla2thIEhlaWtraWxh
IHdyb3RlOgo+ID4gSGVyZSBjcmVhdGVkIGludGVsX2RwdF9jb21tb24uYyB0byBob2xkIGludGVs
X2RwdF9jb25maWd1cmUgd2hpY2gKPiA+IGlzCj4gPiBuZWVkZWQgZm9yIGJvdGggeGUgYW5kIGk5
MTUuCj4gCj4gRm9yIHRoZSB3aG9sZSBzZXJpZXM6Cj4gCj4gUmV2aWV3ZWQtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgoKVGhhbmsgeW91IEp1aGEtUGVra2Eg
Zm9yIHRoZSBwYXRjaGVzLiBUaGVzZSBhcmUgbm93IHB1c2hlZCB0byBkcm0tCmludGVsLW5leHQu
CgpCUiwKCkpvdW5pIEjDtmdhbmRlcgoKPiAKPiBCUiwKPiAKPiBKb3VuaSBIw7ZnYW5kZXIKPiAK
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlr
a2lsYUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGXCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSArCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jwqAgfMKgIDEgKwo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jwqDCoMKgwqDCoCB8IDI2IC0tLS0t
LS0tLS0tLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmjC
oMKgwqDCoMKgIHzCoCAyIC0tCj4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cHRfY29tbW9uLmPCoMKgIHwgMzQKPiA+ICsrKysrKysrKysrKysrKysrKysKPiA+IMKgLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdF9jb21tb24uaMKgwqAgfCAxMyArKysrKysrCj4g
PiDCoDYgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCj4g
PiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwdF9jb21tb24uYwo+ID4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcHRfY29tbW9uLmgKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCj4gPiBpbmRleCAyMzlkYTQwYTQwMWYuLmMxOGEyMGM0NzI2NSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZQo+ID4gQEAgLTI3NSw2ICsyNzUsNyBAQCBpOTE1LXkgKz0gXAo+ID4gwqDC
oMKgwqDCoMKgwqDCoGRpc3BsYXkvaW50ZWxfZHBsbC5vIFwKPiA+IMKgwqDCoMKgwqDCoMKgwqBk
aXNwbGF5L2ludGVsX2RwbGxfbWdyLm8gXAo+ID4gwqDCoMKgwqDCoMKgwqDCoGRpc3BsYXkvaW50
ZWxfZHB0Lm8gXAo+ID4gK8KgwqDCoMKgwqDCoMKgZGlzcGxheS9pbnRlbF9kcHRfY29tbW9uLm8g
XAo+ID4gwqDCoMKgwqDCoMKgwqDCoGRpc3BsYXkvaW50ZWxfZHJycy5vIFwKPiA+IMKgwqDCoMKg
wqDCoMKgwqBkaXNwbGF5L2ludGVsX2RzYi5vIFwKPiA+IMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5
L2ludGVsX2ZiLm8gXAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCj4gPiBpbmRleCAzZWZmYWZjYmI0MTEuLjEyYzE2MzIwMzY1OCAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4g
QEAgLTc3LDYgKzc3LDcgQEAKPiA+IMKgI2luY2x1ZGUgImludGVsX2RwbGwuaCIKPiA+IMKgI2lu
Y2x1ZGUgImludGVsX2RwbGxfbWdyLmgiCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kcHQuaCIKPiA+
ICsjaW5jbHVkZSAiaW50ZWxfZHB0X2NvbW1vbi5oIgo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHJy
cy5oIgo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZHNiLmgiCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9k
c2kuaCIKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwdC5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMKPiA+
IGluZGV4IDJiMDY3Y2I5NTJmMC4uYjI5YmNlZmY3M2YyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuYwo+ID4gQEAgLTksOCArOSw2IEBACj4gPiDCoCNp
bmNsdWRlICJndC9nZW44X3BwZ3R0LmgiCj4gPiDCoAo+ID4gwqAjaW5jbHVkZSAiaTkxNV9kcnYu
aCIKPiA+IC0jaW5jbHVkZSAiaTkxNV9yZWcuaCIKPiA+IC0jaW5jbHVkZSAiaW50ZWxfZGUuaCIK
PiA+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiA+IMKgI2luY2x1ZGUgImlu
dGVsX2RwdC5oIgo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZmIuaCIKPiA+IEBAIC0zMTgsMjcgKzMx
NiwzIEBAIHZvaWQgaW50ZWxfZHB0X2Rlc3Ryb3koc3RydWN0Cj4gPiBpOTE1X2FkZHJlc3Nfc3Bh
Y2UKPiA+ICp2bSkKPiA+IMKgwqDCoMKgwqDCoMKgwqBpOTE1X3ZtX3B1dCgmZHB0LT52bSk7Cj4g
PiDCoH0KPiA+IMKgCj4gPiAtdm9pZCBpbnRlbF9kcHRfY29uZmlndXJlKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQo+ID4gLXsKPiA+IC3CoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4gPiAtCj4gPiAtwqDCoMKgwqDC
oMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMTQpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBlbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Cj4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgZW51bSBwbGFuZV9pZCBwbGFuZV9pZDsKPiA+IC0KPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9wbGFuZV9pZF9vbl9jcnRjKGNy
dGMsIHBsYW5lX2lkKSB7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGlmIChwbGFuZV9pZCA9PSBQTEFORV9DVVJTT1IpCj4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250aW51
ZTsKPiA+IC0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaW50ZWxfZGVfcm13KGk5MTUsIFBMQU5FX0NISUNLRU4ocGlwZSwKPiA+IHBsYW5lX2lkKSwK
PiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIFBMQU5FX0NISUNLRU5fRElTQUJMRV9EUFQsCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpOTE1LQo+ID4gPmRpc3BsYXkucGFyYW1zLmVuYWJsZV9kcHQKPiA+ID8gMCA6Cj4g
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBQTEFORV9DSElDS0VOX0RJU0FCTEVfRFBUKTsKPiA+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiAtwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKERJ
U1BMQVlfVkVSKGk5MTUpID09IDEzKSB7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaW50ZWxfZGVfcm13KGk5MTUsIENISUNLRU5fTUlTQ18yLAo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBDSElDS0VOX01JU0NfRElT
QUJMRV9EUFQsCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGk5MTUtPmRpc3BsYXkucGFyYW1zLmVuYWJsZV9kcHQgPyAwIDoKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ0hJ
Q0tFTl9NSVNDX0RJU0FCTEVfRFBUKTsKPiA+IC3CoMKgwqDCoMKgwqDCoH0KPiA+IC19Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuaAo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5oCj4gPiBpbmRleCBkOWEx
NjY1NTAxODUuLmUxOGE5Zjc2N2IxMSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHB0LmgKPiA+IEBAIC0xMCw3ICsxMCw2IEBAIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlOwo+ID4gwqAKPiA+IMKgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZTsKPiA+IMKgc3Ry
dWN0IGk5MTVfdm1hOwo+ID4gLXN0cnVjdCBpbnRlbF9jcnRjOwo+ID4gwqBzdHJ1Y3QgaW50ZWxf
ZnJhbWVidWZmZXI7Cj4gPiDCoAo+ID4gwqB2b2lkIGludGVsX2RwdF9kZXN0cm95KHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtKTsKPiA+IEBAIC0yMCw2ICsxOSw1IEBAIHZvaWQgaW50ZWxf
ZHB0X3N1c3BlbmQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUKPiA+ICppOTE1KTsKPiA+IMKgdm9p
ZCBpbnRlbF9kcHRfcmVzdW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKPiA+IMKg
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqCj4gPiDCoGludGVsX2RwdF9jcmVhdGUoc3RydWN0
IGludGVsX2ZyYW1lYnVmZmVyICpmYik7Cj4gPiAtdm9pZCBpbnRlbF9kcHRfY29uZmlndXJlKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKPiA+IMKgCj4gPiDCoCNlbmRpZiAvKiBfX0lOVEVMX0RQ
VF9IX18gKi8KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwdF9jb21tb24uYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwdF9jb21tb24uYwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uY2RiYTQ3MTY1YzA0Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdF9jb21tb24uYwo+ID4gQEAgLTAsMCArMSwzNCBA
QAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQKPiA+ICsvKgo+ID4gKyAqIENv
cHlyaWdodCDCqSAyMDIzIEludGVsIENvcnBvcmF0aW9uCj4gPiArICovCj4gPiArCj4gPiArI2lu
Y2x1ZGUgImk5MTVfcmVnLmgiCj4gPiArI2luY2x1ZGUgImludGVsX2RlLmgiCj4gPiArI2luY2x1
ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiA+ICsjaW5jbHVkZSAiaW50ZWxfZHB0X2NvbW1v
bi5oIgo+ID4gKwo+ID4gK3ZvaWQgaW50ZWxfZHB0X2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YykKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDC
oMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID09IDE0KSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGVudW0gcGxhbmVfaWQgcGxhbmVfaWQ7Cj4gPiArCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRj
LCBwbGFuZV9pZCkgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpZiAocGxhbmVfaWQgPT0gUExBTkVfQ1VSU09SKQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7
Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGludGVsX2RlX3JtdyhpOTE1LCBQTEFORV9DSElDS0VOKHBpcGUsCj4gPiBwbGFuZV9pZCksCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBQTEFORV9DSElDS0VOX0RJU0FCTEVfRFBULAo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaTkxNS0KPiA+ID5kaXNwbGF5LnBhcmFtcy5lbmFibGVfZHB0Cj4gPiA/IDAgOgo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgUExBTkVfQ0hJQ0tFTl9ESVNBQkxFX0RQVCk7Cj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+ID4gK8KgwqDCoMKgwqDCoMKgfSBlbHNlIGlmIChESVNQ
TEFZX1ZFUihpOTE1KSA9PSAxMykgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGludGVsX2RlX3JtdyhpOTE1LCBDSElDS0VOX01JU0NfMiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQ0hJQ0tFTl9NSVNDX0RJU0FC
TEVfRFBULAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpOTE1LT5kaXNwbGF5LnBhcmFtcy5lbmFibGVfZHB0ID8gMCA6Cj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIENISUNL
RU5fTUlTQ19ESVNBQkxFX0RQVCk7Cj4gPiArwqDCoMKgwqDCoMKgwqB9Cj4gPiArfQo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0X2NvbW1vbi5o
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0X2NvbW1vbi5oCj4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi42ZDdkZTQwNTEy
NmEKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHB0X2NvbW1vbi5oCj4gPiBAQCAtMCwwICsxLDEzIEBACj4gPiArLyogU1BEWC1M
aWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLwo+ID4gKy8qCj4gPiArICogQ29weXJpZ2h0IMKpIDIw
MjMgSW50ZWwgQ29ycG9yYXRpb24KPiA+ICsgKi8KPiA+ICsKPiA+ICsjaWZuZGVmIF9fSU5URUxf
RFBUX0NPTU1PTl9IX18KPiA+ICsjZGVmaW5lIF9fSU5URUxfRFBUX0NPTU1PTl9IX18KPiA+ICsK
PiA+ICtzdHJ1Y3QgaW50ZWxfY3J0YzsKPiA+ICsKPiA+ICt2b2lkIGludGVsX2RwdF9jb25maWd1
cmUoc3RydWN0IGludGVsX2NydGMgKmNydGMpOwo+ID4gKwo+ID4gKyNlbmRpZiAvKiBfX0lOVEVM
X0RQVF9DT01NT05fSF9fICovCj4gCgo=
