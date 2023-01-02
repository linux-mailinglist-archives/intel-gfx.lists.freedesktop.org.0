Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AEB65AF66
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 11:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15B010E2EE;
	Mon,  2 Jan 2023 10:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943F110E2EE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 10:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672654640; x=1704190640;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SyAKh6wC7MF9PbzbVrFLVHgyP8NNZunmbT+t2A0NbiY=;
 b=UNVzhUKaR575z0GBHsBCIey6R5JVvADWXgYD7hpiAbgK7RBhkiAvy8kW
 Sf4BOPzUIwCKZ8iKoj+1KP5j+oy1BeEayUTsBWIoXPUb++IedxNDyKD6W
 1R96lLXxk1zx/CrmmRWe/FHO6Ly5ysEXbV9K95RPcr/pRN8pqX+LSmIR/
 L+4Gn2LRaPlucPzXOlQnrq7Rpdl42rTXbbEt3Bt52CfgMcjN56OewwrnI
 f3HQrckquykWke4wtNvlV3PyWntMDvo+jz6zb0kDnKArG86GYx4pvXFR3
 9NhweQGWfJZDm16CXuiJK6TECUVUq4p8GEugQwnYIaIT+IJomRIi3tHaM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="348678998"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="348678998"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2023 02:17:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="899842078"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="899842078"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jan 2023 02:17:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 2 Jan 2023 02:17:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 2 Jan 2023 02:17:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 2 Jan 2023 02:17:19 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 2 Jan 2023 02:17:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TtQj1oaKWZroIRF3je0nKpUQTIWmFCkVJAUiicqZWIeLRJ/+GIrPpJt0HYQM6IAoQb9CScGoI+c6fyQ6va9OOfIhF0tMDkrPSp/s3Zl96uFNxyQX2MA7uq/hDcH2Ay0/1VuuGW6XcCrBD4/aCKTJ+x/R2DcQLsP7D2bGz+QMR+vigwUKjjWN5pwJ1UY5GiZEpKSbLU7bCZC54DdH0Vc/y2Szb76vrooIIiUR5xGFJGfn4lSfHM/UJSy8bZS5zdK0Df28Yqt+Qvjp39l8QzLaKKWEpSRj11LGhBr1sAtZtTwe3gc9TvoFrs9+g/sPvb2WRA9RZ49HUKomgb7FWrpUIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SyAKh6wC7MF9PbzbVrFLVHgyP8NNZunmbT+t2A0NbiY=;
 b=lDciutuEHh8aBQ66PwL+Vtua/zKboeeta8KboxRubfEIP0ItpqcTvKhhNsUiWpSn+oMwtsqQBng1k2ZHBiPx+cM84btdlOVSdz2k+62WR1OggeSiGaZgTWcAHVcbQnyUJwtkC2uni/PvW+d1P7bMeXvLjB1ysBUyr3t8Hg4BK6/k55+JvzyBrLvXnM2FPk/A1CEs5xxTM0AsjURd2guUy/DwP/KasfLUwBzoaQ4u9xrKBIEX0c9egkZZGI+plt46IunhakbAlijXpWLfzGjyNsQX48ZfxsR4TI9G/1W2OD5vSg8bIahcKtzoYR5VlVd1DTZy4PMffGQU4F9e7u5shQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by BL1PR11MB5335.namprd11.prod.outlook.com (2603:10b6:208:31b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 2 Jan
 2023 10:17:16 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::5546:ea97:1beb:cb5f%6]) with mapi id 15.20.5944.019; Mon, 2 Jan 2023
 10:17:16 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v7 0/2] drm/i915/mtl: handle some MTL scaler
 limitations
