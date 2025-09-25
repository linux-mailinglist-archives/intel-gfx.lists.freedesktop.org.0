Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CC1BA09E8
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Sep 2025 18:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556BF10E98E;
	Thu, 25 Sep 2025 16:32:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ObzG1Hk4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBAC10E990;
 Thu, 25 Sep 2025 16:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758817930; x=1790353930;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zWfu2s04G/xdtjiDvLyZLvAPGvS6xbMu2mzAjHbtHU4=;
 b=ObzG1Hk4MzBzm1+6Wo+aGlLgjR4D9SHxGsqgQ5mZ/z8pyD+m/DdXNpGR
 OfkcujUKbbmcjE4f90hGIkFjBoVtvIoXXdj1bZQUiBwQ6FIwIRCYvQHUU
 flyLB0uBzbw63mxLFGrYqiQtTWxY5t9rt90o5G50jE2tCFhW0z8F/Icnc
 7qw7NW0gS+8ikX8lBonx8/Up/ASuYkz1icw5l0eJuHmnr/3g+GVHeh9U+
 iTDyQAV0tKY4EUc+reShx72m4EU6vi1issr5zLv761R17E1LkLQevaOJz
 fynRm+DUrTgDhGvxBGAkEzSCleN80KZnWZX/V0gU/0GExIMzoupAYWvXk A==;
