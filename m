Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AC6808547
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 11:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5FA110E1FB;
	Thu,  7 Dec 2023 10:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD04910E84E;
 Thu,  7 Dec 2023 10:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701944155; x=1733480155;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=sbEkax/+rDpwW+ax4jC41fOzAQ3kRIkPYv9PBhlR1jo=;
 b=QCsCGHWuSCuslc8r58oSs/2xba6LuzGM4HKEGNtkde3nprH/Jqw5mtLy
 lKyqPkl6YQV6S74x+ZulWyg4h1hYhDCW2AXz5NMx0/wBN3qA8AGH01Ex6
 vJRIKtt47uIiodPO7Ka6eZjjHZOAcjiE/oXDJyNtbPZiaQpks8CO/A4t2
 abefOwLyntB83/zVUwNDNPFTVezssjdRxmeP8CtE5ZV/QOq/Fhir5J4NR
 +LDZEz0lVg6fEctN15/7yWpXU3DgMgXwQjI19BhNZ19T4kcAF1o6tlfXZ
 AtghPHz1BFJ2VY6K51vmp3q/AZ7UQWkYmjFg8sek29ACpVtvAVtLSFEZj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="393078282"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="393078282"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 02:15:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="895084867"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="895084867"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 02:15:53 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 02:15:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 02:15:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 02:15:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 02:15:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aY7wCHoh5gobpIoAnZiIhMJBCakki/C0ckq30GB7LYSgjvoA2COuPZ4YX/Yic23vH9vvvlc8z2ZeC58BIfHZ5KN+o2MpbmnRgLLIye9BCs5/a43niBL/3EunRygboP3zgOcFnM8I+nLABdR/3lm9d+JmDMOxxnmOBnO8dwwoyA6zkpfTSZaHbSHsCjspXdW31iNcz5KbaZtoyZHHHDjnXuIJRQZvuxuiBU2R3DCQ9Hb6KklimiIDwKpXirlX3t6HXYxulaydfwj3/MFnDGmsy+hsI/KG11YN65lMqn4Vp2pmhJmRgp2fCp1AxHxyWPhYKKX/l6+DhNzNqzbYk1xJXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbEkax/+rDpwW+ax4jC41fOzAQ3kRIkPYv9PBhlR1jo=;
 b=ezhg9ARXNGMW+hvHoM3Tukh54uld329TToKT7ITkHQVs0W8rmrd2q+fCnKcUJmPBZiufUE7AUyzhD8ZK7ha0zkbH9/DCNr8+MOff5Oekl/kVaQ7ndWtkh1LeQmnvd8WyJle2tW8WYPRlnU9XetR/VrS9dRSVXmJjimyGXV6j5i9SpK20rRhC+v++PylOaSJDCadh0KBY6gqZJTMHG68WyF7AblnKWTlhVsrROjoD0/NAp2S7MDmKX7aVc4X8rOVagJZygvVYH6D1roPz1I51I2eg/kRMlEzNsIbOK9E8dHftV3HX9f+IYeGjWCb7xh1a8xzWVy0CH/qi5t17V5JONg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW3PR11MB4588.namprd11.prod.outlook.com (2603:10b6:303:54::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.27; Thu, 7 Dec 2023 10:15:47 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 10:15:47 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Subject: Re: [Intel-xe] [Intel-gfx] [PATCH v7] drm/i915: handle uncore
 spinlock when not available
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH v7] drm/i915: handle uncore
 spinlock when not available
Thread-Index: AQHaJD1nrlEkbEHWek2sMOYpaI+a+LCdhTCAgAASd4CAAAyMgA==
Date: Thu, 7 Dec 2023 10:15:47 +0000
Message-ID: <453db3046eb434d8860479e1c35c8548b578870a.camel@intel.com>
References: <20231201100032.1367589-1-luciano.coelho@intel.com>
 <804a8a8ea0f69fc6dc7bad571ee30fc774cdbdd4.camel@intel.com>
 <1f378d699c11cbc577d7843fc4277681b3aa8c49.camel@intel.com>
