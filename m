Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE62609BD4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 09:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45FF310E2C0;
	Mon, 24 Oct 2022 07:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB2010E2C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 07:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666597988; x=1698133988;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l5INAPa8OwgCYo2Ddi3l0k2f1UKJCXaz/+/1Eln9Cbc=;
 b=JGPnIbMghlyOdHOmK8K0G/g8IgKW66Y/gHq+8U8LA2q/pZUD1dZuIj7Z
 tMYpFnAxY9HP+6iOHoShXM4b6qEs8C9F8qu4rNLn0PRHrD2NtCGel503R
 pWfbxa8p+QP7kZelofBySNYBXmc5U4UPtcnoY3h6Irwt+A4QjW71maf+2
 DfujjUNANFhdGZjolaqLfR/GU6ojqanqaj6f5H2cRAS0uriw5S0dUE9Lg
 ojMtc6ZIPxqwlxBA6663jHu58Ojpfr8vGveKyJyHuYccIM8KtO82T4+nX
 hbAaLaeuBVtVZQdtKznjgIiW/Nxe+cojAXA/PPY51YlSTlebRurEfYich A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="304970384"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="304970384"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 00:53:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="582341467"
X-IronPort-AV: E=Sophos;i="5.95,207,1661842800"; d="scan'208";a="582341467"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 24 Oct 2022 00:52:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 24 Oct 2022 00:52:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 24 Oct 2022 00:52:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 24 Oct 2022 00:52:58 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 24 Oct 2022 00:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iUVXILtJZktKD2xSAIIV3hmLn4ugkktdJF8qBwPWCh2rPaW8KKpWGE+WkhAbgCdVcYMvvdz62ygJLStS4Dw/fVhKMZD1swlxnT/kClXW+CdZ3l+0VQODubbodZAlin1KlKPNmGeWzVf94oEXDX3RgCBHaga54Q689Lv+gb8mRtc7GVmIt9YeaQyWolVw0c6NIn93LxC4ghhVm1wKfqWLKlHqjVDY5rDRIQGk8LfNVduVfAdsPZQARLHGpAQ+EO8pE4WmRscDziHfcLihHgWI+R8KHFttykq8UUSmsMYe6StPrhIU35vNGdwt1NdsU5MkOU7gFgOL/udFaj1G1+D5gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l5INAPa8OwgCYo2Ddi3l0k2f1UKJCXaz/+/1Eln9Cbc=;
 b=dlo+ae9qkNGrYdvVXcgRc5Dso8HnnnrZBNeC4/zF5szkINIor5aD8ChQiyczgoHjfSHCpHSFciNSOrjs2If3N5GDDF4PluKPWjfy1S1+Acn6YsWQmYFmx/3tAHhb9sftEXz3CadEDnm52GiQHEIgSXfMe7fjCiC2s6z31Fvlbb1tcYvEHj+18HNSJfbh8mPFpApjALdznb9THjZsBkESK5DNGxAZuGD+ch/JZCaMjXDDkHR+cFeY+O70V3pN/w31bVanPWz8CR2hlIvTFSdV+P+0rEA1XYxRTEZZ+ggzvKWAFGUKfGhIhHOg6bIqYE3Dj7NeDGU2Ajpwu9h+ClotZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by CO1PR11MB4788.namprd11.prod.outlook.com
 (2603:10b6:303:97::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Mon, 24 Oct
 2022 07:52:56 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::252d:1a18:47e6:d80]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::252d:1a18:47e6:d80%6]) with mapi id 15.20.5746.023; Mon, 24 Oct 2022
 07:52:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/psr: Send update also on invalidate
