Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91525A18FE1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36DB310E6AD;
	Wed, 22 Jan 2025 10:38:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GZv40n78";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9363010E6AD;
 Wed, 22 Jan 2025 10:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737542310; x=1769078310;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QKRD0WQ/DJfmKs9aWO3QzJ1Ciye0TmFfp9PpgxwMiZ8=;
 b=GZv40n78Ocfao2qwOspsb6Jj4RYP0wyl6YK5Qdv0yIHtu2cNilb9kakT
 55VkzCSdNlk6sktvuWwx32DfPMT4PUE5M/hI+P+pyO/8+FCwc6YnJwfK1
 tz5Xm03Bb09pqQ0JDmHZyKJIS+28LYILLbf4XVMusvPUrbWn8y9kwkUqp
 P8fvfnoMtEd5KTAFHuz3nKILeIsnDaaeYn+KYsbLfDjVgyIl8SgN9htYV
 sW99FHMpItZo0vWS8uEY2mQ7k79JfNL2iRtl2kTW9DAe0Xju/hzZCVi5F
 hn6iX4/xohb2eAYJVZasQhA2bNtmoHBYdOY58aoT10sEx98O++fR29Kkl Q==;
X-CSE-ConnectionGUID: uGCSg2CXRLukjZJ9oVK0rg==
X-CSE-MsgGUID: baEJow69TNGnwrpfJCCefg==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37871471"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="37871471"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:38:30 -0800
X-CSE-ConnectionGUID: EOvQCddiTAeYvreBDTOOmw==
X-CSE-MsgGUID: pvGLlX4vS0GZsZZUTIqT0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107985944"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 02:38:31 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 02:38:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 02:38:29 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 02:38:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZbfaA4AS4h12ffgWK/B0/HAxOXMrLF9UQDsA1a88l56G6IgIqQuqVkmJ0DT2M4x3Z0/L9rM3Kg2YuSEY2fkXk7ydvSLtFeyrcmdGj9DrxavlD+5CY3E0LuH6PiJvDKbsFa4/XidqYSjJq5IgWM3QKoizH/ZrJ68lW1gidKwqC2plIcG9Q7hMz/fb5tr5cU9FtHDk591cSB9oX6FcLgNzfrjnRDD9slVOyMlOOjcBIR5VEsi+Idl9Js786Q9bKgDMqiveeJjg09NYrtvx6cAJfGzHOS0fQlc1SmuMwG93Qz2LHNtAysJsTuv1duJzEKKqTAUWgujWpl5C+IU6Pi1lKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4LlgekWCRUOAJ0dZYXdjjd9Siy3tOjJC4dLsBb9Qc54=;
 b=AAPlrxXEpDCGA9zRigE4ahscaT5ZWs0YqhZ/VSE+wJJx/a0iEw4GDO45m7gY4UsdRpU6Z7jJJJE6xMd+FlYIoZYba/FfLCDQJLWGExVOwogycP01iw7DjpgLfUTgMuQ2dAoJxDp7cMhPmRekUK7IZMPMipw6AsNVt6Z/aoY6vvtBgtODC5p58tuULDO6wcL7qql8yW9QQyk7gwhiPqJNlaOcGgnsC9nQpXhxqPdFenkCMTNzlOnGzE/QpvgAsiNPdPzMAqAul0Dz/1pMUu9ge52asmyu3lEZrinR9LwvB2lRtxwhVaU0cGdq6N/eeWH2DTJa/ba1av/s7IqBPTns8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH2PR11MB8778.namprd11.prod.outlook.com (2603:10b6:610:281::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Wed, 22 Jan
 2025 10:38:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.8377.009; Wed, 22 Jan 2025
 10:38:13 +0000
Message-ID: <711973f2-03d2-4493-92bb-1da9dbc0e082@intel.com>
Date: Wed, 22 Jan 2025 16:08:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/23] Use VRR timing generator for fixed refresh rate
 modes
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
 <Z1xvavnFCeaiYwJL@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z1xvavnFCeaiYwJL@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0214.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH2PR11MB8778:EE_
