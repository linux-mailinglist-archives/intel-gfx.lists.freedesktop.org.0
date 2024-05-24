Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FACA8CE245
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 10:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9088810E1EA;
	Fri, 24 May 2024 08:22:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TjtvqMhZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A89210E1EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 08:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716538955; x=1748074955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m5EVADREoIL2nVNDo1I/0X2lbqLiX3lyRtCp+tUNLqI=;
 b=TjtvqMhZhy70s1dVKXL8MEj+EaN50MVx2GjmMZRVHWlqTF8Touk8nnbo
 VIZWyI5n613TrbArtRUNz0Nz9ijYH6QoDKxALNbNSKXdIemPsZHhrn8wZ
 0inQ81l67+66GBN6SX61EeWveBrSTWGPoag6SCcETlp7fZIBk5ZRvDFFu
 gduyPDvm15l64PEJ/orkS1tBxubamG6on5hcWX04aHDPDNDoVHze3k+rv
 1nriY9/PyaRZqfM2Vj8BP0VShB40BpHdl8iATHZM/g8nUy9JZlwM8B+WQ
 R1MyXvx5CANmF/G1DSqQnRDvsXIAXTh2CppHcWCB+icIPHcn8IRAk0Tjn Q==;
X-CSE-ConnectionGUID: stkJIFQmTVaeaht2TqbpRg==
X-CSE-MsgGUID: +GE3B+YzSsub50vyuA/r1g==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="30412352"
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="30412352"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 01:22:35 -0700
X-CSE-ConnectionGUID: Lrwymfg5QUmU1BZDe13rlQ==
X-CSE-MsgGUID: q3vtAK42TKWoS6RC8lkAGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,184,1712646000"; d="scan'208";a="33822370"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 01:22:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 01:22:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 01:22:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 01:22:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 01:22:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJ8hxw/KKeScD45iEjfZo+TfhwDgeUK9a0jsei2G64uXZJo/34OAmgVmsX6zVmssEDZRV4ID3wNxrO854dE1R32JPY5AcenaaVha3X02TFmLb+USViA7uCr7AVaxUlAQc1ZQ17aOQHHuLZwrPfN2PyQQ2vETORwKhnr88/mDvWgSg0lRlqY0wTZsfhIJQOVywnc8/Q5RA/vJHQyJZpzgkDqdVyBbHMfOo6NPHbwMrMuqzFiJLe8ig54oB67BewSY/M8j8wN7+L+xEpLKh6KlIS/IgTqmebfP8ZnHN29VCdWsR792Zo+LXrrywrpedGgyz3pWnQm7BTmvSbLJ/caxpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5EVADREoIL2nVNDo1I/0X2lbqLiX3lyRtCp+tUNLqI=;
 b=ex4lzr8mDYGlQSrv/GxYssQIKT2nfOvQ/ah3E/QhrSc01cd5Y9MyzFesxY6Zj5l/r2S/3ZWO8ra4PBpT/SY2L67+KMYL4Elc8wVgqeaUPwzAyvFRb6Hw1aJbUkvLz/xVM08LT2iTW/JB6U136pm3/ldMwA7u9t+jmqRpm2Evtf89mvFRRitG9idQk2yrvJ/S0z03lD55CwvjesOr9uMVV74Pb1WieghVhWilm2okDfimkMJrBhwqgfntiF2N8qtU6rDii5wGqYGhMSs3EcrCxEyiM63Zary/E1EtQBONw+IsYAiTi1UBo1h7QKClbnEb2fupXp1fzggnEoSkV9eGLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB5189.namprd11.prod.outlook.com (2603:10b6:510:3d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.26; Fri, 24 May
 2024 08:22:30 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 08:22:30 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 01/17] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Topic: [PATCH v2 01/17] drm/i915/psr: Store pr_dpcd in intel_dp
