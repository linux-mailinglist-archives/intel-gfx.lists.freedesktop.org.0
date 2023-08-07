Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344A57719CC
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Aug 2023 07:56:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 510D510E1CB;
	Mon,  7 Aug 2023 05:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB57210E1C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Aug 2023 05:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691387793; x=1722923793;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zxNZ0Feq2icADUHqygmjcoVekcuiXVQCFXXFwy583CQ=;
 b=SRfq67ha8mxupLnzNw6GQni3abo5gOVgoT1KRKyeDTejo/yRBdWq8V/n
 9LegehJQ/7HCSwU2n+EoAqv1PqOP92lclcyBCNnJIhLUrTI4bvkFSo2SF
 QRsBxKxcT9xBd4EjFJKzSFXw0cFHd5M4mPR8mNT6CmcAx5nhg8txcyBlR
 vYhlg+GiEP4PVJShUVVv8xC1uLbgUkZ5QEVtBSbT8Na0y/ZL+I4B4Wo1f
 09hVDqHcqpbrp2qQxG6lQU0VoxQt3VbDPLKG3+Z02G5KGX9hQDL0RZjn1
 OThlxT0l/++ea8dRSV9eFOOc/FD8NBMVspzZ8GriCOkeCqBCud+D7hxXh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="401430718"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="401430718"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2023 22:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10794"; a="730825066"
X-IronPort-AV: E=Sophos;i="6.01,261,1684825200"; d="scan'208";a="730825066"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 06 Aug 2023 22:56:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 6 Aug 2023 22:56:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 6 Aug 2023 22:56:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 6 Aug 2023 22:56:30 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 6 Aug 2023 22:56:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kfC/MlPMiiDMlEQN+RSK9fNqkoQMh+MnX8gAW7Bqpl1xFxQFhFybP3Ot9u+EqfRyGokpC0gKdpl1uxkhVClP836emPqCPxoddUWcepz8vaHliUniWfsDIJM6OqKoHgGU/DpDPWFkvSqeVEHOhOq2HOSHot/V+wv3RaE/1cqBfGOyf47DX0zazInKzfkNTswWw/ur+h07ADcnLhrc5gA0SdrmzJw4JLtmJEa0C8HQI0ujZqmy0/d3BYuBCgiYiq2lPyjmUuXSqsBlT5BddM56SA8e4N8xPQZ+pFiTYaGqmQpYzLn2aEKqsEpdmLHHkmoS0SCUPPEHNDzDO7AB3oTYzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zxNZ0Feq2icADUHqygmjcoVekcuiXVQCFXXFwy583CQ=;
 b=BbHKjBRzpOj1bbQ11vsSuaKaV7Yod1NLR3inYcaoLYxA4tce0SqsykS1vkVFKlRBtEHDL/m2zhq+wAmiGInA+zJvqMlF1BgvcCfBtNbrXi/n9KOwfT+aOkTP9X2wsShHyyp/nUaBYeUvx9GMas8sN+q/O9Ax/rsNEtzIpcfpZ3PjRIPWm9m0nSrqWRuKZiJMDyG0Zo1tCUdCBbd5qP8pwTGC+WiVxTdtYJ0YH4Z+caAl+4uUdZ5YRwKgBbJH88ZiT09tFY3vqztleVzZ5tQh3nXwFhDlZWzHZcvVVlZi3xceWrDifK2dIyWiHs1+ZD0p3EezebtXRCo99uViWIt35g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB8133.namprd11.prod.outlook.com (2603:10b6:8:15b::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6652.26; Mon, 7 Aug 2023 05:56:26 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6e2:18ec:9c09:e22e%5]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 05:56:26 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "nirmoy.das@linux.intel.com" <nirmoy.das@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "B,
 Jeevan" <jeevan.b@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 3/3] drm/i915/fbc: Moved fence related
 code away from intel_fbc
Thread-Index: AQHZnn+pGfZuGfUBKkSQRzLFY9SkWK/VWpUAgAlQNwA=
Date: Mon, 7 Aug 2023 05:56:25 +0000
Message-ID: <6eaddaa5a978efcade046f74187c9a37f7203cab.camel@intel.com>
References: <20230614051731.745821-1-jouni.hogander@intel.com>
 <20230614051731.745821-4-jouni.hogander@intel.com>
 <f0283070-0504-7bb8-96d1-b50b4d0fa279@linux.intel.com>
