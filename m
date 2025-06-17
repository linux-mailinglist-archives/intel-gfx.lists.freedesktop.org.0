Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 538E7ADCCDD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 15:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE9410E68B;
	Tue, 17 Jun 2025 13:19:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aN0lPVsc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C3F510E68B
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 13:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750166374; x=1781702374;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=p9lgG+B5JhDwohPQQ0SRJ0UvXge6JWghe42t9pr23us=;
 b=aN0lPVsc5p5/dBCTuXpgvb0f/aW8X5k3I8RREQrle9Ur6HMa2xj7FfCA
 YpFB4l4+utZLQhYwfEvUXPp/1u9uBRt1icwpJC3uipWdtk0zZ3CMdGSik
 clEB6rNGLyFvOpyY0dV2Ky+7AV7fFt3ezQPaNqktR7/uGT+owoODjT6vk
 iIFt9zYHVGbhjuONUCsym4NHeDEdQLzawlqiZx+mL5SBkOz5zI2xq0Wco
 zAmz6QODAX/rTHi/WeuenOvEdd5hxNFx44vBzZKx4J5TS59M5TtSjVslP
 OS/jfzFo1FUFuhTVRWG2UFj+I88pfwdxMnbtQ7SwDQYiw35xCdFVRrhYu A==;
X-CSE-ConnectionGUID: UyYv3RqtS3CmqBx2p6+oow==
X-CSE-MsgGUID: BNu9T8vjQOOIEYpwr/T9jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="74877977"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="74877977"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 06:19:34 -0700
X-CSE-ConnectionGUID: 3fgKrUweRlqCtHnkNipZ4w==
X-CSE-MsgGUID: F2SFCfYyTtCWCbf0TXFwuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154068743"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 06:19:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 06:19:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 06:19:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.59) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 06:19:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sp7ajZH/sjY8RWDlWESks3pmwyJ8M4agRHFtR4AxyigfP/ghEbjIto+tzuqIChYnr1XvfjKktzGlqFjk8PzjFEc6jpkTjJQEE3H31+8F0QjkqxJ68c4VbGruGefWPNWSolGBY9k/OUH6lKYf7TogbSBxSBR7PHZ/Un1w7nzt5CytGWhQKLr3i1Jd7hvgjvNl0kxEujYfY9HfCZbU2N5Y/2AN+65UPUL7IkADU4kKxn2m5tRB+rcZ3UWTaJd5QhszY/sPdLg7gTuq3slqhvA75x+/u28cp1cSMjTkiFBhWA5lE1x0qU3l5QRlx1IVF0Xyh/UHJrA0ddNp+ODXf/VE+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ZnzxZjIdX9cK5A2jVBhmFX9EcMT93svM2Xp212Di7U=;
 b=V0291DS/RI0b/d1qE2NncEbIrktWojw+3Xkxgh34HhDHO0ZPIogcldyS7K9NKGNnJfwaVJ3WhjdrotG+9iukcHnkkLP3IeLK67/voAu+zMhLTu9ckuzh9r25v5wZnBngXp73Gc4aEbW1/+Qm1Q7hXPhnEdKqcbLuEgX0OxmmBcN+eN4YiNrIb6+EZyOe0QBOko1ANOtvVdZ6GG4EyTixxBwiaZcf8AosrcmZ7h1GrtyfAI+ojRxLI7YqxxJHU2PrcHkTCtnsGIQb4IiY9kdo+PjGMqsaGRQs0n50Kknq/vlk1kwscG7lB5Uf9US9xvY2Cpg9PViqPCmcxH41P2fkTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB4989.namprd11.prod.outlook.com (2603:10b6:a03:2d9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Tue, 17 Jun
 2025 13:19:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8835.027; Tue, 17 Jun 2025
 13:19:17 +0000
Date: Tue, 17 Jun 2025 13:19:07 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matthew Auld <matthew.auld@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: [PATCH v3] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR06CA0108.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::37) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB4989:EE_
X-MS-Office365-Filtering-Correlation-Id: 19837279-3c42-4e24-f2c3-08ddada18fa3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFpGL05DYXZObFRnNDdwckFjbmtJYXlxTmp3MDNyVHNlaHI2NWI0ZFhnL0Iw?=
 =?utf-8?B?MzBBQi85VlZMdEVFOHlXMkxkUUQ4emdMYndiTlBOL2d0VHcyampJamJ3TTZk?=
 =?utf-8?B?QXJVQnlDeWJmVjdxcFlja1BWUWgvdzN5T083cHBiY0lDdjJQY3JkYTdzYnA3?=
 =?utf-8?B?MkZZMGNTa1VJbVhpM25kUTI2eVVybEdXWUQvS2tCVjdzcDhUY3ZmcGFvbXdZ?=
 =?utf-8?B?MWlZTjFKL3o2bXNHakljUVZCd29YV1JodGREcm92REtiS1M1TnJrTlJyWDIw?=
 =?utf-8?B?dWZodk9VRDVLM3NHT1pFeStKWExSYXJSMloybkk3UjdqUlg2TWVVYU9qYWE5?=
 =?utf-8?B?Q1NlY2NVNllPN0xIMzRxbWMvc2E3RFltQTl0WWxGRUlBdVljYzFmZWNOaUpk?=
 =?utf-8?B?YjhOL0FBTHhYTENDNzNldVdsS0xJN3dLNWRnZTBnWGpHV2o3dEFrYVJ6UGx2?=
 =?utf-8?B?SE1oQjk4czlsK0gxaVVkWDRYTDNyU1QwRTFrZEM3THpXZThJRENJbFI1NkZE?=
 =?utf-8?B?NXBPWWdhV3dJSzBBblE1S1NVWjdUbFk4c2tZNWJsRDkvK0lCSDFoRWEranNL?=
 =?utf-8?B?dkpDaGo0R3Z5bU5RUHVmYWgvV2gzdytpS09tZWVxZDBEeTdSOGRmWmxMSU8w?=
 =?utf-8?B?Q2p3R0prdDQxZVl6R1d3dGFPdklwcUQ3UnRIRkxKQmRkR1hEaThNQ0xSQTdt?=
 =?utf-8?B?VEZOY3EwaDNkN0FFbkJlTGl5bGpKN2hyT3VGNnRheDdYQWFkNGtoQjh4YXlu?=
 =?utf-8?B?SEZQeHFtTGlVUlNrdEZ3N1pLSVNNNC9oY3c5Q1psaUw0djQvODNyYTk3cEZN?=
 =?utf-8?B?YXFpQXI2VENrUDV3amNCbnppNVV4Z2Z5RDZjaG8xekMzYytuTnphbW0vVUFE?=
 =?utf-8?B?MHFMZCt2eE1meWZ5Sy90RlY3OE9GN0QrUU1qeHM4VXNqa0U2Yk1Na0FjVWlr?=
 =?utf-8?B?NU9VSHBiV0VhdDMrNnlENkxtUklMVDRvMk9SUnIreTJpQjE5TWIxWVVEMHV1?=
 =?utf-8?B?VC95ejFKTnZseW5BQ3gwTi9PSTVYTG04RG9OYW9vL0Y2RnRwRXdLS2FUWEJQ?=
 =?utf-8?B?NTJPWjJTYXJyTzZkU2kzekd6eXFCeDF6c0JsZkRuTUszbm9LVTR1YTVGS2Va?=
 =?utf-8?B?Rlk5RmpYSlFSTExCTVUzalBJSGJ1V1hYRHRsbzllVUlMbDVNalhWSkpWUmFV?=
 =?utf-8?B?Z0pTaldTOWVud3VZb3FGelJ4cFlmeXhvcFYrRUNWenlTMENBanJPQjJtUTBu?=
 =?utf-8?B?Z0pLbzdlbVBzZ1UxU2ZYUEhFSDk2cFV3ajZtcmVWQXJlZmc1cGhRWU9hWmlR?=
 =?utf-8?B?OGdLMjZJMkNmOU1vTUdPOHFkZVFPamRycFdrdUMvbUQ3aE5lV0IwbFhQcUtr?=
 =?utf-8?B?Y3l2clhsaVg3VXVkV1ZsVlFtZm5QeGkzZUd2VEhLVWk3WGVzRis3UlVEZ2NB?=
 =?utf-8?B?Nlpzd2FMZDRFbjQrRWlpbWZUR1l2ZjhZcDJHeVI2Lzh5U1B4eUNLaVBwajRp?=
 =?utf-8?B?MHFLcGNsNkZnRzRWbG9PbTNuS1Ezd29kYTY2U1lheXNsSGNkQm8wbU5IVVVO?=
 =?utf-8?B?N1RwWVY4TGU1K2RHWCt3WVh3TjJpNDlNZTgrQ0xVUHoxOVAxYjdhVWpnV3Jl?=
 =?utf-8?B?eDVJZzI4Y2xMb0ttUUc5Q1RTWFowVG5zVXIwQVdnRmZsSGExTENHOE0vczd5?=
 =?utf-8?B?NTNLRERHWitvOVZaL3FhVVpIVVh3ZFN2b3UxSVp1SVA0RGhNWVNYL0hMV2dW?=
 =?utf-8?B?cTFhby9vZEY5UHRQODZ6cWtlR3dyaHRGVkY4RkhHTkNJYzJOaVlycVd0Zjl3?=
 =?utf-8?Q?9Jn2qyOnTS/xOJyRAK8Qf1PBenIIfGLfO4Rw0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3pKQy9OQjRuTWZUS0lZanB2ZDFmT1Z4TFAzSXJRY0VsZ2U3aUJoOE8xOXQ0?=
 =?utf-8?B?YmdVQXJCTW5DcnByaXVFUHROOHp3WkxsL3AxWS9hbGtwVk5KYVVhNjVYSGJy?=
 =?utf-8?B?UUt0THRGVTZyNlIwS3V3d0NvbWFXMHh3czM0cWdKRlF4TW4zQTNYK0hUWVdi?=
 =?utf-8?B?emE5ZkxubUlDdVdFazg2MCtGaktkeWlQTnFqbERsbGVQRUFzUVNNSVA0Y1RT?=
 =?utf-8?B?RW96SkZjaVVrTlpuRkhNZzk0R2RKWWxjaDUzaXVITVVFemlFdStJbjVsMXlZ?=
 =?utf-8?B?T2l4aVgzK3dmSUsrTlNGMWorTHVDalFwOUQxVGgvNlYwRlEzMG51MVl3aEZm?=
 =?utf-8?B?TjVqcFI2MDlKZlB1Y0gyMnM1TGh3K0ovdjcyalhKM0tCYWRVZ2gwT0luS25s?=
 =?utf-8?B?dlltSS9qdEtwTDd5aVFuSmlRMy9IQXBqZ29hY3B2M0NxL0pBUlAzTUVQbFNP?=
 =?utf-8?B?dTJFUlg4ZEVqQXF3Z2hLbzhnVG0yL2Q0ekJJWFBFTVBCVUNZMkpERUhVdFI0?=
 =?utf-8?B?NnovUXJXYVh1ZzZiUzlsZUFZeE1yMDJONUxIdTREaHBtTU9PMXpQY2ZWNTZh?=
 =?utf-8?B?RmhjakJ6ZGNtdDN0WmZ6VzRURElaQVdXRFBqM1BlZzc5SDJyVGVvUXJVdHdC?=
 =?utf-8?B?SmI0VUtuSkZpU29nRnh0V1FEZXhISXdvb3g0QmFqYnlUK2I4dit0c0d0WHRW?=
 =?utf-8?B?Q1IzdHJibGdDYVJpaWhYTFhvcHc3UisvNjE1R25VYnFvMUpPVE1hVGFuK0Z1?=
 =?utf-8?B?Q1gza3BYM3YxOXlpSWJPS29taHUzck9aNmlmbzRUWVkweFBlQUJUU2t0UC9E?=
 =?utf-8?B?czlndCtVaW5IQk4wT1hZNGI1VDZuZFVBbCtXVHRZSXNLb1Q2d2lQTUNKS2FV?=
 =?utf-8?B?VDE1T2dxRlYrREYyb3J2cW4wMUFuSHdqOHNvNDRtUmRJZkhRZENjWjI1WjZa?=
 =?utf-8?B?Sjd5QjlIN0I0QlFxMlNENldPVzBOc29xT2lKcXFKaFdkZmlYYWRDUm84WnlV?=
 =?utf-8?B?d0FyTnFRQ3NzOFNxZHJRcXZUNWxjdEdqTmpnQjBhUUFoQ080cUlkcHNvMFVw?=
 =?utf-8?B?cDViSDBkQVh0TzRMNHVpMDFhTlhhNm1KenRxU2FORUQ2UXl3a0czN29VOUt6?=
 =?utf-8?B?aWIrTmY1ZnVpdW1jWU9TTk16OXhZb2tYRyszOUNxZ1FFMi8zY0lad3FVcUw5?=
 =?utf-8?B?c0YvY0tTbUNyUnlZTjdFZHl4ZE54Z1ViMVFxcTBjY3RiL3U1aXdyTU9EMHpI?=
 =?utf-8?B?Y3Q2d2JlcHpyODZYVEo0UjNhUm02Wit0bVk5TERJQnFtcUJnQ1lZMmVBUHJJ?=
 =?utf-8?B?endNK2RNRk5pV0lwUENMd256em5STC9IcE5pVWlUUGpBd2J6WFRmTEx6TWN2?=
 =?utf-8?B?TXN3VUIxZWtPR2RCdHJmbXdFV0lEZXV5TFhWNmhyYXZ2NHpsaWlNWm9OV1Bu?=
 =?utf-8?B?eHd6N1FwNXJpZGp6VktlLzhTQW1FdW16OUNPbFhtand3blRtQkduRGdBL3RH?=
 =?utf-8?B?RDRGQ1hyYkI3c2ZxL2FsL2JKd0tIYTE0SVdTYmR3M3hKNkpLeHZLdlA2Vjcw?=
 =?utf-8?B?OHVHWDRmY1ZzdU54ZWFPNmJvc3NLZEt1OWtDYm8rODd0YllOdUl1MWVOOTRZ?=
 =?utf-8?B?dUJQclRmTDQ4NkZaSzVjUE5naWpFUGo4NWdQbW5nb3BsM3lOUmxoM1lreWR5?=
 =?utf-8?B?TzlWelZRUmhmcC9MK3FiSmoxMU9wS28wQ0JISGlodmoyNW43VzV6TlE0aG5i?=
 =?utf-8?B?NWIyVHpYOW5iNk5IMGZqMUUvN1pRc3JFWisrdlowQ0ZqUGN0emNQcnZMUVJs?=
 =?utf-8?B?RHh2T2poSWowZFhMQnladUN0Nk9mYVZNMHF5RnBJb0J4UVgrTlcxUHkvelpY?=
 =?utf-8?B?Z25kNnZyY1BGTlp1Ymp6eVY0T09QOHBkSGJ1Y2p0eVA5c01Hak9TQkFBdDVI?=
 =?utf-8?B?em5SdTlnYXZXRHpYTWlVV0szOHpqVkpaUUE3UWJMNnlyT2F4Z1hPNmtiRDc5?=
 =?utf-8?B?eURUWGpLNjc4dVJkcVpiNUNrR2VyTVlYZzI3Qm1PYjNxbDZFVXE2bVVlYzdU?=
 =?utf-8?B?R2JHbEc5WFVJc3NYc1YxRlVJYTc5ZFE4a1U1LytjUFJCb3BwK1k5RS9ScEt0?=
 =?utf-8?B?dkp0b1lhekRYSXVhYzR3cU9jV3h5QVJvQnBMcmtXczhIcVY3YVJ1L1F3Q0w1?=
 =?utf-8?B?enc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 19837279-3c42-4e24-f2c3-08ddada18fa3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2025 13:19:17.0725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oqi1qvN7Pts6rMnY5GcGZ+Iv66yfe0z/craj5/c4G1Th7C/8tXDutvQfSUe9/M0pFMrR8gpUrykjXiTA/u30chn+yRuugkBwfZ+EMlZsnz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4989
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

