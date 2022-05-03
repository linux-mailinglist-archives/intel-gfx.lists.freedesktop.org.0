Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1573C518A75
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 18:51:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9160E10E931;
	Tue,  3 May 2022 16:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D97D10E760
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 16:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651596670; x=1683132670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3diGDyJ3XTr/1XsJRJh6E30LUtN7fzKiJuxBRfXQuaQ=;
 b=W4YiQyEn68HNGn7nwIlnztSY2Yof6L8JENrBVFbHfHPs4PktQzRhvHuL
 LMg+/Ny0AnSJ9Hi9FbHTsGLXvDVrWTcRnQdDAXZdg0qKqZ4FT/EPH97ek
 emJfw9NhUF0fLbbnYxlni803+69KPNUu67ITGgfAbAz5gGWck5gL/I8z4
 yVHLmA9UwY7wcMYoI9fX7RoU+LtcIJFBbSmUNwlKkhpGtMS8UJXSznidv
 pVVQzA3QXjcmv9s206PeAyhaOnIivJJTcvESE+a+KxaYWrA7vHQTD74/w
 Y69VvvThuD0RGdRcEUzsaKFujwDoblCAvPTLyQyGLmA+OzcXKFrZiW7Wj Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="248072577"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="248072577"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 09:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="733990230"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 03 May 2022 09:51:09 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 3 May 2022 09:51:09 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 3 May 2022 09:51:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 3 May 2022 09:51:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 3 May 2022 09:51:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fYBCpSxr4UQhcCi1ajf1rYDEuoXdEe8y/4E7tb6MKoB2Ig8qMyICybTHz8f7ZqvzWfhNhNxaEvj8bwvSOyUEil4i/JLx1zpgDYSZSiOPcnnjvlKhaKMNLJSYZUWXUpCgABod0YIqjtMhla8s4c5BImbL5VftU3i/nKsE2acPcst3IKmxDUGxrX5VU8tN7/D1lahu9Bm3Z0cjrTleMyHakvvxYWXrJd1VGBxohazUdEs+C3GJXZja2Lv9glQshjccLEHQpdkeXyaaRIsFj4p1ktkyWQOHsx/+b8JET3ULS4FQ0V9huFOndT4rNBbQMNiJCFs5VpMSaW3J4+qnyJloHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3diGDyJ3XTr/1XsJRJh6E30LUtN7fzKiJuxBRfXQuaQ=;
 b=lQX+upiZ7z+EA72XByiyRBxm7cJjclwNLoPIbOvzAZIknechXbXLFCH5SiVGLLGn8pfIOGvNEO3Trwm7YDTooixnGBdXB1MsEg8KZxvRW1rqMHLdvVC/k4BRdbUws4sVuOFN1Uad0y4lWVSRyNxQDNuHFRrTwiT07rLXBgK7KF6KPDYOyMGEm0a3SB/buyFQt2++Pr4QtMlNIjQVGp96DpWfUg18zbvDIveiF4T06W3ahFD4PpvmH7Juzhwj0XSxX1YbgGabJBP54ubpFXdD93B1Lu24cUg3pna++sk57dzExgP+RMUzvEHHyKQHT/OiijYd9ud3DX8n95ocYrAX+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR11MB1344.namprd11.prod.outlook.com (2603:10b6:300:23::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Tue, 3 May
 2022 16:51:06 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::ec95:b7c:857b:120c]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::ec95:b7c:857b:120c%5]) with mapi id 15.20.5206.024; Tue, 3 May 2022
 16:51:06 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "jwboyer@kernel.org" <jwboyer@kernel.org>
Thread-Topic: i915 Updates: DG2 DMC v2.06
Thread-Index: AQHYXuhW2VAD3sLmcEGs/jWdPnUnva0NXiSA
Date: Tue, 3 May 2022 16:51:06 +0000
Message-ID: <ef5502d7cbdf15e52010609712b7eb4cb233cfe9.camel@intel.com>
References: <8593a140a0ee01998d28cdafa5a10aa5f8e44380.camel@intel.com>
 <CA+5PVA5vFH6vZQpYsTjsGkuc8_d53YPcuXGxM2EyThmudr8itQ@mail.gmail.com>
