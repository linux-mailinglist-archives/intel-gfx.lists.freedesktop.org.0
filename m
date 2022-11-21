Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 805D9632F35
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 22:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07C910E0CE;
	Mon, 21 Nov 2022 21:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BE810E0CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 21:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669067179; x=1700603179;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=huFgdP8+MAXFjckwQzt9Kz2sZxD8AXsxhHB7o03aBeM=;
 b=O82IKXXdEetmuMzIZ+/SpZkcV07wuO13DybnQOOulNOK5cPEJeOi6z+Z
 NsFp2Kz/clKciiT+QAegYO2xS+Q+/PJN1lPY3KMPOMRfzrk+HvMixWXZs
 g9WCSSHMl6g8OcOBimiF+jOOV6t2/+LGzyj2zJWQA/XSpiQGYYJwUrqNf
 LAtNJZDWt/+rQQSakhkaHqgVifaWJ3g2zbzmNchzltA3sOrJCTasf95ZI
 wkYCy80nPUGRrhPuvh67Z2nCTy+EepQao1NF6e7jeOOQ1BaWbN0x6HEyc
 V0x5YIcmRQFi52CsFIJ937YIJ4G7gmbCliMxtUJQoj+aGTPA76LukAld+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313698307"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="313698307"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 13:46:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="747077594"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="747077594"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 21 Nov 2022 13:46:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 13:46:17 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 13:46:17 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 13:46:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4x/y9No13ARFjSXUOXLgP8ZgdU1aX1z+47+yPXtvbxS5iBLvP+6H0wcWT03pItC/1FHJGcnb/is0c+oLGL7aQZLUZhUIdf+XQq1YEsgXzrnB1o62YE8bHjZR7wM5G7rp7Nn0H0RIN2oa7qAXjwELD1Y5d98Hhf7IhuFKrp+Dia0tv5zKlW8iSD76u1tNxVe0793g1fjiRTufiNtTHXZ6JduW0tNd9YK8ioFcasvbvhMPD2u25AJTBSQSu1+yHYkp1fA2cahHhDcpshMQIkB2m0AObZwYy5WgkqT6Cf55vere4j0M9yUtOrJpEsOYvRhazIwPJUnZ9EzUTaM52Geeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=huFgdP8+MAXFjckwQzt9Kz2sZxD8AXsxhHB7o03aBeM=;
 b=a+H75KV/RmMOw5jmyYPptBFDoT/A4YJ24LAeVhDfzTDeFTjSrwOloz5tiKg7h1HVCHw/0XX6BjmkkGIW/oGz3Al/fekZbTavfo5g3Og4c373mgfrqjOEm1ly4XGNhjBS46plprn4HHterF917HJwhcW2xLBpEePpqurGzI0lqAlxQk/YjwW/IdPThjk50KoN+MBTpejnSWvqaFP+myfm2xhBlikK1hwvImLVp68AxZ6km0tAkA97F88eAIfzxEVLphubbT657PZ3F4oPk8tfRPXYcKbWMqs0DSJcngomVOMbdBQNj4Koipb+Fdc1hzKep3Tb2z5objNkcul/NycSGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by SA2PR11MB5132.namprd11.prod.outlook.com (2603:10b6:806:11a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 21:46:10 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::7b12:fb54:4d52:fa3f]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::7b12:fb54:4d52:fa3f%7]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 21:46:10 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dmc: Update DG2 DMC version to v2.08
