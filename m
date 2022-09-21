Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAC35BFF42
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 15:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E1B10E931;
	Wed, 21 Sep 2022 13:52:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E9A10E931
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 13:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663768336; x=1695304336;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZicFn++pUgzrPgJMTiA9eCBzA+GyUHpsrZCmxOTHqX8=;
 b=JoCe4Gl6gg7XWwrzzj5g8KHIQkg8jarT7S74FRAkiNnlVpNj3y1UYpcZ
 R9gXLMpenEKlBuwEKCU7jfP3+VF+AUi5Bkk6gkdaGFatuQIfc8B+QE4o0
 +Xaoneu3iZoO7E0OY8u55OC9islDkP+0So1y8uIv30kO9m9i4gP+ZnSnY
 wIVozSE7GaP7sGOLuBBFlxRghpwsrJ2AiUESrUaDW8kyLIKjAC623uGi7
 UB0rRvt2ks42BdpDgiWHZy6qWdygDy1W8TaVLmkN//3/780YFafqKp92T
 KKHS+AmcoryNuBfEvMBTEeBuixSAauHUZot4GdIHnsRRgLmz3NcI9EaVF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="301405999"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="301405999"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 06:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="948155594"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 21 Sep 2022 06:52:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 06:52:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 06:52:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 06:52:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 06:52:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e8ZYPpbclon+fCaDSe13dFmXFTgR5OLw3qSM+sDc7PZ4ogP18I0mFqd/NDKVmnd4Wsu+PnJj6LM44jYvgyPYq4/zZRRNn0XE8OJN+YoPgcxFgoBvCfl7G3SulW7yn/AutirEnu8Z0M03hwB/Wlx5Jmyp44fy68KVY8ppKdE7eOiPMVmtMbCvMFxETChmbP3KbyPi3Ra7/gc4Cl3awQ0EcTq+U12CIm5sDQ3+3MIR0g3p6ONG6/JtaA6h/La00/J+pZzxl5TYlXaXHUDYzmV2HDKKCkH1VpSEACodmX0wuTh/8yTY0lIPB0/CqSaYJbg2JFjuMnR1yuapaOLjQGx6Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZicFn++pUgzrPgJMTiA9eCBzA+GyUHpsrZCmxOTHqX8=;
 b=Q93m0/1zQ0qOqtEBqR3VWUpuSi/+rUnCZb4lxk8JRKg5FtTCat6n9HZsmqUrrOFgZ1zWD4zDA8Dzh8m8HMs2XEisjNvUONpXojSD/jpuYrD8xJEj9Y7GsemPKHlrEbSfFu8b3YXbr0RfNZH2Lzm1YgN7D/tfKp4Pcl5omtV9ptlP4w8La5uXn6n99DbTf9Q9LHfmPz2knx0ZGZpNz8+t7Ypab6DHJAGtKtYulIYonmvIKWhzbyOtscdjdZIJXSebd/pcR1v+k9tGYeyrlj5CuVS10usJNHwEa+aQG3GmCM3U8WunMFDwGaThm8Dfioz80s8xLaMP1097qUZBNo8gpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by CY5PR11MB6092.namprd11.prod.outlook.com (2603:10b6:930:2c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 21 Sep
 2022 13:52:12 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::b5b6:21ed:ab69:e7c5%11]) with mapi id 15.20.5654.014; Wed, 21 Sep
 2022 13:52:12 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Fix PSR_IMR/IIR field handling
