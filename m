Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A077EF6D9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 18:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB3A10E307;
	Fri, 17 Nov 2023 17:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE66E10E300;
 Fri, 17 Nov 2023 17:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700241308; x=1731777308;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=u6T3IKVcDgxUWblKcwsJhDYwTIiv50vB+7cE+hDLafQ=;
 b=FVjRN4vPEIvr7HAfvzcPPJVGHhdP38NqoKgWBQ+6SYjWz0Cacm7jiIhY
 bP8EX1E57g+PDdBEHLAJ6QuTN6wNm9g08Pa1lHtJrN9IDMnwQ7AuKiNNF
 +l92tNxORnaTIupoKV3X2Rw3dO8hG5KaKmOil7f/KG4kROjLGO81zqdPR
 Dy/sVYFazjirQhftN4gYi8WV3RHAzkTMzZxC6CGwcSsIKXh0bu9VXaYDK
 c0M7H1bRmzpmsxoIUGYWpMtMr0kB6skg6WqQYnSuFWpKOBYycJTSK3FjD
 CsMNbNaXBADbb+BLDoGeuJBhtjBmzEkGgetQbv/InyKfRg7HMf4QVkl6S A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="4419680"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="4419680"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 09:15:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="742122808"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="742122808"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 09:15:07 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 09:15:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 09:15:06 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 09:15:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MFLaDsQtJK89hzh/+8YXc7ZJbI7V1AYOQ1aU5lJeElLZq3eCLaEOd9bKuGJVlOI5fgoZOofPAKzL047c9o0KpoVYRvejJJxRPUXBug7lV1X4MnjE2o2cwFquJ4pSry7CQAuQyRX5TK9czeSy0WTxLt64bkBIugmc9f3FBahY9maW+lUjzu7aTWSFKFUevqsB5EeEQjjSX95JAQTPjQ1bsnXcC/tzkyDBHy6CjP2uq9UUcvbdbDR/E93n0WYmJlFVClTjRZZ8sKmn6GABe3dkjyjNxddDD7X0Vlz3N3ux/sYqw/9v4ero0ettam98ceHF1NrYoEkLQJvD+oPVtdv2WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6T3IKVcDgxUWblKcwsJhDYwTIiv50vB+7cE+hDLafQ=;
 b=ZxOgT+Q+l389j7C1FnxkOzXcGwilk0emZFHDFvLCnMUe/JjIruJ+WOkh45S+/5d6jEDmSaaRE/HJ0J3jv+qWt7DY29J0PmaRTO0f0TqLNqYM6wEY0RZ1p/4XyzmMASh3TbdpkSMs76UbZyFnzwT4Ct4a34bnvgwdbjRckTc1otnmuOfLF6AUk3vuKHq0oGJFFkc4scjhUVWc95HC3jTUIsjYEaKU2l65xYpYXsRjrjL6q7BIr+fP4wV+5ZPP81enNRwyIBx5l6cLva/U6WzCyrZ3TYLfzWtVQf9/wwE4xhyWglPdn6W/SIoXrc98t169UMgnyk8ElysGx4qCnqoDtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5620.namprd11.prod.outlook.com (2603:10b6:303:13e::17)
 by PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 17:15:04 +0000
Received: from CO6PR11MB5620.namprd11.prod.outlook.com
 ([fe80::fa1c:6a63:a5d0:b783]) by CO6PR11MB5620.namprd11.prod.outlook.com
 ([fe80::fa1c:6a63:a5d0:b783%4]) with mapi id 15.20.7002.018; Fri, 17 Nov 2023
 17:15:04 +0000
From: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
Thread-Index: AQHaGSziWSG1DfB+4kC9gdwyPWdtGLB+MW6AgAAMlACAAHwCgIAABtaA
Date: Fri, 17 Nov 2023 17:15:04 +0000
Message-ID: <0830e5605419105eb649874b535735b0f0891384.camel@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com> <ZVcx1MSvP0UgZ14o@intel.com>
 <ZVeZ2xYYs3NYftvm@intel.com>
