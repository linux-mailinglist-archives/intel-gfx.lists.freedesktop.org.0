Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A1D6424CE7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 07:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DC2F6E830;
	Thu,  7 Oct 2021 05:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D08C6E830
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 05:54:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="287055342"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="287055342"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 22:54:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="439401269"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga006.jf.intel.com with ESMTP; 06 Oct 2021 22:54:51 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 22:54:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 22:54:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 6 Oct 2021 22:54:51 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 6 Oct 2021 22:54:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kWiDmjr8v6AbvfDKdPRB7U/uDhTT0Tk8zelw9bOIohWHn6FmtG6c+IejuUS/ojenTxlyfgku5Tal1Us6kSgFCX6LwNbaZRFcU0Z017v6gF5b1QZD+WXX5PPdtVFcm0RU+lkszbg0XpkC0E7DZlFr9vk/lmDdtbWnJC6EPTKwMnMRDLNmpH/bYvqVoJQX0EnlvyIQqrUzx3ySRx45csTk7FeejXgzEa0Uj9IUxJ6ckXf+VQZELOvnN+yyVapbKZ0J1yP10qQd/UpJRrFB8/AVbo/imUxzZovHZat+r4CIKOyOzsIzVsahP/cCkz1o9tuSeVsYRt5uKdyO0Zqbr2oiiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3eP5Wn1saVza/dzcOTMcLA2/hqQktm4W8AjHB0Uepw=;
 b=XQuKN6HG6fd2H7y5e4h3lDRTlaQwdvtPRAS6/0QhLVMoTz0Q4OxjagQwJ689V5OYz1GbJcL1xH1SXwaRlUdoUafYOffLDeYwR/imJpB0SS+dyKwee+pjAPa90febkSKE0zdEx063FMVBV3k5KKoD8xrrGg5mNHtaAzAokX58U77jR4pun4hDckhrO6nsW+LZq9UZgPC2cxVI3z0LduA6u5qAzg5dGVdJOAlWN4oKYoBdq48OnxgCgV2+ixugMf0vLg+r9ocqNTOWJZN6sy+KKxPIvzEmMeTdnkhV+dWG2vncJeak7O5ycB2sWjfCLD2p7iSomfIS/PZyZ7ZX0i908g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3eP5Wn1saVza/dzcOTMcLA2/hqQktm4W8AjHB0Uepw=;
 b=mn1j3E1yqj7ZcXiNqlyVXCn+Q82BMBfxk6f08yIOWmgXBEgrvkJ/3jAhlD5NuH6cChNLHZd+OQccZwqKilbhGcKZyTK9EBMoxq2riFMRenLi5qps2QfzGo8/SnG/7i/puxnWARGyVU0Nx5dafWgVusyPOud5G5kYcuNFzSSUX5Q=
Received: from CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 by MWHPR11MB1405.namprd11.prod.outlook.com (2603:10b6:300:21::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.19; Thu, 7 Oct
 2021 05:54:47 +0000
Received: from CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd]) by CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd%9]) with mapi id 15.20.4587.020; Thu, 7 Oct 2021
 05:54:47 +0000
From: "Li, Juston" <juston.li@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Thread-Topic: [PATCH 3/4] drm/i915: Remove the drm_dbg() from the vblank evade
 critical section
Thread-Index: AQHXuw3sJ3K+YTOEyE6w07yO4ho5dKvHCY0A
Date: Thu, 7 Oct 2021 05:54:47 +0000
Message-ID: <543f72e4e7d2ca4c9f925b549d7f7d4511a1f71c.camel@intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
 <20211006235704.28894-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006235704.28894-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a5492c6-ef65-4fc9-ddef-08d98956f885
