Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDaKOGd8cGktYAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 08:12:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F7B52A59
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 08:12:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A71D10E6D2;
	Wed, 21 Jan 2026 07:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sc6x7chn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FADD10E6D1;
 Wed, 21 Jan 2026 07:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768979556; x=1800515556;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=+JnZtu9A2g6pVyfjLKJx8d3ov2/0LqA0i96Kbb8Gys0=;
 b=Sc6x7chnwfwe2mv9HEyAZny56JSdeCK6V7qLjHVRPSnWBp0B6LEa3Eh8
 s55kmZWYuJwXd5T3emjyooHOJoi5oYEXdV+YOD6zPiMbcTxxNvA2md90W
 E8iSM06evjuaqIMoMOYJERb25L/P4FE24h/3aWgqLUKZsL9ymDFhsX9om
 2h5h2b1UBded/u5LyO8+IGoKw6A2jFx/u7znddBRwGUmQR7341cBRb7g5
 9nzt9hoVRzNYYTz8qybYCUvUtUpaiWU3SbCuxRERIcc07K1YEu2nQvjYX
 Mr/0Hzb7Rfs0OUcRJHO0/I+ery0/y+NZ+s01VoHHFgiQZ/EszL51kfydv Q==;
X-CSE-ConnectionGUID: u8yq8y3YTYenZLcQ9rp55A==
X-CSE-MsgGUID: IGwhnqVdTAKfENDQ4EKMew==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="92869243"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="92869243"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 23:12:35 -0800
X-CSE-ConnectionGUID: wVPZkvKCQWWYyHTDQsRr8g==
X-CSE-MsgGUID: gsLbLzevSQWbtVMiwwTjiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206000667"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 23:12:35 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 23:12:34 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 23:12:34 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 23:12:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=raSH200teHeRJ0pAPxK1kY38SnofFQRczDI248IU08q25Kxp1IYH87mrj6+mY36OOubRYo3EB1t8jkIW5S+/YONkebFnF/tF+tigtX2WCSFFdCzOBv1KepFU6h0zuMrEz6eWaT4krmq6GiYLzaZlSwjyJnwEpP/tqw/mGyAGlxrl0egZED/IwqD8YmDACjnFPhqCKG0Nb/OmfPl6z7ktO9CBvXGqfSJ9hFTF57gER3CTDKOdpqujHkiuBD4HxhQ7S/w+2VnQEMcwZZ3NDd2idVsL8IkR29yaiRIVbYUAM69QANt+gl8nMblIS44+lMFbojkKRuC7amivIQlgkEIeFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hKATxZlxCqUC42wtnGphc/RzcgrWlSvY7nM3W9oeuOA=;
 b=ZOIZV8gYY5GlK1fMV//toiAnCcBVq7iJiofrV2dB0RqpPASxfRMzCPtJsoYam2ABlzwGxM7u1JCoqjheEjZHcs53J4Tz12nLwZItvnU8sY/gSkLQG1yYqX4ybaInVjxuGEQz1enST0C0NAyXbjpFlfcTk/qx/VkjXAhYg3WgJsF55Xf3ohg3rHP55WoL7HKjyG7sAaXRGnMijHzAdMiaprYLQHFy2vsIAZqH5O3KUxZ4Cz3NqdhxyTruKpMeAW+LtaSbzK2/4Pn3QY7t12rllMLWeOGLY+UWLL8NtMpcjEer1CYODNCWOx8sTkoTb++q49hUgd+tkuGAb9rKaWkC5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB8265.namprd11.prod.outlook.com (2603:10b6:303:1e1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 07:12:25 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 07:12:24 +0000
Message-ID: <555f1c56-0f74-41bf-8bd2-6217e0aab0c6@intel.com>
Date: Wed, 21 Jan 2026 12:42:16 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: REGRESSION on linux-next (next-20260115)
Content-Language: en-GB
To: <bigeasy@linutronix.de>, <hansg@kernel.org>
CC: "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <linux-rt-devel@lists.linux.dev>, <sfr@canb.auug.org.au>,
 <ilpo.jarvinen@linux.intel.com>, <regressions@leemhuis.info>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0218.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1f3::13) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|MW4PR11MB8265:EE_
