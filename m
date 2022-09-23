Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD295E7B35
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 14:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D660210E525;
	Fri, 23 Sep 2022 12:56:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC0310EA67
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 12:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663937808; x=1695473808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=q19pJ1iXDibWbVB1UnPkdTmFJVMAHe3fSeiKxADW/YY=;
 b=SfzLMkOgn71xUXhvwt0GK59SRQsXGkfGKvZ9/qSIoXx43n+TyAd2Fbwd
 uBccWyYA04XVj5nFTfJhKnOK5lLyE6tCpFj2pK3Z6yqDmWq9CXRJp86Wo
 nLFNH5QVw57XcG4eIm1Ceeq5LYRg6ziNWhGL9sILW765VyKpBxDfzF1cB
 KWNCr/vla/z5tcrcDhkS1EawqL1LGMQ6gvVPdIHx97xS//ba9hgh2UiaZ
 A5G0JrydabBBVVV42bUlO5wXTY6asaNkk93j7z/GBoN1nFh2jrQa3yX1s
 h0yTCL0FWTZwC4DPHceKDU+4q7F1jVl1xq5b+esiOmA9PVtk3I9R8Iays g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="302031941"
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="302031941"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 05:56:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,339,1654585200"; d="scan'208";a="653390080"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 23 Sep 2022 05:56:47 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 05:56:46 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 05:56:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 05:56:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 05:56:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BotV5p+Vs43UQzxofJ9wHZVDBOa+VCbDYy1E+YEeDlj5IaCuIGr69fChAQsmMalnt/+Fcubnq/Bmlz0s62WWIpUdldQVsBcu/nh+9NlbQ4QF5fIxOtAezcdZskoj0ksmKNf0R3kttNOoT+UflVN5/ZmbPVBpXenaR2RUEuS/guhPIploqfGyhp+GVR1l/MxUHJoBBr5hQzqUEnVgwHnIOftgg5a9dpqlSWX7P1+eQcZ7JUQJ0VuNkbht7/yXPEgSf8QZ4sjnv+GgZ9biNLglkYwuk6+QvuhWQdlKUsJGd9y+hTPKqJavYC8otKJcZIte3yCr7eXrt6TwDNbIhAAXtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q19pJ1iXDibWbVB1UnPkdTmFJVMAHe3fSeiKxADW/YY=;
 b=cMUxvUukSkfMy3GZyZ7beryt2MjwO9UUhv7MVvmcjIm8ncIlVOHNOH0TdtsGyjEyaySmfsp5DDjTgIHFUWfASp7JgZS6LSE7svs4eh8iNvH6jPI9Skt3v6C9IjIvHBUw+Ec7mYc7b3n3LufZcVmDnii3+iogLXaQfN/EYxENebF+ZgiX0YPjt5QLsU9mX5muTwtaqzXZg7kZlkn8LsjKOda9AljTAToy+Gsx0Kx+RYYEI1ealzDayOZF28lqTrbavTezkEhifGZDjU03EDMNQGZ3I++Wrd6+iUpHDKGZbq203qCimgPajnHAEzGvrALs9SjA9pIV18Sc1zAySraN9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by MN2PR11MB4551.namprd11.prod.outlook.com (2603:10b6:208:269::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Fri, 23 Sep
 2022 12:56:44 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5%12]) with mapi id 15.20.5654.019; Fri, 23 Sep
 2022 12:56:44 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field handling
Thread-Index: AQHYzllhiDr/c6LwkUSnU2UTUOSTEa3rbCYAgAEduACAAGv2AIAAAi4AgAADJgA=
Date: Fri, 23 Sep 2022 12:56:44 +0000
Message-ID: <22c203f841b68c1d9758f37d5f932aa8710b28e6.camel@intel.com>
References: <20220922075948.111558-1-jouni.hogander@intel.com>
 <3dddd19c98061e1e8173c65d1a8dcc8f5b380b80.camel@intel.com>
 <af9c90fbd52633203095dc10fb62902b190f32cc.camel@intel.com>
 <86089a49cbb3123d0e8603c592a740587b3e6f2f.camel@intel.com>
 <46dcdc5eab4fa7f0fab57020dc82eec8eb066dc7.camel@intel.com>
