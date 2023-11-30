Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C74217FEF13
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Nov 2023 13:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4EA10E6F8;
	Thu, 30 Nov 2023 12:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817B510E6F7;
 Thu, 30 Nov 2023 12:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701347198; x=1732883198;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aHteMRqDle7H+9qLsuwPsgZYI99rXqjcTo3WPu16USE=;
 b=dJyXkSnqQ1aAT2lCx7DTBDRj7JnBITsV9/dYXZgAJhshWobuu2xRPDBp
 BeGHTKWY5NeBgiZUCUgNRRgUzIeEaW5jcjjiYnzrIRzn/8RuL5zR+BV+8
 M0kYVJ5YedYcua2SY+z9TCn3AA890OwAETxEChV3len9gFi/MM7dBxUY6
 CcjrJspOfb55SvoQCq5Xsr4QXzcaibySyRhmoGsi2dnhVZxExGmYIMDSx
 H5kI7kbJ2mXd1fbjyUsY80HRP3PmO7mivqlVvwCEezM3/48B2HLibYdNw
 7Y0XD6U8kR9+IwZ0j/R+qTU0YQ0aF/Q7terg3z9wLyGwOXOdQrP4LruAd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="14866332"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="14866332"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 04:26:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="798269273"
X-IronPort-AV: E=Sophos;i="6.04,239,1695711600"; d="scan'208";a="798269273"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2023 04:26:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 30 Nov 2023 04:26:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 30 Nov 2023 04:26:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 30 Nov 2023 04:26:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PMmGM2y6VVRW6BDS4dXj9GZcbGtQWvuTSHd9aezp8v/fnMpesDGcuEvsmR3hdKFLWKb1wPvdFddeLzlnK67ua9RY5rgBicxpUyHpH9VDGtvRsvwOH8avXiLS/CdkE4gggYAh937L0zZlziTdr4ViPO2EY08SHDd35E0WCEwMZmEWRfnMJV0YigOcI0uX19rR6pjMktbXUT9fTNjQkE3Ny+Dq5WZuxfVrebrMO9VVhs2Qq1yES9cq0hEhZFLp+rAaL//aC/ehAkZ78xU/igRz/XQCxgD2tgvz+eLJwqxiHE3JVTYJj3LLYDiEFjBdKNjZIy2nJaJ6DoPlzl+wi/wtVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aHteMRqDle7H+9qLsuwPsgZYI99rXqjcTo3WPu16USE=;
 b=SLzh3Apjis/uIlnP059rVIFjFr/zBfn8Jx9piL+WCzXV0IHBBxzPczBuMr+dgwRe3n/ruTcyxWYFOXGlubsZXe++Pm89XRmv9lpaipBVeraMXhNjDkZ+6sUc6GfFkdYM4qdJdkc23GWSKgYlMQcx18mKSleSgLvyyM5pQu9929gSzs4nCWsvBqhH2GSurdrv+LIZfKjdKA8eyfpzhuHUeH/VJ7uMc6xMkHQDO8k/iaoDxFV9xVPH4Vml3bXIFI//dSqpYXCATVuiedNwKbOomvbIdwTsOQSGXJQcah0zc0l78UYoz7iz4MpcAo72rXokDsA3kN59ETQlWefA5Gj1Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SJ0PR11MB4798.namprd11.prod.outlook.com (2603:10b6:a03:2d5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Thu, 30 Nov
 2023 12:26:34 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7046.024; Thu, 30 Nov 2023
 12:26:34 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v6] drm/i915: handle uncore spinlock when not
 available
Thread-Index: AQHaI4fXkUmKET9ogkCwzo2MkOxT3LCSydWA
Date: Thu, 30 Nov 2023 12:26:33 +0000
Message-ID: <c579c861463fba1e24285c034d60f14aeff6d3df.camel@intel.com>
References: <20231130113505.1321348-1-luciano.coelho@intel.com>
 <812728f3-15d2-4327-aebb-79a032d3a2ce@linux.intel.com>
