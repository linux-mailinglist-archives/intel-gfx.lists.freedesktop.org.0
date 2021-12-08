Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA4A46DAF2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 19:23:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2BA6E05A;
	Wed,  8 Dec 2021 18:23:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4309D6E05A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 18:23:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="218584578"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="218584578"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 10:23:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="462862720"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 08 Dec 2021 10:23:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 10:23:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 10:23:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 10:22:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wz2TdLjW3X6tZ0N7k0Z/7iXjYsFJX1tbFO2p5fizOflhlklVV+yqZkC6Gbt3zXNb4NwR/Pt203WyshhfrtSvt155i9snbrM9aOph8Xe/xekO2nGUQzbqrA/CqvzbXrQVHfxD2uTsMNWXpeBkxwVRybQCv2yFNYV7KuCNUnIWEpGv/A0KNoWrrGXZaBLFgxlBsJ+y9YvdMF1fgfWBl5FHggAM1YH3i48M77dno9bujeYgSqucsK+wqIJ+oDVYPjZ+q2Is1WSjhYOBmgKpDTrP55TEDwPx4DOm6YYLFhv10qo9Hed0ilHKB6wrV+Y5CpQVR2wNeQ6/3wUEpPts8DiOuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uVsdG0p9/Qr43lAQpZWnxnwZnZge57ChRSuwmnScUlU=;
 b=JAHG2O6qNkGy9g/0CPxXOZRmXkhWmnV4nMx4Q9q83YW8VsbrLWR2p3ytmn7F6O1gHdhI5H2O0CqAvgWC6QWu8zpOvHyKhdD3AFSBkTs96agyLROO8cIQOegZSJ4jxbsFvqDMuEDP0E1jHB01ojqfRc4HYPd/zoXSet4faXfwCRSxZ4zVKN4ipTY2r+aWoj9mhQM+Kc/y1HGPfc8DJ21/cuE0UUSutPXqTeW1dSNaLw8oiBSRy6w/mNvBwji0sOYiTTQ7xKDZzk2t2bRyDa95Y2lB0i8HRwC5wWFPSWGTKWOYw8X0PGkxnBLc9QfGFvMc+Lt/K3XcESf4Crnjvy4qHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uVsdG0p9/Qr43lAQpZWnxnwZnZge57ChRSuwmnScUlU=;
 b=Npsist8mnAveQSDd5rE9fMkrVTJCJT0afyWlCMlGn9Fnm4o+lS/waiRiTtbpJ/Irtrf5kkn23bpeGIOhn26FUkr4tZK+RB+abHWay4N87asI7Ipof0cdlMgsKtba/yEVFUcQFdX8Amr9xKZcLJPG2472LbMnQLJSkRBzvSV85Bg=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB2664.namprd11.prod.outlook.com (2603:10b6:a02:c7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.11; Wed, 8 Dec
 2021 18:22:18 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 18:22:17 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [RFC 6/7] drm/i915/guc: Copy new GuC error capture
 logs upon G2H notification.
Thread-Index: AQHX3/UermldWxO9zUyehL4r5Mja7awnvBAAgABpSQCAANwrgA==
Date: Wed, 8 Dec 2021 18:22:17 +0000
Message-ID: <e663c2475e5d0aa07d67ef75bfa2a5626b840c39.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-7-alan.previn.teres.alexis@intel.com>
 <20211207225845.GA17712@jons-linux-dev-box>
 <14d4ac59ffdb3b8163701e26da18a01d8d5b2b2a.camel@intel.com>
In-Reply-To: <14d4ac59ffdb3b8163701e26da18a01d8d5b2b2a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fe44478a-f9aa-422d-cad3-08d9ba77aa80
x-ms-traffictypediagnostic: BYAPR11MB2664:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB266428EE9CD0FED0530850BC8A6F9@BYAPR11MB2664.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oTGbLlY5SEkJz4UoXwkXmjBviY4uUT2tfzDKHoHM2vDbNpyyBHVMXz6r/U0UptWxvWN4jKtOM3GEmuJzVSekeSukyJe6fQUfKMbvr95RVgeiRciG1AJ7ntUYW0jnoctvCucff1wKUwUgMCF3XVfpxsba6STXQ8UEb44DizxR9cgR0BqyqY4XX6Lqpr8daJ54tw7bS31la8xEP3exGY4cI1soBDA/jxfaKfwAtKExwoAoWlzNUYVHAwJAvi88UGzblTinZ9pr2aaJxSugki51F/AjbvnQVLcAZ+mY7mCJiVB49wjNsg44E8B9IkroixL42JuOy2vms3awT+NbNx/lbmI6Nxy3flHwwgjgYV0Zw5MxRL+LzszINz10DHH9b2s0l6jV5JJy2FNAf2gfol5IFgjZc8Pi24TIpdKE3lTkk71caqhT2I5PzO273178g4a0V3lu8HjhJGSQ02OWcT4nXuH3k6KxQYZIxItCjIGr4si6lPLU93nm1KBkz7VUlJhuSm1g1h/cdGxGrvj9IPqHb6sTNZtKztzXjCMADdLfKh9v5GumLNdcw8qYHoMQF67vbfQL2pEBAyCUfG4iadFTz1gQO4/fiMQPIGCDIRYc5NyUQvPfbp1+uafYB38UQBNCPlrjg5l5pd4nLB+kkGzSrsoyZ1mYsAF03Zlul2XIxSrslO58/cAexb9450n0a7R7DBhPij0hyPv8VJkKhr4Frw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(316002)(86362001)(186003)(2616005)(6486002)(4326008)(26005)(15650500001)(8676002)(6636002)(8936002)(6506007)(508600001)(6862004)(6512007)(66946007)(2906002)(66446008)(66476007)(76116006)(83380400001)(64756008)(66556008)(36756003)(38100700002)(38070700005)(82960400001)(71200400001)(37006003)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eEZLbjJHKzdiaGhEVkpETmVlclB0QzQwTFlMWXpKWUJWWDhmY1dyN0hienZm?=
 =?utf-8?B?SW40R2dOUTRveDBMbG1GV2o4R1BHNUd0ZkpGOVdLV2xuYnBHS1pKUy9LSFFu?=
 =?utf-8?B?RlBQWkhrYTF5emJ2anpwSGhYM0dBeFh6OXZPVlhHc0FOcnl6VXROREpyNHRJ?=
 =?utf-8?B?RU9oUTFvRE9pOXNSRnVNT2R0SHBLQ3grUThwelBZR1RJMVFRc0hjViswS3ZC?=
 =?utf-8?B?NFhheHVWZ0dQMS9iM0pOZ296YWZSVXRwYk9VMlEvUTM4MkV5akZxWHYydWhZ?=
 =?utf-8?B?SE5Udm5JSXBCVFZpb3JzRExKN09TeTB0aFFPOFJPSk9hVU9uclBCcU5PcytG?=
 =?utf-8?B?MEIrVGRtMlRPSnExdUx1M08wYlQvT0JIWUZpdmdpbS9CN1RmU2hvemZFMnlY?=
 =?utf-8?B?T3F5b1RRcmN0LzZwMVVUL0xVQ1FBaEpnK1g0MmlNZTIzYUFwRk5nVzZwZ2NW?=
 =?utf-8?B?OTNpWGFTSDFPLzBkaHlJK0F2cVlmaERtcHk2QXRVVWVhQWFBSDJpNWZnZ3dv?=
 =?utf-8?B?eWR2OWt4K1pOZ3dWclRLQ3c3U1VSd1pvc1ZiNVc5cTY3RXlPTGNnY214MWZq?=
 =?utf-8?B?TUlnQXNGQ0lQZmljM0Q1Rnk2d2NIYm0rRnJmaG5iRXFldW5KYXB5bUl3Kzkv?=
 =?utf-8?B?Tms0REJCZERPN1hwdkNMOGpoY3haQ3ZEOUNHSEQ3c05kNUFjTlJBMGNPNzBt?=
 =?utf-8?B?WWl5YlVsb2VRUmxzNU80ZitoK2tzNThWMXRDQ1hKNDlCRzlGdnZZODJtYW55?=
 =?utf-8?B?MGRwZW9uWE9hV3VZV3FtTklxMVdLZWltekJ1bWVGWVJHeUNvWFRlS1JnQy96?=
 =?utf-8?B?c1djWCt1Rng5aCs4RzYvendabEl1UStGVTlyZGlnYnZyejJhMjdIa0hmekJH?=
 =?utf-8?B?L0x3VkJCYnlLYTJGZWZGeENVM0wyMVhiVDZDU3VtNHdzY29Wd2lBeFdHaG5N?=
 =?utf-8?B?ZUxPL3o5MHZseEYyWitRNVZkRzdCZDZ1bUVQOEFVdFNTaThLa1l4Y2tJZjE0?=
 =?utf-8?B?RG9ya0QrYTZVTHFBc0VDc3dlMGF6QmpQS1kvbCtGejJ5Yk1SSUxzRDB1WUN1?=
 =?utf-8?B?N0FxZUVtMTB2WXVkNHhtWjRTT0RTNHZkckdSWEJqcXp4RWJEWlBDNlRUQlU5?=
 =?utf-8?B?YW84d3RNc094ZG5tK3NJVnVKQjJqd3o2YjNPNzNLMjkwNHpHT0Nmc1cyNVFE?=
 =?utf-8?B?Z1JQNmtOL3ZtVkRVUys5OWticm41bDA2STl3cWlVbUhIT1J3dHNKSGhoditO?=
 =?utf-8?B?TlhacE83a1NwaWhRYjJ1Q0gvOTR1RWU1UHdOY1J5azVlbnVzZktGbkxPRGxy?=
 =?utf-8?B?eUMzSEpDVGhPS3ZEOUk2eVd1MU45UGprTXc3Z251VURTcFZLbWZ1TFllUTJS?=
 =?utf-8?B?Q0pwdXd4amRocjZvbis4Z2ExaFBoSGwzVFkvTk1adENabmFEVWFjVTQxeThq?=
 =?utf-8?B?U1puSnpZS3BsQ0dpM3hYWE50ZG41aUdySUdCK2czdUV2bzN2clcyNkE0Rzll?=
 =?utf-8?B?dFQxdTJRcmZXQVlHa3lCRG5iV1RybFhpNjVkdjVDTnM4M3lvM3JTOFl5bytV?=
 =?utf-8?B?d1o3Y3B2Tk9aVmVLeWV4UFF1NTlINkFDem5zN0lLTlI2YU1tZGkwQ3lIRDFa?=
 =?utf-8?B?bkp1SGFRdGVtWVlxR1MyQkdrVUJRNWwvVGhrWXY5MlF0M3VZZDAyS2pVZmtE?=
 =?utf-8?B?QzlSVnZRZTBTeUErdS9INnFTYkM0NnRSSXV0YjBKRUZMamI5YkdWalJialVG?=
 =?utf-8?B?V1hGOXlqNytKSXZYb0JpZXJ3VDhxZlYyd3pkUXYybHlnR3FMRkhoYUYrdHRT?=
 =?utf-8?B?WnlhdDF5S3crNUVyQ0dHMCtZNjZlOGEvNndsekFTL3ZjM09ETUo3TEFRWkU4?=
 =?utf-8?B?dk5ENEtTNVBrMDZiNjBKZWZ3U2V0c2d1QjI0ajFqQU12b01KUUVQV25JU1Vs?=
 =?utf-8?B?MGdzSDVTM0lJNWFGVkpUVHZ5QVJ2aEZDb2VBZnVBK2MyM0daUkhDUjd4UEtl?=
 =?utf-8?B?a1hBMzJVWVlnMC9xWHBBc0k5VkJrMUtyZkVoSzRsK1ZPKzJMMFdpY3NObUlk?=
 =?utf-8?B?dXJVcFdIVVJGTHdCMm1NQTZoRWMzbGhJUFBpWTI4V0lrYXYvenVNUG81aTJt?=
 =?utf-8?B?QS9PQnhSd0xqSU1SZ1ovZlBnMkZZRGRHWEdKbmI0QW5MdTM0QTlwMHczaENv?=
 =?utf-8?B?b3NtRjE0dGhMOUJSeUhOb25oT05jRDhVUStBNGpCT3lhS0c5Rm9lcEJTMFAv?=
 =?utf-8?B?a2JWY0hEZmRuc1E4REtaVGpxSGVxMzBuRjNoZTFBSzI1dFY3TFVjWFhaU3RJ?=
 =?utf-8?B?cERlTEhXMG1TL1ZHMlBYa1RleXJlZGVZei9mUTVwaWwwRTdBamZFUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1195C2A1F7A1344DACDC745669467C03@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe44478a-f9aa-422d-cad3-08d9ba77aa80
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 18:22:17.2688 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EIse71KPjqQ47eriWWEDHLla+HohbXLUlrfQFdYRXk+3gEmYy9Na1+U2oQ+E9Pf4iUvOWCLh5DjG71evFq89y6qJGa0PnZ5/4EmujtsHGIMB2AA54u3/jCbdONPUtFuo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2664
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 6/7] drm/i915/guc: Copy new GuC error capture
 logs upon G2H notification.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWZ0ZXIgY2hhdHRpbmcgb2ZmbGluZSB3aXRoIE1hdHQsIGl0IGJlY2FtZSBhcHBhcmVudCB0aGF0
