Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BB6643B04
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 02:56:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC26910E033;
	Tue,  6 Dec 2022 01:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9920810E033
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 01:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670291796; x=1701827796;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZYAC5CEtj18obuKPNFn0a5HuEd+uUANbUQXa/qRQwXk=;
 b=TzX0FxWwV8Mr5ZES9CSDURlTQQ6MJ/b/UBROBKYB5CGe0V13oH/ecZk4
 tU83/RVDkMKjR5pFTHVkyAkFraoTtUdURUN1qd0TIoJEC4aB8airfJ8UJ
 pG6RAAX8YihC0/abO8ma5vub6Mfzdsk24qJSTDgJMSDhq2lGIM+aRWQw7
 koKyV2iFj6MeYA6Cd1GWVw9E36KnxKwh5Zhq/YxS5lbC4BdWudaqy7Bjn
 cTbvEuGCQXw1ZLYFlWzZJmHBNHD2qwXM/XhOFS6mnuAb+wc1bB3kyoNp2
 1yNd5KqOEz01i2MK/1W2AtyH8XGrudaRtRoogwTvDlzz/xElNA9PgF6+n A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="402787743"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="402787743"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 17:56:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="676807504"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="676807504"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 05 Dec 2022 17:56:35 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 17:56:34 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 5 Dec 2022 17:56:34 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 5 Dec 2022 17:56:34 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 5 Dec 2022 17:56:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SzN3KrErXZKmaUmdWKhPGlkfJBf1SDGPdAdprmxLktdQF6vZ4dI7raxI5soGLCtOS4MYAAy26Y8BgyK4oOxpgV8UwEtOqOSTSo0nAyy3kjaHDadBMcqGdrjAfkofmEBj5xgx3z1xPK2cvsDtAOoNcfHw32ek49zQy3nzPrZmkpXwPBsiI2nB4NvUJGv8UklLusbqNfamm70x7vj3HOjWKapAOpFL5Vt3a10ShYUwFSdovPp6d64lsn1yAyzSBKCzofY4QGpcFaK4cLyRQ6fvn4T6jp0xTQqbVym8LRmdakB5e2OkbGd3CeEUsloiYwKEAiOk3a5n9VFBpiCsKboAOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYAC5CEtj18obuKPNFn0a5HuEd+uUANbUQXa/qRQwXk=;
 b=efmqqEb7mEnafIOx6b4p1LUKVALzPNkGhD2anMEy4jqACmLcK1yFhtGr7CUXxamcym7Mau2OkQPyinwgz2+vBcmI0RnR8/+4Mj+5Wg7RhO/fgQFevtoFPveVfOBvzm0naWfQwdvB/5sRu6EVIRc4KYBlfidFWXhaQWHABmmRhsJEPxUxhpJNY9A1hkR9lFQuUui1Bm4AfN2jERm2bxmur0PzmdsiBXHq2sTfuHqayjYUYTJEt8RCrBvyzlHDLKo3+KxyKS9EERxkRhbbCZ+m1li6biS5SBBlumYqzvF3Eq9dGzxPX0EKhWzPHF61NElcIVwpED/3jo1qYoHujbDlwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH0PR11MB5676.namprd11.prod.outlook.com (2603:10b6:510:ea::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Tue, 6 Dec 2022 01:56:33 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 01:56:33 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [Intel-gfx 3/6] drm/i915/guc: Add a helper for log
 buffer size
Thread-Index: AQHYY+gXrhc37k5iZESYPJaRsFX41a2G/u6AgNpl+QA=
Date: Tue, 6 Dec 2022 01:56:33 +0000
Message-ID: <a641f1f4b048639c24c7bdfdb73f5deb70dfa74d.camel@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
 <20220509210151.1843173-4-alan.previn.teres.alexis@intel.com>
 <87mtd4bir8.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87mtd4bir8.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH0PR11MB5676:EE_
x-ms-office365-filtering-correlation-id: 44d4a77f-f64c-4e81-f301-08dad72d19c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RJCa2//Cp/HOf2Eu8SY6nU4+7XHPY3FZSD7aocWITZ7BPyWCK8SW+0vcJDxAlgZWrRMoaUBHEUM1qnzpDipgMSEbatL7awTZwnIm+sCDQ9NLi2hszXv1XjnqXu9MeLTMQo8tosb6hhN/kwkb3L9/9h40Xms+901gIV5vIN5j6tTi/FWnBsyjqf4gAQ9qXzgl+vZxJ4tcn4p8frYNPry9vuPPzy/iUS8OxqXXzfS7PqIzdXdZ4esPSwUnjtwGj/Ws5ZAV6kCmTOYwudO0gO1GhH1rU/QHf6lLNqBN4sEXOZ9+GxYPqiC4/zGuJA8gbYo2ySxXWC16VHB+P14hrMwjTUFByQBoR2oGuuRxmK3ciV1VmUkNJQOuAN2FseTUGLVQtIWcjPoMRpcl3WZUbAfw3U9/sbD4sW8ZHsaV5q5gGxf7tWtd48pOzFyfAUn6cw7D3YEuXShFKGvnCg/ebXocJM5nvFWIa2/RB1LM9EpwqPc0BMLM90WToYW76j8Ix3ieguNgS3yi6J4kauWApK4mJwHYzr9tk4RofCBt5U42WzbN8hQ33FtvaqtdBThab2ImndHJVBtSH56bkWm8Eg4CTeBEPWI0ntgfZClN1ErwKaYU1ke4FqmwrPP0XywYTCY2Vhcevt+2LjtKO2NeWrWJ1v5vONvM1sd2f6tYuSNaLm647SB5maRStTvc84xwMGD00bMoLHFXf39o/t/Qksh52g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(376002)(366004)(136003)(451199015)(2906002)(4744005)(6862004)(8936002)(38100700002)(122000001)(66946007)(66476007)(8676002)(66556008)(66446008)(64756008)(4326008)(76116006)(36756003)(71200400001)(86362001)(186003)(2616005)(91956017)(41300700001)(5660300002)(82960400001)(316002)(26005)(6636002)(37006003)(6506007)(6512007)(6486002)(478600001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlNKVVFPb1huSS9RUitiM2NqcWNjOUY1dkZaTk1TOHNKdkVFWHFFRlArcWNR?=
 =?utf-8?B?WVQ2VXgrSjVaWlJIWDQrV2gyY2ZGYkRSR1NOa2FJeEw4cjk3Rk4xQkp5Uzd6?=
 =?utf-8?B?ZFNuOXgrZDZuUlpjZFlTalFsSEF4RmpSTTBwYnlDRUJFc3FvbVdtcmx5ckVB?=
 =?utf-8?B?QkVFbERGNlhNdnVaUE1EQ2srU3ovN3hqL2pmQTFTdHZwR21pczhNRldvNG1m?=
 =?utf-8?B?UWo0WU9TdkUyZnFaMWV2YkUyTkxKaVdORkJCelhlZVNOZlVmUDVpdkpUb2FK?=
 =?utf-8?B?emtZb0ZkdHNxeEs2czRXOWtCTUZNdnArcXhqa2dSS2I0Ym54b2tTNEMyay9B?=
 =?utf-8?B?S3JXSzVINUJyZVJBU2NaV1FDTlVDTFJvQVhFdjRRZmhxUDhkdGhNWExjeTV4?=
 =?utf-8?B?c1hMcUhWa0dnZGk2VVBtWW42Q2szNTJKY243NDJQVitUZlJJWjJ2bXVWQnRL?=
 =?utf-8?B?b3h5SjdQT1hOWlhzUnF6b1Y5dlFPNUdZaEVUU3JzeUUrZkNZNkpoeEhySGw1?=
 =?utf-8?B?N2ZjODIyd3ljNnhIV1AvZHJQdFpuTGpKK3diSjdWTXNYaVVKWExUTG1YZjRU?=
 =?utf-8?B?Tm9mNXhWYnpKOFQxQXVoWlFtVjNlTW1saXliSlYrRW81NzhjRm5EaVlQWmRH?=
 =?utf-8?B?aitnQVB2ZGw3eUtqMjAxd0VEOUZlQmxYalN1d3RNS1pIZk14MFRHSjZyMjlS?=
 =?utf-8?B?NHBySGQwb3RqNTgwa3ZxczBkQWpQR01rMFdLWE1rUFpaMGpQNzlRMFRrZ3Rz?=
 =?utf-8?B?WG1ZbTFkNmFZVjRWN1VjVkpLaVVkYXFyNWRyelR1cGw3WUZzTVhRVWRVZFJt?=
 =?utf-8?B?TFl4M2RtbE80UzFFbEU5UE93NDlsNE4rNGF1RXM1U3lnb2FGRUNSWGc4b0x1?=
 =?utf-8?B?bGZuWDVMQmlabCtjWkpsNVdFT0tpS0hRNnNOVGwvUmNobUxucE0vMzFWL0F2?=
 =?utf-8?B?MGhRbzBmYkxOUnhtbUlhMEZmbEtRMlp0cTUzOFd3NnE4ZWVPdHVTWVQ0OUlT?=
 =?utf-8?B?RkJLY0RpMXdLSkI4Y0JkRkRVMU5UUFR4OHpEVjEvOHRIbFZKbENZRkkwUDdT?=
 =?utf-8?B?eCt5eVhGN3ZQN3RZbXM2b2RGTHppa1ZTLzFQM1E1anMvQ2hIbWxEZXdjN0Vq?=
 =?utf-8?B?Zm8yaUxoKzNBQjljWi9NaW03ekdNRjBrUnovK01UWTJnMVVOMGZFOTB1TUtN?=
 =?utf-8?B?bGZSMHVacUNRYUw1TlN0Q3NaektzQWE3V0VYSmM0dEFWRkRzR1M0eHpjRHpu?=
 =?utf-8?B?bzFHQzRjUHdZU0FFWnc4ZTYybmtWbXNCYlZhV3A1OFRjTzFjN0JEZDB0N0dK?=
 =?utf-8?B?VHJNaU93SmFlYkdMV2tIcmdjMGVzRDNtNGlLajhqYUMrYUV0cUR1T0JBRVJU?=
 =?utf-8?B?QThrTmZHb1ZETjJZQ3ZicXJTbDlHUE9mMUFKdCtySWJtQVY3dnZUQ3JTdlpW?=
 =?utf-8?B?cWFYTWFRVjJ5TFJaZU52cGErUUY0Y0U2enF6RFNaRXR2eFZ6eUNCT3NmM1pE?=
 =?utf-8?B?TzVkekdNcXN1QVYreURJMTRYZjAvUnJaS3Z2VDUxc29sWTh6Z29DSlMwOHgz?=
 =?utf-8?B?TW9FY2FmRmhWYWdFSEhoYjZGUEgxUkFoeDFaM2syWWtON3Z3blliNDRnbDlW?=
 =?utf-8?B?ZjY5S2VhcFlJQXNkK2xwa2lLYy9Wd2pnSHpxY1lzTEJ4NnVWVllZWU5IaUZB?=
 =?utf-8?B?VmNMTjJWVjNKOUdoQWs5VTlUOHFwOHZ4cnFUbWRpNHU1ZzVGd2RDUTF5Ni9G?=
 =?utf-8?B?OGFMam9QM0hqMEJ4NGdCT20vbUVGayszMi9yblVpZzVlNnZjb2hXSWFWQzYy?=
 =?utf-8?B?MlROcE16eGFxYllBWUtoTzYwdVZOQ0g4amdoNWZPYWF6V2JUOUY1NDV2NWln?=
 =?utf-8?B?aEd1NlhRME5SNm9OZUhhaHFNeDNzZVVhb2pJYmt1MkswMDB5OHNSb1dzeTNS?=
 =?utf-8?B?OG5Wd2xZV0JlYjBzMW9TUjJvYThmdWxCVjVVeWdmT1RpME0rRTVnR1FJdGsw?=
 =?utf-8?B?TTVQcklBaDJGb013dmF5RTBJTmIzZ2xNZEJ5QjBVaTdpYngrNGVMU1NHVmhS?=
 =?utf-8?B?bjFaVi9LQ0xCaFFrSS9pdkVXWGVFQnFDV2dOZmpOL084YVlhcDJHQ1BUaDBz?=
 =?utf-8?B?U0RyUStodXhQOUFsWGdtVzVobk5qZ2VvcEdGckdLZ1FYRnc4MDdCUUpvaTlm?=
 =?utf-8?Q?9qznPIpO9pm5oG9iiJtXwdQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1A5585E9B4932B49AFB85E5684F6F247@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44d4a77f-f64c-4e81-f301-08dad72d19c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2022 01:56:33.1962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n8w1g0SgM03DiMGBShf4yLc9hwQIZV+dbuzV8mxEPNzKYSFe3fGUBy9SNI9DPdIBfhATqTTSm9khtPC9jtABmBtuX+dYeDCmjSQADdGIeYEF5bcB0BAA3DL0kZlKPvVZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 3/6] drm/i915/guc: Add a helper for log
 buffer size
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

DQoNCk9uIFR1ZSwgMjAyMi0wNy0xOSBhdCAxOTo0OSAtMDcwMCwgRGl4aXQsIEFzaHV0b3NoIHdy
b3RlOg0KPiBPbiBNb24sIDA5IE1heSAyMDIyIDE0OjAxOjQ4IC0wNzAwLCBBbGFuIFByZXZpbiB3
cm90ZToNCj4gPiANCkFsYW46IFtzbmlwXQ0KQWxhbjogVGhpcyBwYXRjaCBpcyBub3QgbmVlZGVk
IGFueSBsb25nZXIgYmVjYXVzZSBpdCB3YXMgYWxzbyBwYXJ0IG9mIGFub3RoZXIgcmUtZmFjdG9y
IHJlbGF0ZWQgdG8gZXJyb3ItY2FwdHVyZSBhbmQNCmRlYnVnLWxvZy1zaXppbmcgbWFuYWdlbWVu
dCBjaGFuZ2VzIHRoYXQgZ290IG1lcmdlZCBlYXJsaWVyIHRoaXMgeWVhci4NCg0K
