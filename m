Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kCPIH3hVc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:03:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D417474C05
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:03:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C5910EAB6;
	Fri, 23 Jan 2026 11:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EF/D1NDt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8320510EAB4;
 Fri, 23 Jan 2026 11:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769166198; x=1800702198;
 h=date:message-id:cc:subject:from:to:
 content-transfer-encoding:references:in-reply-to: mime-version;
 bh=QCQBfyzSI6CMexMpQ5KxdjKDglmic9YxKKrosK6w4Kc=;
 b=EF/D1NDtUqrR0LevHOxc8+oPGNGq93RfXVbquVv2W/4DU+L1J5MznVIb
 nwyW2eUtbe3bQqYXJpLxuwli6L8e9Gh22aHkwW2NKU0bgcqgS2a0WY36b
 aMw0XcwJlvwk2XSG5LKIvIRBd+lNcGU17VozX8pAhWIS9trHS4W4CKAd9
 fRPsJT0JXOIlx1wkK5Wq3fvcKUKQmNlG6HvA23Q+jRkEoifByZlyR5ODk
 8pkJjhxOSNvwxt3ko6lgz1nRreQUjOtMpyV4HIrfnsE6WRaMQvEiIwmu0
 uHpblBPf/dqcJcrIGdlmL7x5PUe+EOWu01Ul7ACKlWgaNgKiOeW8XqQIc g==;
