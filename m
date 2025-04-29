Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D9DAA03F4
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 09:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC8510E2E1;
	Tue, 29 Apr 2025 07:02:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dObyalHg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27FD010E2E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 07:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745910130; x=1777446130;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uFI3uThj3oXxnYjWi4yuP8ZMLwZjFLcutxryHooMWbo=;
 b=dObyalHg58FPND5wi9p2tus70WMyCXqwprb/6P4d9AA6YwelLOK+rSjk
 bK3NbtTdFzL0tnh26omdqcUwe44sxnTSLpHFt6m0nPhM2op5yD1vmKd0A
 BQGXqh5dtHmTpIo2vfc27zs5FmlDyVKVpbZDsFvOKMZ93rwjWey30fpvo
 Cin5cZoZh26Fqo691/YCJeyJQcn83WkI86pedK/wyI/f8u7AoibV6aEe1
 3PWg12Dns47bvJM0O7pjIzto10pkUpyvRmbUJT8XG0s7EtlR7LEE7H2Ht
 1MmJkClv58Su9/j4iXgBQ2yRgVyGGNLK9X7Ig5OtWkEmkFwS2wdmEW3/x Q==;
X-CSE-ConnectionGUID: Czbd3MZOR/iuP9milaotQQ==
X-CSE-MsgGUID: Wsu/927LQKaYo/AAkbd8eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="72896805"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="72896805"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 00:02:09 -0700
X-CSE-ConnectionGUID: H7DWwlQISPOXL8BH45Erew==
X-CSE-MsgGUID: /X5OGHvoQ/mH3hlJ6JbWVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="164688408"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 00:02:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 00:02:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 00:02:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 00:02:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=COaP7glETYvs6OrxTCtyRNsgd8jp/3ly1t3zGcD3tDH7KEDT8SrKKFQl4KaSrjKDbvTxAZlevdIvHE/oLh3zK5tIW+84AviQ2Ej92d76WkUR81vQLoCcBssuMg1V6ecQQxWn3pYgSoCQLok8G9vbzWwr4rBLPjPgRylU+K0baFlLl7PiaHFpa5TBpmRSF5nmpPblSqnBX/cX4eq3/PPtrO0AWNEl8qptQz3C6uOTLAsfFnTTo4WZMZ5shRK6Cysbe728Z4y7AtdvUvhGagaJlMdEHAR5tjVu0fhlvzajICBgj1THmBJvbp71zzguo4p8nkykvFN+tdXh6+4LwugC8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uFI3uThj3oXxnYjWi4yuP8ZMLwZjFLcutxryHooMWbo=;
 b=zPSDmU1N1nSD3ghAZyiyPZ/yNdrx8I7NMaRw6p9uTATr2AdPGHXfdx83zhwi5jaZypNF2T5t90JieEKmx537KFrFtrueVvJub6ERsaeNQoCHs9cb2lfauiBquevaz3w4ZD8M5GTuv4FxeYCkayEccP6eO1S11dRAXqhb9IRzYz/CTgabL0+m9JN52whDMjFreqavNNVD6nMgg4CXxSqbYZEs/1hEkaTl7i+UcJqyswFFRLOTYaLzeKKJtfjoL9yGcgRwVLvPO/zm43axV3Sba2xG/72pIQv9kbhpqugwAfjnO2qOOJG8WIToC+cw8BE+ZAKEio5K71J47TownXTQyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com (2603:10b6:a03:42a::13)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Tue, 29 Apr
 2025 07:01:36 +0000
Received: from SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0]) by SJ0PR11MB5867.namprd11.prod.outlook.com
 ([fe80::dc4d:b84:3424:b7e0%3]) with mapi id 15.20.8678.028; Tue, 29 Apr 2025
 07:01:36 +0000
From: "Gote, Nitin R" <nitin.r.gote@intel.com>
To: "Karas, Krzysztof" <krzysztof.karas@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shyti, Andi" <andi.shyti@intel.com>, "chris.p.wilson@linux.intel.com"
 <chris.p.wilson@linux.intel.com>
