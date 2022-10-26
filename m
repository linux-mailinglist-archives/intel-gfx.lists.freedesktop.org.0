Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4D160E65D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 19:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4E610E62E;
	Wed, 26 Oct 2022 17:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B17D10E630
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 17:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666804944; x=1698340944;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l2yckgZSqjNhjvPLX4NEJFlQ8jlBgfcgLpWNr6WZkv0=;
 b=GoME1fJ+CBHQSJp1B4j++dA9tAGkK9l2iA6YDgEgZYwlSraKqfQcEq1U
 9qUKrGwZMovh4+xHjeUWaQXtue22tbiRT1mm3ASTjUk7i+1KqD+Uf/CLC
 KR1eD6GSBBU77ksZi7KuzNOL9wEwagRk7R7GsI6qyfojoc6qPPmfW5bKx
 YfV8oNZC8CRyrBe1ZcHZyw3r29iySmzyVpIkXIqKZOct9TQfo5+IF6JbS
 MHstSP/ZUrD53SPylBXoFI9MkaBuIDUaa9/IlFSnklzxZNrzlFZbVm4N2
 aa8GJwV2ZX/YM9QR1/uOdqmGYSQXUfLNbdnR11pkjCqS1Bq2qnQoNCBkX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="309704751"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="309704751"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 10:22:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721345083"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721345083"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Oct 2022 10:22:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 10:22:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 10:22:23 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 10:22:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMJehbZ4mSdU4cgN0hbHa0QTg8o4YkB8XXv5aA565v9sriHe27ili9Eu5u63KF/9bO2OU4PdxtEOmSZabpNwzbToF6Hq6ZCqt02ad4WCQHdIgh2UOixAm+cGTDQ7zR6HrnjJCYHkSg0bykFD0oH67rIJMwdVVD1U4suLZDMbjZTisOX91rpfIWU8OmhzcZzZo4WqZhrb2+lh5tMSMjyIIoPQk6QWB5Qp5WMRkNxV5qQxHjCZ6vb45n5LH2EjkH0xW6lMEakXZpu+B1bxqodSL5yPtbf8zUzjTAjRRK6WW89L1CGLB2sP6QpYzItYaw0t5YF6y1v1YyUZDaci/2nyog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l2yckgZSqjNhjvPLX4NEJFlQ8jlBgfcgLpWNr6WZkv0=;
 b=dyNMD73WHBWKIoAvOlDbGWNWfvSjnuJ+R6UxJ3yXhjvZNFYlo2uMndSiWlC/32SV7DO4nWBUEXBSK3s8PpLvn0MSRsQAjvjqlIl7F43nRV3gDxn880CQnqTWBY2YX1RkaYIX6KK+M9FF1sWWTVm1Vl0TUNizInWtAeZph1OkSiHx7NilsHBUNVm/qT7dPZ9eBBmOt4XgAqEHqWs+Yrr2UFRJQgLPexPBMBkGHZDJ49QpwTc2EMM+Jdi07K525vmVKwtFuWLwv5AF5uuVIUtIiZcKHYaJwEXzEATgtlCvr/J10OprzsahmBXDCr9CLPj3iPw8qFvFWb5HHj7Kri87hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SJ0PR11MB4879.namprd11.prod.outlook.com
 (2603:10b6:a03:2da::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 26 Oct
 2022 17:22:15 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5746.023; Wed, 26 Oct 2022
 17:22:15 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [CI 1/4] drm/i915/display: Change terminology for
 cdclk actions
Thread-Index: AQHY6MF8BbejnYN36UyZMHFnpwU4Sa4gTi4AgACfHJA=
Date: Wed, 26 Oct 2022 17:22:15 +0000
Message-ID: <CY4PR1101MB21663C8A98E786016D98ABDFF8309@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221025223042.138810-1-anusha.srivatsa@intel.com>
 <8735bbdntj.fsf@intel.com>
In-Reply-To: <8735bbdntj.fsf@intel.com>
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
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SJ0PR11MB4879:EE_
x-ms-office365-filtering-correlation-id: da4349e0-412e-4dd1-ace9-08dab776a0ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n7KhiA19kXwfe+L8I36bvZynQo2v5xIEC7nKmSinjYTg5HRV0pxoptx/xPTQD/jBjP5Vw9C2wNH0hYaASNsosKvechEmdwr6Dy1ad9taVHyI847gEQclpvWjinnnkTWSEgdTvAly3392KE56vzFQ2jGagzmR8HmRlU7kAzgwO/LkH21XoY0mTDazI30S/pFWwJQxSC0V3k+cqR9fcuq0lPKyeg7rQVSXm1UmufF4yLx+88JisPWsP1fuEA7dMTE689ShxBi+up37FqJ9xZQ7BQSECMrGFAQC1vWT6QoAHF5d0B5NtavbnJRcMVuzYVkeNsBl/EnaIlkVT1WOXPJ3kI/88jkHmSbLeM7N+QAYLw+lG80vSYECBImDp+KJTtzv1tIUQbkAUAEb3QoGAPGx7/rTkxwy5T92wkH7fm9pLGhVnQub8f/NsiBABuVMSSDCHtvx4GoUz+j6hGHOzSRCsP9Yjamaw5fjSw3GLRtzk9UyghKNrFAVneERWgbUjk+W/tgGpCuk6ME7+/hyvAQn591r+HNS28W9X4Tl+JYc6E96kNFu/csSBJhPX4VTB0J6akl3m+7wqohIIaOTPVZHdFRPVT5yUtD1QYaiN0OnChJG8Td4uPLirCMjK04IS4NjodY8H5Up1Bj84UhtbtNi5NlU3kkQ3Gg636TM3k+z+UE+MVNbWRh3MbWI+cRNUtCoUUHNB4ulcyp4t8CsADoGKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(39860400002)(396003)(346002)(451199015)(5660300002)(186003)(52536014)(83380400001)(53546011)(9686003)(26005)(8936002)(41300700001)(76116006)(33656002)(6506007)(8676002)(82960400001)(7696005)(2906002)(122000001)(316002)(38070700005)(66574015)(66446008)(64756008)(66556008)(66476007)(71200400001)(110136005)(86362001)(66946007)(55016003)(966005)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?enErdGdZcTY4MHpUMERkSjJxeHBKelZFeUFhSWw1MjA3UUlhY2MvRC9WSWhW?=
 =?utf-8?B?VnhFMllTZ0tiaXhUL3JKdGJhWUY5M0NqbEN4NzVTWkkvY2FGNTI0QnFOV0pr?=
 =?utf-8?B?OExZVFJhNUZHYkdpNmV2YkJOS3NrMVMrTC9PdW1ERjNLdWVCM1kxMVliN1M4?=
 =?utf-8?B?UjRFSUZOQVRPQWsrajBVakRyVnZTMHI1ek41UCtiLzhSdExBMk9xa3FaZjdO?=
 =?utf-8?B?UlNxRW1OZkpEdXhSckZFanBYYVlZNlpPd2JBaHpHbm5wOEdnTWtFYldIMTIy?=
 =?utf-8?B?NUtlL2ZPdUdYSDM1akhvVEVUZ1doN3FTQmhqd1IwR2FWU1M2LzdtR042VURs?=
 =?utf-8?B?dzcvZ2hkQ3krbnBEMU5aRkwyYitjbzV4N1BqZ2p0RUJCY1g2aEVBdklkbWRR?=
 =?utf-8?B?RnVmc3RhY25mdEwxcm1aRkN4elZQVzZ3R2NYak1SRkVWUzhSRldQNStJclo5?=
 =?utf-8?B?cGVMNWhzZjNXVnRBd0QrMVlKWmdMVy96MXI2Z2x0ZmpoTDVTY3VVQkMxekNx?=
 =?utf-8?B?Qlpiamw5QUpWbUJyN0IrZC9YVlFuUWhrSGFWODh2dVV3YXdyWHZlOXBvaTZ3?=
 =?utf-8?B?RGdrWnZaOCs0ellWZC9HVWszbGFkWVZvQ0JsSlpXTlhoajJFcW04dzZ0eThQ?=
 =?utf-8?B?TFhRNlJEM0N5VW1sS0I4ZjRUQWtRSHBoeE1pVDJjSkhUMmw3UTlKajhKTTZl?=
 =?utf-8?B?aWl0bkdjcWN2VEo5WkI4aHc4RG55M1dkbG5OYVpVZVczZ3hnYWViWncxbEJj?=
 =?utf-8?B?RzkwdG9yUzNYS3A2dEZ1cU5OelByakZFaTZZVXlSUDZhbFNLY1cvTDltc0F3?=
 =?utf-8?B?a2xZUTVNTGgweGtMRzZZd3hKcjFvN1hNMk5ZTUdHUUF4RlNyazBXRko1MU9x?=
 =?utf-8?B?bGV2RlM3NkoydjRtcWJkQjFIdXZYeXg3anNtV2JWcjhMRUlvU1BlYUtpdlc3?=
 =?utf-8?B?bmZGRExqQW5BcmZuaFoweU5FSHFRRnNUZkM3cWFncWs3Wlhza1VzUGFZRGVz?=
 =?utf-8?B?S3dTei9UKzIyTVNUa3RMZ0JIdFFXbEpYdmNXVFRZYnhVSzU5OXZPcHQzdi9V?=
 =?utf-8?B?bjdIcndyNExKQVd2YVVycWRqdzRyY0UxbEFiN3daSDdqMHdFbEVaMlM2cklP?=
 =?utf-8?B?Wk9UMTFSRG1ZVExjc0FMNHRzNUdaTHgrYXdRZDZrYjNTbnRRQjRaYTNrT2ZH?=
 =?utf-8?B?S0JlODgySXhERXkrOFJsdmJtbkZRNTFMdjYrN1UrWXlSeS9ITVl0SG92bmQz?=
 =?utf-8?B?YnVXOEEvVnN2bEtEN0UyTkw0U0t5M0YvTmJ0SEtKb004UzI1eXV4ZTMvcGlU?=
 =?utf-8?B?akNyNnJJWm1vS2VxQ3RQL3F0TnI4dGFqaXlTdEdmWWVPN2lNMVB5T1d4d0FB?=
 =?utf-8?B?amJzRWRuc3FNS2NXc1h3NlhoY0RzU3ZGQjQ2SFJvNlNhMGN3OU96OExZUGlz?=
 =?utf-8?B?VlllNHcvSWZIditRbUovaE50M2E0eE56ZzUzTVRQUXFic3Q2aXVxWGhxcy9M?=
 =?utf-8?B?RU5vVVg3S09iSlVwejUwN2hTYkluRWZrMWxuYkp0LzljcTlEdC91N1FNYVQ4?=
 =?utf-8?B?WFgwUzBTaVcwejZxVGZDYWhFazFSVHdiLzRiQlVDYVRNYVFmblJBaDdJNFNr?=
 =?utf-8?B?bWkvbDV1ckJNT0JJM0x4UFpyem9rMlhMVTc0Y3g3bEUvd2h0dXBOOXNabEht?=
 =?utf-8?B?VG5mdEFYZUxYQXB2OG01aEVCdVM1dXdOa1ZBSCtMcEhEbmJUaHg4RmlBaDNY?=
 =?utf-8?B?c0FkOHltNUlaYi91V2Y3RGNhcmFsMlRxZGw0QWp4RHdHcWtZbEd4emxjd1Rv?=
 =?utf-8?B?bk9uUEs1NzhITFlmY201LzhJa2Vab1VwYldUYkZZdjdGREMyZTYvY3VCOXFV?=
 =?utf-8?B?OVJmanRvVkQwZ2o1TEJSdEtDc05UdUFzcXV2bU0zRU5uVWtsZ2o3SG5BR29F?=
 =?utf-8?B?NURhTGlTV2NrOU1GdzFIQWRjWWVZSTRxa3p1Y25Wc2pGVThHRjRzSnI2RERO?=
 =?utf-8?B?MWlXd0gxYUYrOHB1Q0dseDV1cFQyTmdyanBET2V3c1h2Sld2and3Z2VlZjY1?=
 =?utf-8?B?d0NBMUVYd3BQZEhLTU9iT1dPOE9qTFlFbC9NNnM3eVdaTEZzTWR0a2RwdU5l?=
 =?utf-8?B?aTVSdUxWNkd3aGdQdWhoVlJyWXRsenIvZjczbTdBVy8ySFdIamNKSzJKbVVh?=
 =?utf-8?B?M2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da4349e0-412e-4dd1-ace9-08dab776a0ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2022 17:22:15.5950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rbhKq8lfJWJkDLdC0RWcP86X0fQSDTpUnTblGKMHx87PTVxBerXqQsqNfY/bUqJvXhrdqu9ZtZz7v0seOI1WIS1bmJ/iLiA/+0Ib6/3R5hk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4879
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI 1/4] drm/i915/display: Change terminology for
 cdclk actions
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDI2
LCAyMDIyIDEyOjUyIEFNDQo+IFRvOiBTcml2YXRzYSwgQW51c2hhIDxhbnVzaGEuc3JpdmF0c2FA
aW50ZWwuY29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogUmU6IFtJbnRlbC1nZnhdIFtDSSAxLzRdIGRybS9pOTE1L2Rpc3BsYXk6IENoYW5nZSB0ZXJt
aW5vbG9neSBmb3INCj4gY2RjbGsgYWN0aW9ucw0KPiANCj4gT24gVHVlLCAyNSBPY3QgMjAyMiwg
QW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPiB3cm90ZToNCj4gPiBO
byBmdW5jdGlvbmFsIGNoYW5nZXMuIENoYW5naW5nIHRlcm1pbm9sb2d5IGluIHNvbWUgcHJpbnQg
c3RhdGVtZW50cy4NCj4gPiBzL2hhc19jZGNsa19zcXVhc2hlci9oYXNfY2RjbGtfc3F1YXNoLA0K
PiA+IHMvY3Jhd2xlci9jcmF3bCBhbmQgcy9zcXVhc2hlci9zcXVhc2guDQo+IA0KPiBBbnkgcGFy
dGljdWxhciByZWFzb24geW91IHJlLXNlbnQgdGhpcyBmb3IgQ0k/IFlvdSBrbm93IHlvdSBjYW4g
cmUtcnVuIHRlc3RzDQo+IGZyb20gdGhlIHBhdGNod29yayBwYWdlIGlmIHRoZSBwYXRjaGVzIHJl
bWFpbiB1bmNoYW5nZWQ/DQoNCkNoZWNrcGF0Y2ggcmV0dXJuIHNvbWUgZXJyb3JzIG9uIHRoZSBw
cmV2aW91cyBzZXJpZXM6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
MTEwMTM1Lw0KDQpIYWQgdG8gcmVjdGlmeSB0aGVtIGFuZCBzZW5kIGl0IGFnYWluLg0KDQpBbnVz
aGEgDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+ID4NCj4gPiBDYzogQmFsYXN1YnJhbWFuaSBW
aXZla2FuYW5kYW4NCj4gPGJhbGFzdWJyYW1hbmkudml2ZWthbmFuZGFuQGludGVsLmNvbT4NCj4g
PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+DQo+ID4gUmV2aWV3ZWQtYnk6IEJhbGFzdWJyYW1hbmkgVml2ZWthbmFuZGFuDQo+ID4gPGJh
bGFzdWJyYW1hbmkudml2ZWthbmFuZGFuQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgMTYgKysrKysrKystLS0tLS0t
LQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0K
PiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+ID4gaW5kZXggYWQ0MDEzNTdhYjY2Li4wZjVhZGQyZmM1MWIgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+ID4gQEAgLTEyMjAsNyAr
MTIyMCw3IEBAIHN0YXRpYyB2b2lkIHNrbF9jZGNsa191bmluaXRfaHcoc3RydWN0DQo+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICAJc2tsX3NldF9jZGNsayhkZXZfcHJpdiwgJmNk
Y2xrX2NvbmZpZywgSU5WQUxJRF9QSVBFKTsgIH0NCj4gPg0KPiA+IC1zdGF0aWMgYm9vbCBoYXNf
Y2RjbGtfc3F1YXNoZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gK3N0YXRp
YyBib29sIGhhc19jZGNsa19zcXVhc2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+
ID4gIHsNCj4gPiAgCXJldHVybiBJU19ERzIoaTkxNSk7DQo+ID4gIH0NCj4gPiBAQCAtMTUyMCw3
ICsxNTIwLDcgQEAgc3RhdGljIHZvaWQgYnh0X2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZQ0KPiAqZGV2X3ByaXYsDQo+ID4gIAkJcmV0dXJuOw0KPiA+ICAJfQ0KPiA+DQo+ID4gLQlp
ZiAoaGFzX2NkY2xrX3NxdWFzaGVyKGRldl9wcml2KSkNCj4gPiArCWlmIChoYXNfY2RjbGtfc3F1
YXNoKGRldl9wcml2KSkNCj4gPiAgCQlzcXVhc2hfY3RsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwgQ0RDTEtfU1FVQVNIX0NUTCk7DQo+ID4NCj4gPiAgCWlmIChzcXVhc2hfY3RsICYgQ0RDTEtf
U1FVQVNIX0VOQUJMRSkgeyBAQCAtMTc0Nyw3ICsxNzQ3LDcgQEANCj4gc3RhdGljDQo+ID4gdm9p
ZCBieHRfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiAg
CWVsc2UNCj4gPiAgCQljbG9jayA9IGNkY2xrOw0KPiA+DQo+ID4gLQlpZiAoaGFzX2NkY2xrX3Nx
dWFzaGVyKGRldl9wcml2KSkgew0KPiA+ICsJaWYgKGhhc19jZGNsa19zcXVhc2goZGV2X3ByaXYp
KSB7DQo+ID4gIAkJdTMyIHNxdWFzaF9jdGwgPSAwOw0KPiA+DQo+ID4gIAkJaWYgKHdhdmVmb3Jt
KQ0KPiA+IEBAIC0xODQ1LDcgKzE4NDUsNyBAQCBzdGF0aWMgdm9pZCBieHRfc2FuaXRpemVfY2Rj
bGsoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICAJZXhwZWN0ZWQg
PSBza2xfY2RjbGtfZGVjaW1hbChjZGNsayk7DQo+ID4NCj4gPiAgCS8qIEZpZ3VyZSBvdXQgd2hh
dCBDRDJYIGRpdmlkZXIgd2Ugc2hvdWxkIGJlIHVzaW5nIGZvciB0aGlzIGNkY2xrICovDQo+ID4g
LQlpZiAoaGFzX2NkY2xrX3NxdWFzaGVyKGRldl9wcml2KSkNCj4gPiArCWlmIChoYXNfY2RjbGtf
c3F1YXNoKGRldl9wcml2KSkNCj4gPiAgCQljbG9jayA9IGRldl9wcml2LT5kaXNwbGF5LmNkY2xr
Lmh3LnZjbyAvIDI7DQo+ID4gIAllbHNlDQo+ID4gIAkJY2xvY2sgPSBkZXZfcHJpdi0+ZGlzcGxh
eS5jZGNsay5ody5jZGNsazsgQEAgLTE5NzYsNw0KPiArMTk3Niw3IEBADQo+ID4gc3RhdGljIGJv
b2wgaW50ZWxfY2RjbGtfY2FuX3NxdWFzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsDQo+ID4gIAkgKiB0aGUgbW9tZW50IGFsbCBwbGF0Zm9ybXMgd2l0aCBzcXVhc2hlciB1c2Ug
YSBmaXhlZCBjZDJ4DQo+ID4gIAkgKiBkaXZpZGVyLg0KPiA+ICAJICovDQo+ID4gLQlpZiAoIWhh
c19jZGNsa19zcXVhc2hlcihkZXZfcHJpdikpDQo+ID4gKwlpZiAoIWhhc19jZGNsa19zcXVhc2go
ZGV2X3ByaXYpKQ0KPiA+ICAJCXJldHVybiBmYWxzZTsNCj4gPg0KPiA+ICAJcmV0dXJuIGEtPmNk
Y2xrICE9IGItPmNkY2xrICYmDQo+ID4gQEAgLTIwMjgsNyArMjAyOCw3IEBAIHN0YXRpYyBib29s
IGludGVsX2NkY2xrX2Nhbl9jZDJ4X3VwZGF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYsDQo+ID4gIAkgKiB0aGUgbW9tZW50IGFsbCBwbGF0Zm9ybXMgd2l0aCBzcXVhc2hl
ciB1c2UgYSBmaXhlZCBjZDJ4DQo+ID4gIAkgKiBkaXZpZGVyLg0KPiA+ICAJICovDQo+ID4gLQlp
ZiAoaGFzX2NkY2xrX3NxdWFzaGVyKGRldl9wcml2KSkNCj4gPiArCWlmIChoYXNfY2RjbGtfc3F1
YXNoKGRldl9wcml2KSkNCj4gPiAgCQlyZXR1cm4gZmFsc2U7DQo+ID4NCj4gPiAgCXJldHVybiBh
LT5jZGNsayAhPSBiLT5jZGNsayAmJg0KPiA+IEBAIC0yNzU0LDEyICsyNzU0LDEyIEBAIGludCBp
bnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpDQo+ID4gIAkJCQkgICAmb2xkX2NkY2xrX3N0YXRlLT5hY3R1YWwsDQo+ID4gIAkJCQkgICAm
bmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwpKSB7DQo+ID4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2
LT5kcm0sDQo+ID4gLQkJCSAgICAiQ2FuIGNoYW5nZSBjZGNsayB2aWEgc3F1YXNoZXJcbiIpOw0K
PiA+ICsJCQkgICAgIkNhbiBjaGFuZ2UgY2RjbGsgdmlhIHNxdWFzaGluZ1xuIik7DQo+ID4gIAl9
IGVsc2UgaWYgKGludGVsX2NkY2xrX2Nhbl9jcmF3bChkZXZfcHJpdiwNCj4gPiAgCQkJCQkgJm9s
ZF9jZGNsa19zdGF0ZS0+YWN0dWFsLA0KPiA+ICAJCQkJCSAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1
YWwpKSB7DQo+ID4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ID4gLQkJCSAgICAi
Q2FuIGNoYW5nZSBjZGNsayB2aWEgY3Jhd2xcbiIpOw0KPiA+ICsJCQkgICAgIkNhbiBjaGFuZ2Ug
Y2RjbGsgdmlhIGNyYXdsaW5nXG4iKTsNCj4gPiAgCX0gZWxzZSBpZiAocGlwZSAhPSBJTlZBTElE
X1BJUEUpIHsNCj4gPiAgCQluZXdfY2RjbGtfc3RhdGUtPnBpcGUgPSBwaXBlOw0KPiANCj4gLS0N
Cj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0K
