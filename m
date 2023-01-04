Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9149265CF13
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 10:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D562810E4FF;
	Wed,  4 Jan 2023 09:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA62F10E4FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 09:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672823326; x=1704359326;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dO8TZTJ3mQq6E5caLS3k3gZGwW6IbBmGn4k3qQPj8mc=;
 b=WglREgjUvXBz21tFps+o/i3mQb90rZ8ngRwUmfi/QUBkbKDpAGTcSMQ0
 s8uQZlTwGaY2f2CXBM65wm6C65voKu3SPO0ebCa+IRkcZg0N6GoaOaQMQ
 HSzNCzzJfhxObDWq4fsQLJYKf9Q/tEhBAYvk46GaBv9iNerm0mAPJGsJ4
 t1MuaO8W5ZKTu5qWmtLznV1O8ij0E20CcmqB8rJb5Kh3Bj+s3Na/eCQA3
 dYi0DIcHijaAFshqZb05mv5gQ031dB7sj6C8PN/D6BFbxNV26E0Z3xp7P
 YE2wZcIiY8eXGVpEjkwBvF4/dwcvMuBhNPnRq5+x086hz+zfN06zxmOyT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="323125342"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="323125342"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:08:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="605130917"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="605130917"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2023 01:08:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 01:08:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 01:08:44 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 01:08:44 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 01:08:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gj72AktA2RhFpwrvP3bPDFGxrYpCsL7gLZlTXzxTvkLN75wFIfp3nNu4l5CKFjoK0OJmWvDY5Qm9GUh95v0bYGu4aScB0Sxf1JPoWFZWqc4ekt6je6hlE9zyG6rkLcOg7vgeJWp5/yhWoOFpdWHGphnusNOjNhrr6DASAhSfMj/zSenAdTw97orET6xwqIOQlY+p6jEjD9mMRRczbu8nMt/4ljqvOU1wxJHk7YP6wMrbAivp7Ac7eivBTrREh8jTdrGB5fEL4yb5GSzB481SfmyUiTFdgx/qiWOG6csqtegum9BkvTQAKtLmCFUdhaFxyVV7WKXCiB2ZVZglViDZKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dO8TZTJ3mQq6E5caLS3k3gZGwW6IbBmGn4k3qQPj8mc=;
 b=nQnIwxEtAAOCUlUlcE7r8RjceCYFjPMm+WkcIZZsNFvXpfaR1mb2/6t8XhyR19weh3mj9SR/HW+erlNc/DDKHO1Q0Dy0BkO29WrgKmatID3rgrv/SD1nG80BJsln5poiDG+iBZhyEUwxsi299jPvrca5ZeO6wdmkvxRcx+zMMb5z05oo3CHJJaLktSgXEjZ3QHIvxcOi9MN+ZE5o5EGEi/16AiXExcojm2782xzDfmkM65eWG6GeelMrbok6w5PGEbJEIY9MBlY8iEBWvwc4pMoTJSsHORbNOV+slMb/sqP8RSjqOiiljSvrXAfuAC0jmR9Fo2xb02zSGC9hSDiEpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA2PR11MB5049.namprd11.prod.outlook.com (2603:10b6:806:11b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 09:08:40 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 09:08:40 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/13] drm/i915/dsb: Align DSB register
 writes to 8 bytes
