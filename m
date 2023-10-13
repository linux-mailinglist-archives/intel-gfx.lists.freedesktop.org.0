Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0047C81C3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 11:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BA9510E0C3;
	Fri, 13 Oct 2023 09:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC4510E0C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 09:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697188667; x=1728724667;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=GAZprB3gNdYknFPJjqSwH4p5+6TC5xFTIAM6d/jDZEU=;
 b=ACPRni6WEDD3EmXgNE0d0a5T915LD6pvZrEe88mQzDF9PG4NstF/UOVQ
 seaIryUbIBCJg1pxiR6thY/kEwpzVLhuV5/B8j23IDIXWoTHm/0N+fPYE
 1PD977jIQdHD6mZL2QsnMi15peYtXJ0TlvTS16InV7cKvGq9X26i8SxLK
 tEkB6ICrTevOoWzFUrtKmckDrmaOlKqMQqLmSX28uQmMxnyzu3i4XEhGh
 p/Aes7hWdhgLEpkriyCcYJxpDWqnYdAO3DvqKpzg5z9SF6pooj6VxbVKE
 caoh4Pg9XzJQsl3Nk1nQEYntz4LgF2ttMehjpBHAtTZiMsorcUs/0SwYj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="389001108"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="389001108"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 02:17:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="754640979"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="754640979"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 02:17:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 02:17:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 02:17:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 02:17:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZKA3h5vL6UyBn4iXYsWecuERS74P76pkdXfJPMh/S8mXb8G5CUeMStZ9XmdWmuVwgoXCfzJ9Om2+2RfmWmKO3Fmj97YSNGhI8GSpoD//v8UzFzaqImzusOvTToiQTCo1SfYlZCUy2Oji31hFve7BhARhUGaZv+dGytMN6msQAtiHLG0o0oVw2UOX546ZI15zPCTC4enn/7/ITzIxWgojM03BKKeItVZZ91XOGV3ep7YcT+tWnpaUZfnfEwYlhFn6XiHi26d9nZzfGp/OUohy0RnuCWOMVwq/sKWA/fbzxm5rhSdX2SDV3QlKiZaDSy9+KHrFYmwWTeLYHtvai6ESBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GAZprB3gNdYknFPJjqSwH4p5+6TC5xFTIAM6d/jDZEU=;
 b=C/ose7f+r5NLkTHttA/NvCWAqUod7/nFN67wx1seAD+jB5MrDHIT8dpMAIh2bc75mLGxsM9KaE1AQ6rtM5fA50XlQqn2IGFRtrKOj5VielML5fEbr38XEkQtC5P8ZbV5tPE/HFUPjJaDDCd1u7baZdclUWrcagj9/Ntg70zf2vJzVLGNpzQXSm5vzsTNd+DwVbzyvRQZAzxz1pCveAJiz4Yb95XTCyqLViZ0gyzsBPZzogVBW3BJsFNQuAcITtq8G6yX7Ci1GB6pLAEhDVe7Ux74gPneVq74RMaSv/jDzMq9JKjgPCmB1vjy+qBD0nyJu8bkZtgghxwht8G18yVN7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Fri, 13 Oct
 2023 09:17:43 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6863.046; Fri, 13 Oct 2023
 09:17:42 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/lnl: Remove watchdog timers for
 PSR
Thread-Index: AQHZ+2BXfwCmEmTBq065xkgsh+2ByrBC6FgAgASNIoA=
Date: Fri, 13 Oct 2023 09:17:41 +0000
Message-ID: <b5918e7278e8a61cb6cb1e7f30ab9e22afbcf5c8.camel@intel.com>
References: <20231010095233.590613-1-mika.kahola@intel.com>
 <0c5e4f36610ec932ed700646bb4bce6e77b151de.camel@intel.com>
