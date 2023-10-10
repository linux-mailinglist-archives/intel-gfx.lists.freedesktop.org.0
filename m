Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A735C7C4309
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 23:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38EAD10E3E9;
	Tue, 10 Oct 2023 21:59:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2377010E3E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 21:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696975190; x=1728511190;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=046klyLii+eHvg3rjDIRubf/m7LIdfUO2eDQUqvP0Rc=;
 b=afKcKBRqHmgt26FwYaAP4Yc0XAgWWJXHrhacjkIOOnfl/i+8KO7kW0DJ
 vksOLvpZkfIcK5XRYPPCBnmuN4kwwu8nLcQK5W0inU8pk41kaJqJlZqrT
 yGrr/zFrq2NECHDJLBHDAWd9MCD5rkNZeQZjY1ddO6j6MnGmES9NwJLo3
 ajFm5KULMOHegOTF61+AJOjlRKtJECCG/woJN/PD8qO4LFNleNv1KeTVh
 p7b2erDl0OUaFq9ySdTWy3QWW2YIg546smDNMVIMndSwzi+uktVbgRiEP
 ZWNbE8j0Wr02IDmCBDnJJZt6goqxzi+Dy1MjHtMbzFbLg84jta7PslQsW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383383207"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="383383207"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 14:59:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000847743"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="1000847743"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 14:59:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 14:59:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 14:59:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 14:59:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0qMsoLpS6MJWokgBeqWIBV4Hvgp3pXyecatTZsfoUyuZ1f2vQrdjMjddlWoaNXmY5x1L9fxlyxlpS4IgszdpZlFN2DJ/Pqz7jotz9EJSIfM00F00Gw93QH0Cn/UV7KexaHUV1RCA+qSBiK8nORWiQzM0V3sSBitIsFOoUGToWY7B1sXgFey2M4C2yQQvkwjgyvdczYViJOi01ar8qvXRu4qP/GgEmNaXeEjX0Ik9H8fqpJrjd++Au+ioM4ABJUI5ci0zjk1u1kO0cGiC7MHbrW5Z+EI7DJGkUFpDwmqxUIWeloDKXOXeCv++wPsix+mR3qYHevW8Jj14rz3jXZQHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=046klyLii+eHvg3rjDIRubf/m7LIdfUO2eDQUqvP0Rc=;
 b=W02RyahPO/n0VWnjFI7lSwxZ9cy5blY5EAOjDmpW8U33XmhsEfu6f4YCkevF4eAnWFDbelcXmHNQaxWV3UptFAXwMTmJPBRk9xzg+r7xd82YdWd/WxlSHDH4BEzSQEtU4T3G3XUVxY3NGuPl4uJjHD873lYdi52VUK6y2b6oIyofzcJmMuzKyjhWjQ93Ia8KUVgWpBIvdZ6fQxlMXTOYvuev7ynFrHTGKT+XynSZtspeC1+aSRles/ikBOLtVpAEa1Qyds152mj6gLYYjGYcVxd+HBkG60l8XVUAXujJ6FHKlnH3VelT1yL8nVEzTq5NEj4p8P3D0naz/2fo4RmHkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SN7PR11MB7437.namprd11.prod.outlook.com (2603:10b6:806:348::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 21:59:47 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::9de7:e579:f8d8:8329%4]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 21:59:46 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v10 4/7] drm/i915: No TLB invalidation on suspended GT
Thread-Index: AQHZ+4xacfEqkwRMFECWpoy+Wjak17BDkkyAgAAAnkA=
Date: Tue, 10 Oct 2023 21:59:46 +0000
Message-ID: <CH0PR11MB544454E5285ECF870F9A61B8E5CDA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20231010150244.2021420-1-jonathan.cavitt@intel.com>
 <20231010150244.2021420-5-jonathan.cavitt@intel.com>
 <f9f43e11-b6bb-4caa-ba2f-954289ccc7a1@intel.com>
