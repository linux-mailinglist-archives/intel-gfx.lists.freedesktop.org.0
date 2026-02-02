Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OM9vEHxugGnC8AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:29:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A58D1CA232
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 10:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56CE10E3CB;
	Mon,  2 Feb 2026 09:29:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6FjDh9K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5958E10E3CB;
 Mon,  2 Feb 2026 09:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770024568; x=1801560568;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kTdLFfp90nuurr5N1tgjtgaTCgQzRgRXKBOwNH8sxPw=;
 b=E6FjDh9KC5K1XWCb5P6M0wSAZ1TZ32aUcWQrDR/i1mieYO1ts5dOpevF
 GzHNyV22BJ14lHeNdhv0XCW0M8y6oVuDN+xnQKHt1Jpbk+WMuwgJh/EpD
 W/TwOElQR3bKMrsfsjOXLuPf9jELpjC057Qz4gJCdnZ/a/5CL7k8txy4f
 6mQNQe2jtwBVw/HRH02jgirFPPY7KsVw/0TYHHFGMjOJZG2WjzV7YnR09
 w1vHUQvAzlwqa9rSsxUsT7bSzlngIrPjaigQz37Rfw/FvA+gZEdLwCSOY
 aV2nePTu+pDFV5pvbmnL/jqT8JTnc+k4lfPDPIar7hdpcVBrPbM3qt0GF A==;
X-CSE-ConnectionGUID: tbNcNyqHSKybX5gRFVteUw==
X-CSE-MsgGUID: olSatDdAQGW8oNvDH1tsIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71233710"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71233710"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:29:28 -0800
X-CSE-ConnectionGUID: 9naFI18KTmSWaYR98xuIYA==
X-CSE-MsgGUID: kcoU4+YJT++ksTn8uUTGMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="208734196"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 01:29:28 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:29:27 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 01:29:27 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 01:29:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WglJPMFds9nkMWZ2tjRqzOE5Za5MCZ9rjwkaIGsl7y+vIC5TWh6d4/nr1T++xBl9azdK+yYknbBW3lprdk5bP7HgOtcwTCN1uoIiEzi9ZugwKmybYZ2xyY6qtl9s+s8WxNZ7C0UYETYxUKxbwkmkTZio4v5uBJuQICiHyrYx57LZO3fXI8W472ZTGSc26X81gurvxuaHLHPyawt1vYWOvgXcIClT8D0DjDDMStPsvG8TrAFbnJUPAfUWd9fD6EQ84FTu/v9KCisZh9r3HEGITp9jd5dFaRFPvZIhXPpKqmCmBAIJ6SKsNLk0uqm/80ANziHDwCZw3gBUiBlRzc9XWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PsAcB0Pf/kmxA0Pb7NWtWJDn4NR9WEqfucxdqfbkbKE=;
 b=rS0gp0uOKOq7InFtj15weenkBeW2fYY3QmM5hYIySAkVK+AGL9xihel4eWJSYlrAR0w9B9t9oNqvAo0nHr/JhOEJ+nsvjSYtCPqrsK2eOScj9Qj0tf50BAsnP9Bhk/sViyF5e3nuSFU0Mn6IveUdZ+N9wftRkbJJv3r803QUnlBJlLO89EuHG5bxFx4xN8kDSSuVu57ADy0L3emXb7w+cAaA5R/CmOwTTRZfVnXfMN3Pb7isr+j/BtYFe46dc4A4sgNK96WZklSRVHWezVjgpkbCGyy1gLa2MRqRZDg8Zg2LHbqMBWX5Xi1ysebNUR4kDRBczVM0OFURRxvmXlaX+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6256.namprd11.prod.outlook.com (2603:10b6:208:3c3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 09:29:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Mon, 2 Feb 2026
 09:29:23 +0000
Message-ID: <0201449f-7f8e-44af-b7fb-e7890e8570e1@intel.com>
Date: Mon, 2 Feb 2026 14:59:17 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/17] drm/i915/dp: Rework pipe joiner logic in mode_valid
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
 <20260130081812.32087-5-ankit.k.nautiyal@intel.com>
 <aYBi67v7ks4V3C1e@ideak-desk.lan>
 <87caf4d2-df09-45a5-83bf-b4705d293e8c@intel.com>
 <aYBt5eSJrW-C9TxI@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aYBt5eSJrW-C9TxI@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0074.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6256:EE_