Thread-Index: AQHZEObKcCTwD4a3i0+szfc8bmwUvK6OFioA
Date: Wed, 4 Jan 2023 09:08:40 +0000
Message-ID: <PH7PR11MB59816B4036EB820FF49D3B11F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA2PR11MB5049:EE_
x-ms-office365-filtering-correlation-id: e0a50986-76a4-484f-6343-08daee3345c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qFOtc7eulthYcu3m8vXs8UX3YRohocyh6JFG2EhRvBFui1Sn6xGd4glWIIVVZ57kn7m5fLsNGBXD1u0GibYdxeFEaQ2XTcAeYE82XKACXys4JVPC2GYzQFC6D6a4PQpKxeDhfdFY0bueTfW6k87UaceoTAOdtbQkIaoBrgMOdWwvy19GBGLgD9cXxfO3M+VbHAEn0ATkimRoU2QCT4fgmQtUUaWOAK9sVLGN0Wgn7xNbfD9wqFTaz8YjYgGZbfFGfWRhgyX+L/8QICg4FdwbQq3a4T4sNnlLkvf9+6ZmUnl3QfGahKbAayVPgA3pZVFisazuzxyACs2Wm8xOiEaH6jgktNszf7r9d/AC0worFStruPfvJL1AN3hLPzwdhM2BjKejAyMJWgO7Dk1it8s1bzCICVp2hNQjQqVOYUrHZm8b4iPB7ihCrRaHWW+/sRy1SzKI18xmTEDI3JCooFTWfN0PU3GVhYNyElqCeGRMjsmgCrqWfPL1AUUaU4LM0DipxxBQ922HZBvht+tykUJUAwJwFLbAqoibuirEmZcSW3SvWOfdHVzm1L/64UoKV6czOgBGRi9c2bxtiIUP83qQwW9lFKOSFXbTETtuhCInCS7xUdEwIZqfB1DPxrYujYkM5MZe6W7J7SJfNlw5yEOkOW7srqUfbb3euJTSD9Tmd94so5qkY6iQt36YvrgibHZibWMXyoep0mnrfxn1GHSQig==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(136003)(376002)(39860400002)(366004)(451199015)(186003)(26005)(9686003)(55016003)(8936002)(52536014)(83380400001)(7696005)(71200400001)(33656002)(53546011)(478600001)(6506007)(55236004)(316002)(66476007)(76116006)(66946007)(8676002)(66556008)(64756008)(66446008)(38070700005)(41300700001)(122000001)(5660300002)(2906002)(110136005)(38100700002)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YVZINUNuaThLVG9DemNocmhzdEhmdGxkR0NsUHZWcUx1WGh4TDlHcmM2TlFC?=
 =?utf-8?B?SU81TmplYisxcVcrOHYyc29WaE9hcUIxUENzQ2VIVXRUT2Q2U1IyN1hHWEpy?=
 =?utf-8?B?bjNCRDFqU29MZEJ3Ym1VSjIydVNNMnlwQ3Naa2hlSjIyMHpVbHE0YjNkUjly?=
 =?utf-8?B?a2xOdUFXcmljV1AvdjJMMFFrV2p0aWJEb3FBL2pQTUMxNG04ZHloT0lNcjlx?=
 =?utf-8?B?L3N0NzZZd3l3RXIvUDNrbG9aT2U0SURweWVCNDFEQ1dnTzZnbXlwcEQxUDlY?=
 =?utf-8?B?NUtieGtjVkVPOE5BV3czVEJpUzhUMWR1c3ArNWY1bUZxSmRSb1g1cm1qR2Q5?=
 =?utf-8?B?L3d6bG50NmUralBnT2kvck13OWVDb052V09GOGlDUFRFeERybDZLTDcxcU5r?=
 =?utf-8?B?MGVFRU1sWDVpNTNhRDJ0aEM4RFJnUmxQK3c3cDFLaTRaRkx3bHlUQ2dmejRv?=
 =?utf-8?B?QlRXUmlRb0tpclBnRzEvV2FvRW9zZEFiMk1yeDFZakFRK0FXVnBTb2xCYkxo?=
 =?utf-8?B?c01YU1dXK1hSNmxhVEkxRGw1QVZDdHBYaktnbWxZY0hEMnNSNzRzd29IdS80?=
 =?utf-8?B?N0IvL3NKRlpqMWZDbFR1TllnZmxwZzZnWWY1dFFFUzZTTitVRHgrcGpnZlJR?=
 =?utf-8?B?UWtobEFlZ0VkL0h2TU8zRFIydStjZkhlNkdPZjF2b2tDa3JJZmx5U3RXNTY5?=
 =?utf-8?B?Vnl0OFJUZnUwOEpXWFRJdTBVZFZ2bFg5SnpWWC9GL1pJUzdnQ0ZtcmRScjdX?=
 =?utf-8?B?REwwYzdFS2c3eHExM3NFa21MbEp2TllrQmN6aTJEUno1V2RRZ1lJQ0JSTkNI?=
 =?utf-8?B?UkhKc0o5VGU0REl5QVNUa1prSWNUUzVoUlhvSktCRTBxQ2wyZkErWm5Uc0dY?=
 =?utf-8?B?cVFvOTRzbnVCRmdnSUgvR3JDMEVSVFQybG9ZVXRndlVGcUppbUVUNWoyb2VB?=
 =?utf-8?B?RkFoUnB4aUpTVmlDSWx1MHlaTG9VeHZvTTVlMnNIMnBsZUQ2T0FZRFB0OHZp?=
 =?utf-8?B?LzZjZlMvZytvMDZNQ0NjYjhHd0hGZ0dmUlJXQmtUejVOdzJHdHdvdFN3Mits?=
 =?utf-8?B?bS96dXBlaGM3eS9zaTZWcGdkWEd6cExxU1NEZzAwZk4zS00xa3dOU3JpSENK?=
 =?utf-8?B?RVR2MXpWelkzdWdrdzh0dllkRmtTbUtIVjl6YU1heC9xRzdrV2hlV3VxNzd2?=
 =?utf-8?B?UHBjcjV3VCtMM2tYZ1VhMm9RblhBckViQm1CZkxRWVVOQXNqaGdoT0hOU1lk?=
 =?utf-8?B?cmdNdHppUHZrUEYxWFA1MzViSnU4aGNDQi85akFYcXpaV3p5UEEvelFJZnJh?=
 =?utf-8?B?WnpRQ1cwSUM4TXlCK3JmT1ZPNm1NTVk5aTdjTEdnQTBLUW1NaFloZ2Rpa3BM?=
 =?utf-8?B?NGVPalYycHQwSzFRTUhOMnNIZUhxRy9IbUovTG5MMUEyNG95Q0dHYWc2OU1B?=
 =?utf-8?B?SU1VbXFMa2V5TnF2LzhCTVEyWDFEQyt6bWp0QWs3alpkRU5zRUJJRStYbXJP?=
 =?utf-8?B?MVpDRGxkSWtjRmVhY3dzTUR6RVE5YlVhamkzZ1FwaUdVSzJNQjZQZW9PblJn?=
 =?utf-8?B?Rzk3ODN3VzRJVjRBOXRxOVhsN05kM09taEd6WGhPamlJRlJ1Rm5ZR005K0U5?=
 =?utf-8?B?ZDNlaE9mRDZVTmorRE1IbVN5OGYwS0t2d0FjdVc1OUpmVWU1UVQ2SEVlVHBs?=
 =?utf-8?B?VXNnN2dLYnZNYVJHNVRSMmZTQ0RMNnFMWTMzbENGei84WEEvcGtPSkxOcFZx?=
 =?utf-8?B?TC9mM0xFNXdJdTk2SHpNMHEwVG9UaEVjdGpta29hV1Z6Z2xnVklrM0hPWnYw?=
 =?utf-8?B?bkxYWlZucHl1SGlXWUNoUCt3aTdKSld5K3orSjZGeGxNei90dkNmQ3plNTEv?=
 =?utf-8?B?aG0rWmk0QjgxUTU3SlRtWnRYeElXeXFsT3JDMmxVUXFKZUJIRndzc2I0V2V2?=
 =?utf-8?B?SE1BMDdHWGZLVHduTThkRFkveXlTZzNPNHhGMVl0SzVWQ29QdllsZzZNT2Jj?=
 =?utf-8?B?MEpmMmV5L1FSMXMwL1k5S2RTUHRNVkJVV2xndmlWN0JPbUhkQzRpTkl4L1ky?=
 =?utf-8?B?bll2MHhHS3FnRTUxdnhvSWZ3Wjk5SkhZVWNCd0p1Z08wK3Uvb0w3cUFyTkYz?=
 =?utf-8?Q?zCnwUZ4Cr7cyKzU8l4SjHw5YO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a50986-76a4-484f-6343-08daee3345c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 09:08:40.6765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kNbGF/Hk0z8Ke4JtdFNO0fKIB5FdRJyJif+qeIuDZ7VV2j18e+KeNiKEMyK5hGmz3OiQXEzN9g2RCkn6jTpW/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5049
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/dsb: Align DSB register
 writes to 8 bytes
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDMvMTNdIGRybS9pOTE1L2RzYjogQWxpZ24gRFNCIHJlZ2lzdGVyIHdyaXRlcyB0
bw0KPiA4IGJ5dGVzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiANCj4gRXZlcnkgRFNCIGluc3RydWN0aW9uIGhhcyB0byBiZSA4
Ynl0ZSBhbGlnbmVkLiBNYWtlIHN1cmUgdGhhdCBpcyB0aGUgY2FzZSBmb3INCj4gdGhlIG5vbi1p
bmRleGVkIHJlZ2lzdGVyIHdyaXRlcyBhcyB3ZWxsLg0KPiBUaGUgd2F5IHRoaXMgY291bGQgZW5k
IHVwIHVuYWxpZ25lZCBpcyB3ZSBlbWl0dGVkIGFuIG9kZCBudW1iZXIgb2YNCj4gaW5kZXhlZCBy
ZWdpc3RlciB3cml0ZXMgYmVmb3JlaGFuZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdl
ZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgMyArKysNCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBpbmRleCA5MGEyMmFmMzBhYWIuLjZhYmZkMGZjNTQx
YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBA
IC0xNzIsNiArMTcyLDkgQEAgdm9pZCBpbnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9k
c2IgKmRzYiwNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gDQo+ICsJLyogRXZlcnkgaW5zdHJ1Y3Rp
b24gc2hvdWxkIGJlIDggYnl0ZSBhbGlnbmVkLiAqLw0KPiArCWRzYi0+ZnJlZV9wb3MgPSBBTElH
Tihkc2ItPmZyZWVfcG9zLCAyKTsNCj4gKw0KPiAgCWRzYi0+aW5zX3N0YXJ0X29mZnNldCA9IGRz
Yi0+ZnJlZV9wb3M7DQo+ICAJYnVmW2RzYi0+ZnJlZV9wb3MrK10gPSB2YWw7DQo+ICAJYnVmW2Rz
Yi0+ZnJlZV9wb3MrK10gPSAoRFNCX09QQ09ERV9NTUlPX1dSSVRFICA8PA0KPiBEU0JfT1BDT0RF
X1NISUZUKSB8DQo+IC0tDQo+IDIuMzcuNA0KDQo=
