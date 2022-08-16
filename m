Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03707594BB5
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 03:02:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A98D8768;
	Tue, 16 Aug 2022 01:02:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0132C0565
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 01:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660611740; x=1692147740;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=i1MxTVPtt0As09CzIcDreynh3zlPUslBsWMEuYPQ9ks=;
 b=AFYHZEkT/ALZXd+dxx/41Augq5R9wvIcdCs1hrLH98nzDRZRHhSNo8pn
 zvFCdMOaZXwmMZYiE5uyj9d2gOJcyft0qcYb3qj3vAdbUwK35HiC824wP
 7fMmfYMihW+g3li6bEIJcbBVt17CNhsjQ4wG9inleNo/xVBso3hUZzHbt
 AiM6V0l4yKtwc/cC3+mHq2i3poROIlI0wurXwkFbbaTbko0bVaACW+65D
 +xHBYAI8tgvFIpj+WZlBycf/M6UQr4zzaqw7gxwVPy6YMZ0v9kOvaTjIo
 b9PIUpODdcXHGxhtgda6/ONxu6pfk0KJ15abriihRjxYJLHvhs7f6IXdb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="356097624"
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="356097624"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 18:02:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="557502268"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 15 Aug 2022 18:02:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 18:02:18 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 18:02:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 18:02:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 18:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P5GYv60NZ+ZbM7PZPKIEgIprf23jCUbGBa6AJzOCmOS3ocz48p2EXKJKlTDBG8YI7xTDYbnwlhkh0g1UYtpVXjUrHr15A2/uZJOJgFMKsDopU6/syxV5evZyD6sPh53KVMufQl8VufVbf5WBcotZFRAnMr3z3O7rMmolDj5mmjWXOahC4iTXYQLtnfFSB6Xc2Uz1KrnY3Cxrg2aItQRYpuDBt2KnjeLgsA6Cp1mgr9sMBKvFhlzVOKzlh/SWdcjiblD8Ygg1WXaP/mABi2insD0LkCCya+xpmWNQadpE9/R/0lL3WBLOkswN6r/1nskcn6n1cUqLQzGpZNYvJFp2wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i1MxTVPtt0As09CzIcDreynh3zlPUslBsWMEuYPQ9ks=;
 b=MUo6j/LmwvpweXCqFYKQGXzFoIgRORs0v5q9DoLAFtgg1X4arUIxuADCEaV8MJ/zTbb9vLjWJxLL1bKPxxQgRYtbjVIwYwuGHe+54ESok5ex4FyK3UpF8ApRsRNhtr+hLYe4v80WBoM4T1SUAi5irHveA9M0wBWZdPdp8S0zeWjuqWaemhaw0S6T+mklc/Iro6hP5b9UjJ35EgXsPBWtMyqiOBAhDnWVMfaCdgQqrJgSgi+JllaN5uu5YAGNzYIcwQudmDGLER9E0FsHJFIiMrnmqKoHh0tSV6qJwBEnJAKVwb2lgSNoa8LaZOa1GKpmo9vk1YSTg4ArrIUnJQ2NVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BYAPR11MB3078.namprd11.prod.outlook.com (2603:10b6:a03:87::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Tue, 16 Aug 2022 01:02:12 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::fdd1:18b1:3e9c:b03e%5]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 01:02:12 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [Intel-gfx 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
Thread-Index: AQHYsMBLm8mbOoAwkUG040OJ6Si6oa2wpAYAgAASeYA=
Date: Tue, 16 Aug 2022 01:02:12 +0000
Message-ID: <78eb9d4c18d9c62d39f053c8663ffa6052d04100.camel@intel.com>
References: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
 <20220815160134.1527085-3-alan.previn.teres.alexis@intel.com>
 <131a60aa-9fe7-461f-1176-0ac2e0a4ead1@intel.com>
In-Reply-To: <131a60aa-9fe7-461f-1176-0ac2e0a4ead1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6c2c05c5-11f4-4836-794c-08da7f22f403
x-ms-traffictypediagnostic: BYAPR11MB3078:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wDWSKTEKoDx5EoREo0OHNeGhIBOivXm/8RNEzmET92FIZVKyQ2rdoaI7MO77IXBjNvqas/+htMDvp+Rq0UvHF0P5knRe1E9zkZvzS1qCO3q68OHYDsGzRqgneTZfK8zN0b7Fjo29Gv0EZfxtA6RkcYjR3BloPwbqrdPc65l69ttN2IEIROzkByXs1uyBKiJ0RecEaBiH8Lf4NctEFP3ls76b0UNy/Nc1zskGeBx+N7a17k9EZRj0mRVinA3mqQ+qGSw1Znh1mrlzDkLwI0NQCvYB4Hpp26bSwJA1XzpR3Kb9QDWyEM5ClgqfI4RaV5Femf0vrte1r2MehTzX8XyJog0r1rRBYTh+0J4derPh5pkVJ3tVnz/3PEHOdIDJsGI1+e38/gwoWK90XBvrTG9sMNJ97vffYCwCl6xau8XLJKTQ/tmyqudDETkjvG13urwgHMuGt8WoXRXncabTgouv+2PhVsrTWsjNVj4tCIOf//djQpJj+ejKnV5X33+CWBlFkmHzQn7w92b9bg2IjYeDZQqj+GfJuql5cEJnT0GpnAGpsCTvciU0jITOB7WutzLAMS9oJ9k2jrtkP1yXyslOBG3aJ4HIdv5TCKPrROJCWmJ+2nliA05/ORnxQb7A3dJKezFJ8HG+YOwslnImuJDSCcn6RMscOcc7J2MZW4tfH87T22680cCBMR1ezayWP1zBJW8FpCGGcLdCmZpeELEdZCrkE4PS41D6PV5g3fkv/HzPzmhkFHzuQhhQ147tJTauQVY+pRdD/p82HlNkFXDIr6IMjSFlZUX+9ad3dP2IA/sSOxbZp+DoHOQ5aLWykj+d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(376002)(346002)(366004)(396003)(6486002)(5660300002)(478600001)(66476007)(66946007)(2906002)(66446008)(66556008)(8936002)(122000001)(38100700002)(82960400001)(64756008)(38070700005)(8676002)(41300700001)(86362001)(6506007)(26005)(186003)(36756003)(6512007)(53546011)(2616005)(71200400001)(76116006)(110136005)(83380400001)(316002)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UXk0UDhGR1JxSTJmWlRZcDR4ZXdtUXUxSnFDTDNBU09Mb0tpZXhPNGJhUTVH?=
 =?utf-8?B?K3p5QmlHVEUwdUhxOW5CR3V0bUxLVnlhYTdObXl4c2VneWN1OTZQQ0EvZklQ?=
 =?utf-8?B?dDNyMlRBcWVRa1hqNGpIVUNwYWdicGp0cHl2VW5XcXJGZXJaQXhzWVVmV3Jl?=
 =?utf-8?B?UHgvWkNJNkRVblp2c1FrOWttRnNjM3FBYk1LR1p5dTVBWVpIRTNTTFAwbW1I?=
 =?utf-8?B?WXZGUnp0MnV4UHk0N0NJWTdYOEJLdk45VHByeUxDKzhTQnZlLzVuYVY3cTEv?=
 =?utf-8?B?cU53ZUp0MVZhYXJTUlM4MXR3czcrRUJ3bkxWcHYzZWFib251VzJYSVh2TnFh?=
 =?utf-8?B?dVJPa0l5YnNlem84ZUFoWXM3c3dmVDk2YS9pT0dDMDZOdUV2ZFZRYlNkK0dN?=
 =?utf-8?B?UitMOVAxcWg1dy9vb09FbGYwc2doNXNJZk1wTXFmakRWMVM0ZkttZzlGRjYy?=
 =?utf-8?B?MGRWdFUzQjl2ekNGM0p5aWFLdHdrNG1sRUtZTGREN1VjWE1YZlhPa2hHQnBT?=
 =?utf-8?B?VVMyK3BTdFlRS2I4Q2lXcVFuWWNJc0lCZEQ4WlEwVnBOQXRudllZYytqbWV6?=
 =?utf-8?B?V1EzZFkxTlhFY3hOOXYyekhvTXJvR2xBVnViVWdIYVJ0SnZrc3ZTTHBPZHhL?=
 =?utf-8?B?TXdEZG5PSnQ1OTJSVzlCdnJDNThLRndKaHNYYjBGMlh6d0ZiMmtTRmRJdXl2?=
 =?utf-8?B?WW5xOVpKRUorTEJ0aTZpNW1NWHBsL2xmRXJxc01CcDk1ZVY4SUFlZnQ0clhX?=
 =?utf-8?B?RjhuckNNY1BpNzJHOFRuYjBDRHY5T1M2Z3NpemtvcnJYbEJROXFmTDVIVWts?=
 =?utf-8?B?d0liZmVYYklWaUE0aGpNRXY5QnduM0dVR2FLSTJFNzczeHNFdGlwb1JOSTE3?=
 =?utf-8?B?aGppc3ZHdGNoTHVwQTdkNG5yZk13SkJZYjRDelFjcEtzZW4ybmdEVlhHdmpC?=
 =?utf-8?B?eDNablNqZEJCKzBFdHM5c1lLQjRjcW5mdlBtVGtWdkZpN2tjc2RZdzI3ZEhw?=
 =?utf-8?B?VFlyck5nUlF5Z0pkeUJhaFY0ZXVTbFp4YTNqOWJUZFlxenJIN0hqbHRFRDBU?=
 =?utf-8?B?THdyVWJiNndhaERxWkExaUVVanIyVVc4LzVWZXFIMDFRV1psNXJBUkh1MjFI?=
 =?utf-8?B?RHluVU15RlJPTlFqYS9NOTZ5Vmh0QVRWZ3ZxbHhHaUppaTFoWkpxMC9oRzFk?=
 =?utf-8?B?Tm55RndBbVVldDZMN1JudVBod1o5MTdCL3RpOE9SaTgvUWJSV05nU3k2YnAr?=
 =?utf-8?B?aTVsOFFGWXNIQVQrM1FJV2lYNWowSWxZL3JySXZMOFZjSVUxVWhGcnZUSjBM?=
 =?utf-8?B?bHN3NjdJaVpaVitUUHo1bFJIWXRpUkxnbk1RYnJEVnFnQVlaSThKVlNTK29T?=
 =?utf-8?B?ZXhVeU02MGZTTW5IcFhTQ2UxbmxnYXlud3hEQitjWWdCdzZoUHpXZWE2blFu?=
 =?utf-8?B?Vi91T0E0ajZtZEVDbyt0dFdCN3BrZCtWWCtuZEZBbzhjdWNNelNESlN4dEZh?=
 =?utf-8?B?ZStjUzJQa1N4SlhEK1BMU3BsZlVoZlVTMDVNVDROZXNNVFpnMDc3UGhNWm1u?=
 =?utf-8?B?cVJWSitrMWw4aW4rS1NJbXBZM2RLcG5nRXJnZGpvbGpWRnpqSHJiK1dxRFZt?=
 =?utf-8?B?ZmNZVXMzRDlZWHN5SGR4Vis0ekVGZDRkUHFZQXdUN1ZXcGpITkxSaVJXem5j?=
 =?utf-8?B?RTROSFJ4N0crdFZZaDlGYzdWMCtjU1R1NEh0clQ0d2ZYeXVDM2orVlI1TzEr?=
 =?utf-8?B?cEt5aHhROGhjZU9teDRZUEYyMDJESWxiYzFtaHU2ZDNpTy8vVzEwcW9sK2Fx?=
 =?utf-8?B?ODdDUUNacjlsOTJlRnN2TDV1ZVVMc2xCaTZLV0J1TnN6UjZOZFJXb054bkJN?=
 =?utf-8?B?TS8wTE1WMFFZNUF2dFhtMXpzdDVxVDJ3cFFkeFh0WUpCenk4MFRvdnpzY25Y?=
 =?utf-8?B?RUlrOXNQRldJYzVNeEJCLzYweEx2UE8yZkJPaTdmMHYrU0h3WjVJVWJyWEN2?=
 =?utf-8?B?dGdEN2czU29EQU1NUzFKL2tDWTF3R1hCTHViQ1NVbHExa3dySGQ2QWZvUFlE?=
 =?utf-8?B?TWxGclRHL3YvYUFKTFNqeHk5OC9uMjN4eHFGNDZnQkJTK3QyOGtvOG1EckNq?=
 =?utf-8?B?K0ZQUFBpVllCNDlLYmZlUkhHYzE3QUp4NTROT1hzL0hzcGQ5c29rcDdTSHIr?=
 =?utf-8?Q?KLlT69AlPLvtsm5HW2CyTeU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2A64EC26B4C7894C80941F684F5D2B4F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c2c05c5-11f4-4836-794c-08da7f22f403
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 01:02:12.5361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cV1cCM1EHjRq+uMu93R4zshudzuNeYswSX/4Rg7jgyw9Z+AuKzHGWfgj3wlm8LjW2GYwrwdylqRE7F/YaQt2VcAC5zS2Et2Qs5XPvit+hwYrgMokchBwwdwBbMouTMRr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

U2hhbGwgZml4IGFsbCBvZiB0aGUgY29zbWV0aWNzIGFuZCByZXBvc3QuDQoNCldSVCB0aGUgbWFn
aWMgbnVtYmVyIDM0IG1pbGlzZWNzOiBJdCB3YXMgdG8gaGF2ZSBhICIxIG1pbGlzZWMgYnVmZmVy
IG92ZXIgYSAzMy1mcHMiIHR5cGUgd29ya2xvYWQgd2hpY2ggd2FzIGhvdyB0aGUNCmlzc3VlIHdh
cyBmb3VuZCBpbiB0aGUgZmlyc3QgcGxhY2UgKGl0IHdhcyBhIHdvcmtsb2FkIHRoYXQgaGFkIGh1
bmRyZWRzIG9mIHRoZXNlIDMzLWZwcyBjb250ZXh0cyBydW5uaW5nIGFuZCB0aGF0cyB3aHkNCnRo
ZSBpbXBhY3Qgd2FzIGdyZWF0KS4gSSBjYW4gYWRkIHRoYXQgcmVhc29uaW5nIG5leHQgdG8gdGhl
ICNkZWZpbmUuIEhvd2V2ZXIsIGkgZG91YnQgYW55IGtpbmQgb2YgbWV0cmljcyBtZWFzdXJlbWVu
dA0KYmFzZWQgY2hvaWNlIGNhbiBldmVyIHBlcmZlY3RseSBqdXN0aWZ5IG9uZSB2YWx1ZSBvdmVy
IGFub3RoZXIgc2luY2UgdGhlIGltcGFjdC9pbXByb3ZlbWVudCB3b3VsZCBhbHdheXMgZGVwZW5k
IG9uIHRoZQ0KdHlwZSBvZiB3b3JrbG9hZCBhbmQgbGF0ZW5jeSByZXF1aXJlbWVudCBvZiB0aGF0
IHdvcmtsb2FkLg0KDQpXUlQgdHJhY2VzIG9uIGludGVsX2NvbnRleHRfY2xvc2UgLSBhcG9sb2dp
ZXMgdGhhdCB3YXMgYSBtaXN0YWtlIC0gaSByZWFsaXplIGkgY2FwdHVyZWQgdGhhdCBmcm9tIGRv
d25zdHJlYW0gcmV2aWV3cyBidXQNCndhcyBuZXZlciBtZW50aW9uZWQgdXBzdHJlYW0gYW5kIGkg
YWN0dWFsbHkgaGFkIG1pc3NlZCB0aGF0IGZpeCBmcm9tIHVwc3RyZWFtIHNlcmllcyBwb3N0aW5n
IHNpbmNlIHRoZSBzdGFydC4gRXZlbnRob3VnaA0KdSBzYWlkIGl0IGRvZXNuIGxvb2sgcGxhdXNp
YmxlLCBJIHdpbGwganVzdCByZW1vdmUgaXQgb24gdGhlIG5leHQgcG9zdCBzaW5jZSBpdHMgYSBV
QVBJIHRoaW5nIGFuZCByYXRoZXIgbm90IGRlbGF5IHRoaXMNCnNlcmllcyBvbiBhY2NvdW50IG9m
IGEgVUFQSSBjaGFuZ2UuIFdlIGNhbiBkbyB0aGF0IGlmIG5lZWRlZCBsYXRlci4NCg0KV1JUIHRo
ZSB0aHJlc2hvbGQgY2FsY3VsYXRpb24gKHRoZSAzLzQgb2YgcmVtYWluaW5nIGd1Yy1pZHMpLCB5
ZXMgd2lsbCBmaXggdGhlIGZsb2F0aW5nIHB0IGVycm9yIGFuZCBjaGFuZ2UgdG8gbWFjcm8uDQoN
ClRoYW5rcyBmb3IgY2F0Y2hpbmcgdGhpcyAtIHdpbGwgZml4Lg0KCT4gK3N0YXRpYyBpbnQgZ3Vj
X3NjaGVkX2Rpc2FibGVfZ3VjaWRfdGhyZXNob2xkX2dldCh2b2lkICpkYXRhLCB1NjQgKnZhbCkN
Cgk+ICt7DQoJPiArICAgICBzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSBkYXRhOw0KCT4gKw0KCVdo
eSBubyBjaGVjayBvbiBzdWJtaXNzaW9uX2lzX3VzZWQgaGVyZT8NCg0KDQouLi5hbGFuDQoNCk9u
IE1vbiwgMjAyMi0wOC0xNSBhdCAxNjo1NyAtMDcwMCwgSGFycmlzb24sIEpvaG4gQyB3cm90ZToN
Cj4gT24gOC8xNS8yMDIyIDA5OjAxLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiBGcm9tOiBNYXR0
aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNvbT4NCj4gPiANCj4gPiANCg==
