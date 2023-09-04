Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC3C7914D2
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 11:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4983210E316;
	Mon,  4 Sep 2023 09:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C4C10E316
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693820093; x=1725356093;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZfR5rWQfUj9XPogvG74wKQY0O4iCOo0g+5ameVE3aYA=;
 b=WFRikagNCoEUGG4tv8fcE1pe5KSTH54VDRg63b16z89CCRCAMDFlr5vQ
 bWLlAHES3qfjIn1Tu8Cwb0p27b3issU1NFnHqX1bx//yUsncejDT17L1z
 8e9CnkhFi+QPxjjX62+RLmQB/gKttgjg42qF/IjzBpdXyQO1+3J592V7/
 86iw6WtL1ok4gTRTgSJWV25g9onwaDZYS4vmS32PijpsrD4XXTNKbT22D
 01zwTKIvqnRLsU3TyolRC0z8WcgZ/bibV3MUC7rL3X1nRsE1q/VT7bFiY
 jwGqQKX/Vwg+Gn3mKB8Kzkf6f7msbhJlLim9Qpu86qHn133v0OZ0tMYOr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="366782778"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="366782778"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 02:34:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="914453216"
X-IronPort-AV: E=Sophos;i="6.02,226,1688454000"; d="scan'208";a="914453216"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 02:34:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 02:34:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 02:34:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 02:34:46 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 02:34:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fo8HFKb7EBDB1ZmDW3yLE+0wRU2KW0OOkHn11t2uGIyLeHBwSC0HT8njU/3rUKpUl7qwYUbF8CkfrVDBtw2GJUBiZRadT7Wemp0DAZQtsKs2gB/AYx9DLyCYqJ+st6DZPhZPA0/2pCsL1tdYEaE1THyKzPsq8ZX1GFU4w2Pi2wM6hbrjW7dV1jj0Xl9aXT2jJzZmXuP1c9BPW5vJXYH9u5okqkQOEb1aiTCPTZFuRUMZB0mU9jj1rUpEqZJ0GAOXuAevNuwNhuTfthHtW9fE9QeNCzQPCnlvHDd4S1tydzL2Of5DX3Mbg+Q1CMVzs+Co3GrF+jCMxA/GZU/tV2+GsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZfR5rWQfUj9XPogvG74wKQY0O4iCOo0g+5ameVE3aYA=;
 b=IBiaRRV4C8KY2Y57M0hU+po2X32IzSBciPQXAOXBjBGbzQfFaKKNzvO4KvnlJ8KFHxJ3p8qs4+tR84SaGFqHO08YRKvuturJEUwz750n6ZG7OaLfE9Ew4Vdj4BsT1+FJhHFn75RON4wNqSM6xG5FiBWWvgkwg6s8KWI9JnaCw3MpN8rFb6KPUY9C3MGLIryB2NPE/qxSeVT85GIkOSxM3b1e+Q7TJHqs+9sRasjzbjLbq/fjvIXVM3/FoP6eUxmxAEcTxqURUIubHHbG/QDeKt273AU2Uz+GLCBphO3jIi8xcodGHCsBzEWSpcqbHoqh8rRstdXQzX4TNNbcDCS9ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB7318.namprd11.prod.outlook.com (2603:10b6:208:426::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.30; Mon, 4 Sep 2023 09:34:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::3c89:fe31:95fd:c2cf%5]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 09:34:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v4 0/4] Handle dma fences in dirtyfb ioctl
Thread-Index: AQHZ3Lel8fLFRybSb0KPQdRQ+kC0drAFz/sAgAScnwA=
Date: Mon, 4 Sep 2023 09:34:38 +0000
Message-ID: <56ad474fcdf54a2b16b26253b94953f3be3bbc35.camel@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
 <ZPHGTJ15jPjAw4Je@intel.com>
