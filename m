Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8859A713A3D
	for <lists+intel-gfx@lfdr.de>; Sun, 28 May 2023 16:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBA510E09F;
	Sun, 28 May 2023 14:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3FDC10E09F
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 May 2023 14:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685285899; x=1716821899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qNKfkpaDHR0Mj+3BuqmMzIWEzPTX9516WorDxfTeRvc=;
 b=PNwoV6rVaQExT8RfBULvL515+rhfQL71ZEQQ1hUOvlmQkJNvOI2Fawcd
 EoDa0aM/9TcBlD8x6TgJm7ZML9hD1njEp+CESjp6MDvEWkP6OGXQw5Hc0
 SlyFnhnDbSvA9RFOPy5Hqn4LTHwSA/pB3ByqMncwkB+OHXpFMKlqnOh6U
 BIC42/BcK45WtzKs4ucxMX6iHBFUTCUFm+HhImluG4nMVR54ecpWux+Kn
 khVS+0QXaymrPRx5tqt4PteBX5sDtiCjbdq7YNK1l2NRcGxEvarRMcV+P
 2mEcxdEAsvKzxAx9ySD6uW86s2X06+NpJbQ3F01ccJABVRoDyquheuAm1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="353362122"
X-IronPort-AV: E=Sophos;i="6.00,198,1681196400"; d="scan'208";a="353362122"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 07:58:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="738861365"
X-IronPort-AV: E=Sophos;i="6.00,198,1681196400"; d="scan'208";a="738861365"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2023 07:58:18 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 28 May 2023 07:58:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 28 May 2023 07:58:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 28 May 2023 07:58:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oTi1/PQY1G0/aHUb2aQ4m+zt82T1K1UDHoPw34CQODG96jrjNYsnQhxnIw9U+Y5HTjclMggXXs0CHPfj9XbOiClZcnt6dFGt3wfDASU/jcHUuwFcFHpzlKUHiKf3rWLfZCwx4PbMYmVA8+lXb1ZyqbgQmbhs0jTywQlTfbTw6rPQ27HqTdHgvqiPSBGeNR9CTgdVhYcfDLk0dj6+Jzwg5tapVBWOPfOjObf2MmRswMVNQmfCxZwi36TlNDEToblWisz/XPtzQSWBxIZdAdGDKWHXcVRZRQerqD6e9w9oCLAJExA4wfotqjGHWx+0+a+BZvrkxt69l2jf4gqXt8R3xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qNKfkpaDHR0Mj+3BuqmMzIWEzPTX9516WorDxfTeRvc=;
 b=cfBWMaA9YgtFeV/486Rx4Tf5N4kzbzBug7kXMYWQAzzIOtSEp33GeBRABn6VlURkE9GL+gtc1ywLj5xKVQrVxPBugGDcdR3sT7XhNoNejmgbm7C7G84SpApgckoWCSkqsaEy9yctR57sCS033tjARCI18LlUiFERHYnzuggjl/bSF/X2P1fmacw/Tgr+7FnhSttiwaQkGZQQ9g4iW1PbeEgwwxv8ZiAZWC0pbDH1E3yc8h6y7/2/AQTB1u7sx0T7DRsrc4CUFK3esNqKrg8Hr1mmeMVym7xwlEZQz99LPNrKFkv9FpFqQmRxDuuJF7xcp78IH0QR3hi80BHv9MQaEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SA1PR11MB8575.namprd11.prod.outlook.com (2603:10b6:806:3a9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.21; Sun, 28 May
 2023 14:58:15 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%7]) with mapi id 15.20.6433.020; Sun, 28 May 2023
 14:58:15 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 2/3] drm/i915: add a dedicated workqueue
 inside drm_i915_private
Thread-Index: AQHZji77XwkIxcOAzU+3dSti1nwN1a9sbqgAgANenoA=
Date: Sun, 28 May 2023 14:58:15 +0000
Message-ID: <b1ed5adb83b7fa0ea50f7a902356dd673d3e94aa.camel@intel.com>
References: <20230524090521.596399-1-luciano.coelho@intel.com>
 <20230524090521.596399-3-luciano.coelho@intel.com>
 <0a1cf2a3-3402-04dd-b276-4d1ecd0d170b@linux.intel.com>
 <87mt1rib2x.fsf@intel.com>
