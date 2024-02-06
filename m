Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D263A84B969
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 16:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468AD112C88;
	Tue,  6 Feb 2024 15:26:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e/hpt+Eb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB829112C88
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Feb 2024 15:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707233210; x=1738769210;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WN5cT+5+uG+En8WQrTwYbRMNyPkf2COa8EcLDPA4TZA=;
 b=e/hpt+EbY6BpsEH6QfxdEVgZtjoZDYrJE4l1uBJnxrepH4uDIrhpYucE
 x+UrkYBj7CUAt6WeLzI/QiSzl+tQz3o0L2hm2iK1N6qnCmiN46oAnHoxz
 EQ6ujzRURSlanRX1xagMH9D8u8M2FsD5TJaDgGZb4PGL8uT318xtzs76g
 fFn+614TSy6632izssVojugEJbSssHnRmNyIcecCIs/kQxNJAOZPmvAto
 xtXB1lPk3V/iSkttNaiQmksv/kG1ITzB7f0bZBc1DxZrwlGDUVvnwVKEp
 KiYASfeXXUBE5dEX5Ro8vFvqCttrEahGAjMPfAmo651d2i6iL0zeJ0HWY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11415694"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="11415694"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 07:26:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="1363326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2024 07:26:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 6 Feb 2024 07:26:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 6 Feb 2024 07:26:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 6 Feb 2024 07:26:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fmDXotJKXThhcUShwkJbG3qVWPKHSfK55kjnZDPbsiAXFC7MaTI6KtxCNr6auKz/SXP5h+Wb37LduBhjO/2u2tSf0Fe6mF5QeM+3HP0Ea0PMUN/gIEKcqU0NzcG7o01gqyLZ1eDyMhG3AzAzpGQsyQAh0A+QNC5wCzGFs9OMwCbk803gvQg1QtVPItrAFN/Djmv9HbJn3C9fEMDO9opwodYrOffhz2oERllegCHMEWxwrGECtny4ssFcaEa3dOtMMZlWEVlpZs/MBkSG4umRhhZQxWuwB9CZAhgrNgOXST5t5//6nPbWgiL4464c1IYbjFO8onnTZzDMrBpKy8p4lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WN5cT+5+uG+En8WQrTwYbRMNyPkf2COa8EcLDPA4TZA=;
 b=bR6HiW07ey3XCcRHLrfd+xReFcLnICHTVMhUTkkZypEookhdkvOEt7lyb3VV0KbQPPs8dXGs+ZdHqV1KBYzqaox2yqM7wjkP/guWt5/Vrl6kEoCTro045nMsHOQtq+1gmh3mA5Kp6YczMlMBcLY3S7P0SJKMwtDVMb8QFbCjHMfjPNKbbknoo6gB4lyhT9gJVcIoyDFEtbN2jVeMvhL7FYATuoKGXXfa6i0xPAvXwQELnZvy2wQ3t7uHtKsTvWUNMn9Nju7Dd0pXyYmiOms9df9fE4dzaPHQ0Kxudae7Z6hAd3VRft7f3V0/5Blwzbp9eMbRnJVcXdW3XbmgSOTpjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Tue, 6 Feb
 2024 15:26:42 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7249.035; Tue, 6 Feb 2024
 15:26:42 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 2/4] drm/i915/psr: Add alpm_parameters struct
Thread-Topic: [PATCH v3 2/4] drm/i915/psr: Add alpm_parameters struct
Thread-Index: AQHaU20hGRvVjJ6uRUuv9OlMeL1b4LD9ertQ
Date: Tue, 6 Feb 2024 15:26:42 +0000
Message-ID: <IA0PR11MB73079A532D33E6F42361AC08BA462@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240130111130.3298779-1-jouni.hogander@intel.com>
 <20240130111130.3298779-3-jouni.hogander@intel.com>