Thread-Index: AQHYzYLa3LNF9oNiv0iBk08xxJlTba3p56oA
Date: Wed, 21 Sep 2022 13:52:12 +0000
Message-ID: <c88baa603d6e5f1d13b67e54a699fcb71c183cc5.camel@intel.com>
References: <20220921062400.50603-1-jouni.hogander@intel.com>
In-Reply-To: <20220921062400.50603-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|CY5PR11MB6092:EE_
x-ms-office365-filtering-correlation-id: 26bb39e3-3077-4aa7-3a1b-08da9bd87c11
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KuEmmvE+Na2sr6SRJTnN7rmy4K33MFcnUA0+K5lFUgNL7xZq6x/mPLMuF4jyuhtA4UD/UJ1dPHKTTDSTraIkMF5YzpZ8dPTtqtno7D1/l6Iy198yPYRrO+xlIicGOSOU4GJePVO93vJRiCksrwSetyeLyNqLCjk15rvO0BhyQcp7JXunLiJr9bMoM/VYJTKQab9W/h0tem4hKqqR75mTOMV97ffIYLlrBS0YCW5h3QPQpBSxa0NSvlKBRVOBmNrzPRBRdmw1mRXgKMnQ9L7Yn82eRO6V+WLFh2rjvsHKVgd5x/a25aUUifj2GkCD7g6zCPBcKKGdYZ1Y5LqMU22WMv7sJj6xZnl0Gletlboxnvx6nsYDQoEw0qwHWe7yP4a3pcs+BHneSeqKD1Uwutdx0DlqFTUpkRmAToyawTW0qLN5eyuI61kdFZNaiYgz35y5vU08D/eLMCZIsXErksPeALiONMxUeioL2768TADx8g8hqUW0rk7uOi9JwmaL3KLK+c6n0k4ZMzn44d+Mr2ZWFMz52DG3JZ8Syj5eXheet1pzHxxqlhraoLhALl+4b8jUU1vRIiaJtVA69+HjL2NJ1SrUiPBJwnnzNUY9T2/QRXzPFQy5W5dyAnhvotlK0dp2WIPI9lk6Uo2zAAUrNrvBnJV+iZ2O6xABa0tqVEMhy7JxkWMxFKQP6JWHjaai4lsMbl8anymzIHAUZzN8sWNVS0P2w/8xwRb7by3LomamIsl8670WjFQoRG2kevNFbdjzYHWW/r9exLfSahl2m6aL9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199015)(316002)(83380400001)(66574015)(76116006)(4326008)(8676002)(36756003)(66476007)(66556008)(38070700005)(91956017)(66946007)(64756008)(2906002)(66446008)(86362001)(38100700002)(122000001)(82960400001)(478600001)(6486002)(71200400001)(6512007)(26005)(186003)(2616005)(6636002)(5660300002)(110136005)(107886003)(41300700001)(8936002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ckhxZTdONXRTRXYydTlwZW9Bd2RaVGZmUTcvaEloZFU1Z0s1cmZlK3JWci9t?=
 =?utf-8?B?d2Frbm5OelhYOUFKSysyRnc1anUvdFB5Z0IyWkpWYzQ1T3J1L3hYUGhWczg1?=
 =?utf-8?B?cFEvT2U2cHhrRHVFdnJOMXRxMklnYXVWMEZMaXFaTHY2ZDNaU092bG4xeEZp?=
 =?utf-8?B?MEVLVnB6Kzh5U2w2R1lVeU5BR1cyMWY5NXBJQUxJa1J4R3FkeTBHcVgwZjFR?=
 =?utf-8?B?d2FqcURaSENTRnV0U3RkMzJ0bnZiMEczNFlpenJ1bHR2TkpZQ09JZCs4VlBs?=
 =?utf-8?B?K05vNXhSdVZmNG10NUtmVjRyeXhGY3lySldoekhBVDFGdUdFTjNETHM2OWRO?=
 =?utf-8?B?V3FUWHBSaTVOZzdIQ1ZicmdjSkFZYTZWYzl5MjFZVnZRWGx3RWVQZTRmODda?=
 =?utf-8?B?VlBBVHAwUkpNK2Rub0k3NkFybEZQM2hIUExOc2hGKytLREFEd0tFc2xpeVh2?=
 =?utf-8?B?MGNJVDlVc05YVVRsQ0JZUHZpaWpTZE1EQTNBd1ZqQ0dRTUkwTVU0VDl5WmFF?=
 =?utf-8?B?LzVOWTFUdy80dDFjbGJaOVhTYjVaM2NETDRzTW9kbE1OOWV4STFYZ0RRVnMw?=
 =?utf-8?B?dEI2bmdUZ1I2NXQzQjZodzNraDRSajNBQTFHMmlteGwvMlJxRjBlSURLUWhF?=
 =?utf-8?B?VnN0d3M2bTd3dkozU0V1UHFvMGtlS1J0NE5VNlVLekRFUkoyL282Z0RpSnpS?=
 =?utf-8?B?UlN4eWlVb2wxKzd0VzNxSXphaVFCcGxYUnhySmFsNXl1dTRXOUxtVDM0SC8w?=
 =?utf-8?B?VVVFd0ZQbWlaSnp5cDRHTGtzRFpHTmJqZERqa0xXQXFqUTY1ckdTSGlKTEps?=
 =?utf-8?B?NE1CZHNPN2lRMG1yTDRVSzZmUDh6MUNuL29mRDc3TmZJTS9yV0wzKzRsMHdl?=
 =?utf-8?B?dElhVHJQcHNrZXh4Y0NzMXJtN3RnVmpQZ21meTcwNzFUdWhyU0RQNGRBME1P?=
 =?utf-8?B?dG45NkthL1p0TjFWN3pQOXU1ZUZQdVFkWDIrVW1IdnU0cWZseXc1aG1LLzE0?=
 =?utf-8?B?QU9IaDlGWjRpU1FtTlgvb3dleEZldE9nTU96TU5UL1RGaW9vL2xqZHhNUllh?=
 =?utf-8?B?dWh2UTFLOE5yK1k2M3BiY1FvZnBzUE5HQWg3a3pFcXNqOW5xeG5zSUZxS2FM?=
 =?utf-8?B?N2pwaXBsTjVwWkc2dUU1VExFUjJwTjhjY1JzazJQS2R6RDlYRVRwYlFMSkhW?=
 =?utf-8?B?WmVNSFhpcFRkNTFZVWVtQnZBQ3RNTU1QZjFHbHlKdHhNVWdYV1FIWHZWblpv?=
 =?utf-8?B?ODZTS0hBVFE2aXg3YThRbDRWMWE2Zmc5NEVGdXcxWVczZlNVM1ovbzJKVHFH?=
 =?utf-8?B?bjlKYzhzU0RLVmgyOHI3dE1UWnJZV1BNUkNWaE1xZEdUcGdOSnN6RHM5aFEx?=
 =?utf-8?B?OE5TMXMrTXp6cVBtOStMSHhVaWljR0xIYnZ5S0lDZFU3LzBtU1NEOEFjR3p5?=
 =?utf-8?B?UDJGUGM5QURjN3Z4UTRjamRETUJnL1VZaVo4Zk5vbk1OTmhBeEFVTnJMcEtZ?=
 =?utf-8?B?UkkwVThyeDZ6MkU2TkQvek9NL0pnQndFbmRxZDhXZ3JPc0JRL2RYR0U1UWJM?=
 =?utf-8?B?a3VaYS91MWFYVEdmTngvaXVDZytQeUZ5ZGd5ZFlNUC9PRHU1K2lwSC96RFRR?=
 =?utf-8?B?bkNaTG4vSjVES0luZjM3VGpTUWVNcW9IY05CbzVNcXgzSGJWcjR3SkhsZ1lz?=
 =?utf-8?B?SFIwVFpHVE9yVFBzcWZoNmxBVVBLMHlmNVpXekJaQkYvRDhseGdPcjNWVUhG?=
 =?utf-8?B?ZTIyYjdJaUNjYnFGQ2pzT2w2REZsMGUrMDF4SHIzakh5cDVQOUJmVjgwV0RQ?=
 =?utf-8?B?MVlhUGNnZ0ZaVFBnM1hTeEdYNVI2MzRKQ0pqazVxYjRkM1c3Mnh5Z2Irb3Qz?=
 =?utf-8?B?M3A3RXFZejg0SVpmMEozWGdjenM3ZzludUZKTVhhaXRJUFViY0dtblZLci9T?=
 =?utf-8?B?VE52QTFkQVk0UUNrQnYxczlhc3pCaUVLM2hNYWxSTmttVG9CUFluaXhGOXVT?=
 =?utf-8?B?cXdKR2xjUHV3anF0V2lNVXdFSkRaZnFKZWlBcmoyTmFicnFxeUw4eWtRNXBk?=
 =?utf-8?B?dDcrd0ZWYzNGeDBEM21pb091cDY5WGYvTjF3T1VuUmJ6R1lBR2cvRXhsb01w?=
 =?utf-8?B?ckZpUlVmcTJ4bFpmYmVlNSt2OUN1VUxBcVVhZmNta0tiL0dPdGQvR0FnakR1?=
 =?utf-8?B?S1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C2B56471EA67FA458D7C8CF887D5F311@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26bb39e3-3077-4aa7-3a1b-08da9bd87c11
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 13:52:12.2622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IL2eCNzwqIW5wgomJMv58k9pxOqeMq1rzzNzviz5zRrd8vGn/q+ZFxk7j94oIRTddQpSfLIDaBm6xHxDMjJxgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6092
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Fix PSR_IMR/IIR field handling
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

T24gV2VkLCAyMDIyLTA5LTIxIGF0IDA5OjI0ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnQgUFNSIGNvZGUgaXMgYXNzdW1pbmcgVFJBTlNDT0RFUl9FRFAgPT0gMC4gVGhp
cyBpcyBub3QgdGhlIGNhc2UNCj4gYW5kIGFsbCBmaWVsZHMgaW4gUFNSX0lNUiBhbmQgUFNSX0lJ
UiBhcmUgc2hpZnRlZCBpbmNvcnJlY3RseSBpZg0KPiBESVNQTEFZX1ZFUiA+PSAxMi4NCg0KVGhl
cmUgaXMgbm8gRURQIHRyYW5zY29kZXIgaW4gZGlzcGxheSAxMiBhbmQgbmV3ZXIuDQoNCj4gDQo+
IEZpeCB0aGlzIGJ5IHVzaW5nIFRSQU5TQ09ERVJfRURQIGRlZmluaXRpb24gaW5zdGVhZCBvZiAw
Lg0KPiANCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IENjOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2ICsrKy0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA5ZGVm
OGQ5ZmFkZTYuLjllY2YxYTlhMTEyMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMjksNyArMTI5LDcgQEAgc3RhdGljIHZvaWQgcHNyX2ly
cV9jb250cm9sKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJICogMCBzaGlmdCBpbiBi
aXQgZGVmaW5pdGlvbg0KPiAgCSAqLw0KPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0g
MTIpIHsNCj4gLQkJdHJhbnNfc2hpZnQgPSAwOw0KPiArCQl0cmFuc19zaGlmdCA9IFRSQU5TQ09E
RVJfRURQOw0KPiAgCQlpbXJfcmVnID0gVFJBTlNfUFNSX0lNUihpbnRlbF9kcC0+cHNyLnRyYW5z
Y29kZXIpOw0KPiAgCX0gZWxzZSB7DQo+ICAJCXRyYW5zX3NoaWZ0ID0gaW50ZWxfZHAtPnBzci50
cmFuc2NvZGVyOw0KPiBAQCAtMTk1LDcgKzE5NSw3IEBAIHZvaWQgaW50ZWxfcHNyX2lycV9oYW5k
bGVyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsIHUzMiBwc3JfaWlyKQ0KPiAgCWk5MTVfcmVn
X3QgaW1yX3JlZzsNCj4gIA0KPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsN
Cj4gLQkJdHJhbnNfc2hpZnQgPSAwOw0KPiArCQl0cmFuc19zaGlmdCA9IFRSQU5TQ09ERVJfRURQ
Ow0KPiAgCQlpbXJfcmVnID0gVFJBTlNfUFNSX0lNUihpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIp
Ow0KPiAgCX0gZWxzZSB7DQo+ICAJCXRyYW5zX3NoaWZ0ID0gaW50ZWxfZHAtPnBzci50cmFuc2Nv
ZGVyOw0KPiBAQCAtMTE5Nyw3ICsxMTk3LDcgQEAgc3RhdGljIGJvb2wgcHNyX2ludGVycnVwdF9l
cnJvcl9jaGVjayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWlmIChESVNQTEFZX1ZF
UihkZXZfcHJpdikgPj0gMTIpIHsNCj4gIAkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwN
Cj4gIAkJCQkgICAgVFJBTlNfUFNSX0lJUihpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIpKTsNCj4g
LQkJdmFsICY9IEVEUF9QU1JfRVJST1IoMCk7DQo+ICsJCXZhbCAmPSBFRFBfUFNSX0VSUk9SKFRS
QU5TQ09ERVJfRURQKTsNCj4gIAl9IGVsc2Ugew0KPiAgCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRl
dl9wcml2LCBFRFBfUFNSX0lJUik7DQo+ICAJCXZhbCAmPSBFRFBfUFNSX0VSUk9SKGludGVsX2Rw
LT5wc3IudHJhbnNjb2Rlcik7DQoNCg==
