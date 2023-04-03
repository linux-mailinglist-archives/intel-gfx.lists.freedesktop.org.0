Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 976856D500C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 20:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA51110E4E4;
	Mon,  3 Apr 2023 18:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4ECE10E4E4;
 Mon,  3 Apr 2023 18:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680545432; x=1712081432;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+crM6Khy9QLVJdsH5rEqUvsmtOu1SE454XniiJzAPDs=;
 b=WAsD56oBk+OZlX/xfyLDtAnL8AFyd1J3iPMBJfcU+xmA99B97lr7olLu
 DLvBnCPdeef3GZkR9bo6sjOkmcc2AWD/+igcZ6sjhJh/Nd2HcWAUyVvX0
 NQX0DAV6gRMQmt+OZaGfMSAkvgJ+BNQEGkrhpEZYVYjNg5Rsx09LHzmhW
 sfGl7tScAtp6LeQCujQwWGwLPD12uteYIhv9InOVvfStccbsPbdszMjBV
 pkIu92+wnqSLXY4ubSfLtMbTRdX1F6Jv85HyU3lVJMDDLWp/2MjBAVhcp
 bP+VfuXh1ZmWn8PjlPRqgjebNWByQCI7jFB15iZyetnDXfg8kBWQjLiiN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="325990003"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="325990003"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 11:10:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="829665028"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="829665028"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP; 03 Apr 2023 11:10:30 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 11:10:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 11:10:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 11:10:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 11:10:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d8XYaIUS4V+HLYngc9R58guE0AE5Fvko2fDoJ33RIhHLFnZ4O6UtcgVfCXoMI+g3nVtgNAdDLzmbVWMUgDq57cKlCTyKhfa+TW6k+t+aavZg+91zx2ZTeWqlFKwD4MG5oduhxSACOotH07fAQXbgAD3fYr1WDp0w1BVUHGGAXuGbHLmxvyDbLq28lUXGNEsyUSdl/hRxcgcWrE5CF1tK6nlUGAqAwaUQa15SDmYBfNH2F6eJFOL2SSwGTxkAgWmztCu78GdnSblsS2jZ7vz0SUyusZqZN3NAEhjmtEN3C7JFssbXFqOTLpffi7gmRKfmCanrsq0ub7HXo49hIsxp6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+crM6Khy9QLVJdsH5rEqUvsmtOu1SE454XniiJzAPDs=;
 b=D3fZtxvha98vp9t0Z2eaOcSbmP/xMviXg8gE3LA4WgyRFlarmLl83B/69rnf1Q6XoMGKdqrdFPKKrJQplZ6gwBtf9rkS4UvIFwrdzI4evgMfF94fCuVFNEGFDvwE8yA+Q8lv0OYJQSCsp1hPkmzu+IXOWWMONpAgourWapHS9ttN9FrNIUOcztnTR2vcZPSDtiQa2D5mlYgnNvh236zlyl5P4K0Z89gWp03J06wZ6wwYECZy9gDhXhnwEUgDUGcf29CDeH//D8zPsTYXsv5ub/hXaCyU+YxI7ygdc/bD7Uq5Yxc4rkcVg926MsLUpdaYzXMoktTPfaST2WrQTd8rFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by CO1PR11MB4900.namprd11.prod.outlook.com (2603:10b6:303:9e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Mon, 3 Apr
 2023 18:10:27 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::7ad:5a7f:9d62:e51f]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::7ad:5a7f:9d62:e51f%5]) with mapi id 15.20.6254.028; Mon, 3 Apr 2023
 18:10:26 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Thread-Topic: [Intel-xe] [PATCH 1/5] drm/i915: Split display locks init from
 i915_driver_early_probe()
Thread-Index: AQHZZkvkBInIX1UdjEmSfi//zsyJoq8Zz9KAgAAStIA=
Date: Mon, 3 Apr 2023 18:10:26 +0000
Message-ID: <bc6c151c44b46ce04da7760b7ce359f2bf1764fd.camel@intel.com>
References: <20230403164615.131633-1-jose.souza@intel.com>
 <ZCsG32XI7XLljXGP@intel.com>
