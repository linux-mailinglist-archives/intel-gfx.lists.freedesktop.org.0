Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAR2H/l2nmnCVQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 05:13:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EE8191869
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 05:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4AD510E680;
	Wed, 25 Feb 2026 04:13:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O/O2kAaz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2011410E680;
 Wed, 25 Feb 2026 04:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771992821; x=1803528821;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C9akqr1p82j6IfyUpiMxeewlbx7qXdsvmj/GTnipb9I=;
 b=O/O2kAaznGykIyUweNtfwiheOCIh635b2XWb85zW//Q3Ohow5XgYhQEO
 SwjGjbnNrqrcTfbe+6bno5CkGg0ewIhaPXH68DvDHhfCeNXja/IuAT8PP
 XPyBduHPYyoJ77VPS5MpCNk3ZwJRTSmBL5uzhZreu3KWIyrGJvsD+8sWI
 QL1Bj1XcT1wdC55NpoKjJqzRzdMXnRVljosxCLHs8bhd1QenoSSNgc4++
 i8iQgWiMJunEW+M82e0VHYykWJSvLTZNwH6iMV2o/xwJSL7aMUftghUQu
 nuAMoxwZTmoKLW2ZKX1CfQFPXWdT9mozpfMT2coh8oEH5C2ksg3f4Gn8Y w==;
