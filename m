Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EF256699D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141D8112761;
	Tue,  5 Jul 2022 11:30:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E3B410E021;
 Tue,  5 Jul 2022 10:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657016906; x=1688552906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9OSE7jYFPNL1FR/+cTLihkrp62RLwYU+wlPBHz7CkIM=;
 b=K7BRcxlwb3IdWovSYGpnmaotaoK5kk4INsNNWdlBMSxIVRF5q9+FLn6c
 3aHvRK3cpvXot8Z5n/fOvG5oWTTsJVM0NrB2KRYdLbz15n6rAnqgQUFGd
 B5a3/z2Gd1v1vspGHRzLiLNp5ZuczHNQ42tfn0tD3g64sngCD0RUDeGHe
 K7Edl8L7PORbR8gzCbMofeDV1kyfUsMnTNhEozQYmGeNju0+8pVgTrJTL
 ieoFCyfAijqkTy/d/pS2owqZO3zVfsE9lkMsAEQ2LeR2nC00D9y3iSXdp
 TqzHS2MKaoZrorfKBn+2wqCvE6qF3O1lmCAIt3l1snpnUdtCR/ON1pPAh A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="263740039"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="263740039"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="919661918"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 05 Jul 2022 03:28:26 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 03:28:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 03:28:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 03:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O3i3Tvc0iRjMwLn0zV1EfqdhMW60ZA4QYlJwbc0HqoJ61dstO6INEP5RWyl0rvt/Xiaq4sZR7GK3C5rldwNLH9lRRybu4v4knZdocOSkySfJeL5ve95RnorF/EtWO65E0yztw/6+0jnJyzh+4YStv/6NC1l8WpxvfIOr6T6bwDtNg9KFwwHB6Rb77NDRW0o1PV7JKwkdQzudgUPcG8Rm4P52YL3Zs/6lZtR2kyxs9gjnzndWJMzZVXjE1bdeTQCMHqTP6gNeyOH4Hb15a3AmcDYZ4qaV2AqIm1n7w9FK5YbBgiJ/l2Ek1SPHg4G8xcviJm7UNFn5frRxs6GPpIgfQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9OSE7jYFPNL1FR/+cTLihkrp62RLwYU+wlPBHz7CkIM=;
 b=AvAXakzWMqjmuoFiKxog3hLGvzo6V1EavtMzsUTgiENKpEJrVwSgJhrR9w9OwXdKjyyger8h1RYuTnk4a7USBjDmq03/6vjBKl0Y1UwCqL+KTOJ+q7Yo5Fam/4O9JpiG5mnnOZikIKj8/uFsqzqnhVHKFvma57HhztvFSJfr31gLBSaS32DSCr5brz8XdKQREw6zcOA9Y74YH0XTFzf6CfcVEbqyUIVnFWYXV5LmRaiRWF+2f0FxPgXX02VbSoGCzNP6kLaZG+ozCG7KSB+68zmJAe1AF/62g0S10h5p+u+mz8IYkJgZPQDSFctdSCd87jHVpcG1vJXLHe67YT/tug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM5PR11MB1834.namprd11.prod.outlook.com (2603:10b6:3:113::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.14; Tue, 5 Jul 2022 10:28:24 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 10:28:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "B S, Karthik"
 <karthik.b.s@intel.com>, "igt-dev@lists.freedesktop.org"
 <igt-dev@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t] tests/i915/kms_big_fb: trigger async flip with a
 dummy flip
Thread-Index: AQHYit7dLYg1+v7vYUKKIaYPU0Gdea1vjSGAgAABaTCAAATiAIAACTgAgAAAiEA=
Date: Tue, 5 Jul 2022 10:28:23 +0000
Message-ID: <DM6PR11MB3177B1A2F56960E08C49C64EBA819@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220628110409.768308-1-arun.r.murthy@intel.com>
 <b3935ec4-c239-0db0-33b4-9de43bbf7965@intel.com>
 <DM6PR11MB3177AC16AD97327BCBEA3C39BA819@DM6PR11MB3177.namprd11.prod.outlook.com>
 <9bc05a2b-771c-0d64-00c5-dc6432d2eecc@intel.com>
 <8c1cdbb6-4efd-11b4-48bd-1093fae6736c@intel.com>