Thread-Index: AQHZHpNj4XAljteBYEC9Mxo8lRWpHQ==
Date: Mon, 2 Jan 2023 10:17:16 +0000
Message-ID: <d7270c1b0ecc525b1b9c2536bd0b91f9b301e9ab.camel@intel.com>
References: <20221223130509.43245-1-luciano.coelho@intel.com>
In-Reply-To: <20221223130509.43245-1-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.2-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|BL1PR11MB5335:EE_
x-ms-office365-filtering-correlation-id: 52a0f7c7-5d28-4101-57ec-08daecaa862d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CdV68A6mjwhfCIeJ2LeeUDOPVOV7aFTJjkxWzV6mNc3AsZRug5vfyamNZMNU9JNx2ZwAkYmBPPl4kWFHK23ZISyyGgQf8J6YuI5GOsn0ttkW7sJb74zXh77ideo9M5FZ9rEce/P0l3KgCXE+dWwzlf9uCks1CyTDROwe7RPD2zVX5qw7A/N3NTl/+MY7vDVLgQ239d4B0wCKTIibyT6C1G65VJAZwfQOkHeZnWc87rHgLU+PtrHdbxa548vJUGEXNoeDHSKB2mqEjH/zXfB1NdL0FDFIx0Rce+wDZv1V91F+5YorpFkm/8QxHLGDGHlcnLWb407c2SlXOus9u+mzyeR7n/BoNyQwmY2oBbfvUix1N9nLVlQpwIqW64Cr25YdCQ7YZVSqSoJ5hG+bN7Pg7K8NFz91NdMjHu7Of/+TJKVxYtGJ36Ruh93K2SXJUQkeorXWa3NorOuinRkDtX0efmTmL2U7/s0UMJCAUgI7vkvidPHJqsOUxEkjaVhZeA0V0qcvzA5L7fM/Mebhp+AF7985GExjK1PuUxWh7TkIdP+vP7wSTkDciLDe2CVxRJS92v87x1PHOXfzorKxpU8qVadCseI/KxW9LUHMy7I76+wjGr+/1p3MU2/C2N4ONthzzKEqEF2YAnOne3gvtq4j8i/JcouBvtk14V1O6t1bCOXfVC+XcEHXOuPElp453gwzoVngFT6NDyCW1+agLUYfNBdKFLFOa0zUIrszBlt7F0E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(39860400002)(396003)(346002)(376002)(451199015)(91956017)(41300700001)(8676002)(8936002)(64756008)(4326008)(66476007)(66556008)(66946007)(66446008)(5660300002)(6916009)(4001150100001)(2906002)(76116006)(316002)(6506007)(71200400001)(6486002)(6512007)(478600001)(26005)(186003)(86362001)(83380400001)(2616005)(82960400001)(38100700002)(38070700005)(36756003)(122000001)(4744005)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0N6T1J1eE1meFNQdmdoVWs4V1B1WjBma3RJRkkzWC83TUM0elBqWExoSm1t?=
 =?utf-8?B?Zlh3R2c4dzZJTlhEUTdpN0c0OEZQWlJkaDU3bnJsQkxFSkI3aHkxMmtXMHh1?=
 =?utf-8?B?S1kxamhmdkNRU1k1aHMvSm43a1NWV2Z4WFMwcWU0SXpiMlYxckFHMnBsaTZt?=
 =?utf-8?B?Qkl5SE83emJ4T3JKRHBmWU5EdVFUaXdkdXhORnVjeW5FYVBWSDFVS0d0ZXgy?=
 =?utf-8?B?OTNEeHBNemVnSHI2STVzUHloZmg3ODFKczd6RzdIZ0F2SlFrMWpiM1Vucndh?=
 =?utf-8?B?cXcxcmtrV1NEQWtiSzZSSGtrQWRmNTlsejMyRExpaDFrMGRCd1NrbWhXWDA5?=
 =?utf-8?B?cDdlZXQxMmozMXBkVTZmZEhuM0VidDg5M2t4Y2x2eFZ3MFl0Qm1kb2dzbjFW?=
 =?utf-8?B?eTJjRC80YmpYeGhCMnFLbXRaR1l4K0YxeXc5TUNVY25tMHlFUDZmcmd1SkMx?=
 =?utf-8?B?aHlzeS9oZjFUcXFkcmpjeCtVcnpKUWJ4RlRTenYwT1NtV1Z5N0VMSUtKZ3Rk?=
 =?utf-8?B?bDlTUXBhcEVTQnpPaGFPck5LQ0FCRDY5NzZMTXNsNCswYVZWRlJFODBPTDZw?=
 =?utf-8?B?clVYTTArQ2FZWXZaNWVyWFV5MUt6VXBiZHc2QTZlTmlITmVLZlBHeFpZUGhB?=
 =?utf-8?B?M2tUMTFsM0UwbW44T2cxdG13cUpvbGVqY0NkZ1ZSaVBlQlZlRkwrZ042TWNJ?=
 =?utf-8?B?Tlh3NTc5NlVLaEhISm1RWEc2bXozY1hHdmNhRG1YNzA3VGIxejlQT283YTlZ?=
 =?utf-8?B?SWUwZG82WEM4aHVjWDFuTjh2S3hjQXpqL1NXbi9Jd2w0T1N0RCs2K0h3eUdu?=
 =?utf-8?B?Q2prS2VyYmF5azhTYVgvZ3FwbjhkMHArWjhNSTVJQm1pZ0pzVy9GcERMMUxM?=
 =?utf-8?B?NmRFb24yWDVFdHlNMmlOK1VLOGsrNHY5VXMwTjlOc1QyRXAyTnMrV1dEM1lL?=
 =?utf-8?B?cm94ZWliUVBXeWdKVExiOGRPNFoyekFxU2Q5eUoyN29ZR0tDWnEvbmVQVS90?=
 =?utf-8?B?WlA3U0l6enRQNkVIK3FCcmRadzhWMXpuT1ZmMGlvZ1J4RDVGYUpPemFtbFNx?=
 =?utf-8?B?WUg5TGFHSzJHamlOaDRkbVA4dzRBNXJaVmw3N1FoR3d2SG9jNlB4a1VTeXdv?=
 =?utf-8?B?ckxxMUlYUEF4VGM4T2FnUElOVGM3YlVYYjhzZFVmNHMrQjBFQXVvZ3cwdUFC?=
 =?utf-8?B?V1hGdExmb1ZUT0hoRXYvWjVJZ3cxNW1uT2pDME5TWHkxd0ZZSmNNSHhOV0hS?=
 =?utf-8?B?Y0UxZStLdUNVemJKU1QyWWdTWTl5SzFoQVY0MS91WWRCMytKWU0ybkdJUEFC?=
 =?utf-8?B?WWRTa0syZTdwUmZKNTc3cDJ4aFZsNjh3SnRzclVCRjdkTTF4dDdJR29rQk4x?=
 =?utf-8?B?RXFMV2Vjcng1L05qUEtnNUVxU21iRFk2T3FJSWxNeHAraE0yRHlESDFWSkpH?=
 =?utf-8?B?aUpSVGM2enZQL09wUWozejJGdTV0Q3A1bmdoMjFFT1hWdkt0czEyWDk3YmpJ?=
 =?utf-8?B?SCtkUXA3SUM1Y0ZPQk40ekJYV01VaU01WEZ1VHp4TUUxc2ZXL3RxRUJVaDZh?=
 =?utf-8?B?VS9KbnZOSFc4TTl6aVdSQkFSMGlZREFHWkxFMHI0SUtNVENPLy9lbTc1YTBk?=
 =?utf-8?B?T084UWFjaUxPUkNSZVpyb2dmTUxsQ3NSVC9BeGhkaGhnTEFkOXB3VlN3SERQ?=
 =?utf-8?B?WjhJV3JnTW1vWUFycjdaTDA4THp1dTlsVk9uMlV3WURaRmhpTEFOdmxycTNZ?=
 =?utf-8?B?L2d0c3ZBVTNiNmJwb0EzV3dtaENENjdtWXZJMk9IWHY2b3hnTHQ1QnE0NjRW?=
 =?utf-8?B?S1ptanFReHVoYUZ5WTlpcFhwTlQxWjlmN1l6OFBMT3RCVC83b1pmUkhlOTZU?=
 =?utf-8?B?NjBOSk1HWWhNb25jbm1hMGd0ZnFMTlprWG5Cb05lLzV2S0p4bk1rMzlZeTAy?=
 =?utf-8?B?N2c0OE5ndVV0N294UjNWVWt3dmR5NmFwMTF0SXZOaEpBNjd3MVBpaGM2OEp4?=
 =?utf-8?B?NTBlRjJOYUFmNXRXL0ZuVTVyMUZDZDN1S2dRRzUrTGR4aE0wQlovTld0bzZ2?=
 =?utf-8?B?K1pRWHVWTGVwUHdZVGZvZm45UnlueWR5K0tnaG9JeTZkS2plWUtlYTgzVTc1?=
 =?utf-8?B?RGpYNXN5R3N5T2FvdGhpU1J0YnpaSFpPRHNtVWcyM1V6Ync3ZitLb013QytD?=
 =?utf-8?B?MkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E1F24E89449D3542979FFF4711A3B4D0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a0f7c7-5d28-4101-57ec-08daecaa862d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2023 10:17:16.5591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lNegQ72iONHT49anWT8IIfmkpFemSZq/NjSO6IaqgamYnaM4urYzNhgyP/UJtWOSPmD4BA6UOgAaqy42ClZqJHgI3NnrY+pPJpaQsWVVePo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5335
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 0/2] drm/i915/mtl: handle some MTL scaler
 limitations
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

