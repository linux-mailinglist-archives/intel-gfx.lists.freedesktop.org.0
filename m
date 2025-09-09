Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E705B4FBED
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 14:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A42510E6FC;
	Tue,  9 Sep 2025 12:59:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tio9rsO8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5218F10E6FC
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 12:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757422753; x=1788958753;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wQ619dQud2VczufUqR2ayH/sS/O7UGo5znTQOcRw3Cs=;
 b=Tio9rsO8Zqz5fbuX/tL3xzJRMbxCVCmWDlFM3zrXaCYn1vo4/I/gmEnZ
 8WSzxnHKGdOjsx13XjjuNeU9ZJdUr4EoJkIu0rBIDEaQVJgTFfgLCyV82
 +b4ZYA/kK9Vc4bt5rXOoCyI2REDx4VKXGQ0VqUDbQw5XRpEB0Z8SlQm4R
 Bmho/6gXbPn7plfmZEj2ee6HUVlWKhc/0WDKjJUASjxQx4LkayfmvSmY5
 t46fRpmjQAwcNakpiJrJHGrpmuAoYVLQQPsF6dvLC28ImkfxT3QgTfRhd
 iWERz+2Ihfp53qxTzcaNPFUI+56dLY1nFO2Fgb1oZfiRWaKmAGYYzWAW1 Q==;
X-CSE-ConnectionGUID: 5UR8vOqTQh60rER9hsMkAA==
X-CSE-MsgGUID: 0qFFkxIrRHi5J4hMBE/kqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="59642397"
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="59642397"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:59:13 -0700
X-CSE-ConnectionGUID: TJjpRbgdS4+DlGBUMAMCKQ==
X-CSE-MsgGUID: ajl2unF9REi5ymWO1WnX7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,251,1751266800"; d="scan'208";a="178282093"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 05:59:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:59:12 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 05:59:12 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.84) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 05:59:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wfPCU47K7ftCvGi5qAgHcYRJ+aX5UYS9HxdfvsfADemcBSIejwr1b0k6QroWSXB4DLIRKbWoRhOyu08SSyBJyHB7oyBoij4Va0/8oilug4nj4UKsyGChLznE2YMzSxF8KflxEVs1HOj81QfSxjZ4K8pGH9egj1Lg8pqB7R1+TjXWx6iI7b2taZFE6o1/Jt9XTrNMYD402siRwySyBj71h1hOejf2t0u75aKdWsE2MiyCXVNDrTZZoKoM3Okga2i/i8ye4nPs5NOJQ9q6/RDW+XcB9nXSN1sOlM3rh/DR4/Dc6E78Vq0nOGNJJiiniF0+x6T4vpfydmMuKPa1OSgO3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J04j0XWK9CVQU9Zlq+e2+Mm5qcSlDulObY68jb2aeoE=;
 b=tpxaa9T2IXL5b2uk0et066wM7ecN+5SSxj7rOydXq04lXZIo59CkPCzrxGVYt5Z3SzZSgva1Nzh32X3mEHg/rXhT5dm+Dte09Y2c/EmX0K1h0RhE3970vJGBoLxUbJvpJAL5ZW1mXVOlxW4h+Ln3MCD/eGcTuxSyvr0ZMjnBVWli/dlXYkT9mdFcHOuFrmr1Okt48uTuxs5/iOaPHSlhfMSFdrIyQ80EKTpBdHuBtCRch1SVpSpOqW5pF6LxWehYKAo8bzUT1pJRda1XCF8JAQgQQiE0B/cboh9/saFaIFUhZDywCQxp698LjHJ+K0ekAwHu6fjEG+96mwnb60TuEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS7PR11MB6127.namprd11.prod.outlook.com (2603:10b6:8:9d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 12:59:10 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 12:59:09 +0000
Date: Tue, 9 Sep 2025 12:59:02 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Thomas Zimmermann <tzimmermann@suse.de>, Jani Nikula
 <jani.nikula@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 3/5] drm: Avoid undefined behavior on u16 multiplication
 in drm_vram_helper_mode_valid_internal()
