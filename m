Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 980CD6229B5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BE2810E559;
	Wed,  9 Nov 2022 11:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C88010E559
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667992180; x=1699528180;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BU/S4kI5SqKmu3mtcKqQjaOp0AR4uR1a3tuEtXoc24E=;
 b=D3tvhdMheb8rS5RHvSlPYxzgbcV/s/t5pkV9xQR6zAQ5x+Buz/H+A5cU
 qORnd2fdmVarpq3Ifvwt2KN0x5ogMAJgDS6yDM/Bs6CgNyUmNNAnfoB9T
 HLLOqmoHU139Fhhr16xgGWp5t8X9QZ5lC8ZPex4t4hbk46t80Pq7zZFIU
 pXIYnOOUaM2MySKdSVp63Hp3apq3l4Z2OtpuKNaok9Mxqzs34Apr6V6OC
 Bx0wWx90ce3Z0pLDpHmcMh+2fXpb/gj4ZDeZTOL285RQmrVNieOBgXtJK
 tiS2ZC1jLRqdTwpYe3YdJjXPJZhqWapJNheFQwgzDJtzRcSE8Nu0wrX7z g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="294324531"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="294324531"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:09:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636703263"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636703263"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 09 Nov 2022 03:09:37 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 03:09:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 03:09:36 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 03:09:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2VDMTi60bX/lhxxKSdEUCidCYD6NdiOqVqMBboJRBsvNRJLorKQA28npM6X5+U4ohuv8G27kXS3dFA0RyvuoSD52TOg+E7V9DnV1mCVRUdWk6oQTPUn9/pGSbLfKNbA+SthsPaE7rlV928q8Hop6uUADGc6dKvLTjcfJFunCAhtgV8KnJBpdtFpZkVWkGeJbmG7/rwDMyDSZovl5dXJkVdZi0XUzXM0GshRmLRAH6GiJLYZaQDhh8OkD+FPm1hnPXivAhuXypqZ6AuDXjfJRR/+65n9+dlhjbFzlRA7HuFfIM+n4lpLndsA3L8sD9BkTwZSDg95J2dbQzyNj3AOFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BU/S4kI5SqKmu3mtcKqQjaOp0AR4uR1a3tuEtXoc24E=;
 b=cQcMbhoCJHtTygmNQLtzlU7jCiD3BKlXmyto7fnerOoMvuhhNqAI3+UpzjZJHo/eUaFADXq+Br7Y2etD0629wVFSoA/ct1gi9KCswvUwrr9WPRWAOvGWplxUij3QhmZC55vIBNUDWlWA9wr6WROFSFjhpyOWqFhXe7xvq9p4R2zqga9Jico6tdNz2CFgJhUpKX0+v15lJKpRD+9Ios7Mcpw0v30Ur8cL8oe9saYV6tkV3tpk8Wij6p+KXLAiUpVfQ7L+Z5No8BpFjP3MYPLBC+2Gjyv8aCVV0s89H3ksr/x1IUJbD2VvYuQugPJU6ys7XzgWAoUwCReBiFasVVCaIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB5262.namprd11.prod.outlook.com (2603:10b6:5:389::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Wed, 9 Nov
 2022 11:09:34 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::4b94:7187:5dcf:24b3%9]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 11:09:34 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual EDP scenario
Thread-Index: AQHY87hWZLfzg/TTe0inwCKth0f2u642X9aAgAAECoCAAAELgIAAA20AgAAEOQA=
Date: Wed, 9 Nov 2022 11:09:34 +0000
Message-ID: <PH7PR11MB59815AA31E3901348D970283F93E9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221108211822.28048-1-animesh.manna@intel.com>
 <20221108211822.28048-2-animesh.manna@intel.com> <Y2t80/UUH/EwhrLa@intel.com>
 <87wn8477bc.fsf@intel.com> <Y2uBF56Fe+VZ9K9X@intel.com>
 <87o7tg76kp.fsf@intel.com>
