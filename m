Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9527555320
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 20:16:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C21AD10E4AE;
	Wed, 22 Jun 2022 18:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA3810E4AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 18:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655921810; x=1687457810;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=VZU2kqJVzIFYeqTiJRsDIftnu57vUDRNCxdIC01x76Q=;
 b=fapqUX8WdR3UsNlEclaQHtMpqDjxP+OPEOUqw04PpxNFdv74M3pcBpax
 higKT0VKgP0H+k7GSgGMwz28jsjgld/aSnfe8YbEICYAfxHyaRh3/6Dxr
 W2y/AJdOphcfV2JuObpkiMEVM3H7s6eAxscyv2u9ma+eMKZI0M0VgBTJR
 ekBE5k2iIRkQn7YY9UOR4FFhJ8Esmi54yKKUbpZbyBGYsIvPXqI/muyMf
 fWS82H0sy5Pm2OL2LC37deAmZH+jFRWEcvyFWvr2uK0yx9aYELkBlGXc9
 IMObQxzrvMJ+a07vQWj3aNZJ8I5kBpTHaJR7jZHRXGO8/XbeKt6Cm+DE8 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="281575311"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="281575311"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 10:55:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="730466478"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 22 Jun 2022 10:55:13 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 22 Jun 2022 10:55:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 22 Jun 2022 10:55:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 22 Jun 2022 10:55:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBIUtFhR2k1j0f4toWdkCshGqSljpB21WItDjDGuw6qJGb2gJggxtWAkMi4R37i8MXDo4stxTzzf5RcXt07h14MXNVlrDKnaMMmjmjLXN98pE55HBh7EKPt735y1NIHKZOPXhOmV1BOmOx5UkRK2O1l5G10pE7MiEu6vl+EgGBGmMCdGtt09wALAl5aPo2HPXzpxQVoNtAtD2t3yrt8sOQX+VECdXIaJWJun0SNA43fa5PA6f/XvenRuEjV0CBQ6mQNGX3bG0/Em8gFhJoo4YNpEINbytlM7tLNHQ8wbCHGofQtvZ1qZQNjrKv3wXV8FVNhb1KB2yMt3IbtYTwVa5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZU2kqJVzIFYeqTiJRsDIftnu57vUDRNCxdIC01x76Q=;
 b=kvToJV2AA/92Nrk0KHcLx2w0qd1iZphWibiYMcN+0BoSHVome/NF+5BO58hoRH7DKocRRZZrsraJF7DlcM2TbSRSVDQkncwAfRPF1XYWsmPb2tzyyDqSSdJWZROQKb//51ZuTMag99JqiZJ2lUhnsu6GkXjcTwcxZBiLLh0Dd1Zw6oDVw1XEV1JbJoDmZ+2PHkv4jXV5QwLVWKc1tVSMmrIUBJUhV8ec4MPKouA5WMinV2ZPCmdSFMdTdu9ZAQwMjstma6iQDqffGl5JzTlJmFDzgVfypBdvRWFF68vjgDQMTMv4Ho34fHd07cNyMauhm3AGDzf/YkyKhtKDeqoS+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DS7PR11MB6174.namprd11.prod.outlook.com (2603:10b6:8:9a::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.18; Wed, 22 Jun 2022 17:55:11 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%6]) with mapi id 15.20.5373.016; Wed, 22 Jun 2022
 17:55:11 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 14/15] drm/i915/huc: define gsc-compatible HuC fw for DG2
