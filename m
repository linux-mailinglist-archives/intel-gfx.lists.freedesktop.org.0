Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 650DF68977E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 12:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64F310E763;
	Fri,  3 Feb 2023 11:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F9E10E763
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 11:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675422573; x=1706958573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Sy+xKuHIVET4yG51mV41oua+eg1kK28aEuNFNTaPNF8=;
 b=lrgwOzws0Hbko/K9KELJY9g6+bJu+h7e+BCV0lsuRfG7DgAQM6DEJ3rb
 D5uqS7fafe2WbGfu60rOrQS6rCSl0JWXtOGznIrq/NkvCF+Fu9Es9fEpl
 AvfUKjQSRO4Zs1EVfI/dQA0PwbKhdzfjSjrAuE+cLvBL0yIXXX5l1UCqF
 foo1OgLgTkFwbk/1dJdaDnZ5ZKPLhq5XWyEY22d5T2lxVjrkqXIGhBe4Q
 PZB4S60YbqS1ggUUqbOBjNfERrABh6ep7CFgPlq/yNHbMJl0iyJefoowF
 Y2R5n3uMpbi4oJ3hnZZQzmkapAGAX+f6mUh6lYByhPLZT93ICCTd4ixEt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="328736672"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="328736672"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 03:09:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="911125500"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="911125500"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 03 Feb 2023 03:09:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 03:09:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 03:09:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 03:09:31 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 03:09:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BxE2BwkzhlAa73464ZmwUsnqfF5yBHla2m24dP4xrajTn9/X6sYu0SbDz9xmAxAyTAFaphKXqWu+SQ4GjyXmj4SYPRn2tukK00B2Qna7ZzJpwS0VRdNI9VL4VAJ7v1oycqTtzd7Vn/aueR1uCInINMAjpj/RdIEmD2HIRILDU0z1ENa1FzcuHZFMOAzsiQC5VFx/wRh4mXd/NaGT7NAJ2/dovGZ5Hvp28pgrR/bxbJ2oj+OxnZnk5HTYYEwlEPCTd7R3c14PFW276DIoJ/SkJ+rkfHPYfi3DGbvLOJNPyXHDp33Cb5E4zQGFXRIKc4vKfjZL1Vr8Odf/0QrxcPnY0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sy+xKuHIVET4yG51mV41oua+eg1kK28aEuNFNTaPNF8=;
 b=NI8YsaODP3Ku/nmoQnrQ17ibiwNHMqPHqZA03f86AzRwjzBhIeJPhkCFTcX9t87TNI4wbTB8RDgnJVoitjFGYRxUvJ2Wl0p4Vl2lx6sOlPGndjCRtvMqSPqzqRlLl7mhW6MOmbKXTaqaUyuDGjHAnArP47DbDDO6L/8fG6oUR1ANiWgxVhJTJ/Z/NowpZSPaA7RBfUmuePh46aADzSoHLKe/SybyCwxQ20y13BTS///tMZIvQOGJxFSgq9SyrCmQsO1W4f5CWRRig/6xYld3cEs8jG1JKtWIGwlPxNbb/gthSYccTNqwSfK/ZyfxG3u7eNQFOYAEgSBAjlnzHNdqFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6121.namprd11.prod.outlook.com (2603:10b6:208:3ef::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24; Fri, 3 Feb
 2023 11:09:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%6]) with mapi id 15.20.6064.024; Fri, 3 Feb 2023
 11:09:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/fbdev: Implement wrappers for callbacks used by
 fbcon
Thread-Index: AQHZL9PHkiyOwbIUTEKBP1QsoS39q66tfs4AgA9hywCAADg6gIAAB2qA
Date: Fri, 3 Feb 2023 11:09:14 +0000
Message-ID: <34acb54641ae07a159ae9d33b660328cf16c1b23.camel@intel.com>
References: <20230124091046.2500682-1-jouni.hogander@intel.com>
 <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
 <29978ffbbffd810a380c8d0606fffb31c8f007dd.camel@intel.com>
 <Y9zlIV3Yt6apP8o9@intel.com>
