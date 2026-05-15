Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CE8CH0EIB2qcqwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 13:49:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D928554EC41
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2026 13:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6941710E61D;
	Fri, 15 May 2026 11:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fRbxi2OS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 988F610E615;
 Fri, 15 May 2026 11:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778845757; x=1810381757;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ulffGQlvE/jJ5qbVKU/wfgtn2rn6kF8Huap9H+z/5P0=;
 b=fRbxi2OSgTKhBnTGbvqqM4jGoKCVdJ40BSfaIlKBzw2yyiCDKVQtqxk4
 wV8/EcxxLDSS432cFt94kv9VO6hBM3U/69uoJaFtuNji3zOSbt/ZVhaPs
 FoYQReyfteD4bLUrGegnp5czd7VjOjOsg3Cx1/Piks20kzIWtPp/MCh7X
 MVIxCVk6LX3zDsfE1Nfsl7s1kEqUhCD7QZMMl+inHkSlKgHZ+kvPly9sf
 wjUZCNBK+6rRSfpI8VkqvSAi5mGO7yAUQyqvpCfnuH027VUtViOfijqZX
 djXwDXZROkYe7+qgO1/AcEsytSLU8bSpIa5Bx6Zi/jiNK487UGr7DMRKd w==;
X-CSE-ConnectionGUID: y/Iv5czAS2Sshg5cyqBiBg==
X-CSE-MsgGUID: TjPbO1P3SCmcy4nEhDBRGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="83670818"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="83670818"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 04:49:17 -0700
X-CSE-ConnectionGUID: g4j3N98zSmKwLjZFoFCXpQ==
X-CSE-MsgGUID: DT6CdujCTLWuN8HPX/XwPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="243645589"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 04:49:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 04:49:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 04:49:15 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 04:49:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KR1qNYLTr6K4yBF6ZMpWJwHigrVsj0wN+sVQoKHZEGPPCxOurJejzKwPUj5l999+a0KA5r/ZKpVdjtzVCyTlELpwAsDLIv7V83MpDjA5a/L8PzIQL2byKpcusyOJQv6mPTngERnRq9n7SB5VQTgN+KLaa9mEK/SipBwa6IsuP2FqQ3lnocKW7GamEP02DSTqDWItDAmHMLpOPXLn1yFuGdmpSpMXQvyqTmUf1Hzs/s2tGCLWvv9jXgVLqeSWyHzqGwMn6fun52Znw4AqZgLrF//BX18V4Y985TmLGCy+Y9ReZVywEYraIMMA51ikbgawkPJSPSMrytQ4GXSGnyQhPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uo+SzLZE+3NBkOUQMFdDhZXCNXY0STIgRD9LlmR9X7w=;
 b=QPgUfVEFZv23ZRFRME1nsfoJIq4iWxY2/uVp7b2OjZjw29fzDmKhYXIdcU+86RDBjWDSanvjl0JIHw8IBP7Ux6D2Q3JufataJG5noqwpDGIbr+9NNKn1zgi2ROueQU47XJrhb8LyL+ztnrAwU9yx7u91z6IPM4XMx9b6yyqcoS8/EDccfa7JuxoyBKoelJGSR6AQW2DOpTiOb+z1yvW61CRUsHs0NgwI+aIahD45N80MgMZ5U6br2Vezg5Fl+zZbqQEv7YxXd+yZKzBhJ7vcuSHaaCllXI5qfBKrkp4kmToUJqhJmAmjcmg5Y8huyaTlZ+k2nNT7f46PHwibfSENDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA3PR11MB9133.namprd11.prod.outlook.com (2603:10b6:208:572::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 15 May
 2026 11:49:11 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9913.012; Fri, 15 May 2026
 11:49:10 +0000
Date: Fri, 15 May 2026 07:49:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 0/4] drm/i915/dp: Adaptive Sync SDP readback fixes
Message-ID: <agcIMoavavS4yDja@intel.com>
References: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
 <c914295e-fa39-41ca-8159-c134301fd234@intel.com>
 <b66d66d4ff30865acbcb090cc28892f8b5bdef8e@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b66d66d4ff30865acbcb090cc28892f8b5bdef8e@intel.com>
