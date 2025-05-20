Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24591ABE155
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A910810E577;
	Tue, 20 May 2025 16:56:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fOFN+rpI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA42A10E577;
 Tue, 20 May 2025 16:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760161; x=1779296161;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=eT02yLaemM4TkhhwhAYJ9kYMvkY+jOhtpQXWkapKM60=;
 b=fOFN+rpIwuq7EW1azRVJPh70dTEGLEIKJRlQLzHsA7RJpfNJEZpA+chl
 yTQRO4tXNlurcS13M+h1Y6IlJaHYPWS5zhrxdD2vPJfihWss4Hsk5jbm2
 s8xMKzl/wuR2ulzBqN/x3sfHNxem4f0WpKO7k+hSY/Hl9vob45pvFDkzo
 TWlp4r3XkG7InM0VYYtF3Ex4pd4GGQtWdgO1r4neJ+erYS81tHixOA6vI
 muiDTMZKxTK8x3FuHBYv8wujYNdBV1DDftYQCUrfrgiqwpXVr8pXebgDq
 xQdYluLXs7Tof67TWufDU8NMaXlJwfIK71dc/Jz2ZX3Dfhcl0HV/6MwOp w==;
X-CSE-ConnectionGUID: Y++QZu6uSHijaehGxxkqTA==
X-CSE-MsgGUID: HvToQ18JRd+Z/urS4Ow/tQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="59936177"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="59936177"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:55:59 -0700
X-CSE-ConnectionGUID: ZVJgTv5VRLy2zbGrvJGAnA==
X-CSE-MsgGUID: 9jw/xiqoQzu299AVikYQCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170627881"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:55:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 09:55:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 09:55:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 09:55:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fi6V6jLzGjEn5JE1WRlNbL3s8SXLm6fFJhIRzn4uGxEYTM2FTlhmbklalkwRUqoWTMx0+HxdRmeH42Y/HPO+mEkTCvqp1IrU50lQWO9HonmW2bPyTdBIdRE+Cf1ZG2ounNZ4vsGvfMgG7naVDneyGSExX0qalp2ATDXdQn12AiEw4BDf/PP3sZvBzkhHWvCa1PuS0pVoV9cpxVq7pGnwQXme3dpi6rvNYhhQCS5cVgsvnYecPQKZCACqisGVdDcridk92Haw1saX/kXWlOgbwe59YM6+PfkAowZyMgATQ9v+O+nTapuO0L4cMmYqi4Qk/H3A5zOK3cPGvb13og9UKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eT02yLaemM4TkhhwhAYJ9kYMvkY+jOhtpQXWkapKM60=;
 b=JsPkv0WSPqou3v509BllfwT5sv3qegzpDpGmFfqbl86ID0vYqK+nQgPrynHcbDKgnE5pds+Mw4UOXeFpFYW4hzD4MdPGYeZm0Ufdivxa3fLFxWus0JQM0ACMNa+4Tfhhmvj2JGntslT+fEMMpn2ym3SsLYHWrbQgenDdy4IsxXgUNNbViYXMTbB9XIBQma5ZVI+rJsMcSO9dgbrCseUCJb3ABWtyBl7+eD1H70Q5+SX/NdxWE+y+Put4DjgoZlGwpG/PywvUseSoMiroUy27KXECEUia3hvaCrxoJ4uyHd56Mi61pshnOPf7faslXqh+M6jErFIcSeDR08G+MTxgHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM6PR11MB4674.namprd11.prod.outlook.com (2603:10b6:5:2a0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Tue, 20 May 2025 16:55:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Tue, 20 May 2025
 16:55:55 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/11] drm/i915/alpm: Write PR_ALPM_CTL register
Thread-Topic: [PATCH 04/11] drm/i915/alpm: Write PR_ALPM_CTL register
Thread-Index: AQHbu0CH0cnXL9nQq0SwICdn7qKBQbPbUcUAgACHt4A=
Date: Tue, 20 May 2025 16:55:55 +0000
Message-ID: <24d9d2d7e80be109bca690c2c5358253f6a9b865.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-5-jouni.hogander@intel.com>
 <839e065f-918d-419e-b9fe-6d4909f8cb67@intel.com>