In-Reply-To: <ZCsG32XI7XLljXGP@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|CO1PR11MB4900:EE_
x-ms-office365-filtering-correlation-id: 3a1c7215-30a0-47a0-ba86-08db346eb37e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 55AGMNh5K6QBT/iB3DPkK/l1oxdqTVjDLoHX1ig3nSwRwrAPriPhmo+WjxcqNynnnWujBuOvpef9bNp/mAq76LtgYMqiwXBj6CHbYRx59wGMeey+99qm3gGazO/GguRMc1LOaksQiOGKGKFLMBtogYwTuhQsR+w8EiPEMRhTVbsyJoaSEEKsijYLPbmSy138BxwA4CYRZ4HakaVnDS4TZKEGEg6uAjOcYpkREy7uXNfvNeZXZMFDXFuXhpTleS27iyBkZJaqUvoNWdOl3DzgaMSuKpENljvpJm35/xmR+LutZnRx3OeZGQJy19DbBdWVtJQ+rX267o9Q4awKtOVbPE8EoOgnEBjS46XFsda639qUFAvETaO+19PY0fNbgOTm67vPs5FPBuEClcdtzq0BV+wBE3P18RLhmR2v3MZE4KTUSpOxpxcTZhshLdJH0SqpApVNkiQgKwSmu5ppjvHtjWEH9qM8TYK2GbJTOAwv7pWSnbZTh5fbsG+2NPxHnv/52iqf9DVw+WgopWoGQmnwXT9Z8PE7W1Ic8d7EROuDvM2Ca2Ett6vNXeje/wvgEdpI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(39860400002)(366004)(346002)(396003)(451199021)(71200400001)(2906002)(186003)(83380400001)(36756003)(2616005)(6512007)(26005)(6506007)(6486002)(966005)(5660300002)(122000001)(8936002)(38100700002)(54906003)(6636002)(82960400001)(110136005)(450100002)(91956017)(76116006)(66946007)(4326008)(64756008)(8676002)(66446008)(66556008)(38070700005)(41300700001)(66476007)(316002)(86362001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YVJQejVibVJ0bDVtRnhSRDVIRWxGemdrYy9qQVQzWmFqWXl6cVVzTTZmTTFG?=
 =?utf-8?B?eWZxR1RQQU53UXY1VzRmQm9zYTJjOW5qUjY5WlNrUG5pNEJiZ1N5QkhuMGFo?=
 =?utf-8?B?ZWxYc1N3MWVwaFg2d3U0di8yQzlJTEsxbTN3bUc2SXg4aTNtc2RobHJVRUky?=
 =?utf-8?B?TEpiWDByK1RtbVZqTTBzQ3N5VTNVRVZvcFluK2g3Zk4rRS81UGRGYmJmN0h3?=
 =?utf-8?B?aHZQNG05VzZHbXRKeHd4U0VDS0hRM0ZtbS9zeVBrZi9zVjRXUXA5a0xDRWU3?=
 =?utf-8?B?a2NIbHdHN1hiN0xzZDNBczErY1BrK1N6NlZEcVRici9lTGtIT3JTMEMwN0xq?=
 =?utf-8?B?SmR5VUgvcktyVnhQMUxZbEU0TmYxMTZYS29Ya05GeWsvT3ZseTVucWQwUmVi?=
 =?utf-8?B?Z0tZY0JabmVGcnY5Z0lJcHU2UnlXM2VncEZnQStvbGMvTmFMUFNTcGdjQ3Z5?=
 =?utf-8?B?Q1hhWnlXM2l0ZjBhLzN4clhNUDBHY2s2aGZyUDI1ZnVQelVYMUdkYWRoZDQy?=
 =?utf-8?B?S3lPbDNFbzJ2dVFNeEZNbDg1dnErY3c5Tkg1bmNMaU5Dak9sL21wbWxKTE5p?=
 =?utf-8?B?VGZxbDBCb0IvUEJaMGx3TnpvdnVPckVEWkt1cXkvWWY2NTZlKzY3NmZRNzZC?=
 =?utf-8?B?L0hPOXdyU041NVZaUStGbWludlplc09kTFR1dGt4RFhJSTVqMEJGOFkzcXUv?=
 =?utf-8?B?SlhKaGlJMXJMOFZZODhOajZvMG1tUVBJNU1FUHFNYW0wNDVid0doVjc3cGNw?=
 =?utf-8?B?QlBkSENSTDlOM2JpWnRQdzlhZ1d2Mzc2M3Y4NFhqT1QyUENOS2tOZHNUbTdu?=
 =?utf-8?B?VHpFb0FkRkpGcFdianVwUm9MV1NvU1dIL2pic0hFbEJXcXZaNzU2U3ZlUUtN?=
 =?utf-8?B?bnl3Vm1PTnRkaEkrZHc1T0pxUUpoZVRiRnhYZEdPSHkzUzhJUFdGZEdqMUp1?=
 =?utf-8?B?S2g4Sk5tM2lJd2hwVFpHU29ub0lEdmpJRnFtMnZPSU50aW1QYzR1STVhZzlH?=
 =?utf-8?B?RElRdGkzR3hrT0hEbFR1b1lNUDBhbGRnU1JHcGIxTHMxeVh6MWFuaXU1WWhr?=
 =?utf-8?B?S29aYnV0S25mZDNvQzk0Y29VbThtMjBjTDdESlpwT2Z5UGw5MEJJY1JiK20r?=
 =?utf-8?B?WDFsTW5NeDAzVlh1MXdIZWU0TDFwVEpKbjlRbHZadTl1bFhROHQ4WmdFMUNh?=
 =?utf-8?B?bnpLTmtkSE5WNjhiL0JsUXh2ZHFFMEg0enh1QmtUTk5raXduVFFZVkJuVjUw?=
 =?utf-8?B?dm0vQkhsZlRTa1h5OG9xTkNXR1ErdnN3RTJnUTB6QXZNd0dYZ3dCMktuYmx6?=
 =?utf-8?B?RU4xVW1lRTd4MjY3OWh0em94REcvbXFPbktiOEpQWTlTQ1NZU2xjaXFscW5u?=
 =?utf-8?B?QjBobXNmR3NhRWV4a2xINkl6NGoxUlk5K0V4Y0VqZFFZRXI2QnBmRlROYkla?=
 =?utf-8?B?N1UvelYxeGppQS9Wa2FQQmI5VHNPNlp5eVo5a2FyTndhVUhjZzh4ME1WMncr?=
 =?utf-8?B?SXlLeFF2U2xGRlNMS2lxTkl2OGZFeUNEdHRZQWNxdm5nM3lKUktpVHRzNXZi?=
 =?utf-8?B?SEN1d1ByNEw2cDlHL2JIL1J2c1Jzd05BVWV0ZE1qbDlCb21NekZ5V2wxTi9W?=
 =?utf-8?B?UmRsWCtaNnF0eEtFa21wc1RFamZvTndRRHZwRXIvU2U1Yk4yOEJVTXpnZVoz?=
 =?utf-8?B?MytCR1dBdXZsUkdvVUdCdzNDY1NPeDdiNXBnUElYeUk5WjBrWjRaWmJTT3RD?=
 =?utf-8?B?NURTQlFYaGM5RmVjSTdnT1FxWDBrZFFkTzZMcm93d01ON3NkTDB4MWduQVlV?=
 =?utf-8?B?Lyt1aWRpTnpSZ1RWT2xNK2RoNnV1c1IxZWJSNjE3YVYySDRxTGZGdE9DZXFa?=
 =?utf-8?B?TndndU5BS3ZmbU9JSFkvWjdHb0w5YytmVGx0ZnMvQ3lZYzh2eFFtSUtiUGZI?=
 =?utf-8?B?WHgvWFQ5VTFPTlN4VGV4bnV6Q1A4SFlKUjNoYTNuU3piNG1mMm8xMEJWQXdO?=
 =?utf-8?B?dm9tSVFKRWRxcHJKMDhza2lrNHBEb2VGOFJWa3VSRE1acEpKVFM3ejI5eDFO?=
 =?utf-8?B?KzR6WHlUSzdnYXBSek9CQWRDWFBobHR4TTZwUjZlVjQ2Nnd2RDNDTG9icFYz?=
 =?utf-8?Q?pN7FD5jTfNrsxt5PIlKxk72lN?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D28BEA4472AEC419F77D84FE23635F2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a1c7215-30a0-47a0-ba86-08db346eb37e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 18:10:26.5499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sPbKOtOQUPf2jbVWFrIMMpXtc65knsAZLLxS/5kkv9pP2JrRbXb2W4GXjv4mc8K/WHL4OTgUjhV/trMxeYV/bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4900
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/5] drm/i915: Split display
 locks init from i915_driver_early_probe()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTA0LTAzIGF0IDEzOjAzIC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIE1vbiwgQXByIDAzLCAyMDIzIGF0IDA5OjQ2OjExQU0gLTA3MDAsIEpvc8OpIFJvYmVydG8g
