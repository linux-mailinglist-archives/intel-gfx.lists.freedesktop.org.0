Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0466DBE332F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 13:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A50E10E9C5;
	Thu, 16 Oct 2025 11:57:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UKWlZTZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D6F10E9C4;
 Thu, 16 Oct 2025 11:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760615819; x=1792151819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qGrQW9HE0G8VvgGkv3jvEIZ+pwhMjwhFbqbVhPaeIc4=;
 b=UKWlZTZQH7nYGdAI+hpKmHboD9SMSUH1xfCHDiBwT1qG062QhkNBcbCp
 bn4TfacCulbRRnvlwsMTzIp8EUNEPykFrjUnpKPP937atO/ZDWyDDjEzU
 MraUS5OHHmQ3UiGUshfpSwKlVUMxJ3VJ0ZqNdmuDZWb2XV/Seif8fOKjQ
 eaEqSov8O8oTnYDs1rwR90aww2KEK5o0Yq23qEdevvy/1t4zg6rJMIP7A
 CECWu461aA0JibiS6U7lbziR6EMuq0T4+cHsSG5LeAGuKgm10aN8VWnp5
 GatUN1LDmJNARepA44nYNvpIG3T9due33OQsRsNQJBGT09oGhs+gBex3v A==;
X-CSE-ConnectionGUID: 99n7om/sTWa9yr878qyF9w==
X-CSE-MsgGUID: 1WIN7vxZTZyPnrdmVbGjkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62713785"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62713785"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:56:59 -0700
X-CSE-ConnectionGUID: kcIO1LglQDyDjzrTTk5agw==
X-CSE-MsgGUID: 7gOaq8gcRU+Dcs2YE+MG6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="186709172"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:56:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:56:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 04:56:58 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.26)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:56:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pPp4KvLboX+t2lv0RZ6bIw5Rpx41zt7ihI1DeLsMOF1FPRxQFCigrgfy5uZiaKkD3fVyRsoinNvoHN3MqHgTlaGtU+3zV/k2IkPKPkmanuOIhMxPDbR4R12KUV0J9VHKcmtrKhwUPg2i7NuB9DAX82AO3sQHoCYfZDta9pLUTGmE5wjdRzsup6tKOM05oZr2W3hD4y8FZ+UUuk612ynwdFe/DhGlMgNTcsZXdvoj9aufHLtGxzIes4plBDLZbufiLWZZWBPJTE5dE2PWfbA2H/csEULgg905dVYyEbJ0N/1u9VdxnK96XxlpbqndkiTqN6u0GiYRBvzOsn07rxW5cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qGrQW9HE0G8VvgGkv3jvEIZ+pwhMjwhFbqbVhPaeIc4=;
 b=ENy5NSyZSIP7kcYJfBrSoQm2OfAjMtR9q5Hl/LmTDTI+RrA5Cq2zrUiyoXMCB+qm9D6GZLNr4knVVc5x1bZenLkvHnxnv70U/y2s02ehEj1mLw6jjEQmLWl1WfY5Nb6jHG3GZYDDTBgILRlI94qfGZXfch4u8cWfQYHk5ePDQ/GT+dXMMPXtvyKtRZAnJfChH2Xll53+WnseucEMJGlR6VX7WM080i7wRTB5++YL+RAPP8bQy2WkPYZII7DvCHqmjt+/Vmz0K9JoDUFfw+GBuM7qCPI0vz2E35/xlFUYrR3lBz3NUJNv1QS4DjGrG5mujQ+glKhcWoUslOeCqeMPSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by MN2PR11MB4582.namprd11.prod.outlook.com
 (2603:10b6:208:265::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Thu, 16 Oct
 2025 11:56:56 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 11:56:56 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 8/9] drm/i915: Include the per-crtc minimum cdclk in the
 crtc state dump
Thread-Topic: [PATCH 8/9] drm/i915: Include the per-crtc minimum cdclk in the
 crtc state dump
Thread-Index: AQHcPH8TWQcz3sMCDEOwwqNhQ79HHLTErtrg
Date: Thu, 16 Oct 2025 11:56:56 +0000
Message-ID: <DS4PPF69154114FB28886824FE4507693AEEFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
 <20251013201236.30084-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20251013201236.30084-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|MN2PR11MB4582:EE_
