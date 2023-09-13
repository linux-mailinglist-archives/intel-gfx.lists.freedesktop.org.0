Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F5279F0EC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 20:11:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF9C10E4DD;
	Wed, 13 Sep 2023 18:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36CC88668
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 18:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694628712; x=1726164712;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ileseK8XkJCu6kr7DB/eL+sE9nHSSr+Wvi0slD+Bw00=;
 b=ZzJuZfYc3jrLag/tc9fjYzEoFhDGuyO5nOUIy6bWZi9cd6+ByZrr3QqF
 QkyGyultjsCS3luTkRqAjAvVaeEaQo+u9z2pN2Zpsu2Z1b5PXTyVm6bZt
 wPKTe5i3zlsZfbQa/TiIJvpLlcHnaylzDMLJKDIuATq4FVSIO2Mfb0lrY
 shDM2Xd6W2vwwxrhUFWnwIsTxuPDOC1reiIxhlgZqmXK9RSYt6/fZfbi4
 hC23LFMc4j2zpzn2U2LD5mtJbDG32vwFXRp+Qbwuw4vdz3SFbBOFCsIuL
 LVufDKfKocmouOQc7Quz8YWb9L893ICT15An0yhJmkoJiESF7DLfT1f3r Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="376078124"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="376078124"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 11:09:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="720899754"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="720899754"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 11:09:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 11:09:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 11:09:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 11:09:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RmsPWeFEPsauBYAU36SqUCn3jMPYs7T401RQoFHaoJZmbUwmWv+Ye4OtoolLG8c/c8J7ft1e6dvUcHrbIhtPob9mqnFwIHCCdRV0+0tfRJDqO4cf4/nonYxrlZc5TEvbXlzqYbIJn4zR9ERrB/AGMbHDGFNw3/Vw+bA0cdzHFwvmyrRlu4B9pdlJtWXU2xBye/N2rbQebVmnLCte6Jb4E4bXqjtDa5wVfJ1RSmZjaztN9iCV2gEvnIcFmtiThiwILJ3fbPGqrul6Mz90Fkcw2zQyPgRbIJtRihWQHaEXM0w7WVidZcgeAamHWcwlLIWiseUGERtYUFhxPm/OwCkmVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ileseK8XkJCu6kr7DB/eL+sE9nHSSr+Wvi0slD+Bw00=;
 b=d90LnW5dqkYG/qQu3V8YeJ3WukvieW27j9LhUaRBRBHQ55krrONTEINJ2bH0dQOEJQ+QhfOpi1mt4E6gjzdS/Xw6mEhapB3l54qJtnYxRCckTyW+ASSrY0U83pUw9Je9Zyqokw+gOMjww73JbfNWAa4XJPJL1F9MPo8FLhEntDMeVMOGqWD3wUFbwlGeOXFr3D3Bexf0g1Oqe2kl07E3NACzYQElk/psKjjM1X3Wt8eNs64NA7peDxSF67r51Y/zawPxZOOmXVPpXzerx5PhxfOkN7Wv0rWJ2UFalJ4EqH7WW5LzDhaeBCn558OP2nIjkp+PncHVnHSN1xdyHoPHOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7736.namprd11.prod.outlook.com (2603:10b6:8:f1::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Wed, 13 Sep 2023 18:09:45 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 18:09:45 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 18/19] drm/i915/dsb: Re-instate DSB for
 LUT updates