In-Reply-To: <f9f43e11-b6bb-4caa-ba2f-954289ccc7a1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SN7PR11MB7437:EE_
x-ms-office365-filtering-correlation-id: 0fa196d4-2930-417f-a307-08dbc9dc379b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3Pt06UQfemXSRM5qOTRtoV8liCQLMffwMNhCiVkJwfEX80KMBoVHMc3oFqvzKi7eNwRTjspx60CaCp7OjQM08xtcooJO0Hp3EbnN8qmc89bwZQjyaTypF1LIzV7dtJbZ+B7wAOhPeV5hHaWe24X6oHEtzhARc+88Xq2qN9kMKvn6Wk6EU+3JuMMtiGhgoHNOONJH/R5ahLJzfLaSF+GgeP26yI32Dg4gYKL7+bVv+39s3OlRiJ5jPqy1boJT6v1EQ5WpDLtag3nZ6ruDwqS7u4Et/9WZy/WetgZl4ctW7t537P0OqUQvAFdLNO4kR9ecpnHhdeSzTRjq0/Lr032/TrQw0lGnFJ1N9cpRaxfSS5Jz1PWcBTZDFGVL7V1CI2qpJEiL8Otqj8ixWqj+XPdsrTZxCmmEzMC4LY3Tigkju3ETk0EUU/zreZ/uggWQDTOLITy7zMZY/DpLNIRpU7jNFDIdPHANkm4TlAXVWoeO3UmD/Ym3NyDiJmj40qTVf/GCEyE3Ly2txfVzc/u15M6b1hgK2FeHD6Kl8y41iVG9s6P1b4CksPrSk76YFIZsM/YS0oIt2SXX8SXRbPP4Rktpzt/qZpkiURNjtCHKxPR8puinpZPlQQ19lmY1qFGM17mu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(396003)(366004)(39860400002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(15650500001)(55016003)(71200400001)(478600001)(82960400001)(26005)(38070700005)(83380400001)(122000001)(9686003)(7696005)(6506007)(53546011)(33656002)(2906002)(86362001)(38100700002)(5660300002)(41300700001)(66946007)(66446008)(66476007)(110136005)(316002)(64756008)(54906003)(52536014)(8676002)(8936002)(4326008)(76116006)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czFkSEdzRUk4TVlzYlFGdkxxZkUrY0ZsdVBCNk5Sb29Gd2NBbytVakFUU2di?=
 =?utf-8?B?T2JaVmFoMW1lNWZXU3ZlWDNncEtjSUJZeHZsTytNNEJYY09vNHFyZWlWSytv?=
 =?utf-8?B?THhHbjRaelN5b09Ia0NyUEU4dEc1Y0lydWxHZkI3ZU1oYnY4MW1jYnBRNDlk?=
 =?utf-8?B?azJYSjhRaFMwZkF6OEM1WTZmN2tqTjFYdGpOVEYxc2Uyb1oyZWZMTEFOWnpz?=
 =?utf-8?B?ZlplRm16SmxCMlpkeENmREhEQzJrRVRPSTJieGVXTmRWRzFaYitIVGhYU1pY?=
 =?utf-8?B?RjdFYXpPczF0NmUvMzRmSDRoVkNmNlo3TUEzdXV4WVA0WmZidHFtMXduaDls?=
 =?utf-8?B?QVkvZjFuVURpa1RaQzBoNTAvWjZhMEhxKzBoSjgvejY0TUxQbzRtZG5lVGNW?=
 =?utf-8?B?cXRVTlpQWHJCOUlwSTZhRXA4SmhtZ3V4bGFFRmxMM2xVa1lEY1pNVGZhbHV4?=
 =?utf-8?B?Wjg5aFdldFNEYlpVU2tyK1J2NUp6SVpKYmpkK3A3djh5aXJGalFsY0JtWHYw?=
 =?utf-8?B?bVBQd0QvTi9rWWhXeFROVXZmQTUvT0dvaXc5aGd5MFo1cU5ZSGNTS3JZWk9s?=
 =?utf-8?B?bXdQWS9yOU5kbTZKa1lMVWsrUWd0MGppV01aMEg0d0RzVkhBV3dCOUgyUkRO?=
 =?utf-8?B?OWRVS0lqelhIeTd4TXRxR084VEExWko3ckJCU3RXbmJCcGNKZllRczFiWjA3?=
 =?utf-8?B?OFJZcUk3UGFaWmZ4b2NyYld5eDNpeVVjeXNhU0d5Y3dhMjdjZytSSzhVbDZn?=
 =?utf-8?B?TVpkdVplTFg2aXdmNFVPck1LRUJlRFErMDNxcTc1YkdhdzNueEt3UmM4dnRK?=
 =?utf-8?B?SHZaaHN0cy9zekJJK2ZIQ1E0QlI1cTRoS2tnZGd0a3BTTXBiTmtxeXM1b3RX?=
 =?utf-8?B?NmZDbWFHcHVBZFB2NlkwVlZWRmVjcmZyY0YzOHNFODRBZ3ZGaXVMNUtjYWJu?=
 =?utf-8?B?YzRCNnQzSnRZTVB6WVJsVkFHTXQzSjhUZG1SWWc5NXo2b3l5dG5kMFRLOUlV?=
 =?utf-8?B?cG5zYS83Y2ZvakZTeGdSNU9BTUlZdzBmWHVwZUVPc29TRHlydDBxSFpjVGth?=
 =?utf-8?B?blB1R0loUTRLTUg1bzFMZmt0dlZWNTN0SGN3TWVYVjdOOXE5TkdkNm1BWi9C?=
 =?utf-8?B?b2h6ZThvNDdnU0hXNWNHaW5hK29nL2c4dStNZXRSWGhTZHV1TUJWK3R1bG1T?=
 =?utf-8?B?aXNEY2wrakJNaXZJWUN1a0NmSk45YTgzRkRzdmhwTFFtcUIvUXY5SlpzZnNm?=
 =?utf-8?B?SWQ3VFl2bTE2MWlZdGJFdWt4d3FGSmdIMXlxc0dFYzVzdEI3YXFMdW8vYklF?=
 =?utf-8?B?RHFyRmswMUFwQW1lcm5tbk83M0wzMFBCZFVrTCtSRnM3eHB2a2g4UU1SK0R1?=
 =?utf-8?B?bnNqTmVzZmMwWVBxcUZrblpneHdZeHhQWUpYYllaemJ0OGNMazFxbEtpeUo4?=
 =?utf-8?B?YXUvR2FnbEI0clV4Vm51V0NuL0VOZVhHdTZZS0Y0TEZzMVg0ZXR0Qlgxb21w?=
 =?utf-8?B?KzlwV21ua3ZZZ3Zhc2JldDBZcVVHNEw5cWJKQVVxcjBsd0lwNUZkMVpxeTBZ?=
 =?utf-8?B?eUtWcmhneUVCdnJMbGx4RzZSZXoydU9GK0J6dTZhK3Y3bDlPZDVNRUw1cjlj?=
 =?utf-8?B?dkVoQTRpeVVicVVmUDJuUk9HU2I0ME41dmRTSTVCZHRTNTR4RHV0RTIrdVRH?=
 =?utf-8?B?QkQ3NWd6c3ZjeFZXaG0vNFJ6VkQvSVdNdFZCU2h5NitGYlQ1b1orcHpFK2VE?=
 =?utf-8?B?WlRJbGZLQ3M1UzUwd0lUT0tRMlp2OEdSbEVsbVpsMm1PK1JWZUM2MEZhR3lk?=
 =?utf-8?B?eFVzbXI3RXhoTENGZVNnRlUyd3djcUwvbXdjWnlsekdkL0pJWVd4WWhMN0Rz?=
 =?utf-8?B?UVhrZnY0dGdaUHdQSlA5OWtWalRZOG52ZXNEUThublhwem1GQ1FTbldlOERW?=
 =?utf-8?B?VU1TcGV3bmNFWXlsUUptR1dIbWhTVWJNZVFGWTlwc2Z1WHlFZ2RTeU5jbUY2?=
 =?utf-8?B?TWZ3R3NVN0tqTEFQSytJaktqcGU5NXVaenJGNVY5bmVGQlpXL0x2UFVoN3V6?=
 =?utf-8?B?OVFsOGJ0VUlXYW1LaEE0OWtIZmVINDNJZHZkUmlUM1h3VVY0cVkyUjdRUWhD?=
 =?utf-8?Q?bNYvZQn/nYyQhf9mILP6BSTOW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fa196d4-2930-417f-a307-08dbc9dc379b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 21:59:46.5816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TeyR7HATvN8xRDvJg8nK5ksVOVpKCzSfeydsayDbTdBFr44U1zzklgSR0jqO+3FCuamUdg3bVJ1Y+zggEduuNdaSkBoSPvo8t/CJm1X4BnY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7437
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>, "Das,
 Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEhhcnJpc29uLCBKb2huIEMgPGpvaG4u
Yy5oYXJyaXNvbkBpbnRlbC5jb20+IA0KU2VudDogVHVlc2RheSwgT2N0b2JlciAxMCwgMjAyMyAy
OjU3IFBNDQpUbzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT47
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBHdXB0YSwgc2F1cmFiaGcgPHNh
dXJhYmhnLmd1cHRhQGludGVsLmNvbT47IGNocmlzLnAud2lsc29uQGxpbnV4LmludGVsLmNvbTsg
SWRkYW1zZXR0eSwgQXJhdmluZCA8YXJhdmluZC5pZGRhbXNldHR5QGludGVsLmNvbT47IFlhbmcs
IEZlaSA8ZmVpLnlhbmdAaW50ZWwuY29tPjsgU2h5dGksIEFuZGkgPGFuZGkuc2h5dGlAaW50ZWwu
Y29tPjsgRGFzLCBOaXJtb3kgPG5pcm1veS5kYXNAaW50ZWwuY29tPjsgS3J6eXN6dG9maWssIEph
bnVzeiA8amFudXN6LmtyenlzenRvZmlrQGludGVsLmNvbT47IFJvcGVyLCBNYXR0aGV3IEQgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+OyB0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb207
IGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbQ0KU3ViamVjdDogUmU6IFtQQVRDSCB2MTAgNC83
XSBkcm0vaTkxNTogTm8gVExCIGludmFsaWRhdGlvbiBvbiBzdXNwZW5kZWQgR1QNCj4gDQo+IE9u
IDEwLzEwLzIwMjMgMDg6MDIsIEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4gPiBJbiBjYXNlIG9m
IEdUIGlzIHN1c3BlbmRlZCwgZG9uJ3QgYWxsb3cgc3VibWlzc2lvbiBvZiBuZXcgVExCIGludmFs
aWRhdGlvbg0KPiA+IHJlcXVlc3QgYW5kIGNhbmNlbCBhbGwgcGVuZGluZyByZXF1ZXN0cy4gVGhl
IFRMQiBlbnRyaWVzIHdpbGwgYmUNCj4gPiBpbnZhbGlkYXRlZCBlaXRoZXIgZHVyaW5nIEd1QyBy
ZWxvYWQgb3Igb24gc3lzdGVtIHJlc3VtZS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEZlaSBZ
YW5nIDxmZWkueWFuZ0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gQ2F2
aXR0IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KPiA+IENDOiBKb2huIEhhcnJpc29uIDxq
b2huLmMuaGFycmlzb25AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggICAgICAgIHwgIDEgKw0KPiA+ICAgLi4uL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgMjEgKysrKysrKysrKysrKy0tLS0t
LQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwg
IDcgKysrKysrKw0KPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgN
Cj4gPiBpbmRleCAwNmM0NGY1YzI4Nzc2Li5mZjdlN2I5MGZkNDliIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmgNCj4gPiBAQCAtNTM2LDQgKzUzNiw1IEBA
IHZvaWQgaW50ZWxfZ3VjX2R1bXBfdGltZV9pbmZvKHN0cnVjdCBpbnRlbF9ndWMgKmd1Yywgc3Ry
dWN0IGRybV9wcmludGVyICpwKTsNCj4gPiAgIA0KPiA+ICAgaW50IGludGVsX2d1Y19zY2hlZF9k
aXNhYmxlX2d1Y2lkX3RocmVzaG9sZF9tYXgoc3RydWN0IGludGVsX2d1YyAqZ3VjKTsNCj4gPiAg
IA0KPiA+ICt2b2lkIHdha2VfdXBfYWxsX3RsYl9pbnZhbGlkYXRlKHN0cnVjdCBpbnRlbF9ndWMg
Kmd1Yyk7DQo+ID4gICAjZW5kaWYNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gPiBpbmRleCBlOTg1NDY1MmMyYjUyLi5iOWMx
NjhlYTU3MjcwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19zdWJtaXNzaW9uLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jDQo+ID4gQEAgLTE3OTYsMTMgKzE3OTYsMjUgQEAgc3Rh
dGljIHZvaWQgX19ndWNfcmVzZXRfY29udGV4dChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsIGlu
dGVsX2VuZ2luZV9tYXNrX3Qgc3QNCj4gPiAgIAlpbnRlbF9jb250ZXh0X3B1dChwYXJlbnQpOw0K
PiA+ICAgfQ0KPiA+ICAgDQo+ID4gLXZvaWQgaW50ZWxfZ3VjX3N1Ym1pc3Npb25fcmVzZXQoc3Ry
dWN0IGludGVsX2d1YyAqZ3VjLCBpbnRlbF9lbmdpbmVfbWFza190IHN0YWxsZWQpDQo+ID4gK3Zv
aWQgd2FrZV91cF9hbGxfdGxiX2ludmFsaWRhdGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQ0KPiA+
ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9ndWNfdGxiX3dhaXQgKndhaXQ7DQo+ID4gKwl1bnNp
Z25lZCBsb25nIGk7DQo+ID4gKw0KPiA+ICsJaWYgKCFIQVNfR1VDX1RMQl9JTlZBTElEQVRJT04o
Z3VjX3RvX2d0KGd1YyktPmk5MTUpKQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwl4YV9s
b2NrX2lycSgmZ3VjLT50bGJfbG9va3VwKTsNCj4gPiArCXhhX2Zvcl9lYWNoKCZndWMtPnRsYl9s
b29rdXAsIGksIHdhaXQpDQo+ID4gKwkJd2FrZV91cCgmd2FpdC0+d3EpOw0KPiA+ICsJeGFfdW5s
b2NrX2lycSgmZ3VjLT50bGJfbG9va3VwKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiArdm9pZCBpbnRl
bF9ndWNfc3VibWlzc2lvbl9yZXNldChzdHJ1Y3QgaW50ZWxfZ3VjICpndWMsIGludGVsX2VuZ2lu
ZV9tYXNrX3Qgc3RhbGxlZCkNCj4gV2hhdCBpcyBjaGFuZ2VkIG9uIHRoaXMgbGluZT8gT3IgaXMg
aXQganVzdCBkaWZmIGJlaW5nIGNvbmZ1c2VkIGFuZCANCj4gc2VlaW5nIHRoZSBtb3ZlIG9mIHRo
ZSAnd2FpdCcgZGVjbGFyYXRpb24gYXMgYmVpbmcgdGhlIGFuY2hvciBwb2ludCANCj4gcmF0aGVy
IHRoYW4gdGhlIGZ1bmN0aW9uIGRlY2xhcmF0aW9uPw0KDQpJdCdzIHRoZSBsYXR0ZXIsIHllcy4g
IERpZmYgaXMgY29uZnVzZWQuDQotSm9uYXRoYW4gQ2F2aXR0DQoNCj4gDQo+IEpvaG4uDQo+IA0K
PiANCj4gPiArew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsNCj4gPiAgIAl1bnNp
Z25lZCBsb25nIGluZGV4Ow0KPiA+ICAgCXVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+ID4gLQl1bnNp
Z25lZCBsb25nIGk7DQo+ID4gICANCj4gPiAgIAlpZiAodW5saWtlbHkoIWd1Y19zdWJtaXNzaW9u
X2luaXRpYWxpemVkKGd1YykpKSB7DQo+ID4gICAJCS8qIFJlc2V0IGNhbGxlZCBkdXJpbmcgZHJp
dmVyIGxvYWQ/IEd1QyBub3QgeWV0IGluaXRpYWxpc2VkISAqLw0KPiA+IEBAIC0xODMzLDEwICsx
ODQ1LDcgQEAgdm9pZCBpbnRlbF9ndWNfc3VibWlzc2lvbl9yZXNldChzdHJ1Y3QgaW50ZWxfZ3Vj
ICpndWMsIGludGVsX2VuZ2luZV9tYXNrX3Qgc3RhbGwNCj4gPiAgIAkgKiBUaGUgZnVsbCBHVCBy
ZXNldCB3aWxsIGhhdmUgY2xlYXJlZCB0aGUgVExCIGNhY2hlcyBhbmQgZmx1c2hlZCB0aGUNCj4g
PiAgIAkgKiBHMkggbWVzc2FnZSBxdWV1ZTsgd2UgY2FuIHJlbGVhc2UgYWxsIHRoZSBibG9ja2Vk
IHdhaXRlcnMuDQo+ID4gICAJICovDQo+ID4gLQl4YV9sb2NrX2lycSgmZ3VjLT50bGJfbG9va3Vw
KTsNCj4gPiAtCXhhX2Zvcl9lYWNoKCZndWMtPnRsYl9sb29rdXAsIGksIHdhaXQpDQo+ID4gLQkJ
d2FrZV91cCgmd2FpdC0+d3EpOw0KPiA+IC0JeGFfdW5sb2NrX2lycSgmZ3VjLT50bGJfbG9va3Vw
KTsNCj4gPiArCXdha2VfdXBfYWxsX3RsYl9pbnZhbGlkYXRlKGd1Yyk7DQo+ID4gICB9DQo+ID4g
ICANCj4gPiAgIHN0YXRpYyB2b2lkIGd1Y19jYW5jZWxfY29udGV4dF9yZXF1ZXN0cyhzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UpDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5j
DQo+ID4gaW5kZXggOThiMTAzMzc1YjdhYi4uNzUwY2I2MzUwM2RkNyAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYw0KPiA+IEBAIC02ODgsNiArNjg4LDggQEAg
dm9pZCBpbnRlbF91Y19zdXNwZW5kKHN0cnVjdCBpbnRlbF91YyAqdWMpDQo+ID4gICAJLyogZmx1
c2ggdGhlIEdTQyB3b3JrZXIgKi8NCj4gPiAgIAlpbnRlbF9nc2NfdWNfZmx1c2hfd29yaygmdWMt
PmdzYyk7DQo+ID4gICANCj4gPiArCXdha2VfdXBfYWxsX3RsYl9pbnZhbGlkYXRlKGd1Yyk7DQo+
ID4gKw0KPiA+ICAgCWlmICghaW50ZWxfZ3VjX2lzX3JlYWR5KGd1YykpIHsNCj4gPiAgIAkJZ3Vj
LT5pbnRlcnJ1cHRzLmVuYWJsZWQgPSBmYWxzZTsNCj4gPiAgIAkJcmV0dXJuOw0KPiA+IEBAIC03
MzYsNiArNzM4LDExIEBAIHN0YXRpYyBpbnQgX191Y19yZXN1bWUoc3RydWN0IGludGVsX3VjICp1
YywgYm9vbCBlbmFibGVfY29tbXVuaWNhdGlvbikNCj4gPiAgIA0KPiA+ICAgCWludGVsX2dzY191
Y19yZXN1bWUoJnVjLT5nc2MpOw0KPiA+ICAgDQo+ID4gKwlpZiAoSEFTX0dVQ19UTEJfSU5WQUxJ
REFUSU9OKGd0LT5pOTE1KSkgew0KPiA+ICsJCWludGVsX2d1Y19pbnZhbGlkYXRlX3RsYl9lbmdp
bmVzKGd1Yyk7DQo+ID4gKwkJaW50ZWxfZ3VjX2ludmFsaWRhdGVfdGxiX2d1YyhndWMpOw0KPiA+
ICsJfQ0KPiA+ICsNCj4gPiAgIAlyZXR1cm4gMDsNCj4gPiAgIH0NCj4gPiAgIA0KPiANCj4gDQo=
