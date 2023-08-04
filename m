Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 530CE770147
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 15:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E28010E6FF;
	Fri,  4 Aug 2023 13:18:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B4510E6FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 13:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691155090; x=1722691090;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ySR4GJhKKLtg8dVQGyWiZp0wYh2KCUKZZbTUdAR33Hg=;
 b=HReFSugBkda/5UOQB/d2IsmFybOhF1lSjbIOWPUJatIgH5ECyfDOsI3R
 6wyWnuzsMrQ0eZENNOkVCrjqgnDPGp2Gljm9vbjK7mis6yy2JAJRJe9M9
 qYt0LJu5S+QGX1DqlKK/k5G+VtsXh2O/xwpVNnwCDkwXBOzFInycI+G5f
 +Gtd+bvsptetEM9OY+w1opelQGx7CtY2q9SUS6cGudP1v+pQH+sPRaXBw
 g1FHBD2sJZvv01fZBwEOvkV01MQ7+2OU0I2NjUXjcNw3wBvPv4eqQmvvh
 T8fzxw3/ieaX4SMyFG6aCf4ZDZwOtqd/9m6FyK2A5/It0SsAUNLaHzDgg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="369050296"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="369050296"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 06:17:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10792"; a="679965208"
X-IronPort-AV: E=Sophos;i="6.01,255,1684825200"; d="scan'208";a="679965208"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 04 Aug 2023 06:17:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 06:17:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 4 Aug 2023 06:17:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 4 Aug 2023 06:17:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 4 Aug 2023 06:17:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSpUFu+PwVJ6jP/+odFUhKdzCS4agjeZm/79xzO+XGqA5zzM5A7w+5j8wUX4kDLeoSxFfkoyoiJniQjUUVfNbF5YTR/KVhbgbx0np4hqv9u4ExWawnRJ8NtT2Ivj/uwKd1xrRw3lMtATe3um1jDKmaBEskXmeYYNiOS9A5frt6fxKBhMROct19PqikJ/KpMo+YJFLo00BLDnGv1OuWL8as6mD0RAnQt1I4PbjtvxLYITAA4aXe5odet2ewbPjqDPWfMA+ky/Yd132syYnWlq5uVr718hiSpUDHHbFvmGvA/BfqIlYv5B7oIGiL8TSJYXVqMH/SwXQd+CMKVYvkSD7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ySR4GJhKKLtg8dVQGyWiZp0wYh2KCUKZZbTUdAR33Hg=;
 b=g9eSConKt6ALXO970YuV24fFboGu2UU98Hg4S+q4NnJGT47ZxjOuRxxRrEmwnWGr/hsh6JEBarXOHdqYrzbgW4XVtsFWNoi41lmS0cnB97UcWoX+Mo7KiuL8J2O6wNJwjgqs8ofJdQeU1QSbQHyxzCJAbLBT9DQ+jojpb1JVK3wjW7EXYDRVp2OSTi/MlgzU6feQXsoG3qPqMtQpQdCC6dJF927aLW7qXaDfY7PStNDpwEbYQQhqJqZF68kCKsyVc1HVVbqEcfBY3WsJRsdrhPbqvovuyXIhQnnNxG1q9FyFYLpfoK0jbSSD78/P10MKDOYHSHrSKFGDgO60BFA4bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB7087.namprd11.prod.outlook.com (2603:10b6:806:2b5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Fri, 4 Aug
 2023 13:17:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6652.021; Fri, 4 Aug 2023
 13:17:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/sdvo: ignore returned broken edid
 on intel_sdvo_tmds_sink_detect
Thread-Index: AQHZxhfR21GJIxa62kqIFzG5gxOoqq/YsOSAgAFu+IA=
Date: Fri, 4 Aug 2023 13:17:34 +0000
Message-ID: <11d5b3b6296af41be99caecb897167ff4fc940b3.camel@intel.com>
References: <20230803143530.27601-1-juhapekka.heikkila@gmail.com>
 <873510up2i.fsf@intel.com>
In-Reply-To: <873510up2i.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB7087:EE_
x-ms-office365-filtering-correlation-id: 4a84303a-ef80-44d3-58f9-08db94ed2aae
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dgsy3cI/cJS8Tc6m62Paie4dSd8cPWldvK9olF1kYVAGWbBahtaT8VABw5f++KXXTOpAwPU+bVz1O/kzP5r2JNJ4bmtacoy7NbVWUeMxJQHAKUnhZViCbPHJMLpKmZ0Wn6DzYze/JVz92/aVA7NDklgXPaQYKTsgEBzmoJ7kQwiBGvepHvuNB7/4ELrQcdiHL5DOpFldmA7qMoU0zvZK7wDG+fd7+R31XMRxC3tyq8sIkeqsDlRLVfkPAu+KD7G1kcj1Wq8v7lOjkpBI7Ys7ehSqPowZsx/lVudqUpdCiGKTZ6Qk1aYmjHdpIA2xY/7h3MH4JkkSIsxvbDlQOalHq9R2/u2+WbXkYES7koEpPCSfyinBEovVeVt3g6A2bPW7npWR30VJekhL5VxHrXU+uVC6JmuRnVT8r5YxNGy4+PyIlhQPPXpCm63uFXiyNs0wmLO6f2DWSyY/4fSMWQ/tmdvNoqM9/h0yNVV1IEoa1oC2HLE+ygw38lJnxIvOba3K6f54XH066Stk0j/ff0gjGQfGOpOw4n4wwdqJU26H6eniaOzoO9sgcN9NDk1v+bRKJRBTNbgR2ovDsTWszZmC3ysxamrdc+r+pSRVp+YurrJ6/IVNsen8MRCpZKJuqu05
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199021)(1800799003)(186006)(66476007)(66446008)(66556008)(66946007)(76116006)(64756008)(2616005)(316002)(5660300002)(26005)(41300700001)(6506007)(8676002)(8936002)(122000001)(478600001)(6486002)(6512007)(110136005)(38100700002)(82960400001)(38070700005)(2906002)(86362001)(71200400001)(36756003)(66574015)(91956017)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzZYRCt3NTBNWHlNV1JweTFZZG9BMXgvMzRkK0JnV2lvYkZ4a3dXQWNuTWNJ?=
 =?utf-8?B?bHBxOHdaTVhKZ3JURGVOUndYR2NKU2ZhcEIveUZXT3dqNDM5SEVCUmd1akdG?=
 =?utf-8?B?N0Y2VlU2MmNGeTZTMjlGQmdTV015RTdOcDBlazlVQ2lTS1E3RnliMjl5UkRa?=
 =?utf-8?B?M3dRU29nSE0yZkNlaHZoRUFaWjBKVStPYzFjQ3NvYjNZVE1XWHlGR3BoWGlR?=
 =?utf-8?B?eVdLNE1Na0JZTVFFOFJsK2ZvSy9lTWtKQkl1cksyNm10YWZOSVpPR3Y5Y3VG?=
 =?utf-8?B?c0hwS3dYeTBsaDhBeHNtZ0tiUFpobWNTdWhOY29kRm4yNkMrT2dkeDFQdFI3?=
 =?utf-8?B?cElKU1doOWxRVGNVZXVhRG5tcW82SDd4cnJqQVQ4bnlLcnQyNFRvTXlyYStZ?=
 =?utf-8?B?anduUWx0L3J5OENHVjFOeGw5Rm9pTm9sSncyQk1BMU54TlRLMFE0VllPOTAw?=
 =?utf-8?B?MjRzaldPMG5td0wwR01KelUvL3NjVFRBVEdWbWRyREhsSGZFdmVCZHdHQVhO?=
 =?utf-8?B?c09kam93MXUrUjg5ZHV0OTZ2dzBmSDY0TysvZnNCWjNsUFVGbERnaHE4ZlZT?=
 =?utf-8?B?dzZJT1FKRS9OYjk5emFlL0xZMTgxSTZWdjQrNGdUTzk3ZFl5V0lndnBPWjNw?=
 =?utf-8?B?UTNkdTFuZGRCalN4SmlDQXZEVGo5cFRUdHI1bmlEMDFFSWY2UUJ6eFViSlM0?=
 =?utf-8?B?MWs5ZDNZRjhGTTZXTmNWM2RmWXF4a0RIdlI4QkZPRVJ0L1U2cWZpc1BCdTZq?=
 =?utf-8?B?MDBZaW4ybGhzMlZFNUI2ZTFQM2FianhXN28rRGUrWjlubkRaS2NYc0JEeUpT?=
 =?utf-8?B?RHNyZStod3g1VTVIRnRvWHQ2RkNCOTdzOC9Jc0lWeEZqYjVFSGV2ZGd0aVl3?=
 =?utf-8?B?Y3pkaWdqK1ZPaUJlcE5IdFBXUGdwZmhNWXpwYWpwUzN2MHRPTTkvYllsb2h6?=
 =?utf-8?B?L0FkOW9HMGdTYWdheitvRWZxUHRSQzVKNzNTaEtQZm1lZ2xQMDFCcitEWnRn?=
 =?utf-8?B?bzdYend1aFUwalA3cW5KVWpWMnJPdGlDNm5qWlBPdlZtZkFISTN0L3BZbUxs?=
 =?utf-8?B?cGI0L2VkdXplTXZDK3d6M1kxYjVrTVNMUzRjejRJMGNBR0hicnZJZWZMbTNu?=
 =?utf-8?B?RmZqL2FWT1JsS2tJK3FheWc0UFdMa09QLy9qa21meEgvRVFmbWh4ZmpNdC9y?=
 =?utf-8?B?amUxOTRYaU1SaDI0VU44VDUzMDFHdEE4Qm5SSVhNK3JTS0FZdkYwSE93NjJp?=
 =?utf-8?B?UWpLRWdkUFBQT2hTMytKSGpxVUZKK25mblFPWGl1aTRYWEM1blJnUVdSb0hI?=
 =?utf-8?B?OWRZWlpiQlhTWFByWHYzbURtSG5wcTVHTDBLMk1qNXphMkk5REpsZkQzWEc4?=
 =?utf-8?B?ak11MlNsTHBBS3I4bUNaWlQ5Y09GNEgwQVFON2VlZFhtVDhKZW0zTGZ2eEcx?=
 =?utf-8?B?U29BZ3hCd0Qrb1RtRzNRektQOVNZOEJyMFd0VnVmWDdWam40WHlUenE4L1ZS?=
 =?utf-8?B?YzdoQUdDaXl2WFZJV0Y4WkhEaXVWS0JuNEZZQ2xZUDd2ZUdQOU1yVVpVdXVQ?=
 =?utf-8?B?S1V1R3p5Mmd2TWVjRStCTzRDblpkY3B3K21UTGVBR28xTjJjZitYRjRjTVBD?=
 =?utf-8?B?cjUrTXJNcHBsVjVUakJkODEweit0RTZUUWFLa2s2aUkvR3RveVNGTTZVTytM?=
 =?utf-8?B?RWlraUlVWGIzZDNzVlJSRTQ4SkNSUkdzWnFHUE9LUFQ5TUZqY2M2RWtrcUgv?=
 =?utf-8?B?VUdVKzlkWEIrSEt1eis2WENZU0dmejB1V3RPQ2JIR2dSWjJCRjBKbzk4d0FH?=
 =?utf-8?B?U2w5SjZURktiTkJwL1Y3WXZTSktyMFNPcEhWS1BCL1FWQ0hGcnhLVStncnhB?=
 =?utf-8?B?Y0dyOHpOZEZLY3JqQWN3U0ZoSitXOVpMdmQxMEJTMDViMXlURHhxSEl1VVd1?=
 =?utf-8?B?K09RbVMwM2tUTEdhMzFNOUVZdFRKODNvZmpweDh2L2ZESmx1QzI2UEc0a0Qx?=
 =?utf-8?B?OXJOWVdrRUNYa2xScExaR3dVeXFrczVpcnRPY0ZvVWNmZWIrU0JSVWlhS3dJ?=
 =?utf-8?B?ekpKQXdpS0dUVTRqUFM0a2NZbXJab0JqSTl6c04xTHQrOStTNlZnRjVGNjVL?=
 =?utf-8?B?WHpoemZWSjZ5M0tjY2JRT1JGak5tUDZJdlVhYzI1YTQrOFdaRkpuWEpwbUpo?=
 =?utf-8?B?UVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E8983B340A547D429BA6A322ACFA93DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a84303a-ef80-44d3-58f9-08db94ed2aae
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2023 13:17:34.6860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bV7N0+Kn8bMk0K22c6NVEv36vZ/4PAIoBXgSmO6kDVUS9EZy+o4L+Gqpm2v7zDJI66rm2RTseVyrd9Aa5Zg1jIPpK27r8HILhaYrbjuqFI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: ignore returned broken edid
 on intel_sdvo_tmds_sink_detect
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