X-CSE-ConnectionGUID: tZAPmeM8RW+8pPxxK0nvmg==
X-CSE-MsgGUID: ri4Sg/CfQMm4wpJUHNtiyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="61312807"
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="61312807"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 09:32:10 -0700
X-CSE-ConnectionGUID: Weg4UTMkQOOO1kaSzLXLog==
X-CSE-MsgGUID: 8udBaaBWTWmBXVZ5n18X+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,292,1751266800"; d="scan'208";a="177433236"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 09:32:09 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 09:32:08 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 25 Sep 2025 09:32:08 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.62)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 25 Sep 2025 09:32:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EVFcZHUhmyEwVfkjWmYfsihyvpVi8SKfzisXr4NdBiF3Eha0d/BCmcCVybprsD8UGGMCikb0C4JjVY6N2/slZBrenWOibctbE6Ula+3B/iFzcrK1tAF1JPtzepX+FNs2kt4zabPipsPurCdZxkH6FFhLY+URt3EJNMzaaYsw/7wujNq863ElRKf1YDjeAAzic+si91kw1BFUW2c+5zWTl0ngrOnaI1Nvqmb16PLCrWUFYUG1PsKWYAYEohUR2JCEWQpsmC3n4yl0G4ozhEzH4hbaW7DzTaPPkFk27zCp1z9QC83eMrzRIWkSeE3NFKlBpWM8NYks9vXlpaRRY9xUtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zWfu2s04G/xdtjiDvLyZLvAPGvS6xbMu2mzAjHbtHU4=;
 b=EBftR8Hj8ax9vbnVi81VsYeqgBX+8NBTfamy1Dv+olOktg5+M8unbG6Wvky46/AcDBWrqg6IB9UGpgp/GDhZQidlw1bmIJDkXmSlQK+tat4bUWTwtogMrq++qEfeye4KKdHeg9yQgywo8UpIMiVBgYTRhuZV7xi3MCSnslmt1AsExZH1F0oyIY2stwFcLc3+gDhtDZaymFReGZ7CqWp0zc/7ZnETx12jUoIVm+I3pp0OyyDq7/zY11GdUXawPpWbJNMbFrFyxvmp1A3H41FKPRWhYilbrqF3sJvCwRLEMYWEiLLyNprUYma1PYoJDYBiOz5ddKJ3lkfA1I02PUBVRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BN9PR11MB5324.namprd11.prod.outlook.com (2603:10b6:408:119::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Thu, 25 Sep
 2025 16:32:03 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.008; Thu, 25 Sep 2025
 16:32:03 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Garg, 
 Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Topic: [PATCH] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Index: AQHcLTp6zKEFOPWWuE6SiB5/DJ1A97Sj4n2AgAA25IA=
Date: Thu, 25 Sep 2025 16:32:02 +0000
Message-ID: <471fef17c747ee7b5998bfee9ea77ded05f73f2e.camel@intel.com>
References: <20250924100308.346808-1-vinod.govindapillai@intel.com>
 <IA1PR11MB6467D2916BEDAC41E9993181E31FA@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB6467D2916BEDAC41E9993181E31FA@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BN9PR11MB5324:EE_
x-ms-office365-filtering-correlation-id: b78b15fb-ae1d-4060-34b2-08ddfc510ef7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?UnMxeXFZMWJoaEZuSGNNWGRXZER4bDZHNVUxTGpPWGh6TVlYeFNzZG9BbUF3?=
 =?utf-8?B?MlB1eUcxT3E1aHV5dHJRWlhYbE9EbzgvSWN0QkVWcTJnUjlxbFBwQWR1NnRw?=
 =?utf-8?B?WW9FZW9mSy9vMUNMUDdYblNRck1MTlRVT21tT21LVjFjeEszVGJXeHdvTk9U?=
 =?utf-8?B?dTFzbitpS1l3TkVwTlRQbXM5Sk91RkFtNytzQmRRaERjamlUMFRoeEZTTlBH?=
 =?utf-8?B?Ums0dFo4SE9jWmJNenUrcmxLS3Z4VENhVFh2VVlwZkJHcERHMmx3aE5URDkz?=
 =?utf-8?B?aHpjVzRkc0VsZWJPN3FsUitCQ0VjOEtDV3dzWUxrQ3lVK1U5YVFvc1g3YWwx?=
 =?utf-8?B?ZERMbHQ1My9Jekx5VGNUTlR3TERDdk9QMDMzYVpzcmZrdndIdGdLMFJoMHNs?=
 =?utf-8?B?K0JjWTJiSXY3cUk1MWF6SVEwaWViZElrRVFBeWJLZXo1TmV2K1RJZ2hYK21k?=
 =?utf-8?B?bzNFd0VvdVRheVEvdmJyMlVUbzBET2NwWm9QT203akhkL1UxeHBhUWg1MDMy?=
 =?utf-8?B?d2h0a2hndDFzQ3VINDhxYXpjK0luSUJVYTdzZEwvamtwenZmZHhPN3Q5WTBv?=
 =?utf-8?B?cHVIUTM3aVZRUmtjbU9EbVZyR095UDJMbDl4ZXNZVXA1YUE4S1BpNWc4dnR1?=
 =?utf-8?B?NXo5ZUtydzJvaC9rK0Jzb0M1aDhWR1ZwVnRLNldTVDN0UEFqdGRXTk5PQ3Jp?=
 =?utf-8?B?bnVXenZkZDVWajgvM05PSnZpajN4MjhnSk1WQlFIK2lSQkVzOERGM1h0cmtM?=
 =?utf-8?B?WTdYR09rR2NnWWRLWEdBdFBqWTBEekx3QTlUMXEzRUpmRE5nY3JEblpRamlz?=
 =?utf-8?B?eG9IRWE3NElpbEVXbk1QL3hkMXhycjl1MWJUNGIveWVmdUI1bVZ2eTgwdWlk?=
 =?utf-8?B?R0pTdG9mMXdHMjQwOGhhbVJXSDV1QmwrUy9hdGVCWlhraSt2cGsvVUhobmVD?=
 =?utf-8?B?TkRhdVdWOEthQm1IWVFXWXJlSktDaUV4RG5NNFFLTlVMdjh0M1pVNUYzVGpH?=
 =?utf-8?B?b0NNblFUNVlPNTJaQlUrUFhNVHRVSWV6T0grY0UvQUJpVlpVM0lCYUg2c2xm?=
 =?utf-8?B?VkRHVDRGZjlUMWExaWRJK1lJa250SXpRcGVpQkVHNGI4TW5URUdROWduZ2ZQ?=
 =?utf-8?B?ZkZaWm9mbHg3UW9lZHhyNFFLWEZsZDVRV3pVZ0Z1T0JyUVVHdDZ4a0JxY2wz?=
 =?utf-8?B?WFpBL3BNaTBJelFPbVkraDc1eHNoaVZwNitmc3VkL1ZCZnZsdmZDdFRRemN5?=
 =?utf-8?B?Mk1vZVh1aWRRSkRjNXNlZWRDNXRDeHdqNndDYjMzOUxLZDFQUVAyeHdmTXA0?=
 =?utf-8?B?Q08ybmM3UE5vMlU4UUlQK0ptbGJpTFVVZ3hQcU96Zmt5bFpUREdBY2RnTFhm?=
 =?utf-8?B?SWhWMEVIR3NnM2RTcExFTjhoZzM0eWxKMnVOZE5JaDRxaVZHZW1CbklFMmtr?=
 =?utf-8?B?b1k4Ujl4M2pFVmt1STVaY1BxaW5uTXl1WG5JdW01bHNLQmRlTUk4L1Q4WVNs?=
 =?utf-8?B?R1IxRko2ZHE3ekUrU25HMEhuMk1rMy9ZYVFJbzQ3MHNSaGlSRXM5Y0dmSzBT?=
 =?utf-8?B?VnBzZkZXb0VZTzV5SVE1bEZ6a3doWjRuSExCMUtqZVJsMnNhWFFEUHEvRzRY?=
 =?utf-8?B?TS9vU0NNWW9wSm5RRG5KRHNWblNOUVJYRC9rejhlOTlWZzlxTzJFTk1nWGFC?=
 =?utf-8?B?WVhZUTJXNVZHVjhOTXZJdHJMMUZ4aEhjUWhTZ1EvQjUvREdZNXcvSWtXYks5?=
 =?utf-8?B?L1lhcmF5TzNuNzNYSTJxVVlma2MwQlJnL3B6RHVCcGt2dFFSVFczYi9KcHV1?=
 =?utf-8?B?b0Q1S1dqVFN4ZCtON290WWRFKzUvWXJ0OEpFbFd4N3VXZDNScUljVldDQ3Nz?=
 =?utf-8?B?UE15Mzd6bWtYTUxkenRteU9ZdWRjQktPYnRhNlZLb0FxMTdSa09vVzVQV3oy?=
 =?utf-8?B?bUdWK2lGY2pjME9xY290UDVUQ1ozRnFueW5zS0NvZlk0cnNLNnQyZit4NEpN?=
 =?utf-8?B?c01DUTZRRXRIZ0pJUlZQRkt0dVE2aVRDQmZaYjlvL1VMSFVQcDRycHNuS1o2?=
 =?utf-8?Q?AfjDKc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TlpFWEJCdUMxbnZwVm9leW5oMk5qWnpIbHU2N2lvckxpSXA0eFRmalZSSVNn?=
 =?utf-8?B?SFBBVzVnKzljKzN2SlI4eVBUNmxmQTlqU2NvYk1tK0t4T3p4bEFvZU5YUzhG?=
 =?utf-8?B?TkcyZGs3NHhxRVlSOTEzU2RxYkcvY0w5bG1hZll4ODBrajdUNjdjWEZRWVY1?=
 =?utf-8?B?MEhyT0ZOeUxkNkJidDNNSnNQWGhTUFppVFVyOEdkTk5OVXlWV3Jab1JVSW90?=
 =?utf-8?B?RWhIcFNWc3gwVVZYNW1FNndQcGtjd0FOa3VObVVwSEUxcUpHRlhuVFNPWVhM?=
 =?utf-8?B?NW95WklLMjAybUYxRDFGbGIrOW5LSzMzeit1NkswZmdHdmw5dngyaU5HK0Vy?=
 =?utf-8?B?Z3lJS1lkS2daV2w4VDJOUFpwQVhLWkR0QXBacDRMU3IxT3ozRHYrRWpySTM4?=
 =?utf-8?B?bnczUXhkUmRCS1dVM0l6TzV1YnIxdUxFRkVuRmh3ZXh3amdDNGFCOUZIOW9a?=
 =?utf-8?B?M2ZMY2pxdW1wbzhlSW1JalFUWjg5ZTVTcGZWR1pBUzJqSWc3OXFnSGRHM044?=
 =?utf-8?B?Q1NOaXpVQ3o2VjluaW5oNHVwa3F0ZFlXellPWUZqcTV4aXFhWGt3WWdsUElz?=
 =?utf-8?B?NW9BT0pRUnp4aVNXcnJLOEI0dm42MzByMktnTXNQYzVZMnZHQ25KK01TYmJl?=
 =?utf-8?B?TTUwRTB3MHZySHo1ajFYQXdOYTNsVlRJeERBK0FMTkM4cGhadDk3SUY3OWt0?=
 =?utf-8?B?NnIzVXpKa0dZQVNINUJpUWFKSVA3RDVwZzkzaTBFeEI5NzBybTFRWmt6VS9r?=
 =?utf-8?B?c2V5N3N0bGloczl2V0x5UE8reWxPU3IyUlRyV3lhbWkrMXZ2bk9mR29KREQ2?=
 =?utf-8?B?eC9ZcjFFeXB4YVZGTllZMEpSZDFIclJFN3VLa0UxNzNzYTExcG9OTTN5NnpX?=
 =?utf-8?B?c2lDNldXd0NzT3gwYzJTTjJKRENvWmVJcVhib3hiOEtkNTMxTEFsMDFFQ2sz?=
 =?utf-8?B?dE1UUVFXZmZSaFdZa1hLcGN6SXg3d3hDWVh3RFAyU3RxN3J2ZUVEL2p1c0Zp?=
 =?utf-8?B?OG40K3lCTEdoM2JMTEF0Q0RRQ1BYU0pWSFVJZE5jTzhWRVBUYXNMWGZ1Rmd6?=
 =?utf-8?B?NjJaR0hBZkw2MWhTSGZSa1V1T0hGa0V5OWtRMHJmb2x4MlJmZDZla21WaVVz?=
 =?utf-8?B?bGNDcjJXeElHRVV3eGRPamdBTXV0YWZyY09MQ3E0QmVXaTJVdzNiRWlITEdP?=
 =?utf-8?B?QUxUcHF4bWRtQ0FiR21jMzRzc2JDdzBrM0YxL2R1ZXBPVDVCY2V1cFpzN0pN?=
 =?utf-8?B?SHA4NzFwMlJBNXgvenZ5cmNYT2NMa0p6alpMU0oyUkNBbm9vamhhV2pKek1a?=
 =?utf-8?B?T21wRDFnUWwwQW15Q204WW9UdEI1ZDJ4NituYjRtNGUyUDE1eFZvNTJHNWZE?=
 =?utf-8?B?M0toaVlnT3hIcnpRNXpPVHFXUEZxRmtKSHFKcFdVbDV4TG42eG5Oc2VvSHU2?=
 =?utf-8?B?NFJNZ0YyWEVjSFhrN0JiMkU4U3RKeXp3cWtFS0RkNHp1TjVrdW8yWkVGcU9z?=
 =?utf-8?B?b2RXWURzcjRNVG9tV1BtZER4aXQ5UGplUTF2Y0RnY25LVU5UOEJPTHhrejRo?=
 =?utf-8?B?dFZLZk1mVEtsR0IwTUtKZkFaRHhCaUIxY2dWcUJmSUxNOGgzcmJYNzI4d245?=
 =?utf-8?B?V0hNWWY5N2Y4SzN6MitjNG04WFpEMmNzT2FGc2h2RENycVhFdkRpOSsrWkRw?=
 =?utf-8?B?blZDRVl4SGJJcnVORnF2OU9jRHF2VHFFTHM2Z2RqNHJFS0pBK2g3UTd3dmxC?=
 =?utf-8?B?ckM5SW5pNGtPOGtGZURLbmNVZWxoampja0QrSzZOd3NvUDI2ZEtENUc2VHpF?=
 =?utf-8?B?VGdzdmtsZktUSGxla0VEbHYvSWNBTzY1M1pmdEgza1BDandWN2FhdUxuYXdV?=
 =?utf-8?B?QzhlSnFyd0FZVEZnQ0RYalh3K3lyRDZCQnVkUjYrem5aMHR3cU1td0diRnV1?=
 =?utf-8?B?dDlGZnFaNGxwa25kWXF0Y0M3azl6Zk5GQXp5OGtkWWxtNVFKK3lFbVlGSUJy?=
 =?utf-8?B?ZjFoMDVDZW02RW1RV0hwc21uNDRJeG5pbm1EUUJ2N1licmV6cEEvcXJERHRp?=
 =?utf-8?B?UGpMRWFYMTVEM0dNR2tNUHB4M3Y4NmFIaHFzTnFtMnlZZ2lBYmRSMkNSRnBa?=
 =?utf-8?B?U1hlT3ZMRzcvM0U1Q0hhcEpTRmVmL0dhMEJNVVpuNnNnMlIrdHloL21OaUht?=
 =?utf-8?Q?b69ugYcNJJoGGXcJ+bJvo6w=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F11229E8D3695C45A7EB530B73B6F8E8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b78b15fb-ae1d-4060-34b2-08ddfc510ef7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2025 16:32:02.9532 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O8UEee0nj4dWhWmhENKGK/nVibZuA3VjWgKMWEJLIuUcVBF/WSkfuQfWm9VGjUVKE5yyoD1gdkByzZWFHgbv/9nlFYz6lJd7ADwcfTZ++UA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5324
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

T24gVGh1LCAyMDI1LTA5LTI1IGF0IDEzOjE1ICswMDAwLCBHYXJnLCBOZW1lc2Egd3JvdGU6DQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdm
eCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2Yg
Vmlub2QNCj4gPiBHb3ZpbmRhcGlsbGFpDQo+ID4gU2VudDogV2VkbmVzZGF5LCBTZXB0ZW1iZXIg
MjQsIDIwMjUgMzozMyBQTQ0KPiA+IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pDQo+
ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT47IEpvc2hpLCBLdW5hbDEgPGt1bmFsMS5qb3No
aUBpbnRlbC5jb20+Ow0KPiA+IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNv
bT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L2ZiYzogdXBkYXRlIHRoZSBpbXBhY3Rl
ZCBwbGF0Zm9ybXMgaW4NCj4gPiB3YV8yMjAxNDI2Mzc4Ng0KPiA+IA0KPiA+IHdhXzIyMDE0MjYz
Nzg2IGlzIG5vdCBhcHBsaWNhYmxlIHRvIHRoZSBCTUcgYW5kIGhlbmNlIGV4Y2x1ZGUgaXQgZnJv
bSB0aGUNCj4gPiB3YS4NCj4gPiANCj4gPiBCc3BlYzogNzQyMTIsIDY2NjI0DQo+ID4gU2lnbmVk
LW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
Yy5jIHwgMyArKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYw0KPiA+IGluZGV4IDBkMzgwYzgyNTc5MS4uMjkzOGVlNGI2NGQ4IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gQEAgLTkzNCw3
ICs5MzQsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfcHJvZ3JhbV93b3JrYXJvdW5kcyhzdHJ1
Y3QNCj4gPiBpbnRlbF9mYmMgKmZiYykNCj4gPiDCoAkJCcKgwqDCoMKgIDAsIERQRkNfQ0hJQ0tF
Tl9DT01QX0RVTU1ZX1BJWEVMKTsNCj4gPiANCj4gPiDCoAkvKiBXYV8yMjAxNDI2Mzc4NjppY2ws
anNsLHRnbCxkZzEscmtsLGFkbHMsYWRscCxtdGwgKi8NCj4gPiAtCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA+PSAxMSAmJiAhZGlzcGxheS0+cGxhdGZvcm0uZGcyKQ0KPiA+ICsJaWYgKERJU1BM
QVlfVkVSKGRpc3BsYXkpID49IDExICYmICFkaXNwbGF5LT5wbGF0Zm9ybS5kZzIgJiYNCj4gPiAr
CcKgwqDCoCAhZGlzcGxheS0+cGxhdGZvcm0uYmF0dGxlbWFnZSkNCj4gPiDCoAkJaW50ZWxfZGVf
cm13KGRpc3BsYXksIElMS19EUEZDX0NISUNLRU4oZmJjLT5pZCksDQo+ID4gwqAJCQnCoMKgwqDC
oCAwLCBEUEZDX0NISUNLRU5fRk9SQ0VfU0xCX0lOVkFMSURBVElPTik7DQo+ID4gDQo+IEZyb20g
d2EgaXQgc2VlbXMgdGhhdCBpdCBpcyBsaW1pdGVkIHRvIGRpc3BsYXkgMTQuDQoNClllcyEgSSBt
aXNpbnRlcnByZXRlZCB0aGUgIlByb2plY3QiIGNvbHVtbiBpbiBic3BlYyA2NjYyNCEgd2lsbCB1
cGRhdGUgdGhlIHBhdGNoIQ0KDQpWaW5vZA0KDQo+IA0KPiBUaGFua3MgYW5kIFJlZ2FyZHMsDQo+
IE5lbWVzYQ0KPiA+IC0tDQo+ID4gMi40My4wDQo+IA0KDQo=