Thread-Index: AQHYfFef8ys0d9FjO06HimV8H0UXq61bye+A
Date: Wed, 22 Jun 2022 17:55:11 +0000
Message-ID: <3cd401b55e28e172773da5504a3991173401e08f.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-15-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-15-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06cb6dd8-de06-4814-a4a2-08da54785a5e
x-ms-traffictypediagnostic: DS7PR11MB6174:EE_
x-microsoft-antispam-prvs: <DS7PR11MB61743E36DE7370C23A4CC0988AB29@DS7PR11MB6174.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jd+BWZ2zdsXmmWUsy+/CLLxsgO/F0+nAREiP+7j9SNjneXylX0GP1E1bpCVfTjJfM69RlBnUG5b+IX1ep0B6GbLHli8mHUuZkQhBxzMFrhYiupXbf8PcMgxI6fG6Zku4K/j90RWtHAZWd6WTbyo3KYsTdK0fcUnr4E41L84Za18qJjpammv92EM/gZayXB4mLMok8aZc2gfEHEDD1QMyT5iYdpl7b5WRhylB3fUIO5RgjtItnbV0hy4F42GdkoXIAtlRKsjnSoRvTBkwO5RypNuziVqB0r0xHI/SIiYPcrapuen2+VrinRdGGWcFIsXw13RnjaxA1Ok2ZRjoEN0Rs/w2VUH312RLj0ZGNpJ5X0yHc00kEhCXZWsQjPg5HS478XLQAAHT/dW6X1w7VyXFM4gR5Bs3WoJLNdndsCXfqXaAwhnkepTBm15vga9WoJCqq8sngc8eTeHKTvhav48lZNq6fBARTcpV1sT3lRe7avXezgF0iIWJnGAC7WJhl70dwDAmF3ACrm1CJS8MPwFgqRJilRIQo5rdF1IgNzDLP/2BcyJTKHojZuwYJ1E2lbhOMYpZDTHD5BSEexfC9Ax0QKOTFPpIWVeodCOSflHhyoNhESj+alkRVFGg/k5SrKwZayWOHs0fsajU9dL1Y7rV+uXb53V+1MgNDCQwE8LEfoCjcX2uHxu5bxpZnoyYy0o1diRjB2t8LHZGWej9Wdeq3no5JVC0vqNvgpGGk7f8Gh8xKqWocOUlw+psPg2F4kpW2RTz3sH/Emr4HW6N90WZog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(376002)(346002)(39860400002)(366004)(66446008)(66946007)(66556008)(8676002)(64756008)(76116006)(8936002)(6506007)(66476007)(478600001)(4326008)(41300700001)(107886003)(36756003)(86362001)(91956017)(38100700002)(82960400001)(6512007)(122000001)(2616005)(38070700005)(71200400001)(5660300002)(26005)(2906002)(83380400001)(110136005)(6486002)(4744005)(186003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b055cDhTOVplVDBUNVFGalNvUW5CbGxacjFUNkxnOTB4NmdrTVlmYnlpZGVO?=
 =?utf-8?B?SXZsQUVQUzR0UkhYZWxMNTZnMERlY1kvZEl3MEUzb3ZHdE9ab2lLRUtZUW5L?=
 =?utf-8?B?MllWSUY0VFFTNjA3TWR5OUlDWm9WY1JieVRiT28vdjFML1AwOHhMMG90VlJQ?=
 =?utf-8?B?MDF0dWR6ekFLOXNMWGRJL0QrRjVVQlBsb1AxUGRMTGtJbWU0VEdsOGN3NVYy?=
 =?utf-8?B?ZW5wTXh0bTN2RENOaE9TUUNXZjZFUUVXTkpXQWx5eDllY3RGL2NtT0cvSGNp?=
 =?utf-8?B?ZXNVY3lKd3lEOGJncVAyVXg4WmFBMUxpTlpxSWdvZmJYcmYrS1YyNXZJY3BG?=
 =?utf-8?B?d3hpUVlHd05qQU14YnVLMG9JRXV2UTRLdWFjOWdUZzJhNldlOHh5alJIYVox?=
 =?utf-8?B?Rkc4N0VQYytxNVpOWUpPdmlOWVlEbjYyTjBTaThUOGZnSVBad3hzbE5aNTlS?=
 =?utf-8?B?YWhtcjdMS3RzOHR4T1JrbVV1RGlSVE5ndmxMZ3hRTnN5T1JFUWdabE95RzY4?=
 =?utf-8?B?UkJEMjA5cmF5elh0ZFBvVHc4SnhrZFJtREU4N24yTFkrR2xxamVSNUhjc243?=
 =?utf-8?B?SFNjS3NXZ0pkMjkyVGxIR0VCWklMQ3FON00zSlR1MFVRSWQ4S2g0bXFKMnlT?=
 =?utf-8?B?Ym9iOGtUYkpmNEZ6a1lhNEZwVnFrT1RRSUt3M3lmenJYZEU5MURkUStOVndk?=
 =?utf-8?B?T1BPb1NuZzVsaXJtMjkrSElDY2hnbVhkOHRiNHZoaFg5cG12UDhLQmtOWi8z?=
 =?utf-8?B?TlJObGpkTkVpRjZkVXNvd05WcVJscnBaV2htdWhRdVYzOThSY1FabHNwanVJ?=
 =?utf-8?B?eSswTm1IY3o1dW1QSU55U1dDOHZxY1UvVjdJL0Q4eENQYzJtTWYwQjBQbjlB?=
 =?utf-8?B?NExxRWVCM2ovNFlJSVR4UERpcHpCdTJTMWUvMkZyRkRucGtscm01a29YU3B4?=
 =?utf-8?B?SDBoWFNMQ0kxUGhrRkFNV1JXMXZ2MDI4c0Y2cDlxUEY1UlNCbVVNUkZGTmUw?=
 =?utf-8?B?LzdVZ0hkTDdPQ2pyVGN0ZVZicFdRcEpmVDFkMUhPYVQ4U2F1aWs2a2ZhZDR3?=
 =?utf-8?B?eFA0ZW5DMk1XSXAwQm9mcWUrZE5VYjNQRDNac2F2U011MEY1V0gyMmZyWmhW?=
 =?utf-8?B?ZEtxS0tCeEE5Qk9TT1Vpd1c4blN0Lyt1Q2gxbmdZcEdXcmpMVkRlWlp3ZUF6?=
 =?utf-8?B?WUFEMU5ZeFlWNmZ5ZFAvVFhCaGNEaktJazh2akJCSGpORzY0aExFTmlSeXJ4?=
 =?utf-8?B?eW9sMEVSQ3JxV1hGT2o3bmtoajBKamI3UFBobVVpaXJjMWpWVHdYR1ZTWk5h?=
 =?utf-8?B?dDVoMHpRWFMrdTZrK3BWeldYeUtuVGh1TTdPYklNUXQ5MUxHSklLcWgrbUJ5?=
 =?utf-8?B?cUNoalRpd0hJUjQ4UG95SVNncXhJalY3cytxV0szTXZyelgwNXNOdXYzYkdC?=
 =?utf-8?B?WUUxem5odExBVERZdkFMMVJSbXhENUpjNEEwYjQxK1U1WUFKbnUvRHdMb2Za?=
 =?utf-8?B?YmlrZUViU1R2S3BVR1B2d1NHSmlqdEw3TDdGMDJxdUY2Q0pGMUh6c1poc3Z6?=
 =?utf-8?B?c1YzREtPaWlwd1VWR2dSRk83MHZHT1MrK1NuZjZaUmxSUHkyZWd3WFNGUVRx?=
 =?utf-8?B?WGhUM0NCcDdwOW5lUjQveEQ5NWJGKzk1SXFtUUNSNWtpT1N1a0hadE50Znkz?=
 =?utf-8?B?bndRL3ZRWmhJY0RONkQvT1hpU2RKOTlJTDBtOGNLRm9vVHd1dTllckN1L29S?=
 =?utf-8?B?UXg4OGpSc2lianF3UHJHL3RnRHJtTDd6TE1ka0p3ZEtlRjRyRTBzbUlrR3Ar?=
 =?utf-8?B?TnEzaTBwMWhtZGhqNGovQjd0NVdmQ2o1VDROSGsxd2E2ZkFocW00L3M1eklW?=
 =?utf-8?B?VTIyaVdrVHNlQm9CNXhtelNvemtKSm5tcmlWbyt2eGN1cDNxQXExdndRWTV0?=
 =?utf-8?B?czc1VnZPM2UxRGxDT2tkMkdyS3BnNWpQQXlzMy9Lcm1obFM3enF6TjRjYm94?=
 =?utf-8?B?aWRHSkN6enoxdkY0SU51UXg2N0NqSVVkUk1hU3U5d29FbSszeHdZZysrazRY?=
 =?utf-8?B?ZmIxZWJwaTI0dEg2QkxtRW1QNW5OSnhSakhmNXdCb2w5MkI5VzJvVzVuZzRP?=
 =?utf-8?B?MXU5blkxejFZbVhmeUdweERCUlBPWE01WXhpYVZwWFpmRHRJV0FOZDZYR1pr?=
 =?utf-8?B?eU9uZE94YTBTUURqRWdDRWtWaHl6RE16bGRBNUowZ2JtNkdZS0UvaTR4UXlV?=
 =?utf-8?B?NEdqQzRwNE5ZTVZMclpEVkhnd3l5cHN1ZTBLcnBlMFNpaW5RaXFRNDhObytT?=
 =?utf-8?B?RFlCWmI1U2k3aGM1M0Zxam5mMlBac1pZdjRCbG9qb1Z5V2F3TitMdGUxa3Ez?=
 =?utf-8?Q?bUmwpqmWyk48Dg6oHiPU/FG8Z+cs0WcR9CIVTogOcEJ2D?=
x-ms-exchange-antispam-messagedata-1: pAjpT+GZ4qSWXg==
Content-Type: text/plain; charset="utf-8"
Content-ID: <7EF4C78DC21CA94E933BFF745E5FF25A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06cb6dd8-de06-4814-a4a2-08da54785a5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2022 17:55:11.4994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I2X2bSz6XB7E1nen40xDqtuCo0i+FHU4PNnoHiUm3kGhZhw0PBhGj4JTDzwMpMtKC5CrgQDjD2A9Y53zmLOmzvbxROGCUK9odpZkrGhE9qbVZN8QifxAEaxcxEKj5x/E
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6174
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 14/15] drm/i915/huc: define gsc-compatible
 HuC fw for DG2
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

