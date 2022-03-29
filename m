Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 667BF4EAB4B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 12:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE8B10E7C8;
	Tue, 29 Mar 2022 10:34:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729E510E7C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 10:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648550059; x=1680086059;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BONH218J6poC9gs15BP+sAXwnj2FPTNtpuZGg4FMef0=;
 b=NtCGHzi+biN39ccyDyvK6+ls7KWxAu/6jgJXn+B8XMBGe7CL4SGRZRHt
 CuPKMxAK4jkUqTtlUQZljx5V91Ra1UY47Se8fYCGmN5gLTmpNsmKodB2o
 rJ/vvTJgvijQwYYUstfX8ROgRB6JokHkTOfi5UzkYiO0yaIl5Wmjy3ULl
 Q1boVyUbXr4ndQApUbbF24P2RTP7HYGQGk+Zf7u3krlYXN/0clyQUj3/b
 sC15nSO0RyEZBGy31T4wKeqdReZxswtD+sgqABpEsLrVkOa0G3W7m/Ns4
 KA6FMcr5ej7BoqSm1OnGvhPgYrqskOYHqM0AOJ9R79yGoEKuJD0omDQUX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="259403709"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259403709"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 03:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="639280712"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Mar 2022 03:34:18 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 03:34:18 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 03:34:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 29 Mar 2022 03:34:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 29 Mar 2022 03:34:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N1UBTE6k+BuwggMHpPCju0Tw9lWzc/V2wECOxZpXX7xZBCjsOfmbE2VcITf+6H1ksbGkn/UcNglvYmI0ElJs5zLJlZTatShpfHgZEj0no0aerA9UOGH2565990a7k57YCxNSWOlyKKryV9c2Q78opFYMg0NfeKm6v/3MKPKSpIAUHv1t0MvC1UZhwS5coXi2nh9aNPmcQLQGNCb4v75Xl3oudV0S7Xo2+t8ZmBkRmYubpwRgMkxjWInlBZpJDJTe4ektJ3yRfUqYmzLnsoNCKfORUkH/WvOLin2ekLsYPxremn+C5ANxFvsAdB9JIgzo8meWwgP3H93R6r+3TlYpzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BONH218J6poC9gs15BP+sAXwnj2FPTNtpuZGg4FMef0=;
 b=BlsZDkPfHeAORogozUqxgUCWx7VnSpI6fwnpc1CN653iIqJmAOaf0ahLOSr39kKKoG2bEqAD0RxBJlVjXwCZCFz2VygqAcyoDheVD4WrPoSHosUBS7Lt7yU3bu/PfsxQ+OwbIRIrCPiFu/lfyfeOPJfpQd9W30h8jR0BYnSuLTurwmeuq+3sNqqwofvsVUCLBo+fpcn/JVrL7w3CiVHCJkcC78PAvGuW10ho0Vs1JhK43H3pwR/9rsWoEXYZJk9C1w1Sdy3eZzyoEK6aNg3OWuShQP57gmYqU2PDqpZ+AenLbS1Uhsg/7y7KCiSK+vkqdqpOVfIjqoVZzUlPyWn28g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 DM6PR11MB3753.namprd11.prod.outlook.com (2603:10b6:5:141::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5102.16; Tue, 29 Mar 2022 10:34:16 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f560:5ad:4c12:d05f]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f560:5ad:4c12:d05f%6]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 10:34:16 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Jeffrey Ellison <jeffrey.t.ellison@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [bug report] High refresh rates broken on eDP
 display with Optimus