In-Reply-To: <0c5e4f36610ec932ed700646bb4bce6e77b151de.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB7596:EE_
x-ms-office365-filtering-correlation-id: 4e479ac7-c9ef-4721-faf5-08dbcbcd40d5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xfA6r72e1xZZGX9j0IgnYvlCa7TB4/rJ2O1ZfZb8rp4SnRnqD7r0E/4q/OgLwE6FwouzYShvlwU+I8Um8Q8UK9ujHHF+NsRqsxOEOZdLUq5NV/7/EQfS+gKZDgWMwX7rTvc3xvxy2Rq7S54+jJt+j6Ky/7cBDqXsNHZ+P60S1byLRIdr1KWTd6ZGq0e3vZ2ahWrU7K9R6OJJlOXxDaUOmPS7z3XHZgTgnFAqmIun9n8usNZzTtx5SrysTtQgrr2i32CLRUYxl6r1AeqkG/g6OKVqrRAFnOsIzS77xeH3M8NCUf7mxdNnc4POwZWCnIi47ZwmuoNOYBQpPqJFEaiPR2zUWi8VEstoVx65hGj9nWaV2UMwVZKEG3Vf6Il14zO9727i4lNwCA/P9ZMLJDQyd9UClDZMN7Ou+XLj9NtBm6UmM31G3MHjE8s3h4hi8n+Oksag38Ctv0osIYKS1lhrcZzahDucCa9fMdnoRRtt14PCcAgixDX8T+IPzbVjDRqxce7RHTMahimFx4U4q/GESvLrjHz5/EsLrYASYMHHpftc3WSmOTCEyQqd/b9SY9KLeZCDD8aEFZc+MsGvr49gL9e3sp6N25bCDhaT3LZ9XMI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(39860400002)(376002)(346002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(2906002)(5660300002)(8936002)(8676002)(66556008)(91956017)(110136005)(316002)(66946007)(64756008)(66446008)(76116006)(66476007)(478600001)(4001150100001)(6486002)(41300700001)(71200400001)(2616005)(6512007)(6506007)(66574015)(26005)(83380400001)(122000001)(38070700005)(82960400001)(86362001)(38100700002)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dE9IVTFNeGdpVzZqbFcvNjk5bUZMQWQza0lYdENmQzFHOTJZRDVRS3c0TzRS?=
 =?utf-8?B?VHZ1ajBBcDFRTXhhejZJNFU2SGQ2cEQ0M2FVNGZCVTVEK09rdG1XU1hHQmZY?=
 =?utf-8?B?Wmh2UGxxKzE5cXh1VWRKSTFmeGVpaUhIUHBhYjZxZVFnVEE1bEZSQWJJcDJH?=
 =?utf-8?B?NzlnRkoyM1VwL3ZTYkRQNEZFUWlHNTBBMWh3c0ZGRnhHZkRGY0ZJbXB6QlVn?=
 =?utf-8?B?ZVNPckhTN1BoTStUTGxFbjZoc1U2R053VHhqQVJ5ZHlGM3ZwWU11TERrUzFu?=
 =?utf-8?B?MEl2b3lZSFFaeWZFWERvd3Urc051TGlkN2dkUlFQNlNwbXN6a1ZsaFZzL1Qx?=
 =?utf-8?B?a256TnpYandiaVZUZy9BaGwvaCtkMG5pd2xMMzZNY1dXVzQ3YURoeUJjdUsx?=
 =?utf-8?B?VERZWkdCUVZnNVgwRno2Y0pjc0VKWjQxMXpiWk0zNmR5TVpqRzZNS2dVaGg2?=
 =?utf-8?B?RW9Qemx6TEJUYnptenYrSnlQM0FwcnBUZC9ER2dqV1NQVWJiSXM1cTBDUjQ2?=
 =?utf-8?B?RWIwSWdmQUIwR0VxZWE4anhUbi82bEsxVVBOMXNvMmJTZGhadmQrd25VODVK?=
 =?utf-8?B?L2c0RHBFN1dhZWU1QytVK3ppaFg5aFF5c3E1QjBnTzdCUldlNVh2SzN5VVI5?=
 =?utf-8?B?d1BncVgrVWRlUGJhTU1XQ1JONmx1bGRlOTEwQ2d1QjA0dHF6WGkrbTZOb3VQ?=
 =?utf-8?B?MlVRdVh0cTBsTHYyd2Q2aGdYZ001MXZXcHo5ZnpkMzNoaC9VODZMM0N0SHRR?=
 =?utf-8?B?RDVlc0lRWFJab2JGMm8yK0RQYTV1S25uOFcxbmJmM0RkOVFvcjB4RGlvTWo5?=
 =?utf-8?B?b3RQN2J2QmRqdVREb1hLV3NDY3QwK05WS0hoNkhydE1XVFJpUEJ4bXNlUE5N?=
 =?utf-8?B?b0MyNzV3S1BYNTIvSXg2MGhBQ01UcFF5N3FrbFRxK3YvUmZocjFSNjBzVnQy?=
 =?utf-8?B?cjVJUi9FeFIyU3dhcVZFRHdtU2R1Y0xNemRTaXNHWGZzZmtnc2FoSGhkUlll?=
 =?utf-8?B?V0Jtam5KRjFablFvZmN4ZEg3OWlTbGl3ZjNqNzFoN0xYNVlIWU1PbkxIalJ1?=
 =?utf-8?B?ZlNQbUhQcHVBRWcrdHJIaXRTcDFibCtkUUxVaDFJOFhzY0tOUC85cEFDSWtM?=
 =?utf-8?B?WGVEMHByUHl2aEtobDR1QUZ0cCtDZllQK1phZkJ5ZmI2RTZkRE1SWUkvMTZ1?=
 =?utf-8?B?SEhYTVRiZG1Eak45NjZPU2RCbjV3RlNKaFU2VE1xcVFxc1NTYThTMzN4cEdl?=
 =?utf-8?B?c0t6TGxoVmpuWGsyNVArL3pmN1FwR05BSFdyM1I2VzdlNXkyaEpsSU5ZVmRL?=
 =?utf-8?B?SFBndTVIelowNGJKWXJrNmQxamphK2RkRCtGU1lYOHdLWkZzcXh5WldLUDFr?=
 =?utf-8?B?dzFXYmlpR214NGlPL2hoQzVPRHRScmg2cFFNSDhkcnVlTkZna3Q3SlEzbGVE?=
 =?utf-8?B?SHVnNWFKYStxTVBaOG1XUjFnL3BSclBIRTNOS0RlaERHT0NQNlI1eDBWOE1D?=
 =?utf-8?B?cmpCVmRFbDdtSnFNaVpLTkMzWGtZQUVsS01mMGpwaVQwRkpLelc3alR2cm56?=
 =?utf-8?B?dnJhaDdaL2s3MjNaZHp1MXlmZ3BaUnh1cnJORXZGVnhPUWx4M2VJYlRGL2Jm?=
 =?utf-8?B?Nzd6dUNZWlJ1a2NITWM5QWdGY2gzZC9iVnlDUzltRjRLdnpiSzBzN3dNUFpR?=
 =?utf-8?B?REt2UktERk1Ba1ZjTWRzS05FWW05NzdXYm9qV0RBeEx4YWREajVtZlphVm1j?=
 =?utf-8?B?ZEdnMllIRDRHa0FvZnVSUmRwd2J3YTBHY2RoTGFHQlNqUmZwL3EvcUsrSWx1?=
 =?utf-8?B?amo0ejlwSXB4L3VGaHJOcGlUYzVIWHVBOHJ6Z3F1MTkyWngvay92SU5tSElX?=
 =?utf-8?B?a2hRWHhvclE0OGlTZHVhem5NbWpCRTRCUW4rUGdaSXZKYm1JNy9aMjB0Rjlo?=
 =?utf-8?B?SU1IWU9lQ09zYWhNNG1DRUd2TU5ya1E1QUxBMDFxZVFDMjNNQmpjWUsxVWxI?=
 =?utf-8?B?bEFOaHNuZFRLQ0lVTHBHTmpyMHJDV2ZlRmF5OVg2SXJWS20xck05aldnMUV3?=
 =?utf-8?B?eFA3cm1wL0xSUld0dGhianJhTVVsckZCUUI3dzJQN0NlV2ptZkZOY0wxSldE?=
 =?utf-8?B?VXhVSXdUdjV6cW9FaXl3bk5kV01YVkhaL28yQy9naU9DaWovd0R3OWhBZ000?=
 =?utf-8?B?Ymc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <83CE1ECD92475F4BBC1C6FB43B3641B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e479ac7-c9ef-4721-faf5-08dbcbcd40d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2023 09:17:41.9376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxtD4OEW8FFCp7SlvV1nQK1MLENnp6MbKPPbQROKn+EWahIwvMneQUZl1VFd6E/MfSZIkETy12DJH3Pw4Up3+uf52Dj3gcdYC4D7j1aSjcU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/lnl: Remove watchdog timers for
 PSR
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

T24gVHVlLCAyMDIzLTEwLTEwIGF0IDExOjQ3ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyMy0xMC0xMCBhdCAxMjo1MiArMDMwMCwgTWlrYSBLYWhvbGEgd3JvdGU6
DQo+ID4gV2F0Y2hkb3JnIHRpbWVycyBmb3IgTHVuYXJsYWtlIEhXIHdlcmUgcmVtb3ZlZCBmb3Ig
UFNSL1BTUjINCj4gPiBUaGUgcGF0Y2ggcmVtb3ZlcyB0aGUgdXNlIG9mIHRoZXNlIHRpbWVycyBm
cm9tIHRoZSBkcml2ZXIgY29kZS4NCj4gPiANCj4gPiBCU3BlYzogNjk4OTUNCj4gPiANCj4gPiB2
MjogUmV3b3JkIGNvbW1pdCBtZXNzYWdlIChWaWxsZSkNCj4gPiDCoMKgwqAgRHJvcCBIUEQgbWFz
ayBmcm9tIExOTCAoVmlsbGUpDQo+ID4gwqDCoMKgIFJldmlzZSBtYXNraW5nIGxvZ2ljIChKb3Vu
aSkNCj4gPiB2MzogUmV2aXNlIGNvbW1pdCBtZXNzYWdlIChWaWxsZSkNCj4gPiDCoMKgwqAgUmV2
ZXJ0IEhQRCBtYXNrIHJlbW92YWwgYXMgaXJyZWxldmFudCBmb3IgdGhpcyBwYXRjaCAoVmlsbGUp
DQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVs
LmNvbT4NCj4gDQo+IENvbnNpZGVyIGZpeGluZyB0eXBvIGFib3ZlICh3YXRjaGRvcmcpIGJlZm9y
ZSBtZXJnaW5nOg0KPiANCj4gUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgTWlrYSBmb3IgdGhlIHBhdGNoLiBUaGlzIGlz
IG5vdyBtZXJnZWQgd2l0aCB0eXBvIG1lbnRpb25lZA0KYWJvdmUgZml4ZWQuDQoNCkJSLA0KDQpK
b3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxMCArKysrKysrLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggYmI2NTg4MWU4N2Nj
Li40ZjFmMzFmYzk1MjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiBAQCAtNjc2LDcgKzY3Niw5IEBAIHN0YXRpYyB2b2lkIGhzd19hY3Rp
dmF0ZV9wc3IxKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoA0KPiA+IMKg
wqDCoMKgwqDCoMKgwqB2YWwgfD0NCj4gPiBFRFBfUFNSX0lETEVfRlJBTUVTKHBzcl9jb21wdXRl
X2lkbGVfZnJhbWVzKGludGVsX2RwKSk7DQo+ID4gwqANCj4gPiAtwqDCoMKgwqDCoMKgwqB2YWwg
fD0gRURQX1BTUl9NQVhfU0xFRVBfVElNRShtYXhfc2xlZXBfdGltZSk7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA8IDIwKQ0KPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gRURQX1BTUl9NQVhfU0xFRVBfVElNRShtYXhfc2xlZXBf
dGltZSk7DQo+ID4gKw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSVNfSEFTV0VMTChkZXZfcHJp
dikpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gRURQX1BTUl9N
SU5fTElOS19FTlRSWV9USU1FXzhfTElORVM7DQo+ID4gwqANCj4gPiBAQCAtMTQwMCw4ICsxNDAy
LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdA0KPiA+IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoG1hc2sgPSBFRFBfUFNSX0RFQlVHX01BU0tfTUVNVVAgfA0KPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgRURQX1BTUl9ERUJVR19NQVNLX0hQRCB8DQo+ID4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIEVEUF9QU1JfREVCVUdfTUFTS19MUFNQIHwNCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgRURQX1BTUl9ERUJVR19NQVNLX01BWF9TTEVFUDsNCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRURQX1BTUl9ERUJVR19NQVNLX0xQU1A7DQo+ID4g
Kw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCkNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWFzayB8PSBFRFBfUFNSX0RFQlVHX01B
U0tfTUFYX1NMRUVQOw0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoCAqIE5vIHNlcGFyYXRlIHBpcGUgcmVnIHdyaXRlIG1hc2sgb24gaHN3L2Jkdywg
c28gaGF2ZSB0bw0KPiA+IHVubWFzayBhbGwNCj4gDQoNCg==