In-Reply-To: <ZVeZ2xYYs3NYftvm@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5620:EE_|PH8PR11MB8107:EE_
x-ms-office365-filtering-correlation-id: b9c8dd22-4210-410f-63f2-08dbe790bd89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FS/y26uTwn0crZyGoS8ZLn6YFOIfDRNGRSavaNlgTrxLtX1z1jNyaVYe/m21dQpxOoYz2+JBiZ5uouuxODTJwXcmBNL4xhvTKhY0eOZeDe+Ep4BbgNznwJRFKCaDte+JYhmME8QNHJFVBz275wQK+rclBoLI/xVNPGxkEFZ8dFInw3vOBMRCLUo/sZZaTxLL/BpxaKOxdAwqp+/WD06zRT+/plx/yONsK+XEgwbJNsiq1by5Tl5+t33K8r2aqmCSG08yU/q6Vijs6FEAy8I0w/ZY04bki3xHhWU86Jlse0Do4wKCzs2d0FXFvch+Sdfueo+5mGrAppv1Q7b+8KUMqTxrP6oSenKhhKcoEzoR1eDM2tZpUowytBgWIg5lSWzp2GTKmsMCqSPq+TjfMuQVk0uT42ihFfIypBze9bFw/FOUJXpeRoB/aDr92Xc+adrvPsPQcnEXTk70PWRJUZtNcQSmGeEuoOklDVvmbcKDbbWHu8tDvfx21dMM867WlNuD2kZ5Ng3jVzzPe1A8OlI8bsg57hshKRLpC18WfD1XKH9HNXwTO7tK4ZKKWKv4bdOOHJjkiNmi6wOlPkj8McRr9n4NMWlH7l0qQz3FfzPy+6MndFmYF+utXry8O3Q4x2La
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(376002)(39860400002)(136003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(2616005)(66574015)(83380400001)(110136005)(38070700009)(82960400001)(71200400001)(478600001)(6512007)(6506007)(6486002)(4001150100001)(8676002)(4326008)(8936002)(41300700001)(86362001)(5660300002)(38100700002)(2906002)(66476007)(66446008)(64756008)(66946007)(54906003)(76116006)(316002)(66556008)(122000001)(36756003)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmxaQnNZM2M0QTh1c2pEdFhwZjZIa1FnOEg4UW1CbzFrb1Q1TjA4VzlZaUFZ?=
 =?utf-8?B?eG9pUlZIMy81MUdFMjY0YStkR2dza0t3WnM1N0c4OGhvTlAzU1F0VjdXMXFY?=
 =?utf-8?B?ckZpNW84dU9Jc1kxaWNNUzRoaTJXQUNaSHRhRVViTGxtbFZLTDFKTUZTbWZ2?=
 =?utf-8?B?a1BEcGZyMGFCVTJCQm9iQmtjbFVJOXhiR0pnZko1b3hyMjlkODdabFkyTTN5?=
 =?utf-8?B?WWZvZHlWKysrdVZsTnA4eUFHTDdxR0gyV1A1QUp6bWVlK2hDUDZVaXVONDZN?=
 =?utf-8?B?K1VuRlYraitEUTBoT0F2NDdmcTBsUzNwdjRrTkoxSi9NS3MzQzlVdjZGZERt?=
 =?utf-8?B?Rld0dDBQTWFxM3FSbXByYnducGFXVGpraVN3ajZQYjBDOUtySy9yTnNEeTBZ?=
 =?utf-8?B?OUpZNDEvZUsrZmhmM2ZWaDNsTFpvSnRWZ1ZBV011bXloelJxMVlJOEtBcldr?=
 =?utf-8?B?R01MOXZVK0NOalhPUHdBbkU5RjJXQlVkYzhIOExKeXF4MitwQUhSWCtZNGIw?=
 =?utf-8?B?N3lzR1NOR1dKNGFSdGVXbndOdGFBWG56SWtseWsxUzkvaC8wQjRpcmp6QXdn?=
 =?utf-8?B?QWNOR0tOQklabmFJSDI4dlRBVlh1eW9ldG9jRlBwR2hZNTVObVhoYzdPdERk?=
 =?utf-8?B?c29YTS9oSjROb3MrZEMxYWNvOEJqVmx3NSt0eVpRclJZSkpPOHFXRnFIUFR0?=
 =?utf-8?B?OFF5eE5qSnh5SmhaY0tJOWdzMFB0VFJUNE1EdTZRMFN1S3ZxbHByTGRGWDRk?=
 =?utf-8?B?R1NIeUVZTm9CSlhkM05NQVkzL0NhcC9GV2lOOEZGK3BBczU1QkRvNnkranVh?=
 =?utf-8?B?dUl2aW9vUEx0NUpuSjJxZXd6ZFhWUmNGS3phMjgwS2dzQXh5VnNuWXNJdmsw?=
 =?utf-8?B?STJwSk80RzE4ZE9pZFhNN2tCTk15OG1QUFZ1ME1wa1dxU0NOVjNUUytqWlpw?=
 =?utf-8?B?bFpuVVlBd0dpL1R5Wml1bXQ3bHo4NjdBYm9veGdZanJiNTYvVnRLZTZGR1NG?=
 =?utf-8?B?Y3NYejhpamlLTEdJcnVzTy9uYUp2ZTU3TXRZYVdrWFhaZmJob2hvN3RxdDJs?=
 =?utf-8?B?TGpHQTU0M2k5TWUxTnFGcTNsZG1wb3dseWs2WGRJYlMyUkNyTEZCT0Rzajhh?=
 =?utf-8?B?aVJVcC9ud0JMcm9HSjdua2FTRjZtQy9kc1BwU3h3cmJ5aGtCRnFZcG9KQXEr?=
 =?utf-8?B?aHRYaEh6UnByTm03dHUxbWRPZDVFS2dnODlpWGdHTjllWTVRNE56WVdJRjJw?=
 =?utf-8?B?eW5TM3pFN0o4OWl2VHZsSVpjZXk2eEVwSWhWUnl3Q1BxTW1TR0YvcVduRllz?=
 =?utf-8?B?aUdJVzJGYUhlL1pNZG8wMCt6NEoyZlNBa2NQSGtNYUY3dC9XeHNWQkxvN3Va?=
 =?utf-8?B?NTI1eE5mMm1kNHEwYW80T3RpVEJHSVZaZ280VENmUHk2bElzQlBTRlFuTGQ1?=
 =?utf-8?B?NGp1TEVvSG51MFMyWFBTR0pRS1RPTHUvSGNpa2Y3a3JQL1lMazRZMkxUTGQv?=
 =?utf-8?B?anFUZmw3K2hycXprbFdCVURoTUpqOVF6WHFiNUFCOGVKbWxGMmdsUmNia0pr?=
 =?utf-8?B?WHhzdDRucmYrc1BsQzBzeVVFVmMrelJ5aGpBRU5CUjByTkt4UzJNdEloWTBW?=
 =?utf-8?B?OXNhNUhJcVBnV2dQNnBiREt4VFI4eVJIb2dSVFIrTVVRZ2tyVHYvRmhoZnRB?=
 =?utf-8?B?T1FjK3dUOXptRkkyczdEU2o2Tkt0V0RaUGx4Y0hrT1hNUXBkck1rY0pxbi9x?=
 =?utf-8?B?UjJZVDhzb1Q3ZWhKYVRFZGNQS3dLdVRWNEZiTmJISXl1RmVUSjV2V1ZJbkFC?=
 =?utf-8?B?NXNzcVRNMGhKcnVsaUZXVGtUdnlLOSsyOS94Mmg0Yi9sWERQWlJUSjQyTVFk?=
 =?utf-8?B?NGJGOGlwNDJDZVdzUjNQNVF6RnRQdFhYZ0h6UkhyNjdhSEcwdDViVnVxQTFV?=
 =?utf-8?B?U2xjcE4wZUFUbGo3M0JjaVR6WksvaDYyK1NMZ0R5RCtJTGlpNDU4M3N0d0hv?=
 =?utf-8?B?T2wva1dFV3hrYStnVHdqWVVuSmRTRm92NWlGTExabjBkWXVacHAxeWQwUWky?=
 =?utf-8?B?Z2swdWd2T1I1RVdUR3E5d1hOOGJaMkIwV09jWExFT1VXYXNmM1VuZTQ4UEV6?=
 =?utf-8?B?VG9IUWxnRVZhTTBpYVJLTHRCVDFKQk9adVhBVmk5U3ZKaEZrL0FyV3lZcS9M?=
 =?utf-8?B?NllReFdyRUd6UFphQ0dCNUdDV2xuT0Vib0ZnbnpJaGszdW5DbzFlRnlucXIr?=
 =?utf-8?B?a0M0V0lqUUFKeWd1a3plWEE3RWx3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7BF97587DD9378478F68224B0AAEC520@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9c8dd22-4210-410f-63f2-08dbe790bd89
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2023 17:15:04.4237 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SbTbrfHRuavdgrOChcP+gkxfKnaPQAUQEiJw9DnqrAnv3AdobQpOkx5HeBDnuHRMClIFpgdHxsG+R1HPDFisp4Bl1Q2V8CvbFZv1g2q7nj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8107
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
 "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTE3IGF0IDExOjUwIC0wNTAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIEZyaSwgTm92IDE3LCAyMDIzIGF0IDExOjI2OjQ0QU0gKzAyMDAsIFZpbGxlIFN5cmrDpGzD
pCB3cm90ZToNCj4gPiBPbiBGcmksIE5vdiAxNywgMjAyMyBhdCAxMDo0MTo0M0FNICswMjAwLCBW
aWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiBPbiBGcmksIE5vdiAxNywgMjAyMyBhdCAwODow
NToyMUFNICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6DQo+ID4gPiA+IFRoYW5rcyBmb3Ig
eW91ciBjb21tZW50cywgVmlsbGUhDQo+ID4gPiA+IA0KPiA+ID4gPiBPbiBGcmksIDIwMjMtMTEt
MTcgYXQgMDk6MTkgKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+ID4gPiBPbiBU
aHUsIE5vdiAxNiwgMjAyMyBhdCAwMToyNzowMFBNICswMjAwLCBMdWNhIENvZWxobyB3cm90ZToN
Cj4gPiA+ID4gPiA+IFNpbmNlIHdlJ3JlIGFic3RyYWN0aW5nIHRoZSBkaXNwbGF5IGNvZGUgZnJv
bSB0aGUgdW5kZXJseWluZyBkcml2ZXINCj4gPiA+ID4gPiA+IChpLmUuIGk5MTUgdnMgeGUpLCB3
ZSBjYW4ndCB1c2UgdGhlIHVuY29yZSdzIHNwaW5sb2NrIHRvIHByb3RlY3QNCj4gPiA+ID4gPiA+
IGNyaXRpY2FsIHNlY3Rpb25zIG9mIG91ciBjb2RlLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4g
PiBBZnRlciBmdXJ0aGVyIGluc3BlY3Rpb24sIGl0IHNlZW1zIHRoYXQgdGhlIHNwaW5sb2NrIGlz
IG5vdCBuZWVkZWQgYXQNCj4gPiA+ID4gPiA+IGFsbCBhbmQgdGhpcyBjYW4gYmUgaGFuZGxlZCBi
eSBkaXNhYmxpbmcgcHJlZW1wdGlvbiBhbmQgaW50ZXJydXB0cw0KPiA+ID4gPiA+ID4gaW5zdGVh
ZC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiB1bmNvcmUubG9jayBoYXMgbXVsdGlwbGUgcHVycG9z
ZXM6DQo+ID4gPiA+ID4gMS4gc2VyaWFsaXplIGFsbCByZWdpc3RlciBhY2Nlc3NlcyB0byB0aGUg
c2FtZSBjYWNoZWxpbmUgYXMgb24NCj4gPiA+ID4gPiAgICBjZXJ0YWluIHBsYXRmb3JtcyB0aGF0
IGNhbiBoYW5nIHRoZSBtYWNoaW5lDQo+ID4gPiA+IA0KPiA+ID4gPiBPa2F5LCBkbyB5b3UgcmVt
ZW1iZXIgd2hpY2ggcGxhdGZvcm1zPw0KPiA+ID4gDQo+ID4gPiBIU1cgaXMgdGhlIG9uZSBJIHJl
bWVtYmVyIGZvciBzdXJlIGJlaW5nIGFmZmVjdGVkLg0KPiA+ID4gQWx0aG9ndWggSSBkb24ndCBy
ZWNhbGwgaWYgSSBldmVyIG1hbmFnZWQgdG8gaGFuZyBpdA0KPiA+ID4gdXNpbmcgZGlzcGxheSBy
ZWdpc3RlcnMgc3BlY2lmaWNhbGx5LiBpbnRlbF9ncHVfdG9wDQo+ID4gPiBjZXJ0YWlubHkgd2Fz
IHZlcnkgZ29vZCBhdCByZXByb2R1Y2luZyB0aGUgcHJvYmxlbS4NCj4gPiA+IA0KPiA+ID4gPiBJ
IGNvdWxkbid0IGZpbmQgYW55IHJlZmVyZW5jZSB0bw0KPiA+ID4gPiB0aGlzIHJlYXNvbi4gDQo+
ID4gPiANCj4gPiA+IElmIGFsbCBlbHNlIGZhaWxzIGdpdCBsb2cgaXMgeW91ciBmcmllbmQuDQo+
ID4gDQo+ID4gSXQgc2VlbXMgdG8gYmUgZG9jdW1lbnRlZCBpbiBpbnRlbF91bmNvcmUuaC4gVGhv
dWdoIHRoYXQgb25lDQo+ID4gbWVudGlvbnMgSVZCIGluc3RlYWQgb2YgSFNXIGZvciBzb21lIHJl
YXNvbi4gSSBkb24ndCByZWNhbGwNCj4gPiBzZWVpbmcgaXQgb24gSVZCIG15c2VsZiwgYnV0IEkg
c3VwcG9zZSBpdCBtaWdodCBoYXZlIGJlZW4gYW4NCj4gPiBpc3N1ZSB0aGVyZSBhcyB3ZWxsLiBI
b3cgbG9uZyB0aGUgcHJvYmxlbSByZW1haW5lZCBhZnRlciBIU1cNCj4gPiBJIGhhdmUgbm8gaWRl
YS4NCj4gDQo+IFBhdWxvIHZlcnkgcmVjZW50bHkgdG9sZCBtZSB0aGF0IGhlIGNvdWxkIGVhc2ls
eSByZXByb2R1Y2UgdGhlIGlzc3VlDQo+IG9uIElWQiwgc2ltcGx5IGJ5IHJ1bm5pbmcgMiBnbHhn
ZWFycyBhdCB0aGUgc2FtZSB0aW1lLg0KDQpKdXN0IGEgbWlub3IgY29ycmVjdGlvbjogSSBkaWRu
J3QgZ2l2ZSB0aGUgZGVncmVlIG9mIGNvbmZpZGVuY2UgaW4gbXkNCmFuc3dlciB0aGF0IHRoZSBz
ZW50ZW5jZSBhYm92ZSBzdWdnZXN0cyA6KS4gSXQncyBhbGwgImFzIGZhciBhcyBJDQpyZW1lbWJl
ciIuIFRoaXMgaXMgYWxsIGZyb20gbGlrZSAxMCB5ZWFycyBhZ28gYW5kIEkgY2FuJ3QgcmVtZW1i
ZXIgd2hhdA0KSSBoYWQgZm9yIGx1bmNoIHllc3RlcmRheS4gTWF5YmUgaXQgd2FzIHNvbWUgb3Ro
ZXIgc2ltaWxhciBidWcgdGhhdCBJDQpjb3VsZCByZXByb2R1Y2Ugd2l0aCBnbHhnZWFycy4gQWxz
bywgdGhlIHdheSB3ZSB1c2VkIHJlZ2lzdGVycyB3YXMNCmRpZmZlcmVudCBiYWNrIHRoZW4sIG1h
eWJlIHRvZGF5IGdseGdlYXJzIGlzIG5vdCBlbm91Z2ggdG8gZG8gaXQNCmFueW1vcmUuIEFuZCBJ
IHRoaW5rIGl0IHJlcXVpcmVkIHZibGFua19tb2RlPTAuDQoNCj4gDQo+ID4gDQo+ID4gPiANCj4g
PiA+ID4gQWxzbywgdGhlIG9ubHkgcGxhY2Ugd2hlcmUgd2hlcmUgd2UgdGFrZSB0aGUgdW5jb3Jl
LmxvY2sNCj4gPiA+ID4gaXMgaW4gdGhpcyB2YmxhbmsgY29kZSBJIGNoYW5nZWQsIHdoZXJlIHRo
ZSBvbmx5IGV4cGxhbmF0aW9uIEkgZm91bmQNCj4gPiA+ID4gd2FzIGFib3V0IHRpbWluZywgc3Bl
Y2lmaWNhbGx5IHdoZW4gdXNpbmcgUlQta2VybmVscyBhbmQgaW4gdmVyeSBvbGQNCj4gPiA+ID4g
YW5kIHNsb3cgcGxhdGZvcm1zLi4uICh0aGlzIHdhcyBhZGRlZCAxMCB5ZWFycyBhZ28pLg0KPiA+
ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ID4gMi4gcHJvdGVjdCB0aGUgZm9yY2V3YWtlL2V0Yy4g
c3RhdGUNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiAxIGlzIHJlbGV2YW50IGhlcmUsIDIgaXMgbm90
Lg0KPiA+ID4gPiANCj4gPiA+ID4gT2theSwgZ29vZCB0aGF0IHdlIGhhdmUgb25seSBvbmUga25v
d24gcHJvYmxlbS4gOikNCj4gDQo+IGFuZCBnb29kIGl0IGlzIGFuIG9sZCBvbmUhIDopDQo+IA0K
PiA+ID4gPiANCj4gPiA+ID4gLS0NCj4gPiA+ID4gQ2hlZXJzLA0KPiA+ID4gPiBMdWNhLg0KPiA+
ID4gDQo+ID4gPiAtLSANCj4gPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+ID4gSW50ZWwNCj4gPiAN
Cj4gPiAtLSANCj4gPiBWaWxsZSBTeXJqw6Rsw6QNCj4gPiBJbnRlbA0KDQo=
