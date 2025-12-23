Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF30CD94E9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 13:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6B2B10E110;
	Tue, 23 Dec 2025 12:39:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kgqm7jln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2EB10E0CF;
 Tue, 23 Dec 2025 12:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766493540; x=1798029540;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QamfOYwCds1ZPmHhAINunILbKMWDtszgW7JN1lQ0M7Q=;
 b=kgqm7jlniaYCvdFKHLdJe47XnGsx8mFJ+ldNC2wQf83zuIGac0spH/FN
 lN0j53n2P9mXdvL79Fo3qA/s9OwjUFe2NRN0gJbIE5FwxtYZi0AhTgQbo
 vZcLrWbNn9fMiJcKV9U/FgIdsLGC53KIdVfELW7vgyU5koU/puPVZlzYP
 KQt4YYcQPUoPtIfXj9qEaCQNrbKCGiXf/AKq6EM7kH5pFNb0GKx2zLAjD
 2EpI9Hd/HJmZUkAmsE3YQQVOaifuxqifM9NeVKr0S21s+HJUWJorAjmqM
 TKIYVKsSChoUEM+bNJe+EUFrEHdtxlL1FjOjVYSu8WxJ+cVXCJrDXGk6W A==;
X-CSE-ConnectionGUID: apDs6Yv1QueC2JQnWgLrDA==
X-CSE-MsgGUID: Im2141YPTDiOelur3Za36g==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="68096676"
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="68096676"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 04:39:00 -0800
X-CSE-ConnectionGUID: IdS0SHJ6Rc6U8YLz8BaN4A==
X-CSE-MsgGUID: p75x2w7jQgCEbSraZNLUBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,170,1763452800"; d="scan'208";a="199753138"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 04:38:58 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 04:38:58 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 04:38:58 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.67) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 04:38:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gRJSmZOgJWX6+S3CQ6sDp5+jKKHtw31rc+L3J3cRMt5gel22nHuIAjKzQnhbrdekiVyABWYoE8X6/Br+Y84i8cg0k4Fv/rlg54IRtiqfXVnsDuyF85byL14Q1Me+Hju5ayc2UftaQr4URLHJ2c5mc75iBNU/ubcKM3MymtyppySzIR53mlQVC2coITPUr5MoAAPDHLQ59lrhHMXgebs82Z/Dn1NE4W+ydhCgzRUvfwtIKMXkqxjZISHMbMyjp7ND1rfpOXlTBaCZuF65bwMsKcVyrtadNAVN5me92gABo8wdqeZj1vq5EfJsz4+UpP9ZlmfC5CFSVGfwVIPlx1MT8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G4vBPcxB69USGy5Q285hZF+6GPgoewPTR7WDZD2PF1I=;
 b=rlJtA4dI7aM7m8vNhAwiNJ3ADG5+ksBOMqRqk0khDcE315s3EmDtygycjR6yv+gjK5/HgZqZ6ay1pjYld/55YfRZpWl4TItg6KCrsoHk07G4LgiWEwPlPVGYB1tJEWr8bBErvsdPiiEKvXfz9pVADJu3Hq3GPjbNTRicCFfBt18nsaE+aSOnxH8G8G3rzPcZsyU2syj6kUcW5AbLt1c4xICxUtomZ5cHDfxnpwGkCRGUq80yUNC8yqD+Pgenpp66LlHkFMFELv2uyRM73Byv/A1cn2hKwnESif7zv53St99/HOtYTjStq2ySZm3+5IKFYXAtTshdC7Klcg/6ZjyxvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4824.namprd11.prod.outlook.com (2603:10b6:510:38::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Tue, 23 Dec
 2025 12:38:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 12:38:55 +0000
Message-ID: <f12aa40d-29fe-4ba0-a2a5-1433d8bf975f@intel.com>
Date: Tue, 23 Dec 2025 18:08:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251222044443.2443411-1-ankit.k.nautiyal@intel.com>
 <aUk_5GZQrDIDN8fK@ideak-desk>
 <7ee37384-d461-4732-ba8a-5429af979802@intel.com>
 <aUpk5nfyg-qYn2Uc@ideak-desk>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aUpk5nfyg-qYn2Uc@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SG2PR06CA0223.apcprd06.prod.outlook.com
 (2603:1096:4:68::31) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4824:EE_
X-MS-Office365-Filtering-Correlation-Id: ccc7ad88-7aa2-47b3-c00e-08de42203c47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVJpQXJmOUF2c0phVTBLZWR6b2kxaEdKUkN4cm0xa1FoSVBlUElFd1VsSWUx?=
 =?utf-8?B?RmtxNEVHNGVhNHRkTDR5a0xYek9FSjJRZ01TUXFvRUFxaUxwWTlhR1lhTG1O?=
 =?utf-8?B?T0pUN1ZRbjY1cThFMnN1a0h1NVloZFhjQy9IY2lTNmptdEx2aE5lU1E2MUFK?=
 =?utf-8?B?UFk5RjNaNmE5eDBPWlBLVWJNaU5pdlVhLzB4d1daY3RUNEsrdUlOaVVKSUIy?=
 =?utf-8?B?cXo0YXV5RVV0QmlHdzl5STBBcUhTQnJyZ3ZjTEhacmdpM1VXNkd4R1M5a1VF?=
 =?utf-8?B?MkpmSkxLNEUrL3hvZmtjckRyL3ZBMUVKS0JiQ0pkN1psM08zemM0QVM4eWdD?=
 =?utf-8?B?S25zNWpNWWMyVTlWMWc5a29ETEFNUDB3VWdkbkFTUlQ1VnEzUGpkOU5QMWlQ?=
 =?utf-8?B?T3R5aG5mdG52NHNkczdCU1FqclNiUlN2b0JoTFZYTkQzR2t6aTNoYm8xRlBm?=
 =?utf-8?B?UXljZnJjdzNDUW1BOG1aL3NqVmlXQTRCbjAyQy9CSVZrWE4rUVdwWWV2emtW?=
 =?utf-8?B?QkdWOWZGYTFWRG5oY1NGUUVZc3A3Q1VJdzJRWTlvRTN3bVVMOUwrZ1ZWVUVU?=
 =?utf-8?B?TVdyVUNUZ3JaN2hRb3k5b2JoTkF4R21seVd2RTgzUFMxaFd1RkdFS1VnQk16?=
 =?utf-8?B?T2xqSnhlMWVEQkxoczlFSzhUdFNuUEVCT2JxY0l4UzY3Nm1BOW9wZ2NsbGJ5?=
 =?utf-8?B?U0ZwNFlsZEw1WFdxbVJSbUxsV2ZiUEw3cGExQ1h5cmVXRkx5a1JmUVp4M0xz?=
 =?utf-8?B?WDN3MTA1SHRVaGdlQ0FSMVB4VlRYclNjRklOWlluZVJ4b0V2SFB6eDBLazM5?=
 =?utf-8?B?bkhLeHhoYVY1cjl6YW1TSnhHWHNUeUpuaGdYSnMzYmZpT0d5SG10MFFpdm5S?=
 =?utf-8?B?VE43RjZKdjAwNkFERTlKU0xHYjFVdnZYK25ZdW9PTFFkQThzM2ZOUDhBdzdt?=
 =?utf-8?B?SDY4NTgxTExvbTQ3K0FXYjJzbk9sbkNLejgwM21paVkxbWJxZDFISi85ei9D?=
 =?utf-8?B?amo1MDl0UDY2M3ZiNFpOalFiUTVsVmQxUUFMMGpBWHhuS1cxc1lhbjlsVWxB?=
 =?utf-8?B?em8wOENOdzIyWit1U3hVMEk4aktDRzdoZXI3bkZRak5GMjBQU2FVUWFYcFR3?=
 =?utf-8?B?clppbnpoQm8yYXhKemNDUTF2QWRWQ251NVNmU0ZMcmtvRWJwL0l2eHpQYmRr?=
 =?utf-8?B?dHp5RXNpU2VPYktGTnQydllHQUlvem82NUl4aXVoMXFac3pFdnl6aXM2Zkdu?=
 =?utf-8?B?MDZYWlFqaHc5azV6YWt6OXhxZC8vQUlpNkhxYXVhV2NqTDVGQ216ZkFRMGtJ?=
 =?utf-8?B?MkQ1YW5NUGUzSTVFelJ0T3NQTG5qME1GczRpZkpYYmluZWs4YVFnWjhOSG1N?=
 =?utf-8?B?c3htQTlvbDhpcDJ2bVoyN09tREUrRGRBNHVnQ21rcGNqeU9qUHp6emdEeFZX?=
 =?utf-8?B?eWZEY2RneW5tRDBnemEyZjZqVlBCL3o0NGI0NlRCZFNyWlRjQWdkU25KSnAy?=
 =?utf-8?B?L2tzV0Vabk1GbGhuYTM3MHEwUjhSa3BRcTN4dXNvblkrWjZ2WWZ3RWxsRzI4?=
 =?utf-8?B?eWExZ2pucDQ0aElxUDJtMHNnYjR0M2FJc3dvc2RRbWV4b0gyWmlQUzVTVXRz?=
 =?utf-8?B?U096QjNxc293OUNHRkQ2TEpzVUV2KzFUQkdPSHhXWTNRN1R5N2k0T3FteDU2?=
 =?utf-8?B?dnVpYVpzTVVaaWFQQmYzcVpIdTlCWG9vcXJDY2ZVSElMdEdKZlEwcXY1RTB5?=
 =?utf-8?B?YWdpQ3Y3NEdScHUvbzRJVmNuLy9XMHNCV2Z6Y2o1TlI1TGRUNVQ3MUVVdU1G?=
 =?utf-8?B?d0FkcDNzWWtXMWRBUDU5ZzVJVE42ZjF5TG1ySjBFSGxTa21lSXUrMFFBVWx2?=
 =?utf-8?B?aldmSnRJMDVqQmxhNkgreUs2a2l4R0R1WDJXbTF1djA5dk4xVndJMktmdTJX?=
 =?utf-8?Q?Ozq4S3OSpJmn22xymQTqnMgTu0ndmfKO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTNHbUJRVVJ3YytnOWxMYjlncjFCN3RVbWRYalVLQzFHdVQyZ3JvU0pFeTFr?=
 =?utf-8?B?SnRBUU56cVR0QURaeDBUUUZOTEhTUWl0REwybm1zc2pWaXNEaXJ0bGNKRyto?=
 =?utf-8?B?OXdrNWJ5N0xZYXZrUnJreDRybG9RelVXMngySDJ5b3lIcGo0QVdBb0ZiczdH?=
 =?utf-8?B?VVVVcGNXRmEwRmJLODdveE52bld6dzJRSzVSRFVjNk1aendzYW5TRUFzY0lv?=
 =?utf-8?B?RkxCUlFTYjljOXNWSlYyVHNsZkRjZ1g5VGx3bFBDVTBscEgzZ0NWMUNrRTBN?=
 =?utf-8?B?WFRvSVMrOTR0dlBvY0NvcjVlVVJIdWpSUFkxdFFjK3JZMG9TY044VDl2M2Qv?=
 =?utf-8?B?cFBFUmdGMTVrNXZvSi9OTXdoR0xnMi93MmVxdnAxQWlPbU1pQmlkMytvcGZL?=
 =?utf-8?B?OWMxbWFuVzNRV2hBZ0laNDdtMUZ4cmJZYkRubnFkZFVURmR3UGdrVUx1djBK?=
 =?utf-8?B?TFp2WXNkanZ6bWY5ZkJTcTVweGZZOHhJbzg3VmU4N0g3dmpneW85TzdpQ1Ur?=
 =?utf-8?B?NllXbFhKc1YxMEt2NEhSak9nWVVpSnBJblZBWXZwVnlOM0RlaTFoMTFMakMz?=
 =?utf-8?B?NEtORjl2d1JKaXpJNWNydDhlT0hGK1JSc1hpd3VwSVlRWlB5eTZPNmNKWUtT?=
 =?utf-8?B?N3Y0UllDZktYU2dqTzVPYjhnaEZhdEoxRnZBbnMrN0xibVZ6U01DUkhBaHpa?=
 =?utf-8?B?b0dTdXAwRDBLRzU5ZzhCZEhzR1NlNHNSd1plMUxoTTRPVTY3ZXk3cXNzUzZD?=
 =?utf-8?B?ODFKQzQrT3VJYVhsWmJXd1JJb3BUR3ZCUi9sWWY2K01KNTdlUjRkRTlvL1VT?=
 =?utf-8?B?VmdOcWROM1krV1h2dVJsaEZwRFdvU3BrY1RXemt3OElTS0Y2MGlxL3dSR3J6?=
 =?utf-8?B?KzByTWtYdXAzanE1bGhveU1ONmJpNGd5Q3I4aG5IanUvajV3SHNhalcwQW5V?=
 =?utf-8?B?aDVvSHZsZzQxQmVpWkVLZEZUZmtXODUyQ0ZzMnZ0U0JETnNzMk5YVWMxaUx6?=
 =?utf-8?B?aEszUTlvYWxFY25BQ0J3M0YyNmxkeVV6MVlpNnQyL0lKRGd0djVxbmNLQ0Jy?=
 =?utf-8?B?U2o2VzljZkhlM0VyUitaTG5iMUUrbGRSM0NFQ3ZQZHA4V2F5VFFXSVJFMVZj?=
 =?utf-8?B?L1NTUlZub3h6Q0pGeFEwK24xTys0THBJaTJLQk9ITnZsNFJXQ1M4V2VZSG83?=
 =?utf-8?B?dEt1NmdSMU5TbUxaZ3grT2tGbEhCVWlWOVdlSUk2cEJMUjllcDVPS1cxbDIx?=
 =?utf-8?B?U3RDRGRGQkJQQjk5alR2K1h2c0RtUTN4YXhJczBFTjhjZkY1cVI5VGlQOU5a?=
 =?utf-8?B?NTJOZjk4NVJ6aEF4eEgzSlQ2Q2NzTCtZUzFKYXJlUlUySkN3dEpaTzlyRWJN?=
 =?utf-8?B?NkJWUUhtaE5PbWdNdGNPZVVlSnNRazFqUVY3cm9OWG5yZSttSmM3V0l0cnI1?=
 =?utf-8?B?aGUwRVBxc01mNzJ4TkhRTkh1eGpCSEJSN1A5L3BJY0hMRWdVQmw5MnJ4UWlm?=
 =?utf-8?B?MkJ1WVgydkFnL0NKQUVmZk9Jc3M3VWJscDd6b1VvTW0xYVJtYmd0UmREN0dQ?=
 =?utf-8?B?K1Y2OGllMVYvK3BoRnJzQWpXUnVSY3Y4NWxBdENQM2o0aFpXanNlVmg3MGl5?=
 =?utf-8?B?R0did3RpeWkrMVp1Nk0rZWVmUUJsakxiWVorcmx3MC9NSHgzWHlTbHdvUVdm?=
 =?utf-8?B?SFRvaTRmVXNtWExXWWNiZFZNVWNjOFczQjZKYVJtcVE2Q3RjYUFJY3Njd3Mw?=
 =?utf-8?B?YWwrSExrTWtFc1hnM3dnWkRTWTQ5MGZBdENROFNxVDF6NUZ2aG8yMkxDOGYv?=
 =?utf-8?B?T3VDclYxMHBndU1jM0NUc3U4emhGSFBvdGd4YkZkaTZvMVhpdndaZWJSemdz?=
 =?utf-8?B?cGh1dEx2aEJ6UXdMM2VrQXhNOHFZRTJVblhlU0Y5M045MjJLV0drUXBUOEo3?=
 =?utf-8?B?KzI4eWdjRkVDV0tJZ004MTBBWDNNdTlYMm50VTViZjUwWWVnN3N3TDdFZ1A4?=
 =?utf-8?B?NmVLM3lnd2hVWG1jZFNTOWhnNEpVbHJZaXhBNUNaYktXT0hpbERkV2tsYytW?=
 =?utf-8?B?NkpnZVo3cVVONms2VkhOMFRtYjdnb3FYbVA1YjExbWY1ME9GOGVsL2FHQ3My?=
 =?utf-8?B?WUNmME01TFFkL0NVMDkyaFpEalBka1R5elZudzFic0xhTStiTzAwcTdwbTZG?=
 =?utf-8?B?WTJXVk5rcDVpeHhZaUFuYWJFWjA1TXUySDlLU2pPbkx1eUVkR2pmRGpYQkZa?=
 =?utf-8?B?RW1ua2JVUzg1enZjQTZNSGl2S0hWQUxsenA2Q3dwalcvdWJDQ1lZMm8zTHl1?=
 =?utf-8?B?NnJnbnQrVDBBRkp0aUZFeUw2cVFsN1c2N0czdGxLY0dZcUtLMkJXVU5HbkJF?=
 =?utf-8?Q?nRC/IuzlT+R0+rO4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ccc7ad88-7aa2-47b3-c00e-08de42203c47
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2025 12:38:55.2270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fp5otZT9oK0CAKC0sh6LDwcTBHzNF+Ut0FPVFE4/OvzH3gEBXx/lEzelWYbnvknsfZAgxSJkiySIEga65PGYwbbxFd+rzuXZCVNhLKBHTno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4824
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


On 12/23/2025 3:16 PM, Imre Deak wrote:
> On Tue, Dec 23, 2025 at 11:05:59AM +0530, Nautiyal, Ankit K wrote:
>> On 12/22/2025 6:26 PM, Imre Deak wrote:
>>> On Mon, Dec 22, 2025 at 10:14:43AM +0530, Ankit Nautiyal wrote:
>>>> When DSC is enabled on a pipe, the pipe pixel rate input to the
>>>> CDCLK frequency and pipe joining calculation needs an adjustment to
>>>> account for compression overhead "bubbles" added at each horizontal
>>>> slice boundary.
>>>>
>>>> Account for this overhead while computing min cdclk required for DSC.
>>>>
>>>> v2: Get rid of the scaling factor and return unchanged pixel-rate
>>>> instead of 0.
>>>>
>>>> Bspec:68912
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_vdsc.c | 45 +++++++++++++++++++++--
>>>>    1 file changed, 41 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> index ad5fe841e4b3..b91cd009be9d 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>>>> @@ -1050,15 +1050,52 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>>>>    	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>>>>    }
>>>> +static
>>>> +int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
>>>> +					      int dsc_horizontal_slices)
>>>> +{
>>>> +	int dsc_slice_bubbles;
>>>> +	u64 num;
>>>> +
>>>> +	if (!htotal)
>>> Should this also warn as !slice_width below?
>> Yeah can add add warn here..
>>
>>>> +		return pixel_rate;
>>>> +
>>>> +	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
>>>> +	num = (u64)pixel_rate * (u64)(htotal + dsc_slice_bubbles);
>>> Better to use mul_u32_u32() to avoid the casts and 64-bit x 64-bit
>>> multiplication.
>> Ok sure will use mul_u32_u32 to avoid casts here.
>>
>>>> +
>>>> +	return (int)DIV_ROUND_UP_ULL(num, (u64)htotal);
>>> Both casts are ensured by the compiler already, so no need for doing
>>> them explicitly.
>> Got it.
>>
>>>> +}
>>>> +
>>>> +static
>>>> +int pixel_rate_with_dsc_bubbles(const struct intel_crtc_state *crtc_state, int pixel_rate)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>>> +	int dsc_horizontal_slices;
>>>> +
>>>> +	if (drm_WARN_ON(display->drm, !vdsc_cfg->slice_width))
>>>> +		return pixel_rate;
>>>> +
>>>> +	dsc_horizontal_slices = vdsc_cfg->pic_width / vdsc_cfg->slice_width;
>>> The above looks to be the same as crtc_state->dsc.slice_count, aka the
>>> slices per scanline, could you use that instead?
>> Apparently we are not filling dsc.slice_count. We are filling
>> dsc.slice_width and the pic_width.
> dsc.slice_count is computed for the given encoder and dsc.slice_width is
> computed based on that (as vdsc->pic_width / crtc_state->dsc.slice_count).

