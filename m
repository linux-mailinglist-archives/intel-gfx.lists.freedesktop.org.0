Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CE15E73B3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 08:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02B610E3D1;
	Fri, 23 Sep 2022 06:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2EDE10E3D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 06:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663913478; x=1695449478;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/5yW2CJElzPNK/pkt7oWlj40+U03CeQQQBgj5Itt8w8=;
 b=ancTcFjRMSFX9q5FaIrPxuXXKTvZYpxDgc5rjSfuMnS6llZ1BFhATv0d
 Y1OA0B1Eq8Pa8ZarWjjE7Yvwj6QzG548V3Fk7eBmY05mrX7RF75sospUq
 C6jSPQj83wQ+O9SB9t5kwQc/IK4cIQBw0Iae9AviPecQtQGWdraNdhgdK
 8k/rzBUhXTYcX9JvinFSMzg/2ofwWQ8pBK2uGleDUQ+PXqUUK5bl2pCIW
 LwAOCf/PyVLqU1rJWtsuuaNKhnh5j34mEzb4FZ/nExyTfgAY0/NiIpiUw
 WAPbpdlLavkQHwSzWIU66J+VSmytxPlSa6vSCcDQfyzO7bvE6Bp9gDr3k Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="362329183"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="362329183"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 23:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="597757685"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 22 Sep 2022 23:11:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 23:11:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 23:11:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 23:11:17 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 23:11:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U4Fjl5g7p+bUfyZQ3phPA0KMNmkdBPiBSRhMShWq2spBJDm+U1XvQRoB9pJ2s2UHXxud3yAUlkIQTwFk2j86vY8PvoCFbaF6aYIGuRAg2GpABBxl7DYzmwF18sRwnBXKO9Nz+73PCjY8O2LOHos7NDAulJ3DorQYOR4B9gYeNCgU54lVhDmsMj54bkRxfRommSElrctftxacEE1JrG1wzEy48le8lmfzb+VfmFKHU5rFApVVVIqzyvvymxMdlOTglj2BaZ7kiz1RRQCIBYDE3HwSvGfrfT1lCo2dzEXw3VZSh8WWVys9kPwVGQw4/WkMV1p9CTxU29RyIlyZxztBog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/5yW2CJElzPNK/pkt7oWlj40+U03CeQQQBgj5Itt8w8=;
 b=oE3PUCwCQv4v13xiDsFFh6VjMfn+cJb7lxgmibRKkec2H3sw6QniZGft/kf459tDdDKxqY9I51kVuK745LRwA1Cvb845CwdRh2d9/5iYnB6Do1f4vzHolUzqbateweZ59FJIqG7zUJaTyMAITTaygqqL20bTXN05aVd0jV1iBkgxqPwn9lkCVJIiDgTsvirAAYyF2/47EPjtPRoNoRcLbGZQkucyhI0ecDoUQjL8aKpJgzbmyyL3bRpnOg3PDWN68Qe80jF1PBy4JW8otY//9HUeBVXLvEtAQHI6xFUyzcSXlz+wM4JHpthdabefsiUaoH+TNUsoQdR4gIn1G4R/2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB5765.namprd11.prod.outlook.com (2603:10b6:510:139::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.17; Fri, 23 Sep 2022 06:11:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::cdb6:4df4:daf2:ce1f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::cdb6:4df4:daf2:ce1f%6]) with mapi id 15.20.5654.019; Fri, 23 Sep 2022
 06:11:14 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field handling
Thread-Index: AQHYzllhxwHtzt0mjEaOQi9GC2uKZq3rbCgAgAEdtgA=
Date: Fri, 23 Sep 2022 06:11:14 +0000
Message-ID: <af9c90fbd52633203095dc10fb62902b190f32cc.camel@intel.com>
References: <20220922075948.111558-1-jouni.hogander@intel.com>
 <3dddd19c98061e1e8173c65d1a8dcc8f5b380b80.camel@intel.com>
