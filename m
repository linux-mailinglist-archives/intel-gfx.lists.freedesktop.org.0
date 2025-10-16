Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2D2BE31EB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 13:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D45910E9BB;
	Thu, 16 Oct 2025 11:40:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IRYzDCJi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ED5D10E9BB;
 Thu, 16 Oct 2025 11:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760614853; x=1792150853;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EiC8BzJEQMNe0/c8k/n7WbqLB0YFkKrun29Mceuq99U=;
 b=IRYzDCJirT5vVOZ+nVYR3S1ScTDMyAGUPbd/FYU7h1cVuwidC4QyJHFQ
 JbpjmC35ri7QegTROHXbkhopfiI3vHyt5r0EaA5RwMtfOY3QGBzeW3vcj
 t6OmjAubqdDKn5UjRg6jA1yAcx3R5PWFSXNj18kFdfsaLhbj19BN87kKj
 mcEWklCpWKVQ7Tb6lRZoJhcB36Y5Xys5oLt8SrtwkVFMPBggIP3TP2ECE
 uWlzN8k1lUBNtwCjpdOdzB50O6HnZ0hDdTCq1XcPaYx2/vi4q+/V4PEoq
 7s2yI7DZLciYkDySd4PPEJjTeoIeZ3vphe3SkrsVittLk+e4okRfVuzh6 w==;
X-CSE-ConnectionGUID: NOSdTa11TiKv/bFEYQDhHQ==
X-CSE-MsgGUID: CmVUXHR4T/ehIMkA2oNvFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66453001"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="66453001"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:40:52 -0700
X-CSE-ConnectionGUID: F3BEdzrxTWCXWjTPxxGoFA==
X-CSE-MsgGUID: /WDQGyRuTrmIS3OpR4c32A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182112827"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 04:40:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:40:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 04:40:51 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.62) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 04:40:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CClAWqLynp3w91t8kpRB00EAq6fHJUwIZOwFYJhj7PNxskBDoHDrCrw2+t2VdXTQnjRToesVgAOHerXu6BlHBJVzZMNsA4FzfwOdmmkuT7B5seG/plgmdDGgrPP4qmwwpVb8ChpylIxaz2WeY4v2wfFnEHnHLMbwpLtiaNXrn/dYgssSQOPQeEdJWMo6ty0RVF12wvEpGquyihOur8n1fuerkb4FibbuudznmjwnykpGJuFdFPNMGixnZbhzgodKwoL4bZeRfcL4rM2Q77aRwPps0mRHKvv0L/61Sx6fGXVd+6fWfAQv49rLla0E4GyHJRTZCiJQt++DTec8Z1n9rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EiC8BzJEQMNe0/c8k/n7WbqLB0YFkKrun29Mceuq99U=;
 b=c39Gm/rHifQ8CyZxu/w+iSKJEhYYMyzWvOAYXfU/3MD2GoqyBevPuQIC+sTiUZgmxgAtMaxcST9W7jdmwuJRzQSSoefCcab6PMUpIgjSvSZgHJKHv5b3ooBfkA60jlei5pi26ItGamuNU4YbjzYRPuLbKNbJq3Q2JOfraf5W9OBXA0zbQ/guyaROD+v/lF02SxRk9bRT38cXGzkB+iVMGXhLKxZhevP1Cp9ekQX5eBWyUiWJ724abftOvW/lGwxJkNJIpoLVuIJ8F+SsAOURuuOuWn8IluVztObABt2J91RO2dcqMnv4Y0SpbRhci9RInta27dggiIqGgPVaFtZ/Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY8PR11MB6939.namprd11.prod.outlook.com
 (2603:10b6:930:59::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Thu, 16 Oct
 2025 11:40:49 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9228.011; Thu, 16 Oct 2025
 11:40:48 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 5/9] drm/i915/fbc: Decouple FBC from
 intel_cdclk_atomic_check()
Thread-Topic: [PATCH 5/9] drm/i915/fbc: Decouple FBC from
 intel_cdclk_atomic_check()
Thread-Index: AQHcPH3TZ0fRwdTH7k+xguqrkolQ9rTEqlbg
Date: Thu, 16 Oct 2025 11:40:48 +0000
Message-ID: <DS4PPF69154114FA265F3EC3ABCE927E104EFE9A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251013201236.30084-1-ville.syrjala@linux.intel.com>
 <20251013201236.30084-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20251013201236.30084-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY8PR11MB6939:EE_