Thread-Index: AQHY/e7U1CHw370L00+jcaqf8XtkJK5J6XeA
Date: Mon, 21 Nov 2022 21:46:10 +0000
Message-ID: <6f01e6b22334daed446d92de8b61ae14f1c6458b.camel@intel.com>
References: <20221121211815.30950-1-gustavo.sousa@intel.com>
In-Reply-To: <20221121211815.30950-1-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1 (3.46.1-1.fc37) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5169:EE_|SA2PR11MB5132:EE_
x-ms-office365-filtering-correlation-id: 3d1cd438-c241-48bd-6267-08dacc09cda4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1bHHW/5CwG4sR0u4s1jImGQFolBBCBHGuH7DVOrj0vZP/UqymKxB6Gssc6bE0JVbOK4Zr8D1UZSVRHs1oqt6v7M6sVmvRF8crHu9ZsMcZBUEVgY2A8QE0BhteV/KWszeaq9xidUZRJ8tjvjQvDDkeT/DMf4njeF4Zb3Z7znmcBZJnMGYi2DUh+cPWRciInW/fCWFfElcWjKn5d1a1RHrunuf9L/WenRJDiGrZw5KDZ5ue0iZhAAHSru7zHjKei9DmmBSR5ZJGa0tN4q08B4dtOFVw+sepUTPeNuFwHZlqoUdhr1a/7GGztreR7NEAuYbX1C1211LQCJFMES5FGGEBX9hJRAsXBzqwhEbjvYUYTcC1e79EJsGVcu1glU0+FMmTivquOMYchq4ivepNegUjDpjRQ+8uZPe5Bv11iJrZembFXLFCfYDcg+P1+nY4iubxrRWFN92XkE4x2GoAqZzqc8zxyhkmUtgl73S6u9549M+wWBZ7z8lJ8KQIBrwXuxA0iblGV8ivUMjeJKrfSKWyIxrIIMm0cbGQYO/AUzv4KzSm9qBI2P5rwcGEzwRaO+l2dDcgK7tXsjIf5YeRdu8cEx46P6xtk2TxO2PP/mjrWopEebzSBMCJbIy0MxGJ3dbvFVQhB6uCSXdGzK+ae+hghi+FvSIPEj87Sh2xaOvoaq9nhsk1ay/oeGg1x+3MvjV9R9WkIh/BYuZEkMIflWKbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(366004)(376002)(136003)(396003)(451199015)(6486002)(478600001)(71200400001)(38070700005)(6506007)(110136005)(316002)(4001150100001)(26005)(82960400001)(38100700002)(91956017)(83380400001)(2906002)(8676002)(66946007)(122000001)(6512007)(76116006)(64756008)(41300700001)(66556008)(66446008)(66476007)(86362001)(2616005)(8936002)(36756003)(186003)(4744005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkVKT0ZGYmZubFNmV0NTSU5DSjV1Z0Uwem9XNFBXZTkyMWR2RHRpQXYzT253?=
 =?utf-8?B?NFoyTVY1V2FteGorVlNzb0xqeW4xOGxRcUVhdmZKaVp2R3dEc1ZxKzVBRm1s?=
 =?utf-8?B?Zktrcm85RGhWSzAxRUNwTFVXelpMcW5PR3BkeXpUV3p5MEpBTUVmVmVpVk93?=
 =?utf-8?B?Tyt6eE9PM3pINzlnNDIwRXkyVE10U1NMSElycDVoN3IrbEc2OEpiV0xMdHJs?=
 =?utf-8?B?ZURnK2dKc1o3RitDZ3VhT2N2ODNkUElkTzV4QkhrZDkvU0o2bjVpd085bkZB?=
 =?utf-8?B?V204RndSamprTWQ2WDh2MDhVSk5acUFVcUhxTDRJK0EySG1nNURaUVpmcG1K?=
 =?utf-8?B?ek11ODZNK2I3OGVMK085UkhVMFZ4WHkzV0llVUJuR3JjTE1Hc0MrVytvNm5H?=
 =?utf-8?B?M1dBYk1oeldXODcxcFZlQy9XT0dMbVdIMnVTMDR4Skk1ZVJTZHFOY1FWTUNN?=
 =?utf-8?B?c0puOFhUbGJwRjVFaWFVZ1JCcUU5V0xnSWwxR0pROHU2U211L3YvRFdydGFU?=
 =?utf-8?B?QzVwRGx0VDhYd25BblB3dDVRQjJja3VNSUxGYjYyK2VlaUNmM3RqL3YvRnZQ?=
 =?utf-8?B?c1J1bHZ3b093bGV3dUFFdm02Zm04eC9RRDlwRi9aWThUalg3RnNkamtna0tO?=
 =?utf-8?B?ZUJsUU12RDdBbzR5ZFo0VUZ5V0VlUER0V0NOVkV4N1RwejA3SEFkUmhaYllk?=
 =?utf-8?B?SUhRbHVkTFI3RzZKODhONG9MNEtpemRveTFVeUdOQ1IvYmxucStyOGpuUWtN?=
 =?utf-8?B?OG1hQlhXUDU2cVBxWGVuRWlYaUxMK1RDMVNFbEhtSWtLNEhnVE9oRjFVdGRS?=
 =?utf-8?B?am5DQTh2c3ZSTTd3YTBCRmVub0l1K0FLMzU3bGVOcFJ3Kzk0MkNRcGw3QU1n?=
 =?utf-8?B?UjlReS9GRmtBMjFLUjNxRlBYY1RuR1MxNHdabjhmTWJlcHRqS1Q4aXVFWGdt?=
 =?utf-8?B?amZOUllNdENhZ1BYeVdVUmQwanpDOE4wL29yVjVLWEpOZjlSTXZoZitXSDFr?=
 =?utf-8?B?SytyR0t3MTFwcjVGVC94cHkvRXg4VUdaWm8yaGd1bHl3eU1Ua0Q1V28vOVd3?=
 =?utf-8?B?LzQzcXcwdmNteFp0bEF6azZVUWZ4Wi9laldRV0ZHNnNVZ04wb3ZFQ2RqYnlU?=
 =?utf-8?B?czQ4MG52OWhDRE1DQ1VDU3IyVlZ5d2Q2VGVWblk0R3BjK3d3MEVQajRRUFBl?=
 =?utf-8?B?dUZhMnZ6TS9zeFFST2dtcGp4SVY4NFB4QnVUcVc1WjM1OWI3MTVET1V3UGVs?=
 =?utf-8?B?NE9DYlUvcGpOOFlJUTArSkp1blJTK2RDN3V1aHFUanFVdnhwUVo4eExoOUg3?=
 =?utf-8?B?ZHo3N0dRUERjVkMybFlXZ1NIYVNXQThBeWdNeXYzbFlMNVNzMEFRU0E0VUtU?=
 =?utf-8?B?WS9RNTlVZFJkbkVqcklhTnJ6alh6TERmbDk4UWViSWNoZUs3Q1dqcXBoUXBW?=
 =?utf-8?B?MHhMYXdvS1dSWC9WMjdJczY2SmllZ3k1cTk2aFgvWWU5YklsTlpPbGk0dFMy?=
 =?utf-8?B?R2hBZ0lTQmdweSt1SWNkd2VSQ3dMeVNkb0pQTDVCaHNlRUtnQXRLQ1h2V1d5?=
 =?utf-8?B?cHREM0pDdlpObURXNmtkbitoaTdFVzlXeGxrL3ZuaFFTdi9PUzZWaW90TFNV?=
 =?utf-8?B?bVRuMTBwTCtJRzI4czVqTHcwYlRrM3gzVXRoRzFIbmhvZmFIbjZRUWplcFdj?=
 =?utf-8?B?OWdXVzhvSHowTmRITW92UmNvVG1GMk5semJscktyYTBmczY5Z0hRdUFHSEJI?=
 =?utf-8?B?blR0ZFVlMVI5UXZoWUJVaDJnMmVPZHRCWUxVdEo0NDFiazdOaVF1eEQvOG12?=
 =?utf-8?B?QlNQTTZPdW1YNGg1WFdGY0l4b1hXVlBtdjNFbkV6VFRVMFNzLzVGNDRibzY5?=
 =?utf-8?B?bHFiWGZnRW9Udk1oRUh5YkJEdHdHOU1hN0JrRWRDb1EwNEY1RldMY25VdzJa?=
 =?utf-8?B?STRyakJaWFpjMjJnRE16ekFnQjc0aEQxUHNuWjR5dC9ibEYzYkNJK3JyRkh4?=
 =?utf-8?B?ZmNJbkthRFpFbWtSZnJualVQWG1iNHVYbExLM1pObGF5dy9ERXVaWUFrTTR4?=
 =?utf-8?B?THh6YWZodmpmUzhWbzZCT3J3ampDK2hmZnBySkppWGNuZWE0akJYRDFHWjRt?=
 =?utf-8?B?WXg4SlpGL1gwRnlNQnV3RjRtVjRzZWRHUnVSVWljS0U0OUJpUS9aTnZDYXBT?=
 =?utf-8?B?K0hPaStEcG92bkFGSTEzcndmMjJKd01YV0ZyWEZkNXl5TDdOaDFNN3dMNzE0?=
 =?utf-8?B?b0w5N0VKWTRTK1pzMGlOKzlER2pnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6D2A3D850C29D54784523D071CBF2800@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d1cd438-c241-48bd-6267-08dacc09cda4
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 21:46:10.2907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dEW+i3ffpYXHfcgHGFJ/MA1BsAhDNOzBaJKwalHoxPwVMGB1P4T5SPOG19xGAnlaQWmXQN76AyKAyZ+fFDGik+XtSE1wMFhEHBHw4P1J+8i9DJi8FhkdM2JZmDUvfpRxF4vI7HtszgyL9TcjQdUrqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Update DG2 DMC version to
 v2.08
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

T24gTW9uLCAyMDIyLTExLTIxIGF0IDE4OjE4IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBSZWxlYXNlIG5vdGVzOg0KPiANCj4gMS4gRml4ZXMgZm9yIFJlZ2lzdGVyIG5vY2xhaW1zIGFu
ZCBmZXcgcmVzdG9yZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEd1c3Rhdm8gU291c2EgPGd1c3Rh
dm8uc291c2FAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWFkaHVtaXRoYSBUb2xha2FuYWhh
bGxpIFByYWRlZXANCgkJPG1hZGh1bWl0aGEudG9sYWthbmFoYWxsaS5wcmFkZWVwQGludGVsLmNv
bT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5j
IHwgNCArKy0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RtYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0K
PiBpbmRleCAwODFhNGQwMDgzYjEuLjY5NzE5NjM2OGZiYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IEBAIC01Miw4ICs1Miw4IEBADQo+IMKgDQo+
IMKgI2RlZmluZSBESVNQTEFZX1ZFUjEyX0RNQ19NQVhfRldfU0laRcKgwqBJQ0xfRE1DX01BWF9G
V19TSVpFDQo+IMKgDQo+IC0jZGVmaW5lIERHMl9ETUNfUEFUSMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgRE1DX1BBVEgoZGcyLCAyLCAwNykNCj4gLSNkZWZpbmUgREcyX0RN
Q19WRVJTSU9OX1JFUVVJUkVEwqDCoMKgwqDCoMKgwqBETUNfVkVSU0lPTigyLCAwNykNCj4gKyNk
ZWZpbmUgREcyX0RNQ19QQVRIwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBE
TUNfUEFUSChkZzIsIDIsIDA4KQ0KPiArI2RlZmluZSBERzJfRE1DX1ZFUlNJT05fUkVRVUlSRUTC
oMKgwqDCoMKgwqDCoERNQ19WRVJTSU9OKDIsIDA4KQ0KPiDCoE1PRFVMRV9GSVJNV0FSRShERzJf
RE1DX1BBVEgpOw0KPiDCoA0KPiDCoCNkZWZpbmUgQURMUF9ETUNfUEFUSMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoERNQ19QQVRIKGFkbHAsIDIsIDE2KQ0KDQo=