In-Reply-To: <8c1cdbb6-4efd-11b4-48bd-1093fae6736c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5eaf1951-2334-469f-1d0e-08da5e711736
x-ms-traffictypediagnostic: DM5PR11MB1834:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i5dzyqu+JI2/Gj42w0iX05rcOjNtZoxlvFxZoGfBro5MijwJFKFnXvU1CfNXx3uls+elLmLjBfG+WUw+8tZ1ympDQ+Xiqtd3e4A1vtz7ASoAqwp+oE/K5c2NANT7huASrcYSJf2/aapA6OMcTatU2FMv9Ezm9y6ebCYcZraRhkh28tZVCktg21145/MLV7Qrt4rX2biyv0qhR4gDGu2Blm+RGdVg4h3fwlaMM642uA8c4opSofbFjJhv1G4aftxx+6lOmrXikc/ja+46Y+21hd+pPOwAJLYtC5l0opKfZsYgQY2BFunSoFU215AkLcAHTejB212r/C5l+mzUCZVe7WJIDwEg2kwK0LXICyX4zNCSZhkxgp/WNwdbhWX3LsSCUgZpyKwCArkBfiYNU8MMHuD0w+N6WwoytpEGvV7SRn9svT6Ym0qSSFvCcidtoGwxntCutRXyLssXGVMOgGvY0pmYj9gHecEodb0h+HJmy2y0IONoLjSc6GL+CUQQOcj5+RQ7XEL5eUq8rryI+QfEYMJN/BkY+zt2pLkjl+7LYYLyxg8oeBNSBrSwXV9LRnfdAlGaL05pif6HNcps4CHYTS1PfEZJDctOwMb3JToY+k7KgJT3OM5StYgwTHmwy3AFWroEHD1dxD4vVylJOONiZdAUPqplNTA5JRDAIEp0g4WLmnb64eCJMgWi1MlixVaQM3VCjE7CDYmAmytrn+9BAhqUdA22M/ShE+v7xleu3RQTIRg8fJ1ajefXIVkhBARkt8qS8DpC3y2TYUavTu7uQIVJXv9i3lwOWHybvvilHROBbKcP1pWHQfm56/riH9bh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(346002)(39860400002)(396003)(376002)(64756008)(122000001)(316002)(66446008)(38100700002)(110136005)(38070700005)(66556008)(76116006)(82960400001)(55016003)(4326008)(54906003)(8676002)(66946007)(6506007)(66476007)(71200400001)(9686003)(5660300002)(33656002)(2906002)(41300700001)(55236004)(86362001)(186003)(52536014)(8936002)(26005)(53546011)(83380400001)(7696005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDlKTmoyYmVWMTBOMnljR1gybG9rR0RLVHZ2eHMwUDRoQUgzU3liOWtKVXZv?=
 =?utf-8?B?b1ExSUNWVmE5SU16YldhejFMTmd4NkYzd1NXVEF2UlB5V2lSN3JURzIvd1dO?=
 =?utf-8?B?NW5LRnFXRDRlTWNJSmllYUIxR0JhUTZUdW1TeURZSGR3M3IxcXg2UE1xY21C?=
 =?utf-8?B?d2h3Z0REek5peTlRMVc1c2YwSEVDOGJHUW5FUkxpK210aWhVNE5maE5WSjFw?=
 =?utf-8?B?WVViMTRNUE5ydGdNOUFQUkIyc3VqZDVUYjlKM2FqOWlHZHpyaGFicnBobXFV?=
 =?utf-8?B?WUtZcjRDdmFMYUxRV0NiYVU1ZTRPY0JmeU9XdTAyUlVacG1lVHUxdWpKaDBP?=
 =?utf-8?B?MVZZREN2djNTbEtXUC9hTjBKb0V3VWNSVzhSaTBsY2xmVkhhNTFiQzF3T1RP?=
 =?utf-8?B?V1MrdHZCYkljUnNOV2FBQ1BLbTlDQi9rU1QyMTE4YW5iekhuUmd3NTl4bHQz?=
 =?utf-8?B?Ujd6MkVrS1RmcGNvMzdGTHZ2NkQ3R0dmQWZ6VmJkc0ozVk9HQzhjbDlSMHdL?=
 =?utf-8?B?MmF5WnJWaktoTTgvWEN6WGNYbnVUS09sVW1PNUIweUlBQ0lPRFNwRFNMMjg0?=
 =?utf-8?B?a09MM01tdkJ4TzR4cVo3akUvMjlKUDlXRGc4UW1Vd3FEc0hXaFhBYjF0UjNa?=
 =?utf-8?B?c2dCV21NWkpOTEcvcDArdmdkK2FHNFJTQ3dGekw3ZDlxeGh0UDA3NUd3ZjAw?=
 =?utf-8?B?OGFuUzlwS1dPM0ZoaG1BQy9UYWdQSEwrNUM4UG9wb3NIWWRCdE9QRGhRc3NC?=
 =?utf-8?B?ak9JL2Z3R3lmU0V6bmNsUVVMUzlRcXdjRm53UUx5V1hLdy9PTXRlU1lKZmoy?=
 =?utf-8?B?eHRIK1EwQWQzaXhZeDZIdFRpajluZlpzdFVBcGtqemcvR0dZTEcrdVFGNHJX?=
 =?utf-8?B?OTIzL2lCMkhRTjIrREMvNHRUbDl4YUdWbUcrRHhMUDVaSGNkd1U3V3BJWi8z?=
 =?utf-8?B?VXNLR3Qwd3ljZlVwNG44dzB6enRHeXhVVVRyZXFqWkNkQms0clVpQzJuN0NH?=
 =?utf-8?B?Z3BUTDFNKzVxeGxoMTYyT0ZnbHVGVThRRTFudUE4RXFyTHJHTTIvLzFjUnZ6?=
 =?utf-8?B?T3l6NlRGQkhGc2lnMkwvUTRlSlVUN1M3dXlwRStVZkQ0Y1BqNUhRdGsyK3hu?=
 =?utf-8?B?d3ZwZ3JrdWkwc3hSeHFxYm9hd1h6T3F4UnVYNTVQQVNyQ2g5bjBZWHNkWXVU?=
 =?utf-8?B?YlUwUERMWWFoeEtTd1FNcTNTazZac0NNS0dyejNVZ3NWMGt0aWZscDRkb1Rm?=
 =?utf-8?B?aTJaRHZ1UWhFejZENmhlcjAwaDRsTXRRT0I3aHRpMmszMkxycm1yOThzVFl6?=
 =?utf-8?B?eFZpL3NTNHJzWlFDc09JclBNRVdSRnNvSUtUampabUpNQlJMSTc1THphOHlD?=
 =?utf-8?B?eXNaOGFqZ0pta0V2alJ0M0N2c1FxLzBhVHQ3WVorc1JxL1hRQUdYTGxvTjdU?=
 =?utf-8?B?NlFoOFNtcmZnbVVLYnFoblVDZk94cm1mb1BPVnRhYXB6V2VmWWhFbjhndVNy?=
 =?utf-8?B?YW15VUNCS0RzS2ZrT2d2SjN5bFBpMGFrcmNqNElXdjJESmRiYlJXZ2JBUGQx?=
 =?utf-8?B?TEhUa2ZDUFhmUjYvQmdJSnNFMXpIdHFsWlFIZlk4MEs0TlNGWnZ0RndPSVd4?=
 =?utf-8?B?em0wdFlHQlpYbGh4azdpenUxbWNOUm80WjlGS2UxYzhHNVdqRTNtNmt3bjc2?=
 =?utf-8?B?RzR5ejBOdHpYUjJMb3piOGI5czNadkJaVFFlc3NMbkFFWHRYZWZsdFk1VVdi?=
 =?utf-8?B?cDRMdlRjZ2lkRk5xVENJSVRIUGlQaVI3emtrekZ0UnNhYjJ4NlJocW1pNzV0?=
 =?utf-8?B?M2hiNjErcUdSZEE3bWdreUtxcEFobVRKRkY3T0lxYnBJTWF5NE5Ic3Vubm00?=
 =?utf-8?B?NXc0b1R3VGhLdUlVUWZ2UkQ1VGdTeHc3VGVDdFdKNzdwc0dmOENCbFRHWjdX?=
 =?utf-8?B?SVBqcEZobkZNVGhMNVloRnNIa055MTJuTHNGd1ZYdEtxdUZGUHlaaU5XNXFz?=
 =?utf-8?B?blVrQlpZeEJiRjBHY2JLME10OFYzdWthQnFxdWNsTG5Td0lMcXJyeUE3S0dF?=
 =?utf-8?B?Q1lmY0ZkVnUyMlF0SE0vOXNJNVp5WGl4SG51cUg5bENUUE5HS0c5Z0JybWFW?=
 =?utf-8?Q?m2etDBRbdyNDTkZTur472n9Zy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eaf1951-2334-469f-1d0e-08da5e711736
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2022 10:28:23.9459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SbHg8zQcRHmY4MjnG6Vw2lMGnL2vNZtZ+UUQVSXw6jDoyEng/W556q36bZNBU4/B4nTLadSY0bt92h9KSSnZcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1834
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/kms_big_fb: trigger async
 flip with a dummy flip
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

PiBPbiA1LjcuMjAyMiAxMi40OSwgS2FydGhpayBCIFMgd3JvdGU6DQo+ID4gT24gNy81LzIwMjIg
MzowOCBQTSwgTXVydGh5LCBBcnVuIFIgd3JvdGU6DQo+ID4+PiBPbiA2LzI4LzIwMjIgNDozNCBQ
TSwgQXJ1biBSIE11cnRoeSB3cm90ZToNCj4gPj4+PiBJbiBvZGVyIHRvIHRyaWdnZXIgdGhlIGFz
eW5jIGZsaXAsIGEgZHVtbXkgZmxpcCBpcyByZXF1aXJlZCBhZnRlcg0KPiA+Pj4+IHN5bmMgZmxp
cCBzbyBhcyB0byB1cGRhdGUgdGhlIHdhdGVybWFya3MgZm9yIGFzeW5jIGluIEtNRCB3aGljaA0K
PiA+Pj4+IGhhcHBlbnMgYXMgcGFydCBvZiB0aGlzIGR1bW15IGZsaXAuIFRoZXJlYWZ0ZXIgYXN5
bmMgbWVtb3J5IHVwZGF0ZQ0KPiA+Pj4+IHdpbGwgYWN0IGFzIGEgdHJpZ2dlciByZWdpc3Rlci4N
Cj4gPj4+PiBDYXB0dXJpbmcgdGhlIENSQyBpcyBkb25lIGFmdGVyIHRoZSBhc3luYyBmbGlwIGFz
IGFzeW5jIGZsaXAgYXQNCj4gPj4+PiBzb21lIHRpbWVzIGNhbiBjb25zdW1lIGZhaXJseSBhIHZi
bGFuayBwZXJpb2QgdGltZS4NCj4gPj4+Pg0KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IEFydW4gUiBN
dXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiA+Pj4+IC0tLQ0KPiA+Pj4+IMKgwqAg
dGVzdHMvaTkxNS9rbXNfYmlnX2ZiLmMgfCAyOSArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0t
LQ0KPiA+Pj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0
aW9ucygtKQ0KPiA+Pj4+DQo+ID4+Pj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUva21zX2JpZ19m
Yi5jIGIvdGVzdHMvaTkxNS9rbXNfYmlnX2ZiLmMNCj4gPj4+PiBpbmRleA0KPiA+Pj4+IGQ1MGZk
ZTQ1Li42Y2FmM2MzMSAxMDA2NDQNCj4gPj4+PiAtLS0gYS90ZXN0cy9pOTE1L2ttc19iaWdfZmIu
Yw0KPiA+Pj4+ICsrKyBiL3Rlc3RzL2k5MTUva21zX2JpZ19mYi5jDQo+ID4+Pj4gQEAgLTQ2NSw3
ICs0NjUsNyBAQCBzdGF0aWMgYm9vbCB0ZXN0X3BpcGUoZGF0YV90ICpkYXRhKQ0KPiA+Pj4+IMKg
wqAgc3RhdGljIGJvb2wNCj4gPj4+PiDCoMKgIG1heF9od19zdHJpZGVfYXN5bmNfZmxpcF90ZXN0
KGRhdGFfdCAqZGF0YSkNCj4gPj4+PiDCoMKgIHsNCj4gPj4+PiAtwqDCoMKgIHVpbnQzMl90IHJl
dCwgc3RhcnRmcmFtZTsNCj4gPj4+PiArwqDCoMKgIHVpbnQzMl90IHJldCwgZnJhbWU7DQo+ID4+
Pj4gwqDCoMKgwqDCoMKgIGNvbnN0IHVpbnQzMl90IHcgPQ0KPiA+Pj4+IGRhdGEtPm91dHB1dC0+
Y29uZmlnLmRlZmF1bHRfbW9kZS5oZGlzcGxheSwNCj4gPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGggPSBkYXRhLT5vdXRwdXQtPmNvbmZpZy5kZWZhdWx0X21vZGUudmRp
c3BsYXk7DQo+ID4+Pj4gwqDCoMKgwqDCoMKgIGlndF9wbGFuZV90ICpwcmltYXJ5Ow0KPiA+Pj4+
IEBAIC01MTksNyArNTE5LDE5IEBAIG1heF9od19zdHJpZGVfYXN5bmNfZmxpcF90ZXN0KGRhdGFf
dCAqZGF0YSkNCj4gPj4+Pg0KPiA+Pj4gRFJNX01PREVfQVRPTUlDX0FMTE9XX01PREVTRVQsIE5V
TEwpOw0KPiA+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlndF93YWl0X2Zvcl92YmxhbmsoZGF0
YS0+ZHJtX2ZkLCBkYXRhLQ0KPiA+Pj4+IGRpc3BsYXkucGlwZXNbcHJpbWFyeS0+cGlwZS0+cGlw
ZV0uY3J0Y19vZmZzZXQpOw0KPiA+Pj4+IC3CoMKgwqDCoMKgwqDCoCBzdGFydGZyYW1lID0ga21z
dGVzdF9nZXRfdmJsYW5rKGRhdGEtPmRybV9mZCwgZGF0YS0+cGlwZSwNCj4gPj4+IDApICsgMTsN
Cj4gPj4+PiArwqDCoMKgwqDCoMKgwqAgLyoNCj4gPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIElu
IG9sZGVyIHBsYXRmb3JtcyAoPD0gR2VuMTApLCBhc3luYyBhZGRyZXNzIHVwZGF0ZSBiaXQNCj4g
Pj4+PiAraXMNCj4gPj4+IGRvdWJsZSBidWZmZXJlZC4NCj4gPj4+PiArwqDCoMKgwqDCoMKgwqDC
oCAqIFNvIGZsaXAgdGltZXN0YW1wIGNhbiBiZSB2ZXJpZmllZCBvbmx5IGZyb20gdGhlIHNlY29u
ZA0KPiA+Pj4+IGZsaXAuDQo+ID4+Pj4gK8KgwqDCoMKgwqDCoMKgwqAgKiBUaGUgZmlyc3QgYXN5
bmMgZmxpcCBqdXN0IGVuYWJsZXMgdGhlIGFzeW5jIGFkZHJlc3MgdXBkYXRlLg0KPiA+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgICogSW4gcGxhdGZvcm1zIGdyZWF0ZXIgdGhhbiBESVNQTEFZMTMgdGhl
IGZpcnN0IGFzeW5jDQo+ID4+Pj4gK2ZsaXANCj4gPj4+PiB3aWxsDQo+ID4+PiBiZSBkaXNjYXJk
ZWQNCj4gPj4+PiArwqDCoMKgwqDCoMKgwqDCoCAqIGluIG9yZGVyIHRvIGNoYW5nZSB0aGUgd2F0
ZXJtYXJrIGxldmVscyBhcyBwZXIgdGhlDQo+ID4+PiBvcHRpbWl6YXRpb24uIEhlbmNlIHRoZQ0K
PiA+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgICogc3Vic2VxdWVudCBhc3luYyBmbGlwcyB3aWxsIGFj
dHVhbGx5IGRvIHRoZQ0KPiA+Pj4+ICthc3luY2hyb25vdXMNCj4gPj4+IGZsaXBzLg0KPiA+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgICovDQo+ID4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldCA9IGRybU1v
ZGVQYWdlRmxpcChkYXRhLT5kcm1fZmQsIGRhdGEtPm91dHB1dC0NCj4gPj4+PiBjb25maWcuY3J0
Yy0+Y3J0Y19pZCwNCj4gPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkYXRhLT5iaWdfZmJfZmxpcFtpXS5mYl9pZCwNCj4gPj4+
PiArDQo+ID4+PiBEUk1fTU9ERV9QQUdFX0ZMSVBfQVNZTkMsIE5VTEwpOw0KPiA+Pj4+ICvCoMKg
wqDCoMKgwqDCoCBpZ3Rfd2FpdF9mb3JfdmJsYW5rKGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPj4+
PiBkaXNwbGF5LnBpcGVzW3ByaW1hcnktPnBpcGUtPnBpcGVdLmNydGNfb2Zmc2V0KTsNCj4gPj4+
PiArwqDCoMKgwqDCoMKgwqAgZnJhbWUgPSBrbXN0ZXN0X2dldF92YmxhbmsoZGF0YS0+ZHJtX2Zk
LCBkYXRhLT5waXBlLCAwKSArDQo+ID4+PiAxOw0KPiA+Pj4NCj4gPj4+IEhpLA0KPiA+Pj4NCj4g
Pj4+IFNob3VsZCB0aGlzIGJlIGFkZGVkIGluc2lkZSBhIGdlbiBjaGVjayBzaW1pbGFyIHRvIGtt
c19hc3luY19mbGlwcz8NCj4gPj4gWWVzIHNvcnJ5IG1pc3NlZCBpdCENCj4gPj4NCj4gPj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBmb3IgKGludCBqID0gMDsgaiA8IDI7IGorKykgew0KPiA+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG8gew0KPiA+Pj4+IEBAIC01MjgsMjMgKzU0
MCwyMCBAQCBtYXhfaHdfc3RyaWRlX2FzeW5jX2ZsaXBfdGVzdChkYXRhX3QNCj4gKmRhdGEpDQo+
ID4+Pj4NCj4gPj4+IERSTV9NT0RFX1BBR0VfRkxJUF9BU1lOQywgTlVMTCk7DQo+ID4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9IHdoaWxlIChyZXQgPT0gLUVCVVNZKTsNCj4gPj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlndF9hc3NlcnQocmV0ID09IDApOw0KPiA+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlndF9waXBlX2NyY19nZXRfZm9yX2ZyYW1lKGRh
dGEtPmRybV9mZCwgZGF0YS0NCj4gPj4+PiBwaXBlX2NyYywNCj4gPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZnJhbWUsICZjb21wYXJlX2NyYyk7DQo+
ID4+Pj4NCj4gPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcmFtZSA9IGttc3Rlc3RfZ2V0
X3ZibGFuayhkYXRhLT5kcm1fZmQsIGRhdGEtDQo+ID4+Pj4gcGlwZSwgMCkgKyAxOw0KPiA+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZG8gew0KPiA+Pj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBkcm1Nb2RlUGFnZUZsaXAoZGF0YS0+ZHJtX2Zk
LCBkYXRhLQ0KPiA+Pj4+IG91dHB1dC0+Y29uZmlnLmNydGMtPmNydGNfaWQsDQo+ID4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkYXRhLT5iaWdfZmIuZmJfaWQsDQo+ID4+Pj4NCj4gPj4+IERSTV9NT0RFX1BBR0VfRkxJ
UF9BU1lOQywgTlVMTCk7DQo+ID4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9IHdo
aWxlIChyZXQgPT0gLUVCVVNZKTsNCj4gPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGlndF9hc3NlcnQocmV0ID09IDApOw0KPiA+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGln
dF9waXBlX2NyY19nZXRfZm9yX2ZyYW1lKGRhdGEtPmRybV9mZCwgZGF0YS0NCj4gPj4+PiBwaXBl
X2NyYywNCj4gPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgZnJhbWUsICZhc3luY19jcmMpOw0KPiA+Pj4gV2Ugc2hvdWxkIGJlIG1vdmluZyB0aGlzIElN
SE8uIEJ5IHdhaXRpbmcgZm9yIHZibGFuayBhZnRlciBlYWNoDQo+ID4+PiBhc3luYyBmbGlwIHRv
IGNhcHR1cmUgQ1JDLCB3aGF0IGlzIHRoZSBpbnRlbmRlZCByZXN1bHQ/IFNlZW1zIHRvIGJlDQo+
ID4+PiBjb21wbGV0ZWx5IGNoYW5naW5nIHRoZSBleGlzdGluZyB0ZXN0IGxvZ2ljLg0KPiA+PiBX
ZSBhcmUgZ2V0dGluZyB0aGUgdmJsYW5rIGNvdW50IGFuZCBiYXNlZCBvbiB0aGF0IGdldHRpbmcg
dGhlIGNyYy4NCj4gPj4gTm93IHdlIGtub3cgZm9yIGFzeW5jIGZsaXAgYXQgY2VydGFpbiB0aW1l
cyBpdCBjYW4gY29uc3VtZSBhIHRpbWUNCj4gPj4gZXF1aXZhbGVudCB0byBhIHZibGFuayBwZXJp
b2QuIFNvIGluIHRob3NlIHNjZW5hcmlvcyBnZXR0aW5nIGNyYw0KPiA+PiBiYXNlZCBvbiB0aGUg
dmJsYW5rIGdvZXMgZm9yIGEgdG9zcy4gSGVuY2UgY2FwdHVyaW5nIHRoZSB2Ymxhbmsgc3RhcnQN
Cj4gPj4gdGltZSBzdGFtcCBhdCB0aGUgYmVnaW5uaW5nIG9mIGVhY2ggZmxpcC4NCj4gPg0KPiA+
IEhpLA0KPiA+DQo+ID4gQnV0IHdoYXQgaXMgdGhlIHRoZSByZWZlcmVuY2UgQ1JDIHdlJ3JlIGV4
cGVjdGluZz8gVGhlIG9yaWdpbmFsIGxvZ2ljDQo+ID4gaXMgZGVzaWduZWQgdG8gbWF0Y2ggb24g
b25lIGl0ZXJhdGlvbiBhbmQgbWlzbWF0Y2ggb24gdGhlIG5leHQgdXNpbmcgYQ0KPiA+IGNvbWJp
bmF0aW9uIG9mIGZiJ3MgYnkgdXNpbmcgYXN5bmMgZmxpcHMuIEJ1dCB3aXRoIHRoZXNlIGNoYW5n
ZXMgdGhhdA0KPiA+IHdob2xlIGxvZ2ljIGdvZXMgZm9yIGEgdG9zcz8NCj4gPg0KPiA+Pg0KPiA+
Pj4gQWxzbywgc2VlbXMgbGlrZSB3ZSBhcmUgb3ZlcndyaXRpbmcgdGhlIENSQyBjYXB0dXJlZCBm
b3IgaiA9IDAsIGFzDQo+ID4+PiBjb21wYXJpc29uIGlzIGRvbmUgb3V0c2lkZSB0aGlzIGxvb3Au
IElzIHRoaXMgZG9uZSBvbiBwdXJwb3NlPw0KPiA+PiBOb3cgd2l0aCB0aGUgY2hhbmdpbmcgdGhl
IHZibGFuayBzdGFydCBmcmFtZSBjYXB0dXJlIGJlaW5nIGFkZGVkDQo+ID4+IGJlZm9yZSB0aGUg
YXN5bmMgZmxpcCwgQ1JDIGNhbiBiZSBjYXB0dXJlZCBvdXRzaWRlIHRoZSBsb29wIGFzIHdlbGws
DQo+ID4+IGJ1dCBtYWtlcyBubyBzZW5zZS4gVG8gbWFpbnRhaW4gdGhpcyBvcmRlciBtb3Zpbmcg
dGhlIENSQyBDYXB0dXJlDQo+ID4+IGFsc28gYWZ0ZXIgZWFjaCBmcmFtZS4NCj4gPg0KPiA+IFRo
ZSBDUkMgY29tcGFyaXNvbiBpcyBzdGlsbCBvdXRzaWRlIHRoZSBsb29wLCBzbyBubyBwb2ludCBj
YXB0dXJpbmcNCj4gPiBDUkMncyBpZiB3ZSBmaW5hbGx5IGRpc2NhcmQgaXQgYW55d2F5Pw0KPiA+
DQo+IA0KPiBJIHRoaW5rIGdlbmVyYWxseSB0aGUgaWRlYSBBcnVuIGlzIGNoYW5naW5nIGlzIGNv
cnJlY3QgYnV0IGhlJ3MgbWlzc2VkIGhvdyB0aGUNCj4gdGVzdCB3b3JrLg0KPiANCj4gSSBzZWUg
dGhlcmUncyBWaWxsZSdzIGNoYW5nZSBvbiBrZXJuZWwgc2lkZSBmb3IgZGlzcGxheV92ZXIgPj0x
MyBmaXJzdCBhc3luY19mbGlwDQo+IGlzIHVuY29uZGl0aW9uYWxseSAoaW50ZW50aW9uYWxseSkg
bWlzc2VkLCB0aGlzIGlzIGF0DQo+IGludGVsX3BsYW5lX2RvX2FzeW5jX2ZsaXAoLi4pIHNvIHRo
aXMgdGVzdCB3aWxsIG5lZWQgYWRqdXN0bWVudA0KPiANCj4gV2hhdCBBcnVuIHNlZW0gdG8gaGF2
ZSBtaXNzZWQgaXMgb24gdGVzdCB0aG9zZSBuZXN0ZWQgbG9vcHMgaG93IHRoZXkNCj4gd29yaywg
dGhhdCBwYXJ0IHByb2JhYmx5IHNob3VsZCd2ZSBvcmlnaW5hbGx5IGJlZW4gY29tbWVudGVkIGlu
IGNvZGUgYml0DQo+IGJldHRlci4NCj4gDQo+IE9uIG9yaWdpbmFsIGNvZGUgdGhlcmUncyBhZnRl
ciBsb29wIGZvciBqIHR3byB0aW1lDQo+IGlndF9waXBlX2NyY19nZXRfZm9yX2ZyYW1lKC4uKSwg
Zmlyc3Qgd2lsbCBjYXB0dXJlIGNyYyBmcm9tIGR1cmF0aW9uIG9mIGxvb3Agb2YNCj4gaiwgc2Vj
b25kIHdpbGwgKndhaXQqIGFuZCBjYXB0dXJlIGN1cnJlbnQgY3JjIHdoaWxlIHRoZXJlJ3MgZnJh
bWVidWZmZXINCj4gImJpZ19mYiIgb24gc2NyZWVuICh3YWl0IGlzIGFib3V0IDEsNSBmcmFtZXMp
LiBJbnNpZGUgaiBsb29wLCBhZ2FpbnN0IGkgaXMgYXN5bmMNCj4gZmxpcHBlZCB3aXRoIGZiIGZy
b20gImJpZ19mYl9mbGlwW2ldIiB3aGVyZSBvbmUgb25lIGZiIGxvb2sgZXhhY3RseSBsaWtlDQo+
ICJiaWdfZmIiIGFuZCBjaGVjayB3aXRoIHRoaXMgY3JjIGRvZXNuJ3QgY2hhbmdlIHdoZW4gZmxp
cCB3aXRoIHNhbWUgY29udGVudC4NCj4gVGhlbiBhbm90aGVyICJiaWdfZmJfZmxpcFtpXSIgaXMg
Z3JlZW4gY29sb3IgYW5kIGNoZWNrIGNyYyB3aWxsIGNoYW5nZS4NCj4gDQo+IE5vdyB3aGVuIGlu
c2lkZSAiaiIgbG9vcCBBcnVuIGFkZGVkIGlndF9waXBlX2NyY19nZXRfZm9yX2ZyYW1lKC4uKSB0
aGlzIHRlc3QNCj4gYmVjb21lcyBjb21wbGV0ZWx5IGRpZmZlcmVudCBiZWNhdXNlIGFzeW5jIGZs
aXBwaW5nIG5vIG1vcmUgaXMgdGVzdGVkIGRvDQo+IHBlcmZvcm0gYmFjayduJ2ZvcnRoIGZsaXBw
aW5nLg0KPiANCg0KVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzIEpQLCBhdGxlYXN0IGl0cyBjbGVh
ciB0aGF0IHRoaXMgZml4IGlzIHJlcXVpcmVkLiBCdXQgYXMgY29tbWVudGVkDQpJIGFtIG5vdCBh
d2FyZSBvZiB0aGUgY29uY2VwdCBiZWhpbmQgdGhpcyB0ZXN0LCBJdCB3b3VsZCBiZSBiZXR0ZXIg
aWYgc29tZW9uZSBjYW4gdGFrZSB1cCB0aGlzDQpmaXggYW5kIGNvcnJlY3QgdGhlIENSQyBjYXB0
dXJlIHNlcXVlbmNlIGFzIHdlbGwuDQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0
aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo=