In-Reply-To: <812728f3-15d2-4327-aebb-79a032d3a2ce@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SJ0PR11MB4798:EE_
x-ms-office365-filtering-correlation-id: 5732fcd5-42aa-47b1-72fc-08dbf19f96d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pj3b4g54Hyi56/Z7oJrY/dYrQuqsfcdFzg4ZKe5D4fy55gZTVoyJml3n9GsyPW7HFbiA71y/M/EXrbO9g0YQnhEBWg7dd4pIuvCUaquaen0gXUB2yfCH18a+E2Uv9e8Owqboq3dbbs9zlPDLTLERNfESEVKzCGvol0K8uXxIwuLF2iryv7EAb4Jcbq+dzyCTWC4T/qxcYMMtBMntMKrcJtcopNangAzgIZ7A38Es+7Gt2SMNcg02cwvsk9mxyQxOIEpodVrYINw8lwKG/NTylR6zhft4AMBlOnop0XFY7nqBusjthHWF+GQMW92W+ijN7QmjuPD98nDnzUroqLuv+tOpcPdohH/1agUG6MGyncoC/Zzz+A7frKjXGe3+UMiqftxbtQSSOMCqXr6XOeRVYZPF6/dY0UX9b4ImeQmckn18ve3IcPTLt0da7pFiT+dmUpnwh9lvhBDYhScuhApt06eMPN+rHMj0impigwp8JEEYSHRK3jvG0+U2mHK21euxqsmfyDdZcZJkBATxpDSusrS12gzdl8R6RnuDLCwadnTy6MfX6b1pInUVYtnsi2cnnTwUS1UnCOXGOAPSjjgYcZLQqAHiLnz6MvstI77437bag7lLRn6XkLKxNwWvswgz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(346002)(376002)(396003)(230922051799003)(1800799012)(64100799003)(186009)(451199024)(38070700009)(122000001)(41300700001)(5660300002)(4001150100001)(82960400001)(2906002)(86362001)(83380400001)(53546011)(6512007)(71200400001)(38100700002)(26005)(2616005)(6506007)(66556008)(36756003)(76116006)(91956017)(110136005)(6486002)(66446008)(478600001)(64756008)(316002)(54906003)(66946007)(8676002)(66476007)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NURHS3RkRFdpNEtrZ2RjY1YwU1huY01XOXJIeHFlOEJaTTBNOXV2OVBLaDhi?=
 =?utf-8?B?OWgzQ09maG5PMGdHVVlUcm5xMWU3V3BYODJRdkRjbklsV0F1VXBDVXBXK3Ro?=
 =?utf-8?B?RnhLUWY5R1dHTld6cmhiekNGQjl5bmRWM0Nib3lPT3JISUd6K3BaUktxV1lX?=
 =?utf-8?B?VjJRY0E0cnRERmZpRGNNMzd5dElRSHJCdWNwSkxBcjh1WGZqaVNjU1grOXE2?=
 =?utf-8?B?WDFxT3IzakhBN1FDNTJ4eDlTTFgxNWcycjQxU21QUUhpQ2tva2swUGhDYnNB?=
 =?utf-8?B?SHZKOTg3YktMS1lUWGVZYjRERm9lR2JwUXBUa1dOZTVXOWNwR1hMTHhDc1VJ?=
 =?utf-8?B?VTBGb2xNQ2RZMko1Z1ZDWlhRaW5reEtySXI4Z1hTU0JBZDhqMjA4WVZ5V3lz?=
 =?utf-8?B?SUdNenpjd29Jd043WG5VNUFpYzd4WEFmOE9za1lJU0RMTHNpNnVOUm1DVXFL?=
 =?utf-8?B?SjNHTWljMGs0YnlUUUNZREl5cEFlbGJOU0h5YUxxTmFYVGRWam5mazNRMHU2?=
 =?utf-8?B?V3VoMHVJazJFSGhQdS9Dd3RtTzdnV3Y0ZWVrdWhIS2RvQTR6a0phVGg0S2Zj?=
 =?utf-8?B?Z0VUc3UwakdocUxVeGh3YWxUcHEzYXNNdjJSSXg0bjN0T1NBbDhVUTluNEJs?=
 =?utf-8?B?R21ZTTNWUTVVQXU1SWRHMmo0Mk95SURrbHhpVUxmQkNNOHpQUlU5Y1p3MkZ5?=
 =?utf-8?B?eFhTZ0lmVmtMMC9icmRpM0dGU1VDUmhPRVN2ZC83TWhYVUcvVzdDUWcyaWFE?=
 =?utf-8?B?ZjV1WnpHbkhCOFdHTXltcmdxNnFUdEhFOVQvQVdRZ2Y5TzBtOThkQ2lyQnND?=
 =?utf-8?B?elZXWE8vUEdSTXZhMnZNbk1UU3UvYTJVMnBYelEyczFhUXZoOXNRbXBXOEhP?=
 =?utf-8?B?S2o1dW9PeUlHUjh3RnlEQUJNVEtqOU4wbGZUNVVXUEhjYlZnTERBajlBN25n?=
 =?utf-8?B?a3JtU2wwZStlWWJMS1A4WTdrdktyajF6dGk3VXY2R2dHUFVHdkQwQnRFN0tU?=
 =?utf-8?B?QUZwQzEwa3ROV2tBckxpVkhaci9LLzg0Z0loVzU5dVAzZGkzbHVHN2ptOEpp?=
 =?utf-8?B?Vkt1MmRBSGdITnNGZHBPYUw0dVBVRFRpRVV1d09MOHNDVUljejZ2YzYrdFYy?=
 =?utf-8?B?QWpDZG1CYm5tVjJkVXNPRDRIdVdJSmhYcG1HUDFxbHFKd0NuNFRudk45RXMx?=
 =?utf-8?B?dFVIMDhEQ2hneUltSVMvU09aakpMQU8yZ2pVc1VucFNFMXdZYkJweC9QY0hB?=
 =?utf-8?B?YzI0KzNEMExuOUJab0JMOVRNU0YybGxKU0ZBOUpFemNEdklONGNzVk9FMm1v?=
 =?utf-8?B?Z1JkUU1STjRRNkdobkgxY3ZvWmE1V2JnajExdDZWS2Z2QWhOaDhqZ2N3Vm91?=
 =?utf-8?B?RExkUHJhQWMyRktDZno5OWN5WFQyK1FQZ3ZDbWNCanlYcWp4bVo5a21hWjhR?=
 =?utf-8?B?UHlVR2JPVUJOQXZjZGVULzVseUNMNXZLaHY4N01TUlgzYWxKdTl3aW5kOUFZ?=
 =?utf-8?B?V3UzSllCelQxSjJKQVlGdDZxWk5hbHpKaVFGa3NSdmR4R0p2UzFGTU1FejM4?=
 =?utf-8?B?TlRVV0hWTVRJZnQzNW1vZUtHditad1FDL3RKT0RtVW9ZMU1oMVhxLytFdXFR?=
 =?utf-8?B?VVFEejdhM0JXVUN5Z1FmR0dMdkdUaDhYMm02dTVTSDhYUU84Q0l3QW0vR2li?=
 =?utf-8?B?bWlHSThEREZZM1J4ZXEzdVA5WDdkbHFrejBJMDNCNW5UcW1rN3RSTTBTdjZK?=
 =?utf-8?B?bjVzdkdXcVRNN0xGbkM4d2JxUHVQTEhzejZFRGxUeEtaZ2F2d3pCWEJuTWVr?=
 =?utf-8?B?YTA2cW41Qi9SL3ZhVHRZZnhvSXAxaFl2V3c0NStwbFlSUWE5Yk12VTViTlN2?=
 =?utf-8?B?NURnc0VIV2h4bExvZkE0dGEwb0J4cnhqVlVTZEdXWE5NQ1BpZWJ1UE5yTTdU?=
 =?utf-8?B?dkN3NWFzb1lDV2Y1aWkvWEdFNk8rMHhEa3RUL0ViN0QzcG5nd2cwaEtRT0o0?=
 =?utf-8?B?ajlVOEFGbkJNNXlBMy8vRFJHbUUrNUpUVStzVmp0RCtMWFFvUnJGYlJLLytK?=
 =?utf-8?B?YXVSWUJqT3NTSXJQeGZYa05ET0JxOU5UNlZTMkFxcHd0Y204Q1RoeEsvZ24v?=
 =?utf-8?B?b2xGZ21UN3RaZVZTT1g1cVFLR2plczc0SE5yTG1hQ2xlejJJWUoyWDdiZnpW?=
 =?utf-8?B?RHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <11045AD6F7FD4446A670498794AE2D22@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5732fcd5-42aa-47b1-72fc-08dbf19f96d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2023 12:26:33.5383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z5CnovJf1buItOQsVtvhhdv35f7NBwAdTI8jzjr8bfz1F0uNANtVMFwZwz0a6x4adRl2L7uhODBnudjUzVTkXP1On/Obxas+bBKTRjeVf+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTExLTMwIGF0IDEyOjIxICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMzAvMTEvMjAyMyAxMTozNSwgTHVjYSBDb2VsaG8gd3JvdGU6DQo+ID4gVGhlIHVuY29y