x-ms-traffictypediagnostic: MWHPR11MB1405:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1405BB03122748EFFF82BBE5FDB19@MWHPR11MB1405.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2512;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xdRaeGBzbufS0di/YmuHCz4MZs7RbMYLcuePMzSyhNkHp7D5vPNRY36H5leebZ4+fuS39VvAFlz/VUSGBk4r0EjALsXjUUIXjv/jp+MFwhBRFAfC/5uKo+pyZimEf3MtlE2Y1ro5uMegGX2wrSlXr/lf8t/BAOWn6bzZJFSe+X5tFgcdUPt+LA1pufd2XIkf1ZZEfEwpA+INKdKn40BjC9n0b/m2li4JOm1SGNY+Dp9sSJR0Y25LOoJDI10bH+DdfwzNSv9C3o0KWTGlIDLXnhwIp/auy/X1nKpo9LOSoP+wbAGUHcqsCIf033ZKVbMluLVdeMGZtkV2Sh7SZglkod2b1YTubHaQ2A5o35XI9yROHuclBR2EeAJEbAxLUedFsRelcMFQHR68bkx7wBMYsaTLKvLoAQE3TtGal5rgZgVz80/xqPEIbC+tsfqaQXEmJ/RULlGQ0uMbMgU3v17ZJ7qa9w+Gr8tU80AG6eUcVxaRcbmrvjZ7qsYlkGM27Draiq3OZp18POyI1SEp8Q6v+tCaiYsdg9P5VcLeAhAmZNgvjmdOTXw+CycumpC5XCUxsUrtTUKrquig74+vZhAStLBWR3QMMWUQIKAd/qsb0nH33yqj+0Z69qiYhJQ4BZzcXFNqntKZ6khSyAzvj15vh9WXFwFJ0OTc22qEFBdCJhlcJmS/J6Eh0PqRs6WqQiTfQVDEMjQNrYXSLksbUDtaNg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4833.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66556008)(66476007)(66446008)(64756008)(2906002)(86362001)(76116006)(6506007)(66946007)(8676002)(36756003)(6486002)(83380400001)(8936002)(2616005)(508600001)(5660300002)(54906003)(186003)(110136005)(316002)(4326008)(26005)(71200400001)(122000001)(38100700002)(38070700005)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q28zSjFrejZwMnN0dWtBT2ZyZEhxZGdpWENYSzArUUluOGZ5eWZjdUJrcXd0?=
 =?utf-8?B?ZW9JK292Z1VjTVpXSmNmMXV5MWprTGU4V3FjM2VZZVNWUUxmalk3V0hEV0Rh?=
 =?utf-8?B?MmVkRHdReGxIVzdDUHNWQ3VLTXQ3R3NlMExJNmVMeTdlMXY2MnNYeWJkZkRp?=
 =?utf-8?B?TVM5akpZbU1jQkVaeXRXd1ZmdGRQR3JBbTRLcHRJSjBPcHMxOWtpbUswMmdB?=
 =?utf-8?B?cnRPWUM4WWVYZ2JOdEQ4emRnY0llODA4YXhoa0QyMWdobHFkcmJnamRFdk40?=
 =?utf-8?B?MmYyNkV3cThmMjhjQzl6cFU2bmZXMUoxUmZtTFdtNTVXWWU0c3JQNlA3OG1Z?=
 =?utf-8?B?WFlIWGpESmNaRlVZeWZXUVFIT0Q5cjN2elRuelFCTm1kSDdYZDN0WTZDVXJK?=
 =?utf-8?B?VUhheWFDZ1k5MkRZbjVZSkYyQVNYQTFRcHNJSnJJNjBBMUJQekVQdkdxM1hW?=
 =?utf-8?B?Wm5ZbzFqOC9CTTJtV2V3TkRLWFFyQXlSdVdSdkJYQTFmbTJ4Z3E1bXRSSG8w?=
 =?utf-8?B?cTdVSThEQXJXM1QxMTVqWVh5K1NRVUkxQkVyNGJDOVVLT0crdDlBcjhpRXhy?=
 =?utf-8?B?RFZHQTEwRUFoVldPbnluVFRXWlhIZktaOTg4cHJhZlJaYllpVFkxM3B3UCsx?=
 =?utf-8?B?MVBXekd0SmFxVkd5aVd4dEhJZ2xGNGFYUUw5TXVmWWZSQUNRMUNQalkxejFp?=
 =?utf-8?B?UytvMnNXbUJGZ01SSisvdU8yMTF2V2Vtd2M4cllCSE5zem5Lb2JXOExSZ0tw?=
 =?utf-8?B?U1VMOWliSVEvMHc2MnduejdIUjkyTUQvQlNEVmdrZTlYN2RQaCtKdkkxOXdU?=
 =?utf-8?B?VmJMcmhVVE9JZEZrdnNsTnpGSDgrZU5NTWRzdHZiWC93VXVPR01yc2lobTcw?=
 =?utf-8?B?V095VDB4ZTNJL3Q4UDhBVndkeEtWTjRaYjNESStmRCtZalZvZjF4aFdVc1Iz?=
 =?utf-8?B?YndBS0dsRENhZmY5d1VKc3FYVDdSb2hsTFRKcnVOdDNpUU1kRlhUa1NTdWRW?=
 =?utf-8?B?YVZlY25ZcVVwbytFaCtYeTJvVTcxcEgzZkxRdkcxTXMzbjloTTFTQnBvNXAw?=
 =?utf-8?B?Q1ZPbHIvTXdoeHEwQ2VxN2t2ZWd3UFJFUTc3YnlaNFMvUG9ZRHNyeEV4WmlY?=
 =?utf-8?B?T09RcGk1SzlHUHJDUVdlTmhQV0FvbHo3OVhuT1A1STFDQU5kY3FkdDhJbzlC?=
 =?utf-8?B?cUZCOUJRR3hBMS8wVkpQOHpzYlBXUzBSRUFjY0dBZDNPUUViSUdwcjJqK0gv?=
 =?utf-8?B?dkJkN0FNZTFHMlZoTVp3RkY1RmNHUUJDbGlheGRHSzJXeDJNcmFaS2VSR1FH?=
 =?utf-8?B?VjBXK0RhdC9CWWtMbm95RzNyUGl5NTBLbmNHMDZtNjBqcHplRFZVV0FDWXBO?=
 =?utf-8?B?TzN0cjdwUzBzZDZlQmpCb3Uxblg0K2UrcmRKVGduUnRhbkMxR1RlOG4wcmMr?=
 =?utf-8?B?bUd0Sjc5L29PbENOT1pob0RNQnlmSE5ZZjM0bERNbW1mSkdnRkN1Tk5RSEQv?=
 =?utf-8?B?M1JIelpFVEtLbUs4T1hkVEFMR3kzTW1EeGo4aGYvQmorUjNJYTVDNVJTdUtq?=
 =?utf-8?B?ZVE3OC9wbFdycFVYOGFUQXE1dE1NNkJDMk02cVFZS3I0Q1UyRVlISWVEK0Fq?=
 =?utf-8?B?YmQ2QlY5ZllXRld3YnBDbk54WElEcEg4YmRVa0NYengyaUFVbURpRmFHZkJB?=
 =?utf-8?B?NlNMbHdpTzBMK1piNDZGUmRacjM5bnRjQWZENFNXWEtNRkVYYUVsdm5JRVJB?=
 =?utf-8?B?N2JRMEg4aGhHdUU3UXVrZ2xNSjFrQnFtZnRGdlFqZzhwWTJiZVpjUEdCcHFG?=
 =?utf-8?B?cW9JWE5KQkxqTVRIKzRDdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <EEEEE03CE3A8384FBF8E79CFE0CDDE17@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4833.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a5492c6-ef65-4fc9-ddef-08d98956f885
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2021 05:54:47.8345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KSiRpznbt32ggu36Jb6Ty7gSBpO+LAXArmDsyAASktFfYTJ2GelUFHpmDu2RWBtZpfMvSk/FpbW3fAQYQyue3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1405
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Remove the drm_dbg() from the
 vblank evade critical section
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