X-CSE-ConnectionGUID: JMo+CXZWTxOr+L00ZClLwg==
X-CSE-MsgGUID: jhHf5gAKQsSvX7UTtieMSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76891268"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="76891268"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 20:13:40 -0800
X-CSE-ConnectionGUID: cPW7yvxnTiWvKEea/XUF3w==
X-CSE-MsgGUID: Hx74epWHTfeU9Ts0U8oCLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="246667467"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 20:13:40 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 20:13:39 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 20:13:39 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.39) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 20:13:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bjQNDbUGt+slJ3IPCXN2vxZjZTUZ79jEUwA+M9aFCc1TzoPEz7Vrq3KpX4JMOd3JfoBFfTM1bRbF8wcKKjTz4ub52wVV5TUqJdWQMFRTyD9poAEfG9nXHHs9T5S+LvJNphQzI7cCtv902OuI7rlEhUpaGy7YfypYMcKN4I7Bf9j8/V1mykMAeE/9vV0vzyUhyTwjRFFjqnYiS4EyU4HYuTj2BVk9J12vRTb7fQHCIWayI0DelTkVeuYLeV8m6zKRl+a6IGu1R4/4/SL8pxOkB2d0hY3orEybNkErUJNhCbjac9P+PsnuEXATby3cPJ/xsSR8GhfnjuTvryZOTAIlZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0rVN41fCD+D0Gzk1tE0d+uPF0hYTu6wUOHUHn9bllnM=;
 b=CFSH0oGCqPHjzhaqOpvJkjuPpgFKnDtH7CibLafuGafZc24wmwwvyA5+hoQAYdFOvCnHM6l3F1HADqno3kUph2kXslDoPg1f5BqQuBf4hrxx8dFoLZFBU9XVzFVaxkgJCrAYuwYMAsd1akPneke+bswBedg688JvMzCHS54IgQppgsvJolHfSY5EiC9yQnN/W3xCdyIpc52mb11LN8m5RHF7leMiScglj855rDcmLkvTi4lZtkzJB4j1Ivs1BWhNtDbxcs04OLxkUxv81fYXYzqCiCwbBywXaJKU6ket4It7HiynrWDk/5JCuMoOiv/QngXiQJEd/qS8SmgcGP2bwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7055.namprd11.prod.outlook.com (2603:10b6:303:22b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 04:13:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 04:13:36 +0000
Message-ID: <40fbaf0f-525c-4f38-bb26-3f662a0a1a0c@intel.com>
Date: Wed, 25 Feb 2026 09:43:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/psr: Repeat Selective Update area alignment
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-2-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260219130743.1232188-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0151.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7055:EE_
X-MS-Office365-Filtering-Correlation-Id: eb44d2a1-9e38-42be-1eed-08de74243f3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y0hKMnhzUHMvbS83TjJqb3RuVkM5cG9iNUpLcVU0cW9waXVON0NQYzRWazRn?=
 =?utf-8?B?WTdVMGVRTjBYWW1zSjdVWXBrM1k0bm52Q3UyNlVLczBFa1pkdDI4aFpZZEk2?=
 =?utf-8?B?dU5yYmxPZ1hkbEpOZjBkOE16cnpaOHZKV2pFMzh0TGlQTjBlQi9sY09nLzR4?=
 =?utf-8?B?ZVN1ZFJkMmkvNUhnamxLMHRIOVZWcm1FeVI2SnhZYkQ5bjhpdzVKbDg0c1E2?=
 =?utf-8?B?WVBJUWhIYldvS1BjQVM0VTRXbjN0ZEtkL0JqbUhVNm5xanhNR0orUXNSa3Jr?=
 =?utf-8?B?ei9uZ1ZQTmY0ZXpNRjhhcjVhQm5CV3d0clZlT3RnMHFDS2VaY0hQaHJQY2pX?=
 =?utf-8?B?cFRGc3Q2YUo0dVJNN1R2aHJXejJabENTeEdjWWNta3NTa0Y4eCtoWk0rZ3Ju?=
 =?utf-8?B?RmxFeVNwaFZIVW04akpyUmU1VU1aQ2JSZ0xGc0NxVXFQbWg3T05hSVkyVk4y?=
 =?utf-8?B?ZmdIWmxTMkkvK2R1TjVNS1BWc2J6SHV1QUNnTEFjdEtJVS9HNWk4RERCeWIx?=
 =?utf-8?B?bkgvTGxTM0E1OHlaV2RYR013Mnlxc2U0dVRCWmFnWVl1eGowenZOK2hkZk0z?=
 =?utf-8?B?emw2WXVDaDZJb2hVb0REa21hM1ZOOThycXlaam5lNUNkdjJmNjFjdFRSTXcv?=
 =?utf-8?B?WXBQS2thanNyYWg3MnQrZ25oc3ZmUkIwczNCZVNFY2taSE1RN1VFczRWNHpR?=
 =?utf-8?B?aFd2U25oQ29GRkoveElYZHhwQTVkdXZ0RmhneEVHRU81MHRQRVFhT21USzZp?=
 =?utf-8?B?MHdTekFGcHBJUDAxN3FPVllIL2pvZ2xsdzhuK1JJTTArekloMzk4VVZUcHVh?=
 =?utf-8?B?UGNiTHAzQTJkU3F3Q2trSUY2U1NBM0gwUzB4QWdZQUUrZ25EWlc2NnlsNTZW?=
 =?utf-8?B?WkR1ZlJLZDZxZ05DRXRDNGhIWlBGazFjV0pmYmxoUy9tamhUbTBCZlVTRTFn?=
 =?utf-8?B?Tk1pMGttbHp6VmlOQmVaMEFMb0k4TzlkMGRwWVJqdWw4NVA4T1QyWmtIY3JF?=
 =?utf-8?B?UUZaQ2lIc0VFOHlmUGNtUCtaWHd3V1dmUTA3NjUxRGZ2TFN4SjFmTEhiWStQ?=
 =?utf-8?B?SkdXYnB4K3dWQ3pONGVvMmZ6QnIyMjZ1SUw0MHk5U1RBU1hzMzdNaHNCQmN6?=
 =?utf-8?B?UmQvZTJKMDdpSFQwMzUwaFV3SkRHaG1JM21ROWdnM3BKMVRiMGo3bXRDdDB4?=
 =?utf-8?B?blVaMSt1bXVCU1RTSzJiS3FoTlRuVFcxaFRYMzFaTmRYVTdKc2xFcGp4M05I?=
 =?utf-8?B?NGowUGhDb25YQlRUSUU4MkZBQld1akx4bnlnWlBMemU1U0pDZ0ptWmdRZCsx?=
 =?utf-8?B?eVdmTzZUckhuRktnMmV6cVhHQmQ5OTVPMThvU1ozNUtTWDRVVlFHRFFjS0lO?=
 =?utf-8?B?OXI5TUhXTk5JTHRJUC9qUnh0RzBMbVl2d3g5dFc5Rm5takRCaXFuWEpXSTdE?=
 =?utf-8?B?OHJKM3B5bklmcktVY2MrVGMrTDVVMGNId0tKSllEeXVzK1lPRUlGNXVNdjB3?=
 =?utf-8?B?ZEgxZTR0S2xySjFURjJMVnZ0cTFvUS9xZE1JRkVnZHExRGpyQUpybWk0cTNi?=
 =?utf-8?B?aHZKckJLN0RwNEd3dUd1UmdpRjJianRZUDl6YXBZa0ZYdHJWdVRxWm1pSi92?=
 =?utf-8?B?dlBraFNCRVFwNW51K0dEcVdMdjMrSkQzcmg5dEVLK1RYZUpOdEZ5dGU1VTIw?=
 =?utf-8?B?azU3dHhBb1YwbDlDQW1lcGN0TnhZbGcvQWxFYVJLdGNTWk9TWXJUbXpQZnM5?=
 =?utf-8?B?Z09UeXlWV1QzMmFVSFRtSXBmWno3OHpmTDRzQmpXZ01TV2ZqMEJIUUkvc1lq?=
 =?utf-8?B?cUZPSmdMQmhOMWM1dC9lYS9YRlhZRDJKcnRBSEx2TCtrWCtwTTJaMTcwdU5k?=
 =?utf-8?B?SmVRTmJSOVZFQXVvK3ZvdVZnVzRtbTcyOEVXR3hJVU03ellLdk92UFR4TUVv?=
 =?utf-8?B?M29lQXg3T0pLKzhkM1U0UEVzYXNtUGt1WU5qaDRuYTJkcDhYSFk5STVGK2l1?=
 =?utf-8?B?N2o3d3FJZ2M1UlM4UWpTVlFxRE55UHpiTXNCSkNPQU1UbTIxVVIyR2IvN3NM?=
 =?utf-8?B?SVBNblJLVWtwVlBYdDZtYVZSUnl3Wk1qaFdMbVF3djl1aWxIcWhaTVY3bkVm?=
 =?utf-8?Q?rA5g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SW5pdWptU3ZYSmNCaUtGTVEycFpMSXdIZzVmYmFIOWxPRE5vSERkQTRuQjd3?=
 =?utf-8?B?dEsxbk1CWFZ5dGM2Vy9nUTUzeEMvcitCclF4cEw1RWlvSXZZMkVKbm96S3c2?=
 =?utf-8?B?emVrdi9KL0xQQ3luREYzOXhnSXV6U0NOMlExR2lzemlSdmhrS1Bnc1NNQU91?=
 =?utf-8?B?L1ltbFJWRitrUzVQVHRLYjE0a1Q4cFl4MkJKRVZKakNZakhVOGVTdWtTNG1L?=
 =?utf-8?B?SmUwZGo3UHZvOTczZWhnL0loWGpPTUwySlp4cjZLeWREUThxM1J3TG8rWE9F?=
 =?utf-8?B?NFNlYjFHSnVOTDF4eEx4eG9nRm1LMm9meStUQW9jZTZXcGREUUg1cmM5L0xz?=
 =?utf-8?B?YUltRmVKb3pMUUdiMmZBdnlvc2hhWmZ2TnVoY09hdVM3VVlBOHJRN2g1R01L?=
 =?utf-8?B?KzR6cG52QXcxSk9wUFA0Z053SjZTQW9EWHhURC95VFJ6QmZ2dTRrRzd4QWpy?=
 =?utf-8?B?SlVpK09mU01XQW9nVW5uSlN5M2h4aWFMZWFxSThsWndDNDFXVWJHd2dhU29W?=
 =?utf-8?B?eUN0QU5CWVVCNzd3VkE4cnJaUlk2VFpzNWlsc2N6ODh5dlRzWWlpTjdUOFZi?=
 =?utf-8?B?aUVVRHF2UkI0WGRkQ213b1BaT1lzOGpTUDF2NVBISHJNNVdDWHpvS21KL2Zt?=
 =?utf-8?B?QXBYb2d0OUVJY212Tjl5Wmx4QlhKVlpFTldxUTgyZ09PRXBNVkNKRmtUcElZ?=
 =?utf-8?B?RVZNdGJpeHFXcmRuQ2tlanNuZ1RNNnl2bFpBWnA4OC9tbThqNFhESTBEWWsw?=
 =?utf-8?B?V29EMkhiS3VwSlNhanFEaE5zQUtJMDFvL1JkWVRuVnY1czFTWnZEY0U1eVZr?=
 =?utf-8?B?Q1hiM1VuNTdEeUxaa05LZUNJamdCZWpvdUw4MjJIemFPUkFBb1F4dm1FV3RP?=
 =?utf-8?B?Nk01RElQYXc1UU12a0s5eXIvZm1QUy95UnBVSDdKbFIvQ0NWdmQ4SmZmdjdQ?=
 =?utf-8?B?Ym8vb0tpdzJEdWlrbGFOQndocTc5MnBiTE9PS3BiNjFyejdnZmp0YjZJWEgx?=
 =?utf-8?B?enIzNDE5ZERnV3VFdTVialRkeXJTcFNLNlZlUzE4TEhRTThhaWhaVWlJOUtX?=
 =?utf-8?B?dlU3dmV2bEptNG5sZUgrS25KeWFoT2hKcTRMTG9wcjZtTzlkWklsdFR4U3hv?=
 =?utf-8?B?Nmd5MDZrZlk3MzNjRFA2VVg2THIzTlJqRVphUUg2bjlETHlkYUdWWHJLcU9k?=
 =?utf-8?B?UXNYck9FazZiVytuTzdtN2MvS2NLR2pielRNMWtBaXk4TXZrZzBBN0E5ejQ1?=
 =?utf-8?B?QjZtdkw4SThKT01SRW5NWlV4VVdtSUdpWE1pcTErWlVKeEZ2eXRpUFJja2Ro?=
 =?utf-8?B?MDBjZE54S3FmYTE4Y1c5amcxVEFQMUc0STdRTmxia3VFOHJnZ2VkcDVxNy85?=
 =?utf-8?B?cG94NTkrUjdsM1dlbmZKK0hJL2NqdmRhRldSdzNlTUhCaVZyb2loT21OY25h?=
 =?utf-8?B?ZUdiSDVTTW9IWG9rUmVkZnljcXBCUFpFM0d3b0hWSzBzNlZrSSt3SlAvb1BB?=
 =?utf-8?B?V0JBcHVDUTYzV3pjVjU1a3dyK0h1Q2NLWHFXS29sSmp4QURXbHZXV1RoM21h?=
 =?utf-8?B?VUlYTTJHaktBc1R1aExRT2J4NnA2UTNBazNjS3ZOZ1hNRTcyOUVyWTVFYjBE?=
 =?utf-8?B?MVR1L1B6eSs3OGxwajNuY3ErLzBlR0NnQXR4SnRnYlczVlRuS2xwNkFES2lT?=
 =?utf-8?B?LzdtYkdqakFmT0xYRTQzdFZ2Y1RYVnFKNWJWYXc1ZGduVlZsYVV5M09NNHpU?=
 =?utf-8?B?Wng5S1RnRGV5ZlNyQTl1TnFlc1R6eWZDYWNacXdnKzJKL3RGQUJyaGlRUVZ6?=
 =?utf-8?B?WVJGRGRuaFN3aEI4MEJNSWJRcHlPd21VTXBwb0RmR25sVFA1MDkrb0lvYXhq?=
 =?utf-8?B?Szc1Rk93VnI1YUthR3JBM0xlOG1rWld4TTRBOHJZdGE2d3hnRk5LQ2JheTI1?=
 =?utf-8?B?bzdGUDladzRsckZPb3QrcFhORVlSYk51ZzgyaUdkWGU3YldhTW5IRU9FUXdj?=
 =?utf-8?B?K1VVdHBRUjdiL2tTYlJ5dkpqWUUrcmJaaTN2WExGbjJhLzYrLysrejFBS3Jm?=
 =?utf-8?B?SWZlemF5WENmTGtPNzlrNjNTbzY1amE3QWg3SHFjRWRqSkY4VzJrMzB4Ynk1?=
 =?utf-8?B?UjNMemNFbWwxajQwbTZKSWdOU1FlSWZBUGpEUXp3VS84S1hwem9UeksycHBB?=
 =?utf-8?B?SGxhaHZJQnMxcHNjRnNnb3F0K1FjeG41NVl3UVY3cjBIZG8zeXp6SXJxMW0w?=
 =?utf-8?B?bjNEOEFIWWNtV2dkRzBPZUkyblI0Y0FNTEJSTzRyaDVodlUveHpEbklsSThM?=
 =?utf-8?B?QkZSZzlaRWh0OWpaOWFzYzdRZTdsOG1pMkFUNG85RU43Nmt6emJ6MlU5NmNa?=
 =?utf-8?Q?y3ftDdghXHNZXtfA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb44d2a1-9e38-42be-1eed-08de74243f3d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 04:13:36.5435 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HgCq3FKBxdNJHfuw088mg9GMGLdRW3Ah1SpbsBF3lqls1phHWrJ2tM/jFKkobSrYzMAZsLsWbfir+0o5cD7fgQaAtpaYnZ37B2TKTACiOfk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7055
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E3EE8191869
X-Rspamd-Action: no action


On 2/19/2026 6:37 PM, Jouni Högander wrote:
> Currently we are aligning Selective Update area to cover cursor fully if
> needed only once. It may happen that cursor is in Selective Update area
> after pipe alignment and after that covering cursor plane only
> partially. Fix this by looping alignment as long as alignment isn't needed
> anymore.

If I understand correctly, intel_psr2_sel_fetch_et_alignment() tries to 
expand the current su area so that it includes the cursor if it was 
partially covered.

Then the intel_psr2_sel_fetch_pipe_alignment() tries to expand the su 
area to align with the slice height/y granularity.

Hence it is possible that after aligning the area with the slice 
height/y granularity, the cursor which might have been outside the su 
area, has now become partially inside the su area.

So the iteration makes sense. However there are couple of things:

- if the cursor was already inside the su area, then even after pipe 
alignment which expands the su area (y1 decreases goes vertically up and 
y2 increases goes vertically down) the cursor will still be inside the 
su area.

  In that case we dont need to do another iteration we can exit the loop.

- cursor_in_su_area is set and never used.


Perhaps we can change the loop a bit like:

bool su_area_changed;
.....
do {
     bool cursor_in_su_area = false;

     intel_psr2_sel_fetch_et_alignment(state, crtc, 
&cursor_in_su_area);     // Cursor is now either fully inside su area OR 
fully outside.
     su_area_changed = intel_psr2_sel_fetch_pipe_alignment(crtc_state);  
   // Alignment increased the su area.

/*
  * If the cursor was outside the SU area before alignment, the 
alignment step
  * (which only expands SU) may pull the cursor partially inside, so we must
  * run ET alignment again to fully cover it.
  *
  * But if the cursor was already fully inside before alignment, 
expanding the
  * SU area won't change that, so no further work is needed.
  */
     if (cursor_in_su_area)
         break;
} while (su_area_changed);



>
> Fixes: 1bff93b8bc27 ("drm/i915/psr: Extend SU area to cover cursor fully if needed")
> Cc: <stable@vger.kernel.org> # v6.9+
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 32 ++++++++++++++++--------
>   1 file changed, 21 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5bea2eda744b..331645a2c9f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2688,11 +2688,12 @@ static void clip_area_update(struct drm_rect *overlap_damage_area,
>   		overlap_damage_area->y2 = damage_area->y2;
>   }
>   
> -static void intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_state)
> +static bool intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>   	u16 y_alignment;
> +	bool aligned = false;