In-Reply-To: <CA+5PVA5vFH6vZQpYsTjsGkuc8_d53YPcuXGxM2EyThmudr8itQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a19e564b-9505-42fd-bc2c-08da2d251e0f
x-ms-traffictypediagnostic: MWHPR11MB1344:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB1344DE9D16405124F302E1FDC7C09@MWHPR11MB1344.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DK0betfvkLifdzEodnWDJ18xZQZT2p6+Hi8kyk2z0oBhdSO6zosBmzhBNo8gHabYkYWp/sxaQCMF+10g7qJuj0Lxh0npXhgVaKmKVTsJDV5wQlA5vTy5E0QwQRgEmQ/1R0AuJ6b+7Kj7Si4r4adOlAjty1NAUDapZuiTQdsfcSDmJ8fX328P5BbJOlXSrQIvaZa2j5bVPKuBs9GyFkv0mxbUpJ4Jnq4hryIYJaGqWyzB6E1R1TJ5qEEK1Jpu7vhogZemP9qs/tJQsKEvOrC9LuNOXuNELKk1Nt508HhjxDeS8BZO/Gsb7Llqe8i4ER67hS3Odhd56ouLzlNczxKauaVe0/Mk2TmPDQYAsnw6EeXU1ClNUrNpuvqx9tkiz12gn+ee5xrdFMTugBL/rdFdKMuSHiSruOVHXZ7vx8/EjPJ5abM46zk7mKm/2zQHruGV9qDv6PgFJH1dU8kV/V2PlscF0lgHDeXvHQOyv4RppPY6hEAeLl8NPvGfITC0w+qrPbdVgoaO+EEs6vnEfHj+meoWKq17FZYxf3ooQ6nL2qDlFBvmth3FmGCxBga6EGpnCBjb17ERq/gD03gjfPZxDwJ41LlWzAURkzlpRA4TEzRvivYr1H2RW20x/QcdMn+CrrPptI6FZlFmNwDbOJ/LrSENxONHoV9XIl1lAXDmD565A5eP0oLm/UwcFEz58bCb7QPepj+bO3y+3AOYME1fWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(91956017)(86362001)(8676002)(66556008)(4326008)(508600001)(76116006)(66446008)(6486002)(64756008)(316002)(6916009)(71200400001)(54906003)(38070700005)(38100700002)(66946007)(2906002)(36756003)(186003)(2616005)(8936002)(6506007)(6512007)(5660300002)(122000001)(53546011)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bDlEUS9PYVJodjhXb2JwZVBxTkw0aWxGNUdpK1JERVVWdFRKNUNMRzcrQUFo?=
 =?utf-8?B?T1pPQkhnMkk2ZmgwRVRjQWsrUm9sMGZLQlZZaUp1TUVraGJ1cmF5eStnRWdX?=
 =?utf-8?B?NWh0K2RFUUxpVEdYOW02UDVXbjI4T1RtRldOWUxlbTBvNFZoanZiUS9LSCtI?=
 =?utf-8?B?N28xZklWclAwZmFaSW9ucDIxSkZYYTlWQ2ZoRi93Q0kvUkpIVVpocmZYeENS?=
 =?utf-8?B?UTdWdWJtWnJkeWkrVFQ0WVNyU1pTSjZCTTVmTHB1NW9DUGUxNERWdkdNYjdl?=
 =?utf-8?B?dkttOHFWam40T3EvYndGVm5LK2d6TDVFNW9kSGNNWE1BSHdKMmlmQlpaUHNx?=
 =?utf-8?B?dWIzOWxjV3VFWGNOOWpOcW9tRlZ1VEE1NGhkcVdnU3RscEIyMUVsUC9QWDJT?=
 =?utf-8?B?ZWZNT2FOZGp0a3RjUDVSWW14c05RNndSZ0FOazdlQklUNEdJeFQ4UWp6SDVW?=
 =?utf-8?B?Vm93Zy9uSHpRbUFyOEozK1BhcFNLRy9oRHZEVURsR012K2FjYVEvOU4zOG0r?=
 =?utf-8?B?bkgvUjRQV0l3MUZHekV1WmMxWXo2TUNnalpIODgzVlN0SndXbWJoOXlSdFFs?=
 =?utf-8?B?L3ZjaStwV0lRalcra1I4ajBVNkRHYUl2bDB0dGdEMmpGMUs4eGFGck85T0o2?=
 =?utf-8?B?MXdyL0UyQ3lDSXJaUlBUV0Y1RGx0TXNhSTYzWERvdkJzOHg4dFpERHgvUTM2?=
 =?utf-8?B?SnFLMHNIN3hvcHhuendmRGtndTN1YTM3Vk9hcS9VTzVYMWJNeEw1Sk9zYjRx?=
 =?utf-8?B?Q0l6RXFETlU1NVlEV3ZOQ1o2NVUxeUVyL0pJQmV1SHJxLzlSb2NjNk1rY2lt?=
 =?utf-8?B?cWg0UzJXRXlWaFo1eDNUOWg4NitwdmkvMlRFZHI5N016WjkvK2o4OXpBL09j?=
 =?utf-8?B?M0F1SSsvWXU5Uk5ncHZQb29uRm1kZ1VEWGsvTHR0bzAzRzlPenpKaVFqaHFl?=
 =?utf-8?B?VXM3ZFppSUdZM3Q2d3IrM09SOUhmcll5TkNqeHhBanMvbkExR3RuMXV4Wjk0?=
 =?utf-8?B?YVlTN3pJWjI3VjBINTBvSnFMaENGdzQ2NmhEb0RmZUFNV2xHUmZlOEpOM3JW?=
 =?utf-8?B?QlNydCtGU2xQSjhJWm45bFpjaVhKcisvaXBLMXFNaDdiRlpSYVJ1WW00VVgr?=
 =?utf-8?B?YW1pM0Q3SDZoZUhDajAxWkM1SmtteFNvOG9iTWxuZ0d6UUc2ZURaSmdqZHdv?=
 =?utf-8?B?YTYwTmdOT3djSW9YdTA4dFh3WE1iNVpMbkFMNTlEVE0rWjRYd3VsVUZpWFUw?=
 =?utf-8?B?WFEzZ01uYW5rMjNreGxnTGp6QkE3WndaWkRRTmJZTitSVytPaVVheDFmSFVr?=
 =?utf-8?B?SjZYanZ3cGt2VktDbGxqZUY2MDhIU3BYSWdkSE5DNTc2SmtQTGRCK05ZZjBt?=
 =?utf-8?B?Nm8xNWpBN0xnZXRDY2xqYzVwb0NSLzQ1T2JqbDlET2JjcS9peWlmQTA0SHpZ?=
 =?utf-8?B?SDRrVEJaUTUxZklVUnc0WHo2Rndoc2EzdXhBa25JUGlsNnI3THlqTmZjZjdQ?=
 =?utf-8?B?SlhQV3V2dFdHNXRLU0EzWjB6VWhuM2xSQlVPeWQ1cVFIZHNVYytudUJVQzhk?=
 =?utf-8?B?aDI1d0hrd0RRZXJsOTZrRnlSb1AvRnZJQVpFTzhKQUh1M0hIdDllYVZWaGtZ?=
 =?utf-8?B?ZnNpSUdVVVlHQVZYcDllQTZVMmRlWGRuMmRkT1JhRGpCTXczTjRhbTB1Q3Vx?=
 =?utf-8?B?MC9hL1NOVzRlclFKY1dvS3FZTTdOZ1FyWWhzVlNJb0wwYU5zN3VhUm9ZOFJL?=
 =?utf-8?B?WXBTYTN4NHpLdlhaK1hVeXE0KzJuWnlwV1RUcmwwbUlaNFYwWWlFbk1KSXE0?=
 =?utf-8?B?dkhqdXI0NnNIdjEyOThjblRNSVBDOUFqNytadzZSRGV2SExTbk50ckpVOFEy?=
 =?utf-8?B?QVVsWTAyWWk1RHJENU5Ed2dwTytuaUVnTDdMM3ZoL2VLc3NmRnk3T3FlRG9R?=
 =?utf-8?B?SDMxd2wyeUhUUWc4MTNycWs1SGFmZ1A5eEdINzQ3dmlNK3Z2cjZYalJRUmli?=
 =?utf-8?B?b1M3Rm5sOVRaV0hyQmh1dXUrYlRmM0k0ZTVWZ3UyMXNwSHFkM0hHWU9EOVVL?=
 =?utf-8?B?azdPcE56MGFsRmU3NzgxRWVGdkNtSWlDM2ZOTzE2azBWdzJxR1VDL1orSUVS?=
 =?utf-8?B?eUVrVGVlTnM3WTh6OVZhMUtRQm4yc2FRaFBqSUlYQXIwaWRvdTN1UUNPWGpW?=
 =?utf-8?B?QkUrUlpGcm1RckJwdVFpcFgzcCtrVlVKMWZBcWpLbHl5YUc2aWlNUm0wRGw5?=
 =?utf-8?B?ZWRwaTV2MFBxTmFya1VaTkhNVzhCdm5INHFVbDdUYis5bk9JUEJkT2kxRE5Q?=
 =?utf-8?B?ZWRwSUhORGFjWFhQd2FmTGRoSGhodTQySnNTUEl2T3NXZll3bnNCV05MSmJ1?=
 =?utf-8?Q?WVZqplEfmWxN32rgjMfKjJq4FJfnvdx4KfMLlWbEkVEN8?=
