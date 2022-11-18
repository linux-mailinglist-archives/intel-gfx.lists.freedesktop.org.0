Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BD562EF1D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 09:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1DC610E0F0;
	Fri, 18 Nov 2022 08:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F33F10E1FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 08:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668759658; x=1700295658;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Sh39Hdk/5/bcxAtL59BBV9n6V11iA46m6GlW+lg3ZyY=;
 b=n8paAfPeh7m6zU0xl/5w1XP3DmF21wnuE5ViRcd3sa5ftonaaIT8r/3/
 R6s7AhGsdEMXKrlRJxdKwH4jAjPOt2gXPiW5aUshr4RPBLHrwoD+i+Pf7
 6d5NN70OrXwZkK9kq5ZiPuvyVEfxNvJvjq29tJig9b/fDd1qPwllYTsyy
 Kf/8pgv7keLTUmIsLh4xzmFQpLe78Ki8JCGnaATSBmR5FOKl9J0+A7ctc
 ATZOZlLprTLzI6kQwVUCggGwOcDlyhKbiRoMqw83nVIEylUYDgjPN4Wm+
 9nPFkOfVxpAEM4x1Nu+WkpcnDRYJKzTM/Aj2jjKw0LqVbztwWm6ilPpF9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="292787252"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; d="scan'208";a="292787252"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 00:20:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="617933216"
X-IronPort-AV: E=Sophos;i="5.96,173,1665471600"; d="scan'208";a="617933216"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 18 Nov 2022 00:20:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 00:20:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 00:20:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 00:20:56 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 00:20:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gvcm7XN/LZg0g7Hr1P8nTgWRDr8YoLFuaOdF/ecba0ovb5QhaWY1g5LVnEJeAieM7NfmZO05rED+aPnrVHoVBNJAiLVJEPdSOJUuzMszuh2itbUJ/m0+sdgt1kjXCpFSM0n8wh9QKA9WCLiqI7BhFHmYViw6L0pCLB6b2LsMgtE7dwv2rGTfDmuTl3y7HWMYpSNJhS4o0IkreShn7FPRyHLwZOrdRPpPpRjuAXqtivkgWKvqzYELtGQIbWbq9KDnJhpwI16TmUQbY1zUETkGdaKpSkUv80MeYEzWMa/6J3SapU+1L6vOWY882ga49O0/HtyUZnDT8efBlVdB/h59Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sh39Hdk/5/bcxAtL59BBV9n6V11iA46m6GlW+lg3ZyY=;
 b=Hag2zyU50nk1xGnROmqIAwDUHFSYMiOxBnUqtv47AWj/JhRSnQoaRWWxjp52oc4622ZNggWCFtfkIUfJblpQjhkoBjKjijD4OED0ezPNuVaCxbWZsEmE6sFXFKaKjBE+y/biuZe8B/jX3Gd7Ktsy1PnB/2tJXhodKjXdBrpnw1E6mlvZ0hyhJuFyspbGWqmZY/AXNYbjfV9dENrHcFe9aUWxsPfBPnFzKEYIbDjCJ/3zwnP0zQrN6X5zuNOZ6AlORJ6fBAICdM9feHzn8C8OIAROEvbH5j8e7PLE6ZsjgZbjYvYWOP9m6KfKmhLi6ZkO21Yh9s2h7jow77uGjzs0iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.18; Fri, 18 Nov 2022 08:20:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5791.022; Fri, 18 Nov 2022
 08:20:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 07/20] drm/i915: s/gamma/post_csc_lut/
Thread-Index: AQHY+D85sOgEnl8HN0m27huUV5KBk65EXLZA
Date: Fri, 18 Nov 2022 08:20:54 +0000
Message-ID: <DM4PR11MB63601B0BE57FFD513D7E54F1F4099@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
 <20221114153732.11773-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5160:EE_
