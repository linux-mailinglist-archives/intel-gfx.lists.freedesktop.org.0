Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHF8EI8K+2mbVQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 11:31:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F404D8A45
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 11:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997F510E506;
	Wed,  6 May 2026 09:31:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KwcejL3Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE6210E506;
 Wed,  6 May 2026 09:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778059916; x=1809595916;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HZq+GPkg/mL4LmGttUWbDRNINmEbAjWpiG7fhswsgIM=;
 b=KwcejL3YiAGy75wijQS2QHLpyZ/6kZtlHW7rT0H22atYnip77C/OOl9c
 yjgE95rSAMpYADYnbGcW1GWryiSeCwrAcjm91nmLHvbRZv9xInI3lj2vT
 FYuldqmohpjzECvM7Qi/Uh0muFa+wMZxjWAZ98ehLHmH9ZbXKqambUwhg
 fMwJClzrL4C3IKdaD6Lt5FXbM9seurTjHrsaF5lO+gHdyPWkFcpw2XPMv
 sm2egM4YZBeQegzfP2u4JuEYgMQwD08dskNvIUnqtmpB5kR4o0XxQ8vZm
 NnCLnU5QnrxeHkm3n8GTSARoSpyh41tpi9Ql+ZHng/ABOPPi64gzV2FNw Q==;
