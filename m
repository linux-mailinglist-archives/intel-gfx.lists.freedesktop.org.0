Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EFB7D806A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F8EB10E7A4;
	Thu, 26 Oct 2023 10:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CFB810E7A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698315268; x=1729851268;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WA2cM/AdL7rgItoyeZUmhLKHnGnVCSRri3LD/GAWtMw=;
 b=LGOjLijc6GhxpnHjgoKPX8eV9biYNkB155dEfkfqEEx93TCLMKHCi6Zb
 SXYjdQL1TRjSueU2NMLvu+cUxuw2pooKs2SthUGLsx3Qxo4VWs9Td39q+
 ZI7HIlrRi83AxinpHrkNTsXOqzU+lMZ2eFTsv6JzCVzQI28c8FM+oJdDo
 ls3QjVZl7mFFLRKmHtqpg7qkNfdh4UB3PxNcDVMZAbnTJt70HnY0d2KvS
 QJpTJHO/4PPaRGgTQTHEnw0wObp+t4MZGMfPpi4XgD+5jvbWJ21L/lxZV
 cBg/YmSk9NZ/zZ8WxDR9nIv76UR6/9IsXLs9LPLKJ4qp/o9QstSBo0vOz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="391373841"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="391373841"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:14:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="762774020"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="762774020"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 03:14:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 03:14:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 03:14:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 03:14:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 26 Oct 2023 03:14:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I+HyvUuz74+YQRlM/WLvxtPLb7SuOB4fQKWtY6YdPJ1i5YyNuZBki3YY9QckbGMTOpXNPTxAKMqiOG2M6GuJdQr1aYmpibQzJq3GBZHYBODqg9N6jklBhuYAHUxYey9yvnDt2b25ERsXibJPNzmIExZzDcagiAf+8tkQpAVkwGqYyJtaTFK9teU3YB2vTa/ctUEiMCI9pgiTGGoyDOqHwKqnI4fqbVQueE/Xeiwke2kKWeeqoaATE6E/pdl0Pg12t0u4NivE4C9VMeaogqSefeapEh/9kXxCY4ANthXaUPYd+i3mcshhjQOysE94Yjjq4vbwvlBBjhANvRawy08dWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WA2cM/AdL7rgItoyeZUmhLKHnGnVCSRri3LD/GAWtMw=;
 b=UYsCMV5us+OFAaRsL69Ry5OeHVjB9Iq1RXJM3ijW7Heu8qRIuiu9WLUklZUCHGTD30wXa579ADvxvpzD9dDlUk87JjPdzuNGbbCSfZxCuwbe2QSQf1l2xrkKzHRVvcBcUNFYy32JW88WQ3e0nGxXy+M8MHFqt3eFZNmwVxYiat2udYMbWtLPKVFqZrjjtT/e8uI84IG3Q+H1QWKrp7YbW9FFvjkoznE5BtQNfO7AMBxE+AhyS6DvkqfF3AGaphM+sMa7yOdgbGBfBEPWV3MGBYdjll98U6h0FaR5dTYNtNBuyfBeywEDbO/krU5h+8vXtch4c0NPomxNseSUqFaINA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ2PR11MB7645.namprd11.prod.outlook.com (2603:10b6:a03:4c6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 26 Oct
 2023 10:14:23 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92%6]) with mapi id 15.20.6907.028; Thu, 26 Oct 2023
 10:14:23 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Christian Brauner <brauner@kernel.org>
Thread-Topic: Regression on linux-next (next-20231013)
Thread-Index: AQHaBwz2ENP+HgSxG0iAJezJ7y7GBbBaHKAAgABeNOCAAWESQA==
Date: Thu, 26 Oct 2023 10:14:23 +0000
Message-ID: <SJ1PR11MB61291333B84FB20B3A910177B9DDA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20231025-zubetoniert-estrich-398e12164835@brauner>
 <SJ1PR11MB6129D4C000D5AC82E4C69710B9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129D4C000D5AC82E4C69710B9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ2PR11MB7645:EE_