Message-ID: <827eb7e52afb3e2a24988e4e12479a2a83b1400e.1757416325.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757416325.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757416325.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: TLZP290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS7PR11MB6127:EE_
X-MS-Office365-Filtering-Correlation-Id: 495241e3-f401-4a42-32da-08ddefa0aa8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UmJJVFRYMHdlWkR0YVJaZEh5TjJjcEVPcERJSFd1eGVnQWtjR3h1R3MzMW5W?=
 =?utf-8?B?ZTg2N0xPcEMrcVdGdTJ3aUc2WFplbFAzTDBhSzhnNXVtZnlOclgvbTlXUnJC?=
 =?utf-8?B?aC9udWJTWUZXQWI2UUc1MHV0NTlDSm9WVHVkZVBRRjVKS3ZxMFlGeWx4a3hO?=
 =?utf-8?B?M05yRDl0MnpmWHBCM0lMSDBXYXY1bmMyMVJKdTVJZkhjMTJXZERRVThvMjFU?=
 =?utf-8?B?NkNKWEFuQTRKc0ZEUUJJM0lyZTVnS3h3ZVl5bm1ZTWFaZW8zRzhZVHMxbWhJ?=
 =?utf-8?B?TTJlenVYcVc3UFBoaWdnaHcydER4TXhoenBEZUVKQ1YvWlF4VlFOZ0pXMlN0?=
 =?utf-8?B?bnNOSXhGLzMzVG96L3pkOG81NHl2M2h3eENuOTdFRWtyaEVOajJaMENGbTlw?=
 =?utf-8?B?cWJNM2JETDQ0eXRpbG5nbitzN2c0Z3JYQnQ0YTIwTlNyUlhMWElQUWdRME13?=
 =?utf-8?B?QnBZRlM4TXV3V0M3ZmN4eDhRSDRXcWxLeTRJbDFkLzlTUzVROFBZZUlGRE9q?=
 =?utf-8?B?Z1BWT2xCVHBVNDgrRGFpelk1Q1VIVk11c1F5LzVaenloOUhSVjRiZHc4dy8v?=
 =?utf-8?B?cXRvOHA5WGlmSWZqM0R5ZmtseE5mZi96TFBRMC95Si82Zk9wUUw1UjVjZ0Va?=
 =?utf-8?B?WTN6eFF1ZmJoZFlESkh5ZWIrM2tDUE0zVmZHU1JvN3dBQTU0eW1XekI4dVJr?=
 =?utf-8?B?NEFuRWhVanBwNWVycC9zTTZDR0ZRK1pORVBpcGRLaVdzeU9DdFZDemZ5Rm9Q?=
 =?utf-8?B?ZktyRXBObFZ0L3IvT2RxdUxRUTduQkt1Ymh3ZDcrNzBJQTh1aTBBTkxpQk9P?=
 =?utf-8?B?dDBYVnE2UjBEYXMyeUM2OGhycEplTExIRFZ2MmhReHMxY0wyYVFwMnlOY3B1?=
 =?utf-8?B?ZFNzUFdzeXJWejFEWURKbWIyeUpJNWU0ZklaNXVWL1dzVkRPcXoxcndvVith?=
 =?utf-8?B?SVY5eDdNVTVrU2hzdlY4VkNZMzZNbEp5M1dXNTk4ZzBiWDZYb1h3ZWczbVlK?=
 =?utf-8?B?emdyYTg5YXVHK3VWMEVTRUhPTE03bTBHeXhqQTRSSDMrNVVLM2syY28vWWRW?=
 =?utf-8?B?NnVIeWdtNkREZUF6WUF6SFVsYnhnd2dsbEJQemlCMVc4RzBGeWNGOW0wSVJ4?=
 =?utf-8?B?TGZseEVCNU93M2wyWEZCMThDT2dkSnRuNzkxMnJuYnFIRTlzamV6RjlpVjVQ?=
 =?utf-8?B?OVVRN2ZHVXQ4QS9nYU1zQng2VU5RUndvZ1h1bi9DWlNXRjV3anF2b2lyRnQ0?=
 =?utf-8?B?SXRSZy9WQmx0SFlkdlpveUpOWkhPSFlneHNpbUU2M1h5N0UwQ1dadDFhQWJK?=
 =?utf-8?B?Z2t1UmE2bGgxNEducElDbEJ1NmVXb3ZmVVllNnFRdlNkRjIvdjZDaXBOYm9r?=
 =?utf-8?B?Y0d1V1lUQisxUnRaQkJ0d1JnR2w1MkJ0OGxRdzVKNUdNRkxhWUJiellxOWho?=
 =?utf-8?B?Y3lhZnY1ZGFTSHBBWnFuYVRGeDJEdjFrY0lzVU96bENLOHJmc1NuRHNTWU9Q?=
 =?utf-8?B?eU5qUkVTOEYzQ3o0d1phaHFsdTNMaDMxZ3NFWWpRYko0WGQ2QUI3NVhNSDgw?=
 =?utf-8?B?ZU5jRW1XUm1CK3F5T2N6UzJJemFLYWoraG56bXUxN3dFQlZaUWtXV0Q3UStY?=
 =?utf-8?B?Skx5SUNQK2xiWWhXRTFkbEtmbzRXczNzK3UwbGhjWUU2cTI4QUFYcEtjYklN?=
 =?utf-8?B?bHU1RnV3Q1M5b0RROCtvYUVXVmhiQmVIMDhjWkFnWVhYYnNYclpNcjkwOVBv?=
 =?utf-8?B?TlpRVnVJYUxXbm5ZWWo1R1A4MDJ6dkd2YXdmV01DdVYyWnpJcFpQTW44eHJT?=
 =?utf-8?B?K1NiazhBMmkzUkxpdkJmK1JKbjNBSHAvVXNMbmpBYi9mMUE4UzV4MEM0SCtJ?=
 =?utf-8?B?QWNONmFYUFFhQ2RLRi9PaHp4Vm5SaGF6aHdrc25XUGdibXhuRkR4Z0Q5NVB1?=
 =?utf-8?Q?wK4EF/67GPE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2xsUy9EN0JjanIyUCtZdWNOcXcvbWJNcE9xeGhvY0RkTEI4cmFkaFgxVmQ4?=
 =?utf-8?B?ZGRSd29YYzJWNlNGSmo2d3FBRWQyLzNjK1R3QTNwMFA1WXhMaHAwdkpRblFq?=
 =?utf-8?B?UGtYV01CZDN2LzhGNXNkLzFwZFQxVGRXQmR0VnhvdGp4ay8wVDlocnVpVlha?=
 =?utf-8?B?N3AwbjF3anFnZFJkTUFIMGlMVzBXclkxVDExak5BT0Nqa2NVSzdjQnFjN2VX?=
 =?utf-8?B?ZDFqcEpoRUduTTBUdGNsNE1XdGdZa2JwNDRjU1dpSUhKczJ3bzBVR09sSVFE?=
 =?utf-8?B?MXJMTUhOMmRUWWhUMnhwY3VVdnVvWDNwUVRWSUhqbUJyVENaenA4ZkpUS1R4?=
 =?utf-8?B?ZmdEeXVJNnF3SGFoMXBmYlU1UXNuTHJRZ2FUV2s2ZDhDeEJHRVhZT2EyM2xl?=
 =?utf-8?B?dklpVHp3U1A4T1J4c1lXcGREalIvb0xtemI1dTdJYWhXMDRFNmRHenMzelNZ?=
 =?utf-8?B?enVhYjcrcUc3dU5jSjRvZHNWY2hzeVNWbnNGbWlBYmJzYnlkOVB6TnhsWlcr?=
 =?utf-8?B?OVhRZHV2dS9WR3V6eWJtNFQwOGxkRjY2Y1BzaVVocUVYeW5McXZPYlFjbzhN?=
 =?utf-8?B?bm5ibWloVys4NUtnNk9yV3ZBV2JSOVlZd2ZkZnRMWkJuU0NNVmcxUmoreUs4?=
 =?utf-8?B?aDNCU2FBbys5NC9SN1FKVzIvNHphSHRRaUErQlJXSlJIMWQ5dStqVmFMdUFt?=
 =?utf-8?B?TUQ4aDdZdFF3b0ZQSGswMzZBejdsWGh6RkhVZkt1WUdhbXh4aFR4MlNDSjNF?=
 =?utf-8?B?ZEh6RW83S1ZwWVZhNTdlaU5pWStITC9CdXdCekJ4RXBYNnJYa1hqUXNzRHl2?=
 =?utf-8?B?cGdRTlNHSjI3czhoc0Vxc0dHeTBRT212c1RVUVNsTExwa0pOWnVVUVdDY0lO?=
 =?utf-8?B?THNxb2tkNEloVmptcEE4Zm8rZnMvS2tEM0IwWlY1MVVpYjJld2M2WU9uSFVk?=
 =?utf-8?B?dGtubFhsdzZwMFFLRTVZT0xOWlVLK2c0Z3g2TmQ2Ukh2UHRrTndMa1J0NFNo?=
 =?utf-8?B?MXlFSFhUMzd3SGxSK1lOb1ZuSXo0c3RsY203TkRVaWNCL0JWckoyU3hNSDB1?=
 =?utf-8?B?aVVOWDlrWGdQNFFldDRTckhNZ0p4VG9wM2VZTHJMcFJVTWNnRFlpMytRbzkv?=
 =?utf-8?B?VXdYd29NRlBETzY2RjAwc1ByYmo3U3JGdG1PeE01NFBUdm5uTmpNSlo2OUVC?=
 =?utf-8?B?SVdNTHJFRzFzdlRYK2NwUXFwVmRzUXFmWWRTNmQxSlgvdDZCMFFRL24vYmxo?=
 =?utf-8?B?bWxSUzZ5eHZCcE1lRHEzVHd4Y0F4blZPSm9za3BxVnBiMDR3UlN6cXRGeEdE?=
 =?utf-8?B?bEJrUG1wTHlxeWlXenQ2RFh5cTVPUktRaEpLMnMwOXUwTEx4MU5EZE5BNlE4?=
 =?utf-8?B?c0NGbFVtV0JUK2k2eS85aTJ4V1FlRlBWb2VyeHZ0Vit4S0U0WG9QTEF0SnFB?=
 =?utf-8?B?cG9vem1wR2xpakIwSzBUOGtlTE01Mmg4OGtidWFGdy9PVERkOStnNHNqVmJs?=
 =?utf-8?B?U0dWTENsSHJsY0JCZXdLQVdmalhtNmh4N3NEVVE0S0ZxWk5BcTBRaUhBZXdP?=
 =?utf-8?B?RXJwemdsUFVXQ0dsbS9WRnJwbEk0TnZNb0xSMnpZeFhVT1BWaDVpcXFldTMy?=
 =?utf-8?B?ZnJCVFM1cEpvdTJ1bjdjQmUxczNDWGdiLzRiZnY2MlZ6UjYycGlDVTMwczdp?=
 =?utf-8?B?TlNFbCt3cHF5STNOT2RieTRKY1kvbGlDWC9NL2FhWEhQRGtHemZSVzhTMTBM?=
 =?utf-8?B?bDJHTGNPWVZOUlNRMDA2UGRCSWV2U2NiR2NYM3dUWFdvRS9lU0M5aVpycytK?=
 =?utf-8?B?T0FOb3BIUzR5M0JlSjY3MytsSTl1RDNuWC9URC9xVWZHaG1lbzRLdTUraVo3?=
 =?utf-8?B?ejNsekJUOWdlalF0a3ZPSGNiLzRYTnlrZmJoK2NUb1pnZ29ubmZPbUttZ0xz?=
 =?utf-8?B?YUdvaUxIV1lYVC8vZWhSbjRCZnB6Tjg4NG9nQTYvcHF1VDdBY25PNldGcUtp?=
 =?utf-8?B?Ykt4T3ZPdEJjVEF1Ui80NlhhOEQwTmlTZVgzTTlWcWhEdjRhOEJrdHd5Nzdo?=
 =?utf-8?B?SDM2aHl4NkFaVWN1ajY0OTFlSHAyRWVsNEdCSjlxMnhBeE5nVVZPTEd0RHJs?=
 =?utf-8?B?NXJlVVU3U29UQTI5OWhSb2pLVWM1OGU4VTVudmNFOHFlbk5aWkV2TWNZTnhT?=
 =?utf-8?B?ZkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 495241e3-f401-4a42-32da-08ddefa0aa8d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 12:59:09.3076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V5UEn4ExJU9JfClFrygnylYtIGv0aZAjZPcqXXHEjgSlnqiNvwjQLTS8tnsxXhjnbR1QT63OrWNK8BTwvGtl7y1Qr/fOJku7G+3nkA0TT4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6127
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

Fields hdisplay and vdisplay are defined as u16 and their
multiplication causes implicit promotion to signed 32-bit value,
which may overflow and cause undefined behavior.

Prevent possible undefined behavior by explicitly casting one of
the operands to (unsigned int) type.

Fixes: 80f7c3f77697 ("drm/vram: Add helpers to validate a display mode's memory requirements")
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: <stable@vger.kernel.org> # v5.7+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_gem_vram_helper.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_gem_vram_helper.c
index b04cde4a60e7..4b144e9603b8 100644
--- a/drivers/gpu/drm/drm_gem_vram_helper.c
+++ b/drivers/gpu/drm/drm_gem_vram_helper.c
@@ -967,7 +967,7 @@ drm_vram_helper_mode_valid_internal(struct drm_device *dev,
 
 	max_fbpages = (vmm->vram_size / 2) >> PAGE_SHIFT;
 
-	fbsize = mode->hdisplay * mode->vdisplay * max_bpp;
+	fbsize = (unsigned int)mode->hdisplay * mode->vdisplay * max_bpp;
 	fbpages = DIV_ROUND_UP(fbsize, PAGE_SIZE);
 
 	if (fbpages > max_fbpages)
-- 
2.34.1


-- 
Best Regards,
Krzysztof
