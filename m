Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0585AC338
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Sep 2022 09:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FEE10E56B;
	Sun,  4 Sep 2022 07:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610D710E56B
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Sep 2022 07:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662276550; x=1693812550;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gFKmrLuYBeLVQKTfNwxCYLwtJZau7fsjBc2NmbjZQxI=;
 b=dDXvhOtCo2O7y1CelhTKJNfyGb17K77AlRB8W0dMlA/Jbf6h4QQq3BKj
 0Y2XSESmSJTYi3r9zYZgL9iAIoF22ZUEj5kpfFLXf34Dg7HHOXVSLX2VN
 oEkshAmaWE2Efl1Y654cHz/UtOBfKbKnssHB1E7Zln2Kjq5tpnOGN4ZqQ
 6SdhwFWY53fQjuC+kG7fTCpfOngBYP3BjsDnHPj8SBO/IHq7cVp+FGI7P
 PWtDMJzi711W1+vIteY/Gh3HVjHGLBLl3h//h5WoInJZs1vU64SxKi+1+
 JoXO9bGypgHFw44M7zMKEMRZnBVi4denSmEZYxZNZTeFnrIOi2kL1JXvU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10459"; a="382519212"
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="382519212"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2022 00:29:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,288,1654585200"; d="scan'208";a="646560872"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 04 Sep 2022 00:29:09 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 4 Sep 2022 00:29:08 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 4 Sep 2022 00:29:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 4 Sep 2022 00:29:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 4 Sep 2022 00:29:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWINW9SGbPGm5oxalgMBZjjGBZXSI73P8JpktZBh5o7BEwiaJCXNceCYSQApHsKzjsNRIbgMGkvG0gC2pZoCTl+h/XH9bUVLa93trr0yOswLy6iNlq1dg9ubGRxX7CLVFt4VZsKUrwGgKrP1HX04/iE3VDxXCXiTEBz0ccCRWQpFLCqgsJWgALIamYAKdeBHjZJLy50HuO3VP488ABwikQ3UTIWCijS8oGhG4srqCvzHXyBC2p1Pv6u3IX/sbFcGlbmQKuC16ZcHOJZDTrBMaVkfEpzeb4UXnvEx0sybP7R3s1LhFau6gVJlULG807qbWam3st1Pzl5w/D9fKglTNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gFKmrLuYBeLVQKTfNwxCYLwtJZau7fsjBc2NmbjZQxI=;
 b=J1cAojEonb+LiykR5x9nfLn2CN+NVyRGtK0bpCt+YrW1fSU7VoYuHTF2cUbrebF7+X60Ll8a61T/VSt9TxCoybpnbzpqVihGKXx+Z7cKBfd84UAg6NaY4mo5+yRDrhby7NhiXDVCnJ2FXDiZkPbGmGpgQBNjGo/KIstHgFWTaGSvpzvr8ex7UVDB35FYfGoZmyfFPkYBg9Ursxsz/M1XIozBefnmArp6YyiN52bLFzCEWH93N7QFfqJzZGiqFdx6+LrwS9l6Hic+hRGWUn8fJN5BBfgUXWEYiTqhM8oF/imXboHmhG51SJa7z5muGGGPqDb/nw9N6QQf0l8LMg+/qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by CH2PR11MB4279.namprd11.prod.outlook.com (2603:10b6:610:42::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.11; Sun, 4 Sep
 2022 07:29:04 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::9d94:4bbb:2730:639d]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::9d94:4bbb:2730:639d%5]) with mapi id 15.20.5566.015; Sun, 4 Sep 2022
 07:29:04 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>, "Winkler,
 Tomas" <tomas.winkler@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>
Thread-Topic: [PATCH v7 11/15] mei: gsc: setup gsc extended operational memory
Thread-Index: AQHYqY/1uzv0/2Xu5UuxGyUU+SxHJq3LOTwAgAPS7gA=
Date: Sun, 4 Sep 2022 07:29:04 +0000
Message-ID: <CY5PR11MB63661B40A4D331A6A7E59749ED7C9@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
 <20220806122636.43068-12-tomas.winkler@intel.com>
 <e2296121-1f99-5bd2-2a80-a24b029bf4f3@intel.com>