In-Reply-To: <1f378d699c11cbc577d7843fc4277681b3aa8c49.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW3PR11MB4588:EE_
x-ms-office365-filtering-correlation-id: 7f1e9dae-b030-4050-41a5-08dbf70d7b06
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ur9Xgp57ivF8couP9v32qaCcb+CqLMiaY9BUEjFLxnF/otbrLB26BPHz4u53kQT5+2Ec9IA3rVUlWpuCD4/JlIz9bjYJSJD4I0sQEz3GddIQt0A7XSOTy9rgxlWDU4Qo4hrNwGg5zPV2scZi5h5WbpVGQy7IGWzBLcuaOPda8CgwtDg+OeuN09VmvE/f2aitenjilU9Py0roCfxUuL8YZJ0GvKoDkca1KGLN9Zu0zvbh+qz+BIsqez0yLX8tBU1skC9+TPGTEddOAOH/0fsmHM1B7uEUOrZUIEFCDVanjN58oFQHW1uBHE/NxJfUbxjZ/DJ/E0dq+PLvX+/FaNBDF0BCcsohChMysIQ/m8fl5fx1ouOmmHv0qR1XAnFc+9nVG12Y58qzkId1fuWoUMvSGYvGva1zEwxHqeMck5+qCGfKnil2sWDfW5tLXK4h9iZ6cwkFNqL39NIOBrbn/avMSDM0G3YXKzZWKiptCOFZetzu1AocMFd4O4rEiir+iayMNCYXVR92ynyli7cddGXlePljZ7AGkoTe5PjEO06Hlax1Bstx7ymW1qSzBil5+c6BJZKmbV5unc/fx3Pf3zCRE+314EkhVlOlmIfqk82IPIlJ3J9FKxCa5eADCOFMYho1YI0l/nAJ1WrL2RidkMxalp74c/TxMN28azFHjnlyeTQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(366004)(346002)(136003)(230922051799003)(230273577357003)(230173577357003)(1800799012)(451199024)(64100799003)(186009)(38070700009)(41300700001)(36756003)(5660300002)(2906002)(66476007)(66446008)(64756008)(54906003)(66556008)(6636002)(91956017)(66946007)(76116006)(6506007)(82960400001)(6486002)(83380400001)(478600001)(71200400001)(107886003)(8936002)(8676002)(450100002)(2616005)(4326008)(38100700002)(122000001)(86362001)(26005)(6512007)(66574015)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3ZjYlRnY0JENUdhTzNhUE9YQU5GdWZKME15TGpVQUZIV3luV2htYk83eGJI?=
 =?utf-8?B?N1laclpmVkl2RXdiSE5vdjErU2lqOHNJSzdVSCtuVVJYWllENWhlMWdlMkd0?=
 =?utf-8?B?c2h2Y0UrNXcxeVlRcXYrRU1WNTQvLzRwVXZxSEVFSkF0YTh2Y3JCSGIxeE9B?=
 =?utf-8?B?Z0FnbFlXMjRwWkJTeGJjRnZuQUorOExpUkt5MUpSekxuK0RRaExVWDBndE9h?=
 =?utf-8?B?WWF3L1RHQ1dhOXBmdmExNkRydjd3WVhkSkRTZXdWWlgzZG5ROHVXQlNNcjdS?=
 =?utf-8?B?dFZ0NnMvWDJWVmxVTWlvRHl2anpraHNHRG0xbUx5cC9NYndHQjlETFZtKzgw?=
 =?utf-8?B?a3dlODZYYTBRbXl4dmM2dVd0cXN0RitRUE1YakM4NHZMSmlENFh3NjF5Qkdo?=
 =?utf-8?B?R25KVXNkTUUxaXBTd3czZmVzV0NaSVl4SkF0UjcwZ3dUb2haamkwa09iczRZ?=
 =?utf-8?B?czUvYVg5V2lFU1daZC9LSHdpazIzWWw3Skp0bFIvZEQ3eEhHbFVGbW5uYWly?=
 =?utf-8?B?aUFDWVNOK3pBbjlDYy9lbjlFZExmMVp4QnNYMThKTU8rUk5MKzNGNmZPeTVF?=
 =?utf-8?B?U2JDUmdaSHB1Q3lEM0MrQ0s4WExGQ3ljN3k4Zzh3U3JWQVk1Z2l1YTQxRDFz?=
 =?utf-8?B?bXJseUZYM0hDR2xPZ092NVVpU21ZSVQwNzVFTWFyUW1jbkQ3ZEZoUXVLYnNP?=
 =?utf-8?B?QXJ5TlFSTDJYSjBmMndsaTNRcmptTmFMTW5rM2l3K2x6OVJGR2MrNHoyQzIr?=
 =?utf-8?B?SFZYU085SmJuZkkyeHpUamhZRTdsdjVQQXFNZTVrQ3E2a2dIelZOb3VoTmwx?=
 =?utf-8?B?amhYTmJWdmNNSjFHZmxTOW8xUHVZamQyNE1xemQwS2pEVnJ6UDBNV3AwY09u?=
 =?utf-8?B?ekhGWGJySlBXKzNialBFVUliSU9CYy9iWm5yS0lGd0hZUnJ2MkVCd00zbzZv?=
 =?utf-8?B?bU5WY2FjaDRjdUg2c0JoSW4rUkhjazBPcUxXdVlvSlNRek1HbWE0TkVtZUVn?=
 =?utf-8?B?YmtXZTVOV3BzMDlNQ29ucklyOUtsMHVDRENrTGsveGlPNFNNcGRqOWNIQ3FX?=
 =?utf-8?B?RFk0Q1hSbFZSMHd4QlRDVXR1cXNJMXJ0Sy9teU9WMGpUQ3BucTh2a0dsTkhW?=
 =?utf-8?B?eTlJTUtoMEJ2VTlRSUpsLzhnbmh5dVMvT09HUHlzQlR5SHhwUmZJSXl2NER6?=
 =?utf-8?B?a09aYXlYSGwzOE1ONi8reWlFS3dQdlI2aFQxcW8zN1VBdmpsaC9yaVUyQjVp?=
 =?utf-8?B?OXZja0dGd01UekVuUHJDMEZiRHpRSllxRjV5dG5pNDFPMjdEamJDNHJBdDE1?=
 =?utf-8?B?dnVINzkzSG9uazFPZUJ5QXpqOEdnSmVSdEwvOHIxVExVSHJTTEdWb0ZJaTFP?=
 =?utf-8?B?VUIxRVl3OWJJbWdpaDBWdXlQQk1EY3FtOU8rbXBJQWtBN2NqS1Y5bnA5SlV2?=
 =?utf-8?B?NkNHNmVVWThvZTl5SEJNMXo4bGdoeFVhYjF4TDE2d1hObEZwS1lBWC9yUnlB?=
 =?utf-8?B?ZWpNc3lqRUNuano0eHJIcFM2VC82V3hJSXBUVEU4b2QyWFdjMTVBaW9SSmx2?=
 =?utf-8?B?d0NYeWZNNm50TldIRW0rWURRaC9qMTdmNi81ZmtRSSt3SUNPVEc1a0ZoRzJJ?=
 =?utf-8?B?bnlPU2hIYXhvZGVSQnNtUXByMXpRYlRsVWo2Rkl0ME5SUGJaWTRVVXBuQjA2?=
 =?utf-8?B?Y2xYY2g2QTlmOVZSRFc3bStYc3lTYVNtQnVKU2xmZGVSSEVXMjdUQWFUQWpP?=
 =?utf-8?B?cU9sOER5bXhaakZxVjA1cHFyalo0NEk2RUE0emkvSUx2SlJXNDh6TDJGSWtv?=
 =?utf-8?B?OXRJeU5nODhVUTZ5OTg0Q2IvSFFWbWlPdzFCajA4L011QXRFV0RuZXVGdUpP?=
 =?utf-8?B?bGVkNWNpWXVaZ09YWjMxSll5NFZnZ21SNURGTElLdHl5dUFwM1JDN0VuUytu?=
 =?utf-8?B?QWhQSEVKamFhUnZFSkg3a1lDRDk4azcyN3h1Q3FXb2xEZDRBamM0VE9kVHFh?=
 =?utf-8?B?QVRESmlZOGRzRStVaVBNckxBM1N5V3pZWjg1Y25paEFvTFdWc1IzSnNoOXph?=
 =?utf-8?B?bndSNVAwKzBOL1A1UnM4RU1PNStaUk1wM3hlaVR5VmxQSEthdDFqUGtCVmhD?=
 =?utf-8?B?aWQ3UG1MMnBuOFhBR3lsMFhEemN4K0lDcDBmaStNajBDNm5RZlhUSlVtQU9B?=
 =?utf-8?B?SUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0A1496ACF604B84187BB8353931679B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f1e9dae-b030-4050-41a5-08dbf70d7b06
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 10:15:47.3639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HvnO5B2JBhyWZWPTaA32jkAPv8VQeEXQ17Mfkg9xu1IoyNL/VwLndfBbkNtwuJN+GhWUliH819SGo64zZ/hgbO1fanAoAnL/xuqtp4DiZHo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4588
X-OriginatorOrg: intel.com
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

