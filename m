Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497987577CE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 11:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0025310E0AA;
	Tue, 18 Jul 2023 09:24:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E1010E0AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 09:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689672252; x=1721208252;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4i17UXxBrR1M8iXFIEg9GE9fnWVENkKChMzvSeDhvGo=;
 b=VsXUzsCHI5N2mulSFU8/Zg3C31WHEbAMfS9wDiG2WJjBZnE7QuFyeg2R
 8werNOMzQXJis0KewBICpmlE+zupihQnJuFKiRFm7+M+TqfxbRTC2t2Qj
 wm8MWwD3oGFRdV0/L4vXIVQ9s1wGxSaEAfBAsrZtu7+S3QE4zkA9tnNii
 +pFUuXUiIM5a/K49dxaCQatKCON64OZJs7YJl5BfHE1+x+YhzvFUcvRof
 E/X8iZ4xFmzOBZUfe/0vEQdPiX+xGFFMgk4zcnY/HF6mGBzko50PfTuTO
 zyK1Fk/C3iqK8j12ueHDmey4QNtRBjPlhnot0FG4rzKqdBHEISvNq/xcg A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="351022162"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="351022162"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 02:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="788991539"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="788991539"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jul 2023 02:24:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 02:24:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 02:24:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 02:24:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 02:24:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IR0q4/C+enHEDE0xg15X/n6RrcOKV/gAnVA25ggquMS5ZitE/px0sOjmRBmZe1KviW68LkYQVMHeCBj+H6oORu69c4X9Qychm/oipMTimZTTtJaZx1ZziDjFoQbR2usFwDq3NoTNn/UZrSgyRAzY5XbzaS8t+MMp5BhqW75/Y6SZp0wjkvdyRWKPsOXAogSPHn3PMZE2nSnSO4s+seF+DIaO78NmaBa9CHKTerauhn1RZnSksjbhplMBgF3WNYMKqhz4l8t4fPoWugHTlgCx1rgab/dPvix9Ot2MuZFK+/dvfLby5OCkEaHLquY7QkRf8Qfrx9Gaz2DIqDS/YbIBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4i17UXxBrR1M8iXFIEg9GE9fnWVENkKChMzvSeDhvGo=;
 b=eFcCWSQJUeUv/WY+I0vINzgcN+7Iv+dzPFiE7nnQxSZ0bD7mjTOZPEpcj7AXmkuEoriNVVUhMDnnX+bmpC8qeIBSnFf+R/bKrefoF/arhH48+lhmp0kayZ1afOa47uVFNvVSWgJKfwWTa9mPId3u40ex4kMI30K9joLOfAnZgnqode1EfAB1ppoaTGBmahq1Q9ZhZbp3bq1Okc9q5ofVabezlbuCvlP/v3XgYRVo8epkCguJ+0ob9BoyDjUkGe9/7+iewjmHb/aUzBhuhIR+pPA3WVuX6mE1Qe1IZc8/hsoGp6EZ86C9iwN2oZ/NUyvZkSP92HvpDnvQdHKG6smeow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7074.namprd11.prod.outlook.com (2603:10b6:510:20d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Tue, 18 Jul
 2023 09:24:03 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::c48f:554a:acec:5ea]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::c48f:554a:acec:5ea%4]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 09:24:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/panelreplay: dpcd register
 definition for panelreplay
Thread-Index: AQHY9RZDEwrf6cJGf0O/xQZ59V4KG6+6JvYAgAahL3A=
Date: Tue, 18 Jul 2023 09:24:03 +0000
Message-ID: <PH7PR11MB598157868FA30AE5BBE5D86EF938A@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221110150307.3366-1-animesh.manna@intel.com>
 <20221110150307.3366-2-animesh.manna@intel.com>
 <DM6PR11MB3177D45E5B4BDBF60B5983A5BA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177D45E5B4BDBF60B5983A5BA34A@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7074:EE_
