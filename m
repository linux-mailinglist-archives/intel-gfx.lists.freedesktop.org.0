Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F84A8035C1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Dec 2023 15:00:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B655A10E1D5;
	Mon,  4 Dec 2023 13:59:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD3510E1E0
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Dec 2023 13:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701698397; x=1733234397;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=erx7T0pI5GAZPulUqRpG48v0QuG9xg9p+e3nAp6Wmc0=;
 b=eolxFKO/L0vx1qz0cVLURYt/6u8NcmoVzzSKGPRkYKXiG0P/UaCelUVp
 DU235/do8X9RPoowE/z5xGp5HWdMhTacw71HSbepveRK58A6pd9RlOPn0
 ZE+Vi3f3hDgKiZ8ROrgq3L3L5oW3gDen+u+IUbpCeL5NEXoZTd9K/JFJH
 POR2HqtURyp20iBc8s65wr30M2AxpKV0V8sw2nHaPD5ySr1iTOYxL9JPG
 kLbk83Y43ss7WeHltuTJn3edQyaWIZSQHnd6RnVhO/9uixX+labG+lURB
 yKnSLqax/1t+p7GnKa2r3LFoqKFb+ff5UPsK/IBvgGct1m6o69BHS/lM+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="458057589"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="458057589"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 05:59:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="888534566"
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; d="scan'208";a="888534566"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 05:59:56 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 05:59:56 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 4 Dec 2023 05:59:55 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 4 Dec 2023 05:59:55 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 05:59:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dfwna7lAVAicU/qX/8RELHZwsClqEvDEOb+qiHwETkO9cWpxInwTAe3h6gmOIoXSOTDgTz7pzcjxmVTBEbY/bmYBzD9rID6HcpnmAoOA1slbAfL7xRgyoGHnBWm+aqWl0J4AFJC2NKpZ88pVLbw4EetvnipLd0iUp5mkzIrPZjVqh/9MyiqKLuFNJqHPoSIDi0YcAvjxLofJsp6Wq9bJwuGW8x/UqaqsI+LehaNj+UHW4HryDrq5tXr52bE7TCBO9IwF1PyftmhUwHtSSvQ/rC9A530mglGeUrE+imXWR6CDhWr/9pdpQcPVvCoJmrk8qpULCdXsv4fih2TiO/+X8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=erx7T0pI5GAZPulUqRpG48v0QuG9xg9p+e3nAp6Wmc0=;
 b=N4vk5x/o5azYSo9JOLnnCNDloUMZqdceBmwFKt0lucBLmr/dzH0F9xFvYhoyfJNKj4TpG6S+4KpubcPthKGp1RUvoozFIajbto/VyhiMMdbOzpV+bOko70jVDoTQKdhuZyXLVriL4pahktJhkQ5CsfjdfhmXVq3XGwmpayWBaAvqcIqFTHbLJ2Jvx+TAzKceEp2cb1fGE4NnAJwtdWUeptqBT6XVYvf5abEa7+1AWlsdZ4OJpJ8bxyoqfm+FhQEdiVW3cC583gOY8jCe3l8ZUUEhOxLQnfWyRCtJSEhbcoV5K41qMvhTfhqrQmEnbXTyFGntDW+yOmV5ajjefDf2aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by DM8PR11MB5591.namprd11.prod.outlook.com (2603:10b6:8:38::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Mon, 4 Dec
 2023 13:59:53 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.7046.033; Mon, 4 Dec 2023
 13:59:53 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
Thread-Index: AQHaJFwleOGqSgZRTEGkeDa9CaFh7LCUgEGAgARnpACAABegMA==
Date: Mon, 4 Dec 2023 13:59:53 +0000
Message-ID: <BL1PR11MB59798C0BDFF91C3F63C0814BF986A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231201134141.1569265-1-jani.nikula@intel.com>
 <ZWnwofolLechg_Dg@intel.com> <87wmtu2str.fsf@intel.com>
In-Reply-To: <87wmtu2str.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|DM8PR11MB5591:EE_
x-ms-office365-filtering-correlation-id: 47968c61-7807-419e-33af-08dbf4d14a57
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9a+z341P1Togdg/0G+bLA5G9jMEu68HthYxLewe/r+cOfWbyYP8V//T3mc9DsT7WylL0ajcKwIriSdw5hyx1lL91gtpy+21TY2o23U1NwMJ2jvtHcfbed8iezL1Zq7IJpkU9Bd/myZLuSbN9GC6EQksUzvtGpOmtZI1K8fK4QTqZPRmXP5j+/h+DiG9A/NX1ZHAi3QrEJ0M/OBaLIMAGppq2PtzF7/TJRUrVDx++zNE3699qv01mn0FyMHUhZo/miXisJ+FWn2GY3atQFTqIG1A9KduUXyAbKk7AEG2ikReEffr+7K7xl2DMMiaJkQhTojmbsCnz5v21xf8io7G5tSiUOoczGxFF8j02qsRUk2h0zkTAJoamIJtZzwBedxYWJ8oxOe3kHAQtOIzqXJKHXKyXJEKDjq22NEAfvMDs5OlpbEoyUVcQY1bU5y6JwB6wIZFu3suhZiAldfNmldR42JRuq4fb2S88N63kyXOT6G9Gy5VEKlXJXSDpinwvaEB3Uq/jtzGOq3c3+i7pbU2K4Y3BLxzXd3/H2svVI+B9axTe0kZHhuuRlrNoOdYIcvOdByV++cpMdHadQ2bV7wTgMpeUTDjvkCSG94N2npnP+Ss=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(39860400002)(136003)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(82960400001)(83380400001)(66574015)(26005)(6506007)(53546011)(9686003)(7696005)(122000001)(38100700002)(55016003)(71200400001)(966005)(478600001)(66946007)(76116006)(66556008)(64756008)(66446008)(66476007)(110136005)(316002)(8936002)(8676002)(4326008)(33656002)(2906002)(41300700001)(38070700009)(52536014)(5660300002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUh0MUtuN3JiYkRRZDhUOG9LSWllTDdMdnQ2bXBzcDAvNFQ1ZHgxM29Rak5a?=
 =?utf-8?B?THFyQ2pQOUlZODF5WGtkRGdJUjVOMGtXdVlDT1VnVFhFYUllYmIzdjhmYVBu?=
 =?utf-8?B?YXJ1RndWTDhrUVlWYjJUWEUzUVpBOHJLSmpqSm9LamxyMDI0bUw2bzFISUhI?=
 =?utf-8?B?VEdNcWMwb1RBeGdLSklsTUFsYUNwWGI5OEN2K082Zjd6SjhMMGtkcXVvMXk1?=
 =?utf-8?B?cFk2dGRNUHM2bmVhTTVzVHBBTWZ2eGFNd051eDAvaE5GZ0llZ2hvRjQzRk9W?=
 =?utf-8?B?T01sejBQdXZkdUJOTVlaL25wd2NoUmRJWmY3YklLL2FiaG4wdGQ4SGt2M1Vh?=
 =?utf-8?B?Vmhsa3ZpbmVyVmludTREd3IwcHJFdUVDUHY3RjZSRWNKbmNsUUQvOXVSYU5M?=
 =?utf-8?B?c2cyZU8rTG0zWHFKVFE5OUJIaVhOQ1gyTXMvY3l1WHlFbUFHejIwd2xZMjk4?=
 =?utf-8?B?MFVWUGorQXhna08zSHM3bXBidEplYnJJZnd5N0lqdEFKdTJ0aGdDSU54ZDdq?=
 =?utf-8?B?ang4Qi8wcEtmdG1wSUxobEhtb0ZaQmJXaUlHbHRZRkh3bFJXZVJqZWdzRDdZ?=
 =?utf-8?B?eVp2eHZzUUxiUnZzTDBNQ2VUSU5ieXhSbjVReVYzRjBERWpxTEJ3TktxYzRX?=
 =?utf-8?B?eUh5bTNFUmFJcEhHTW9mc0ErbmdBTTRHUldEWWsrdXM5elRiVjB3RzFFclFX?=
 =?utf-8?B?THB4RFI0Ky9lYmpzUHZiNkMycktNTW1ZdnNxRTNCVTQyNGYwVVBzZjhXQ3gx?=
 =?utf-8?B?djdrbzNlUVhzQW1WR1lYMW1RdkpzZFJiaEN0cCszS29RZ1kwcWVxMndDWFl3?=
 =?utf-8?B?bmN2VDZkejZ1NTVQZVVBZE03UTZDeHdwbENGODBneHpTM2ZWZ25JK2I2ejdx?=
 =?utf-8?B?UndVS0swSUdoTGh3N0VMTjhDWE5yamhTbHoySnVleXNUZDV3aUJhN0tWQ05h?=
 =?utf-8?B?U3JJYU9oS25pYVBZWnFIYURWTDRyVS9jUzB0YzZaRFN5OEgzZ0VzdDFVSjdN?=
 =?utf-8?B?ZDJnMldWNkhHanBvNEUwR3hsdnluV01QUEYrMVZ3a0YvUTFZSEdRU3FqZFN5?=
 =?utf-8?B?aFJUWjJnMDZvUnZ6ZDl3SEJEK0pwWStjZHBlRUtvUHdIOVRqQ05aV3A4Qmt5?=
 =?utf-8?B?NW8yN05EQ291ZWV0b0tqb1crbmpEWnRLOUpDMy92YVM5YXVjTnZuekFLS1VH?=
 =?utf-8?B?UVI1VmJCdTdZTlFBNExMUmVxOWo2bFVKRU5HTm1taGUyaFZSWHZqSmRHb3pz?=
 =?utf-8?B?RnZlUjYvWXA1V3l6MFk3enpmRUdrT3Y0Vmt6ZzZBYjZMQWJ0SDltckE0R2Yx?=
 =?utf-8?B?dHhNVUx3Z0tScVpBaGZuOVQ1VktpS1phVlVoZlZyYVU4bUc0cVVoekRidkVa?=
 =?utf-8?B?aFpRMTlEVlZabHBMSDgvdDEzRXFwdEhJM2dDc2VRNlp5Um5UZEd5R1dVUWlS?=
 =?utf-8?B?NHJubERNWVV2dTcwRnVva2FIZ3hSRjZkTFA3VFpGZnBRMnpFcjV1UTkrbXdm?=
 =?utf-8?B?OVhha0VkWW9EdzdBYWhtTmdFMUVtRGZuYzBwUTFBTHpJd0FCdnliNUhRcFRi?=
 =?utf-8?B?bEhLc05ua0ZKVUM2VTAwL25oVWI4QVAra2F2Y0hYTVRicU02V2IzbG9MYndp?=
 =?utf-8?B?R3MrZVJJeEZSM1VXSkF0S09Wd2hkY2trUkhiNFpvNkFoWC8vK3Y2OVR0bzFN?=
 =?utf-8?B?azJCa0VYblBKTnBzdXpCL0VPdzdqSDdwZWJBalgvaFFlUWFQdG96bmNaVkdw?=
 =?utf-8?B?R3BKZ0VvTmxDZnc3MHVVcFRsSTVyTi9jTFB6U08ycFR4M0tualV1SnphUXdv?=
 =?utf-8?B?ZWg5MHJGUllQK3ZNQ3NmRGRjOW9qWHdpSlNReWY0Q0NGVjdtOG45bExjdnBm?=
 =?utf-8?B?Skd6eWMxYmNNam1nM2R2aXAwVEV5elVBU1J5b05GaEhGWC90S1JTbENaOVZU?=
 =?utf-8?B?SGREc0hVTVppYkFNYnF0azllVDRsSmZoMysrS0F4VVczV084bTBNTG5seGg4?=
 =?utf-8?B?MlJwZUxISEp6V3pjeDFCNEF3N0NXQ2ZUV0VPOHorbHhiRDg3d2x4dE5WVTRa?=
 =?utf-8?B?SHNGdnpCcUxXTmkwTkdCMlBGL2w0cHJDMlVPaFpQOFZGcHRQTUZ5NFdsQWlJ?=
 =?utf-8?Q?u+tZWa/F23aASI5cBv9m16Jdm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47968c61-7807-419e-33af-08dbf4d14a57
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2023 13:59:53.5503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VZ270g76wK1EFKT6ixE6bwgSSCZgEGDWQxIkatt0lyy7RzKvRVXVPDepx9xAmutBtP3BPxLArbq6+1BjMKitEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5591
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: don't write to DP_LINK_BW_SET
 when using rate select
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgNCwgMjAyMyAz
OjI4IFBNDQo+IFRvOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTWFubmEsIEFuaW1l
c2gNCj4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdm
eF0gW1BBVENIXSBkcm0vaTkxNS9lZHA6IGRvbid0IHdyaXRlIHRvDQo+IERQX0xJTktfQldfU0VU
IHdoZW4gdXNpbmcgcmF0ZSBzZWxlY3QNCj4gDQo+IE9uIEZyaSwgMDEgRGVjIDIwMjMsIFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9u
IEZyaSwgRGVjIDAxLCAyMDIzIGF0IDAzOjQxOjQxUE0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3Rl
Og0KPiA+PiBUaGUgZURQIDEuNSBzcGVjIGFkZHMgYSBjbGFyaWZpY2F0aW9uIGZvciBlRFAgMS40
eDoNCj4gPj4NCj4gPj4gPiBGb3IgZURQIHYxLjR4LCBpZiB0aGUgU291cmNlIGRldmljZSBjaG9v
c2VzIHRoZSBNYWluLUxpbmsgcmF0ZSBieQ0KPiA+PiA+IHdheSBvZiBEUENEIDAwMTAwaCwgdGhl
IFNpbmsgZGV2aWNlIHNoYWxsIGlnbm9yZSBEUENEIDAwMTE1aFsyOjBdLg0KPiA+Pg0KPiA+PiBX
ZSB3cml0ZSAwIHRvIERQX0xJTktfQldfU0VUIChEUENEIDEwMGgpIGV2ZW4gd2hlbiB1c2luZw0K
PiA+PiBEUF9MSU5LX1JBVEVfU0VUIChEUENEIDExNGgpLiBTdG9wIGRvaW5nIHRoYXQsIGFzIGl0
IGNhbiBjYXVzZSB0aGUNCj4gPj4gcGFuZWwgdG8gaWdub3JlIHRoZSByYXRlIHNldCBtZXRob2Qu
DQo+ID4NCj4gPiBXaGF0IGEgdGVycmlibGUgd2F5IHRvIHNwZWNpZnkgdGhpcyA6KCBUaGlzIG1l
YW5zIHRoZSBkZXZpY2UgbXVzdCBoYXYNCj4gPiBzb21lIGludGVybmFsIHN0YXRlIHRvIGtlZXAg
dHJhY2sgb2Ygd2hldGhlIEJXX1NFVCB3YXMgZXZlciB3cml0dGVuLg0KPiANCj4gSW5kZWVkLg0K
PiANCj4gQWRkaXRpb25hbGx5LCBlRFAgMS41IHNwZWNpZmllcyBMSU5LX0NPTkZJR1VSQVRJT05f
U1RBVFVTIChEUENEDQo+IDAwMjBDaCkgd2hpY2ggZXhwb3NlcyB0aGUgaW50ZXJuYWwgc3RhdGUg
YXMgbGluayByYXRlIHNldCBzdGF0dXMsIGFuZCB3aGV0aGVyDQo+IHRoYXQgc3RhdHVzIGlzIHZh
bGlkIG9yIG5vdC4NCj4gDQo+IE92ZXJhbGwgdGhlIHNwZWMgbG9va3MgbGlrZSB0aGF0J3MganVz
dCBmb3Igc3RhdHVzLCBidXQgdGhlIHJlZ2lzdGVyIGlzIGFubm90YXRlZA0KPiBXcml0ZS9SZWFk
IHNvIHdobyBrbm93cy4NCj4gDQo+ID4NCj4gPj4NCj4gPj4gQ2xvc2VzOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzkwODENCj4gPj4gVGVzdGVkLWJ5
OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAyMw0KPiA+
PiArKysrKysrKysrKy0tLS0tLS0tDQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+PiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jDQo+ID4+IGlu
ZGV4IGRiYzFiNjZjOGVlNC4uNjMzNmEzOTAzMGE0IDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0K
PiA+PiBAQCAtNjUwLDE5ICs2NTAsMjIgQEAgaW50ZWxfZHBfdXBkYXRlX2xpbmtfYndfc2V0KHN0
cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ID4+ICAJCQkgICAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4+ICAJCQkgICAgdTggbGlua19idywgdTgg
cmF0ZV9zZWxlY3QpDQo+ID4+ICB7DQo+ID4+IC0JdTggbGlua19jb25maWdbMl07DQo+ID4+ICsJ
dTggbGFuZV9jb3VudCA9IGNydGNfc3RhdGUtPmxhbmVfY291bnQ7DQo+ID4+DQo+ID4+IC0JLyog
V3JpdGUgdGhlIGxpbmsgY29uZmlndXJhdGlvbiBkYXRhICovDQo+ID4+IC0JbGlua19jb25maWdb
MF0gPSBsaW5rX2J3Ow0KPiA+PiAtCWxpbmtfY29uZmlnWzFdID0gY3J0Y19zdGF0ZS0+bGFuZV9j
b3VudDsNCj4gPj4gIAlpZiAoY3J0Y19zdGF0ZS0+ZW5oYW5jZWRfZnJhbWluZykNCj4gPj4gLQkJ
bGlua19jb25maWdbMV0gfD0gRFBfTEFORV9DT1VOVF9FTkhBTkNFRF9GUkFNRV9FTjsNCj4gPj4g
LQlkcm1fZHBfZHBjZF93cml0ZSgmaW50ZWxfZHAtPmF1eCwgRFBfTElOS19CV19TRVQsIGxpbmtf
Y29uZmlnLA0KPiAyKTsNCj4gPj4gKwkJbGFuZV9jb3VudCB8PSBEUF9MQU5FX0NPVU5UX0VOSEFO
Q0VEX0ZSQU1FX0VOOw0KPiA+PiArDQo+ID4+ICsJaWYgKGxpbmtfYncpIHsNCj4gPj4gKwkJLyog
ZURQIDEuMyBhbmQgZWFybGllciBsaW5rIGJ3IHNldCBtZXRob2QuICovDQo+ID4+ICsJCXU4IGxp
bmtfY29uZmlnW10gPSB7IGxpbmtfYncsIGxhbmVfY291bnQgfTsNCj4gPj4NCj4gPj4gLQkvKiBl
RFAgMS40IHJhdGUgc2VsZWN0IG1ldGhvZC4gKi8NCj4gPj4gLQlpZiAoIWxpbmtfYncpDQo+ID4+
IC0JCWRybV9kcF9kcGNkX3dyaXRlKCZpbnRlbF9kcC0+YXV4LCBEUF9MSU5LX1JBVEVfU0VULA0K
PiA+PiAtCQkJCSAgJnJhdGVfc2VsZWN0LCAxKTsNCj4gPj4gKwkJZHJtX2RwX2RwY2Rfd3JpdGUo
JmludGVsX2RwLT5hdXgsIERQX0xJTktfQldfU0VULA0KPiBsaW5rX2NvbmZpZywNCj4gPj4gKwkJ
CQkgIEFSUkFZX1NJWkUobGlua19jb25maWcpKTsNCj4gPj4gKwl9IGVsc2Ugew0KPiA+PiArCQkv
KiBlRFAgMS40IHJhdGUgc2VsZWN0IG1ldGhvZC4gKi8NCj4gPj4gKwkJZHJtX2RwX2RwY2Rfd3Jp
dGViKCZpbnRlbF9kcC0+YXV4LA0KPiBEUF9MQU5FX0NPVU5UX1NFVCwgbGFuZV9jb3VudCk7DQo+
ID4+ICsJCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1eCwgRFBfTElOS19SQVRFX1NF
VCwNCj4gcmF0ZV9zZWxlY3QpOw0KPiA+DQo+ID4gRG9lc24ndCBsb29rIHRoZXJlJ3MgYW55dGhp
bmcgaW4gdGhlIHNwZWMgdGhhdCBzcGVjaWZpZXMgd2hlbiB0aGUNCj4gPiBkZXZpY2UgaXMgc3Vw
cG9zZWQgdG8gcmVzZXQgaXRzIGludGVybmFsIHN0YXRlIHRvIHN0b3AgaWdub3JpbmcNCj4gRFBf
TElOS19SQVRFX1NFVC4NCj4gPiBEbyB3ZSBrbm93IHdoZW4gdGhpcyBwYW5lbCBkb2VzIGl0PyBX
aGVuIFZERCBpcyByZW1vdmVkPw0KPiANCj4gTm8gaWRlYS4gQW5pbWVzaD8NCg0KSGkgSmFuaS9W
aWxsZSwNCg0KVHJpZWQgYmVsb3cgZXhwZXJpbWVudCBhbmQgc2hhcmluZyBteSBvYnNlcnZhdGlv
biBiZWxvdzoNCkZvcmNlZnVsbHkgY2hhbmdlZCB0aGUgdmFsdWUgb2YgZHBjZCAweDEwMCAoTElO
S19CV19TRVQpIHRvIHJhbmRvbSB2YWx1ZSAoMHg5OSkgaW4gZWRwX2luaXRfY29ubmVjdG9yIGFu
ZCBsYXRlciB3aGlsZSBWREQgaXMgb24gZHVyaW5nIG1vZGVzZXQgc2VxdWVuY2UgSSBjYW4gc2Vl
IGl0IGlzIG5vdCBob2xkaW5nIGl0cyB2YWx1ZSByYXRoZXIgZ290IHJlc2V0IHRvIGRlZmF1bHQg
dmFsdWUuIFRoaXMgd2lsbCBjb25maXJtIHdoZW4gVkREIGlzIHJlbW92ZWQgcGFuZWwgcmVzZXQg
aXRzIGludGVybmFsIHN0YXRlLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiANCj4gSSB0aGluayBp
dCdzIGp1c3QgY3Jhenkgd3JpdGluZyAwIHRvIGV4cGxpY2l0bHkgZGlzYWJsZSBEUF9MSU5LX0JX
X1NFVCByZW5kZXJzDQo+IERQX0xJTktfUkFURV9TRVQgdW51c2FibGUuIFByZXR0eSBzdXJlIHdl
J3ZlIHNlZW4gcGFuZWxzIHdoZXJlIHRoaXMNCj4gd29ya3MgYXMgeW91J2QgZXhwZWN0Lg0KPiAN
Cj4gQW5kIHRoZSBhYm92ZSBkZXBlbmRzIG9uIHByZS1vcyB1c2luZyB0aGUgc2FtZSBsb2dpYyBh
cyB1cyBmb3IgY2hvb3NpbmcNCj4gRFBfTElOS19SQVRFX1NFVC4gR09QIHNlZW1zIHRvIGRvIHRo
YXQuIEJ1dCBpZiBpdCBvciBzb21lIG90aGVyIHByZS1vcw0KPiB1c2VkIERQX0xJTktfQldfU0VU
LCB3ZSdkIGZhaWwuIFdpdGggc29tZSBvdGhlciBwYW5lbHMsIHdyaXRpbmcgdGhlIDANCj4gbWln
aHQgcmVjb3ZlciBmcm9tIHRoYXQuDQo+IA0KPiBObyByLWIsIHNvIGRvIHlvdSBoYXZlIGFueSBi
ZXR0ZXIgaWRlYXM/DQo+IA0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPg0KPiA+PiAr
CX0NCj4gPj4gIH0NCj4gPj4NCj4gPj4gIC8qDQo+ID4+IC0tDQo+ID4+IDIuMzkuMg0KPiANCj4g
LS0NCj4gSmFuaSBOaWt1bGEsIEludGVsDQo=