X-MS-Office365-Filtering-Correlation-Id: 350b1e66-5714-4fdc-44c9-08dd3ad0df51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1JWTENmMVEyb0YyejlHQ1I0VmgvaHhQYnhVN0ZCRFFOVVg0TWRvcmx0cTZp?=
 =?utf-8?B?YzBBS2w5Tzk0YjgwRDB2YUN4V3BYeVQ5RXlJNG9tOWErNEtLWVFhTmUxSmFM?=
 =?utf-8?B?SnJLS3pSdHQ3WFl2cGZLdE1mUUJkZkpBMmhaYlV5TTlUdnozYm9BMno3UWhB?=
 =?utf-8?B?bi9Dd2xLa3lXazMrYmNWdStwWFdVZVNlZW9mU1hNM2VrL1NJM2hka3J1NHJv?=
 =?utf-8?B?MUc3Z0hzczJIM3VTMzF5M3FJaTFaMmZ2ajFEbk9GSklvOXh3YjFBNzlhL1I1?=
 =?utf-8?B?UjRvcFV2bUc5QmQrbHQ4WkcyTld2V3Awa2VWbCt3TnZGUmxOZm9qUXBmaUNY?=
 =?utf-8?B?NCt3c0NtUXExNzNJaDM1cWxaZGtONGtkMGhYRTU5aEJEaUNUZEFWa2IrUit6?=
 =?utf-8?B?N2xZbysyWUI3RnZ2c3dRUFVXWVBTd0FCeWkxekczZjE2RUI3bDhFN1FVZWxJ?=
 =?utf-8?B?ZzBnR0tIYUx2bGdoRmlieS9VcVVaMWJsenROVCs3RVFnMkZONGltaFIybUlj?=
 =?utf-8?B?RlJiZDRFQmxkQXJnNktyOVUzc2pDZGlMZEtWRHNRUStIWkd1bUJzZUdkdXFt?=
 =?utf-8?B?TCtuTFRubldYTVA3OHVGckJ2TUtHakhsWHhXTWZSTGxEZGRZVnhGWmtPMi8y?=
 =?utf-8?B?T1lQMUg2UXYxVVdZN1Roc1FJa0J0WWFkMEZKV20xcW5XMHMyZHdIR2t3cUp5?=
 =?utf-8?B?SXNQazQ1TVVrdEdyZmx3bXdTY1NXVnZGa1A5ZFlycnhpZmI3bVNuRmJtaXVB?=
 =?utf-8?B?LytBcUN4cDNaK1k4YnF3K05sQ1lZNk9UWCtkUndhRzlIYVBucitqNTVRU2Fh?=
 =?utf-8?B?VXJGdFdYSTFNeEVlczVTeVhmTTRsMDdlMTlZS2lUWjVlaXB1czl2T1JFRERu?=
 =?utf-8?B?bU83bUw0TXNjYXpFMVdpd1lkbmpDTEZsa2E5Y0hPdlJUZkJnYzlJTWY4ZEoy?=
 =?utf-8?B?eTdFR1VzdTRQdVMwbGtVMVV3cEVWZDk1WUVONGN4MUhxNkprOGFXNCtoNGJ3?=
 =?utf-8?B?amlKSVk1RHB4T1VMVjd1ZFVxR3ZtTWZMKzZjWmRXQmdVVThyVVJyNzZtTWNN?=
 =?utf-8?B?a2ordHZVb1F6ODhYbGcybUlsMXVaWk1UU2xtVnNIVGVpSGRkbWxCTGZkb0Zs?=
 =?utf-8?B?ZmpSMHF5VGlKR010cjdnUVplUkZUNGtqZFNFbGEzb3ZoNVZBTTdWem5FdkpO?=
 =?utf-8?B?ZmxoVHpWYUJFV0V5Wnp4MEx2SjhjYWkrU2xKbXkzeVhOcUJ4RC9QNnhnS0pB?=
 =?utf-8?B?cmFPaGNZSC8zZmJUUXRNVnI4YTZlMDhoaEhGNExQZW8wNGh4RC93QTZUOERp?=
 =?utf-8?B?bnh6cHFkdFpYYnA2amhYUTZxeXd6R1c3WDRIazMyRW5QR1NqNGgvQmR6NW02?=
 =?utf-8?B?ZVVneEl2dFZHQzhLYTZrWkNpQjE3NkxMN25LTmpVZk15WnQvU3RrQkRXTmtM?=
 =?utf-8?B?L2tQWmtxOXBjeFplNHd3NTZIaGU4RUNwempYOHQ0VHBmRFA2QzV0ZFlndmtO?=
 =?utf-8?B?emZFMkQrRDIvbUFiSzkzaEkzMlZJcW1IL1NhWlc1YldNNXJIVmlVQTY5cDJM?=
 =?utf-8?B?amU5MEpFYXFDSG1tc3JCVVA1MUNpNlVIU1B6SkZCNHJuY0RQV0xldnpUSGJY?=
 =?utf-8?B?L1JUMFExYkF0NnhSQWl6TDRYSmliN3dDbEhDYUIvU0dmMVdLdjJPN216NUwz?=
 =?utf-8?B?SWt2VmhERlk4VE1uSUZGd3VtWUpDVGtuM3FNNHY0d1R2UzUyVHZKVzZ6eGFV?=
 =?utf-8?B?T3p1RU1obk5zVzROc1B2NVFCVXo2MDVKZ1ZGYnF0V0diL29PQ3prUHh2djlD?=
 =?utf-8?B?TWozMTJ6Z09RMW9zWjNwY0VjVDl2V1hubjNjbm56SjVWbWZNQzQ3TXNKZWwx?=
 =?utf-8?Q?RAo1xUmRLSp0/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkkyaXQrcktaOUd0M05qRko4SVM3bUVCMnFTeUo1M3ZTbS9ZaUxCZHEzZno5?=
 =?utf-8?B?QVgrTlZzMGRNTERkalhhYUFnWFhneEJpc3lFUjN6YXB6NkZkWFBTOWNtdnI0?=
 =?utf-8?B?MUlsUVpmRUUwcXlJS1BWeC9OZm5uWGRsVWRacW9iTmI5RTZHMG1KOFJoYWtG?=
 =?utf-8?B?dERHdW9QTHBLK1FVUktHSk5VMW5TaTdlUnZLWUgrdFdQVkFNV1pkb0tseU5I?=
 =?utf-8?B?SnZrVVJXTFN3S1ZUa1AvYmF1OHlrdTNFSkZmVUo0cVNLVHpyY2dnZ0RaUHlB?=
 =?utf-8?B?TWg2MmdKN3ZQS0liVWU0REI1RGRycFpKUlNtQTBXaGRvbjVxMzFtby9xaldr?=
 =?utf-8?B?aXVLMmJUcmhXbE1XeTdFdWF0UDM2bjg3L1p1WGJOa0Y5NzZxQzd3eGVEdUI3?=
 =?utf-8?B?T2dhcDRCUmVTcGJEbTdZKy85MmZMTVZVL3I4anE1MExtT1VTTjdxSXRhTWdI?=
 =?utf-8?B?QnYzeHVzYlVhR2FhcWVrUTB1MjRqQ0RhaXJhbUQyZmxxekd2QXp4TnpUb3Rq?=
 =?utf-8?B?VHRoZFVRVnVmYitHVVpUQkNaUW5INS9ncUc5dXVVZncrc21pYTUzU3NISkVW?=
 =?utf-8?B?NHpQazF4RkErUG5meXRHNHhHanBDRytXT1hob3dObXBjSmI3dXVDVkVzd1JL?=
 =?utf-8?B?Q2tDWWpYZExYVGRBblpmL1hKMWN1NGNvLzFLYUpoTXVDMys0d3V5cC9zWnVO?=
 =?utf-8?B?TWUzVEJVUWRWNEQ4ZHhBeUpkMU51bTJEd0Q3NUJTamdFSzZpdXpVQlArd0xx?=
 =?utf-8?B?VUNKODFhZWRrV1VnZWhBWVJhK1V2L1ZuWk5HSUEyUWVPR0h3cDdBanJiZjJr?=
 =?utf-8?B?VTVLSHc5Um1qbkFKeHdvYXN0Y0oxcXZUMTFsMkMyeFJKcHdwZ1J4Z1Fzbmht?=
 =?utf-8?B?YkRFNXdPYUxvejk3NHJLUDFPL0hzTHBvbjFjOURxYWhoeEJsd1BBSDFxTFc5?=
 =?utf-8?B?ejFxQVJoWHpOYlBkYy96WkNEcWVkNWptZG1yQVhLcUdQeXVla3Z5anpuc1FF?=
 =?utf-8?B?UkNlNWw2K2VDZkxQTXloL2ZRYjJ0TUlRRHYzVWpmME55UnkyRDgwMHRUZXhJ?=
 =?utf-8?B?aXhDQnFoZTZZRDN1azNLdTA1NW0zUGZnY1Q3dUhQQjZUYndOUk53VHF4aUls?=
 =?utf-8?B?d2wwemxHb2RaTHdVUnhIS3F0alVQWWxDWWxaOVR3c2VWaXNaT09HZEhzOEtL?=
 =?utf-8?B?U2kramJFOXZhTWN5L2lkSVZ4cElHYnRGSGhOai96M284bmlxeTArSnRLRFBt?=
 =?utf-8?B?QmlOVlFhWVl0MUZaSzZaUDNNREpnVVZxQ0crTWRob0ZydFcwVGdYQUNCa3NC?=
 =?utf-8?B?ejJ6VEdMbVJaeVQ1Y3ZwZ0ZNNEtpMGlOVmROWkZwMkx1V3RLNmgwMEJwRmpP?=
 =?utf-8?B?VnNkUVlmbXFHSVVDUzRMRXlmQWhyZ0VGWmk3RkJweXJrblR6QmJuQm1ZVG92?=
 =?utf-8?B?Ny9qckx1KzV0a1cwaXUwWk94b3JDVHM2NDBOU2t5Mm5VVjN5T2M5eUNhUFIz?=
 =?utf-8?B?bmhPUGZMMWRlT0wzOHp6UXkyT0cvdUMrR1RFc3UzSkZNZGFoNGdMaHZpNEFr?=
 =?utf-8?B?TXZpaXFUNWdVVFBaejJiNE1QZzJubmVJSFFiYkpEMUk2cDhTMW5kMTY2QjFw?=
 =?utf-8?B?SGJtRWpsZHRvUnlVblVET0FPSFAvR1c1VEc4SjNWeWRheG1qbERHZVhCVG5Y?=
 =?utf-8?B?VnZZK3hPTjN2cDVINm9HOEphUkJKVTlGNE51dnJoby9MNlN1YkQwbEREWUhM?=
 =?utf-8?B?dEkwOUpGeE5YUnlhMlFKN0xpQUVucnZQbUkzUVpYSWtjK1k0VjF1SGJuMy9R?=
 =?utf-8?B?c3hIY2tBY3hDSXlCdHBFQzNSVE9NalVjaHNtZkVMZGJMT2p4WHJOMldKWURY?=
 =?utf-8?B?cGlXRUtSeFFNckpBNklqODIzclRkSzBXTXFCTmZLTmJpVDRmWkRaQ0YxYmt4?=
 =?utf-8?B?SzZ3K1FUcWY4VEpiNnVFL0ttZVdqOWxkZFdtc21ZYjZBSHNyZk9nM1dwOVV3?=
 =?utf-8?B?NmhpMHZkVDRXMkNHeGcvenJxeitZZ1JqZGlzUHBGeWFVUVNwL1o2ZDFobUo5?=
 =?utf-8?B?b1hGTjJsWUIxMVdJam14SWxaYTNtdnNqN1gzblhrSnlKdnhEVnFDWW11L2wv?=
 =?utf-8?B?WC9kUnRycmpzQ3pib1hsQWlicC9qWXhKUWNaWTAyeEk0TzFiNm5MbElDVDVh?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 350b1e66-5714-4fdc-44c9-08dd3ad0df51
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 10:38:13.6554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j92weM8hsH3MbUua1FNE6ei54L+6Yo/wedusi9+8ajlMnviXRaMRdt4wJbXtDP991xmYzs/ZVI1n26KVlz0YQuU3HkdNjc9QbfIthw2G/JI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8778
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