In-Reply-To: <839e065f-918d-419e-b9fe-6d4909f8cb67@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM6PR11MB4674:EE_
x-ms-office365-filtering-correlation-id: 982b36a6-e0a8-44f6-b616-08dd97bf3024
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?czh1L0QzWHBoNzlRc0tjcHRsTjQraGVvTDdUNnlHOTlXZEpQYTJ0MjFRWG5o?=
 =?utf-8?B?NTlDeGxZQ09LNmxaRVdTQ0lxdDlGK014MTBKd2dBZE9pd0x0ZE50OWdNdWFH?=
 =?utf-8?B?QW9oQWRGZGVvVFVUd0FtNjQ3TWx5R0Z4OEZRSnJBOGRsSjNQMFplYzlXcmts?=
 =?utf-8?B?VFBxaGNqNDNLakZQWWJvQjdWcHZMY0N3c29SYSttSzdJUjZHd3BJa2lWdlA0?=
 =?utf-8?B?bGRTZ2NaL0ZLSlJiUXlOaW1mUjhMeUNWaFdNb3FROWdBaFZkM3VjTk9kUFdI?=
 =?utf-8?B?RjZNTTN2MmVoQUtFV3ZiNGtBV2tMcEh5SXI2VjFDbUMxL2dTZ1pLaDViUjZQ?=
 =?utf-8?B?WUJsNFRzOSt5amhUUUF1ZGozRjZLeVhMWitHUnp2b3BRK2hFZHZOMWhxQjNN?=
 =?utf-8?B?SElaeWhXMEY3bUVoMERwNXE0K2RyaDl0Zy9mQVdHYlhnOGVwUHNGVmkreWpK?=
 =?utf-8?B?OGk5TVFIckpPWVdlZTJDRzFOY1ZWdTFOOThSYUczandBYjdwQmNGT3NQU1dJ?=
 =?utf-8?B?S2ljbVV2eW5MdEFFbERJSzh5TVhLNjdpbitac2hpNitZVFlaZU55MTdWWnBv?=
 =?utf-8?B?blNIV1lZcXB4ODBSSThtODVUTDJUVkRyRE5yaXVzbm40U01rSVAvbkcvbW1o?=
 =?utf-8?B?a1NGZGNnR0dlSUpySGFmNWZJWngyWklaMStEMzJOaWd6WGxDRGI3MktWZ1c2?=
 =?utf-8?B?TDNvRGNNRnhoa1VuK3pabGtna2lxejhhdVdwYWdkSXhHOVZRSVoyNkZxQkdU?=
 =?utf-8?B?TTl2ZENVWUlYSnZXZk9LU3pSV3NWNGZYV3hjb0VZKzhDdWl3WU5TbWljZU1r?=
 =?utf-8?B?T3ZqN0xVYmJ4ZkpFVzFCQVU4TTlaTHViaTUrY2JuT002dGs4Y2lHRDREejM3?=
 =?utf-8?B?Q0k5TDU0eWV2ZmVFMVBvdDVWY0RJQlNrM01RdFgwVlQ4QThLRmMyWHNMdS84?=
 =?utf-8?B?S1l0Q3hIQ09adU8vMVdna2NiNkE3WTR2d1F6L2pMOEg3MTF2K2YzWGVvRmla?=
 =?utf-8?B?bEk4RkFLRzI3Wkt6NTFWbUxMLytDTkFDdU1tdmg3Qkt1MzB4TktkWHZDejMw?=
 =?utf-8?B?Y1JPeHRibjQ1NFVLU0lwVDRFNHlINHdDcit6ZUhYd0JVRFZiUUZ4T05WS1Y3?=
 =?utf-8?B?Z21FVUNVSHpES2F1WmkwZ3hQOGZqWEVXdEFEL0piaC85b1d5MWlEYlZObE5J?=
 =?utf-8?B?Smo2SmNHYVY1akJkQUdqdG1FQ2ZLNS83YTJyTEg5SVdCYnRUbWFWc01MaWFr?=
 =?utf-8?B?NXVZL3pVSTc1Qmk5SmpKaUVZaFhNd2xleHZVTEd1V2lYVWt1Q0wvaWVuem9I?=
 =?utf-8?B?TGlVZ21YZm8zRVpEVVAxQUhzWUlPNStkV05LejlJOU5RVG13MFk1dEFKdSs3?=
 =?utf-8?B?dHpQaUxSUTlpaEJCMWxYMnplbkJtWE90ZjdDNUVRaHRvTDgzUlc0V3VuK0Fa?=
 =?utf-8?B?UnIzNUhiUFd0c0l5Tk9zSUNlOXJxTVdSWUJ2V1g2WmVJTVVHVW94T1BMd1ZS?=
 =?utf-8?B?cnd1dnV4ZnZZTUxHZWhETmZKa2E4UTA2REQ3a3JBQUwweFZwOEcyK3BNdUJM?=
 =?utf-8?B?YW11OWZXcnZEdG1GU3Z4RUlIejB4ZDM1QXhxSCtUaFNVTFQ1cGM5akF1T1Bl?=
 =?utf-8?B?YlhKQlFSMWdXV1JrZlBvU3JwRzFHMDhJNTVwdkkvT3pWM0FkS2tQL2JlMldJ?=
 =?utf-8?B?YnFrbW5OSUhUT1hjakQrRFJOQXZzdGpuTXVaV3kwQkphOVg0VnA3dlJoT1Nw?=
 =?utf-8?B?WFRVVHl6MnhGT0ZoZERDR2loSUM3WitNTmdlNVJvdnE2MWFwSTNYRzJXVzF5?=
 =?utf-8?B?dmRBSUxBeWEvR2J0UjdYNXpxTm1qdnhQczhLS0FVcVpUSFVVZS9CTVRFMjNa?=
 =?utf-8?B?SU1sVEJyVDNuSHg2UzRHSy9JM1EvMEhFYXhmdys5a0JEbG1uN0VyREJnM1Jl?=
 =?utf-8?B?bFg2S1dTa1RDTzQxNExBV1JLdVhQK2FNaG1sNlRac3ZiSXR1NUZyVzJPWk9N?=
 =?utf-8?Q?h8ZTwsnLUMBLa/pJZTgr1ZDUSOUDVw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VUVwTHpDMm16WE9TZXQzNWw3L2RxMDQ1Q3RYN0dFY1o5dUNOWEJnM1Y0TWVw?=
 =?utf-8?B?dW9oSVJiemtFa0lDck5sWVpweWVnTXlNdE9NbkRpYnBaTDMyTjA4TXg3VDQ5?=
 =?utf-8?B?ZlF0TERIZWpqb1FOOGJKOVNnR1dkZ3VjQm1PREdKbEhab2FhZ3daeTBuUjBt?=
 =?utf-8?B?OU9TdzhNcDdTcWVuSGhwMTQ5Y1FUcEEzQXg5aEdGN2RLZEFzanUzNVJxbGZo?=
 =?utf-8?B?c3Z2U1MweGVuVmd1dEFDVi9Vc3ZGbWNvZnM0YmNvUzBpdDJMRmhjUnh0M0JR?=
 =?utf-8?B?d3JacG9VKzl1dG1oNTNhKzFXNk9qQzJFdDFRdXZ0SmdxYkZveSszb2ZFVWd4?=
 =?utf-8?B?UFF2SHNCWVZ3OUtkUzBaY2tISFhubkx6UHAyUWY1cXVHTGx2VC8wUWxxTkZS?=
 =?utf-8?B?RFd3enY2RDM1Z3o1dEY3N0x0ODZXQnJyRUxwYXQ5NHUrUHV3V1JpRStqUHZH?=
 =?utf-8?B?VjBpRkhmYUdBQ3VCNURYT0ljK1RlUXVtTnlPM3lTSnVOa3Jzd3FKS0F6V09v?=
 =?utf-8?B?TEdHZks3ME85YlR5VWlET1VPNXdsaHZsYjVmd21OS1pvSVpHMHF4WXE3MmR2?=
 =?utf-8?B?ZDY5N1VoWDVid0Z1YmhsWEZkdlpGNDFtOWdtUXh5aGd4K3pXUUtDZW4xcVVq?=
 =?utf-8?B?VHc1SVlQS3IzdDRVbUZNbERUSksrVnpuUFlKRmg3Wkkwc3hobUpqaDZZMG9N?=
 =?utf-8?B?WGFzV0htdDB2eTlLTVRvVkJrc1ZsNmtlTkxReWdUMzhaTWNvZ29ib09LTS84?=
 =?utf-8?B?MGdFOGFRR3BBQ25UcHc3TnJTNnpDdUJwc1ZxUVdTek9qWUh4YmhWV2dyKy9S?=
 =?utf-8?B?TzV6Tk1CMkszQ3daSnhsL2cxWk5JWlAxT0FTdytjcXJZOGF6UExXMmk1cThF?=
 =?utf-8?B?a0V6cDRsbmFuU0hlaGQ3UWhsbmZaVVJURC8xNE5CYVhjZ1V5T3U0SHczY1dT?=
 =?utf-8?B?Z2JkbTgwQXBXaXNYVW1QTnp3dWRTbUo4RHUwd2QwdkJ2NmxCcXdjKy90OEQx?=
 =?utf-8?B?VmdKMGZ6cFB1YnFnaGZxdElvQ1RqWlR2Vm5HK1UrYjNLSkl3Y0VNUjErZTdm?=
 =?utf-8?B?VHBvV2dyVWZpeWFNNzFCbitGZEFWRThnM3NhOW01SmdKSVZtNWViT1oxYjZh?=
 =?utf-8?B?Q1R5aXBpM3Q5WmVjUklNdFhlUmNlaHZXbGt6ME12bWdoKzdDWFk2aEwvakcv?=
 =?utf-8?B?eTRabUpSZjdzRGxJMVNaSHd0TExzZjlnY2NuZm5Bcnp3U0FOQkRrRTRFd01n?=
 =?utf-8?B?cmo1TFRXRnp6RzBUUjdMVHhVbFRuUUZRUzc1ME5ZQ2ZUMXZQeFpCSGNkblUw?=
 =?utf-8?B?VUpzRHV2YldjRC9DRG4xeUZLTVVTZE1YdnR3b0JIc0VES21ZN21qQXRWM2l4?=
 =?utf-8?B?dTMyQ0NSWlJzK0pTVGxHYlVZSjJETHo4NzRnSnFYOXR2TnVnWitoSVdsaUJ3?=
 =?utf-8?B?R0NKa2xsTG8zY3hma2hxaTdaY2x5QlM2TDNncDJXTVF0a3VnMksyMjdNYXdC?=
 =?utf-8?B?WU56bnI3R0R2Zk9NN1c2MUIrYTFrQktqalFscXNvQjEzZklqb1dPYnFlYkdn?=
 =?utf-8?B?WWthOGNRMG1MRGFvU3pBblZpR0xWNlhCdVZqZENjUXNRVUtFWGZmUHVDaGlL?=
 =?utf-8?B?clRUZnJqcSt4dkRUZ0RVd2M2OXFnVmdaSDVpOVUreG41T0F2SkNWL1dPelpP?=
 =?utf-8?B?Rm55YUw5NkFpMFN3MXZteUYwQkFMUFJuMTJJZStvdnZkTmRueDdTUjFUd0dR?=
 =?utf-8?B?UUZMTjN2S3l0Z2d6Y3hoSjEwdktkV3M5bUFRdU9obVFCWVduVWxLdTV2MmtR?=
 =?utf-8?B?dTU5My9HM1pMWHlmZ1ZHNlRzT3c5UXMwd2hHdmphTEZUMFJwcU1ZUkUyMFEy?=
 =?utf-8?B?U2tLeGx4cURCLytlaFg5bDZZcWlIbENJVkJkUU42TWpXSDBKTVp6aVlTMllN?=
 =?utf-8?B?RFNyYjltT3c1OTF6ZW1KSStxcXFoVVhVZng0endRdG5xa0cybE9yQXZsbjBP?=
 =?utf-8?B?ZjEzdDJNSGZRS1l0QmFOeWhJQUJwSnFqWTluNHdUaGxSOVM3VXVXa252b3VB?=
 =?utf-8?B?b1V3a2RCTzhHSmtZTDVmS2lHMElUMmlDWnpDem1lYWtXd3QrcllpMnAvVVBV?=
 =?utf-8?B?MjZwU0YvU2hNckRoQ0lQN3E3RE0rdGJWaURaZjAxd1JXcHJJODF0dyt4Z21m?=
 =?utf-8?B?QnJtY254T1QybGxKWWRlUUJVNE9SNlhLR2hIVGFmbnhmeDh1Sjh6SmhCa1p5?=
 =?utf-8?B?RGhVUDFod1hEenJlRGlCZ25XSkd3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CDA2D588C7037B42A98677B0E1B7AA71@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 982b36a6-e0a8-44f6-b616-08dd97bf3024
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 16:55:55.8563 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UcQmroA2yAJfa4puhmw6uunlWWdoQA+tsTfJEqdjLfgBkDbeXkMOfg+9zL4eFMUtBb4ZjrIBVqB7MT3+sWpChA7wXElgxXK1Dw9AmlnAlss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4674
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE0OjE5ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDUvMi8yMDI1IDI6MjggUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBQUl9BTFBNX0NUTCByZWdpc3RlciBjb250YWlucyBjb25maWd1cmF0aW9ucyByZWxhdGVkIHRv
IEFkYXB0aXZlDQo+ID4gc3luYw0KPiA+IHNkcC4gQ29uZmlndXJlIHRoZXNlIGlmIEFkYXB0aXZl
IFN5bmMgU0RQIGlzIHN1cHBvcnRlZC4NCj4gPiANCj4gPiBCc3BlYzogNzEwMTQNCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyB8
IDEyICsrKysrKysrKysrKw0KPiA+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCsp
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiA+IGluZGV4IDFiZjA4YjgwYzIzZjkuLjVlNWJjOTFjYTdiNzYgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC0zNDgsNiAr
MzQ4LDE4IEBAIHN0YXRpYyB2b2lkIGxubF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAN
Cj4gPiAqaW50ZWxfZHAsDQo+ID4gwqDCoAkJCUFMUE1fQ1RMX0FVWF9MRVNTX1NMRUVQX0hPTERf
VElNRV81MF9TWU1CTw0KPiA+IExTIHwNCj4gPiDCoMKgCQkJQUxQTV9DVExfQVVYX0xFU1NfV0FL
RV9USU1FKGludGVsX2RwLQ0KPiA+ID5hbHBtX3BhcmFtZXRlcnMuYXV4X2xlc3Nfd2FrZV9saW5l
cyk7DQo+ID4gwqAgDQo+ID4gKwkJaWYgKGludGVsX2RwLT5hc19zZHBfc3VwcG9ydGVkKSB7DQo+
ID4gKwkJCXUzMiBwcl9hbHBtX2N0bCA9DQo+ID4gUFJfQUxQTV9DVExfQURBUFRJVkVfU1lOQ19T
RFBfUE9TSVRJT05fVDE7DQo+ID4gKw0KPiA+ICsJCQlpZiAoaW50ZWxfZHAtPnByX2RwY2RbMV0g
Jg0KPiA+IERQX1BBTkVMX1JFUExBWV9MSU5LX09GRl9TVVBQT1JURURfSU5fUFJfQUZURVJfQURB
UFRJVkVfU1lOQ19TRFApDQo+IA0KPiBDYW4gdXNlIHByX2RwY2QgW0RQX1BBTkVMX1JFUExBWV9D
QVBBQklMSVRZIC0gDQo+IERQX1BBTkVMX1JFUExBWV9DQVBfU1VQUE9SVF0gdG8gYXZvaWQgaGFy
ZGNvZGVkIGluZGV4Lg0KPiANCj4gDQo+ID4gKwkJCQlwcl9hbHBtX2N0bCB8PQ0KPiA+IFBSX0FM
UE1fQ1RMX0FMTE9XX0xJTktfT0ZGX0JFVFdFRU5fQVNfU0RQX0FORF9TVTsNCj4gPiArCQkJaWYg
KCEoaW50ZWxfZHAtPnByX2RwY2RbMV0gJg0KPiA+IERQX1BBTkVMX1JFUExBWV9BU1lOQ19WSURF
T19USU1JTkdfTk9UX1NVUFBPUlRFRF9JTl9QUikpDQo+IA0KPiBTYW1lIGFzIGFib3ZlLg0KPiAN
Cj4gQXBhcnQgZnJvbSB0aGUgYWJvdmUsIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuDQoNClRoZXNl
IGFyZSBjaGFuZ2VkIGFzIHBlciB5b3VyIHN1Z2dlc3Rpb24uIFRoYW5rIHlvdSBmb3IgeW91ciBy
ZXZpZXcuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmV2aWV3ZWQtYnk6IEFu
a2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCj4gDQo+ID4gKwkJCQlw
cl9hbHBtX2N0bCB8PQ0KPiA+IFBSX0FMUE1fQ1RMX0FTX1NEUF9UUkFOU01JU1NJT05fSU5fQUNU
SVZFX0RJU0FCTEU7DQo+ID4gKw0KPiA+ICsJCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiA+
IFBSX0FMUE1fQ1RMKGRpc3BsYXksIGNwdV90cmFuc2NvZGVyKSwNCj4gPiArCQkJCcKgwqDCoMKg
wqDCoCBwcl9hbHBtX2N0bCk7DQo+ID4gKwkJfQ0KPiA+ICsNCj4gPiDCoMKgCQlpbnRlbF9kZV93
cml0ZShkaXNwbGF5LA0KPiA+IMKgwqAJCQnCoMKgwqDCoMKgwqAgUE9SVF9BTFBNX0NUTChwb3J0
KSwNCj4gPiDCoMKgCQkJwqDCoMKgwqDCoMKgIFBPUlRfQUxQTV9DVExfQUxQTV9BVVhfTEVTU19F
TkFCTEUNCj4gPiB8DQoNCg==