In-Reply-To: <Y9zlIV3Yt6apP8o9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6121:EE_
x-ms-office365-filtering-correlation-id: 5037f286-6177-4d46-d582-08db05d715f9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7V0gdrLhAWJ++LqMhfkVdGwKuBg/GmxrqDMSVU8okuTAKKiCJJo9cgn/Vj2Pe7y41HbqGQ3odAQvv0uzeo4Lwmq9atHjjlZxm4ms7D37H0OOztjR0PFLBPLnk1mXe1ZZq+BvpEIWNxdfNDVQEzRtiRZsgTO05hVmllxD+R0uFjmPX/cJRtiEn3nW8Sza50KRs33IQXkHZ5SQ7StDaZLNmiRxp4h5ZCs7AnwVzC37U3gouqG33Tq6cgEzIv18mHgRCk5CczQAgdUqYNAEvyeQNfSUCcLZq7cS4M91mFF0HfWqvH53mYT6Vf0vq6ISU6X5GgXfNpHCsMw1FQc697poPSxQC1Xr7KBgXvlSO5OUM3zKWZn1KEoCXj8ctkHuqtR5Jx7TBH1Do/2UrDDq4cDYet9LuO70nuFz0JM0hynb+2kkYFfJsHFbuEKNMCxZagaAwaj5sgatQVCSKimyvoc6pOecHoxwPsvFtRMWfy6y4brulEuF6wVrRQKWF4OEXxNlxKGcfgjOy6n6kPRp/Fm+pKvpnplUn7IFQ7kKHoKd/2wMKIzOAJbMl6qPenaT9TEJYryfHttucERXnaWXM81d8jAMcVDHTaR4RTpofbVvd5fY53EWwM0u3EHFmHvnwAEgH1zVasuXilL7JuYMHQFHmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(346002)(39860400002)(396003)(136003)(451199018)(186003)(26005)(38070700005)(6512007)(66446008)(66946007)(76116006)(4326008)(91956017)(966005)(66476007)(6916009)(6506007)(66556008)(64756008)(2616005)(41300700001)(122000001)(8936002)(8676002)(38100700002)(5660300002)(71200400001)(478600001)(6486002)(86362001)(82960400001)(316002)(2906002)(66574015)(36756003)(54906003)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MTczdE9malhtZGdiTVB4T09ERVFTSlZYd3l4cEpFSjJKdjJZVE9qbDM1clox?=
 =?utf-8?B?NjBJcmt2d0M3b2tSOVZlNHJ2ejZUSW9tSXJkdk0wZG1BaW1mSkZUbXozR2dv?=
 =?utf-8?B?blN3azdkaGRFUHVlMjE2M0FiUWhZZThzN0tadk5vU2ZPQ2R1WmoxZmZHeGo2?=
 =?utf-8?B?M1BLd1dUNHhvQy9UaTBsLzJWaEZzcTRhVS84cFpKUWhNYjBYT3dDMlZxM1JE?=
 =?utf-8?B?NUJQNCs5bGxYU2xEeExrb3c2QVlPRmdUczdRQTg5RVFUZFZSSlFoMGFseSs0?=
 =?utf-8?B?UGc3NmRHTmt1K2xjQytDVVZhYmRWbnBybFRPTFYxQ3VBUm45UkRUcFloMWtC?=
 =?utf-8?B?cWpqQjZzOTRlcCszT0F2cHVRbGFZZ1N6TEtPRkJEMkhUdUVRbUVuOEFZTWxM?=
 =?utf-8?B?Z1lubnVySWNLU0VPbW9ySit0UFZTRWIra0RzcDA2NWMzajEySXIrM3BSSFJJ?=
 =?utf-8?B?dzJ0RUR3MlVpeXBOWmQ0aHBsU3lXOXZ5QnVPL1lIbFk0TGFZVWZETDM5SlpK?=
 =?utf-8?B?a1Z3YW5xRDlPcHNDaWJmd045Nm5vS1NueGRHU3FCTEZWQTRpckJMTFRhc0xh?=
 =?utf-8?B?T1lvZCsxWWhBaEUzVVFyZFBuZ2NYWUVML2JYSU9QVWc2dnhzWEF3a1ArUWNQ?=
 =?utf-8?B?THdLUHkvMFpXY0N6RDlNSEVuNXdmNHFHZXI2Q3ljU0llMFh1T2YxQlQvV2M4?=
 =?utf-8?B?TzdMQTdQcVVmY2k0WTMvdzhZeFNaZWVRZnFRSGtacWhGVkpGaHBsd0RYbVJV?=
 =?utf-8?B?U0FuUW5QZFRGajJpMi9NOWN2WUN1T3M3TXdyZVpUTlRyYmUreW1OdG9QZEEz?=
 =?utf-8?B?TUlIRGFGRWJ5U1NyczF2aGZZQURuSzg0aDJQRjRranhwTjRoS3VPQkkrRG44?=
 =?utf-8?B?TXNuYmNENVBhV2F4U3JIanBWUWVuYWdRSkI3WW5meWFOd1lBNis3SEhyZmZF?=
 =?utf-8?B?UXRQUjBjOHVBVFNEVEgzTWZHMy92NFVRclgwN2ZtWTMwU0Vrd1FPc3JrcXBa?=
 =?utf-8?B?Y0lxenl0WEtjTWl5NE1QYlJJMXUwTkg4VEMxcFYxYVNqNGxzWEFQUlR0Zzd4?=
 =?utf-8?B?RzlBcnF2MW5RT2VUY1pLbzZYbjV6QnFuSGJSdE9DU015ZVVab3NTeVd4ZkVi?=
 =?utf-8?B?cVdnWnVySnVxSzdtYmNqNFlOTWlub1lUaHExMzJYTmtOZUZ5VzRWVDdtVXBR?=
 =?utf-8?B?VkE4NDNkK0k5YzdQVWdGMHZTRlZUK1NHUDczYWlsWjRwL2w2WTFXNVhDOWxv?=
 =?utf-8?B?M05DVVU1ZGg5QnF4N2x2eFFNT0xrNlRxVjh3OG9Va1JadnlFSlFjK1BmZW5y?=
 =?utf-8?B?aldOdi91V0ttdmFSNEN4aFNTMUV6MjgxazFzVlcyRm1pTU1TMEJaQUxUZmE5?=
 =?utf-8?B?QWRXdFQ3M2orcGlvUDc2S2FNcjZ3YndsOGdKQml1ZW5KN21qTGdicTFOSDdr?=
 =?utf-8?B?WjZPQnBiN25LV1V3bXhhN2RZSDhydkhyV1JJNFRmN2drNFBPWVhQbWU4WnRt?=
 =?utf-8?B?NFRPNDZXNnArcnRMYkNtVExTeFNaQitMVkhBcEEybklxV0s5SmU2RktjaDF1?=
 =?utf-8?B?cnV4TlNIcms3dzFmc0pCTmpUcmZ0NjM4aEowTDZubUV5eVkvQlc1dy9zM0E2?=
 =?utf-8?B?QUhkT3FLc1VsQW5PMUZWMDU4Uy9MRGFUazF2dDRiK2E4ZjlDNVdLSUZyTzhV?=
 =?utf-8?B?M1E3N1lDTE1QcnVJbmtNc2tVOGNmNzYzTzhlTU9hQUE0dXhvL2xLVjJBN3pP?=
 =?utf-8?B?MXhxa3JId3B4VlROSURmUVd1bUd4TFNBRlg0UDNHaWVISGN3cVhrRjRwVWR3?=
 =?utf-8?B?Y1lCT0tvUVZVMXc0U3BMQVpHWkZaQlZDcHh4ODF6Q2FZOG1TbGlxd3FMSWpm?=
 =?utf-8?B?VTUxTDArZFRmbjdwOUM5NzZ5eXMwWWRCM3lRS0FpN1QrY2hhbitXZmNOSkpn?=
 =?utf-8?B?UVg1UElJVkJ2WXYvRmhNMnhpZ2V3Z1IzSTN6QStxOWc1OEVtcFBuRU9GRUhJ?=
 =?utf-8?B?MW4yZ1NpaWdjTUhwcUdla3Vjdm5aTVNIeWRWSEdLY3R2S2NIQXNCYWV2VDBK?=
 =?utf-8?B?NnRuTGt1Ym84bkQzYThhL1VJaHlPMlZ2aFRObGdwQjFkaXdTLzJmOEhRaS92?=
 =?utf-8?B?eXM5TTVqRXpIOSt4VVBWWkVEL1BVU2sxY0xiZlZWNnNMTldsRlJsSXFXaFhs?=
 =?utf-8?B?MGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DF6F240F1A1DF1468129A30E63B302F6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5037f286-6177-4d46-d582-08db05d715f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 11:09:14.7547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hh+n9fUir3kPkSpgRqFC3LMoqSW/QqNXIphz6AfxS/qghQKk/v30+EQD4c/y75HUIs2dBJTX/1sRCoUuYPClfYi7+KiMH++QcNMJn7hTjco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for
 callbacks used by fbcon
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTAyLTAzIGF0IDEyOjQyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRmViIDAzLCAyMDIzIGF0IDA3OjIxOjI3QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBUdWUsIDIwMjMtMDEtMjQgYXQgMTM6MjcgKzAxMDAsIFRob21h
cyBaaW1tZXJtYW5uIHdyb3RlOg0KPiA+ID4gSGkNCj4gPiA+IA0KPiA+ID4gQW0gMjQuMDEuMjMg
dW0gMTA6MTAgc2NocmllYiBKb3VuaSBIw7ZnYW5kZXI6DQo+ID4gPiA+IEFmdGVyIGRpc2Nvbm5l
Y3RpbmcgZGFtYWdlIHdvcmtlciBmcm9tIHVwZGF0ZSBsb2dpYyBvdXIgZGlydHkNCj4gPiA+ID4g
Y2FsbGJhY2sNCj4gPiA+ID4gaXMgbm90IGNhbGxlZCBvbiBmYmNvbiBldmVudHMuIFRoaXMgaXMg
Y2F1c2luZyBwcm9ibGVtcyB0bw0KPiA+ID4gPiBmZWF0dXJlcw0KPiA+ID4gPiAoUFNSLCBGQkMs
IERSUlMpIHJlbHlpbmcgb24gZGlydHkgY2FsbGJhY2sgZ2V0dGluZyBjYWxsZWQgYW5kDQo+ID4g
PiA+IGJyZWFraW5nDQo+ID4gPiA+IGZiIGNvbnNvbGUgd2hlbiB0aGVzZSBmZWF0dXJlcyBhcmUg
aW4gdXNlLg0KPiA+ID4gPiANCj4gPiA+ID4gSW1wbGVtZW50IHdyYXBwZXJzIGZvciBjYWxsYmFj
a3MgdXNlZCBieSBmYmNvbiBhbmQgY2FsbCBvdXINCj4gPiA+ID4gZGlydHkNCj4gPiA+ID4gY2Fs
bGJhY2sgaW4gdGhvc2UuDQo+ID4gPiA+IA0KPiA+ID4gPiBGaXhlczogZjIzMWFmNDk4YzI5ICgi
ZHJtL2ZiLWhlbHBlcjogRGlzY29ubmVjdCBkYW1hZ2Ugd29ya2VyDQo+ID4gPiA+IGZyb20NCj4g
PiA+ID4gdXBkYXRlIGxvZ2ljIikNCj4gPiA+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiA+IENjOiBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4gPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBUaGlzIGlzIHRoZSBiZXR0ZXIg
c29sdXRpb24gd3J0IHdoYXQgZmJkZXYgd2FudHMuDQo+ID4gDQo+ID4gVGhlcmUgd2FzIGEgZmFp
bHVyZSBmcm9tIHRlc3Rpbmcgcm9ib3QuIGRyaXZlcnMvdHR5L3Z0L3Z0LmMgaXMNCj4gPiB1c2lu
Zw0KPiA+IHNwaW5sb2NrIGFuZCBpbiBvdXIgZGlydHkgY2FsbGJhY2sgd2UgYXJlIHRha2luZyBt
dXRleC4NCj4gPiANCj4gPiBEbyB5b3UgaGF2ZSBhbnkgc3VnZ2VzdGlvbnM/IFNoYWxsIHdlIGZh
bGxiYWNrIHRvIG9yaWdpbmFsIGZpeA0KPiA+IHdoaWNoDQo+ID4gd2FzIHNldHRpbmcgdGhlIGRp
cnR5IGNhbGxiYWNrIHdoZXJlIGNhbGwgaXMgbWFkZSBmcm9tIHdvcmtxdWV1ZT8NCj4gDQo+IFBs
ZWFzZSBqdXN0IGZpeCB0aGUgb3JpZ2luYWwgcmVncmVzc2lvbiBhcyBzdHJhaWdodGZvcndhcmRs
eSBhcw0KPiBwb3NzaWJsZS4NCg0KSGVyZSBpcyB0aGUgb3JpZ2luYWwgcGF0Y2ggYnkgbWU6DQoN
Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTExNDMzLw0KDQp3aGlj
aCB3YXMgZXZlbnR1YWxseSBuYWNrZWQgYnkgVGhvbWFzLiBNYXliZSB3ZSBjb3VsZCBjb250aW51
ZSB3aXRoDQp0aGF0IG9uZSBhbmQgc29sdmUgdGhlc2UgcHJvYmxlbXMgd2hlbi9pZiBmYl9kaXJ0
eSBpcyByZW1vdmVkPw0KIA0KPiANCj4gPiANCj4gPiA+IA0KPiA+ID4gQWNrZWQtYnk6IFRob21h
cyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiA+ID4gDQo+ID4gPiBCZXN0IHJl
Z2FyZHMNCj4gPiA+IFRob21hcw0KPiA+ID4gDQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA1Mw0KPiA+ID4gPiArKysr
KysrKysrKysrKysrKysrKy0tDQo+ID4gPiA+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0OSBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPiA+ID4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPiA+ID4gPiBpbmRleCAxOWYz
YjVkOTJhNTUuLmIxNjUzNjI0NTUyZSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYw0KPiA+ID4gPiBAQCAtNzcsNiArNzcsMTgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZmJkZXZfaW52YWxpZGF0ZShzdHJ1Y3QNCj4gPiA+ID4gaW50
ZWxfZmJkZXYgKmlmYmRldikNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2Zyb250YnVm
ZmVyX2ludmFsaWRhdGUodG9fZnJvbnRidWZmZXIoaWZiZGV2KSwNCj4gPiA+ID4gT1JJR0lOX0NQ
VSk7DQo+ID4gPiA+IMKgIH0NCj4gPiA+ID4gwqAgDQo+ID4gPiA+ICtzdGF0aWMgdm9pZCBpbnRl
bF9mYmRldl9kaXJ0eShzdHJ1Y3QgZmJfaW5mbyAqaW5mbykNCj4gPiA+ID4gK3sNCj4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9mYl9oZWxwZXIgKmhlbHBlciA9IGluZm8tPnBhcjsN
Cj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqAgKiBJbnRlbF9mYiBkaXJ0eSBpbXBsZW1lbnRhdGlvbiBkb2Vzbid0IHVzZSBkYW1hZ2UN
Cj4gPiA+ID4gY2xpcHMgLQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAgKiBu
byBuZWVkIHRvIHBhc3MgdGhlbSBoZXJlDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiA+
ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KQ0KPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5
KGhlbHBlci0+ZmIsIE5VTEwsIDAsDQo+ID4gPiA+IDAsDQo+ID4gPiA+IE5VTEwsIDApOw0KPiA+
ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+IMKgIHN0YXRpYyBpbnQgaW50ZWxfZmJkZXZfc2V0
X3BhcihzdHJ1Y3QgZmJfaW5mbyAqaW5mbykNCj4gPiA+ID4gwqAgew0KPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgc3RydWN0IGRybV9mYl9oZWxwZXIgKmZiX2hlbHBlciA9IGluZm8tPnBhcjsNCj4g
PiA+ID4gQEAgLTkxLDYgKzEwMywzOSBAQCBzdGF0aWMgaW50IGludGVsX2ZiZGV2X3NldF9wYXIo
c3RydWN0DQo+ID4gPiA+IGZiX2luZm8NCj4gPiA+ID4gKmluZm8pDQo+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ID4gPiDCoCB9DQo+ID4gPiA+IMKgIA0KPiA+ID4gPiAr
c3RhdGljIHNzaXplX3QgaW50ZWxfZmJkZXZfd3JpdGUoc3RydWN0IGZiX2luZm8gKmluZm8sIGNv
bnN0DQo+ID4gPiA+IGNoYXINCj4gPiA+ID4gX191c2VyICpidWYsDQo+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
aXplX3QgY291bnQsIGxvZmZfdCAqcHBvcykNCj4gPiA+ID4gK3sNCj4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgaW50IHJldDsNCj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqByZXQgPSBk
cm1fZmJfaGVscGVyX2NmYl93cml0ZShpbmZvLCBidWYsIGNvdW50LCBwcG9zKTsNCj4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgaWYgKHJldCA+IDApDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9mYmRldl9kaXJ0eShpbmZvKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiAr
wqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+
ICtzdGF0aWMgdm9pZCBpbnRlbF9mYmRldl9maWxscmVjdChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywN
Cj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGZiX2ZpbGxyZWN0DQo+ID4gPiA+ICpyZWN0
KQ0KPiA+ID4gPiArew0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBkcm1fZmJfaGVscGVyX2NmYl9m
aWxscmVjdChpbmZvLCByZWN0KTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZmJkZXZf
ZGlydHkoaW5mbyk7DQo+ID4gPiA+ICt9DQo+ID4gPiA+ICsNCj4gPiA+ID4gK3N0YXRpYyB2b2lk
IGludGVsX2ZiZGV2X2NvcHlhcmVhKHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPiA+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgZmJfY29weWFyZWENCj4gPiA+ID4gKmFyZWEpDQo+ID4gPiA+ICt7
DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGRybV9mYl9oZWxwZXJfY2ZiX2NvcHlhcmVhKGluZm8s
IGFyZWEpOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9mYmRldl9kaXJ0eShpbmZvKTsN
Cj4gPiA+ID4gK30NCj4gPiA+ID4gKw0KPiA+ID4gPiArc3RhdGljIHZvaWQgaW50ZWxfZmJkZXZf
aW1hZ2VibGl0KHN0cnVjdCBmYl9pbmZvICppbmZvLA0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3Ry
dWN0IGZiX2ltYWdlICppbWFnZSkNCj4gPiA+ID4gK3sNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
ZHJtX2ZiX2hlbHBlcl9jZmJfaW1hZ2VibGl0KGluZm8sIGltYWdlKTsNCj4gPiA+ID4gK8KgwqDC
oMKgwqDCoMKgaW50ZWxfZmJkZXZfZGlydHkoaW5mbyk7DQo+ID4gPiA+ICt9DQo+ID4gPiA+ICsN
Cj4gPiA+ID4gwqAgc3RhdGljIGludCBpbnRlbF9mYmRldl9ibGFuayhpbnQgYmxhbmssIHN0cnVj
dCBmYl9pbmZvICppbmZvKQ0KPiA+ID4gPiDCoCB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZHJtX2ZiX2hlbHBlciAqZmJfaGVscGVyID0gaW5mby0+cGFyOw0KPiA+ID4gPiBAQCAt
MTI1LDEwICsxNzAsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgaW50ZWxmYl9vcHMg
PQ0KPiA+ID4gPiB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBEUk1fRkJfSEVMUEVSX0RFRkFV
TFRfT1BTLA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3NldF9wYXIgPSBpbnRlbF9mYmRl
dl9zZXRfcGFyLA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3JlYWQgPSBkcm1fZmJfaGVs
cGVyX2NmYl9yZWFkLA0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqAuZmJfd3JpdGUgPSBkcm1fZmJf
aGVscGVyX2NmYl93cml0ZSwNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgLmZiX2ZpbGxyZWN0ID0g
ZHJtX2ZiX2hlbHBlcl9jZmJfZmlsbHJlY3QsDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoC5mYl9j
b3B5YXJlYSA9IGRybV9mYl9oZWxwZXJfY2ZiX2NvcHlhcmVhLA0KPiA+ID4gPiAtwqDCoMKgwqDC
oMKgwqAuZmJfaW1hZ2VibGl0ID0gZHJtX2ZiX2hlbHBlcl9jZmJfaW1hZ2VibGl0LA0KPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqAuZmJfd3JpdGUgPSBpbnRlbF9mYmRldl93cml0ZSwNCj4gPiA+ID4g
K8KgwqDCoMKgwqDCoMKgLmZiX2ZpbGxyZWN0ID0gaW50ZWxfZmJkZXZfZmlsbHJlY3QsDQo+ID4g
PiA+ICvCoMKgwqDCoMKgwqDCoC5mYl9jb3B5YXJlYSA9IGludGVsX2ZiZGV2X2NvcHlhcmVhLA0K
PiA+ID4gPiArwqDCoMKgwqDCoMKgwqAuZmJfaW1hZ2VibGl0ID0gaW50ZWxfZmJkZXZfaW1hZ2Vi
bGl0LA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3Bhbl9kaXNwbGF5ID0gaW50ZWxfZmJk
ZXZfcGFuX2Rpc3BsYXksDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAuZmJfYmxhbmsgPSBpbnRl
bF9mYmRldl9ibGFuaywNCj4gPiA+ID4gwqAgfTsNCj4gPiA+IA0KPiA+ID4gLS0gDQo+ID4gPiBU
aG9tYXMgWmltbWVybWFubg0KPiA+ID4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcg0KPiA+ID4g
U1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJIDQo+ID4gPiBNYXhmZWxkc3RyLiA1
LCA5MDQwOSBOw7xybmJlcmcsIEdlcm1hbnkNCj4gPiA+IChIUkIgMzY4MDksIEFHIE7DvHJuYmVy
ZykNCj4gPiA+IEdlc2Now6RmdHNmw7xocmVyOiBJdm8gVG90ZXYNCj4gPiANCj4gDQoNCg==
