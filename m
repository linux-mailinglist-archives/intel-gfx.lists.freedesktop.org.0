Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F43550371
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jun 2022 10:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD7211B202;
	Sat, 18 Jun 2022 08:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD2211B1F5
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jun 2022 08:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655539648; x=1687075648;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bZGqGzTyBXlSSjQEIwnaSrHqxPfcNnAQ5J85w9D4jBE=;
 b=SA/7iWcm8qLdVpjVsVgHMOBFzuXKEwrLnikAxN80yYzPX2vkPBENnIfy
 3oFLpwvxTjYNa/gG5BmS/ILVTOKuLc9wPRHHGhjqR2O4tPa9pVhJEAn9p
 7maNPYoBzvtU2FLJMYlBQO5W/k7bbrWgdSl30Bh11CQAhajBSzxzKx6f4
 ygL9f0r1Mp3v3zY+32hOUH4zIRa1/rsQrZY/TBDblenuSwW6I2tSJTLfT
 sC3SLG0AC1hkgJxNLjvXx4xVk20q79Upa1h0t4hf/rOMdD1Aa6lvoB0he
 fbD3bK5v0QZOxn2dfTYJRtqmvrIHytcYNn375GosKEMy/SiUbmNijod5n g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="279677493"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="279677493"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2022 01:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="653935601"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jun 2022 01:07:27 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sat, 18 Jun 2022 01:07:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sat, 18 Jun 2022 01:07:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sat, 18 Jun 2022 01:07:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wo64vYKJ4ANwCHvOAcjFTt64F5ikX+SFn742nWj56r0lvx1X4/VLUuK/GbS+JFWsVcwpQOzyWbNKGlLNjc0hmPW9aDxaUx5xG+xVPzoP5u+qKzdVassmEy2mHQuj1aeo2mnusf47ZDoK345R8V7HljXt6hiW/tJXFjkT5jp3/ovX3lbolyEMY2XnZUIGxLp5sBpzRqIEksglCK0k6lLnW+Bvvw0kMhJhKbBFTqwbPSzCGviYXmlhA9YM/wJCm7vQpeMllU/OYb2NbiiKOHtcriUX+ze9DVlzOSINldBgraLdzAked9Qh5yAViRWIiYvaWdheVQgu/qnLLZmj+9CsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bZGqGzTyBXlSSjQEIwnaSrHqxPfcNnAQ5J85w9D4jBE=;
 b=Udu7VhkC/8Eg0LtMZSbwbhk6OU4RSbq+KfI4bvjl0ZgrD7zuJIDOz5Nvpv2gTmkG2D0AdgzHPn/omOx+dTiM50p5FSD9sfkqzNZNIQdb1zZkGe0qW/26sRYy8rqx6dovQ0wSE/4iOKDZ7im8hCCIy8otBKU+3ZtSR6sFnJ9IMJKlSx8a55qvGPaVeElAuVHXBOU9INeeRhJCDOg9PkHQc9YVVPk5BShcJfWH0wa2ycHdjU7RJIV3ShrqNw9S/My/ChIetf1MizFxVZQKAZuR16dZYBaTo817O6SZwDiHPe7khfXrhQ4U+b3JuS/7Dbwdlr/lssMJDXnBj+E5Zf48Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY4PR11MB1814.namprd11.prod.outlook.com (2603:10b6:903:11d::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.16; Sat, 18 Jun 2022 08:07:24 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::61bd:a251:1543:93d7%5]) with mapi id 15.20.5353.015; Sat, 18 Jun 2022
 08:07:24 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 08/15] drm/i915/pxp: implement function for sending tee
 stream command
Thread-Index: AQHYfFei2dlRFZuuoUe7V1r6CUcdia1U3FqA
Date: Sat, 18 Jun 2022 08:07:24 +0000
Message-ID: <fccf3837f4fe037fb823a5debee2ce881f24e31c.camel@intel.com>
References: <20220609231955.3632596-1-daniele.ceraolospurio@intel.com>
 <20220609231955.3632596-9-daniele.ceraolospurio@intel.com>