X-MS-Office365-Filtering-Correlation-Id: d7bee4c5-ee92-445b-dd4c-08de623d8d47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmQwZUpJbnhWUlBHSldrK3E3bm10SHJCUUI4b1pwck1DMnRScVJxRzhWRUts?=
 =?utf-8?B?akxHenZCQ3pUQWRwVE53ZXpBbmMrSFJkMEF1L3FBc0EzU1FsUVZlSjNIQkIr?=
 =?utf-8?B?Mkk1OW1MeUJiQXhJdHYyVWo4blJwdXNZUkxJSFdoVjBwelVuVVpNWHdmb09B?=
 =?utf-8?B?Zno5bTA5SS95U0UwSDcwTE9teVJ0aHE0NWpvblBQWUFuZit3c2dBa0lmMmQ3?=
 =?utf-8?B?bmlKWUhlbE1ydjJmQTZWL2pRSEczeXJFTnVMaEpwejN5TVQzWU9xeUZ6UDZ4?=
 =?utf-8?B?d25ubktnbUx2cDBUamgwZXpZT0pMcXZVSlZFa280RXNwTkVnUWk0NkNSMGVT?=
 =?utf-8?B?WmlQR2w1ajZnRklTWG01WFQ1bi95LzlsRnRxZUxjNVMyL21pbThNTGp3ajdM?=
 =?utf-8?B?TEVZQ3NBTTV4b2o1SmR3a1pUaDJlMjlwZG02eGFXVVFUalFHM1ZvZjREQ1Vs?=
 =?utf-8?B?OUxQYnZJWjJkM0hFQVVKalhSNVlQKzFKci9XSG5KSENZTkdYbVoxWDRtQndS?=
 =?utf-8?B?WWV6ZndDemJXOHRHN3VsOW5Mam9semtaVlpBcHFyc2JMTXhPWGNrU1pLRFU2?=
 =?utf-8?B?VGh2OWJNUFhyM1FBSmYwMkNlQmZCZWJtVUVMNVF5ZExRL3Q1ejl5M0kzcEdN?=
 =?utf-8?B?K2oxMG13Ui9iek9LYjZ2RVJmZDBvQW9rcUtJTktxNytBa29XdnhQTlpSaG5z?=
 =?utf-8?B?cW85aHZ3OGdpN1B0djBDckxnOXdjQXl6UEY5RDFDS0JVM1p0VTQ1SjN2Q2xK?=
 =?utf-8?B?dzAxWExFWWhPUjBsSGRNMDY4VDkzNHc1OHU2NFF1VGIrWkpRNVpDaVluelU5?=
 =?utf-8?B?ak8velJlOS9wNWhGWkF1YzlOSklhTXp3ZHlaTjRXcUhuWHhvWUtkSU54L3dz?=
 =?utf-8?B?UVUrQUEvTlNZbWx3QTJJOXBjL2JEbGtZS0xTTjhwMDBZb0JoRWQxRzVKOGMz?=
 =?utf-8?B?WkV5ZXNkV0dHQjgwVlBKRWllUi9mMUg1a3JHR3d5clVFSkVCWXhxQzZIKy9Y?=
 =?utf-8?B?VmdocWUzbUpGb0tTcERqZnNJREh4N2sxam1UVXRNalB2YVFSR2pTNThUUjIy?=
 =?utf-8?B?eWw4SVE0L05IRkpaaHZnOEhaUWpySFBRYldFaXpiQ3RWM3Nhd1VyL1YxUk9I?=
 =?utf-8?B?Wi92WnJYUDVYenc3aG0yd1NIaWE2MXd3bDlZYWh5b0NPZTF4QlN0aWxrdFlS?=
 =?utf-8?B?ejlxNUlYeEJRY0xxeFlIWHE4aDJBMGhnNVpyak8vcUlvTlNDYitmRkhQM3U3?=
 =?utf-8?B?amtGQi9Lek43MTVJNXV4TWhEdkZvVnVzUXI5ZXlvOUZlMjV5VUplM0NMYSt0?=
 =?utf-8?B?ZjM0U0oxeVYyS2xhRTJQNHIxV1NxMEVRY1RvTEZnUlVoZWtTdjBKbnV2MDdk?=
 =?utf-8?B?M3BmM1Y5VTlqdjF1MGFYVnB2SXZTaDNTUWdIdERXYlFuZGQ4UzZma01lTkQ0?=
 =?utf-8?B?amN0eWt3MWxPc0NtdlVDSWdPWXFHOVY3T3NOakN6TnlOajVoVUcxMHZTRUxH?=
 =?utf-8?B?OXIyR2tUd1lOUWJVbWRTd21KWThIT3pIOFRURzQwU1JjWER1Y3JsMzlTL2dq?=
 =?utf-8?B?QTNUWnpYam1GQzlLVnZubG54UGNacTBlSHV4Ny9jY25mUFQ3Y3BxTlFzb1U2?=
 =?utf-8?B?dFRGNmpwamtMMWFoZytIdzdiajhnaWxIeGtzb1JWQWhjSmNjR05nL2R1L0l3?=
 =?utf-8?B?MDJLbWoxUjN5R2xzMXU5cU1XSDM2dzU5QzUyUVJsajNjSS9hSWNDMTQvaVh4?=
 =?utf-8?B?UVNsbXFtcGZwZmVmd3VUSnBjSlh5Zm55UmFURlJveHZ2bTNNSWZsRTY0cStL?=
 =?utf-8?B?MzBaZVJaVW9zbUNtNW5pajJ5NnBiZ3JsbWhScTFnaTZ1SVliL0w3bGRObm11?=
 =?utf-8?B?M0duV0ZqQ21Hc2RRdk51YWlqUDA4Wk01cDhldEJwSzN1ejVwdDRUdXk3bmxB?=
 =?utf-8?B?YS9OUzlEWGlDVSt3TnhXODh0VDVxcks2c0xiYSsvZnFhdi9mNlZKZ0tCRUJx?=
 =?utf-8?B?OFA4cVdzYUNNN0hjWmk4dkZteWROajZMQmRlTWxrempCNjB0dHZVNXhkTVA5?=
 =?utf-8?B?WjJ2VXJ6ZzU1NDh5TmlaRkIrUzVBYlBNemM3VUQ4SjYyZUprVWpVWmFyQzY0?=
 =?utf-8?Q?O5+k=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eE1OMlp6cEpoQXlqbEY2VDExZDFsMXNXUUpaVDJzT0N6NVovVm5sUDRaQjR2?=
 =?utf-8?B?bnNJNHQrNTR6ZlJRbUhKU2x1Mk0yb1JEV0s0M2gzRStrbmkxODFiMHpTZFJ3?=
 =?utf-8?B?VnhJcWhZQlFQcVZtYm1XbG94K0ZCdjJqQ09hNmVzRlBQdmw3V1FJOXYvVHlh?=
 =?utf-8?B?bnVRaVlJOXRpTEdmaVUwN2c3Uy9McXRsUWZLNkg4N1MxY3dzOThnT1JVcXda?=
 =?utf-8?B?eWVKMDJ1QUozUDJBN3J0Nk5wcHpSUDVkYVUyTnBJQWo5amlleis2UVZjckNZ?=
 =?utf-8?B?RSs5dnpVd0k1eUhSTzdUdytkKzNQMGFrMEcxUVVFVGU0RmhhdmVpamwxYVJn?=
 =?utf-8?B?UU04TUsyYnVIY2hzcnZqVlRVaFBtRTdoWk9vcW1XM3BUU3kxcUMyTzd0YlVi?=
 =?utf-8?B?TUNveXFLSU1NQVRlRDFCR3YvV2trbGNtTjNqZ3hUVHFLVjhDYTl2RXRZSUw0?=
 =?utf-8?B?bndxZEk4RWJ4ejgxZGJCWnhMMUx5V1RGcFc1NUwrcDNxclZQTVA1Y0hVV25V?=
 =?utf-8?B?V25HOWhNQUppK1dMMDlBS1crZWVFWE16aTlhZDVqSHhmak1yc3ZFSFBwR2E5?=
 =?utf-8?B?SUlzcEE2aTNmVW50S083UzE4SkJjdlAzNXRsTGlMWXdxQWwrRENMeDhra0ZD?=
 =?utf-8?B?MkxGTFBXWGtlMlhUUGROaHE3cDF5RXhnUVVqZjhwVjhkZ29LQVQ5YklQc2VB?=
 =?utf-8?B?NmQ0Q0pXR3RmK3hzWmxUWEFmOFg4aFBoTkZSaE93UTNsMlY0SFUxa1gyTTFJ?=
 =?utf-8?B?bkhCSDVIVmQ3QjZPMi8wbVhWV24wOEtsUXhjTGpUQzFiQmF1a3VJU1hzVnhs?=
 =?utf-8?B?UkRXdTc1OWxCOUVsRHg0SHdIdXhDYVo0T1dsQUQwMmYwRjNmWWZ6MmNTeSsv?=
 =?utf-8?B?czVSbStWVnE0cUZHRXBhOG92SkJHaHF5M0JaV3d2N2MzZ3dqRER2TUNNbDlv?=
 =?utf-8?B?dU94eGZTcTQzVFRYRlJYU1orQ1Z3QUNiamQ5cWRYaEdBS2w3Znd1UzVMOUtp?=
 =?utf-8?B?UGtzZHhlaUNyZWljQ2JGZ1pYd0FaeFhNclVFelIyeW4rSWtzWE4xOTd6WUVy?=
 =?utf-8?B?VUdvN2dGL2I0YUpTeHU5NU81TURuY1ZYdDZTa0VqUDcrUFFmSXFhZUk4YmNB?=
 =?utf-8?B?TFd2QTVvYTFMV3hWNUxhQkJFbmxVa0pjellQK21yMGQxYjNSZm9mbzllOTF1?=
 =?utf-8?B?UlA5UjQ0alc5Qm4xb3k4Wm5wa0lkcHZ5TWZScENTNHBLVmJlWllJeS8zT0tN?=
 =?utf-8?B?a0E1RHQwbGMzcjJZWUQxS2k0eFNEU3NEblFqNWFUSHNvNTZRNno3S0xraGow?=
 =?utf-8?B?Qlo5U0x1b1MyU3VXNFZWVmJMOVV3SG0wMnE2R1ljcFJzazFURUFnZDhPeDU3?=
 =?utf-8?B?b3M5dXBlSVJoemlRa1hMS2VqendncjVZY0R0NXZjVy9ldC9rd1NtbWdtOFRh?=
 =?utf-8?B?L3dsaXlzVm9DODgwODVLVjlRQWVrWWVhQW4rRDI1Mjg1MnNLVG9IRTVnRHBP?=
 =?utf-8?B?enVIVFF4RnNJVjhJd2xXQllmQS8yZndmMjlWQlVhS1BEd0gwS25INkgvV2Vj?=
 =?utf-8?B?SU9NUGpXTCtFVUdSbkNsT0NrbnlXUU5nV1JqVDBhazgxT0hUS1prT3I0a1BR?=
 =?utf-8?B?cDFROFUxZlJQUGN3Nzh2OVhjRlRkOW9rN3I3aE43QWpyOGxwV254aCtWSFRL?=
 =?utf-8?B?ZUwzOXZ2MjVQeHcxZDlwVnlhQzlLR2U1VGdUNUwwSjArQXBQUktmNFo2TU5s?=
 =?utf-8?B?TWN5ejBaMGRBcWM0M3NlK3ltZExrZnluYTZ1dHYreVpzWjZtVG9YNU0yK2hh?=
 =?utf-8?B?SUNkeEp2UStwbVBqQjlYT2VUdXFEUFBjdUJqa2ovSWRpVVlRamU0T2FrR2pm?=
 =?utf-8?B?eXpsYlpaNXRoZktBRlVHbFVCeitCSjgxRTlnNitVRlRrWmp6WTdJWHNrNzlF?=
 =?utf-8?B?NmdwT0gxdU1hSXh4Z2F3YVBvWmJLRXNPODE0MTNUUTFLYVVCN0R3RmdCTXJk?=
 =?utf-8?B?Z0dtclgyMkhZK3VQK0dYcW1qRlVGZFRZUWVCbUsvNDBmYVV2QVUvTzRQYkRU?=
 =?utf-8?B?TUhLZi96ZE00K2RJZ2ZrQlF2U3VLVzh2aHJ3eG9UQ2F2ZVdQWU9ybnplbXBG?=
 =?utf-8?B?WVN3N2NwUy9nSGRsdzBzS0s2WTl3K3p6ZGtMcW11c2k2UkJxS1RETmpLSFZm?=
 =?utf-8?B?U00rRjhqZXJVbDk0NldDTG5UTndCcVdTMUZpK1pVYWplbVhFNzg2ZDJaMmtr?=
 =?utf-8?B?R2x6WGNJL0VqZHFsTGprSjJSMHdLVS9Cc0hSZGMzM1RiVm51clhvMGUwWHJF?=
 =?utf-8?B?ZGxJMkdWdGUxL2V0cjIza1MreEVXN0FEd09kNFJINUloMDNZZXBVUENrV1pk?=
 =?utf-8?Q?uHYygxjEEQiE4m9c=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7bee4c5-ee92-445b-dd4c-08de623d8d47
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 09:29:23.9269 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nfoUGXdv3yXX6S8VbDmWeQLayBWJ/m8LSfXUVy6yFJP3nOqtRM6Z4o8BwLuxz62DyOJbiVxcsaFQ33lZhsU6kL1fF883tzKZlukAnQQv1RQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6256
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A58D1CA232
X-Rspamd-Action: no action


