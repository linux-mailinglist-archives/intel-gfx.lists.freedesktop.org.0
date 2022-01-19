Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E61CE49325C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 02:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BE310E1EC;
	Wed, 19 Jan 2022 01:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D93D10E1EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 01:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642556183; x=1674092183;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=91spIw8GIeTkm58BeeXy33P0TOZi5R+xElVrJg5S/uY=;
 b=JDb7k5ZSb7AdECQ3l2WHe3uC/7W1Nyw9Y8mp8/h1RaPc70A1SXIgUNNb
 JcoYgidJOYiYsJ5jfLufzThhXS5A5ZQgK5bGRPILxr7gcHcU8UuVzb8UG
 rBLTf13IqDWPq51jlPXyUyiX0dQAm0aSDBKehVl1Kv+90sY9kKo8ux8en
 /19f/KmTpt/xQKSZsezz+GShzpY+y3YAzmNe7PysUGluGGtHEITQWhgBI
 m4FxsZAThORhKMJ4tDvKJqOGZxNm4VaM2wT/1iwkTjxQgi3NLsoRpGgos
 NLZ3lNWxx+QYPEfPU16RVzUSig8WrvqIKeMI3XRfNXFu1eDuVHVR0fgQ7 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="269344228"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="269344228"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 17:36:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="560874445"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 18 Jan 2022 17:36:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 17:36:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 18 Jan 2022 17:36:21 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 18 Jan 2022 17:36:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KnIRstiTcvjGrfc2zDYaUylhZrGzcbVQcJYeFTCjB1AKIGI628zQdB87+x0Gx3nCgH6m6Y9aRXor0wApTrpOj+mBQ5uDwLdxg6Hsy+RjfzWBTTKwOufdLZDRzzV7NJ3MWjj6lLltV8xdOWOGQjFDe25CcoUhKQTRHjeC4pGwUqHxghjHo7HnS9qeNoHDht73bTyLShxtS7yZz2S1m+LBnEF6JY3lPUF4WzfhwKgrwfBihxNmWiWV9WNKOo6qCP/XfAhds0W6VAlO4BNNuIRRTK2Z8tT1sWj15QFzlPKkCsWP8GRB6P3SQCDi97k5he6meNvG+IBfMmlduZFwQyEBRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=91spIw8GIeTkm58BeeXy33P0TOZi5R+xElVrJg5S/uY=;
 b=PUvFoKjCoH6eQWvg73M6bxayjfvtYeUYT3THQX6PZ/1tL7v0I0vPPRbdM4dvw0dSiITHVOAMH05R+IDN9QDai5O9q3HS2Mh1+pT+rtwksFDtJq5GduqFzESqA3ZfPDtAc8X9kktZFk35WJ+pJeZTu1wunTSmG0kfriaS/lcNMUlqyuFleYy8bYWT96AoKxephZ7kRtXKvqrBTgMrrbE0ahAUmm1guphXwJsjjsl3x35fcOXYyK87viWyKkq33ny3g6CPeAEHow+aJyhfBj3Kgrph0NZJ82FZi2dR0ibj9h2ltnQm3eXtALXWEV8QAh8IgWgkJTH4JU5mDWQm41E6QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by DM6PR11MB3978.namprd11.prod.outlook.com (2603:10b6:5:19a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.12; Wed, 19 Jan
 2022 01:36:19 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4888.014; Wed, 19 Jan 2022
 01:36:18 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 6/7] drm/i915/guc: Copy new GuC error capture logs upon
 G2H notification.
Thread-Index: AQHYDFJ4CjtuDhz4F0SLoiJPMuJdGaxpkcsA
Date: Wed, 19 Jan 2022 01:36:18 +0000
Message-ID: <304ed4cc83bf360a2d8c7b89abe1fdb63a88bc10.camel@intel.com>
References: <20220118100358.1329655-1-alan.previn.teres.alexis@intel.com>
 <20220118100358.1329655-7-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220118100358.1329655-7-alan.previn.teres.alexis@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26247efd-4bda-47db-48b6-08d9daec1739
