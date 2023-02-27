Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBEE6A4593
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 16:07:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4836810E423;
	Mon, 27 Feb 2023 15:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53EC10E423
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677510428; x=1709046428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y1jM7KRMOZA+hHyZZ7G/dOpznJ3OiziNNnpYDplylXo=;
 b=ALwR4Rxyyq9VULUZyLgASyBwJxm5j+uL2ST+C8/9BNqpfkhH0XnpAPAU
 pUVrVdo1FHh4ablhRWqh/L6JO9mHc2hlDcE0eHQksjHwHv6uptQdOI+Ch
 nTqKxgtJs1RuHr9Kv++XJgRmTkasJ+Twu8/R8wx4oA+PrP4fSVolg0WpI
 TT2au89Rwi72wQRNq+9Ppod64iZyD2l6FeYouaTiHtoca9OSfXoO9FEKU
 lf8hB/cKoi+yCWlfkBaMGDMGlaSeymi/8x5P8R2Gq+cISrsAHV4mkeErn
 BKw/Fo8mDxqRuNJBIdQCLix/7igwvs85WRsOOMmNlsLeJ+K0PdyqvY/o2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331351673"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="331351673"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 07:06:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="623612342"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="623612342"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 27 Feb 2023 07:06:37 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 07:06:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 27 Feb 2023 07:06:36 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 07:06:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bnJan2Rym5xsIVqU78Fg1y81f+wOQVVBqYDHNIMF69HR0decucw/QvyI1Ag0EE67+Kf+1eDQCzHoWpLrby1YEa/yGDhHX+AcWN5/wjV5/W3DhBuNsxZ9a6ppaIx7mm8f1v4Cwa2Yi+Wzb2CpY7NoQJTD812mHogy9asoUGcRr4buvZlKPFahlbJR8EfWkMJR5ptC6toe4WburzYwUbxw9/R11Zpd4DHv9fOL2zMIMyCHkWiwSMmKBxFKhIG7vBQCmoOn+480gNQrAnz5Xfgs0wNLRVzn9H2qolk75OugGjKIYvSjDWM1v9kDCWHOMiLzW0nW7Y5QhcIFe99RlKgGZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y1jM7KRMOZA+hHyZZ7G/dOpznJ3OiziNNnpYDplylXo=;
 b=Nz8wPD2JpXK13vFP6G3G/0EFb2GM/DU7z0hmmIMjIfeLWTHxqaTdbbNk63eeRpbOwHaK5LKMjUUmOkEXnxBXM18k0ETNsHray9hUrmEn+JleQSeglQY9QRQl88oyGvwS4ndaVmfmnqn686bacY2ahJXU6SWvuIDfh0sj8iYVbdO18OSQx3QUb3RbbSivJ73x0RCRvbbaUiOwBdPujh5XMstMebX2UdASwG0I2WLV+1q2ATamRBdrKpkoyGRgw/NcbXT4YmaHapA6X/pdWfJQtj7nr62keeZpcx17eV5oFIyJSmmFwMmT2neLNjmJVjov72Ypq/PXsh40F9ts6wakww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MW4PR11MB7162.namprd11.prod.outlook.com (2603:10b6:303:212::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Mon, 27 Feb
 2023 15:06:35 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e%3]) with mapi id 15.20.6134.029; Mon, 27 Feb 2023
 15:06:35 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Use correct huge page manager for MTL
Thread-Index: AQHZSHewCS9mErqoa02mNxnCdhUgbK7iqgYAgAA+33A=
Date: Mon, 27 Feb 2023 15:06:34 +0000
Message-ID: <CH0PR11MB54440B078F3E2603A5905A87E5AF9@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230224174016.2081135-1-jonathan.cavitt@intel.com>
 <2f0b0fa0-d1d9-465b-a0ec-10a7f04b1765@intel.com>