ZSBjb2RlIG1heSBub3QgYWx3YXlzIGJlIGF2YWlsYWJsZSAoZS5nLiB3aGVuIHdlIGJ1aWxkIHRo
ZQ0KPiA+IGRpc3BsYXkgY29kZSB3aXRoIFhlKSwgc28gd2UgY2FuJ3QgYWx3YXlzIHJlbHkgb24g
aGF2aW5nIHRoZSB1bmNvcmUncw0KPiA+IHNwaW5sb2NrLg0KPiA+IA0KPiA+IFRvIGhhbmRsZSB0
aGlzLCBzcGxpdCB0aGUgc3Bpbl9sb2NrL3VubG9ja19pcnFzYXZlL3Jlc3RvcmUoKSBpbnRvDQo+
ID4gc3Bpbl9sb2NrL3VubG9jaygpIGZvbGxvd2VkIGJ5IGEgY2FsbCB0byBsb2NhbF9pcnFfc2F2
ZS9yZXN0b3JlKCkgYW5kDQo+ID4gY3JlYXRlIHdyYXBwZXIgZnVuY3Rpb25zIGZvciBsb2NraW5n
IGFuZCB1bmxvY2tpbmcgdGhlIHVuY29yZSdzDQo+ID4gc3BpbmxvY2suICBJbiB0aGVzZSBmdW5j
dGlvbnMsIHdlIGhhdmUgYSBjb25kaXRpb24gY2hlY2sgYW5kIG9ubHkNCj4gPiBhY3R1YWxseSB0
cnkgdG8gbG9jay91bmxvY2sgdGhlIHNwaW5sb2NrIHdoZW4gSTkxNSBpcyBkZWZpbmVkLCBhbmQN
Cj4gPiB0aHVzIHVuY29yZSBpcyBhdmFpbGFibGUuDQo+ID4gDQo+ID4gVGhpcyBrZWVwcyB0aGUg
aWZkZWZzIGNvbnRhaW5lZCBpbiB0aGVzZSBuZXcgZnVuY3Rpb25zIGFuZCBhbGwgc3VjaA0KPiA+
IGxvZ2ljIGluc2lkZSB0aGUgZGlzcGxheSBjb2RlLg0KPiA+IA0KPiA+IENjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydG8udXJzdWxpbkBpbnRlbC5jb20+DQo+ID4gQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28u
dml2aUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYSBDb2VsaG8gPGx1Y2lhbm8u
Y29lbGhvQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiANCj4gPiANCj4gPiBJbiB2MjoNCj4gPiAN
Cj4gPiAgICAgKiBSZW5hbWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyooKQ0KPiA+
ICAgICAqIENvcnJlY3RlZCB0aGUgb3JkZXI6IHNhdmUsIGxvY2ssIHVubG9jaywgcmVzdG9yZQ0K
PiA+IA0KPiA+IEluIHYzOg0KPiA+IA0KPiA+ICAgICAqIFVuZGlkIHRoZSBjaGFuZ2UgdG8gcGFz
cyBkcm1faTkxNV9wcml2YXRlIGluc3RlYWQgb2YgdGhlIGxvY2sNCj4gPiAgICAgICBpdHNlbGYs
IHNpbmNlIHdlIHdvdWxkIGhhdmUgdG8gaW5jbHVkZSBpOTE1X2Rydi5oIGFuZCB0aGF0IHB1bGxz
DQo+ID4gICAgICAgaW4gYSB0cnVja2xvYWQgb2Ygb3RoZXIgaW5jbHVkZXMuDQo+ID4gDQo+ID4g
SW4gdjQ6DQo+ID4gDQo+ID4gICAgICogQWZ0ZXIgYSBicmllZiBhdHRlbXB0IHRvIHJlcGxhY2Ug
dGhpcyB3aXRoIGEgZGlmZmVyZW50IHBhdGNoLA0KPiA+ICAgICAgIHdlJ3JlIGJhY2sgdG8gdGhp
cyBvbmU7DQo+ID4gICAgICogUGFzcyBkcm1faTE5NV9wcml2YXRlIGFnYWluLCBhbmQgbW92ZSB0
aGUgZnVuY3Rpb25zIHRvDQo+ID4gICAgICAgaW50ZWxfdmJsYW5rLmMsIHNvIHdlIGRvbid0IG5l
ZWQgdG8gaW5jbHVkZSBpOTE1X2Rydi5oIGluIGENCj4gPiAgICAgICBoZWFkZXIgZmlsZSBhbmQg
aXQncyBhbHJlYWR5IGluY2x1ZGVkIGluIGludGVsX3ZibGFuay5jOw0KPiA+IA0KPiA+IEluIHY1
Og0KPiA+IA0KPiA+ICAgICAqIFJlbW92ZSBzdHJheSBpbmNsdWRlIGluIGludGVsX2Rpc3BsYXku
aDsNCj4gPiAgICAgKiBSZW1vdmUgdW5uZWNlc3NhcnkgaW5saW5lIG1vZGlmaWVycyBpbiB0aGUg
bmV3IGZ1bmN0aW9ucy4NCj4gPiANCj4gPiBJbiB2NjoNCj4gPiANCj4gPiAgICAgKiBKdXN0IHJl
bW92ZWQgdGhlIHVtbGF1dHMgZnJvbSBWaWxsZSdzIG5hbWUsIGJlY2F1c2UgcGF0Y2h3b3JrDQo+
ID4gICAgICAgZGlkbid0IGNhdGNoIG15IHBhdGNoIGFuZCBJIHN1c3BlY3QgaXQgd2FzIHNvbWUg
VVRGLTggY29uZnVzaW9uLg0KPiA+IA0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92YmxhbmsuYyB8IDQ5ICsrKysrKysrKysrKysrKystLS0tLQ0KPiA+ICAgMSBmaWxl
IGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiA+IGluZGV4IDJj
ZWMyYWJmOTc0Ni4uMjIxZmNkNmJmNzdiIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ID4gQEAgLTI2NSw2ICsyNjUsMzAgQEAgaW50
IGludGVsX2NydGNfc2NhbmxpbmVfdG9faHcoc3RydWN0IGludGVsX2NydGMgKmNydGMsIGludCBz
Y2FubGluZSkNCj4gPiAgIAlyZXR1cm4gKHNjYW5saW5lICsgdnRvdGFsIC0gY3J0Yy0+c2Nhbmxp
bmVfb2Zmc2V0KSAlIHZ0b3RhbDsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+ICsvKg0KPiA+ICsgKiBU
aGUgdW5jb3JlIHZlcnNpb24gb2YgdGhlIHNwaW4gbG9jayBmdW5jdGlvbnMgaXMgdXNlZCB0byBk
ZWNpZGUNCj4gPiArICogd2hldGhlciB3ZSBuZWVkIHRvIGxvY2sgdGhlIHVuY29yZSBsb2NrIG9y
IG5vdC4gIFRoaXMgaXMgb25seQ0KPiA+ICsgKiBuZWVkZWQgaW4gaTkxNSwgbm90IGluIFhlLg0K
PiA+ICsgKg0KPiA+ICsgKiBUaGlzIGxvY2sgaW4gaTkxNSBpcyBuZWVkZWQgYmVjYXVzZSBzb21l
IG9sZCBwbGF0Zm9ybXMgKGF0IGxlYXN0DQo+ID4gKyAqIElWQiBhbmQgcG9zc2libHkgSFNXIGFz
IHdlbGwpLCB3aGljaCBhcmUgbm90IHN1cHBvcnRlZCBpbiBYZSwgbmVlZA0KPiA+ICsgKiBhbGwg
cmVnaXN0ZXIgYWNjZXNzZXMgdG8gdGhlIHNhbWUgY2FjaGVsaW5lIHRvIGJlIHNlcmlhbGl6ZWQs
DQo+ID4gKyAqIG90aGVyd2lzZSB0aGV5IG1heSBoYW5nLg0KPiA+ICsgKi8NCj4gPiArc3RhdGlj
IHZvaWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZW50ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpDQo+ID4gK3sNCj4gPiArI2lmZGVmIEk5MTUNCj4gPiArCXNwaW5fbG9jaygmaTkxNS0+
dW5jb3JlLmxvY2spOw0KPiA+ICsjZW5kaWYNCj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIHZv
aWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZXhpdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPiArew0KPiA+ICsjaWZkZWYgSTkxNQ0KPiA+ICsJc3Bpbl91bmxvY2soJmk5MTUtPnVu
Y29yZS5sb2NrKTsNCj4gPiArI2VuZGlmDQo+ID4gK30NCj4gPiArDQo+ID4gICBzdGF0aWMgYm9v
bCBpOTE1X2dldF9jcnRjX3NjYW5vdXRwb3Moc3RydWN0IGRybV9jcnRjICpfY3J0YywNCj4gPiAg
IAkJCQkgICAgIGJvb2wgaW5fdmJsYW5rX2lycSwNCj4gPiAgIAkJCQkgICAgIGludCAqdnBvcywg
aW50ICpocG9zLA0KPiA+IEBAIC0zMDIsMTEgKzMyNiwxMiBAQCBzdGF0aWMgYm9vbCBpOTE1X2dl
dF9jcnRjX3NjYW5vdXRwb3Moc3RydWN0IGRybV9jcnRjICpfY3J0YywNCj4gPiAgIAl9DQo+ID4g
ICANCj4gPiAgIAkvKg0KPiA+IC0JICogTG9jayB1bmNvcmUubG9jaywgYXMgd2Ugd2lsbCBkbyBt
dWx0aXBsZSB0aW1pbmcgY3JpdGljYWwgcmF3DQo+ID4gLQkgKiByZWdpc3RlciByZWFkcywgcG90
ZW50aWFsbHkgd2l0aCBwcmVlbXB0aW9uIGRpc2FibGVkLCBzbyB0aGUNCj4gPiAtCSAqIGZvbGxv
d2luZyBjb2RlIG11c3Qgbm90IGJsb2NrIG9uIHVuY29yZS5sb2NrLg0KPiA+ICsJICogRW50ZXIg
dmJsYW5rIGNyaXRpY2FsIHNlY3Rpb24sIGFzIHdlIHdpbGwgZG8gbXVsdGlwbGUNCj4gPiArCSAq
IHRpbWluZyBjcml0aWNhbCByYXcgcmVnaXN0ZXIgcmVhZHMsIHBvdGVudGlhbGx5IHdpdGgNCj4g
PiArCSAqIHByZWVtcHRpb24gZGlzYWJsZWQsIHNvIHRoZSBmb2xsb3dpbmcgY29kZSBtdXN0IG5v
dCBibG9jay4NCj4gPiAgIAkgKi8NCj4gPiAtCXNwaW5fbG9ja19pcnFzYXZlKCZkZXZfcHJpdi0+
dW5jb3JlLmxvY2ssIGlycWZsYWdzKTsNCj4gPiArCWxvY2FsX2lycV9zYXZlKGlycWZsYWdzKTsN
Cj4gPiArCWludGVsX3ZibGFua19zZWN0aW9uX2VudGVyKGRldl9wcml2KTsNCj4gDQo+IFNob3Vs
ZG4ndCBsb2NhbF9pcnFfc2F2ZSBnbyBpbnRvIGludGVsX3ZibGFua19zZWN0aW9uX2VudGVyKCk/
IEl0IHNlZW1zIA0KPiBhbGwgY2FsbGVycyBmcm9tIGJvdGggaTkxNSBhbmQgeGUgZW5kIHVwIGRv
aW5nIHRoYXQgYW55d2F5IGFuZCBuYW1pbmcgDQo+ICJ2Ymxhbmtfc3RhcnQiIHdhcyBwcmVzdW1l
ZCB0aGVyZSB3b3VsZCBiZSBtb3JlIHRvIHRoZSBzZWN0aW9uIHRoYW4gDQo+IGNhY2hlbGluZSBt
bWlvIGJ1Zy4gSSBtZWFuIHRoYXQgdGhlcmUgaXMgc29tZSBiZW5lZml0IGZyb20ga2VlcGluZyB0
aGUgDQo+IHJlYWRvdXQgdGltaW5ncyB0aWdodC4NCj4gDQoNClRoZSByZWFzb24gaXMgdGhhdCB0
aGVyZSBpcyBvbmUgY2FsbGVyIHRoYXQgaGFzIGFscmVhZHkgZGlzYWJsZWQNCmludGVycnVwdHMg
d2hlbiB0aGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCAoc2VlIGJlbG93KSwgc28gd2Ugc2hvdWxkbid0
IGRvDQppdCBhZ2Fpbi4gDQoNCg0KPiA+ICAgDQo+ID4gICAJLyogcHJlZW1wdF9kaXNhYmxlX3J0
KCkgc2hvdWxkIGdvIHJpZ2h0IGhlcmUgaW4gUFJFRU1QVF9SVCBwYXRjaHNldC4gKi8NCj4gPiAg
IA0KPiA+IEBAIC0zNzQsNyArMzk5LDggQEAgc3RhdGljIGJvb2wgaTkxNV9nZXRfY3J0Y19zY2Fu
b3V0cG9zKHN0cnVjdCBkcm1fY3J0YyAqX2NydGMsDQo+ID4gICANCj4gPiAgIAkvKiBwcmVlbXB0
X2VuYWJsZV9ydCgpIHNob3VsZCBnbyByaWdodCBoZXJlIGluIFBSRUVNUFRfUlQgcGF0Y2hzZXQu
ICovDQo+ID4gICANCj4gPiAtCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldl9wcml2LT51bmNv
cmUubG9jaywgaXJxZmxhZ3MpOw0KPiA+ICsJaW50ZWxfdmJsYW5rX3NlY3Rpb25fZXhpdChkZXZf
cHJpdik7DQo+ID4gKwlsb2NhbF9pcnFfcmVzdG9yZShpcnFmbGFncyk7DQo+ID4gICANCj4gPiAg
IAkvKg0KPiA+ICAgCSAqIFdoaWxlIGluIHZibGFuaywgcG9zaXRpb24gd2lsbCBiZSBuZWdhdGl2
ZQ0KPiA+IEBAIC00MTIsOSArNDM4LDEzIEBAIGludCBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gPiAgIAl1bnNpZ25lZCBsb25nIGlycWZsYWdzOw0K
PiA+ICAgCWludCBwb3NpdGlvbjsNCj4gPiAgIA0KPiA+IC0Jc3Bpbl9sb2NrX2lycXNhdmUoJmRl
dl9wcml2LT51bmNvcmUubG9jaywgaXJxZmxhZ3MpOw0KPiA+ICsJbG9jYWxfaXJxX3NhdmUoaXJx
ZmxhZ3MpOw0KPiA+ICsJaW50ZWxfdmJsYW5rX3NlY3Rpb25fZW50ZXIoZGV2X3ByaXYpOw0KPiA+
ICsNCj4gPiAgIAlwb3NpdGlvbiA9IF9faW50ZWxfZ2V0X2NydGNfc2NhbmxpbmUoY3J0Yyk7DQo+
ID4gLQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZkZXZfcHJpdi0+dW5jb3JlLmxvY2ssIGlycWZs
YWdzKTsNCj4gPiArDQo+ID4gKwlpbnRlbF92Ymxhbmtfc2VjdGlvbl9leGl0KGRldl9wcml2KTsN
Cj4gPiArCWxvY2FsX2lycV9yZXN0b3JlKGlycWZsYWdzKTsNCj4gPiAgIA0KPiA+ICAgCXJldHVy
biBwb3NpdGlvbjsNCj4gPiAgIH0NCj4gPiBAQCAtNTM3LDcgKzU2Nyw3IEBAIHZvaWQgaW50ZWxf
Y3J0Y191cGRhdGVfYWN0aXZlX3RpbWluZ3MoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUsDQo+ID4gICAJICogTmVlZCB0byBhdWRpdCBldmVyeXRoaW5nIHRvIG1ha2Ug
c3VyZSBpdCdzIHNhZmUuDQo+ID4gICAJICovDQo+ID4gICAJc3Bpbl9sb2NrX2lycXNhdmUoJmk5
MTUtPmRybS52YmxhbmtfdGltZV9sb2NrLCBpcnFmbGFncyk7DQo+ID4gLQlzcGluX2xvY2soJmk5
MTUtPnVuY29yZS5sb2NrKTsNCj4gPiArCWludGVsX3ZibGFua19zZWN0aW9uX2VudGVyKGk5MTUp
Ow0KDQpIZXJlLg0KDQotLQ0KQ2hlZXJzLA0KTHVjYS4NCg==
