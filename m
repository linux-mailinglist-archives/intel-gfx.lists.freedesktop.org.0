Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D212B579ED
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 14:07:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B8610E46F;
	Mon, 15 Sep 2025 12:07:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPuJDrj5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DEA10E46E;
 Mon, 15 Sep 2025 12:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757938027; x=1789474027;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=cGLiE32zeI2zeukI75kqW3NHQIO6fDh8eMAFFiKkQeA=;
 b=KPuJDrj5hAynqxhdI5nL2SNVoDqlL+WMcD6SMsiiphlYbO2nb2tf2Nvt
 4zL9xrGrijB47GkzP2IvHsfthXwkW+qydkaC1KFAxG6/NTonDkf92NewO
 CfyHmtC7/OP0UwvJgxdPtvH24G6PSNd3tbDlksCHTSSjxod77Mu0Q65QG
 7nMJD16j4RPdUdSXnBepxylSyOWQpiNHpm6SAV92LLBzoBetIj0vkqket
 UTyI4TiXnzcBdyV8Q0BwnHfD6faismOZJvqvPahUwB5yLxMbEf3eN2S88
 4bNhj4SMGNweLXy+y5PTy20VbfoYuIa5nt08jE7l/CEzo35mMgzCpV19p w==;
X-CSE-ConnectionGUID: cEvZIHlsSyeiYZALEJi6UQ==
X-CSE-MsgGUID: Sw5CUPOVT+ef4TQUy5A+xw==
X-IronPort-AV: E=McAfee;i="6800,10657,11553"; a="71558442"
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="71558442"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 05:07:07 -0700
X-CSE-ConnectionGUID: pO/IIZQXTiiGL0+AvO1mvA==
X-CSE-MsgGUID: ILNYGUB4QUWP+uT73xwHZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="205400257"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 05:07:07 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 05:07:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 05:07:05 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.22)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 05:07:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wmBnxfP7QxaSlIv0Noe5ia8yRpLXRWDfobQFuMO1WJtbQNm6/gbuahzi7Tni8BI+ai2yF6QtU4w//2x9lemPnzFEIDD2vVGhKG4IRV6BJ1E8fXILxHZnRjT/rb+qOJHD9gMSIKWfTaUI6IFAeTskiEUv9JUjNQEuwUSvW6OEbQgnqMiDYTN0S5Pb2QT4g0xVYdcM59sofE2ptcREsOsjCA/g9Wt6FhejrIXzx2sPxrD9TGEzV6szXmsY7kuz2EjxjW359lWuBJSSeVI2TRw9NdRZsTQKGV+4ca5GVyIJqrsxo9C2IKDZIft5n92i450e+GTkxVEmz3U5AxZn+VywoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cGLiE32zeI2zeukI75kqW3NHQIO6fDh8eMAFFiKkQeA=;
 b=b9fvHtHJ5Sehf5X5Q4/7laIUH9YfgTNUwj93ZVBG8R9zPFJMpnMGJG7iN2jeMi0ncof/pXxVAzKly4RPusanpvnWJ6xtkNnsu9hnFsZMUPcdJ0b/cwmsPM51ziC8IT2BzSs+Stus43s+Ux1KQdB6pw+6e2rMhbCJd7TG51e6ADFp9ZnTjUcRPBxvwGI9E5sXtWhmh0BqbGpkUj7tGcWv6K8J9nUr9s1oFbWAKyX+1SCrCtSezvctf4AI0xx11YwBAphHJU6By4sQ/xDfcgpwCkAuUa4xMWcfYNraOSKPB16Scf/35Uh5zQia8F9vsJ3HPOzzuebzcGTuZntp/0jvyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6306.namprd11.prod.outlook.com (2603:10b6:930:22::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.22; Mon, 15 Sep 2025 12:07:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 12:07:02 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Brzezinka, Sebastian" <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v10 1/1] drm/i915/display: Add no_psr_reason to PSR debugfs
Thread-Topic: [PATCH v10 1/1] drm/i915/display: Add no_psr_reason to PSR
 debugfs
Thread-Index: AQHcHL3ZuzkB/Lub/EejOFOIdDuPfLSUOQCA
Date: Mon, 15 Sep 2025 12:07:02 +0000
Message-ID: <ad14c2fd3d8e505f835cdb59daf1cbff5fb3ed9c.camel@intel.com>
References: <20250903103152.2440348-1-michal.grzelak@intel.com>
 <20250903103152.2440348-2-michal.grzelak@intel.com>
In-Reply-To: <20250903103152.2440348-2-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6306:EE_
x-ms-office365-filtering-correlation-id: 9179d1ad-4158-4fa5-3f05-08ddf450619d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Tm9tRExtU21hTjNIMXFLenNMcHVZQkNhcnp0Ky9XMnpsbHRwNnhheGVncS9V?=
 =?utf-8?B?Z2t3WUVmR2FTb05oK1EzWEtpMjVrQTBFYVBBS29SVFRFN0t5SExMUit1c095?=
 =?utf-8?B?S0xIOTZ1Z24zZTdaR1RMZnJYZThlNFRudVhpQ21YRnQzbXI5RXc1b2hrUGJ5?=
 =?utf-8?B?SjJNUHlrWEFkWldaeE9JbUxjOHh1QWNhYnpncCtDR0NLUDFxTTZ2OHRhamFp?=
 =?utf-8?B?TWR4bG5RU1dxSEhoM0pEeTQvVCtOdnlyMTRNMFlxYWk1OS9lcEZIcU1jdVZi?=
 =?utf-8?B?dkU3bUQrOU5kenNubkU4ZDdRTmtXNHE5VGFHcytkd0s3ZER0Q0twZlV6RWJW?=
 =?utf-8?B?OVR2WG5HRzdaWUFYQ1Q3VWNVdkJINXl0dTAycGdWWmdGL2ZjMjVINi9na0Nl?=
 =?utf-8?B?UytYZVRvYWVuREtMbVJmRFIvRk1JRjV0cmNHTDVvTFIrRkxia0gwSU05eXkw?=
 =?utf-8?B?Wm5XcU80K3plU1AvdXJRODVKTGRWMjVYZDB1TXZXR0V0N0NPbnFBd3UzamRy?=
 =?utf-8?B?RExJdUptTm04aU95OU1aWHJYbHpidjV3MVFaaHVSNnROZDZTdTZuakNRMnVs?=
 =?utf-8?B?ODZZNUpGU0FOWUFHeDk4WDlzYVI3bmt4dlpsdFVMTU1uOXdRQ28rWkh4UTZw?=
 =?utf-8?B?SjYxUm5BZjZXSUxYeU5XVEJQdzdidnRVRGpQY1h1RWx5a3RYdldZWFQzM0E4?=
 =?utf-8?B?VkY4aGV6YXA5N3lGdjVCNmIrRlFOdktKdzdMVnF1NGZ5bnE3d2YxdWtZMUZ6?=
 =?utf-8?B?bHd0RG9WVjRRbG9jWEZBVzZTbndEWkZwb2Y5RWtJMjc3QWdkOFZtcytnbnBY?=
 =?utf-8?B?NGR6c1UyZDB3YzVGeHNpNVN6QzJxcEpnTTJIM0VSdE1CdVJxSG1LQytCSHZV?=
 =?utf-8?B?VzUyTk5xWlp5aWNiZmVFYkpwdmF1TGtyZURsZjRranRYbkl3WWorZUhIR1FE?=
 =?utf-8?B?MUtIOHlEbmltZnY3dUtucXBVU2E2VHI0aHNMbm9WbGQxTHB1RGFVWEVsbXlV?=
 =?utf-8?B?M1V6QkgzYkVpVi96TDQ5THpLOEp6S0RLUW9CTGdLTzlTT2MzN3VTMWxUMnA4?=
 =?utf-8?B?MnpxTGRNekk3dkRwamVEM3BSRkkvWm1RNWxMZ041UFRZT3RQZHFrS3Rmb2N6?=
 =?utf-8?B?SXIvMDhlRkVUcDFVWWNsVVBBbk8wbER4QjJmSnN5Yk14QWI2cHl6YmZxRlgy?=
 =?utf-8?B?R1F4Q1k1ZnhyZzNKU3ovTXFEN3FjSmRvSTJRMTJXcXBFL3N5M2gxeTBzeTVj?=
 =?utf-8?B?VTl3NDBwRnVtV1dSN2pqU3Bxd2o0cFdIbllRYmtXTG43MVh5WFNpWlF1MHJM?=
 =?utf-8?B?TzYvQ1ZnRTZzbmZxaDZjMmV3cjkyOW5PWWNMM0x6TmEveHdycHl4eWJlaVRO?=
 =?utf-8?B?aDN1MkxXYklqR2RKSklFbzkxWnNMRmFlVkVCMHYzTFlxYUVud3BQQXMxYVFN?=
 =?utf-8?B?UW9iQXloYU9rd2J5L0p1UWtaNVorSlVtaVpGemF2WUMvYnluOG1GMnplRHdw?=
 =?utf-8?B?U2NtSzY3aGwrV0ZnSFg3Tmo3S2ViNVlYQVVWRHh0M2hXUUNkZ3lUQXFmMzA2?=
 =?utf-8?B?dys3WldJalZPL2NLcDlXZW9sbEl2N3dlMmdja1hsMWFjMXhqM2pHaUpaWGV1?=
 =?utf-8?B?RUpNMnVDWk85VmltTU1yZlFzZzV0Wjd5aVM2TWNSa2pqNVd4dGtlTXRwZ1pE?=
 =?utf-8?B?Skc5TjlXVGlxWlB1Y0JCaUdIdFc0MXRIYlpOZTh4azhLK2pJaGh4S2NGMmxx?=
 =?utf-8?B?QTd5NHIxbWhuSFBIN1l2QUlKZWYxVWNGTnNiSkNoNTgxYzA0V1VDdzRzbWkw?=
 =?utf-8?B?enAxaWQvNUFPRUV4RTZKK1Nodk9pTTJMM3d5dTJNSjRrUE5idGpnZ2NHNnMx?=
 =?utf-8?B?R2Y3SjdyZzc4bCtPV1F1cFBQQ01qMSsvaER6VUhuMVNNQ0FCajNidDdmRjFW?=
 =?utf-8?B?ekQwZ3dFU1F2SlgrNDVDdkVEMFRDZXIxeFU5cEFsdC8wOTVuWEV2VmR2RWox?=
 =?utf-8?B?YU9HTzdIUVRnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cklzaHN4M3FOVWdFVkJrWFF3UWhqNEVmVnFqa1NOOHAwTlhQeHVva0lBYlBF?=
 =?utf-8?B?eXlrckEyUWhmRnNCUCtZdkVIS1djaXpIRWZ2eEtMYVpyUzMyUW9sVkhlckxI?=
 =?utf-8?B?WGsvdmtLL0RDUlpzL3JERnYxMkF5MyttN2Z0NDhxTDRPUThZRGxqNStIRk5y?=
 =?utf-8?B?WUdFWmx2OHZzWkhMWUMwaFVsWWg0MUJGbW14WjF5Sm5Pa2w0RmJVNHNVYTU2?=
 =?utf-8?B?Y0JoZUZMSjZPN3loUHl0QlFQbjRmeG1EOXljWm53VEpqQklPSnVrb1F0U1BG?=
 =?utf-8?B?b3NwSkNPNlE5ZEM0TGwxMmFBb1hocWUxaU1tQ2hkZEcyNzY3b2NwalFpK05y?=
 =?utf-8?B?RS9SQ3lRREo5R2E4S3Y4d1BHMzBXa05VOEk4ZlVIMmZNUHQ1eFliaG5pQ0FX?=
 =?utf-8?B?TkhCNFFsYXF4R3YvUkRLUmNHc2ZHSEsxVzFKdGtYakRBNGRnaWMyMHpGK0RE?=
 =?utf-8?B?S2x2N2NJUFlCeXNqOUxuRXJ3NDhha0ZkN29lcS81QzJ2cXJaQ3ZseUlNRnMz?=
 =?utf-8?B?RXlPWGRXTnNQVXczMDgrMGMwQ2pmbE1pS2IxckRrdC9Hcng3YUh2NDhlZzF5?=
 =?utf-8?B?UXM2UkxCam1Ic3RLODFBc25PSSt5VUxMZVVlUTQ0OU1LRkVzUGRQekYrN2hR?=
 =?utf-8?B?Q2JvL3hzM2gwRzZ6TE9mNmoyRUQ3Zm45MTY4M0QwTnl5cTgrcGV1N3JZVk5O?=
 =?utf-8?B?RjlXeFZYZzJpdTFEZE4wcFliY0dLT3lQeE55Uytjbm8xVFVyeGs2UDJsTGpz?=
 =?utf-8?B?dVBxVDdxakJ0TVorZXlDMUpFNzYzUTNWc2VTWk11a3Bqby9ZMzJWd2ZFVmYx?=
 =?utf-8?B?SDVmU0FMVW01WWFLdWlodzR3NTc3bUN6d0pJbkRRR3M1TEpscm1RbGJ5VC8x?=
 =?utf-8?B?TDY3TUpvODhjUXNhdFVML0tZbDdDeDZyU1I2WXpzdkhhazVNNDRlZUVweUUv?=
 =?utf-8?B?OXkzelFqcUNHZnRnaExLWHIyV2ZHWm4zQjF3TG8xMjFmb3hqallNRWxHQ1dk?=
 =?utf-8?B?UFhmWXlpN0p3aDd3aXhydVRsd3VGeWxQM3BBK2QyaTY3cWt3MHcvd1RBbjhK?=
 =?utf-8?B?RndkRStRWUF0eUJhcDhNSG82TDV2Qk9QcDFpc0RkRWg1S085dFVrUUhZd05u?=
 =?utf-8?B?NkxiS2Q0eWo0bjByNUdLZGhjUFlGL0dkS1g4dzdEbytYYUdkVFhpL05jVUJI?=
 =?utf-8?B?TisyeDhpN2JTYmpRYmVMLzQyVmtQNWpEZDRjMnFxcjR4NkdLRjVzakxYdE9X?=
 =?utf-8?B?aTZTclVvakltMnJsTXdYcU0ybWRmVHkyNkFJa3pOUUo3THJZcTdGNzVBcEpX?=
 =?utf-8?B?b1RFT3ZUenRiMUdRdWM3TzRFdGZUZUFBMnVHcWk3d0JoTWRvQWg2WXVpK0lR?=
 =?utf-8?B?YzI1T05BTUYrWnQ1ZkR0dXcvejFNNWF3WkozclhmMEgxdnpxaGY4bXFXZXhS?=
 =?utf-8?B?SjJpeTRTVms5c3pla2FaL0w5ZDlRQlNXUVhXcU9EZ0E1bmZCdnRad2pJbFNW?=
 =?utf-8?B?OFZtZmZoQzBVclBxdnhwZWt4OUxFTS9qZnIyaGltNllOdzc4eWIzeVovT29v?=
 =?utf-8?B?U3p4SHRSRlRPYzcwU3ZWT2c2SHhvQjRFWW8yMUdtdGlPNWEzT2pRdWRwUUNi?=
 =?utf-8?B?RTZlb3JrU0Nsd25LM0RxTDRYV2s2ZnhBK1h5L3NKenA3Qys0QjJmcWpTaDhP?=
 =?utf-8?B?dkNqcVV6cDZmZDYzRExsWENyMmJmUzYvODR5T3RLQzNaMDNsZDBVTlRONDZ6?=
 =?utf-8?B?MXJJWU0rOU13cWRMYllEaXJvQU1vbmg5RDF2L2ZHaDBnT1NrckhYc2lJRStm?=
 =?utf-8?B?bkpMWHhvZ3JuYVd0T2p2VUZwaTM5NHBlMk1KR1hTbS95MkhqMTJxWUU5N2ZW?=
 =?utf-8?B?VktWNFEzcVRCLyt2cWRvRm9pVjlnYXZLYUpzS0tncXpQaHdWYmg5S2NONzNP?=
 =?utf-8?B?NVVYMGllMkU2ZmJVOWtDeUQ0TG5PREYzcVpIUDJoN0JrelE5Skt4MkhyTGRD?=
 =?utf-8?B?L3lBdzRUMFNxRVZGNDdva25SbFRNVzM1YUxmQmp1NGlQQzJlNWR0VnllUE5E?=
 =?utf-8?B?YXpMSmhCMVgrMFZydlNlcUtoK2VRc1ZHOWpNSXlKSk5KVjRCQUZQTjFRSkc1?=
 =?utf-8?B?ODI0bUVNNlF2Ujc1WE10eStQZTRHbEc4V3Ezc1l3UXJRYXh0ZEd1UkF1ZlJU?=
 =?utf-8?B?bUloMzdlc3FPTTI3TjUzd0ZxQ09UZmU4OE1sc1V4cFExWWhPZW1zbjJCek8z?=
 =?utf-8?B?QVNQMk1hdmpQNmdkSlpkdGRmYjZRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0D14435521907A439876028556D735F1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9179d1ad-4158-4fa5-3f05-08ddf450619d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 12:07:02.8105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wR3h+4OaqpyG+WnufOXmppNeEuoyh4lS0lIbFcMlxOfvp8aNFSlsCIOGU3gGlJTUSEaBCemDtuUDb3GF5oLKTSqf2XJy+gKDQFYuE8EJx2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6306
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

T24gV2VkLCAyMDI1LTA5LTAzIGF0IDEyOjMxICswMjAwLCBNaWNoYcWCIEdyemVsYWsgd3JvdGU6
DQo+IFRoZXJlIGlzIG5vIHJlYXNvbiBpbiBkZWJ1Z2ZzIHdoeSBQU1IgaGFzIGJlZW4gZGlzYWJs
ZWQuIEN1cnJlbnRseSwNCj4gd2l0aG91dCB0aGlzIGluZm9ybWF0aW9uLCBJR1QgdGVzdHMgY2Fu
bm90IGRlY2lkZSB3aGV0aGVyIFBTUiBoYXMNCj4gYmVlbiBkaXNhYmxlZCBvbiBwdXJwb3NlIG9y
IHdhcyBpdCBhYm5vcm1hbCBiZWhhdmlvci4gQmVjYXVzZSBvZiBpdCwNCj4gdGhlIHN0YXR1cyBv
ZiB0aGUgdGVzdCBjYW5ub3QgYmUgZGVjaWRlZCBjb3JyZWN0bHkuDQo+IA0KPiBBZGQgbm9fcHNy
X3JlYXNvbiBmaWVsZCBpbnRvIHN0cnVjdCBpbnRlbF9wc3IuIEFkZCBub19wc3JfcmVhc29uDQo+
IGludG8gc3RydWN0IGludGVsX2NydGNfc3RhdGUgdG8gcHJldmVudCBzdGF5aW5nIG91dCBvZiBz
eW5jIHdoZW4NCj4gX3Bzcl9jb21wdXRlX2NvbmZpZyBpcyBub3QgdXNpbmcgY29tcHV0ZWQgc3Rh
dGUuIFdyaXRlIHRoZSByZWFzb24sDQo+IGUuZy4gUFNSIHNldHVwIHRpbWluZyBub3QgbWV0LCBp
bnRvIHByb3BlciBQU1IgZGVidWdmcyBmaWxlLiBVcGRhdGUNCj4gdGhlIHJlYXNvbiBmcm9tIG9s
ZF9jcnRjX3N0YXRlIGluIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlLiBFeHRlbmQNCj4gZm9y
bWF0IG9mIGRlYnVnZnMgZmlsZSB0byBoYXZlIHJlYXNvbiB3aGVuIGl0IGlzIG5vbi1OVUxMLiBD
bGVhbiB0aGUNCj4gcmVhc29uIHdoZW4gUFNSIGlzIGFjdGl2YXRlZC4NCj4gDQo+IFJlZmFjdG9y
IGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZSB0byB1c2Ugbm9fcHNyX3JlYXNvbiBhbG9uZw0K
PiBrZWVwX2Rpc2FibGVkLg0KPiANCj4gQ2hhbmdlbG9nOg0KPiB2OS0+djEwDQo+IC0gbG9nIHJl
YXNvbiBpbnRvIGludGVsX2NydGNfc3RhdGUgaW5zdGVhZCBvZiBpbnRlbF9kcC0+cHNyIFtKb3Vu
aV0NCj4gLSByZW1vdmUgY2xlYXJpbmcgbm9fcHNyX3JlYXNvbiBpbiBpbnRlbF9wc3JfY29tcHV0
ZV9jb25maWcgW0pvdW5pXQ0KPiAtIGNoYW5nZSB1cGRhdGUgb2Ygbm9fcHNyX3JlYXNvbiBpbnRv
IG1vcmUgcmVhZGFibGUgZm9ybSBbSm91bmldDQo+IA0KPiB2OC0+djkNCj4gLSBhZGQgbm9fcHNy
X3JlYXNvbiBpbnRvIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIFtKb3VuaV0NCj4gLSB1cGRhdGUg
dGhlIHJlYXNvbiBpbiBpbnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0ZSBbSm91bmldDQo+IC0gZWxh
Ym9yYXRlIG9uIG1vdGl2YXRpb24gb2YgdGhlIGZlYXR1cmUgaW4gY29tbWl0IG1lc3NhZ2UNCj4g
W1NlYmFzdGlhbl0NCj4gLSBjb3B5IGNoYW5nZWxvZyB0byBjb21taXQgbWVzc2FnZSBbU2ViYXN0
aWFuXQ0KPiANCj4gdjctPnY4DQo+IC0gcmVzZXQgbm9fcHNyX3JlYXNvbiBhdCB0aGUgYmVnaW4g
b2YgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnDQo+IFtKb3VuaV0NCj4gLSByZXN0b3JlIGtlZXBf
ZGlzYWJsZWQgW0pvdW5pXQ0KPiAtIGRyb3Agc2V0dGluZyAiU2luayBub3QgcmVsaWFibGUiIFtK
b3VuaV0NCj4gLSBhZGQgV0EgbnVtYmVyIFtKb3VuaV0NCj4gLSBpZiBub24tTlVMTCwgd3JpdGUg
bm9fcHNyX3JlYXNvbiBhZnRlciBQU1IgbW9kZSBbSm91bmldDQo+IA0KPiB2Ni0+djcNCj4gLSBy
ZWJhc2Ugb250byBuZXcgZHJtLXRpcA0KPiANCj4gdjUtPnY2DQo+IC0gbW92ZSBzZXR0aW5nIG5v
X3Bzcl9yZWFzb24gdG8gaW50ZWxfcHNyX3Bvc3RfcGxhbmVfdXBkYXRlIFtKb3VuaV0NCj4gLSBy
ZW1vdmUgc2V0dGluZyBub19wc3JfcmVhc29uIHdoZW4gZGlzYWJsaW5nIFBTUiBpcyB0ZW1wb3Jh
cnkNCj4gW0pvdW5pXQ0KPiANCj4gdjQtPnY1DQo+IC0gZml4IGluZGVudGF0aW9uIGVycm9ycyBm
cm9tIGNoZWNrcGF0Y2gNCj4gDQo+IHYzLT52NA0KPiAtIGNoYW5nZSBmb3JtYXQgb2YgbG9nZ2lu
ZyB3b3JrYXJvdW5kICMxMTM2DQo+IA0KPiB2Mi0+djMNCj4gLSBjaGFuZ2UgcmVhc29uIGRlc2Ny
aXB0aW9uIHRvIGJlIG1vcmUgc3BlY2lmaWMgW01pa2FdDQo+IC0gcmVtb3ZlIEJTcGVjcyBudW1i
ZXIgJiBXQSBudW1iZXIgZnJvbSBiZWluZyB3cml0dGVuIGludG8NCj4gbm9fcHNyX3JlYXNvbg0K
PiAtIHJlcGxhY2Ugc3BhY2VzIHdpdGggdGFicw0KPiANCj4gdjEtPnYyDQo+IC0gc2V0IG90aGVy
IHJlYXNvbnMgdGhhbiAiUFNSIHNldHVwIHRpbWluZyBub3QgbWV0Ig0KPiAtIGNsZWFyIG5vX3Bz
cl9yZWFzb24gd2hlbiBhY3RpdmF0aW5nIFBTUi4NCj4gDQo+IFJldmlld2VkLWJ5OiBTZWJhc3Rp
YW4gQnJ6ZXppbmthIDxzZWJhc3RpYW4uYnJ6ZXppbmthQGludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+IC0tLQ0K
PiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAg
MyArKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKg
wqDCoCB8IDIyICsrKysrKysrKysrKysrKy0tDQo+IC0tDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAy
MSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggZmQ5
ZDI1Mjc4ODliLi5lMTY1YTQ3MWFhNmQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xMTI1LDYgKzExMjUs
NyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+IMKgCXUzMiBkYzNjb19leGl0bGluZTsN
Cj4gwqAJdTE2IHN1X3lfZ3JhbnVsYXJpdHk7DQo+IMKgCXU4IGFjdGl2ZV9ub25fcHNyX3BpcGVz
Ow0KPiArCWNvbnN0IGNoYXIgKm5vX3Bzcl9yZWFzb247DQo+IMKgDQo+IMKgCS8qDQo+IMKgCSAq
IEZyZXF1ZW5jeSB0aGUgZHBsbCBmb3IgdGhlIHBvcnQgc2hvdWxkIHJ1biBhdC4gRGlmZmVycw0K
PiBmcm9tIHRoZQ0KPiBAQCAtMTY4Nyw2ICsxNjg4LDggQEAgc3RydWN0IGludGVsX3BzciB7DQo+
IMKgCWJvb2wgcGtnX2NfbGF0ZW5jeV91c2VkOw0KPiDCoA0KPiDCoAl1OCBhY3RpdmVfbm9uX3Bz
cl9waXBlczsNCj4gKw0KPiArCWNvbnN0IGNoYXIgKm5vX3Bzcl9yZWFzb247DQo+IMKgfTsNCj4g
wqANCj4gwqBzdHJ1Y3QgaW50ZWxfZHAgew0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMjI0MzNmZTJlZTE0Li5lYmM1NmZkOTU4YWMgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTU3OSw2
ICsxNTc5LDcgQEAgc3RhdGljIGJvb2wgX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
ZHANCj4gKmludGVsX2RwLA0KPiDCoAlpZiAoZW50cnlfc2V0dXBfZnJhbWVzID49IDApIHsNCj4g
wqAJCWludGVsX2RwLT5wc3IuZW50cnlfc2V0dXBfZnJhbWVzID0NCj4gZW50cnlfc2V0dXBfZnJh
bWVzOw0KPiDCoAl9IGVsc2Ugew0KPiArCQljcnRjX3N0YXRlLT5ub19wc3JfcmVhc29uID0gIlBT
UiBzZXR1cCB0aW1pbmcgbm90DQo+IG1ldCI7DQo+IMKgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5k
cm0sDQo+IMKgCQkJwqDCoMKgICJQU1IgY29uZGl0aW9uIGZhaWxlZDogUFNSIHNldHVwIHRpbWlu
Zw0KPiBub3QgbWV0XG4iKTsNCj4gwqAJCXJldHVybiBmYWxzZTsNCj4gQEAgLTE4MTAsNiArMTgx
MSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfZHANCj4g
KmludGVsX2RwKQ0KPiDCoAkJaHN3X2FjdGl2YXRlX3BzcjEoaW50ZWxfZHApOw0KPiDCoA0KPiDC
oAlpbnRlbF9kcC0+cHNyLmFjdGl2ZSA9IHRydWU7DQo+ICsJaW50ZWxfZHAtPnBzci5ub19wc3Jf
cmVhc29uID0gTlVMTDsNCj4gwqB9DQo+IMKgDQo+IMKgLyoNCj4gQEAgLTI5MjIsNiArMjkyNCw5
IEBAIHZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+IMKgDQo+IMKgCQltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiDC
oA0KPiArCQlpZiAoIW5ld19jcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiArCQkJcHNyLT5ub19wc3Jf
cmVhc29uID0gb2xkX2NydGNfc3RhdGUtDQo+ID5ub19wc3JfcmVhc29uOw0KDQpJIHRoaW5rIHlv
dSBzaG91bGQgdXNlIG5ld19jcnRjX3N0YXRlLT5ub19wc3JfcmVhc29uLg0KDQpCUiwNCg0KSm91
bmkgSMO2Z2FuZGVyDQoNCj4gKw0KPiDCoAkJaWYgKHBzci0+ZW5hYmxlZCkgew0KPiDCoAkJCS8q
DQo+IMKgCQkJICogUmVhc29ucyB0byBkaXNhYmxlOg0KPiBAQCAtMjk3MCwxMiArMjk3NSwxOSBA
QCB2b2lkIGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSwNCj4gwqAJCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwNCj4gwqAJCQnC
oMKgwqAgcHNyLT5lbmFibGVkICYmICFjcnRjX3N0YXRlLQ0KPiA+YWN0aXZlX3BsYW5lcyk7DQo+
IMKgDQo+IC0JCWtlZXBfZGlzYWJsZWQgfD0gcHNyLT5zaW5rX25vdF9yZWxpYWJsZTsNCj4gLQkJ
a2VlcF9kaXNhYmxlZCB8PSAhY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lczsNCj4gKwkJaWYgKHBz
ci0+c2lua19ub3RfcmVsaWFibGUpDQo+ICsJCQlrZWVwX2Rpc2FibGVkID0gdHJ1ZTsNCj4gKw0K
PiArCQlpZiAoIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMpIHsNCj4gKwkJCXBzci0+bm9fcHNy
X3JlYXNvbiA9ICJBbGwgcGxhbmVzIGluYWN0aXZlIjsNCj4gKwkJCWtlZXBfZGlzYWJsZWQgPSB0
cnVlOw0KPiArCQl9DQo+IMKgDQo+IMKgCQkvKiBEaXNwbGF5IFdBICMxMTM2OiBza2wsIGJ4dCAq
Lw0KPiAtCQlrZWVwX2Rpc2FibGVkIHw9IERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTEgJiYNCj4g
LQkJCWNydGNfc3RhdGUtPndtX2xldmVsX2Rpc2FibGVkOw0KPiArCQlpZiAoRElTUExBWV9WRVIo
ZGlzcGxheSkgPCAxMSAmJiBjcnRjX3N0YXRlLQ0KPiA+d21fbGV2ZWxfZGlzYWJsZWQpIHsNCj4g
KwkJCXBzci0+bm9fcHNyX3JlYXNvbiA9ICJXb3JrYXJvdW5kICMxMTM2IGZvcg0KPiBza2wsIGJ4
dCI7DQo+ICsJCQlrZWVwX2Rpc2FibGVkID0gdHJ1ZTsNCj4gKwkJfQ0KPiDCoA0KPiDCoAkJaWYg
KCFwc3ItPmVuYWJsZWQgJiYgIWtlZXBfZGlzYWJsZWQpDQo+IMKgCQkJaW50ZWxfcHNyX2VuYWJs
ZV9sb2NrZWQoaW50ZWxfZHAsDQo+IGNydGNfc3RhdGUpOw0KPiBAQCAtMzk3OCw2ICszOTkwLDgg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX3ByaW50X21vZGUoc3RydWN0DQo+IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gwqAJCXJlZ2lvbl9ldCA9ICIiOw0KPiDCoA0KPiDCoAlzZXFfcHJpbnRmKG0s
ICJQU1IgbW9kZTogJXMlcyVzXG4iLCBtb2RlLCBzdGF0dXMsDQo+IHJlZ2lvbl9ldCk7DQo+ICsJ
aWYgKHBzci0+bm9fcHNyX3JlYXNvbikNCj4gKwkJc2VxX3ByaW50ZihtLCAiwqAgJXNcbiIsIHBz
ci0+bm9fcHNyX3JlYXNvbik7DQo+IMKgfQ0KPiDCoA0KPiDCoHN0YXRpYyBpbnQgaW50ZWxfcHNy
X3N0YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAp
DQoNCg==