x-ms-exchange-antispam-messagedata-1: aewUtt+pRqGlTKLu5AWWTUfBTWuNDc2Wn0QKRgh3cdmhuhjgG2tNMW0EwqVBLGer1wMU35Sz3seqog==
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D5F9AFEF47C3A4791336ABA23E2E3B5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a19e564b-9505-42fd-bc2c-08da2d251e0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2022 16:51:06.7577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XO/hLt4jppSfcooV4ZbMzBaoiBderBVLhC1L26qkV3yvJoGT386xKeP/F6cHLGg1J2XMCLr84n6Wf3iisGGn0MxKrn/L0yKKTC8J1YFL0vETegKoCfaJSDN4Ky2OZT/DReTbfvVJvc70vZ2SgNrdWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] i915 Updates: DG2 DMC v2.06
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
Cc: "kyle@mcmartin.ca" <kyle@mcmartin.ca>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hutchings, Ben" <ben@decadent.org.uk>,
 "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIyLTA1LTAzIGF0IDA4OjIwIC0wNDAwLCBKb3NoIEJveWVyIHdyb3RlOg0KPiBP
biBNb24sIE1heSAyLCAyMDIyIGF0IDM6NTYgUE0gVG9sYWthbmFoYWxsaSBQcmFkZWVwLCBNYWRo
dW1pdGhhDQo+IDxtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+IHdy
b3RlOg0KPiA+IA0KPiA+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgYzM2MjRl
YmQ2N2M2ODcyMmUwZmFiYzljYWUwMTM5N2IxNTMxMDIzOToNCj4gPiANCj4gPiDCoCBNZXJnZSBi
cmFuY2ggJ2F0aDEway0yMDIyMDQyMycgb2YNCj4gPiBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIv
c2NtL2xpbnV4L2tlcm5lbC9naXQva3ZhbG8vbGludXgtZmlybXdhcmUgaW50byBtYWluDQo+ID4g
KDIwMjItMDUtMDIgMDg6MzE6NDAgLTA0MDApDQo+ID4gDQo+ID4gYXJlIGF2YWlsYWJsZSBpbiB0
aGUgR2l0IHJlcG9zaXRvcnkgYXQ6DQo+ID4gDQo+ID4gwqAgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVz
a3RvcC5vcmcvZHJtL2RybS1maXJtd2FyZSBkZzJfZG1jX3YyLjA2X3JlYmFzZQ0KPiA+IA0KPiA+
IGZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBiOGJkNmNjZDljNDA5NTA4YTBiNDI0NDky
OTgxNzIxYjQ1YzU1MTI3Og0KPiA+IA0KPiA+IMKgIGk5MTU6IEFkZCBETUMgdjIuMDYgZm9yIERH
MiAoMjAyMi0wNS0wMiAyMjo1MzoyMyArMDUzMCkNCj4gPiANCj4gPiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gTWFk
aHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgKDEpOg0KPiA+IMKgwqDCoMKgwqAgaTkxNTog
QWRkIERNQyB2Mi4wNiBmb3IgREcyDQo+IA0KPiBQdWxsZWQgYW5kIHB1c2hlZCBvdXQuDQo+IA0K
PiBqb3NoDQo+IA0KDQpUaGFua3MgZm9yIHRoZSBzdXBlciBxdWljayBtZXJnZSA6KQ0KDQo+ID4g
DQo+ID4gwqBXSEVOQ0XCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAg
MyArKysNCj4gPiDCoGk5MTUvZGcyX2RtY192ZXIyXzA2LmJpbiB8IEJpbiAwIC0+IDIyNDE2IGJ5
dGVzDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiA+IMKgY3JlYXRl
IG1vZGUgMTAwNjQ0IGk5MTUvZGcyX2RtY192ZXIyXzA2LmJpbg0KPiA+IA0KDQo=
