Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FADA987AC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 12:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B66B410E1CC;
	Wed, 23 Apr 2025 10:39:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbtoBLM9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7BA910E1CC;
 Wed, 23 Apr 2025 10:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745404774; x=1776940774;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QmpRpHPVd0zIGmG7s4HbB1G7PlzydH+pD8iBgGenhmw=;
 b=MbtoBLM9ihzCBjxNvMBoCgX72JxZycCO8h1A1Oocle0U3/d2ij+EZUSN
 c+4a/15LaBUDkOugpJ2rWJxQOeucG6Q6b859/mlz8l1iuMMTEtDl4Zmwi
 gtWQUUUm4Fh5f2wsGmKhXQ9JJA4sX994t31poKat3kC3EDqtTZjt7/PFS
 y5Y1Z7uDR6bk5NOhRBGoJHDVe3mf16Y3VIp141XpwRII/oD9S7c/jTgZI
 JAx0pDoxvVR8YZKMenU31E3n0jbRqUzOf0YtwaHE3SKTvhZ3qQPLsnko/
 +iKi289jPcZ0aF9BRPaiDGlrG4JpBxlPNwgXgH7umoqbablsI26WO4AN4 w==;
X-CSE-ConnectionGUID: 3keOcPsuR9O2sFBKvQtnzw==
X-CSE-MsgGUID: Xtf7zREyTk6tlxpUNhxaGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46111710"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46111710"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:39:34 -0700
X-CSE-ConnectionGUID: 0HDSXYZDQVO+ph7LooTQxQ==
X-CSE-MsgGUID: ccHJ2vXuR/SWdYj5uZ6+Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163333619"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 03:39:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 03:39:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 03:39:33 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 03:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zCRgUHMoZMWg0refw9Ite8qAgPr+HDI1broaBq/TiO0e01Aly64tG2Wroq/N7QC9PxoWfdVbwVX5NfkYLpsJIHAtYHgUjpXvV6x4L14K3WovD/vrk8NtyaVnv8DsqRmanKIDMTEsPnI2i/4RjO0paE66pRY02cqD8AIEZQDq3BKIh/EqKlNeWWuyBYYsSOwQjdV5xKGrmbs76r0OVzmAkMzZ/wn0eWbyUhdB+4n3WfVEO+0FLw5NuReCD1vLyeftaI1f4COjvFd7omOEWgeDsMc5pxw7cWlPGSmT4IUqQyWBpaHqMDpBpKss0tBvvdaKJ6UEQd6Szcwi8/FjvAPgOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QmpRpHPVd0zIGmG7s4HbB1G7PlzydH+pD8iBgGenhmw=;
 b=ZPEh/hEnkGAw6zD3PqjQPd/JrHWSdxwTkoJ5s6+R1FZ8+p9cKHTRYhht6Mmyk+Azvw79n1PUW7fIBn/7y1TjZwYEne8ZzoTVM+BqC3P7VsbsewXzkC5mO0gSBX0FaL5Yup4YbJR7TFBa/FPl4ERxUpsnHFhPLjP32hGq38QUB75okNX+dMuDM5g7128hLGMbIEXe9yZEh3HAM26D7XsEES5cjqBW3aP77onr46Ad3R7ZZMhaTlC9CE/MfDgHKBwBAPHPn14/0qeJqhNlM6tIOOBkxFCFAOgL62n6YlrXFf/TgcpfKxko52MAKhc188lVP+/KFJt2u/o5/AJqRUvuEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6576.namprd11.prod.outlook.com (2603:10b6:a03:478::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.35; Wed, 23 Apr 2025 10:39:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8632.030; Wed, 23 Apr 2025
 10:39:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v10 11/11] drm/i915/display: Disintegrate sink alpm enable
 from psr with lobf
Thread-Topic: [PATCH v10 11/11] drm/i915/display: Disintegrate sink alpm
 enable from psr with lobf