x-ms-office365-filtering-correlation-id: f0735963-eaf6-4cfd-82f7-08dac93dcfe8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3XlWjSAoR5QBPag0I89l9Z8Hw6azLZqYVgfLmALiPfxtK6bnqbLdFdukMUmer7KdevPri7A/3RqNnZraNkTgNCE2UwVMpyz5GozoDrwAJ23vUrtQOfbojs3XszRSFFUfbBaKtPqsNgDJBPQNcEJ7MrFkbjdfHoBUqFDYjZX4j6xJYCAFz8rNJQs/qpGSFvCBlVteUM9EaXn8J/S4ACjE6sgfaFb3Kgfi+rtPX7hxaoBIjKChdmNAkhSiCv20i2zztu4cg247Tvk5pPNNzKuNH3w564JsEkfvY+kIt5fJ615WmE9ZWSLzDaOMf2tYCGHYb52/1hKvFs6SHuKc6cehDyN9NvMfmdAqSl7fZd/s8lnIFqVkGTDI00uszJKL8d3nQ74GVeMbLZXeP3gqig8SkM0+nXRcmovH4Rxbn0MjJmA6WbuJAobI222A4EFdcfPMtPx1VO2+6QbC68SJpusw2sv2pMLcDK1H/oOFDS5kzN+ljqYKD+ik0R3sfMY9/bWtZtHx0ekC7Q8JHLGvz43/vfNkSizSBhoQnNevigejUDyao/AUwRgcBwVB9BuaCY3iL2JThjMxlnw3BAsu8hSmrWHkKrCp/naJ7affMlpur9x2KqPZRMvEeCbbVHdG3i/hDac2ZWDzCn5tDm84LvmFuGN1Ck6L/N3+qfFacAQupNWZGI9WOzdm7DbZHJCYWiHx1zY4mL1Z6UJo0Wt6TB6byQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(136003)(396003)(346002)(366004)(451199015)(26005)(33656002)(86362001)(38070700005)(82960400001)(122000001)(38100700002)(8936002)(55016003)(110136005)(9686003)(2906002)(83380400001)(186003)(53546011)(7696005)(5660300002)(6506007)(66946007)(41300700001)(71200400001)(66476007)(52536014)(76116006)(8676002)(478600001)(66446008)(66556008)(316002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YVlXYjRiWlV2VXFuV2dPVXdCZzZaYUxvWldsaE90S3FEdU5SVTZCb1NqSjhJ?=
 =?utf-8?B?TlM0K2JBMllzbTdOTWhmL2hwQ2RIM1lkUGRzcnZjbEN4MTF4d2VoSkRHNFA2?=
 =?utf-8?B?SnJ0UlVSZFB1WlN6SjdFaEdNQ3I4UXNOZWlZdmthUEV4bmNQNXpFOGdMMVpO?=
 =?utf-8?B?eHp1S2s3ZE05eTVPV1dodlgzQjlydG9aOC9aOFkyVFZtZitpNXMwcEFNQUZB?=
 =?utf-8?B?Tk9OY3F2dUx6UGNTUldjanZBUVhRV2Rpa3IrZXJ6SDZQS1BBSkNDSnhEdGtQ?=
 =?utf-8?B?N3FwUzhveDF1Y2ZwdVdsVW94YTNLMHZHcDZESk85K3o0SEtoN21BeGc0ZkhK?=
 =?utf-8?B?OXlnaFlsZ3pzMERSdjlsejVpVS9NM0NCRjQycFp1UTBDaFlib2Q1Z1VzNndP?=
 =?utf-8?B?VTRtbE85bGFuVEpqUGh2OHM1SzFXVzEwMUdxdjZ3WUFKY1U2ZWUvbUlwSDlz?=
 =?utf-8?B?UVdvVUpHdFBPRENNYk5FQlRLK1ZUaHpTZWZEN2dFdFBRNkNxTjlzZkFYMXBn?=
 =?utf-8?B?VC9kaGZlYlA3ZXIxNkZpUENNZ3Z4Y0Y4YUlBbUdnN0FWUm5DRjd4ME1LUHRt?=
 =?utf-8?B?YkRxdnp5azJIT3NNVWYzN09LaHp3N0xQQkFhT1pLSUtkN0NtUXZydUxZQmhW?=
 =?utf-8?B?bUw2bWhHWlpicDRwelBxVENjNDRZakk3RjdDRTVCSXFzdWpIM2JWMjFFR21J?=
 =?utf-8?B?VlYvMlNjRXYyQllsU0M4M1FjblJnSXo3UmZKNjdyOS9Vc0FxOWtFQWZ5VnJU?=
 =?utf-8?B?UXhBcUhsMGV2Rk5FR0dPYjdMODQwaHZ1WjJidEFJUDZXd2o5T3RBSXdWNmFY?=
 =?utf-8?B?cFdiMFVCRzhVS3BDTklMa0FneFRMUmhWMVh6eTNwWGx6SE4yc1lNeUpxTUN3?=
 =?utf-8?B?QkYrS05WTytlVTFObUExbkVJM3czY3YrREFXelNEdGtDVVhJa3BUUFQ5RytG?=
 =?utf-8?B?bXF2V3FxNWFJdFhlem10YUcvZjg0cE9sVno5dEFDYTc2QkxNQ1ZwdFk3SklO?=
 =?utf-8?B?RjhSdFM0cHVlZWtOUE1jQ1pSM1dNV3BlQjZRT2F3OEVZY0ViVVRsMWRBUlRo?=
 =?utf-8?B?VVhhV0JjNkl3aDNMV2M3d0praEVRUFhQc2dZeUFyNE1vSmxLeFFORVh1RjJ5?=
 =?utf-8?B?aHdZWWZKQnFqQUg1TStRWjF6V2c1U2p0OGJVV1oyd1BOTmZYb1V3bEpHeENj?=
 =?utf-8?B?bExtb3JDLzVkMnJrbHVNalczZS8wRDU0WjArSFZUVDh3QjkyTEVyOHdTbDVh?=
 =?utf-8?B?TTRMYlBtckFwYzJmZGM5K1YwcWt2R2pXVGVMT0tZK3d1b1pnMkFJMW51VEdN?=
 =?utf-8?B?cGtwbkIwU2Mwd1NmZzRPUDBTUWczVlNVaGV4bVh0dGREYkRRVmpDWmRBNmZ1?=
 =?utf-8?B?YnNWbkpUZ2EralE3aWh3MmFQUmI3MmZtTUQ4bWYxS2NTNnhhVGZpM2V0WEI3?=
 =?utf-8?B?VHpsSU1ZZy9QUW52dVB1cXE2WGphYm53WWV1R2RGQXk2eXhkWCsxUTNOQm02?=
 =?utf-8?B?SDRNeENqSlQrV1ZmaWFFWTZBZ1ptYUFUL3ZSd1dGVE1tRTQxcTgwMXVlTThT?=
 =?utf-8?B?UEVUZHF3M1kxbHlOZGk4MSs2bUhCbjdIWWM0ODVUTnhpdjlKWTJJU0RMcS9K?=
 =?utf-8?B?d3dwemRsVzlhdVNWWlN6UndPaElUMlRhQlQ0S3V3b0NOcmRoaWZLenpXNFRo?=
 =?utf-8?B?VEpHcWU1OVRWbTYxYkI5ZUYvWEVZT1IxTFJQM1VKa3RJdHI4KzBWK3ZCTHRL?=
 =?utf-8?B?RHl0WW0rL296YjJhbnZKaGpKVXREWjVuMHVtSzdpODVTMGNqeEg5c2VYNjl2?=
 =?utf-8?B?aW1TeTE5MmdWcnRkWXZmUWYvRjFVS2t6cy9pR3R5NVI4endtaitlSzFrcnZt?=
 =?utf-8?B?OTJkY2pZcVd2UWFJQnlkemJvYXRmSUtEaVRwS3JSclU2SllHa1NXN2NIamlD?=
 =?utf-8?B?NG9aVmE0ZXA4OGI1ZjAvUXUwcGorTUY0KzMxWlFFMFMvNjBKa0F4OTQwOUNw?=
 =?utf-8?B?N1ZMMGMvNE9qL0pJUVdxUWs1cVY1bmF6NC9jVWxscGxwYmVxUXZQNUNqaGh6?=
 =?utf-8?B?eS9IamIxWDVvNytMT3h6a0QzVkpzYXgvVjd4eFd5WWRza2N5alBlbHBPV2Vx?=
 =?utf-8?Q?8p92B+HwKohZRdZnHXwzMC0Ib?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0735963-eaf6-4cfd-82f7-08dac93dcfe8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 08:20:54.4030 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hg7bhgFNWakGi3IidhNFmZklEl8xWAL+a1SjSABUcEE4ufIH7Juwv0dQExqrWHuZ79yFqN0AvczZTOVRaYatcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 07/20] drm/i915: s/gamma/post_csc_lut/
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMTQsIDIwMjIgOTowNyBQTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggdjMgMDcvMjBdIGRybS9pOTE1OiBzL2dhbW1hL3Bvc3RfY3NjX2x1dC8NCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBSZW5hbWUgYSB0aGUgTFVUIHN0YXRlIGNoZWNrIGZvb19nYW1tYV9wcmVjaXNpb24oKSBmdW5j
dGlvbnMgdG8NCj4gZm9vX3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oKSB0byBtYWtlIGl0IG1vcmUg
Y2xlYXIgd2hhdCB0aGV5IHJlYWxseSBkby4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2Vk
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMjIgKysr
KysrKysrKystLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyks
IDExIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYw0KPiBpbmRleCAyNTBlODNmMWY1YWMuLmUxOTU4YTFiNGRjYyAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBAQCAtMTc5
Miw3ICsxNzkyLDcgQEAgc3RhdGljIGludCBpY2xfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiAtc3Rh
dGljIGludCBpOXh4X2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkNCj4gK3N0YXRpYyBpbnQgaTl4eF9wb3N0X2NzY19sdXRfcHJlY2lzaW9u
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkNCj4gIHsNCj4g
IAlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkNCj4gIAkJcmV0dXJuIDA7DQo+IEBAIC0x
ODA4LDcgKzE4MDgsNyBAQCBzdGF0aWMgaW50IGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCX0NCj4gIH0NCj4gDQo+
IC1zdGF0aWMgaW50IGlsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpDQo+ICtzdGF0aWMgaW50IGlsa19wb3N0X2NzY19sdXRfcHJlY2lz
aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkNCj4gIHsN
Cj4gIAlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2VuYWJsZSkNCj4gIAkJcmV0dXJuIDA7DQo+IEBA
IC0xODI3LDE1ICsxODI3LDE1IEBAIHN0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25z
dCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAl9DQo+ICB9DQo+
IA0KPiAtc3RhdGljIGludCBjaHZfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiArc3RhdGljIGludCBjaHZfcG9zdF9jc2NfbHV0X3By
ZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpDQo+
ICB7DQo+ICAJaWYgKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dNX1BJUEVfTU9ERV9HQU1NQSkN
Cj4gIAkJcmV0dXJuIDEwOw0KPiAgCWVsc2UNCj4gLQkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lz
aW9uKGNydGNfc3RhdGUpOw0KPiArCQlyZXR1cm4gaTl4eF9wb3N0X2NzY19sdXRfcHJlY2lzaW9u
KGNydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyBpbnQgZ2xrX2dhbW1hX3ByZWNpc2lv
bihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK3N0YXRpYyBp
bnQgZ2xrX3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUNCj4gKypjcnRjX3N0YXRlKQ0KPiAgew0KPiAgCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5h
YmxlKQ0KPiAgCQlyZXR1cm4gMDsNCj4gQEAgLTE4NTEsNyArMTg1MSw3IEBAIHN0YXRpYyBpbnQg
Z2xrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gIAl9DQo+ICB9DQo+IA0KPiAtc3RhdGljIGludCBpY2xfZ2FtbWFfcHJlY2lz
aW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiArc3RhdGlj
IGludCBpY2xfcG9zdF9jc2NfbHV0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiArKmNydGNfc3RhdGUpDQo+ICB7DQo+ICAJaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9t
b2RlICYgUE9TVF9DU0NfR0FNTUFfRU5BQkxFKSA9PSAwKQ0KPiAgCQlyZXR1cm4gMDsNCj4gQEAg
LTE4NzYsMTYgKzE4NzYsMTYgQEAgaW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lz
aW9uKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXQNCj4gDQo+ICAJ
aWYgKEhBU19HTUNIKGk5MTUpKSB7DQo+ICAJCWlmIChJU19DSEVSUllWSUVXKGk5MTUpKQ0KPiAt
CQkJcmV0dXJuIGNodl9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+ICsJCQlyZXR1cm4g
Y2h2X3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+ICAJCWVsc2UNCj4gLQkJ
CXJldHVybiBpOXh4X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsNCj4gKwkJCXJldHVybiBp
OXh4X3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+ICAJfSBlbHNlIHsNCj4g
IAkJaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDExKQ0KPiAtCQkJcmV0dXJuIGljbF9nYW1tYV9w
cmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+ICsJCQlyZXR1cm4gaWNsX3Bvc3RfY3NjX2x1dF9wcmVj
aXNpb24oY3J0Y19zdGF0ZSk7DQo+ICAJCWVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpID09IDEw
KQ0KPiAtCQkJcmV0dXJuIGdsa19nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+ICsJCQly
ZXR1cm4gZ2xrX3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+ICAJCWVsc2Ug
aWYgKElTX0lST05MQUtFKGk5MTUpKQ0KPiAtCQkJcmV0dXJuIGlsa19nYW1tYV9wcmVjaXNpb24o
Y3J0Y19zdGF0ZSk7DQo+ICsJCQlyZXR1cm4gaWxrX3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY3J0
Y19zdGF0ZSk7DQo+ICAJfQ0KPiANCj4gIAlyZXR1cm4gMDsNCj4gLS0NCj4gMi4zNy40DQoNCg==