In-Reply-To: <20240130111130.3298779-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA0PR11MB7696:EE_
x-ms-office365-filtering-correlation-id: 05254e50-8fcb-4565-5cc0-08dc27280591
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WGp6lEzBDBRmkBNacHelRRKs8bqA47zVra+UF4nCZ2PTEVHTuJl3N0ldpMkXgy7iEa/8SCZE+OfaDD+yaBxTuTl4H7yDuamxMgaDkGARyqNQC3n7PNk6CKSQYrfTMOkyFWTbAreHJl+qG2poEpYdAIDdl/ehVrxbObOcLWIA3xBfodX1J7fmE90rg35QscudoZzil9d0TK36zdMhC6coG2kSiYEZKaWQepLWlcoqis6krQ68Z05lptWmqF3lPmCfo8CbLF4tmm8pdybEJYMWPdokSi1LIG/6ZIBsYYLgIA7BSSqLYGOZN52vJscmFT3RAHc7UkaJ+Fn2BRZmHArTmf1lPDbHQKL9bXJkaAEfKa6dhogbT1Y3tIFTn80Ps4kfiUbRGwANprmhYUbOw6LC4uWdX8QKSAc0w+TkfpyalUbxYd9rNxWQivsP+5Rv+YlntumHc+BV1R1bTkwS4sfyZmM9cY3w9CtbwPGtV0NK4utPaJBOsUvMdU8W8VDvVupFACre1To791kdNC/fNjp9ZNb2v5h5biUu/NoEA7IabnvhMa/Uz5/pK6qrbFbDaNx9QYzevZzOQc2W2HQG0YMBXpRWteCjsEKn5SZKDkeM5t/PnXxlFbZpGcd7TkG2LLAf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(396003)(39860400002)(366004)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(82960400001)(55016003)(6506007)(33656002)(7696005)(53546011)(122000001)(83380400001)(86362001)(66574015)(41300700001)(316002)(9686003)(52536014)(8676002)(8936002)(71200400001)(2906002)(478600001)(5660300002)(66476007)(76116006)(66946007)(66556008)(66446008)(64756008)(110136005)(38070700009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDd4S3ZERDUyQ2ZyYTgvTTBlbkFPa0sxR0l5dGN5ekZZSWdsQzVUSU15TE9E?=
 =?utf-8?B?VlcwaG9ZbDNlVDdyWXptVnZZa3VWWlE2SG5wNXBnVjg5S2FXbFpYQ0VvTG1W?=
 =?utf-8?B?MmdYa25KcXZJOEZwNUlUSUczNmQ4L3hteUNweHlxNVJleFovUDJyUnZOS1E2?=
 =?utf-8?B?K3lUSnBEdXBxeGE2NTdvak1laFR4dHNqTGNJT0tjbVphdG1BRmdUM1MzeU1I?=
 =?utf-8?B?Ym5RWi9CUkt5TDZ2dXdYUjV0TktIVWI2cWptL1BYaTNxYjhBU0ZZeWsrMUNX?=
 =?utf-8?B?a2FqdFJQbFpvWWVkb0txcUNDUnpReDhyN1hvd2RaZll2VUoyMU1LVm1rZmZu?=
 =?utf-8?B?M29xcHgrOHlpcjBncVQ5dG10VVlRUit1UHVLajhadTVNY0R6QWlwTm9vTEVU?=
 =?utf-8?B?cFY1NkdwNUpEM1craXpjaHBSb3g4YnFXZ2RCa2YxazlkeFFOSTByTWJvSnh6?=
 =?utf-8?B?VGxlRlRxL0hSaVpBOStyRjVxQWZpWnBEaGluMGlGZ3hUZkpHcFkwZlE5NTg5?=
 =?utf-8?B?djZLYnRLa2hKbm9uRnh2S1dITkJuMnZPQlJPQ0ZKZWkxYnJrMUtUeWZmSnBz?=
 =?utf-8?B?dWJsSGZkOFhUN0tUdXJlQU91UG9Ua1dBWndhZUF6Tm1UODdrRGtYNEpiY1pr?=
 =?utf-8?B?bWxBTmI0UlVUTGdiS1F3bTFSbmVXbDFNYldhai85a0xWc0I0dGVpeWRsUnhE?=
 =?utf-8?B?M2NqUTFhTkhsS0UwYXNTd3NNWW1ZclAwcVBTWk1HRkFXYXZnVWhYTFkxYTFS?=
 =?utf-8?B?aE9FT21LUGc0WCsydmdLWDExc3VYdXN4MzdYaFN6Nzh4Nk11Z2VJNXc5SWx2?=
 =?utf-8?B?WVNhbzdXTTlxWUlKVkJOUXhzRk83Qkt3MVI4eCtxeTduRjdpU3dqeXpDS3FK?=
 =?utf-8?B?ckZVelRzK2hoZXJjY2JnZm5QZFJwYzUzTzF6WFpXZTJzdzlPbjBaZGFsdTVD?=
 =?utf-8?B?SklReDd5SGljdTNCRUpEQmlsYUdDTkx5YmlUWHhBQkt1YTF6bDV0bFdScEE2?=
 =?utf-8?B?cE1PTGtYTFlpMzB6ZzdnMmxkRHZBem9zaXpXcDFMdS90QXdXM3BYR291dHZ0?=
 =?utf-8?B?YU9FZXJwWGxpVkZXMXVQcGdONmFQeG1KZEJGNlUydDFteFRNVlFjQVNMcHVM?=
 =?utf-8?B?aVNUTENBbFpxcFlGQ2tJekVzd1RWRUgzbmhTWlNTVGppWDVFRzRpTTMwMGlV?=
 =?utf-8?B?Sk9qQlJ0UDJCWXhKazgyQnE0SnF1N2hEUUNydVJKV3BmOEZVS2w1VlBaUW9V?=
 =?utf-8?B?VXRIclUzSitqdkVKR1pta3U4UTUzSHBpVlhHd3VjRzRRWEhJQ0UvYkVpZ05Q?=
 =?utf-8?B?RkxmTW4zbnlGZXJDei9xSEM0WVNRNmJwQTU4Tlh5eVViUHlOL0JQR2piWU5x?=
 =?utf-8?B?ZytwT0lsYk5XalJyTjhnV3p6RUd2NkFOdEk4d3M0ZTdEOG9iWVRXalZGT2Vj?=
 =?utf-8?B?WStkS2NQMm9jdzQyRHhEOTlvU21LeEgvRzU5YmFKcjJVZXJwd0lzRzdKU3ZY?=
 =?utf-8?B?STVkeDlsYjBSNGN3KytXdEtteDIveVNwdTc3QVJVVjh5V040cjRWSVo3ZGp0?=
 =?utf-8?B?enVnYUY1RzR4Qkl3S2p6cGtISkRSR2VGU1hLUXViN0V5SksweFBZUDU3UHJv?=
 =?utf-8?B?VmJ3d1VIOUlCS2FHSlZjWjJ5SUpPd1h4cHg5RXNER2Q3NzgrQTJyYkQzZTJy?=
 =?utf-8?B?UElteC8waVpjWEp5aG5VWUMyanlITzJUTU1zaUVKM3pnN09mYjg1Z1FEMzBa?=
 =?utf-8?B?VldYUzNHZVFlQlJmTVF5UUsyejBJM0JKTm5MK3UxVVNkRnh4S1lNMVNYYStV?=
 =?utf-8?B?eDVIcnlmaUZJQWxyeGtjSkFMM2lCV1U2WkloUllkaFp4VzFtSE9USGhSRE0x?=
 =?utf-8?B?dXpNa3p5VDB3WFIzYWkwWjN2ekppUk1MUm9XTGlOMnVDSExmdDJnK01jQXp2?=
 =?utf-8?B?MHJ1UHZtbks0MlV6MnBHL090YzY5N2thTnRkZzRnQzNVSmpZZEM0ZWQ4NUcr?=
 =?utf-8?B?NHFMRTFCcEhWUFpQdjlZajVVTHNuRk1rVE9XZTZqaHhwcGN0UzE0TzYvcStq?=
 =?utf-8?B?blp1MkFkSnhFYzJMVCtMVUxCNTVLc2tZczUzd0ZnbWxFVml3dG1lOTA5NUFx?=
 =?utf-8?B?WGxSMUNOSFRSUTNCa2ZkRzJKbFpuczNVTDRRMkxFZ3Z3OVBGNU1DN3J0UC9S?=
 =?utf-8?Q?PSV5JFsJt9CKkO5csHfCCAE+ti1b676ZGOQKXeSpyTfZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05254e50-8fcb-4565-5cc0-08dc27280591
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2024 15:26:42.4797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0FwutqW+Svy9X2rlLLS3BKWfDqE52WbiITsJ1VKhbaG4Ij2nhbgACeY6+V+3X8GtvgC+yFaSPKnUAeLSBH7Tfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgSmFudWFyeSAzMCwgMjAy
NCA0OjQxIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
dXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkN
Cj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDIvNF0g
ZHJtL2k5MTUvcHNyOiBBZGQgYWxwbV9wYXJhbWV0ZXJzIHN0cnVjdA0KPiANCj4gQWRkIG5ldyBh
bHBtX3BhcmFtZXRlcnMgc3RydWN0IGludG8gaW50ZWxfcHNyIGZvciBhbGwgY2FsY3VsYXRlZCBh
bHBtDQo+IHBhcmFtZXRlcnMuDQo+IA0KPiB2MjogTW92ZSBhbHBtX3BhcmFtZXRlcnMgc3RydWN0
IGRlZmluaXRpb24gdG8gaW50ZWxfcHNyIHN0cnVjdA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KUmV2aWV3ZWQt
Ynk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KDQpUaGFua3MgYW5k
IFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQo+ICAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAgOCArKysrLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgICB8IDI4ICsrKysr
KysrKystLS0tLS0tLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTUg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCBhZTJlOGNmZjlkNjkuLmZmNmNkMzBi
MmI3NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE3MTAsOCArMTcxMCwxMiBAQCBzdHJ1Y3QgaW50ZWxf
cHNyIHsNCj4gIAlib29sIHBzcjJfc2VsX2ZldGNoX2NmZl9lbmFibGVkOw0KPiAgCWJvb2wgcmVx
X3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lOw0KPiAgCXU4IHNpbmtfc3luY19sYXRlbmN5Ow0KPiAt
CXU4IGlvX3dha2VfbGluZXM7DQo+IC0JdTggZmFzdF93YWtlX2xpbmVzOw0KPiArDQo+ICsJc3Ry
dWN0IHsNCj4gKwkJdTggaW9fd2FrZV9saW5lczsNCj4gKwkJdTggZmFzdF93YWtlX2xpbmVzOw0K
PiArCX0gYWxwbV9wYXJhbWV0ZXJzOw0KPiArDQo+ICAJa3RpbWVfdCBsYXN0X2VudHJ5X2F0dGVt
cHQ7DQo+ICAJa3RpbWVfdCBsYXN0X2V4aXQ7DQo+ICAJYm9vbCBzaW5rX25vdF9yZWxpYWJsZTsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDEw
MTBiOGM0MDVkZi4uNGJjYTExMDc5OTdmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTc3OSw4ICs3NzksOCBAQCBzdGF0aWMgdTMyIGludGVs
X3BzcjJfZ2V0X3RwX3RpbWUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gDQo+ICBz
dGF0aWMgaW50IHBzcjJfYmxvY2tfY291bnRfbGluZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkgIHsNCj4gLQlyZXR1cm4gaW50ZWxfZHAtPnBzci5pb193YWtlX2xpbmVzIDwgOSAmJg0KPiAt
CQlpbnRlbF9kcC0+cHNyLmZhc3Rfd2FrZV9saW5lcyA8IDkgPyA4IDogMTI7DQo+ICsJcmV0dXJu
IGludGVsX2RwLT5wc3IuYWxwbV9wYXJhbWV0ZXJzLmlvX3dha2VfbGluZXMgPCA5ICYmDQo+ICsJ
CWludGVsX2RwLT5wc3IuYWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5lcyA8IDkgPyA4IDog
MTI7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGludCBwc3IyX2Jsb2NrX2NvdW50KHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHApIEBAIC04MTcsNiArODE3LDcgQEANCj4gc3RhdGljIHZvaWQgZGcyX2Fj
dGl2YXRlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAgc3RhdGljIHZv
aWQNCj4gaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4g
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2Rw
KTsNCj4gKwlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gIAllbnVt
IHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+
ICAJdTMyIHZhbCA9IEVEUF9QU1IyX0VOQUJMRTsNCj4gIAl1MzIgcHNyX3ZhbCA9IDA7DQo+IEBA
IC04NTgsMTcgKzg1OSwxOCBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3Qg
aW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCQkgKi8NCj4gIAkJaW50IHRtcDsNCj4gDQo+IC0J
CXRtcCA9IG1hcFtpbnRlbF9kcC0+cHNyLmlvX3dha2VfbGluZXMgLQ0KPiBUR0xfRURQX1BTUjJf
SU9fQlVGRkVSX1dBS0VfTUlOX0xJTkVTXTsNCj4gKwkJdG1wID0gbWFwW3Bzci0+YWxwbV9wYXJh
bWV0ZXJzLmlvX3dha2VfbGluZXMgLQ0KPiArCQkJICBUR0xfRURQX1BTUjJfSU9fQlVGRkVSX1dB
S0VfTUlOX0xJTkVTXTsNCj4gIAkJdmFsIHw9IFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FLRSh0
bXAgKw0KPiBUR0xfRURQX1BTUjJfSU9fQlVGRkVSX1dBS0VfTUlOX0xJTkVTKTsNCj4gDQo+IC0J
CXRtcCA9IG1hcFtpbnRlbF9kcC0+cHNyLmZhc3Rfd2FrZV9saW5lcyAtDQo+IFRHTF9FRFBfUFNS
Ml9GQVNUX1dBS0VfTUlOX0xJTkVTXTsNCj4gKwkJdG1wID0gbWFwW3Bzci0+YWxwbV9wYXJhbWV0
ZXJzLmZhc3Rfd2FrZV9saW5lcyAtDQo+ICtUR0xfRURQX1BTUjJfRkFTVF9XQUtFX01JTl9MSU5F
U107DQo+ICAJCXZhbCB8PSBUR0xfRURQX1BTUjJfRkFTVF9XQUtFKHRtcCArDQo+IFRHTF9FRFBf
UFNSMl9GQVNUX1dBS0VfTUlOX0xJTkVTKTsNCj4gIAl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRl
dl9wcml2KSA+PSAxMikgew0KPiAtCQl2YWwgfD0gVEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtF
KGludGVsX2RwLQ0KPiA+cHNyLmlvX3dha2VfbGluZXMpOw0KPiAtCQl2YWwgfD0gVEdMX0VEUF9Q
U1IyX0ZBU1RfV0FLRShpbnRlbF9kcC0NCj4gPnBzci5mYXN0X3dha2VfbGluZXMpOw0KPiArCQl2
YWwgfD0gVEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFKHBzci0NCj4gPmFscG1fcGFyYW1ldGVy
cy5pb193YWtlX2xpbmVzKTsNCj4gKwkJdmFsIHw9IFRHTF9FRFBfUFNSMl9GQVNUX1dBS0UocHNy
LQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5lcyk7DQo+ICAJfSBlbHNlIGlmIChE
SVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOSkgew0KPiAtCQl2YWwgfD0gRURQX1BTUjJfSU9fQlVG
RkVSX1dBS0UoaW50ZWxfZHAtDQo+ID5wc3IuaW9fd2FrZV9saW5lcyk7DQo+IC0JCXZhbCB8PSBF
RFBfUFNSMl9GQVNUX1dBS0UoaW50ZWxfZHAtPnBzci5mYXN0X3dha2VfbGluZXMpOw0KPiArCQl2
YWwgfD0gRURQX1BTUjJfSU9fQlVGRkVSX1dBS0UocHNyLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmlv
X3dha2VfbGluZXMpOw0KPiArCQl2YWwgfD0gRURQX1BTUjJfRkFTVF9XQUtFKHBzci0NCj4gPmFs
cG1fcGFyYW1ldGVycy5mYXN0X3dha2VfbGluZXMpOw0KPiAgCX0NCj4gDQo+ICAJaWYgKGludGVs
X2RwLT5wc3IucmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiBAQCAtMTEyNCw4ICsxMTI2
LDggQEAgc3RhdGljIGJvb2wNCj4gX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5k
aWNhdGlvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2QNCj4gIAlyZXR1cm4gdHJ1ZTsNCj4gIH0N
Cj4gDQo+IC1zdGF0aWMgYm9vbCBfY29tcHV0ZV9wc3IyX3dha2VfdGltZXMoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gLQkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQ0KPiArc3RhdGljIGJvb2wgX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwNCj4gKwkJCQkgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1
KGludGVsX2RwKTsNCj4gIAlpbnQgaW9fd2FrZV9saW5lcywgaW9fd2FrZV90aW1lLCBmYXN0X3dh
a2VfbGluZXMsIGZhc3Rfd2FrZV90aW1lOyBAQA0KPiAtMTE1OCw4ICsxMTYwLDggQEAgc3RhdGlj
IGJvb2wgX2NvbXB1dGVfcHNyMl93YWtlX3RpbWVzKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxf
ZHAsDQo+ICAJCWlvX3dha2VfbGluZXMgPSBmYXN0X3dha2VfbGluZXMgPSBtYXhfd2FrZV9saW5l
czsNCj4gDQo+ICAJLyogQWNjb3JkaW5nIHRvIEJzcGVjIGxvd2VyIGxpbWl0IHNob3VsZCBiZSBz
ZXQgYXMgNyBsaW5lcy4gKi8NCj4gLQlpbnRlbF9kcC0+cHNyLmlvX3dha2VfbGluZXMgPSBtYXgo
aW9fd2FrZV9saW5lcywgNyk7DQo+IC0JaW50ZWxfZHAtPnBzci5mYXN0X3dha2VfbGluZXMgPSBt
YXgoZmFzdF93YWtlX2xpbmVzLCA3KTsNCj4gKwlpbnRlbF9kcC0+cHNyLmFscG1fcGFyYW1ldGVy
cy5pb193YWtlX2xpbmVzID0gbWF4KGlvX3dha2VfbGluZXMsIDcpOw0KPiArCWludGVsX2RwLT5w
c3IuYWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5lcyA9IG1heChmYXN0X3dha2VfbGluZXMs
DQo+ICs3KTsNCj4gDQo+ICAJcmV0dXJuIHRydWU7DQo+ICB9DQo+IEBAIC0xMjkxLDcgKzEyOTMs
NyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAN
Cj4gKmludGVsX2RwLA0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiANCj4gLQlpZiAoIV9j
b21wdXRlX3BzcjJfd2FrZV90aW1lcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpIHsNCj4gKwlpZiAo
IV9jb21wdXRlX2FscG1fcGFyYW1zKGludGVsX2RwLCBjcnRjX3N0YXRlKSkgew0KPiAgCQlkcm1f
ZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAiUFNSMiBub3QgZW5hYmxlZCwgVW5h
YmxlIHRvIHVzZSBsb25nIGVub3VnaCB3YWtlDQo+IHRpbWVzXG4iKTsNCj4gIAkJcmV0dXJuIGZh
bHNlOw0KPiAtLQ0KPiAyLjM0LjENCg0K