Subject: RE: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Thread-Topic: [PATCH] drm/i915/gt: Add delay to let engine resumes properly
Thread-Index: AQHbrrgepuuS3YVLp0mXKlpJB2mvQbOyy7GAgAdu7pA=
Date: Tue, 29 Apr 2025 07:01:36 +0000
Message-ID: <SJ0PR11MB586797751A19E64E52CABECAD0802@SJ0PR11MB5867.namprd11.prod.outlook.com>
References: <20250416103640.212269-1-nitin.r.gote@intel.com>
 <y2bztat2u5oqbrkottn7fsup2scya2hpxft6olazvj2yu7vlks@c3m5ji2zoacd>
In-Reply-To: <y2bztat2u5oqbrkottn7fsup2scya2hpxft6olazvj2yu7vlks@c3m5ji2zoacd>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5867:EE_|BL1PR11MB5256:EE_
x-ms-office365-filtering-correlation-id: d8024ab9-023a-4383-45e8-08dd86ebaed5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YmdpUTlMckNQbTMvYmRmNWtnTkdSUlppaFdWa0tOc2hUN1ZWWE9NZjlQRFpt?=
 =?utf-8?B?d1ExL2MxTDk2S0FoVzFJR0VwVmgrWnhpSURVcE5qYWtLYWhTVzBJeEhoRCt4?=
 =?utf-8?B?eGJIbFRQYVlVTUZLK0wvNXlpdm0wRDN1bEIyODJxczZzNitZcHRsSW45TE14?=
 =?utf-8?B?SjVaRS9JbFg0dnowd2I2V1lKakFwTUFFRDY4bExvTzNEWiticmQrNmo3blNs?=
 =?utf-8?B?bjlZMmF1UkxFRXpqK01lM2JqZVpoK3NOZWlUNXBsZjkzTENqM25kUzc0TlZz?=
 =?utf-8?B?THdwRU5ibGdqdXFTY3R0WGVrSzU1SFdMRnZURms4cVBVQXB3MFJza3ZBb1Z4?=
 =?utf-8?B?U0YwOVJ5SWdiUFBTVTdiQ0pvWStZYmdrdkNkUktoaGZzWGtLbVh1WEVvaEto?=
 =?utf-8?B?MTJoWlJMRGY0Zmw1RmRXV0hnaXBadkd3aitlSDAzT0dsem5hQ0dJZUZuSmFa?=
 =?utf-8?B?R0NKK3F4RDFMbWwrNm5FMkdRaTkwNm40YW91SWJqYU85VVZHRVVTRThha1V1?=
 =?utf-8?B?c0I3Y2ZlMGJwNks1TlhXNFY0QkZ5djZEdEM3MHZ2TU1VQU5pZGNlZkxkZ0NJ?=
 =?utf-8?B?Q0dMZlBxRlZSTENiYUtncFcyTTVpaUlBNVlyMmx5dDdLcXlGWHFhcVdQNnRs?=
 =?utf-8?B?Tyt6TlRISUdJaWlPS2IzUlQ1ajhSd294MmZPSmU3aHhuZXdkVmlzeTRmcmVM?=
 =?utf-8?B?Y2FMT1c3TEhEYndwa3JpbkVaeTJvRXRHSlRlb1ZBZnR0ZWd5VHo1WDBFVHIv?=
 =?utf-8?B?U3h5cEdRdXAwN2lFekJUbjQxMWJ6T1lrQjc1RWtCZXAxeThkbkNUY01GbVh6?=
 =?utf-8?B?Tnd4eTlUVEhkcUZuQmxnUEI2NWJqQlRocmt2bjhDc3Q4NUVJOHovZ3NSb2s5?=
 =?utf-8?B?QkJmTUIxbVVIbURKMU8zRVBTb0hNZ3FBcEpQbVlRcDYraktLdU0xU0JMR2hh?=
 =?utf-8?B?eU9PVEMyRzYyU2JjazQyRVgyMXEwbVhsVGcrSVFEMzJxeUN4MlpTaEhVWXZk?=
 =?utf-8?B?UDBtTEFWVVVoeGg3NGZyY2RFZmk1RXcvU1BLK094T3BjdlRPWnpFdkNVUkN4?=
 =?utf-8?B?R0dXSVpoRk9icDBQZ3hXSUEwbzRIQ0ZWK2l3eFRjRW15TFZqblFwS2Fkcmk0?=
 =?utf-8?B?WU5BMXJJYTJWRnBsNmtDK0lBT2VWYWkyUE8wT01hVGp2WHFyaTYwVGQrbHY2?=
 =?utf-8?B?R1poK2pHd0V5RWRvUnhhSDlBMnpTVDBleXllMk9MOWRHbkVoT2sreFdjZTdQ?=
 =?utf-8?B?bWcvdVF2QitCUHpQeHk1YXVMWmRyR0VBcll2SURhblQxanJ5NkUzc2dSVWRG?=
 =?utf-8?B?NmhmVDJ5eGRNWXhGT3dXTmVQYkgwNGZ6eUR1ejZwNWZ1UGNPTHBTbzNQd2wv?=
 =?utf-8?B?WTFLTTZ2aCtjM1d3NnIwTXpzQUVqWlE3dmRDV0V5eHNSODUyaTQ4TVB0YkxN?=
 =?utf-8?B?VTZoa01hMTN0WlI3ODBFRzdlQy9WNitGdHh0Yjg5QTdIOVJscFEzMU9xaWtN?=
 =?utf-8?B?RjV5NWJrM1ZJSll4SG1ueVdCeVUwM3VmTmlKM00vaStqRTJKbTVWMFFFWUNr?=
 =?utf-8?B?c3c4RjB1NVNRNnlUWDNFcXYxQk5SMzhsMlRkbmNlV3JlMnhtSklDQ0pXeitx?=
 =?utf-8?B?cFZaUjBoayt5cXFNWnpEZ3Z4L2lNYXRoWXFBL09GQXEvT1RNQkpBUU9qbzk0?=
 =?utf-8?B?bzlFK2VESVBRNGJCUXdlaWtnaEt1TjNBS2dibjJOcGU3YlhsS1hoVzgyaDRY?=
 =?utf-8?B?aENxOU9JWkRRSW5wT0Z2WTU0Ri8xajl2OHc0dHZtWDZuVWFKTHcvQ1ZTVnFC?=
 =?utf-8?B?UGtRdm9xazZMSE5oUVdWWU9CQ2pCcklqRnZFU29odlRyWU9TOHp2SW9GVzBX?=
 =?utf-8?B?dEEyemUxckdYS1VqWTRpNVREODJ2TGEzN0xrZVBRS1JERlJZdXc5aE8yanVl?=
 =?utf-8?B?dnBrK0YrZUlMVUxhMDU0VTZaa1MxTktublFYYUdLNU5HQnlHbGVUVW56c0JR?=
 =?utf-8?Q?fiJ8K80zK61gxm8G47qx1/9Dvin/ng=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5867.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEgyRzVHNERySFo2ZjI0bHlWK2MyOGVueTh3QitESmhBckh0Ykh6blUraXFj?=
 =?utf-8?B?MmNDTnJMamlsamlCTm00YmdiZnVaVHFpWGsxdENkNUhhQTFDRTVmalYyVnd3?=
 =?utf-8?B?S3hlVi8vMHhxZ01xTDNFSEU0UDFBVVFVaE1YUExxTUMwaG1FNW1vME9iN0Vm?=
 =?utf-8?B?OTQvNTJqbDdsV09ETmNERmpJdG9nbkRieWZwTDB2L3MvQ0g0azFWM1lNeUU2?=
 =?utf-8?B?YnRGVnRiR1RZN0JQQ002ZWtORTFJWjVPYjMxT3A4ajk2YURGTmt3Q1VuOWor?=
 =?utf-8?B?aGNMNzNVUGpOVnpETE9mekNSYU4wK0RMdzlIRys0U25POHVYN2hMUllIcllH?=
 =?utf-8?B?bytwbUU2cXVFVkloYjU0Rm5jOXJNazdEOGg4KzRScHhtTFVmQ2s0ZjB5RUs4?=
 =?utf-8?B?UkI4Q0tSOGxYaGEvOURVRWNGRVhtYWtLU3VKaWQ1ZE10M092VCt2aGxMa1RK?=
 =?utf-8?B?eUpQNEhpSjBnaXhpM3RtUENET01DUnpsQ1RncXJBYWdqN1g2OHFaU0U3OFFP?=
 =?utf-8?B?QStMVFVWNGtScDdaeCtKNjlOYVlZRlZiOGFaNDFJbjA2TmRaK2RTSWFkS1hH?=
 =?utf-8?B?cEs4N21JNC9kVGpYV1N6SVZOUEJDQSt1Vkc1MzlkWTdBbTUwdWNkejRsSlJQ?=
 =?utf-8?B?Tlo5d0pGakVaUk1BLzdKRndHTVplZ3hHUTdIa05iTWx0bmFZSVUvUEgzY05L?=
 =?utf-8?B?dlpCWXI2TlNGa2R6ajZTMDdFcDc5ZXVlU3JUZ3c0UmtMSVNKRThoWGFnWGM2?=
 =?utf-8?B?dmdkSTFRc21tb3pqc1BCTWJBdjJRM2kybVU0a1I0emhjZzN2cmR5ZTk3U2VE?=
 =?utf-8?B?aUxKU2FUUmlrSTVmc3ovSVNKcFNKR2JNbzRSeUg5d1k2cEtxM0NTcmNxQVJS?=
 =?utf-8?B?dDB5TXpFbkt6czZDb0RVVmhLY2kwRTF6TXNCR1lnS21OS3RzTmp6SUV3bnBU?=
 =?utf-8?B?dVZkK0pQRzBNaXoyVzg0cnIyWlpiMk5EUWRJbmFnby9YVGc0NTlVc2dRek9B?=
 =?utf-8?B?T016MmJDWXpmZ2ZuWW9kazd3c01zQ1RSYVlIV2RYUFVSMWxZWFB6ZUtKelJS?=
 =?utf-8?B?Nzk3SjdFdmpWSUxCWTNSSTRBQW10SmxKcm40TkQzaEREeDZSSm55VWpTSmN0?=
 =?utf-8?B?a3p1dmdVTmU3emtxMEF4TytLWVcwbVRBU3RwZy82TEx6Vk5Gbi9iaGxuSCts?=
 =?utf-8?B?QSsrUFl5dnRuN3ZJVkN6bjkrQjVpRDhrbzkwYmNWM2ZSY0ZhN3h3eTIxTlpu?=
 =?utf-8?B?MTluUmZmWWVuR1dpWXJURmF2VElOZENTS3BUMGFndjFMMHJsdEJsYktmZDQz?=
 =?utf-8?B?YjNPMXNxVFFjYmFXaTdZcWxHRHhzZExEMUNxbGYzYUZvMUhZTXdvc3kvd0Rr?=
 =?utf-8?B?THBVM1dVVHFNL2xDeFRpZjZXV1dXOU1iaHNBLzF2Sk9heTZBSGMvUDNoZC9a?=
 =?utf-8?B?Y3NFSlh3VURyMnZsRUJhRDN2TjJGSk1HL0YzNFZrb25kY2trbys1RHJaYUpo?=
 =?utf-8?B?K2h6MWMvUzg4eWRmVTRuclVCaEx0WThrSlkrcFhHOGhJV29iU3ZBaFBPOEtD?=
 =?utf-8?B?emdqUXN1QVIveHFlV3V2ekt5czRyZVZDSVNWTmlwSG42UlJOUDFjeHJxZ2pm?=
 =?utf-8?B?bEdmN21keWU0NGtzWDAwNXkwZ3NGZHpxczB1eld4R2t6N2lnK1phWGtzRzBl?=
 =?utf-8?B?aDFxOUp5Vnd2MFFyTXVQNFNKYVQrVzhWam5HZlE0TDJDODFwRGxhQ2QyL1lN?=
 =?utf-8?B?ZFlpUTVkVktqRE9Fbkd1YXBWTmY2RndKU2sxY2NpZDhoNS9XYWlKL3dmdHE2?=
 =?utf-8?B?MGxDbXZPcEVKL1llN1dSSVczNGtzTW1aejVUdlNvV2RIbVVKYTdBVkFQUGMw?=
 =?utf-8?B?NjFjcnQrZWpPNDRqeTdLRmVIUVVkVHBMb0MzTW54dytLYURSc1VraEd2VXpH?=
 =?utf-8?B?VWROeWQrc1RNSmQrdGsydUlrNll3YjVsQU1LVkwyWTFLOGVDZU13aXRzNVAy?=
 =?utf-8?B?YytBYjY0WFR6OUxsaGZUUTloYXVGcVBJbUdhejg5UDR5Mmd3UE14d2NpazBR?=
 =?utf-8?B?UG4xMjVoaU1RNlU4UktnSUJNdVVIbmx4U3A2ak9rQURuZ3kvMDVjRzB3U2Vk?=
 =?utf-8?Q?Q+j91AXHpNMfIG0ti7OCcOKkL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8024ab9-023a-4383-45e8-08dd86ebaed5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2025 07:01:36.4853 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EKJ6xHqtq/HpGO/pj81qUFjcqeMS679/ABK6NzCFbcagS5NxA+S8piXfwmwCaqqnVU5hQ+nMXg4XG6+gbaknvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
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

