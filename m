Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDB162FC36
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 19:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72E0D10E227;
	Fri, 18 Nov 2022 18:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1974810E227
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668795088; x=1700331088;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Cl/MEwmmyjxqm161POob1c7QMtnVE8EfjL7CApqbBpg=;
 b=l2t6Nrr7AwoY3C09EAqj8uo5/w1k2oRqZdsL/ow7g6rSbIw6yXdUIWzK
 T2ZLkOzVQrqUoxkCMkqYev4f1qFz2i/jjdqaPEoPsImbmZpTezCgE4mhl
 nIkqanDyW0yNviefV3Kg8mZJuHlCsaxsCGuY15pR74ucbYG8shw7g/ykx
 IqR+FMKsKCDvwganypZF1BN3dN3YybbC0dkINV6Rc6WI819SmIDaAuyxc
 q3mZb/GIylHddR0EXZrJiCoQMENaMYTuANzDi+qrR7hFAoAX5LMRjoq5F
 s6PLSDS5fMnxg1URlb4VsL5O38Uj6xguhWVPlu4g2eEeZ1nMtejmXYfHY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="311902316"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="311902316"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 10:11:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="746092051"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="746092051"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 18 Nov 2022 10:11:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 10:11:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 10:11:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 10:11:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AT/RHUqX4jNUXdmTfRWV18C6w3714xUMvz+JH6abbcxI29qC/DMAl1ImFBPV87abyapMA1gkm3Z5sqe2CdocrOfpkrdy4MJ9pU5nsUxFBZVRuLwvyZfoQCc9zlNJeCWMzfrIiKnTylLDdzfteFHxr5VA242Zk5CY/EQauiBUfkZJJH/Lw1GB7TdK2CDMVA6TrjUMHcXMFS7oInIUCvg16WFEWFPzzanPiPnW/1KHjvbQ0rE13U7yyZcMgiDHk+LYkhGQp2CbBJ95RxHujkmHNY79itUe5y/GT6YaVoJ6DXUN59Gz+MYK4GbwX+pI7hxpesqLzDawO+3+RLuX513h5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cl/MEwmmyjxqm161POob1c7QMtnVE8EfjL7CApqbBpg=;
 b=lKEC6moUOFD0Aq2tsIrohcToAAFVHlaVpOjJi/zL8Uv15mrmBNpEZeBXxt/KvViA9rwG3jgV+WDGV84d7EKqOJ+KRFm2H3R2tazJSzFeHQiGna51eIYSDoomwxnxn/IQHPWoIUsqt5bLrXlLyLFNyn1pWTbPdJU5M8b3XGWHoIOscanNuHpUJ6jXjZ8MmQJ3ajHCG+vsQSDNhNIviw7upsn1ZUAqJE9oOIwCalxr6A5o5qG3BE+SMC7DfswJrxzQiBET/hmALQw2nstiDytt/7bvwmBX/jfsZDjtnWV5+6r6DLbSF6OQgmRaRVCz32SBzeFi/5O4gUz2oIYlnVkMuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW3PR11MB4586.namprd11.prod.outlook.com (2603:10b6:303:5e::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.18; Fri, 18 Nov 2022 18:11:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5791.022; Fri, 18 Nov 2022
 18:11:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 15/20] drm/i915: Finish the LUT state
 checker
Thread-Index: AQHY+D81NmGdMR1fi0SiHJLe7fCQQ65FAYFA
Date: Fri, 18 Nov 2022 18:11:24 +0000
Message-ID: <DM4PR11MB63602E165D732AA19EC6579EF4099@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221114153732.11773-1-ville.syrjala@linux.intel.com>
 <20221114153732.11773-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20221114153732.11773-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW3PR11MB4586:EE_