In-Reply-To: <3dddd19c98061e1e8173c65d1a8dcc8f5b380b80.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB5765:EE_
x-ms-office365-filtering-correlation-id: 03e0bb2f-31ba-4174-b514-08da9d2a6bc0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ITe+lz1X55vA579AcJBbcU0/XARq92bu9+CKC+o115j8re+mje3pWGxgk4DP4fNuJssjpp67vY6ZlyUuW0ZyWuZlX1+4B/0J6Aedbvcov7KGfiv8/dExvPnuH8Zf6NpQyvCJ/1809kwVlRAFRkPhrhpsWlLCzGgohEnDnk3Rqf68K42/8i6026Hw1AXPGa8P6PfHrKfN0SwYoRWBQLjv7EdKv78ohHTKFZDWVqbp0mQ1sdO2juUGt1xkCDIdQfTepvH9+6S97flxkgpGnA4MuWFswldrCvBAD1oCb90oMY6HDfsT7y0VpfI0cuWn/usN4v6Fm7IfXmp4wSOCl5W1ZKdQS9PzCGRGO7Wfr4bAPyHl6mkLhV+Vho3PzVeMgLMwYhY/yRDH2P8yAvUaR94eMX3T3//7kDoO8nN/sP3j0EqjAa+J4d26aXIImg9DTjRW+/pJ+V2y9xHt/acVjnUBtnA4mK6EF7F6d1g87XHiB93mXsgKalVUOu6cX29Z0JQMpmCH2r81WtsCNaoh+3w/vhWtyTST1ZGM4AwraM1DmYmIqmjUia9SUlZK/bVayMTzNp7bTY1Am5YdhLJwpvDqOE2XZlvpK3pu2sg2oaG9wKYINbyaTkj0gckeAbQFj001mnqLz41+89PZYvZ/ztphq5IVpWElbufVcXIH0Oom3FsOlHLdLvF3YxMicUo8srhq3/pP086KhtDfE9ond1SR6Q1vW4O95IGHpcNYjuiQTnMPVHZk0iBvPzDWeH2doGNhBU2PaNkq6yNWpW05NgIuamhbKrcWjYnPXVuTdecamp8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(39860400002)(366004)(376002)(451199015)(6512007)(82960400001)(71200400001)(38070700005)(38100700002)(122000001)(316002)(186003)(91956017)(86362001)(8676002)(110136005)(4326008)(76116006)(64756008)(66946007)(66556008)(5660300002)(6636002)(66446008)(6486002)(6506007)(66476007)(107886003)(66574015)(8936002)(478600001)(26005)(966005)(2906002)(83380400001)(2616005)(41300700001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aEMyeWxsUjlYZ2llSzdQOTBBL21WTmd3NE1vNjhTZEUrbHZQTlA5N1hqTzVV?=
 =?utf-8?B?dXNZSEhvS0VJYVpReC9Kb3ZxTGl3RHVndk5OWUJzMWQrTGJpeWZVK1dRZHY1?=
 =?utf-8?B?cXpzeG5BOGV6NUdoMXRWczNBMmtkdGU3aStpMjlWYjI5ZE45aWtNNXJiTXFp?=
 =?utf-8?B?cUh3Q1I4OVNzaDBXODE1K2Naa1ltTFhzYm9UU2ExSXNuMTBrQkVhYjQvNitq?=
 =?utf-8?B?Wng1TjlGNEE5OWZkTlNzdnhSQ0ZwK3owdkJkdGxUcUFxOTdyTm5oN3ZwVERF?=
 =?utf-8?B?NzNta0JHMjZENmRxdEZNTThqUjU2OURsTm54NEd3ZzBidHczSmtteGhBZUZV?=
 =?utf-8?B?U3l5TWJjTE5oT0lEbVRvU3FnKzh2NGpLQytocXUvRkd6RmpVYTF6ckhBNExh?=
 =?utf-8?B?SE9vanZwVkZBTTN5bEx1QkpyeU13SDZwd3lreVloRm1XQkIzc1g1MTVsb3Ni?=
 =?utf-8?B?RFlSNmVpcytGVGlYSHNqY3RBVnVJL0ZTaTQ5eWxkbUx3eUlJNDZLVE9KVHdF?=
 =?utf-8?B?SEhCcE8vZWF0T044OCtKWStSZFhvb2IvOTNFd0dhSEtJYlgvZjM4M1JXSWpm?=
 =?utf-8?B?Q3BVbnFkRlRGOU1oZFQyam5wK1NKcmxMeitsWE9UY3hRVDFKSzZMNlptTEVk?=
 =?utf-8?B?ZG1FazU2WGJ5by9VN1g3YjhkWkJqVlJnWEwzNHdiSE9CZS9hdGx0NTZvem94?=
 =?utf-8?B?NXp5c2IrTGNvdHk1TFhQeXJUaW81UzVrYXl2bUYvQ0JYZDczYnowdldRbmZO?=
 =?utf-8?B?WmlsakVXdFdaelhwOXQ1MEdxdTBaNGdsYnc5dGJUMlVRYXQ5dHlmSEVWYWQ4?=
 =?utf-8?B?RkhUbXozRmlnYXoyZUVTUG1PZkoxY2NvOXp2SzkyVmNBcm5YMjN1aU94Q2Q2?=
 =?utf-8?B?U1BDVWN3N1ZzUWhueXZVK3BlZTdGZG5wVDBvT20ydTM0RFlKM3M3UHo4bmxz?=
 =?utf-8?B?UXRPdzBXdmVORnlIYTJDQ3RrZ0JpbDZHV2RjbXhiY0JhSjVIWTE3eG1DdDlE?=
 =?utf-8?B?MDF2cmdKampPZmdnbE1sOUREa0ppYWk1QzRlOHBrVGNqOGg0U3dLT3lVNzNX?=
 =?utf-8?B?bWNPVnBpMEtNU3FFVFZPYTREUFlkVmlQb0ZpazR5NHRYNVFoUVpxQ1hmVFFF?=
 =?utf-8?B?N3EzN01oUllwZG1kRWI4WUE5ZitQa1BDODBOOUlsbUFXYmN0MVZOTVpXVHl2?=
 =?utf-8?B?NjdUQUNxdmZnL3FTUFRqRVpuU3JPQi9jUWNmT09SMkhValhaMHVYS2dsR0RX?=
 =?utf-8?B?dHpNcjVYeG5xaUsyajFnR3l1Q2ZTMHJzNlJSY0FYVGNZZFZGZkVYZmtIakFr?=
 =?utf-8?B?YXRSN0Uvc2hna1F5NFFsL2tqMkozTytrWTBPZXB4SU9iUWZjeEVXZVFsMHBr?=
 =?utf-8?B?MjhkcWtwamNJcmFwb01DWTJmcDI5YWRSMjM5V213Y0V2c24zWjY5SkZLU3NU?=
 =?utf-8?B?SDVZd0s5ZS9ZUmdBckpCeVN0aE1LaEk2a1pOQlYyTHhiNWxINGNsUEp4dCtT?=
 =?utf-8?B?ZlBsQ01BdFA0OEdSdDlhYWZkVmMxTWtMYTVndFV4NEJnZVNYNFpjQi8vb1pU?=
 =?utf-8?B?TDIwSng0amNGQkRBNHBTRWNLVC8rd1o1ZjV2R2FPaE1QNExHL2FEVjNFaWcy?=
 =?utf-8?B?d0lpeVVEMW1WdElDQmNVRHk3cy9PZWdaQ0MvTjhhWnNPRTgvL3M5b090VmZn?=
 =?utf-8?B?Vm1CaDJYaGhOZ1poYVJDS2xkNlJWbnMvNk1Kc2ZiODE0UjIxdU1wVGJGYSs0?=
 =?utf-8?B?aTJENVN1UHFVdEowN2RHMmUrSUt4b2hwY05Lby8rdzdwcHZzR2NySWpjOTV5?=
 =?utf-8?B?MGx6YThWREZBK0F1bDl2dVJPRUhRNzZDRG9YeHY3a1paWjlPNFhVZjFWcjlq?=
 =?utf-8?B?dzRMdnFjbG4zaml3bU9jRHFsUjlXTXBFQ3RZeUY1bS9oa2Z3RW51SEx0VlNy?=
 =?utf-8?B?TzYvSmhFVWIwaThoWGx0Y0hIZFo5OFBVcGhpTXh5RUU5dWdhL2lvZEFvV2Y0?=
 =?utf-8?B?U2ZaVURHTTN0ZmkzSmtmai92NW5kSFhxVjkyd0YwTGl0NWtMRFpyR3Z0QnN1?=
 =?utf-8?B?ZitjdnFFajIxbkFybkxYQzVhWm5zU290UHpReWJKNkVRaGljZUp3NGpVODlP?=
 =?utf-8?B?NG42OHg5QlRnK29tQWIxcEFkRlgzVXFKY0tkT3RJVi9jZjdqY1IvRGVuS0JJ?=
 =?utf-8?B?YWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <90E0105CF756234A81ED59A91EE7955D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e0bb2f-31ba-4174-b514-08da9d2a6bc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 06:11:14.8012 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cf1UQTx9pB+T7SMM+l1xVBnY9eipMQdpfsgAGgw+ygzbK5mSt8PBFzWLVj9yXWuZz3l2DmA7Io77EpZQz98GNxNoxstyE04LcRYH8T9o+Ss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5765
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field
 handling
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