X-CSE-ConnectionGUID: Bsm2k8MNSpGqjP7MC8DjoA==
X-CSE-MsgGUID: IlrU46MuTiys5Rq+/FKsWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70507743"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70507743"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:03:17 -0800
X-CSE-ConnectionGUID: 01NyGXV+QfqfR4wwD0JcjA==
X-CSE-MsgGUID: gKxm27l/SBq3I3ZA1BgT/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207029131"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:03:17 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:03:16 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:03:15 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.48)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:03:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bPJ5INcFpOyQwtzOeWdFgoY/jlbe+Kx3pTpYHQhMlVs1Bq2zOc9DHNSBwNnpeupig/wu68LCtxfspJkb7bFC5VAGim5NeZ+KgtsZjShjl/P/+YH2IYTTlsdIWK4m47gMFmtRu+q9SFjHg9nNl1RFrU4Uen73NVJj0N06cGw4ZpPl6k3+h0hjGDPZCfEtWll3fQy9ryOnkVAq4MYFN5gz+mzc+KHjTA54REuP70ohRao7Iz1dChoTaciAy4AeykaLgOsCEzSumjqGfGhl93xbqnDOdVxc3VoW0mMYlK4s9jbHKjT+/O+XFDaWuded3dZw7X77tOAga9+5/Ycg/CDi2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AM3VY+KGG2mNuskuecotMUEqfpCQEA9RYpVc7v3Agyg=;
 b=pPb9+7+ZrflMOcjoddIqoxa0XHRrw7iy3ChEzCEnGeGXda2CWqoeN73HYjjc4pdkz3p3C10D43Vl1vmnOHNsoq2hYEh/HuEPbkxDBxC4ZxLGf5YVSHRej/JQupehj9TXrecLPTUPidvOQR1TgOKxeVBaiiUT3eybfTwDw4XnRjLrTMaQo830uU+o52UIMHro+HFr7b/2KgLha8fIqWCSbNwQeqhuVBoZo13OjT942J+ISIt/xu2EcCSPSJa5Y4fgMdpfHgKpk/of3O1pDx1fQc/6U5YfzBA9Ekx1odj9jQ8vLPFiANM0wHkYHyACVRl920rZalw1Rmz6bJTi3dANhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:03:14 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:03:14 +0000
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 12:03:09 +0100
Message-ID: <DFVX2N7U0WJA.UOCF6Q7ATIMG@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 6/7] lib/igt_device_scan: Don't print bridge not
 applicable attributes
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-15-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260121114656.1970684-15-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0001.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::20) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: a0074382-aa1c-4563-5dc9-08de5a6f0132
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0x4ejV6eGxRSHBTVDY1Wm9kdXVKVXZocU43bkVnZlN2a3dLbmkzcnAwb0p4?=
 =?utf-8?B?cHV6Q2JtSG5oZkVIeXYxbFRML0d6Qm9FSWNScjhiaVVrK3NtbTc0RUlBT2l2?=
 =?utf-8?B?b2RueC9EWFJHaU9SZ0lmNm5XL2tSWXQ0RU93d25nREJRZHNxVGxVN2k0Smxv?=
 =?utf-8?B?ajFoUHRlbjNQcHdlems4U25rcGd1THVZSTBmVDRHdFB2UCtRMUVacU56ZFo1?=
 =?utf-8?B?KzBMbDVlUkJ6T2RBcFFlYkRlTVBObXRDbWRzc1JhanJFS2phc1Y4UDRrc0s4?=
 =?utf-8?B?ZzVHdWh3bTE0MlJIdzF4dWQzUkNnd3l0WEFaT056dy9OTElOb2M5T3E3NXJT?=
 =?utf-8?B?YXBzNlNJVC9FUHFZM1RzSU45d2FDdy9Zc2d2TmF4b0dzbGhGR0FjQnhiMkN5?=
 =?utf-8?B?YjJWbjRuNVRNVGppb0tpQUdFd3gxMFo5T25pMjJRcHVVSHZSVkUvUXdhM2Ny?=
 =?utf-8?B?VUZZYi96anRISTVFZk81SjREVWFaSXphb3RMdkQ0QktYZWFDSDJMQ0JvVXAv?=
 =?utf-8?B?TGFicmtHMzJQSnNkTmVHOHlEUFBSSUEyWTNzTnc4UU00UHJkdmNDdUVOU3ZT?=
 =?utf-8?B?elZxdTlCSWp5VlBFY2xuaFR1RDUzRkpmU0RjVy9YVkVHaThwQUJ0QmZhaFZh?=
 =?utf-8?B?WE4zaGtmRWE3bjQ4RWxQNTZvKzBveHZNeHBBcEVoN0Yvc0JqTXpLLys1UWpU?=
 =?utf-8?B?ZXNKbXNHb1QvdE0wK0dyN2thenloaEZjRXl2NDBqdWNxenRIVEtwY0U2VEhq?=
 =?utf-8?B?Mk85UmRnWGxpb3NhWUVKNG1XUmZGYS9zcEhxVFMxTDdKWGVVdTNpcjVqbjZi?=
 =?utf-8?B?Smx5K28zTkwxc3YwVHc4d2FSVklzT3YzMkFZdlBER3hRaFduTTVya1BPb0Nq?=
 =?utf-8?B?R2Rvb1dUQnRJNGNjZEozbFM3QlpPeFRDVGNIeEVaNDNyQ1ZKcW0wNitoRjFo?=
 =?utf-8?B?MHJGMGtlWnNWRTZqcXlxdEtJV1hURDZVeDgvUmh3bGZoSnVMU0RjdFU5QWxw?=
 =?utf-8?B?MnZ0aEptcWxRQ24weW5OcUVsbGVaR0FHRXk2VHhCL0lCUCt5dU5RSHhVUlBB?=
 =?utf-8?B?QTVuUXJTdGlkSkxHOUZvWTFhbTYwUkRVcXVTSHU4SXVIanA4UUVUa1loMEtH?=
 =?utf-8?B?SDRHbDhVZlhXQnBIRm8zYUxvRjJPeWpTL1pHb1hYWjA2UUdTSVJXRkVIRVZo?=
 =?utf-8?B?bTQ1Y1JPRlNYT0JEZVhnTnF0cHM2aCtNZlJaSWQxMEpmOW45dUNldkZxTXlZ?=
 =?utf-8?B?Q0s3ZEFQbFRrNFlTOUNYR1ZIdjMzMWxwL3NLUjNDQ3lXRnJvcmg4bUJHUy9z?=
 =?utf-8?B?OVgzZWJYeU5DT1lkaXNxcEZyYmFVOFJIMW9SdGV2SHpqamQ3YWZlMWtXaUsv?=
 =?utf-8?B?VzVMWmZ1VkVzQ2FlQUpRblFwWjAzSTdLQmtRNUNzRHpQR2JWWkR5ckNyaGlW?=
 =?utf-8?B?TXhyOG1hY091M2o0d0NZQWtSbEdYQXRYVUlWaitZcmx0cGpXbEJoMTVCRk05?=
 =?utf-8?B?U0dNcUZSbUM1UTV2dEowaEd6TlFOZnpBOEFEM1lvekt5R1hITGREYStlOXRS?=
 =?utf-8?B?TUhRd1p2ZFMzN3Z6S0R3QStoWGg0eVVTR1hCcHE3Q0J4WklMeENyVTA0cExE?=
 =?utf-8?B?OXkxTE5yeXFGSnErSTRjUGdXYmJnWmtUeGdFY0pYZzB5azkra0J3YXV2TUs5?=
 =?utf-8?B?WEZBd28vVjh0TW5jTllsUkJUKzh5S0toaVlSKy9YbnBodTZod0R0T0dZS0lG?=
 =?utf-8?B?UDJLSGpTb0x1YURpYnpCU2V5d09kMDBGUEd2dTBraXU2ZWxmQitxQ1VVZlpD?=
 =?utf-8?B?c3Z1aVBhem5Td1VUaU9kbXhxN240RE4zZzhoMm9ITzUzQUh3bnJUV3AxS084?=
 =?utf-8?B?QjlEMVNBUG9MaHJWRVQ1WWpuUXM3NmtHNzF6YUlIRG9JSnhIZFJ0a3B0TTEr?=
 =?utf-8?B?NjFnandCRHRQaUIwU2doSnFTSjFWTmRsWkxkLzNMb3ZLVk4xMDhCY0Z6V2tk?=
 =?utf-8?B?blFCRTNsS0ExQmhRaUVscWZqYlA4UlJpZTdYbnRYMWFwVVl2YmtXOEc1V1pL?=
 =?utf-8?B?M1JEb1JwN1duOHgrUE9USGxoMkIvS241d3pYQkN3VENBVzA0bFRUVXJHUGg4?=
 =?utf-8?Q?T6cU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TFczWDdvQi92aXBYdHp5VVBJaGpZMUM1bndreG9pWlIrV2plZDBJQUZsOExU?=
 =?utf-8?B?Mms0aTgveXpqYnNwTDVERHE3Qmk3aW9IcVpuNEk0akIzaUJkcVhwaWQ0ejJo?=
 =?utf-8?B?d3Q4UXdqTUMySTByaFdiZ1hCZTM1a2tDUGVzcXJ3Uy82Qk85Z1U4L0ZMWCtB?=
 =?utf-8?B?MUpua0dCV3BYbVVOdEtSdmV0QjVEM3I2NTZCMUtjOHcxSW1qZVlIYWxYdk5K?=
 =?utf-8?B?YWtlaC9PVkdFQVk3aHJlbDdYYUsrNWpNOHVXUERXVEVmaUVxTXRJcm1BbkhE?=
 =?utf-8?B?b1N6Z3c1MkRLc3hwWkFKN09sV2hzWlJkQ0Vja3NpYTVTdXh3RnprdjZHMEFr?=
 =?utf-8?B?SlVoaE5ZVFpLSWFSdEpmYm1kS3hqWGxiWVQ2bVRPS0NmcWNRMjY3czhJYWNH?=
 =?utf-8?B?WktmaGZqZHZ4YU55NmZxWmRNbGM5aUQrQnZNYjR0T3VlaVRtNjBOK2hnUFJk?=
 =?utf-8?B?Yk04Y0NXU0RHbElEbS9MSjBYcTZGNmpSZHdZMjQrUUNpbDdOMnhVZGp0RkxP?=
 =?utf-8?B?SW9GcE5YTTdOZHBZdzFiZkdyM01abFd4RlVSUDZJL0ZRMUZ4SlFGNVZmQjJt?=
 =?utf-8?B?cG90eVB3blhpK003RlJxbWRMMEh1bnduaGNuSFhoZkprTXBhUTBhMUNCUUZY?=
 =?utf-8?B?SE9lTzN6WFFjV1pSUnExS3BrOGdzVUxaWkNuUm9GUDNpUGJNakl2a1puYjdh?=
 =?utf-8?B?c2dmL1FkamJhUTR4UXROMzloNitBdTBITGFaMmNNYjRjbzR1aFlTU0ZDaTRX?=
 =?utf-8?B?eHZRbW05dXN1cDNpWFg2dG91bE4vMXREbHdIZGZkMm8yTHlwenpUVzF3QmZU?=
 =?utf-8?B?RDNXTG14S0JoWVJPVkZLdDB1K0V0eEFtNnNvYnRHczFadk42bjBPb0dMZW1E?=
 =?utf-8?B?TkVoWXlyam1NSlpIQTl4MXpBS2Rmb0M4eVBvc0ZJOHlYeWI0SzhReFNpRDdQ?=
 =?utf-8?B?L0xFOWZ5ak1iYXdmQzN2dWRyYlZLaGlTZHpMakJscGJSbURtOGZPTGdNYy9P?=
 =?utf-8?B?TXN0a3Z4NFNYM0FNVllXNWMyazA5VkRUeHVCUnNNSUp5aytXMGlFZjdiWDQr?=
 =?utf-8?B?dUxONWN2R1dkdWtiREtFRS96Z1ByKyszZkdWbWpTMFF1eEpFYXdWR082Rlkv?=
 =?utf-8?B?R3BjRDlsUUxRbVBWeENERWxaai9makttMHA0ek5qeUh5dGxyS0N3TjRkUGIw?=
 =?utf-8?B?VkhGWlFjMFc4VC9pODBxZmRTQ1oweTZkcEFoVnN4SU5kaGRhdGdkQWh1RHkw?=
 =?utf-8?B?dUlzbEFFNHVPZVl5YTNaTGVZbUdnaVVsVmpWNEUxNEtZV1lhZmdLYlJtakhR?=
 =?utf-8?B?S1p5ZDlQR0xFalBneFkzdk1FMEZSd0psZ1B3eXE0akRTZWdnUUZ0RHUxcmZk?=
 =?utf-8?B?ekJGWkpmNTd3T1dQUEJlaUl1bktsejRadEtTQzc3Z1lQVlorb3FEMGkrMC94?=
 =?utf-8?B?RnZlZ21BcGMxbnM0RmhVZXdyVzJrRVh3Q0c5SUhrK0dSeFRDQzgrN1h3Zmpt?=
 =?utf-8?B?ditxUFBnT0RQM3ZrWmVibm5NOGhxUXJHR2xTZXUzWFB4K0VVWWFCMjRYenBy?=
 =?utf-8?B?Mlh3Y1lYM1lWZWVLUU01ZWZMTnl4VEIwUEVlNUpjcVBKTnQxMXhMTFVaTDBv?=
 =?utf-8?B?dDhVL3dSWUtGRGVyV3FleGdROEJUSi9lY3EwMTdKaENHL0JQcUlId09rQ2RZ?=
 =?utf-8?B?Z3VzeExkZE40Ukp2Q0s2RjRwT0xXUTZveHRXNmc5MFdwdXp6MSs1YXVsWDZB?=
 =?utf-8?B?bkxMNTlJdExaS1h5aDJGbzV3VGlZdDJ2emg4Rzd2eHlZVytNT2xMdWRoZGxB?=
 =?utf-8?B?dlg2bHRoSjdUWE1paG5nYUx3Vm5zNlRkeWFQb204ZnR4ODNWVmFSTzZva29O?=
 =?utf-8?B?QnFiZWtETHRPUDdQKzlJZ0t5b295bU1CbXFNMVFuamRjV0hQeEE3VVBZUFRF?=
 =?utf-8?B?NGZmdHpUMTZtYWdpUnd4anRWdUpkWjhRWjV1cWN0SG9Md0ZtcTF3bXo2VE9C?=
 =?utf-8?B?eUFIOFVFakwxWkhLUzV6UzIvNFNmVkozSkphblkxUmkvNk5jM3F2VVRTZzJQ?=
 =?utf-8?B?Q3lZbXpNMjFXM3RXalVOMC9vM2ZNZlhZQWozU0dYQnNmbURlYXkwWldad2VP?=
 =?utf-8?B?ZmJWUFVGL050TVc4M1hFNnBWZlhVMmtSWlpjZjBIanZtRkpxRjhoSFM3Z2c4?=
 =?utf-8?B?UFdqWUVCdUlEd3JlNURJbXFsOW1JV2lVdlhSMkY4YXU5clhFVktVdWY0Q0VT?=
 =?utf-8?B?Uno5a005U0xrb3FuWjRJcjBORzFKcjJtUmFUSWZZYUhSblRYR2Q4NFo1UUkx?=
 =?utf-8?B?SlN5Yy9MaE9mVlR2WHNpOHNJcjYxMkE1TkpxUVd2MHAyMGVKZE0vc0tsVlpp?=
 =?utf-8?Q?xCAXLBDs17cZ7IPA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0074382-aa1c-4563-5dc9-08de5a6f0132
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:03:14.1900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /zX2MH0SHBeolbexWD5AA19Q2tDyZVK7na4lADcjKzJ2K5BqtqU1UGsg5M7iA5H/EFnqbpV5aIz/QHrSz5bvJm8OXKRuPKMobRRzi3J8u9Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: D417474C05
X-Rspamd-Action: no action