In-Reply-To: <46dcdc5eab4fa7f0fab57020dc82eec8eb066dc7.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|MN2PR11MB4551:EE_
x-ms-office365-filtering-correlation-id: fed11d43-5d94-4dd1-2544-08da9d631123
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TtwjHUP2jeGEkJaYnnPzAP1Gdq9ARNK1IjeZn+5JEgUYY1UuNPlEsi/fYDHPboR5rI+Vx3NH0s7jyR3+tjRpIORv1BzhkgHv5StFn6oAwNSoZ+RxyHFdAC7UsPlixjl+DJFr/Qn4a/hRfvksdr6p23vdmETiTztKSfvYA6yyvN2zLWA9plR0urjtEPQOlRl+09hyQhnrm75Se6egHkeTp7PNevP0vnIkLLhFKbyJh2X/Mi/oc30tnUPyTPAe3L8akzps229UDAbGp/PA5TJ45kYlOprJ0OQhBAwx9T1KyMsu9YrwE/uWTBDss4cw7N4ov5o4pMESpA8EpUqVr3Yke+GVwaYYUhlgSOWtM7Gr660/2waa+yal2ymBBWTLyI4peTFFtlLRebP9FgJKextLL28Kn5jl3eafOIp/2jgg8cFeJPCjE/kW42kneOCNevNbTgJlSotJCNNxfL4WVoVx4q4p7XtTmtnySi3PAeFt964S/uFxOKu0qSkyZDxv57bwubF69cqfOe+vRnAit2LwDXteA0uHXTnyNkViGIB77nqEdAxef2TKycnQ27PgP1YMdejbVgoDYenBJuXMvXut4WRHTExzFxlvUocypZhwr7PLnLNTNF8QJVTWCSrfcl9oUTcpZoqhVgGnso/1rj/U1fNZ5vkDsl4l+HE7nzmbXg5rKS55K/JM8MhMd2kv1P/bRa7FB4SRegGYy1sbCEMk6gYyTKzXytCJVnzMgECjNHhMsMTbk3gRFHHf7zhjMKiqcdmy3XMtOndSAZkApW7lKxhjAI8vO20wb2DvdX0LT6o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199015)(36756003)(41300700001)(6506007)(66574015)(186003)(66556008)(2616005)(107886003)(66446008)(91956017)(64756008)(4326008)(66476007)(8676002)(6512007)(66946007)(76116006)(86362001)(8936002)(5660300002)(2906002)(82960400001)(122000001)(478600001)(966005)(6486002)(38100700002)(316002)(83380400001)(26005)(38070700005)(110136005)(71200400001)(6636002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2QvK0xxWXh6N1puNy9ISlN6SVIxMllqdVJJUHpibmVwUHcxYkpLNkVqbk5V?=
 =?utf-8?B?K1JIWTVPUnp5Z2l2NnpSd3UwdDB2bldpSWprV2pnZFhybWpTalVJN085bHgv?=
 =?utf-8?B?K2Q3TG16bXFZRE9ERkFZdTR2RGhIaiswQXlsbUtGbHpMTmQ5SWxQNSt4Yks4?=
 =?utf-8?B?WlI0cjdqMFlNYkJ1K1hKRXIvSStDUGhNWHpIRDBIVkMycDJpM3VwK3Z4Vjly?=
 =?utf-8?B?ZmpQOFZmRVc4VDd3OXVEY29oU2RGQU00eEhhT09YU1dtMDdtZVZmNGhYa0cy?=
 =?utf-8?B?dlJTa2RzL0NZMlRCbVpKTVdXTS85R1FXa0o0eTdoY1JoMzdXeTRSamlxK29s?=
 =?utf-8?B?SWFnOW9tcFRXN3pwZ1NYSWRsWXVFV3RFNEU5RzJvQ01STmUyNW1CSG55bG9Y?=
 =?utf-8?B?aGRmOE9tVy8vVExQeVBiaGttOXFQMFNtOWptMCtaRHdZWStjcXRQUWVUTk9x?=
 =?utf-8?B?QXI3UzBZd0NubjBiVDZUWHNRYzA1YzZlMHJXeEFXdkZmY1dUMU1PUlBLWUJG?=
 =?utf-8?B?cW9VYnRtTDN5cXdsUnFEbEYwM1BXajl0enRJMS9qTHV6WVZQcEc3amR5V212?=
 =?utf-8?B?dUowR3pIV3Y3TTZDdTl5S2VyVzBtQzJxTDkxR0ExWTRGT2Y3RTVQQnFnckh3?=
 =?utf-8?B?aGtnR3hDVkZZUXZqd0ZiMzY0RUxpa1pWZ0k4blE0cDE0THloK211TjNTNUtW?=
 =?utf-8?B?WjQzbVZmRGQvaXlBT1JoVENVU1Vna2liaGVhSmZUMHgvdDBqQVRQWkZjSDd5?=
 =?utf-8?B?OUp3MHNuMTMrUUhnRlVZbE1IRnd2bWxmdG55VEJCcnpwWVNhK2ozaW1FT1VE?=
 =?utf-8?B?aDhlbDVnUDJKazd0bFRwZmpldFE5L2ppRHZ3WTFVd3N1THhyNkVkeU1haTFa?=
 =?utf-8?B?VTRBb3lJbTZvODhLcnJjTng1ZnZWUXNtY2hWNEZNQVoyeVVOUDZsQUdwbWo4?=
 =?utf-8?B?L1lMTHhqYjFhdkxzTmFqOGszajVJT1pCQVJ0cUxvSVRlUkRvSFBiUVNscXhq?=
 =?utf-8?B?Q2l4c0tsNlh2Nk9MaFIwUTIweXkrNXVMUzZxUVlFL1pRT3c0ejNXSmtSSTRH?=
 =?utf-8?B?SjdDUmJLV1hIKzRoU3pidGs0M3QwNlQrMTIzUXNFM1JjVUZUbWJxaXl5Tmx4?=
 =?utf-8?B?RnRVVFdpRXNnN0EwamJKQW5JMDl4Qkx2akFxQ2xiTHI5dElTVlJoWUlIRjB1?=
 =?utf-8?B?aGFpWWY5UHIyY1ZsVkd4d3dyZDFYbkU4QklqajdnZExkakJxVG1TaXpkZnA0?=
 =?utf-8?B?VERpYXkrU3VIYTNYK1pjVmtSK1ZvOW9FM1VscWs0UVdESDB1d1FhOWJXbk4z?=
 =?utf-8?B?RHJqUmxmYlEvK1JWSHpkMHRkZnNIVXNZZFpuS3pFWlhVTjBjU2t0b2ZPb0pn?=
 =?utf-8?B?NURHN3NxVmdKakhjL2hEOFBTWDFhdmV1YWwrQ0xaOGtjZVB4TkRUMWlRcE1N?=
 =?utf-8?B?REpMeUtHOG9pa0l0SEE4cndCWW1qQzNSNzcrR2tmZmQrbDNaUlRaTTI0TStx?=
 =?utf-8?B?TFBqMGIycFBpS3QyNkxFRzBZaUVtdGxEVUN4bFdHclBkcGlmTEZ2dGNEU25a?=
 =?utf-8?B?dzNRcGg2eFgrMmF4VnNiWkIyWFVBYUp2NTZ4blBiTklzNDBtbEpFaEdBNUtr?=
 =?utf-8?B?dzZNdXgyeXE2Unl2eXUwQ1VpTmMyaVZ0QWRwUE04QkRGV0hzRy8xYmxQOTUw?=
 =?utf-8?B?TExYeTAxSWxCeUdGVG8wQkpWampvU3RmTVg3cS9yeGgvYVpEYXBGbkJWNTZE?=
 =?utf-8?B?ZnZSaDM4MExQN0pXVFRlbFFFdy9hZ0Q5ZUhmblBzUnRYdFJsZWVMV2Vwd0tq?=
 =?utf-8?B?em5YcmxhRXhTVnFZSXhaK2xBbGV3Z3dPa3BpTWcwNitPQS81QUZEV1U1ZWho?=
 =?utf-8?B?dXlNOEY1U1pRMStDZ09nN1hEMkd2c0draDZrdUFVRUl2UHM4SEVGMEhmZGVz?=
 =?utf-8?B?R1lKY0kyNjB0VjlxK0JuYndBTGZYR2tEU2FQYjkyaXh2L01LSGJrSE8xSThq?=
 =?utf-8?B?S3hUQUxmOGI3aXA1YU5zV2gvS2hEMFBrek5tMVg0VHFGQUtzOWprQk9HdVZz?=
 =?utf-8?B?NlgzT1RkVWFWbTRQT2N4U3AvRmw5WmtCY1ZDbWNLeXBhNHlGQ0E1WjdERzZj?=
 =?utf-8?B?aDJyZVU1REwzVUJ2V3lRYXlueks0OHhYRUVXL2JJQ1NqV2JWZjZXUVgrNWhM?=
 =?utf-8?B?S0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1D0A327FB7B18E4EADE41264FCF92DA5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fed11d43-5d94-4dd1-2544-08da9d631123
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2022 12:56:44.0716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sluQlDPLpT0+O/6M9UF/4KjOBhHG5pY3iLtPI0Idx/pEgjaTeT5MYhbHyJbBeFYYqpWuh+6PCRUC738uR68yxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4551
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/psr: Fix PSR_IMR/IIR field
 handling
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

T24gRnJpLCAyMDIyLTA5LTIzIGF0IDEyOjQ1ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIEZyaSwgMjAyMi0wOS0yMyBhdCAxMjozNyArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6
DQo+ID4gT24gRnJpLCAyMDIyLTA5LTIzIGF0IDA2OjExICswMDAwLCBIb2dhbmRlciwgSm91bmkg
d3JvdGU6DQo+ID4gPiBPbiBUaHUsIDIwMjItMDktMjIgYXQgMTM6MDggKzAwMDAsIFNvdXphLCBK
b3NlIHdyb3RlOg0KPiA+ID4gPiBPbiBUaHUsIDIwMjItMDktMjIgYXQgMTA6NTkgKzAzMDAsIEpv
dW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiA+ID4gPiBDdXJyZW50IFBTUiBjb2RlIGlzIHN1cHBv
c2VkIHRvIHVzZSBUUkFOU0NPREVSX0VEUCB0byBmb3JjZSAwDQo+ID4gPiA+ID4gc2hpZnQNCj4g
PiA+ID4gPiBmb3INCj4gPiA+ID4gPiBiaXRzIGluIFBTUl9JTVIvSUlSIHJlZ2lzdGVyczoNCj4g
PiA+ID4gPiANCj4gPiA+ID4gPiAvKg0KPiA+ID4gPiA+IMKgKiBnZW4xMisgaGFzIHJlZ2lzdGVy
cyByZWxhdGl2ZSB0byB0cmFuc2NvZGVyIGFuZCBvbmUgcGVyDQo+ID4gPiA+ID4gdHJhbnNjb2Rl
cg0KPiA+ID4gPiA+IMKgKiB1c2luZyB0aGUgc2FtZSBiaXQgZGVmaW5pdGlvbjogaGFuZGxlIGl0
IGFzIFRSQU5TQ09ERVJfRURQDQo+ID4gPiA+ID4gdG8NCj4gPiA+ID4gPiBmb3JjZQ0KPiA+ID4g
PiA+IMKgKiAwIHNoaWZ0IGluIGJpdCBkZWZpbml0aW9uDQo+ID4gPiA+ID4gwqAqLw0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IEF0IHRoZSB0aW1lIG9mIHdyaXRpbmcgdGhlIGNvZGUgYXNzdW1wdGlv
biAiVFJBTlNDT0RFUl9FRFAgPT0NCj4gPiA+ID4gPiAwIg0KPiA+ID4gPiA+IHdhcyBtYWRlLg0K
PiA+ID4gPiA+IFRoaXMgaXMgbm90IHRoZSBjYXNlIGFuZCBhbGwgZmllbGRzIGluIFBTUl9JTVIg
YW5kIFBTUl9JSVIgYXJlDQo+ID4gPiA+ID4gc2hpZnRlZA0KPiA+ID4gPiA+IGluY29ycmVjdGx5
IGlmIERJU1BMQVlfVkVSID49IDEyLg0KPiA+ID4gPiANCj4gPiA+ID4gRnJvbSB3aGVyZSBhcmUg
eW91IGdldHRpbmcgdGhhdCBUUkFOU0NPREVSX0VEUCA9PSAwPw0KPiA+ID4gDQo+ID4gPiBJdCdz
IG5vdC4gVGhhdCBpcyBteSBwb2ludC4gSWYgeW91IGxvb2sgYXQgdGhpcyBjb21taXQ6DQo+ID4g
PiANCj4gPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9mcmVlZGVza3RvcC9kcm0tdGlwL2NvbW1pdC84
MjQxY2ZiZTY3ZjQwODJlZWU1ZmM3MmU1YTgwMjVjNWI1OGMyZGRmDQo+ID4gPiANCj4gPiA+IGFk
ZGluZyB0aGlzIGNvbW1lbnQ6DQo+ID4gPiANCj4gPiA+ICvCoMKgwqDCoMKgwqAgLyoNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoCAqIGdlbjEyKyBoYXMgcmVnaXN0ZXJzIHJlbGF0aXZlIHRvIHRyYW5z
Y29kZXIgYW5kIG9uZSBwZXINCj4gPiA+IHRyYW5zY29kZXINCj4gPiA+ICvCoMKgwqDCoMKgwqDC
oCAqIHVzaW5nIHRoZSBzYW1lIGJpdCBkZWZpbml0aW9uOiBoYW5kbGUgaXQgYXMNCj4gPiA+IFRS
QU5TQ09ERVJfRURQDQo+ID4gPiB0byBmb3JjZQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgICogMCBz
aGlmdCBpbiBiaXQgZGVmaW5pdGlvbg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gPiAN
Cj4gPiA+IGFuZCB0aGUgY29kZSBhZGRlZCBieSB0aGlzIGNvbW1pdCBpcyBkb2luZw0KPiA+ID4g
DQo+ID4gPiAuLi4NCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRyYW5zX3No
aWZ0ID0gMDsNCj4gPiA+IG1hc2sgPSBFRFBfUFNSX0VSUk9SKHRyYW5zX3NoaWZ0KTsNCj4gPiA+
IC4uLg0KPiA+ID4gDQo+ID4gPiArwqDCoMKgwqDCoMKgIG1hc2sgPSBFRFBfUFNSX0VSUk9SKHRy
YW5zX3NoaWZ0KTsNCj4gPiA+IC4uLg0KPiA+ID4gDQo+ID4gPiBhbmQgaWYgd2UgbG9vayBhdCBF
RFBfUFNSX0VSUk9SIGRlZmluaXRpb246DQo+ID4gPiANCj4gPiA+IC4uLg0KPiA+ID4gI2RlZmlu
ZcKgwqAgX0VEUF9QU1JfVFJBTlNfU0hJRlQodHJhbnMpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCgo
dHJhbnMpID09DQo+ID4gPiBUUkFOU0NPREVSX0VEUCA/IFwNCj4gPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwIDogKCh0cmFucykgLQ0KPiA+ID4gVFJBTlNDT0RF
Ul9BICsgMSkgKiA4KQ0KPiA+ID4gLi4uDQo+ID4gPiAjZGVmaW5lwqDCoCBFRFBfUFNSX0VSUk9S
KHRyYW5zKcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCgweDQgPDwNCj4gPiA+
IF9FRFBfUFNSX1RSQU5TX1NISUZUKHRyYW5zKSkNCj4gPiA+IC4uLg0KPiA+ID4gDQo+ID4gPiBF
RFBfUFNSX0VSUk9SKDApIGlzIDB4NDAwIHdoaWNoIGlzIHdyb25nIGZvciBlLmcuIFRHTC4gVXNp
bmcNCj4gPiA+IFRSQU5TQ09ERVJfRURQIGFzIG1lbnRpb25lZCBpbiB0aGUgYWRkZWQgY29tbWVu
dDoNCj4gPiA+IEVEUF9QU1JfRVJST1IoVFJBTlNDT0RFUl9FRFApIGlzIDB4NCB3aGljaCBpcyBj
b3JyZWN0Lg0KPiA+ID4gDQo+ID4gPiBNeSBwYXRjaCBpcyBkb2luZyB3aGF0IGlzIGluIHRoZSBj
b21tZW50LiBUaGVyZSBhcmUgb3RoZXIgd2F5IHRvDQo+ID4gPiBmaXgNCj4gPiA+IHRoaXMsIGJ1
dCB0byBteSBvcGluaW9uIG9yaWdpbmFsIGlkZWEgdXNpbmcgVFJBTlNDT0RFUl9FRFAgaW4NCj4g
PiA+IGNvbW1pdCANCj4gPiA+IDgyNDFjZmJlNjdmNDA4MmVlZTVmYzcyZTVhODAyNWM1YjU4YzJk
ZGYgdG8gZm9yY2UgMCBzaGlmdCBrZWVwcyB0aGUNCj4gPiA+IGNvZGUgcHJldHR5IGNsZWFuLg0K
PiA+ID4gDQo+ID4gPiA+IA0KPiA+ID4gPiBlbnVtIHBpcGUgew0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgSU5WQUxJRF9QSVBFID0gLTEsDQo+ID4gPiA+IA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgUElQRV9BID0gMCwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoFBJUEVfQiwNCj4gPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoFBJUEVfQywNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoFBJUEVfRCwN
Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoF9QSVBFX0VEUCwNCj4gPiA+ID4gDQo+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqBJOTE1X01BWF9QSVBFUyA9IF9QSVBFX0VEUA0KPiA+ID4gPiB9Ow0KPiA+
ID4gPiANCj4gPiA+ID4gI2RlZmluZSBwaXBlX25hbWUocCkgKChwKSArICdBJykNCj4gPiA+ID4g
DQo+ID4gPiA+IGVudW0gdHJhbnNjb2RlciB7DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBJTlZB
TElEX1RSQU5TQ09ERVIgPSAtMSwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4gPiA+
IMKgwqDCoMKgwqDCoMKgwqAgKiBUaGUgZm9sbG93aW5nIHRyYW5zY29kZXJzIGhhdmUgYSAxOjEg
dHJhbnNjb2RlciAtPg0KPiA+ID4gPiBwaXBlDQo+ID4gPiA+IG1hcHBpbmcsDQo+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqAgKiBrZWVwIHRoZWlyIHZhbHVlcyBmaXhlZDogdGhlIGNvZGUgYXNzdW1l
cyB0aGF0DQo+ID4gPiA+IFRSQU5TQ09ERVJfQT0wLCB0aGUNCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoCAqIHJlc3QgaGF2ZSBjb25zZWN1dGl2ZSB2YWx1ZXMgYW5kIG1hdGNoIHRoZSBlbnVtIHZh
bHVlcw0KPiA+ID4gPiBvZg0KPiA+ID4gPiB0aGUgcGlwZXMNCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoCAqIHRoZXkgbWFwIHRvLkVEUF9QU1JfVFJBTlNfDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKg
wqAgKi8NCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoFRSQU5TQ09ERVJfQSA9IFBJUEVfQSwNCj4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoFRSQU5TQ09ERVJfQiA9IFBJUEVfQiwNCj4gPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoFRSQU5TQ09ERVJfQyA9IFBJUEVfQywNCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoFRSQU5TQ09ERVJfRCA9IFBJUEVfRCwNCj4gPiA+ID4gDQo+ID4gPiA+IMKgwqDCoMKgwqDC
oMKgwqAvKg0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogVGhlIGZvbGxvd2luZyB0cmFuc2Nv
ZGVycyBjYW4gbWFwIHRvIGFueSBwaXBlLCB0aGVpcg0KPiA+ID4gPiBlbnVtDQo+ID4gPiA+IHZh
bHVlDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBkb2Vzbid0IG5lZWQgdG8gc3RheSBmaXhl
ZC4NCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
VFJBTlNDT0RFUl9FRFAsDQo+ID4gPiA+IA0KPiA+ID4gPiBodHRwczovL2NnaXQuZnJlZWRlc2t0
b3Aub3JnL2RybS10aXAvdHJlZS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaCNuODcNCj4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gRml4IHRoaXMgYnkg
dXNpbmcgVFJBTlNDT0RFUl9FRFAgZGVmaW5pdGlvbiBpbnN0ZWFkIG9mIDAuIEV2ZW4NCj4gPiA+
ID4gPiB0aG91Z2h0DQo+ID4gPiA+ID4gVFJBTlNDT0RFUl9FRFAgZG9lc24ndCBleGlzdCBpbiBk
aXNwbGF5X3ZlciA+PSAxMiBkb2luZyBpdCB0aGlzDQo+ID4gPiA+ID4gd2F5DQo+ID4gPiA+ID4g
a2VlcHMNCj4gPiA+ID4gPiBjb2RlIGNsZWFuIGFuZCByZWFkYWJsZS4NCj4gPiA+ID4gDQo+ID4g
PiA+IHRyYW5zX3NoaWZ0ID0gMCBpcyBmaW5lLCB3ZSBuZWVkZWQgdGhpcyBiZWNhdXNlIGRpc3Bs
YXkxMisNCj4gPiA+ID4gc3BsaXRlZA0KPiA+ID4gPiBmcm9tIGEgc2luZ2xlIHJlZ2lzdGVyIHdp
dGggYWxsIHRyYW5zY29kZXIgdG8gb25lIHJlZ2lzdGVyIHBlcg0KPiA+ID4gPiB0cmFuc2NvZGVy
Lg0KPiA+ID4gPiANCj4gPiA+IA0KPiA+ID4gTm8sIGl0J3Mgbm90LiBTZWUgdGhlIGRlZmluaXRp
b24gb2bCoCBfRURQX1BTUl9UUkFOU19TSElGVCBhbmQNCj4gPiA+IEVEUF9QU1JfVFJBTlNfKi4g
TWF5YmUgcmVuYW1pbmcgdHJhbnNfc2hpZnQgdG8gdHJhbnNjb2RlciB3b3VsZA0KPiA+ID4gcHJl
dmVudA0KPiA+ID4gbWlzdW5kZXJzdGFuZGluZyBoZXJlLg0KPiA+IA0KPiA+IE9rYXkgbm93IEkg
dW5kZXJzdG9vZC4NCj4gPiBJbiBteSBvcGluaW9uIHRoZSBwcm9wZXIgZml4IHdvdWxkIGJlIGFk
ZCBUR0xfWCBtYWNyb3MgdG8gYmUgdXNlZCBpbg0KPiA+IGRpcGxheTEyKyBwYXRocyBhbmQgZHJv
cCB0aGUgRURQIHRyYW5zY29kZXIgY29uY2VwdCB0aGF0IGRvIG5vdCBleGlzdA0KPiA+IGluIFRH
TCsuDQo+IA0KPiBPaywgSSBzdGFydGVkIHRvIGxvb2sgYXQgdGhpcyBvcmlnaW5hbGx5IGFuZCBp
dCBnZXRzIGEgYml0IG1lc3N5IGFzDQo+IGVhY2ggYml0IGluIFBTUl9JTVIvUFNSX0lTUiBuZWVk
cyBzZXBhcmF0ZSBoYW5kbGluZy4gSWYgd2UgY2hvb3NlIHRoaXMNCj4gdGhlbiBJIHdhcyB0aGlu
a2luZyBhZGRpbmcgc2ltaWxhciBfYml0X2dldCBmdW5jdGlvbnMgYXMgd2UgaGF2ZSBmb3INCj4g
bWFuX3Rya19jdGwgYml0cy4gV2hhdCBkbyB5b3UgdGhpbms/DQoNCklmIHRoZSBjb2RlIGdldHMg
c2ltcGxlciBnbyBhaGVhZCB3aXRoIGZ1bmN0aW9ucyB0byByZXR1cm4gdGhlIGJpdHMuDQoNCj4g
DQo+IEkgd291bGQgc3RpbGwgY29uc2lkZXIgY3VycmVudCBhcHByb2FjaCBhcyBmb3JjaW5nIDAg
c2hpZnRpbmcgdXNpbmcNCj4gRURQX1BTUl9UUkFOU18qIGtlZXBzIGl0IHByZXR0eSBzaW1wbGUu
DQoNCkJ1dCBpdCBpcyB0ZXJyaWJsZSBmb3IgcmVhZGFiaWxpdHksIHRvb2sgbWUgYSB3aGlsZSB0
byBnZXQgd2hhdCB5b3Ugd2FudGVkIHRvIGZpeC4NCg0KPiANCj4gPiANCj4gPiBBbHNvIHBsZWFz
ZSBpbmNsdWRlIGEgZml4ZXMgdGFnIHBvaW50aW5nIHRvDQo+ID4gODI0MWNmYmU2N2Y0MDgyZWVl
NWZjNzJlNWE4MDI1YzViNThjMmRkZiBzbyB0aGlzIGdldHMgYmFja3BvcnRlZC4NCj4gPiANCj4g
PiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IHYyOiBJbXByb3ZlIGNvbW1pdCBtZXNzYWdlIChK
b3PDqSkNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gPiA+ID4gPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+
ID4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNiAr
KystLS0NCj4gPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVs
ZXRpb25zKC0pDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiBpbmRleCA5ZGVmOGQ5ZmFkZTYu
LjllY2YxYTlhMTEyMCAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+IEBAIC0xMjksNyArMTI5LDcgQEAgc3Rh
dGljIHZvaWQgcHNyX2lycV9jb250cm9sKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiA+ICppbnRl
bF9kcCkNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogMCBzaGlmdCBpbiBiaXQgZGVmaW5p
dGlvbg0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikgew0KPiA+ID4gPiA+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0cmFuc19zaGlmdCA9IDA7DQo+ID4gPiA+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRyYW5zX3NoaWZ0ID0gVFJBTlNDT0RFUl9FRFA7
DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbXJfcmVnID0gVFJB
TlNfUFNSX0lNUihpbnRlbF9kcC0NCj4gPiA+ID4gPiA+IHBzci50cmFuc2NvZGVyKTsNCj4gPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHRyYW5zX3NoaWZ0ID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOw0K
PiA+ID4gPiA+IEBAIC0xOTUsNyArMTk1LDcgQEAgdm9pZCBpbnRlbF9wc3JfaXJxX2hhbmRsZXIo
c3RydWN0IGludGVsX2RwDQo+ID4gPiA+ID4gKmludGVsX2RwLCB1MzIgcHNyX2lpcikNCj4gPiA+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgaTkxNV9yZWdfdCBpbXJfcmVnOw0KPiA+ID4gPiA+IMKgDQo+
ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIp
IHsNCj4gPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJhbnNfc2hpZnQg
PSAwOw0KPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0cmFuc19zaGlm
dCA9IFRSQU5TQ09ERVJfRURQOw0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW1yX3JlZyA9IFRSQU5TX1BTUl9JTVIoaW50ZWxfZHAtDQo+ID4gPiA+ID4gPiBwc3Iu
dHJhbnNjb2Rlcik7DQo+ID4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7DQo+ID4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0cmFuc19zaGlmdCA9IGludGVsX2Rw
LT5wc3IudHJhbnNjb2RlcjsNCj4gPiA+ID4gPiBAQCAtMTE5Nyw3ICsxMTk3LDcgQEAgc3RhdGlj
IGJvb2wNCj4gPiA+ID4gPiBwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKHN0cnVjdA0KPiA+ID4g
PiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikgew0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwNCj4gPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIFRSQU5TX1BTUl9JSVIoaW50ZWxfZHAtDQo+ID4gPiA+ID4gPiBwc3IudHJh
bnNjb2RlcikpOw0KPiA+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwg
Jj0gRURQX1BTUl9FUlJPUigwKTsNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgdmFsICY9IEVEUF9QU1JfRVJST1IoVFJBTlNDT0RFUl9FRFApOw0KPiA+ID4gPiA+IMKg
wqDCoMKgwqDCoMKgwqB9IGVsc2Ugew0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRURQX1BTUl9JSVIpOw0KPiA+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdmFsICY9IEVEUF9QU1JfRVJS
T1IoaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyKTsNCj4gPiA+ID4gDQo+ID4gPiANCj4gPiANCj4g
DQoNCg==