Thread-Index: AQHbtDS2iTEwEBtvdkiqfaFf3MCxTbOxD5GA
Date: Wed, 23 Apr 2025 10:39:30 +0000
Message-ID: <178171dfb01a6a00459967709905068aa13dc97b.camel@intel.com>
References: <20250423092334.2294483-1-animesh.manna@intel.com>
 <20250423092334.2294483-12-animesh.manna@intel.com>
In-Reply-To: <20250423092334.2294483-12-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6576:EE_
x-ms-office365-filtering-correlation-id: 87528ec4-352f-4914-0339-08dd82532103
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?cGNaLzkyaktzNkxpT09TVFEyMXcvR1V3TklTVk00d1NRbHVzRG5vMmNGWW41?=
 =?utf-8?B?RDlubTk5NEtVZGxqTzBmdS9VVHhoVlRqZnBYcTdNTy9FeDY2QksxWkVZMFBJ?=
 =?utf-8?B?TllSUkRQN1hncVpIL1pLT1k5YVNZZzM3Sk1aWE56UGJvcnZmNkZHeU1lUjhw?=
 =?utf-8?B?dlNFNzVNNUxpbGFUYkNQZFNxK2RoYllvb0ZuYm55amhUd3lqSnUvMk96SDdi?=
 =?utf-8?B?Z1oybGdqZmdmQk9tRENmelpkZ2QweTB2dUFKZnZQLzZOVXI4RnBXcmhKeFp0?=
 =?utf-8?B?NUh0QTN6bGtaQW5SaVFoeGFPR1c2VUxaQTRaNk5TZ2IzanozTDA3bGozNTd4?=
 =?utf-8?B?V1JQU0k3TE1BWno2MFZRWXk4NlRjTmNINjl3WjZLV1EzdnlLaWlDaWl6SlZn?=
 =?utf-8?B?eFlRSG82c0FqR05qMExnakZUUE4wYS9tTG1rbnByNGRaa3RTM2l0RmhNM2tz?=
 =?utf-8?B?Wk9SdVI0ZVRYdjBBd2gyVjRNVUhIQzJZRHQvYUN4N1JtUVBueDZOSHZxZXF0?=
 =?utf-8?B?V09XbWhRS08zcWJFbS9iOTdLaDBmZW5mcUk0UUVoYkgvTUlDSnBYbE12M2xh?=
 =?utf-8?B?dWlOTHdpK1FVcklnMmpZekkrMmQ4REl4TDdWNllqSlY3b1N0emFseVFEVmpr?=
 =?utf-8?B?cVh5cGZkbzQ0VWFlVmo4bVJJY2JPZkF4SE5YdFhFMDNqd3BzRG83d2VHWm1J?=
 =?utf-8?B?WjZGN2pYSjh1UWpmRStSRVplbElUNTRMZnRWNkMxSkpLL2NxZ0wzOERPQ3NY?=
 =?utf-8?B?REM2Tnk3WjJxcXA4blZUZWc4cm5ta0RZWGk2TDFKSnZ1djhXUHJZS0w5Wk9u?=
 =?utf-8?B?MytIakZIZnhrRnR0ai8yUEovNlFWZFVZT09UaHFkbW9XcmdSL3VaWHZRdEcv?=
 =?utf-8?B?djhPdWRlbit6VE1JMVFWenFvc05WeTBIbElORWJINHNsNDRmbW1jbnRRK1BS?=
 =?utf-8?B?ZmREOUdyRXBHRStjWlpDVlcvNEo5cUFoa1FORHpSWkIxZ2Y3NjlsU3NUZGto?=
 =?utf-8?B?d0ZWdFpWTUxWVzRZbVVHVFBkSDA1ckxlNTBDZWJMWVRKK0E4a2lSNnFnSGx0?=
 =?utf-8?B?S3BYWXRnVGRsMHZMOUhtUHVKQmdYSERxRzI5ZDByOEhYczRDZnhVVE8rWUFN?=
 =?utf-8?B?OFNpcmJlaEVtaVYwTEZ3SjR2V0oydXVYTjlrbjhRUmtJZ1RjQ0VyU05EMzYr?=
 =?utf-8?B?RjlvM3NoakIxdkFyemZRRHdFRDBkSWRzekFob0d1ZDNYbFBrK3dkaXRCQ2Zy?=
 =?utf-8?B?cFd1TlZhTW4vVWxnbkxtWkxGT2RpL0UxK29DWFdLMytRaXp0dEg3SnVvMFJz?=
 =?utf-8?B?cnl3TkRyZVdYYjRzRER2UmlrdzBYbXFGZjNzbWpDRXhSSTZSMU5YTHYvb1FK?=
 =?utf-8?B?Z1ltNHNYYVBTN1VpTVVTMVhRQWpBZEJla3F2eHVUaENrazFCNDc2azY0dGhK?=
 =?utf-8?B?ZWI5ck03QnlYWjNPSjZHeUtMTWIyVE15VmhKMUVWaG0wQ0xQQnp6UkRJSW1O?=
 =?utf-8?B?MXFGL3hsdkkybjhUNEY5cGp6clA2MVRBSzFhaUlienFDMEhZNForS016eTFY?=
 =?utf-8?B?SnhaUWpWd3hENk95T3BrMDRBd0dCSVFqSkROY213RlJ6VTdyNDA3QWZuMmRI?=
 =?utf-8?B?L0IxNGZpM1Bsd2JiajAzU1RXRVpEcSsxSkVCdStNaVNGWEs3WkFHaExyY3B4?=
 =?utf-8?B?WmVuY0tpck5JL2EvNHk4MnRyTVRjdkhpRlVWRUVoYk10TldBREJUTTZoZS9Q?=
 =?utf-8?B?aUhoUUQvaHVsRnkranRPZ3NvejJMaUlKYUdlb1RvVk5KWjZ5Zk43MjV1cWZp?=
 =?utf-8?B?ZXdKTGdVM2lDTkcvVStUeFBkU2M1SmU5OE1Mb3FONzlpa0lCUEpLK3FNU3BQ?=
 =?utf-8?B?dG5jaWlDekpJaEtsUWgzOTNIaXg0NkVWNmVvRXVLZG5tVCtKVWZCRDEvczB1?=
 =?utf-8?B?aWU2b0JLb2k2RWtaV2J4SWFZdUthak9JbTd3RHVMYnlFVXNFRENTSEdDc2do?=
 =?utf-8?B?cEw3WDlEclRnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M1dpZVZmNDd6VndmS2RoRHQ3dzY1b0FUU0U1TkQxSEFITzNHQkhZOFU4Ym5l?=
 =?utf-8?B?VVQyTEZFd09aL01CZS82RExDdnpreDZBRldDS0o1WXdyRU9HUEhMdFVUZTNV?=
 =?utf-8?B?OHN4cXRicGt4eXlGNHFsNXRQRHRhYlI1VWNYd0llTmZlRHFuVXlpWXVGcHBv?=
 =?utf-8?B?TU52VTVBbjZWWkdQOWhFMEhBRm1WWkFPRTVjSVpRQ010djBVNnppb1Jidm1k?=
 =?utf-8?B?UThxLzZ0cG8vRFdlNVRuaksvM0xXclQ1WmdtdFk2WWtpWFkzMDBUZG5JcGxR?=
 =?utf-8?B?azNDSm5QQ3BZT0I5VkxMRU5GK3RFM1h1akhSRXhyc0ZBb3JhS3ZMS1p2NzJQ?=
 =?utf-8?B?U0FLb2tUYWk3ZUFrZDUreGVkSGtBNGpTeFFiZmtRSC91S0NVeTNVbjVzbkJi?=
 =?utf-8?B?RFVxd1gvT0NON1NIRUhnbU15eXFHTmw2bktSNFA3MGI1WFlRQWxrV0FuS1Ni?=
 =?utf-8?B?WXk5NHExTXA2UmRZWHlwOG8rM1FMMG45NkxsV21IVjVMRFFKaUF2eTRyVGJp?=
 =?utf-8?B?Q09IbVhIc0JZNUZIRzQ3S3dGRzF1WWtGM2VqaThGTkFrR0xOUjFHWHcvbllo?=
 =?utf-8?B?TnF6M1RFMEQxMDBUaWlJa25qWjRyS1g1UUJnbDZGSFlwdkE4QVhIQi9KWkpD?=
 =?utf-8?B?R3pqaWIzdDhqcE1jR1gzRmVEVTRkSWRoSzdBaFNWZ3k0SjZoaGlDaTF0Nmts?=
 =?utf-8?B?eGJINjFjZDhNRWdjbGhZY0h0SnR3SW01SW41NCsxTm5YRjJ3Nm1XMFhSdTN4?=
 =?utf-8?B?TEZqYklOdzNkblNLRnp0bFh0YUFqWDkybytuVjhxVzFndG5td0F1UnQ4MjFr?=
 =?utf-8?B?UEtWcHBWQ01BaGlpd2RnMWVjZ2lIdWhjMnMwNzd1VXhnUjZ0b01ORUJodVBz?=
 =?utf-8?B?TVVaYzlaUEJiMVlNUHFsLy9UcFV2NklzMlpjazdUUjFuRWt0dE1pZE54VVdR?=
 =?utf-8?B?bW43MWozdjFkNWVVL3Brb0JLbjZpRmdVV1JNbVdBTHB1c1VCU014T0tDVjZD?=
 =?utf-8?B?Tys0NW5NUk9tbDloK3Z1TEtkbmFyeEJ6cytLYTZMRWFyaTIzWDc4THkweDJG?=
 =?utf-8?B?aVk5Ty9aRnBBa2QwY3dQZXFXWnNXdjQxQWVpcjJHTDZyczhHSFRCWkZFMzdl?=
 =?utf-8?B?dVplYmtGNUI1Y1M5RDlUT2w2UEVsUTRYN0FyNm9wWWZMZGRaUndvRUQxYWpE?=
 =?utf-8?B?bEd5V3pFWmswOU1vUXBTeTNJdkluRVV6Mkt3VGRUVFVvcTR3bk1wckwwSHZM?=
 =?utf-8?B?Z3NVQlMzQ3p2NWdUQm9BYzhYY1JqQkdQeXBaZG9OY29kdzR0RkMvNTk3aUN0?=
 =?utf-8?B?MnVrSllKK1FWQVFhQWgrNnRsY3VsWlpUUWpucFo0ZzcwNjdaMTdsNmRQZGtp?=
 =?utf-8?B?eXF1TGJtRkk1ZkVsTlJKYjRNU3RQYmRGNUZBZlc0VGpDMFhlbDVSa2xhKzJo?=
 =?utf-8?B?YitNOHlLaFdPT1Q3WDhzUHdnY2lVb3pVK0NwUUFzSTFQOFZVNkgycFRLcWxv?=
 =?utf-8?B?S1BIelRhakx5cnVKNTJMV1hZT1B0NlNIanV0dC9IaUFpREo4YVQ4YWRYaFZX?=
 =?utf-8?B?bzVTOHJoZTlGSlZnTkxPVVRrcFJNNnZRaTRzWTRyUFE2Z3N4Z3k2ZERVenht?=
 =?utf-8?B?azY5TGJsOWZkL2JmQjJDWnNtRVlaaFZQYzJEZ3kyWXMyMExDTHU1aDdmUFVk?=
 =?utf-8?B?K3dIYWgzQ0FQZ2hoZjFxczZFbWdSMXFqckVac3ZkVDRuZm50N1hvayswZ1NY?=
 =?utf-8?B?VW5zVG5iTDdzQ0lyZzFCalN4cWdMU0dUVXdhTm1ZVmFNVXJZUTY4bWV0QVJy?=
 =?utf-8?B?aC9nemNPNmZXTGlOYXlrUE8zYzZpSm9mRzVYQlpRbk5sQnA3bmtRQU92dm5M?=
 =?utf-8?B?aVRzWnA2Uml6VW1QYnJtMEdWc1cvM1l4RWtFT0lzckFLUEJDODYvMDNNZzNE?=
 =?utf-8?B?MWpvcnZFNEJQYm5zUktmbXJPbC9zWEhCUmVjUm0va0VZZzdON0poY0l5cjEz?=
 =?utf-8?B?TVZnMWJ3NjV3cExqMEtaUW81K0NHdlBncXNaVEtJS3Z0aWhrZE9La2VtV0lM?=
 =?utf-8?B?RlMrdFNSUDJveno5TWdyVVltNm5NNjhWMWZyMmREME5adXNKS1dVVlczeWNR?=
 =?utf-8?B?cWdqaXR0VFJqeHFQZFhTcGszMnJ0YVQzMkt6WCtzb1NnTVZlZkJwZlUreGl0?=
 =?utf-8?B?M3FtNG81WmdaNHJyODB5VjE1ZDNldjlKVDM4d1BKVjY3N0NrUXo4VXR0SmU0?=
 =?utf-8?B?Z3hHQkJHK0Z6akx3aFN2WFk2VDl3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <44833F98E3EC83419226CAE27AD1A976@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87528ec4-352f-4914-0339-08dd82532103
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2025 10:39:30.3789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eusL/J+1acdeF6tCE+gsdQHVcir6MvWKk+36o3T8/eYHY1g2IED6hrjUgrTJ+1pJOJMqFHgLkmj/mbmyIn9QFj8a3LyHAk3hy9hBeAhQCP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6576
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

