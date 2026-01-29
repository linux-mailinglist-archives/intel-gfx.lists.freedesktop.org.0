Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLI1N8n0emnDAAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 06:48:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE26AC10B
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 06:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA14410E7CF;
	Thu, 29 Jan 2026 05:48:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GBKj1l1j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2C310E7CB;
 Thu, 29 Jan 2026 05:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769665734; x=1801201734;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jLSrGjrMxaH/D1nXlIJWST6CV54dWoIskCvEze8bj+4=;
 b=GBKj1l1jaGN+PyckLB+RH1Ei2mRpPiNltQDI3iRGHbtiUlnowYfzUSOS
 bQthJqoSAW36a1SCRqIdnbEZN0LC4yJF7yCExpQbIZgWB58oHCk1XXBOy
 Xuy5/qsGOicYmvy9Y6TUI0v/QnaqW772VZW7MFlmAc0icIIHhhp+vqeEa
 Tzp4+xZ58pdcr+FN9hPXvkvHyavxvsoVTFHSAyNJaF/S9ct7HXcXyf3Tq
 QUlQH4iZiYeXs3mUYQTKyTzEo8IoSGbzTxo9prrno06RNA2pqjXjUP+vA
 srmlJq0oe4qArJ8stsyXhcvopCeyB3sNoNiRKOQDtPLUUqKrA7M0z3brg A==;
X-CSE-ConnectionGUID: AawzKaW+SKmzXW9JIFwPUw==
X-CSE-MsgGUID: cC/H5EYJSSqy7JlNAqJWHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70866553"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="70866553"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 21:48:53 -0800
X-CSE-ConnectionGUID: QyDV6lz7QwesNBNNKBiJHg==
X-CSE-MsgGUID: yc4lAis+RQaJjyDlpQ4TiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="231398464"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 21:48:52 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 21:48:50 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 21:48:50 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.36) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 21:48:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZewrcRbMzRzta9daXHIpjZlgvJwmPIN4Elf4Et3+M/UWHihvDmM5D3lh8UD124qUdRhh5m4UYQFi0xmVqB408OkVA7qoeY4X4S50g9p4BYloyD91xNoyUcyfHSBoG57iZeLr0K4fE38w/O3KINjzBxJbCfJUJXfLGQ1Vs/fsKTv8igIboJfunzTAZpNVbYQkJ9+5I8DuTyvuTYpXrGuOCnjfmXg7R5MniR6cEV96z8SyHMVMzST1ab7kTa5VfdoTdaHyqLavpcTPtocKxgp9dQqenFWxjUAR3+xfCU0ZVgC38c+8x4la4PhBLINYkwt2lxx0ol5g+VTpbtoOORk/Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TBsSij1tWcJG8ri9nlSQwcT6byudX0kSIez6FR2Fgrs=;
 b=mrdQ3YYp3CbfjrTEWc+7KW+lIpTGXY5KAI1W3cKm84veU7q7ipEJPI3AhALw/SuNEjyBzeyPsLm7hwkjpFeeztlBmq7e2Eyhwqxv5F2NPutYgZ6wmGsHbf7T2hxJFlc1P8RF+8R0mjpfmneDDHnMn+Nbh8667+lsOx9/AzySXt9g+CwwjxEaHnzFqLvChyw3nMQ+M+USc0lvk1vXsBzldzeXxld9Hl1vuW0TK3bxdukxS8NxgV4uRfbbjtMUcf24W0Y40+gq/fEwIrAbx5nxVlFXXMLx2AIsRSTV4WQaAijO8bYA+Wrz0vLnSnswBBGytN5ebiA3RZK17otEcj/QhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB7941.namprd11.prod.outlook.com (2603:10b6:208:3ff::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Thu, 29 Jan
 2026 05:48:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 05:48:35 +0000
Message-ID: <0fea6800-d846-450f-af08-5fa90f6827bf@intel.com>
Date: Thu, 29 Jan 2026 11:18:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/16] drm/i915/dp: Rework pipe joiner logic in mode_valid
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-5-ankit.k.nautiyal@intel.com>
 <aXo8dwGBqxY5vE6o@ideak-desk.lan>
 <079b962e-c649-4abd-a75e-5c50800542be@intel.com>