X-CSE-ConnectionGUID: ScGzyawQSg+Wn22k/TeeuQ==
X-CSE-MsgGUID: tSlSE453RBGZ3ActRTe3BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="78007575"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="78007575"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 02:31:55 -0700
X-CSE-ConnectionGUID: HMcyERjCSgmugYoA9X8dxQ==
X-CSE-MsgGUID: QUMEMNEUR8OiZacq2R4I2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="229686255"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 02:31:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 02:31:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 02:31:55 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 02:31:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h1Z4Dbq251NvcEbklX1nN3GPR6Fpd3Gheek+e2hFe+Jlvdu5uKpVzjS7wyO9Sslth6+4OIeBKOhnAZahmtQ28jkMXsAjL4YOgj8DdrMLUxswGsfjJZH/mTbEGHToTmQVVFGkQjCSoTUk9dAEpqnA51JbsUkm49BPQkwI2/Ftx2SHf9CAtkOsQeNqy48t3TU5mDupvs2pRV0o61l3er2ts1fK+d7OeD87BAUZa4jBPfcdsWx6eDZmJLsomJIl77/gTrBNUI+HNkozXHtnqS3lBt+h9aF3WO/OnKk6RFaaGLlQPjDHOzcC2VV3CCMgYMql3hr8uLi7ZD/652FDex1qyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QA9+TOGrDp0AeOVe04gkxyrt4AC4vSa/tF2LNxgsebI=;
 b=kQikjJ/Qp1nNavp4/WVHmTXAszkjFyVuwzZI5XEqQGaHx2fe9GKiYuX8z8ppwxxgW/0oIlegVtBWdVgwrlRue/f5bGyKK/Os/RF4WgfKVYYzCH3j71JS7uUk+g4fIjCKQhCGVuu2+LyxeC/gDqgLhKJeSwHwLFl63vWq8ntDmB9s1Q3PLE/0RFFP4HISKauTh4Z0aIU7Ie5BClK1V99URcLunmy0X1IOPWw/jEggdhmoX6uUm3d5jyG9zdBqPmuENtvhHBn2iQA81xiJ3Pad69JzRoVssLokfEcKBZrgFE7XdZDUVZlDtYIfaXqB8icWFWpPLCy6Nxnmjk2jSd9QSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH0PR11MB5265.namprd11.prod.outlook.com (2603:10b6:610:e0::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 09:31:52 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 09:31:52 +0000
Message-ID: <7881f8e6-1c7b-4d2d-bfd4-82ecc6f0da81@intel.com>
Date: Wed, 6 May 2026 15:01:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Fix color pipeline state copy for
 joiner secondary planes
To: Vidya Srinivas <vidya.srinivas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>
References: <20260506091638.421030-1-vidya.srinivas@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260506091638.421030-1-vidya.srinivas@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0172.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a9::12) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CH0PR11MB5265:EE_
X-MS-Office365-Filtering-Correlation-Id: 053f9838-40e9-46dd-96a4-08deab524e5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: OAdNu88Kyd/C0CwgQ/jgdCAJV3J2Cn6x0Me3OcEnPWw4SBLtXHeTYEZntvbKMObFLT5562lqL4EDf7flxnzFNEzBJ5P6OlMxSqeUQSZb5oi7gjv0Nll+XfXbMjPaPT6ob7sQroXNLcvXEQc9BNLfbn3ELr+XjMYeZm4uNtGZPQfjk5PVsaybXFIa/nUHL1ObZeo3CdQx0b25uXf/qg9S3JqodYzN6SYaiYbeVP1I/0tO0cCXnSBdMSNn/BNzRsGGEFWuWhkJE1AdhqWdQPj9wT48UNHWQpDO8315yYFJkdeOoNdYsBAPgQeD2GcASZwg/C+LOHuTkWCNpdh39hCp2zfdA0yVR4jGh/WT7Gm2z6VM9ZvYaXQZqS1NrnhsfHUchFz4E0n0XWo/7VTnFMi0aUTQHic98Hv+nT6sSz9rLVYBiCMozbHRqCLDbIxGEGQtjbrSQdrUyY8V59GEQ2Xxq82NGGBMCBPLIe9awEeQ/XOOpoVCLlHCiRj6mj32nBEidGGDl8GXTV+cuXphRau1OO0EIXRPL1eL3t4prpIujkE+/evOWLzYejElXBJw1W2dsc1k0J3nFVc2MIqZ2CdL40LhYTwNbMpYPI/W/Fmyo6CPo1ovIlUlfoSvBydIkOIrLlnAlgR/6w1YjRXZHj0937s9MIK8CnVAvqfIfA4eFv9x1vn8u/JnIFnyTDsO+gbVoMYU5USk6CG78YIr+uo5SQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVZNN3NTbzJJaXNQcHk0cUNya2Q0b08xdVVocjZ2WkZhRFJJb043VUovb09M?=
 =?utf-8?B?R1l4bFhsRnJnNXJjN1g4Z1R5RERGUWZ3MjJnck8yai9yZzdkcFRCV1dNNEZ5?=
 =?utf-8?B?aTlra2QxZ282T1JIUHk1anB1ZnFYNVRFZXNRbmlXSnBqS3VPTzFBV3A1cjhE?=
 =?utf-8?B?RzhiS21LN1FLTHVUWVFxV04xTkU0NldVYkVLMHUvOWNPVTNPODB1S3pHWXBv?=
 =?utf-8?B?bmhOM0hkcHpMYXpGQmdOZmhJTFBsMVV5MVc0a3Z4UDRLOUhRUEJkMFhyalgx?=
 =?utf-8?B?RnJqbXk2M1VTei9aa1dhR2FqTTJhWGpUNUNmY1lLQm1LY0dyQnlLd090cUww?=
 =?utf-8?B?eVlpS0wwS2V4R3REaElUYzJRWWpzZ015Tko0K09yMC90NDMrMGh6MVg0WTBD?=
 =?utf-8?B?d0ttS3BqeXM1aGJoalhmMzN4dlVYT0trbG10ZU5ReWpJSTVCSUpHUGlmYUtk?=
 =?utf-8?B?SkVocGhiVy9DaG9oL3AwZTBVUHBsUUlpQzhITmFRWkVlbEExdGYvbyt0My9W?=
 =?utf-8?B?UWsyMzFzK1dqT0ZLUWFDaGxKaGlibERacFVSUXFON2pPQkRReHFGWklFNlpN?=
 =?utf-8?B?ajJPUFJ0ZWZOU29aTFhYdERFYnEwbFJUV08wSGphTTViYUU2UXEycEdnZFpC?=
 =?utf-8?B?NmN4Ynd1a3lDcUozOUxRN1hsNWMyVURTUGZaNTF2VzNtWWN6d28rV05zOFlH?=
 =?utf-8?B?QVpZTURsZVZOWVRNSmZydnRtKzJOYU1mRUZHR0pjWXg0dHhOcm9abGJkL2ZQ?=
 =?utf-8?B?SmpvcmI4V2NGck5DWk43MVdtU2NkODJpc2ZJY2ZFbzl3bzlNQ2l1Z2VHWDV0?=
 =?utf-8?B?N01uMHFhUEdrMjRNb1lPd0VhVFFmdWlYOW1KY00yWWthbmJxaXlRZkpUZjlS?=
 =?utf-8?B?RDV4ZE5weU9Nc09JWStlY1FyK0tLNmQ2ZitaazNUMThLUzY0WFhUVmRSY3Rr?=
 =?utf-8?B?bGRpT01xQXB1OU93QzJvV2VMMFpvaFhNeWVnQU9sS2gySGx6S1AxaG1YWGsv?=
 =?utf-8?B?bzh5NEdmWmpxWHg4QjFiSzNjcXpKb0Z6eTVQelh2Y0h4VlhCdmtJUEZUM2Rk?=
 =?utf-8?B?ZytCbTkycktvTVBycXp5L3hIZEgvSWpjTFB3aUlJOFd1NFk0N0JDUTJKb01N?=
 =?utf-8?B?YWo2clB2eEdwQjhqU0pXR2VVQnVxOVB5VGlnNnV4WlVSU216bEpVMjhYNEN2?=
 =?utf-8?B?NHZZTWs3b0dUL1NGQjdJSjdQeDQ0UENUKzRxaGRnOHVZQ3hyMU9sWkhSSTJt?=
 =?utf-8?B?T2ltZVozTktOVVQ4TTlyM2Y0MWtoTmdaTlp5YlJjcUQzcDVCYWdqOGV2MmNx?=
 =?utf-8?B?c1JtelJWUmMrZnJObHlqY2lNQ2RVNk5NcEFCZXNCTFN4NUxUMzVlNjdDSHV4?=
 =?utf-8?B?TnljaVg2UFJZNDluOE1OcFNHQ0daWG9OTDJVdkk2YnJLWnlCaWdoSmxxTmlB?=
 =?utf-8?B?YjB6bDBIR1FPTTJWcGgwQWo0UkFKMkNQamtkRUF0djhlZW40WkxvOWlSU2JO?=
 =?utf-8?B?VWJFRkM0Y1luYlBMZVhoS0lOcXBqMTRRZDVWVDlCaDU3ZWZ4Q2dHUHFYNzNp?=
 =?utf-8?B?YjVldi9JVjNYa0VHb3VINE9hdjZTRGJvallSV2JVMHhqajlzazk1emxKYmNh?=
 =?utf-8?B?Wkt1cEZOUFdxZ0dWNkNWL2taaktSS0VITFhaczBXT2c3K1dlWTlMZDJMSSs5?=
 =?utf-8?B?RlNlQmJ0bUZ6d2JaODJKMWZJM3ZmcktmTU1vZGdwdWNuWHkzY0pzZ2llbG1J?=
 =?utf-8?B?dHhyVndiOElUVERVZ3BoeXFMQ2tWb0plOEZoRVdNYmV3UWovN2svaStTdFRr?=
 =?utf-8?B?dUxzWUtneVNsaUJXcXFmOEpCU3ZsL0U4TFZPejVBakVkeHBacUk4SjV1OFl4?=
 =?utf-8?B?aU9sK05naTl4NlNBQndSU3ZteHNWNUJzY3NCTXBWVEhhVm93VDRaL0hVdENq?=
 =?utf-8?B?bzBwQnM5ZUd4em9tNllsV3YrYjdGUm0vaytXODRXTEJORUtGTTkrMmFSdEg2?=
 =?utf-8?B?TlJSRGF0MHh5UFBUUTlYbXZMRU5Vdy80Wk1sN3ZtMWJyWGV6eW9HM3FmS3Bl?=
 =?utf-8?B?Y1p3ZzNpOHpQZnNsRUZpNTZEL25TbFdSNS8vZTNhYjR2RzAyMGRoYUpvMExV?=
 =?utf-8?B?MjZpTTFJb29OYit2L05GbzUwcjd3THJhUFZyMGE2S3JTaG1iRU5BdG50NG9F?=
 =?utf-8?B?QmtRQU96NlNkMzI4cjI3SVBEclI5WXJVbTJudTlkTkt4ZjRWRTFiTHk1SXVB?=
 =?utf-8?B?NE5aRkN2YzM3c1NxN1M4cFdMYTVEOXhzMmFFVHI2c3hVRVZNZUMwWUh1Y2Vm?=
 =?utf-8?B?WFExY1pGMDAvNTZFUjIxQWlyRmEwL2E2TG9nVVZGUlNJTzZTYkJyd3ppNDBw?=
 =?utf-8?Q?i6B8q/3QVYZzfGeC9lPE2XGs010Q8TesMih/K?=