x-ms-office365-filtering-correlation-id: 4a05c712-d1ca-4f84-38a3-08de0cab1aed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?QzNZNC8vbDdtazBuNHkxbjN1d0x6V1dWSzFCTktHTkZkV1liQlBaM1JlNStJ?=
 =?utf-8?B?dDlxT2wvZENjMlNvWkhLOG5pRzMxK2pzeDJjeXU3V3JFZjBsbmdtRktpZGQ0?=
 =?utf-8?B?bitIV2p2citaVjIrR2VIL3BBQVRJWTg0djFzckd3bWFuSFpZNnZVeTdkeEl0?=
 =?utf-8?B?RmxMN1lFR0RGeDN2SUNrR1hHYlVRbUg3c0RjVm1CeGNQMlUzRnZDQi9rUmxK?=
 =?utf-8?B?ejlJZ3h4dm5JQmFDMFhhVTFaL3dRR1Q5OUNqS3RHL05lVHRSYy9BVFJtakVK?=
 =?utf-8?B?dFlmNWJkbjJWV2sveERPK0xSTTZnRVN1eTNiNjNacCtnc09peUVFY3pIZm1s?=
 =?utf-8?B?enZVSUViSWlTbzczNWd0RVp3aWZoMWNMWnp3aUp0R292Vjg1ODFzOUlSc2dW?=
 =?utf-8?B?dTdxWGgzaU1QQ2IzT1ZOWDNQNzRPUUJDTlljUmNiaEU3R3loczRrRlRsdGpR?=
 =?utf-8?B?WHpDaTNuQ0t3d2c1ZXJnbkpmVmxmajZyZEtqVWV4YXVuN2xRQmptdkI5cjRp?=
 =?utf-8?B?dHE4bTN6eEdQcTd5SCt4bHlYZWZQVDNKcmswQkdVSUxrSVAxS1BLREhGNEVT?=
 =?utf-8?B?SVk1L3l3dE15RWpPalVpSm5PRmQrNmgvZ0hZckFNMU9uc1RFRS9GeC9rcUNW?=
 =?utf-8?B?UDFUZzdjSlkrTHRSd0t2VDNOanBCeHhSNzlFVWsyUmt6dVpPdGhqcnJkK0tP?=
 =?utf-8?B?dktSK2U4MCtiRTJMMlkwUk9FZTVxSkpEenhuNnlDdUxUVjZURkJ3TElrVkxL?=
 =?utf-8?B?dUwxTExDQXgzV2JYOXVZQlJEc2FIdCtGbDkrNlpxeDQzck5kTmE4V3k0Z3R3?=
 =?utf-8?B?TWMvY1dBV0c1aWxicGo2RmFaY0d3emlVMjNMMStKQVg2eHFVK1F0OXFRQUts?=
 =?utf-8?B?MFlZTVFUR2lrcldOSHMreGQxYTZuMGtQeVJhbCttOGZZMUt1OTc3VnJUMWFt?=
 =?utf-8?B?WGRIa3czZmx2clAzclVWMzR0ZkdGK2VlZi82eFdWK0laMXVEZUhPci9CUzd3?=
 =?utf-8?B?NGZBUUhQeTU5TzBrUkRQT2dIUzluR2tBQW45cTVRMThjRkhKNXRHMW52QSs3?=
 =?utf-8?B?cnQwTzhyQlBoU1VOd1lFZ3E2K3hLa3o4ODJWeGpneUpNRkhKM2s0Sml1bVJk?=
 =?utf-8?B?OWh0bDRzbkhrOC9DNUlIMEN0ZGgraEhjT3FrQ2lsMWQzV3h1NVJSU3dVN243?=
 =?utf-8?B?ai9XWlM3Q1JZMFljRDFyVnhUWVhIMW42alBRblN1a3g4eEtTYWUxL3B2c1A5?=
 =?utf-8?B?dzRLRFpMaXVHcjZ0ZUh1ZjZ1NTFhSFVvUTZkbGVlZG1nVkQrKzFxcjMxTTRq?=
 =?utf-8?B?UzJ1dCtqNU9kVHp6akxqbDJSei9UYzRWZWFBOHhGd1BkcEs5aDZXdXB4dzIz?=
 =?utf-8?B?cFl4VU4rVml5c1dKdkNveDFpVWdqUkkwTzl1UUdNN0JlaGhZM0VBZGIyZzIx?=
 =?utf-8?B?SkxONGNGK3A1T1JYMXJHZmVBcUJpaEhqY0UvcjgxOEhKeVh3cEpyV01IS0ZM?=
 =?utf-8?B?RkZnK3VrRTdZbkRreWhlL3VaY1QrSFNIcmVtYXFxMkpuNGFPU20wRHlOTU1U?=
 =?utf-8?B?VEFYeTZYY1ZqMmwyK09HUjV2UW5Jc2kxVGVpM3BCMmJycFc1czFwRHYrcXFx?=
 =?utf-8?B?bUJRR3NaVzBkeDVsN2hkaFJPOWpjZFZjNGlZRFdGekF1c1RIZU5GdnlWUUpP?=
 =?utf-8?B?Y1Z2bmRSZkx0NThMQlpxeHJlSXZ0VlJ3cTdiQzcyelR5U0lxdkFUS3ZqakVH?=
 =?utf-8?B?cGJ0M1hCTzdLSXFOalR6RURib2U5dDVnR1E2ZlZleVEybDlFajk1b3RKVVdX?=
 =?utf-8?B?UlpkL1F5QlRNOUNQdFR5cmFzLzlnemFLNFkwMUpxMWdMOWNOVVF3MUpEajhQ?=
 =?utf-8?B?YklVOHhSVmVjOVZFaXhlZk9ZWk0wYkJ3aGpHTDZtMXh6UFFhYnpodHRNUmZo?=
 =?utf-8?B?UEpGWXRxVkNENFRTVU9Kdzk1RkxZeEpDUnpabElnTU5Jd2VLSTExbVZ4YzdQ?=
 =?utf-8?B?RXErOE43cCsvMUJab0lDVzF5TE1zOG9HN2VRV1ZZRlI3ek9KVVlmdGVVN0kv?=
 =?utf-8?Q?R0XeFC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yy9UMkFvNmZaWFBmN0NhejVCVklNNGRFSktTL0d1dW1JV0tNcVV5UUwxeDl2?=
 =?utf-8?B?cEMyalVTNklVMjV0dnMxaDFzeUp4ak9xMUpHckJ3N3pzVUkramcyakora01H?=
 =?utf-8?B?Z1I1UlRsd0s4SDNCU0FlazJCQ0tsb0o1MFQ3Tm16cm15aHpNWEtjelVHc2FP?=
 =?utf-8?B?aFd3MWM0NGNZdzV5MFovTlVIMXpDenZGb0lIemJSekRoVVYzQTJuYlpRV3hj?=
 =?utf-8?B?ZmxpeUlMTW9zQUh4YkpNaEczZ2Yza0xyYTFyK2JOdTFUY3R2LzQwUUFkRTNr?=
 =?utf-8?B?RTVEK0hpeEJ4MkxoUUZNZXlKZlVPZnpFTlE5TXltZE9IRnZnc29ySmx2SDdW?=
 =?utf-8?B?MTVxZ1F4RTZYTytuWGo5SmNHOU9ENmtrdmFLRkVZWkRYVFViZmdWejBRUjlv?=
 =?utf-8?B?eE04Z3dWb2NoZCtGdkZRTitNRy9qNHMzeWRWSHFBdXZhSlZmVVN0djBhc3Jz?=
 =?utf-8?B?RWNRNkl2SCtOTGF3WkN0QXRQWC94TVlsNFRGNUM0YTRhSlJoTnFMRllZUXVm?=
 =?utf-8?B?VmdEMEUvWGlWM3U2eml3c2xOL3BranJEQmk0anE2V3hsOUFqWnZZanZqbXlO?=
 =?utf-8?B?dHo3aitWSTFXN3BLYUY5YkFDY3VpblkwczFpVDRoc2hBbHJGc2hoK3czc3B6?=
 =?utf-8?B?dGdDZnRMMVpDSFBZRXNGa2VaU0NiaUdFd3dwa0E0RTVxcjIrV3JaUzk4VXpi?=
 =?utf-8?B?cGdyNmlqUE9ZUTY5dDExbDd4NFZ4emlYVkRFTXhJYUorWnNpRXdFRVhBL2VU?=
 =?utf-8?B?UnVGb1pYeEpDZFQ0WEc3d2EzQ09rRVpxU0VTSk9uR3NMNW4zUlA4cjZjb0wy?=
 =?utf-8?B?a0U3K2x0d1pVb1VJMHU3YjR2Q2kxcm9hWTd1bEZkTUVPQm9pYjN0RWxLSkNN?=
 =?utf-8?B?cm9HUkt1bkFNQUgyM2ZWVmhKeEdtb0dHVkZ4bGlaYXJIak1NZXMzZi9WNkVD?=
 =?utf-8?B?SkxrY3Q4UCtHazZDakRGRDkvU0k1dmhOckdGZlNTYWc2MHRDc3loNFFxNHVC?=
 =?utf-8?B?YUxVem1tS0NNMTFsWnZIaGQ0SU1mVFlRUnpoNEZRK3kxTHY0L3RDL3dZaC9O?=
 =?utf-8?B?eWI5d0Z1Z2FsUGNvNm55eXd1UG9kbTZLU3J4cDNtMUhHUVJWWUh0ZVZlU2R5?=
 =?utf-8?B?TTVtN3JwQWYweWRtc3R6Ykx1MTltN29NbkJNejlwWVlBR2xnblcwZU8vK2pK?=
 =?utf-8?B?WDBpcE15NGJWQmE2eS9DYVRCcU0wcUgrQy93NzB3aHJjUXo1MXRxU3ZrUndj?=
 =?utf-8?B?TEZtNFoyaHRsblppNFMva1Z0RHFCaFkxUzViVGxLZ3M4VkdTN1M0ZkREZnE0?=
 =?utf-8?B?RXVQalUrZmdSbXg0TWdsZmpTQmx2Wk5FTkprWW93V3FsbjJYT2JQSndKeCtu?=
 =?utf-8?B?S0dLMmJXRjI1TFJIeFVmODh3MHFyeHFIRmdpMnB0L3VCMnNhUnpwcVhWM255?=
 =?utf-8?B?Sk81MlZvbk9halpBMnV5RGRiRXdrYmQ5eUxyWkc4NVRPazZGTkJxam1hZTJk?=
 =?utf-8?B?aFFDRnhoQzkxczdHSGphTVVrRDVMb0c4QXRjemdmUkhxc1NrS2kwOFUrcGg4?=
 =?utf-8?B?U0srY1FadlNWRDRkb1k4RllkRFM4ZUcyTW43Uk10Wkg0Yi82a1hsMm9kK1V2?=
 =?utf-8?B?KzhOazFCeHBkVDJGMklNaDgyd1cwMWd6SmVVT25SN05PK0svT2Rvb0tSYWdk?=
 =?utf-8?B?R0JSMEJGRWVCWHFtSVZwZFhTamFNcFVsT3pVejhuU1FnK2ZvVU1SNkc3Z2FE?=
 =?utf-8?B?KzZVYWJ2djhQcnM5OFFncStRcVgzdnk5T2xrY1dzM2JxR0x1WlhhMWl0alZZ?=
 =?utf-8?B?UUpodzJkMTFlTVBTY1VmVk1aMzlDUURLY2VodW1HdWlYcHVFc2ZXU2F1Vkc0?=
 =?utf-8?B?UDBhOUFaeGs1NlF3SHRCeEtvQ1lLWjlsU1dtR3haRHgzLzR4a0dNMFRFelRq?=
 =?utf-8?B?OGhiUWFERWE1L25DeCt3MEdqc09YMkpSOHR4dTd1UmV1cUN5Wk83TldtNElu?=
 =?utf-8?B?UCtRMnM3TE83SzB1czlsU3FZRU5nL2t6VHUvSUVQQTJuMHZuQUU4TjZuS21O?=
 =?utf-8?B?Qm1SdUE2VGVFVlFLa25ZWmZPbHE4OGsvMGJJRmJPelROMXZEVlduSWhLOEdw?=
 =?utf-8?Q?6nG+zGCs4dL3dKanTKaOcxIlr?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a05c712-d1ca-4f84-38a3-08de0cab1aed
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 11:56:56.3494 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q1zzhfTkM0LO4chRsJqxmDq8L5XLMW9MBUQzmLSbCOSVEz8Y7G/LEM4MehJeVmGjDVu/mS+pBTb8Jp+0n0i7hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4582
X-OriginatorOrg: intel.com
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogTW9uZGF5LCAxMyBPY3RvYmVyIDIwMjUgMjMuMTMNCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggOC85XSBkcm0vaTkxNTogSW5jbHVkZSB0aGUgcGVyLWNy
dGMgbWluaW11bSBjZGNsayBpbiB0aGUgY3J0YyBzdGF0ZSBkdW1wDQo+IA0KPiBGcm9tOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gSW5jbHVk
ZSB0aGUgY3J0YyBtaW5pbXVtIGNkY2xrIGluIHRoZSBjcnRjIHN0YXRlIGR1bXAuIE1pZ2h0IGhl
bHAgZmlndXJpbmcgb3V0IHdobyBuZWVkZWQgaG93IG11Y2ggY2RjbGsuDQo+IA0KDQpSZXZpZXdl
ZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19zdGF0ZV9kdW1w
LmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnRjX3N0YXRlX2R1bXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3J0Y19zdGF0ZV9kdW1wLmMNCj4gaW5kZXggYTE0YmNkYTQ0NDZjLi4yM2UyNWU5N2QwNjAg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Y19z
dGF0ZV9kdW1wLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
cnRjX3N0YXRlX2R1bXAuYw0KPiBAQCAtMzE0LDkgKzMxNCw5IEBAIHZvaWQgaW50ZWxfY3J0Y19z
dGF0ZV9kdW1wKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywNCj4g
IAlkcm1fcHJpbnRmKCZwLCAicGlwZSBtb2RlOiAiIERSTV9NT0RFX0ZNVCAiXG4iLA0KPiAgCQkg
ICBEUk1fTU9ERV9BUkcoJnBpcGVfY29uZmlnLT5ody5waXBlX21vZGUpKTsNCj4gIAlpbnRlbF9k
dW1wX2NydGNfdGltaW5ncygmcCwgJnBpcGVfY29uZmlnLT5ody5waXBlX21vZGUpOw0KPiAtCWRy
bV9wcmludGYoJnAsICJwb3J0IGNsb2NrOiAlZCwgcGlwZSBzcmM6ICIgRFJNX1JFQ1RfRk1UICIs
IHBpeGVsIHJhdGUgJWRcbiIsDQo+ICsJZHJtX3ByaW50ZigmcCwgInBvcnQgY2xvY2s6ICVkLCBw
aXBlIHNyYzogIiBEUk1fUkVDVF9GTVQgIiwgcGl4ZWwgcmF0ZQ0KPiArJWQsIG1pbiBjZGNsayAl
ZFxuIiwNCj4gIAkJICAgcGlwZV9jb25maWctPnBvcnRfY2xvY2ssIERSTV9SRUNUX0FSRygmcGlw
ZV9jb25maWctPnBpcGVfc3JjKSwNCj4gLQkJICAgcGlwZV9jb25maWctPnBpeGVsX3JhdGUpOw0K
PiArCQkgICBwaXBlX2NvbmZpZy0+cGl4ZWxfcmF0ZSwgcGlwZV9jb25maWctPm1pbl9jZGNsayk7
DQo+IA0KPiAgCWRybV9wcmludGYoJnAsICJsaW5ldGltZTogJWQsIGlwcyBsaW5ldGltZTogJWRc
biIsDQo+ICAJCSAgIHBpcGVfY29uZmlnLT5saW5ldGltZSwgcGlwZV9jb25maWctPmlwc19saW5l
dGltZSk7DQo+IC0tDQo+IDIuNDkuMQ0KDQo=