In-Reply-To: <f0283070-0504-7bb8-96d1-b50b4d0fa279@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB8133:EE_
x-ms-office365-filtering-correlation-id: a4ba3b5c-c1c1-4251-1b6b-08db970b0946
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vxNeg+/JxVZLo2dLQrT2kmN52K8rj4NQBqpBRIME80KcT7gub3KXa4vnK0Pp4/B5QOU23CIZTjLC1/CPjgeD1/pCZ94yo68k66Jh5Dn/v3t28NTVBFWCn7ji8tE39E03HFM+sT9OrDK6z+FxyKBFSlNsQjoEkY5ZLq3+6cNBCdOzuzCfLCnMITK+pQefBh+oRWt/7fsLJQp2gYa5Or8vrTgdZYvv/c72KRS4a/pRyIx2ehzMmEPcuQJuxkdzx4XZz1Nxk476GEuOLsh+ngOP49Hw45oSSIrKi3ytOPywQMxpHhHucUjDZmuEylQRxUpqOUH2mojEdFzknzy2MDSPE/eikFkA06neofR/y6zlARhX/cBeU83gMCmk0W9H/gqeODmFszKSwK1vJ3i+gU6CUXSY+eg2AQldKBbmD68w5UOcfmY9HNPYfPWN9abQV70vXldniviUNDUJxPvM7X7Sb1e5D8ekBFl8OzauFFsJrI3wWkJN1vfnXvqF+3fviNy7+tfrOEqdw7IbI/qQaEqYqcsQotzqgpNTJgDPL8GFv0VoIhQlrGF6Ce+2CNLxgICS0THycY0x/7Afrqk3/5CyHpBzri5F8ePx7wODHePvwDowGx4Enfg1Ru7v+rhKcMfL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(376002)(136003)(366004)(39860400002)(451199021)(1800799003)(186006)(2616005)(6486002)(71200400001)(6512007)(478600001)(86362001)(122000001)(82960400001)(26005)(6506007)(36756003)(53546011)(41300700001)(316002)(5660300002)(8936002)(8676002)(38070700005)(110136005)(6636002)(2906002)(38100700002)(66946007)(64756008)(91956017)(66446008)(66476007)(66556008)(76116006)(83380400001)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R1FNT0hUTVRGSjhxRzVuSnplRDZIelp4TG9KQkhHdXlWM1plMXgyZU56dmM5?=
 =?utf-8?B?M3l3LzFDRFB3MTArazZsN1J2V2x4NFlrUk9IQlp2d2cyRkdJZldQeGY3OWdE?=
 =?utf-8?B?Z3dNVmtMUFNITjlYeEpMMHU0bTRIRGpyQkRqSGRhSnIwWGRCbUIxYUVhekND?=
 =?utf-8?B?dUcwVUlnZklhNS94SUNiVG9UWWhUQXhLb3RtVHFWVll0RWU2elpBaUl5OTVi?=
 =?utf-8?B?OXI5bFBpRGV5VlhWZndiVmlVazRDNSt6bXp2YU1zbmRtSHFNekQ0WTNraWUv?=
 =?utf-8?B?TjdDWlJvazlsOUd2RlVSaWl4V1g2alFhUWVwK2JMcUhHSkxWL0Z0ZllYSnV4?=
 =?utf-8?B?QkhTRnd5R1dzNXYyeDhnQ1pqbllFQXFFR3M1ODl4REVraDhKVEVmL1BKUXJM?=
 =?utf-8?B?VzhGbWVWV1h6TmlYL3RNeUlKNjJYQmYzeTAzSGQrTmZmdXRlbnZRZ3BQOTJI?=
 =?utf-8?B?Zm83aFRHQU9ualVXRHJyS3YxT0RTWTJkZDVoMUFVUUNoU2l5UnFGUTU5TTdj?=
 =?utf-8?B?eVNVR3E2bS93eC9ycjYzWkRVRnNwVlkzcGZJdUw4cE9jaWF4cDlCU3hoRzZL?=
 =?utf-8?B?azdHWmZob1h3VUVyREpVaVFvcXZGcldYQjNwaVlnUHNYellkUCtrU1FPdVNa?=
 =?utf-8?B?bXhaYld2TFFtbmxVZGJQK3JteHFsOVM4UnJJbTBDeDViUXgrUm01ZHFLWlVk?=
 =?utf-8?B?RndxbXZlcVoyTDNySmluNTRkeDlvTlN2a3FmRytEcmd4cFFKMWhOcjlqNUZ5?=
 =?utf-8?B?RUU3Qit0S1hSYlJ6M1N4QjlySWp5UjFQMkF2aFBZdHBDekZiWktYTVBTRjFY?=
 =?utf-8?B?M2xHODZ3MGJuVUZlOGVSSXpLczNpbVRvNWJwang0Mm5ac1ZlL0FBa0NKazl5?=
 =?utf-8?B?eDJod3FXbVd5QVlnajgwaUxQNkFCd3FOU1lHTWRiQzRtOG9jSGhUM1kvYThD?=
 =?utf-8?B?c3A3dkhvRnU2eEtlWERnYTZRNE9lZ2t0cUN6SjYrRWE3OWVSOFZWdSswcG5p?=
 =?utf-8?B?N3IxK256akgwMFF1QkVBQkFPT3p0WU5CQlprSzBYOUdhczZDS2hMdy8xdEda?=
 =?utf-8?B?dW84aW1SK2d1VHRoQWx2QlpzZ3NoVkdUVFhnRy8rRWd4WForVnF3WWo4SzE5?=
 =?utf-8?B?OHlUcGk4ajcxcmtzcWEyY1FFSjNia2V0WS9pNEc3bGNzVHNrbGxzeGo1Z1NX?=
 =?utf-8?B?Uk93dktISlRZSjhOU1NpSW5mczdMRjhkeDlCRFlJVWMwK1RMZ3F3VDVMamZz?=
 =?utf-8?B?bGYrNUlSVnR5MmhWK29EdjU0Mlk4bCtUclNzVnFaV3pTS2IzN3JQVVVHclVR?=
 =?utf-8?B?dmczbWxLbDNJUnVsZk5FQllBbS80WWpTMDk5bWRpUm5CZjYxd2l4dDAxRVVF?=
 =?utf-8?B?MGFCUXQySWdDWUNoTDVoNlFqalBqQ0x2NXBhck9rUlFNM1JWQi9vbXRndGM3?=
 =?utf-8?B?b0NCNkZyY3Y1cXRwaFpMTmxEcUwwUTEwODI4VjJJQVV3VWZtQzhBSzNhM1Ir?=
 =?utf-8?B?T2ZHbTFhc3VGRVJKNHJWbVMyekJ2MG5heTZ2QTZxMExQaGJTMFh1dUdnSFMx?=
 =?utf-8?B?ZFJrNWpkWHIvZE5QREw5a0tFRUo0OXN1QjRiaDFtZ3RNZUN6dU1hWmMwYzlW?=
 =?utf-8?B?WldFRTBOdFZNcWRFRkR5cE91aGRabFFsWWQ1Nld0MGhNRHNleE5WQzRRTFhl?=
 =?utf-8?B?aGdqMG5GVGxsZW92eW9GQnhxOHp1REFaeS9jMjlSYm0rc3I0R0h1N3B6MVR5?=
 =?utf-8?B?T3FoVzNzWnlTTVg5NmlYNFRuS1ExKzRScW44ekhCM1F3bC9FUWp4YXg1Tzhw?=
 =?utf-8?B?eXovS2tMWmdPU0tFZE5lRGpteW10cDU4dlRNc01iT2VJZlBaTXNJblVzMU45?=
 =?utf-8?B?Ym04VTR6US92VEVyTmxXcENwbityVjloNGowMEUvN3AvWkdmMTJ5Q1Q5a2pn?=
 =?utf-8?B?K2tEcEFiSHR6RUVWRVFkanVwQVJ3b3hueUdObWVvVkxxZHJ6dzBrMDZraG9H?=
 =?utf-8?B?TXRYZTNsTENJSThzaFN6OWYva3NsRUl3a3ArWkwwYUZiaDRGUzQ4c2hWa1VW?=
 =?utf-8?B?dDEzUzlRcGtOcXFwaWU1T3BkYjdEdlZaNnVjYlpzYk9BZkQvWUFBWWhkdGVT?=
 =?utf-8?B?OExlUU90bFhwdk1nM0VpNmUxd1lJaFVUVzZSampDZnU4WGl6SGFhUkdKK2N0?=
 =?utf-8?B?UkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A5F59FBC11E5524DB8A5A71CAFC86666@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ba3b5c-c1c1-4251-1b6b-08db970b0946
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2023 05:56:25.8805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xbZa87wLnd42+LziwvDDD0lGGHqI3B4VajBZy9yhbtWOAId2p9vdiYhMvN9EUkEOVIOCA9zYJJxlqW/yc7sz+AMH8uzeAelheV9Meyujpqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8133
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/fbc: Moved fence related
 code away from intel_fbc
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

