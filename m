Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5F68FEFD2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9B810E0D6;
	Thu,  6 Jun 2024 15:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dljuEueZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E9810E0D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717686204; x=1749222204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mB7Tmkl5wcaNRdEmOrdjOrj4ijJs8YWl+N2ODKhmr0U=;
 b=dljuEueZJ90+6d0BS/LlL4cPmpHNYYYJwe6ofOBU7bRH1wUHhl/S0g6q
 Bs6IMQBDihIONpah/Br2sb+h6FJyTvO708tx5QidLR/ia96FNwkUZjfKw
 GpH07a7fNW9ANJbgkggDRL1P4HLMCc9Rs3rSkwhy3PK6+B5CW4Bboi8lN
 EwQjZsj56oeayiT7PmlMM3iqeaiYKctrLYCTLNiJLCp+8LyEKUZwQQuTe
 cDsICSo0Awa5geMtGrbHVtHFSaivIqZZzjJTSB+OMq9ZLr94hEt+S5g15
 0dXG/RCrwtz8HZTP09SJNTtQsi+le1e/lFctASsD/nmzykV9tJXFHs7G3 A==;
X-CSE-ConnectionGUID: 4rzc2VlqQi61mm277bq7tQ==
X-CSE-MsgGUID: X/ay/GKESu+SQoDHHkvUSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25016862"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25016862"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:03:02 -0700
X-CSE-ConnectionGUID: no26StMQSZ2+Ttgeks1zMw==
X-CSE-MsgGUID: KdKfSOBVSNuiUnF0J+2HyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38107996"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:03:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:03:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:03:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:03:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYyzgTJMjTYX++dtH1DnN9Bh4Df9FtVKbM+2/XtomGykCXrtnoUUt4R+9udzPIHzS3Ygdk2zUK1njNnVoLld5B6KrWgrWUzodQ5bqmNZgieFj09LWIfyz0NyidC8vd0O0GqMPhWbjqxnHrDD3+ujbof/YHY1646ifQPp+SWIuTEYZAQbUNGeiFI173eEarmkMmmaKfD3MmuC32aSr137h6k4x2K7hokEiKTUBQoLGori21vGOLLLVFjWKL+iq2F5eik27mAtjh8s6R46XAJGElTDYP/TKNgyOahREL1rajH8slRUQ64EpcyOjQXHFn0g80bErzbybVa0XkHncCYH1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mB7Tmkl5wcaNRdEmOrdjOrj4ijJs8YWl+N2ODKhmr0U=;
 b=FFRkqMBTCJ7D833XeUGiUJvsTPKp0ouvShMMGpUpVx8ptRWT+5VmY1xeuOwcf1ggBQRUN3qWcq7YPsCjWSu+c6Z+wljk86UKrkR/Xwv/s1mvLboAr3KcN75QZp7pNlq7cH80vPejA3jAzXzM9R+UlQY1nF5MM5tAEaYLFeLRpgoHf7cTXkU3sCgZLm0NfWGdVzE/4GrXivJsctbP/0rgfBPiQZ71b3V8AV0oq9NnBh1nFLpXpWp3VZQr/BjGtWtDo8EufpdwEKyhZEoC5ApofiYvMcCkU/4NuOgrOQGwhxquEyZ6EZf5HGvqDaMeREY0Nb7Su4b239Gxt3sGit4LJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW3PR11MB4713.namprd11.prod.outlook.com (2603:10b6:303:2f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 15:02:59 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 15:02:58 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 12/26] drm/i915/psr: Take into account SU SDP scanline
 indication in vblank check
Thread-Topic: [PATCH v6 12/26] drm/i915/psr: Take into account SU SDP scanline
 indication in vblank check