T24gVGh1LCAyMDIzLTEyLTA3IGF0IDA5OjMwICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6
DQo+IE9uIFRodSwgMjAyMy0xMi0wNyBhdCAwODoyNCArMDAwMCwgSG9nYW5kZXIsIEpvdW5pIHdy
b3RlOg0KPiA+IE9uIEZyaSwgMjAyMy0xMi0wMSBhdCAxMjowMCArMDIwMCwgTHVjYSBDb2VsaG8g
d3JvdGU6DQo+ID4gPiBUaGUgdW5jb3JlIGNvZGUgbWF5IG5vdCBhbHdheXMgYmUgYXZhaWxhYmxl
IChlLmcuIHdoZW4gd2UgYnVpbGQNCj4gPiA+IHRoZQ0KPiA+ID4gZGlzcGxheSBjb2RlIHdpdGgg
WGUpLCBzbyB3ZSBjYW4ndCBhbHdheXMgcmVseSBvbiBoYXZpbmcgdGhlDQo+ID4gPiB1bmNvcmUn
cw0KPiA+ID4gc3BpbmxvY2suDQo+ID4gPiANCj4gPiA+IFRvIGhhbmRsZSB0aGlzLCBzcGxpdCB0
aGUgc3Bpbl9sb2NrL3VubG9ja19pcnFzYXZlL3Jlc3RvcmUoKSBpbnRvDQo+ID4gPiBzcGluX2xv
Y2svdW5sb2NrKCkgZm9sbG93ZWQgYnkgYSBjYWxsIHRvIGxvY2FsX2lycV9zYXZlL3Jlc3RvcmUo
KQ0KPiA+ID4gYW5kDQo+ID4gPiBjcmVhdGUgd3JhcHBlciBmdW5jdGlvbnMgZm9yIGxvY2tpbmcg
YW5kIHVubG9ja2luZyB0aGUgdW5jb3JlJ3MNCj4gPiA+IHNwaW5sb2NrLsKgIEluIHRoZXNlIGZ1
bmN0aW9ucywgd2UgaGF2ZSBhIGNvbmRpdGlvbiBjaGVjayBhbmQgb25seQ0KPiA+ID4gYWN0dWFs
bHkgdHJ5IHRvIGxvY2svdW5sb2NrIHRoZSBzcGlubG9jayB3aGVuIEk5MTUgaXMgZGVmaW5lZCwN
Cj4gPiA+IGFuZA0KPiA+ID4gdGh1cyB1bmNvcmUgaXMgYXZhaWxhYmxlLg0KPiA+ID4gDQo+ID4g
PiBUaGlzIGtlZXBzIHRoZSBpZmRlZnMgY29udGFpbmVkIGluIHRoZXNlIG5ldyBmdW5jdGlvbnMg
YW5kIGFsbA0KPiA+ID4gc3VjaA0KPiA+ID4gbG9naWMgaW5zaWRlIHRoZSBkaXNwbGF5IGNvZGUu
DQo+ID4gPiANCj4gPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydG8udXJzdWxpbkBpbnRlbC5j
b20+DQo+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+
IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+
IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiA+ID4gLS0t
DQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gSW4gdjI6DQo+ID4gPiANCj4gPiA+IMKgwqAgKiBSZW5h
bWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyooKQ0KPiA+ID4gwqDCoCAqIENvcnJl
Y3RlZCB0aGUgb3JkZXI6IHNhdmUsIGxvY2ssIHVubG9jaywgcmVzdG9yZQ0KPiA+ID4gDQo+ID4g
PiBJbiB2MzoNCj4gPiA+IA0KPiA+ID4gwqDCoCAqIFVuZGlkIHRoZSBjaGFuZ2UgdG8gcGFzcyBk
cm1faTkxNV9wcml2YXRlIGluc3RlYWQgb2YgdGhlDQo+ID4gPiBsb2NrDQo+ID4gPiDCoMKgwqDC
oCBpdHNlbGYsIHNpbmNlIHdlIHdvdWxkIGhhdmUgdG8gaW5jbHVkZSBpOTE1X2Rydi5oIGFuZCB0
aGF0DQo+ID4gPiBwdWxscw0KPiA+ID4gwqDCoMKgwqAgaW4gYSB0cnVja2xvYWQgb2Ygb3RoZXIg
aW5jbHVkZXMuDQo+ID4gPiANCj4gPiA+IEluIHY0Og0KPiA+ID4gDQo+ID4gPiDCoMKgICogQWZ0
ZXIgYSBicmllZiBhdHRlbXB0IHRvIHJlcGxhY2UgdGhpcyB3aXRoIGEgZGlmZmVyZW50DQo+ID4g
PiBwYXRjaCwNCj4gPiA+IMKgwqDCoMKgIHdlJ3JlIGJhY2sgdG8gdGhpcyBvbmU7DQo+ID4gPiDC
oMKgICogUGFzcyBkcm1faTE5NV9wcml2YXRlIGFnYWluLCBhbmQgbW92ZSB0aGUgZnVuY3Rpb25z
IHRvDQo+ID4gPiDCoMKgwqDCoCBpbnRlbF92YmxhbmsuYywgc28gd2UgZG9uJ3QgbmVlZCB0byBp
bmNsdWRlIGk5MTVfZHJ2LmggaW4gYQ0KPiA+ID4gwqDCoMKgwqAgaGVhZGVyIGZpbGUgYW5kIGl0
J3MgYWxyZWFkeSBpbmNsdWRlZCBpbiBpbnRlbF92YmxhbmsuYzsNCj4gPiA+IA0KPiA+ID4gSW4g
djU6DQo+ID4gPiANCj4gPiA+IMKgwqAgKiBSZW1vdmUgc3RyYXkgaW5jbHVkZSBpbiBpbnRlbF9k
aXNwbGF5Lmg7DQo+ID4gPiDCoMKgICogUmVtb3ZlIHVubmVjZXNzYXJ5IGlubGluZSBtb2RpZmll
cnMgaW4gdGhlIG5ldyBmdW5jdGlvbnMuDQo+ID4gPiANCj4gPiA+IEluIHY2Og0KPiA+ID4gDQo+
ID4gPiDCoMKgICogSnVzdCByZW1vdmVkIHRoZSB1bWxhdXRzIGZyb20gVmlsbGUncyBuYW1lLCBi
ZWNhdXNlDQo+ID4gPiBwYXRjaHdvcmsNCj4gPiA+IMKgwqDCoMKgIGRpZG4ndCBjYXRjaCBteSBw
YXRjaCBhbmQgSSBzdXNwZWN0IGl0IHdhcyBzb21lIFVURi04DQo+ID4gPiBjb25mdXNpb24uDQo+
ID4gPiANCj4gPiA+IEluIHY3Og0KPiA+ID4gDQo+ID4gPiDCoMKgICogQWRkIF9fYWNxdWlyZXMo
KS9fX3JlbGVhc2VzKCkgYW5ub3RhdGlvbiB0byByZXNvbHZlIHNwYXJzZQ0KPiA+ID4gwqDCoMKg
wqAgd2FybmluZ3MuDQo+ID4gPiANCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92YmxhbmsuYyB8IDUxDQo+ID4gPiArKysrKysrKysrKysrKysrKy0tDQo+ID4gPiAt
LQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25z
KC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3ZibGFuay5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmJsYW5rLmMNCj4gPiA+IGluZGV4IDJjZWMyYWJmOTc0Ni4uZmUyNTZiZjdiNDg1IDEw
MDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Ymxh
bmsuYw0KPiA+ID4gQEAgLTI2NSw2ICsyNjUsMzIgQEAgaW50IGludGVsX2NydGNfc2NhbmxpbmVf
dG9faHcoc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjDQo+ID4gPiAqY3J0YywgaW50IHNjYW5saW5l
KQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAoc2NhbmxpbmUgKyB2dG90YWwgLSBjcnRj
LT5zY2FubGluZV9vZmZzZXQpICUNCj4gPiA+IHZ0b3RhbDsNCj4gPiA+IMKgfQ0KPiA+ID4gwqAN
Cj4gPiA+ICsvKg0KPiA+ID4gKyAqIFRoZSB1bmNvcmUgdmVyc2lvbiBvZiB0aGUgc3BpbiBsb2Nr
IGZ1bmN0aW9ucyBpcyB1c2VkIHRvDQo+ID4gPiBkZWNpZGUNCj4gPiA+ICsgKiB3aGV0aGVyIHdl
IG5lZWQgdG8gbG9jayB0aGUgdW5jb3JlIGxvY2sgb3Igbm90LsKgIFRoaXMgaXMgb25seQ0KPiA+
ID4gKyAqIG5lZWRlZCBpbiBpOTE1LCBub3QgaW4gWGUuDQo+ID4gPiArICoNCj4gPiA+ICsgKiBU
aGlzIGxvY2sgaW4gaTkxNSBpcyBuZWVkZWQgYmVjYXVzZSBzb21lIG9sZCBwbGF0Zm9ybXMgKGF0
DQo+ID4gPiBsZWFzdA0KPiA+ID4gKyAqIElWQiBhbmQgcG9zc2libHkgSFNXIGFzIHdlbGwpLCB3
aGljaCBhcmUgbm90IHN1cHBvcnRlZCBpbiBYZSwNCj4gPiA+IG5lZWQNCj4gPiA+ICsgKiBhbGwg
cmVnaXN0ZXIgYWNjZXNzZXMgdG8gdGhlIHNhbWUgY2FjaGVsaW5lIHRvIGJlIHNlcmlhbGl6ZWQs
DQo+ID4gPiArICogb3RoZXJ3aXNlIHRoZXkgbWF5IGhhbmcuDQo+ID4gPiArICovDQo+ID4gPiAr
c3RhdGljIHZvaWQgaW50ZWxfdmJsYW5rX3NlY3Rpb25fZW50ZXIoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUNCj4gPiA+ICppOTE1KQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgX19hY3F1aXJlcyhpOTE1
LT51bmNvcmUubG9jaykNCj4gPiA+ICt7DQo+ID4gPiArI2lmZGVmIEk5MTUNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoHNwaW5fbG9jaygmaTkxNS0+dW5jb3JlLmxvY2spOw0KPiA+ID4gKyNlbmRpZg0K
PiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF92Ymxhbmtfc2VjdGlv
bl9leGl0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiAqaTkxNSkNCj4gPiA+ICvCoMKg
wqDCoMKgwqDCoF9fcmVsZWFzZXMoaTkxNS0+dW5jb3JlLmxvY2spDQo+ID4gPiArew0KPiA+ID4g
KyNpZmRlZiBJOTE1DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzcGluX3VubG9jaygmaTkxNS0+dW5j
b3JlLmxvY2spOw0KPiA+ID4gKyNlbmRpZg0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiANCj4gPiBX
aHkgZG9uJ3QgeW91IG1vdmUgdGhlc2UgaW50byBncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMv
aD8gVGhlbg0KPiA+IHlvdQ0KPiA+IGNvdWxkIGhhdmUgZW1wdHkgZGVmaW5lcy9mdW5jdGlvbnMg
Zm9yIHRoZXNlIGluIGdwdS9kcm0veGUvY29tcGF0LQ0KPiA+IGk5MTUtDQo+ID4gaGVhZGVycy9p
bnRlbF91bmNvcmUuaC4gVGhhdCB3YXkgeW91IGRvbid0IG5lZWQgdGhlc2UgaWZkZWZzLiBJZg0K
PiA+IHlvdQ0KPiA+IG1vdmUgdGhlbSBhcyBJIHByb3Bvc2VkIHlvdSBzaG91bGQgcmVuYW1lIHRo
ZW0gYXMgd2VsbC4NCj4gDQo+IFdlIGFscmVhZHkgd2VudCBmb3J0aCBhbmQgYmFjayB3aXRoIHRo
aXMgZm9yIHNvbWUgdGltZS7CoCBJbiB0aGUgZW5kDQo+IHdlDQo+IGFncmVlZCB0aGF0IHRoaXMg
aXMgbm90IHJlbGF0ZWQgdG8gdW5jb3JlIGRpcmVjdGx5LCBzbyB3ZSBkZWNpZGVkIHRvDQo+IGtl
ZXAgaXQgaGVyZS4NCj4gDQo+IFdlIGFsc28gYWdyZWVkIHRoYXQgSSdsbCBtYWtlIGEgZm9sbG93
LXVwIHBhdGNoIHdoZXJlIGl0IHdvbid0IGJlDQo+IG9ubHkNCj4gdGhlIGxvY2sgdGhhdCB3aWxs
IGJlIGhhbmRsZWQgYnkgdGhpcywgYnV0IGFsc28gZW5hYmxpbmcvZGlzYWJsaW5nDQo+IGludGVy
cnVwdHMsIHdoaWNoIGRvZXNuJ3QgaGF2ZSBhbnl0aGluZyB0byBkbyB3aXRoIHVuY29yZSwgdGh1
cyB0aGUNCj4gbmFtZSBvZiB0aGUgZnVuY3Rpb24uDQoNClRoYW5rIHlvdSBMdWNhIGZvciB0aGUg
cGF0Y2guIFRoaXMgaXMgbm93IHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpv
dW5pIEjDtmdhbmRlcg0KPiANCj4gDQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg0K