DQppIHNvbWVob3cgbWlzc2VkIHRoZSBmYWN0IHRoYXQgdGhlIGN0YiBwcm9jZXNzaW5nIGhhbmRs
ZXINCndhcyBhbHJlYWR5IGluIGEgd29yayBxdWV1ZS4gVGhhdCBzYWlkLCBNYXR0IGlzIGNvcnJl
Y3QsIGkNCmRvbnQgbmVlZCB0byBjcmVhdGUgYSB3b3JrIHF1ZXVlIHRvIGV4dHJhY3QgdGhhdCBj
YXB0dXJlDQpsb2cgaW50byB0aGUgaW50ZXJpbS1zdG9yZS4gVGhhdCB3b3VsZCBlbGltaW5hdGUg
dGhlIHJhY2UNCmNvbmRpdGlvbiAod2hlbiB0aGUgY29udGV4dC1yZXNldCBub3RpZmljYXRpb24g
Y29tZXMNCmluIGxhdGVyIHZpYSB0aGUgc2FtZSBxdWV1ZSkuDQoNClRoYW5rcyBhZ2FpbiBNYXR0
Lg0KDQouLi4uYWxhbg0KDQoNCk9uIFR1ZSwgMjAyMS0xMi0wNyBhdCAyMToxNSAtMDgwMCwgQWxh
biBQcmV2aW4gVGVyZXMgQWxleGlzIHdyb3RlOg0KPiBUaGFua3MgTWF0dCBmb3IgcmV2aWV3aW5n
LiBSZXNwb25zZXMgdG8gdGhlIHF1ZXN0aW9ucyB5b3UgaGFkLg0KPiB3aWxsIGZpeCB0aGUgcmVz
dCBvbiBuZXh0IHJldi4NCj4gIA0KPiA+ID4gQEAgLTQwMTMsMTAgKzQwMTYsMTEgQEAgaW50IGlu
dGVsX2d1Y19lcnJvcl9jYXB0dXJlX3Byb2Nlc3NfbXNnKHN0cnVjdCBpbnRlbF9ndWMgKmd1YywN
Cj4gPiA+ICAJCXJldHVybiAtRVBST1RPOw0KPiA+ID4gIAl9DQo+ID4gPiAgDQo+ID4gPiAtCXN0
YXR1cyA9IG1zZ1swXTsNCj4gPiA+IC0JZHJtX2luZm8oJmd1Y190b19ndChndWMpLT5pOTE1LT5k
cm0sICJHb3QgZXJyb3IgY2FwdHVyZTogc3RhdHVzID0gJWQiLCBzdGF0dXMpOw0KPiA+ID4gKwlz
dGF0dXMgPSBtc2dbMF0gJiBJTlRFTF9HVUNfU1RBVEVfQ0FQVFVSRV9FVkVOVF9TVEFUVVNfTUFT
SzsNCj4gPiA+ICsJaWYgKHN0YXR1cyA9PSBJTlRFTF9HVUNfU1RBVEVfQ0FQVFVSRV9FVkVOVF9T
VEFUVVNfTk9TUEFDRSkNCj4gPiA+ICsJCWRybV93YXJuKCZndWNfdG9fZ3QoZ3VjKS0+aTkxNS0+
ZHJtLCAiRzJILUVycm9yIGNhcHR1cmUgbm8gc3BhY2VcbiIpOw0KPiA+ID4gIA0KPiA+ID4gLQkv
KiBBZGQgZXh0cmFjdGlvbiBvZiBlcnJvciBjYXB0dXJlIGR1bXAgKi8NCj4gPiA+ICsJaW50ZWxf
Z3VjX2NhcHR1cmVfc3RvcmVfc25hcHNob3QoZ3VjKTsNCj4gPiANCj4gPiBUaGlzIGlzIGRvbmUg
aW4gZGlmZmVyZW50IHdvcmtlciwgcmlnaHQ/IEhvdyBkb2VzIHRoaXMgbm90IHJhY2Ugd2l0aCBh
bg0KPiA+IGVuZ2luZSByZXNldCBub3RpZmljYXRpb24gdGhhdCBkb2VzIGFuIGVycm9yIGNhcHR1
cmUgKGUuZy4gdGhlIGVycm9yDQo+ID4gY2FwdHVyZSBpcyBkb25lIGJlZm9yZSB3ZSByZWFkIG91
dCB0aGUgaW5mbyBmcm9tIHRoZSBHdUMpPw0KPiA+IA0KPiBJIGJlbGlldmUgdGhlIGd1YyBlcnJv
ciBzdGF0ZSBjYXB0dXJlIG5vdGlmaWNhdGlvbiBldmVudCBjb21lcyByaWdodCBiZWZvcmUNCj4g
Y29udGV4dCByZXNldHMsIG5vdCBlbmdpbmUgcmVzZXRzLiBBbHNvLCB0aGUgaTkxNV9ncHVfY29y
ZWR1bXAgc3Vic3lzdGVtDQo+IGdhdGhlcnMgaHcgc3RhdGUgaW4gcmVzcG9uc2UgdG8gdGhlIGEg
Y29udGV4dCBoYW5naW5nIGFuZCBpcyBkb25lIHByaW9yIHRvDQo+IHRoZSBodyByZXNldC4gVGhl
cmVmb3JlLCBlbmdpbmUgcmVzZXQgbm90aWZpY2F0aW9uIGRvZXNudCBwbGF5IGEgcm9sZSBoZXJl
Lg0KPiBIb3dldmVyLCBzaW5jZSB0aGUgY29udGV4dCByZXNldCBub3RpZmljYXRpb24gaXMgZXhw
ZWN0ZWQgdG8gY29tZSByaWdodCBhZnRlcg0KPiB0aGUgZXJyb3Igc3RhdGUgY2FwdHVyZSBub3Rp
ZmljYXRpb24gYW5kIHlvdXIgYXJndW1lbnQgaXMgdmFsaWQgaW4gdGhpcyBjYXNlLi4uDQo+IHlv
dSBjb3VsZCBhcmd1ZSBhIHJhY2UgY29uZGl0aW9uIGNhbiBleGlzdCB3aGVuIHRoZSBjb250ZXh0
IHJlc2V0IGV2ZW50IGxlYWRzDQo+IHRvIGNhbGxpbmcgb2YgaTkxNV9ncHVfY29yZWR1bXAgc3Vi
c3lzdGVtICh3aGljaCBpbiB0dXJuIGdldHMgYSBwb2ludGVyIHRvDQo+IHRoZSBpbnRlbF9ndWNf
Y2FwdHVyZSBtb2R1bGUpLCBob3dldmVyIGV2ZW4gaGVyZSwgbm8gYWN0dWFsIHBhcnNpbmcgaXMg
ZG9uZQ0KPiB5ZXQgLSBpIGFtIGN1cnJlbnRseSB3YWl0aW5nIG9uIHRoZSBhY3R1YWwgZGVidWdm
cyBjYWxsIGJlZm9yZSBwYXJzaW5nIGFueQ0KPiBvZiB0aGUgZGF0YS4gQXMgYSBmaXgsIEhvd2V2
ZXIsIEkgYWRkIGEgZmx1c2hfd29yayBhdCB0aGUgdGltZSB0aGUgY2FsbCB0bw0KPiB0aGUgcGFy
c2luZyBoYXBwZW5zIGV2ZW4gbGF0ZXI/DQo+IA0KPiANCj4gPiBBcyBmYXIgYXMgSSBjYW4gdGVs
bCAnaW50ZWxfZ3VjX2NhcHR1cmVfc3RvcmVfc25hcHNob3QnIGRvZXNuJ3QgYWxsb2NhdGUNCj4g
PiBtZW1vcnkgc28gSSBkb24ndCB0aGluayB3ZSBuZWVkIGEgd29ya2VyIGhlcmUuDQo+ID4gDQo+
IFllcywgaSBhbSBub3QgZG9pbmcgYW55IGFsbG9jYXRpb24gYnV0IHRoZSB3b3JrZXIgZnVuY3Rp
b24gZG9lcyBsb2NrIHRoZQ0KPiBjYXB0dXJlX3N0b3JlJ3MgbXV0ZXggKHRvIGVuc3VyZSB3ZSBk
b250IHRyYW1wbGUgb24gdGhlIGNpcmN1bGFyIGJ1ZmZlciBwb2ludGVycw0KPiBvZiB0aGUgaW50
ZXJpbSBzdG9yZSAodGhlIG9uZSBiZXR3ZWVuIHRoZSBndWMtbG9nLWJ1ZmZlciBhbmQgdGhlIGVy
cm9yLWNhcHR1cmUNCj4gcmVwb3J0aW5nKS4gSSBhbSBub3Qgc3VyZSBpZiBzcGluX2xvY2tfaXJx
c2F2ZSB3b3VsZCBiZSBzYWZlIGNvbnNpZGVyaW5nIGluIHRoZQ0KPiBldmVudCB3ZSBoYWQgYmFj
ayB0byBiYWNrIGVycm9yIGNhcHR1cmVzLCB0aGVuIHdlIHdvdWxkbnQgd2FudCB0byBiZSBzcGlu
bmluZyB0aGF0DQo+IGxvbmcgaWYgY29pbmNpZGVudGlhbGx5IHRoZSByZXBvcnRpbmcgc2lkZSBp
cyBhY3RpdmVseSBwYXJzaW5nIHRoZSBieXRlc3RyZWFtIA0KPiBvdXRwdXQgb2YgdGhlIHNhbWUg
aW50ZXJpbSBidWZmZXIuDQo+IA0KPiBBZnRlciB0aGlua2luZyBhIGJpdCBtb3JlLCBhIGxvY2ts
ZXNzIHNvbHV0aW9uIGlzIHBvc3NpYmxlLCBpIGNvdWxkIGRvdWJsZQ0KPiBidWZmZXIgdGhlIGlu
dGVyaW0tc3RvcmUtY2lyY3VsYXItYnVmZmVyIGFuZCBzbyB3aGVuIHRoZSBldmVudCBjb21lcyBp
biwgaSBmbGlwDQo+IHRvIHRoZSBuZXh0ICJmcmVlIiBpbnRlcmltLXN0b3JlICh0aGF0IGlzbnQg
ZmlsbGVkIHdpdGggcGVuZGluZyBsb2dzIHdhaXRpbmcNCj4gdG8gYmUgcmVhZCBvciBiZWluZyBy
ZWFkKS4gSWYgdGhlcmUgaXMgbm8gYXZhaWxhYmxlIGludGVyaW0tc3RvcmUsIChpLmUuDQo+IHdl
J3ZlIGFscmVhZHkgaGFkIDIgZXJyb3Igc3RhdGUgY2FwdHVyZXMgdGhhdCBoYXZlIHlldCB0byBi
ZSByZWFkL2ZsdXNoZWQpLCB0aGVuDQo+IHdlIGp1c3QgZHJvcCB0aGUgb3V0cHV0IHRvIHRoZSBm
bG9vci4gKHRoaXMgbGFzdCBwYXJ0IHdvdWxkIGJlIGluIGxpbmUgd2l0aCB0aGUNCj4gY3VycmVu
dCBleGVjbGlzdCBtb2RlbC4uIHVubGVzcyBzb21ldGhpbmcgY2hhbmdlZCB0aGVyZSBpbiB0aGUg
bGFzdCAyIHdlZWtzKS4NCj4gDQo+IEhvd2V2ZXIgdGhlIHNpbXBsZXN0IHNvbHV0aW9uIGZyb20g
d2l0aCB0aGlzIHNlcmllcyB0b2RheSwgd291bGQgYmUgdG8gZmx1c2hfd29yaw0KPiBtdWNoIGxh
dGVyIGF0IHRoZSB0aW1lIHRoZSBkZWJ1Z2ZzIGNhbGxzIHRvIGdldCB0aGUgb3V0cHV0IGVycm9y
IGNhcHR1cmUgcmVwb3J0DQo+IChzaW5jZSB0aGF0IHdvdWxkIGJlIHRoZSBsYXN0IGNoYW5jZSB0
byByZXNvbHZlIHRoZSBwb3NzaWJsZSByYWNlIGNvbmRpdGlvbikuDQo+IEkgY291bGQgY2FsbCB0
aGUgZmx1c2hfd29yayBlYXJsaWVyIGF0IHRoZSBjb250ZXh0X3Jlc2V0IG5vdGlmaWNhdGlvbiwg
YnV0IHRoYXQgdG9vDQo+IHdvdWxkIGJlIGFuIGlycSBoYW5kbGVyIHBhdGguIA0KPiANCj4gPiBN
YXR0DQo+ID4gDQo+ID4gPiAgDQo+ID4gPiAgCXJldHVybiAwOw0KPiA+ID4gIH0NCj4gPiA+IC0t
IA0KPiA+ID4gMi4yNS4xDQo+ID4gPiANCg0K