X-Exchange-RoutingPolicyChecked: vtg+bFy4BHVEUoN8QCAmN+r/UPzSrBM2jgSuce7BMIIOM5kKSKD/rycosqIzCzAF/xpIaLc0Zc53L84VEMEnic/b20CoZifAOO7PYUPi4VU1TVL8c4Z0wSNWf+wmWUIigRKz7ldXa5qeneZPry4IMkzNZ49CTiDCGSTLnZQkqBRw5+3E6SyFV1omA6Aoph+60JHdTgDs+XTZetCFm4e4aR4NVof3Qg/3gu6OYkQnffYW1w71nebsIYnpBv8aBIRkYR84yaEo4m6uhYkh72ETVv6nXTQpBmuW6gmpZarJpA469jvM/ZVaXTGCOTrIRqc4gR07CWBTuEk9wipfaCQ9xg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 053f9838-40e9-46dd-96a4-08deab524e5d
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 09:31:52.7335 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2vEnnEIOQ3zZ5cqYfWphEbkct0aRwgcqesrxN4jbZsmNKhepRMMZSDe5R0+51GUycnNby9R51EL9iCUr+kId+HEyzfT1g8g1nFaDL6RLswY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5265
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
X-Rspamd-Queue-Id: 97F404D8A45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

There is already a patch for this. Will appreciate some review.

