Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C96606908
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 21:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE3E10E367;
	Thu, 20 Oct 2022 19:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A63710E367
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 19:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666294824; x=1697830824;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IVkwUW84f8847TubiSKkZ8XiSkUDIbynYq5S190pSpE=;
 b=Wjbe3AZbdyiAH2yrt9Ch5WxYMouo+mZkzBtMHNtPq3uVit+M8545Kd0j
 5vBcYipwMYAHRxxpO3pRxOHcUqVG4C7UCEqthFLgXBMzidNRyENZsu9UY
 cDU2bzHMx2R96gtD7lTixVfJGITykdulLF6QAE3y4lrHGZbvtHwfkdyDR
 c1cYJfFKb8GIir+hbG8eNdGoeiMMXmUhPJmwKbWlQLDRzTnuiG95u/iqO
 eEjB0FmMPlb9POMiIebh0lcmNnFyUGY3w7aB9SyZuCpOK5T7mu6ZFC3La
 +My4gHHpgwiZxAhcTowap9nnZf8pHyUqG1lQdsVyeWO+jgpe1Qp1X+k1/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="368868159"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="368868159"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 12:40:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="693205231"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="693205231"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 20 Oct 2022 12:40:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 12:40:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 12:40:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 12:40:22 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 12:40:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IJoAjd+Ih9uS7WhVdmCVqB4vYdTaL4iFzaH733llMLT5DQAajBfLtzu3G5SdvLFnJ4SZ+O/J4GpGmzgcbL181sIcNWBmDWhoehnyk4MZb2Ifdc+1XHF0QmGcngGXao3UWPhNNwnNpOZOW1NKsqtGZaItwTOdfncTxK3B4u60DZKJyrWVFwL6bEwqmQ9ohLlyC3En1ka6UNel93I8uPRpAp1V9LiyJ1iNj/oKEi/v18/P/JBVX+p6CO0EMro5gDx3pGPts+LZBA5//q++Fy3erIc8nWvRWooyyM2Xdz8PGKeAHm9fBKFKTsztII06aMVbK0qPuOpcKjVf/r3PTi4vlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IVkwUW84f8847TubiSKkZ8XiSkUDIbynYq5S190pSpE=;
 b=HLLQN2g67iW51WYxj1kVtHWTgeKKRFvvat9oaYYVMrdVxjxkE2DiNMz+N2cdFyOAWv1OlQoK56AiYV1OE75bfCkPQxmDuOEmADuqBjYgQtIXhQni2UPmyfWkXi0DAXuYzxGqZ/ghP8CsKDvw1fpux6SaG+g8gQOlv3v7quPXDyqzSjYf7MSt/MaLv2RnJ9PlNGHL4wRpRgS958ZwVJhrOWuk4z5WZG+ogNZZuBjf/xg3+de/fHZa5cSr9EWTjDRzJZCmi4YP4x4+0NL0rOR0yg5YYR2urH+U/SjOuYjfI6L9njadmdBlsBNc07nn95tkggSz0faMiFRA0bdN7Xbymw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SA2PR11MB4842.namprd11.prod.outlook.com
 (2603:10b6:806:f8::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Thu, 20 Oct
 2022 19:40:20 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 19:40:20 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
Thread-Index: AQHY31wUKux4VuHBuE28TqNJNdWBya4XZYUAgABSjlA=
Date: Thu, 20 Oct 2022 19:40:20 +0000
Message-ID: <CY4PR1101MB216601626F098A00CDB32CFCF82A9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221013233223.103381-1-anusha.srivatsa@intel.com>
 <Y1FePEl7ySsHWxBg@bala-ubuntu>
In-Reply-To: <Y1FePEl7ySsHWxBg@bala-ubuntu>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: ville.syrjala@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SA2PR11MB4842:EE_
x-ms-office365-filtering-correlation-id: 02bf57fb-5e5f-4dfa-4336-08dab2d2ec52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9948R1jrU4LRXuyXUL+npGDhIpZ957LBLR2f9hLT/NuOo4VMdJO3tG0mh9xcaHlx4/tBl6dteS8dLTt/ZzjrXm4ay2/cJympDn001Q5mgBXTfaVMfM9SlX/t/ymITHcYFK04OBLDNZhwC1TYp/TuOT7uAUgw/BxNmm7gUtDaue+fKXp0uSpa2Ody9tPRyY/IJ9KlpOho+ibS7Kq335sQ2tf/5vLV+FgNi/iebqW22rHlYg0n4q5dBH9BjG1Vtl1G6u80UclW/nKdpXwQ0rhIUEUUAaba2UxLZjOm/aXJgMNV3A0ZkKwhbaZsHISJ9YVI/dSRtLZBMj52r80Gqjm3I//5OUEUm/Li3Q0r04PMtv+TDzJWgIUkzA7H8Uur9Y5mTlinkLaIFdJsoPcC7/K9vnA71yqZYQ5yCmipAGDuE4jAfyoH6JFHCxZTjXn4EVMT2MpGv9CrzamxnkA9CIUXsWpruI55tEmAdOnNPSlBm+TTXB3TSTPh9qDEO9+mELkE3InGxyO+BjBR2BZohW2IKtuvDALvB4KidxwBq001Kh74kq3Oxd1Dl29ryF8WM9xjlxbx0iJF15cTKoTQ+9DkCOyCp75qBJOO5IVcRjM2RgFS1iT5xiJVp0xz12fjJlNJspBQ53L4MwDU5LK1xO9UCcO7vqSz0gcYSpPxZexzopCDzE/0VPjgz79ECEtUEefKUJpp45HyG15IMVrJdr0T9bVjj9YXzVwE353OD2tG2OEqJ/zQUZdu3+B283hRFlpkCOxo+wIqov/rPTCSZ3XAM7yPAKwKl9yWfg/QTiKtW1E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199015)(66476007)(8936002)(2906002)(5660300002)(66446008)(41300700001)(66556008)(30864003)(38100700002)(52536014)(122000001)(33656002)(86362001)(7696005)(26005)(8676002)(53546011)(9686003)(82960400001)(6506007)(64756008)(38070700005)(110136005)(186003)(71200400001)(478600001)(76116006)(55016003)(66946007)(66574015)(316002)(83380400001)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?STFXRkN2Z0tKeGdhUmZZQmdUNG1JVUR5MG0rN0hVRVMwdTZybkV3YTl2VlFx?=
 =?utf-8?B?OXRCQmVucjNkSFhROHRnTWNRdkpDSW1LaityTTkyeTJMdzB6aGFRTTEwYm1r?=
 =?utf-8?B?VzQ3VUxMRzVYTUFPdlRCYmJTNzBibFlxQkpKODZkZjZxUllDRXhxOTJWamgx?=
 =?utf-8?B?VXB5YzVSalVPa3AycUxaQmV4SUVJdS9iblpVWTdrMmNpWUtnU05lSVpxTkUx?=
 =?utf-8?B?Y3cyRkVjUGJOdXBkd09JWG4va1A3b0JldUtrU1FwU29sZGZqZ2wyVXZMemMx?=
 =?utf-8?B?VDBIMXAvbHJsL1NFUXdtWkdRK3k1blM5UElKUjVEcXRaQU14NkdmTnBFdHJS?=
 =?utf-8?B?UXVGdEhsY3ZFZ0NCck1BOS9iYm94Z0k0VXoraEs0UndwZTl5K1lqS1dyVjBL?=
 =?utf-8?B?V1hPZ3RtcEVRZ3hCNS9DaExkd25YTkFaM1pnQ21UeGEvOEdtU09HaDBQMHZt?=
 =?utf-8?B?N1I5NzBGck00VktmdUdUN3k4ZFQzRGtacEw2QzhyeEZZbEFxVDd3NjRGbXZX?=
 =?utf-8?B?dFpIMllRcDR3VGwrZUZwR1FyVzIwUXdmMmdld0I4bjdMVzlpc01jSEdQSUlV?=
 =?utf-8?B?WWVTdG9yRGpaMXpIeTF2OHB2MDdRTE5LbCtyd25wSTBPUnNqY2EvbXdZbmpQ?=
 =?utf-8?B?T093bFk2aVFmSmhTQXRjMUtLUSsyaDZqeW1oMkxmamdtZi9qOXVqSUVjN0Z6?=
 =?utf-8?B?aWREZTk3eFFMMTdleDlFZkZhUWtyd0V5bU0rcnp5TmlQaCtGQVU1bWJkTkxW?=
 =?utf-8?B?QjQzNldIa0tTWDQ4a1pOVytoakgzVjhaakc5RFM2UWlZTkN6LzZhQTcvZzE4?=
 =?utf-8?B?SURTQUhlekhjeGlnWU5vcXpYN0JqejJMaG9uSm1ONklGOFF6NUxZVmFDTDRS?=
 =?utf-8?B?c25CZ2hOUHhlWmRzMVBkQy9PTTlGbFY2RzV4dmNmdjFqSVRRTlJxM3M4REx6?=
 =?utf-8?B?U2Q5SEJFWlZEL3dQblBidXRveGFsUVhPYkxXMFBsVDN2bk1lenBUdzJWS1Nx?=
 =?utf-8?B?QmY0YitTNnFvY01HUWJ6dnNJd1JwekpYQ2pJcXRhL3ZvZXRkZVhqYjdGbUdz?=
 =?utf-8?B?dmpteGJ0QVB1SUYzR1gyNGxsZlZBbUtLZk9pZXIwMnBvLzF1LzVZMmJuU1Vu?=
 =?utf-8?B?V3BhSFJ2UkkrY3VPUWE5aHZGYkIzUVpubzFSMXg4dXlkN3l2emlCTEdtck9G?=
 =?utf-8?B?NlUrQkp0SHhsUXRWQ0hRTTJ0RlB4d1V0VHBsTDRGa0hyRGJuM1hZSi9XdDU2?=
 =?utf-8?B?Vy9OZ0xUelVHQlhEOWkrUHJmSnFaUlZLSFNmeWJtaTRJZjYxbU5OTTRMdUJF?=
 =?utf-8?B?U2l5Vnl0UFNLNVUxZVlzQWYzUENyWS94MjZWN09wTm1LU20xOVVacHBMTHVs?=
 =?utf-8?B?RmZaOUxRTkQ0V0lneEhicnFkeDk0Q0pjeU1MVFhJdjBUNUxkcmhldXBNcUd3?=
 =?utf-8?B?RmR0T0JoaWNoUjdpYlJSUDVnand4S1czUjllQUQzOWo3anFkYXgrYmIwbUsw?=
 =?utf-8?B?ZUo0RHNhdW1NRkpzMCtQNTVVUVg2Z05tSEJqU0h2T1pORlBqRmhqOWt6SEZi?=
 =?utf-8?B?Yk1XSjlQbStZNGtsRWNQekoxNEZVVGxZaCtoVklpcWh2QnhQck1IY1JzeklF?=
 =?utf-8?B?U0dmejBFelp4V1dWZDN6Ym85Ykd3QlN3RUxhbGxGdy93WWN6dlNaNUZNQkpV?=
 =?utf-8?B?bVYxSnBMTjI2ZHRwSEVYNWRNR28wS3NMNWJROUs5UVEvY1ZtYjdyVXBpcE1z?=
 =?utf-8?B?M05iUkE2VFBRS1RBbm1yYVVZRnFuOVJDaWQxdTN1TnF1RE04QXBBenZpSTla?=
 =?utf-8?B?TmlFbkNSRVZGKzBIeFdSVFpuV042MjBBeGU1WjFhUjg1UUZLbDBmWGhzWU1H?=
 =?utf-8?B?Z2ZjaXIxZzhxRk9kSG9xWEtYWXJiNFdoSVpxOVkzb2U1ZzdBd1dwSEw3TXVD?=
 =?utf-8?B?T1gwdHd4NHNhZFR4NnZ2bGdsQXhNTlRybnUyZzdhblZMQmorVU5QNERTblNX?=
 =?utf-8?B?clVQcWQ5cnV1Sm4zNjI4Yi9lZjh2ekR1WWhoYnhKR3Y1ZE9lTGlkbVF5VkFL?=
 =?utf-8?B?cjR6SEMzUWtaejUxbXNMSGxYTWtSa1JxSWdFQmw0bTVxbUROK0pNdGxoWllI?=
 =?utf-8?B?OXFMRWpUSHJ4UWhOVHd5dGV6OTVseDNYNjY1VzVzZ0xXcjhLcXR6WGZWdDBk?=
 =?utf-8?B?c0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02bf57fb-5e5f-4dfa-4336-08dab2d2ec52
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 19:40:20.3568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X3E5itNxawmFN2rKzKAYUznsORZrxQgbFpwBAKKGRFugqiHAA4vTIpu2m4b/MLjWNb5wcTFaBl3haG6+l3P88Du6/TjWVvirnVxYhcJNjCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4842
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVml2ZWthbmFuZGFuLCBC
YWxhc3VicmFtYW5pDQo+IDxiYWxhc3VicmFtYW5pLnZpdmVrYW5hbmRhbkBpbnRlbC5jb20+DQo+
IFNlbnQ6IFRodXJzZGF5LCBPY3RvYmVyIDIwLCAyMDIyIDc6NDIgQU0NCj4gVG86IFNyaXZhdHNh
LCBBbnVzaGEgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIIDEvMl0g
ZHJtL2k5MTUvZGlzcGxheTogRG8gYm90aCBjcmF3bCBhbmQNCj4gc3F1YXNoIHdoZW4gY2hhbmdp
bmcgY2RjbGsNCj4gDQo+IE9uIDEzLjEwLjIwMjIgMTY6MzIsIEFudXNoYSBTcml2YXRzYSB3cm90
ZToNCj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiA+DQo+ID4gRm9yIE1UTCwgY2hhbmdpbmcgY2RjbGsgZnJvbSBiZXR3ZWVuIGNlcnRh
aW4gZnJlcXVlbmNpZXMgaGFzIGJvdGgNCj4gPiBzcXVhc2ggYW5kIGNyYXdsLiBVc2UgdGhlIGN1
cnJlbnQgY2RjbGsgY29uZmlnIGFuZCB0aGUgbmV3KGRlc2lyZWQpDQo+ID4gY2RjbGsgY29uZmln
IHRvIGNvbnN0cnV0YyBhIG1pZCBjZGNsayBjb25maWcuDQo+ID4gU2V0IHRoZSBjZGNsayB0d2lj
ZToNCj4gPiAtIEN1cnJlbnQgY2RjbGsgLT4gbWlkIGNkY2xrDQo+ID4gLSBtaWQgY2RjbGsgLT4g
ZGVzaXJlZCBjZGNsaw0KPiA+DQo+ID4gdjI6IEFkZCBjaGVjayBpbiBpbnRlbF9tb2Rlc2V0X2Nh
bGNfY2RjbGsoKSB0byBhdm9pZCBjZGNsayBjaGFuZ2UgdmlhDQo+ID4gbW9kZXNldCBmb3IgcGxh
dGZvcm1zIHRoYXQgc3VwcG9ydCBzcXVhc2hfY3Jhd2wgc2VxdWVuY2VzKFZpbGxlKQ0KPiA+DQo+
ID4gdjM6IEFkZCBjaGVja3MgZm9yOg0KPiA+IC0gc2NlbmFyaW8gd2hlcmUgb25seSBzbG93IGNs
b2NrIGlzIHVzZWQgYW5kIGNkY2xrIGlzIGFjdHVhbGx5IDANCj4gPiAoYnJpbmdpbmcgdXAgZGlz
cGxheSkuDQo+ID4gLSBQTExzIGFyZSBvbiBiZWZvcmUgbG9va2luZyB1cCB0aGUgd2F2ZWZvcm0u
DQo+ID4gLSBTcXVhc2ggYW5kIGNyYXdsIGNhcGFiaWxpdHkgY2hlY2tzLihWaWxsZSkNCj4gPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVs
LmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPg0KPiANCj4gUGxlYXNlIGFkZCB0aGUgQnNwZWMgbnVtYmVyLg0KV2ls
bCBkby4NCg0KPiANCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jIHwgMTU3DQo+ID4gKysrKysrKysrKysrKysrKystLS0tDQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAxMjggaW5zZXJ0aW9ucygrKSwgMjkgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiBpbmRl
eCBhZDQwMTM1N2FiNjYuLjQzMGI0Y2IwYThhYiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gPiBAQCAtMTY3NSw3ICsxNjc1LDcgQEAg
c3RhdGljIHUzMiBjZGNsa19zcXVhc2hfd2F2ZWZvcm0oc3RydWN0DQo+IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiA+ICAJY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3ZhbHMgKnRhYmxl
ID0gZGV2X3ByaXYtPmRpc3BsYXkuY2RjbGsudGFibGU7DQo+ID4gIAlpbnQgaTsNCj4gPg0KPiA+
IC0JaWYgKGNkY2xrID09IGRldl9wcml2LT5kaXNwbGF5LmNkY2xrLmh3LmJ5cGFzcykNCj4gPiAr
CWlmIChjZGNsayA9PSBkZXZfcHJpdi0+ZGlzcGxheS5jZGNsay5ody5ieXBhc3MgfHwgY2RjbGsg
PT0gMCkNCj4gPiAgCQlyZXR1cm4gMDsNCj4gPg0KPiA+ICAJZm9yIChpID0gMDsgdGFibGVbaV0u
cmVmY2xrOyBpKyspDQo+ID4gQEAgLTE2ODksMzcgKzE2ODksNzIgQEAgc3RhdGljIHUzMiBjZGNs
a19zcXVhc2hfd2F2ZWZvcm0oc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0K
PiA+ICAJcmV0dXJuIDB4ZmZmZjsNCj4gPiAgfQ0KPiA+DQo+ID4gLXN0YXRpYyB2b2lkIGJ4dF9z
ZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+IC0JCQkgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmNkY2xrX2NvbmZpZywNCj4gPiAtCQkJICBl
bnVtIHBpcGUgcGlwZSkNCj4gPiArc3RhdGljIGludCBjZGNsa19zcXVhc2hfZGl2aWRlcih1MTYg
d2F2ZWZvcm0pIHsNCj4gPiArCXJldHVybiBod2VpZ2h0MTYod2F2ZWZvcm0gPzogMHhmZmZmKTsg
fQ0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgY2RjbGtfY3Jhd2xfYW5kX3NxdWFzaChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiArCQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9j
ZGNsa19jb25maWcNCj4gKm9sZF9jZGNsa19jb25maWcsDQo+ID4gKwkJCQkgICBjb25zdCBzdHJ1
Y3QgaW50ZWxfY2RjbGtfY29uZmlnDQo+ICpuZXdfY2RjbGtfY29uZmlnLA0KPiA+ICsJCQkJICAg
c3RydWN0IGludGVsX2NkY2xrX2NvbmZpZyAqbWlkX2NkY2xrX2NvbmZpZykNCj4gew0KPiANCj4g
SSB3YXMgdGhpbmtpbmcgb2YgYXNraW5nIHRvIHJlbmFtZSB0aGlzIGZ1bmN0aW9uIHRvIGEgbW9y
ZSBkZXNjcmlwdGl2ZSBvbmUsDQo+IGJ1dCB0aGVuIEkgbXlzZWxmIHdhcyBub3QgYWJsZSB0byBj
b21lIHVwIHdpdGggb25lLg0KPiBGb3IgYSBmcmVzaCBleWVzLCBpdCBpcyBkaWZmaWN1bHQgdG8g
bWFrZSBvdXQgd2hhdCB0aGlzIGZ1bmN0aW9uIGlzIGFjdHVhbGx5IGRvaW5nLg0KPiBDYW4geW91
IHBsZWFzZSBhZGQgYSBzdW1tYXJ5IGFzIGEgY29tbWVudCBhYm92ZSB0aGlzIGZ1bmN0aW9uIHBv
aW50aW5nDQo+IG91dCB3aGF0IGlzIG1pZF9jZGNsayBhbmQgd2hhdHMgdGhlIG1lYW5pbmcgb2Yg
aXRzIHJldHVybiB2YWx1ZS4NCg0KSSB0aG91Z2h0IHRoZSBjb21taXQgbWVzc2FnZSB3YXMgZXhw
bGFpbmluZyB0aGUgbmVlZGZ1bC4gQnV0IEkgYWdyZWUgaWYgaXQgaXMgaW5kZWVkIGNvbmZ1c2lu
ZywgYWRkaW5nIGNvbW1lbnRzIGluIGNvZGUgd291bGQgaGVscCwgd2lsbCBjaHVybiB0aGF0IGNo
YW5nZS4NCj4gDQo+ID4gKwl1MTYgb2xkX3dhdmVmb3JtID0gY2RjbGtfc3F1YXNoX3dhdmVmb3Jt
KGk5MTUsIG9sZF9jZGNsa19jb25maWctDQo+ID5jZGNsayk7DQo+ID4gKwl1MTYgbmV3X3dhdmVm
b3JtID0gY2RjbGtfc3F1YXNoX3dhdmVmb3JtKGk5MTUsDQo+IG5ld19jZGNsa19jb25maWctPmNk
Y2xrKTsNCj4gPiArCXUxNiBtaWRfd2F2ZWZvcm07DQo+ID4gKwlpbnQgc2l6ZSA9IDE2Ow0KPiA+
ICsJaW50IGRpdiA9IDI7DQo+ID4gKw0KPiA+ICsJLyogUmV0dXJuIGlmIGJvdGggU3F1YXNoIGFu
ZCBDcmF3bCBhcmUgbm90IHByZXNlbnQgKi8NCj4gPiArCWlmICghSEFTX0NEQ0xLX0NSQVdMKGk5
MTUpIHx8ICFoYXNfY2RjbGtfc3F1YXNoZXIoaTkxNSkpDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0K
PiANCj4gQ2FuIGNkY2xrX3NxdWFzaGVyIGZlYXR1cmUgYXZhaWxhYmlsaXR5IGJlIGFsc28gbWFk
ZSBhIHBhcnQgb2YgZGV2aWNlX2luZm8NCj4gc3RydWN0dXJlIGxpa2UgY2RjbGtfY3Jhd2wgYW5k
IGNyZWF0ZSBhIG1hY3JvIHNpbWlsYXIgdG8gSEFTX0NEQ0xLX0NSQVdMPw0KPiBMaWtlIFZpbGxl
IHNhaWQgaXQgbG9va3MgYml0IHdlaXJkLiBBbHNvIHdlIHdvdWxkIGF2b2lkIGFkZGluZyBwbGF0
Zm9ybSBjaGVja3MNCj4gaW5zaWRlIGhhc19jZGNsa19zcXVhc2hlcigpIGZ1bmN0aW9uIGxpa2Ug
aXQgaXMgZG9uZSBub3cgaW4geW91ciBzZWNvbmQNCj4gcGF0Y2guDQoNClllcyB3aWxsIG1ha2Ug
dGhhdCBjaGFuZ2UuDQo+IA0KPiA+ICsNCj4gPiArCS8qIFJldHVybiBpZiBTcXVhc2ggb25seSBv
ciBDcmF3bCBvbmx5IGlzIHRoZSBkZXNpcmVkIGFjdGlvbiAqLw0KPiA+ICsJaWYgKG9sZF9jZGNs
a19jb25maWctPnZjbyA8PSAwIHx8IG5ld19jZGNsa19jb25maWctPnZjbyA8PSAwIHx8DQo+ID4g
KwkgICAgb2xkX2NkY2xrX2NvbmZpZy0+dmNvID09IG5ld19jZGNsa19jb25maWctPnZjbyB8fA0K
PiA+ICsJICAgIG9sZF93YXZlZm9ybSA9PSBuZXdfd2F2ZWZvcm0pDQo+ID4gKwkJcmV0dXJuIGZh
bHNlOw0KPiA+ICsNCj4gPiArCSptaWRfY2RjbGtfY29uZmlnID0gKm5ld19jZGNsa19jb25maWc7
DQo+ID4gKw0KPiA+ICsJLyogSWYgbW92aW5nIHRvIGEgaGlnaGVyIGNkY2xrKHNxdWFzaCkgdGhl
IG1pZCBjZGNsayBjb25maWcNCj4gPiArCSAqIHNob3VsZCBoYXZlIHRoZSBuZXcgKHNxdWFzaCkg
d2F2ZWZvcm0uDQo+ID4gKwkgKiBJZiBtb3ZpbmcgdG8gYSBsb3dlciBjZGNsayAoY3Jhd2wpIHRo
ZSBtaWQgY2RjbGsgY29uZmlnDQo+ID4gKwkgKiBzaG91bGQgaGF2ZSB0aGUgbmV3IHZjby4NCj4g
PiArCSAqLw0KPiA+ICsNCj4gPiArCWlmIChjZGNsa19zcXVhc2hfZGl2aWRlcihuZXdfd2F2ZWZv
cm0pID4NCj4gY2RjbGtfc3F1YXNoX2RpdmlkZXIob2xkX3dhdmVmb3JtKSkgew0KPiA+ICsJCW1p
ZF9jZGNsa19jb25maWctPnZjbyA9IG9sZF9jZGNsa19jb25maWctPnZjbzsNCj4gPiArCQltaWRf
d2F2ZWZvcm0gPSBuZXdfd2F2ZWZvcm07DQo+ID4gKwl9IGVsc2Ugew0KPiA+ICsJCW1pZF9jZGNs
a19jb25maWctPnZjbyA9IG5ld19jZGNsa19jb25maWctPnZjbzsNCj4gPiArCQltaWRfd2F2ZWZv
cm0gPSBvbGRfd2F2ZWZvcm07DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJbWlkX2NkY2xrX2NvbmZp
Zy0+Y2RjbGsgPQ0KPiBESVZfUk9VTkRfQ0xPU0VTVChjZGNsa19zcXVhc2hfZGl2aWRlcihtaWRf
d2F2ZWZvcm0pICoNCj4gPiArCQkJCQkJICAgIG1pZF9jZGNsa19jb25maWctPnZjbywgc2l6ZQ0K
PiAqIGRpdik7DQo+ID4gKw0KPiA+ICsJLyogbWFrZSBzdXJlIHRoZSBtaWQgY2xvY2sgY2FtZSBv
dXQgc2FuZSAqLw0KPiA+ICsNCj4gPiArCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIG1pZF9jZGNs
a19jb25maWctPmNkY2xrIDwNCj4gPiArCQkgICAgbWluKG9sZF9jZGNsa19jb25maWctPmNkY2xr
LCBuZXdfY2RjbGtfY29uZmlnLT5jZGNsaykpOw0KPiA+ICsJZHJtX1dBUk5fT04oJmk5MTUtPmRy
bSwgbWlkX2NkY2xrX2NvbmZpZy0+Y2RjbGsgPg0KPiA+ICsJCSAgICBpOTE1LT5kaXNwbGF5LmNk
Y2xrLm1heF9jZGNsa19mcmVxKTsNCj4gPiArCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sIGNkY2xr
X3NxdWFzaF93YXZlZm9ybShpOTE1LA0KPiBtaWRfY2RjbGtfY29uZmlnLT5jZGNsaykgIT0NCj4g
PiArCQkgICAgbWlkX3dhdmVmb3JtKTsNCj4gPiArDQo+ID4gKwlyZXR1cm4gdHJ1ZTsNCj4gPiAr
fQ0KPiA+ICsNCj4gPiArc3RhdGljIHZvaWQgX2J4dF9zZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICsJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtf
Y29uZmlnICpjZGNsa19jb25maWcsDQo+ID4gKwkJCSAgIGVudW0gcGlwZSBwaXBlKQ0KPiA+ICB7
DQo+ID4gIAlpbnQgY2RjbGsgPSBjZGNsa19jb25maWctPmNkY2xrOw0KPiA+ICAJaW50IHZjbyA9
IGNkY2xrX2NvbmZpZy0+dmNvOw0KPiA+ICAJdTMyIHZhbDsNCj4gPiAgCXUxNiB3YXZlZm9ybTsN
Cj4gPiAgCWludCBjbG9jazsNCj4gPiAtCWludCByZXQ7DQo+ID4gLQ0KPiA+IC0JLyogSW5mb3Jt
IHBvd2VyIGNvbnRyb2xsZXIgb2YgdXBjb21pbmcgZnJlcXVlbmN5IGNoYW5nZS4gKi8NCj4gPiAt
CWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTEpDQo+ID4gLQkJcmV0ID0gc2tsX3Bjb2Rl
X3JlcXVlc3QoJmRldl9wcml2LT51bmNvcmUsDQo+IFNLTF9QQ09ERV9DRENMS19DT05UUk9MLA0K
PiA+IC0JCQkJCVNLTF9DRENMS19QUkVQQVJFX0ZPUl9DSEFOR0UsDQo+ID4gLQkJCQkJU0tMX0NE
Q0xLX1JFQURZX0ZPUl9DSEFOR0UsDQo+ID4gLQkJCQkJU0tMX0NEQ0xLX1JFQURZX0ZPUl9DSEFO
R0UsIDMpOw0KPiA+IC0JZWxzZQ0KPiA+IC0JCS8qDQo+ID4gLQkJICogQlNwZWMgcmVxdWlyZXMg
dXMgdG8gd2FpdCB1cCB0byAxNTB1c2VjLCBidXQgdGhhdCBsZWFkcyB0bw0KPiA+IC0JCSAqIHRp
bWVvdXRzOyB0aGUgMm1zIHVzZWQgaGVyZSBpcyBiYXNlZCBvbiBleHBlcmltZW50Lg0KPiA+IC0J
CSAqLw0KPiA+IC0JCXJldCA9IHNuYl9wY29kZV93cml0ZV90aW1lb3V0KCZkZXZfcHJpdi0+dW5j
b3JlLA0KPiA+IC0NCj4gSFNXX1BDT0RFX0RFX1dSSVRFX0ZSRVFfUkVRLA0KPiA+IC0JCQkJCSAg
ICAgIDB4ODAwMDAwMDAsIDE1MCwgMik7DQo+ID4gLQlpZiAocmV0KSB7DQo+ID4gLQkJZHJtX2Vy
cigmZGV2X3ByaXYtPmRybSwNCj4gPiAtCQkJIkZhaWxlZCB0byBpbmZvcm0gUENVIGFib3V0IGNk
Y2xrIGNoYW5nZSAoZXJyICVkLA0KPiBmcmVxICVkKVxuIiwNCj4gPiAtCQkJcmV0LCBjZGNsayk7
DQo+ID4gLQkJcmV0dXJuOw0KPiA+IC0JfQ0KPiA+DQo+ID4gIAlpZiAoSEFTX0NEQ0xLX0NSQVdM
KGRldl9wcml2KSAmJiBkZXZfcHJpdi0+ZGlzcGxheS5jZGNsay5ody52Y28NCj4gPiAwICYmIHZj
byA+IDApIHsNCj4gPiAgCQlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuY2RjbGsuaHcudmNvICE9IHZj
bykgQEAgLTE3NzIsNg0KPiArMTgwNyw0NCBAQA0KPiA+IHN0YXRpYyB2b2lkIGJ4dF9zZXRfY2Rj
bGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+DQo+ID4gIAlpZiAocGlw
ZSAhPSBJTlZBTElEX1BJUEUpDQo+ID4NCj4gCWludGVsX2NydGNfd2FpdF9mb3JfbmV4dF92Ymxh
bmsoaW50ZWxfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwNCj4gPiBwaXBlKSk7DQo+ID4gK30NCj4g
PiArDQo+ID4gK3N0YXRpYyB2b2lkIGJ4dF9zZXRfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LA0KPiA+ICsJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcg
KmNkY2xrX2NvbmZpZywNCj4gPiArCQkJICBlbnVtIHBpcGUgcGlwZSkNCj4gPiArew0KPiANCj4g
Ynh0X3NldF9jZGNsaygpIGlzIG5vdyBibG9hdGVkIGFzIGl0IGlzIHJldXNlZCBmb3IgbmV3IHBs
YXRmb3JtcyB3aXRoIG5ldw0KPiBmZWF0dXJlcyByZXN1bHRpbmcgaW4gdG9vIG1hbnkgY29uZGl0
aW9uIGNoZWNrcy4gSSBzZWUgaXQgaXMgbm93IHRpbWUgdG8gc3dpdGNoDQo+IHRvIGEgbmV3IHNl
dF9jZGNsaygpIGZ1bmN0aW9uLiBJIHdvdWxkIHByZWZlciBhIG5ldyBmdW5jdGlvbiBmb3IgcGxh
dGZvcm1zDQo+IHN0YXJ0aW5nIGZyb20gd2hpY2ggc3VwcG9ydHMgc3F1YXNoL2NyYXdsIGZlYXR1
cmUgYW5kIGFkZCB0aGlzIG5ldw0KPiBjcmF3bF9hbmRfc3F1YXNoIGZlYXR1cmUgaW1wbGVtZW50
YXRpb24gdG8gdGhlIHNhbWUgZnVuY3Rpb24uIEJ1dA0KPiBkZWZpbml0ZWx5IEkgZGlzbGlrZSB1
c2luZyBieHRfc2V0X2NkY2xrIGZvciBNVEwuDQo+IA0KPiA+ICsJc3RydWN0IGludGVsX2NkY2xr
X2NvbmZpZyBtaWRfY2RjbGtfY29uZmlnOw0KPiA+ICsJaW50IGNkY2xrID0gY2RjbGtfY29uZmln
LT5jZGNsazsNCj4gPiArCWludCByZXQ7DQo+ID4gKw0KPiA+ICsJLyogSW5mb3JtIHBvd2VyIGNv
bnRyb2xsZXIgb2YgdXBjb21pbmcgZnJlcXVlbmN5IGNoYW5nZS4gKi8NCj4gPiArCWlmIChESVNQ
TEFZX1ZFUihkZXZfcHJpdikgPj0gMTEpDQo+ID4gKwkJcmV0ID0gc2tsX3Bjb2RlX3JlcXVlc3Qo
JmRldl9wcml2LT51bmNvcmUsDQo+IFNLTF9QQ09ERV9DRENMS19DT05UUk9MLA0KPiA+ICsJCQkJ
CVNLTF9DRENMS19QUkVQQVJFX0ZPUl9DSEFOR0UsDQo+ID4gKwkJCQkJU0tMX0NEQ0xLX1JFQURZ
X0ZPUl9DSEFOR0UsDQo+ID4gKwkJCQkJU0tMX0NEQ0xLX1JFQURZX0ZPUl9DSEFOR0UsIDMpOw0K
PiA+ICsJZWxzZQ0KPiA+ICsJCS8qDQo+ID4gKwkJICogQlNwZWMgcmVxdWlyZXMgdXMgdG8gd2Fp
dCB1cCB0byAxNTB1c2VjLCBidXQgdGhhdCBsZWFkcyB0bw0KPiA+ICsJCSAqIHRpbWVvdXRzOyB0
aGUgMm1zIHVzZWQgaGVyZSBpcyBiYXNlZCBvbiBleHBlcmltZW50Lg0KPiA+ICsJCSAqLw0KPiA+
ICsJCXJldCA9IHNuYl9wY29kZV93cml0ZV90aW1lb3V0KCZkZXZfcHJpdi0+dW5jb3JlLA0KPiA+
ICsNCj4gSFNXX1BDT0RFX0RFX1dSSVRFX0ZSRVFfUkVRLA0KPiA+ICsJCQkJCSAgICAgIDB4ODAw
MDAwMDAsIDE1MCwgMik7DQo+ID4gKwlpZiAocmV0KSB7DQo+ID4gKwkJZHJtX2VycigmZGV2X3By
aXYtPmRybSwNCj4gPiArCQkJIkZhaWxlZCB0byBpbmZvcm0gUENVIGFib3V0IGNkY2xrIGNoYW5n
ZSAoZXJyICVkLA0KPiBmcmVxICVkKVxuIiwNCj4gPiArCQkJcmV0LCBjZGNsayk7DQo+ID4gKwkJ
cmV0dXJuOw0KPiA+ICsJfQ0KPiA+ICsNCj4gPiArCWlmIChjZGNsa19jcmF3bF9hbmRfc3F1YXNo
KGRldl9wcml2LCAmZGV2X3ByaXYtPmRpc3BsYXkuY2RjbGsuaHcsDQo+ID4gKwkJCQkgICBjZGNs
a19jb25maWcsICZtaWRfY2RjbGtfY29uZmlnKSkgew0KPiA+ICsJCV9ieHRfc2V0X2NkY2xrKGRl
dl9wcml2LCAmbWlkX2NkY2xrX2NvbmZpZywgcGlwZSk7DQo+ID4gKwkJX2J4dF9zZXRfY2RjbGso
ZGV2X3ByaXYsIGNkY2xrX2NvbmZpZywgcGlwZSk7DQo+ID4gKwl9IGVsc2Ugew0KPiA+ICsJCV9i
eHRfc2V0X2NkY2xrKGRldl9wcml2LCBjZGNsa19jb25maWcsIHBpcGUpOw0KPiA+ICsJfQ0KPiA+
DQo+ID4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDExKSB7DQo+ID4gIAkJcmV0ID0g
c25iX3Bjb2RlX3dyaXRlKCZkZXZfcHJpdi0+dW5jb3JlLA0KPiBTS0xfUENPREVfQ0RDTEtfQ09O
VFJPTCwNCj4gPiBAQCAtMTk0NCw2ICsyMDE3LDI3IEBAIHZvaWQgaW50ZWxfY2RjbGtfdW5pbml0
X2h3KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ICAJCXNrbF9jZGNsa191
bmluaXRfaHcoaTkxNSk7DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgYm9vbCBpbnRlbF9jZGNs
a19jYW5fY3Jhd2xfYW5kX3NxdWFzaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqaTkxNSwN
Cj4gPiArCQkJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmEsDQo+ID4g
KwkJCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICpiKSB7DQo+ID4gKwl1
MTYgb2xkX3dhdmVmb3JtOw0KPiA+ICsJdTE2IG5ld193YXZlZm9ybTsNCj4gPiArDQo+ID4gKwlp
ZiAoYS0+dmNvID09IDAgfHwgYi0+dmNvID09IDApDQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+
ICsNCj4gPiArCWlmIChIQVNfQ0RDTEtfQ1JBV0woaTkxNSkgJiYgaGFzX2NkY2xrX3NxdWFzaGVy
KGk5MTUpKSB7DQo+ID4gKwkJb2xkX3dhdmVmb3JtID0gY2RjbGtfc3F1YXNoX3dhdmVmb3JtKGk5
MTUsIGEtPmNkY2xrKTsNCj4gPiArCQluZXdfd2F2ZWZvcm0gPSBjZGNsa19zcXVhc2hfd2F2ZWZv
cm0oaTkxNSwgYi0+Y2RjbGspOw0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQlyZXR1cm4gZmFsc2U7
DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJuIGEtPnZjbyAhPSBiLT52Y28gJiYNCj4gPiAr
CSAgICAgICBvbGRfd2F2ZWZvcm0gIT0gbmV3X3dhdmVmb3JtOyB9DQo+ID4gKw0KPiA+ICBzdGF0
aWMgYm9vbCBpbnRlbF9jZGNsa19jYW5fY3Jhd2woc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LA0KPiA+ICAJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICphLA0K
PiA+ICAJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICpiKSBAQCAtDQo+IDI3
NTAsOSArMjg0NCwxNCBAQCBpbnQNCj4gPiBpbnRlbF9tb2Rlc2V0X2NhbGNfY2RjbGsoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ID4gIAkJCXBpcGUgPSBJTlZBTElEX1BJUEU7
DQo+ID4gIAl9DQo+ID4NCj4gPiAtCWlmIChpbnRlbF9jZGNsa19jYW5fc3F1YXNoKGRldl9wcml2
LA0KPiA+IC0JCQkJICAgJm9sZF9jZGNsa19zdGF0ZS0+YWN0dWFsLA0KPiA+IC0JCQkJICAgJm5l
d19jZGNsa19zdGF0ZS0+YWN0dWFsKSkgew0KPiA+ICsJaWYgKGludGVsX2NkY2xrX2Nhbl9jcmF3
bF9hbmRfc3F1YXNoKGRldl9wcml2LA0KPiA+ICsJCQkJCSAgICAgJm9sZF9jZGNsa19zdGF0ZS0+
YWN0dWFsLA0KPiA+ICsJCQkJCSAgICAgJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFsKSkgew0KPiA+
ICsJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ICsJCQkgICAgIkNhbiBjaGFuZ2Ug
Y2RjbGsgdmlhIGNyYXdsZXIgYW5kIHNxdWFzaGVyXG4iKTsNCj4gPiArCX0gZWxzZSBpZiAoaW50
ZWxfY2RjbGtfY2FuX3NxdWFzaChkZXZfcHJpdiwNCj4gPiArCQkJCQkmb2xkX2NkY2xrX3N0YXRl
LT5hY3R1YWwsDQo+ID4gKwkJCQkJJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFsKSkgew0KPiANCj4g
SW4gdGhlIGJ4dF9zZXRfY2RjbGsoKSwgd2UgcGVyZm9ybSBjcmF3bF9hbmRfc3F1YXNoIG9ubHkg
aWYgbmVpdGhlciBjcmF3bA0KPiBhbmQgc3F1YXNoIGFsb25lIGNhbid0IGFjY29tcGxpc2ggY2Rj
bGsgY2hhbmdlLiBTbyBtb3ZlIHRoZQ0KPiBpbnRlbF9jZGNsa19jYW5fY3Jhd2xfYW5kX3NxdWFz
aCgpIGNoZWNrIHRvIGFmdGVyIHRoZSBjaGVja3MgZm9yIGNyYXdsIGFuZA0KPiBzcXVhc2ggaW5k
aXZpZHVhbGx5Lg0KPiBUaGlzIHdvdWxkIGp1c3QgbWFrZSBzdXJlIHRoZSBsb2dzIHJlZmxlY3Qg
aG93IGFjdHVhbGx5IHRoZSBjZGNsayBpcyBjaGFuZ2VkLg0KDQpBcyBAdmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20gbWVudGlvbmVkICwgdGhpcyBvcmRlcmluZyBpcyB0aGUgcmlnaHQgb25l
IHRvIGZvbGxvdy4gV2UgZG8gbm90IHdhbnQgTVRMIHRvIGZhbGwgaW50byBjYW5fc3F1YXNoKCkg
IGZvciBjYXNlcyB3aGVyZSBpdCBzaG91bGQgYWN0dWFsbHkgYmUgZG9pbmcgY3Jhd2xfYW5kX3Nx
dWFzaCgpDQoNClRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrIQ0KDQpBbnVzaGENCg0KPiBSZWdhcmRz
LA0KPiBCYWxhDQo+IA0KPiA+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+ICAJ
CQkgICAgIkNhbiBjaGFuZ2UgY2RjbGsgdmlhIHNxdWFzaGVyXG4iKTsNCj4gPiAgCX0gZWxzZSBp
ZiAoaW50ZWxfY2RjbGtfY2FuX2NyYXdsKGRldl9wcml2LA0KPiA+IC0tDQo+ID4gMi4yNS4xDQo+
ID4NCg==
