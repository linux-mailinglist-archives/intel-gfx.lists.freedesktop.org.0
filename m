Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 653F862E94C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 00:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7A7910E6BF;
	Thu, 17 Nov 2022 23:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7BD10E6BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 23:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668726251; x=1700262251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fDS1+emKGqnPhEACtd549YPXa09lc/910sWquXrCemY=;
 b=nqUih0tPZSNhLwlggHAAcyBZF5PEcSSdgaYdYH3nSOWmH08gnxvSUrcZ
 QFaQ0GFrrSsRrb2PmEOf3po/gBPQINHEf3XCX8BxzPUQ31b79W0xCisrD
 gnp/2cU30+dzv0XjTvZJCXj7Vi4u17ZiQrt8t8tNWoCUWwdEG7gP4mCgO
 sVBGyhmwM6YkzFhYH+F5kb0ru+u4sEjZcNN+G5RpXIcolHMIs5EHCxp/t
 sN67MRq6dl/4nBpCqDE+BzQG73WQXbCFIUal3fMcEcPlkinJ718KwarTZ
 rhtmQeFM0/qJBsgs2AHGO68J5tNQnhY+jve3PsGrLNFg+JHg7VKdgtBhA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="292701519"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="292701519"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 15:04:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="745743228"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="745743228"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2022 15:04:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 15:04:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 15:04:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 15:04:10 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 15:04:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QmQeUxiM2gjwirH/LLr3Xzas/mbnlZMPLW7c1JJNaqGFfNQTiFKLMwKajcQ/dnBscBD+BQ/Uc3uZt/rjb1e8JSr95BlutrpGkldpu1AXFbnKSY32uEJDTjvQ8nkDOkJKQwhQkGbJhV4SZk1eulPE4V7zffIz7ctI2vc9JnPgrcGhPbwPGUWszp4/7RrQvwrbOxGDWj9aV4pc2pCA0b4tQcvJzXXMXlf1/2euyw2sXN7G6JTlbJx/pfb2qY2tU5KFlcTzOqtXyJf+gZ7YU6rM7ftE/cmHyQ0F0ZRWDrpQ7YR8/oFdJHWoE/2iuzosFR8OfJFwND9lTv53juZuT9Oi6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDS1+emKGqnPhEACtd549YPXa09lc/910sWquXrCemY=;
 b=j0Ao1lZeVVuNfKbBCSTEXGfBiEBteUvXARGQBsEDApBrTZF2mTIiBHqRWSpAWCIH8wOg2hasZfjUG9uDgvWpnAsoGF2EN/oWdDJSsCzYr+MptBXh+ljysWz3Sy7ij4zAi9PGPEp0oKDRE9dI2Atv0SUFI1yPIwP2ybimuSA90qX8Wrf+y7MhWb3OMSCs+7uyBruzuXxvghcOclxaKPtzkZa+9oHN2CngKLsncIjFjXYF4y82Lo42HpJvu6oYRjlxBStQXuHZOiD+QvpnCsbTj9bgpIzuRnM1QuZW8mWFZABjou7PfCy2cE9S+Ny9flM3/6r0Qmvny1o0+V9WzLA6Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BN0PR11MB5710.namprd11.prod.outlook.com (2603:10b6:408:14a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 23:04:08 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 23:04:08 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
Thread-Index: AQHY+huIx9La/ySYfkqX4YmGIxfCfa5DSDkAgAB2CwA=
Date: Thu, 17 Nov 2022 23:04:08 +0000
Message-ID: <bb14f688b7c8b5738440fc11490cffba0adf1016.camel@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-3-alan.previn.teres.alexis@intel.com>
 <Y3Zbdo5M/ghLb+7n@intel.com>
In-Reply-To: <Y3Zbdo5M/ghLb+7n@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BN0PR11MB5710:EE_
x-ms-office365-filtering-correlation-id: 4daa862b-4ed0-4f55-4065-08dac8f00841
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QwYuv7NIKZUcvD98sUVPdHwwAJA5udamDTqg/d5oE18yj/cPVuZmZzuFfQouVtCwklji138oCome6Alt10qPDfKjNsZqxvNIn/8j3JQnyZws0dluns70C2vpwiXOqiR3qc9oPWJmxk6Ygs3eGN9+7Axk/yqqyoof0xUpU6qVi2Q3wMwKEoskdr+d+x/EZywiwIBdqSd3+81jww4eurneoKx4ZRGuPx96oDQwkYyvxhohThJ9aibionZXiriA00pWLcGYo5Ba89hrRi2Y7ltEyHGxO6Atd9QWi+qGIHSoyqtv/VpySrg9kG9SOm5mnuDSOCCxky57ahvcoffkk1VOfKvRgXiums4P2VzlmyuXkZT2KF2zNt9mx4sMcqnhNH6E1HZQxnXUNg9rPxPwTVBo1EE0SOjNts86N1J8uYmQDtCJiCXcWX1KtUQ8CtEgZqq0oIl52b6/5mBSyTALiwERdy7Hna7LRDB6Vy1vz5njT9dSGWPDY+tAqeFiFcbr/cr9DTFQ6o6YFuGXg2fL3FdgjK7mVwcZR4u7qcE5dUxbtLuhBFWZAu8leXqtusULZoc/hUKcosUVuvehxAtgtdjs0zyQwKLOoIMnYqdeQIXnbAatlYnQBnza3gKPJ0kroq6tLBNxi37Fufe35q/M3D8vv+PGjNoy2OFx6zR5iS9exNCkQV6g9GDih1C/On2HgUJgzQzsQrS09yTC6zTiTfxU+w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(346002)(39860400002)(376002)(366004)(396003)(451199015)(76116006)(86362001)(36756003)(186003)(41300700001)(2616005)(66946007)(64756008)(66476007)(91956017)(66556008)(8676002)(66446008)(4326008)(5660300002)(8936002)(71200400001)(478600001)(6486002)(316002)(6862004)(6512007)(6506007)(122000001)(37006003)(6636002)(82960400001)(38070700005)(26005)(38100700002)(2906002)(4001150100001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlNDdks0bzFuVG5aeUVIUjRlUVRhMk80T0NlcTROUVBmYWNwSmVUdGE0YzFq?=
 =?utf-8?B?bWFPVlFYVjJ3VnRyRGZjS2UzOEdiZStsemNSenlmT3pEZm9TeldUWFZqRlp3?=
 =?utf-8?B?WHpxQVpNY3ArV1FuMXRyS3Z6Qi9FT0xuWUlRajJaa2FZam9RelJraFpCZmdn?=
 =?utf-8?B?Z0Mrbzd6VEpIYU9wODZXQW1XT2dIbGZLZE1iRXZ0OWZ2bXEwb1p6NDZrcTZj?=
 =?utf-8?B?cGxXZUt4U3FHZHRZSGlHQWdVMndjWXYzTkk2d1pTL1p6c3laZzJwNGlEeCtS?=
 =?utf-8?B?U2ZxSnJCdVNjNGtsSmFHUCsvV2JRTnBiaHpFWXFwUjJ3dnJFRUZTQ0l5bWxy?=
 =?utf-8?B?cmsvUDBDek9LcVJJOUxYYnF3RmtBcEJRUlQvdnNTWGsyZUhwQ2JnZFpGdGI4?=
 =?utf-8?B?dGNmMEtBR09LME9ZV1hXKzRWdk1PSUFMY0FxVHhQZCs0S0t5THNDdk56dlhq?=
 =?utf-8?B?cGhKbXY5cHJDanlmRWxXRjBDL21JTEtKSUVkOXRWak1xV2FNbFhLcVVGZUd6?=
 =?utf-8?B?M3hiMjkrMU1mNG1vTkMyMG1tV09sNVVZNkNHZnBYQVR6SG5sNnJwRmlIbFl3?=
 =?utf-8?B?N1hCTDdZR2N2aldwZmZ5Nk5QVkQ1RElsSHhiYURCUFg1M1BTK2xLRzRnMm5m?=
 =?utf-8?B?OUFuM1d6Qmw1VThaUFB6b1lSZEJ2bWJOYi94WXRGSCtwZUw2M00zcnZ5SnI5?=
 =?utf-8?B?N1NsbkkyUmdzVjVoTE5VMDdYaTNRWlJpb2dzWmhTeGk1cnhvRlRoUmRLVHBx?=
 =?utf-8?B?QktqM0lWTlF4b3pJTkhtcnJ6YXZmcm1ZRFJ5WS9VOUNnU2dPWGpuaG1FNDJZ?=
 =?utf-8?B?SlEwZjhQOUNud055alVoU0FieW96SlVDRk03ZGI1bUVmVjNGTXBIcFBlYmVJ?=
 =?utf-8?B?THMwQWxDREliS2wwekNmaEJlZnNaVC9FNEVvdDVNSjkvbFZFUWJzS3Z1WWxs?=
 =?utf-8?B?ZVRlOFRMOWVWNGsxamYzaHE0V01zVDNVSytvQ2hWSjc0U21sVVdtaDZEeUcx?=
 =?utf-8?B?WWM0WnpnVW5SRnRCSG0vOGMwcWh5Q0l5dGNNbmoweGRUVlFMOGFENW5NTmRB?=
 =?utf-8?B?Y0c4Wllnai9wcFFaMHp3c3VMbHVIVklMQmRENVZQVmp1V2dBQ3VrTlhIQ2tF?=
 =?utf-8?B?UStVNFFWZlRHSFRlcUF2SzB1aDEycmdHQWRzMHRrcy9LSXpqcm5zSzN5UjNO?=
 =?utf-8?B?OVM2bGhQbVplODlTejVhUVRnQUhGTk9acHBraGs0Z2dsb2d1eUhCbVlhay94?=
 =?utf-8?B?TGxUa2gwcjJmWHVUQ3J6ZWtHNGNDZ0h2WnFEUjRzeEc5bDlpU0lZYXBRVHFw?=
 =?utf-8?B?ZHZOREhaRmpUSGZ6NmRqRnFHaXdQSHRrL3JaS3JTSTRRUFZ6Y291bjJ6UHlR?=
 =?utf-8?B?TVRpZzJvTUtTMkV0aVpSTDlvTnVVTUlTcWt1c1lFRTB4MEdQUEV4aDdkMXlJ?=
 =?utf-8?B?ZkY2TVh6SGlNa1dzd0YrUmxHRWNrL2pCQzg2TTFmcThDRzRjUnpKRTlyYUkv?=
 =?utf-8?B?TTJJSVlWMEdGZHpEUktZTE1uZ0l3TUVINmYrUnNmQldkOVd4dTNXSHpoYjlt?=
 =?utf-8?B?NUYydGZRUVU2Q00rNk4ybDAyS2pSNGdnaklxVGw3cWd6RGJMMnQ3UFpCYTYy?=
 =?utf-8?B?Vmd1bTFqd2FNdC94MXkwNHR5VThidDZNdEt3MmdUUGxhd2NGOFVKY3pra3hN?=
 =?utf-8?B?VGliTmd2c3ZmWEQ5OHloRDVMNzlOUDhYN21hQnNpU1RRcmNJamtxbFQ0ZmtB?=
 =?utf-8?B?ZmJ3TXZUU3hsa2cxcjR2ZnhEM1NlVGl3S24rVTZIQmxFUWxrM2ZheE1xeXlY?=
 =?utf-8?B?THZhSEIyYzlpVjBvNWo3OTNKK28vT0lhajJPRWxLTFpIOU5neWh5UzFCUDZS?=
 =?utf-8?B?bmJHK0l1VGdUeG1xMkd4UThIbSs3UFZpa2lDaDlDSGdkZmpXTndIVEg0WHdD?=
 =?utf-8?B?STBCV1NuamhPek9zMVlYZkJiS2ptU3h2aG84VGQ5YWd0U0YvaWJoZE5kTjhi?=
 =?utf-8?B?SVhNV2llRXhDWlU3TWkrbms3K2hYc1dKZnloZ1pJNXBZMHNhWGIzS21HVGxC?=
 =?utf-8?B?S2U5UEdsakxBWXRJUG1FandVS0ovdTVEQ0JLaHRzN2RoZ0ZIT3llZzRoKzNI?=
 =?utf-8?B?WSt0ZEQySHpCcUdDbjcvMXI5Z3F3K3Z1elQ3TldJRnVQZ09RZVVWL3B1ZzMz?=
 =?utf-8?Q?UUnfVvG9oPpdiz11FpOvmHE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B837CD99C1107840AC69EA47FDB98534@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4daa862b-4ed0-4f55-4065-08dac8f00841
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 23:04:08.2234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6hmZrrOSpGaWlg9ipP2DEKOnNTN1/8RnpgBv3KFwC++Qr/oHBRnPx0AA3lS1gvGIW/a1po/GjNTZgMka9zI4Lc/GmgKhFjYRkwJJhq1s1RoqnqBgPB1PguXe9c/ioNdT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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

DQoNCk9uIFRodSwgMjAyMi0xMS0xNyBhdCAxMTowNCAtMDUwMCwgVml2aSwgUm9kcmlnbyB3cm90
ZToNCj4gT24gV2VkLCBOb3YgMTYsIDIwMjIgYXQgMDQ6MzA6MTRQTSAtMDgwMCwgQWxhbiBQcmV2
aW4gd3JvdGU6DQo+ID4gTWFrZSBpbnRlbF9weHBfaXNfZW5hYmxlZCBhIGdsb2JhbCBjaGVjayBh
bmQgaW1wbGljaXRseSBmaW5kIHRoZQ0KPiA+IFBYUC1vd25pbmctR1QuDQo+ID4gDQo+ID4gUFhQ
IGZlYXR1cmUgc3VwcG9ydCBpcyBhIGRldmljZS1jb25maWcgZmxhZy4gSW4gcHJlcGFyYXRpb24g
Zm9yIE1UTA0KPiA+IFBYUCBjb250cm9sLWNvbnRleHQgc2hhbGwgcmVzaWRlIG9uIG9mIHRoZSB0
d28gR1Qncy4gVGhhdCBzYWlkLA0KPiA+IHVwZGF0ZSBpbnRlbF9weHBfaXNfZW5hYmxlZCB0byB0
YWtlIGluIGk5MTUgYXMgaXRzIGlucHV0IGFuZCBpbnRlcm5hbGx5DQo+ID4gZmluZCB0aGUgcmln
aHQgZ3QgdG8gY2hlY2sgaWYgUFhQIGlzIGVuYWJsZWQgc28gaXRzIHRyYW5zcGFyZW50IHRvDQo+
ID4gY2FsbGVycyBvZiB0aGlzIGZ1bmN0aW9ucy4NCj4gPiANCj4gPiBIb3dldmVyIHdlIGFsc28g
bmVlZCB0byBleHBvc2UgdGhlIHBlci1ndCB2YXJpYXRpb24gb2YgdGhpcyBpbnRlcm5hbA0KPiA+
IHB4cCBmaWxlcyB0byB1c2UgKGxpa2Ugd2hhdCBpbnRlbF9weHBfZW5hYmxlZCB3YXMgcHJpb3Ip
IHNvIGFsc28gZXhwb3NlDQo+ID4gYSBuZXcgaW50ZWxfZ3RweHBfaXNfZW5hYmxlZCBmdW5jdGlv
biBmb3IgcmVwbGFjZW1lbnQuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogQWxhbiBQcmV2aW4g
PGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgIHwgIDIgKy0NCj4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jICAgfCAgMiArLQ0KPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxfcHhwLmMgICAgICAgICB8IDI4ICsrKysrKysr
KysrKysrKysrKy0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHAuaCAg
ICAgICAgIHwgIDQgKystDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRlbF9weHBf
Y21kLmMgICAgIHwgIDIgKy0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvcHhwL2ludGVsX3B4
cF9kZWJ1Z2ZzLmMgfCAgMiArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9weHAvaW50ZWxf
cHhwX2lycS5jICAgICB8ICAyICstDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4cC9pbnRl
bF9weHBfcG0uYyAgICAgIHwgIDggKysrLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3B4
cC9pbnRlbF9weHBfdGVlLmMgICAgIHwgIDQgKy0tDQo+ID4gIDkgZmlsZXMgY2hhbmdlZCwgNDAg
aW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jDQo+ID4gaW5kZXggN2YyODMxZWZjNzk4Li5j
MTIzZjQ4NDdiMTkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMNCj4gPiBAQCAtMjU3LDcgKzI1Nyw3IEBAIHN0YXRpYyBpbnQgcHJvdG9f
Y29udGV4dF9zZXRfcHJvdGVjdGVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+
ICANCj4gPiAgCWlmICghcHJvdGVjdGVkKSB7DQo+ID4gIAkJcGMtPnVzZXNfcHJvdGVjdGVkX2Nv
bnRlbnQgPSBmYWxzZTsNCj4gPiAtCX0gZWxzZSBpZiAoIWludGVsX3B4cF9pc19lbmFibGVkKCZ0
b19ndChpOTE1KS0+cHhwKSkgew0KPiA+ICsJfSBlbHNlIGlmICghaW50ZWxfcHhwX2lzX2VuYWJs
ZWQoaTkxNSkpIHsNCj4gDQo+IGlmIHdlIGFyZSBhc2tpbmcgYWJvdXQgcHhwIHdlIHNob3VsZCBw
YXNzIHB4cCwgbm90IGk5MTUuLi4NCj4gDQo+IA0KVGhlIGZ1bmN0aW9uIGlzIGJlaW5nIGNhbGxl
ZCBieSBnZW0tZXhlYyAvIGdlbS1jb250ZXh0IC8gZ2VtLWNyZWF0ZSBhYm91dCB0aGUgYXZhaWxp
YmlsaXR5IG9mIHRoaXMgZmVhdHVyZSBnbG9iYWxseS4NCkkgaGFkIHByZXZpb3VzbHkgZGlzY3Vz
c2VkIHRoaXMgd2l0aCBEYW5pZWxlIHdpdGggdGhlIGdvYWwgdG8gaGF2ZSAyIHZlcnNpb25zIChv
bmUgYSB3cmFwcGVyIG92ZXIgdGhlIG90aGVyKSB3aGVyZSB1IGNhbg0KcXVlcnkgImlzIHRoZSBw
eHAgZmVhdHVyZSBhdmFpbGFibGUgb24gdGhpcyBodz8iIHZzICJkb2VzIHRoaXMgZ3QgaGF2ZSB0
aGUgZW5hYmxlZCBweHAgY29udHJvbHMiPyB3aGVyZSB0aGUgbGF0dGVyIGlzDQptb3JlIGZvciBp
bnRlcm5hbCBQWFAgdXNhZ2Ugd2hpbGUgdGhlIGZvcm1lciBpcyBmb3IgZXh0ZXJuYWwgKGdlbS1l
eGVjLCBnZW0tY29udGV4dCwgZXRjKS4gU28gdGhlIG5hbWluZyBhYm92ZSB3YXMNCmRlY2lkZWQg
YnkgRGFuaWVsZS4gT3IgcGVyaGFwcyB0aGlzIG1pZ2h0IHdvcmsgYmV0dGVyPw0KDQpBbm90aGVy
IGRpcmVjdGlvbiBpcyB0byBoYXZlIHRoZSBleHRlcm5hbCBjYWxsZXJzIG5vdCBjaGFuZ2UgYXQg
YWxsIChzbyBnZW0tZXhlYyB3b3VsZCBjb250aW51ZSBjYWxsIHdpdGggZWl0aGVyIHRoZQ0KcmVu
ZGVyLWd0LXB4cCBvciB0aGUgbWVkaWEtZ3QtcHhwIGFuZCBoYXZlIHRoZSBpbnRlcm5hbCBzdWJz
eXN0ZW0gc29ydCBvdXQgd2hpY2ggaXMgdGhlIGNvcnJlY3Qgc3Vic3lzdGVtLiBJbnRlcm5hbGx5
IGluDQpvdXIgZGlzcGxheSBjb2RlLCB3aGVuIHdlIGhhdmUgc2hhcmVkIGZ1bmN0aW9ucyBsaWtl
IGNsb2NrcywgYnVmZmVycyBhbmQgc3VjaCB3aGVyZSBpJ3ZlIHNlZW4gY29kZSB0aGF0IHRha2Vz
IGluIHRoZQ0KY2FsbGVyJ3MgY3J0YyB0aGUgdG9wIGxldmVsIGFuZCB0aGVuIGludGVybmFsbHkg
cGFyc2UgYWNyb3NzIGFsbCBjcnRjcyB0byB0YWtlIHRoZSBwcm9wZXIgZ2xvYmFsIGFjdGlvbnMg
KHdoZXJlDQpzb21ldGltZXMgdGhlIGNvbnRyb2wgdW5pdCBtaWdodCByZXNpZGUgb24gb25seSAx
IGNydGMpLiBBY3R1YWxseSwgdGhpcyB3YXMgd2hlcmUgcmV2MSB3YXMgb3JpZ2luYWxseSBoZWFk
aW5nIGJ1dA0KRGFuaWVsZSBzYWlkIHRoYXQgd2FzIGNvbnZvbHV0ZWQgKHRoZSBpbnRlcm5hbCBy
ZXJvdXRpbmcgZnJvbSBjYWxsZXJzIGd0LXB4cCB0byB0aGUgY29ycmVjdCBndC1weHApLg0KDQpS
ZXNwZWN0ZnVsbHkgYW5kIGh1bWJseSwgaSB3b3VsZCBsaWtlIHRvIHJlcXVlc3Qgd2hlcmUgaXMg
dGhlIGNvZGluZyBndWlkZWxpbmUgZm9yIGZ1bmN0aW9uIG5hbWluZyB3aGVuIHUgaGF2ZSAybmQg
bGV2ZWwNCnN1YnN5c3RlbSBJUHMgb3duaW5nIGNvbnRyb2wgb3ZlciBnbG9iYWwgaHcgZmVhdHVy
ZXMgc28gdGhhdCB3ZSBkb250IG5lZWQgdG8gaGF2ZSB0aGlzIGJhY2sgYW5kIGZvcnRoIG9mIGNv
bmZsaWN0aW5nDQpkaXJlY3Rpb24gZnJvbSBkaWZmZXJlbnQgcmV2aWV3ZXJzIGVzcGVjaWFsbHkg
c28gbG9uZyBhZnRlciBpbml0aWFsIHJldmlld3MgaGF2ZSBzdGFydGVkLiAoaW50ZXJuYWxseSBy
ZXdvcmtpbmcgZnV0dXJlDQpNVEwgUFhQIHNlcmllcyBlbmQgdXAgZ2V0dGluZyBpbXBhY3RlZCBo
ZXJlKS4NCg0KLi4uYWxhbg0KDQo=