Sorry I got confused between dsc.slice_count and dsc.config.slice_count 
(we do not fill this).

I was also assuming we already got 
intel_dsc_line_slice_count(dsc.slice_config) merged, but that is still 
to be reviewed.

So yes you are right we can use dsc.slice_count, which will be later 
replaced by the intel_dsc_line_slice_count() AFAIU.

Thanks for clearing this up. I will make the suggested change.


Regards,

Ankit

>
>> This parameter seems to be unused, perhaps can be dropped?
> It's slice_count what is computed for a particular encoder and the rest
> of DSC parameters are only derived from slice_count the same way for all
> encoders.
>
>> Regards,
>> Ankit
>>
>>>> +
>>>> +	return intel_dsc_get_pixel_rate_with_dsc_bubbles(pixel_rate,
>>>> +							 adjusted_mode->crtc_htotal,
>>>> +							 dsc_horizontal_slices);
>>>> +}
>>>> +
>>>>    int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>>>    {
>>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>>    	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
>>>> +	int pixel_rate;
>>>>    	int min_cdclk;
>>>>    	if (!crtc_state->dsc.compression_enable)
>>>>    		return 0;
>>>> +	pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, crtc_state->pixel_rate);
>>>> +
>>>>    	/*
>>>>    	 * When we decide to use only one VDSC engine, since
>>>>    	 * each VDSC operates with 1 ppc throughput, pixel clock
>>>> @@ -1066,7 +1103,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>>>    	 * If there 2 VDSC engines, then pixel clock can't be higher than
>>>>    	 * VDSC clock(cdclk) * 2 and so on.
>>>>    	 */
>>>> -	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
>>>> +	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
>>>>    	if (crtc_state->joiner_pipes) {
>>>>    		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
>>>> @@ -1084,9 +1121,9 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>>>    		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
>>>>    		 */
>>>>    		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
>>>> -		int min_cdclk_bj =
>>>> -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
>>>> -			 pixel_clock) / (2 * bigjoiner_interface_bits);
>>>> +		int adjusted_pixel_rate = pixel_rate_with_dsc_bubbles(crtc_state, pixel_clock);
>>>> +		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
>>>> +				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
>>>>    		min_cdclk = max(min_cdclk, min_cdclk_bj);
>>>>    	}
>>>> -- 
>>>> 2.45.2
>>>>