ZGUgU291emEgd3JvdGU6DQo+ID4gTm8gYmVoYXZpb3IgY2hhbmdlcyBoZXJlLCBqdXN0IGFkZGlu
ZyBhIGZ1bmN0aW9uIHRvIG1ha2UgY2xlYXINCj4gPiB3aGF0IGxvY2tzIGluaXRpYWxpemVkIGhl
cmUgYXJlIGRpc3BsYXkgcmVsYXRlZCBvciBub3QuDQo+ID4gDQo+ID4gQ2M6IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcml2ZXIuYyB8IDIzICsrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiA+IA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiA+IGluZGV4IDA2NmQ3OWMyMDY5YzQu
LjIyNGNiNGNiNDMzMzUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcml2ZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMN
Cj4gPiBAQCAtMTg4LDYgKzE4OCwyMCBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9ncHUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gIAl9DQo+ID4gIH0NCj4gPiAgDQo+ID4gK3N0
YXRpYyB2b2lkDQo+ID4gK2k5MTVfZHJpdmVyX2Rpc3BsYXlfZWFybHlfcHJvYmUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICt7DQo+ID4gKwlzcGluX2xvY2tfaW5pdCgm
ZGV2X3ByaXYtPmRpc3BsYXkuZmJfdHJhY2tpbmcubG9jayk7DQo+ID4gKwlzcGluX2xvY2tfaW5p
dCgmZGV2X3ByaXYtPmRpc3BsYXkud20uZHNwYXJiX2xvY2spOw0KPiA+ICsJbXV0ZXhfaW5pdCgm
ZGV2X3ByaXYtPmRpc3BsYXkuYmFja2xpZ2h0LmxvY2spOw0KPiA+ICsNCj4gPiArCW11dGV4X2lu
aXQoJmRldl9wcml2LT5kaXNwbGF5LmF1ZGlvLm11dGV4KTsNCj4gPiArCW11dGV4X2luaXQoJmRl
dl9wcml2LT5kaXNwbGF5LndtLndtX211dGV4KTsNCj4gPiArCW11dGV4X2luaXQoJmRldl9wcml2
LT5kaXNwbGF5LnBwcy5tdXRleCk7DQo+ID4gKwltdXRleF9pbml0KCZkZXZfcHJpdi0+ZGlzcGxh
eS5oZGNwLmNvbXBfbXV0ZXgpOw0KPiA+ICsJc3Bpbl9sb2NrX2luaXQoJmRldl9wcml2LT5kaXNw
bGF5LmRrbC5waHlfbG9jayk7DQo+ID4gK30NCj4gPiArDQo+IA0KPiBobW1tLi4uIEkgbGlrZSB0
aGF0LCBob3dldmVyIEphbmkgaGFkIGluZGljYXRlZCBpbiBhbm90aGVyIHNlcmllcyBbMV0NCj4g
dGhhdCBoZSB3b3VsZCBwcmVmZXIgdGhlIHdtIG11dGV4IGluc2lkZSB0aGUgd20gY29kZSBmb3Ig
aW5zdGFuY2UuLi4NCj4gDQo+IFNvLCBzaG91bGQgd2UgbW92ZSBhbGwgb2YgdGhlc2UgdG8gdGhl
aXIgb3duIGNvbXBvbmVudHMgaW5zdGVhZCBvZiB0aGlzDQo+IG1vdmU/DQo+IA0KPiBbMV0gaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTU2NzUvDQo+IA0KPiBJIGNo
ZWNrZWQgYW5kIGZvciBhIGZldyBjb21wb25lbnRzIGl0IGlzIHNpbXBsZSB0byBtb3ZlIHRoZW0g
dG8gdGhlaXINCj4gb3duIGluaXQgZnVuY3Rpb25zLiBIb3dldmVyIGZvciBhIGZldyB3ZSB3b3Vs
ZCBuZWVkIHRvIGNyZWF0ZSBuZXcgaW5pdA0KPiBmdW5jdGlvbnMgYW5kIGNhbGwgdGhlbSBoZXJl
Lg0KPiANCj4gSmFuaSwgbW9yZSB0aG91Z2h0cz8NCg0KRm9yZ290IHRvIENDIHlvdSB0d28gaW4g
dGhlIG5ldyB2ZXJzaW9uOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzExNjAzOS8NCg0KZGlzcGxheS53bS5kc3BhcmJfbG9jayBpcyBub3QgdXNlZCBhbnl3aGVyZS4N
Ck1vdmVkIGRpc3BsYXkuZGtsLnBoeV9sb2NrLCB3aWxsIGxlYXZlIHRoZSByZXN0IHRvIHNvbWVv
bmUgdG8gdGFrZSBvdmVyLg0KDQoNCj4gDQo+ID4gIC8qKg0KPiA+ICAgKiBpOTE1X2RyaXZlcl9l
YXJseV9wcm9iZSAtIHNldHVwIHN0YXRlIG5vdCByZXF1aXJpbmcgZGV2aWNlIGFjY2Vzcw0KPiA+
ICAgKiBAZGV2X3ByaXY6IGRldmljZSBwcml2YXRlDQo+ID4gQEAgLTIxMywxOCArMjI3LDExIEBA
IHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfZWFybHlfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQ0KPiA+ICANCj4gPiAgCXNwaW5fbG9ja19pbml0KCZkZXZfcHJpdi0+aXJx
X2xvY2spOw0KPiA+ICAJc3Bpbl9sb2NrX2luaXQoJmRldl9wcml2LT5ncHVfZXJyb3IubG9jayk7
DQo+ID4gLQlzcGluX2xvY2tfaW5pdCgmZGV2X3ByaXYtPmRpc3BsYXkuZmJfdHJhY2tpbmcubG9j
ayk7DQo+ID4gLQlzcGluX2xvY2tfaW5pdCgmZGV2X3ByaXYtPmRpc3BsYXkud20uZHNwYXJiX2xv
Y2spOw0KPiA+IC0JbXV0ZXhfaW5pdCgmZGV2X3ByaXYtPmRpc3BsYXkuYmFja2xpZ2h0LmxvY2sp
Ow0KPiA+ICANCj4gPiAgCW11dGV4X2luaXQoJmRldl9wcml2LT5zYl9sb2NrKTsNCj4gPiAgCWNw
dV9sYXRlbmN5X3Fvc19hZGRfcmVxdWVzdCgmZGV2X3ByaXYtPnNiX3FvcywgUE1fUU9TX0RFRkFV
TFRfVkFMVUUpOw0KPiA+ICANCj4gPiAtCW11dGV4X2luaXQoJmRldl9wcml2LT5kaXNwbGF5LmF1
ZGlvLm11dGV4KTsNCj4gPiAtCW11dGV4X2luaXQoJmRldl9wcml2LT5kaXNwbGF5LndtLndtX211
dGV4KTsNCj4gPiAtCW11dGV4X2luaXQoJmRldl9wcml2LT5kaXNwbGF5LnBwcy5tdXRleCk7DQo+
ID4gLQltdXRleF9pbml0KCZkZXZfcHJpdi0+ZGlzcGxheS5oZGNwLmNvbXBfbXV0ZXgpOw0KPiA+
IC0Jc3Bpbl9sb2NrX2luaXQoJmRldl9wcml2LT5kaXNwbGF5LmRrbC5waHlfbG9jayk7DQo+ID4g
KwlpOTE1X2RyaXZlcl9kaXNwbGF5X2Vhcmx5X3Byb2JlKGRldl9wcml2KTsNCj4gPiAgDQo+ID4g
IAlpOTE1X21lbWNweV9pbml0X2Vhcmx5KGRldl9wcml2KTsNCj4gPiAgCWludGVsX3J1bnRpbWVf
cG1faW5pdF9lYXJseSgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOw0KPiA+IC0tIA0KPiA+IDIuNDAu
MA0KPiA+IA0KDQo=