x-ms-traffictypediagnostic: DM6PR11MB3978:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB397887544617D83CB92DA5988A599@DM6PR11MB3978.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cOd0nccsaATJRbd0w7LrXJ77tgSxYI/yxRHh+Hgn2PE/sQLK+E/UJZt9I3IVnumG/LGM1HUMRWxdjE7yDPGg0mxgo0nP9EByTJHNUiqKIHrD95pdro2mp4A7qTz17nfRtNJ3zbPwCdS7xLnoBpqHba/Va5Gu20RF02ks9JGfEkG637eAjnHlpwbl9VTx0OK6bc0WoWtzXeJF9PkQsYddblPzstol11f7noSZyP6bsO0GbPOwct86VgreyvI7FDWrBGzqk6yMR06858XqZMhKNDjZUCeh2U54YgclHCeFMO3gE4wk6QnMaO10PyFAH8pzjmAQFXSSA/JGyPSUYhp/Wfn1iXyZ42eLqHytXzeARaBvycBtjpbsRjH05B4I6UX3to/jQS2buyUVCKxpz/DsjJPcD3BfkyrnogoC0BYJ1PPKRxhuqkTu6175i5FJ3NLb4joTfsvIcMYQL+8k+Ey8gHpOwR0316y+GH57dMkIJUTxSFnfmF6g49x1oOWJ+SBQZLINPbi6vwne1HQC4S4HiG+zEPLiAxW/gJ6Mm5AMtvZmlUuVL5FnvTCIgwOqVdNCBtyWH8fz9mCJmjur8fyO/K4IYlTBJcnxT1zoh6epUwBOvtiFVzePLsaeoKBYpoupRYPQrq4cyA86M+wcp+hgA7niO1HSRgeH+H9+pA/mJdZyUcic01aUaI9XUvFu+1DDsvDtlB28b2BgYptL7js1qg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6512007)(66476007)(64756008)(36756003)(66446008)(66556008)(86362001)(508600001)(316002)(8676002)(38070700005)(71200400001)(6506007)(26005)(5660300002)(8936002)(82960400001)(2616005)(54906003)(76116006)(4326008)(6486002)(122000001)(2906002)(38100700002)(6916009)(186003)(15650500001)(83380400001)(66946007)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajZCYmVidUdjYmZTS1VOL1RDRnhzVi9hQWdsUm5OS3QrRE9lMDhjQW1MZW5Z?=
 =?utf-8?B?eGI1TTB0QXJ1enhWcUdud0FieGhhQTVJdnN1ejhpRng2RzNDOWFNVnVHbGta?=
 =?utf-8?B?b3o3emJiMGVtczYvZVI1K3gvOXpGUHdqckcxNFdxczNnZTlmRkE1cFNuMFVi?=
 =?utf-8?B?SGVsS1BsK1RJakxJTDZ5d1MwQlNSdlJScG8zN2RkSkxYL0NLVFY2TWk5VHlY?=
 =?utf-8?B?WmY3aGJaN1VRa0F0dEd0K2dOSE14ZU92Qmc3TXR0SksxYWhTM1FjU3B3ajZo?=
 =?utf-8?B?RTVMNERJQ3NEL1hoRmsyd28rWlNoNHp0L04xSVZBTTdEQjhKbkZuSEd3a2xF?=
 =?utf-8?B?bTBualA5cGYvbGdwaHZKSW4wNTdRTW1EY0JXZEU4YXpkdkF5MFZoamx4M0t4?=
 =?utf-8?B?YTFWV0FqTUxmVldWODN4eGc2RUkyR2g4TWZuam9SZlhjMm5Db3c0bWVuK09X?=
 =?utf-8?B?TVpPRkxiVVRqMU01TVloa20vaHZaLzBieVRSVXl0emJGNTFabDVuRGs2cDN6?=
 =?utf-8?B?NmgydHYyM1YzREdOY3hkaTI1L2gwTmpDN2VtZVY4TkRxS0pBSERWWUdhZlRu?=
 =?utf-8?B?L2dXSy9EUEt6bHBWWWdxZXVlYzZLelNuRi9pVTZFanhNc3dRNFZTK0xVWmFF?=
 =?utf-8?B?bkY4blhvT1JGczNDRDNJMlVHM3BDajcrYkVQbkhhQ2dRRHlMdEt0UTFEUG9F?=
 =?utf-8?B?MGlDTUFKaWNPMXJpVTNYZEhQeURVOExGODNsOGZURnAxb1p4VXc5ZDVGb3Vk?=
 =?utf-8?B?Z1B1Ykk2YVo4dU5ZZUJMZ0pXMDBXdVVRM21iRHBqaWhTazJWaTRyMkF4d2hI?=
 =?utf-8?B?Y2ZMN2ZUdC94Y1EvaFh2YmdWS2lMNE0rNGYyZFBaWnVIQlhnSDczaTRIZm5m?=
 =?utf-8?B?Zk9NalhpU01mai9KY29Pa21SeTdNZTljdmxGdGhkWkpxandTVWFWZ3I3M2NQ?=
 =?utf-8?B?bUVpU0VYemRlN0JWSVNPUTVVb1I3elBXQ2RXVXA4Si9ucm5QczI0SU1qNFNJ?=
 =?utf-8?B?UzF4b1FlOHFQRU9CeWlwWkxzemtzZThpRERKWk9HRGkrcXJkMk8rMjg2TFdX?=
 =?utf-8?B?VVVKMjZDY3VnREgxUmtmQVRHUU1Bc1F4N0k4MW5LK1dmejNEOUtUcjc4YU14?=
 =?utf-8?B?RFg0S1lJWkw4U1RZbWFibmtFN2h5NHk5cm90T2VpNkhKTEsrdGM4STMwWFpR?=
 =?utf-8?B?cFVEUUMweEozbmp5cHIrNUJ3Y3cra2FlNVc2VFl5dXpabHg3S1Z0cFFvMlRo?=
 =?utf-8?B?b3hSNDlvbS9pb1N0am05M1lmYlVoSWZaZ2VWM3RldTR3RFJsSXBkNk5VMm1Z?=
 =?utf-8?B?ZHFrTlBrQ1IwY2ZiQ0VMY1Q3aENBOCtyWTdqQkZUY0NzMS9VV3lzRHBramxy?=
 =?utf-8?B?OFZjZWR3VFJkWEpWVW5NM0pEdDA4THVpcDJJVGdCdzRqUHg1Wmhua3l6VExV?=
 =?utf-8?B?SkNpb1YzdHZSRlZsZ0ZCRGJxTUx4b09yY3k0cFFvVU1KcUczQWIvNVV6V2JS?=
 =?utf-8?B?dzRqeDhqdDd3TTNaZnQ1WitJWG9VUnJhcEdGR1lGMDdPU1MyeVpVOWI5SVBq?=
 =?utf-8?B?cjducC91NWgwRXpvMkN0NndBNTZIWTFtR2pZTkZVV2lKNzJ4RzRtL2lVUjhP?=
 =?utf-8?B?Z3JrNll5L2dPbUlIZXZOS1EwYnorVXg4bmRzdy9RYzY2TUJOZnNWSjg3Vmkx?=
 =?utf-8?B?R2ZIVnN3UkJkSk1FazlPejczNEF2ZmJOa09DbzZNNWx2QmwwOGJ5Nnd4cnlx?=
 =?utf-8?B?Zy9BQjdqL0JMQlpiTTVhWjg3eDgyeUtzTGNHc3d2cnhCdDdFUUs3R1RaNkFN?=
 =?utf-8?B?R2l0bm9JcUgvM1BaeCs2KzlvVURTVG8weTc1ajJMT3JEaXJnb09rSVJBQ2ZC?=
 =?utf-8?B?ZUl1cWVKd1hOTzFTakJHcEhQcXlqaTRrV0lEbGpsbkNROGJ0Z29ISk9CdDdt?=
 =?utf-8?B?eHU4aE1reHBjUm5mYml0NDJMV3VDQ2Ruc3E0OWg3NklIL1ZJTHIycklLSjA4?=
 =?utf-8?B?eVR6L1hnRHVkbXpnN2QxQ3kzR3pkUlR5cjJwRVJ0eUZPS2o0TVhPVjRTOUJq?=
 =?utf-8?B?ZTJzdzM4OC92TmpEY2R3RFRyL2s2VWxLbEU1Zyt0ak5JelFFekd1dzJMVWZY?=
 =?utf-8?B?RHFodzlqaTIwVnA1L1Y3bTVTQVpYLzhxVWNUK3V5US9UbkJPbFRldEFwaDk3?=
 =?utf-8?B?WWJKMHpMZXpXWXdFaEFjNTNnRDZVQ0xJSVlzUGpGNjU2MmNBbi83ejVVdVR4?=
 =?utf-8?B?dllPUWJYYmZRdTRLNHdaL1hiaEJFeTdkUDYyWlIrek8xY1h2blk0akNwRUI2?=
 =?utf-8?B?VUtzYnphSnQ2dDVpUThnZ2xnQklpWmpvRWgxQTZQQUJGNGt0dFl5QT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <560776E21E017142BB97BFD7D69D2219@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26247efd-4bda-47db-48b6-08d9daec1739
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2022 01:36:18.5465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T3ueJXXCNH0YKrBYuWMgcP9c6ptEOsG2gFGN2X2SO6wFFkuNoLTioO6kYJ2lPJ7mlpggWVFAkwkRksAfLiuJ3AyUqeQbGjJ1tKCBCNix/vxhUvG3/AqKAE0r82FoUl3m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3978
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/guc: Copy new GuC error
 capture logs upon G2H notification.
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