In-Reply-To: <87o7tg76kp.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB5262:EE_
x-ms-office365-filtering-correlation-id: e6c46449-89f3-4250-f341-08dac242e249
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4CKiUcFnscOY8+0xrcVpa4qrWlw1OUaZqhkGzbi6emmFeTHOk8+CujE++D0KLBlZXNp9lM6C+mJUgcNOpE1QeiyAvYhuwJK0ie5dD4nPmSxG9i+nlelOYq6VLTTaXMjwKg4KA6CCeq9gN5vzxGDTbntveLrFzhy8QFz4NiPJIPYdvx11wq2I7Wc1oolFOWr4uIMQ6g66HlTWdzTReFUDr+H3aQ9e3m1XWLMkAsbjoAVWneiFphliuu7SGEUlHLcZlMHWwW0p5of1uC8yKEeAToBR98Qg+sKLoHwp+b9RST3JOfG1aBNn5O7soxkiRoTw6U429RKedmrLTsnkupA6HnIb+t8t5+hJzD+gIOxJzqjRbHJu8LMxUMXTZD7HxRvr+kOWdDcCdXymzEMqhZu8cVeAFvrrh1J1EuLj8ID01SlmsNU7hAilSMzGPqKBVQ0xpzmDfyyfdQl9mu8Oh3QeVsPm36+15+qCoNmtdTZmaypNiXM0s3P5KVsVv4wlWS0sHrcUajaY+k94/+g2yeO6bcr0nkJAZEA4zjQc5EO8NiXFNWQ9Xxuybhqr6MXfD9MVc5y4kTnRIJzC81uEefaOPlLUviFpWhK3WF2EzKVzLCJV6jsI6aU4AsP3JDJe9EnWDsQqnahHZEW3HBxW6jjmPfAkEs9U6BQMX2Ec+er1JWlKbb++ZXrdaOjL0UhN9ayciZFgO/hTfspwHKSpV1xu0Lm8efhljQLvVPRhRyDg1U6kNUd+LGSM4XNpo7wSUF3VfO/RaUeZOugfvbjezUqmdbmL+mCY+lh0wu8Y54v/TjpXr7G9qu7c0RZX0UNuQuNyOzqgf0SUU3MihyKJBnbRcUIU/G4EjRjheHxPtu6H4Toxz/7ev/okigcHA3GfX4Rs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(396003)(346002)(366004)(451199015)(52536014)(66446008)(64756008)(5660300002)(66476007)(76116006)(66946007)(66556008)(8936002)(33656002)(41300700001)(478600001)(38070700005)(86362001)(2906002)(83380400001)(55016003)(66574015)(71200400001)(186003)(26005)(7696005)(9686003)(6506007)(82960400001)(316002)(110136005)(55236004)(53546011)(54906003)(966005)(122000001)(8676002)(4326008)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmZaeldlRWNvYnltTU8rclJsc0RMUXJhekZlWHM0blBCR0lTaGxweisyQXhE?=
 =?utf-8?B?dlpBUFJhdkxhSS85eGUrbDNMUmxtd3NNTFhlS0RlTVMvNkFuODEzbzc4MS8w?=
 =?utf-8?B?RC9FMHZTcjlRT3hIS1ZDRitzeTVPVERWVXR1UFhXVHpZamlkcHo3WjJuLzFx?=
 =?utf-8?B?RFZQSE1qZ1BNUk8xeVBOUEM5MmhpMXd6eEZnUGhqaWNkd1o5R056MkFQbGpk?=
 =?utf-8?B?bzVMMVhRd0xyOVlLUUtqRlBWZUwreS9nOGtrUEJMZ2NRUTc1R1g1NDkyYU5u?=
 =?utf-8?B?Y1l0Ym5aRVNBcWFnQjFmdFFqVk16aDBYUElPZ2F3TG9oRjVXZ09jMGZuYStB?=
 =?utf-8?B?WlBQdjd4VTQ1dlRIbzJ6UXgxSjhKN2tRVk5PZG1aTTd3dlVpaUk5Z3pla3c0?=
 =?utf-8?B?VXYwekJwSG9hcVEveGZaSkF4cnV5U21vU2haMHNvSkJhaGs4Qi82NHFOaGV6?=
 =?utf-8?B?SkFCSWhXdysxY0xqZ2hSSmw2WmcydFNpOE9lOG45UWdQUDJrdEZRUWxuM2RR?=
 =?utf-8?B?blpyby9tM1ZFL2NoemVCUVd4bjBZWHBGeWNueC9jeVk2dW4yQmplWm5TQVNv?=
 =?utf-8?B?ZGltTEQ2UUpqK21xdzFSQ0hFSGdSZDZ6NUtGZXV1ZmpFc3NBcDVFdUxaSlQ0?=
 =?utf-8?B?bHZQR1VLVFQyRmk5aDM1blpRaS9xRVNKdms3ZHk5cDBrSlQvTURkK2JSS1pm?=
 =?utf-8?B?eGdldE5hNEtTTW1QZ2d4U016aXg3RWVSWG1ycTRENlpiUWYrcDhhM2NLUndr?=
 =?utf-8?B?c2t5UktCZjJoTXlvSUNVUEpzUmpyNndYd0poSFRrSGtmd3ZiZXU1YjJld01u?=
 =?utf-8?B?a2g4T0gzSXhuWFJtdmtrTTJLWEpIL0V3N3VUVG1LellLcklqbUZDMm9mQkk1?=
 =?utf-8?B?UVl5RnpNR2pyS2xza2kxWmpXMXRueXNTcVlEWGo2L21aQ1I3SlN1Vi9oYit4?=
 =?utf-8?B?SEppRXJSTE5ld3U1cXJzS3k2YzhqSGxXZkg1L3U2VHlJbmdkcGxzYWxqdzZL?=
 =?utf-8?B?WWIwV0JUcXJMdEdaK1hobXJuMFhRc1lXcHRXdmc2Mzc0TDd5Qy9IbENlU3pq?=
 =?utf-8?B?a21abTV1QTd4NUFEREpsM09JUGhJRTRwZWNVOGFEeWd5T0VrTnI0RVN2N25G?=
 =?utf-8?B?WE1PNlJiY3hFSktuVVhUell1UEVIUEQ2ano3aE54WmxzckhMditXZEdPNkhL?=
 =?utf-8?B?eXBkSkFweFBsRkYwQmIxY2tIL1pNeW55b2l3dzViSFpkR3U0K2pBby90TkhH?=
 =?utf-8?B?RS9FWVFRYjgwWG9uU2dzNk1ZaTloaWw1cW40ZndDejFaUmVwOStzUG5lbm10?=
 =?utf-8?B?NFV2aTVjY2xmSHNESnI5UjZhSlJ6cm9vUXpIb1l5S0ViL1V2SERJRW0vR1BK?=
 =?utf-8?B?ZEloV3JZc1FyMVNkRWhQWWd5bVp5cGpBSG1IMUhvU1RVVGtTaHVDc2l3bWlG?=
 =?utf-8?B?d0JBUWRDaDFrVjVLY3JoS2NSdE1MVXluNTRDekwrZHlXd1dwNUhIbm9GRFp3?=
 =?utf-8?B?TjlNZzBjdCtJY0dYS0hZd1hXcEtnVGhzS1QzOGlkWVUzdEZXck5rS2xFVHhp?=
 =?utf-8?B?SlkrUzVtOHBBc2ZSMmhZaXVkNVJvNHZoMndIOWdBcitSbnp6OXRnSnI3NStV?=
 =?utf-8?B?bzJJbEpFTWpSSVJGWTVnSS9vdVV4U3ZPYW5JUExJZGFRaFFIWXdjWk90cldT?=
 =?utf-8?B?elJSWHRzRm42bGc1RVlRTnZnaHQ0ajMwMHc0WXh3NzBuRm4vTndTdTI5MGFG?=
 =?utf-8?B?UGFvMEhhL2FEUFVaT1I3eFBpV2JPNy8ya2NDdk9URy84dlpuY3ZEYXRucjBp?=
 =?utf-8?B?MjlPUWZzcU1IdDNqa3E4S2pTMTlXK3g0NUZld24xMVpqVFp4SGlpZVlOTGln?=
 =?utf-8?B?YXR1YkE1bjA3K3hIQnRYaUdOTXJlNEh2MTF3emx5VjExY2tUWXdTRXNzWmIr?=
 =?utf-8?B?enJEZmFGMEpwYWhGUUVydkkzUkg2dTBMOXlyVCtsUkM5TDF0bFJwRHhlUlhF?=
 =?utf-8?B?ci82dWZpVGpXODdablc0ajNpWEtXRzBBUFJOcDdBN1I5dVVTSTEvNnJmK0h2?=
 =?utf-8?B?UVowUVZka1dHaUxQNTkzeW1mc0hCN2x4blp1STgzb0xRSkN5b3dDN2dZM01x?=
 =?utf-8?Q?6r3uxdYi4W+JEs6nRBc+NLt0h?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6c46449-89f3-4250-f341-08dac242e249
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 11:09:34.6161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hdAVDJ+Cy3iua9fq44WmPw+vsS7se48dlb0xW9YYXWviVQzReaUCvzqLHsoXT28bavH/+D7B7Is3dVdIZCKX3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5262
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgOSwgMjAy
MiA0OjEyIFBNDQo+IFRvOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsg
aW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFNoYW5rYXIsIFVtYSA8dW1hLnNo
YW5rYXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDIvM10gZHJtL2k5MTUvcHBz
OiBFbmFibGUgMm5kIHBwcyBmb3IgZHVhbCBFRFAgc2NlbmFyaW8NCj4gDQo+IE9uIFdlZCwgMDkg
Tm92IDIwMjIsIFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
IHdyb3RlOg0KPiA+IE9uIFdlZCwgTm92IDA5LCAyMDIyIGF0IDEyOjI1OjU5UE0gKzAyMDAsIEph
bmkgTmlrdWxhIHdyb3RlOg0KPiA+PiBPbiBXZWQsIDA5IE5vdiAyMDIyLCBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gPiBPbiBXZWQs
IE5vdiAwOSwgMjAyMiBhdCAwMjo0ODoyMUFNICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiA+PiA+PiA+RnJvbSBkaXNwbGF5IGdlbjEyIG9ud2FyZHMgdG8gc3VwcG9ydCBkdWFsIEVEUCB0
d28gaW5zdGFuY2VzIG9mIHBwcw0KPiBhZGRlZC4NCj4gPj4gPj4gQ3VycmVudGx5IGJhY2tsaWdo
dCBjb250cm9sbGVyIGFuZCBwcHMgaW5zdGFuY2UgY2FuIGJlIG1hcHBlZA0KPiA+PiA+PiB0b2dl
dGhlciBmb3IgYSBzcGVjaWZpYyBwYW5lbC4gRXh0ZW5kZWQgc3VwcG9ydCBmb3IgZ2VuMTIgZm9y
IGR1YWwgRURQDQo+IHVzYWdlLg0KPiA+PiA+Pg0KPiA+PiA+PiB2MTogSW5paXRhbCByZXZpc2lv
bg0KPiA+PiA+PiB2MjogQ2FsbGVkIGludGVsX2Jpb3NfcGFuZWxfaW5pdCB3L28gUE5QSUQgYmVm
b3JlIGludGVsX3Bwc19pbml0Lg0KPiA+PiA+PiBbSmFuaV0NCj4gPj4gPj4NCj4gPj4gPj4gQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4+ID4+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+PiA+PiBDYzogVW1h
IFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gPj4gPj4gU2lnbmVkLW9mZi1ieTog
QW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4+ID4+IC0tLQ0KPiA+
PiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCA3IC0tLS0t
LS0NCj4gPj4gPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmggfCA3
ICsrKysrKysNCj4gPj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyAgIHwgOSArKysrKystLS0NCj4gPj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHBzLmMgIHwgMiArLQ0KPiA+PiA+PiAgNCBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gPj4gPj4NCj4gPj4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4+ID4+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPj4gPj4gaW5kZXggYzI5ODdm
MmMyYjJlLi5mY2E0NGJlOWJhYjggMTAwNjQ0DQo+ID4+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4+ID4+IEBAIC03MDYsMTMgKzcwNiw2IEBA
IHN0YXRpYyBpbnQgZmFsbGJhY2tfZ2V0X3BhbmVsX3R5cGUoc3RydWN0DQo+IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsDQo+ID4+ID4+ICAJcmV0dXJuIDA7DQo+ID4+ID4+ICB9DQo+ID4+ID4+DQo+
ID4+ID4+IC1lbnVtIHBhbmVsX3R5cGUgew0KPiA+PiA+PiAtCVBBTkVMX1RZUEVfT1BSRUdJT04s
DQo+ID4+ID4+IC0JUEFORUxfVFlQRV9WQlQsDQo+ID4+ID4+IC0JUEFORUxfVFlQRV9QTlBJRCwN
Cj4gPj4gPj4gLQlQQU5FTF9UWVBFX0ZBTExCQUNLLA0KPiA+PiA+PiAtfTsNCj4gPj4gPj4gLQ0K
PiA+PiA+PiAgc3RhdGljIGludCBnZXRfcGFuZWxfdHlwZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwNCj4gPj4gPj4gIAkJCSAgY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9k
YXRhICpkZXZkYXRhLA0KPiA+PiA+PiAgCQkJICBjb25zdCBzdHJ1Y3QgZWRpZCAqZWRpZCkNCj4g
Pj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5oDQo+ID4+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgN
Cj4gPj4gPj4gaW5kZXggZTM3NTQwNWE3ODI4Li5kYTAxYjEzMjYwYWUgMTAwNjQ0DQo+ID4+ID4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4+ID4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4+ID4+
IEBAIC0yMzEsNiArMjMxLDEzIEBAIHN0cnVjdCBtaXBpX3Bwc19kYXRhIHsNCj4gPj4gPj4gIAl1
MTYgcGFuZWxfcG93ZXJfY3ljbGVfZGVsYXk7DQo+ID4+ID4+ICB9IF9fcGFja2VkOw0KPiA+PiA+
Pg0KPiA+PiA+PiArZW51bSBwYW5lbF90eXBlIHsNCj4gPj4gPj4gKwlQQU5FTF9UWVBFX09QUkVH
SU9OLA0KPiA+PiA+PiArCVBBTkVMX1RZUEVfVkJULA0KPiA+PiA+PiArCVBBTkVMX1RZUEVfUE5Q
SUQsDQo+ID4+ID4+ICsJUEFORUxfVFlQRV9GQUxMQkFDSywNCj4gPj4gPj4gK307DQo+ID4+ID4+
ICsNCj4gPj4gPj4gIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdik7ICB2b2lkDQo+ID4+ID4+IGludGVsX2Jpb3NfaW5pdF9wYW5lbChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4+ID4+ICAJCQkgICBzdHJ1Y3QgaW50ZWxf
cGFuZWwgKnBhbmVsLA0KPiA+PiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ID4+ID4+IGluZGV4IDc0MDBkNmI0YzU4Ny4uMDhlY2UzNDdmN2NiIDEw
MDY0NA0KPiA+PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gPj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
DQo+ID4+ID4+IEBAIC01MjU0LDYgKzUyNTQsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9lZHBfaW5p
dF9jb25uZWN0b3Ioc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gPj4gPj4gIAkJcmV0
dXJuIGZhbHNlOw0KPiA+PiA+PiAgCX0NCj4gPj4gPj4NCj4gPj4gPj4gKwlpbnRlbF9iaW9zX2lu
aXRfcGFuZWwoZGV2X3ByaXYsICZpbnRlbF9jb25uZWN0b3ItPnBhbmVsLA0KPiA+PiA+PiArCQkJ
ICAgICAgZW5jb2Rlci0+ZGV2ZGF0YSwgTlVMTCk7DQo+ID4+ID4+ICsNCj4gPj4gPj4gIAlpbnRl
bF9wcHNfaW5pdChpbnRlbF9kcCk7DQo+ID4+ID4+DQo+ID4+ID4+ICAJLyogQ2FjaGUgRFBDRCBh
bmQgRURJRCBmb3IgZWRwLiAqLyBAQCAtNTI4OCw5ICs1MjkxLDkgQEAgc3RhdGljDQo+ID4+ID4+
IGJvb2wgaW50ZWxfZWRwX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAs
DQo+ID4+ID4+ICAJCWVkaWQgPSBFUlJfUFRSKC1FTk9FTlQpOw0KPiA+PiA+PiAgCX0NCj4gPj4g
Pj4gIAlpbnRlbF9jb25uZWN0b3ItPmVkaWQgPSBlZGlkOw0KPiA+PiA+PiAtDQo+ID4+ID4+IC0J
aW50ZWxfYmlvc19pbml0X3BhbmVsKGRldl9wcml2LCAmaW50ZWxfY29ubmVjdG9yLT5wYW5lbCwN
Cj4gPj4gPj4gLQkJCSAgICAgIGVuY29kZXItPmRldmRhdGEsIElTX0VSUihlZGlkKSA/IE5VTEwg
OiBlZGlkKTsNCj4gPj4gPj4gKwlpZiAoaW50ZWxfY29ubmVjdG9yLT5wYW5lbC52YnQucGFuZWxf
dHlwZSA9PQ0KPiA+PiA+PiArUEFORUxfVFlQRV9GQUxMQkFDSykNCj4gPj4gPg0KPiA+PiA+IHZi
dC5wYW5lbF90eXBlIGRvZXMgX25vdF8gY29udGFpbiBlbnVtIHBhbmVsX3R5cGUgKGEgYml0IG9m
IGFuDQo+ID4+ID4gdW5mb3J0dW5hdGUgbmFtZSBzZWxlY3Rpb24gYnkgbWUgdGhlcmUgSSBndWVz
cykuDQo+ID4+ID4NCj4gPj4gPj4gKwkJaW50ZWxfYmlvc19pbml0X3BhbmVsKGRldl9wcml2LCAm
aW50ZWxfY29ubmVjdG9yLT5wYW5lbCwNCj4gPj4gPj4gKwkJCQkgICAgICBlbmNvZGVyLT5kZXZk
YXRhLCBJU19FUlIoZWRpZCkgPyBOVUxMIDoNCj4gZWRpZCk7DQo+ID4+ID4NCj4gPj4gPiBJIHN1
c3BlY3QganVzdCBjYWxsaW5nIHRoaXMgdHdpY2UgbWlnaHQgbGVhayBhbGwga2luZHMgb2Ygc3R1
ZmYuDQo+ID4+DQo+ID4+IFllYWgsIHdoYXQncyB1cCB3aXRoIHRoaXMsIHRoaXMgaXMgc29tZSBv
bGQgdmVyc2lvbiB0aGF0IHdhcyBmaXhlZA0KPiA+PiB3YXkgYmFjayB0b28uIEkgdGhvdWdodCB0
aGlzIHdhcyBnb29kIHRvIGdvOg0KPiA+Pg0KPiA+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9y
LzIwMjIxMDE4MDgzOTIxLjIzMjM5LTItYW5pbWVzaC5tYW5uYUBpbnRlbC4NCj4gPj4gY29tDQo+
ID4NCj4gPiBUaGF0IGxvb2sgYnJva2VuIGluIGV4YWN0bHkgdGhlIHNhbWUgd2F5IHdydC4gZW51
bSBwYW5lbF90eXBlLg0KPiANCj4gWW91J3JlIHJpZ2h0LCBvZiBjb3Vyc2UuDQoNCk15IEJhZCwg
d2lsbCByZWN0aWZ5IGFuZCBzZW5kIHRoZSBuZXcgdmVyc2lvbiByaWdodCBhd2F5IC4uDQpKRllJ
LCBXaXRoIHRoZSBjb3JyZWN0IGluaXRpYWwgc2VyaWVzIFsxXSB3YXJuaW5nIGlzIHNlZW4gb24g
WzJdDQoNClsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzEwOTgy
MC8NClsyXSBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xMDk4MjB2Mi9iYXQtYWRscC00L2lndEBpOTE1X21vZHVsZV9sb2FkQGxvYWQuaHRtbA0KDQpS
ZWdhcmRzLA0KQW5pbWVzaA0KDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiA+DQo+ID4+
DQo+ID4+ID4NCj4gPj4gPj4NCj4gPj4gPj4gIAlpbnRlbF9wYW5lbF9hZGRfZWRpZF9maXhlZF9t
b2RlcyhpbnRlbF9jb25uZWN0b3IsIHRydWUpOw0KPiA+PiA+Pg0KPiA+PiA+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+PiA+PiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4gPj4gPj4gaW5kZXggMzk0
OWZiNDQ5MzUzLi4wOTc1ZTQ5ZjhkMDMgMTAwNjQ0DQo+ID4+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHBzLmMNCj4gPj4gPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcHMuYw0KPiA+PiA+PiBAQCAtMTQzMCw3ICsxNDMwLDcg
QEAgdm9pZCBpbnRlbF9wcHNfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+PiA+
PiAgCWludGVsX2RwLT5wcHMuaW5pdGlhbGl6aW5nID0gdHJ1ZTsNCj4gPj4gPj4gIAlJTklUX0RF
TEFZRURfV09SSygmaW50ZWxfZHAtPnBwcy5wYW5lbF92ZGRfd29yaywNCj4gPj4gPj4gZWRwX3Bh
bmVsX3ZkZF93b3JrKTsNCj4gPj4gPj4NCj4gPj4gPj4gLQlpZiAoSVNfR0VNSU5JTEFLRShpOTE1
KSB8fCBJU19CUk9YVE9OKGk5MTUpKQ0KPiA+PiA+PiArCWlmIChJU19HRU1JTklMQUtFKGk5MTUp
IHx8IElTX0JST1hUT04oaTkxNSkgfHwgRElTUExBWV9WRVIoaTkxNSkNCj4gPj4gPj4gKz49IDEy
KQ0KPiA+PiA+PiAgCQlpbnRlbF9kcC0+Z2V0X3Bwc19pZHggPSBieHRfcG93ZXJfc2VxdWVuY2Vy
X2lkeDsNCj4gPj4gPj4gIAllbHNlIGlmIChJU19WQUxMRVlWSUVXKGk5MTUpIHx8IElTX0NIRVJS
WVZJRVcoaTkxNSkpDQo+ID4+ID4+ICAJCWludGVsX2RwLT5nZXRfcHBzX2lkeCA9IHZsdl9wb3dl
cl9zZXF1ZW5jZXJfcGlwZTsNCj4gPj4gPj4gLS0NCj4gPj4gPj4gMi4yOS4wDQo+ID4+DQo+ID4+
IC0tDQo+ID4+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIN
Cj4gDQo+IC0tDQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50
ZXINCg==