T24gVHVlLCAyMDIzLTA4LTAxIGF0IDA5OjQyICswMjAwLCBOaXJtb3kgRGFzIHdyb3RlOg0KPiAN
Cj4gT24gNi8xNC8yMDIzIDc6MTcgQU0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4gPiBBcyBh
IHByZXBhcmF0aW9uIGZvciBYZSBtb3ZlIEhXIGZlbmNlIGRldGFpbHMgYXdheSBmcm9tIGludGVs
X2ZiYw0KPiA+IGNvZGUuDQo+ID4gQWRkIG5ldyBmdW5jdGlvbnMgdG8gY2hlY2sgc3VwcG9ydCBm
b3IgbGVnYWN5IGZlbmNpbmcgYW5kIGZlbmNlIGlkDQo+ID4gYW5kIHVzZQ0KPiA+IHRoZXNlIGlu
IGZiYyBjb2RlLiBYZSBkb2Vzbid0IHN1cHBvcnQgbGVnYWN5IGZlbmNpbmcuDQo+ID4gDQo+ID4g
djI6IEZpeCBpbnRlbF9ndF9zdXBwb3J0X2xlZ2FjeV9mZW5jaW5nIG1hY3JvDQo+ID4gDQo+ID4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
YyB8IDEyICsrKysrKy0tLS0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X3R5cGVzLmggfMKgIDIgKysNCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5owqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA1ICsrKysrDQo+ID4gwqAgMyBmaWxlcyBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggZGE4MTY2ZWVkZjkz
Li4yNTM4MjAyMmNkMjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gPiBAQCAtNDcsNiArNDcsNyBAQA0KPiA+IMKgICNpbmNsdWRlICJpOTE1
X3JlZy5oIg0KPiA+IMKgICNpbmNsdWRlICJpOTE1X3V0aWxzLmgiDQo+ID4gwqAgI2luY2x1ZGUg
Imk5MTVfdmdwdS5oIg0KPiA+ICsjaW5jbHVkZSAiaTkxNV92bWEuaCINCj4gPiDCoCAjaW5jbHVk
ZSAiaW50ZWxfY2RjbGsuaCINCj4gPiDCoCAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gPiDCoCAj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheV90cmFjZS5oIg0KPiA+IEBAIC02MDcsNyArNjA4LDcgQEAg
c3RhdGljIHZvaWQgaXZiX2ZiY19hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZmJjDQo+ID4gKmZiYykN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZWxzZSBpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gOSkNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNrbF9mYmNfcHJvZ3JhbV9jZmJfc3Ry
aWRlKGZiYyk7DQo+ID4gwqAgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHRvX2d0KGk5MTUpLT5n
Z3R0LT5udW1fZmVuY2VzKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9ndF9zdXBwb3J0
X2xlZ2FjeV9mZW5jaW5nKHRvX2d0KGk5MTUpKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHNuYl9mYmNfcHJvZ3JhbV9mZW5jZShmYmMpOw0KPiA+IMKgIA0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZShpOTE1LCBJTEtfRFBGQ19DT05UUk9MKGZiYy0+aWQp
LA0KPiA+IEBAIC05OTEsMTEgKzk5MiwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfdXBkYXRl
X3N0YXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoGZiY19zdGF0ZS0+ZmVuY2VfeV9vZmZzZXQgPQ0KPiA+IGludGVsX3BsYW5lX2Zl
bmNlX3lfb2Zmc2V0KHBsYW5lX3N0YXRlKTsNCj4gPiDCoCANCj4gPiDCoMKgwqDCoMKgwqDCoMKg
ZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgcGxhbmVfc3RhdGUtPmZsYWdzICYNCj4gPiBQTEFORV9I
QVNfRkVOQ0UgJiYNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFw
bGFuZV9zdGF0ZS0+Z2d0dF92bWEtPmZlbmNlKTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICFpbnRlbF9ndF9zdXBwb3J0X2xlZ2FjeV9mZW5jaW5nKHRvX2d0KGk5
MTUpKSk7DQo+ID4gwqAgDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHBsYW5lX3N0YXRlLT5mbGFn
cyAmIFBMQU5FX0hBU19GRU5DRSAmJg0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCBwbGFuZV9z
dGF0ZS0+Z2d0dF92bWEtPmZlbmNlKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBmYmNfc3RhdGUtPmZlbmNlX2lkID0gcGxhbmVfc3RhdGUtPmdndHRfdm1hLT5mZW5jZS0NCj4g
PiA+aWQ7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHBsYW5lX3N0YXRlLT5mbGFncyAmIFBMQU5F
X0hBU19GRU5DRSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZmJjX3N0YXRl
LT5mZW5jZV9pZCA9wqANCj4gPiBpOTE1X3ZtYV9mZW5jZV9pZChwbGFuZV9zdGF0ZS0+Z2d0dF92
bWEpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBmYmNfc3RhdGUtPmZlbmNlX2lkID0gLTE7DQo+ID4gwqAgDQo+ID4gQEAgLTEw
MjIsNyArMTAyMiw3IEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19pc19mZW5jZV9vayhjb25zdA0K
PiA+IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUpDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoCAqLw0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gRElTUExBWV9WRVIoaTkxNSkg
Pj0gOSB8fA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKHBsYW5lX3N0YXRl
LT5mbGFncyAmIFBMQU5FX0hBU19GRU5DRSAmJg0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcGxhbmVfc3RhdGUtPmdndHRfdm1hLT5mZW5jZSk7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1X3ZtYV9mZW5jZV9pZChwbGFuZV9zdGF0ZS0+Z2d0dF92
bWEpICE9IC0xKTsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+ID4gwqAgc3RhdGljIGJvb2wgaW50ZWxf
ZmJjX2lzX2NmYl9vayhjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gPiAqcGxhbmVf
c3RhdGUpDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0
X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgN
Cj4gPiBpbmRleCBmMDhjMjU1NmFhMjUuLjEyMWE1M2Y5MDhkMSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaA0KPiA+IEBAIC0zMDYsNCArMzA2LDYg
QEAgZW51bSBpbnRlbF9ndF9zY3JhdGNoX2ZpZWxkIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgSU5U
RUxfR1RfU0NSQVRDSF9GSUVMRF9DT0hFUkVOVEwzX1dBID0gMjU2LA0KPiA+IMKgIH07DQo+ID4g
wqAgDQo+ID4gKyNkZWZpbmUgaW50ZWxfZ3Rfc3VwcG9ydF9sZWdhY3lfZmVuY2luZyhndCkgKGd0
LT5nZ3R0LT5udW1fZmVuY2VzDQo+ID4gPiAwKQ0KPiANCj4gV2l0aCB0aGUgY2hlY2twYXRoIHdh
cm5pbmcgZml4ZWQgaGVyZSwgdGhpcyBpcw0KPiANCj4gUmV2aWV3ZWQtYnk6IE5pcm1veSBEYXMg
PG5pcm1veS5kYXNAaW50ZWwuY29tPg0KDQpUaGFuayBOaXJtb3kgYW5kIEplZXZhbiBmb3IgeW91
ciByZXZpZXdzLiBXaG9sZSBzZXQgbm93IG1lcmdlZC4gQWxzbw0Kd2FybmluZyBtZW50aW9uZWQg
YWJvdmUgZml4ZWQgYmVmb3JlIG1lcmdpbmcuDQoNCkJSLg0KDQpKb3VuaSBIw7ZnYW5kZXINCg0K
PiANCj4gPiArDQo+ID4gwqAgI2VuZGlmIC8qIF9fSU5URUxfR1RfVFlQRVNfSF9fICovDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmgNCj4gPiBpbmRleCA5YTk3MjkyMDVkNWIuLjZmZGY2
MjA1YzI5MCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5o
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaA0KPiA+IEBAIC00MTgs
NiArNDE4LDExIEBAIGk5MTVfdm1hX3VucGluX2ZlbmNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQ0K
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgX19pOTE1X3ZtYV91bnBpbl9mZW5j
ZSh2bWEpOw0KPiA+IMKgIH0NCj4gPiDCoCANCj4gPiArc3RhdGljIGlubGluZSBpbnQgaTkxNV92
bWFfZmVuY2VfaWQoY29uc3Qgc3RydWN0IGk5MTVfdm1hICp2bWEpDQo+ID4gK3sNCj4gPiArwqDC
oMKgwqDCoMKgwqByZXR1cm4gdm1hLT5mZW5jZSA/IHZtYS0+ZmVuY2UtPmlkIDogLTE7DQo+ID4g
K30NCj4gPiArDQo+ID4gwqAgdm9pZCBpOTE1X3ZtYV9wYXJrZWQoc3RydWN0IGludGVsX2d0ICpn
dCk7DQo+ID4gwqAgDQo+ID4gwqAgc3RhdGljIGlubGluZSBib29sIGk5MTVfdm1hX2lzX3NjYW5v
dXQoY29uc3Qgc3RydWN0IGk5MTVfdm1hDQo+ID4gKnZtYSkNCg0K