Thread-Index: AQHatzLonGiLrIyVN0qtvKzX3OCmTbG61qOA
Date: Thu, 6 Jun 2024 15:02:58 +0000
Message-ID: <PH7PR11MB5981F18F8A1EF7C7AC4D3A16F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-13-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-13-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW3PR11MB4713:EE_
x-ms-office365-filtering-correlation-id: 1a82a5f3-174f-4293-c9c0-08dc8639c0fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?b1dYZDJxUjNtQUxXalJEbWVoM3ZFZ3UzbTJacFdEUTRaeDVLUGFOdjd1eWJ5?=
 =?utf-8?B?Z1VBd1BaYVk1N3dyQ0UxeXRBYzROcGJtWk1DdTVtMEJqQ0dZdTUzcU1KWXFt?=
 =?utf-8?B?dmcxVXE1RG85N2c2dzl4Q1l4dklkclMrUFgrN2htYy81TXJCNWRNZ1hKUHRu?=
 =?utf-8?B?dU04M2EyblZza09zZHpESC9Ha1dRYXJLR05ZcEpZdzFEVVRiTTNKbGdRR3Jn?=
 =?utf-8?B?L1hhSW9GUWFkS2lVZ2NBNG5vZk1ZK3NFZTl6VGk3RkpDaHVOd2lWNCtCWXoy?=
 =?utf-8?B?Z21Iem41OHFHcTl4dmwvclF2R2R6RDdQM3hWZXlwQ0puVU9QN3p2elBnR2tT?=
 =?utf-8?B?K0F1eHIwNzdLeVJIdEtjb0c5QklkNzAyV1pMbnFuVmNjdCs1RlRaemRZSmxl?=
 =?utf-8?B?clo0SVQzTGdMaUcza0d1ZHlSMkduRUJPMmt2cWw0WUlTOVpKeTMxUjZJQ1VG?=
 =?utf-8?B?bnNmRkQ1ak9TVlZPdDJMOUh5STB3ekxMZGJQTGFGdXQzeUNlcFp2T2NtNGUz?=
 =?utf-8?B?MExxMlAyNEt6QTJGWlJpUXlobVNoVzFJczVZUUtsQkRDSDVUNDFuS3hMcEpm?=
 =?utf-8?B?YnRwN3Ira2wrdHNXZzVMUkpkMW5aZzE5S2VkODgxaEV3dFV5cEVod2d1azVR?=
 =?utf-8?B?OWJzQjIyMmdxNGRCMHhmZTVEcW9STGZIUm9HbUNZL0VQcDduRHJMUFpvNy9h?=
 =?utf-8?B?RDBQeDVRei82WmxwMWN6V0gxZ01NbitEczlzdEN0dDZjRlZWZ0RyaVYxMkxX?=
 =?utf-8?B?WTVaNVBSVmVFVXRyK1RvS0puQzNQVGFwRE9kQzQ0TE1EZHZlN1VoUHFJVXVp?=
 =?utf-8?B?ZmFtNjRZMmZ3UnRhNFVUMlFTYS9YYUNXWGwrNnF6cHB3cW83Y25CeUpVaFB6?=
 =?utf-8?B?OTNXVDBqUTZDeUF2L25IcExvWkdHYkUxRExNYUhsL3d3c3pubEh1dURwaU8z?=
 =?utf-8?B?ZXJQSGpORDM4aFVPdHBmbUI4aGg5NFJjNzNaTndnUXRtaE5rR0V5MzQxVGdQ?=
 =?utf-8?B?N3FEZDh6Wit0Ymt4emtjcGZHS0pqMTVtYlBGbCtzY3J5VFAxRFVTMXdrcGlT?=
 =?utf-8?B?N2tCZytIbFNkNjhWeFU3OFJJMWh0b3o1RUduUUtuOTBwZS9JckpPbFRpN0dZ?=
 =?utf-8?B?S0luejhXam45MVpjVnpnQUNTOC9PWE5TN1RSWEhDMWxZZVFtc1pJb1JqbHZI?=
 =?utf-8?B?enBtTEphbHZBa3VWVnhGME0vT2tnZGRyVWEvWEJSRDdRdTllYnFYaklzZktH?=
 =?utf-8?B?dHRGdEFIam4ramFtbmlUeEQreXd1b0JCK2NVZEpuZDB3bXNGMXIycno3Vmpt?=
 =?utf-8?B?V1lHRzZjZk9qM3FKUHlhczk0WHFQSTZuSExad2NkMFdZSDdmZWJFc3o2d3Y3?=
 =?utf-8?B?ZFRjbUJ6NTNSbzZOMkFMRlR2QkFEZE9vSDBUWjRXUEpTbmlJbWxuclFMTnRs?=
 =?utf-8?B?QnphUjIxNDhMdDBmRE1pVWwzNmhDa0h4Z0gzQmFpSER2aEhvc2ZIWjZwTjA5?=
 =?utf-8?B?YWRBYnVEYXovM2pBTkhOSUhRcDZsLzZ5RXpxaEoxb08wM0ZEYm9UVWxBUUIw?=
 =?utf-8?B?ZGxnTThWMjJEQkptY00vYTg2ZGcxWmQ4OGI4UE1jZ2lqd2NpZlZBc1NUUThS?=
 =?utf-8?B?MExhYWtkV3BWdWdyUjgvU0JmalR1cjZsSjFKK3I2d3VDdk9NdzFtTXp4T1lL?=
 =?utf-8?B?ZjFCZDBzN0l2SUJNR1RJMzRiTkZWdFN3dnBidnNuL0M2YkNpc0tQVWVPQkpa?=
 =?utf-8?B?QlFQWHJVVjk5ZHFlSE5mVnYwbHhXZXowV3doajdxeGtQck1nMzRQQVVBT1ZS?=
 =?utf-8?Q?IPqP2ADWjL+RW6ssyqplKuxYlmSerw4nqzkl4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGhFL0s3dmE3bUNxTkx3ZjNrMk5hWWRYMGoyamhWdnllOTFYeFoxcGRRM2JO?=
 =?utf-8?B?S2lDcTA5WXNmb28vYlg3RTRiS2ZwVk1lc2UvZ0tOVVk1dkpmQWlNRU9IREFN?=
 =?utf-8?B?K2dqcy9VNjhhOExTVThycFpvYU1JQ3MvaGtzajR0MkZLdmVWNC8xbSthQkht?=
 =?utf-8?B?ekNHTGxDZVdPaWF1Rmc0SzFyeFdEVTVLaWF2UFJwWXJqWGJEUGNLalpNQ1dB?=
 =?utf-8?B?ZExWSHpBZHBSQUI4d01GYTlMdDRScGF5ajlmV2dWVGc5YjdmK1Q0N2x0QjFO?=
 =?utf-8?B?RVhKeFprR1lKVEs1MWtCK2piTkJMdGFqRkh5UFQrWEJvOXoyL2pGd3RGQVJQ?=
 =?utf-8?B?SkVFQ2s4ZmtJS1ZvM0JTRHJrRDlBSnp5aWc4Qk9GTjFpSkZ3V0JJQkxMVzkw?=
 =?utf-8?B?eFdEYWRvZ0c5YTZCYU5iSXhBOVowUTlBWi92WHR4dFR1eWFmbmdpNStRaWE1?=
 =?utf-8?B?L245K1NUWTVPVW5veURneDNhbUEwMVplM3BuZitRdExKamoyTm81Wmh5UXpy?=
 =?utf-8?B?UG9qSmRNclhWNmNoSHo4TFdBZUw2MEFxL2xOS1JHWGxCU3p2dkFXa1daZFor?=
 =?utf-8?B?ODFFM3VQcE53OGhocHJEd1RkWktvenhNQkdwbFFFSm53bnAwb1hKREQvbm9M?=
 =?utf-8?B?cG0rSXFzaGVmclBpTEFVLzlieWpzd3NXTFVNaWhVbGtQY1JBLzJUTWh1dlBm?=
 =?utf-8?B?eGFlaGV5VUhjck5sZDV5OWdtWllPV0pORVN2NWpwRWdwME9MMExXUlRKNGZq?=
 =?utf-8?B?V254RGpKeUhDNW50aVgwYTdYVTVVelArNVg2NkhIdkdaTzhlblNpTDVhSkVp?=
 =?utf-8?B?Z0YyYlo0Yi82RUFjNjZkSnh6QUw2Z29vRlBnZ09VMjJNdlp6VnFPWkZ5Z09K?=
 =?utf-8?B?d3c5em1lbUJzLzVWY2JUM1ZXV2tmM3N0NU5vbnVkU0RqdjFUU1hILzBibWhR?=
 =?utf-8?B?Z3RpK3M2cFdSZE03OWNyaDBwbDUrbkJMd1hqc1ZPOTNKUFcyT0FPdVlHSnhh?=
 =?utf-8?B?amdySGEvNXRuZHJVTFlQMFRoajFaMEd4RkRYMmc2QzhIYWZjNmh4UnY5YXVB?=
 =?utf-8?B?RTZGdkdrZkIxTFNXQlBObzZTM2djVDZjMDNOL1VGWTgxc1YrWktXcFJsM2xL?=
 =?utf-8?B?Sm5pRGs5akszVWNGb056WDBWMzJPemdJb3J3STNLcUJkbjBwSVZJVGswWU5T?=
 =?utf-8?B?M29wdGNTTWloNlZCVWdhQkp3WFlFRHdXVklxQ1VkZ0tFaU5UUWdXTUhOUkdC?=
 =?utf-8?B?WW4vTndzM0tkV0kyUWFGdlJmOXp4cjJoVmlFZWM3aVg1T0lZN1AwUG9JazIx?=
 =?utf-8?B?SEhkaS95ZVdIZ2toSHFSdUl6MEY5NlJ6YnBzeHBKa28vZFpWNEVkMHdvc2Zo?=
 =?utf-8?B?Z1NaV0ZyUHA3QWpicktOK3MxYmhFdGtTZkZzLzhpUC9mNE5wd1lmemxuSldU?=
 =?utf-8?B?dmZjbTBBeGp0ZVo2KzdFVnNRLy9RTG5IQlhhVGE3ZGhXTytPeGs4ays4Sk9H?=
 =?utf-8?B?QUVsYmorS1NoSXkzYWhaOWF5WXBZTjdielpRWjkwNnQ1eS8vQ0xnbmhkcjBK?=
 =?utf-8?B?V09zYVorMHF1RXBCMi9tcTU3NE9Vc1QzbWRLWHlmM245UGlFQlpXUUxuVlhN?=
 =?utf-8?B?Yk5jZ2N5Y25VT1BwdVl4TmxiL2NLdVFUeW1JSTg1eFVkWHRMZzlQcGRDTzhi?=
 =?utf-8?B?UXFwajczVHdFZCsrOURkYitrVXFUUVZxbFZGYmpwcnd6V0pLa1BqalV4OGNt?=
 =?utf-8?B?UFBBQzV2bmp2VWNYMjg5bUNreDFLanF1OFRSM0I5c1N2UFMxZC9Qcm4wS1hx?=
 =?utf-8?B?ZWUwcWdzdm5nOS9SODFMTWptSW5hcGZWSWVibUNGVFQrSjlMSlQ5SFBIdEZZ?=
 =?utf-8?B?cHpLbnBQQVRzT2huL2NBZkJIcURyNmJWMW1DdC9xaEhCbnZyZXdtNW5CeEdH?=
 =?utf-8?B?S3o3dEVDYk5IdjJYSFVURkJDQ09WMWoyWFQxdnk5RzFVQUdJYVMwRUE5MEsw?=
 =?utf-8?B?U3Y2Mm9RcGhCS1paQTVXbFVleGhhOHd0WmFXcXNBQ0RMV3hOelN0T1paRzRn?=
 =?utf-8?B?WUpnU0dlSVVZV094SUZra2NIaDlaTkx2WHRueFZyaWRGS0NxTzU0YmxwSzRu?=
 =?utf-8?Q?yrYapGMt615551oNSUOac98EJ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a82a5f3-174f-4293-c9c0-08dc8639c0fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 15:02:58.8667 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bC/55s1BuZr3fuirLftR+vAQJwq8mFNELorNM5MIbNNoKqJAE1XqDWDEj+PGDhJO6QnZmDTFF0/F/cB81s3osA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4713
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAxMi8yNl0gZHJtL2k5MTUvcHNyOiBU
YWtlIGludG8gYWNjb3VudCBTVSBTRFAgc2NhbmxpbmUNCj4gaW5kaWNhdGlvbiBpbiB2Ymxhbmsg
Y2hlY2sNCj4gDQo+IFNVIFNEUCBzY2FubGluZSBpbmRpY2F0aW9uIHNob3VsZCBiZSB0YWtlbiBp
bnRvIGFjY291bnQgd2hlbiBjaGVja2luZw0KPiB2YmxhbmsgbGVuZ3RoLiBJbiBCc3BlYyB3ZSBo
YXZlOg0KPiANCj4gUFNSMl9DVExbIFNVIFNEUCBzY2FubGluZSBpbmRpY2F0aW9uIF0gPSAwOiAo
VFJBTlNfVkJMQU5LIFZlcnRpY2FsIEJsYW5rDQo+IEVuZC0gVFJBTlNfVkJMQU5LIFZlcnRpY2Fs
IEJsYW5rIFN0YXJ0KSA+IFBTUjJfQ1RMIEJsb2NrIENvdW50IE51bWJlcg0KPiB2YWx1ZSBpbiBs
aW5lcw0KPiBQU1IyX0NUTFsgU1UgU0RQIHNjYW5saW5lIGluZGljYXRpb24gXSA9IDE6IChUUkFO
U19WQkxBTksgVmVydGljYWwgQmxhbmsNCj4gRW5kLSBUUkFOU19WQkxBTksgVmVydGljYWwgQmxh
bmsgU3RhcnQtIDEpID4gUFNSMl9DVEwgQmxvY2sgQ291bnQgTnVtYmVyDQo+IHZhbHVlIGluIGxp
bmVzDQo+IA0KPiBCc3BlYzogNDkyNzQNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBN
YW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMyArKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCAyM2MzZmVkMWY5ODMuLjQ3MWI2MDAzMjMwNCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMjUwLDYgKzEyNTAs
OSBAQCBzdGF0aWMgYm9vbCB2YmxhbmtfbGVuZ3RoX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcA0KPiAq
aW50ZWxfZHAsDQo+ICAJCWNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192Ymxhbmtf
c3RhcnQ7DQo+ICAJaW50IHdha2VfbGluZXMgPSBwc3IyX2Jsb2NrX2NvdW50X2xpbmVzKGludGVs
X2RwKTsNCj4gDQo+ICsJaWYgKGNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGlu
ZSkNCj4gKwkJdmJsYW5rIC09IDE7DQo+ICsNCj4gIAkvKiBWYmxhbmsgPj0gUFNSMl9DVEwgQmxv
Y2sgQ291bnQgTnVtYmVyIG1heGltdW0gbGluZSBjb3VudCAqLw0KPiAgCWlmICh2YmxhbmsgPCB3
YWtlX2xpbmVzKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