Thread-Index: AQHZmKtnGRUQFrOxX0GbjKBpW1b66LAZqX0w
Date: Wed, 13 Sep 2023 18:09:45 +0000
Message-ID: <DM4PR11MB63606E29BBD17E56F2FCD96DF4F0A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-19-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-19-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7736:EE_
x-ms-office365-filtering-correlation-id: 35880d4e-ac7e-467d-2b2c-08dbb4849c5b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 77QcWP8fkWcdepz8X/sJfLfdsfsxpOAgV/luVoVdhiwwq0za9NQZlHTyl8MYi60gmjuvTnTSs68R7vxrd3OEpyNdIfCED4ACEyLJCM9x38IBe8Am5PKw9UA/Sqfqe3pKr5K0X/Nuy5RkLpR+9fIKSOkTrOXwJ7XQScmXsKYmjCPr/cERQeFboreRr2HbSgU9m9NDXJM2u7Y6i4sgJbL+NztpOjJUGxnT2LcIHPbwljg2KRkGvOnxq1UIQLGOVhTcclce1IhU1NNQQ/S3aaFARfiVe66iELN1Xg+wcRBQNuWgvcuj7wES5q573FknBCYifLUmvfCL96y7kLyCoWRPTiDoYM0cu/RQSexqLznRCtXdj94T7wY3P1cNNJnxWksSM6uAqntzrBe244Kl0DlferLVFUGklO/44s1M9ndDBDzgyYBHsd4yF6N8gS5O+JoWqHk3Oen2mpfyadM1tvFcHmEcc1LI04c4rRlLcoBnozFOiNPCh3NxrKsu7ZqlfiGrhl9nCcK2CB87bW1DSj9Zov9/45BHxxJRYbZ3YWfdim+u7baKGPPm+ZRDv9rKHJJ4RkIIJWCLU770yDVQiCeSBXGzMjkg3a7cbU8JXKn67Im/Wvl6iYLE4pz+q1r9jllm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(346002)(39860400002)(136003)(1800799009)(451199024)(186009)(122000001)(7696005)(71200400001)(83380400001)(6506007)(53546011)(41300700001)(82960400001)(38070700005)(55016003)(38100700002)(86362001)(33656002)(26005)(66556008)(15650500001)(2906002)(9686003)(478600001)(316002)(52536014)(8676002)(110136005)(66946007)(5660300002)(64756008)(76116006)(66476007)(8936002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1ZTNFZrNjM4Z2tYamhnN2hKTEJBKzJjYjJUTStNckhNVHFYemJXb0krOFYx?=
 =?utf-8?B?ekRkbEhYTXY5U2pzUVRFUWpmR1paa3JZRURzcTlTMEhHbzZSSWFlRU8xMzFT?=
 =?utf-8?B?c0dVVGYrdkdFUjZGaTlhemNGWEpUelJxdjNTZU9GTlNRelZLVlYyVnByTjdM?=
 =?utf-8?B?Y2dwem14cGtGTmZ6Qk1MMGkycGtTRkVlUnF3S2RZOVRmc0ROREFHbm50Ky9J?=
 =?utf-8?B?RHM5VWdudU5LUXl1YTdBd1liNHFLV2FLYW4vTm5FNUhDU1RMTXdhdFhNWk5M?=
 =?utf-8?B?YnN4UWFsS2JjN21jOVZNQm1LVGcxbkJEK20rYVdFRXEzM0ljeHhkRlgxM1pk?=
 =?utf-8?B?WkhLTWpPaGdyTkVBS1NFZ1RhZDN4MjFZem1KbzFUeFBRUHM1ZEpGTHlTWUNH?=
 =?utf-8?B?QkRENzl0eXpBSkZ0UzBsek1YaVh6U0VIeWp6ZWtQMWtmL1dMRFJlZTdpRVlt?=
 =?utf-8?B?MnU2aGRlYkNoei9pRGJFamNZVFhoRmRxY29zaTVJanZGeEptdFBMS2lIa2R2?=
 =?utf-8?B?OXk2dXFMOE5FR2kweWdjeUF1NDF0aFV3blZUTVFMd0FFM2c5cy9qeWxVbGxN?=
 =?utf-8?B?YStTeUV2UEwwYUgybktvUHNkK2c3WVFNOUtqbi9JQUVBOWRxL1RpdHpEZjRx?=
 =?utf-8?B?YzE5Wld2TTFPNm9LalVjLzE2bWFKUHU2TDJDY1lBcTVSbDhYWmxkeENjL0ZH?=
 =?utf-8?B?RDBaOFpDeENQSUF3RUlYWndSOFV6eHlzVHFQQ2ZXSEtUV3I3cy9jWU55eEZn?=
 =?utf-8?B?NEZFeWREaGJaemQ3NDdFdUs5dnhXRXN4M3VoYVhiU1d5MmhlQWJLQThiSHU1?=
 =?utf-8?B?VjNyU2Q1anl4Z3FuTVNuTGFFbkl2SzV6MXdPdDJ4R3J6dGU5ZDF6anBBSGlU?=
 =?utf-8?B?T1c5OEYwdnZnZjlLMmQxa1NXT2FUWmNrbXJzM2xibUNaaDI0ekQzMi9QTExS?=
 =?utf-8?B?aEsxdXg1ZzRpb0ZkUW10eEx5QjM2R0VhTWtaaUpUaW0wSTZVYUQ3b2txR3Vt?=
 =?utf-8?B?YmJNLy93RHBrRVFTdmN4eXB0NXdqYnpXV1FoWDRDZmlNQkh1ZWs4OE1rRDFm?=
 =?utf-8?B?UFhiNmQwdkpVRHRtT21SYkpsNW92MU5aem4wRkJncVVXTDFvYXl5V2dPQkMx?=
 =?utf-8?B?djNBRmpVaFlmNXlzdkdwNTE2a0tLcUtDcHZtYjlUY1YvdG5IcGVhTlNWWUtm?=
 =?utf-8?B?RXhuVDMwWHN6UHF5Qk4rVDBOTjRQT0ZUTGZpSXRkaHRiK3Jtdm55bUxoUndj?=
 =?utf-8?B?VWlqc2JnVlFsd1ZKellQS2hOUURxZDBWanhuYzFCRm9XdWo2NnpHL200UWwx?=
 =?utf-8?B?OUdIWS91RWZDUmJTKzZzUnlPZkQrQzJsUUx5WUwvUHhXbW1UZGlURVdaNDZu?=
 =?utf-8?B?VU50blBuTHlaKzNDSmk3dlFvNUhydzFSRllNUDJ0NWl5dERnSGJ4TTBYOUNu?=
 =?utf-8?B?alp2WS9aWEcwT1hESzVJM3pIamF4anVtUXhuRTVmQkhjd0FhS3FWNmVsZ1BX?=
 =?utf-8?B?ME5Fb3JmWVlhOUMwbkVxNjQwUXJSL3A4NXM3QWNZOFdyRHFyWk82OEdSK3dt?=
 =?utf-8?B?THZtK1lRWlJ4TlR2VmdnZkkxTVhYRjZIanZQMmN3dFhXRXFSOXE0S2IzL1Zp?=
 =?utf-8?B?cVBXdW1DcTRXcUJON3ZIZVhWMGJ3aDJaK2pPQVpXOVVGWUVEQTh4VnlyVGpQ?=
 =?utf-8?B?aFM5N1B3dE9DUW5zZ0ZPanQxb1NNbGtBQVBZL3p5MXlMTnExZktVN2s1bThC?=
 =?utf-8?B?RTgyOG9hMk1VZnZtSC84R0I5aXEzODJJczBzeFcvUGtma3NTWEtLcGU4eU1M?=
 =?utf-8?B?VzA4d3g3VEhEU3ZzcFM2L3crL1FGVXhvazA5bTdVTzlTOFUxT293YzdjRXNh?=
 =?utf-8?B?a0ZzQThBdUZINnV0VENNOTQvbE13MU80bHQrekROTllGelYzdW9RdmppMU5m?=
 =?utf-8?B?dEljRXRxVjZ1R2E4M1dNWlJjK0V4VHlFRFFra05XbE1oMnZ1N2Y3Ny8yQjJz?=
 =?utf-8?B?TWN4aGx5eGZCQ2xiREVrZXdaTjNhVFJycFlVaVBQMW9XRElJaDdmU1ZjMDJW?=
 =?utf-8?B?R3BVbkMyN3FpQ0NBQlczcnMwbkRkVXVwOVIrc2hxTCt4VXFuR3o1bDA5bmFP?=
 =?utf-8?Q?sKb1i32o6H/mVr2GnTpJYvLjX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35880d4e-ac7e-467d-2b2c-08dbb4849c5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 18:09:45.4352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aD0qbAqx5UMT+tXIIEbVFhDc78TRd5l+SjOHmGhMTyndCRyZyYJip9DQOHaKlrTJrSEnoIBPUsS6J9GFvdC9uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7736
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 18/19] drm/i915/dsb: Re-instate DSB for
 LUT updates
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAxOC8xOV0gZHJtL2k5MTUvZHNiOiBSZS1pbnN0YXRlIERTQiBmb3IgTFVUDQo+
IHVwZGF0ZXMNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBXaXRoIGFsbCB0aGUga25vd24gaXNzdWVzIHNvcnRlZCBvdXQg
d2UgY2FuIHN0YXJ0IHRvIHVzZSBEU0IgdG8gbG9hZCB0aGUgTFVUcy4NCg0KUmV2aWV3ZWQtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAzIC0tLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IGM1YTllYTUzYTcxOC4uMjEzMDYz
ODcyZjI2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jDQo+IEBAIC0xODE0LDkgKzE4MTQsNiBAQCB2b2lkIGludGVsX2NvbG9yX3ByZXBhcmVfY29t
bWl0KHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0K
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7DQo+IA0KPiAtCS8qIEZJWE1FIERTQiBoYXMgaXNzdWVzIGxvYWRpbmcgTFVUcywgZGlzYWJs
ZSBpdCBmb3Igbm93ICovDQo+IC0JcmV0dXJuOw0KPiAtDQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5o
dy5hY3RpdmUgfHwNCj4gIAkgICAgaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUp
KQ0KPiAgCQlyZXR1cm47DQo+IC0tDQo+IDIuMzkuMw0KDQo=
