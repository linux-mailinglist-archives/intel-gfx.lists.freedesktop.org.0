Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6826C7E0B06
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 23:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F8410EAE9;
	Fri,  3 Nov 2023 22:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A135210EAE9
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 22:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699050213; x=1730586213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7YeHoMXDkFE2imb6Fb9lW9y1uOX0fDJxu2COafarx08=;
 b=TpbmRPp1foHetWouVN6fsf8Tzulye7HX9T2zreUSZAX0rcqXdLF1ZvuE
 qGbSaxpXgESom2tF2zeOGMbPdnsi7er8ezGFmB58goDCCVfux/bfRFqJz
 ikUDJc6R4T+5ntHRC07EYhViNlBWaeUBj//BNbM1s1db/ATj7GsSsyIIV
 o/lh23JcphIzvQcKT1GGHjBBwsLLlCn7wfj177fkCTK7Mcl9ewh18oBGn
 HyUTvdN960eOkeiW9+nIQKxTfbM6epixu9J3SEPyWsvRSVRpK5eW8fO3V
 BJuJBt5u9KrX256stnmaVe0IwpYdY0RIbhQ660CNKjqWDSLpQy5obP2nG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="388858338"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="388858338"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 15:23:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="796748615"
X-IronPort-AV: E=Sophos;i="6.03,275,1694761200"; d="scan'208";a="796748615"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 15:23:32 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 15:23:31 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 15:23:31 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 15:23:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJ7daLLaRdNreFr7KTgelZgmiqdSzjBtm2RjBd3Qt+ihpryWKWhcEDD91MNoVuL6e7oahB0lYEuxhBKKnAzUPL72sYjKhWmCWYxvVBnFe6ifhdbCptOjRvEKrxwXAhKwJB3SmM1EjN/tXyAVZAN2Vej+m9TTyyKTfdi/JMTEx6bd8P9IpASNqRofsUHptJSUoAhGEtDzsMbjy6mVHQJ+f78n7rcSPDC1Baqxfwu+FlL604wmUxaEMANq+bAXb6OjLjfYPbajHH2pohBgxCqn504RRnZoTmmf4RKRAtfGSTiKPo6+jS89Sd6/L9pjYkcJyCPwZ4Dp1kS0BToyNK2sUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YeHoMXDkFE2imb6Fb9lW9y1uOX0fDJxu2COafarx08=;
 b=UYjRLvXKYDHsawZprmiSHMtK18cUpqkYGS7dnPY45E2n7COxbXvp/YxEq2B9t44AgiX9+8EwS/uMPu7eiAOjs/fPr0u/rPpFy9yqaAqW72H0Pw8EJR35y3UWQ9wfsdkBZ62NzLQa5h0N8U06tpNKxDmknVHDmSRhN+Blww/gPOtv+kLzzsZ268tMaD6uoWr375sFFJ303fKtBT5afupfQ+pFhnUZmT3Uij5NMdgrJGB65lRSM4Pr5vniPYCs+EpipO9AWxVlb7VB/0dz5NpvSEudtBj3g81CPZ3WDkTU7rKLd9byrLXML3SsO3J1U0NFMK/NUfV85aT8RqG4CXHaeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.24; Fri, 3 Nov
 2023 22:23:29 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::3365:36be:3cbb:4e85%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 22:23:29 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Hajda, Andrzej" <andrzej.hajda@intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when vt-d
 is enabled
Thread-Index: AQHaDabTvnAABxr1ckWWdxkrt2u5lbBnQFgAgAAL7YCAAADLgIAA96IAgABxMPCAAGVHAIAAEfxg
Date: Fri, 3 Nov 2023 22:23:29 +0000
Message-ID: <DM4PR11MB5971BA6178F528344E1FCB8F87A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231102160644.1279801-1-radhakrishna.sripada@intel.com>
 <495ea80c-06e5-4557-8c82-badb9c1be7ac@intel.com>
 <a96ab630-e430-447b-864f-5f1aacc9af75@linux.intel.com>
 <DM4PR11MB59717CE2FEF0F4DA5380992187A6A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <aee78f9c-1ca4-48ed-aa18-da03a50ebb14@linux.intel.com>
 <DM4PR11MB59717882C4AC2BA291D7F12487A5A@DM4PR11MB5971.namprd11.prod.outlook.com>
 <a007bcb2-ae18-4bf1-8b9c-56b37303f7f4@intel.com>