igt_mmap_migrate() tests migration with various parameters.
In one of the cases, where FILL and UNFAULTABLE flags are set,
during first stages of this test a mock file is opened in
igt_mmap_offset(), which results in allocating some data in the
GPU memory. Then, also in igt_mmap_offset(), the file is closed
(fput) and the cleanup of that data is scheduled. Right after
that, the test calls igt_fill_mappable() to fill all available
GPU memory. At this point, three scenarios are possible
(N = max size of GPU memory for this test in MiB):
 1) the data cleanup does not fire until the whole test is over,
so the memory is fully occupied by 1 MiB with that data and
N - 1 MiB added by igt_fill_mappable(),
 2) the data cleanup fires before igt_fill_mappable() completes,
so the whole memory is populated with N MiB by
igt_fill_mappable(),
 3) the data cleanup is performed right after fill is done,
so only N - 1 MiB are in the GPU memory, preventing the test
from properly faulting - we'd expect no space left, but an
object was able to fit in the remaining 1 MiB.

Amend the problem by keeping the mock file open throughout the
duration of this test and calling fput() from the test itself.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
On DG2 platforms the memory for data allocated as a result of
opening a mock file remains occupied until the test is done
(scenario 1), but on ATSM cards the data is freed earlier
(scenarios 2 and 3), which leads to sporadic failures.