T24gVGh1LCAyMDIyLTA5LTIyIGF0IDEzOjA4ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToKPiBP
biBUaHUsIDIwMjItMDktMjIgYXQgMTA6NTkgKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3cm90ZToK
PiA+IEN1cnJlbnQgUFNSIGNvZGUgaXMgc3VwcG9zZWQgdG8gdXNlIFRSQU5TQ09ERVJfRURQIHRv
IGZvcmNlIDAgc2hpZnQKPiA+IGZvcgo+ID4gYml0cyBpbiBQU1JfSU1SL0lJUiByZWdpc3RlcnM6
Cj4gPiAKPiA+IC8qCj4gPiDCoCogZ2VuMTIrIGhhcyByZWdpc3RlcnMgcmVsYXRpdmUgdG8gdHJh
bnNjb2RlciBhbmQgb25lIHBlcgo+ID4gdHJhbnNjb2Rlcgo+ID4gwqAqIHVzaW5nIHRoZSBzYW1l
IGJpdCBkZWZpbml0aW9uOiBoYW5kbGUgaXQgYXMgVFJBTlNDT0RFUl9FRFAgdG8KPiA+IGZvcmNl
Cj4gPiDCoCogMCBzaGlmdCBpbiBiaXQgZGVmaW5pdGlvbgo+ID4gwqAqLwo+ID4gCj4gPiBBdCB0
aGUgdGltZSBvZiB3cml0aW5nIHRoZSBjb2RlIGFzc3VtcHRpb24gIlRSQU5TQ09ERVJfRURQID09
IDAiCj4gPiB3YXMgbWFkZS4KPiA+IFRoaXMgaXMgbm90IHRoZSBjYXNlIGFuZCBhbGwgZmllbGRz
IGluIFBTUl9JTVIgYW5kIFBTUl9JSVIgYXJlCj4gPiBzaGlmdGVkCj4gPiBpbmNvcnJlY3RseSBp
ZiBESVNQTEFZX1ZFUiA+PSAxMi4KPiAKPiBGcm9tIHdoZXJlIGFyZSB5b3UgZ2V0dGluZyB0aGF0
IFRSQU5TQ09ERVJfRURQID09IDA/CgpJdCdzIG5vdC4gVGhhdCBpcyBteSBwb2ludC4gSWYgeW91
IGxvb2sgYXQgdGhpcyBjb21taXQ6CgpodHRwczovL2dpdGh1Yi5jb20vZnJlZWRlc2t0b3AvZHJt
LXRpcC9jb21taXQvODI0MWNmYmU2N2Y0MDgyZWVlNWZjNzJlNWE4MDI1YzViNThjMmRkZgoKYWRk
aW5nIHRoaXMgY29tbWVudDoKCisgICAgICAgLyoKKyAgICAgICAgKiBnZW4xMisgaGFzIHJlZ2lz
dGVycyByZWxhdGl2ZSB0byB0cmFuc2NvZGVyIGFuZCBvbmUgcGVyCnRyYW5zY29kZXIKKyAgICAg
ICAgKiB1c2luZyB0aGUgc2FtZSBiaXQgZGVmaW5pdGlvbjogaGFuZGxlIGl0IGFzIFRSQU5TQ09E
RVJfRURQCnRvIGZvcmNlCisgICAgICAgICogMCBzaGlmdCBpbiBiaXQgZGVmaW5pdGlvbgorICAg
ICAgICAqLwoKYW5kIHRoZSBjb2RlIGFkZGVkIGJ5IHRoaXMgY29tbWl0IGlzIGRvaW5nCgouLi4K
KyAgICAgICAgICAgICAgIHRyYW5zX3NoaWZ0ID0gMDsKbWFzayA9IEVEUF9QU1JfRVJST1IodHJh
bnNfc2hpZnQpOwouLi4KCisgICAgICAgbWFzayA9IEVEUF9QU1JfRVJST1IodHJhbnNfc2hpZnQp
OwouLi4KCmFuZCBpZiB3ZSBsb29rIGF0IEVEUF9QU1JfRVJST1IgZGVmaW5pdGlvbjoKCi4uLgoj
ZGVmaW5lICAgX0VEUF9QU1JfVFJBTlNfU0hJRlQodHJhbnMpCQkoKHRyYW5zKSA9PQpUUkFOU0NP
REVSX0VEUCA/IFwKCQkJCQkJIDAgOiAoKHRyYW5zKSAtClRSQU5TQ09ERVJfQSArIDEpICogOCkK
Li4uCiNkZWZpbmUgICBFRFBfUFNSX0VSUk9SKHRyYW5zKQkJCSgweDQgPDwKX0VEUF9QU1JfVFJB
TlNfU0hJRlQodHJhbnMpKQouLi4KCkVEUF9QU1JfRVJST1IoMCkgaXMgMHg0MDAgd2hpY2ggaXMg
d3JvbmcgZm9yIGUuZy4gVEdMLiBVc2luZwpUUkFOU0NPREVSX0VEUCBhcyBtZW50aW9uZWQgaW4g
dGhlIGFkZGVkIGNvbW1lbnQ6CkVEUF9QU1JfRVJST1IoVFJBTlNDT0RFUl9FRFApIGlzIDB4NCB3
aGljaCBpcyBjb3JyZWN0LgoKTXkgcGF0Y2ggaXMgZG9pbmcgd2hhdCBpcyBpbiB0aGUgY29tbWVu
dC4gVGhlcmUgYXJlIG90aGVyIHdheSB0byBmaXgKdGhpcywgYnV0IHRvIG15IG9waW5pb24gb3Jp
Z2luYWwgaWRlYSB1c2luZyBUUkFOU0NPREVSX0VEUCBpbiBjb21taXQgCjgyNDFjZmJlNjdmNDA4
MmVlZTVmYzcyZTVhODAyNWM1YjU4YzJkZGYgdG8gZm9yY2UgMCBzaGlmdCBrZWVwcyB0aGUKY29k
ZSBwcmV0dHkgY2xlYW4uCgo+IAo+IGVudW0gcGlwZSB7Cj4gwqDCoMKgwqDCoMKgwqDCoElOVkFM
SURfUElQRSA9IC0xLAo+IAo+IMKgwqDCoMKgwqDCoMKgwqBQSVBFX0EgPSAwLAo+IMKgwqDCoMKg
wqDCoMKgwqBQSVBFX0IsCj4gwqDCoMKgwqDCoMKgwqDCoFBJUEVfQywKPiDCoMKgwqDCoMKgwqDC
oMKgUElQRV9ELAo+IMKgwqDCoMKgwqDCoMKgwqBfUElQRV9FRFAsCj4gCj4gwqDCoMKgwqDCoMKg
wqDCoEk5MTVfTUFYX1BJUEVTID0gX1BJUEVfRURQCj4gfTsKPiAKPiAjZGVmaW5lIHBpcGVfbmFt
ZShwKSAoKHApICsgJ0EnKQo+IAo+IGVudW0gdHJhbnNjb2RlciB7Cj4gwqDCoMKgwqDCoMKgwqDC
oElOVkFMSURfVFJBTlNDT0RFUiA9IC0xLAo+IMKgwqDCoMKgwqDCoMKgwqAvKgo+IMKgwqDCoMKg
wqDCoMKgwqAgKiBUaGUgZm9sbG93aW5nIHRyYW5zY29kZXJzIGhhdmUgYSAxOjEgdHJhbnNjb2Rl
ciAtPiBwaXBlCj4gbWFwcGluZywKPiDCoMKgwqDCoMKgwqDCoMKgICoga2VlcCB0aGVpciB2YWx1
ZXMgZml4ZWQ6IHRoZSBjb2RlIGFzc3VtZXMgdGhhdAo+IFRSQU5TQ09ERVJfQT0wLCB0aGUKPiDC
oMKgwqDCoMKgwqDCoMKgICogcmVzdCBoYXZlIGNvbnNlY3V0aXZlIHZhbHVlcyBhbmQgbWF0Y2gg
dGhlIGVudW0gdmFsdWVzIG9mCj4gdGhlIHBpcGVzCj4gwqDCoMKgwqDCoMKgwqDCoCAqIHRoZXkg
bWFwIHRvLkVEUF9QU1JfVFJBTlNfCj4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+IMKgwqDCoMKgwqDC
oMKgwqBUUkFOU0NPREVSX0EgPSBQSVBFX0EsCj4gwqDCoMKgwqDCoMKgwqDCoFRSQU5TQ09ERVJf
QiA9IFBJUEVfQiwKPiDCoMKgwqDCoMKgwqDCoMKgVFJBTlNDT0RFUl9DID0gUElQRV9DLAo+IMKg
wqDCoMKgwqDCoMKgwqBUUkFOU0NPREVSX0QgPSBQSVBFX0QsCj4gCj4gwqDCoMKgwqDCoMKgwqDC
oC8qCj4gwqDCoMKgwqDCoMKgwqDCoCAqIFRoZSBmb2xsb3dpbmcgdHJhbnNjb2RlcnMgY2FuIG1h
cCB0byBhbnkgcGlwZSwgdGhlaXIgZW51bQo+IHZhbHVlCj4gwqDCoMKgwqDCoMKgwqDCoCAqIGRv
ZXNuJ3QgbmVlZCB0byBzdGF5IGZpeGVkLgo+IMKgwqDCoMKgwqDCoMKgwqAgKi8KPiDCoMKgwqDC
oMKgwqDCoMKgVFJBTlNDT0RFUl9FRFAsCj4gCj4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9kcm0tdGlwL3RyZWUvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
Lmgjbjg3Cj4gCj4gPiAKPiA+IEZpeCB0aGlzIGJ5IHVzaW5nIFRSQU5TQ09ERVJfRURQIGRlZmlu
aXRpb24gaW5zdGVhZCBvZiAwLiBFdmVuCj4gPiB0aG91Z2h0Cj4gPiBUUkFOU0NPREVSX0VEUCBk
b2Vzbid0IGV4aXN0IGluIGRpc3BsYXlfdmVyID49IDEyIGRvaW5nIGl0IHRoaXMgd2F5Cj4gPiBr
ZWVwcwo+ID4gY29kZSBjbGVhbiBhbmQgcmVhZGFibGUuCj4gCj4gdHJhbnNfc2hpZnQgPSAwIGlz
IGZpbmUsIHdlIG5lZWRlZCB0aGlzIGJlY2F1c2UgZGlzcGxheTEyKyBzcGxpdGVkCj4gZnJvbSBh
IHNpbmdsZSByZWdpc3RlciB3aXRoIGFsbCB0cmFuc2NvZGVyIHRvIG9uZSByZWdpc3RlciBwZXIK
PiB0cmFuc2NvZGVyLgo+IAoKTm8sIGl0J3Mgbm90LiBTZWUgdGhlIGRlZmluaXRpb24gb2YgIF9F
RFBfUFNSX1RSQU5TX1NISUZUIGFuZApFRFBfUFNSX1RSQU5TXyouIE1heWJlIHJlbmFtaW5nIHRy
YW5zX3NoaWZ0IHRvIHRyYW5zY29kZXIgd291bGQgcHJldmVudAptaXN1bmRlcnN0YW5kaW5nIGhl
cmUuCgo+ID4gCj4gPiB2MjogSW1wcm92ZSBjb21taXQgbWVzc2FnZSAoSm9zw6kpCj4gPiAKPiA+
IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPgo+ID4gQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IC0tLQo+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiArKystLS0K
PiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+
IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5k
ZXggOWRlZjhkOWZhZGU2Li45ZWNmMWE5YTExMjAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBAQCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyB2
b2lkIHBzcl9pcnFfY29udHJvbChzdHJ1Y3QgaW50ZWxfZHAKPiA+ICppbnRlbF9kcCkKPiA+IMKg
wqDCoMKgwqDCoMKgwqAgKiAwIHNoaWZ0IGluIGJpdCBkZWZpbml0aW9uCj4gPiDCoMKgwqDCoMKg
wqDCoMKgICovCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+
PSAxMikgewo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRyYW5zX3NoaWZ0ID0g
MDsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0cmFuc19zaGlmdCA9IFRSQU5T
Q09ERVJfRURQOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbXJfcmVnID0g
VFJBTlNfUFNSX0lNUihpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpOwo+ID4gwqDCoMKgwqDCoMKg
wqDCoH0gZWxzZSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRyYW5zX3No
aWZ0ID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOwo+ID4gQEAgLTE5NSw3ICsxOTUsNyBAQCB2
b2lkIGludGVsX3Bzcl9pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZHAKPiA+ICppbnRlbF9kcCwg
dTMyIHBzcl9paXIpCj4gPiDCoMKgwqDCoMKgwqDCoMKgaTkxNV9yZWdfdCBpbXJfcmVnOwo+ID4g
wqAKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKSB7
Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJhbnNfc2hpZnQgPSAwOwo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRyYW5zX3NoaWZ0ID0gVFJBTlNDT0RFUl9F
RFA7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGltcl9yZWcgPSBUUkFOU19Q
U1JfSU1SKGludGVsX2RwLT5wc3IudHJhbnNjb2Rlcik7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfSBl
bHNlIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJhbnNfc2hpZnQgPSBp
bnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7Cj4gPiBAQCAtMTE5Nyw3ICsxMTk3LDcgQEAgc3RhdGlj
IGJvb2wgcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhzdHJ1Y3QKPiA+IGludGVsX2RwICppbnRl
bF9kcCkKPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEy
KSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCA9IGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFRSQU5TX1BTUl9JSVIoaW50ZWxfZHAtCj4g
PiA+cHNyLnRyYW5zY29kZXIpKTsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2
YWwgJj0gRURQX1BTUl9FUlJPUigwKTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqB2YWwgJj0gRURQX1BTUl9FUlJPUihUUkFOU0NPREVSX0VEUCk7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgfSBlbHNlIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsID0gaW50
ZWxfZGVfcmVhZChkZXZfcHJpdiwgRURQX1BTUl9JSVIpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB2YWwgJj0gRURQX1BTUl9FUlJPUihpbnRlbF9kcC0+cHNyLnRyYW5zY29k
ZXIpOwo+IAoK