In-Reply-To: <a007bcb2-ae18-4bf1-8b9c-56b37303f7f4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MW4PR11MB6811:EE_
x-ms-office365-filtering-correlation-id: dd317661-a59d-4b6d-9099-08dbdcbb816b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Li7SQYvBdR1xXwLF3HgMO3NaL9ak4M0ydTR45llH1+Tr4s8L4JkSN8YiTrgPkPnqvG/7Qhxa3W4YaxaWtPfq0+ghCLMCbibyZKhmLzR942Pch/rIBQPGJ5qKJYyME3N1tLxKOq2J1zxD4lvEvvIU2iSuuVHGRBJaXn4FaSbXorJVyuksWIsnoa5/1m0sBDsdOevAT5SitE4GoJIeIppuJaQ/fdNQZXwf13HWOcV3qaWi65CgR1FIlQ+n/LVZIeUC+USjRgPyR31k9qBiyJpab2BpyuYQrmUiZjF0DI4VWQX1ohUhJpd5GyVUbaJbLDpcTgXWuIYBLEPLYR8wVvCNim9N37Zl4yhIoY/D3zJdCY866lpW89CktKj19uJexvCPJNsmWmTRNosxgFlshSjLCeJ/sUZ2bEZDMjEIjcS7tiMRxq5oEnBRWNoOjNJ67lK5mxjdr8aDBfsqduolzMNkIA/DWJa7A6CbEQyceDgGWmr3IqbepQoyDvpD+Jxs/URku0jF9mIOOUQZpH6rNTIB0Z48ftckMd1eq71b0xGsDKhmjeRSfnLSzaAsDn5hcE2N27tM8cCvItL+98kapPwiRPLqfJ2Jmvf87LRLU9RpVtA4yoX2NMdq53sbCYV8osB/eazxt62jx6JuUStBNJblZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(346002)(136003)(396003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(122000001)(83380400001)(55016003)(38070700009)(82960400001)(26005)(54906003)(86362001)(316002)(66946007)(64756008)(66446008)(66556008)(66476007)(110136005)(2906002)(76116006)(8676002)(52536014)(4326008)(5660300002)(41300700001)(9686003)(7696005)(6506007)(53546011)(8936002)(33656002)(478600001)(71200400001)(966005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWtuS2hRSTIxMkYvMzY1Ny9halhQVFVjU2pQazdXR3pSOWxJaEx1U054cTNv?=
 =?utf-8?B?aUs1b3FTZjQxRUZzakxxL2EyMUxQOW15NENBOVZhY3R3YWxSOGxzZ05aUVg5?=
 =?utf-8?B?YzRoSWxJSktIRDRwbitYWjVDWm5ITllGMDhzaVBnVFVIdzgrbitKWlhpYU5W?=
 =?utf-8?B?RU1IbXVKOWppKzAvaHdYQ1FPYm1rc0pPQ2NuaDAvampDNTAxUzU0RFJCK1li?=
 =?utf-8?B?UHUwcmowS0lUUmdIV0g0R0RHb1IrbUR6MDVIKy9ac25xT0doSm5oTklLTFdn?=
 =?utf-8?B?VldZZlRmeEY0UGRTeTFvdDhnMWVFREE3bXIzMEhDbG1xT3l3cGxPOWloKzkr?=
 =?utf-8?B?cU1WTFdSdGF3Sm1FMEZSTnQ0TTRqa2xUSW0wNlZPdlJUZnUxSDUrZjl4VXlD?=
 =?utf-8?B?WnhTWm1ZOE9HSVcyWHQySDd5aHNUSkk1blpyTThiWWF6eGRkanM2SkpMVnlM?=
 =?utf-8?B?OFhQSEVEMWhST1JJTytkVWhsN3F5b0hBc05IRzM3cVZLZ2hra2NDVDkyWVJT?=
 =?utf-8?B?ZTRERnZYbjliMWp1czhzb2JMNHVLUXVNYzBWdmlsdS8zQ3Z2WEt6dE5jYk1w?=
 =?utf-8?B?VnlzMjhIUllFV053VExzVWxuWDFoa2R5S0RYVmhUMmo4WWNvTkdrZVdRTHky?=
 =?utf-8?B?VjBudUJSTzNuSUNMNDB4UDJDaHlrWW9McDZKeTdEbTZZR2diNXJCcHIyOSsx?=
 =?utf-8?B?STZJTGdENmxvYzNBU1lENE9yaTBuZWhuanBUayt6Y3BwdXBIdGl4MUkxZjAr?=
 =?utf-8?B?ejhXckk0V0dteTJtK01LTVBEY3JUV3laVjcwSVVsSXF5a2xnQkRvN05hSXdJ?=
 =?utf-8?B?QXIvSVRpNEo0aUloTHhocDdiTU1hTVArcFBZbVhCcVJTQll6N3dYeEhHOTZi?=
 =?utf-8?B?dlFLeTJGT1dBUG9VZzFLQUFkeUpJTndzWFNjeXIrcDFjVC9KRnd3T09PL0k4?=
 =?utf-8?B?UjF6bzZ2R215SlY1Z1RsUnpPNFlnQlhDVXJSQktqU2RuYTJKWFZuWmdVMitv?=
 =?utf-8?B?S0JGV2dlZlF5VnBSSDZkbmJPVWpNMjBaZ2VDeTVTRnJHTHUrSnhRMWlJY01p?=
 =?utf-8?B?eFJYeXV2dlloNVdTUUdMSm5DdU10bk5VZmNVWklIejI0OWFlaFhTZHEyM1M0?=
 =?utf-8?B?YnJjSWZYUGFDK253NktLc1R1MGRIWUV0SG5iTnUyblczL1ZCMm9HVUhrTUQv?=
 =?utf-8?B?VG5VdDhtWFlacU4xeitocWxNYjcvSkxudUxLaEFZa2E5VTBLZjlQb0xkZ0da?=
 =?utf-8?B?SWp2Qm1JZVFidXdGRlV5cFlZTVhIYjhEU3RPNGF4dUJ6RmhZcFhuT2NPYlNm?=
 =?utf-8?B?VkI4VXlwZ1hIS0w4dThUb3V1UGZvVHJkZ0NSZ3dwSmx4QTRRUWozQTdDRmVh?=
 =?utf-8?B?Ym5meWhSUHNGZno5OUFSdEJmaWg0OGs1c2tldkFmU1FCczU3c3JoM2N3MDJQ?=
 =?utf-8?B?QjQ2MGhyMFpaSUgwUzE5a3U3dDQyWFovUnlNMUlaWlVGTVNQWFFSQ0F0Q05R?=
 =?utf-8?B?aVdhSXhTUUcwRzhoM253bXdsWHlhaCsrS1V1dkN1cEpleFd5TERFcTVzLzQr?=
 =?utf-8?B?VWVHNTdoVkgrN2VaclVkT0JYbEdRM3N0VGxZWE8xMEtmQ0tncVlmajMxcjRx?=
 =?utf-8?B?TDRQRXBOMmVuSzlBNjlsMmk2T0JPMklqZ1pZYzBqZXdhdjhpSkhxMkoxS0gz?=
 =?utf-8?B?bGhqVXFqQyt2TUJuOWcyYXRxYnBQa0JTTy9XMmNncDBoR0Zib1BKcU40Y3ZV?=
 =?utf-8?B?MktwR1FFY0VGVkFETTM2MWQ0SHg1VVRYSW0rdTllaDRyN3VSMXhHU29Sa2M1?=
 =?utf-8?B?T1BZM1IyK2pWaVczVmkyYkEzaDMrSE1YYjFnc1NibHF2K3JyTFRtUU9OVzJy?=
 =?utf-8?B?eWZaZC9mTXp4REVLR0pwaFdqVzh0VHMvOEx0enhhKzhsM3g1MVV2dUtnNXhx?=
 =?utf-8?B?bVY2L2JBVksrNVpUNElmN3BCU0w3bnlWVndNYUY3VDl5M2dCcndLQkZkbm56?=
 =?utf-8?B?a0xrYjJwRW12Z2ZUTm1JNnlVaXpGa2ZsMndJSGVQendobjhGQi9MelVmSUpJ?=
 =?utf-8?B?cmJlaGRsUnFUZWRrZmQzeWdyaFpBbHhuY1VCcXB3QWlEcGlibGJyVllRa1Yr?=
 =?utf-8?B?ajRGVGtGOGoxakl4TGJIN21MUnFJUmNidGNrQTVpaWFGak1xMkxZNzU0NFdI?=
 =?utf-8?B?WHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd317661-a59d-4b6d-9099-08dbdcbb816b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 22:23:29.1312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eedUIce2YmTbS8QVsxF5U02vgkIt4Yf3Ak8oj2SIhkFHavqxHen45YIuMrqJakab6+bZ6xsz29daJgTVc26ToRTAFW4rGGNn8h+yyuEbhyE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Increase guard pages when
 vt-d is enabled
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQW5kcnplaiwNCg0KVGhlIHBhdGNoIG1lbnRpb25lZCBiZWxvdyBkb2VzIG5vdCBoZWxwIHdp
dGggdGhlIGlzc3VlLg0KDQpUaGFua3MsDQpSSw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+IEZyb206IEhhamRhLCBBbmRyemVqIDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4NCj4g
U2VudDogRnJpZGF5LCBOb3ZlbWJlciAzLCAyMDIzIDI6MTggUE0NCj4gVG86IFNyaXBhZGEsIFJh
ZGhha3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPjsgVHZydGtvIFVyc3Vs
aW4NCj4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXgu
aW50ZWwuY29tPjsgVml2aSwgUm9kcmlnbw0KPiA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
U3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBJbmNyZWFzZSBn
dWFyZCBwYWdlcyB3aGVuIHZ0LWQgaXMNCj4gZW5hYmxlZA0KPiANCj4gDQo+IA0KPiBPbiAwMy4x
MS4yMDIzIDE2OjUzLCBTcmlwYWRhLCBSYWRoYWtyaXNobmEgd3JvdGU6DQo+ID4gSGkgVHZydGtv
LA0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+DQo+ID4+IFNlbnQ6IEZy
aWRheSwgTm92ZW1iZXIgMywgMjAyMyAxOjMwIEFNDQo+ID4+IFRvOiBTcmlwYWRhLCBSYWRoYWty
aXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47IEhhamRhLCBBbmRyemVqDQo+
ID4+IDxhbmRyemVqLmhhamRhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXguaW50ZWwu
Y29tPg0KPiA+PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9tdGw6
IEluY3JlYXNlIGd1YXJkIHBhZ2VzIHdoZW4gdnQtZA0KPiBpcw0KPiA+PiBlbmFibGVkDQo+ID4+
DQo+ID4+DQo+ID4+IE9uIDAyLzExLzIwMjMgMjI6MTQsIFNyaXBhZGEsIFJhZGhha3Jpc2huYSB3
cm90ZToNCj4gPj4+IEhpIFR2cnRrbywNCj4gPj4+DQo+ID4+Pj4gLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCj4gPj4+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGlu
dXguaW50ZWwuY29tPg0KPiA+Pj4+IFNlbnQ6IFRodXJzZGF5LCBOb3ZlbWJlciAyLCAyMDIzIDEw
OjQxIEFNDQo+ID4+Pj4gVG86IEhhamRhLCBBbmRyemVqIDxhbmRyemVqLmhhamRhQGludGVsLmNv
bT47IFNyaXBhZGEsIFJhZGhha3Jpc2huYQ0KPiA+Pj4+IDxyYWRoYWtyaXNobmEuc3JpcGFkYUBp
bnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+Pj4gQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXguaW50ZWwuY29tPg0KPiA+Pj4+IFN1Ympl
Y3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0hdIGRybS9pOTE1L210bDogSW5jcmVhc2UgZ3VhcmQg
cGFnZXMgd2hlbg0KPiB2dC1kDQo+ID4+IGlzDQo+ID4+Pj4gZW5hYmxlZA0KPiA+Pj4+DQo+ID4+
Pj4NCj4gPj4+PiBPbiAwMi8xMS8yMDIzIDE2OjU4LCBBbmRyemVqIEhhamRhIHdyb3RlOg0KPiA+
Pj4+PiBPbiAwMi4xMS4yMDIzIDE3OjA2LCBSYWRoYWtyaXNobmEgU3JpcGFkYSB3cm90ZToNCj4g
Pj4+Pj4+IEV4cGVyaW1lbnRzIHdlcmUgY29uZHVjdGVkIHdpdGggZGlmZmVyZW50IG11bHRpcGxp
ZXJzIHRvIFZURF9HVUFSRA0KPiA+PiBtYWNybw0KPiA+Pj4+Pj4gd2l0aCBtdWx0aXBsaWVyIG9m
IDE4NSB3ZSB3ZXJlIG9ic2VydmluZyBvY2Nhc2lvbmFsIHBpcGUgZmF1bHRzIHdoZW4NCj4gPj4+
Pj4+IHJ1bm5pbmcga21zX2N1cnNvcl9sZWdhY3kgLS1ydW4tc3VidGVzdCBzaW5nbGUtYm8NCj4g
Pj4+Pj4+DQo+ID4+Pj4+PiBUaGVyZSBjb3VsZCBwb3NzaWJseSBiZSBhbiB1bmRlcmx5aW5nIGlz
c3VlIHRoYXQgaXMgYmVpbmcNCj4gPj4+Pj4+IGludmVzdGlnYXRlZCwgZm9yDQo+ID4+Pj4+PiBu
b3cgYnVtcCB0aGUgZ3VhcmQgcGFnZXMgZm9yIE1UTC4NCj4gPj4+Pj4+DQo+ID4+Pj4+PiBDbG9z
ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjAx
Nw0KPiA+Pj4+Pj4gQ2M6IEd1c3Rhdm8gU291c2EgPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0K
PiA+Pj4+Pj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AbGludXguaW50ZWwuY29t
Pg0KPiA+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jp
c2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gPj4+Pj4+IC0tLQ0KPiA+Pj4+Pj4gICDCoCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCAzICsrKw0KPiA+Pj4+Pj4g
ICDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYw0K
PiA+Pj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMNCj4g
Pj4+Pj4+IGluZGV4IDM3NzA4MjhmMmVhZi4uYjY1Zjg0YzZiYjNmIDEwMDY0NA0KPiA+Pj4+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RvbWFpbi5jDQo+ID4+Pj4+
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMNCj4gPj4+
Pj4+IEBAIC00NTYsNiArNDU2LDkgQEAgaTkxNV9nZW1fb2JqZWN0X3Bpbl90b19kaXNwbGF5X3Bs
YW5lKHN0cnVjdA0KPiA+Pj4+Pj4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPiA+Pj4+Pj4g
ICDCoMKgwqDCoMKgIGlmIChpbnRlbF9zY2Fub3V0X25lZWRzX3Z0ZF93YShpOTE1KSkgew0KPiA+
Pj4+Pj4gICDCoMKgwqDCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGd1YXJkID0gVlREX0dVQVJE
Ow0KPiA+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChJU19NRVRFT1JMQUtFKGk5MTUpKQ0KPiA+
Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ3VhcmQgKj0gMjAwOw0KPiA+Pj4+Pj4gKw0K
PiA+Pj4+PiAyMDAgKiBWVERfR1VBUkQgPSAyMDAgKiAxNjggKiA0SyA9IDEzMU1CDQo+ID4+Pj4+
DQo+ID4+Pj4+IExvb2tzIGluc2FuZWx5IGhpZ2gsIDEzMU1CIGZvciBwYWRkaW5nLCBpZiB0aGlz
IGlzIGJlZm9yZSBhbmQgYWZ0ZXIgaXQNCj4gPj4+Pj4gYmVjb21lcyBldmVuIDI2Mk1CIG9mIHdh
c3RlZCBhZGRyZXNzIHBlciBwbGFuZS4gSnVzdCBzaWduYWxsaW5nLCBJIGRvDQo+ID4+Pj4+IG5v
dCBrbm93IGlmIHRoaXMgYWN0dWFsbHkgaHVydHMuDQo+ID4+Pj4gWWVhaCB0aGlzIGZlZWxzIGNy
YXp5LiBUaGVyZSBtdXN0IGJlIHNvbWUgb3RoZXIgZXhwbGFuYXRpb24gd2hpY2ggaXMNCj4gPj4+
PiBnZXR0aW5nIGhpZGRlbiBieSB0aGUgY3JhenkgYW1vdW50IG9mIHBhZGRpbmcgc28gSSdkIHJh
dGhlciB3ZSBmaWd1cmVkDQo+ID4+Pj4gaXQgb3V0Lg0KPiA+Pj4+DQo+ID4+Pj4gV2l0aCAyNjJN
aUIgcGVyIGZiIGhvdyBtYW55IGZpdCBpbiBHR1RUIGJlZm9yZSBldmljdGlvbiBoaXRzPyBOIHNj
cmVlbnMNCj4gPj4+PiB3aXRoIGRvdWJsZS90cmlwbGUgYnVmZmVyaW5nPw0KPiA+Pj4gSSBiZWxp
ZXZlIHdpdGggdGhpcyBtZXRob2Qgd2Ugd2lsbCBoYXZlIHRvIGxpbWl0IHRoZSBubyBvZiBmcmFt
ZSBidWZmZXJzIGluIHRoZQ0KPiA+PiBzeXN0ZW0uIE9uZSBhbHRlcm5hdGl2ZQ0KPiA+Pj4gdGhh
dCB3b3JrZWQgaXMgdG8gZG8gYSBwcm9wZXIgY2xlYXIgcmFuZ2UgZm9yIHRoZSBnZ3R0IGluc3Rl
YWQgb2YgZG9pbmcgYSBub3AuDQo+ID4+IEFsdGhvdWdoIGl0IGFkZHMgbWFyZ2luYWwNCj4gPj4+
IHRpbWUgZHVyaW5nIHN1c3BlbmQvcmVzdW1lL2Jvb3QgaXQgZG9lcyBub3QgYWRkIHJlc3RyaWN0
aW9ucyB0byB0aGUgbm8gb2YNCj4gZmIncw0KPiA+PiB0aGF0IGNhbiBiZSB1c2VkLg0KPiA+Pg0K
PiA+PiBBbmQgaWYgd2UgcmVtZW1iZXIgdGhlIGd1YXJkIHBhZ2VzIHJlcGxhY2VkIGNsZWFyaW5n
IHRvIHNjcmF0Y2gsIHRvDQo+ID4+IGltcHJvdmUgc3VzcGVuZCByZXN1bWUgdGltZXMsIGV4YWN0
bHkgZm9yIGltcHJvdmluZyB1c2VyIGV4cGVyaWVuY2UuIDooDQo+ID4+DQo+ID4+IEx1Y2tpbHkg
dGhlcmUgaXMgdGltZSB0byBmaXggdGhpcyBwcm9wZXJseSBvbiBNVEwgb25lIHdheSBvciB0aGUg
b3RoZXIuDQo+ID4+IElzIGl0IGp1c3Qga21zX2N1cnNvcl9sZWdhY3kgLS1ydW4tc3VidGVzdCBz
aW5nbGUtYm8gdGhhdCBpcyBhZmZlY3RlZD8NCj4gPiBJIGFtIHRyeWluZyB0byBkdW1wIHRoZSBw
YWdlIHRhYmxlIGVudHJpZXMgYXQgdGhlIHRpbWUgb2YgZmFpbHVyZSBmb3IgYm90IHRoZSBmYW1l
DQo+IGJ1ZmZlciBhbmQgaWYgcmVxdWlyZWQNCj4gPiBGb3IgdGhlIGd1YXJkIHBhZ2VzLiBXaWxs
IHNlZSBpZiBJIGdldCBzb21lIGluZm8gZnJvbSB0aGVyZS4NCj4gPg0KPiA+IFllcyB0aGUgdGVz
dCBrbXNfY3Vyc29yX2xlZ2FjeSBpcyB1c2VkIHRvIHJlbGlhYmx5IHJlcHJvZHVjZS4gTG9va2lu
ZyBhdCBwdWJsaWMNCj4gQ0ksIEkgYWxzbyBzZWUgcGlwZSBlcnJvcnMNCj4gPiBiZWluZyByZXBv
cnRlZCB3aXRoIHZhcnlpbmcgb2NjdXJyZW5jZXMgd2hpbGUgcnVubmluZyBrbXNfY3Vyc29yX2Ny
YywNCj4ga21zX3BpcGVfY3JjX2Jhc2ljLA0KPiA+IGFuZCBrbXNfcGxhbmVfc2NhbGluZy4gTW9y
ZSBkZXRhaWxzIG9uIHRoZSBvY2N1cnJlbmNlIGNhbiBiZSBmb3VuZCBoZXJlIFsxXS4NCj4gPg0K
PiA+IFRoYW5rcywNCj4gPiBSSw0KPiA+DQo+ID4gMS4gaHR0cDovL2dmeC1jaS5pZ2suaW50ZWwu
Y29tL2NpYnVnbG9nLQ0KPiBuZy9yZXN1bHRzL2tub3duZmFpbHVyZXM/cXVlcnlfa2V5PWQ5YzMy
OTdkZDE3ZGRhMzVhNmM2MzhlYjk2YjMxMzliZDFhDQo+IDY2MzNjDQo+IA0KPiBDb3VsZCB5b3Ug
Y2hlY2sgaWYgWzFdIGhlbHBzPw0KPiANCj4gWzFdOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzEyNTkyNi8NCj4gDQo+IFJlZ2FyZHMNCj4gQW5kcnplag0KPiANCj4g
Pj4gUmVnYXJkcywNCj4gPj4NCj4gPj4gVHZydGtvDQo+ID4+DQo+ID4+DQo+ID4+Pj4gUmVnYXJk
cywNCj4gPj4+Pg0KPiA+Pj4+IFR2cnRrbw0KPiA+Pj4+DQo+ID4+Pj4gUC5TLiBXaGVyZSBkaWQg
dGhlIDE4NSBmcm9tIHRoZSBjb21taXQgbWVzc2FnZSBjb21lIGZyb20/DQo+ID4+PiAxODUgY2Ft
ZSBmcm9tIGV4cGVyaW1lbnQgdG8gaW5jcmVhc2UgdGhlIGd1YXJkIHNpemUuIEl0IGlzIG5vdCBh
IHN0YW5kYXJkDQo+ID4+IG51bWJlci4NCj4gPj4+IFJlZ2FyZHMsDQo+ID4+PiBSYWRoYWtyaXNo
bmEoUkspIFNyaXBhZGENCg0K