Content-Language: en-US
In-Reply-To: <079b962e-c649-4abd-a75e-5c50800542be@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0058.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d3::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB7941:EE_
X-MS-Office365-Filtering-Correlation-Id: d0473b37-269b-4d62-d0a7-08de5efa0ad7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZEs0cE1wTWd2S0cyNWdUOFE5TXZsOTVGQkV5a0RkVmwxdFBueTF2bW9sYW40?=
 =?utf-8?B?bi9FanNGSXFRZllJT3kraTF5cEFvRnRJN0RUZ2JTMDlzVTZ6YndTaWg2OWwr?=
 =?utf-8?B?ZVAydG91ZDdXN3JLeXcrN2xxMXpSTmVPQ3NkckZoNzlVUXNPMDlTMFJFSW10?=
 =?utf-8?B?dnhYT2ZLcDJHZGwyc0NpbmRzdnJSemlpczZ3eW95Nk5yNXlQNm9jcFE2aUpV?=
 =?utf-8?B?ZjhlY3dNQWtGSkc3NnZuNjN1cmNSODhvZTgzYnpaTlJvSm53YlNtcCt1NEdM?=
 =?utf-8?B?MTZxY2ZnQUJQM094NUtTeDhGS1E5Z29tZHJqQVRLMkJTeWtONFZndWR0R2Ev?=
 =?utf-8?B?Z0hOZklqcUVmam9tS3ByQ3NkNFQrb1M0NG00VDVaMHUzU3JEa0xrdVlYN2hw?=
 =?utf-8?B?N1FyaWNEWUptYkFuekNEODZhT2Nua1A5dFFDR2crdGtZTEdaK0NYRXNNT3dG?=
 =?utf-8?B?cGF2ZndyUk1BYzVMQi81Snd5dXd0NTdZbGwvLzNYdm9Mb0krZlhtY0J4NHY2?=
 =?utf-8?B?ZXRJckl3dVZYZW8xU3p1cGcwVk85WEZUSDI3Vk5taWMwd3U3bDdCdk5SenZu?=
 =?utf-8?B?RjE3VkNPZ2pHRkppR3F2ZFRxQXVRTG1vdXJ0MDZCVGdWUkVtRlR1MkN4Qmt0?=
 =?utf-8?B?ZFZGV2lkMGhFRmsxMXZDVU5OL1JzZmRSS3p1K1VmVVMrWm81cWJYdzJ6QTMw?=
 =?utf-8?B?bUhhOEs5SzFYaTRnWGd2WUxGMmNNTWYxVVRQcFFkWG83Smg5TVBPQzBkRkxY?=
 =?utf-8?B?Ujg5VDE4cGd5UGFacVVMK2QwRUtQN2UyaFRaQkgyS24yZUkyRm1xcHduckw2?=
 =?utf-8?B?WWw4TUI3YmVCOUp6bURiYnFGSWpiY0NoR3pyVXVhZjRMTDdwUlczY054R1FZ?=
 =?utf-8?B?Y1l0YnhzMjN2V2VFc3M1VTk5NFFaNzVhVkt1OGh0dGVBZmpVYUxrbGN5VUtj?=
 =?utf-8?B?d2svc24xZjZMbUliZXZLUysvQUs4QlVOc1NQK2JyaXg0dW5MMm5VNk1qMDJl?=
 =?utf-8?B?dy8vK3haT1E5ZXp0UE0yNmRnRFFCYThtOGlwTUwrbTBmbWV3SGpOUWtyd1ow?=
 =?utf-8?B?eWNRMWF1T05pQ1IzOFNKaVMrcUxLMStnNzZTeGQ0cGtxTnI5TXIyalM0RGdD?=
 =?utf-8?B?Wkoxd09MRENqQmZsdXh0YnZlTGYwSS9MS0FEaFBoazdZbTBrMEo3Tmh0YnQ0?=
 =?utf-8?B?RFF1Z0dGMUROMlBNRzMwNXpiWk5HWUh5UzdKS0dkMnB6YUt3OU8yc1E3VlJD?=
 =?utf-8?B?SlFQY3lwTTNrL3NoL0NxL2pFdUJHY0wzNTc1QWpvRkY3VnZtOWg5ZzM5bEpD?=
 =?utf-8?B?alBTa05kelkwVUhnYk5WNWVaN3JOY1RlTldPRWJYZFV0aWlQL2xvWEJqWFZh?=
 =?utf-8?B?S2Y5ejNVSEZqc29uaEMzNGczVytzVDVhL3R1aU55K3lEQ2NCWnRBK1poVmc0?=
 =?utf-8?B?dnVocXk2QTR3cVRnWXE4aUtKQkZCSWV4ZmVxWGtZV0REMmNES2kveCtYeis2?=
 =?utf-8?B?YmxqWUdzYlpiam0wSjVFNjluR1pHVzVvNWJkZ2VxR3A0YzZaV3lxYXA2NDRP?=
 =?utf-8?B?a1lEY2I3cERSV2kwa2NQdDZ3Y2dwQUhPYjNBTFdXY0ZOZVRLQjIzbzNDbHRW?=
 =?utf-8?B?MGRObVBJMlNRd25tTmFac2cralJ3K3hLclZSRWcxM3ZXY1E3bzA3QzBDdFdP?=
 =?utf-8?B?OWcwUzk0V1Uxay84T0E5UGRVK3A3UlVZSW5YOGJaVWlnbEw4VndQc09qeE5O?=
 =?utf-8?B?bVFTQWwrYjBOSDRrczNleDc4TlZCODRaVThWVGVQRlJrWncwTThabkxubEoy?=
 =?utf-8?B?V1Z0cmdqZzhZT1ZVZVNWd0wwNVNyaXVaNFlPWEJkRkFzc2hTdmk2eG1jMGQ1?=
 =?utf-8?B?KzdoKytRbUhwRlVpOGYxZndCcWF0cjBLckZHVkt0VHh6MnI0Y2VBay85L0NX?=
 =?utf-8?B?VjlOd3hyZkc0dDlRVnZiRDhZaHk0eVV2Z3Q2T0o5Tm4xS01lK2Zrd3RLTEUy?=
 =?utf-8?B?MWw4cEg4UGUvQVdad3dvOVlyMnFubGNUSnloWFpXKzFuaGFPRFlQdno4a2Rw?=
 =?utf-8?B?WXRaNlRBeHNOYTZzdGUzNFpUZjZxL2luamgzNkIrQlNqTHVSRzFNRlVodzYy?=
 =?utf-8?Q?Pd0o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0NiZ2FXVklRUFJFbGVOL1FJT3lPbmlSRmd2bk9sVnRaenE1bzNRN0NUN2pt?=
 =?utf-8?B?c1BlUUVRVk4yQzZ4QzRMTjBQVDdEM1NzTEVOaStEbFVOTXJZZmF1ZHlNZVdP?=
 =?utf-8?B?U0RVdFYycDBGc0QrRWlySmNiY0NXeHFKZ05hcnZSemxyNEdZY05RYldOTjZj?=
 =?utf-8?B?enhhYS9Zb1FvRjlieDRucGdJTHVza3ZwUTV1N3gzOVh6d1dWT2VQeHVlUStU?=
 =?utf-8?B?cTFpaER6ejhIUzB4U1NkUGpxK2kxcmlYNms5U2hMRHNuYXY5ZUxhb09iaG03?=
 =?utf-8?B?RVZDODhxQ3BrSXVUOFpway9NNEtRUnRBc25BQ0JUUzR2TnNqYlBYV2NzMzMx?=
 =?utf-8?B?dWF1eHgveGE5VDF2TzB2MWo4cEQwTWhOWHlzT3RPcTQ5MlJYYzBJYUNUVXNQ?=
 =?utf-8?B?VnZwd0pWSlZURnNqb3lST08yRWdrcXVZRzNGbk1ZdE8zMUx1b0tJdHliVDBE?=
 =?utf-8?B?L1I1OFFQdi9MakRVSFhKdjl1QTJHTjdTL2dBLzk4VWxLQnkyeWE4cmNMdjVR?=
 =?utf-8?B?V0dyK1RXSHl3aUYxM3VIRW00QS9LK3BRUlgrbUFIaEhXTW1NaERUT0wwbVVH?=
 =?utf-8?B?S2xwYXJjNC9Ndi8zblBnTW91VlRabWl0Y0I4RVdjUUhKckR3VFJxZlBCYVNh?=
 =?utf-8?B?SHlJbzZsWjErME5aQTZ0Zk9KRm82YS82a3FqWTZBZ2lBTUl1S3JoRG8yU2Jx?=
 =?utf-8?B?QjlXSGM1Vmp0WHkxRUFmSFhEYmhKY3ZMT1Y1MEg0VXZBd3lxZ3owSWs4RElS?=
 =?utf-8?B?eFlzYTJocCtlK24xVjNRbjZrWk9jUk5udmY3eFNqU0d0d0ZuaDcxbnRQbkdh?=
 =?utf-8?B?R2oxSHRzWkRVTVJpdFl1TTJqVkZWTzFVbCt0ajFUVUxWWXp4cUEwT2dmTEJP?=
 =?utf-8?B?dysrU1JkMkZrWnBhcDArS01nNzR0eHVJQ0VOTy84ejgyL205RDVYWVp3QXdq?=
 =?utf-8?B?RUc2VWNncStCTzZ1bXYzMGplOHIzVVZqMFJuV05QWkdMSU9GNStyTXdWaThV?=
 =?utf-8?B?bjJlZUVoNWU3bEZ5dmp0M2grVmhoTW1hVDN6cDBPcnNsWUZRY3hiZ0V1MHRE?=
 =?utf-8?B?YnpQMHNDRzY4L2oweWZ4NHQ5QUQ4S2ZrRjdZNnJacGl0UFhCUWkvNVp1TVpx?=
 =?utf-8?B?a3VGVU44UG1IalRRRER5VHQ2MFlKMktuTTNrdEdva01zQzRqNFBpSVBGTlN1?=
 =?utf-8?B?eU9nMHJrR1ZuR3puTWNDU2RvRFZ5Q1dPd2s1TFo4OWZrVFIvVDNFOVQyeUp6?=
 =?utf-8?B?L2Z0TW5RdTErOGNpUkFZR0ZWK3h0NWZ4ZkptOUx4UEZaNGRpLzFtbnN6cCs0?=
 =?utf-8?B?Nzd3K0FJZGRDNUh5YUhFWWYwd2VQU3gvdmVVK2gwTjBneWFoczFES2JhZkYy?=
 =?utf-8?B?YjBpSzZDeW5jZnpOVVllZElydXBmNGtXSWdWWFhXWStQdlZROURZTHhsaWg4?=
 =?utf-8?B?anNNWGgyR0NHWUpIM3ZUMWVwcGJqa0ZPZm41N3haNWJSMWkzUkFGaUVUNGw0?=
 =?utf-8?B?d1ErWnQ5eHlXTE51YkY5T1pzaVUvenlSRlRsdUZwZkpLTzBuSFI1dVFuTFB0?=
 =?utf-8?B?VlBjUVk2MVZiMThVLzZBMU1zZTV0dkM4bzdId3VQUVQwVXpKMk5sWUluWFVC?=
 =?utf-8?B?bXBmcHREbUFKSWpTUVZxaEVoV0pYVVVrY0RQb2dxOXhlMEs0a3BhTlhpQWht?=
 =?utf-8?B?dm80NFdLZk1zTWU4cFVVRkFMVkVlZ2IxOUxLK1BlT2U2eUhLdTRWcjFHcU5M?=
 =?utf-8?B?SWMvdnV6Skl2RFJTVm1DUGROMjUzSjZLVHk5MHRaUm5hYjZzc0ErQzFiTG1R?=
 =?utf-8?B?ZzBWSFZYN1A5NERYaXV1OERVcWdJaGRGZHBRWkxydWF2ZHhUQkhwNUpNTDZE?=
 =?utf-8?B?MnhORlVtejN2S2gzRE5aeUxMQk5GVHFMTGE4YW9IQkNnQU1tbkh4eE5tMU41?=
 =?utf-8?B?UjRxcnRaS2tVaDJLelRWd1lsajIxbnRrUW8zWC8wNE1lNThSUVlMZEdzWkU0?=
 =?utf-8?B?ZWxUa1d5RDVVT2FzOTRBbytSOGdlKzV3UjNaZzBabTJ6d3k2elZQVS85d2Zk?=
 =?utf-8?B?eDBYd3J0RUR5QVQ1S2FRUHVEZVNJTVhZSFF6My80MlNSNndBVkxJc3pDcjNP?=
 =?utf-8?B?OUk2NC9QUG9LbGpqaTZKNVEvSStONSsrVXUwbWxJdXZUZ2lYT3BibkJzUUhy?=
 =?utf-8?B?U0R1Z045Y09iYTB6TUVLYVpjbS9MNFl0aWpPZTZnWnliNWlYRmtwV1FqRWhy?=
 =?utf-8?B?dGZDVXF0ZjBwWmIwU2JhcitkVDhLOWtwYUtydGhUOExYMDNsdy96NGg1eHY3?=
 =?utf-8?B?bWJWcEY5ZnVHR2U2Nm5YdTR1QlBYREFOZE1rRlZSa2VwQkUxcFcxb3hadkZq?=
 =?utf-8?Q?m3nwKsF55iVB8eII=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0473b37-269b-4d62-d0a7-08de5efa0ad7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 05:48:35.3397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 61ICcNh5Ps4oPMF9gYnlqbdiC4aoprsna+g6xO1Z7PNgOcPmRQer5OOMRyolxaY36hkn4aDKUYPOIctXV316hsPD05tBEqo4BSWNYykQqD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7941
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
X-Rspamd-Queue-Id: 4DE26AC10B
X-Rspamd-Action: no action