Here also it would make sense if we make this su_area_changed. (ofcourse 
after alignment)

Hope I am making some sense and not totally off.

Regards,

Ankit


>   
>   	/* ADLP aligns the SU region to vdsc slice height in case dsc is enabled */
>   	if (crtc_state->dsc.compression_enable &&
> @@ -2701,10 +2702,18 @@ static void intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_st
>   	else
>   		y_alignment = crtc_state->su_y_granularity;
>   
> -	crtc_state->psr2_su_area.y1 -= crtc_state->psr2_su_area.y1 % y_alignment;
> -	if (crtc_state->psr2_su_area.y2 % y_alignment)
> +	if (crtc_state->psr2_su_area.y1 % y_alignment) {
> +		crtc_state->psr2_su_area.y1 -= crtc_state->psr2_su_area.y1 % y_alignment;
> +		aligned = true;
> +	}
> +
> +	if (crtc_state->psr2_su_area.y2 % y_alignment) {
>   		crtc_state->psr2_su_area.y2 = ((crtc_state->psr2_su_area.y2 /
>   						y_alignment) + 1) * y_alignment;
> +		aligned = true;
> +	}
> +
> +	return aligned;
>   }
>   
>   /*
> @@ -2945,15 +2954,16 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   	if (ret)
>   		return ret;
>   
> -	/*
> -	 * Adjust su area to cover cursor fully as necessary (early
> -	 * transport). This needs to be done after
> -	 * drm_atomic_add_affected_planes to ensure visible cursor is added into
> -	 * affected planes even when cursor is not updated by itself.
> -	 */
> -	intel_psr2_sel_fetch_et_alignment(state, crtc, &cursor_in_su_area);
> +	do {
> +		/*
> +		 * Adjust su area to cover cursor fully as necessary (early
> +		 * transport). This needs to be done after
> +		 * drm_atomic_add_affected_planes to ensure visible cursor is added into
> +		 * affected planes even when cursor is not updated by itself.
> +		 */
> +		intel_psr2_sel_fetch_et_alignment(state, crtc, &cursor_in_su_area);
>   
> -	intel_psr2_sel_fetch_pipe_alignment(crtc_state);
> +	} while (intel_psr2_sel_fetch_pipe_alignment(crtc_state));
>   
>   	/*
>   	 * Now that we have the pipe damaged area check if it intersect with
