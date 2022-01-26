Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 716D549D4AD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 22:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C25710E358;
	Wed, 26 Jan 2022 21:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7D410E358
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 21:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643233602; x=1674769602;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=4d2AaxcPY5CQ9kHcBAA6lNOi/M0+9yNg6iVR4m23uCk=;
 b=Y0WGalnB/Kp6lB/2QQRFhq001cOfLLSsrPdTZsHtsUEu8Y7ZyqgXuzT1
 d1ZNOfzBG8wPzNmXBF0MbM841lZNoVLMchkRF+IxYdeeVxGiF+P22lVmu
 uobXh4wruVf7x9DtoXZGzTmW+x4dpSGHDiONdeAUZtuC6Vaw+VMwf7ZO6
 H6C+7NRP/4GWszHqfjH8V8djvOmOUnwM3FwCtdfaVdW8naLeUOtb++4Pt
 H1ws1IYqqnHhxam5m7e6Yk318TcAU4Ia2wvDab1cRozXdiOjWj8iijU3t
 JrwvP+H1RD0u7mPdUf55LwRTddjtsyu5AhonYWc2sWl3NFPj4dtJXWdEq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226636355"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="226636355"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 13:46:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="624976017"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jan 2022 13:46:42 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 26 Jan 2022 13:46:41 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 26 Jan 2022 13:46:41 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 26 Jan 2022 13:46:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fVGReN7jPEapJwTh0kTtLS8qeoxqOBMN83fjx8aO/3zKTRPxMTE3wV9E7TuyfkkjGUHBRZGqJBeNWXru9VYuHrXQkIRLSvGq1pwr/yunYD39X1qiC9dfN/emUS7KzrOpXcxh2B9oCPZ7VEIxWJP0NHrkiHqnL/r9jiGmlNfEuJ5HMPkEQD52ICX9W6kxFmBnQBUSnn3wWLNHhq8US/5pWmmwLlTTiNaIf9rX/S+N9LXd8X0YlRgIr+Zm9MTyrpSrQ8WzSntDo44fLZ696mQE2lYPLyKBnGSVo/7B36vL2cOUk7fTf0dbIZcJkA+JUHnFGpw5hDpBujj4NhyP7OfNQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4d2AaxcPY5CQ9kHcBAA6lNOi/M0+9yNg6iVR4m23uCk=;
 b=NIQVIDct034UI54eXSr9eY8Smj7Q57XnwqXunvzq4EJSAmiZHScL0hCQlO/zv2XpvDMBtHZbKB6zYWQI1r2P9HFE6cO0is4M0EeYgzSr/RCKJlIGM8fW0qma3V1QCTjNNAteJOgmBnNzXVzjsQ/dPE8NuDN9D+qPQJp7jW6fuDs2MODxaCpGXn6F0LFL5BR9ezoQMGIV31mBYOa8q0yYEnmL2+nFQiS2FjciNXRwwjmTF2sYZDUoqsvBhZSoJRQc/JR3J9gyV5cvL58fgfApFckTqoCrOMZaxGxFVCNrj6upUJwxKrIFemhD7Ed4Wi4CBDNkrwkBLBPBfdaB0VoTrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM5PR11MB1484.namprd11.prod.outlook.com (2603:10b6:4:8::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4930.15; Wed, 26 Jan 2022 21:46:33 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4930.017; Wed, 26 Jan 2022
 21:46:33 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 02/10] drm/i915/guc: Add XE_LP registers
 for GuC error state capture.
Thread-Index: AQHYEqH5fqYda4ab/kywlXD0AP7wCKx1m7IAgAA7+AA=
Date: Wed, 26 Jan 2022 21:46:33 +0000
Message-ID: <75e98802660a5cdde9339b91f22e3f2cdb6fe343.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-3-alan.previn.teres.alexis@intel.com>
 <87k0emxt3v.fsf@intel.com>