x-ms-office365-filtering-correlation-id: 876dcfab-b534-4be4-b012-08dac9904da2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +CZWpAATJO2hEGFUuGTce4TkyvL3HLJAenRlKvHCElD9y76HtcPJLwC0ESXYmjgZDR0FnXvW6shhOUDO5fwLwc5CW73IQqdm8b2a2VZkdAbhEcA3zCKyaHe+WYFx0NV6sVkdBD7X98o1PsMBFlkBsVHFBBrHi8BFyFoOuJxU7VEFi25D2aNTgohERqN9mddO/13fK7nGurUiG7C9ycOP/xScmB7e8xuWrsRFc7I7qDX/UaSnhGjO2JI0T2wLN+DOHmr8W5hWqrIOz+M08ruvXEQCQEo0CvXVYkd66WoV2Gr0MxdLdfQ3Yzn91NGPFBgyuu3dqZOyo7elMzn9Aq194funYyDoKhG6Ea4QAmqpOzEwDi8uvf8PASQ3F9elBEnz1t2yZZ/ut7vy7l3qWajdtXxDF5SMrSW4xiqzoZvGjp0HjuNX8lsYTjBK14pTpwwUddoABAlNXSEl06YqzY790UWDpEQRlQe4u2mZHCmucW0tj10zCPY4je+cZI0TcnwhIRK31ALMcHkT+ftPnSwKYBhgNPoVA26ISci6Jq4jrMO8DFwDo7m8C3LHjaOcWe1fJ5Y1mLSM0xnF9IoRnAXDxErgdmCi9GS3iUzJWAq6rKI6b0oZgO9pg1se3uifsTQ7BnjF/xE4zDE90+pJ8lbX08jAVkfNrQy/r1NVrZyvC3eYMcDUdM7h0dXGt65/XhpSaqboY2HhvubQ4iEwafHwpQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(346002)(39860400002)(366004)(451199015)(66946007)(66574015)(66476007)(76116006)(316002)(26005)(8676002)(9686003)(66446008)(64756008)(53546011)(186003)(8936002)(5660300002)(41300700001)(66556008)(52536014)(7696005)(110136005)(2906002)(6506007)(86362001)(38100700002)(38070700005)(83380400001)(33656002)(30864003)(82960400001)(122000001)(71200400001)(478600001)(55016003)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UnQ4YXBYSWhrdlY1YmRoZmhleGF4ZnE5N1ZqVkppZUt5a0xxSlRJZHJ5bExB?=
 =?utf-8?B?eU14SEs2WG9xUzUxRk5hNTZncVNrUmZQdXZhZWxrQWM2cWh1QndtZUFqRm5R?=
 =?utf-8?B?dCtrMzVRVC80bC9WTnpNNDNYSjZCTm05UVZWQ2o2Q0YxNjd6OVExeUlpalRt?=
 =?utf-8?B?RnN0TTF1N1IrSXdwbHVWN0g1cjVnN09Va3dUOVpiYjhhN0hUQkdFWkg1MGpo?=
 =?utf-8?B?MTd1aGFnUXlSZUU5VHVSdmRLWTdtVFJzczVLdXRYTkhmTWc4TFRzUTRSMndi?=
 =?utf-8?B?dFBZcDhrVU9FaHBIaHJZaWk5eHJEcGRldFB5dTAzVEZOK2ZVUHFFZi8rWWcy?=
 =?utf-8?B?U0VjOTYwOHFQbzNxYVZhTXBWV2MxR2NWZ25BUVo1Q1A0RitRZG1sZFNoR1hZ?=
 =?utf-8?B?THYvbWJNNG5yZnMvWHVGZ1h3YWc0cWZJVVc3enV6bExZWVVtS2ovazlOTUxj?=
 =?utf-8?B?SEljN2hXZ3J6ZENCaGh1REFiRVNsL0F1TUpjVkwwd3Uxc1hlUGNBV0Z1M09y?=
 =?utf-8?B?OUp6SnBFU2I1R0RRNEpPZ0Q3RVNBUWhIZVBWVW5SY1R4dmNOWTZHTFVTT0NH?=
 =?utf-8?B?ZjZUZ0ZQRjdDRURxcjFjUEN6KzRzbXNPM25lTm5QWVY5SGV2dklVMEgvNFRu?=
 =?utf-8?B?RXNxSjRZMDh2RlVMdGZUT2ozaDZXcWdEb0ZhSzBiMHgyMUMyNUdZTXlLMW9q?=
 =?utf-8?B?cklLck1BRE9wVy9seFZyVlV1a2M4MXFQZGpsdXMxa29XMFFmaWV1MWpoZ2RF?=
 =?utf-8?B?Q2hBeDJaYXB2VmZMUkFialpyQ1MxRmNvZnZ2QnNBWTRaaVo0d1FQemt6ZlhM?=
 =?utf-8?B?UW52K0Z1dnlldE1ZRTExRXhIK1VzN0pJL0x0Uk5ZazFYN3g2K21Fc29ocklm?=
 =?utf-8?B?ZjNaOHVhNHJ5U01VTHJ3RU42c2pIWENnQkZZVGprTW1NbzNIcGo3cmRkdG0v?=
 =?utf-8?B?bWdoUnNWSVptSEpDZmlUajJhend6SlZZU1hLcCtrZEhkeHl2MlpBSTdzeFhP?=
 =?utf-8?B?cHZKbkU5dm5EY2N6VzVLbkZTN1BVOHFjZk41TjhBZmwrbEhwV09QUUNGRlA1?=
 =?utf-8?B?MUp0VW90aExwdWdlblRpRDM4c2EyeTZ4aEU0c3lxVjNpRW5nOGN0Qm00VUdu?=
 =?utf-8?B?dGN5NWtOYU5kNHpMWkU1VXhIeStpNElmdzdteEg0Z29IR1lFZ3l1M3daNjYw?=
 =?utf-8?B?dGxaQitFVVNjWDB4aEFBV3p0WVY4Si9CM1psTXZGUEhHMEQ5ZEJPTmNkN3h1?=
 =?utf-8?B?a3RnVkNtUHBEMFpVOEdXa0x6RFAzQzRwWHlQV1hCa0cwRDlXOFBuU2dwWlZV?=
 =?utf-8?B?WUdwZ1hhMkJIVUgvUWNJWjMwUWlBT1FxSXhMTytrYnpCOE9ndGZIek5Pbzln?=
 =?utf-8?B?bEVFbFN2TVVkWCtrTmMzT0p0UDh1QjZtYWFraHpra3ZiTGplTmNIY1VYN2ha?=
 =?utf-8?B?S041dTFBNVhhY0FPQ3lKblFKVm9wUHhxTFRpNk5qNGVzWENmM0I2ODkzQ3J1?=
 =?utf-8?B?V042Zks0MFdVQmpKaXBPUTVKaU1Jd3piaG15YVpacWMrL2NYcVBpazZMbnZy?=
 =?utf-8?B?SFAxdEtRUnVnaUVSOEdsVFIwSnlwRkQ3R0k2VmxrVEtVRDgrTzZvOVpJd0dR?=
 =?utf-8?B?dWFnMU05L3NiVTc2bFNBckJqeGtIb2h5S3NRNVpsVCtmdmwzUllBdXNNNjh4?=
 =?utf-8?B?aUlCaHBnaHJML1J4d0s5UmVGZUx4NHdSUEdFaFlBRWxuWTg0K0pBSXdUQUF5?=
 =?utf-8?B?YlRlZy9tdWs2NTlNYnhWTmdEYXMxa0pxYmMwZG5UV0xFd0RGMWs4RDJrd2xT?=
 =?utf-8?B?eTlFMmpyYjA2ckVmU2grWWVNNGptTWQzd2QwekhpZkdEMkRnOHdnQnNrRDJE?=
 =?utf-8?B?bTBncFdieTNTNmdndkRYVHg1Y1VyV3pwMUZhNVlIek1QWHJMNWYxV0RkNlpm?=
 =?utf-8?B?MlFISmlEbnpUOWZzb1Y3M3Z1TFV5RjdBL05nSWhISTExUW9nV3RYUmVOTENi?=
 =?utf-8?B?YysrOWhtOExSZjNOR1czWUpQNGplNFhBbUhRWWNsYXhDYnEyNmJEeXZNTUVi?=
 =?utf-8?B?anJ5UFYzUUlRZnIxRmxIZEdDa2E2OGY5cEdsbXZJNjBOM2kwS3crRzJUdmNM?=
 =?utf-8?Q?p0ouXtV55CNWDE/pZFjDRESGM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 876dcfab-b534-4be4-b012-08dac9904da2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2022 18:11:24.0702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p86YxlKSBGL+E72rkVcPyMd85kFfG7pggY1+UzZsQn+NL6ttUi+8qamwX1VYJhOH+UUdOaHCHvcwgYbk1TMj/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 15/20] drm/i915: Finish the LUT state
 checker
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
UEFUQ0ggdjMgMTUvMjBdIGRybS9pOTE1OiBGaW5pc2ggdGhlIExVVCBzdGF0ZSBjaGVja2VyDQo+
IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiANCj4gV2UgaGF2ZSBmdWxsIHJlYWRvdXQgbm93IGZvciBhbGwgcGxhdGZvcm1zIChzYW5z
IHRoZSBpY2wrIG11bHRpLXNlZ21lbnQgcmVhZG91dCBodw0KPiBmYWlsKSwgc28gaG9vayB1cCB0
aGUgTFVUIHN0YXRlIGNoZWNrZXIgZm9yIGV2ZXJ5b25lLg0KPiANCj4gV2UgYWRkIGEgbmV3IHZm
dW5jIGZvciB0aGlzIHNpbmNlIGRpZmZlcmVudCBwbGF0Zm9ybXMgbmVlZCB0byBoYW5kbGUgdGhl
IGRldGFpbHMgYSBiaXQNCj4gZGlmZmVyZW50bHkuDQo+IA0KPiBUaGUgaW1wbGVtZW50YXRpb24g
aXMgcmF0aGVyIHJlcGV0aXRpdmUgaW4gcGxhY2VzLiBQcm9iYWJseSB3ZSB3YW50IHRvIHRoaW5r
IG9mIGENCj4gbW9yZSBkZWNsYXJhdGl2ZSBhcHByb2FjaCBmb3IgdGhlIExVVCBwcmVjaXNpb24v
ZXRjLiBzdHVmZiBpbiB0aGUgZnV0dXJlLi4uDQoNClllYWggc29tZSBwbGFjZXMgZG8gbG9vayBh
cyBpZiBjYW4gYmUgb3B0aW1pemVkIGFzIHlvdSBhbHJlYWR5IG1lbnRpb25lZC4NCkJ1dCBubyBt
YWpvciBjb25jZXJucyBvbiB0aGlzIG9uZS4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2Vk
LWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IE5vdGUgdGhhdCB3
ZSdyZSBjdXJyZW50bHkgbWlzc2luZyByZWFkb3V0IGZvciBjOF9wbGFuZXMsIHNvIHdlJ2xsIGhh
dmUgdG8gc2tpcCB0aGUNCj4gc3RhdGUgY2hlY2sgaW4gdGhhdCBjYXNlLg0KPiANCj4gdjI6IEZp
eCByZWFkb3V0IGZvciBDOCB1c2UgY2FzZXMNCj4gdjM6IFNraXAgQzggZW50aXJlbHkgZHVlIHRv
IGxhY2sgb2YgYzhfcGxhbmVzIHJlYWRvdXQNCj4gICAgIEFkZCBpbGtfaGFzX3ByZV9jc2NfbHV0
KCkgaGVscGVyIGFuZCB1c2Ugb3RoZXIgc3VjaCBoZWxwZXJzDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyAgIHwgMjc1ICsr
KysrKysrKysrKysrLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuaCAgIHwgICA4ICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8ICAyOSArLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAyMjUgaW5zZXJ0aW9ucygr
KSwgODcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IGYwYmI0MjI3MzM4Yy4uZTJiY2ZiZmZiMjk4IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC01
Myw3ICs1MywxOCBAQCBzdHJ1Y3QgaW50ZWxfY29sb3JfZnVuY3Mgew0KPiAgCSAqIGludm9sdmVk
IHdpdGggdGhlIHNhbWUgY29tbWl0Lg0KPiAgCSAqLw0KPiAgCXZvaWQgKCpsb2FkX2x1dHMpKGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gKwkvKg0KPiArCSAq
IFJlYWQgb3V0IHRoZSBMVVRzIGZyb20gdGhlIGhhcmR3YXJlIGludG8gdGhlIHNvZnR3YXJlIHN0
YXRlLg0KPiArCSAqIFVzZWQgYnkgZWcuIHRoZSBoYXJkd2FyZSBzdGF0ZSBjaGVja2VyLg0KPiAr
CSAqLw0KPiAgCXZvaWQgKCpyZWFkX2x1dHMpKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKTsNCj4gKwkvKg0KPiArCSAqIENvbXBhcmUgdGhlIExVVHMNCj4gKwkgKi8NCj4gKwli
b29sICgqbHV0X2VxdWFsKShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gKwkJCSAgY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMSwNCj4gKwkJ
CSAgY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMiwNCj4gKwkJCSAgYm9vbCBp
c19wcmVfY3NjX2x1dCk7DQo+ICB9Ow0KPiANCj4gICNkZWZpbmUgQ1RNX0NPRUZGX1NJR04JKDFV
TEwgPDwgNjMpDQo+IEBAIC0xMjM0LDYgKzEyNDUsMjQgQEAgdm9pZCBpbnRlbF9jb2xvcl9nZXRf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAgCWk5MTUt
PmRpc3BsYXkuZnVuY3MuY29sb3ItPnJlYWRfbHV0cyhjcnRjX3N0YXRlKTsNCj4gIH0NCj4gDQo+
ICtib29sIGludGVsX2NvbG9yX2x1dF9lcXVhbChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCSAgIGNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAq
YmxvYjEsDQo+ICsJCQkgICBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IyLA0K
PiArCQkJICAgYm9vbCBpc19wcmVfY3NjX2x1dCkNCj4gK3sNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiAr
DQo+ICsJLyoNCj4gKwkgKiBGSVhNRSBjOF9wbGFuZXMgcmVhZG91dCBtaXNzaW5nIHRodXMNCj4g
KwkgKiAucmVhZF9sdXRzKCkgZG9lc24ndCByZWFkIG91dCBwb3N0X2NzY19sdXQuDQo+ICsJICov
DQo+ICsJaWYgKCFpc19wcmVfY3NjX2x1dCAmJiBjcnRjX3N0YXRlLT5jOF9wbGFuZXMpDQo+ICsJ
CXJldHVybiB0cnVlOw0KPiArDQo+ICsJcmV0dXJuIGk5MTUtPmRpc3BsYXkuZnVuY3MuY29sb3It
Pmx1dF9lcXVhbChjcnRjX3N0YXRlLCBibG9iMSwgYmxvYjIsDQo+ICsJCQkJCQkgICAgaXNfcHJl
X2NzY19sdXQpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgYm9vbCBuZWVkX3BsYW5lX3VwZGF0ZShz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7IEBAIC0xODE0LDYNCj4gKzE4NDMsMjQgQEAgc3Rh
dGljIGludCBpOXh4X3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKmNydGNfc3RhdGUNCj4gIAl9DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCBp
OXh4X3ByZV9jc2NfbHV0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0K
PiArKmNydGNfc3RhdGUpIHsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGlu
dCBpbGtfZ2FtbWFfbW9kZV9wcmVjaXNpb24odTMyIGdhbW1hX21vZGUpIHsNCj4gKwlzd2l0Y2gg
KGdhbW1hX21vZGUpIHsNCj4gKwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOg0KPiArCQlyZXR1
cm4gODsNCj4gKwljYXNlIEdBTU1BX01PREVfTU9ERV8xMEJJVDoNCj4gKwkJcmV0dXJuIDEwOw0K
PiArCWRlZmF1bHQ6DQo+ICsJCU1JU1NJTkdfQ0FTRShnYW1tYV9tb2RlKTsNCj4gKwkJcmV0dXJu
IDA7DQo+ICsJfQ0KPiArfQ0KPiArDQo+ICBzdGF0aWMgYm9vbCBpbGtfaGFzX3Bvc3RfY3NjX2x1
dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsNCj4gIAlpZiAo
Y3J0Y19zdGF0ZS0+YzhfcGxhbmVzKQ0KPiBAQCAtMTgyMywyOCArMTg3MCw2MCBAQCBzdGF0aWMg
Ym9vbCBpbGtfaGFzX3Bvc3RfY3NjX2x1dChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkNCj4gIAkJKGNydGNfc3RhdGUtPmNzY19tb2RlICYgQ1NDX1BPU0lUSU9O
X0JFRk9SRV9HQU1NQSkgIT0gMDsgIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBpbGtfaGFzX3ByZV9j
c2NfbHV0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0K
PiArCXJldHVybiBjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUgJiYNCj4gKwkJKGNydGNfc3RhdGUt
PmNzY19tb2RlICYgQ1NDX1BPU0lUSU9OX0JFRk9SRV9HQU1NQSkgPT0gMDsgfQ0KPiArDQo+ICBz
dGF0aWMgaW50IGlsa19wb3N0X2NzY19sdXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKSAgew0KPiAgCWlmICghaWxrX2hhc19wb3N0X2NzY19sdXQo
Y3J0Y19zdGF0ZSkpDQo+ICAJCXJldHVybiAwOw0KPiANCj4gLQlzd2l0Y2ggKGNydGNfc3RhdGUt
PmdhbW1hX21vZGUpIHsNCj4gLQljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOg0KPiAtCQlyZXR1
cm4gODsNCj4gLQljYXNlIEdBTU1BX01PREVfTU9ERV8xMEJJVDoNCj4gLQkJcmV0dXJuIDEwOw0K
PiAtCWRlZmF1bHQ6DQo+IC0JCU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsN
Cj4gKwlyZXR1cm4gaWxrX2dhbW1hX21vZGVfcHJlY2lzaW9uKGNydGNfc3RhdGUtPmdhbW1hX21v
ZGUpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGlsa19wcmVfY3NjX2x1dF9wcmVjaXNpb24o
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7DQo+ICsJaWYg
KCFpbGtfaGFzX3ByZV9jc2NfbHV0KGNydGNfc3RhdGUpKQ0KPiAgCQlyZXR1cm4gMDsNCj4gLQl9
DQo+ICsNCj4gKwlyZXR1cm4gaWxrX2dhbW1hX21vZGVfcHJlY2lzaW9uKGNydGNfc3RhdGUtPmdh
bW1hX21vZGUpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaW50IGl2Yl9wb3N0X2NzY19sdXRfcHJl
Y2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0K
PiArCWlmIChjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUgJiYNCj4gKwkgICAgY3J0Y19zdGF0ZS0+
Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfU1BMSVQpDQo+ICsJCXJldHVybiAxMDsNCj4g
Kw0KPiArCXJldHVybiBpbGtfcG9zdF9jc2NfbHV0X3ByZWNpc2lvbihjcnRjX3N0YXRlKTsNCj4g
K30NCj4gKw0KPiArc3RhdGljIGludCBpdmJfcHJlX2NzY19sdXRfcHJlY2lzaW9uKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCWlmIChjcnRjX3N0
YXRlLT5nYW1tYV9lbmFibGUgJiYNCj4gKwkgICAgY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBH
QU1NQV9NT0RFX01PREVfU1BMSVQpDQo+ICsJCXJldHVybiAxMDsNCj4gKw0KPiArCXJldHVybiBp
bGtfcHJlX2NzY19sdXRfcHJlY2lzaW9uKGNydGNfc3RhdGUpOw0KPiAgfQ0KPiANCj4gIHN0YXRp
YyBpbnQgY2h2X3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpICB7DQo+ICAJaWYgKGNydGNfc3RhdGUtPmNnbV9tb2RlICYgQ0dN
X1BJUEVfTU9ERV9HQU1NQSkNCj4gIAkJcmV0dXJuIDEwOw0KPiAtCWVsc2UNCj4gLQkJcmV0dXJu
IGk5eHhfcG9zdF9jc2NfbHV0X3ByZWNpc2lvbihjcnRjX3N0YXRlKTsNCj4gKw0KPiArCXJldHVy
biBpOXh4X3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+ICt9DQo+ICsNCj4g
K3N0YXRpYyBpbnQgY2h2X3ByZV9jc2NfbHV0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+Y2dtX21v
ZGUgJiBDR01fUElQRV9NT0RFX0RFR0FNTUEpDQo+ICsJCXJldHVybiAxNDsNCj4gKw0KPiArCXJl
dHVybiAwOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBpbnQgZ2xrX3Bvc3RfY3NjX2x1dF9wcmVjaXNp
b24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIEBAIC0NCj4gMTg1
MiwxNSArMTkzMSwxNSBAQCBzdGF0aWMgaW50IGdsa19wb3N0X2NzY19sdXRfcHJlY2lzaW9uKGNv
bnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCWlmICghY3J0
Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlICYmICFjcnRjX3N0YXRlLT5jOF9wbGFuZXMpDQo+ICAJCXJl
dHVybiAwOw0KPiANCj4gLQlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpIHsNCj4gLQlj
YXNlIEdBTU1BX01PREVfTU9ERV84QklUOg0KPiAtCQlyZXR1cm4gODsNCj4gLQljYXNlIEdBTU1B
X01PREVfTU9ERV8xMEJJVDoNCj4gLQkJcmV0dXJuIDEwOw0KPiAtCWRlZmF1bHQ6DQo+IC0JCU1J
U1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsNCj4gKwlyZXR1cm4gaWxrX2dhbW1h
X21vZGVfcHJlY2lzaW9uKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOw0KPiArfQ0KPiArDQo+ICtz
dGF0aWMgaW50IGdsa19wcmVfY3NjX2x1dF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKSB7DQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5jc2NfZW5h
YmxlKQ0KPiAgCQlyZXR1cm4gMDsNCj4gLQl9DQo+ICsNCj4gKwlyZXR1cm4gMTY7DQo+ICB9DQo+
IA0KPiAgc3RhdGljIGJvb2wgaWNsX2hhc19wb3N0X2NzY19sdXQoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIEBAIC0NCj4gMTg5NCwyNiArMTk3MywxMiBAQCBzdGF0
aWMgaW50IGljbF9wb3N0X2NzY19sdXRfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCX0NCj4gIH0NCj4gDQo+IC1pbnQgaW50ZWxfY29s
b3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpDQo+ICtzdGF0aWMgaW50IGljbF9wcmVfY3NjX2x1dF9wcmVjaXNpb24oY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKypjcnRjX3N0YXRlKQ0KPiAgew0KPiAtCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNy
dGMpOw0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjLT5i
YXNlLmRldik7DQo+ICsJaWYgKCFpY2xfaGFzX3ByZV9jc2NfbHV0KGNydGNfc3RhdGUpKQ0KPiAr
CQlyZXR1cm4gMDsNCj4gDQo+IC0JaWYgKEhBU19HTUNIKGk5MTUpKSB7DQo+IC0JCWlmIChJU19D
SEVSUllWSUVXKGk5MTUpKQ0KPiAtCQkJcmV0dXJuIGNodl9wb3N0X2NzY19sdXRfcHJlY2lzaW9u
KGNydGNfc3RhdGUpOw0KPiAtCQllbHNlDQo+IC0JCQlyZXR1cm4gaTl4eF9wb3N0X2NzY19sdXRf
cHJlY2lzaW9uKGNydGNfc3RhdGUpOw0KPiAtCX0gZWxzZSB7DQo+IC0JCWlmIChESVNQTEFZX1ZF
UihpOTE1KSA+PSAxMSkNCj4gLQkJCXJldHVybiBpY2xfcG9zdF9jc2NfbHV0X3ByZWNpc2lvbihj
cnRjX3N0YXRlKTsNCj4gLQkJZWxzZSBpZiAoRElTUExBWV9WRVIoaTkxNSkgPT0gMTApDQo+IC0J
CQlyZXR1cm4gZ2xrX3Bvc3RfY3NjX2x1dF9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7DQo+IC0JCWVs
c2UgaWYgKElTX0lST05MQUtFKGk5MTUpKQ0KPiAtCQkJcmV0dXJuIGlsa19wb3N0X2NzY19sdXRf
cHJlY2lzaW9uKGNydGNfc3RhdGUpOw0KPiAtCX0NCj4gLQ0KPiAtCXJldHVybiAwOw0KPiArCXJl
dHVybiAxNjsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCBlcnJfY2hlY2soc3RydWN0IGRybV9j
b2xvcl9sdXQgKmx1dDEsIEBAIC0xOTI0LDkgKzE5ODksOSBAQCBzdGF0aWMNCj4gYm9vbCBlcnJf
Y2hlY2soc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDEsDQo+ICAJCSgoYWJzKChsb25nKWx1dDIt
PmdyZWVuIC0gbHV0MS0+Z3JlZW4pKSA8PSBlcnIpOyAgfQ0KPiANCj4gLXN0YXRpYyBib29sIGlu
dGVsX2NvbG9yX2x1dF9lbnRyaWVzX2VxdWFsKHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQxLA0K
PiAtCQkJCQkgIHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQyLA0KPiAtCQkJCQkgIGludCBsdXRf
c2l6ZSwgdTMyIGVycikNCj4gK3N0YXRpYyBib29sIGludGVsX2x1dF9lbnRyaWVzX2VxdWFsKHN0
cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQxLA0KPiArCQkJCSAgICBzdHJ1Y3QgZHJtX2NvbG9yX2x1
dCAqbHV0MiwNCj4gKwkJCQkgICAgaW50IGx1dF9zaXplLCB1MzIgZXJyKQ0KPiAgew0KPiAgCWlu
dCBpOw0KPiANCj4gQEAgLTE5MzgsOSArMjAwMyw5IEBAIHN0YXRpYyBib29sIGludGVsX2NvbG9y
X2x1dF9lbnRyaWVzX2VxdWFsKHN0cnVjdA0KPiBkcm1fY29sb3JfbHV0ICpsdXQxLA0KPiAgCXJl
dHVybiB0cnVlOw0KPiAgfQ0KPiANCj4gLWJvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVj
dCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsDQo+IC0JCQkgICBzdHJ1Y3QgZHJtX3Byb3BlcnR5
X2Jsb2IgKmJsb2IyLA0KPiAtCQkJICAgdTMyIGdhbW1hX21vZGUsIHUzMiBiaXRfcHJlY2lzaW9u
KQ0KPiArc3RhdGljIGJvb2wgaW50ZWxfbHV0X2VxdWFsKGNvbnN0IHN0cnVjdCBkcm1fcHJvcGVy
dHlfYmxvYiAqYmxvYjEsDQo+ICsJCQkgICAgY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9i
ICpibG9iMiwNCj4gKwkJCSAgICBpbnQgY2hlY2tfc2l6ZSwgaW50IHByZWNpc2lvbikNCj4gIHsN
Cj4gIAlzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwgKmx1dDI7DQo+ICAJaW50IGx1dF9zaXpl
MSwgbHV0X3NpemUyOw0KPiBAQCAtMTk0OSw0MCArMjAxNCwxMTIgQEAgYm9vbCBpbnRlbF9jb2xv
cl9sdXRfZXF1YWwoc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iDQo+ICpibG9iMSwNCj4gIAlpZiAo
IWJsb2IxICE9ICFibG9iMikNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiANCj4gKwlpZiAoIWJsb2Ix
ICE9ICFwcmVjaXNpb24pDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiAgCWlmICghYmxvYjEp
DQo+ICAJCXJldHVybiB0cnVlOw0KPiANCj4gIAlsdXRfc2l6ZTEgPSBkcm1fY29sb3JfbHV0X3Np
emUoYmxvYjEpOw0KPiAgCWx1dF9zaXplMiA9IGRybV9jb2xvcl9sdXRfc2l6ZShibG9iMik7DQo+
IA0KPiAtCS8qIGNoZWNrIHN3IGFuZCBodyBsdXQgc2l6ZSAqLw0KPiAgCWlmIChsdXRfc2l6ZTEg
IT0gbHV0X3NpemUyKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiAgCWx1dDEgPSBibG9iMS0+
ZGF0YTsNCj4gIAlsdXQyID0gYmxvYjItPmRhdGE7DQo+IA0KPiAtCWVyciA9IDB4ZmZmZiA+PiBi
aXRfcHJlY2lzaW9uOw0KPiAtDQo+IC0JLyogY2hlY2sgc3cgYW5kIGh3IGx1dCBlbnRyeSB0byBi
ZSBlcXVhbCAqLw0KPiAtCXN3aXRjaCAoZ2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNL
KSB7DQo+IC0JY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoNCj4gLQljYXNlIEdBTU1BX01PREVf
TU9ERV8xMEJJVDoNCj4gLQkJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZW50cmllc19lcXVhbChsdXQx
LCBsdXQyLA0KPiAtCQkJCQkJICAgbHV0X3NpemUyLCBlcnIpKQ0KPiAtCQkJcmV0dXJuIGZhbHNl
Ow0KPiAtCQlicmVhazsNCj4gLQljYXNlIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdN
RU5URUQ6DQo+IC0JCWlmICghaW50ZWxfY29sb3JfbHV0X2VudHJpZXNfZXF1YWwobHV0MSwgbHV0
MiwNCj4gLQkJCQkJCSAgIDksIGVycikpDQo+IC0JCQlyZXR1cm4gZmFsc2U7DQo+IC0JCWJyZWFr
Ow0KPiAtCWRlZmF1bHQ6DQo+IC0JCU1JU1NJTkdfQ0FTRShnYW1tYV9tb2RlKTsNCj4gLQkJcmV0
dXJuIGZhbHNlOw0KPiAtCX0NCj4gLQ0KPiAtCXJldHVybiB0cnVlOw0KPiArCWVyciA9IDB4ZmZm
ZiA+PiBwcmVjaXNpb247DQo+ICsNCj4gKwlpZiAoIWNoZWNrX3NpemUpDQo+ICsJCWNoZWNrX3Np
emUgPSBsdXRfc2l6ZTE7DQo+ICsNCj4gKwlyZXR1cm4gaW50ZWxfbHV0X2VudHJpZXNfZXF1YWwo
bHV0MSwgbHV0MiwgY2hlY2tfc2l6ZSwgZXJyKTsgfQ0KPiArDQo+ICtzdGF0aWMgYm9vbCBpOXh4
X2x1dF9lcXVhbChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4g
KwkJCSAgIGNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsDQo+ICsJCQkgICBj
b25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IyLA0KPiArCQkJICAgYm9vbCBpc19w
cmVfY3NjX2x1dCkNCj4gK3sNCj4gKwlpZiAoaXNfcHJlX2NzY19sdXQpDQo+ICsJCXJldHVybiBp
bnRlbF9sdXRfZXF1YWwoYmxvYjEsIGJsb2IyLCAwLA0KPiArCQkJCSAgICAgICBpOXh4X3ByZV9j
c2NfbHV0X3ByZWNpc2lvbihjcnRjX3N0YXRlKSk7DQo+ICsJZWxzZQ0KPiArCQlyZXR1cm4gaW50
ZWxfbHV0X2VxdWFsKGJsb2IxLCBibG9iMiwgMCwNCj4gKwkJCQkgICAgICAgaTl4eF9wb3N0X2Nz
Y19sdXRfcHJlY2lzaW9uKGNydGNfc3RhdGUpKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGJvb2wg
Y2h2X2x1dF9lcXVhbChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwN
Cj4gKwkJCSAgY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMSwNCj4gKwkJCSAg
Y29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMiwNCj4gKwkJCSAgYm9vbCBpc19w
cmVfY3NjX2x1dCkNCj4gK3sNCj4gKwlpZiAoaXNfcHJlX2NzY19sdXQpDQo+ICsJCXJldHVybiBp
bnRlbF9sdXRfZXF1YWwoYmxvYjEsIGJsb2IyLCAwLA0KPiArCQkJCSAgICAgICBjaHZfcHJlX2Nz
Y19sdXRfcHJlY2lzaW9uKGNydGNfc3RhdGUpKTsNCj4gKwllbHNlDQo+ICsJCXJldHVybiBpbnRl
bF9sdXRfZXF1YWwoYmxvYjEsIGJsb2IyLCAwLA0KPiArCQkJCSAgICAgICBjaHZfcG9zdF9jc2Nf
bHV0X3ByZWNpc2lvbihjcnRjX3N0YXRlKSk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBib29sIGls
a19sdXRfZXF1YWwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+
ICsJCQkgIGNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsDQo+ICsJCQkgIGNv
bnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjIsDQo+ICsJCQkgIGJvb2wgaXNfcHJl
X2NzY19sdXQpDQo+ICt7DQo+ICsJaWYgKGlzX3ByZV9jc2NfbHV0KQ0KPiArCQlyZXR1cm4gaW50
ZWxfbHV0X2VxdWFsKGJsb2IxLCBibG9iMiwgMCwNCj4gKwkJCQkgICAgICAgaWxrX3ByZV9jc2Nf
bHV0X3ByZWNpc2lvbihjcnRjX3N0YXRlKSk7DQo+ICsJZWxzZQ0KPiArCQlyZXR1cm4gaW50ZWxf
bHV0X2VxdWFsKGJsb2IxLCBibG9iMiwgMCwNCj4gKwkJCQkgICAgICAgaWxrX3Bvc3RfY3NjX2x1
dF9wcmVjaXNpb24oY3J0Y19zdGF0ZSkpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgYm9vbCBpdmJf
bHV0X2VxdWFsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAr
CQkJICBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IxLA0KPiArCQkJICBjb25z
dCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IyLA0KPiArCQkJICBib29sIGlzX3ByZV9j
c2NfbHV0KQ0KPiArew0KPiArCWlmIChpc19wcmVfY3NjX2x1dCkNCj4gKwkJcmV0dXJuIGludGVs
X2x1dF9lcXVhbChibG9iMSwgYmxvYjIsIDAsDQo+ICsJCQkJICAgICAgIGl2Yl9wcmVfY3NjX2x1
dF9wcmVjaXNpb24oY3J0Y19zdGF0ZSkpOw0KPiArCWVsc2UNCj4gKwkJcmV0dXJuIGludGVsX2x1
dF9lcXVhbChibG9iMSwgYmxvYjIsIDAsDQo+ICsJCQkJICAgICAgIGl2Yl9wb3N0X2NzY19sdXRf
cHJlY2lzaW9uKGNydGNfc3RhdGUpKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIGJvb2wgZ2xrX2x1
dF9lcXVhbChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJ
CSAgY29uc3Qgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMSwNCj4gKwkJCSAgY29uc3Qg
c3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMiwNCj4gKwkJCSAgYm9vbCBpc19wcmVfY3Nj
X2x1dCkNCj4gK3sNCj4gKwlpZiAoaXNfcHJlX2NzY19sdXQpDQo+ICsJCXJldHVybiBpbnRlbF9s
dXRfZXF1YWwoYmxvYjEsIGJsb2IyLCAwLA0KPiArCQkJCSAgICAgICBnbGtfcHJlX2NzY19sdXRf
cHJlY2lzaW9uKGNydGNfc3RhdGUpKTsNCj4gKwllbHNlDQo+ICsJCXJldHVybiBpbnRlbF9sdXRf
ZXF1YWwoYmxvYjEsIGJsb2IyLCAwLA0KPiArCQkJCSAgICAgICBnbGtfcG9zdF9jc2NfbHV0X3By
ZWNpc2lvbihjcnRjX3N0YXRlKSk7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBib29sIGljbF9sdXRf
ZXF1YWwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkg
IGNvbnN0IHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsDQo+ICsJCQkgIGNvbnN0IHN0
cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjIsDQo+ICsJCQkgIGJvb2wgaXNfcHJlX2NzY19s
dXQpDQo+ICt7DQo+ICsJaW50IGNoZWNrX3NpemUgPSAwOw0KPiArDQo+ICsJaWYgKGlzX3ByZV9j
c2NfbHV0KQ0KPiArCQlyZXR1cm4gaW50ZWxfbHV0X2VxdWFsKGJsb2IxLCBibG9iMiwgMCwNCj4g
KwkJCQkgICAgICAgaWNsX3ByZV9jc2NfbHV0X3ByZWNpc2lvbihjcnRjX3N0YXRlKSk7DQo+ICsN
Cj4gKwkvKiBodyByZWFkb3V0IGJyb2tlbiBleGNlcHQgZm9yIHRoZSBzdXBlciBmaW5lIHNlZ21l
bnQgOiggKi8NCj4gKwlpZiAoKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBHQU1NQV9NT0RFX01P
REVfTUFTSykgPT0NCj4gKwkgICAgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRF
RCkNCj4gKwkJY2hlY2tfc2l6ZSA9IDk7DQo+ICsNCj4gKwlyZXR1cm4gaW50ZWxfbHV0X2VxdWFs
KGJsb2IxLCBibG9iMiwgY2hlY2tfc2l6ZSwNCj4gKwkJCSAgICAgICBpY2xfcG9zdF9jc2NfbHV0
X3ByZWNpc2lvbihjcnRjX3N0YXRlKSk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHN0cnVjdCBkcm1f
cHJvcGVydHlfYmxvYiAqaTl4eF9yZWFkX2x1dF84KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSBA
QCAtDQo+IDI0NjIsNiArMjU5OSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfY29sb3Jf
ZnVuY3MgY2h2X2NvbG9yX2Z1bmNzID0gew0KPiAgCS5jb2xvcl9jb21taXRfYXJtID0gaTl4eF9j
b2xvcl9jb21taXRfYXJtLA0KPiAgCS5sb2FkX2x1dHMgPSBjaHZfbG9hZF9sdXRzLA0KPiAgCS5y
ZWFkX2x1dHMgPSBjaHZfcmVhZF9sdXRzLA0KPiArCS5sdXRfZXF1YWwgPSBjaHZfbHV0X2VxdWFs
LA0KPiAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NvbG9yX2Z1bmNzIGk5
NjVfY29sb3JfZnVuY3MgPSB7IEBAIC0yNDY5LDYgKzI2MDcsNyBAQA0KPiBzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX2NvbG9yX2Z1bmNzIGk5NjVfY29sb3JfZnVuY3MgPSB7DQo+ICAJLmNvbG9y
X2NvbW1pdF9hcm0gPSBpOXh4X2NvbG9yX2NvbW1pdF9hcm0sDQo+ICAJLmxvYWRfbHV0cyA9IGk5
NjVfbG9hZF9sdXRzLA0KPiAgCS5yZWFkX2x1dHMgPSBpOTY1X3JlYWRfbHV0cywNCj4gKwkubHV0
X2VxdWFsID0gaTl4eF9sdXRfZXF1YWwsDQo+ICB9Ow0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfY29sb3JfZnVuY3MgaTl4eF9jb2xvcl9mdW5jcyA9IHsgQEAgLTI0NzYsNiArMjYx
NSw3IEBADQo+IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfY29sb3JfZnVuY3MgaTl4eF9jb2xv
cl9mdW5jcyA9IHsNCj4gIAkuY29sb3JfY29tbWl0X2FybSA9IGk5eHhfY29sb3JfY29tbWl0X2Fy
bSwNCj4gIAkubG9hZF9sdXRzID0gaTl4eF9sb2FkX2x1dHMsDQo+ICAJLnJlYWRfbHV0cyA9IGk5
eHhfcmVhZF9sdXRzLA0KPiArCS5sdXRfZXF1YWwgPSBpOXh4X2x1dF9lcXVhbCwNCj4gIH07DQo+
IA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jb2xvcl9mdW5jcyBpY2xfY29sb3JfZnVu
Y3MgPSB7IEBAIC0yNDg0LDYgKzI2MjQsNyBAQA0KPiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVs
X2NvbG9yX2Z1bmNzIGljbF9jb2xvcl9mdW5jcyA9IHsNCj4gIAkuY29sb3JfY29tbWl0X2FybSA9
IHNrbF9jb2xvcl9jb21taXRfYXJtLA0KPiAgCS5sb2FkX2x1dHMgPSBpY2xfbG9hZF9sdXRzLA0K
PiAgCS5yZWFkX2x1dHMgPSBpY2xfcmVhZF9sdXRzLA0KPiArCS5sdXRfZXF1YWwgPSBpY2xfbHV0
X2VxdWFsLA0KPiAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NvbG9yX2Z1
bmNzIGdsa19jb2xvcl9mdW5jcyA9IHsgQEAgLTI0OTIsNiArMjYzMyw3IEBADQo+IHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfY29sb3JfZnVuY3MgZ2xrX2NvbG9yX2Z1bmNzID0gew0KPiAgCS5j
b2xvcl9jb21taXRfYXJtID0gc2tsX2NvbG9yX2NvbW1pdF9hcm0sDQo+ICAJLmxvYWRfbHV0cyA9
IGdsa19sb2FkX2x1dHMsDQo+ICAJLnJlYWRfbHV0cyA9IGdsa19yZWFkX2x1dHMsDQo+ICsJLmx1
dF9lcXVhbCA9IGdsa19sdXRfZXF1YWwsDQo+ICB9Ow0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfY29sb3JfZnVuY3Mgc2tsX2NvbG9yX2Z1bmNzID0geyBAQCAtMjUwMCw2ICsyNjQy
LDcgQEANCj4gc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jb2xvcl9mdW5jcyBza2xfY29sb3Jf
ZnVuY3MgPSB7DQo+ICAJLmNvbG9yX2NvbW1pdF9hcm0gPSBza2xfY29sb3JfY29tbWl0X2FybSwN
Cj4gIAkubG9hZF9sdXRzID0gYmR3X2xvYWRfbHV0cywNCj4gIAkucmVhZF9sdXRzID0gYmR3X3Jl
YWRfbHV0cywNCj4gKwkubHV0X2VxdWFsID0gaXZiX2x1dF9lcXVhbCwNCj4gIH07DQo+IA0KPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jb2xvcl9mdW5jcyBiZHdfY29sb3JfZnVuY3MgPSB7
IEBAIC0yNTA4LDYgKzI2NTEsNyBAQA0KPiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NvbG9y
X2Z1bmNzIGJkd19jb2xvcl9mdW5jcyA9IHsNCj4gIAkuY29sb3JfY29tbWl0X2FybSA9IGhzd19j
b2xvcl9jb21taXRfYXJtLA0KPiAgCS5sb2FkX2x1dHMgPSBiZHdfbG9hZF9sdXRzLA0KPiAgCS5y
ZWFkX2x1dHMgPSBiZHdfcmVhZF9sdXRzLA0KPiArCS5sdXRfZXF1YWwgPSBpdmJfbHV0X2VxdWFs
LA0KPiAgfTsNCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NvbG9yX2Z1bmNzIGhz
d19jb2xvcl9mdW5jcyA9IHsgQEAgLTI1MTYsNiArMjY2MCw3IEBADQo+IHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfY29sb3JfZnVuY3MgaHN3X2NvbG9yX2Z1bmNzID0gew0KPiAgCS5jb2xvcl9j
b21taXRfYXJtID0gaHN3X2NvbG9yX2NvbW1pdF9hcm0sDQo+ICAJLmxvYWRfbHV0cyA9IGl2Yl9s
b2FkX2x1dHMsDQo+ICAJLnJlYWRfbHV0cyA9IGl2Yl9yZWFkX2x1dHMsDQo+ICsJLmx1dF9lcXVh
bCA9IGl2Yl9sdXRfZXF1YWwsDQo+ICB9Ow0KPiANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfY29sb3JfZnVuY3MgaXZiX2NvbG9yX2Z1bmNzID0geyBAQCAtMjUyNCw2ICsyNjY5LDcgQEAN
Cj4gc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9jb2xvcl9mdW5jcyBpdmJfY29sb3JfZnVuY3Mg
PSB7DQo+ICAJLmNvbG9yX2NvbW1pdF9hcm0gPSBpbGtfY29sb3JfY29tbWl0X2FybSwNCj4gIAku
bG9hZF9sdXRzID0gaXZiX2xvYWRfbHV0cywNCj4gIAkucmVhZF9sdXRzID0gaXZiX3JlYWRfbHV0
cywNCj4gKwkubHV0X2VxdWFsID0gaXZiX2x1dF9lcXVhbCwNCj4gIH07DQo+IA0KPiAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBpbnRlbF9jb2xvcl9mdW5jcyBpbGtfY29sb3JfZnVuY3MgPSB7IEBAIC0y
NTMyLDYgKzI2NzgsNyBAQA0KPiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2NvbG9yX2Z1bmNz
IGlsa19jb2xvcl9mdW5jcyA9IHsNCj4gIAkuY29sb3JfY29tbWl0X2FybSA9IGlsa19jb2xvcl9j
b21taXRfYXJtLA0KPiAgCS5sb2FkX2x1dHMgPSBpbGtfbG9hZF9sdXRzLA0KPiAgCS5yZWFkX2x1
dHMgPSBpbGtfcmVhZF9sdXRzLA0KPiArCS5sdXRfZXF1YWwgPSBpbGtfbHV0X2VxdWFsLA0KPiAg
fTsNCj4gDQo+ICB2b2lkIGludGVsX2NvbG9yX2NydGNfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YykgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaA0K
PiBpbmRleCAyYTVhZGE2Nzc3NGQuLjFjNmIxNzU1ZjZkMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuaA0KPiBAQCAtMjEsMTAgKzIxLDEwIEBAIHZv
aWQgaW50ZWxfY29sb3JfY29tbWl0X25vYXJtKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsgIHZvaWQgaW50ZWxfY29sb3JfY29tbWl0X2FybShjb25zdCBzdHJ1
Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICB2b2lkIGludGVsX2NvbG9yX2xv
YWRfbHV0cyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICB2
b2lkIGludGVsX2NvbG9yX2dldF9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNy
dGNfc3RhdGUpOyAtaW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKTsgLWJvb2wgaW50ZWxfY29s
b3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsDQo+IC0JCQkgICBz
dHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IyLA0KPiAtCQkJICAgdTMyIGdhbW1hX21vZGUs
IHUzMiBiaXRfcHJlY2lzaW9uKTsNCj4gK2Jvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiArCQkJICAgY29uc3Qgc3Ry
dWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iMSwNCj4gKwkJCSAgIGNvbnN0IHN0cnVjdCBkcm1f
cHJvcGVydHlfYmxvYiAqYmxvYjIsDQo+ICsJCQkgICBib29sIGlzX3ByZV9jc2NfbHV0KTsNCj4g
IHZvaWQgaW50ZWxfY29sb3JfYXNzZXJ0X2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpOw0KPiANCj4gICNlbmRpZiAvKiBfX0lOVEVMX0NPTE9SX0hfXyAqLw0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBp
bmRleCBjODQyMmZlZjk5MmEuLjdiZmNjOGNhMGJhYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTU1MjYsNyArNTUyNiw2IEBA
IGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gKmN1cnJlbnRfY29uZmlnLA0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3VycmVudF9jb25maWctPnVhcGkuY3J0Yy0NCj4gPmRldik7DQo+ICAJc3Ry
dWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKHBpcGVfY29uZmlnLT51YXBpLmNy
dGMpOw0KPiAgCWJvb2wgcmV0ID0gdHJ1ZTsNCj4gLQl1MzIgYnBfZ2FtbWEgPSAwOw0KPiAgCWJv
b2wgZml4dXBfaW5oZXJpdGVkID0gZmFzdHNldCAmJg0KPiAgCQljdXJyZW50X2NvbmZpZy0+aW5o
ZXJpdGVkICYmICFwaXBlX2NvbmZpZy0+aW5oZXJpdGVkOw0KPiANCj4gQEAgLTU2NzcsMjEgKzU2
NzYsMTQgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqY3VycmVudF9jb25maWcsDQo+ICAJfSBcDQo+ICB9IHdoaWxlICgwKQ0KPiAN
Cj4gLSNkZWZpbmUgUElQRV9DT05GX0NIRUNLX0NPTE9SX0xVVChuYW1lMSwgbmFtZTIsIGJpdF9w
cmVjaXNpb24pIGRvIHsgXA0KPiAtCWlmIChjdXJyZW50X2NvbmZpZy0+bmFtZTEgIT0gcGlwZV9j
b25maWctPm5hbWUxKSB7IFwNCj4gLQkJcGlwZV9jb25maWdfbWlzbWF0Y2goZmFzdHNldCwgY3J0
YywgX19zdHJpbmdpZnkobmFtZTEpLCBcDQo+IC0JCQkJIihleHBlY3RlZCAlaSwgZm91bmQgJWks
IHdvbid0IGNvbXBhcmUgbHV0DQo+IHZhbHVlcykiLCBcDQo+IC0JCQkJY3VycmVudF9jb25maWct
Pm5hbWUxLCBcDQo+IC0JCQkJcGlwZV9jb25maWctPm5hbWUxKTsgXA0KPiAtCQlyZXQgPSBmYWxz
ZTtcDQo+IC0JfSBlbHNlIHsgXA0KPiAtCQlpZiAoIWludGVsX2NvbG9yX2x1dF9lcXVhbChjdXJy
ZW50X2NvbmZpZy0+bmFtZTIsIFwNCj4gLQkJCQkJcGlwZV9jb25maWctPm5hbWUyLCBwaXBlX2Nv
bmZpZy0+bmFtZTEsDQo+IFwNCj4gLQkJCQkJYml0X3ByZWNpc2lvbikpIHsgXA0KPiAtCQkJcGlw
ZV9jb25maWdfbWlzbWF0Y2goZmFzdHNldCwgY3J0YywgX19zdHJpbmdpZnkobmFtZTIpLCBcDQo+
IC0JCQkJCSJod19zdGF0ZSBkb2Vzbid0IG1hdGNoIHN3X3N0YXRlIik7IFwNCj4gLQkJCXJldCA9
IGZhbHNlOyBcDQo+IC0JCX0gXA0KPiArI2RlZmluZSBQSVBFX0NPTkZfQ0hFQ0tfQ09MT1JfTFVU
KGx1dCwgaXNfcHJlX2NzY19sdXQpIGRvIHsgXA0KPiArCWlmIChjdXJyZW50X2NvbmZpZy0+Z2Ft
bWFfbW9kZSA9PSBwaXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSAmJiBcDQo+ICsJICAgICFpbnRlbF9j
b2xvcl9sdXRfZXF1YWwoY3VycmVudF9jb25maWcsIFwNCj4gKwkJCQkgICBjdXJyZW50X2NvbmZp
Zy0+bHV0LCBwaXBlX2NvbmZpZy0+bHV0LCBcDQo+ICsJCQkJICAgaXNfcHJlX2NzY19sdXQpKSB7
CVwNCj4gKwkJcGlwZV9jb25maWdfbWlzbWF0Y2goZmFzdHNldCwgY3J0YywgX19zdHJpbmdpZnko
bHV0KSwgXA0KPiArCQkJCSAgICAgImh3X3N0YXRlIGRvZXNuJ3QgbWF0Y2ggc3dfc3RhdGUiKTsg
XA0KPiArCQlyZXQgPSBmYWxzZTsgXA0KPiAgCX0gXA0KPiAgfSB3aGlsZSAoMCkNCj4gDQo+IEBA
IC01Nzg4LDkgKzU3ODAsOCBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjdXJyZW50X2NvbmZpZywNCj4gIAkJUElQRV9DT05GX0NI
RUNLX0kobGluZXRpbWUpOw0KPiAgCQlQSVBFX0NPTkZfQ0hFQ0tfSShpcHNfbGluZXRpbWUpOw0K
PiANCj4gLQkJYnBfZ2FtbWEgPSBpbnRlbF9jb2xvcl9nZXRfZ2FtbWFfYml0X3ByZWNpc2lvbihw
aXBlX2NvbmZpZyk7DQo+IC0JCWlmIChicF9nYW1tYSkNCj4gLQkJCVBJUEVfQ09ORl9DSEVDS19D
T0xPUl9MVVQoZ2FtbWFfbW9kZSwNCj4gcG9zdF9jc2NfbHV0LCBicF9nYW1tYSk7DQo+ICsJCVBJ
UEVfQ09ORl9DSEVDS19DT0xPUl9MVVQocHJlX2NzY19sdXQsIHRydWUpOw0KPiArCQlQSVBFX0NP
TkZfQ0hFQ0tfQ09MT1JfTFVUKHBvc3RfY3NjX2x1dCwgZmFsc2UpOw0KPiANCj4gIAkJaWYgKGN1
cnJlbnRfY29uZmlnLT5hY3RpdmVfcGxhbmVzKSB7DQo+ICAJCQlQSVBFX0NPTkZfQ0hFQ0tfQk9P
TChoYXNfcHNyKTsNCj4gLS0NCj4gMi4zNy40DQoNCg==