X-MS-Office365-Filtering-Correlation-Id: 236ed245-5a91-4dc5-2022-08de58bc6d45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aGJyaEpmdnR0TFc4QW96a1JGVENxUHR4cG9OcDNDNmltVjhvT0JJV1p3Lzhy?=
 =?utf-8?B?R1AwcGt6UFYvNXlPRzdqcll3czhTVXVFbHdiTHE3S2NrZlZwUHRpcEhpYUlm?=
 =?utf-8?B?S1A5TjVmWjhPNjFtWEhkWVkzUGVQVFI5YWwrVzk4azNSYU0wWVZnYW44QVFH?=
 =?utf-8?B?SEcwUW5mTVc1MTNwZjRRQ3RiSmY4OUdsNCsvQmxVamFqV1h0OFpMOXZRNHhi?=
 =?utf-8?B?eVNXQ3JBV3FNNnVwQkgzdjdPejJWMDVTL1V1eTQ0bDF5b3dwVDArazBqQ2Fm?=
 =?utf-8?B?TXY2SkR1YnBnMkh3OGc3b2w4ejluMDZhcFNpK2RuU2lSTE5hOGFQNlcxeUQ3?=
 =?utf-8?B?SlBkRUQ2bDEvZG83dkorUktBeVpUZE8xS211Z015cW9Ld2hYRHNaU291SS9x?=
 =?utf-8?B?TjBNVkNQTmJpMFN6cFFNWmNtMG4xNmVlS09tV25jdHRqSXFXY2VualFGRnpM?=
 =?utf-8?B?SVVEZjBBNjBzMHdNOUhsMWpEREIzNDYySzQxdXhYN1AxVHlseFIxaUZPUmZo?=
 =?utf-8?B?SUFHd05qRzIwWjJFY3BlaUJocnlQNUNoSHRaZDVMNW1lNFQ4RnhYb051QmNC?=
 =?utf-8?B?UDJKTmYxdDFRZ3FFVFphcFg0VHBtd0tHK2FjWWFVcGlzK1RxQlVJZGw5Vmh6?=
 =?utf-8?B?OUhxbzVSN0hSYzlVZG9rcVMwOEpzVW1kTUVUOVVPb1VSY1MrTHB0czNPUmhV?=
 =?utf-8?B?S3JERnNHWnpKei8wSWpQUmwvZXlkd0J4SnlWVFBOSndwQlU1QUkxbjNydXRt?=
 =?utf-8?B?RFdycHgycGYrM3F6STNnSlF3SHdWTjVzQkN0ZEdhVzliUzBNUGIxWkU5YUhG?=
 =?utf-8?B?S0htSkdicGJDa2cvQUFKVzRHeUxwVkpKY2gxYjFHS2p4Y25UNnNoZ3g1RGVD?=
 =?utf-8?B?Z3RENXRQam4zdmpHMjd0MnJoRFBnWjRJWGt3NndrelNxdEZQOHJyOXZLM2JR?=
 =?utf-8?B?eEpEVWtWa0ZSNi96RDJGQzVjZGx4UC9YTmNmemUwT0tFZXRIMHg2NWpJU1NT?=
 =?utf-8?B?cW9NR2lKTVVyOVQ5K1lhaGJFdDRsY3NaMWpFaXFibmVMSHBtZWdsZGFuUUtM?=
 =?utf-8?B?d1ZQc2h2WEV4K3J4VHh1RENSK0hHM2p2b3VES3dHMzlDV3RiUUVISEdQNFRn?=
 =?utf-8?B?ZjNnU3VvTkg4ZDJoOXJ3cmhuN202TTNyYlpwUnBmaUR5dmVRYlRpdmpkREFC?=
 =?utf-8?B?RmhITWxnczA5Nm1SWThuRkVsUEplSngzcnVDRnRVK01jUFNyaTRma3BwdGI5?=
 =?utf-8?B?UUNFQlFKaURMa0JldFMrSnB5VGFTREdXZ2N2cXpic1NYWjNLNGk5MHZ5V0Vk?=
 =?utf-8?B?M05tTnRCSC9kNUZJK2U4dTN3c2thcDExemR1QjNYL29KanlCMWhYSXgvTHVR?=
 =?utf-8?B?UHkzdlN5QkZUSHJZQVBaczE5RzR6ZUE2c211cTFGeFNNeWw4SDdBSzhqM1lj?=
 =?utf-8?B?dUxTb1h4dVNNZkE4N2hzTEppWWRxVkhtUTlIcW50L0FvNThRNElxVVEyaWN6?=
 =?utf-8?B?SmUzZDE4eU9VSis1UUYwajRQaVRwWDVQMUQ1WHljMGR5Zzc5ZXlOUFB5Yjhs?=
 =?utf-8?B?VmpxdjBWcTFacWVRMjlNaC9IcWwxN21pcFh4d2Z6cytBdGtuUzl0Y2lpR2xT?=
 =?utf-8?B?aE9oVzU5WUhKYzF1Y1U5aThjRjZkOG42empqbG8zSjRlUWFJL0M0Zy9Ka25C?=
 =?utf-8?B?T3RkSXFJSUhab0U5VjJiWS9vRjRUQytNanBDWnF1Q1NxVmNRMDZEMmFEREow?=
 =?utf-8?B?dzJEQnV1TVdVTCtNUk5oV1JRUW1KZlh0K0dYNFUySWlZTEdkb0lybjI4VXZK?=
 =?utf-8?B?ZldzQiszN3hyNDFRNWdYS1M1cUpObXNkVmFVSFV1QUdtWHVhVFpyTjVDd0ls?=
 =?utf-8?B?RkVudjJwbjhlNE5DbzdWd3oxWkdtS2w4a3lFWkVHL1hqQTE1L0RiR3V0Y0NY?=
 =?utf-8?B?Z3hUUlhraDQxQTQwUzlEQ1JJejBnVzJIU3hPNCtQditwZ3ZVQ3JBUU9mTGYv?=
 =?utf-8?B?Z05ramZSQlRPOHI5N0xKSjU5b0Nlb2NmaGlqcTRRbGZEZTBGNGxzNlhNc214?=
 =?utf-8?B?R3U3STQvUy8xR2M5Rm52SXd0cnlidTJxVVI5K1htaGpnN2pNRWprSTBQR0h4?=
 =?utf-8?Q?ikuQ5nhzMjXzxJ1jbsQgOWGvQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDhYckpOVDIwekR3NWpxL2tJbTdoQ2hBTzBzMW9ZZ3hpM1FTRUVkakFaNGRn?=
 =?utf-8?B?ak9ZcGpHcTdiYjRZNE1oQUxrMnZtdnF6b3EvWitlL3h0cDVVejhnY25zYWhI?=
 =?utf-8?B?SDdpTlIyZHdnVjJRYWI1WFdpZkphcUsxNUovOUVKRG1saVdRL1BRS3ZHbkMv?=
 =?utf-8?B?bmJzajZXU0w4NGRaemRyNG1LTGdlTWlybDNpdzlZVmloVDY3NHVscWwvRzV6?=
 =?utf-8?B?bXk5UHE5a1FraU45SityU3hTRFAwVGRZL044dVJsLzNXUmFwcklmZDJYMGtn?=
 =?utf-8?B?Qm9KT09Ba0F3RmZnTStoeXZlT1YvY1E3OEhCOXZsRFFHb1lTZU5FL3g4OXho?=
 =?utf-8?B?SGVlTmt4aWdhR0gwOG1BZWkwNmhOQXNEcUgyWk90Q01BOE1KN3ZBV0kyMmhm?=
 =?utf-8?B?a1FrVWdibWxZR1AzNjZQSm44ZXpFZ1c3WkVoam04MUU3S0VXUVhzMkh5WEFl?=
 =?utf-8?B?aWV4OWlRbTVkcGtzbEtaak1MV1dVSmxKZC8xSDladnZnVWZUNG9oWU1aenQr?=
 =?utf-8?B?aFJuYWhpQXVjUjd5SVYrNzlidHp5N3dra2RKQ2Z4VGNSSW1XNGkyVDlDWFAz?=
 =?utf-8?B?WlgxdGF0RU05TUNWd0RiUHZsK254OUV3OUcra2VVbDU5dHAwRk1ESlBKQWpC?=
 =?utf-8?B?dUdvd3NqamYrS3Bsb1VKckJTdU5USENONEdjaDVjWkRGRXhOT1Z2TkozRHdC?=
 =?utf-8?B?VmN1OVVRWUtOOU5Oblk4NGdFV3NvWURTTUlKK0V4QnhMNS93WXI4SmYrQWhQ?=
 =?utf-8?B?ZENrL2RSSUlxRWtUZmFwRjlaUVhaL1hzZHN0eTgramRBLzZvYVlhRmthU0kx?=
 =?utf-8?B?NU5BaTVjZk9xS0V6V2hYbXpVVUEzK1FOejFZRUhPUXFkU0JiMXYyODBqS2Nj?=
 =?utf-8?B?VjRnV2xURnhGbzZOdnU1UkZWUGFrVy8yb29aeCsvSzFRT0dELzhEcXNReGRv?=
 =?utf-8?B?anh2aHNEWnIzdzlVTnJPaStLdDRLeGNiY3hFRlEvajBYU1ZRUjR1cjc1Rm9w?=
 =?utf-8?B?U0ZxMEp3T2lTbGdmejVuclVJZGZmaFBLYXBxVklPaWw4OG11di9KUVBHa2s1?=
 =?utf-8?B?cWRMNFo5SjVCeGx4Zzk5WUhPWmZDd0pjUzJiaXpxKzVGWTduVlJ4eVI5V3ZK?=
 =?utf-8?B?alRWWGhvOFp1ZEdabVhWSUdJUnJaV2RNMElvZXpFQUVSNXlWOENyUitHTm1M?=
 =?utf-8?B?M2JGL3pHQmpBRmVYL2E0akM0Z2Y1M3I1OUk5K2NrOExPWFBxTFJwUVMvZHQ1?=
 =?utf-8?B?WFZsd1JTSEEzOExtRTAzQ2tZaDc5Mi9yQlN1QzdvUGkxcGdNR2twQmV5Tk5K?=
 =?utf-8?B?R1RsMitvbExaamUrcnBmeXdZWGhjUlZkOCs3R1h4UHpuRktrOWtxeFVoVnVv?=
 =?utf-8?B?YkwyYVpjVjIxblZTNkkvcmJHYnBiQ1JJeGFoN3I3bkl1dHFvZlI5VGxDeFFV?=
 =?utf-8?B?U0s4aHMyanlwVWFtOW5ldDRjWTIvN1pSbGdPdDB2VFV2ZUhObFU5bGNJT3JQ?=
 =?utf-8?B?dGRURUxJSGtvR3NKYzk0K04zbXFXcnlYdW1qUkduVmVrSHhDelFWZTVYM0hN?=
 =?utf-8?B?L2IzMnNuQmZQWEcwa0poN2wrL245amNwMnEyank3c1lZb2o4WWsyemZkQlJJ?=
 =?utf-8?B?RnhpZkNWV0ZXcmFlZHg2cHdDMWtWTEd1Ynd0eE5VelFmUVpHUk53MnJtbXlL?=
 =?utf-8?B?aHNwb1hocGdsdjY3Z01PaEUxRlpTRmJ2MGZES1ViTk1IcVR5emNpWmh4UWVL?=
 =?utf-8?B?aVRwaTZSRDRyZzNjUXNwTUdkOWFFNi9TcDZydDVUNS9hNVE4VUFuT0NFNkVB?=
 =?utf-8?B?TDE2MldrODBzbEtQU1FSdTY4UlovU3lNdEZ5S1lSU2FnNmJWOCtEQXVjY1JG?=
 =?utf-8?B?RTBLUUdveDhGNU1DUC94SmEvRXlPMzJlR1IvcVQ0NUkxTncwdE1IOFR3Qkhv?=
 =?utf-8?B?UU9LbEVESkFFZWFQNjJDRlc5WjNTRzFDNkM4TGd4ZStscnF4VHZPRG4yRWsy?=
 =?utf-8?B?Q3k5VzhaaG1mQnYrWmFXRVlObU0wUFhPTEdpcVpibTVLR01zdTd2MXJ6T2Mv?=
 =?utf-8?B?KzZhM3phVVpPZ3lkc251bEJ1WGVMWUFha0NQd0RUMmpZTTFuQTBXUjBFZkpy?=
 =?utf-8?B?NzEzeDh1K29KSC9KU3FuN2F4dlRoWFh1cHcwaS9jb1JCYWFxYjBIUFFLSUta?=
 =?utf-8?B?aUpuanYwK1ZxSFVzM2xzcnNKQVZqVlVybm83WW5YVVFVUGpUYVRsUnVQOU9u?=
 =?utf-8?B?d0tBZmxxaTArK3IwRWZTaGRWZk1MQWJ5cmNDOG0wTjlvcGo4QjZlaDl6dnAw?=
 =?utf-8?B?Z2JNdXJZL1Q2YWdLa1cwWUk1eCtJR1hhL3hQY1QrSHI0UnZxYjU0MnBRNlY4?=
 =?utf-8?Q?dLNbnZTCw8+lAsxQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 236ed245-5a91-4dc5-2022-08de58bc6d45
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 07:12:24.6782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CadOWOOzzeKo1HRWG2lkNdzAeIgjsMgroc7jMLVXzOG9DyC/Xi/xciNXybEqGqSkjfDoHTxRnb/a5scZPJVjoRateSFxe37tfZLs6VIZeJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8265
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,01.org:url];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 54F7B52A59
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello all,