In-Reply-To: <87k0emxt3v.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec910ed5-7ed3-4347-d46d-08d9e11551fb
x-ms-traffictypediagnostic: DM5PR11MB1484:EE_
x-microsoft-antispam-prvs: <DM5PR11MB148486AE93D101996F05A2F48A209@DM5PR11MB1484.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mPxzV6mH+b7xIbRyOiboEf0ZWL9o8W5bWqj/tbNPP+uScvsIE30jaPi+KinECuFkEsp1Yx4pBC1tUVH7CwNtH/RUau+YIvy3zpgwwBC0dfZfR0uL+h6ZWtqurT2O4mkbtiDyy67SK/g0kv3NX3nlAADs4Sf3yMsuBBAgzQlFG7laaUORZPQs5HQrqCv6qkojrxacG+tgT2357O9y6wNtqmq9PupVaC01dSHS7703RpuBaCn6E7wAABozVLdU4NQExY4rNcCqlhE8gE0J5B18s2Hj0spEW3YG5PPC+yLmUdYLtzT2lnooL1/bAi5Gs8KCxc128F+cUUljesLEaqdkHQkMs27J1Qdwe7EFGtBCHycNHiiPbNI+Nmvw5yNszsZF6f7cTgZWuLK9nhhKySq7s7mYmbFqVD4E/UIaTF6CiRcPE7HLXh0YIL0vG4BZ3nyA2XefrzcCMgGX7dpVX7xB7aigxPmCZ3YNKlk58sOmBK5cundTGKeIXz3ZW4zqXDXn+cqJMAnlDECczXrDOAj/x/LQjVi+J8U3cAannq4OQ6IfIvlOp8SYNYofij/bDzhgGrryWmp+CFzAquI5HQcaOM8nlc8/01HGsOuTs0asJT//vX3LJXLNG/nZDPvIRGKjF1O8yIRmKoMHVWjDRQLyKQ5DakNfD9E7hJFrv0C6fyWPdqaOuBS+3R+/IiJhnt9WO368jC1RzmCneABvIiEKsg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(508600001)(2616005)(86362001)(6512007)(6506007)(71200400001)(186003)(26005)(122000001)(36756003)(6486002)(110136005)(5660300002)(38100700002)(64756008)(8676002)(82960400001)(8936002)(66476007)(76116006)(2906002)(38070700005)(316002)(66946007)(66446008)(66556008)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1U1VE56RGlWaGk4Y0NoTW5ydWRQdUk4T1BrZEx5dkorR21NYW85dlV4bWtG?=
 =?utf-8?B?KzdNditlMFgvMzJQNUN1cTAyRFlENWpHOTNabkpCbWE5Tm9SV2cxT2hZYlhE?=
 =?utf-8?B?MDdrODhpRFJ1NlBtNDJ4ZXJueS8yWWNsZDU4di9FYm5zVVlIWE9qYnlIZHhW?=
 =?utf-8?B?ZjhleUUrNG8vU25NZitobWM5bnd6MGczZHBRR1BnYytWNFdBT2xzRms1SlNI?=
 =?utf-8?B?Z3ptNWFqNFBLa0E3YzdZdHlwQnFmOEg5azAxR0RmQ0hqb2lUUG50clpNUUxu?=
 =?utf-8?B?Nk1GM2JsOGdWYUlieGhjcklQd3BiMWVIU0c5RlNaSkhCakorSVRhVjlHWnlw?=
 =?utf-8?B?UGNRZ1hmS1N0T0tGQ1k0M2NlUGpPQ3ZGNnVzY1pkbEhzUlpydlk2QjhlTGRm?=
 =?utf-8?B?dFdpbW9ldGhKeGhadDB2RVNLUHR1Uy9ybzg5R1I0MkwxcHJPWFdlcGtkNkN2?=
 =?utf-8?B?L3dSdUJwMWl4ZmxadjNSNnRSaERhMFdEaWhRNmdrYjJpWitoeHh2SWlaUk8x?=
 =?utf-8?B?T09hRTdmaTNDUXlySTlDa1NCbHVxQ2NXbElQbFZRRU5LOWVtbjUydTQ0N0pr?=
 =?utf-8?B?b3VtUlozMmdkQkNFS2ZyMGdMTitKT2Y4ZVlsd2duSmU0MUxObHhKMVBCZG5t?=
 =?utf-8?B?bFFSUHpUWkpOZHAyN3BIbnZCOXArMnBpQjdRUnBydTFFK0dra3E5UWdyWExG?=
 =?utf-8?B?TFBwNnBGOUMyaGtIZHBWdVVUNW50cktURGlrMlArTWwvQjNTRmp5NDkrQmpR?=
 =?utf-8?B?R1JSOWphZDUwVWdiNlpYbWhVdmYrRlJZUmdCc1BuQXN5c3hVTmxPM0NWL3V3?=
 =?utf-8?B?b2R0MTBuUCtxRko3VmFjRUxxSFkyNmN1Qk9tQVFhOWpqdUlnWVk4NkN2TXNz?=
 =?utf-8?B?UzRHbEFaemk2NWdqd1dnaC8rNVpkS3o2cGZOZUt5ZUd3OUh5dUN2Q0Q5ckhj?=
 =?utf-8?B?VXlabU1hMk14Wkx3bXpQanlTR2s2MllvSXJUUnVsaG5MRWtQdzA0b1pkRlBt?=
 =?utf-8?B?d0xuRDlOdFZtMGhPN0JoYVVYL2R0UVpOeGdXL3FYMjdqZ1pTMnZ4ZWIxUktz?=
 =?utf-8?B?RnF6eHk4TEZUaHRESFVrdWdLQUdWQ2tldjRDb256aVY5WmNQT1RTb3NKMTFX?=
 =?utf-8?B?TlVvdzBwK1RreFdCT0xoRjdzQ3l4QjFoaXcrTnplY25xWGc0RGczblV3QStv?=
 =?utf-8?B?dUZQcEk0SDlsRlBZU29ZL2hDMUR6QzBJdXU5a1kyZzk3WmN0aWd0clcxTncz?=
 =?utf-8?B?VTBnOWtUUFZ3OWtmMU1aMVpXeW8rNHlsMjhydU5ndk9JdS9mOFNGYnZ2TWM2?=
 =?utf-8?B?VFhLQVhBV3V5YmZaQXN1TVZCelIyM3llQVlsTERkdVp0bEpOZVkwb25QMmUx?=
 =?utf-8?B?OE9ZSGVRM0pvRlR0YjRZcGVIVDdmNmNnQlNkdUd5ZklMeERHRyswMjBQTTh0?=
 =?utf-8?B?bzNPYy9jTFliU1RLYWxiWGFGZkNGTkdjckxGRjRwTm1oSy9KRkhjV0tUVXRi?=
 =?utf-8?B?MHIxaFFIWDFxditDQWxPOU9meUhJOFBRTjl3dE5pWS9lczVLa3loQk5PaVBY?=
 =?utf-8?B?d05KYWU0MTZZWEM4aGJuUDc1WHVXVTA3bHFyY2ZCU21DSmlLZUJORzE3cTdo?=
 =?utf-8?B?Y1Z4UWkwemM5cmM2RXpQVzVWOG54S3U4dUJjczRYZXh0QmZHbElCM2VaWHgx?=
 =?utf-8?B?K3hzZ2FNdzV1SUVlWG1mVHhxNGNaSHhkMzB0N1hsYk5uVlRidGZYVWM5Mkxp?=
 =?utf-8?B?NFZMUEcxSzhZaDhhalF4dlpUdjZCd0pzOGFEVHNveXREeFluaW1LanM4a21t?=
 =?utf-8?B?NWpPQ1FvdHFhbnhQTUhFUUpHWWFBbjFFTFFmSGwvbmZ1M2RTdlliajJIb0px?=
 =?utf-8?B?cW81OE5iK2h5SWlLcEdxOXRqQ2x1ejNRbjdOUUV6aS9PM0tzYjduams4c2x6?=
 =?utf-8?B?aXFYamtCcGE5RXJxYlNWVUVkRXVGYWQzN1J0cHc5eE5XRlFEZ1IxMnJ3clBQ?=
 =?utf-8?B?bll1bm0yU0Z2YkUvMTQ5aWtsdlRVWkhhaEpLNi9FUVREdmlJRm0wcnB6eTJE?=
 =?utf-8?B?SWJwNWhPZlJ4cGluc3JwWWZxenk0RzZNYXlyVzZtVzllZXFSRlFMR3dYY1I0?=
 =?utf-8?B?cURJbEs3c3hCMWJ6QWZZSzllL2ErTUpYWmZrZ2FXaGJxZFRoa2RJNWM3MlVo?=
 =?utf-8?B?ZXB1RXNBOTF4cGNTMkdnY3BTNjhkeXIrMVZLKzg3Zm5iSjU5WjV6a0VucDZn?=
 =?utf-8?B?Q2ZrRE5zZ0E4bDRKcE1XelVZZFhvRTFZSVc0MElNbnloZTlrTXI0UzlzTlls?=
 =?utf-8?B?c1loMnhHVTRkRHIrT2NFZDhraitkdldrN1F1dUprUXkxSXlxc0RCdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0957884454FEB5438F0CAF7EE4AB35EC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec910ed5-7ed3-4347-d46d-08d9e11551fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2022 21:46:33.2063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /FvET+MiTYTKcUezaZtLRCvb8q/pObylWH0OyviOHgSlWaFKjSMVoRdyNDO29ZtSUaiyayvH2TFqNbXkrvjSBDliErRkFLth1GAb0n3z+AdzOg2kXgnMKIMiySd2bx/D
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1484
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 02/10] drm/i915/guc: Add XE_LP registers
 for GuC error state capture.
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

