Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C5B7E04EA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 15:47:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3865B10EA06;
	Fri,  3 Nov 2023 14:47:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E68510EA06
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 14:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699022833; x=1730558833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KN+0cv3+HlaRLiKLj1+sKu2pBQBNa4l1bXxeF8QXh78=;
 b=c7CWEzbpc/Vk2coPG6icHGckG1yv5zQwiAmPbUjqMrZnfuMK//tIjUMQ
 k1UXs6FvHml87QewrMWlQ4vT8nL884hn37zE6vL5Kb4XM6nUev+y8Ja3P
 T+bDM9V7UkXp6QtCgmaHc1NErK0oHilytIPQv1h/TpItjCznadfjLbTDn
 jGHJvlx8/ipDvMHpG2sbkzzdOAuVygLVw5v9STPaD4YDnKOen/X9X/Zhp
 sDX7pa+OW5EbY6PUSCC91nZROsNmy3zdRgxMRN5C0We7CgVnVeQeKnnEy
 KZ+0T45mMWJ6aiR8SXwiwD9qHRc6tigqZGD6oPZQaawaNUrNRlQQEpEug Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="453251815"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="453251815"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 07:47:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="2767295"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 07:47:14 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 07:47:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 07:47:12 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 07:47:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NIBU6sqKpEczi3SChDjpDI34gH2l7plovnybXsd+HX046R+2UGrV/Vq4kcz6ubBLIz3aVDAt/80mCOTVCa8u+8iEbUh/j9lQMpE5Uk6sjVULg05hNHDyp85rDLctRAemEIAWlMI5B4iBYPKHE+hzFxLIPSEO/z8VzrHVUC1LS8eZiIClz4Ve0D3assIaQzqgA5t4rR+3ztq2WCNYI4h7JbEIA3WoI22RWofVW/X/nKs+3GvxyxhZrNw9VzAU/gXRBWSq3yF8ArQO070NcL2ooeAUJ/sz0KyYZiNAn+gEqUVQIZxPAzN4iO7y1vy42kzFNd7+3oUPL7Oaj99nXvrpFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KN+0cv3+HlaRLiKLj1+sKu2pBQBNa4l1bXxeF8QXh78=;
 b=DHwMYx9zq+NN8kVqtT14SszYnq/ORt77BYBb/pgmFuCj2uapUurAoukFLqqn/tYolqVVNqfQ+ApHCe2W1yLLmaNlwvdwkCTsyATYl+WkUoiTg8KddbrZZ0DuK5bFNHxw1vhBerTUoG6UGXzrzT86rmuzA+QvdrKT2nF4cz3zhSvaoTZxorbblnDYW9eCDhJhxl+NG7F+W2fm8ZyzCxDnULZq51etgpnxcYzUUcrYlDY13bgdn7trXN+a+NwcOa3In+TOGW2yaEff6kU961hdFfTzB7/JShTsqslxUgVJNG70lGyYoyzzQATTW7xiKCiBcVQUQZtpaIW4kcwCE+PIhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SJ0PR11MB5646.namprd11.prod.outlook.com (2603:10b6:a03:303::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 14:47:08 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348%6]) with mapi id 15.20.6954.019; Fri, 3 Nov 2023
 14:47:08 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Clear possible sticky bits on PICA message
 bus
Thread-Index: AQHaDK6J1tnoTORVwUCs0fN8gaWC47BnFu+AgAAGplCAAXcf0A==
Date: Fri, 3 Nov 2023 14:47:08 +0000
Message-ID: <MW4PR11MB7054968C7179AD1072F0C38EEFA5A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231101103101.156505-1-mika.kahola@intel.com>
 <169893500976.1757.2763206983162106542@gjsousa-mobl2>
 <MW4PR11MB70548082087217EF87D066F6EFA6A@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB70548082087217EF87D066F6EFA6A@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SJ0PR11MB5646:EE_