x-ms-office365-filtering-correlation-id: 43d09abb-5c42-4944-3e44-08de0ca8da44
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?RDdZU25MNjdtV0owWjlBV1RNcDhXNzdDZjV4bkV4eDVZMHdVOFpVRDI1Vld0?=
 =?utf-8?B?bytWUnl0QVY2eTU5MGlPU1gxMit1aFFsdUoxSmRDOUUvcndpZDNQNzFzM3ZO?=
 =?utf-8?B?L3BWSG5RZEd0c2ZLUzUwT0xndE5ERUxsRDI5RmdDNDRGODdGNUEwUi9BYWc3?=
 =?utf-8?B?VkNkbmE0WXJGQjNvUE5HeWt0WVpyWGJvVEhpTlBKdTNBOEVLSURBUkROYzJL?=
 =?utf-8?B?ODl1QVpSOEhiTlF2YVR2cjBNM2Q3RG9EYWI4ajM2ZXF5V0pUczVFRkhTSEd1?=
 =?utf-8?B?d2JhNE9TQnNtNEM1VkV1cHk4Zkx4cE1lSmsvTlFOOVlobGQwVFZUQnVsb2Vm?=
 =?utf-8?B?NVA2VXcxLzN4RGFYY3RMVUM5M2UzL3ZPZU9tSTZoMGZITy9CSE8vMWRsVitB?=
 =?utf-8?B?Rjg5amJPNmxEYWV6aVp6eXNxU0RwODArUTl1T3RmbVU5MFU2QURXOFpnNW8z?=
 =?utf-8?B?M0RmdlF1MHJyOS81dUYxK05hQTc4azBFL2FONlJweDV0RGZxME9lWk9tTytU?=
 =?utf-8?B?cjVpaEVvNjdoRjROZGx3THBUV0FDZTJ1VmNOWlhjeW11Nm5FZTh6ZXhJaWx6?=
 =?utf-8?B?RkpuUGdNY2xLblBLTjlvaDg3THFRSlJSWm1YYTZRdmpLVzRoUm9jczdzWnM1?=
 =?utf-8?B?MWlKMjdKcGhrc1MrUU1ORDdja3dteDV3Y2tPRnhmRDhGcGkrM0xQL0ZQSXRO?=
 =?utf-8?B?NUhUM0lMaEk0WU8vNThEUGtlM3NIUDNuZytCMmJYeEFNalZyRGVRT2IyL3N1?=
 =?utf-8?B?TmptWElKaDEvaHIwUGRjQjY2ck9XbDQyc3B4dTg5Ynl4b3Y5YUJBc3c5Q05X?=
 =?utf-8?B?QW1YVFNjOFJ5ditTaWFtdnBDNTFlcW00OVZseHFITVpTTVIwS0U2Y2NqdFFa?=
 =?utf-8?B?UjZxRElWNnBuU01JdWYzY2RpbmJBR2g2V0E4Y1hyeVlzdXI2TDVpenpHbVBU?=
 =?utf-8?B?K2NvYk5wWk9MOURldEZ6VWVLeEpxN1ZvYXF3U1d0QjRwdlFUL0VOYStFaGVv?=
 =?utf-8?B?elh5Z3JPcUZKR2lPWXpocmZkOG5LNlBOclRtcEJ5dFFablRJZ21meHFDODUz?=
 =?utf-8?B?cUl0YmNXQyszN2E4UFhOb3A5TjdWdzMxTUhta0N5QWRDaVVYOGtvd1k5dVRj?=
 =?utf-8?B?U0F4UmxDUUhxajArUG05M0xZN05vOWRJYWlUU3Y0elhCakJPN21kdGFMZmQ5?=
 =?utf-8?B?NzhhRGJrMkZXNHJjTlNvMlRJckJnd1RDZVNFOXVZUmpqeXVScktkRE44TU51?=
 =?utf-8?B?bDFKRGlDU0haVWVrTzhPOFRHblJrRnV0OWdrSXNTVzVuUGh0VVNVZi9YSVR2?=
 =?utf-8?B?VUxFa0dqOUt0TkxhQ1NsdVdveW1ydjBHamkrSExOR0ZZbUMwWHpmeVdTZHVm?=
 =?utf-8?B?OS9lYzZUOEI5UlZiSVl3b2ozcEQzSDY5STJsMm9NbUF3UHhYakJVYXRWWkth?=
 =?utf-8?B?SldsZU9oNWp6Z0I3ejJDVDd4cEdNQU0wblJxNHNES0ZXMTViNVAwdWZTV3kz?=
 =?utf-8?B?MTlnNWdKR1FCdkdOZmYwQlJOMGp1UmcxbkhSREc2VkR1UFRVTWFmSkxzUkRD?=
 =?utf-8?B?NU9DUUQrQk14QVorRWtveFNzbXk0N1h2amlhOTdxbGhFM3VNeDJITlVoRUZF?=
 =?utf-8?B?ZXBoenhGSUhQcXM1L0x0WVhhdXRyc2lldjVxeE8xclpJVW1YYWZCY3Y1MXM4?=
 =?utf-8?B?N0szMnhGWEdTbFZFSlgzTzA2bU5FR2ZYejdGNjNReVNwbVlwUlRpejNKeFNP?=
 =?utf-8?B?TjlLWUdzVEFVaTB6ZEZjaHFvUm0weExPa0FtUms5V25wMUxseTQxejlMbWZS?=
 =?utf-8?B?R1lJMGVVSEwwazlLa2V3SWFVU3NxK3BNWUVscDN5elp5YnQrYUwvNFpGVUlX?=
 =?utf-8?B?MXBXcS9DbWhFN2NoYjkxZlhHKzg5dHJGMlNiTzV1NGlncW56c0o4d1dPR2xp?=
 =?utf-8?B?Y0s0UGZ6dkJNTTNHU3B1YkIzY1JVUXpEV2V4OWoxR3lPNDNXS0ZIU3hjODdM?=
 =?utf-8?B?SVhoQlVmQVpkRnhiYnQ4NGkvLy9Pb3FTOTIvZ1dzeVRrM0NEdjRLVEFKcTJC?=
 =?utf-8?Q?tHUp29?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFN3R1FrYjQrV29VT1BqU2xZc1hhQlJqenpYUmR1cXgxWFhLZ2sxV0JBSGRP?=
 =?utf-8?B?YUY3dXJZVGFXYmFyOU1aWTZmeEE1bFk3T214Y0Y5YUh3VG85YUVsckp2ckJ5?=
 =?utf-8?B?NU9JOXVNQndoS2tiNVBZZEU4Y1U5MWdTNGFkSlE1Tk44U25vUWFKemhPS1Zy?=
 =?utf-8?B?UWFmSUFRc25JMFB6eWJUbFhKUWg4MzhVNUtyeDE1WG9uTmFWYzJUeU95ZXht?=
 =?utf-8?B?ck1YcnRCdm1FaHhRc3MvT1NYQUF5T1JucU9GdjMveXJtTE43c0wyeHVFQkxj?=
 =?utf-8?B?N1hPMjV1c1VzUjdTSTl2SUJ0UE13WkRoY2k2a2srY3lxaVRIWnVJN2hNaGc1?=
 =?utf-8?B?TC9nUE5ROHp5dENHc2szMVpqdnJoSWxDSFB2S2JpY0hSc2ZLdzgzWnI3eHpq?=
 =?utf-8?B?UW9RQnMyTytmTDFRR0FIbXpyamNnSHd1QWpMNVo0NzBLbk9Da0RFeGQ4V1B6?=
 =?utf-8?B?UCs1WDdnblJ2UXE2U2FldDk0aTVFaXZKTFpRN2l5QjZwaXpnOTEySUlsV1gv?=
 =?utf-8?B?dFNwZkthWTFMM25jcjdRTk1NdG42Y1hsMklyK2FFa2Z1cUZiLytoRFpUU3V0?=
 =?utf-8?B?MlFYckNjdDJuQkl5R3lHajUrUGRQMFZNc05MY0VHM256YzhDeUVDbUpDUjFF?=
 =?utf-8?B?ZDNoSnJxSS9Jcmk2YTdGMlVQSGZBVHF5VDlIWFg4S1pwVjhvSG9vNWUxLzh4?=
 =?utf-8?B?eklNVXI5aGx1YTc1T0RZWkY2dFUvUk16eW5IUUNOVDNyY3ErN3M5enlaSU9B?=
 =?utf-8?B?L0xmMjVsajlRRUQwVmpscXR4Wnp6di9ZOUl6MlV1VHdDS0hoQXQzM3lJamZ6?=
 =?utf-8?B?OTk5L2cvOWt4Rk5ONC9odUtzSDZRNWN3eVEyYWwxT1hNNE1yYUt1UlJIeThH?=
 =?utf-8?B?aGJ3dUgxSWF6UW5Zd3k1SkRTendIN253VjVMNlpoWUhGeUp0OFJ1MENOZHNh?=
 =?utf-8?B?dWFNQnVvaEVheVVIQ0N6L0gwY1ZNellBRUN6S3ZmTWJuREUxNjRlL0RSVTB0?=
 =?utf-8?B?OEJwQTY1VTd0V25uWjFMNVB1QndWS3hFVmVRRzh0MC9Velo4S3AvaXJSVS9T?=
 =?utf-8?B?a0N1a1pMaXJna3MvUmcyMDZBTTNrdTdBclE4VldxRVBVZWdvck55aWpRMllR?=
 =?utf-8?B?MVFtTzBmcmVtR1RBR3VzNWtjMFhKd040TDRGb21pVGlxczI3Ym5iclY1QVhG?=
 =?utf-8?B?SzFqYmtneHZTc3dyT3VsTUxrYnMxL3J5TGdKRWN0b282bDNlWWhaRGZ0VjFk?=
 =?utf-8?B?ZHBGL2pvMC9SeWtvbW8yRGRHM3JodmFpSUZ1clRrei9kOWNoUUxPU1lEZzZ1?=
 =?utf-8?B?ckcwdUFQaUNiaTNZY3c4VzQzRHBNMHlENWhqZUk4RGFPYktvUDYzTlVLZjBw?=
 =?utf-8?B?Z2lUVklLTk42ZnB4UXJhV0doRE9BSlRySkFkaVBLNHdVM2xYQ1ZaUmovOGxr?=
 =?utf-8?B?K3l3QVdIbDI3bUVqcjRyTnU2ZHF6YmdVNTFaNEhTSW83T2x1OEttZUx4SkhS?=
 =?utf-8?B?NE1xQUN1b2g4aWJSU2pmN3RPdFh6ZHBoUmNlVUdtQVl3YlNXbGpMaVd3ZXZz?=
 =?utf-8?B?bDVFSHgyMlJ3dlN6eWVBVW1pQzVUemg4alZick90ZDFsL2xEbHl4a21ZOVNN?=
 =?utf-8?B?dHdoQ29hWXRoOHdRTWtFSXFuN1hva1VIUWNFQWRYN3gyZDlaYzFlRC92UlY4?=
 =?utf-8?B?ZE44ME5TWTV0NzlBS1pTWTdzR2orYlRQaElaQVAxR3BTeE13Vm54bGlZSUlk?=
 =?utf-8?B?bkVYaUpwdERPNkJFVFZBYXVGZjk1dmRsU0lBYWwrbVZKVFZhbGtUekhTUjZH?=
 =?utf-8?B?bUhTdHNCUEdkVlp0dEZxanlZVTFaejNkV0lydzlNK3FlMGdlQW92NWN6RVQ0?=
 =?utf-8?B?Q1pNS1FjV0t1dlloSVZ0WDJiUzJzZmNrYlA5cEc4YWc0OFcxYUFENjN6dGk3?=
 =?utf-8?B?L211TWNHWU9DVHZ0ZHdPT1RTcjNNL0I5Y2ZFRzhmY1QzNlNadUJRYkJROXRr?=
 =?utf-8?B?eitPWUhZRXBqa013a1hEWUZuMFphaVlpYjRaT1VlNTJhMWp5NHM1Nml0bHB2?=
 =?utf-8?B?elJXU05ybTBvRDRqZmFhL1FOVVFFRnlNMzdidWdrcEZ2N0liaURtaHZVZ0RP?=
 =?utf-8?Q?1LzrHR9NKc79MzLl9FNus/lHh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43d09abb-5c42-4944-3e44-08de0ca8da44
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2025 11:40:48.8833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: upgMz6jpX67Cq+B/UMzAta8WNCNt30TEYHRCWB6kay54SCZmfL+IKi0hD8cjsq2fhlXfOqFLkPx6UDC1x/ku8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBTeXJqYWxh
DQo+IFNlbnQ6IE1vbmRheSwgMTMgT2N0b2JlciAyMDI1IDIzLjEzDQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gU3ViamVjdDogW1BBVENIIDUvOV0gZHJtL2k5MTUvZmJjOiBEZWNvdXBsZSBGQkMgZnJv
bSBpbnRlbF9jZGNsa19hdG9taWNfY2hlY2soKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEFsd2F5cyBhY2NvdW50IGZv
ciBGQkMgcmVxdWlyZW1lbnRzIGluIGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoKSBzbyB0
aGF0IHdlIGRvbid0IHRvIHdvcnJ5IGFib3V0IHRoZSBhY3R1YWwgQ0RDTEsNCj4gZnJlcXVlbmN5
IGluDQo+IGludGVsX2ZiY19jaGVja19wbGFuZSgpIGFueSBsb25nZXIuDQo+IA0KDQpSZXZpZXdl
ZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8ICAxICsN
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgICB8IDQ5ICsrKysr
KysrKysrKysrKystLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmggICB8ICAxICsNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgMTMg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jDQo+IGluZGV4IDgwYTZjOThlZWE1ZC4uZDU1YjNkYzIzMzU2IDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yODM4LDYgKzI4
MzgsNyBAQCBzdGF0aWMgaW50IGludGVsX2NydGNfY29tcHV0ZV9taW5fY2RjbGsoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdA0KPiANCj4gIAltaW5fY2RjbGsgPSBpbnRl
bF9waXhlbF9yYXRlX3RvX2NkY2xrKGNydGNfc3RhdGUpOw0KPiAgCW1pbl9jZGNsayA9IG1heCht
aW5fY2RjbGssIGludGVsX2NydGNfYndfbWluX2NkY2xrKGNydGNfc3RhdGUpKTsNCj4gKwltaW5f
Y2RjbGsgPSBtYXgobWluX2NkY2xrLCBpbnRlbF9mYmNfbWluX2NkY2xrKGNydGNfc3RhdGUpKTsN
Cj4gIAltaW5fY2RjbGsgPSBtYXgobWluX2NkY2xrLCBoc3dfaXBzX21pbl9jZGNsayhjcnRjX3N0
YXRlKSk7DQo+ICAJbWluX2NkY2xrID0gbWF4KG1pbl9jZGNsaywgaW50ZWxfYXVkaW9fbWluX2Nk
Y2xrKGNydGNfc3RhdGUpKTsNCj4gIAltaW5fY2RjbGsgPSBtYXgobWluX2NkY2xrLCB2bHZfZHNp
X21pbl9jZGNsayhjcnRjX3N0YXRlKSk7IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYw0KPiBpbmRleCA0ZWRiNDM0MjgzM2UuLjkwMDYwYzYwYzVmNCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC01Myw3ICs1Myw2
IEBADQo+ICAjaW5jbHVkZSAiaTkxNV92Z3B1LmgiDQo+ICAjaW5jbHVkZSAiaTkxNV92bWEuaCIN
Cj4gICNpbmNsdWRlICJpOXh4X3BsYW5lX3JlZ3MuaCINCj4gLSNpbmNsdWRlICJpbnRlbF9jZGNs
ay5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RlLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxh
eV9kZXZpY2UuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3JlZ3MuaCINCj4gQEAgLTE0
MTcsNiArMTQxNiwxOCBAQCBpbnRlbF9mYmNfcHJlcGFyZV9kaXJ0eV9yZWN0KHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCX0NCj4gIH0NCj4gDQo+ICtzdGF0aWMgaW50IF9p
bnRlbF9mYmNfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0
Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxf
ZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKw0KPiArCS8qIFdhRmJjRXhjZWVkQ2RDbG9ja1RocmVz
aG9sZDpoc3csYmR3ICovDQo+ICsJaWYgKGRpc3BsYXktPnBsYXRmb3JtLmhhc3dlbGwgfHwgZGlz
cGxheS0+cGxhdGZvcm0uYnJvYWR3ZWxsKQ0KPiArCQlyZXR1cm4gRElWX1JPVU5EX1VQKGNydGNf
c3RhdGUtPnBpeGVsX3JhdGUgKiAxMDAsIDk1KTsNCj4gKw0KPiArCS8qIG5vIEZCQyBzcGVjaWZp
YyBsaW1pdHMgdG8gd29ycnkgYWJvdXQgKi8NCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiAg
c3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJCQkJIHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUpDQo+ICB7DQo+IEBA
IC0xNTU2LDE4ICsxNTY3LDkgQEAgc3RhdGljIGludCBpbnRlbF9mYmNfY2hlY2tfcGxhbmUoc3Ry
dWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCXJldHVybiAwOw0KPiAgCX0NCj4g
DQo+IC0JLyogV2FGYmNFeGNlZWRDZENsb2NrVGhyZXNob2xkOmhzdyxiZHcgKi8NCj4gLQlpZiAo
ZGlzcGxheS0+cGxhdGZvcm0uaGFzd2VsbCB8fCBkaXNwbGF5LT5wbGF0Zm9ybS5icm9hZHdlbGwp
IHsNCj4gLQkJY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3N0YXRlICpjZGNsa19zdGF0ZTsNCj4g
LQ0KPiAtCQljZGNsa19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfY2RjbGtfc3RhdGUoc3RhdGUp
Ow0KPiAtCQlpZiAoSVNfRVJSKGNkY2xrX3N0YXRlKSkNCj4gLQkJCXJldHVybiBQVFJfRVJSKGNk
Y2xrX3N0YXRlKTsNCj4gLQ0KPiAtCQlpZiAoY3J0Y19zdGF0ZS0+cGl4ZWxfcmF0ZSA+PSBpbnRl
bF9jZGNsa19sb2dpY2FsKGNkY2xrX3N0YXRlKSAqIDk1IC8gMTAwKSB7DQo+IC0JCQlwbGFuZV9z
dGF0ZS0+bm9fZmJjX3JlYXNvbiA9ICJwaXhlbCByYXRlIHRvbyBoaWdoIjsNCj4gLQkJCXJldHVy
biAwOw0KPiAtCQl9DQo+ICsJaWYgKF9pbnRlbF9mYmNfbWluX2NkY2xrKGNydGNfc3RhdGUpID4g
ZGlzcGxheS0+Y2RjbGsubWF4X2NkY2xrX2ZyZXEpIHsNCj4gKwkJcGxhbmVfc3RhdGUtPm5vX2Zi
Y19yZWFzb24gPSAicGl4ZWwgcmF0ZSB0b28gaGlnaCI7DQo+ICsJCXJldHVybiAwOw0KPiAgCX0N
Cj4gDQo+ICAJcGxhbmVfc3RhdGUtPm5vX2ZiY19yZWFzb24gPSBOVUxMOw0KPiBAQCAtMTU3NSw2
ICsxNTc3LDI3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNrX3BsYW5lKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiANCj4gK2ludCBp
bnRlbF9mYmNfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKSB7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KGNydGNfc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxf
Y3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiArCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxh
bmUgPSB0b19pbnRlbF9wbGFuZShjcnRjLT5iYXNlLnByaW1hcnkpOw0KPiArCWludCBtaW5fY2Rj
bGs7DQo+ICsNCj4gKwlpZiAoIXBsYW5lLT5mYmMpDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJ
bWluX2NkY2xrID0gX2ludGVsX2ZiY19taW5fY2RjbGsoY3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwkv
Kg0KPiArCSAqIERvIG5vdCBhc2sgZm9yIG1vcmUgdGhhbiB0aGUgbWF4IENEQ0xLIGZyZXF1ZW5j
eSwNCj4gKwkgKiBpZiB0aGF0IGlzIG5vdCBlbm91Z2ggRkJDIHdpbGwgc2ltcGx5IG5vdCBiZSB1
c2VkLg0KPiArCSAqLw0KPiArCWlmIChtaW5fY2RjbGsgPiBkaXNwbGF5LT5jZGNsay5tYXhfY2Rj
bGtfZnJlcSkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlyZXR1cm4gbWluX2NkY2xrOw0KPiAr
fQ0KPiANCj4gIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fZmxpcF9udWtlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5oDQo+IGluZGV4IDBl
NzE1Y2I2YjRlNi4uYzg2NTYyNDA0YTAwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmgNCj4gQEAgLTI4LDYgKzI4LDcgQEAgZW51bSBpbnRlbF9mYmNfaWQg
ew0KPiAgfTsNCj4gDQo+ICBpbnQgaW50ZWxfZmJjX2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSk7DQo+ICtpbnQgaW50ZWxfZmJjX21pbl9jZGNsayhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ICBib29sIGludGVsX2ZiY19w
cmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJICBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICB2b2lkIGludGVsX2ZiY19wb3N0X3VwZGF0ZShzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gLS0NCj4gMi40OS4xDQoNCg==
