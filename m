Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FE784CE2B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 16:36:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5574A1132AE;
	Wed,  7 Feb 2024 15:36:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZpBk874t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379931132AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 15:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707320205; x=1738856205;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=rpHRLf8WsINxAXKizd2WadI3wKoLfSYE8W0hetlAOB8=;
 b=ZpBk874twiZiCs/HQiBoAgYLOa5Z/VsX6jcEjKrWDvzvu4IcL63ZZ0GU
 OxmP9id/koGbzwlInKFg/ZYMmYNcdMQ2KK0z0/MUstiaB2YxoKUEreUsh
 +t0VTNCnWlTzaeeoyqQCo6TI+F5F+mtg151s8uBc4UDeSQ6P76TuHO20T
 /zKOcbyRrC0kosIADIl1drjrBYMJoYKCtbheI1V+PcWDRD8lIVpHEx2YL
 wO4dksoOto+67YMImtVXK+ilIdjkdCI1ksaFmm0tcrkjwves0d/ZEvEQV
 Q4IyZJ5TZmbYnrqQSDwEl7uPUmnBOeoiTyjCwSE90EiIUrxhVjBeRy64F g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="26457731"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="26457731"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 07:36:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="1667737"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 07:36:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 07:36:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 07:36:42 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 07:36:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxZuW+m4IMCvnWysA748Qg2dXbqthP+5iwJkzZI0cCbQVnb+/KvsC8zWQPqkbSO8atJINaHW4JyoAB/r9IF4uaCNTeL3h/m2cHotRrufCknWdqsMUtEW9MEu5VE1YmWYtpJUwtjiyMYMZIwRJIUUGKqSsSCgtg8GnwaZMPTZOHxjfX0IUDen8Y3q0hOjuJy5+DAuhFMV32ssXyqg2cj+i/8HepBkYz3YiBgSw+l75/eUsPkmqGe/Cjh/J+NAfVSG6MhllCyV4s1y5PHWQbnpy+43NnNr7FBoPpCoNzkYauigmaPYM7aq4Kz27LiayJKUvL4+QscUk3ixHWFw8KROGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rpHRLf8WsINxAXKizd2WadI3wKoLfSYE8W0hetlAOB8=;
 b=BisVj0R6j9EEyRXPnDzzHVWoiKx32aT5JACrNRcubXAQuBkNFdjBh3CdIJfjkUZzFTYO7+5B4u46L4nxEpsKGxA6BKQEjferDiteaOswxxX5Hn7Y734VdBfoSpendiRHEbr6XGgLl4XtCvPnUxpApbr7uaisN7eu2YKMoPUn+ZSe0aewW1VTGTYSDoSDb+MEBWD1Jy3VMj5gPJ8saRZPL/pJAJgOPo8wwSrTruULLaiLUcbYNNZlI1lIMPd0AY/KBDwbX/zSDSEvHrzmJw2ocYOoY7J1ePF3lUD2Z/MiQYsbmTAj9Chy405SY/Nj0fE8r++KGbvqX1tu1F1Cb7AlAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB6985.namprd11.prod.outlook.com (2603:10b6:930:57::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.30; Wed, 7 Feb 2024 15:36:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.037; Wed, 7 Feb 2024
 15:36:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: Prevent HW access during init from
 connector get_modes hooks
Thread-Topic: [PATCH 2/2] drm/i915: Prevent HW access during init from
 connector get_modes hooks
Thread-Index: AQHaWRKyIU1+W1Hvt0Ssx+pVmdaGHrD/BLsA
Date: Wed, 7 Feb 2024 15:36:39 +0000
Message-ID: <7f6e540d93f4a29b319a63e2c86ad68331a6ad8f.camel@intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
 <20240206153910.1758057-3-imre.deak@intel.com>
In-Reply-To: <20240206153910.1758057-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB6985:EE_
x-ms-office365-filtering-correlation-id: b73a866e-0050-43fd-404d-08dc27f293d3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ehnXjj5OkM07nA1nbhrFvdZi7kLztw1QdT9NggpztBhYu5iKuheynY6EmvRQwFc1FP30VII4p0Vod1XbneLMNRMi3PgnGN6VPSL/YgN2ajQuq4gq6dgqNT5DPEhaD0LGdLsfjOm42ckaDb/1mDopJCyOLp4W7f0+9IMWo/FeH8JpGajByxUr5K8zIgpiLZZJpfKTFurEYu7zofL6RCELuF3ZlMarzNcsUGl2qhg2OnAKzp1LMNqpLmPkuPCVYfUxf84f9eUmF00Lpf3wH+dCjkTBPQIRscNZDPqaWvErHsWPv7ACZm/jZyewkUnLui9ZhsELiu1jlm8Py/Gxixr6HnDpCcYkRKX0Z+4EQOLYOR5VKYL0YwFG1shDJJpuy2xTWH2kcNtFN6f9q/pyNkNpG9cq93/Aqdpqs6FS4H8yFGPKcakwpZsKcZP83NRjubTPDsnIWRPa+72zoMlQpZ3b099XMTHkknVtD5rdZGuu8Eye2ACjgusObcUmGO4kKpRIkKZavl5ewjwg5GNcyLHwjFrqhewkorb6jHGtgtTyaCJMb7XsUxEHompjOckNIAcMsK0qVheAwQ7+Y6dL8YYeLl2bmwEqtcs6cwWf0UAvtDM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(6506007)(6512007)(71200400001)(6486002)(966005)(66446008)(316002)(66556008)(66476007)(6636002)(64756008)(478600001)(66946007)(86362001)(8936002)(83380400001)(8676002)(82960400001)(76116006)(2616005)(26005)(38070700009)(5660300002)(36756003)(38100700002)(122000001)(110136005)(2906002)(41300700001)(66574015);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3ZESTAvRVVtOHRsN1NzVk0xY1M5di9idlpBa1hUdHh5bU9HYVJIdmtZazhq?=
 =?utf-8?B?UFdzOGxFOFBCZjNUbUpody9wVTNXNjlOL25UN1ZiV1dzZjRSL3lZdUs4MmM5?=
 =?utf-8?B?K0tRVjEvVGs1cFA0NHRVNXd5MS9DdHVURGF4Tm5OdHRXSmlUck9zL1Y4UjBS?=
 =?utf-8?B?YURFd2VoaklsTTQ3UVFSTEx0bGk0V3IwbWEyQmxHYTRVTWg4Z0l3ZVJ6VUNu?=
 =?utf-8?B?NDg5c1gvVUhoWEtjUFhvTmRBcDF4N3VqRjdpR2lHdlJodDJxV2NRUlVEejlO?=
 =?utf-8?B?d3lZbFN6V241NFlIdkxoaTdLZWJuUnhqQVE0YkRYKy9VRytLR2RqV2R5Q1FU?=
 =?utf-8?B?VWcyZzdHVjl2TkV0Wkg4V1lFWmJYWFg3T2hmb3dBbk83UEFMZ3FmNU9tN1Zo?=
 =?utf-8?B?ZFN2bHlVaU1oS3JTQTVjNnNmRmtxM3VRTHVHcTcyMHlhcEVvTXg0SnpjQkE2?=
 =?utf-8?B?MUtRV21iOWNxS0NSMTJjNHBFcWNMZng0dWhqSFdEdlJkejlXQzBPejM0NEg0?=
 =?utf-8?B?dTkxNzdVV21qb1FBUkNzV0V0Kzl4NS83MnlCOFdzY2N2aXVMRVFoc05qVk54?=
 =?utf-8?B?MkZFQTFqOFdqcVdwanNzT00zMDluRUF3Q2tPU3FDS1AxRGhOYW10cmlzRXZr?=
 =?utf-8?B?bW5JcFljL1pscHp0K1Z5eXFDU1QxblFGdFUyWExIQzg1UVQ4NXRRbjlGNnVK?=
 =?utf-8?B?ZTEwWm9BMTdDS0NOUUJOenh2UDVUeDMvTENtSXN1QnJIdnhYOVRxMldQZEN3?=
 =?utf-8?B?alVLVWNQUy9GSG0xR1RjNEFKNzFLcUc5NXI5YzJRaTcxMkI0QXhXOXJKcWFj?=
 =?utf-8?B?ZEdUZ3hWQ2VuSkQwOEJzdWQxU0RlL1lXbXl6S0lZL1A5UUc4MVJvWStuS1RO?=
 =?utf-8?B?S1ROK3RsNWRxNjN6WitsYWYydE5icVhGRS95K1NOQk5ROFBzN2YyUWJPTGpu?=
 =?utf-8?B?cHRqc2FjUWVhV2Y2bmUwUnMvUHdQMUNOempYWXFUWm5kOVh6K2ZnajRDN3NM?=
 =?utf-8?B?a2VZZkZCcThRZ1I3bUs5Vm5GbW10c1NieUtUeDJ5cjg1Y2QxZWcvRmlObjBF?=
 =?utf-8?B?a1hDNHhVY0UvUFdhS2F4bGhkQ2x0V1BtQ21POFNDZkgvS1FNSHhoSjR0Wncr?=
 =?utf-8?B?NlN4TmtXU2hRcEN3cStlbVp5djR3c01XbzAxaDZLOXVZZnA2ekNHU215YlAw?=
 =?utf-8?B?T3hSRlBLOEMzMGtacXUwOUQ4bG5PK3Z4S1hBUm1iN2ZqWTQ2Vm9sK3JNTUth?=
 =?utf-8?B?NUswVGZOYlRBSFZJYkhnNmJxcDR2WHFxY3RvRlpDWXk0NU5kTjlMWWo4dDUw?=
 =?utf-8?B?c01yTWJXWmo2a3MzaGRiUFhrVXlGOEc4RlloQWJ6TFNSQjRLRUxDTGxKcU5u?=
 =?utf-8?B?bCtnZXlQSjl3ZDlKL0ladmdJTUNMMlM5a1dRUXNUVHlWM1VlNXJZWEVYRXlL?=
 =?utf-8?B?N1ZsOEFYN2NhK3l0TDFnTkVWSXkyUG1FYmptdGFVRE9UdVovQ0JzWXJvTnhX?=
 =?utf-8?B?Z1kvbGlEeGZza0xxdURrQU96UTZFS2FtSUROaHlrWlc5OVdRdjNWSFA1dWZS?=
 =?utf-8?B?VUtqWHU2SU01TWIzNm1vcVF6VFpDWXJPbXFKYlJBWmpjMDF3WERXRE1jMmxp?=
 =?utf-8?B?SDd4Y0RMR0pxNG9yenEvZVdXZnpDNmp2TkVrSGtVR0JqVmJKaUNvd1ZkY1JZ?=
 =?utf-8?B?UkRTdXRtN21iekRGdDdjSEVMdE1kcldteHk4QStWdTFMWnFHYmpCQnd2Wm4w?=
 =?utf-8?B?RUdoY2lPZzh3NjZRWVh1L0RaYjBVQktRd0tHM2xXb0krVE9EbU9YVk5iVm1r?=
 =?utf-8?B?MGhyWjBWTEEvVk9MMlkyTnJIbmFKeTZMZzY2VllQaTVVbGNDRlR6WWNicFEy?=
 =?utf-8?B?MmRPemZsVVkyUUcxYTlUcnBpSDFTNmIzVnozaURTQWpFTlNzTkIyNXNXZkha?=
 =?utf-8?B?eUNhUEpTQXdYa3JEaVF6MjJwMHNYYUdCaFBHME1KNThIVWVoNGRaQXZOOEZ2?=
 =?utf-8?B?NUVsNHMwZTR4d0VKbWhvWS84OE5Ddk1zV3J0RWdFc2x3UHlVNGNlVWJGR1JY?=
 =?utf-8?B?WGlsaUd5OERSbGw1MXB1RnRibkFYWWpFT01iYzMvZi9JcFJDdEJ4KzAxbG0v?=
 =?utf-8?B?YXIrdXpsRkRJbXVxVllGODZkV2VFMW95TDlWYnB2YjZhRUtseU96M0g5VE9x?=
 =?utf-8?B?dlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0AB7FC62DFE2E6409C785B83410F283D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b73a866e-0050-43fd-404d-08dc27f293d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 15:36:39.5256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jRpCcgyfxHvSsmSQcHG42sR80ewS8Ko+CmqiU79xJOmDl9qYuXOnJjTLfoYDVLx6Mnb+MlzaSOHVQ4XcQKD8LxeyXTKK0Ab/IjfXwSdWNVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6985
X-OriginatorOrg: intel.com
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

T24gVHVlLCAyMDI0LTAyLTA2IGF0IDE3OjM5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gUHJl
dmVudCBhY2Nlc3NpbmcgdGhlIEhXIGZyb20gdGhlIGdldF9tb2RlcyBob29rcyBvZiBjb25uZWN0
b3JzCj4gZGVyaXZpbmcKPiB0aGUgbW9kZSBsaXN0IGZyb20gdGhlIGRpc3BsYXkncyBFRElELiBk
cm1fZWRpZF9jb25uZWN0b3JfYWRkX21vZGVzKCkKPiB3aWxsIHJldHVybiB0aGUgbW9kZSBsaXN0
IGJhc2VkIG9uIHRoZSBFRElEIHdoaWNoIHdhcyBjYWNoZWQgZHVyaW5nIGEKPiBwcmV2aW91cyBk
ZXRlY3Rpb24vZ2V0X21vZGVzIGNhbGwuCj4gCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzEwMDg1Cj4gU2lnbmVkLW9mZi1ieTogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPgoKPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmPCoMKgwqAgfCA3ICsrKysrKysKPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCA0ICsrKysKPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmPCoMKgwqAgfCA1ICsrKysrCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uY8KgwqAgfCA0ICsrKysKPiDCoDQgZmls
ZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NydC5jCj4gaW5kZXggYjk3MzNhNzNlMjFkNC4uMjdjNTU5NWU1ZDZiYyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYwo+IEBAIC02NDYs
OSArNjQ2LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VkaWQKPiAqaW50ZWxfY3J0X2dl
dF9lZGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IKPiDCoHN0YXRpYyBpbnQgaW50
ZWxfY3J0X2RkY19nZXRfbW9kZXMoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3QgaTJjX2FkYXB0ZXIgKmRkYykKPiDCoHsKPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYp
Owo+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2VkaWQgKmRybV9lZGlkOwo+IMKg
wqDCoMKgwqDCoMKgwqBpbnQgcmV0Owo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9k
aXNwbGF5X2RyaXZlcl9jaGVja19hY2Nlc3MoaTkxNSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiBkcm1fZWRpZF9jb25uZWN0b3JfYWRkX21vZGVzKGNvbm5lY3Rvcik7
Cj4gKwo+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZWRpZCA9IGludGVsX2NydF9nZXRfZWRpZChjb25u
ZWN0b3IsIGRkYyk7Cj4gwqDCoMKgwqDCoMKgwqDCoGlmICghZHJtX2VkaWQpCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiBAQCAtOTMzLDYgKzkzNyw5IEBAIHN0
YXRpYyBpbnQgaW50ZWxfY3J0X2dldF9tb2RlcyhzdHJ1Y3QKPiBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IpCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpMmNfYWRhcHRlciAqZGRjOwo+IMKgwqDC
oMKgwqDCoMKgwqBpbnQgcmV0Owo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9kaXNw
bGF5X2RyaXZlcl9jaGVja19hY2Nlc3MoZGV2X3ByaXYpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gZHJtX2VkaWRfY29ubmVjdG9yX2FkZF9tb2Rlcyhjb25uZWN0b3Ip
Owo+ICsKPiDCoMKgwqDCoMKgwqDCoMKgd2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0
KGRldl9wcml2LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfZW5jb2Rlci0KPiA+
cG93ZXJfZG9tYWluKTsKPiDCoAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX21zdC5jCj4gaW5kZXggNWZhMjVhNWEzNmI1NS4uNTMwN2RkZDRlZGNmNSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+IEBAIC0xMTk3
LDYgKzExOTcsNyBAQCBzdGF0aWMgYm9vbAo+IGludGVsX2RwX21zdF9pbml0aWFsX2Zhc3RzZXRf
Y2hlY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gwqBzdGF0aWMgaW50IGludGVs
X2RwX21zdF9nZXRfZGRjX21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yCj4gKmNvbm5lY3RvcikK
PiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29u
bmVjdG9yID0KPiB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoaW50ZWxfY29ubmVjdG9y
LQo+ID5iYXNlLmRldik7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAgPSBpbnRlbF9jb25uZWN0b3ItPm1zdF9wb3J0Owo+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBz
dHJ1Y3QgZHJtX2VkaWQgKmRybV9lZGlkOwo+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0Owo+IEBA
IC0xMjA0LDYgKzEyMDUsOSBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9nZXRfZGRjX21vZGVz
KHN0cnVjdAo+IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KGRybV9jb25uZWN0b3JfaXNfdW5yZWdpc3RlcmVkKGNvbm5lY3RvcikpCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaW50ZWxfY29ubmVjdG9yX3VwZGF0ZV9tb2Rlcyhj
b25uZWN0b3IsIE5VTEwpOwo+IMKgCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9kaXNwbGF5
X2RyaXZlcl9jaGVja19hY2Nlc3MoaTkxNSkpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiBkcm1fZWRpZF9jb25uZWN0b3JfYWRkX21vZGVzKGNvbm5lY3Rvcik7Cj4gKwo+
IMKgwqDCoMKgwqDCoMKgwqBkcm1fZWRpZCA9IGRybV9kcF9tc3RfZWRpZF9yZWFkKGNvbm5lY3Rv
ciwgJmludGVsX2RwLQo+ID5tc3RfbWdyLCBpbnRlbF9jb25uZWN0b3ItPnBvcnQpOwo+IMKgCj4g
wqDCoMKgwqDCoMKgwqDCoHJldCA9IGludGVsX2Nvbm5lY3Rvcl91cGRhdGVfbW9kZXMoY29ubmVj
dG9yLCBkcm1fZWRpZCk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHZvLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZv
LmMKPiBpbmRleCA4Y2E5YWU0Nzk4YTg5Li5jMDc2ZGE3NWIwNjZlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5jCj4gQEAgLTMwLDYgKzMwLDcgQEAKPiDCoAo+
IMKgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgo+IMKgI2luY2x1ZGUgPGRybS9k
cm1fY3J0Yy5oPgo+ICsjaW5jbHVkZSA8ZHJtL2RybV9lZGlkLmg+Cj4gwqAKPiDCoCNpbmNsdWRl
ICJpOTE1X2Rydi5oIgo+IMKgI2luY2x1ZGUgImk5MTVfcmVnLmgiCj4gQEAgLTMzOCw4ICszMzks
MTIgQEAgaW50ZWxfZHZvX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcgo+ICpfY29ubmVjdG9y
LCBib29sIGZvcmNlKQo+IMKgc3RhdGljIGludCBpbnRlbF9kdm9fZ2V0X21vZGVzKHN0cnVjdCBk
cm1fY29ubmVjdG9yICpfY29ubmVjdG9yKQo+IMKgewo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQo+IHRvX2ludGVsX2Nvbm5lY3RvcihfY29ubmVj
dG9yKTsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCBudW1fbW9k
ZXM7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2Rpc3BsYXlfZHJpdmVyX2NoZWNr
X2FjY2VzcyhpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGRy
bV9lZGlkX2Nvbm5lY3Rvcl9hZGRfbW9kZXMoJmNvbm5lY3Rvci0KPiA+YmFzZSk7Cj4gKwo+IMKg
wqDCoMKgwqDCoMKgwqAvKgo+IMKgwqDCoMKgwqDCoMKgwqAgKiBXZSBzaG91bGQgcHJvYmFibHkg
aGF2ZSBhbiBpMmMgZHJpdmVyIGdldF9tb2RlcyBmdW5jdGlvbgo+IGZvciB0aG9zZQo+IMKgwqDC
oMKgwqDCoMKgwqAgKiBkZXZpY2VzIHdoaWNoIHdpbGwgaGF2ZSBhIGZpeGVkIHNldCBvZiBtb2Rl
cyBkZXRlcm1pbmVkIGJ5Cj4gdGhlIGNoaXAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc2R2by5jCj4gaW5kZXggY2NlYTBlZmJkMTM2Zi4uZGFlNWFiZjU2YmJmNSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCj4gQEAgLTIxODks
MTIgKzIxODksMTYgQEAgaW50ZWxfc2R2b19kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IKPiAq
Y29ubmVjdG9yLCBib29sIGZvcmNlKQo+IMKgCj4gwqBzdGF0aWMgaW50IGludGVsX3Nkdm9fZ2V0
X2RkY19tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+IMKgewo+ICvCoMKg
wqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjb25uZWN0
b3ItPmRldik7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCBudW1fbW9kZXMgPSAwOwo+IMKgwqDCoMKg
wqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2VkaWQgKmRybV9lZGlkOwo+IMKgCj4gwqDCoMKgwqDC
oMKgwqDCoERSTV9ERUJVR19LTVMoIltDT05ORUNUT1I6JWQ6JXNdXG4iLAo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3ItPmJhc2UuaWQsIGNvbm5l
Y3Rvci0+bmFtZSk7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2Rpc3BsYXlfZHJp
dmVyX2NoZWNrX2FjY2VzcyhpOTE1KSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
cmV0dXJuIGRybV9lZGlkX2Nvbm5lY3Rvcl9hZGRfbW9kZXMoY29ubmVjdG9yKTsKPiArCj4gwqDC
oMKgwqDCoMKgwqDCoC8qIHNldCB0aGUgYnVzIHN3aXRjaCBhbmQgZ2V0IHRoZSBtb2RlcyAqLwo+
IMKgwqDCoMKgwqDCoMKgwqBkcm1fZWRpZCA9IGludGVsX3Nkdm9fZ2V0X2VkaWQoY29ubmVjdG9y
KTsKPiDCoAoK