T24gV2VkLCAyMDI1LTA0LTIzIGF0IDE0OjUzICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBNYWtlIGEgZ2VuZXJpYyBhbHBtIGVuYWJsZSBmdW5jdGlvbiBmb3Igc2luayB3aGljaCBjYW4g
YmUgdXNlZCBmb3INCj4gUFNSMi9QUi9Mb2JmLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgMjUNCj4gKysrKysrKysrKysrKysrKysr
KysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqAgfCAy
MyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gwqAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlv
bnMoKyksIDI0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggYzRiNmRhMmU2Y2NmLi5kMWYzODUyZTUxYjUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC00
MjYsNiArNDI2LDI3IEBAIHZvaWQgaW50ZWxfYWxwbV9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0K
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoAl9DQo+IMKgfQ0KPiDCoA0KPiArc3Rh
dGljIHZvaWQgaW50ZWxfYWxwbV9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LA0KPiArCQkJCcKgwqAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNfc3Rh
dGUpDQo+ICt7DQo+ICsJdTggdmFsOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBlRFAgUGFuZWwgUmVw
bGF5IHVzZXMgYWx3YXlzIEFMUE0NCj4gKwkgKiBQU1IyIHVzZXMgQUxQTSBidXQgUFNSMSBkb2Vz
bid0DQo+ICsJICovDQoNCkkgdGhpbmsgeW91IGNhbiBkcm9wIHRoaXMgb3IgYWRkIGl0IGludG8g
aW50ZWxfcHNyX25lZWRzX2FscG0uIFRoZXNlDQpkZXRhaWxzIGFyZSBub3QgaW50ZXJlc3Rpbmcg
aGVyZSBhbnltb3JlIGFzIHlvdSBhZGRlZCB0aGF0DQppbnRlbF9wc3JfbmVlZHNfYWxwbS4NCg0K
Q29uc2lkZXIgd2hhdCB5b3UgZG8gd2l0aCB0aGlzIGNvbW1lbnQuIEFueXdheXMgZnJvbSBteSBw
b2ludCBvZiB2aWV3Og0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQoNCj4gKwlpZiAoIWludGVsX3Bzcl9uZWVkc19hbHBtKGludGVsX2Rw
LCBjcnRjX3N0YXRlKSAmJg0KPiAhY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ICsJCXJldHVybjsN
Cj4gKw0KPiArCXZhbCA9IERQX0FMUE1fRU5BQkxFIHwgRFBfQUxQTV9MT0NLX0VSUk9SX0lSUV9I
UERfRU5BQkxFOw0KPiArDQo+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgfHwg
KGNydGNfc3RhdGUtPmhhc19sb2JmICYmDQo+ICsJCQkJCcKgwqDCoMKgDQo+IGludGVsX2FscG1f
YXV4X2xlc3Nfd2FrZV9zdXBwb3J0ZWQoaW50ZWxfZHApKSkNCj4gKwkJdmFsIHw9IERQX0FMUE1f
TU9ERV9BVVhfTEVTUzsNCj4gKw0KPiArCWRybV9kcF9kcGNkX3dyaXRlYigmaW50ZWxfZHAtPmF1
eCwgRFBfUkVDRUlWRVJfQUxQTV9DT05GSUcsDQo+IHZhbCk7DQo+ICt9DQo+ICsNCj4gwqB2b2lk
IGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+IMKgCQkJCcKgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiDCoHsNCj4gQEAg
LTQ0OSw4ICs0NzAsMTAgQEAgdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiDCoA0KPiDCoAkJaW50ZWxfZHAgPSBl
bmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+IMKgDQo+IC0JCWlmIChpbnRlbF9kcF9pc19lZHAo
aW50ZWxfZHApKQ0KPiArCQlpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkgew0KPiArCQkJ
aW50ZWxfYWxwbV9lbmFibGVfc2luayhpbnRlbF9kcCwNCj4gY3J0Y19zdGF0ZSk7DQo+IMKgCQkJ
aW50ZWxfYWxwbV9jb25maWd1cmUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiArCQl9DQo+IMKg
CX0NCj4gwqB9DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBpbmRleCAxYzVlYzNmMGIwNjYuLmIwMzRjYjJlMDk3NSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC03OTQsMzIgKzc5NCw5IEBA
IHN0YXRpYyB2b2lkIF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCwNCj4gwqAJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRU5fQ0ZH
LCB2YWwpOw0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc2lu
a19hbHBtKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IC0JCQkJwqDCoMKgwqDCoMKgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiAtew0KPiAtCXU4
IHZhbDsNCj4gLQ0KPiAtCS8qDQo+IC0JICogZURQIFBhbmVsIFJlcGxheSB1c2VzIGFsd2F5cyBB
TFBNDQo+IC0JICogUFNSMiB1c2VzIEFMUE0gYnV0IFBTUjEgZG9lc24ndA0KPiAtCSAqLw0KPiAt
CWlmICghaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSB8fCAoIWNydGNfc3RhdGUtDQo+ID5oYXNf
cGFuZWxfcmVwbGF5ICYmDQo+IC0JCQkJCcKgwqAgIWNydGNfc3RhdGUtDQo+ID5oYXNfc2VsX3Vw
ZGF0ZSkpDQo+IC0JCXJldHVybjsNCj4gLQ0KPiAtCXZhbCA9IERQX0FMUE1fRU5BQkxFIHwgRFBf
QUxQTV9MT0NLX0VSUk9SX0lSUV9IUERfRU5BQkxFOw0KPiAtDQo+IC0JaWYgKGNydGNfc3RhdGUt
Pmhhc19wYW5lbF9yZXBsYXkpDQo+IC0JCXZhbCB8PSBEUF9BTFBNX01PREVfQVVYX0xFU1M7DQo+
IC0NCj4gLQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1JFQ0VJVkVSX0FM
UE1fQ09ORklHLA0KPiB2YWwpOw0KPiAtfQ0KPiAtDQo+IMKgc3RhdGljIHZvaWQgaW50ZWxfcHNy
X2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCQkJCcKgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiDCoHsNCj4gLQlpbnRl
bF9wc3JfZW5hYmxlX3NpbmtfYWxwbShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+IC0NCj4gwqAJ
Y3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSA/DQo+IMKgCQlfcGFuZWxfcmVwbGF5X2VuYWJs
ZV9zaW5rKGludGVsX2RwLCBjcnRjX3N0YXRlKSA6DQo+IMKgCQlfcHNyX2VuYWJsZV9zaW5rKGlu
dGVsX2RwLCBjcnRjX3N0YXRlKTsNCg0K