https://lore.kernel.org/intel-gfx/20260424054129.2148049-2-chaitanya.kumar.borah@intel.com/

==
Chaitanya

On 5/6/2026 2:46 PM, Vidya Srinivas wrote:
> intel_plane_color_copy_uapi_to_hw_state() is meant to copy color
> pipeline state from the source plane (from_plane_state) to the
> destination plane (plane_state). However, it was incorrectly iterating
> the color_pipeline from the destination plane_state instead of the
> source from_plane_state.
> 
> In non-joiner configurations this doesn't matter since both point to
> the same plane. But in bigjoiner mode, the secondary pipe's plane has
> no color_pipeline set from userspace (only the primary pipe's plane is
> visible to userspace). This causes the while loop to never execute,
> leaving the secondary plane's hw.ctm, hw.degamma_lut, and hw.gamma_lut
> as NULL.
> 
> As a result, xelpd_load_plane_csc_matrix() skips programming the plane
> CSC on the secondary joiner pipe (early return due to NULL blob),
> causing a visible color split between the left and right halves of the
> display when HDR color pipelines are active.
> 
> Fix this by reading color_pipeline from from_plane_state (the source/
> primary plane) so that the HDR CTM and LUT blobs are properly copied to
> the secondary joiner plane's hw state.
> 
> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_plane.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index c181a7d063ec..e403fe4a8a20 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -396,7 +396,7 @@ intel_plane_color_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
>   	bool changed = false;
>   	int i = 0;
>   
> -	iter_colorop = plane_state->uapi.color_pipeline;
> +	iter_colorop = from_plane_state->uapi.color_pipeline;
>   
>   	while (iter_colorop) {
>   		for_each_new_colorop_in_state(state, colorop, new_colorop_state, i) {