Thread-Index: AQHaq1t/dupE3LZNlE2PhObA1xsuvbGl5svQgAAG/ACAACG4oA==
Date: Fri, 24 May 2024 08:22:30 +0000
Message-ID: <PH7PR11MB59818C8BD6715D9BDE4D65D3F9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240521084648.1987837-1-jouni.hogander@intel.com>
 <20240521084648.1987837-2-jouni.hogander@intel.com>
 <PH7PR11MB5981D37648DD78C758F43459F9F52@PH7PR11MB5981.namprd11.prod.outlook.com>
 <63d1991bdea46260b6b7ef73b10d4465db1b0594.camel@intel.com>
In-Reply-To: <63d1991bdea46260b6b7ef73b10d4465db1b0594.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB5189:EE_
x-ms-office365-filtering-correlation-id: 5469a85b-c283-4dfd-2539-08dc7bcaa7c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?UStaR2xyOHcvRDRoSFp5R2E0eW9rUENUOUdZc1poQ1I2V3QvWTg0d25iRmxi?=
 =?utf-8?B?T3VRdXE1bjRHTUh3QzRrdUpkWjd3WEVYTEJSaGhtd3A4aHFiZEx6VDYvVTAr?=
 =?utf-8?B?cks4MHF2ZTVkUzUwVnZ5Y0xZZkhJZE9yK3JQYXJsamhWTW5KTzBnM3ZUUGpr?=
 =?utf-8?B?WTdZd2FiSEVJaUprZXRibllNVHY4TmI2ZDBUVWgwb0praXhqMWVhME9zcEcy?=
 =?utf-8?B?UUE1VlhrWDlybnFVbklpUVJrbzNEbHJLOU5ZK2RXcmwyMkNBVE5FWDRLazFP?=
 =?utf-8?B?bi92MXhnYjQxVFZ3aEpsY2NkVld3RFQ0UCt6Q1Z5QkhrYlROV2JJY29kL2Ny?=
 =?utf-8?B?eUZvNEYrMW5xSlFQeTh3OEovYnNEVlRQUFczMG05NENOQkhiN294ZVBzRFV6?=
 =?utf-8?B?YVZyL0hLZWxRYkZhN1ZZU2Naby8zZUtOQTFLTXJkUGYxd25XbkdxT3NuS3pY?=
 =?utf-8?B?eE9vdHZyUk5xeS94cUJVQVdOeXJxeWJET1BBR1hzb2lyNVdZU2JSbTB6cEZ1?=
 =?utf-8?B?NEl4SWppdDU5K0JORUQrcjdxVnVpR1YybituVjMwQmVNZlZqUzMxN3FjaStY?=
 =?utf-8?B?dUgwQjNzd0NsUi9xK1QvL01PQmNzR1JjU0orT29tSDd4VU5VUy9JMTdEVVNp?=
 =?utf-8?B?S0VxUS9vbHgxSXRMTUhlQ3hGbzVQNU8xQUUyS0F1T3VFeGtSVHYvL0tUMlVO?=
 =?utf-8?B?RUpJMmRBZ1dubjdPbkpzNVUvMjQyVjlxQ0FzY2FUbDUvOVl6S2hMeWxwTjYy?=
 =?utf-8?B?dlJBSmVLanM0YjhZemhaSnV4YVo4SnRLV3V2UUY5NVN2SmNsZlBGUWI3dUpw?=
 =?utf-8?B?NFdVZzJmbUxXR29GZ0YxYTNIVW13TEtEL0xVamFQdVVwYm1yZFVjaHN3TUM3?=
 =?utf-8?B?TUprMGIwNFpoZDhUVXZSbVVrbWdPSm5zTnhTZndrc3Q3RVBrdklyeU1VWHBR?=
 =?utf-8?B?ZlZrVVpMeG5Lcm9KYVo4RTFYUzl3TTVsbWd1dFFSa1p6NDdFc0NPMUtUWStk?=
 =?utf-8?B?dGhJL3VlTzRvTFN3MjNKNjNhY2RKVVJuM2lxOGJGQ3JIOXc5MENET0ZuOEgw?=
 =?utf-8?B?QldTVmVBNnBPV3FIcGxlUmUwNVUxZlAzcXowL1JrQmk0aFppbmpJUnU0b0ZG?=
 =?utf-8?B?bWE1V29MYVVzNFdLMTUrYTFwcWk0NFlXNG9FS2hFV1d6NXlyUU9JMDczUUZK?=
 =?utf-8?B?ejVSNjFqekRHYWgyaDgydWlsRExKNk1jSmFsQ3lJek1jbUtvMFlvSHRKVVBl?=
 =?utf-8?B?L0tiaUo5RFMvQUFOR0NZOEJ4aExITzA1WHY5WExtRThtNGhjRGdJb3NOanFW?=
 =?utf-8?B?a3JVQ1BjWU9IT3JmVW0wbkNwamtYL0ZlS1JvU2ZPT08wUU1EQ2xoNWFDQklK?=
 =?utf-8?B?ZUxuZmZGK3l1Tm02UjcrbTdjalhXb3l2dE1qU3ZGTUJCY09CcitsU3J5RUtZ?=
 =?utf-8?B?Wmw1OU4zeUtQQzBwV3pjSVpiZ0g3N1l0MDBOTjZYY1VhRjJGWS9mMjVKU2Ur?=
 =?utf-8?B?M2dIbDVWRGorMllZYURsWnVPanQ2djhjYXV5RGwzTkEzWFpNclkwV1JFenhk?=
 =?utf-8?B?QTVpRldLRXJLWGJyOTlhdmhJcVFESXdTTUZQZnlrcjlaUS9ENm9zYk9WQUJo?=
 =?utf-8?B?QkxsQ1JPem5tQ085L2dTcnF4NXVPeWRJZjJNMVBvSkxwN3ZPSy94ZGdpNWVE?=
 =?utf-8?B?ajRCd2R1VDUrbzJLYW1uY1hJRWhrNVUxVXJHWWdGeUl4c0N5SWFMR2kxWFJo?=
 =?utf-8?B?aDI0SzRsTjZKMEJYTE11cVBRWmpsd0M5UElRMjd6K1BXUnRmMUtSL0hmVmxE?=
 =?utf-8?B?ZVk4bzVuZUZXVGRSQWRIUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z1hHcEk4TjNLU1FsNHgvMk10YldxYS9WUkFrbE5adjZHblBreVc5WWVWSFRs?=
 =?utf-8?B?emtHM2gzRU5HL2hqOC9WOGlQVXNXY1VVQWh0clM2R2ZNOHk1OHdteGJBcy8r?=
 =?utf-8?B?enlVM0JHWmpzMFBCaGY5SmhIT2NMU3BNamJaQ01sUUlSdGpxZnZ3VWJ1WHVF?=
 =?utf-8?B?aEdNeHFMbjFocUdzQW9vcDAxYngrSUczakRjTytkdS94bFNscEZZYVNFUk9o?=
 =?utf-8?B?bG9ZeldBNW9WaUphWmtPRFBoYlJEc2R2QjlVY2JOaE1pTSsrQkpJajF6RE9o?=
 =?utf-8?B?QTRsWnNCaTZtUzdiNkJUakxpMk9DRmpWR3dGUElaWFJmMGRDaGh4d1JvRm5L?=
 =?utf-8?B?MEZONTFaczV6UU1YQXJMdHFmcFZaNVQ2a21KYnZhei9wTkhYM2QvdHRoamk4?=
 =?utf-8?B?UTlUM1ovTXoybUpPVGZmVjN2ZEFZRmhrUlA4NktNZ2E0N2M4OHlDWkpHbzRa?=
 =?utf-8?B?WDZTUm5Td3dGS3hkVWJYVmhseGJpK3BwZVV5NHdVeGVHZHFoZmdvN0RjQ1pX?=
 =?utf-8?B?bzFDOFAybE1aQlkvbHNBT1k5ZURNMlM3bEl2ZUlzVC93YmZJaXBSTlYyRE1U?=
 =?utf-8?B?cVdKWkhtN3RmUEw5Mm43QmdQc3doUlYrRWxrVG5wc0V6eTNRQlJ6ZHdST01i?=
 =?utf-8?B?MlJiWXloaGF4NFc0WnlHUDFjQ1l4dTd4ZUxFSHhwVnZCdk44a0c5YUpLbVJF?=
 =?utf-8?B?dWRCazVsajFEOGZqcytKSjJUbFU2b0FnVUc2TEVIWkc1eDFUSUZXY3Z2aVNX?=
 =?utf-8?B?R0owam9OWXMzMC80ZVcwZjhDVHZ5OUJVTWJJelJHcVFnVzBWQ3dZNUtBaFRx?=
 =?utf-8?B?dlhLdkU3UWV6WmVHeWQxZG94djhITnlvVnlCdFl5RW5ob1o1Um5naW1FM1U1?=
 =?utf-8?B?NktHNjEzNXIwRWZCMXBFVGhLd0F2SFdHME96bTBuMzdGTTFGTDdtaGRONU56?=
 =?utf-8?B?OGpZS0c4Uk1UV3dxUWNOSW9jTmNzdEYzL3hRdy9ad09idDF3cm95Q1Rld2M5?=
 =?utf-8?B?TGZYQ1ltQTRQelJJc1RCSEdhbG1CdjNjVytMeENjcWd3SnlQVFFsSDdkODJK?=
 =?utf-8?B?V3RzUk8wNlcxMVRaNmpuS0ZlLzZiNmJDUEozMC80MHMyc2hiMTNpRW1PaXRz?=
 =?utf-8?B?Y1U0MCtFVmNVZ3lUVTBiTkN5aytDelhqWms2UzZOc1NTZXdRN0ZuRVl5STdu?=
 =?utf-8?B?eE5UN0VDNFd1c1JtcWJ0ZXdGU1Y0dXNBRW42N1RiajhYS2dQVlQ0RFR1UGRp?=
 =?utf-8?B?Q3h1TGc1aG04bDUzUEhpR1pmNjRCdGUvcXFQaTZ0dlhIN2lwRHh6OEpzaktG?=
 =?utf-8?B?OGdqK1RyaTVPaXFVVjhjbDBxTHpJbmhna1FGd3I5NnJkZUNid0s1N3hpRXI3?=
 =?utf-8?B?bTA3bkMvM0ZMbmk1NGZWY2ptQUc5R2FYTFlvMVRaU2dZMVJRK0NOcXdPb0JH?=
 =?utf-8?B?N053THJCdTdVaHFqYmR2a1RNc0E2UmF4SE9WdGtaQ3FpV1Z6V0FJUmJvc0hC?=
 =?utf-8?B?SG9KdGVMbEk2Q2pyL3Y4b1pleHQ4VFVUOTZZT1NTUTdLUW4yTm9nK1NRY0JJ?=
 =?utf-8?B?Uy9WMjRROXkwMzJNT1VMN1JVVGFHQ1dOVkpKWGtDN0xDMXk3MmtrZkVQY1Jz?=
 =?utf-8?B?TElWVzNPeSs2dFhTSytPV0NDZmJqb3VsMHp2NlZDZGpOWjZ3OTlzUHVEbnVE?=
 =?utf-8?B?L2VLaTlBOWw3WlNXdWFvemVGQmJEYlRjMUlQNTBiYWhmYnpOV2QrczNMTEV0?=
 =?utf-8?B?TUI2NDNXYVNGRUxGNWNKWUxzZkhvYzJDM2ZmU3pURDg3TXFGV1pYTS95cS8x?=
 =?utf-8?B?KzlFRmh1V3RZUUl6OWd0YWdZaFNwc2VoUC9VVG5UL0s3K2x0bHVWSGFmWnlY?=
 =?utf-8?B?aVlNaDRUQitDUFpwdVBGSU5wZ0F3Tk1QYVlCMXdpT0dNL012ZXN0YmpDejlr?=
 =?utf-8?B?eXR4bmpIR21ZMjlYWnkvRXpBQUNSdU1CQUlNQXIzSDhrdTIvbEhTL2dPcmQv?=
 =?utf-8?B?TWVhK0RZSFVzcVIxSHNRWUJra0ZzNjhiTFlxdW5tYnVNYnZHTzFJTUFhZXRZ?=
 =?utf-8?B?Z2tubmxoSFZldmo5dWdiTjFvbWk1S2ZEb0Q3bHdpL2RNUitxRWozZ0REUW9s?=
 =?utf-8?Q?FumHtSkSL5FVB+QpiKkw6GbPc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5469a85b-c283-4dfd-2539-08dc7bcaa7c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 08:22:30.8230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PRkF/zvQNkrHN1lQHpjOsa79mE/hNGwNDjSoax6R74ARODrWvoph+hDgYtfXLgPDFqCvX4b2+E+dJlF+t4k/zA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5189
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDI0LCAyMDI0
IDExOjQ5IEFNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogS2Fob2xhLCBNaWth
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMDEvMTdd
IGRybS9pOTE1L3BzcjogU3RvcmUgcHJfZHBjZCBpbiBpbnRlbF9kcA0KPiANCj4gT24gRnJpLCAy
MDI0LTA1LTI0IGF0IDA1OjU1ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPg0KPiA+
DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSG9nYW5kZXIs
IEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiBTZW50OiBUdWVzZGF5LCBN
YXkgMjEsIDIwMjQgMjoxNyBQTQ0KPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
OyBLYWhvbGEsIE1pa2ENCj4gPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFtQQVRDSCB2
MiAwMS8xN10gZHJtL2k5MTUvcHNyOiBTdG9yZSBwcl9kcGNkIGluIGludGVsX2RwDQo+ID4gPg0K
PiA+ID4gV2UgbmVlZCBwcl9kcGNkIGNvbnRlbnRzIGZvciBlYXJseSB0cmFuc3BvcnQgdmFsaWRp
dHkgY2hlY2sgb24gZURQDQo+ID4gPiBQYW5lbCBSZXBsYXkgYW5kIGluIGRlYnVnZnMgaW50ZXJm
YWNlIHRvIGR1bXAgb3V0IHBhbmVsIGVhcmx5DQo+ID4gPiB0cmFuc3BvcnQgY2FwYWJpbGl0eS4N
Cj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKgwqAgfMKgIDEgKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDE5ICsrKysrKy0tLS0tLS0t
LQ0KPiA+ID4gLS0tLQ0KPiA+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwg
MTMgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gPiBpbmRleCA5Njc4
YzJiMTU3ZjYuLjZmYmZlOGExOGY0NSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ID4gQEAgLTE3
NDMsNiArMTc0Myw3IEBAIHN0cnVjdCBpbnRlbF9kcCB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
Ym9vbCB1c2VfbWF4X3BhcmFtczsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBkcGNkW0RQX1JF
Q0VJVkVSX0NBUF9TSVpFXTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBwc3JfZHBjZFtFRFBf
UFNSX1JFQ0VJVkVSX0NBUF9TSVpFXTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHU4IHByX2RwY2Q7
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTggZG93bnN0cmVhbV9wb3J0c1tEUF9NQVhfRE9XTlNU
UkVBTV9QT1JUU107DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdTggZWRwX2RwY2RbRURQX0RJU1BM
QVlfQ1RMX0NBUF9TSVpFXTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBsdHRwcl9jb21tb25f
Y2Fwc1tEUF9MVFRQUl9DT01NT05fQ0FQX1NJWkVdOw0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggZDE4YmFlYjk3MWJiLi5i
YTkyZjcxYjgyZDkgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gPiBAQCAtNTU5LDIwICs1NTksMTAgQEAgc3RhdGljIHZvaWQNCj4g
PiA+IGludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShzdHJ1Y3QNCj4gPiA+IGludGVsX2RwICpp
bnRlbF9kcCnCoCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2luaXRfZHBjZChzdHJ1Y3QNCj4g
PiA+IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHApwqAgew0KPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+
ID4gPiAtwqDCoMKgwqDCoMKgwqB1OCBwcl9kcGNkID0gMDsNCj4gPiA+IC0NCj4gPiA+IC3CoMKg
wqDCoMKgwqDCoGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCA9IGZhbHNl
Ow0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgs
IERQX1BBTkVMX1JFUExBWV9DQVAsDQo+ID4gPiAmcHJfZHBjZCk7DQo+ID4gPiAtDQo+ID4gPiAt
wqDCoMKgwqDCoMKgwqBpZiAoIShwcl9kcGNkICYgRFBfUEFORUxfUkVQTEFZX1NVUFBPUlQpKSB7
DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUt
PmRybSwNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICJQYW5lbCByZXBsYXkgaXMgbm90IHN1cHBvcnRlZCBieQ0KPiA+ID4gcGFuZWxc
biIpOw0KPiA+DQo+ID4gUGFuZWwgUmVwbGF0IG5vdCBzdXBwb3J0ZWQgcHJpbnQgYXJlIHdlIHJl
bW92aW5nIHB1cnBvc2VmdWxseSBvcg0KPiA+IG1pc3NlZCBzb21laG93IGluIHJlZmFjdG9yaW5n
Pw0KPiANCj4gSSByZW1vdmVkIGl0IHB1cnBvc2VmdWxseS4gV2UgZG8gbm90IGhhdmUgdGhhdCBm
b3IgUFNSIGVpdGhlci4gSSBkb24ndCBzZWUgdGhhdA0KPiBhcyBhIHJlYXNvbmFibGUgdG8gcHJp
bnRvdXQgd2hhdCBmZWF0dXJlcyBwYW5lbCBpcyBub3Qgc3VwcG9ydGluZy4gSGF2aW5nDQo+IGRl
YnVnIHByaW50b3V0IHNheWluZyBpZiBpdCdzIHN1cHBvcnRlZCBpcyBlbm91Z2ggdG8gbXkgb3Bp
bmlvbi4gRG8geW91IGFncmVlDQo+IG9yIGRvIHlvdSB3YW50IHRvIGtlZXAgaXQ/DQoNCk9rIGZv
ciBtZSAuLiBtYXliZSBnb29kIHRvIG1lbnRpb24gaW4gY29tbWl0IGRlc2NyaXB0aW9uLiANCg0K
UmVnYXJkcywNCkFuaW1lc2gNCiANCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+
ID4NCj4gPiBSZWdhcmRzLA0KPiA+IEFuaW1lc2gNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqByZXR1cm47DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqB9DQo+ID4gPg0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCA9
IHRydWU7DQo+ID4gPg0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHByX2RwY2QgJiBEUF9QQU5F
TF9SRVBMQVlfU1VfU1VQUE9SVCkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+
cHJfZHBjZCAmIERQX1BBTkVMX1JFUExBWV9TVV9TVVBQT1JUKQ0KPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1
cHBvcnQgPSB0cnVlOw0KPiA+ID4NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygm
aTkxNS0+ZHJtLA0KPiA+ID4gQEAgLTYzMCwxMCArNjIwLDEzIEBAIHN0YXRpYyB2b2lkIF9wc3Jf
aW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKQ0KPiA+ID4NCj4gPiA+
IMKgdm9pZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApwqAg
ew0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgX3BhbmVsX3JlcGxheV9pbml0X2RwY2QoaW50ZWxfZHAp
Ow0KPiA+ID4gLQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9kcGNkX3JlYWQoJmludGVs
X2RwLT5hdXgsIERQX1BTUl9TVVBQT1JULCBpbnRlbF9kcC0NCj4gPiA+ID4gcHNyX2RwY2QsDQo+
ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6
ZW9mKGludGVsX2RwLT5wc3JfZHBjZCkpOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgZHJtX2RwX2Rw
Y2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIERQX1BBTkVMX1JFUExBWV9DQVAsDQo+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpbnRlbF9kcC0+
cHJfZHBjZCk7DQo+ID4gPiArDQo+ID4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBy
X2RwY2QgJiBEUF9QQU5FTF9SRVBMQVlfU1VQUE9SVCkNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBfcGFuZWxfcmVwbGF5X2luaXRfZHBjZChpbnRlbF9kcCk7DQo+ID4gPg0K
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyX2RwY2RbMF0pDQo+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoF9wc3JfaW5pdF9kcGNkKGludGVsX2RwKTsN
Cj4gPiA+IC0tDQo+ID4gPiAyLjM0LjENCj4gPg0KDQo=