T24gVGh1LCAyMDIzLTA4LTAzIGF0IDE4OjI0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBUaHUsIDAzIEF1ZyAyMDIzLCBKdWhhLVBla2thIEhlaWtraWxhCj4gPGp1aGFwZWtrYS5oZWlr
a2lsYUBnbWFpbC5jb20+IHdyb3RlOgo+ID4gSWYgZHJtX2VkaWRfcmF3IHJldHVybmVkIE5VTEwg
b24gZXJyb3IgZG9uJ3QgdHJ5IGFjY2Vzc2luZyBhbnl0aGluZwo+ID4gYmVoaW5kCj4gPiB0aGF0
IE5VTEwKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBl
a2thLmhlaWtraWxhQGdtYWlsLmNvbT4KPiAKPiBSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KClRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoIGFuZCB0aGUgcmV2
aWV3LiBUaGlzIGlzIG5vdyBtZXJnZWQuCgpCUiwKCkpvdW5pIEjDtmdhbmRlcgoKPiAKPiA+IC0t
LQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYyB8IDIgKy0K
PiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8u
Ywo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwo+ID4gaW5k
ZXggODI5OGE4NmQxMzM0Li4wNjVlNjE5ZjkzNGYgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKPiA+IEBAIC0yMDk3LDcgKzIwOTcsNyBAQCBpbnRl
bF9zZHZvX3RtZHNfc2lua19kZXRlY3Qoc3RydWN0Cj4gPiBkcm1fY29ubmVjdG9yICpjb25uZWN0
b3IpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBlZGlk
ICplZGlkID0gZHJtX2VkaWRfcmF3KGRybV9lZGlkKTsKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoC8qIEREQyBidXMgaXMgc2hhcmVkLCBtYXRjaCBFRElEIHRvIGNv
bm5lY3RvciB0eXBlCj4gPiAqLwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlm
IChlZGlkLT5pbnB1dCAmIERSTV9FRElEX0lOUFVUX0RJR0lUQUwpCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKGVkaWQgJiYgZWRpZC0+aW5wdXQgJiBEUk1fRURJRF9JTlBV
VF9ESUdJVEFMKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgc3RhdHVzID0gY29ubmVjdG9yX3N0YXR1c19jb25uZWN0ZWQ7Cj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGVsc2UKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0YXR1cyA9IGNvbm5lY3Rvcl9zdGF0dXNfZGlzY29ubmVj
dGVkOwo+IAoK