x-ms-office365-filtering-correlation-id: 8af822a9-9c8f-4dc4-f43a-08db8770ba5a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4TXYQ6+GsgjL4uXg7h4UreTn3yohcNhn8WB0F8mIwWfY75Db5LCVzG8JGVVzelacgfReFvly/84NSTiVuVYU+MdwjiC0AS0Y/goOVWUj6YWcQSNfdvx+3DBMqZUDI3vkyvHf9+lVi+U4utUtrMykpxZfoyeQMUFfrWTUA6rlcG4kyxwQsveC51or+9/Eq5y9bUpGNSzo57iPr+Vva2otbX0D4m2E6Dm/1Sx/CJHwbXGNMFF1wRDsfxaHDqNlLcmH54NM9aJfXbWSCfdmfK8cX1ZS/rfsbEVKoNed33y1GcbOhAnPZsu+L6tS37NEIKn0wHI2wp8IHE0GltoGzdG0B2HD9+UmAWEwl3efaiBL5YIDzGfd4bMXPbamHbfgoHI0dNBPNONDX9hVhKtq0toOcG6e9Y2XsT3/er6L50hqyRN3/xt0RApeVQP5xkBX4xzWRfd7JNr6SH/3Z5ptpmeistd0di38IL5zT8YO13Z52hjW4U10FtG2uZzS6jg+h/2SiEP1Xil3sOEBSbxQtu+vFJL1/SNOu93DqOI5VTpUv9HOXNceS+QNXM+MZVtnLILE2cuity3nuSS9uPM0suQOar5Mk43af25HFX1E+9nF3/T03DeF82qnT7xMvpSfGXI5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199021)(478600001)(71200400001)(7696005)(110136005)(66556008)(66574015)(83380400001)(38070700005)(86362001)(33656002)(55016003)(76116006)(9686003)(2906002)(53546011)(186003)(6506007)(316002)(122000001)(38100700002)(26005)(82960400001)(64756008)(66446008)(66946007)(66476007)(41300700001)(52536014)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2ZIRHQ2K3BZdCtCcUJyNEZlTzR1UXNiMGVvYzFHcGVvdGxFcnNwZ0xJUFlV?=
 =?utf-8?B?elUxMjZaWWhFSzkwTkZESkRVTlpYK1o0SzJKN0dWdTduVUJNdUNoZmFiV29h?=
 =?utf-8?B?czMveXZqWnNkWUphbDluajNHZGduRGNtVVVTcmZCcFpSQ3BWdGsyY29zZXp5?=
 =?utf-8?B?cGp1VEZSSGtXS2lHZmFTSlZML0M3M25GaHNKemZCcE5CQVNUcVpNdzdVMVRS?=
 =?utf-8?B?QmMrdmNkcStBcXhLUWFzRVNubjluMVhnQzkrRFJ3UDJMc0NKSkhPOXpGV2Iw?=
 =?utf-8?B?d0FtUTR3bjZ2VjArNjM3OU91VjdiWTNpbEZ0V3hxY0c0OUZFb1YwcmRUNDVJ?=
 =?utf-8?B?NXdVV1M2UFJ2NGtIWkZwVC9vZnBhWEkwVXhuaVBRNDk0Nmd1SUg0aVUySUlS?=
 =?utf-8?B?UkZCTDBlcWllbHdLNXhCa2tHT3NIRmhGN1J4dWtORGhoeHZLTnBGS1hEUWZm?=
 =?utf-8?B?WWV5Wm9xQW1Gd3p2T2VNY1BHS0RBUmtuS0pXcVhMZkRJVTViVG5EV1JEbnMv?=
 =?utf-8?B?T2pEZVVYaGNKUVpLaU5HRlpQNXUyb2NCT0lzVDMweFhKUk93VlhnZm5jYUZ4?=
 =?utf-8?B?RUtKb1cwaW1ISloybVVta2RUcFhwUkk1Z2crUlhJZWVJZ2ZrWEs3bVJqOGFa?=
 =?utf-8?B?clRFdllpMU1WcWN3blI2T0M3Z1pzZWxFMUFsUWpjRGs5N3BReE84V2d0bFhB?=
 =?utf-8?B?STYwZG1IWVRUaldZekdVZDNuekdrVXBmME5OTWdTL0RacDdOdGd5dGJweTIx?=
 =?utf-8?B?ZisvamtPM0xWSUhwZmtEUU9hMXQrSjdLNHZON2NHZlErYXhHUEVGcWpYUHQx?=
 =?utf-8?B?RTk0RnZydHZtUnY0L0dJeml1eG1scEw4N3pnZGIvQWs1Nk1MRjNBMjVSbjNW?=
 =?utf-8?B?TmcxeTZUTmpQTGFJTzVQRXE0RWJWUHpOSkhwSnIzS0hSdmw2M2owcWh5WWYw?=
 =?utf-8?B?dzNGUHozZkx5K01pT1c1Ym5HZEZ5UVFKSUYwbmk3NkduYjVlZEVuNU94N0k4?=
 =?utf-8?B?WVF2QkdNazRxNlo1STAzUUJrTHNrQ0VaY2cyb1UzVU4vSVorQ0RNcURoeHpY?=
 =?utf-8?B?NkNXUDhwOVovbVNMbmlNK3lmcGFlNjh6RzNpU1M0U3JPZnF4eEpPZDA2QVhM?=
 =?utf-8?B?NWV0cjd3b1hRNG5YNzloUEtyRzVvSWwyUlMyaXNFUjltU0pidWRsd2xEdnJI?=
 =?utf-8?B?dEJjQlI3MERwbmR6UmQrYTBJelhENTJnOWtRdVk5OFRrZ01qclI0MUFHdmxr?=
 =?utf-8?B?UXVJLzIrR0daMTdCS3VmUjZDK1l4WFZPNlFYMmQrTmhWdFNORWw4aERIK2Fu?=
 =?utf-8?B?UW14bE5GUThZVWRFZ0NBak5XMVpKSlI3RlBJM0hwa1BkOTBOOVdoMTBIOWFp?=
 =?utf-8?B?WUJpMFpmbU0wRkNYbkhiZEFkNDk3bUVGN1h6eXhwU29vMWhpZHNCbUp1eDQr?=
 =?utf-8?B?WFJ4WitZYXp5VjMyR090c2l1enRFaUFWdUlEVjNic1dnZVZ6ZTB0bEJJQzBk?=
 =?utf-8?B?UUNuTGx3T1laSWRvR21Wcjl5cjZaMENnUE4zVWN2c1hpUE1XRUlCWHNpdlIy?=
 =?utf-8?B?R3ZaTUZpcENHYzRNWUV5TUc3L1p6Nk1KMThoM3ZwMjh4clFSb0hEL29JZjZk?=
 =?utf-8?B?UzkrYlhQK1I4cEFqajhjWG5vRjl2cG1PZmlucmZhaVpYNytDWDFHbFlGU2tC?=
 =?utf-8?B?Znk2NjhRdzRkZjBQMmh3MFFtbXdQWHdHblVuMnRGUEJVMTBHeHZ0VVphdnNm?=
 =?utf-8?B?VmM0eHJ3dFkwVG5pV1lFeG00RFN6QUtVcDhOY0plUTh1MEhwRVNvR0pCcHlk?=
 =?utf-8?B?WCtadmFycWlzRERld1EvNnpoM1hLRk5pOFZMS2tNNzdxRkhoM29yMFNTL1NM?=
 =?utf-8?B?U1NtVDJZZGRJSjNxOVBiWU1OTUdWejRIVHJ1M1N4MmJUbUNGS0VWMFNaeG5N?=
 =?utf-8?B?NUNPbVE1OEQzeGtmYUUwdDEydVlVQjk0QTJ5L2xpaE9MTXMzZjYyNDNyYTFH?=
 =?utf-8?B?Z1pYb2d5R2FoOFIvaFNiMWpSN0MxVDRIdjVlNWk0MzF5ZU0yMXFjM0tSYWli?=
 =?utf-8?B?SDRLcXJTRHd5SVhuc0hwOVdqK2F4QTMwYzNEdURmRXZxSjhRUzNpTzNxS1hE?=
 =?utf-8?Q?SsH2GPimeTTvRexS+Fha0j9mt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8af822a9-9c8f-4dc4-f43a-08db8770ba5a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2023 09:24:03.5257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t9DwMSQ6iI55wfyOEeOGlrixL2Gm5Wn18lJHZEkFLDHYMtsbYpuNev+AGamtpPaV0YW9z9bhtxxXygjCqA1nBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7074
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/panelreplay: dpcd register
 definition for panelreplay
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTXVydGh5LCBBcnVuIFIg
PGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIEp1bHkgMTQsIDIwMjMg
OTozNyBBTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsg
aW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUkU6IFtJbnRl
bC1nZnhdIFtQQVRDSCAxLzRdIGRybS9pOTE1L3BhbmVscmVwbGF5OiBkcGNkIHJlZ2lzdGVyDQo+
IGRlZmluaXRpb24gZm9yIHBhbmVscmVwbGF5DQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVl
ZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiA+IEFuaW1lc2ggTWFubmENCj4gPiBTZW50OiBU
aHVyc2RheSwgTm92ZW1iZXIgMTAsIDIwMjIgODozMyBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDEvNF0g
ZHJtL2k5MTUvcGFuZWxyZXBsYXk6IGRwY2QgcmVnaXN0ZXINCj4gPiBkZWZpbml0aW9uIGZvciBw
YW5lbHJlcGxheQ0KPiA+DQo+ID4gRFBDRCByZWdpc3RlciBkZWZpbml0aW9uIGFkZGVkIHRvIGNo
ZWNrIGFuZCBlbmFibGUgcGFuZWwgcmVwbGF5DQo+ID4gY2FwYWJpbGl0eSBvZiB0aGUgc2luay4N
Cj4gPg0KPiA+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiAgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaCB8IDExICsrKysr
KysrKysrDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiA+IGIvaW5jbHVkZS9k
cm0vZGlzcGxheS9kcm1fZHAuaCBpbmRleCBlOTM0YWFiMzU3YmUuLjQwOTk1ZjhjMmMyZg0KPiAx
MDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oDQo+ID4gKysrIGIv
aW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiA+IEBAIC01MzcsNiArNTM3LDEwIEBADQo+
ID4gIC8qIERGUCBDYXBhYmlsaXR5IEV4dGVuc2lvbiAqLw0KPiA+ICAjZGVmaW5lIERQX0RGUF9D
QVBBQklMSVRZX0VYVEVOU0lPTl9TVVBQT1JUCTB4MGEzCS8qIDIuMCAqLw0KPiA+DQo+ID4gKyNk
ZWZpbmUgRFBfUEFORUxfUkVQTEFZX0NBUCAgICAgICAgICAgICAgICAgMHgwYjANCj4gUGVyIERQ
Mi4xIFNwZWMNCj4gUEFORUxfUkVQTEFZX0NBUF9TVVBQT1JURUQJMHgwYjANCj4gUEFORUxfUkVQ
TEFZX0NBUAkJCTB4MGIxDQo+IA0KPiA+ICsjIGRlZmluZSBEUF9QQU5FTF9SRVBMQVlfU1VQUE9S
VCAgICAgICAgICAgICgxIDw8IDApDQo+ID4gKyMgZGVmaW5lIERQX1BSX1NFTEVDVElWRV9VUERB
VEVfU1VQUE9SVCAgICAgKDEgPDwgMSkNCj4gPiArDQo+IEluc3RlYWQgY2FuIEJJVCgpIGJlIHVz
ZWQgaGVyZT8NCg0KVGhhbmtzIEFydW4gZm9yIHJldmlld2luZyB0aGUgY2hhbmdlcy4NClRyaWVk
IHRvIGZvbGxvdyBzaW1pbGFyIGNvZGluZyBwcmFjdGljZSBvdmVyYWxsIGZvbGxvd2VkIGluIHRo
aXMgZmlsZS4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gDQo+IFRoYW5rcyBhbmQgUmVnYXJkcywN
Cj4gQXJ1biBSIE11cnRoeQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+ICAvKiBMaW5rIENv
bmZpZ3VyYXRpb24gKi8NCj4gPiAgI2RlZmluZQlEUF9MSU5LX0JXX1NFVAkJICAgICAgICAgICAg
MHgxMDANCj4gPiAgIyBkZWZpbmUgRFBfTElOS19SQVRFX1RBQkxFCQkgICAgMHgwMCAgICAvKiBl
RFAgMS40ICovDQo+ID4gQEAgLTcwNiw2ICs3MTAsMTMgQEANCj4gPiAgI2RlZmluZSBEUF9CUkFO
Q0hfREVWSUNFX0NUUkwJCSAgICAweDFhMQ0KPiA+ICAjIGRlZmluZSBEUF9CUkFOQ0hfREVWSUNF
X0lSUV9IUEQJICAgICgxIDw8IDApDQo+ID4NCj4gPiArI2RlZmluZSBQQU5FTF9SRVBMQVlfQ09O
RklHICAgICAgICAgICAgICAgICAweDFiMA0KPiA+ICsjIGRlZmluZSBEUF9QQU5FTF9SRVBMQVlf
RU5BQkxFICAgICAgICAgICAgICgxIDw8IDApDQo+ID4gKyMgZGVmaW5lIERQX1BSX1VOUkVDT1ZF
UkFCTEVfRVJST1IgICAgICAgICAgKDEgPDwgMykNCj4gPiArIyBkZWZpbmUgRFBfUFJfUkZCX1NU
T1JBR0VfRVJST1IgICAgICAgICAgICAoMSA8PCA0KQ0KPiA+ICsjIGRlZmluZSBEUF9QUl9BQ1RJ
VkVfRlJBTUVfQ1JDX0VSUk9SICAgICAgICgxIDw8IDUpDQo+ID4gKyMgZGVmaW5lIERQX1BSX1NF
TEVDVElWRV9VUERBVEVfRU5BQkxFICAgICAgKDEgPDwgNikNCj4gPiArDQo+ID4gICNkZWZpbmUg
RFBfUEFZTE9BRF9BTExPQ0FURV9TRVQJCSAgICAweDFjMA0KPiA+ICAjZGVmaW5lIERQX1BBWUxP
QURfQUxMT0NBVEVfU1RBUlRfVElNRV9TTE9UIDB4MWMxICAjZGVmaW5lDQo+ID4gRFBfUEFZTE9B
RF9BTExPQ0FURV9USU1FX1NMT1RfQ09VTlQgMHgxYzINCj4gPiAtLQ0KPiA+IDIuMjkuMA0KDQo=