On 1/29/2026 10:51 AM, Nautiyal, Ankit K wrote:
>
> On 1/28/2026 10:16 PM, Imre Deak wrote:
>> On Wed, Jan 28, 2026 at 07:36:24PM +0530, Ankit Nautiyal wrote:
>>> Currently in intel_dp_mode_valid(), we compute the number of joined 
>>> pipes
>>> required before deciding whether DSC is needed. This ordering 
>>> prevents us
>>> from accounting for DSC-related overhead when determining pipe
>>> requirements.
>>>
>>> It is not possible to first decide whether DSC is needed and then 
>>> compute
>>> the required number of joined pipes, because the two depend on each 
>>> other:
>>>
>>>   - DSC need is a function of the pipe count (e.g., 4‑pipe always 
>>> requires
>>>     DSC; 2‑pipe may require it if uncompressed joiner is unavailable).
>>>
>>>   - Whether a given pipe‑join configuration is sufficient depends on
>>>     effective bandwidth, which itself changes when DSC is used.
>>>
>>> As a result, the only correct approach is to iterate candidate pipe 
>>> counts.
>>>
>>> So, refactor the logic to start with a single pipe and incrementally 
>>> try
>>> additional pipes only if needed. While DSC overhead is not yet computed
>>> here, this restructuring prepares the code to support that in a 
>>> follow-up
>>> changes.
>>>
>>> Additionally, if a forced joiner configuration is present, we first 
>>> check
>>> whether it satisfies the bandwidth and timing constraints. If it 
>>> does not,
>>> we fall back to evaluating configurations with 1, 2, or 4 pipes joined
>>> and prune or keep the mode accordingly.
>>>
>>> v2:
>>>   - Iterate over number of pipes to be joined instead of joiner
>>>     candidates. (Jani)
>>>   - Document the rationale of iterating over number of joined pipes.
>>>     (Imre)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c | 158 
>>> +++++++++++++++---------
>>>   1 file changed, 103 insertions(+), 55 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 4c3a1b6d0015..599965a6e1a6 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct 
>>> intel_connector *connector)
>>>       return true;
>>>   }
>>>   +static
>>> +bool intel_dp_can_join(struct intel_display *display,
>>> +               int num_joined_pipes)
>>> +{
>>> +    switch (num_joined_pipes) {
>>> +    case 1:
>>> +        return true;
>>> +    case 2:
>>> +        return HAS_BIGJOINER(display) ||
>>> +               HAS_UNCOMPRESSED_JOINER(display);
>>> +    case 4:
>>> +        return HAS_ULTRAJOINER(display);
>>> +    default:
>>> +        return false;
>>> +    }
>>> +}
>>> +
>>>   static enum drm_mode_status
>>>   intel_dp_mode_valid(struct drm_connector *_connector,
>>>               const struct drm_display_mode *mode)
>>> @@ -1445,13 +1462,13 @@ intel_dp_mode_valid(struct drm_connector 
>>> *_connector,
>>>       const struct drm_display_mode *fixed_mode;
>>>       int target_clock = mode->clock;
>>>       int max_rate, mode_rate, max_lanes, max_link_clock;
>>> -    int max_dotclk = display->cdclk.max_dotclk_freq;
>>>       u16 dsc_max_compressed_bpp = 0;
>>>       u8 dsc_slice_count = 0;
>>>       enum drm_mode_status status;
>>>       bool dsc = false;
>>>       int num_joined_pipes;
>>>       int link_bpp_x16;
>>> +    int num_pipes;
>>>         status = intel_cpu_transcoder_mode_valid(display, mode);
>>>       if (status != MODE_OK)
>>> @@ -1488,67 +1505,98 @@ intel_dp_mode_valid(struct drm_connector 
>>> *_connector,
>>>                          target_clock, mode->hdisplay,
>>>                          link_bpp_x16, 0);
>>>   -    num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, 
>>> connector,
>>> -                             mode->hdisplay, target_clock);
>>> -    max_dotclk *= num_joined_pipes;
>>> -
>>> -    if (target_clock > max_dotclk)
>>> -        return MODE_CLOCK_HIGH;
>>> -
>>> -    status = intel_pfit_mode_valid(display, mode, output_format, 
>>> num_joined_pipes);
>>> -    if (status != MODE_OK)
>>> -        return status;
>>> -
>>> -    if (intel_dp_has_dsc(connector)) {
>>> -        int pipe_bpp;
>>> -
>>> -        /*
>>> -         * TBD pass the connector BPC,
>>> -         * for now U8_MAX so that max BPC on that platform would be 
>>> picked
>>> -         */
>>> -        pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
>>> -
>>> -        /*
>>> -         * Output bpp is stored in 6.4 format so right shift by 4 
>>> to get the
>>> -         * integer value since we support only integer values of bpp.
>>> -         */
>>> -        if (intel_dp_is_edp(intel_dp)) {
>>> -            dsc_max_compressed_bpp =
>>> - drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>>> -
>>> -            dsc_slice_count =
>>> -                intel_dp_dsc_get_slice_count(connector,
>>> -                                 target_clock,
>>> -                                 mode->hdisplay,
>>> -                                 num_joined_pipes);
>>> -
>>> -            dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>> -        } else if 
>>> (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>>> -            unsigned long bw_overhead_flags = 0;
>>> -
>>> -            if (!drm_dp_is_uhbr_rate(max_link_clock))
>>> -                bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>>> -
>>> -            dsc = intel_dp_mode_valid_with_dsc(connector,
>>> -                               max_link_clock, max_lanes,
>>> -                               target_clock, mode->hdisplay,
>>> -                               num_joined_pipes,
>>> -                               output_format, pipe_bpp,
>>> -                               bw_overhead_flags);
>>> +    /*
>>> +     * We cannot determine the required pipe‑join count before 
>>> knowing whether
>>> +     * DSC is needed, nor can we determine DSC need without knowing 
>>> the pipe
>>> +     * count.
>>> +     * Because of this dependency cycle, the only correct approach 
>>> is to iterate
>>> +     * over candidate pipe counts and evaluate each combination.
>>> +     */
>>> +    for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
>>> +        int max_dotclk = display->cdclk.max_dotclk_freq;
>>> +
>>> +        status = MODE_CLOCK_HIGH;
>>> +
>>> +        if (num_pipes == 0) {
>>> +            if (!connector->force_joined_pipes)
>>> +                continue;
>>> +            num_joined_pipes = connector->force_joined_pipes;
>>> +        } else {
>>> +            num_joined_pipes = num_pipes;
>>> +        }
>> The current way is to try connector->force_joined_pipes and fail the
>> commit if that doesn't work. Here you'd change that to fall back trying
>> non-forced pipe-joined configs in that case. If that's needed (not sure
>> if that's a good idea, since then the user wouldn't know which case
>> succeeded or failed), it should be a separate change. Here it could be
>> simply an if (forced_joined_pipes && num_pipes != forced_joined_pipes)
>> continue and then use num_pipes instead of num_joined_pipes later in the
>> loop.
>
>
> Hmm Yeah the initial thought process was to try force joiner thing 
> first, if succeed well and good, if not we do our usual thing.
>
> But I see your point. I think we can just fail the commit if forced 
> joiner doesn't work.
>
> This will also help simplify the loop and will allow to have an 
> iterator macro as you have mentioned in the later patch.


For mode_valid phase can there be a corner case where force joiner is 
set to some high value with which all modes somehow fail?

Can hdisplay/htotal or clock  for a mode go below some acceptable value 
if joiner is used?

Regards,

Ankit

>
>
>>
>>> +
>>> +        if (!intel_dp_can_join(display, num_joined_pipes))
>>> +            continue;
>>> +
>>> +        if (mode->hdisplay > num_joined_pipes * 
>>> intel_dp_max_hdisplay_per_pipe(display))
>>> +            continue;
>>> +
>>> +        status = intel_pfit_mode_valid(display, mode, 
>>> output_format, num_joined_pipes);
>>> +        if (status != MODE_OK)
>>> +            continue;
>>> +
>>> +        if (intel_dp_has_dsc(connector)) {
>>> +            int pipe_bpp;
>>> +
>>> +            /*
>>> +             * TBD pass the connector BPC,
>>> +             * for now U8_MAX so that max BPC on that platform 
>>> would be picked
>>> +             */
>>> +            pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, 
>>> U8_MAX);
>>> +
>>> +            /*
>>> +             * Output bpp is stored in 6.4 format so right shift by 
>>> 4 to get the
>>> +             * integer value since we support only integer values 
>>> of bpp.
>>> +             */
>>> +            if (intel_dp_is_edp(intel_dp)) {
>>> +                dsc_max_compressed_bpp =
>>> + drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>>> +
>>> +                dsc_slice_count =
>>> +                    intel_dp_dsc_get_slice_count(connector,
>>> +                                     target_clock,
>>> +                                     mode->hdisplay,
>>> +                                     num_joined_pipes);
>>> +
>>> +                dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>> +            } else if 
>>> (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>>> +                unsigned long bw_overhead_flags = 0;
>>> +
>>> +                if (!drm_dp_is_uhbr_rate(max_link_clock))
>>> +                    bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
>>> +
>>> +                dsc = intel_dp_mode_valid_with_dsc(connector,
>>> +                                   max_link_clock, max_lanes,
>>> +                                   target_clock, mode->hdisplay,
>>> +                                   num_joined_pipes,
>>> +                                   output_format, pipe_bpp,
>>> +                                   bw_overhead_flags);
>>> +            }
>>> +        }
>>> +
>>> +        if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && 
>>> !dsc)
>>> +            continue;
>>> +
>>> +        if (mode_rate > max_rate && !dsc)
>>> +            continue;
>>> +
>>> +        status = intel_mode_valid_max_plane_size(display, mode, 
>>> num_joined_pipes);
>>> +        if (status != MODE_OK)
>>> +            continue;
>>> +
>>> +        max_dotclk *= num_joined_pipes;
>>> +
>>> +        if (target_clock <= max_dotclk) {
>>> +            status = MODE_OK;
>> status stays MODE_OK if target_clock > max_dotclk.
>
> Oh yes.. will fix this.
>
>
>>
>>> +            break;
>>>           }
>>>       }
>>>   -    if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && 
>>> !dsc)
>>> -        return MODE_CLOCK_HIGH;
>>> -
>>> -    status = intel_mode_valid_max_plane_size(display, mode, 
>>> num_joined_pipes);
>>>       if (status != MODE_OK)
>>>           return status;
>>>   -    if (mode_rate > max_rate && !dsc)
>>> -        return MODE_CLOCK_HIGH;
>>> -
>>>       return intel_dp_mode_valid_downstream(connector, mode, 
>>> target_clock);
>>> +
>> Extra w/s.
>
> Will drop this extra line.
>
>
> Thanks & Regards,
>
> Ankit
>
>>>   }
>>>     bool intel_dp_source_supports_tps3(struct intel_display *display)
>>> -- 
>>> 2.45.2
>>>