Hi Janusz,

On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> In addition to properties and attributes obtained from udev, print
> functions also list some library specific attributes: drm_card,
> drm_render and codename.  Those not necessarily make sense for PCIe
> bridge upstream ports that follow their PCI GPU devices on the listing.
> Skip them.
>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index 7c58ab84e8..e86da001a9 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -204,6 +204,7 @@ enum dev_type {
>  	DEVTYPE_ALL,
>  	DEVTYPE_INTEGRATED,
>  	DEVTYPE_DISCRETE,
> +	DEVTYPE_BRIDGE,
>  };
> =20
>  #define STR_INTEGRATED "integrated"
> @@ -1055,6 +1056,8 @@ static void update_or_add_parent(struct udev *udev,
> =20
>  	bridge_idev =3D find_or_add_igt_device(udev, bridge_dev, limit_attrs);
>  	igt_assert(bridge_idev);
> +
> +	bridge_idev->dev_type =3D DEVTYPE_BRIDGE;
>  }
> =20
>  static struct igt_device *duplicate_device(struct igt_device *dev) {
> @@ -1313,7 +1316,8 @@ igt_devs_print_simple(struct igt_list_head *view,
>  			if (is_pci_subsystem(dev)) {
>  				_pr_simple("vendor", dev->vendor);
>  				_pr_simple("device", dev->device);
> -				_pr_simple("codename", dev->codename);
> +				if (dev->dev_type !=3D DEVTYPE_BRIDGE)
> +					_pr_simple("codename", dev->codename);
>  			}
>  		}
>  		printf("\n");
> @@ -1465,7 +1469,7 @@ igt_devs_print_detail(struct igt_list_head *view,
>  	igt_list_for_each_entry(dev, view, link) {
>  		printf("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D %s:%s =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D\n",
>  		       dev->subsystem, dev->syspath);
> -		if (!is_drm_subsystem(dev)) {
> +		if (!is_drm_subsystem(dev) && dev->dev_type !=3D DEVTYPE_BRIDGE) {
>  			_print_key_value("card device", dev->drm_card);
>  			_print_key_value("render device", dev->drm_render);
>  			_print_key_value("codename", dev->codename);

Could this be merged with patch 7? Most of this will be removed in the next=
 patch anyway.

--=20
Best regards,
Sebastian