X-ClientProxiedBy: SJ0PR05CA0089.namprd05.prod.outlook.com
 (2603:10b6:a03:332::34) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA3PR11MB9133:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d3e92ef-2086-4010-3739-08deb277fa5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|4143699003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: 9SZc4UcgmodoSPZ2s10lmLx2oc3cXKCDqHDsbhOUKKzwA/Bn0c2i88zSyunJ8++5KieXCVTJNetFpcdEqDGYxX2gh2woAojVySUUaMBX67g5FEEGkeXyzcGlYe0BgEqLLGWUe9JVqk1zvGtDdwiw0V029/72lM6IBC4OVZfW5q+8rpC6jJDOsP/n+3EOYuDV7b5PbYibWIg5REQXwCzt89FlYxRMW+A3fBntiDXl21sx+q2W+aIrXWayAejsNkP+uopg4yAtk02JoSnkDp5Tonty6+YKvhdoqfnJ8BOzNSb5z54aGgnDWGHcwd7huiKbkI+PvogDZUNtwjn4sg8BtWnSLBJaw2VdvpiBDyQir8L0qFqXLGv8nXZf4YQLE8UefmBSsrqz1D/U/Szd1l0sTlYJiYgp4uIB0e4EX9om3DDalt1aCRxIqW6l1zT9eU/9ptxCt/tppl+jST5yTfaRnIVcTaRtuhbKdbHGtgpOiYzxnh6UluXzJGyNLokbVTIkM07LAAkhjYiETDT9bWf39jJfOBh8TnNBAVdEzSDkpxDUOV+KZy4fY9nAg8rIMeRpeWlmqCPtwc+OXqruRhkusCBfCokunOPePCzh1FB35P6V3lTCcG8apy3EmhV/cH4SBOeKl5wWk7dZA0RQmwdjuw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(4143699003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGR3d2VSNzEzejVoeFdtK2ZjTkJBOEVveG12cytqbktTY1JKT1hjN1JiSDN4?=
 =?utf-8?B?L2NpV1Q1cEFsclNlWWpaN1pEbXh4c29zUVJoa2p2enlOOFkxV245d0Z1SW4w?=
 =?utf-8?B?UitPSXBWaTlsZzhlc2ZrcWJxbTFBejJuK2JOSktET1hjTGJlTmFTN1cyZCtu?=
 =?utf-8?B?clZWUC9BU3Urd1cxd3UraWFqK1Q1eU9QVGpiSXVGcFVzT0xjS2c3QXZ0MHdo?=
 =?utf-8?B?bURHT051MGU2TmFySUdRTDBPR1lwVXcyc2lFUTR1TlpiU0tQa1ZyYlNGMkNp?=
 =?utf-8?B?Qlp4SE1CR3pwVGNSZFNwRmhab1Aybm9zSHBrL3UyQ0lPMTNGaWVuMEFQNU80?=
 =?utf-8?B?THR3SnpvaXZIZDlhSU1Ncm9MNVdNOUVqQUJVR0xqZG5SNUJoZ0JsaHM4SkJY?=
 =?utf-8?B?T3J2MFVydVJkRGVPS252d2pxVDJkelR4SSs5bVpPazcyVEo5RHFXTHFNdTVV?=
 =?utf-8?B?WDFLeEtxcXNLZEIrdWcwQW5WR0RqWUduM0hCQ01JOWtia0RYMU14T0QzSlIx?=
 =?utf-8?B?NnI3TkV3d1B3YTlqZEpkblFUbXovYVVDWXhRNnJZbW41S0F4MEVoTE1qQWhy?=
 =?utf-8?B?NXR3czI0MnNyamdEcXl0Q1ZMeURzeDdWYk94REVWN2VMMzBtSWhlS0ZFYUwv?=
 =?utf-8?B?dVZ0U2UwazZkQkFJenlIdDVBSVFOSGpSalE5SjVrMlVnYlVUK1plWjRseVpq?=
 =?utf-8?B?VStsSEFOLzhvaTcwaDQwQ01DMWJ0WXNsNk0yWDFraDdwMFBaRlc2cjBNa2hI?=
 =?utf-8?B?YXB3d2JnRzdGMzF0eU1YbDhmTmZVSmdtRFIvNzlDcUIvNzJybGFHRlpnQ1oy?=
 =?utf-8?B?bGxHQ0J6eHhzMDRSa1YvMVo2ZktPY2ZMNVZicGtzdWlzeER6YmFoOWFJTGda?=
 =?utf-8?B?bEhWQzBjZHIrZGxhdWJ6VDRzcjBnamV5b3hzRzR2cHFVRFloM2xwNnhZU0E1?=
 =?utf-8?B?anJpTXJDMmU2SklNUnRYTnJyMVhCZnBCMEIxSkFuWG90T3c5WEJXSjIrdVgx?=
 =?utf-8?B?eHdjTVVMclNjMXlncmsvM1NRZUF1djhVaW91QnhKZG1WQTdQVFNvV252QTR4?=
 =?utf-8?B?UUVIQmhkS2tReVUyTCtzTzh5eG1nVWwxMmE2Sm51NlVXNG5xKzByU1N3WjlU?=
 =?utf-8?B?MldiL1hnOEJhdStMMWJlSEJBY0I1K1dKUkF6ZGEyQWFwK0FBRDJMRnhPSVV2?=
 =?utf-8?B?YkdEQmNVcGFRSERwaXlwY2VHSFpETHhMWGlrNloyVXBsY051OWxDUlc3cTN4?=
 =?utf-8?B?VmdyWnlOWHJOaGVzcUN6QVNVYmxKWWVUTTlYVFJKOU5zcUM3ZXJGL1JSMVlW?=
 =?utf-8?B?UFdkWEtGU0lCQjdCSVZmV09FMjNkaS92OGZ3QVZWVXAzMHZMN0kxbmZlMEQw?=
 =?utf-8?B?ZG52cGxXdFNUN0xqcXFGWG5Jalg4UFNSdDJEY3h0VTdUSzFQZmsyM3RXeG5u?=
 =?utf-8?B?amwvMTh2eVowN0dBdmU3YjVnRXdoU0lZazBWSmp6a01UUkNGNVBncWpqaHV2?=
 =?utf-8?B?cVlTRW04V0VLMHZ1M1NJcmhSZVltWE8yclluQlZxdDFITEdEaTRIa2lMTmJr?=
 =?utf-8?B?VWo0cjN5NVgxWjdoYUF2aDEvTmxWMFh5T0lJNldsZjB5SnhpSzFyQUNTUUt2?=
 =?utf-8?B?TG1HZ0hRb1ZoSTh1ajlxb1krdExLOWk0N29Ia1gxSzY1ekZ3MG1ZeW1ERlh6?=
 =?utf-8?B?RW9yK1BRMlJiWWx6Q2JpVis1U0pIakt1Qi9ydnd6U3ZQcmlET0lidXRra2hT?=
 =?utf-8?B?VFdkWHlIdVN1TEx2VU5DemYxeW5xQzQ2VkMxdy96N1JMbHpNVWZTWXlFTURu?=
 =?utf-8?B?SzNTME5EZUM4SjBLak9Bak0vMWNEbzd4aG5xTXV3a21OelZid3krV1JydDBN?=
 =?utf-8?B?RDBhZzZNWi9STEdJbEZ4MjlpUVpkenVMZ3hzOFlUTHBGanQwMzcyQTBwMEIv?=
 =?utf-8?B?aVJaTjQ5cXNjNVJQd3pseUV2TnJ1bTc4Wml5T3JVcG5RREpXRmlZMzdvdjJW?=
 =?utf-8?B?M2N3RVRRcGFrUDlUM256d1hDajVQUkdoWS9kWjhRTjhHVzVKOGxrbVdSRjlo?=
 =?utf-8?B?ZzJJVzl3S2JGVUJMVGJaQ250T2E5WGpKQVNscGFiaFB2dTZRclJITzhCRDFw?=
 =?utf-8?B?ZVhpVWtBRjI0cW1vbnVWQUxZeldaeFB2M3NWTGNqWUJBSitMQ0NlT3VqZDRI?=
 =?utf-8?B?VnhCcnIyS1ZnUHk2ZkNVSnpYd3d6VTZrVEpGZXorRmlNQWJVWG5lc0UzNSts?=
 =?utf-8?B?Q3F3WjB4T05KNjB3aG11TmU4aVdiN29oL0lJT1RWaktSeFd6NUlEL05Sb1p6?=
 =?utf-8?B?MCthYUN5TGtPQjZYSGNoZVRveWlXYmpVc1lKT0draUg1a2RZRjFPQT09?=
X-Exchange-RoutingPolicyChecked: dptHpZX6JIVP89HfC/6gGVdgscK3lk8mCkqqax3IPI8rSYbqlhAf0dI3A69hgOJtMDelJ4BG2ecpkDIu7FqdHI926USOSO9kAhMm4sheFwXhAlDsOK01hZACChF97WteFeXn7nsNLaMDMyFyt0VIuqwFSr5rdBlwoKH1H0J3Qmt99YafenuDUrPywlXuWb+6dgj/9CiGb09LI4K5N7oj+5oseVIu1d6fCsKM/YFRdwStyKKaNJGK55yhWtaXoG5+yg8weRMtynQ2swYvbApkUWgtpXBRbpAnqV7HCTZZilBk53l7G3/3qgkRzsK0L8EalfeKryrdJ+pfCjsrUYntnA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d3e92ef-2086-4010-3739-08deb277fa5f
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2026 11:49:10.7301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G46GL69DvW4CPQabqRIY/yCNar7lS5x0Di4IouffIFHKWj/FVsmCa4lvnUK/1WUb107z6IuGu47xJ1iySaeJLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9133
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
X-Rspamd-Queue-Id: D928554EC41
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 15, 2026 at 01:55:57PM +0300, Jani Nikula wrote:
> On Thu, 14 May 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
> > On 5/11/2026 6:02 PM, Ankit Nautiyal wrote:
> >> This series is a spin-off from the original series [1] addressing AS SDP
> >> handling for Panel Replay and VRR.
> >>
> >> It fixes target_rr readback and improves overall Adaptive Sync SDP
> >> readback handling.
> >>
> >> Split out for easier review and merging.
> >>
> >> [1] https://patchwork.freedesktop.org/series/164512/
> >
> > Hi Jani,
> >
> > This series is reviewed and is ready to be merged, but one of the patch 
> > in the series depends on:
> > 59e5e15fef9c ("drm/dp: Rename and relocate AS SDP payload field masks")
> >
> > which was recently merged in drm-next, so it doesn’t apply cleanly on 
> > current drm-intel-next.
> >
> > Would it be possible to get a backmerge from drm-next into 
> > drm-intel-next to bring this in?
> 
> It's Rodrigo's turn this cycle. Cc'd.

Backmerge pushed. Thanks for the heads up.

> 
> > In hindsight, I realize that in such cases where there is a dependency 
> > on drm patches,
> > I should have included them in a single series and asked for ack to 
> > merge via drm-intel-next.
> 
> Either way is fine, you just have to plan for the delay in this route.
> 
> BR,
> Jani.
> 
> 
> 
> >
> > I'll take care of this going forward.
> >
> > Thanks & Regards,
> > Ankit
> >
> >
> >
> >>
> >> Ankit Nautiyal (4):
> >>    drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
> >>    drm/i915/dp: Use revision field of AS SDP data structure
> >>    drm/i915/dp: Set sdp_type in AS SDP unpack
> >>    drm/i915/dp: Include all relevant AS SDP fields in comparison
> >>
> >>   drivers/gpu/drm/i915/display/intel_display.c |  6 +++++-
> >>   drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++++-----
> >>   2 files changed, 10 insertions(+), 6 deletions(-)
> >>
> 
> -- 
> Jani Nikula, Intel