Thread-Index: AQHY52wSURUK0PPFxka+d62xlPLIjK4dLDNw
Date: Mon, 24 Oct 2022 07:52:55 +0000
Message-ID: <MWHPR1101MB2157B72F8A03342C653EDAB1EF2E9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20221024054649.31299-1-jouni.hogander@intel.com>
In-Reply-To: <20221024054649.31299-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR1101MB2157:EE_|CO1PR11MB4788:EE_
x-ms-office365-filtering-correlation-id: f27cc0c8-be60-4743-dd1a-08dab594c310
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Syk0+ZIUYf49vCnHO71ri/Ve/bA/v5jZNGDrmSOOb6nrS75LTn5YFrdcR0awPh+KIkZzYPr5wzJpOUj4hfIZ72SNvH9Wu6fd/063oj2Q4uOY2grjpRDsebI4Cx+40rR6WnkzdodfQ/YUpLVHy5kxVv+YmuSjkIW3iTxoQvYSQLcfcsBEiitV0ia/LdzDRruAhn/N+9A5jgeBrpyCIu8+ythYXYExFDYxdjZ0w28F7mnNkKm+wUdMu2HFtP+ZFdFuakOzpo1BVkHNLpbH4tC797DS987UWHqDCrwkVYfR1flN4Es21w8NYBGi0rSgF9VJ05h+73V7gSO74spn7X0lKyc9jbRGZ9d1GJpCzVWben3ejrWhruianKrYuYINJdRSuW6uv+4FCgUHOKSGeyaKe1uaXY6MqbSppUHlZIVGyTAcNv5Mq6SzrmOSMEd8J48upx3fNRxH1d5ls/qcPRTnMBe5GBL4k7SJaloP9YhDo/MSa8I0EK1BK1u90PazVx6A7BDl0I1fvXBe5dBl5/IdrY4OKufJgrzhS6WJ8yQotzsZAe0dchqN1DCID8l10Li4EGGiuam6bT+rEipPD2V/ukEwBRSbBVg3s6IcTa3kt5nmjZAOfWPPE/TSmafz8K/9yNVGchGcKjdFclR041361adPkHjlrQTr8ugxjAU40Ma5gcx38cxJjkkMgELDJnH8qFzEsy8UE+vZ9xuewnq2JA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(136003)(39860400002)(451199015)(66574015)(83380400001)(38070700005)(33656002)(86362001)(82960400001)(38100700002)(122000001)(8936002)(52536014)(5660300002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(41300700001)(4326008)(2906002)(15650500001)(7696005)(6506007)(53546011)(26005)(186003)(9686003)(110136005)(54906003)(316002)(966005)(478600001)(55016003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZERTTnBpclhDMGltenJRS2ZJOUlGa2hrQ3duODFob2UrZmlvMm9ib0w3ckZJ?=
 =?utf-8?B?Zjk0N0hRbjl3cW90LzBGaG5GbllQUkRYRUYzeUtvZFFHSk1UUjFmUXhkZmFw?=
 =?utf-8?B?OUQrSHA0NmtkTEg5OW01Tm8ybzE2RStMcHM1OUtxTnkzN3Bsb3FpN2NsSkdU?=
 =?utf-8?B?aGYwQmxPcGFZMjBRVllFdjdabnpRejJDdkxOMHJYWHl0Mk1EYXI5QVk4eDNo?=
 =?utf-8?B?cDNmRjVkNjBicFRMS0J3cENObG0yRCs0Rm8xV3lOK2F5NUZ2N251TTRhZU54?=
 =?utf-8?B?V2dha2JsZWZIZ2RIVHBDRkVYVjV3K3gyUVgxMGdKTTBubld5eWJEMTN1LzRx?=
 =?utf-8?B?KzdaT3cvUXBsRVdOZWpBdXFMNFdtMmgxcXBFTnNkMzh4MGgwZmgrUFowWXp2?=
 =?utf-8?B?WmczbFNJejhQNmtsUmhXeW1VUVdRUGt3L1hmR3FXUlo0YTJTVEVpR3hsYWFx?=
 =?utf-8?B?aG9Fd2pVVHZiRFZmbWNTcWtwekl6dHNsWDlCcy9mblRCZXFzZ2gra3lRcGdo?=
 =?utf-8?B?T3pwYUJlbFF3RGhlejYvS1NCSWk1eStzdFJnWjFkZmNJT0Y3WHNQem8raExZ?=
 =?utf-8?B?WHN4N1pkeVJwSzg4ZkpCekp5QnRCeWUydU9rNXE0U2g5TjZPSkxZN1NxejJX?=
 =?utf-8?B?aG9aMkJ4SmxlWXp0dFhkbUovSHcrWW9BeXAzbW45dExOWFoxU3lWZmNHVm04?=
 =?utf-8?B?c0xIL0x1NzczVXlnY005b1dGeS9NbmhSOGtqWHdZaDZDbUhqZnpoWWNsMEI1?=
 =?utf-8?B?RTFrM2EvendVUStjQ29Edk9qejVtY3JteUpjak1pQURxMXMzZFBkd3I1enQw?=
 =?utf-8?B?c1doQ3VheVhnYWZUSW9yWm1XdmNWM0VHUTZBYmRzT0taOG9HREhzcHZOMFdH?=
 =?utf-8?B?V25XTStqeXU0TDRFK2VrUmRiYkhFZ1BXS25XamZrUDFmNHIydHc5R1J4YXR5?=
 =?utf-8?B?UFdmcDF5OE03SitMMUpBVDFuaFpqaitVek1NTmI1TDl1T3Rtb0ZaSlhpd01k?=
 =?utf-8?B?TndqNUNQdmJaWFJIVWZZUDlZSW1DY3VSLytqWHI5blB4eU1pdndGdlZtOW40?=
 =?utf-8?B?c2JKUmVCT1F5NCtsZmJxbk9ybk9nUEN2WlNPZ2VqZU1oN2pHUGVrejVCc3px?=
 =?utf-8?B?cThGNm9sZVplTlpEcHYxWU1zOWZ4L2czcEtHVG9SeDFLeFJHamdkMVFyMERT?=
 =?utf-8?B?S3pvME5mcHArdFdZZnZkNm9nSGpDTnlMNXlUU3NqY0xGN2prTUw0MnRYV3Rv?=
 =?utf-8?B?TWQ5Mnp6Z2lZaGszWk8reHd0cndsaWE2OUtqTXJJZXZZZ29ISjRTbldIaUFQ?=
 =?utf-8?B?MUxOSjd6VWhCUU82QmNyS0UvWk83VXlnbFlkOHMrSFR5ZFE4dEZvMEl6K2Na?=
 =?utf-8?B?bFQyZ0ZMWTIyV3NvekxldjV1Y200bmtjbHNSZTJqSjJ3ek9EakluZitiTldE?=
 =?utf-8?B?QUwxdzBWT1hHM3NIWXI5eXY3endJVEh5RW9COVRpcGlCZjkxbzNaVkI1QTFt?=
 =?utf-8?B?dkRBZElxVk1xNTVTRE1mWStLMURZSzl6VzZPVjZ0MnpqVXFaMFFqSU1nT213?=
 =?utf-8?B?RUlqZ243VzczR2g3UGYrSFU3RlQ5SEJpcmhSS2RITUpwTnYwcVZtWEdyTy9a?=
 =?utf-8?B?Nk9TQW85ZlpSMDFTbmdCbkxQL0s3MEhmaUFXdzFQelM0SUl3R0VNam94WTJ5?=
 =?utf-8?B?anZpN2lXYzZjN3BUb3laUURiRTFSd3M2RmhEQ0RUN21nSEVmcHQ5aEh1WHlF?=
 =?utf-8?B?WmdtVm9ZaXliTENOM1p4b1hUUTA4V1hZU3AvZC9UMHhZQ21KSCtrMThzcVRX?=
 =?utf-8?B?YVpGYWRTTjloUlkxSTZxbXpKM1UrNzJKR0UyZURjNFNRUU5iQ3pPU0NXSE5p?=
 =?utf-8?B?S29jRS83N25FSE96bjBYa0tHU1dlbEMrRXpwYkI0L3VoL3BBaG9MMGkzK0Fo?=
 =?utf-8?B?UVlPNHIyL25RcU9wVElDRXpXck9YdXRZMDc5VVNtNlkzRXhRdDYwbXdsVTQ2?=
 =?utf-8?B?T0NvZGxGemlzT2FnVUdabnZ5ejMrV1c2bkRhdjc2RUFyck1TdU15OFJPT2JV?=
 =?utf-8?B?WmRwRVIxT2ZjcHN4T040OGJXQ08zRkFwQ0lLQUg1OUN4R2orS2dHSWFzaERn?=
 =?utf-8?Q?ck6t4aCDLwO36pbl1uDvSMJbq?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f27cc0c8-be60-4743-dd1a-08dab594c310
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2022 07:52:55.8483 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcUNa97HXu77uJR5qwxdITsvnDf66kL2Qvd+Yg6oGY5np5hG3fDF3C6dM1RZRhxVISyqfQVh2evGqMebFpnxfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Send update also on invalidate
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
Cc: "Brian J . Tarricone" <brian@tarricone.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDI0LCAyMDIy
IDg6NDcgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEhv
Z2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgU291emEsIEpvc2UNCj4g
PGpvc2Uuc291emFAaW50ZWwuY29tPjsgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT47IEthaG9sYSwNCj4gTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsg
QnJpYW4gSiAuIFRhcnJpY29uZSA8YnJpYW5AdGFycmljb25lLm9yZz4NCj4gU3ViamVjdDogW1BB
VENIXSBkcm0vaTkxNS9wc3I6IFNlbmQgdXBkYXRlIGFsc28gb24gaW52YWxpZGF0ZQ0KPiANCj4g
Q3VycmVudGx5IHdlIGFyZSBvYnNlcnZpbmcgbW91c2UgY3Vyc29yIHN0dXR0ZXJpbmcgd2hlbiB1
c2luZyB4cmFuZHIgLS0NCj4gc2NhbGluZz0xLjJ4MS4yLiBYIHNjYWxpbmcvdHJhbnNmb3JtYXRp
b24gc2VlbXMgdG8gYmUgZG9pbmcgZnJvbmJ1ZmZlcg0KPiByZW5kZXJpbmcuIFdoZW4gbW92aW5n
IG1vdXNlIGN1cnNvciBYIHNlZW1zIHRvIHBlcmZvcm0gc2V2ZXJhbCBpbnZhbGlkYXRlcw0KPiBh
bmQgb25seSBvbmUgRGlydHlGQi4gSS5lLiBpdCBzZWVtcyB0byBiZSBhc3N1bWluZyB1cGRhdGVz
IGFyZSBzZW50IHRvIHBhbmVsDQo+IHdoaWxlIGRyYXdpbmcgaXMgZG9uZS4NCj4gDQo+IEVhcmxp
ZXIgd2Ugd2VyZSBkaXNhYmxpbmcgUFNSIGluIGZyb250YnVmZmVyIGludmFsaWRhdGUgY2FsbCBi
YWNrICh3aGVuIGRyYXdpbmcgaW4NCj4gWCBzdGFydGVkKS4gUFNSIHdhcyByZS1lbmFibGVkIGlu
IGZyb250YnVmZmVyIGZsdXNoIGNhbGxiYWNrIChkaXJ0eWZiIGlvY3RsKS4gVGhpcw0KPiB3YXMg
d29ya2luZyBmaW5lIHdpdGggWCBzY2FsaW5nL3RyYW5zZm9ybWF0aW9uLiBOb3cgd2UgYXJlIGp1
c3QgZW5hYmxpbmcNCj4gY29udGludW91cyBmdWxsIGZyYW1lIChjZmYpIGluIFBTUiBpbnZhbGlk
YXRlIGNhbGxiYWNrLiBFbmFibGluZyBjZmYgZG9lc24ndCB0cmlnZ2VyDQo+IGFueSB1cGRhdGVz
LiBJdCBqdXN0IGNvbmZpZ3VyZXMgUFNSIHRvIHNlbmQgZnVsbCBmcmFtZSB3aGVuIHVwZGF0ZXMg
YXJlIHNlbnQuIEkuZS4NCj4gdGhlcmUgYXJlIG5vIHVwZGF0ZXMgb24gc2NyZWVuIGJlZm9yZSBQ
U1IgZmx1c2ggY2FsbGJhY2sgaXMgbWFkZS4gWCBzZWVtcyB0byBiZQ0KPiBkb2luZyBzZXZlcmFs
IHVwZGF0ZXMgaW4gZnJvbnRidWZmZXIgYmVmb3JlIGRvaW5nIGRpcnR5ZmIgaW9jdGwuDQo+IA0K
PiBGaXggdGhpcyBieSBzZW5kaW5nIHNpbmdsZSB1cGRhdGUgb24gZXZlcnkgaW52YWxpZGF0ZSBj
YWxsYmFjay4NCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiANCj4g
Rml4ZXM6IDgwNWYwNGQ0MmE2YiAoImRybS9pOTE1L2Rpc3BsYXkvcHNyOiBVc2UgY29udGludW9z
IGZ1bGwgZnJhbWUgdG8gaGFuZGxlDQo+IGZyb250YnVmZmVyIGludmFsaWRhdGlvbnMiKQ0KPiBD
bG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
NjY3OQ0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gUmVwb3J0ZWQtYnk6IEJyaWFuIEouIFRhcnJpY29uZSA8YnJpYW5AdGFycmlj
b25lLm9yZz4NCj4gVGVzdGVkLWJ5OiBCcmlhbiBKLiBUYXJyaWNvbmUgPGJyaWFuQHRhcnJpY29u
ZS5vcmc+DQoNCkxvb2tzIGxpa2UgYSB2YWxpZCBjYWxsIHRvIGRvLg0KDQpSZXZpZXdlZC1ieTog
TWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1ICsrKystDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTA0YTEwNDllZmYzLi41NjRk
NGZkOTQwNDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiBAQCAtMjIwOSw4ICsyMjA5LDExIEBAIHN0YXRpYyB2b2lkIF9wc3JfaW52YWxpZGF0ZV9o
YW5kbGUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAlpZiAoaW50ZWxfZHAtPnBz
ci5wc3IyX3NlbF9mZXRjaF9lbmFibGVkKSB7DQo+ICAJCXUzMiB2YWw7DQo+IA0KPiAtCQlpZiAo
aW50ZWxfZHAtPnBzci5wc3IyX3NlbF9mZXRjaF9jZmZfZW5hYmxlZCkNCj4gKwkJaWYgKGludGVs
X2RwLT5wc3IucHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQpIHsNCj4gKwkJCS8qIFNlbmQgb25l
IHVwZGF0ZSBvdGhlcndpc2UgbGFnIGlzIG9ic2VydmVkIGluIHNjcmVlbg0KPiAqLw0KPiArCQkJ
aW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIENVUlNVUkZMSVZFKGludGVsX2RwLQ0KPiA+cHNyLnBp
cGUpLCAwKTsNCj4gIAkJCXJldHVybjsNCj4gKwkJfQ0KPiANCj4gIAkJdmFsID0gbWFuX3Rya19j
dGxfZW5hYmxlX2JpdF9nZXQoZGV2X3ByaXYpIHwNCj4gIAkJICAgICAgbWFuX3Rya19jdGxfcGFy
dGlhbF9mcmFtZV9iaXRfZ2V0KGRldl9wcml2KSB8DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
