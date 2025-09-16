Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3904AB59155
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 10:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C577D10E709;
	Tue, 16 Sep 2025 08:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LtMH8mfk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E571010E705
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 08:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758012822; x=1789548822;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=m8yInbi/z92pS/PZQ/TSlzU/HEo6jVDmU4Dik7fCiTg=;
 b=LtMH8mfkDPTf+Ej8iFbZ/VWmI4xOgg8Un6FxG8usbaXHIyk5ZfnpZgWE
 h/I8G8we95W2N0Fcs8gU/MKK1PmtV6v/BRAPFQNe9DWXQ/CIZrevcJ+N5
 2pbC1Zgkz/GoCWSrzS4TrEcJndOFOW6BAEa+LxswBkSmEMkrlNfSmOTYi
 HYDhaasMR+2nApNq+TKm864KoneZjGUwuwh3+jirX00COVm1yczcAe/+q
 0HAcVxU9KcQ/CbJC3XB0Q4rTo44dW0TPjvvPnwtzaTSZ3gtEPsMrsR5iQ
 VIRvV52LsIk/JllczOQ4uRGZsrP1bUYeUdwAJm979NtGCCN+tj7eR1MOf Q==;
X-CSE-ConnectionGUID: UCWFusuoTLWqAY2Vc6EWdw==
X-CSE-MsgGUID: vnhh7XqbThCpEA2vbmU23g==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59979335"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="59979335"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 01:53:41 -0700
X-CSE-ConnectionGUID: 00fx2bbGSnW72ThM0ZrObA==
X-CSE-MsgGUID: mh2RRLHvRjm43t/N/x2TDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174490868"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 01:53:41 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 01:53:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 01:53:40 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.37) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 01:53:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AukQ0+nMZHEKDqWPHU+7+XnNWGeRRz1S8jJiYKoQ4KPJ8ygI8nfjkvFkzmEbK1Hcry/e1JLcF1bLhZnpnUiaZC0idO9mM4WfBVl+6Za5jUxXZthgXLnqf5R2KRMe4L7Gjgn3+OxGsYdAIv42yjQiPrPwaAF80/evJTkdvnHSD7ZG+CyveQFUK3UkdjVTfGwaRoLCD4/sPnG0lwjd9fWaM9KRiZWLt1mOJQHfdGySYkiki/UH3B0NXzFPmJy7n2mq2zvkkbw4j27USR4Ge6ac5dfgFpH18cpvl/k3eoIh3u1YQmYxNxbFx8K5/xR8o/q14YdIZjqrCocmz3WQokDovA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8yInbi/z92pS/PZQ/TSlzU/HEo6jVDmU4Dik7fCiTg=;
 b=uDoxb9KlMnP4bQS6dkRhMRL/19gAjL2dbTOLGoPxSdpeN067TJXcCus5MH6RboKe99ZzoiY2Rm8G4IErzjGgckhHbUxXzMSQVVDVdr2rLVkMbWjUOEaK0lngLTJyU22YV782EIyE2g+nDSQBMUANKwsAxvlX5Xr/IrqfYGEISAS6pS4Ji9ZfHz6KVdM7ncBtXXOBp/Ts7K7+DcM/x5GVIBLwEd48tUmmCnQAZVzBoe6CUBedpfa1aJAuPYvGIj4rEFWUh0rRs3gbafnrTxeU/QhnBGu+3OiJ3yHje2HSZUovcgvI3zNfotVAf4cXmls+I5UvegPyKMWPPWLu+Y7Q9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM3PR11MB8681.namprd11.prod.outlook.com (2603:10b6:0:49::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9115.23; Tue, 16 Sep 2025 08:53:38 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 08:53:38 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Subject: Re: [PATCH 2/6] drm/i915/wm: move intel_sagv_init() to avoid forward
 declaration
Thread-Topic: [PATCH 2/6] drm/i915/wm: move intel_sagv_init() to avoid forward
 declaration
Thread-Index: AQHcIJOGOqg9qI8iPEewEhh0fJoAorSVjZ8A
Date: Tue, 16 Sep 2025 08:53:38 +0000
Message-ID: <37f6f1e6c7bbf36574b696dcce95c9272f79f10b.camel@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-3-luciano.coelho@intel.com>
In-Reply-To: <20250908073734.1180687-3-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM3PR11MB8681:EE_
x-ms-office365-filtering-correlation-id: f0e8c7d1-d4a9-4ed4-5d3d-08ddf4fe8754
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TWZCVlBsTEZJZnVJZ0pDOHlpcXZBSHZHOGVUUXZzMFJ5ckgzY3I4VmFONWww?=
 =?utf-8?B?QVdzcmhINU16a0pLM1J3T2RzWE16QWpPRUhjd2RhMEFKL1BkdjVlNGNhalFQ?=
 =?utf-8?B?RWNJQW82ZVJoMGMycldpY2xJYk1zNEQ5cmFEQkZvTHJZVC94algrT3BMWjlk?=
 =?utf-8?B?L000UExIZGtJR3BDT0tXVkxCZGhkbGRBTkhvV3FlUXZiT3UzNE85dFZBaHZL?=
 =?utf-8?B?dmJqbG40TGI2UGtZNnJOMlVWV3l4N3hINHdRaUtxdzV1ZlA0OFB5eUhIeUUr?=
 =?utf-8?B?bHRwdlRlTzAwTDJVMWFWdVMydWpzMzNRK2xGTkN6bmRxQitrbUR6ME9qUE01?=
 =?utf-8?B?ZlpzbDduR2h6SzFENWczM3h2aFFqV21WZ0Q4KzJhaWNoQ3l5WHZsL28wZTdr?=
 =?utf-8?B?eUFZajhPSXF6czRRdUdPeFlUbUd1Vnk5SFdQY01qTU41Qnp0cWxvSUpNdWM3?=
 =?utf-8?B?YmE4Y25qRE1NTVprUTNRbERSUXdRWDJucmlidll2NzBWSGxlRmdoZTZiVUla?=
 =?utf-8?B?M1pNRFFXUWlMNUpYN0VIMjI4OWh6NldhZm5YS0xuRGQ2VjlYcmhzNjlVYnJF?=
 =?utf-8?B?ZEloUnkwNTNPajhTSW5FNndVNnkzei90M2c0VXl1czI4SDg0TE5SUXJVOHdD?=
 =?utf-8?B?VjRIUkFKeCtlRlVwams5YkZmZ0h5eVpISFhYOWdVdmJESmFiem54MlZDdzVj?=
 =?utf-8?B?LzdhMXlHak5FNkl3dmsxY1JqcE9TaVhOT0VWYS9nMGxxd245WXVXTzVYTTJM?=
 =?utf-8?B?NkN1MlJYQ2p4OVlTemhXSnZ2U004YmNEWklyNHVUNGVLMlBjeVhvZ084RkJE?=
 =?utf-8?B?Z1RNRWRzYWNSQ2wxajRMditQWlJEZDNVSCtLaXYxYVVnakZjL3hDSDNhQjhp?=
 =?utf-8?B?Q21WSzN1ZkpWRU5BdGJmWWJ4NHh6c1loUEJnMjhQbW9ZU3I5cGdENk12VjF6?=
 =?utf-8?B?YWQzWS9UeDlsQmlHN0ZGVWdPdWUvZ3pCUG9xU1J3UUtRSXoralBGbmRERkd5?=
 =?utf-8?B?ZHM5WjBqamVRUDJrK1hnTkJEcmpuRGx6eDdlNk1KQWg0U29VL1ZxSDhibDI4?=
 =?utf-8?B?QUZOT21kOTdibWxuV2NEY29WdVdMRFo2cmlFcFdxdlZISXE5L2JvdGlybHhP?=
 =?utf-8?B?aUtEUDRoSUVocmY2ZnFsYjFTUU10QWF0ZkwzNGI5aDk3RDNkakZHeVM1Vkg0?=
 =?utf-8?B?bVlFdUEwajNaODNlaWFOYU91MndSYWNNZmRsd1BvLzhzOFBoTHlFNjZWMXpv?=
 =?utf-8?B?dE1nMjdQUDhpN1RIVTdsVnFUY2tuNUVOUjlPdU4rUHFkRUhlTWtqc0VxeTJr?=
 =?utf-8?B?WHBrK0xDM1J3RDFvR2NnTm5MZXMrUEtDelllN2tPRXFUMjhlWlFEUHlvWVFC?=
 =?utf-8?B?TVlIbnArWTBXTjlPVzkwaW1TVGxhNTU4Z29JdU5xOE5relRzSlUybklnTzRt?=
 =?utf-8?B?ZEJoYW95OHl0UWNDemxTZ2w3OW53d0MzcVoyaXR3Nk9xZWJTTDhZSDRqWnRu?=
 =?utf-8?B?Z2lvOFJCVmtTY2R4RExuQytrWUJiRm9wV0tMOGgxa3BBNlB6TnhZQzBQdlZq?=
 =?utf-8?B?Y0dkQ08vWkpDRHRMYWZhV3RsbzBiUnFjbm1HTm1rbkM1a2ExM1hoV2FvQUF0?=
 =?utf-8?B?S2xYV3F0d3FXVXhIQ3BtNllwQjRoZnNKZjFaVTNJYjN4WEp6MXM1TkxHVWNs?=
 =?utf-8?B?NS9ody9GMXFlS2pBdEpDNFZzMmJ0d3ZRK1Yrcjc2UWZLR1kxbUMxNlcveTJz?=
 =?utf-8?B?bFZkWUlJRGliRU8wOStXcTU2MFdyeE82VzJZY1RPNm11bjZqdy8vN2R2dm5w?=
 =?utf-8?B?cmtuWWVYeldFRE5melJFSW1vYU9GckNXaFdmNWFDNEd3N2RjazdWYnZOSXNQ?=
 =?utf-8?B?a1lEODhlOGFrT3cxSVRWV1VWTTlVL21wdzd0dENlVFJYdVBXYWluaHRnRlRE?=
 =?utf-8?B?OGJFRHRKU0xoOGpEOFY3dXNScTVERmNRclNwNTE4TlFPWVUvSS9pVTdVVmg3?=
 =?utf-8?Q?3GCKPt33uk/GfG154IDrsPdSgX/IZw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHp4ZmJTK0VlRG00RlBteWdhRHVZT3hrOCszbUlWc3hYSTlwa21DNVVneE5j?=
 =?utf-8?B?OUFOYmJZRysyUUFZYWp5MVZNMjRsTjdlam4zMXo3L28vN0M1Vm5iN3ZIbFpr?=
 =?utf-8?B?QlJIYnUvQWlOeUdRQm5KWVdSUmdsK0ZRQlN5ODVJeVl6QS9PeUZ2MittaEF0?=
 =?utf-8?B?SnZKeGVYMVpPK3B2b09yQ0RDbXYyRVg1RFpYcFA2b0Y3c3JYcDYzMVgwSWF3?=
 =?utf-8?B?emxBOEt1WVdNZ0xKVndoZm1EczlUamt0MXpoazRUMkg5a0ZNYzE2S0cwbFRk?=
 =?utf-8?B?cWE5M2psQXZBU1pTUEg0MTVCTHdUMDU1MmczM3puVDlpTGNUZXp3WFhuV0cv?=
 =?utf-8?B?YWFPUzBIVysrN2hoaCtjbjZOTlRManR1MlV1bTY0bDIzSys3NnlRbDgrYktF?=
 =?utf-8?B?T2NrNUFtT2IrbmxTSHAybXhEWkZqZnhrb0hMQXRDQmhUbHZGYjZaMURnQ2lK?=
 =?utf-8?B?VVA2a1pNNzhMZ2dOSEFkZC9EWmd0eGIwWlZnbC90YmJpWUlOU2UzR3pJRFdU?=
 =?utf-8?B?Lzc2L21TKzRmbFY5R1VlRnhWNlJ3YWJPaG5SK2M3TWpWeFVUQ0dmZTFPcnVE?=
 =?utf-8?B?N2hJTFBCR2lpQjZESmhvQ0IwZ3VyWWhNWEtPcmFtTXRVNG5EYUVnem5iV29L?=
 =?utf-8?B?eGFFUlFlZm5hQjcyTjl4OGQyWU5BOVhrbm1Cc1hKSjBjbzFCemJVUHM1eEYw?=
 =?utf-8?B?MFBVeVh0cXM4eURiRkZhbGZ5eHEwNEhOdktiNWFkaVZ2V3ArOFdZYTRTZWlX?=
 =?utf-8?B?UEhBVlV3eFV1bGVJR1JaWkZxWVNTc3lOdmtKMEtvWW9xRHREZ0d2MFlueTI3?=
 =?utf-8?B?Ync4WVRiZU51UmRIT2RGTXZQNHZ1YnR5N085SlRSWWZEb1N1aldJemNPdVpp?=
 =?utf-8?B?UVJpMmd6aVF3dStaRlZtZmEzUDhWRnhUL0lkTXc1c3FsMVVzLzRkNHViQjdq?=
 =?utf-8?B?aDdZd2g4d3JWdDMzWncyMFlUNXpkWVBRRzNxL2ZzTmF4VTNQZ2l2VGczdTBx?=
 =?utf-8?B?STgxQWFrdmgvUjhCUzFxMzlmMUtWVFhKRWh3STN2ZktGeFdma0hnTkI3Ujg3?=
 =?utf-8?B?R29kQ0VSL3R5WmVpaS96QmlxTVljRjBYY2Y3Ty95aGJ6aVlGRFZ5dWFrZkFN?=
 =?utf-8?B?bjlQVjFzamdCSTBvMS9jODBjVmNMSXl6bC82c0pBbkFFSklXNzY3Ni81QnJL?=
 =?utf-8?B?eUNJc3pyNFhyMXEvUGNQVGMvVWVIYkJjclBob0VpcHRYSWttSDhiclkxVXNl?=
 =?utf-8?B?TkpKK2RJUFpZVVVKTW4vV3luK3I1dStWcGF0d2JvT0NwdlFBM2tkdXY3Wis3?=
 =?utf-8?B?MFRLNkRVaXNCOUFzMVlEdGZUaE82YUpDeGxteGlCYlFOak1vcWJPY2lUUVlT?=
 =?utf-8?B?VTBaU1ZYZFU2YktRcHY3M1hpaWZFNU0rRktNSkpxN1dvWVUvUTZFelYvWERI?=
 =?utf-8?B?SDBnUTdIdUFxa1ZmY0R0UTM4U3FvZ2srVktPTDBoa2RuZ3ZVZ1l4MVRjQWFm?=
 =?utf-8?B?WWEzN0Z4RjZBR3AvSHVTUkNrYXpyNEEyMzZOZC9DdEVWdEprYlVCSjdwMGZq?=
 =?utf-8?B?SFhSS2lOenBMOGovbzJ2ZC9Tazh0NXIwTE94RlRvVWVYaGZGcVlNYTZ3SThD?=
 =?utf-8?B?bTBySklOenFEcTZwMTdQTml1dHhwVDVFMnQ3SVNVelFTdTUwSE9VSytMUVdQ?=
 =?utf-8?B?WVo0Z3lrNVlzc1JMN3M5MU1hMXBDcTNnaFNOSjByV3V6Mis2YnVjS2oyNlVD?=
 =?utf-8?B?L2E4U0taQWl6VXk3QlB6MlU0VmFIQUR0STJ4aThTWmgrNDk0UlNSc3dXa2V1?=
 =?utf-8?B?QklFVi9qRXN1R050Vk5JeFI2U1FRWE9vV3ptMjJtaEgvZTJ5U3hWUlhmUTdi?=
 =?utf-8?B?ckNZKzB6ZVp5YTlWSnE2aVl3VzgySit1cWxvN2dzWDFnRFppTEZZdlNoNk95?=
 =?utf-8?B?SjNQcXhiZi80MDJBT3dqZG12akVMZmJWaS9BcFJmdmpXWS9rWkpGQzFONkNq?=
 =?utf-8?B?bGIvQVdNLytMa2V0dVJZb0hFL1VsL3dVRXkwbVBNTWV1a1doY3cwOXEvVHIy?=
 =?utf-8?B?RUMzRytYTDRRWjRyNHZSa2h6eVBnNUxhZGU2SHd4ME9qZnRWTWVaSjQ2azFO?=
 =?utf-8?B?d0hwZm9jL0hKdWI1VlhKY1JEOHVDZkxjUStpNC9sd0NoemNhc3hrS2NWQW5w?=
 =?utf-8?Q?+LZdUs1E+3ud3mJmsc5MD1U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B328E5324089234F9709B7DB9D33561F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e8c7d1-d4a9-4ed4-5d3d-08ddf4fe8754
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2025 08:53:38.5165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5ruXgN4eS8t87eu6abYFMeRHA3qcu4Lw60yxIvgVD+MIIWEpumWk1CKWOlOGKenCUm+ch9O41+ZyMxZ/JldwRbo7Zjj5n/kA88evJ9a1z1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8681
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

T24gTW9uLCAyMDI1LTA5LTA4IGF0IDEwOjM1ICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
VGhlcmUncyBubyBuZWVkIHRvIGhhdmUgYSBmb3J3YXJkLWRlY2xhcmF0aW9uIGZvciBza2xfc2Fn
dl9kaXNhYmxlKCksDQo+IHNvIG1vdmUgdGhlIGludGVsX3NhZ3ZfaW5pdCgpIGZ1bmN0aW9uIGJl
bG93IHRoZSBjYWxsZWQgZnVuY3Rpb24gdG8NCj4gcHJldmVudCBpdC4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+IC0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jIHwgNjAgKysrKysr
KysrKy0tLS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgMzEg
ZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlu
b2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRleCBkNzRjYmI0M2FlNmYuLjNiNDA5
NDQyZGIzNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0
ZXJtYXJrLmMNCj4gQEAgLTUzLDggKzUzLDYgQEAgc3RydWN0IGludGVsX2RidWZfc3RhdGUgew0K
PiDCoCNkZWZpbmUgaW50ZWxfYXRvbWljX2dldF9uZXdfZGJ1Zl9zdGF0ZShzdGF0ZSkgXA0KPiDC
oAl0b19pbnRlbF9kYnVmX3N0YXRlKGludGVsX2F0b21pY19nZXRfbmV3X2dsb2JhbF9vYmpfc3Rh
dGUoc3RhdGUsDQo+ICZ0b19pbnRlbF9kaXNwbGF5KHN0YXRlKS0+ZGJ1Zi5vYmopKQ0KPiDCoA0K
PiAtc3RhdGljIHZvaWQgc2tsX3NhZ3ZfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSk7DQo+IC0NCj4gwqAvKiBTdG9yZXMgcGxhbmUgc3BlY2lmaWMgV00gcGFyYW1ldGVycyAq
Lw0KPiDCoHN0cnVjdCBza2xfd21fcGFyYW1zIHsNCj4gwqAJYm9vbCB4X3RpbGVkLCB5X3RpbGVk
Ow0KPiBAQCAtMTMwLDM1ICsxMjgsNiBAQCBpbnRlbF9zYWd2X2Jsb2NrX3RpbWUoc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKgCX0NCj4gwqB9DQo+IMKgDQo+IC1zdGF0aWMgdm9p
ZCBpbnRlbF9zYWd2X2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IC17DQo+
IC0JaWYgKCFIQVNfU0FHVihkaXNwbGF5KSkNCj4gLQkJZGlzcGxheS0+c2Fndi5zdGF0dXMgPSBJ
OTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQ7DQo+IC0NCj4gLQkvKg0KPiAtCSAqIFByb2JlIHRvIHNl
ZSBpZiB3ZSBoYXZlIHdvcmtpbmcgU0FHViBjb250cm9sLg0KPiAtCSAqIEZvciBpY2wrIHRoaXMg
d2FzIGFscmVhZHkgZGV0ZXJtaW5lZCBieSBpbnRlbF9id19pbml0X2h3KCkuDQo+IC0JICovDQo+
IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTEpDQo+IC0JCXNrbF9zYWd2X2Rpc2FibGUo
ZGlzcGxheSk7DQo+IC0NCj4gLQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIGRpc3BsYXktPnNh
Z3Yuc3RhdHVzID09IEk5MTVfU0FHVl9VTktOT1dOKTsNCj4gLQ0KPiAtCWRpc3BsYXktPnNhZ3Yu
YmxvY2tfdGltZV91cyA9IGludGVsX3NhZ3ZfYmxvY2tfdGltZShkaXNwbGF5KTsNCj4gLQ0KPiAt
CWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlNBR1Ygc3VwcG9ydGVkOiAlcywgb3JpZ2luYWwg
U0FHViBibG9jayB0aW1lOiAldSB1c1xuIiwNCj4gLQkJwqDCoMKgIHN0cl95ZXNfbm8oaW50ZWxf
aGFzX3NhZ3YoZGlzcGxheSkpLCBkaXNwbGF5LT5zYWd2LmJsb2NrX3RpbWVfdXMpOw0KPiAtDQo+
IC0JLyogYXZvaWQgb3ZlcmZsb3cgd2hlbiBhZGRpbmcgd2l0aCB3bTAgbGF0ZW5jeS9ldGMuICov
DQo+IC0JaWYgKGRybV9XQVJOKGRpc3BsYXktPmRybSwgZGlzcGxheS0+c2Fndi5ibG9ja190aW1l
X3VzID4gVTE2X01BWCwNCj4gLQkJwqDCoMKgwqAgIkV4Y2Vzc2l2ZSBTQUdWIGJsb2NrIHRpbWUg
JXUsIGlnbm9yaW5nXG4iLA0KPiAtCQnCoMKgwqDCoCBkaXNwbGF5LT5zYWd2LmJsb2NrX3RpbWVf
dXMpKQ0KPiAtCQlkaXNwbGF5LT5zYWd2LmJsb2NrX3RpbWVfdXMgPSAwOw0KPiAtDQo+IC0JaWYg
KCFpbnRlbF9oYXNfc2FndihkaXNwbGF5KSkNCj4gLQkJZGlzcGxheS0+c2Fndi5ibG9ja190aW1l
X3VzID0gMDsNCj4gLX0NCj4gLQ0KPiDCoC8qDQo+IMKgICogU0FHViBkeW5hbWljYWxseSBhZGp1
c3RzIHRoZSBzeXN0ZW0gYWdlbnQgdm9sdGFnZSBhbmQgY2xvY2sgZnJlcXVlbmNpZXMNCj4gwqAg
KiBkZXBlbmRpbmcgb24gcG93ZXIgYW5kIHBlcmZvcm1hbmNlIHJlcXVpcmVtZW50cy4gVGhlIGRp
c3BsYXkgZW5naW5lIGFjY2Vzcw0KPiBAQCAtMjMzLDYgKzIwMiwzNSBAQCBzdGF0aWMgdm9pZCBz
a2xfc2Fndl9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiDCoAlkaXNw
bGF5LT5zYWd2LnN0YXR1cyA9IEk5MTVfU0FHVl9ESVNBQkxFRDsNCj4gwqB9DQo+IMKgDQo+ICtz
dGF0aWMgdm9pZCBpbnRlbF9zYWd2X2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkp
DQo+ICt7DQo+ICsJaWYgKCFIQVNfU0FHVihkaXNwbGF5KSkNCj4gKwkJZGlzcGxheS0+c2Fndi5z
dGF0dXMgPSBJOTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQ7DQo+ICsNCj4gKwkvKg0KPiArCSAqIFBy
b2JlIHRvIHNlZSBpZiB3ZSBoYXZlIHdvcmtpbmcgU0FHViBjb250cm9sLg0KPiArCSAqIEZvciBp
Y2wrIHRoaXMgd2FzIGFscmVhZHkgZGV0ZXJtaW5lZCBieSBpbnRlbF9id19pbml0X2h3KCkuDQo+
ICsJICovDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMTEpDQo+ICsJCXNrbF9zYWd2
X2Rpc2FibGUoZGlzcGxheSk7DQo+ICsNCj4gKwlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIGRp
c3BsYXktPnNhZ3Yuc3RhdHVzID09IEk5MTVfU0FHVl9VTktOT1dOKTsNCj4gKw0KPiArCWRpc3Bs
YXktPnNhZ3YuYmxvY2tfdGltZV91cyA9IGludGVsX3NhZ3ZfYmxvY2tfdGltZShkaXNwbGF5KTsN
Cj4gKw0KPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlNBR1Ygc3VwcG9ydGVkOiAlcywg
b3JpZ2luYWwgU0FHViBibG9jayB0aW1lOiAldSB1c1xuIiwNCj4gKwkJwqDCoMKgIHN0cl95ZXNf
bm8oaW50ZWxfaGFzX3NhZ3YoZGlzcGxheSkpLCBkaXNwbGF5LT5zYWd2LmJsb2NrX3RpbWVfdXMp
Ow0KPiArDQo+ICsJLyogYXZvaWQgb3ZlcmZsb3cgd2hlbiBhZGRpbmcgd2l0aCB3bTAgbGF0ZW5j
eS9ldGMuICovDQo+ICsJaWYgKGRybV9XQVJOKGRpc3BsYXktPmRybSwgZGlzcGxheS0+c2Fndi5i
bG9ja190aW1lX3VzID4gVTE2X01BWCwNCj4gKwkJwqDCoMKgwqAgIkV4Y2Vzc2l2ZSBTQUdWIGJs
b2NrIHRpbWUgJXUsIGlnbm9yaW5nXG4iLA0KPiArCQnCoMKgwqDCoCBkaXNwbGF5LT5zYWd2LmJs
b2NrX3RpbWVfdXMpKQ0KPiArCQlkaXNwbGF5LT5zYWd2LmJsb2NrX3RpbWVfdXMgPSAwOw0KPiAr
DQo+ICsJaWYgKCFpbnRlbF9oYXNfc2FndihkaXNwbGF5KSkNCj4gKwkJZGlzcGxheS0+c2Fndi5i
bG9ja190aW1lX3VzID0gMDsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyB2b2lkIHNrbF9zYWd2X3By
ZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IMKgew0K
PiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3Rh
dGUpOw0KDQo=
