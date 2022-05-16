Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11825280ED
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 11:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEDA11247B;
	Mon, 16 May 2022 09:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAE0D11247B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652693902; x=1684229902;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GYcjdRpAQYl4dQw6r7Mu9rNhDcDcbmSi267X2IhLpFQ=;
 b=HpSfcIiCARGTrZcqcVh6KtyF6O9QGjP9Yv+Qw6n4/j7ldmwtcq5Lc9S8
 u31ISuTxkCJdQTuDDeMou2iBud2hGQvDbaGRllkKG07hNDRVe6Nu3A0+H
 Hw4JZHg8OKxQ/zVFjR6Jb25xgbBaAJ+4v295b4g7B/qP44oTv+GRGY+k/
 VlbO5NvrNGffFMWYqh+0bpFtzzUc+TrwkL2ip5T9Qrs3+Kvtw4aEtpA0d
 0PNn/ztPe9Tso91P6WdQuUqHjnGN/zzW+CZKCs/5yRgNS1Wq012CnKwaE
 tlXYN9yk5VXGiwIaib4rn/if+dhLSYmWtMTIHR0PTCMuIn/oM3988mhgv g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10348"; a="269608195"
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="269608195"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 02:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,229,1647327600"; d="scan'208";a="568242986"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 16 May 2022 02:38:21 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 02:38:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 16 May 2022 02:38:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 16 May 2022 02:38:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T9vA/BxQ/iiQiE9Fx4XDgWIY6/VsdNPeRJcr69g+s3fZAmGOP5haPdjIztKGDCCXk+2Xhul6C/Gk6TlHJAccIKyMXXqpxrHiHvpGzVU8LWAX3QaiNKb6c3uwxZ9Fpw5oJlG2Eo+DrLie0K01BukkRi2XHcc76wcET38aa3pFqoXfUcEX2Cls24Yv6GCOA9dkSu3B1rWvxj2+AVkAdDucbxqIv0J8CaCM/hn0yuT7Z0At3vGQ8Nvs7SsRJ55zrnmfrhamu5QMxcRkXCArj7m99rL7lEjQKTMBzKs3p9WiRQOn3KBlp2dKFsDZeTN2POM6lLBJRXz7N9MdPeDsUfaajg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GYcjdRpAQYl4dQw6r7Mu9rNhDcDcbmSi267X2IhLpFQ=;
 b=gBRKFON40wWtiOLb3Qww8SMGByXVaeuYwJBEBpFHIXIUdS8IjS24kAT9EWKgJikZ9OxLzgc0JlPC6AfSZ/SsCo+JN0ZitctKnwJ4We0WN7GnHbeIiZlolqUq2g4LQDoUatHQOA//oV9ivvE5PQNI+XEHsGeCnDUkEniKBjNUR4waLdmIYmQ7yGcZjrEjKQ21E1v7+he9FNhMeygbk97q0E5G9EJZwdS5lUZROFhLbEhPS3UGbrPqU036ezPJo6YJnhy9RqMvgohxBvAWdhltuA2iJJmJ8WfDG9D+fm9qSMatOW5h4E0E66e8WjqrpbwbSs1vb1yM53DF2MFI/63NTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3114.namprd11.prod.outlook.com (2603:10b6:5:6d::11) by
 SA2PR11MB4796.namprd11.prod.outlook.com (2603:10b6:806:117::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.15; Mon, 16 May
 2022 09:38:13 +0000
Received: from DM6PR11MB3114.namprd11.prod.outlook.com
 ([fe80::8ce1:a828:cb5d:80d4]) by DM6PR11MB3114.namprd11.prod.outlook.com
 ([fe80::8ce1:a828:cb5d:80d4%3]) with mapi id 15.20.5250.018; Mon, 16 May 2022
 09:38:13 +0000
From: "Hellstrom, Thomas" <thomas.hellstrom@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: individualize fences before adding
Thread-Index: AQHYZr3s4DvJzRkHvkuUcufYAKNFMa0hQ9UA
Date: Mon, 16 May 2022 09:38:13 +0000
Message-ID: <ff9bf2cc8942481020d5bb3f9e25d246e4fa4f8f.camel@intel.com>
References: <20220513113752.21265-1-nirmoy.das@intel.com>
In-Reply-To: <20220513113752.21265-1-nirmoy.das@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-3.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3157a308-6370-4d73-a44b-08da371fcc43
x-ms-traffictypediagnostic: SA2PR11MB4796:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtFwd
x-microsoft-antispam-prvs: <SA2PR11MB479667A7F0B08BE34AEE558997CF9@SA2PR11MB4796.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9GoHm90xO9eQaFVQEnIrflnqAjrqwiRh0oXgbcAgQGw70zP3M3MfbvATm/j1l7wK4ZpA3YudXvKd2OUJCT+6UB+MXcIiDu4wv4fBW1pTkdamd6C45VAphGC5cwjGk6TVr6ZI86Xlav4PzSTxSc0nbp0FUnLN4FG0CdjiYjRgWDfAYe2KM9CjI3tfUcBrB/eprbpEUfj8kVKdiB8cqVzyx862c/rQnSgnCfSJ6f1KsmYsMhUwwXzqpOL5b2nt3CiuSFHWlHH9kJU4AXr9RtbHnpGv2CiSM9HEM/Gw3ElROCffjze0vWAovBAp/D0Fpk4uahc1uVN1IZUVxX72k/8+Tp4qk6yYPvqIl7QBBqrVvIs7ujSrIS/Bm5NDV3pmfPifB92AOAlFsQ8K80jZMJWBn3+5cn8qoQiLNmse+C92MelXk3EHacCJL0mMAOtMQ9j1UiLuG8Xh/2MxdkRvZLa/eHy94844yykbh/78PD7FAP12xOa7PpiRE/p+cvteKFI2BQA2sJHQDM/clcNX9jptr5zkCQBMbMckt4kDAQAO6JGCESgEQU3ThV6PzvZHLIOhbe1YTTehd4aasPbTUyvFgBV3OVtrUX4kbwqyfbSQE8Kpf5hypmLD485PS3KxMOhhZtENZZ6XQvYBL7Axlv/Jo51sD4p/k98b5WGb/4Nn1JxnWHcjD30wsjSvVP60tQszTPQhNWuZi1Yk9UYhiMB+7A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3114.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(4326008)(66946007)(66446008)(8676002)(64756008)(66476007)(66556008)(5660300002)(508600001)(8936002)(91956017)(76116006)(186003)(966005)(6486002)(71200400001)(36756003)(2616005)(107886003)(26005)(6506007)(86362001)(122000001)(82960400001)(38100700002)(38070700005)(2906002)(83380400001)(6512007)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UVA1MnE2QkRaZE8zd0lCRXhsS2EvMnJEUWFLTHJDa3ZxdnV1NzdUb1VGQ1Fj?=
 =?utf-8?B?ZlpzN0ZHY3lyTFFpNjE1dHdtZzZlRWtIelVxWFc0UXBMQnJXc1JBUjUwcXk2?=
 =?utf-8?B?Z0VycStITjVVWThGVzk4ak1WQWIvZmlmTThWdlcyazJCcmY0U1k4djVkbFIr?=
 =?utf-8?B?MzcvRnNNdFhqU2hrOENXdkVTbERYcmJUZjNPNzVpZFo0RG4xSHZMU3llRFNM?=
 =?utf-8?B?WEhIUEpkeTB6WEt6bEJQQ0JNZU9PdGNJWHYvK3JUdkduWUt0SW8rSHhHSUxj?=
 =?utf-8?B?MjNKbkxJa3NPaE1IUVI3WjdjQnJJb2ZmZ20xenV6TDZkZG54Y0hzT2RFNzRt?=
 =?utf-8?B?ZVFXa0lOS3ptNTBvTUNtUjFGSE9FNnkzbWl3SmpTUlp3QWR4eC9yV3pHREVN?=
 =?utf-8?B?N0orQ3BFdkF3QjJMM2xXQTVNdTNOeUpiQys3TUlRdDkxc3VMeWkxVEc5WXRN?=
 =?utf-8?B?TEU0cy83RkVDNkZRU1BTd2dtWi9UNFU0REZtQ2JyTUV1Um9oLzZhWVJsYkxY?=
 =?utf-8?B?V1hJOVFBZnRaekUxNmRHZXRydHp1SWFhVEtSSjFUQjBUaWRUVmVaS00xNUY2?=
 =?utf-8?B?RFVEQW9MenV5NXhvSCtYS0dDck5kS1luN3ZVUFRzT09xTnJsRkxnNmlwMWlI?=
 =?utf-8?B?eVpQbGVBRU03ZE0yMXJ0dXFDWThKUEd6b2NlQkI2aUJZN05zaUtDRFd2TmV1?=
 =?utf-8?B?WTFKMll0WXRrbFVKRVRURFpqK3NTeGl0UHRsanRPc3RacTJQNm9yMmxKRTJG?=
 =?utf-8?B?dHUxZzhBSUNCdzZzREFCSlNNZXZkbWFCMWE1TUhtVmdITmpERDBXT1hlSnph?=
 =?utf-8?B?OUxLN28ydXVaTWlGWFJDNGd3MVhrb1Izb1NVTlU3UHZpRHVPbFVMZTZWNXFB?=
 =?utf-8?B?TWV2dlB4MUtlaVROWmtFNDJvNnphaExvZkx3Q1d2dE5ydk5sT0NOdG85c3c3?=
 =?utf-8?B?dWJtdUpzSDBweUwrT0MwOWI4Rnl1RGsrN1RxWXo0dDZjREJ5R3hNT2I3RmRJ?=
 =?utf-8?B?cFQ3bVE3eERyNW9kSUsrSCtwQ0VPS3VxTG5ZZE9kelpSTFJJWmNFL3JRQm4r?=
 =?utf-8?B?VDV6dEduM0NEaTBDem9FSXN3OEU1aXM5VUxYbmlMYVhDN0hLWDdpdmpwT3J5?=
 =?utf-8?B?MWRUYW9RSVFSM280RXR1c00yT0dzMTJlTDd4TXMzZ1ZXeU5TalJ0eng1dlU4?=
 =?utf-8?B?TElIZHVLS3BxTUU5Y1B3dGE3MjhSVHBWdHJET21yVVBqT28vSWFUR2NWOFhl?=
 =?utf-8?B?NnoyTGlPMkFIQWRGbEdEaDd3U0RQQzFtOXFaM2RraU5zdXZlYWFKNXNlUEpH?=
 =?utf-8?B?a0xhR0VvSEFKWExiRjNJaEtKN1AwUnRmT1B3MzFmNDZJYWROdDlTTkJ2amUz?=
 =?utf-8?B?SmRHRkxQd0d2b2pxeVZxNytvY1RaNjJNWmdiUUJKelg2eEU2c1l0OVNReUFw?=
 =?utf-8?B?bkt1Z3p2Lzl5UVRxUXdxNzZkNkg4SFRNT1ZDaFozUDk3bjc2aVJ5RTJUOWFZ?=
 =?utf-8?B?V0xQajI0WDZ3ZzdmMkZYNVNOamZSWTRraGM4OUkxSThiZUhpNCt3MkJ1YUhJ?=
 =?utf-8?B?ODlHbWVhR0VXMlQxY0JwN2YrTkgyRE9rc3AwZVRHVVhMU2ZLcitkQmF5ak1E?=
 =?utf-8?B?ekZDcnhqTFJIbFdUd1hOaEc3YlF4d2tPbnZKVGE1OXI2ZEY5T0hSakY4Z2sz?=
 =?utf-8?B?QldZT0tGek9SY3M2WVNkM3REMDB5MVZmUDFNUUJSendNQnI3VTRERHYyMVRJ?=
 =?utf-8?B?Rk9vdmNlcTcrVVk2SHFTWW4rd0RTRWl2NTNTSk9wSGNBbTh0aXJ1dSsrN08y?=
 =?utf-8?B?bkxlaFNMdGpQUzRNdkdMcHdHa1ZpOEg1eTVtTWpCNkFaMGZRM0lVYk5YcTFn?=
 =?utf-8?B?bFdLSjNBVnp3NzJRVTNiaCtsY0srNkR3QUtMcjNlaXNWd2szMEUvSnMxbnZP?=
 =?utf-8?B?cU9LdHNPdHlTSkFqTkNkbll1ckVpdnNMOVRyaUErN0RLRGlETTlDeHo0ZHNJ?=
 =?utf-8?B?Q0Y3Vm9YSzhxaG9OeUJEclQzVGdKQ210cDB2VVQ1M3hmU0crMDNTdUxnc2oz?=
 =?utf-8?B?cEorMWhUZ1V6R0F3SDlXaTYwczA3aEIyZ3h1WXR5cVBKWjdHNGRiTkRrZ3N5?=
 =?utf-8?B?ZWpMaDBnaGo3TkFKb1NsMWlycU1VMHh6bmdlMkIwQXBMZjhSU21DRVp6TllG?=
 =?utf-8?B?MGxnOXNTNGRYOWFNZnBpU0NySXVQajY1QitDRFJzNklJTHFkL3RmTjNyb1ZH?=
 =?utf-8?B?L3o5dUJCSGNSTmJpQTlSbXBNMlVicGxvb1ZkbnB4cnY2Zm82a2dzRzVxNmZ3?=
 =?utf-8?B?ZG9ZUitvczhudDVTa051dWd5U2dMY3BqSG1laXAwbmFlQkNLQVNSdVNnZHN0?=
 =?utf-8?Q?t8W+TznFEPAcpXBQZepy5piFP3kXBk1gnQDuB?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E29C61411087EA41BA076570286E943E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3114.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3157a308-6370-4d73-a44b-08da371fcc43
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2022 09:38:13.6376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tp+E2fEaLiwew32NfIQt0eX+nvQ8rh7GeuuyZJ2kmeN8LXzyD7Y53n9wryH9IYPvTfKV74+h/oQs/3b/Mg8QuFaxnmCIDmPbtpCBaGWO+uc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4796
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: individualize fences before adding
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTmlybW95LgoKCk9uIEZyaSwgMjAyMi0wNS0xMyBhdCAxMzozNyArMDIwMCwgTmlybW95IERh
cyB3cm90ZToKPiBfaTkxNV92bWFfbW92ZV90b19hY3RpdmUoKSBjYW4gcmVjZWl2ZSA+IDEgZmVu
Y2UgZm9yCj4gbXVsdGlwbGUgYmF0Y2ggYnVmZmVyIHN1Ym1pc3Npb24gc28gbWFrZSBzdXJlIHRv
Cj4gaW5kaXZpZHVhbGl6ZSBmZW5jZXMgYmVmb3JlIGFkZGluZyB0byBkbWFfcmVzdiBvYmoKPiAK
PiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1
ZXMvNTYxNAo+IFNpZ25lZC1vZmYtYnk6IE5pcm1veSBEYXMgPG5pcm1veS5kYXNAaW50ZWwuY29t
PgoKTEdUTS7CoApSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
dm1hLmMgfCAxNyArKysrKysrKysrKysrLS0tLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEzIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfdm1hLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKPiBp
bmRleCA0ZjZkYjUzOTU3MWEuLmY5ODdmYzEyNjRjMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92
bWEuYwo+IEBAIC0yMyw2ICsyMyw3IEBACj4gwqAgKi8KPiDCoAo+IMKgI2luY2x1ZGUgPGxpbnV4
L3NjaGVkL21tLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtYXJyYXkuaD4KPiDCoCNp
bmNsdWRlIDxkcm0vZHJtX2dlbS5oPgo+IMKgCj4gwqAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9m
cm9udGJ1ZmZlci5oIgo+IEBAIC0xODQwLDggKzE4NDEsMTIgQEAgaW50IF9pOTE1X3ZtYV9tb3Zl
X3RvX2FjdGl2ZShzdHJ1Y3QgaTkxNV92bWEKPiAqdm1hLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgfQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAo
ZmVuY2UpIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGRtYV9yZXN2X2FkZF9mZW5jZSh2bWEtPm9iai0+YmFzZS5yZXN2LAo+IGZlbmNlLAo+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIERNQV9SRVNWX1VTQUdFX1dSSVRFKTsKPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludCBpZHg7Cj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZG1hX2ZlbmNlICpj
dXJyOwo+ICsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGRtYV9mZW5jZV9hcnJheV9mb3JfZWFjaChjdXJyLCBpZHgsIGZlbmNlKQo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9y
ZXN2X2FkZF9mZW5jZSh2bWEtPm9iai0KPiA+YmFzZS5yZXN2LCBjdXJyLAo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+IERNQV9SRVNWX1VTQUdFX1dSSVRFKTsK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBvYmotPndy
aXRlX2RvbWFpbiA9IEk5MTVfR0VNX0RPTUFJTl9SRU5ERVI7Cj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgb2JqLT5yZWFkX2RvbWFpbnMgPSAwOwo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+IEBAIC0xODUzLDggKzE4NTgsMTIgQEAg
aW50IF9pOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZShzdHJ1Y3QgaTkxNV92bWEKPiAqdm1hLAo+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAoZmVuY2UpIHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9yZXN2X2FkZF9mZW5jZSh2bWEtPm9iai0+YmFzZS5yZXN2
LAo+IGZlbmNlLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERNQV9SRVNWX1VTQUdFX1JF
QUQpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50
IGlkeDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0
cnVjdCBkbWFfZmVuY2UgKmN1cnI7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgZG1hX2ZlbmNlX2FycmF5X2Zvcl9lYWNoKGN1cnIsIGlkeCwgZmVu
Y2UpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZG1hX3Jlc3ZfYWRkX2ZlbmNlKHZtYS0+b2JqLQo+ID5iYXNlLnJlc3YsIGN1
cnIsCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gRE1BX1JF
U1ZfVVNBR0VfUkVBRCk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgb2JqLT53cml0ZV9kb21haW4gPSAwOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgfQo+IMKgwqDCoMKgwqDCoMKgwqB9Cgo=