In-Reply-To: <2f0b0fa0-d1d9-465b-a0ec-10a7f04b1765@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MW4PR11MB7162:EE_
x-ms-office365-filtering-correlation-id: 0a888c93-28af-41d6-78c7-08db18d437a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TEytIN+VdTNa/zQA9A7wadCRLiPdpnw9gr6X/3tKhKerASFxPk+fOsvwiYmMLq4bpZDD4+Bi8j8kFHZPU0LpuOClpXb/2/P8mi1qUfp/C2zkEBLkzzhtP51HUb3h3h4NPzD35E+QuBDK6lbPZytZR64k6/cNpjdzHDE62tJf7sd1LHLqZTvrvAhDArWTjCJYs9RGa57B7tUfMnJnBRfH3GJ9l0zJnaylL62WhIGjOc32itLkRmwAsvPmlT3Bj9dc7zAEG2yL3juVkg6Q5js9kwc/Vd9I4QWhh3nIGayHOW9cJSwh7vlGeQJkUyajJyo6EPPR1Bp/HKl+m+72/KTLy/Ta9H/zd6TjvMp3FRzRldlhoX+CTQyZi/oIS98IbN9PVxvN+ujypSJP5qoaEUThEpmI10T8jIqqoLUT8a8OscEJ9FWrDlmpo6KIVmfDFW+bH2KWNVKCBc2ei6+ZgPxF7oVWZs4tfbwOXoI00shf9Xqu2OfI6bQt2rVL1P1BbWXrdWsP98pp/tTdErYDbMyrOr3mcZTbC0WH4WMHp3yHOh9awUxnUcYtP9fAwVzqubG0TFbUz7bFCSn/Wgy08xmwi77BHBu2NlL5PU06Ke1Ce/svMxgZODGzJBA2eGNTBmkQzOwbUTtYz/DeLfu/mgfTtgTvOakkWoDn8NjE+3QiYlBBfNA0sye97hEm7KZ5kIdWvAoLPp6XVidVeMMpc97MpIaoHZZA2fHlQpVxD+kj/QQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(39860400002)(376002)(136003)(396003)(451199018)(478600001)(7696005)(71200400001)(54906003)(26005)(53546011)(316002)(186003)(9686003)(6506007)(110136005)(66946007)(66476007)(64756008)(66556008)(83380400001)(4326008)(76116006)(8676002)(66446008)(41300700001)(52536014)(5660300002)(8936002)(122000001)(55016003)(38100700002)(82960400001)(33656002)(86362001)(2906002)(38070700005)(14583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2RxOXE3Qzl3VmVGWERPU0FiOVV6Sno0TzV0bzNKL2ticDZtOGVlck1NSVA5?=
 =?utf-8?B?T3lSTHRPM21ySzhZcWx5T05LbVVOZWVRVHh1M05WM21nZldTUjhVamNyVnJR?=
 =?utf-8?B?OVFLOFl5Wm5HYnNrSUo0aitldU9mR1cwbHdtY1NaNFVxNTNiNW5BWXJqaGFN?=
 =?utf-8?B?V3NydEFsYmU4ZThFY2hSZ2FTRHk0eE4zclhzd2RKUjE2OENwMW1qb1RrOWlN?=
 =?utf-8?B?MTRaWFhUYTkybFZUcEp5R0tkUFlhYVorRDE4ZjBNS1RFT1RUSzVDcXB3RXZl?=
 =?utf-8?B?Z2o3b0pKTGQ5TklQcjUxeTlMS0dLN05qekJmb1c5Tzh6ZjdjVmIwcTJBckZr?=
 =?utf-8?B?S3g3VFhpRllJQ01VelI4OTFzMHlncTR0T3FNbStpNHZmL29YdDMvSjRaRmZk?=
 =?utf-8?B?NS9SNUkrVEQwaGR3b0QxTGdBSHRvdG1VNGF2Wld3UmtKakMya2NUS09yWmVp?=
 =?utf-8?B?SElMaTV5Lyt0V0MxZWt4WXBTenlPVlZQUXIraUdkMGM0bDhHNUlLWEdJZ3Rv?=
 =?utf-8?B?OVJjaVZTUzB4NFZkc216cE5rU2V5M2V2c1pONmk0S0Nkak1TOFZndms4YUwv?=
 =?utf-8?B?a1I1WlFUbGlkUlFOWjlrbWM4L0I0Qit6SUcyaVoyd2l2Q2ZDeFI2aktZcmt5?=
 =?utf-8?B?aUJFb3hPMFBaUS9TaTZScGlKNkVGV2U4bFVJaXNJUy8vcWVWRUkyWWFKRk1s?=
 =?utf-8?B?Y0loL3YwdmhQYittR2xHV1p1QmdMc1JYQjEzWk1YeFpHalFBWUtuN1hiM25y?=
 =?utf-8?B?ZHJ3NGRnci9YZjhSYnV6T3JzVkU5dGR1QVJZZytpWkp3OG9Wb2hpLzNSbnNI?=
 =?utf-8?B?K09iWWFmdWVjTmE3bW1RWndVVDJxRVdObDJITmJpdVVMTVhISWVGeE1pNDJW?=
 =?utf-8?B?MFFXNUs4UERjalAxOVVPbndvbkhOZUVFa3BMbU92WFNRU0NuZkNPVlVXNjZU?=
 =?utf-8?B?elRtSTlnL3lsVENFdkhFdHZUUkY2ejBIWFVMMW5LL2pVWUFNS3Bway9QcjFi?=
 =?utf-8?B?VWZQZGREUWF1RE9tcHUrTjlxNW9TaGluc09LRGY4d3R6ekJUcjJDSzFCMzUx?=
 =?utf-8?B?RExtdHlXbXk1R1lkQ0ppVWFBVFE1OUNLRFYxTFkwWWNyTFhodURqV3JCRm53?=
 =?utf-8?B?OGNGUzQ3K3pGUG55M3dXYmt5SVVKdU96b21wa053dFcwZm9YYitoZmdaNjJS?=
 =?utf-8?B?aVRHRmRsaXQwVzZjM2N1dXZ4VXJFR0FhbkRHbDNGN2JFd2VqVmdtamlPeTR3?=
 =?utf-8?B?NFpWbHV5bExMSXhaVnZrNDA3bFJIckw3YmZlY2NtQVZHcUZZN3VoMTZSc0or?=
 =?utf-8?B?S2xXL3EzUGx5SStXWXZDSVo3U3VsZ0dsN1dCclA0UUhKTFR0ZUV5MTlmenpu?=
 =?utf-8?B?dHI5eUZhU0EyV2ZnRTBTRkEzcHozSkhPQytIa2lTSlUzZlZ5RHcwUjJDd3ZH?=
 =?utf-8?B?WUpJWVJZNk5Udzk3OWtzK0lBMmtpZHhUV0EyQndMUmNmY1I5ejk4b0poeG1Y?=
 =?utf-8?B?NWdBUGxacWJTQXdJZ0F2OWsyQ3ZjeitQNkJtZEVBM2EzUUdsemNTdStBa0ZR?=
 =?utf-8?B?RzZldkdUMVFEa3puczZRRjNadnl1clJaLzJiZnhwdnBPTGFZeHVqcC81MDVj?=
 =?utf-8?B?aXBiNDFWSW5WSitHd3pJcTZGd3dTSS93M0dmbU96RFpKZFhFUmRlNktLWTdT?=
 =?utf-8?B?MEFBeTlmenVRNGc1K1Qxa1UrVlZGQnJnN3ZuR3lZb2RxWUhleDd5Z2F3UFRG?=
 =?utf-8?B?U3I3V1FIeTJyN1ZLLzkrMTd6eko0NFZRN1pVMHZIZGJpTStnYWtTM1Q1SzJJ?=
 =?utf-8?B?T1ZLK2pmYVEyUzlCQ2pOa09RbUpnWFk2eXRaZjdpaDQ4MEVXWkVFdjQxalQx?=
 =?utf-8?B?Zm56dENqbUxUc2x1UGJJT2Rmek1LMWJrVFdCRmg5OERjT2pvUVdEWWI5ek80?=
 =?utf-8?B?Z2JKczhnUzFKQmd2S0hyb3BrYzNpZGVLclJNRmJtdVFteVVSTG1PWGJnRFNK?=
 =?utf-8?B?ODNZTCswVmF1VVZheE5rdHZvM0V4eXdOZWoyMW8yQ3FCcDlKQ0k1TkJuOE5a?=
 =?utf-8?B?MGhFcDJhU2tsZEdhN1FVOEs5V2JKL1Y1T0xldDZsWjdCL2VkR1BpM1hEUEVt?=
 =?utf-8?Q?6Nae9w7pAbuOTRgc3IJnGWBCR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a888c93-28af-41d6-78c7-08db18d437a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2023 15:06:34.8494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: beJExjgQEvplb20F/lD4pKZmrK30kGhtb/PKZ+JoJo1Gkw7rKyt8k6mdpxfaAYMVuKu8DnoMlhXk2duyZF2qV9/Ot2YqYAzZCaR2F6gO0P4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7162
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use correct huge page manager for
 MTL
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
Cc: "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogTW9uZGF5LCBGZWJydWFyeSAyNywgMjAyMyAzOjIwIEFN
DQpUbzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBEdXR0LCBTdWRlZXAgPHN1ZGVlcC5kdXR0
QGludGVsLmNvbT47IHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tOyBtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb207IFZldHRlciwgRGFuaWVsIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT47IGNo
cmlzLnAud2lsc29uQGxpbnV4LmludGVsLmNvbQ0KU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5
MTU6IFVzZSBjb3JyZWN0IGh1Z2UgcGFnZSBtYW5hZ2VyIGZvciBNVEwNCj4gDQo+IE9uIDI0LzAy
LzIwMjMgMTc6NDAsIEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4gPiBNVEwgY3VycmVudGx5IHVz
ZXMgZ2VuOF9wcGd0dF9pbnNlcnRfaHVnZSB3aGVuIG1hbmFnaW5nIGh1Z2UgcGFnZXMuICBUaGlz
IGlzIGJlY2F1c2UNCj4gPiBNVEwgcmVwb3J0cyBhcyBub3Qgc3VwcG9ydGluZyA2NEsgcGFnZXMs
IG9yIG1vcmUgYWNjdXJhdGVseSwgdGhlIHN5c3RlbSB0aGF0IHJlcG9ydHMNCj4gPiB3aGV0aGVy
IGEgcGxhdGZvcm0gaGFzIDY0SyBwYWdlcyByZXBvcnRzIGZhbHNlIGZvciBNVEwuICBUaGlzIGlz
IG9ubHkgaGFsZiBjb3JyZWN0LA0KPiA+IGFzIHRoZSA2NEsgcGFnZSBzdXBwb3J0IHJlcG9ydGlu
ZyBzeXN0ZW0gb25seSBjYXJlcyBhYm91dCA2NEsgcGFnZSBzdXBwb3J0IGZvciBMTUVNLA0KPiA+
IHdoaWNoIE1UTCBkb2Vzbid0IGhhdmUuDQo+ID4gDQo+ID4gTVRMIHNob3VsZCBiZSB1c2luZyB4
ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdlLiAgSG93ZXZlciwgc2ltcGx5IGNoYW5naW5nIG92ZXIg
dG8NCj4gPiB1c2luZyB0aGF0IG1hbmFnZXIgZG9lc24ndCByZXNvbHZlIHRoZSBpc3N1ZSBiZWNh
dXNlIE1UTCBpcyBleHBlY3RpbmcgdGhlIHZpcnR1YWwNCj4gPiBhZGRyZXNzIHNwYWNlIGZvciB0
aGUgcGFnZSB0YWJsZSB0byBiZSBmbHVzaGVkIGFmdGVyIGluaXRpYWxpemF0aW9uLCBzbyB3ZSBt
dXN0IGFsc28NCj4gPiBhZGQgYSBmbHVzaCBzdGF0ZW1lbnQgdGhlcmUuDQo+ID4gDQo+ID4gVGhl
IGNoYW5nZXMgbWFkZSB0byB0aGUgaHVnZSBwYWdlIG1hbmFnZXIgc2VsZWN0aW9uIGluZGlyZWN0
bHkgaW1wYWN0ZWQgc29tZSBvZiB0aGUNCj4gPiBtb2NrIGh1Z2VwYWdlIHNlbGZ0ZXN0cy4gIER1
ZSB0byB0aGUgdXNlIG9mIHB0ZSBsZXZlbCBoaW50cywgcmF0aGVyIHRoYW4gcGRlIGxldmVsDQo+
ID4gaGludHMsIHdlIG5vdyBleHBlY3QgNjRLIHBhZ2Ugc2l6ZXMgdG8gYmUgcHJvcGVybHkgcmVw
b3J0ZWQgYnkgdGhlIEdUVCwgc28gd2Ugc2hvdWxkDQo+ID4gY29ycmVjdCB0aGUgZXhwZWN0ZWQg
dGVzdCByZXN1bHRzIHRvIHJlZmxlY3QgdGhpcyBjaGFuZ2UuDQo+IA0KPiBGb3IgZnV0dXJlIHN1
Ym1pc3Npb25zLCBwbGVhc2UgYWRkIHRoZSB2ZXJzaW9uIG51bWJlciBmb3IgZWFjaCBuZXcgDQo+
IHN1Ym1pc3Npb24gb2YgdGhlIHNhbWUgcGF0Y2gsIGFuZCBhbHNvIHBsZWFzZSBpbmNsdWRlIHRo
ZSBjaGFuZ2Vsb2cuDQoNCkkgdGhvdWdodCB3ZSB3ZXJlbid0IHN1cHBvc2VkIHRvIGluY2x1ZGUg
dGhhdCBpbmZvcm1hdGlvbj8gIE9yIGlzIHRoYXQganVzdCBhICJmcm9tIGludGVybmFsIHRvIHVw
c3RyZWFtIiB0aGluZz8NCi1Kb25hdGhhbiBDYXZpdHQNCg0KPiANCj4gPiANCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQo+ID4g
LS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMu
YyB8IDExICsrKystLS0tLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW44X3Bw
Z3R0LmMgICAgICAgICAgICB8ICAzICsrLQ0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMNCj4gPiBpbmRleCBkZWZlY2UwYmNiODEu
LjA2NTU0NzE3NDk1ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2h1Z2VfcGFnZXMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaHVnZV9wYWdlcy5jDQo+ID4gQEAgLTc4NCw5ICs3ODQsNiBAQCBzdGF0aWMg
aW50IGlndF9tb2NrX3BwZ3R0X2h1Z2VfZmlsbCh2b2lkICphcmcpDQo+ID4gICAJCUdFTV9CVUdf
T04oIWV4cGVjdGVkX2d0dCk7DQo+ID4gICAJCUdFTV9CVUdfT04oc2l6ZSk7DQo+ID4gICANCj4g
PiAtCQlpZiAoZXhwZWN0ZWRfZ3R0ICYgSTkxNV9HVFRfUEFHRV9TSVpFXzRLKQ0KPiA+IC0JCQll
eHBlY3RlZF9ndHQgJj0gfkk5MTVfR1RUX1BBR0VfU0laRV82NEs7DQo+ID4gLQ0KPiA+ICAgCQlp
OTE1X3ZtYV91bnBpbih2bWEpOw0KPiA+ICAgDQo+ID4gICAJCWlmICh2bWEtPnBhZ2Vfc2l6ZXMu
c2cgJiBJOTE1X0dUVF9QQUdFX1NJWkVfNjRLKSB7DQo+ID4gQEAgLTg0OSw3ICs4NDYsNyBAQCBz
dGF0aWMgaW50IGlndF9tb2NrX3BwZ3R0XzY0Syh2b2lkICphcmcpDQo+ID4gICAJCX0sDQo+ID4g
ICAJCXsNCj4gPiAgIAkJCS5zaXplID0gU1pfNjRLICsgU1pfNEssDQo+ID4gLQkJCS5ndHQgPSBJ
OTE1X0dUVF9QQUdFX1NJWkVfNEssDQo+ID4gKwkJCS5ndHQgPSBJOTE1X0dUVF9QQUdFX1NJWkVf
NjRLIHwgSTkxNV9HVFRfUEFHRV9TSVpFXzRLLA0KPiA+ICAgCQkJLm9mZnNldCA9IDAsDQo+ID4g
ICAJCX0sDQo+ID4gICAJCXsNCj4gPiBAQCAtODY0LDcgKzg2MSw3IEBAIHN0YXRpYyBpbnQgaWd0
X21vY2tfcHBndHRfNjRLKHZvaWQgKmFyZykNCj4gPiAgIAkJfSwNCj4gPiAgIAkJew0KPiA+ICAg
CQkJLnNpemUgPSBTWl8yTSAtIFNaXzRLLA0KPiA+IC0JCQkuZ3R0ID0gSTkxNV9HVFRfUEFHRV9T
SVpFXzRLLA0KPiA+ICsJCQkuZ3R0ID0gSTkxNV9HVFRfUEFHRV9TSVpFXzY0SyB8IEk5MTVfR1RU
X1BBR0VfU0laRV80SywNCj4gPiAgIAkJCS5vZmZzZXQgPSAwLA0KPiA+ICAgCQl9LA0KPiA+ICAg
CQl7DQo+ID4gQEAgLTg4NiwxMiArODgzLDEyIEBAIHN0YXRpYyBpbnQgaWd0X21vY2tfcHBndHRf
NjRLKHZvaWQgKmFyZykNCj4gPiAgIAkJew0KPiA+ICAgCQkJLnNpemUgPSBTWl82NEssDQo+ID4g
ICAJCQkub2Zmc2V0ID0gU1pfMk0sDQo+ID4gLQkJCS5ndHQgPSBJOTE1X0dUVF9QQUdFX1NJWkVf
NEssDQo+ID4gKwkJCS5ndHQgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNjRLLA0KPiA+ICAgCQl9LA0K
PiA+ICAgCQl7DQo+ID4gICAJCQkuc2l6ZSA9IFNaXzEyOEssDQo+ID4gICAJCQkub2Zmc2V0ID0g
U1pfMk0gLSBTWl82NEssDQo+ID4gLQkJCS5ndHQgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNEssDQo+
ID4gKwkJCS5ndHQgPSBJOTE1X0dUVF9QQUdFX1NJWkVfNjRLLA0KPiA+ICAgCQl9LA0KPiANCj4g
RGlkIHlvdSBjb25zaWRlciB0aGUgc3VnZ2VzdGlvbiB3aXRoIHBvc3NpYmx5IG1ha2luZyB0aGlz
IGEgbGl2ZSB0ZXN0IA0KPiBpbnN0ZWFkPw0KPiANCj4gVGhlIGZpcnN0IGNvbW1lbnQgaW4gaWd0
X21vY2tfcHBndHRfNjRLKCkgZGVzY3JpYmluZyB0aGUgdGVzdCBpczoNCj4gDQo+IC8qDQo+ICAg
KiBTYW5pdHkgY2hlY2sgc29tZSBvZiB0aGUgdHJpY2tpbmVzcyB3aXRoIDY0SyBwYWdlcyAtLSBl
aXRoZXIgd2UgY2FuDQo+ICAgKiBzYWZlbHkgbWFyayB0aGUgd2hvbGUgcGFnZS10YWJsZSgyTSBi
bG9jaykgYXMgNjRLLCBvciB3ZSBoYXZlIHRvDQo+ICAgKiBhbHdheXMgZmFsbGJhY2sgdG8gNEsu
DQo+ICAgKi8NCj4gDQo+IFRoYXQgZG9lc24ndCByZWFsbHkgYXBwbHkgdG8gdGhlIG5ldyA2NEsg
R1RUIG1vZGVsIGl0IHNlZW1zICh3aGljaCBpcyANCj4gd2h5IGl0IG5vdyBmYWlscyksIHNvIHRy
eWluZyB0byBhZGp1c3QgdGhlIHRlc3QganVzdCBiZWNhdXNlIHRoZSBtb2NrIA0KPiBkZXZpY2Ug
dW5kZXJuZWF0aCBpcyBub3cgdXNpbmcgdGhlIG5ld2VyIG1vZGVsIGRvZXNuJ3Qgc2VlbSBjb3Jy
ZWN0IHRvIA0KPiBtZS4gSWYgd2UgaW5zdGVhZCBtYWtlIGl0IGEgbGl2ZSB0ZXN0IGFuZCBvbmx5
IHJ1biBpdCBvbiBkZXZpY2VzIHdpdGggDQo+IHRoZSBvbGQgNjRLIEdUVCBtb2RlbCwgdGhlbiB3
ZSBzdGlsbCByZXRhaW4gdGhlIHNhbWUgdGVzdCBjb3ZlcmFnZS4gDQo+IEFsdGVybmF0aXZlbHks
IHdlIGNvdWxkIHBvdGVudGlhbGx5IHJ1biBvbiBib3RoIEhXIG1vZGVscyB3aXRoIHNsaWdodGx5
IA0KPiBkaWZmZXJlbnQgdGVzdCBleHBlY3RhdGlvbnMuIElNTyB0aGUgdGVzdCBpcyB0b28gSFcg
c3BlY2lmaWMgZm9yIGEgbW9jayANCj4gdGVzdC4NCj4gDQo+ID4gICAJfTsNCj4gPiAgIAlzdHJ1
Y3QgaTkxNV92bWEgKnZtYTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvZ2VuOF9wcGd0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jDQo+
ID4gaW5kZXggNGRhYWE2ZjU1NjY4Li45YzU3MTE4NTM5NWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jDQo+ID4gQEAgLTU3MCw2ICs1NzAsNyBAQCB4ZWhwc2R2
X3BwZ3R0X2luc2VydF9odWdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLA0KPiA+ICAg
CQkJfQ0KPiA+ICAgCQl9IHdoaWxlIChyZW0gPj0gcGFnZV9zaXplICYmIGluZGV4IDwgbWF4KTsN
Cj4gPiAgIA0KPiA+ICsJCWRybV9jbGZsdXNoX3ZpcnRfcmFuZ2UodmFkZHIsIFBBR0VfU0laRSk7
DQo+ID4gICAJCXZtYV9yZXMtPnBhZ2Vfc2l6ZXNfZ3R0IHw9IHBhZ2Vfc2l6ZTsNCj4gPiAgIAl9
IHdoaWxlIChpdGVyLT5zZyAmJiBzZ19kbWFfbGVuKGl0ZXItPnNnKSk7DQo+ID4gICB9DQo+ID4g
QEAgLTcwNyw3ICs3MDgsNyBAQCBzdGF0aWMgdm9pZCBnZW44X3BwZ3R0X2luc2VydChzdHJ1Y3Qg
aTkxNV9hZGRyZXNzX3NwYWNlICp2bSwNCj4gPiAgIAlzdHJ1Y3Qgc2d0X2RtYSBpdGVyID0gc2d0
X2RtYSh2bWFfcmVzKTsNCj4gPiAgIA0KPiA+ICAgCWlmICh2bWFfcmVzLT5iaS5wYWdlX3NpemVz
LnNnID4gSTkxNV9HVFRfUEFHRV9TSVpFKSB7DQo+ID4gLQkJaWYgKEhBU182NEtfUEFHRVModm0t
Pmk5MTUpKQ0KPiA+ICsJCWlmIChHUkFQSElDU19WRVJfRlVMTCh2bS0+aTkxNSkgPj0gSVBfVkVS
KDEyLCA1MCkpDQo+ID4gICAJCQl4ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdlKHZtLCB2bWFfcmVz
LCAmaXRlciwgY2FjaGVfbGV2ZWwsIGZsYWdzKTsNCj4gPiAgIAkJZWxzZQ0KPiA+ICAgCQkJZ2Vu
OF9wcGd0dF9pbnNlcnRfaHVnZSh2bSwgdm1hX3JlcywgJml0ZXIsIGNhY2hlX2xldmVsLCBmbGFn
cyk7DQo+IA0K