QSBmcmVzaCByb3VuZCBvZiBvZmZsaW5lIGRlc2lnbiBkaXNjdXNzaW9ucyB3aXRoIGludGVybmFs
IHRlYW0gaGFzIGRlY2lkZWQgDQp0aGF0Og0KDQogLSB3ZSBkb250IHdhbnQgdG8gdXNlIGFuIGlu
dGVyaW0gY2lyY3VsYXIgYnVmZmVyIHRvIGNvcHkgYWxsIG9mIHRoZSBHdUMNCiAgIGdlbmVyYXRl
ZCByZWdpc3RlciBkdW1wcyBvZiBvbmUgb3IgbW9yZSAnZW5naW5lLWNhcHR1cmUtZ3JvdXBzJy4N
CiAtIGluc3RlYWQsIHdlIHNoYWxsIGR5bmFtaWNhbGx5IGFsbG9jYXRlIG11bHRpcGxlIG5vZGVz
LCBlYWNoIG5vZGUgYmVpbmcNCiAgIGEgc2luZ2xlICJlbmdpbmUtY2FwdHVyZS1kdW1wIi4gQSBs
aW5rIGxpc3Qgb2Ygb25lIG9yIG1hbnkgZW5naW5lLWNhcHR1cmUtDQogICBkdW1wcyB3b3VsZCBy
ZXN1bHQgZnJvbSBhIHNpbmdsZSBlbmdpbmUtY2FwdHVyZS1ncm91cC4NCiAtIHRoaXMgZHluYW1p
YyBhbGxvY2F0aW9uIHNob3VsZCBoYXBwZW4gZHVyaW5nIHRoZSBHMkggZXJyb3ItY2FwdHVyZQ0K
ICAgbm90aWZpY2F0aW9uIGV2ZW50IHdoaWNoIGhhcHBlbnMgYmVmb3JlIHRoZSBjb3JyZXNwb25k
aW5nIEcySCBjb250ZXh0LQ0KICAgcmVzZXQgdGhhdCB0cmlnZ2VycyB0aGUgaTkxNV9ncHVfY29y
ZWR1bXAgKHdoZXJlIHdlIHdhbnQgdG8gYXZvaWQNCiAgIG1lbW9yeSBhbGxvY2F0aW9uIG1vdmlu
ZyBmb3J3YXJkKS4NCiAtIHdlIGFsc28gcmVhbGl6ZSB0aGF0IGR1cmluZyB0aGUgbGluay1saXN0
IGFsbG9jYXRpb24gd2Ugd291bGQgbmVlZA0KICAgYSBmaXJzdC1wYXJzZSBvZiB0aGUgZ3VjLWxv
Zy1lcnJvci1zdGF0ZS1jYXB0dXJlIGhlYWQtdG8tdGFpbCBlbnRyaWVzDQogICBpbiBvcmRlciB0
byBkdXBsaWNhdGUgZ2xvYmFsIGFuZCBlbmdpbmUtY2xhc3MgcmVnaXN0ZXIgZHVtcHMgZm9yIGVh
Y2gNCiAgIGVhY2ggZW5naW5lIGluc3RhbmNlIHJlZ2lzdGVyIGR1bXAgaWYgd2UgZmluZCBkZXBl
bmRlbnQtZW5naW5lIHJlc2V0cw0KICAgaW4gYSBlbmdpbmUtY2FwdHVyZS1ncm91cC4NCiAtIGxh
dGVyIHdoZW4gaTkxNV9ncHVfY29yZWR1bXAgY2FsbHMgaW50byBjYXB0dXJlX2VuZ2luZSwgd2Ug
ZmluYWxseQ0KICAgYXR0YWNoIHRoZSBjb3JyZXNwb25kaW5nIG5vZGUgZnJvbSB0aGUgbGluayBs
aXN0IGFib3ZlIChkZXRhY2hpbmcgaXQNCiAgIGZyb20gdGhhdCBsaW5rIGxpc3QpIGludG8gaTkx
NV9ncHVfY29yZWR1bXAncyBpbnRlbF9lbmdpbmVfY29yZWR1bXANCiAgIHN0cnVjdHVyZSB3aGVu
IGhhdmUgbWF0Y2hpbmcgTFJDQS9ndWMtaWQvZW5naW5lLWluc3RhY2UuDQogLSB3ZSB3b3VsZCBh
bHNvIGhhdmUgdG8gYWRkIGEgZmxhZyB0aHJvdWdoIGk5MTVfZ3B1X2NvcmVkdW1wIHRvcCBsZXZl
bA0KICAgdHJpZ2dlciB0aHJvdWdoIHRvIGNhcHR1cmVfZW5naW5lIHRvIGluZGljYXRlIGlmIHRo
ZSBjYXB0dXJlIHdhcyB0cmlnZ2VyZWQNCiAgIHZpYSBhIGd1YyBjb250ZXh0IHJlc2V0IG9yIGEg
Zm9yY2VkIHVzZXIgcmVzZXQgb3IgZ3QtcmVzZXQuIEluIHRoZSBsYXR0ZXINCiAgIGNhc2UgKHVz
ZXIvZ3QgcmVzZXQpLCB3ZSBzaG91bGQgY2FwdHVyZSB0aGUgcmVnaXN0ZXIgdmFsdWVzIGRpcmVj
dGx5DQogICBmcm9tIHRoZSBIVywgaS5lLiB0aGUgcHJlLWd1YyBiZWhhdmlvciB3aXRob3V0IG1h
dGNoaW5nIGFnYWluc3QgR3VDLg0KDQouLi5hbGFuDQoNCg0KT24gVHVlLCAyMDIyLTAxLTE4IGF0
IDAyOjAzIC0wODAwLCBBbGFuIFByZXZpbiB3cm90ZToNCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMNCj4gaW5kZXggYjYzNzYyODkwNWVjLi5m
YzgwYzVmMzE5MTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19jYXB0dXJlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX2NhcHR1cmUuYytzdGF0aWMgdm9pZCBfX2d1Y19jYXB0dXJlX3N0b3JlX3NuYXBzaG90
X3dvcmsoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KLi4NCi4uDQo+ICt7DQo+ICsJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndWNfdG9fZ3QoZ3VjKS0+aTkxNTsNCj4gKwl1bnNpZ25l
ZCBpbnQgYnVmZmVyX3NpemUsIHJlYWRfb2Zmc2V0LCB3cml0ZV9vZmZzZXQsIGJ5dGVzX3RvX2Nv
cHksIGZ1bGxfY291bnQ7DQo+ICsJc3RydWN0IGd1Y19sb2dfYnVmZmVyX3N0YXRlICpsb2dfYnVm
X3N0YXRlOw0KPiArCXN0cnVjdCBndWNfbG9nX2J1ZmZlcl9zdGF0ZSBsb2dfYnVmX3N0YXRlX2xv
Y2FsOw0KPiArCXZvaWQgKnNyY19kYXRhLCAqZHN0X2RhdGEgPSBOVUxMOw0KPiArCWJvb2wgbmV3
X292ZXJmbG93Ow0KPiArDQo+ICsJLyogTG9jayB0byBnZXQgdGhlIHBvaW50ZXIgdG8gR3VDIGNh
cHR1cmUtbG9nLWJ1ZmZlci1zdGF0ZSAqLw0KPiArCW11dGV4X2xvY2soJmd1Yy0+bG9nX3N0YXRl
W0dVQ19DQVBUVVJFX0xPR19CVUZGRVJdLmxvY2spOw0KPiArCWxvZ19idWZfc3RhdGUgPSBndWMt
PmxvZy5idWZfYWRkciArDQo+ICsJCQkoc2l6ZW9mKHN0cnVjdCBndWNfbG9nX2J1ZmZlcl9zdGF0
ZSkgKiBHVUNfQ0FQVFVSRV9MT0dfQlVGRkVSKTsNCj4gKwlzcmNfZGF0YSA9IGd1Yy0+bG9nLmJ1
Zl9hZGRyICsgaW50ZWxfZ3VjX2dldF9sb2dfYnVmZmVyX29mZnNldChHVUNfQ0FQVFVSRV9MT0df
QlVGRkVSKTsNCj4gKw0KPiArCS8qDQo+ICsJICogTWFrZSBhIGNvcHkgb2YgdGhlIHN0YXRlIHN0
cnVjdHVyZSwgaW5zaWRlIEd1QyBsb2cgYnVmZmVyDQo+ICsJICogKHdoaWNoIGlzIHVuY2FjaGVk
IG1hcHBlZCksIG9uIHRoZSBzdGFjayB0byBhdm9pZCByZWFkaW5nDQo+ICsJICogZnJvbSBpdCBt
dWx0aXBsZSB0aW1lcy4NCj4gKwkgKi8NCj4gKwltZW1jcHkoJmxvZ19idWZfc3RhdGVfbG9jYWws
IGxvZ19idWZfc3RhdGUsIHNpemVvZihzdHJ1Y3QgZ3VjX2xvZ19idWZmZXJfc3RhdGUpKTsNCj4g
KwlidWZmZXJfc2l6ZSA9IGludGVsX2d1Y19nZXRfbG9nX2J1ZmZlcl9zaXplKEdVQ19DQVBUVVJF
X0xPR19CVUZGRVIpOw0KPiArCXJlYWRfb2Zmc2V0ID0gbG9nX2J1Zl9zdGF0ZV9sb2NhbC5yZWFk
X3B0cjsNCj4gKwl3cml0ZV9vZmZzZXQgPSBsb2dfYnVmX3N0YXRlX2xvY2FsLnNhbXBsZWRfd3Jp
dGVfcHRyOw0KPiArCWZ1bGxfY291bnQgPSBsb2dfYnVmX3N0YXRlX2xvY2FsLmJ1ZmZlcl9mdWxs
X2NudDsNCj4gKw0KPiArCS8qIEJvb2trZWVwaW5nIHN0dWZmICovDQo+ICsJZ3VjLT5sb2dfc3Rh
dGVbR1VDX0NBUFRVUkVfTE9HX0JVRkZFUl0uZmx1c2ggKz0gbG9nX2J1Zl9zdGF0ZV9sb2NhbC5m
bHVzaF90b19maWxlOw0KPiArCW5ld19vdmVyZmxvdyA9IGludGVsX2d1Y19jaGVja19sb2dfYnVm
X292ZXJmbG93KGd1YywNCj4gKwkJCQkJCQkmZ3VjLT5sb2dfc3RhdGVbR1VDX0NBUFRVUkVfTE9H
X0JVRkZFUl0sDQo+ICsJCQkJCQkJZnVsbF9jb3VudCk7DQo+ICsNCj4gKwkvKiBVcGRhdGUgdGhl
IHN0YXRlIG9mIHNoYXJlZCBsb2cgYnVmZmVyICovDQo+ICsJbG9nX2J1Zl9zdGF0ZS0+cmVhZF9w
dHIgPSB3cml0ZV9vZmZzZXQ7DQo+ICsJbG9nX2J1Zl9zdGF0ZS0+Zmx1c2hfdG9fZmlsZSA9IDA7
DQo+ICsNCj4gKwltdXRleF91bmxvY2soJmd1Yy0+bG9nX3N0YXRlW0dVQ19DQVBUVVJFX0xPR19C
VUZGRVJdLmxvY2spOw0KPiArDQo+ICsJZHN0X2RhdGEgPSBndWMtPmNhcHR1cmUucHJpdi0+b3V0
X3N0b3JlLmFkZHI7DQo+ICsJaWYgKGRzdF9kYXRhKSB7DQo+ICsJCW11dGV4X2xvY2soJmd1Yy0+
Y2FwdHVyZS5wcml2LT5vdXRfc3RvcmUubG9jayk7DQo+ICsNCj4gKwkJLyogTm93IGNvcHkgdGhl
IGFjdHVhbCBsb2dzLiAqLw0KPiArCQlpZiAodW5saWtlbHkobmV3X292ZXJmbG93KSkgew0KPiAr
CQkJLyogY29weSB0aGUgd2hvbGUgYnVmZmVyIGluIGNhc2Ugb2Ygb3ZlcmZsb3cgKi8NCj4gKwkJ
CXJlYWRfb2Zmc2V0ID0gMDsNCj4gKwkJCXdyaXRlX29mZnNldCA9IGJ1ZmZlcl9zaXplOw0KPiAr
CQl9IGVsc2UgaWYgKHVubGlrZWx5KChyZWFkX29mZnNldCA+IGJ1ZmZlcl9zaXplKSB8fA0KPiAr
CQkJICAgKHdyaXRlX29mZnNldCA+IGJ1ZmZlcl9zaXplKSkpIHsNCj4gKwkJCWRybV9lcnIoJmk5
MTUtPmRybSwgImludmFsaWQgR3VDIGxvZyBjYXB0dXJlIGJ1ZmZlciBzdGF0ZSFcbiIpOw0KPiAr
CQkJLyogY29weSB3aG9sZSBidWZmZXIgYXMgb2Zmc2V0cyBhcmUgdW5yZWxpYWJsZSAqLw0KPiAr
CQkJcmVhZF9vZmZzZXQgPSAwOw0KPiArCQkJd3JpdGVfb2Zmc2V0ID0gYnVmZmVyX3NpemU7DQo+
ICsJCX0NCj4gKw0KPiArCQkvKiBmaXJzdCBjb3B5IGZyb20gdGhlIHRhaWwgZW5kIG9mIHRoZSBH
dUMgbG9nIGNhcHR1cmUgYnVmZmVyICovDQo+ICsJCWlmIChyZWFkX29mZnNldCA+IHdyaXRlX29m
ZnNldCkgew0KPiArCQkJZ3VjX2NhcHR1cmVfc3RvcmVfaW5zZXJ0KGd1YywgJmd1Yy0+Y2FwdHVy
ZS5wcml2LT5vdXRfc3RvcmUsIHNyY19kYXRhLA0KPiArCQkJCQkJIHdyaXRlX29mZnNldCk7DQo+
ICsJCQlieXRlc190b19jb3B5ID0gYnVmZmVyX3NpemUgLSByZWFkX29mZnNldDsNCj4gKwkJfSBl
bHNlIHsNCj4gKwkJCWJ5dGVzX3RvX2NvcHkgPSB3cml0ZV9vZmZzZXQgLSByZWFkX29mZnNldDsN
Cj4gKwkJfQ0KPiArCQlndWNfY2FwdHVyZV9zdG9yZV9pbnNlcnQoZ3VjLCAmZ3VjLT5jYXB0dXJl
LnByaXYtPm91dF9zdG9yZSwgc3JjX2RhdGEgKyByZWFkX29mZnNldCwNCj4gKwkJCQkJIGJ5dGVz
X3RvX2NvcHkpOw0KPiArDQo+ICsJCW11dGV4X3VubG9jaygmZ3VjLT5jYXB0dXJlLnByaXYtPm91
dF9zdG9yZS5sb2NrKTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfZ3VjX2NhcHR1
cmVfc3RvcmVfc25hcHNob3Qoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiArew0KPiArCWlmIChn
dWMtPmNhcHR1cmUucHJpdikNCj4gKwkJX19ndWNfY2FwdHVyZV9zdG9yZV9zbmFwc2hvdF93b3Jr
KGd1Yyk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIGd1Y19jYXB0dXJlX3N0b3JlX2Rlc3Ry
b3koc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiArew0KPiArCW11dGV4X2Rlc3Ryb3koJmd1Yy0+
Y2FwdHVyZS5wcml2LT5vdXRfc3RvcmUubG9jayk7DQo+ICsJZ3VjLT5jYXB0dXJlLnByaXYtPm91
dF9zdG9yZS5zaXplID0gMDsNCj4gKwlrZnJlZShndWMtPmNhcHR1cmUucHJpdi0+b3V0X3N0b3Jl
LmFkZHIpOw0KPiArCWd1Yy0+Y2FwdHVyZS5wcml2LT5vdXRfc3RvcmUuYWRkciA9IE5VTEw7DQo+
ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQgZ3VjX2NhcHR1cmVfc3RvcmVfY3JlYXRlKHN0cnVjdCBp
bnRlbF9ndWMgKmd1YykNCj4gK3sNCj4gKwkvKg0KPiArCSAqIE1ha2UgdGhpcyBpbnRlcmltIGJ1
ZmZlciBsYXJnZXIgdGhhbiBHdUMgY2FwdHVyZSBvdXRwdXQgYnVmZmVyIHNvIHRoYXQgd2UgY2Fu
IGFic29yYg0KPiArCSAqIGEgbGl0dGxlIGRlbGF5IHdoZW4gcHJvY2Vzc2luZyB0aGUgcmF3IGNh
cHR1cmUgZHVtcHMgaW50byB0ZXh0IGZyaWVuZGx5IGxvZ3MNCj4gKwkgKiBmb3IgdGhlIGk5MTVf
Z3B1X2NvcmVkdW1wIG91dHB1dA0KPiArCSAqLw0KPiArCXNpemVfdCBtYXhfZHVtcF9zaXplOw0K
PiArDQo+ICsJR0VNX0JVR19PTihndWMtPmNhcHR1cmUucHJpdi0+b3V0X3N0b3JlLmFkZHIpOw0K
PiArDQo+ICsJbWF4X2R1bXBfc2l6ZSA9IFBBR0VfQUxJR04oaW50ZWxfZ3VjX2NhcHR1cmVfb3V0
cHV0X21pbl9zaXplX2VzdChndWMpKTsNCj4gKwltYXhfZHVtcF9zaXplID0gcm91bmR1cF9wb3df
b2ZfdHdvKG1heF9kdW1wX3NpemUpOw0KPiArDQo+ICsJZ3VjLT5jYXB0dXJlLnByaXYtPm91dF9z
dG9yZS5hZGRyID0ga3phbGxvYyhtYXhfZHVtcF9zaXplLCBHRlBfS0VSTkVMKTsNCj4gKwlpZiAo
IWd1Yy0+Y2FwdHVyZS5wcml2LT5vdXRfc3RvcmUuYWRkcikNCj4gKwkJcmV0dXJuIC1FTk9NRU07
DQo+ICsNCj4gKwlndWMtPmNhcHR1cmUucHJpdi0+b3V0X3N0b3JlLnNpemUgPSBtYXhfZHVtcF9z
aXplOw0KPiArCW11dGV4X2luaXQoJmd1Yy0+Y2FwdHVyZS5wcml2LT5vdXRfc3RvcmUubG9jayk7
DQo+ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0K