In-Reply-To: <ZPHGTJ15jPjAw4Je@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB7318:EE_
x-ms-office365-filtering-correlation-id: 937da2dd-6475-4fdc-fae6-08dbad2a2879
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YQa8SeVtQmRECHnVKMBPmyx1+J+hmEP5LiU8zkpawNlJN8uv911UAlY9Y/T1KUO95UyWeWWrTo+WB9yWOw6X7+6uUE4P90x+lE9/8Mx5mUZuGNGU3jXhfQ2gvZu7INjgr+oLd1mqAaZ/MRcCUrcLQnSRhMuCZca5+HK3FZu8l0SaDt9a5x45J/QWYBD1/lGBPdYByPp7Y7KrUlrugJ1foogeHoUTyFW7KuqVxxne78fh8yBROw2vDSCbB7ABh+5n9Sn/fbVJlqwqGi/mjVFaV9B/LMUTXsphh8TjUrlnh31QbUN3GDprhCN3xLw0i7VJOsKgQLtu6rK4zykVC8l41TjZzvofeAE2upGXXZm5pInGaQL31ZyRw+6S7EKMMKZUhwhjyOYwmF1Jo/A9ZbQgx+6x7iP5i3rrfIQzU+OwP6jnZisW5LWnrtHwnb6lz/7ZoR9tLImma20qO2toJo2Ncmgp/vIaJEZ2y51jcHS8TIlTLkfa/spHoJshqAYiwQhKXmuHmlOt/izWsqpGoSp89VxQv74vOc4YCOAPYIeXJ8KtgFqEuVIEm92llQJQeAyDI7EJkjbsQVCgHZxk63HbMDCxbFYc+Af5Z8cVjvgNV8KgXx43m0YrzF74cvPrYFHF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(396003)(346002)(136003)(376002)(1800799009)(451199024)(186009)(8676002)(5660300002)(66556008)(6916009)(316002)(64756008)(2906002)(36756003)(66446008)(91956017)(54906003)(66476007)(66946007)(76116006)(8936002)(4326008)(41300700001)(6506007)(6486002)(26005)(6512007)(38070700005)(122000001)(71200400001)(82960400001)(66574015)(478600001)(2616005)(83380400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkVITGQrVTA3T3duZW82a21CNk1kNTZtSWgxcVpGMGM2bGVrdWVwM3pFbzJN?=
 =?utf-8?B?bFZQYXowVThGbkZVNkVuRWtldTBYanA2aktXNnBSNlViWVVqd0xWdFBNVEND?=
 =?utf-8?B?NEdid1lQOWhza0lBR2k1RFZja2RDeVMzSWRNQU9WV3hnRGxCZmlkcENUUnFJ?=
 =?utf-8?B?QlUzVUFhZTdMREVjaDlocS9DdTVvTUlBRDcyZ0UrcUhybDNHZkd3dE1Za2U0?=
 =?utf-8?B?KzJPWEgzWWYyalpwYlJXRDM1WWhOV3h6Z0w1akxNMHlHbGJjcWJFWjAyeDF2?=
 =?utf-8?B?aUlXdlFta2trQzU0VXBuZWprdDM2ZHF4c3dCc05jNHRSdWp2cmRmamNjTmd4?=
 =?utf-8?B?eEppdmlHZjhsM1BhbU5FekxHWEFBTjF5cXNwaWcwcTM4RytwK0dDVEVVcTlD?=
 =?utf-8?B?ZkJuaGUrR0s3RU9MZS9vYkFFWm1DY3hVVWoxUEJ2cEloeFVSZFVvcnREV1Ja?=
 =?utf-8?B?cGJHbGU0SXRGWHF2Z1FoMStoVGs4U09qRkFtVnNITW56R2k3cUIvaGFFR2Nu?=
 =?utf-8?B?K3M2enRvcDM5Q3ArNUs2WFpmQS92d0lQclJreGJJbEVLRDFqUTFFVVZRZ2V3?=
 =?utf-8?B?ajZYQmZVbW5zSkpmelJQMGhmaHJCRit1aFl4ZzZ1MzFzU1RLNUt6UUV5TkRt?=
 =?utf-8?B?VHZtK0k3ZzF5WnR1QVhyUUx4ellKVmhBWkNuYjRyZGFkd2cwMEZ4ajRNZzkw?=
 =?utf-8?B?L0dEaTgySmx2WVNKcGt5dFNKaTJyVkJycm9MeDBhd1IyZWpkR1hPYkYzVkZu?=
 =?utf-8?B?Rk1HNTVSS3VXdlo3dmpzNHNEdEgxMGtKbGhLWmtpNHFuRDZoTHhxb3JCQzVk?=
 =?utf-8?B?ZHBwc3NtYjZ2Ni9SVk1ReU5PaWdVdjUvcDJlbWV6b0Y0R1BPbVc0R3VvRENw?=
 =?utf-8?B?RjdvcjEvcnFONDNxU0wvcjF5N1JwKzBnSzF3UWVHa292VklUT3lpQkM4WWZh?=
 =?utf-8?B?L1ZKa1g5MW55ZFc5VHR4c2xoTjNuU0crM3BKaHgrQjZNYzdvWmYrWTdLS2ZV?=
 =?utf-8?B?VVNOYWpWQ0NLMmFSVlFhT3Z2TmNFWTZtZ0FrWUNDQmJGeE0yTE1vbkhtN0t2?=
 =?utf-8?B?cnhwVHd5ZFhvVkhSNlpGYlhvakdGMXA2KzRhNldZK0wxNnhNaElXOGs1TUZC?=
 =?utf-8?B?NWtQZ3NQZklXLzNSbDlKVThWelRDejA4MlJXeko4cEtwMVVEU0xRVnI2WHlm?=
 =?utf-8?B?TVU5SGFwbFJrRUhZZDhDeCt5aWlCRHZoUmUwSHNTbkFXbjhjSXZtQzBkVmQx?=
 =?utf-8?B?a0MvSS9keVRZanQ1b3ZYaElkVFBqa1BRdDY1RFg2c1dSSVVySVc1bHkwU2FF?=
 =?utf-8?B?cVMrbXdjMEF3eUZ0a1Uwb050ZTMwMWZjbENycmNrNlJtL3JsRDJZdGNzUVE1?=
 =?utf-8?B?QnRxM1FmMWIrQkNUb2RmQmlvVGx1QldlRWRxL2hnR2U5L1BCMjZLQjUzVXRN?=
 =?utf-8?B?V0EzQ01FL3l4YU9EaDJ4bkVSSXYzZVVzWlQ1SG5reGJOOHlyNFhLU3hubFc2?=
 =?utf-8?B?aHgyWnFQOWsvWVBwbG42eXFRdnFhdWhkMndldHh6bmhJQ0pYNU5FRmk4bXNn?=
 =?utf-8?B?OElnYksxSDZDSHp3TG00ZzQxR3AxT3RPdDc3aHJxaFJQRFQxeHN6YnN3YWJK?=
 =?utf-8?B?cmlydy9qVFNBYzNDaG5lT1hLNjJFcm0yd3hjM2dTYjBFUk5XaHZOYkR4VjNG?=
 =?utf-8?B?TmZadWMvckRFYWhLMFB2ZW0zR2JQZndDZTBLakJSY3UwL2oxQVNPdGlXQ0xN?=
 =?utf-8?B?ZmpBSHJZVlRzTDdPU2Y3R3E0K3Axb1VjMVMxdFRKbkJXMHNzVkRlYkt0TlFx?=
 =?utf-8?B?em4rQ3Bnc0JES21mVDdaODF5MWJZNEovdDk5YU1rclJEVG1xdkk1NkFVSlhz?=
 =?utf-8?B?TGJGRUNrZU1idXhnQ1lTMWt0RUNnMXc2cHpGMFg4RmJNUVU1QWE4UnF6VjZ2?=
 =?utf-8?B?VXRFTGJzV01UQ2I3MmhyUnNmRFJVS3ptTWZ4SWFTMWdZekp4Wjk4UU5YemV4?=
 =?utf-8?B?USthVEtpNHJUQ2xPSCtvbk9xVXBrY1k2OStpTEhaS3dEZHM4ek8xcWpMcExo?=
 =?utf-8?B?WWZCY01PZjNJRkpjWUphTFhzSzFiK3BGWmhMNDJYZXdYZjZ2ZjZZVkczYzRw?=
 =?utf-8?B?TnY5b1FLdVdiVk1Uc2I4aFVpSDVGbThVbHg4MFJ6UDliMzltTkl5OWtKbHM3?=
 =?utf-8?B?NXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <29DF2BE0C9AB314C846E81DAFFDDDD89@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 937da2dd-6475-4fdc-fae6-08dbad2a2879
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2023 09:34:38.1937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5RdeWJi2Lfo44cH1+KNv81LLH3FhU3fGc928PD2IOvZTCDoybwRVpdI1+UqD9elRwGXwDl0XExrNgIxLpZddHKoeC0hrwPsFi5cPk8yLEyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7318
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/4] Handle dma fences in dirtyfb ioctl
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
Cc: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTA5LTAxIGF0IDE0OjA5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgU2VwIDAxLCAyMDIzIGF0IDEyOjM0OjU2UE0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBDdXJyZW50bHkgaTkxNSBkaXJ0eWZiIGlvY3RsIGlzIG5vdCB0YWtp
bmcgZG1hIGZlbmNlcyBpbnRvDQo+ID4gYWNjb3VudC4gVGhpcyB3b3JrcyB3aXRoIGZlYXR1cmVz
IGxpa2UgRkJDLCBQU1IsIERSUlMgYmVjYXVzZSBvdXINCj4gPiBnZW0NCj4gPiBjb2RlIGlzIHRy
aWdnZXJpbmcgZmx1c2ggYWdhaW4gd2hlbiByZW5kZXJpbmcgY29tcGxldGVzLiBXZSBhcmUNCj4g
PiB0YXJnZXRpbmcgaW4gZ2V0dGluZyByaWQgb2YgZnJvbnRidWZmZXIgdHJhY2tpbmcgY29kZTog
Rmx1c2luZyBob29rDQo+ID4gZnJvbSBnZW0gY29kZSB3aWxsIGJlIHJlbW92ZWQgYXMgd2VsbC4N
Cj4gPiANCj4gPiBUaGlzIHBhdGNoIHNldCBpcyBhZGRpbmcgZG1hIGZlbmNlIGhhbmRsaW5nIGlu
dG8gaTkxNSBkaXJ0eWZiDQo+ID4gaW9jdGwuDQo+ID4gDQo+ID4gdjQ6DQo+ID4gwqAtIE1vdmUg
aW52YWxpZGF0ZSBiYWNrIGJlaW5nIGRvbmUgYmVmb3JlIGNiIGlzIGFkZGVkDQo+ID4gdjM6DQo+
ID4gwqAtIENoZWNrIGZyb250YnVmZmVyIGJpdHMgYmVmb3JlIGFkZGluZyBhbnkgZmVuY2UgZmIN
Cj4gPiDCoC0gSW52YWxpZGF0ZSBvbmx5IHdoZW4gYWRkaW5nIGZlbmNlIGNiIHN1Y2NlZWRzDQo+
ID4gwqAtIENoZWNrIHNjaGVkdWxlIHdvcmsgc3VjY2VzcyByYXRoZXIgdGhhbiB3b3JrIGJlaW5n
IHBlbmRpbmcNCj4gPiDCoC0gSW5pdCBmbHVzaCB3b3JrIHdoZW4gZnJvbnRidWZmZXIgc3RydWN0
IGlzIGluaXRpYWxpemVkDQo+ID4gdjI6DQo+ID4gwqAtIENsZWFyIGZiYyBhbmQgcHNyIGJ1c3kg
Yml0cyBvbiBmbGlwDQo+ID4gwqAtIENoZWNrIGlmIGZsdXNoIHdvcmsgaXMgYWxyZWFkeSBwZW5k
aW5nDQo+ID4gwqAtIFVzZSBkbWFfcmVzdl9nZXRfc2luZ2xldG9uDQo+ID4gDQo+ID4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBGb3IgdGhlIHNlcmllczoNCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClRoYW5rIHlvdSBWaWxsZSBhbmQgTHVjYSBmb3Ig
Y2hlY2tpbmcgbXkgcGF0Y2hlcy4gVGhlc2UgYXJlIG5vdyBtZXJnZWQuDQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCg0KPiANCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXIgKDQpOg0KPiA+IMKg
IGRybS9pOTE1L2ZiYzogQ2xlYXIgZnJvbnRidWZmZXIgYnVzeSBiaXRzIG9uIGZsaXANCj4gPiDC
oCBkcm0vaTkxNS9wc3I6IENsZWFyIGZyb250YnVmZmVyIGJ1c3kgYml0cyBvbiBmbGlwDQo+ID4g
wqAgZHJtL2k5MTU6IEFkZCBuZXcgZnJvbnRidWZmZXIgdHJhY2tpbmcgaW50ZXJmYWNlIHRvIHF1
ZXVlIGZsdXNoDQo+ID4gwqAgZHJtL2k5MTU6IEhhbmRsZSBkbWEgZmVuY2VzIGluIGRpcnR5ZmIg
Y2FsbGJhY2sNCj4gPiANCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmIuY8KgwqDCoMKgwqDCoCB8IDYwDQo+ID4gKysrKysrKysrKysrKysrKysrLQ0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuY8KgwqDCoMKgwqAgfMKgIDYgKy0N
Cj4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jwqAgfCAy
OCArKysrKysrKysNCj4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1
ZmZlci5owqAgfMKgIDQgKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmPCoMKgwqDCoMKgIHzCoCA2ICsrDQo+ID4gwqA1IGZpbGVzIGNoYW5nZWQsIDk3IGlu
c2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+
IA0KDQo=