x-ms-office365-filtering-correlation-id: 0a1ea715-eb38-46ba-853a-08dbdc7bc148
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DiYOQrm2IOJ4GauvvntRrROijkfpHzljUGx7P9VxDMOd0KtbtXTGGkJ7LwFZhm2nV3Z2sgK7qrbGOwPrchsN+LFVh1AVDnvJZ3MzT9JaB1xzm9tWqxx/9QVgtvg8Nf4WMUa1NgaUaoIlmA9YRQCHzPl2kqawSfhwOTMWGWfoEhq+AKTyvAd+XETt42RAe5MJ0X9SyIKSs4Tu+2DI5saQ6+HN0pLzdYq5GPMBoLUIE6E0XemyRnVuDdll1ZZddSFsu4KyasqH0KgFNN4XyCuB/zKbfH7Cd30MO2KdNa6+4nQVKvYoh9rETCdfYwEQdBlNPIFvYnso3Ia/ru4oGG89VKDeUG84TMNtBnbNyxkAr/63t1bjIQEPrDdttOHnpc2+Mg/HtYj8TveqCobcJX/zDmfASSnu4mXSR5y4pbRJCFrATVzJo92NRsPFxkMgHEuEKiEzR34dk/VA4yjSwnMbB4i+jpvSU2ViSxG+0qUc6R6aVW4HjEnBf6uI+7kUM7dYSas+5KEN+rZKlk1my/eFmsN2aJkd+sjyf0zJGWUZgNUH9pXGV17eyOApGu5NVEFGT2fXcmb5RKgTuREtO/Me3RzISWa+jumzHi+hg52TboY43+pw6oRrZxHZDeUbRfDJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(346002)(376002)(136003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(107886003)(38070700009)(6506007)(7696005)(9686003)(53546011)(83380400001)(26005)(5660300002)(76116006)(82960400001)(122000001)(15650500001)(33656002)(110136005)(66946007)(66556008)(316002)(66446008)(54906003)(66476007)(52536014)(86362001)(64756008)(55016003)(71200400001)(38100700002)(2906002)(8676002)(8936002)(41300700001)(478600001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bFFZY3R3Q1VHUDR1ejh4Z2lXOENlcnE3NnZXbHFiYnFBSDZzYjd0UCtVREVI?=
 =?utf-8?B?K200clFlcXYwUEg0eW9vS3lCQ3c1S1U0enMveDlySkFVL0VsM1J2TVY1L2VD?=
 =?utf-8?B?SWZ0djZUemplYjBrV25QeHJ6amtPM3BFK1AwWWRLRzFLUDE3RFY2TGVNeVVS?=
 =?utf-8?B?UUVxM2F6TUxPUjJ6ZVNnbFNZeE1VZDdBMDc3TkdmVlZ3eGJBV3Y0a2pLem5r?=
 =?utf-8?B?UHpuNFFsUDM1bko1TUd6QjBnZGE2S21GMkdaQVZtcnk3SXVtRi9pSkR5bGRK?=
 =?utf-8?B?K3JETWFuYjhicEo5MUc2L1hUbVhjeFZhTmNpZ3orcW5vVE0wYjVRazEvK2ZH?=
 =?utf-8?B?SEtyb08wQ216VCsrQmROM0xHcFNCc0h3eXMydzhlTWxCTktqMHUrWXFsbW82?=
 =?utf-8?B?a1V0bWxzdVVaWU1FaTZMTDczenZBNUEvWlp4VGpuRFJBaE9WZzA1TmlYMkNs?=
 =?utf-8?B?ZmNPU3pwOEsxZ09mcGsvWVpudmd0TVk5U3pyU25SdTVtQm1oWUJqakRBUS9M?=
 =?utf-8?B?Tmllcmx1NlhhQlhBMnVoUlZDdjl0L2RvSmR2cEpWRHVONVEwaWExeTAwenpq?=
 =?utf-8?B?dFI3UVNhNmRJQ3g4SFczbnJwU3dvNXhTTDVLSGFBMEpqTmNISUtDekVKQ2R6?=
 =?utf-8?B?dzNPWXlmV3g2M0ZyQW0yYnlLZDlXQTByRzEyOTNtVFVpMUZoUmlqb3BrMEg0?=
 =?utf-8?B?aEZOTmdHUysvWEpjU005WTd1RytxWVQ5N21Tbll0K2VoenNGNjJoM1BETEZV?=
 =?utf-8?B?MDB5ZHlFOElHSHZGdDF4K3Q3Z3k2UmN5bzlva3JMcU9TbVgxaXNJNXhHMzhG?=
 =?utf-8?B?M0RsWVA4RFJOSXUrMVNEeWxnYTdoeWViNVV1aXNObUZnYTBscDlxK0oydFhR?=
 =?utf-8?B?VWdHUkE5dlRFNWN2UXJLTEdUOTB1LzR5WEZzRzdXRTdyeStObU5BeHl5b2lV?=
 =?utf-8?B?bWxhcVRFR1BRcWI5bWZJTlNmbCtYTWZwVVFSeFdyb0psRU5xQnI2dVppd3Jj?=
 =?utf-8?B?cTBBR0VsU0s3U2Iva29KT2V0azJzMHFXKzZlbVNEUUdaRStZd0xBUytRVnhX?=
 =?utf-8?B?RG9qRlpJUml6ak1LWFBBaHFkM1VlcHVqYlVSd0ttVFlkcmJZS0ttUjRlclhw?=
 =?utf-8?B?emsvTnRacU9Hd1gvU052Zk9lQWVnM0JtcXJPZlFYaVRFcmpoYUVMTnVjMFh3?=
 =?utf-8?B?MnhOUGM0Tjhmd1k1ZEJWUEJRWTRrOTNNdnllZ1VlcExqZTByUWN6OFIrc2sr?=
 =?utf-8?B?eHlUVDNQZzE5TDcwVDhyellmb2ptMFdyd3RZd2JlOFhpMEduTVoyR1BPWUo4?=
 =?utf-8?B?dGRjaVpDVDFqcnNBcCsraERxWlVnZWVINDFWeTc1Z3BzQ1l3R2FuWHhrMUJi?=
 =?utf-8?B?ZzNkN3JZKytPc0dqNXB4MnhlRks1SFZiL3NxRDJkekt0UkRKVGwyN0Q1NGFS?=
 =?utf-8?B?NDMyUDRZa1N3eUtnU2pFOGFUcGVXVWp6czRvRDRuT0lWalZBYWtRdldlb2sy?=
 =?utf-8?B?WGhwUmFhMWFCWnF0MC9qRXovRGhaVTltUzhIaXFoZTVDV09rbG1uTDh6NDRJ?=
 =?utf-8?B?ZEp4Rmo5dnpXa1pmY2NGWXRPN2tRcHFOYkEyZXRIdU0xZzJDaFA1U1hEdlJh?=
 =?utf-8?B?YlByVlMrVzJnQkEvcDh2eUpUTW9XaTFFQ3RGQjd3UGRnVk1HOTZkV2RNenly?=
 =?utf-8?B?eitvNm9RUnZQOGp1R0t2TC8yVlFGL2pwSHczUXhGZldmeGwxRXg5UExJRmti?=
 =?utf-8?B?Tnd6WVVsZ0ExajVvNHJZMk4yaXV2T2htTGludU8wcXZtVHhndDk5bStEUzM1?=
 =?utf-8?B?akpxemFvRmZQZVN4c0RYTGovcVNYeTNLWHZRVkxnVEZWVGpJdlpJcFJ4WGR5?=
 =?utf-8?B?c3F6TnA3YWhEbHlEa05GZ0lHcHhwb05LeG5zVkNBNmJtaWNWS1BKNEVwLzV5?=
 =?utf-8?B?eGtVMUlaQllqdFlFOGVzRHdCaXZyRlN2MURJUHRIT1hJQW56c2JOMmZucWkr?=
 =?utf-8?B?MnA1cUg3dk9MNWVidVhHbkVqZXZGUjJpaFFRcFRXZWk1LzFQVU5ZQ3BFd09V?=
 =?utf-8?B?K3dRVXJJY3RMVXVoNmpaM3FIcnBGendTeHJEZ3huSWw3UGl5YWlKVmVjWUhN?=
 =?utf-8?Q?cv+Wnm2rR0gl6BxDSyYff+oOl?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a1ea715-eb38-46ba-853a-08dbdc7bc148
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 14:47:08.4648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z/5UUOIivZ+BmOo+Pgyy7OZ7poVdIX9N8XlAdimllXW1c6iq8Eqs/c73G5Ys1lBgAeIxjyHCH2fkAweBm5rVww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5646
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEthaG9sYSwgTWlr
YQ0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMiwgMjAyMyA0OjU0IFBNDQo+IFRvOiBTb3Vz
YSwgR3VzdGF2byA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFN5cmphbGEsIFZpbGxlIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBDbGVhciBwb3NzaWJsZSBzdGlja3kg
Yml0cyBvbiBQSUNBIG1lc3NhZ2UgYnVzDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+ID4gRnJvbTogU291c2EsIEd1c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0K
PiA+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAyLCAyMDIzIDQ6MjMgUE0NCj4gPiBUbzogS2Fo
b2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gPiBDYzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+OyBOaWt1bGEsIEphbmkNCj4gPiA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgU3lyamFsYSwg
VmlsbGUgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0hd
IGRybS9pOTE1L210bDogQ2xlYXIgcG9zc2libGUgc3RpY2t5IGJpdHMgb24gUElDQQ0KPiA+IG1l
c3NhZ2UgYnVzDQo+ID4NCj4gPiBRdW90aW5nIE1pa2EgS2Fob2xhICgyMDIzLTExLTAxIDA3OjMx
OjAxLTAzOjAwKQ0KPiA+ID5JdCBpcyBwb3NzaWJsZSB0aGF0IHN0aWNreSBiaXRzIG9yIGVycm9y
IGJpdHMgYXJlIGxlZnQgb24gbWVzc2FnZSBidXMNCj4gPiA+c3RhdHVzIHJlZ2lzdGVyLiBSZWFk
aW5nIGFuZCB0aGVuIHdyaXRpbmcgdGhlIHZhbHVlIGJhY2sgdG8NCj4gPiA+bWVzc2FnZWJ1cyBz
dGF0dXMgcmVnaXN0ZXIgY2xlYXJzIGFsbCBwb3NzaWJsZSBzdGlja3kgYml0cyBhbmQgZXJyb3Jz
Lg0KPiA+ID4NCj4gPiA+U2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCj4gPiA+LS0tDQo+ID4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2N4MF9waHkuYyB8IDE0ICsrKysrKysrKysrKysrDQo+ID4gPiAxIGZpbGUgY2hhbmdlZCwg
MTQgaW5zZXJ0aW9ucygrKQ0KPiA+ID4NCj4gPiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPmIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiA+aW5kZXggYjJhZDRjNjE3MmY2Li5mNDM5
ZjBjN2I0MDAgMTAwNjQ0DQo+ID4gPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3gwX3BoeS5jDQo+ID4gPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3gwX3BoeS5jDQo+ID4gPkBAIC0xOTUsNiArMTk1LDEzIEBAIHN0YXRpYyBpbnQgX19p
bnRlbF9jeDBfcmVhZF9vbmNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBv
cnQgcG9ydCwNCj4gPiA+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVUSU1FRE9VVDsNCj4gPiA+
ICAgICAgICAgfQ0KPiA+ID4NCj4gPiA+KyAgICAgICAgLyoNCj4gPiA+KyAgICAgICAgICogd3Jp
dGUgWEVMUERQX1BPUlRfUDJNX01TR0JVU19TVEFUVVMgcmVnaXN0ZXIgYWZ0ZXIgcmVhZCB0byBj
bGVhcg0KPiA+ID4rICAgICAgICAgKiBhbnkgZXJyb3Igc3RpY2t5IGJpdHMgc2V0IGZyb20gcHJl
dmlvdXMgdHJhbnNhY3Rpb25zDQo+ID4gPisgICAgICAgICAqLw0KPiA+ID4rICAgICAgICB2YWwg
PSBpbnRlbF9kZV9yZWFkKGk5MTUsIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTKHBvcnQs
IGxhbmUpKTsNCj4gPiA+KyAgICAgICAgaW50ZWxfZGVfd3JpdGUoaTkxNSwgWEVMUERQX1BPUlRf
UDJNX01TR0JVU19TVEFUVVMocG9ydCwNCj4gPiA+KyBsYW5lKSwgdmFsKTsNCj4gPiA+Kw0KPiA+
ID4gICAgICAgICBpbnRlbF9kZV93cml0ZShpOTE1LCBYRUxQRFBfUE9SVF9NMlBfTVNHQlVTX0NU
TChwb3J0LCBsYW5lKSwNCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1BPUlRf
TTJQX1RSQU5TQUNUSU9OX1BFTkRJTkcgfA0KPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICBY
RUxQRFBfUE9SVF9NMlBfQ09NTUFORF9SRUFEIHwgQEAgLTI2Miw2DQo+ID4gPisyNjksMTMgQEAg
c3RhdGljIGludCBfX2ludGVsX2N4MF93cml0ZV9vbmNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
DQo+ID4gPisqaTkxNSwgZW51bSBwb3J0IHBvcnQsDQo+ID4gPiAgICAgICAgICAgICAgICAgcmV0
dXJuIC1FVElNRURPVVQ7DQo+ID4gPiAgICAgICAgIH0NCj4gPiA+DQo+ID4gPisgICAgICAgIC8q
DQo+ID4gPisgICAgICAgICAqIHdyaXRlIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTIHJl
Z2lzdGVyIGFmdGVyIHJlYWQgdG8gY2xlYXINCj4gPiA+KyAgICAgICAgICogYW55IGVycm9yIHN0
aWNreSBiaXRzIHNldCBmcm9tIHByZXZpb3VzIHRyYW5zYWN0aW9ucw0KPiA+ID4rICAgICAgICAg
Ki8NCj4gPiA+KyAgICAgICAgdmFsID0gaW50ZWxfZGVfcmVhZChpOTE1LCBYRUxQRFBfUE9SVF9Q
Mk1fTVNHQlVTX1NUQVRVUyhwb3J0LCBsYW5lKSk7DQo+ID4gPisgICAgICAgIGludGVsX2RlX3dy
aXRlKGk5MTUsIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTKHBvcnQsDQo+ID4gPisgbGFu
ZSksIHZhbCk7DQo+ID4gPisNCj4gPg0KPiA+IExvb2tpbmcgYXQgdGhlIGN1cnJlbnQgc3RhdGUg
b2YgdGhlIGNvZGUsIGxvb2tzIGxpa2UgdG8gbWUgdGhhdCB3ZSBhbHJlYWR5IGNsZWFyIHRoZSBi
aXRzIGZyb20gYm90aCB0aGUgInN1Y2Nlc3MiIGFuZCAiZmFpbHVyZSINCj4gcGF0aHMuDQo+ID4g
Rm9yIHRoZSAic3VjY2VzcyINCj4gPiBwYXRocywgdGhhdCBpcyBkb25lIGJ5IGEgZGlyZWN0IGNh
bGwgdG8NCj4gPiBpbnRlbF9jbGVhcl9yZXNwb25zZV9yZWFkeV9mbGFnKCk7IGZvciB0aGUgImZh
aWx1cmUiIGNhc2UsIHRoZSBjYWxsIHRvDQo+ID4gaW50ZWxfY2xlYXJfcmVzcG9uc2VfcmVhZHlf
ZmxhZygpIGlzIGRvbmUgYXMgcGFydCBvZiBpbnRlbF9jeDBfYnVzX3Jlc2V0KCkuDQo+ID4NCj4g
PiBUaHVzLCBjb25zaWRlcmluZyB0aGF0IHdlIHN0YXJ0IHVzaW5nIHRoZSBtc2didXMgZnJvbSBh
IGNsZWFuIHN0YXRlLA0KPiA+IG1heWJlIHRoZXNlIGV4dHJhIHN0ZXBzIGFyZSBub3QgbmVjZXNz
YXJ5PyBIYXZlIHlvdSB0cmllZCBhZGRpbmcgYQ0KPiA+IGNhbGwgdG8NCj4gPiBpbnRlbF9jeDBf
YnVzX3Jlc2V0KCkgYXMgcGFydCBvZiBpbnRlbF9jeDBfcGh5X3RyYW5zYWN0aW9uX2JlZ2luKCk/
DQo+IFRoYXQgSSBoYXZlbid0IHRyeSB0byByZXNldCBidXMgYXQgdGhlIHN0YWdlLiBJIGNhbiBn
aXZlIGl0IGEgZ28gYW5kIGNoZWNrIHdoYXQgaGFwcGVucy4gVG8gbWUgaXQgc2VlbXMsIHRoYXQg
d2UgYXJlIHNvbWV0aW1lcw0KPiBzdHVjayBhdCB3YWl0aW5nIHRoZSBhY2sgYW5kIGV2ZW50dWFs
bHkgd2UgdGltZSBvdXQgYW5kIGJhaWwgb3V0LiBJIGhhdmUgbm8gY2x1ZSB3aHkgdGhpcyBoYXBw
ZW5zIGZyb20gdGltZSB0byB0aW1lLiBXZSBhbHJlYWR5DQo+IHJlc2V0IHRoZSBidXMgYWZ0ZXIg
ZXZlcnkgcmVhZC93cml0ZSBvcGVyYXRpb24uIEluIGFkZGl0aW9uLCBhIHNtYWxsIGRlbGF5IHNl
ZW0gdG8gaGVscCBhbmQgY2xlYXIgdGhlIHNwb3JhZGljIHJlYWQvd3JpdGUgZmFpbHVyZXMNCj4g
dG8gdGhlIGJ1cy4gSG93ZXZlciwgdGhpcyBpcyBtb3JlIGxpa2UgYSB3b3JrYXJvdW5kIGFuZCBJ
J20gbm90IHJlYWxseSBoYXBweSBhYm91dCB0aGlzIHNvcnQgb2YgaGFjay4NCj4gDQo+IEkgd2ls
bCBnaXZlIGEgZ28gZm9yIHlvdXIgc3VnZ2VzdGlvbiBhbmQgY29tZSBiYWNrIG9uY2UgSSBoYXZl
IHRoZSByZXN1bHRzLg0KDQpJIHJhbiBhIHRlc3Qgd2l0aCBpbnRlbF9jeDBfYnVzX3Jlc2V0KCkg
d2hlbiBwbGFjZWQgaW4gaW50ZWxfY3gwX3BoeV90cmFuc2FjdGlvbl9iZWdpbigpLiBUaGlzIGRp
ZG4ndCBoZWxwIGVpdGhlciBhcyB3aXRoIGttc19mbGlwIElHVCB0ZXN0IEkgd2FzIGFibGUgdG8g
dHJpZ2dlciB0aGlzIHJlYWQgZmFpbHVyZQ0KDQpbZHJtXSAqRVJST1IqIFBIWSBHIFJlYWQgMGQ4
MCBmYWlsZWQgYWZ0ZXIgMyByZXRyaWVzLg0KDQpUaGlzIHdhcyB3aXRoIHRoZSBjb25maWd1cmF0
aW9uIHdoZXJlIHRoZSB0ZXN0IHZlaGljbGUgaGFkIDRLIGFuZCBlRFAgbW9uaXRvcnMgY29ubmVj
dGVkLg0KDQoNCj4gDQo+IFRoYW5rcyENCj4gLU1pa2EtDQo+IA0KPiA+DQo+ID4gQWxzbywgSSB0
aGluayBpdCB3b3VsZCBiZSBnb29kIGlmIHdlIHVuZGVyc3Rvb2QgYmV0dGVyIHdlcmUgdGhvc2Ug
dW5jbGVhcmVkIGJpdHMgYXJlIGNvbWluZyBmcm9tLi4uDQo+ID4NCj4gPiAtLQ0KPiA+IEd1c3Rh
dm8gU291c2ENCj4gPg0KPiA+ID4gICAgICAgICBpbnRlbF9kZV93cml0ZShpOTE1LCBYRUxQRFBf
UE9SVF9NMlBfTVNHQlVTX0NUTChwb3J0LCBsYW5lKSwNCj4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgWEVMUERQX1BPUlRfTTJQX1RSQU5TQUNUSU9OX1BFTkRJTkcgfA0KPiA+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAoY29tbWl0dGVkID8gWEVMUERQX1BPUlRfTTJQX0NPTU1BTkRfV1JJ
VEVfQ09NTUlUVEVEIDoNCj4gPiA+LS0NCj4gPiA+Mi4zNC4xDQo+ID4gPg0K