DQpUaGFua3MgSmFuaSBmb3IgdGFraW5nIHRoZSB0aW1lIHRvIHJldmlldy4uLiANCg0KMS4gYXBv
bG9naWVzIG9uIHRoZSBjb25zdCBpc3N1ZSwgdGhpcyBpcyBteSBiYWQsIGkgdGhpbmsgaXQgd2Fz
DQpvbmUgb2YgdGhlIGNvbW1lbnRzIGZyb20gZWFybGllciByZXYgbm90IHN1cmUgaG93IGkgbWlz
c2VkIGl0Lg0KV2lsbCBmaXggdGhpcyBvbiBuZXh0IHJldi4NCg0KMi4gSSBkbyBoYXZlIGEgcXVl
c3Rpb24gYmVsb3cgb24gdGhlIGNvbnN0IGZvciBvbmUgb2Ygc3BlY2lmaWMgdHlwZXMNCm9mIHRh
Ymxlcy4gTmVlZCB5b3VyIHRob3VnaHRzDQoNCi4uLmFsYW4NCg0KDQpPbiBXZWQsIDIwMjItMDEt
MjYgYXQgMjA6MTMgKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiBPbiBXZWQsIDI2IEphbiAy
MDIyLCBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4gd3Jv
dGU6DQo+ID4gQWRkIGRldmljZSBzcGVjaWZpYyB0YWJsZXMgYW5kIHJlZ2lzdGVyIGxpc3RzIHRv
IGNvdmVyIGRpZmZlcmVudCBlbmdpbmVzDQo+ID4gY2xhc3MgdHlwZXMgZm9yIEd1QyBlcnJvciBz
dGF0ZSBjYXB0dXJlIGZvciBYRV9MUCBwcm9kdWN0cy4NCj4gPiANCi4uLg0KDQo+ID4gK3N0YXRp
YyBzdHJ1Y3QgX19leHRfc3RlZXJfcmVnIHhlbHBkX2V4dHJlZ3NbXSA9IHsNCj4gPiArCXsiR0VO
N19TQU1QTEVSX0lOU1RET05FIiwgR0VON19TQU1QTEVSX0lOU1RET05FfSwNCj4gPiArCXsiR0VO
N19ST1dfSU5TVERPTkUiLCBHRU43X1JPV19JTlNURE9ORX0NCj4gPiArfTsNCj4gDQo+IEVpdGhl
ciB0aGlzIG5lZWRzIHRvIGJlIGNvbnN0IG9yLCBpZiBpdCBuZWVkcyB0byBiZSBtdXRhYmxlLCBt
b3ZlZCB0bw0KPiBkZXZpY2Ugc3BlY2lmaWMgZGF0YS4NCj4gDQo+IERpdHRvIGZvciBhbGwgc3Vj
aCB0aGluZ3MgYWxsIG92ZXIgdGhlIHBsYWNlLg0KPiANCj4gQlIsDQo+IEphbmkuDQoNCg0KSSBo
YWQgYSBxdWVzdGlvbiB0aG91Z2guLi4gdGhlIGxpc3Qgb2YgcmVnaXN0ZXJzIGxpa2UgdGhlIG9u
ZSBhYm92ZSBhcyB3ZWxsDQphcyBiZWxvdyBzaGFsbCBiZSBtYWRlIGNvbnN0Li4uIGhvd2V2ZXIs
IHRoZSB0YWJsZS1vZi1saXN0cyAoc2VlIGZhcnRoZXIgZG93biksIGNvbnRhaW5zIGEgcG9pbnRl
ciB0byAiZXh0ZW5kZWRfcmVncyINCnRoYXQgc2hhbGwgYmUgYWxsb2NhdGVkIGF0IHN0YXJ0dXAg
LSBpcyBpdCBva2F5IGZvciB0aGF0IGxpc3QgdG8gcmVtYWluIG5vbi1jb25zdA0Kc2luY2UgdGhl
IG90aGVycyB3aXRoIGFjdHVhbCByZWdpc3RlciBvZmZzZXRzIHJlbWFpbiBjb25zdD8NCg0KQWxh
bjogd2lsbCBhZGQgY29uc3QgZm9yIHRoaXMgYW5kIGFib3ZlIHRhYmxlczoNCglzdGF0aWMgc3Ry
dWN0IF9fZ3VjX21taW9fcmVnX2Rlc2NyIHhlX2xwZF9nbG9iYWxfcmVnc1tdID0gew0KCQlDT01N
T05fQkFTRV9HTE9CQUwoKSwNCgkJQ09NTU9OX0dFTjlCQVNFX0dMT0JBTCgpLA0KCQlDT01NT05f
R0VOMTJCQVNFX0dMT0JBTCgpLA0KCX07DQoNCklzIHRoaXMgb2theSB0byBub3QgYmUgY29uc3Q/
Og0KCXN0YXRpYyBzdHJ1Y3QgX19ndWNfbW1pb19yZWdfZGVzY3JfZ3JvdXAgZGVmYXVsdF9saXN0
c1tdID0gew0KCQlNQUtFX1JFR0xJU1QoZGVmYXVsdF9nbG9iYWxfcmVncywgUEYsIEdMT0JBTCwg
MCksDQoJCU1BS0VfUkVHTElTVChkZWZhdWx0X3JjX2NsYXNzX3JlZ3MsIFBGLCBFTkdJTkVfQ0xB
U1MsIEdVQ19SRU5ERVJfQ0xBU1MpLA0KCQlNQUtFX1JFR0xJU1QoeGVfbHBkX3JjX2luc3RfcmVn
cywgUEYsIEVOR0lORV9JTlNUQU5DRSwgR1VDX1JFTkRFUl9DTEFTUyksDQoJCU1BS0VfUkVHTElT
VChlbXB0eV9yZWdzX2xpc3QsIFBGLCBFTkdJTkVfQ0xBU1MsIEdVQ19WSURFT19DTEFTUyksDQoJ
CU1BS0VfUkVHTElTVCh4ZV9scGRfdmRfaW5zdF9yZWdzLCBQRiwgRU5HSU5FX0lOU1RBTkNFLCBH
VUNfVklERU9fQ0xBU1MpLA0KCQlNQUtFX1JFR0xJU1QoZW1wdHlfcmVnc19saXN0LCBQRiwgRU5H
SU5FX0NMQVNTLCBHVUNfVklERU9FTkhBTkNFX0NMQVNTKSwNCgkJTUFLRV9SRUdMSVNUKHhlX2xw
ZF92ZWNfaW5zdF9yZWdzLCBQRiwgRU5HSU5FX0lOU1RBTkNFLCBHVUNfVklERU9FTkhBTkNFX0NM
QVNTKSwNCgkJTUFLRV9SRUdMSVNUKGVtcHR5X3JlZ3NfbGlzdCwgUEYsIEVOR0lORV9DTEFTUywg
R1VDX0JMSVRURVJfQ0xBU1MpLA0KCQlNQUtFX1JFR0xJU1QoeGVfbHBkX2JsdF9pbnN0X3JlZ3Ms
IFBGLCBFTkdJTkVfSU5TVEFOQ0UsIEdVQ19CTElUVEVSX0NMQVNTKSwNCgkJe30NCgl9Ow0KDQoN
Cg==