In-Reply-To: <20220609231955.3632596-9-daniele.ceraolospurio@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccf1fe4c-a512-4e17-5669-08da510193ba
x-ms-traffictypediagnostic: CY4PR11MB1814:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY4PR11MB1814CCE379336B52295E081D8AAE9@CY4PR11MB1814.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vRTxxW99IvrFOXv459i+LYshqU15SchpuvTON8D2yShwCOW9ES6XTpakX2ngTpO814oiphQggQpnlvxbYlI5vSM6NYbGrflVZgZKJydISW/+/b8EyuYTqGRxtVNIpgaZasGsG3LpaFvspU+vwxzTma7uDzi0g50FqolHLAbHAnlS/t5Lh0BeFfyYp2rWc/qQOhBsqlci9c1/QBocDwm2c+Pp45IdsSZT73Pr/Aa0MRZKV+cbWVWTAlTOMIEbpU791Ynt1ys2ZIECZ8jIQW9An/BSSA4/+ZlFSrvwDTYuq2zl74MQsNsNI5jT5UkZ8A7WUiTy+EL910xs7TuSkbPyg/PzVv5OrqIc2BodxiKlYCRevDGjyNbi23a2uG/r183/yCzUjEWoPlA+rZmohAWD0jZbmNBhLcccS1m0UN1la57BbqRxz5sdlXH8TLWqF3UzpTWNLkJiF+PwDNUySOc/qtsduJhVTP3Ma+iXH/hvZjW57SNB7s5+yoe84wbgnBh3C9RB1fHsFCwqSnWS7NtSBmmH5jFFdKdniPOrJE+Q7/Lw5EvPic+Yu5yz4gZx+qmYooIqQiLIXVxQ1OHPtLHkkhnVh2gLwXYt4RAT8J/WMTE/ENZ/s3dgLyBiXRPCNyLNxaHBmqTHSXDww48uJldVCLeo1TkII6gfeZJz0DVFJA75E1oJpUYeiLNEiVtZjIwYlpvNfzoLYStcupxE9nB3mg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(38100700002)(38070700005)(2906002)(498600001)(107886003)(4326008)(110136005)(5660300002)(6512007)(2616005)(86362001)(6486002)(8936002)(6506007)(122000001)(82960400001)(83380400001)(26005)(66946007)(8676002)(36756003)(54906003)(66476007)(64756008)(71200400001)(66446008)(66556008)(316002)(186003)(76116006)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q01MVXhtTTJrNnVQeUFmKzY0LzYyellLRFI3Z1NURzJvUHFoNGR5RDRSWjBp?=
 =?utf-8?B?NFV5QlgrYXNFaXZNaHVsbXNoK3ZtRmRaby9mQ3lkd1JkNUpSTlNnYjNUQVYz?=
 =?utf-8?B?TWIwWTFuWk9zK1ppdWxHeURqUnArbHlZTkR1dnlQbmNBSDI0LzhnM2VRdWNZ?=
 =?utf-8?B?Z2NnRGQzRGxDYWxPbmFnclNkVk14d2c2YVhLbTlsU29xclM5YVV3T0g2bUNn?=
 =?utf-8?B?NENDNlZzSnk2UEJuTFl4dmpZQkdpQkpZZ0JoN3p1d1VNUkxmQUx3SVRFdytn?=
 =?utf-8?B?UklWT3ZlN0J5c3FZSTdrMmZ2M0VxV28ydDJCbW11NzhKN2FKdFp1a1JRYkpD?=
 =?utf-8?B?SnBRRWVZOWpMN0YraDdJU0dseUsxdStqc3prTnRKVnRrVkZNbWgxTWRLY2tq?=
 =?utf-8?B?UXNKcldUcFJqZWE1akFHN0lveE9zb0MweHFVd2U5QzNlaW91MUdnR3BGdHVi?=
 =?utf-8?B?bGRKdm41blhKazVSWGZrM3hhbVlHd1RQNlJKLzZWZUVXOUtsdmFEOU1YM01Z?=
 =?utf-8?B?K1NIV0xDUTVLSndxb1dEcGwrUjNvclhKL3hONXVsTXZ6a0hOSlNvMUdiQnlB?=
 =?utf-8?B?OXp0R2N0WDBISXlQblQrYlJiNVAyV0hpaU5nZG9mOGN2UDVvNUordjh2ZzVx?=
 =?utf-8?B?VXViZ3plRnR3TkhJYWtFZjJrdzJOVkpZUkpaMnV2L09Sb3Z1UHZQVXVDeGw1?=
 =?utf-8?B?TCsvTytCSjRxWEVsT1REQW9KeUorQkhmY2NNcS9KaHYvZklocmcwVjlkNE9k?=
 =?utf-8?B?YkxLeUlDZW5EVkY1cjNSaFJpbyt5NFcyUXFnMTRyWjNyM2xGSTBNQkI1QkZT?=
 =?utf-8?B?UkJESTVzUTBNL2dDTWlMNXlZWE52OHAweFllNFhkbTZxNFBzN0gvajVjQ3Bs?=
 =?utf-8?B?T2FUOUNFRnN5WExaQkFET2pVWGhtdUY3a2NHd0pqQXpXSk9QNHczbTZRV2hQ?=
 =?utf-8?B?d0ZWMkFxd3c5M0NqUHFpWVloRm1LZ1BQTis1LzBPNFBvdmhLdkxpTktSekJK?=
 =?utf-8?B?RU5zTHBqREFHOTJvdTNkd2trdnNqZnlkMTZERUlNUldka0l6MUxPazUrcnhK?=
 =?utf-8?B?MXg5ZVQvZDVocmxNbWJaSnBXSlVON2pvVnVPbjJ1aWpoZTZRdmlMU1ErVEda?=
 =?utf-8?B?dEN5c3VITnI0RjNrbVVva2ljRml0cWt2cTRNeXU5TGx2N1FvS2hKbDZQQmcz?=
 =?utf-8?B?dmxjdmRJZzNqbFI0ZFI1WkxqbzRTWHB5WE91a3VpL21tbjdYckhVK2xtYndu?=
 =?utf-8?B?bUhWNnpOVzN2b2trUG13cVV4U01oREt6b25qamNXeFZOQnZlUGZXRndJWWdV?=
 =?utf-8?B?V1NVemtjbER6R0gybnU1MDNZNFRoaTllT0ViT0lJc1NlMEg4SzdsdmUwK1Rp?=
 =?utf-8?B?Z09uaVc5ZmpFeFh5RFZMZXorV3J0aEY5L1FrOGtibC9wem5xZ2w1OE1mRHRn?=
 =?utf-8?B?dmxTMHdTQTRId05zNW53bWlWaG5kZ2NpTm5BUmRFUUg5WkhuVjFRdXNYM3lk?=
 =?utf-8?B?VUxjaU9FOTBySTZJOC9TS0d2NFJCRVNYNi9wSmF2TXdiQWQzRjB0THdoUXlB?=
 =?utf-8?B?ZFYrMVJldmZLNk5Vd2RsejRzdk54enNKTEpUR2hpSU91UEFIOHRrMlFZOXd2?=
 =?utf-8?B?VzhsMWpXNzFQVzNncGhtdnR1Z2RGVGNyRHlPR2k3TGpKTDZucGJqWlRub01Q?=
 =?utf-8?B?UklCZUZtM1k4YXhrempKN2JHdVgrT0g3dnFoV082ZDVIUDJGN2FCTGxudEFr?=
 =?utf-8?B?aEYxNjFBSkNOMUVRdmplZkdvQiswMFN2WnJtNW5Ed1N4aXo5Sk1GQkpPWEhU?=
 =?utf-8?B?ZDlOeCtCV0VYYlZ2elNjeitwN0dNeWptdEZvcVNsYmNaTmhJdFhBVldqcGRz?=
 =?utf-8?B?cTRoRHhMVkFqSUhsUURlNVFwWU1mNUIyeHdXUWJBZU4zOVVSendNZlNYSE0v?=
 =?utf-8?B?Q3FDNThrSGc2cDBRWXliUjMra09yUWxxdUpiUUN3dFJ2Q1RSMTZVMHJwK0NV?=
 =?utf-8?B?NEYwTitkRGJtbUFWRlpFU3hVV2lZODJaalVxVGFqVnlRVUJqTjF5WmplSUMr?=
 =?utf-8?B?RlE0Ry9sZ2hpWUgyRXlxdFpwU0RCSjB0TUx2SWppRm5MZnltSkVTa1MwVlhs?=
 =?utf-8?B?WHg2THFxR1VSMGJZVDdwVnl3N1RGMVN2SnlXcVZnUGdSZWVmZ2tPbjBMUldC?=
 =?utf-8?B?WGx2OG1VSVpWZWlpQmUxa1A3eVBWTHA0ZHR2ZlVYNHdOR2s1bmdmdXpILzdY?=
 =?utf-8?B?YWI5OE82Ym94WFRoRDEzbUlXRHV5NXo4enZReFRvTFp4MXR6cWdsd2RKRkor?=
 =?utf-8?B?QjMrSEJpbldWWmxlK2NHOE5iUDM4OFIyVEZDL0lvRkdib2pxZzVCWTlRU0Na?=
 =?utf-8?Q?M+e8bSWmMg/nhSwwcWeZ2VNtt22g93EiFd+htn3savTtG?=