Hope you are doing well. I am Chaitanya from the linux graphics team in 
Intel.

This mail is regarding a regression we are seeing in our CI runs[1] on
linux-next repository.

Since the version next-20260115 [2], we are seeing the following regression

`````````````````````````````````````````````````````````````````````````````````
<4>[   23.283209] ------------[ cut here ]------------
<4>[   23.283226] WARNING: kernel/irq/manage.c:1502 at 
__setup_irq+0x5a0/0x850, CPU#0: (udev-worker)/246
...
<4>[   23.283398] Call Trace:
<4>[   23.283403]  <TASK>
<4>[   23.283420]  ? __pfx_int0002_irq+0x10/0x10 [intel_int0002_vgpio]
<4>[   23.283442]  request_threaded_irq+0x117/0x230
<4>[   23.283467]  devm_request_threaded_irq+0x7b/0x120
<4>[   23.283480]  ? __pfx_int0002_irq+0x10/0x10 [intel_int0002_vgpio]
<4>[   23.283501]  int0002_probe+0xde/0x200 [intel_int0002_vgpio]
<4>[   23.283524]  platform_probe+0x43/0xa0
<4>[   23.283541]  really_probe+0xf1/0x410
<4>[   23.283560]  __driver_probe_device+0x8c/0x190
<4>[   23.283576]  driver_probe_device+0x24/0xd0
<4>[   23.283592]  __driver_attach+0x10f/0x240
<4>[   23.283605]  ? __pfx___driver_attach+0x10/0x10
<4>[   23.283618]  bus_for_each_dev+0x7f/0xe0
<4>[   23.283639]  driver_attach+0x1e/0x30
<4>[   23.283651]  bus_add_driver+0x163/0x2a0
<4>[   23.283669]  driver_register+0x5e/0x130
<4>[   23.283678]  ? __pfx_int0002_driver_init+0x10/0x10 
[intel_int0002_vgpio]
<4>[   23.283693]  __platform_driver_register+0x1e/0x30
<4>[   23.283705]  int0002_driver_init+0x1c/0xff0 [intel_int0002_vgpio]
<4>[   23.283719]  do_one_initcall+0x5e/0x3a0
<4>[   23.283747]  do_init_module+0x97/0x2b0
<4>[   23.283764]  load_module+0x2dd3/0x2ee0
<4>[   23.283811]  ? kernel_read_file+0x2b1/0x320
<4>[   23.283835]  init_module_from_file+0xf4/0x120
<4>[   23.283845]  ? init_module_from_file+0xf4/0x120
<4>[   23.283885]  idempotent_init_module+0x117/0x330
<4>[   23.283926]  __x64_sys_finit_module+0x73/0xf0
<4>[   23.283944]  x64_sys_call+0x1d68/0x26b0
<4>[   23.283954]  do_syscall_64+0x93/0x1470
<4>[   23.283969]  ? lock_release+0xcd/0x280
<4>[   23.283979]  ? handle_mm_fault+0x1e7/0x300
<4>[   23.284006]  ? irqentry_exit+0x17d/0x7c0
<4>[   23.284024]  ? exc_page_fault+0xbb/0x250
<4>[   23.284039]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
<4>[   23.284049] RIP: 0033:0x7f298172728d
`````````````````````````````````````````````````````````````````````````````````
Detailed log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit aef30c8d569c0f31715447525640044c74feb26f
Author: Sebastian Andrzej Siewior bigeasy@linutronix.de
Date:   Mon Jan 12 14:40:13 2026 +0100


     genirq: Warn about using IRQF_ONESHOT without a threaded handler
`````````````````````````````````````````````````````````````````````````````````````````````````````````

Looking at the irq register code in int0002_vgpio.c, it seems the 
warning comes from

         ret = devm_request_irq(dev, irq, int0002_irq,
                                IRQF_ONESHOT | IRQF_SHARED, "INT0002", 
chip);

Looking at the history, this flag was added by the Commit 8f812373d195 
("platform/x86: intel: int0002_vgpio: Pass IRQF_ONESHOT to 
request_irq()") to resolve another issue.

Any proposals for solving the WARN_ON?

Thank you.

Regards

Chaitanya

[1]
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260115
[3]
https://intel-gfx-ci.01.org/tree/linux-next/next-20260115/fi-bsw-n3050/boot0.txt
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260115&id=aef30c8d569c0f31715447525640044c74feb26f 