On 2/2/2026 2:57 PM, Imre Deak wrote:
> On Mon, Feb 02, 2026 at 02:54:25PM +0530, Nautiyal, Ankit K wrote:
>> On 2/2/2026 2:10 PM, Imre Deak wrote:
>>> On Fri, Jan 30, 2026 at 01:47:59PM +0530, Ankit Nautiyal wrote:
>>>> Currently in intel_dp_mode_valid(), we compute the number of joined pipes
>>>> required before deciding whether DSC is needed. This ordering prevents us
>>>> from accounting for DSC-related overhead when determining pipe
>>>> requirements.
>>>>
>>>> It is not possible to first decide whether DSC is needed and then compute
>>>> the required number of joined pipes, because the two depend on each other:
>>>>
>>>>    - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
>>>>      DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
>>>>
>>>>    - Whether a given pipe‑join configuration is sufficient depends on
>>>>      effective bandwidth, which itself changes when DSC is used.
>>>>
>>>> As a result, the only correct approach is to iterate candidate pipe counts.
>>>>
>>>> So, refactor the logic to start with a single pipe and incrementally try
>>>> additional pipes only if needed. While DSC overhead is not yet computed
>>>> here, this restructuring prepares the code to support that in a follow-up
>>>> changes.
>>>>
>>>> If a forced joiner configuration is present, we just check for that
>>>> configuration. If it fails, we bailout and return instead of trying with
>>>> other joiner configurations.
>>>>
>>>> v2:
>>>>    - Iterate over number of pipes to be joined instead of joiner
>>>>      candidates. (Jani)
>>>>    - Document the rationale of iterating over number of joined pipes.
>>>>      (Imre)
>>>> v3:
>>>>    - In case the force joiner configuration doesn't work, do not fallback
>>>>      to the normal routine, bailout instead of trying other joiner
>>>>      configurations. (Imre)
>>>> v4:
>>>>    - Use num_joined_pipes instead of num_pipes. (Imre)
>>>>    - Inititialize status before the loops starts. (Imre)
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>>> There is still one issue, see below.
>>>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c | 135 ++++++++++++++++--------
>>>>    1 file changed, 89 insertions(+), 46 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 4c3a1b6d0015..dbe63efc1694 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>>>>    	return true;
>>>>    }
>>>> +static
>>>> +bool intel_dp_can_join(struct intel_display *display,
>>>> +		       int num_joined_pipes)
>>>> +{
>>>> +	switch (num_joined_pipes) {
>>>> +	case 1:
>>>> +		return true;
>>>> +	case 2:
>>>> +		return HAS_BIGJOINER(display) ||
>>>> +		       HAS_UNCOMPRESSED_JOINER(display);
>>>> +	case 4:
>>>> +		return HAS_ULTRAJOINER(display);
>>>> +	default:
>>>> +		return false;
>>>> +	}
>>>> +}
>>>> +
>>>>    static enum drm_mode_status
>>>>    intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    		    const struct drm_display_mode *mode)
>>>> @@ -1445,7 +1462,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    	const struct drm_display_mode *fixed_mode;
>>>>    	int target_clock = mode->clock;
>>>>    	int max_rate, mode_rate, max_lanes, max_link_clock;
>>>> -	int max_dotclk = display->cdclk.max_dotclk_freq;
>>>>    	u16 dsc_max_compressed_bpp = 0;
>>>>    	u8 dsc_slice_count = 0;
>>>>    	enum drm_mode_status status;
>>>> @@ -1488,66 +1504,93 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    					   target_clock, mode->hdisplay,
>>>>    					   link_bpp_x16, 0);
>>>> -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
>>>> -						     mode->hdisplay, target_clock);
>>>> -	max_dotclk *= num_joined_pipes;
>>>> +	/*
>>>> +	 * We cannot determine the required pipe‑join count before knowing whether
>>>> +	 * DSC is needed, nor can we determine DSC need without knowing the pipe
>>>> +	 * count.
>>>> +	 * Because of this dependency cycle, the only correct approach is to iterate
>>>> +	 * over candidate pipe counts and evaluate each combination.
>>>> +	 */
>>>> +	status = MODE_CLOCK_HIGH;
>>>> +	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
>>>> +		int max_dotclk = display->cdclk.max_dotclk_freq;
>>>> -	if (target_clock > max_dotclk)
>>>> -		return MODE_CLOCK_HIGH;
>>>> +		if (connector->force_joined_pipes &&
>>>> +		    num_joined_pipes != connector->force_joined_pipes)
>>>> +			continue;
>>>> -	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>>>> -	if (status != MODE_OK)
>>>> -		return status;
>>>> +		if (!intel_dp_can_join(display, num_joined_pipes))
>>>> +			continue;
>>>> -	if (intel_dp_has_dsc(connector)) {
>>>> -		int pipe_bpp;
>>>> +		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
>>>> +			continue;
>>>> -		/*
>>>> -		 * TBD pass the connector BPC,
>>>> -		 * for now U8_MAX so that max BPC on that platform would be picked
>>>> -		 */
>>>> -		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>>>> +		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
>>>> +		if (status != MODE_OK)
>>>> +			continue;
>>> I missed it in my review of this particular patch, even though
>>> I did mention the similar issue elsewhere:
>>>
>>> status is guaranteed to be MODE_OK at this point and then ...
>>
>> Oh yes this was not a problem earlier as I was setting status =
>> MODE_CLOCK_HIGH inside the loop.
> It was a problem even then, if this continue happened in the last
> iteration.

Ah right (face palm).


>
>> Thanks for catching this, will fix this in this patch and the patch#8 and
>> re-send.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>>> -		/*
>>>> -		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>>>> -		 * integer value since we support only integer values of bpp.
>>>> -		 */
>>>> -		if (intel_dp_is_edp(intel_dp)) {
>>>> -			dsc_max_compressed_bpp =
>>>> -				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>>>> +		if (intel_dp_has_dsc(connector)) {
>>>> +			int pipe_bpp;
>>>> -			dsc_slice_count =
>>>> -				intel_dp_dsc_get_slice_count(connector,
>>>> -							     target_clock,
>>>> -							     mode->hdisplay,
>>>> -							     num_joined_pipes);
>>>> +			/*
>>>> +			 * TBD pass the connector BPC,
>>>> +			 * for now U8_MAX so that max BPC on that platform would be picked
>>>> +			 */
>>>> +			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>>>> -			dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>>> -		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>>>> -			unsigned long bw_overhead_flags = 0;
>>>> +			/*
>>>> +			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
>>>> +			 * integer value since we support only integer values of bpp.
>>>> +			 */
>>>> +			if (intel_dp_is_edp(intel_dp)) {
>>>> +				dsc_max_compressed_bpp =
>>>> +					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>>>> -			if (!drm_dp_is_uhbr_rate(max_link_clock))
>>>> -				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>>>> +				dsc_slice_count =
>>>> +					intel_dp_dsc_get_slice_count(connector,
>>>> +								     target_clock,
>>>> +								     mode->hdisplay,
>>>> +								     num_joined_pipes);
>>>> -			dsc = intel_dp_mode_valid_with_dsc(connector,
>>>> -							   max_link_clock, max_lanes,
>>>> -							   target_clock, mode->hdisplay,
>>>> -							   num_joined_pipes,
>>>> -							   output_format, pipe_bpp,
>>>> -							   bw_overhead_flags);
>>>> +				dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>>> +			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>>>> +				unsigned long bw_overhead_flags = 0;
>>>> +
>>>> +				if (!drm_dp_is_uhbr_rate(max_link_clock))
>>>> +					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>>>> +
>>>> +				dsc = intel_dp_mode_valid_with_dsc(connector,
>>>> +								   max_link_clock, max_lanes,
>>>> +								   target_clock, mode->hdisplay,
>>>> +								   num_joined_pipes,
>>>> +								   output_format, pipe_bpp,
>>>> +								   bw_overhead_flags);
>>>> +			}
>>>>    		}
>>>> +
>>>> +		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>>>> +			continue;
>>> ... this will continue with status == MODE_OK and the loop can terminate
>>> like that. So need a status = MODE_CLOCK_HIGH before continue.
>>>
>>>> +
>>>> +		if (mode_rate > max_rate && !dsc)
>>> This needs a status = MODE_CLOCK_HIGH as well.
>>>
>>> With the above fixed:
>>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>>>
>>>> +			continue;
>>>> +
>>>> +		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>>>> +		if (status != MODE_OK)
>>>> +			continue;
>>>> +
>>>> +		max_dotclk *= num_joined_pipes;
>>>> +
>>>> +		if (target_clock > max_dotclk) {
>>>> +			status = MODE_CLOCK_HIGH;
>>>> +			continue;
>>>> +		}
>>>> +
>>>> +		break;
>>>>    	}
>>>> -	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>>>> -		return MODE_CLOCK_HIGH;
>>>> -
>>>> -	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>>>>    	if (status != MODE_OK)
>>>>    		return status;
>>>> -	if (mode_rate > max_rate && !dsc)
>>>> -		return MODE_CLOCK_HIGH;
>>>> -
>>>>    	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
>>>>    }
>>>> -- 
>>>> 2.45.2
>>>>