In-Reply-To: <87mt1rib2x.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SA1PR11MB8575:EE_
x-ms-office365-filtering-correlation-id: b7a7a7fe-c51d-48d2-d677-08db5f8bf704
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xu1EAlkuTZC/aAVCjciEeXYUpD2b8pdPV6HUEze3svt7eQClR7wkFnzVsld3ECnNFVteqqDGXDh3D105HuuMj5qO0xqp5qzKBXX8UAk6SHmH6C2GHSEwuVt3x5iH+3VhpOaUz1ulkKt8/w/s/Y31gdLmh4XE61yeVsES49OeeXwTitChbHhiLq0xEhYDPXR1Q5tXZyQUYKlTB7nmC0sRebeONqmE1SSREccAcBib0Zt41F5OHAsLmRz8jObyoo9aNm3VFPkbsrI7YqmLOPs0ez6wgWEHZbOOG8L36edMLcJTcgeLjTT5WgjtP3ovDIUATVFIBiT02gKhGEKXnT5mjKAoeX+LoA3ChnB/suYhJv+3oaOv03CqO5MHVyinysuAuxCnTay6WHGFsu9od5a4bUMlQ39D5n+Cw0JwdUbBmtq1KIx2VnseMr5eGLgSoi6TWQQM1a0iB/1Uud7SD4Uox9+vxG+YCUH3wRuaLcAgxgd/UJijsiXrXP2sd7XZc7Q0Um3q5EhhbQE+gBg+41lJeIuWMbERkfJp8Swray2SXro9iDMPTDBGU874AWZzcODw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(396003)(366004)(376002)(346002)(451199021)(6486002)(86362001)(41300700001)(38070700005)(966005)(4326008)(71200400001)(316002)(66446008)(66476007)(66556008)(64756008)(36756003)(91956017)(66946007)(76116006)(5660300002)(186003)(478600001)(2906002)(53546011)(6506007)(6512007)(26005)(2616005)(83380400001)(66574015)(122000001)(8676002)(8936002)(82960400001)(110136005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cnNoWkp2Z3NBYU5VQXBwSFM4Ynhqb3hsNVFtSnNQOURGZWo5aXEzYmpDUzJS?=
 =?utf-8?B?eUtvcTdIb3psMzlwL2hJVXhaV3dCUytmM1dOQnVPcmNkT0x5dXk5VlJOVFFj?=
 =?utf-8?B?bWVxWk1PUmxsRE8wOTRiNVphblcxMytqN2k3MFBDZWFRVnZySGl3dTR3WVpi?=
 =?utf-8?B?OWwycUVQWWk4VzRIaXJES0hQTmtZQmlBWHNHVllsLzQ1WVVNZWRMU0NqaWR3?=
 =?utf-8?B?Y21qaURvZWR5M3BCS0ErVm5nUUNUS3N5Y1Vrc1lGQmxsTGdybkkrSHZ4VFBn?=
 =?utf-8?B?THk5WlFuWWMvV1hIdzNRdUFQRzFxemtxaEFqWWd3Qk9aNjMzTjh0ejdjajVH?=
 =?utf-8?B?MGFlMENoakx3MWZwckFldUxWOEQvbWYxbXlMSTcwemlhdktFVDhoZVdMYkFH?=
 =?utf-8?B?Q0kvdUp6Z2g1SmRlb3RUaExxMHJDdC9ra0FCUEVnZVdIdjJZZ2IwazlVV1Jw?=
 =?utf-8?B?T0NmYnZ1eGZvMGFRYndqVjFTcEE3SktQTXlKUWtleGZ6dVpEeEVTK3VxV2ZF?=
 =?utf-8?B?TGEvRnBZMkVRbDBFbGpsNDE3WC9BSElJWlNFd2tiRUdjNFRJNG9vS1lQS0Fk?=
 =?utf-8?B?bjBrV0VmT1BUOVZZZHZFSmp0eGJmaVpSdG5SK1pTajdTTzZwYjhzSTkzTFRw?=
 =?utf-8?B?eVFjZG1XaENKV0pmbDkzVCszeUhCeWtPV242NW1mUzNheXdJYUlqOHBlblNv?=
 =?utf-8?B?RlphaC9OaVY2Y1NZcEpCeVBrTnZGTnhVT0NHbXVZZnBFUk5BOVVGaXNCMTBD?=
 =?utf-8?B?UXpobEFHRFdJMUQ0eEMyem8zWHhBU1k2RzgvUDNzL2x1RWd0amtVUlRYRjBu?=
 =?utf-8?B?dVBUSzQyd0R0TUtlUlNKblRIblk4b2J0bHBJc052cDF1V1FLa0d5REwyenpL?=
 =?utf-8?B?WStlM1V6WWIrbk9McW9vNHlnWE12TXhlZXJYSnhMTVBIRE1xRnhneW4zRlVN?=
 =?utf-8?B?QkQxanVvY29MakprZU03SGF5MjJVR3NtU2txR1JkbWNMMUd1K3lGRHc4dHU4?=
 =?utf-8?B?Wm43a1JtVS80RDZ1WTltRnBnd3UxbWh4Y0taKzRReTBPSjdBVUM4YVk1MTBp?=
 =?utf-8?B?WGR0ZGg4aytlR29YNzNDSFc3NkdoUUdXMXNROFRCOGJnaG03eXVONW9ldk95?=
 =?utf-8?B?cUJFYSt1dU96a3BualdlWVlPYjVsNXUwMWdVWDYzbkhvVVB5T3JOM3hSanJC?=
 =?utf-8?B?dmlraGdZZC9qa21jSnFtL01LQ0xKYnRqQ1NoM2tlaTIyTVRhaVFLUEtzK3pC?=
 =?utf-8?B?Smx3R3MyTG8xdGE4MVBWWG1JY0xvd211Rmpaem92QzBXVENmalhlbmtVY2t4?=
 =?utf-8?B?SGU5Y3VjZHF0REZpelUwTE9CMzQrLy9sRXV0TmE2ZVNTSG94MnkvS2dCZDcx?=
 =?utf-8?B?Y3duUFROTGtKVUduQS9MRUh5d3ZCcWdiUEZ0dzZXNkphZkZPcFVIYUo1MWNj?=
 =?utf-8?B?djdPV2VFbVV5YjhyVFRSdmIxUW1tc1BMd2Z2clYwblY5QjRiazZvUHp1MFho?=
 =?utf-8?B?RHBPZisybXRiUFJSNEx3OWkyOFpTNFl6TlA0SnRiblVmOGNLRVJSTC83S3ph?=
 =?utf-8?B?TzBlV3g2R2FQSkw2OW4reFE5dkpYSUR3anlneFFmQlRCeDNXamZ3MUFLQVlZ?=
 =?utf-8?B?YlJRT0hnVUhHaFhHNWZhNWgrd2lxSUc1WVQ0dkNkMGlNLytuRFZISHpHa3Ro?=
 =?utf-8?B?Wk9rTU1ZTVl0TXJod1lxYXNJK09mSEo3NTZpdkU0UWNDQnRvcXVDOVNmNUZo?=
 =?utf-8?B?SC96NUNjUHRMM3JTZVp1QkF6elNUc0hyN1lnUmxGYlFRWVBuL0hLMVFJd3Z2?=
 =?utf-8?B?YlcyaXZEUXcxVU5sRkxNZnN6TWt5cXJMcjRKMVlZN0VtSDJMNkszVzZJVzZW?=
 =?utf-8?B?WnNpOUFoRDZuR1Bma0FaRkJhTGs3UzEzNTY0R1dQUXpTMlV3RUI4T3REVDNU?=
 =?utf-8?B?dkJ2U2RVZ2RjTy9xSHMrY3BrOU5wb2wyZFBKdnl6WmljajFmZEdBd1hISTBL?=
 =?utf-8?B?ZFd6Z1dJdTdUYmhHY0hSeGNnWFVuZlhZWWc4YU9nZEc2R2hEYWI0TjMxNHg1?=
 =?utf-8?B?T0w1ZjVjZVFRK0pGdVhVaGlGdFZ2WTJTRzJadkRiK2hhbHcvQyt1K21kR2RT?=
 =?utf-8?B?Nnp2WncrNjIxb0h3eW1GdzArVEtOWC8yQnJkNkszUWtGS3EyempZa3V3UkNC?=
 =?utf-8?B?cWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D16AA898D5FFAD4AA4317EC59D417F83@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7a7a7fe-c51d-48d2-d677-08db5f8bf704
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2023 14:58:15.2294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5fsRmRxVKGd1mZiFBkKrI4IcUsu0ZNDCA6N6vdIDkp6ppRK9JPqWL4qej9cXojeQONzI0AlGT60EfbdAIUOtvQdHqr/ijL0HqjOAWUEUqRk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: add a dedicated workqueue
 inside drm_i915_private
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTA1LTI2IGF0IDE0OjMwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAyNCBNYXkgMjAyMywgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6DQo+ID4gT24gMjQvMDUvMjAyMyAxMDowNSwgTHVjYSBDb2VsaG8g
d3JvdGU6DQo+ID4gPiBJbiBvcmRlciB0byBhdm9pZCBmbHVzaF9zY2hlZHVsZWRfd29yaygpIHVz
YWdlLCBhZGQgYSBkZWRpY2F0ZWQNCj4gPiA+IHdvcmtxdWV1ZSBpbiB0aGUgZHJtX2k5MTVfcHJp
dmF0ZSBzdHJ1Y3R1cmUuICBJbiB0aGlzIHdheSwgd2UgZG9uJ3QNCj4gPiA+IG5lZWQgdG8gdXNl
IHRoZSBzeXN0ZW0gcXVldWUgYW55bW9yZS4NCj4gPiA+IA0KPiA+ID4gVGhpcyBjaGFuZ2UgaXMg
bW9zdGx5IG1lY2hhbmljYWwgYW5kIGJhc2VkIG9uIFRldHN1bydzIG9yaWdpbmFsDQo+ID4gPiBw
YXRjaFsxXS4NCj4gPiA+IA0KPiA+ID4gTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy8xMTQ2MDgvIFsxXQ0KPiA+ID4gQ2M6IFRldHN1byBIYW5kYSA8cGVuZ3Vp
bi1rZXJuZWxASS1sb3ZlLlNBS1VSQS5uZS5qcD4NCj4gPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPg0KPiA+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+ID4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNp
YW5vLmNvZWxob0BpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDUgKystLQ0KPiA+ID4gICAuLi4vZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RyaXZlci5jICAgfCAgMiArLQ0KPiA+ID4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jICAgICAgfCAgMiArLQ0KPiA+
ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgMiAr
LQ0KPiA+ID4gICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMg
fCAgMyArKy0NCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcnJz
LmMgICAgIHwgIDQgKysrLQ0KPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2ZiYy5jICAgICAgfCAgMiArLQ0KPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiZGV2LmMgICAgfCAgMyArKy0NCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgICAgIHwgMjMgKysrKysrKysrKystLS0tLS0tLQ0KPiA+
ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBsdWcuYyAgfCAxOCAr
KysrKysrKysrLS0tLS0NCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9vcHJlZ2lvbi5jIHwgIDMgKystDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHBzLmMgICAgICB8ICA0ICsrKy0NCj4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgIDggKysrKy0tLQ0KPiA+ID4gICAuLi4vZHJt
L2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uYyAgfCAgNSArKy0tDQo+ID4gPiAg
IC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfYnVmZmVyX3Bvb2wuYyAgICB8IDEwICsrKyst
LS0tDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2lycS5jICAgICAg
ICB8ICAyICstDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVl
c3RzLmMgICB8IDEwICsrKystLS0tDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmMgICAgICAgICB8ICAyICstDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jwcy5jICAgICAgICAgICB8IDIwICsrKysrKysrLS0tLS0tLS0NCj4gPiA+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2NzLmMgIHwgIDIgKy0NCj4g
PiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyAgICAgICAgICAgIHwgMTEg
KysrKysrKysrDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAg
ICAgICAgICB8ICA5ICsrKysrKystDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jICAgICAgICAgICB8ICAyICstDQo+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3dha2VyZWYuYyAgICAgICAgICB8ICAyICstDQo+ID4gPiAgIDI0IGZpbGVzIGNoYW5n
ZWQsIDk5IGluc2VydGlvbnMoKyksIDU1IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IEknbGwgdGFr
ZSBhIGxvb2sgYXQgdGhlIGd0LyBwYXJ0cyBvbmx5IHNpbmNlIGRpc3BsYXkgZXhwZXJ0cyBuZWVk
IHRvIA0KPiA+IG9rYXkgdGhlIHBvaW50IERhbmllbCByYWlzZSBhbnl3YXkuDQo+IA0KPiBUaGVy
ZSdzIGEgYnVuY2ggb2YgbG9ja2RlcCBmYWlsdXJlcyBpbiBCQVQuIEFyZSB0aGV5IHBvc3NpYmxl
IHJlbGF0ZWQgdG8NCj4gc3dpdGNoaW5nIHRvIHVub3JkZXJlZCB3cT8NCg0KSSBoYXZlIG5vdCBj
aGVja2VkIHRob3NlIHJlc3VsdHMgeWV0LCBiZWNhdXNlIEknbGwgc2VuZCBhIG5ldyB2ZXJzaW9u
DQpzb29uIGFueXdheS4gIEkgdGVzdGVkIHRoaXMgYmVmb3JlLCBidXQgd2l0aCB0aGUgZGVkaWNh
dGVkIHdha2VyZWYNCndvcmtxdWV1ZXMsIGFuZCBpdCBhbGwgcGFzc2VkIGNsZWFubHkuICBTbyBp
dCBfbWF5XyBiZSByZWxhdGVkIHRvIHRoYXQNCmNoYW5nZS4gIEknbGwgY2hlY2sgaXQuDQoNCi0t
DQpDaGVlcnMsDQpMdWNhLg0K