On 12/13/2024 11:01 PM, Ville Syrjälä wrote:
> On Mon, Nov 11, 2024 at 02:41:58PM +0530, Ankit Nautiyal wrote:
>> Even though the VRR timing generator (TG) is primarily used for
>> variable refresh rates, it can be used for fixed refresh rates as
>> well. For a fixed refresh rate the Flip Line and Vmax must be equal
>> (TRANS_VRR_FLIPLINE = TRANS_VRR_VMAX). Beyond that, there are some
>> dependencies between the VRR timings and the legacy timing generator
>> registers.
>>
>> This series is an attempt to use VRR TG for fixed refresh rate.
>> For platforms XE2LPD+, always go with VRR timing generator for both fixed and
>> variable refresh rate cases.
> Some ideas I had while thinking about this:
>
> - perhaps the most fundemental decision we have to make is how do
>    we compute the vrr state in each case. My first idea was to
>    stick to the current way of always computing it as if vrr is enabled,
>    but that complicates the state checker needlessly, so I'm actually
>    leaning towards always computing the vrr state based on actual
>    uapi.vrr_enable knob. So when that knob is disabled we always compute
>    vmin=flipline=vmax. We're going to anyway have to repgrogram all those
>    registers when toggle VRR anyway.
>
> - intel_vrr_{enable,disable}() should just flip between the fixed and
>    variable timings in vmin/flipline/vmax. I think we should just do this
>    for all the platforms, regarless of whether we also toggle the VRR_CTL
>    enable bit there. This minimizes the differences between the two
>    approaches fairly well, and it should also work well with the previous
>    idea of computing the vrr state based on uapi.vrr_enable. I'm still
>    a bit uneasy wrt. repgramming the timings on the fly since none of
>    the registers are double buffered. So not entirely sure if we need
>    to spend some brain cells on coming up with some kind of safe order
>    of writing the registers or not.
>
> - guardbad/pipeline full probably can't be reprogrammed on the fly,
>    so we need to make sure it satisfies both the fixed and variable
>    timings. I think we should probably just always set vmin=crtc_vtotal
>    instead of the using the current refresh rate based approach. That
>    way we never need to change anything to do with the guardband.
>
> - I was initially thinking we chould jsue the PUSH_EN bit to
>    differentiate between variable and fixed timings, but at least tgl
>    and adl refuse to play ball and the display just blanks out if you
>    attempt to use the VRR timing generator without enabling push.
>    So probably we'll just need make the distinction based on
>    flipline==vmax.
>
> - cmrr I've not really though about. It'll still involve frobbing the
>    VRR_CTL and whatnot (which I think might be double buffered unlike
>    all the other VRR registers). So not sure how to make sure the changes
>    beween the modes are done safely. I think easiest to just never use
>    cmrr for now, and we can figure it out later.
>
> So maybe something along the lines of:
> 1) do the vmin==crtc_vtotal change
> 2) neuter cmrr
> 2) change the state computation and
>     add vmin/vmax/flipline reprogramming to vrr_{enable,disable}()
>     (need to make sure we can still do the fastset vrr toggle)

I am getting some confusion around the vrr_enable and vrr_disable 
functions, with respect to platforms prior to MTL.

For prior platforms TGL-ADL, where we do not want to have fixed timings, 
what happens to them when uapi.vrr_enable is not set.

Do we intend to use the same logic as was earlier where we compute vrr 
timings and write them anyway without enabling VRR?

Or we just dont do anything for these platform when uapi.vrr_enable is 
not set, that way later when uapi.vrr_enable is set, the vrr timings get 
computed and then written to VRR registers in vrr_enable().


Regards,

Ankit


> 3) add the vrr enable/disable steps to the modeset sequence when
>     we want to always use the vrr timing generator
>