During testing I observed that the max memory was equal
to either 4096 or 2048 and igt_fill_mappable() tries to allocate
as many 1k objects as possible before halving allocation size.

v2:
* change ownership of the file used in igt_mmap_offset*
  functions to the caller (Krzysztof, Sebastian);
* rename igt_mmap_offset_get_file() to
  igt_mmap_offset_with_file();

v3:
* remove double fput() call (Krzysztof);

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 11 ++++-
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 46 +++++++++++++------
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
 3 files changed, 49 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c3f17e51885..216d1d5ec2f5 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1176,6 +1176,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_private *i915 = placements[0]->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
+	struct file *mock_file;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1194,14 +1195,19 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	if (err)
 		goto out_put;
 
+	/* Pretend to open("/dev/dri/card0") */
+	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(mock_file))
+		return PTR_ERR(mock_file);
+
 	/*
 	 * This will eventually create a GEM context, due to opening dummy drm
 	 * file, which needs a tiny amount of mappable device memory for the top
 	 * level paging structures(and perhaps scratch), so make sure we
 	 * allocate early, to avoid tears.
 	 */
-	addr = igt_mmap_offset(i915, offset, obj->base.size,
-			       PROT_WRITE, MAP_SHARED);
+	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
+					 PROT_WRITE, MAP_SHARED, mock_file);
 	if (IS_ERR_VALUE(addr)) {
 		err = addr;
 		goto out_put;
@@ -1299,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	}
 
 out_put:
+	fput(mock_file);
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..6f1b6d5cc2d3 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -9,17 +9,22 @@
 #include "i915_drv.h"
 #include "igt_mmap.h"
 
-unsigned long igt_mmap_offset(struct drm_i915_private *i915,
-			      u64 offset,
-			      unsigned long size,
-			      unsigned long prot,
-			      unsigned long flags)
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file)
 {
 	struct drm_vma_offset_node *node;
-	struct file *file;
 	unsigned long addr;
 	int err;
 
+	if (!file) {
+		pr_info("file cannot be NULL\n");
+		return -EINVAL;
+	}
+
 	/* no need to refcount, we own this object */
 	drm_vma_offset_lock_lookup(i915->drm.vma_offset_manager);
 	node = drm_vma_offset_exact_lookup_locked(i915->drm.vma_offset_manager,
@@ -31,22 +36,35 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 		return -ENOENT;
 	}
 
-	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
-
 	err = drm_vma_node_allow(node, file->private_data);
 	if (err) {
-		addr = err;
-		goto out_file;
+		return err;
 	}
 
 	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
 		       prot, flags, drm_vma_node_offset_addr(node));
 
 	drm_vma_node_revoke(node, file->private_data);
-out_file:
+
+	return addr;
+}
+
+unsigned long igt_mmap_offset(struct drm_i915_private *i915,
+			      u64 offset,
+			      unsigned long size,
+			      unsigned long prot,
+			      unsigned long flags)
+{
+	struct file *file;
+	unsigned long addr;
+
+	/* Pretend to open("/dev/dri/card0") */
+	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(file))
+		return PTR_ERR(file);
+
+	addr = igt_mmap_offset_with_file(i915, offset, size, prot, flags, file);
 	fput(file);
+
 	return addr;
 }
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..7b177b44cd3c 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -11,6 +11,7 @@
 
 struct drm_i915_private;
 struct drm_vma_offset_node;
+struct file;
 
 unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      u64 offset,
@@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
+					u64 offset,
+					unsigned long size,
+					unsigned long prot,
+					unsigned long flags,
+					struct file *file);
+
 #endif /* IGT_MMAP_H */
-- 
2.43.0