T24gVGh1LCAyMDIxLTEwLTA3IGF0IDAyOjU3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgYXJlIGluc2lkZSB0aGUgdmJsYW5rIGV2YWRlIGNyaXRpY2FsIHNlY3Rpb24gaGVy
ZSwgcmFjaW5nDQo+IGFnYWluc3QgdGhlIHJhc3RlciBiZWFtLiBUaGVyZSBpcyBubyB0aW1lIHRv
IHByaW50IGRlYnVnDQo+IG1lc3NhZ2VzLg0KPiANCj4gQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNo
dW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5p
ZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPg0KPiBDYzogSnVzdG9uIExpIDxqdXN0b24ubGlA
aW50ZWwuY29tPg0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0K
PiBDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2
aWV3ZWQtYnk6IEp1c3RvbiBMaSA8anVzdG9uLmxpQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDIgLS0N
Cj4gwqAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGluZGV4
IDU1ZGFlOGM4ZmNhZC4uMWU4NWVhOTgyMzFmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBAQCAtMTAxOCw4ICsx
MDE4LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfbG9hZF9wbGFuZV9jc2NfYmxhY2soc3RydWN0DQo+
IGludGVsX3BsYW5lICppbnRlbF9wbGFuZSkNCj4gwqDCoMKgwqDCoMKgwqDCoGVudW0gcGxhbmVf
aWQgcGxhbmUgPSBpbnRlbF9wbGFuZS0+aWQ7DQo+IMKgwqDCoMKgwqDCoMKgwqB1MTYgcG9zdG9m
ZiA9IDA7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJt
LCAicGxhbmUgY29sb3IgQ1RNIHRvIGJsYWNrwqANCj4gJXM6JWRcbiIsDQo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfcGxhbmUtPmJhc2UubmFtZSwgcGxhbmUp
Ow0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NT
Q19DT0VGRihwaXBlLCBwbGFuZSwgMCksDQo+IDApOw0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxf
ZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19DT0VGRihwaXBlLCBwbGFuZSwgMSksDQo+
IDApOw0KPiDCoA0KDQo=