In-Reply-To: <e2296121-1f99-5bd2-2a80-a24b029bf4f3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eb58d223-1b6c-42f4-5da4-08da8e472569
x-ms-traffictypediagnostic: CH2PR11MB4279:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xw5Rv8aUwA0ZrAGFlOqB6BOpSeB0qh+Q5qujvxwF/IEh515O6GW/gQsvpEpxUgUETazcQcbuwx3obMyk4BuiFKLdn2mtCea7tsEs6+75xzkYbQwLV9aiKuUIAEIwz4IiAQfGru2joZyGUeEdK7TIs9DSy+IKr2qRf2UgEalFZIVO3hu1Dsrq5wG1N/JN6jDXHpZiaafAdvgY2hXSSCGzYd5Eycpu3qfp8XXi05pt0cgqO805JJkPa16/irOXyHdyZqEwaGyyrvqUGHjLQ2WDLyMaM88fzf86xwVeUA94M0WbzSkQ70cqi9Wd5o72cmJRi3B/tdr4gxn7YxqS4Jd17S8OFeVcnoESqB/3yJEvJ99ZDfn8SW7LfQcnYBgbozOL2og4IqRh78wWqRabs8McWL+AJDV7uhrC8xmY0KchGVB1dQmqEVjOC4C4p5QwhA7jLvpXAnLu1O0qIFxMDYNSW0Nz+jsOt1QTkEj1YOdbH2kjmB3hAcUEntzOnJJXQ7B9uwra7X8cQewydhIESM+QhebZL0G3P6OQD5mg0sHUsDWFtpF0efzw6xxarRZWCYCgw64ATCbVnN1PbxqJhj8Cft14VXnTEhwR+McaCtYzDUiTKRZhkR32dLQx3QV4GeZuvjfTWTtf1X0BirAidg4O4WDGWHvvU3g+q+FENArGkIg4sp4oTrSNeoQe6XGN8pl1Dx7USLCNcnbQGDT7Cro/bM/jGGg662nMFK/gfvbe33aC+a7VGn40fQy6XEPPuqF4dlweQKr+Id/k2QSjNuBAdA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(366004)(136003)(39860400002)(396003)(376002)(7696005)(41300700001)(6506007)(86362001)(26005)(186003)(122000001)(38070700005)(82960400001)(38100700002)(9686003)(76116006)(4326008)(8936002)(52536014)(110136005)(316002)(5660300002)(54906003)(33656002)(71200400001)(8676002)(55016003)(64756008)(66556008)(66446008)(66946007)(66476007)(4744005)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGpLVDR1ZExrYWJMYjQ1WjlRZ05VQ1JqakdaYlpCdUV5ZEMxbUdPam5DNCta?=
 =?utf-8?B?TGFSeDF3a3BVOW85ZEV1Y3p1a1ZPeFY4WDhjanZ3cnBPb1lYSFgxUFR1bnBE?=
 =?utf-8?B?VnFIYXdzSE9pT0VUMDRGWkRaaElOQmd4a0tIOEtUT3BpRzVjZDN1MjB3NWVo?=
 =?utf-8?B?eWRYYkNyZXZSaDNPbmViOUd2UUppcUlsZDdxcEtiaTRDU0hoTlVRbzlYSUZW?=
 =?utf-8?B?VWhHVmVqOFp4SG5DTGRSQ2dMZDI0NnBEWVdpUGtleUNkVjVSbDZRSzdoQmdD?=
 =?utf-8?B?akVTQkRHQjBiUXNSRWY5NEEweTZLWG55eGpCd2ZPdWRlUmd4Q2p2ODh4bmpG?=
 =?utf-8?B?ZGV2aVRWRy95QU1RT1BrRTlTYlVVU2w3UnYyamEyd0hjVVUvNWg2R2pyNVNI?=
 =?utf-8?B?aUJKYWEvdit6Z3M5MHRBVjVyd0hxTG9TSkJvZElOemU4RENxSFNQaU5RaXll?=
 =?utf-8?B?dGpKTTZ6RGRWNXpMcUdKdkNpekRCTFI4NXh5bkF0SzFNS1R3MXlPck5mb2Uw?=
 =?utf-8?B?UllSNEtBakJxWUZTQ1BQYWFmdHhHR01KdXJBbTFzYjIyQ1B4TWpLYldienFl?=
 =?utf-8?B?Njh3SzhEdVJIaUpYVXU5ZTVCQzdPM3d5azV4SzZRcXRlUko4d1NFSTFQZ1U1?=
 =?utf-8?B?VjlZRjc2cnR4YXZ2d1B5cHpFMnVGWG1TTzZ3UHI0VVNPaUJOY0R6REpuWTVk?=
 =?utf-8?B?Q0FDRExtL1RFVGdNVTJDNkpXQ3grYlM3VmRkMkgzSFRPMW1Vc3Bwb3BPVHdL?=
 =?utf-8?B?OXZZMVM1WDc5WWp4N2pFV2VKczRMNjlhZE5mMCs3K0pnVkc2bnVYUXdpb1FC?=
 =?utf-8?B?TWRlTU9WbUxZWjkyMVFmOGZrWXdBUzdJWXN6SUdEbGR5ckNZUjRKTnhsNU52?=
 =?utf-8?B?N0xXUWxVWk54dnBUTXRqMU84bmxkYUNTa2V4RFRodEUwRnRRTFZUbVZVTnlU?=
 =?utf-8?B?eGNHU2lEMjdxZE8xQzArVkU2cllCTGhoeEN6aFNqWHNLZmVzd2kvci9YSVBX?=
 =?utf-8?B?RXRBTGMvb3NuS0hvSGozOVdGT2xSekV2dFZTcG93N1lVSFFZM0RnQTJQei9F?=
 =?utf-8?B?VTBVZEMvRDZFYzlGOC8zbmJMZnovMFVtNG14d1dHVWxVR1UwbnFwTVFNdEFI?=
 =?utf-8?B?SFFETGZWcm9HbmtSYkMya2dUOWJOK3ozZmxtbCtqZlp4d1JtUnlibHVydloy?=
 =?utf-8?B?TDZLZ2p0L1NUQUl0c3RpYkI2VFdzY2xQWXFXK3RxNlErVWd2bGwycVpmVnNX?=
 =?utf-8?B?QjNzQzBwRS9SYncvby91bm5iTW4yeTE2cEswY0VpSzB4OWFPYThGZVZEVnpI?=
 =?utf-8?B?cDBxRkZOaVdCNmtXK05Gblh2V2g1WkRaSDJmTkVKT0JsWXZ3NXo4STl4cU1C?=
 =?utf-8?B?eGcrWU51Tjh1N0ZKTkpOZGdKQy9IZVhlRjBlQ0dVNWxoQWVGUlI4V2ZCT25Y?=
 =?utf-8?B?ai9Mdko3UDE1cCtWajZhMktIMStleWllOUJQVitKNjJtNGlEQnFLTDRDQzgr?=
 =?utf-8?B?Nm44TUtVMG85bUk2ZjVFaGR1MVpOcTM2Wnk2Q1F3RmkrNXZTcnZyL281K1dt?=
 =?utf-8?B?aDhvS0M1SGtidXFZcjZCUGtmTmVpY2w5UVdxTzlwVjBNUURBTDBTTnBIOFkw?=
 =?utf-8?B?a0g4aksxTUorUW5pYjZ6dFlNVThseWVJTUZqZmxERmZLZnNXWmQrbVVWSGpE?=
 =?utf-8?B?aUh1eHp5Q0hLUXdYZitvWW9CdFh5bGVGMmdETDhQTjV5UGY1dTVRWFJJWGxn?=
 =?utf-8?B?ekhxREpMRHNJKzRUSExpTDRKKzdQazdFU2pwNEI4VVQ4OVRjT2RhNzl2bTk1?=
 =?utf-8?B?WE1SeDA2SHJlcWRtd1JzR2R0OXNrWXJCMFVERmRyc1o3cStMenRmM1hmSFVq?=
 =?utf-8?B?QURPZFJZS25QRzA1dkNEQWtFMTNjTkN1RWRUMG1LVGs5UWduMkwvVGdXTGRK?=
 =?utf-8?B?QkxldVdKb3pDSE1RNzVDSTl1ZUlDZUhFSE94ZlA4NEZkUDFmbEsxVUNjbTBk?=
 =?utf-8?B?ZEpLVmFoZVhMY29MUEhFVlhtUW1JT1VhVDgyNkplVC85UUpxWWtIVEV0ZGdC?=
 =?utf-8?B?ZzFlbGVBbjdEdU9rUXNPajFVbFZ2ZzNwU3RLNlM1LzdlNUFwbTlDZ2ZUSmZ0?=
 =?utf-8?B?amJlaGgwWkxmZWM3UzludjRkQnRGMkFhWGZIaDVLQzFDdkhCSzE3Qkt5UGdN?=
 =?utf-8?B?MGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb58d223-1b6c-42f4-5da4-08da8e472569
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2022 07:29:04.7206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g9BeTegjK3/HAxPAX2URwpTj3kAg8j7vl72uNve/m67jPynxb6OcTBAZth6K5ZKr3iXdKsZ6DywHhz5iwh7O0RisJOXuGCPCrdfhu5TC4d0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 11/15] mei: gsc: setup gsc extended
 operational memory
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, "Lubart, 
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ICtzdGF0aWMgdm9pZCBweHBfaXNfcmVhZHkoc3RydWN0IG1laV9jbF9kZXZpY2UgKmNsZGV2
KQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgbWVpX2RldmljZSAqYnVzID0gY2xkZXYtPmJ1czsNCj4g
PiArDQo+ID4gKwlzd2l0Y2ggKGJ1cy0+cHhwX21vZGUpIHsNCj4gPiArCWNhc2UgTUVJX0RFVl9Q
WFBfUkVBRFk6DQo+ID4gKwljYXNlIE1FSV9ERVZfUFhQX0RFRkFVTFQ6DQo+ID4gKwkJY2xkZXYt
PmRvX21hdGNoID0gMTsNCj4gDQo+IENhbiB5b3UgZXhwbGFpbiB3aHkgeW91IHNldCBkb19tYXRj
aCA9IDEgd2l0aCBNRUlfREVWX1BYUF9ERUZBVUxUID8NCj4gQUZBSVUgTUVJX0RFVl9QWFBfREVG
QVVMVCBtZWFucyB0aGF0IHdlIGhhdmVuJ3QgZXZlbiBzdGFydGVkIHRvDQo+IGluaXRpYWxpemUg
UFhQLCBzbyBpdCBzZWVtcyB3ZWlyZCB0byBtYXRjaCBpbiB0aGF0IHNjZW5hcmlvLg0KPiANCj4g
QXBhcnQgZnJvbSB0aGlzLCB0aGUgcGF0Y2ggTEdUTS4NCj4gDQo+IERhbmllbGUNCg0KTUVJX0RF
Vl9QWFBfREVGQVVMVCBpcyBhIHN0YXRlIGZvciB0aGUgbGVnYWN5IFBYUCBzb2x1dGlvbiB0aGF0
IHVzZXMgdGhlIHNhbWUgZmlybXdhcmUgY2xpZW50DQphbmQgaGF2ZSBubyBuZWVkIGluIHNwZWNp
YWwgaW5pdGlhbGl6YXRpb24uDQoNCi0tIA0KVGhhbmtzLA0KU2FzaGENCg0KDQo=