SGkgS3J6eXN6dG9mLA0KDQo+IA0KPiBIaSBOaXRpbiwNCj4gDQo+IFsuLi5dDQo+IA0KPiA+IC0J
CWlmICghc3RvcF9yaW5nKGVuZ2luZSkpIHsNCj4gPiArCQkvKg0KPiA+ICsJCSAqIFNvbWV0aW1l
cyBlbmdpbmUgaGVhZCBmYWlsZWQgdG8gc2V0IHRvIHplcm8gZXZlbiBhZnRlciB3cml0aW5nDQo+
IGludG8gaXQuDQo+ID4gKwkJICogVXNlIHdhaXRfZm9yX2F0b21pYygpIHdpdGggMjBtcyBkZWxh
eSB0byBsZXQgZW5naW5lIHJlc3VtZXMNCj4gZnJvbQ0KPiA+ICsJCSAqIGNvcnJlY3QgUklOR19I
RUFELiBFeHBlcmltZW50ZWQgZGlmZmVyZW50IHZhbHVlcyBhbmQNCj4gZGV0ZXJtaW5lZA0KPiA+
ICsJCSAqIHRoYXQgMjBtcyB3b3JrcyBiZXN0IGJhc2VkIG9uIHRlc3RpbmcuDQo+ID4gKwkJICov
DQo+ID4gKwkJaWYgKHdhaXRfZm9yX2F0b21pYygoIXN0b3BfcmluZyhlbmdpbmUpID09IDApLCAy
MCkpIHsNCj4gPiAgCQkJZHJtX2VycigmZW5naW5lLT5pOTE1LT5kcm0sDQo+ID4gIAkJCQkiZmFp
bGVkIHRvIHNldCAlcyBoZWFkIHRvIHplcm8gIg0KPiA+ICAJCQkJImN0bCAlMDh4IGhlYWQgJTA4
eCB0YWlsICUwOHggc3RhcnQgJTA4eFxuIiwNCj4gDQo+IEkgYW0gd29uZGVyaW5nIGlmIHhjc19y
ZXN1bWUoKSBjYWxsaW5nIHN0b3BfcmluZygpIHRvbyB3b3VsZCBiZW5lZml0IGZyb20gaGF2aW5n
DQo+IHRoaXMgdGltZW91dCBvbiBoYW5kIGFzIHdlbGwuIFRoYXQgd291bGQgcmVxdWlyZSBtb3Zp
bmcNCj4gd2FpdF9mb3JfYXRvbWljKCghc3RvcF9yaW5nKGVuZ2luZSkgPT0gMCksIDIwKSBhbG9u
ZyB3aXRoIHlvdXIgY29tbWVudCB0byBhDQo+IHNlcGFyYXRlIHdyYXBwZXIgZnVuY3Rpb24uDQo+
IFdoYXQgZG8geW91IHRoaW5rPw0KDQpJbiB4Y3NfcmVzdW1lKCksIHRoZXJlIGlzIG5vIG5lZWQg
Zm9yIGEgdGltZW91dCBmb3Igc3RvcF9yaW5nKCksIGFzIHdlIGhhdmUgbm90IGVuY291bnRlcmVk
IGFueSBpc3N1ZXMvZXJyb3JzIGluIHhjc19yZXN1bWUoKS4NClNvLCBJIHRoaW5rLCBjdXJyZW50
bHkgdGhlcmUgaXMgbm8gbmVlZCBmb3IgYcKgc2VwYXJhdGUgd3JhcHBlciBmdW5jdGlvbi4NCg0K
LSBOaXRpbg0KDQo+IA0KPiBCZXN0IFJlZ2FyZHMNCj4gS3J6eXN6dG9mDQoNCg==