T24gRnJpLCAyMDIyLTEyLTIzIGF0IDE1OjA1ICswMjAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
SGksDQo+IA0KPiBIZXJlJ3MgYW4gdXBkYXRlZCB2ZXJzaW9uIG9mIHRoZSBwYXRjaGVzIGFmdGVy
IFZpbGxlJ3MgbGFzdCBjb21tZW50cy4NCj4gVGhlIHZlcnNpb25pbmcgaGlzdG9yeSBpcyBpbiB0
aGUgcGF0Y2hlcyB0aGVtc2VsdmVzLg0KPiANCj4gUGxlYXNlIHJldmlldy4NCj4gDQo+IENoZWVy
cywNCj4gTHVjYS4NCj4gDQo+IA0KPiBBbmltZXNoIE1hbm5hICgxKToNCj4gICBkcm0vaTkxNS9t
dGw6IHVwZGF0ZSBzY2FsZXIgc291cmNlIGFuZCBkZXN0aW5hdGlvbiBsaW1pdHMgZm9yIE1UTA0K
PiANCj4gTHVjYSBDb2VsaG8gKDEpOg0KPiAgIGRybS9pOTE1L210bDogbGltaXQgc2Vjb25kIHNj
YWxlciB2ZXJ0aWNhbCBzY2FsaW5nIGluIHZlciA+PSAxNA0KPiANCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgfCA4NSArKysrKysrKysrKysrKysrKystLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3NjYWxlci5jICAgfCA0MCArKysr
KysrKy0tDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwNyBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlv
bnMoLSkNCj4gDQoNCkhpIFZpbGxlLA0KDQpDYW4geW91IHBsZWFzZSByZXZpZXcgdGhpcyBuZXcg
cmV2aXNpb24gb2YgbXkgcGF0Y2hzZXQ/IEZvciBzb21lIHJlYXNvbg0KSSBmb3Jnb3QgdG8gQ0Mg
eW91IG9uIHRoaXMgb25lLiDwn5ieDQoNClRoYW5rcyENCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