Thread-Index: AQHYQxYaNn95Jg6LuUG5yDmQ7CNYxazWKs7A
Date: Tue, 29 Mar 2022 10:34:16 +0000
Message-ID: <DM8PR11MB56557D06F3BCE33C60CAF299E01E9@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <CAOsq5MkCYAx2aJdJ8OnksfA1yKrcHSxWA1ZHLAq4Tt=nYG0=PQ@mail.gmail.com>
In-Reply-To: <CAOsq5MkCYAx2aJdJ8OnksfA1yKrcHSxWA1ZHLAq4Tt=nYG0=PQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8db4bf82-289e-4669-262e-08da116facac
x-ms-traffictypediagnostic: DM6PR11MB3753:EE_
x-microsoft-antispam-prvs: <DM6PR11MB3753883EBF0008694C61EF8BE01E9@DM6PR11MB3753.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pJbthmhWRZoC05Ka9TdvrIEloyicz7ev5Ls5EoY2gHYTw/hCQpoRM1gBaYQz5q4vE4Fy1eFPiOI2b1EUxatdGO4cBy1TrdygIrygnl2lwitVRzi8gm1TAX73yPv79xLBP25n0009sBYkWm5vUfQ4TpXzz8B0Mv+k8UshecC0AQJG9eudUYfDwzIQYEMxYTj+rFJ6oOqo/EwsSFLtnhQPqVlJNRwcTeH/ardS9DLyEc8CYFM2f5M8cWgh9uk0KWgEwdrSL+88+7iNNhvjdfLEiocNwrIwllwKIzJyfIhqPrHNV0hJZ5kniVsH6oweGXKrAzTGyASxXplqG6PgWKWa6deQ4FckSDtyRCazVukwmc1alyvU1LHayWUtHoYdBlRnl3vnYEKpU8eER38eh9kX39dAUBkvd1snqYabuFBpnkw4igLyn/jjtFJtdEtfjPGtnImFJ01xafBHUM38Ot6JBhi4wghCriHduI3N5Mz4ojmVElD9DYGmoNm9zve0S8GScIvkW/nLPGXW7arZctAG9mOqddCDXT378fvmVta3tLAe7KfUkyLljpmMs8a/En5XjIvGrbHFLgIRyqZ3OO1Mifm07uUg2nS0b8hmg8tU5LboxeidcFEayn0R2eKnkyLUDFkpmhOPV3ZH0tThGLBlt23WlG2+AHUUcV6mUeLafNzz4sNiEUkSU2O5cxBRswY+KBOh6zL8ARS1RAtJ+ql9SdjCmPO5PHEA8wReu2ETIXiQe2m3QmRoRkDV732POXq0bAiUVCmFu2M8+qFMVP3rztI5COMIOfBpT4R6LdaHul4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(26005)(86362001)(83380400001)(6506007)(186003)(82960400001)(38100700002)(9686003)(38070700005)(122000001)(7696005)(8936002)(55016003)(64756008)(508600001)(33656002)(5660300002)(66946007)(66476007)(66446008)(2906002)(66556008)(76116006)(16799955002)(110136005)(316002)(8676002)(71200400001)(966005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXEzd3ovREJFWTZCTU5telBzWXFmSEZ2QTl4d0VMWUdDa2IxaktFUHFJaURN?=
 =?utf-8?B?cGE3SjdibHJXNGE4MjFJbkhPaDBkUTFVd29uQU4yODhnRDVNb0NudERNK2J0?=
 =?utf-8?B?NTcyVDJCTkNOcllZU2ZjOUFCVDMzdE1qSFM3NnNJNmluVWp3YVRrYVZtc0l3?=
 =?utf-8?B?VDJ2UlIvUGM2QzUxOUpZbW5Ya2hMRHdzaWpCeW56UXNSeSsxQ2ZZTHBiT0Vp?=
 =?utf-8?B?UGNvM3BBWXBocTEza09JSHE1MkJpOUF6VXkzTWxVWkJQcklmYU1XS2RWVVZF?=
 =?utf-8?B?cjlEalMrblM3Uk04ejcreFJYTGVPSlZsMW8zN2Ezb3BIbW5LV2h1aGQ3UENZ?=
 =?utf-8?B?YXRXR1N3OWtwdm5PeFJCZHlUeTI2cWlCRVlzRW5rNnVnNXBldDUxalFhUDNM?=
 =?utf-8?B?U21KZWtFTGZXN2tFSXdnZmRXSEhXNXJhMjNrOTNoWDlYZFpVaElwWlJWMkM2?=
 =?utf-8?B?ZXRzM3NsTi9LVmpvZFVleHVUMmJXTTlSVTdObTVLOGlGQWlxOW50czFUZ1JI?=
 =?utf-8?B?QjBuS05Kd2VZaHhrWU5jU0tSRDFZb2JGTlpTaG1LQXdUcmVzQmdwcHYxYTd5?=
 =?utf-8?B?bC91VVRQT1FFajkyMW5sM1J1dWd3S2pyazJEWUgvRzhJU1JXcU1FNzlWdjFv?=
 =?utf-8?B?dTk1MmE0WVlYRmRrODhEd2QxNlVURUlXenRSRVZoR2tuMEg0ck92ZjRiRE5X?=
 =?utf-8?B?M1pSVWVoZWYyMStya1JSdkZ1UU5QZ3dCejVlaW5QQ0RqRXNJcC8yVk1kbEVI?=
 =?utf-8?B?NmprcEZNMnRSMVQ5V3BkZ0w2NDltSUh3NVR1QjRwcmkzTm0zWWhZOEVjakhx?=
 =?utf-8?B?dmNsNHQ1YVY1YzZvRE1RdFFBRWdqSUs0S28zV0lIQ0hVaWFQVGUySm9PaC9p?=
 =?utf-8?B?N2N6TUJzd1g0byt4MCtkbWR3VmlnSmNYNzdldGRpMHd2bnY2ZlpFWUhqME1p?=
 =?utf-8?B?ZmxYa3dsZXFSdndmNTJ0NUNDNXM2ZzJrWlBKYU54bGVKbnRqNWFadTZMQ0lB?=
 =?utf-8?B?a2tjMU1FVTJZSVVTVGFiZ3FsNDFnRVIzTnBGRjdTSEJ6ckxVcWRlc3M5MVov?=
 =?utf-8?B?azNobkVVNi9nREpuWWlWdkVqQkZZb3ZoTlVwZlRvaXhSVG5YTjdRdjdNcFBZ?=
 =?utf-8?B?M3hPcXRmNnMzQURkbUZxMGhqR3NuRVE4b0d4VWVSODlHNnhWQ3VxM0NHVzVt?=
 =?utf-8?B?eTI2SklSbjdYWXo4NG1hbXJZZjFrdFpuWTg3dkZSaElKa2hKV3RyTktOWWp6?=
 =?utf-8?B?S21lZmR5K3FxQTRDMEt1ODkzZHZpTE1MNGY1Z2toZUxwZ2ZJNDB2ck1XbFRP?=
 =?utf-8?B?MEduYzdmTTJYSFJLZWUyMWJ0dkZjNkdXUUY0b2JyNnIxZDhSVk1TTGZiZlpY?=
 =?utf-8?B?cCsvL09uZ09yQW53Qlo2akM4dlc0bk1ZZmUwYU9vNVJPNU9HdEt5NHUwd0sy?=
 =?utf-8?B?UlBUQm1hN2pWMW1ucXR1MW5OVXVXbU13ZWZvNzJtZmpobldtenhIQ2E0Q1Nt?=
 =?utf-8?B?VU5hRkhpdnZYS2dIcnplSG5lUmR6UTY3aDNrVUFCVE1rOVltVEFFUzMwbFVU?=
 =?utf-8?B?OGRmME1VN1FXRXVxM1hzMmNLRi82RW1qQXgycVFaVFhCY3ZseWlSdzgyamZD?=
 =?utf-8?B?dVpqdnQxcVNJV3U3djRhTEszUXdFTjc5NTdobVhpT1oyQXdaV2dRL25mc25j?=
 =?utf-8?B?WHVoZE9PSEJpSmNacmhQRTc3TStYTkR4aWYyYW5sbXZvMyt6dUZFZ3BGaXU1?=
 =?utf-8?B?T0VpSm02OGt1N2p4MkFsWWF3MFozQjJTeTdadDc4WFE5Uk1oRDhSRnRkT21Q?=
 =?utf-8?B?UEJZaEZma25CZUMzNW42anA5enJXTUJnd2ROODloeVZNWDFHalExN3dRRFRM?=
 =?utf-8?B?VGUvaEpYcFZJWlhaaThGaUFHZTNPUXc1Q3RKeHh5WGtUVjFzM0gyY0laZURL?=
 =?utf-8?B?VTdMSkpla0FiYjd4bXVwelEzbXAvQ3o3MzQyTEVPemgzRW5zeXZLMnRCL2dW?=
 =?utf-8?B?bFJvUVpBZmJYTkovbk1WTGxTeHhodWt3bmRFRWhFOU9SUkxwS0hSWHBRYm5E?=
 =?utf-8?B?V3g4Y1pZbWpMZWRJVjdzNHJBYVYzRjlDdUVZY1dtY282Z1g2K2Fuakk4OSsx?=
 =?utf-8?B?Tk00K2tXejFjVG9FQnFYRjNLeUN2OU5BcHRuRkNsTGhBSmYwcGZ6K3YxMmth?=
 =?utf-8?B?dnFhTzUrNVJoa3p6eVNxbERpMUJGZCtOS2hDUmZLNGF5VTB1RExBa3l3SFow?=
 =?utf-8?B?eVkvN1VyRVNPdDhNMU1CYVNUTlNtWnc5b0FvZ3NadCtTM1Z1bzkyRHlhMnc3?=
 =?utf-8?B?SG1VNWU3K253SnFYSlVLUWhHVWRRc3p0aExKM0V1Vk1TUERLblpYdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8db4bf82-289e-4669-262e-08da116facac
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2022 10:34:16.1258 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4NmUljcpryz2ZRkp5L03q2JqBOOjn90Tn07e5SLcFCzhh7MOR0sD7N1Z9cEIf+NtGaG0MaTV8hpGpI3GizMQlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3753
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [bug report] High refresh rates broken on eDP
 display with Optimus
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

SGksDQpQbGVhc2UgZmlsZSBidWcgdG8gZ2l0bGFiOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsLy0vd2lraXMvSG93LXRvLWZpbGUtaTkxNS1idWdzIA0KDQo+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5j
ZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSmVmZnJleQ0KPiBFbGxpc29u
DQo+IFNlbnQ6IHRpaXN0YWkgMjkuIG1hYWxpc2t1dXRhIDIwMjIgNS4zOA0KPiBUbzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbYnVnIHJl
cG9ydF0gSGlnaCByZWZyZXNoIHJhdGVzIGJyb2tlbiBvbiBlRFAgZGlzcGxheSB3aXRoDQo+IE9w
dGltdXMNCj4gDQo+IEhlbGxvLA0KPiANCj4gSSBoYXZlIGFuIE9wdGltdXMgbGFwdG9wIHdpdGgg
SW50ZWwgVGlnZXIgTGFrZSBIIEdUMSBpbnRlZ3JhdGVkIGdyYXBoaWNzIChpNy0NCj4gMTE4MDBI
KSBhbmQgTlZJRElBIFJUWCAzMDgwIE1vYmlsZSBHUFUuIFRoZSBpbmJ1aWx0IGRpc3BsYXkgaXMg
MTY1IEh6IGFuZCBpcw0KPiBjb25uZWN0ZWQgdG8gdGhlIElHUFUgYnkgZURQLiBBcyBvZiBhbnkg
S2VybmVsIHZlcnNpb24gNS4xNiBvbndhcmRzLCBYcmFuZHINCj4gb25seSBkZXRlY3RzIDYwIEh6
IGFzIGEgcG9zc2libGUgcmVmcmVzaCByYXRlLiBUaGUgcHJvYmxlbSBhbHNvIG9jY3VycyBvbg0K
PiBXYXlsYW5kLiBEb3duZ3JhZGluZyB0byA1LjE1LjEzIHJlc29sdmVzIHRoZSBwcm9ibGVtLg0K
PiANCj4gQW5vdGhlciB1c2VyIG9mIGEgbGFwdG9wIHdpdGggc2ltaWxhciBzcGVjcyBhbHNvIHJl
cG9ydHMgdGhlIHNhbWUgaXNzdWUgYW5kDQo+IHByb3ZpZGVzIFhyYW5kciBvdXRwdXQ6IGh0dHBz
Oi8vYmJzLmFyY2hsaW51eC5vcmcvdmlld3RvcGljLnBocD9pZD0yNzQwMTINCj4gDQo+IERpc3Ry
bzogQXJjaCBMaW51eA0KPiBMYXB0b3A6IFJhemVyIEJsYWRlIDE1IiBBZHZhbmNlZCAyMDIxIChS
WjA5LTA0MDlDRUEzKQ0KPiANCj4gQ1BVOiBpNy0xMTgwMEgNCj4gSUdQVTogVGlnZXIgTGFrZSBI
IEdUMSBbVUhEIEdyYXBoaWNzXQ0KPiBER1BVOiBOVklESUEgUlRYIDMwODAgTGFwdG9wIChBbXBl
cmUgR0ExMDRNKQ0KPiANCj4gRHJpdmVyczogTlZJRElBIFByb3ByaWV0YXJ5ICg1MTAuNTQtOSks
IE1lc2EgKDIxLjMuNykNCg0K