x-ms-office365-filtering-correlation-id: 2ec3c7fd-24b4-4c96-1ce2-08dbd60c53e0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rziHkmkyjTMLvbZijrV+LEmDrpVOAtLkFYmSilkGo5u6Ktyq08j3wLiqMgmt3Ull4Aj70ss3KzCjx/dfTkWR2ahoqnc88EJfgnkZmilIUsnvb1a+yaT93MeO/sJ2s4Fu44LhQB+x6g5qmmAebEYRarwvQ4S/inH7AP7v45zQtFRWwMoRWQt0p3KEDag506JLULAr8lmnI8GKxrAJEICo/9K4dT0hXMIZG9WvQrijPofrpRe8Zir7/VqRQhIm7CZ3wnUgVE6mGsGsG7mtZWtRXGvonlS0jb+owsfYhqHZu6YjzeXwsZR9u33kIYwtGcngcRwEHmgPbwJvrcQgGvriBy3IYDtFoi4xVccD07c8Dk/OA1Wry3mlkfjM1xTshRUcCYhGfdiATE/711/YWNB7QGXvx2JOUYeSQGwlM12WDKl9DxmqaHFfz1RKKOutqK3HOnuaWgd+bihangacRAXTxEEQol/wYfO7s2F9atG5VU8f8JQcnXeLTVvmdLToBhOGxDZ7SzVBx0ggN+KaGhn2w1Bz3/XC5Arro216z89kQvHRr7/SGCU+ljuCRNXhZyJbM5KbAZJ4bznfotjzAyRhlZIGLHlor3hz47SAzDnv9JrWRsvsABSA4O+MIMle1B5d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(346002)(39860400002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(55016003)(478600001)(71200400001)(33656002)(38070700009)(38100700002)(6506007)(122000001)(2906002)(82960400001)(7696005)(53546011)(86362001)(5660300002)(83380400001)(9686003)(26005)(41300700001)(6916009)(316002)(4326008)(8936002)(8676002)(966005)(66946007)(52536014)(66476007)(107886003)(76116006)(66446008)(54906003)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NGRnSWQzdmxSdEg1SEpMUytuRUVKWmVadERHT3ZsUWU3dmtLcHQrRTBJSmxN?=
 =?utf-8?B?Z2J2ZEJuQ0pqZFNQbTIzWFpTeFJScWt0WUZ0cVRycmRwdWFpMkYybk5oKzZs?=
 =?utf-8?B?ZWVXbS85T0dIMmliOHkyeGF2VmdxMVFUbzhMcm5ubHBFQ2lYRjFDVktQek1P?=
 =?utf-8?B?aG5LdWpVTGZ2OFhmNWRHTEdvMnJaaHZubk1OM251MUROaHEvUVJXTkNlK1BT?=
 =?utf-8?B?Rjd4YkdvSEZnVmN5RmRtV1dnL2VhUE9WVDhZUzlETWdubGlKb0g3cnlISmts?=
 =?utf-8?B?S1drZm84ditEMlZ1UXJEaHBKM1hZeThWd2txMUx1eXptSm9xMFk2czllb3dv?=
 =?utf-8?B?Y0hkTVdlbzF3MG9tVHZ6YTdsc1MycDhSamwzZmpZVjJqdVdaMlMwNUliNWhO?=
 =?utf-8?B?OG1adGpDYSt4NktHNk80Y0Q4MUpiTzd0R1lOL0RRdndWdEtQU3hNeDBwT1la?=
 =?utf-8?B?bVV1Z2tZczloYUtRNFl6TEZybUhjbW16eFROQ2pFTHYvWGhVVVRwTklRSTFq?=
 =?utf-8?B?cXBka2trb0IyZnBuQjhhODF6NFdvYUxwTWxsdEorZFhEeEdDdXFFU3E2NDM5?=
 =?utf-8?B?V0Q4QUpJdVp3TDF6ME45aHFRakROZUNoaTFHN3hIRW1NUDVjbVNVU2JFUSs0?=
 =?utf-8?B?Q1RSeXN0WEJTaFRUN2phK21mbUNUNE13N0k0SGpQTldMNXpWaXkrUTR4TUdI?=
 =?utf-8?B?enJqMGlnOUxDUTNBZWdpMDVNN25hVDMzank5T21PK2Vxc0NwaE45cUhlR3lq?=
 =?utf-8?B?eWlsaGRJcHQ2U2hKRHNnMHFUTEEyWUZmbFRxUW4zWmFJU0JReCtQdXdJblFq?=
 =?utf-8?B?WEE5MHBhQVIyajlUeE85N1dyMDNkaGxGVFhzcE5NYVRRbzJpVllOMDZqcnZZ?=
 =?utf-8?B?RjRFSFpQSWtPRkFRdGR4M01qYW9BSEs4R244MlZGQmlFeVNld0taTy9SeFJ2?=
 =?utf-8?B?K2xDNFFYZURLVmtRTU1ud1JXVTVEemNzK1lkUlQ3R0lGT3dJbVB2TExtNXJP?=
 =?utf-8?B?d0ttZUg1YmNiLzE1cHl2S2VPY1FUK0twQW44UmNDdERoVGlocW1zYUJrUUVU?=
 =?utf-8?B?ZFJHQUtqZnlqYjR6ZFVJSXZkb2xUNUtKS3NsS0ZMcXlEN0lnb1FHME1KMjR3?=
 =?utf-8?B?NDB2M09pVXNWU0RmSUlWVW1UbklJOWRMZVZFdmhXUkNiQ2VqcTlPbGVudFl0?=
 =?utf-8?B?OGFzVUxXNjcwL1dHZnZLdWlPVzFNbzZSSG42YmpESDJueU9JeWJzT3M1ZXBp?=
 =?utf-8?B?dGpURzlXK0JEYXlrT1ZxQThSajRyejRkMUFxOG1pV2Nwd3RXS1FHQ2xDRDc3?=
 =?utf-8?B?TU1oQzVab25LUnE4NFFNYkNiSko1QkpuNHVKS1NJdHV4b0s3dmVURS9Kakk3?=
 =?utf-8?B?dUhoRUNiUndEMG9ESm1WR0F5L1M2Y2hxMHNobE5Venk5UXBzVHZqZzZKdUV4?=
 =?utf-8?B?RXFyZXlUYm44RFFzdnB3bEo3djZKT09QMXJwME40SjF4UndSSU9pTU9Vd3BI?=
 =?utf-8?B?dVJkaTBRUmdXVU9Wc2M5VnhiZzJGcnBpWjNFNnp0ZmxqWFZjZm13NGJhQk44?=
 =?utf-8?B?TXNxRm9VQ1p1dlNvN1JiaHR4NGkzellGL1JRaXFwRUU4Q283NUtDeXp3NUY4?=
 =?utf-8?B?YytYaU5VclpLSE0ydFN1NWZBUDlzRFlQSDcxdlBrajJ0ZDladzlDaGtpNzlp?=
 =?utf-8?B?dDdGMFpWd2dMQkVkMWlXZHFucDJKUXM1ZEFYTTNLcUUvb1Z3ZEVFTHpvcEFY?=
 =?utf-8?B?UkVLdVhtQ3lGamlORHdWZXl3d0ZKQ3lIK2hYRVdsd3lSa3d0UDR6WlJ6d2Ji?=
 =?utf-8?B?Q2pRTHQreDJteEIvK3ZJTVFzbDEveGxoejVaQW9haVhyMnp4Nk9WOFJTRFlR?=
 =?utf-8?B?bnRXT0oxbS9aRHFqU0hQQk5sWXY1eVFTbktlRW5JRnF4YWFkVjF0QjVYV0hL?=
 =?utf-8?B?MU9mZ1E0LzVseWliL2srb0ZVSHBXUERjNklWSmVjWnRzUXc5WlFXRnJzK0JE?=
 =?utf-8?B?U3hySEM5U3JtOUtlKzVQR3FGWUk0a2NYRCtzV0tMUElJcGFnS2crV0o0Uk5x?=
 =?utf-8?B?emRGLzRMRmhTb2YrYnI0bThSOStoWEdDUWVvRzZMemcxUWlXT0wvK0NkaDUr?=
 =?utf-8?B?N09VVHQwdjNHMnA5alUwd3laZTQ1YnZ0M3liNVFLTzBKQ0xyY2l1Vk5MMUVY?=
 =?utf-8?B?UHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ec3c7fd-24b4-4c96-1ce2-08dbd60c53e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2023 10:14:23.7915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q1B884PRMwcV6N7Th2uQgu3J8lQgFbHMmJJy/W9gYUOxgnK4wyVffBsj9YGIkq2pGbymTQIDROPTxXvyVEt8bV8vFur7aSGb4yyI6KFZi3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7645
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231013)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8gQ2hyaXN0aWFuLA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IEJvcmFoLCBDaGFpdGFueWEgS3VtYXINCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDI1LCAy
MDIzIDc6MTUgUE0NCj4gVG86IENocmlzdGlhbiBCcmF1bmVyIDxicmF1bmVyQGtlcm5lbC5vcmc+
DQo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBLdXJtaSwgU3VyZXNoIEt1
bWFyDQo+IDxTdXJlc2guS3VtYXIuS3VybWlAaW50ZWwuY29tPjsgU2FhcmluZW4sIEphbmkgPGph
bmkuc2FhcmluZW5AaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogUmVncmVzc2lvbiBvbiBsaW51
eC1uZXh0IChuZXh0LTIwMjMxMDEzKQ0KPiANCj4gSGVsbG8gQ2hyaXN0aWFuLA0KPiANCj4gPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IENocmlzdGlhbiBCcmF1bmVyIDxi
cmF1bmVyQGtlcm5lbC5vcmc+DQo+ID4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDI1LCAyMDIz
IDE6MDIgUE0NCj4gPiBUbzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFy
LmJvcmFoQGludGVsLmNvbT4NCj4gPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgS3VybWksIFN1cmVzaCBLdW1hcg0KPiA+IDxzdXJlc2gua3VtYXIua3VybWlAaW50ZWwuY29t
PjsgU2FhcmluZW4sIEphbmkNCj4gPiA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+DQo+ID4gU3Vi
amVjdDogUmU6IFJlZ3Jlc3Npb24gb24gbGludXgtbmV4dCAobmV4dC0yMDIzMTAxMykNCj4gPg0K
PiA+IE9uIFdlZCwgT2N0IDI1LCAyMDIzIGF0IDA2OjMyOjAxQU0gKzAwMDAsIEJvcmFoLCBDaGFp
dGFueWEgS3VtYXIgd3JvdGU6DQo+ID4gPiAgSGVsbG8gQ2hyaXN0aWFuLA0KPiA+ID4NCj4gPiA+
ICBIb3BlIHlvdSBhcmUgZG9pbmcgd2VsbC4gSSBhbSBDaGFpdGFueWEgZnJvbSB0aGUgbGludXgg
Z3JhcGhpY3MNCj4gPiA+IHRlYW0gaW4NCj4gPiBJbnRlbC4NCj4gPiA+DQo+ID4gPiAgVGhpcyBt
YWlsIGlzIHJlZ2FyZGluZyBhIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBvdXIgQ0kgcnVu
c1sxXQ0KPiA+ID4gb24gbGludXgtbmV4dCAgcmVwb3NpdG9yeS4NCj4gPg0KPiA+IEFueSBjaGFu
Y2UgSSBjYW4gcmVwcm9kdWNlIHRoaXMgbG9jYWxseT8NCj4gDQo+IFRoYW5rIHlvdSBmb3IgeW91
ciByZXNwb25zZS4NCj4gDQo+IEkgc2VlIHRoYXQgeW91IGhhdmUgYWxyZWFkeSBmbG9hdGVkIGEg
cGF0Y2ggWzFdIHRvIGZpeCB0aGUgaXNzdWUuIFdlIHdpbGwgdGVzdCBpdA0KPiBhbmQgZ2V0IGJh
Y2sgdG8geW91IEFTQVAuDQoNClRoZSBzb2x1dGlvbiBpcyB3b3JraW5nIGZvciB1cy4NCg0KQWxz
bywgbGludXgtbmV4dCB0dXJuZWQgZ3JlZW4uDQoNCmh0dHA6Ly9nZngtY2kuaWdrLmludGVsLmNv
bS90cmVlL2xpbnV4LW5leHQvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBtbWFuLmh0bWwNCg0KVGhh
bmsgeW91Lg0KDQpSZWdhcmRzDQoNCkNoYWl0YW55YQ0KDQo+IA0KPiBJbiBjYXNlLCB5b3Ugc3Rp
bGwgbmVlZCBpdC4NCj4gDQo+IElmIHlvdSBoYXBwZW4gdG8gaGF2ZSBhIGRldmljZSB3aXRoIGlu
dGVsIENQVSBvbiBpdCAod2UgYXJlIHNlZWluZyBpdCBpbg0KPiBtYWNoaW5lcyBhcyBvbGQgYXMg
R2VuM1syXSksIHlvdSBjYW4gZm9sbG93IHRoZSBiZWxvdyBzdGVwcy4NCj4gDQo+IDEuIEdldCB0
aGUgbGF0ZXN0IGRybS10aXAgZnJvbSBodHRwczovL2NnaXQuZnJlZWRlc2t0b3Aub3JnL2RybS10
aXAvIGFuZCBpbnN0YWxsDQo+IGl0IG9uIHRoZSBtYWNoaW5lDQo+IA0KPiAyLiBHZXQgSUdUIHN1
aXRlIGZyb20gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xz
DQo+IA0KPiAzLiBCdWlsZCB0aGUgdGVzdCBzdWl0ZQ0KPiAgICAgWW91IGNhbiB1c2UgdGhlIGlu
c3RydWN0aW9ucyBpbiB0aGUgUkVBRE1FLm1kIGZpbGUgZm9yIGJ1aWxkaW5nIHRoZSBzdWl0ZS4N
Cj4gDQo+ICAgICBXZSB1c2UgdWJ1bnR1IGFuZCBJIGdlbmVyYWxseSBkbyB0aGUgZm9sbG93aW5n
DQo+IA0KPiAJYSkgTWFrZSBzdXJlIHRoZSBwYWNrYWdlcyBsaXN0ZWQgaW4gRG9ja2VyZmlsZS5i
dWlsZC1kZWJpYW4tbWluaW1hbA0KPiBhbmQgRG9ja2VyZmlsZS5idWlsZC1kZWJpYW4gYXJlIGlu
c3RhbGxlZC4NCj4gCWIpIG1lc29uIGJ1aWxkICYmIG5pbmphIC1DIGJ1aWxkDQo+IA0KPiA0LiBJ
ZiBldmVyeXRoaW5nIGdvZXMgZmluZSwgdGhlcmUgc2hvdWxkIGJlIGEgImJ1aWxkIiBmb2xkZXIg
Y3JlYXRlZCB3aXRoaW4gdGhlDQo+IGJhc2UgZm9sZGVyIG9mIHlvdXIgcmVwb3NpdG9yeQ0KPiAg
ICAgVGhlbiBydW4gdGhlIHRlc3QgdXNpbmcgdGhlIGZvbGxvd2luZyBjb21tYW5kLg0KPiANCj4g
CXN1ZG8gYnVpbGQvdGVzdHMvaTkxNV9zZWxmdGVzdCAtLXJ1bi1zdWJ0ZXN0IGxpdmUNCj4gDQo+
IFJlZ2FyZHMNCj4gDQo+IENoYWl0YW55YQ0KPiANCj4gDQo+IFsxXSBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9pbnRlbC1nZngvMjAyMzEwMjUtZm9ybWZyYWdlLXdhdHNjaGVsbi0NCj4gODQ1MjZj
ZDNiZDdkQGJyYXVuZXIvDQo+IFsyXSBodHRwOi8vZ2Z4LWNpLmlnay5pbnRlbC5jb20vdHJlZS9s
aW51eC0NCj4gbmV4dC9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQG1tYW4uaHRtbA0KDQo=
