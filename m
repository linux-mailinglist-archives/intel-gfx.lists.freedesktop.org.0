Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F87164642D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 23:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E787A10E149;
	Wed,  7 Dec 2022 22:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5122410E149
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 22:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670452641; x=1701988641;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=9A1jyuirU1YyOKUM0al4DawcntKVuqil/RsTQVQ78TE=;
 b=SUAovsk87U14LuEHZUKcqu4Ghc7nnHYiC22edCDiciV8TbM6E9WjRFSS
 h4lTJVw+Ky1zufjCdYa4Zh+yZIej4KYlx0rjrIozAT9chbDQPao4h3X+C
 n3XE18KPegidm+i5rh9eFqDzEF4f22Br0USptr8o9cLZXpfTnH+ZFUp4w
 XbtqQUh0yRU/QjmBmCwXteMi9ROlb0xud4KqR9gDwA2n/t6veM0AT/B8x
 y9kSHKak7Feb15fYKdLoKhpwozOsigYleThzrjh50j3X+r+Jcu+EsAND2
 avXKXUP9h0cLnrk3pE/7S/V5h6ooynaJBW/+VDEZv8Br/3hJc8+UgomvC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="344061789"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="344061789"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 14:37:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="624467867"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="624467867"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 07 Dec 2022 14:37:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 14:37:19 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 14:37:19 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 14:37:19 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 14:37:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nxkqsKNJsshekbqMVuCjVORH5oVfCGIcPqlLW7jQgO9pon2URac2LDl00qB4hmnXoYElA8ySEnMxTdZ6ksJete6BNEsupIj1iWq1Vk1EQLQ2loEnw84fyvfF1ll2GAx6LSD8ixnDPPfrdXI12vV0Cffyxp+SIDgztGInsPfXxCwYw7tRlzkt6K5b7Nug9Uzgk0O8lOPWEUSRetIAUGMeP4R8Uh9bHNx0JOPWSZI34vfLuDkODrFEMzKoWOKG+E5flEQpcRY3IiovXZwryYd/aRyXVaxqpsjKbCfdeTJYhwgYdk3n3mr9MKDpKAfQ/lmCswHbv3zPXwlt41hj1S7sAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9A1jyuirU1YyOKUM0al4DawcntKVuqil/RsTQVQ78TE=;
 b=mVA890ZhDwcFQWwL98LQi9D7349s6lNjm/EuzqODE4WHZ00TWgPF0XRIJKd52hrTZZLn4L+xtYyhT76yQr1nAAcv5SJUY/XScf+kaaqOhNysf4o6FMjsG8OPIiWmCsvyH/7sIAGLpt2kViQSdfqpARXfBO7zx57sYNs5o3bAZ7zsfawMFYWbRIuhhNtIgItk68ceEi8agy82iZ3wwcvtCULf/gb0+H1XlqUgqWWPjf5XRFaVGMJWmh7dXunAEY1wsoT5d1tkp2+rA98t8/u8yfh+5Pqn3MQfvnta5fGnBGtyLYBUWogY0kXTz1O/7LY2mlppAqt565hcsT/Vrv0Oeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5595.namprd11.prod.outlook.com (2603:10b6:510:e5::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 22:37:17 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 22:37:17 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
Thread-Index: AQHZCQXngJLmpxYcEEGWV0CABsX/5K5gok8AgACM/4CAAQbMAIAAIdoAgAAarwCAAJUFAA==
Date: Wed, 7 Dec 2022 22:37:17 +0000
Message-ID: <c14e95ac0ff0a24549f6b985330014f207b4ffeb.camel@intel.com>
References: <20221206000332.134137-1-alan.previn.teres.alexis@intel.com>
 <5f79eccd-f843-8738-98c9-e9400c55ead0@linux.intel.com>
 <85af989600231120dff41fa613f14ad28a423b7c.camel@intel.com>
 <4d0188ae-2e3b-4789-6526-2ea990029bfb@linux.intel.com>
 <2aec16982a08bd794e21824d6b8c90faa9381da0.camel@intel.com>
 <f254a933-640a-7790-8cda-3316218d5660@linux.intel.com>
In-Reply-To: <f254a933-640a-7790-8cda-3316218d5660@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5595:EE_
x-ms-office365-filtering-correlation-id: a6cfaf8a-d307-4ce3-4ddd-08dad8a39846
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fMY92Oh2TyTk1tRkZ9iN3XKwXyw967A0LldWmirduAfYciUXzTYb8wXWF8L+9tqGBYjWR27tC9w1hddQyk8+Vg6xARarQqxa5n7rLXIpZpNpGV3IeuL7Q6InMryJ6VjgPhzxf63DJhpk6ZlkdCICHefMiHs/msPxKCh9PlZ5xiLI7qioSm+XCEGZU8MBjInXiVJLw9w+xRCHR9X6d3rrJPCE74fp5brjhhbDvy1XzA/uv6oL8vZFWqXRkmp9++8Th14Kg8FB+UwHgTyq9zcUQMkdVgOBAmOHEJK/JX8eFKJ1mzl4Hb4JfzXCpFmWSoHz8ZDkSkMEzSJNkx4yQ4PRhJjZaeLKEM9vvu25Tyb890T7y9QTtdebTlfMaCRqwGJT9IBXmmTNT/FW/+aZw3d6kdDlCcEFZ0Yp9qXavpDucAA8Rf5PjlIVjQjh2H7vxr4h9IjuzpC7snjQnmjreZXkcseVJaMC/zEaqEKmXCRffRvzNy1IDTUZhoQE+6vErKbd3106zSRwcieqm01/sDuEVvesq9fTOIJhIwb/a14RNdpR5ZpMHzQriiDR09ImQfuzmj/9pbRC5Pz7vbN7IzfVL1cNU+qLuPNuXYIPU7mqgMv+Qo3K0W2MtFt+/LbkG/OVc0HKT+A/Ek8pdKmhNlrjO8urQmY8dgYOXVJk6KCs3Y2KB1QARkFLtIl+YRXOkJK1gOvAQAHw6OYUNoNOmQv72g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(396003)(376002)(366004)(39860400002)(451199015)(186003)(316002)(478600001)(86362001)(6486002)(71200400001)(110136005)(38070700005)(82960400001)(36756003)(26005)(6512007)(83380400001)(6506007)(2616005)(122000001)(38100700002)(2906002)(5660300002)(66946007)(64756008)(66476007)(66446008)(8936002)(76116006)(8676002)(91956017)(41300700001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TVp4Y1F1cDB5UjBHaFVVamYxSHBoSzFkVFdScllxOUJMdGg3NldJVzhjTVh6?=
 =?utf-8?B?ZWQ3c2xXUG9LcG84RVlsYndiZDl5U1dLRDh5b0lmWmlmV3lBa3NOUnp3b1Fw?=
 =?utf-8?B?N0RkQUdaanNlUGZnY1QzNHNTc3Zoa09oTU9waDBLQzdGR1BQY1owVlJUTld1?=
 =?utf-8?B?K0w0ckUwK1lKa0dySVJGV212QzBTUy9maW1EWGZXRzBicGppaWxEZEJCZHpp?=
 =?utf-8?B?MXBIa3hIZ2VsSi8wQ3F3RGRROE8vRG4zSC9ISHAvbmRqMjBFTG5YTnU5NVdR?=
 =?utf-8?B?cWQ2M05WbkV6NStVZUN0Y0JzRGY4RHlLYmFOc1htZ0NzMTBsVWx1dGJoUUFB?=
 =?utf-8?B?Qmx4M1ljTXRRcktGTlAxc1lKanROeFFBU2ZMTjBzNHcxNWMzUFFKT3VnYUp6?=
 =?utf-8?B?QUJ0ZTdrbnNERDhtRE9wdlNiKzE4bXh2d0FDN29QT2hETEs4Z0lrYlJyZkJ4?=
 =?utf-8?B?WUtHeVJ3Uzk5NlNIVXlGeHRLRUhLUHdiMGdWOEJzYUlORXVwL01Kazd6WVpU?=
 =?utf-8?B?UklIYy9oWGxSY1pEcy9PNmIrdTlkajEvVXFvT1k2cnkrcHNZRWxkTVNpcGls?=
 =?utf-8?B?NXlVWEhzK04zOFR1dkhNcnRsblBRUjFFcDh0NExieFFNZGRrbis5V2RKWmJO?=
 =?utf-8?B?Z2dmQUpqRTZ0MUpzYzRNQ0g0ZGxjMEs4aUxPV3ZIczhoN3J4MGVXSEJRV2Jm?=
 =?utf-8?B?T3hxWVBFNFJ5b2duYXBmcG9yS25ad2lyTTM4UG01UE5yTE1OVHVyL1BEUEdx?=
 =?utf-8?B?UWF0Z1FNcDNNOUkrVzBzeFozc2FjQ0VxanV1akRPNEQxRnN2cVFHMjhLMjgw?=
 =?utf-8?B?NjdaK0pwUGoxazVtL0NPajhZd3Izc0owTEYzQm5kcHJVU0o2NGdYbWNja2FC?=
 =?utf-8?B?TkUvYkc1azBSUm5YZTRFamtOVUxKcXhubmdQcWU5c1FLckIzR2JKVzBoV1Av?=
 =?utf-8?B?clhsQ1VSUkdld1JUZ0hXYktWTGRPcEgrbUxFcit5dEJlL29LdFRIMUg1R1Bv?=
 =?utf-8?B?MXZnT2g1a0V4N1RkK3RSYWIxQUpOeFlzMnRPY2x3S1U4OXVhaStaMmtaUnJN?=
 =?utf-8?B?SWRHWEVMTWsyb1d2clQzd3Q5MXVmSUhlWFdUSnB1eWtCcFU0K3FoVUxDbklR?=
 =?utf-8?B?NkF5bVFjK0xyaU54blVkeE5YVXhEQ0t4elhxTnpYeElVSitPdWRsZ2Nmak1J?=
 =?utf-8?B?a2kzZ0hKRzhjNHFveDg4QmtmaENJTU5HUkx0NWJ5MGs4bTFsUXNSdTUzYXpz?=
 =?utf-8?B?aXRhTXQyNGxlVi9YRElCQVdtRU5jSHd3ZFRDNmNyUzR4cjRMTVJiN1doWmNk?=
 =?utf-8?B?ejFsYlJXU2hldTZ1OVd3L0dBaVVONXcxRmxzOTFJSk84d0s5d3B1bUg0MldJ?=
 =?utf-8?B?eWpudlV6Skl6QS9rRFlPYUR6TW90UkdlV2drUGd1YU1lV05UeTlWaXd4NmMv?=
 =?utf-8?B?MkJmL0d1ZHA4ZXhKanZlMld4cEFCYm81a3NlUHpUOFNOK0c1S29kVU9kNWYv?=
 =?utf-8?B?Y25oMFdFR1FUbUJpOXlub0tXYjVWYVhZYUxha0lFMDNhdGdYS05FQnFlQmRa?=
 =?utf-8?B?UHRyaUFvdzNYT1lER2lvQXV4UGlBYUJhQnl2dmdMZE14MUFxRVI2eTIzTStF?=
 =?utf-8?B?T1FNN3h3S1REYmgxVXhFb28yaGNqNVRBdSszVjlyNGdETC9JSWVKOFJuNlhr?=
 =?utf-8?B?VFVJZGsrNkFpaTI1VlVPWi80WkNVckYwUjVydHR2Q1liTGtiNDFLNE9tOFNR?=
 =?utf-8?B?MXZRelprbUdUejRlVFM2VWZ2Tk9SRVpBTFZGMlN6S2oreEErUnJEVmJoNnRh?=
 =?utf-8?B?RkFRdHpIN0kyQkRrc0dWK3dkZjI4TEJNUnUxMEE0RmRqL3pGOVh2aFdtd2FV?=
 =?utf-8?B?OWIxWnJ5U1h4N2Q2Y05kRzRMSkJFR0l2M1QwVmpXcjFsVlAzcUErSldQRkhz?=
 =?utf-8?B?WTZWR2ZCdVRTc0kzSkx2SGJQZEJ3c1BPTENCNUxnbDZpY2R5QkVVWVY3UlY3?=
 =?utf-8?B?TEpHQU9GalQ4cDlwaGNQTyt0RGlLK2Z5UEgxR0RXK1lmZms3Qmw1dlNIamlt?=
 =?utf-8?B?eTdhdWdPSmxGZEI3RDhZZGF5UC9xdzFSZTIxMWY1RWZXU0FkT0Z1U3JTZFlL?=
 =?utf-8?B?SkhubXJnSEtNWmhOUmxObytYOGlnSFlsK2lRVUoweDFJaFBGVXRiSC9hZzJh?=
 =?utf-8?Q?Ybfh5d8ESY69ce+dUdgNRfg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CFAD45B1972B4E41BD05E5271FB7D709@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6cfaf8a-d307-4ce3-4ddd-08dad8a39846
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 22:37:17.1891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YHTcS05Qci2EZHqd9C6yNSOPtXUI/EyUl55Va5BDBpkpGaHglHzj7lQrg19eEY08ihcfMa9DmWAHeptA5scZpXvOMXw9rErBEjm65TF+HLnbUblxdT0VdiEUvIzJv/Ji
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5595
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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

T24gV2VkLCAyMDIyLTEyLTA3IGF0IDEzOjQ2ICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gW1NpZGUgbm90ZSAtIHlvdXIgZW1haWwgY2xpZW50IHNvbWVob3cgbWFuYWdlcyB0byBtYWtl
IGEgbWVzcyBvZiBsaW5lIHdyYXBzIHNvIGFmdGVyIGEgZmV3IHJlcGxpZXMgaXQgaXMgc3VwZXIg
aGFyZCB0byBmb2xsb3cgdGhlIHF1b3RlLiBEb24ndCBrbm93IGhvdy93aGF0L3doeSBidXQgSSBk
b24ndCBoYXZlIHRoaXMgcHJvYmxlbSBvbiB0aGUgbWFpbGluZyBsaXN0IHdpdGggb3RoZXIgZm9s
a3Mgc28gYXQgbGVhc3QgSSAqdGhpbmsqIGl0IGlzIHNvbWV0aGluZyBhYm91dCB5b3VyIGNsaWVu
dCBvciBpdCdzIGNvbmZpZ3VyYXRpb24uXQ0KQWxhbjogWWVhaCBpIGFwb2xvZ2l6ZSBpJ3ZlIGJl
ZW4gc3RydWdnbGluZyB0byBmaW5kIHRoZSB3cm9uZyBjb25maWd1cmF0aW9uIC0gd2hpY2ggaXMg
d2h5IGkgdXNlIGEgbG90IG9mIFtzbmlwXXMNCg0KQWxhbjogW3NuaXBdDQo+IE51bGwgY2hlY2sg
aXMgZmluZSwgSSB3YXMgYSBiaXQgYm90aGVyZWQgYnkgdGhlIGhlbHBlcnMgb3BlcmF0aW5nIG9u
IHB4cC4gQnV0IGxldHMgcHV0IHRoaXMgYXNpZGUgZm9yIG5vdyBhbmQgZm9jdXMgb24gdGhlIGlu
aXQgcGF0aC4NCkFsYW46IE9rYXkgd2UgY2FuIGNvbWUgYmFjayB0byB0aGlzIG9uIG5leHQgcmV2
IGlmIHdlIHRoaW5rIGl0IGRlc2VydmVzIG1vcmUgc2NydXRpbnkNCg0KQWxhbjogW3NuaXBdDQo+
ID4gDQo+IElTX0VOQUJMRUQgaXMgYWx3YXlzIG9wdGltaXplZCBhd2F5LCBiZSBpdCAxIG9yIDAs
IHNpbmNlIGl0IGlzIGEgY29tcGlsZSB0aW1lIGNvbnN0YW50LiBTbyBpdCBkb2Vzbid0IGluY3Jl
YXNlIHRoZSBudW1iZXIgb2YgcnVudGltZSBjb25kaXRpb25hbHMuDQpBbGFuOiBSaWdodCAtIG15
IG1pc3Rha2UuDQoNCkFsYW46IFtzbmlwXQ0KPiANCj4gPiBpbnQgaW50ZWxfcHhwX2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gew0KPiA+IAlpbnRlbF9ndCAqZ3Q7DQo+
ID4gCWludGVsX3B4cCAqcHhwOw0KPiA+IAkvKg0KPiA+IAkgKiBOT1RFOiBHZXQgYSBzdWl0YWJs
ZSBjdHJsX2d0IGJlZm9yZSBjaGVja2luZyBpbnRlbF9weHBfaXNfc3VwcG9ydGVkDQpBbGFuOiAu
Li5bc25pcF0uLi4NCj4gPiAJLyoNCj4gPiAJICogSWYgSHVDIGlzIGxvYWRlZCBieSBHU0MgYnV0
IFBYUCBpcyBkaXNhYmxlZCwgd2UgY2FuIHNraXAgdGhlIGluaXQgb2YNCj4gPiAJICogdGhlIGZ1
bGwgUFhQIHNlc3Npb24vb2JqZWN0IG1hbmFnZW1lbnQgYW5kIGp1c3QgaW5pdCB0aGUgdGVlIGNo
YW5uZWwuDQo+ID4gCSAqLw0KPiA+IAlpZiAoaW50ZWxfcHhwX2lzX3N1cHBvcnRlZChweHApKSB7
DQo+IA0KPiBIb3cgZG9lcyB0aGUgImZ1bGwgcHhwIGluaXQiIGJyYW5jaCBoYW5kbGUgdGhlIGNh
c2Ugb2YgImhhdmUgdmRib3ggYnV0IGh1YyBmdyBpcyBub3QgYXZhaWxhYmxlIj8gUHJlc3VtYWJs
eSBpOTE1LT5weHAgaXMgbm90IG5lZWRlZCBvbiB0aGF0IHBhdGggdG9vIHRoZW4/IElmIHNvIHRo
YXQgY291bGQNCj4gYWxzbyBiZSBmb2xkZWQgaW50byBweHBfZmluZF9zdWl0YWJsZV9jdHJsX2d0
IGFuZCB0aGVuIHlvdSB3b3VsZG4ndCBuZWVkIHRoZSAiZWxzZSBrZnJlZSIgYnJhbmNoIGJlbG93
Lg0KQWxhbjogTm8sIG9uIGxlZ2FjeSBwbGF0Zm9ybXMgd2UgZG8gc3VwcG9ydCBQWFAgY29udGV4
dC9idWZmZXJzIHdpdGhvdXQgSHVDIGxvYWRlZC4gU28gd2UgY2FuJ3Qgcm9sbCB0aGF0IGluLiBC
dXQgaSBnZXQgdGhlIGludGVudC4NCj4gPiBFc3NlbnRpYWxseSwgY2FuIHlvdSBjcmFtIG1vcmUg
b2YgdGhlIHN0YXRpYyBjaGVja3MgaW50byBweHBfZmluZF9zdWl0YWJsZV9jdHJsX2d0IGFuZCBp
ZiB0aGF0IG9uZSByZXR1cm5zIGEgZ3QsIHRoZW4geW91IGRlZmluaXRlbHkga25vdyBpOTE1LT5w
eHAgbmVlZHMgdG8gYmUgYWxsb2NhdGVkDQo+ID4gYW5kIGp1c3QgZGVjaWRlIG9uIHRoZSBmbGF2
b3VyIG9mIGluaXRpYWxpc2F0aW9uPw0KPiBJIGFtIG5vdCBlbnRpcmVseSBzdXJlIGFib3V0IGhh
c19weHAgYnV0IHdvdWxkIHRoaXMgd29yazoNCj4gDQo+IHN0YXRpYyBzdHJ1Y3QgaW50ZWxfZ3Qg
KnB4cF9maW5kX3N1aXRhYmxlX2N0cmxfZ3Qoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
DQo+IHsNCj4gLi4uDQo+IAlpZiAoIVZEQk9YX01BU0soLi4uKSkNCj4gCQlyZXR1cm4gTlVMTDsg
LyogQ2FuJ3QgcG9zc2libHkgbmVlZCBweHAgKi8NCkFsYW46IEZvciBNVEwsIHdlIHdpbGwgd3Jv
bmdseSBmYWlsIGhlcmUgaWYgd2UgY2hlY2sgcm9vdCBndCAoYnV0IG11c3QgY2hlY2sgcm9vdC1n
dCBmb3IgcHJlLU1UTCksIHNvIHRoaXMgY2hlY2sgd291bGQgbmVlZCB0byBnbyBpbnRvIHRoZSAi
Zm9yX2VhY2hfZ3QiIGJlbG93IHRvIGNvdmVyIGJvdGguDQo+IAllbHNlIGlmICghaW50ZWxfdWNf
dXNlc19odWMoLi4uKSkNCj4gCQlyZXR1cm4gTlVMTDsgLyogRGl0dG8/ICovDQpBbGFuOiBTbyB3
ZSBjYW50IGFkZCB0aGlzIGZvciB0aGUgZXhpc3Rpbmcgc3VwcG9ydCBsZWdhY3kgY2FzZSBhcyBt
ZW50aW9uZWQgYWJvdmUuDQoNCg0KQWxhbjogW3NuaXBdDQoNCj4gaW50IGludGVsX3B4cF9pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiB7DQo+IC4uLg0KPiAJaWYgKElTX0VO
QUJMRUQoQ09ORklHX0RSTV9JOTE1X1BYUCkgJiYgSU5URUxfSU5GTyhweHAtPmN0cmxfZ3QtPmk5
MTUpLT5oYXNfcHhwKQ0KPiAJCXB4cF9pbml0X2Z1bGwocHhwKTsNCj4gCWVsc2UgaWYgKGludGVs
X2h1Y19pc19sb2FkZWRfYnlfZ3NjKC4uLikpDQo+IAkJaW50ZWxfcHhwX3RlZV9jb21wb25lbnRf
aW5pdChweHApOw0KPiAJZWxzZQ0KPiAJCVdBUk4oMSwgIm9vcHNpZSIpOw0KQWxhbjogaSBnZXQg
eW91ciBwb2ludCwgd2Ugd2FudCB0byBkZWxheSB0aGUgYWxsb2NhdGlvbiB1bnRpbCB3ZSBrbm93
IGZvciBzdXJlIHNvIGRvbid0IG5lZWQgdG8gZnJlZSBpdCBiYWNrLiBJJ2xsIHRoaW5rIGFib3V0
IHRoaXMgYW5kIGdldCBhIHJldi0xMSBvdXQgd2l0aCB0aGUgZXhpc3RpbmcNCmZpeGVzIGFuZCB3
ZSBjYW4gY29udGludWUgZnJvbSB0aGVyZS4gSSdtIGFzc3VtaW5nIGtlZXBpbmcgaW50ZWxfcHhw
X2luaXQgY2xlYW5lciBhdCB0aGUgcmlzayBvZiByb2xsaW5nIG1vcmUgb2YgdGhlc2UgcXVpcmt5
IHJ1bGVzIGludG8gaGVscGVycyBsaWtlIGZpbmRfcmVxdWlyZWRfZ3QgaXMgdGhlDQpwcmVmZXJl
bmNlLg0KDQpBbGFuOiBbc25pcF0NCj4gUC5TLiBzL3B4cF9maW5kX3N1aXRhYmxlX2N0cmxfZ3Qv
cHhwX2ZpbmRfcmVxdWlyZWRfY3RybF9ndC8sIHRvIHNpZ25pZnkgaXQgbWF5IG5vdCByZXF1aXJl
ZCBldmVuIGlmIGl0IGV4aXN0cz8NCkFsYW46IHNvdW5kcyBnb29kLg0KDQo=