x-ms-exchange-antispam-messagedata-1: ssUv5ggZiyRxYQ==
Content-Type: text/plain; charset="utf-8"
Content-ID: <F760DCA9FF334C47A58B31B5A8AF6B58@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccf1fe4c-a512-4e17-5669-08da510193ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2022 08:07:24.1313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IIBf+m8mo1nca12QbCb10xxD55JT5HZAiRZ4i0DTZ3kUuGxV4IcczfPljQSHOnD1D/GZlU3b8csOqw380ngTIiLcqcoiH3xFpN4qzfbPJbbMU4Hx9S5DXVMsFnzjoyqV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1814
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/15] drm/i915/pxp: implement function for
 sending tee stream command
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
Cc: "Winkler, Tomas" <tomas.winkler@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQpSZXZpZXdlZC1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRl
bC5jb20+DQoNCk9uIFRodSwgMjAyMi0wNi0wOSBhdCAxNjoxOSAtMDcwMCwgQ2VyYW9sbyBTcHVy
aW8sIERhbmllbGUgd3JvdGU6DQo+IEZyb206IFZpdGFseSBMdWJhcnQgPHZpdGFseS5sdWJhcnRA
aW50ZWwuY29tPg0KPiANCj4gQ29tbWFuZCB0byBiZSBzZW50IHZpYSB0aGUgc3RyZWFtIGludGVy
ZmFjZSBhcmUgd3JpdHRlbiB0byBhIGxvY2FsDQo+IG1lbW9yeSBwYWdlLCB3aG9zZSBhZGRyZXNz
IGlzIHRoZW4gcHJvdmlkZWQgdG8gdGhlIEdTQy4NCj4gVGhlIGludGVyZmFjZSBzdXBwb3J0cyBw
cm92aWRpbmcgYSBmdWxsIHNnIHdpdGggbXVsdGlwbGUgcGFnZXMgZm9yIGJvdGgNCj4gaW5wdXQg
YW5kIG91dHB1dCBtZXNzYWdlcywgYnV0IHNpbmNlIGZvciBub3cgd2Ugb25seSBhaW0gdG8gc3Vw
cG9ydCBzaG9ydA0KPiBhbmQgc3luY2hyb25vdXMgbWVzc2FnZXMgd2UgY2FuIHVzZSBhIHNpbmds
ZSBwYWdlIGZvciBib3RoIGlucHV0IGFuZA0KPiBvdXRwdXQuDQo+IA0KPiBOb3RlIHRoYXQgdGhl
IG1laSBpbnRlcmZhY2UgZXhwZWN0cyBhbiBzZyBvZiA0ayBwYWdlcywgd2hpbGUgb3VyIGxtZW0g
cGFnZXMNCj4gYXJlIDY0ay4gSWYgd2UgZXZlciBuZWVkIHRvIHN1cHBvcnQgbW9yZSB0aGFuIDRr
IHdlJ2xsIG5lZWQgdG8gY29udmVydC4NCj4gQWRkZWQgYSBUT0RPIGNvbW1lbnQgdG8gdGhlIGNv
ZGUgdG8gcmVjb3JkIHRoaXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaXRhbHkgTHViYXJ0IDx2
aXRhbHkubHViYXJ0QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVG9tYXMgV2lua2xlciA8
dG9tYXMud2lua2xlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IENjOiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBBbGFuIFByZXZpbiA8YWxhbi5w
cmV2aW4udGVyZXMuYWxleGlzQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9weHAvaW50ZWxfcHhwX3RlZS5jICAgfCAxMTQgKysrKysrKysrKysrKysrKysrKystDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5oICAgfCAgIDUgKw0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90eXBlcy5oIHwgICA2ICsrDQo+ICAz
IGZpbGVzIGNoYW5nZWQsIDEyNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBfdGVlLmMNCj4gaW5kZXggMmMxZmM0OWVj
ZWMxLi5lMGQwOTQ1NWE5MmUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3B4
cC9pbnRlbF9weHBfdGVlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVs
X3B4cF90ZWUuYw0KPiBAQCAtNyw2ICs3LDcgQEANCj4gIA0KPiAgI2luY2x1ZGUgPGRybS9pOTE1
X3B4cF90ZWVfaW50ZXJmYWNlLmg+DQo+ICAjaW5jbHVkZSA8ZHJtL2k5MTVfY29tcG9uZW50Lmg+
DQo+ICsjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIg0KPiAgDQo+ICAjaW5jbHVkZSAi
aTkxNV9kcnYuaCINCj4gICNpbmNsdWRlICJpbnRlbF9weHAuaCINCj4gQEAgLTY5LDYgKzcwLDQ3
IEBAIHN0YXRpYyBpbnQgaW50ZWxfcHhwX3RlZV9pb19tZXNzYWdlKHN0cnVjdCBpbnRlbF9weHAg
KnB4cCwNCj4gIAlyZXR1cm4gcmV0Ow0KPiAgfQ0KPiAgDQo+ICtpbnQgaW50ZWxfcHhwX3RlZV9z
dHJlYW1fbWVzc2FnZShzdHJ1Y3QgaW50ZWxfcHhwICpweHAsDQo+ICsJCQkJIHU4IGNsaWVudF9p
ZCwgdTMyIGZlbmNlX2lkLA0KPiArCQkJCSB2b2lkICptc2dfaW4sIHNpemVfdCBtc2dfaW5fbGVu
LA0KPiArCQkJCSB2b2lkICptc2dfb3V0LCBzaXplX3QgbXNnX291dF9sZW4pDQo+ICt7DQo+ICsJ
LyogVE9ETzogZm9yIGJpZ2dlciBvYmplY3RzIHdlIG5lZWQgdG8gdXNlIGEgc2cgb2YgNGsgcGFn
ZXMgKi8NCj4gKwljb25zdCBzaXplX3QgbWF4X21zZ19zaXplID0gUEFHRV9TSVpFOw0KPiArCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gcHhwX3RvX2d0KHB4cCktPmk5MTU7DQo+ICsJ
c3RydWN0IGk5MTVfcHhwX2NvbXBvbmVudCAqcHhwX2NvbXBvbmVudCA9IHB4cC0+cHhwX2NvbXBv
bmVudDsNCj4gKwl1bnNpZ25lZCBpbnQgb2Zmc2V0ID0gMDsNCj4gKwlzdHJ1Y3Qgc2NhdHRlcmxp
c3QgKnNnOw0KPiArCWludCByZXQ7DQo+ICsNCj4gKwlpZiAobXNnX2luX2xlbiA+IG1heF9tc2df
c2l6ZSB8fCBtc2dfb3V0X2xlbiA+IG1heF9tc2dfc2l6ZSkNCj4gKwkJcmV0dXJuIC1FTk9TUEM7
DQo+ICsNCj4gKwltdXRleF9sb2NrKCZweHAtPnRlZV9tdXRleCk7DQo+ICsNCj4gKwlpZiAodW5s
aWtlbHkoIXB4cF9jb21wb25lbnQgfHwgIXB4cF9jb21wb25lbnQtPm9wcy0+Z3NjX2NvbW1hbmQp
KSB7DQo+ICsJCXJldCA9IC1FTk9ERVY7DQo+ICsJCWdvdG8gdW5sb2NrOw0KPiArCX0NCj4gKw0K
PiArCUdFTV9CVUdfT04oIXB4cC0+c3RyZWFtX2NtZC5vYmopOw0KPiArDQo+ICsJc2cgPSBpOTE1
X2dlbV9vYmplY3RfZ2V0X3NnX2RtYShweHAtPnN0cmVhbV9jbWQub2JqLCAwLCAmb2Zmc2V0KTsN
Cj4gKw0KPiArCW1lbWNweShweHAtPnN0cmVhbV9jbWQudmFkZHIsIG1zZ19pbiwgbXNnX2luX2xl
bik7DQo+ICsNCj4gKwlyZXQgPSBweHBfY29tcG9uZW50LT5vcHMtPmdzY19jb21tYW5kKHB4cF9j
b21wb25lbnQtPnRlZV9kZXYsIGNsaWVudF9pZCwNCj4gKwkJCQkJICAgICAgZmVuY2VfaWQsIHNn
LCBtc2dfaW5fbGVuLCBzZyk7DQo+ICsJaWYgKHJldCA8IDApDQo+ICsJCWRybV9lcnIoJmk5MTUt
PmRybSwgIkZhaWxlZCB0byBzZW5kIFBYUCBURUUgZ3NjIGNvbW1hbmRcbiIpOw0KPiArCWVsc2UN
Cj4gKwkJbWVtY3B5KG1zZ19vdXQsIHB4cC0+c3RyZWFtX2NtZC52YWRkciwgbXNnX291dF9sZW4p
Ow0KPiArDQo+ICt1bmxvY2s6DQo+ICsJbXV0ZXhfdW5sb2NrKCZweHAtPnRlZV9tdXRleCk7DQo+
ICsJcmV0dXJuIHJldDsNCj4gK30NCj4gKw0KPiAgLyoqDQo+ICAgKiBpOTE1X3B4cF90ZWVfY29t
cG9uZW50X2JpbmQgLSBiaW5kIGZ1bmN0aW9uIHRvIHBhc3MgdGhlIGZ1bmN0aW9uIHBvaW50ZXJz
IHRvIHB4cF90ZWUNCj4gICAqIEBpOTE1X2tkZXY6IHBvaW50ZXIgdG8gaTkxNSBrZXJuZWwgZGV2
aWNlDQo+IEBAIC0xMjYsNiArMTY4LDY2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY29tcG9uZW50
X29wcyBpOTE1X3B4cF90ZWVfY29tcG9uZW50X29wcyA9IHsNCj4gIAkudW5iaW5kID0gaTkxNV9w
eHBfdGVlX2NvbXBvbmVudF91bmJpbmQsDQo+ICB9Ow0KPiAgDQo+ICtzdGF0aWMgaW50IGFsbG9j
X3N0cmVhbWluZ19jb21tYW5kKHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gK3sNCj4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHB4cF90b19ndChweHApLT5pOTE1Ow0KPiArCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBOVUxMOw0KPiArCXZvaWQgKmNtZDsNCj4g
KwlpbnQgZXJyOw0KPiArDQo+ICsJcHhwLT5zdHJlYW1fY21kLm9iaiA9IE5VTEw7DQo+ICsJcHhw
LT5zdHJlYW1fY21kLnZhZGRyID0gTlVMTDsNCj4gKw0KPiArCWlmICghSVNfREdGWChpOTE1KSkN
Cj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwkvKiBhbGxvY2F0ZSBsbWVtIG9iamVjdCBvZiBvbmUg
cGFnZSBmb3IgUFhQIGNvbW1hbmQgbWVtb3J5IGFuZCBzdG9yZSBpdCAqLw0KPiArCW9iaiA9IGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShpOTE1LCBQQUdFX1NJWkUsIEk5MTVfQk9fQUxMT0Nf
Q09OVElHVU9VUyk7DQo+ICsJaWYgKElTX0VSUihvYmopKSB7DQo+ICsJCWRybV9lcnIoJmk5MTUt
PmRybSwgIkZhaWxlZCB0byBhbGxvY2F0ZSBweHAgc3RyZWFtaW5nIGNvbW1hbmQhXG4iKTsNCj4g
KwkJcmV0dXJuIFBUUl9FUlIob2JqKTsNCj4gKwl9DQo+ICsNCj4gKwllcnIgPSBpOTE1X2dlbV9v
YmplY3RfcGluX3BhZ2VzX3VubG9ja2VkKG9iaik7DQo+ICsJaWYgKGVycikgew0KPiArCQlkcm1f
ZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gcGluIGdzYyBtZXNzYWdlIHBhZ2UhXG4iKTsNCj4g
KwkJZ290byBvdXRfcHV0Ow0KPiArCX0NCj4gKw0KPiArCS8qIG1hcCB0aGUgbG1lbSBpbnRvIHRo
ZSB2aXJ0dWFsIG1lbW9yeSBwb2ludGVyICovDQo+ICsJY21kID0gaTkxNV9nZW1fb2JqZWN0X3Bp
bl9tYXBfdW5sb2NrZWQob2JqLCBpOTE1X2NvaGVyZW50X21hcF90eXBlKGk5MTUsIG9iaiwgdHJ1
ZSkpOw0KPiArCWlmIChJU19FUlIoY21kKSkgew0KPiArCQlkcm1fZXJyKCZpOTE1LT5kcm0sICJG
YWlsZWQgdG8gbWFwIGdzYyBtZXNzYWdlIHBhZ2UhXG4iKTsNCj4gKwkJZXJyID0gUFRSX0VSUihj
bWQpOw0KPiArCQlnb3RvIG91dF91bnBpbjsNCj4gKwl9DQo+ICsNCj4gKwltZW1zZXQoY21kLCAw
LCBvYmotPmJhc2Uuc2l6ZSk7DQo+ICsNCj4gKwlweHAtPnN0cmVhbV9jbWQub2JqID0gb2JqOw0K
PiArCXB4cC0+c3RyZWFtX2NtZC52YWRkciA9IGNtZDsNCj4gKw0KPiArCXJldHVybiAwOw0KPiAr
DQo+ICtvdXRfdW5waW46DQo+ICsJaTkxNV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7DQo+
ICtvdXRfcHV0Og0KPiArCWk5MTVfZ2VtX29iamVjdF9wdXQob2JqKTsNCj4gKwlyZXR1cm4gZXJy
Ow0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdm9pZCBmcmVlX3N0cmVhbWluZ19jb21tYW5kKHN0cnVj
dCBpbnRlbF9weHAgKnB4cCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqID0gZmV0Y2hfYW5kX3plcm8oJnB4cC0+c3RyZWFtX2NtZC5vYmopOw0KPiArDQo+ICsJaWYg
KCFvYmopDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCWk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAo
b2JqKTsNCj4gKwlpOTE1X2dlbV9vYmplY3RfdW5waW5fcGFnZXMob2JqKTsNCj4gKwlpOTE1X2dl
bV9vYmplY3RfcHV0KG9iaik7DQo+ICt9DQo+ICsNCj4gIGludCBpbnRlbF9weHBfdGVlX2NvbXBv
bmVudF9pbml0KHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gIHsNCj4gIAlpbnQgcmV0Ow0KPiBA
QCAtMTM0LDE2ICsyMzYsMjQgQEAgaW50IGludGVsX3B4cF90ZWVfY29tcG9uZW50X2luaXQoc3Ry
dWN0IGludGVsX3B4cCAqcHhwKQ0KPiAgDQo+ICAJbXV0ZXhfaW5pdCgmcHhwLT50ZWVfbXV0ZXgp
Ow0KPiAgDQo+ICsJcmV0ID0gYWxsb2Nfc3RyZWFtaW5nX2NvbW1hbmQocHhwKTsNCj4gKwlpZiAo
cmV0KQ0KPiArCQlyZXR1cm4gcmV0Ow0KPiArDQo+ICAJcmV0ID0gY29tcG9uZW50X2FkZF90eXBl
ZChpOTE1LT5kcm0uZGV2LCAmaTkxNV9weHBfdGVlX2NvbXBvbmVudF9vcHMsDQo+ICAJCQkJICBJ
OTE1X0NPTVBPTkVOVF9QWFApOw0KPiAgCWlmIChyZXQgPCAwKSB7DQo+ICAJCWRybV9lcnIoJmk5
MTUtPmRybSwgIkZhaWxlZCB0byBhZGQgUFhQIGNvbXBvbmVudCAoJWQpXG4iLCByZXQpOw0KPiAt
CQlyZXR1cm4gcmV0Ow0KPiArCQlnb3RvIG91dF9mcmVlOw0KPiAgCX0NCj4gIA0KPiAgCXB4cC0+
cHhwX2NvbXBvbmVudF9hZGRlZCA9IHRydWU7DQo+ICANCj4gIAlyZXR1cm4gMDsNCj4gKw0KPiAr
b3V0X2ZyZWU6DQo+ICsJZnJlZV9zdHJlYW1pbmdfY29tbWFuZChweHApOw0KPiArCXJldHVybiBy
ZXQ7DQo+ICB9DQo+ICANCj4gIHZvaWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfZmluaShzdHJ1
Y3QgaW50ZWxfcHhwICpweHApDQo+IEBAIC0xNTUsNiArMjY1LDggQEAgdm9pZCBpbnRlbF9weHBf
dGVlX2NvbXBvbmVudF9maW5pKHN0cnVjdCBpbnRlbF9weHAgKnB4cCkNCj4gIA0KPiAgCWNvbXBv
bmVudF9kZWwoaTkxNS0+ZHJtLmRldiwgJmk5MTVfcHhwX3RlZV9jb21wb25lbnRfb3BzKTsNCj4g
IAlweHAtPnB4cF9jb21wb25lbnRfYWRkZWQgPSBmYWxzZTsNCj4gKw0KPiArCWZyZWVfc3RyZWFt
aW5nX2NvbW1hbmQocHhwKTsNCj4gIH0NCj4gIA0KPiAgaW50IGludGVsX3B4cF90ZWVfY21kX2Ny
ZWF0ZV9hcmJfc2Vzc2lvbihzdHJ1Y3QgaW50ZWxfcHhwICpweHAsDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvcHhwL2ludGVsX3B4cF90ZWUuaA0KPiBpbmRleCBjMTM2MDUzY2UzNDAuLmFlYjNkZmU3
Y2U5NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90
ZWUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3RlZS5oDQo+
IEBAIC0xNCw0ICsxNCw5IEBAIHZvaWQgaW50ZWxfcHhwX3RlZV9jb21wb25lbnRfZmluaShzdHJ1
Y3QgaW50ZWxfcHhwICpweHApOw0KPiAgaW50IGludGVsX3B4cF90ZWVfY21kX2NyZWF0ZV9hcmJf
c2Vzc2lvbihzdHJ1Y3QgaW50ZWxfcHhwICpweHAsDQo+ICAJCQkJCSBpbnQgYXJiX3Nlc3Npb25f
aWQpOw0KPiAgDQo+ICtpbnQgaW50ZWxfcHhwX3RlZV9zdHJlYW1fbWVzc2FnZShzdHJ1Y3QgaW50
ZWxfcHhwICpweHAsDQo+ICsJCQkJIHU4IGNsaWVudF9pZCwgdTMyIGZlbmNlX2lkLA0KPiArCQkJ
CSB2b2lkICptc2dfaW4sIHNpemVfdCBtc2dfaW5fbGVuLA0KPiArCQkJCSB2b2lkICptc2dfb3V0
LCBzaXplX3QgbXNnX291dF9sZW4pOw0KPiArDQo+ICAjZW5kaWYgLyogX19JTlRFTF9QWFBfVEVF
X0hfXyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4
cF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90eXBlcy5oDQo+
IGluZGV4IDdjZTVmMzdlZTEyZS4uZjc0YjFlMTFhNTA1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwX3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvcHhwL2ludGVsX3B4cF90eXBlcy5oDQo+IEBAIC01Myw2ICs1MywxMiBAQCBzdHJ1
Y3QgaW50ZWxfcHhwIHsNCj4gIAkvKiogQHRlZV9tdXRleDogcHJvdGVjdHMgdGhlIHRlZSBjaGFu
bmVsIGJpbmRpbmcgYW5kIG1lc3NhZ2luZy4gKi8NCj4gIAlzdHJ1Y3QgbXV0ZXggdGVlX211dGV4
Ow0KPiAgDQo+ICsJLyoqIEBzdHJlYW1fY21kOiBMTUVNIG9iaiB1c2VkIHRvIHNlbmQgc3RyZWFt
IFBYUCBjb21tYW5kcyB0byB0aGUgR1NDICovDQo+ICsJc3RydWN0IHsNCj4gKwkJc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iajsgLyogY29udGFpbnMgUFhQIGNvbW1hbmQgbWVtb3J5ICov
DQo+ICsJCXZvaWQgKnZhZGRyOyAvKiB2aXJ0dWFsIG1lbW9yeSBmb3IgUFhQIGNvbW1hbmQgKi8N
Cj4gKwl9IHN0cmVhbV9jbWQ7DQo+ICsNCj4gIAkvKioNCj4gIAkgKiBAaHdfc3RhdGVfaW52YWxp
ZGF0ZWQ6IGlmIHRoZSBIVyBwZXJjZWl2ZXMgYW4gYXR0YWNrIG9uIHRoZSBpbnRlZ3JpdHkNCj4g
IAkgKiBvZiB0aGUgZW5jcnlwdGlvbiBpdCB3aWxsIGludmFsaWRhdGUgdGhlIGtleXMgYW5kIGV4
cGVjdCBTVyB0bw0KPiAtLSANCj4gMi4yNS4xDQo+IA0KDQo=