UmV2aWV3ZWQtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwu
Y29tPg0KDQpPbiBUaHUsIDIwMjItMDYtMDkgYXQgMTY6MTkgLTA3MDAsIENlcmFvbG8gU3B1cmlv
LCBEYW5pZWxlIHdyb3RlOg0KPiBUaGUgZncgbmFtZSBpcyBkaWZmZXJlbnQgYW5kIHdlIG5lZWQg
dG8gcmVjb3JkIHRoZSBmYWN0IHRoYXQgdGhlIGJsb2IgaXMNCj4gZ3NjLWxvYWRlZCwgc28gYWRk
IGEgbmV3IG1hY3JvIHRvIGhlbHAuDQo+IA0KPiBOb3RlOiBBLXN0ZXAgREcyIEcxMCBkb2VzIG5v
dCBzdXBwb3J0IEh1QyBsb2FkaW5nIHZpYSBHU0MgYW5kIHdvdWxkDQo+IHJlcXVpcmUgYSBzZXBh
cmF0ZSBmaXJtd2FyZSB0byBiZSBsb2FkZWQgdGhlIGxlZ2FjeSB3YXksIGJ1dCB0aGF0J3MNCj4g
bm90IGEgcHJvZHVjdGlvbiBzdGVwcGluZyBzbyB3ZSdyZSBub3QgZ29pbmcgdG8gYm90aGVyLg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4NCj4gQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCA2NCAr
KysrKysrKysrKysrKy0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNyBpbnNlcnRpb25z
KCspLCAyNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYw0KPiBpbmRleCBkMmM1YzkzNjdjYzQuLmZlNmJlN2VkYmM3MiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jDQo=
