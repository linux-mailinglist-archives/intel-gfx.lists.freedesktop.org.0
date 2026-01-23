Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEXHA7Ncc2l3vAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:34:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 137DD7518C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891B110E00D;
	Fri, 23 Jan 2026 11:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="It61d0Gb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E0810E00D;
 Fri, 23 Jan 2026 11:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769168048; x=1800704048;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5uN0Vuelc0Mpniv2vl0rxfDAeMPjem+IUolkss1oMf4=;
 b=It61d0GbOgqBK53NoHOYz+2RjPFK8qb85xAtc3lCehUESRFxCssWmbWl
 6T70NCxOHtutvnevjz9i60ijgJXhY7+xMlL2nK5cejqWAfCRvZtVvd4Ri
 HPYv6g4hCjXe/5hmaLEP8de5gkjy0k0n8nqBUJLtwsEw75J7PN2zmm3Ar
 qCn8HpFb6oR9AQr9absdaGfJ6rP5ceNVKeOim62lrt9d3UwVmHwC00ay6
 anUy5gMuQVL6I+/Hg54bMcMbpOWVSX0YXQhvpka/KsrDexdY/AeBqvK8C
 lpfsTyhpAM8vbUufXmB/k4njID9TOyGQxCIl7m9bCoBi7kmAA+6sNOg/t g==;
X-CSE-ConnectionGUID: MPajf9NlSZiNl8VkH/5/zQ==
X-CSE-MsgGUID: Fj+PcBGCRG6nxAsWezwvaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="80726933"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="80726933"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:34:08 -0800
X-CSE-ConnectionGUID: po0LoGDiS9+kb1Fb3u4QmA==
X-CSE-MsgGUID: pv1rW/giR3mn2Cn6JJlL8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207032034"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:34:07 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:34:01 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:34:01 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.42) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:34:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uWOm9droIpQbnzF0IQ0vrIi1BtFpHJNWp9ftP35Em9x7Qoz5g9SD0nly2RGPj5omAye+5NfOz9FQ7a1C27cx8BASJksWz5gfOA4a3x3UY1EHLM/Hp6vgGbB2vzVCcbQH8qyufH6r8ZZ5W5wEW0D7GCun/wM6gP3uashMYm/qyaJRyGCs+kefQJoPs7gCsR4QTEOdQYrDGkiaOoyxsOyu8ZacRiJ3S6ltPecOvmy+5xZ75YEci60kk2azP6/zifdoKGnyYPv/KVleEScGUmQSZpj3RzcsYjYLX1rOoje6fHr8p+sdY1dTBM0PWAIulZZtI256x/RfA8k/7MxmSFdAuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AYrk4stIWsmYY6flLvrP/jA9S5WDQEbJGplxuJGKwHo=;
 b=fijbBppAG5GcscmIh4GHkAFAtIyGqZTrXRAW8kbxciiFdFfNHVlIKRFOJaNpYkSYhDQpngntOgGCvsWTWC1cqICqtvpSyArqxaF9bYBlsjzA5WP0YjUU2Sc95hCxu+MzgTCKzFwVzkZghCqhrUidntwt2RlcJG8KnnmyClPH6yhGm2FTOR4aCYyliEcbTNf51dCeEokYjWoxsCvPIwzjZiL8eff6JQi5nU1xPrqUmriOrqIt1QiRaJAuktCPMjVAPv6eJSrq/dhhLRtYpfLwiUvURHxyaP8NMYStPhCMjSaNESXUVTdttjS+LVNmby516t4L3/dIjTwpVrRFCO3FRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB6813.namprd11.prod.outlook.com (2603:10b6:a03:47f::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:33:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:33:58 +0000
Message-ID: <b849b093-328e-4397-94b7-cfe634b54d15@intel.com>
Date: Fri, 23 Jan 2026 17:03:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 6/8] drm/i915/psr: Wait for idle only after possible
 send push
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20251223105120.21505-1-jouni.hogander@intel.com>
 <20251223105120.21505-7-jouni.hogander@intel.com>
 <904618e8-d4e5-4775-bc42-69cf7a7d2c34@intel.com>
 <3e45764d418ec570574bd8af6e4c33aeef7b2b8d.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <3e45764d418ec570574bd8af6e4c33aeef7b2b8d.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB6813:EE_
X-MS-Office365-Filtering-Correlation-Id: 872ceff3-3d15-423d-0871-08de5a734c88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEgrMCt4ZFZGUWtXaDlqRXhSemN3YUJPYTc5QTBHMmdpVnk5aHV3SnNmbHlp?=
 =?utf-8?B?ZGF3Q0V6VFpHWTlUWm9wWi81ZHQ4ZUhreXFnTDU5Qkt2d0xGVDVOZGxOUHhB?=
 =?utf-8?B?QVdBUjc4S28xTmVjRU95V1Axd0NuSm40S2pFWnpFSkF5WmdsZWV2R3JlZnV1?=
 =?utf-8?B?K2JabEhVYVUvall1dGxxL2VjaVV4UEdIc1VRYU8ydDJjaXg3ZmNzS2Mvdjhk?=
 =?utf-8?B?c01hVFFjNTVRSHdTcG9VeXBRK2lmcUNzbFIxOXg3NTZ1Uk9UblhDY3Jwa1U5?=
 =?utf-8?B?MW1vOUxiNytDTnBYMGJrOXBDdWRPV3k3aHJtUzJjQlNIVVdMRFMzdXJzS29a?=
 =?utf-8?B?d1dnODNkV3RsWlkvYUc1c0krK2hISVZBNk5iZVpoaG8wTWEzQXc2K01lZmY2?=
 =?utf-8?B?a1ljNnRXNWxITkV0VFh3NkRvKzlOKzREOVBvSWh3VjRLek85UWsyVGtqTUNt?=
 =?utf-8?B?NzJ5azBCbTdhT0NTNE1VOVUzVGRUZ2pFeElvVTlkRmk5Zy9MU2k2bjlieXpk?=
 =?utf-8?B?Nmd6TkJWSXZUVG85K3FxWFFka1lrVjZUNEZGUmwzMkVVSm1qVmNuVWcxT3Fu?=
 =?utf-8?B?Umd3ZUlhSk54bmltQjBoYUVoWHN3MWh3ZG4zc3B6ZzV6RTdNcXFIbG5WeW5i?=
 =?utf-8?B?RzQ2aEVjc2VPMFBHNUpSdXEzMFFaUnJzeUNrK0RMd0VNZkRNeVZMSnl4SVB1?=
 =?utf-8?B?LzdYZGpLK0lraGFuRmpubW01V05TRjF5MHdQNUM0azlhcHlhM2M3empmM1Ru?=
 =?utf-8?B?UWxVdnVVS2lJQWlpdHdFelA5MnljRm1QTERLNlZiZ29hSTBrb1VCSzdxZFBD?=
 =?utf-8?B?SkZORXYvbHpOVGV2MXh0RjRDaTFSOFFwb3dyQjlHNU5kUDlSM3BqR1hVRnRj?=
 =?utf-8?B?NUViZktzc3RCU2hXSEtPeDdDMDJrTEJERytxakF0S213SnVyMnV4Ui8yRng0?=
 =?utf-8?B?TFR2NUlEVlBydTBWS2NQWUQ1ZTY2YXpZNmVYbEhBcnJkcXN1TEJEZlFNL3NO?=
 =?utf-8?B?Vk9RbW5FUjZZb0xtWDlHVXRrVFhQZGJEQzJpMVZ2cVB6bmk4d0JCQ0JxTUtp?=
 =?utf-8?B?TGtmaHNrT0E4VkJpcGtBTHpZOHMzOWx3allidGxZZmdDVVBteU1aZWpiTDJ0?=
 =?utf-8?B?YUhVanB2VTc4QjZwTWxibXh3M1FWa1pTU0lMcnpINkRwSkt2c1FEdldsU3pi?=
 =?utf-8?B?d3Q0UzZKK3dUTXRva1gxS1R5N0xRREYrZXNXdXA1ay9oYVJheEc3OUZ4azA0?=
 =?utf-8?B?WGo0dDF2aEh1MWNhNHp6QWJpVDFQUzhVRDdQbWRTbXYwbVVBTEpPWUR4dGND?=
 =?utf-8?B?NXlRMHp1U0NuQnZUdkF1NVBONG55eUtXV1g2Y2pSMnlqZTMxWmFRcWszNHR1?=
 =?utf-8?B?L3pXZnE1U2VENjIxS2NtUVp4UU1YS3RRaUVuVDhSU0h4clQ0emZEc3lhVER3?=
 =?utf-8?B?NWFGalBpdlVYdmdpa0VRalphZ2VTTUJ3NDBPQVpjeHB0bkpmcjJQYzhFaWUv?=
 =?utf-8?B?c2VGeGtDRVowL01CNjRCT1VGeFVIYTR6YnFqczR1ZEV2N1g0dzlQb0ZPaGNV?=
 =?utf-8?B?TllrZGpseC9VTWVRTExiRnY5TE04TmYzcmpBSldOWDV5VkVvY1J6RjFOOWpE?=
 =?utf-8?B?RHQxcXE4dmxzS3ZTYUNPbU5YS2JvU1d3dithTVdGcHducVFVUjN6dGlVVmpC?=
 =?utf-8?B?eUV0WkZQTEVDM0YxUGx6d3c0QnVjeEsrU1piVGtLVUl0SXAvNS95bnFiZ3R1?=
 =?utf-8?B?L1QvQTkrZ3M1M2lwYVF6NDVYS0R6ZDVpYWYzeGpCRjFaTndzcTJZbVpBZmh1?=
 =?utf-8?B?L3BSUlFXdng1OWFPRFpydTY1V1dsMWpLWWlRbHlCZ2ZNdU9SRWlCWmx6eUZ0?=
 =?utf-8?B?TGl4TzlBRWM5aUZYQnlxMUxjYm9pNlNiZlBVSW9NTzZoUTZ4MXhJTlNiWmt3?=
 =?utf-8?B?Q1FLbGs5d1Zhd2JVZWRwejkxd3RnSjlXK2NaQkFMOWNHaWVxaEQrUnNhRE5D?=
 =?utf-8?B?UEJKNXE4RHZnUkgvUTFabU91NUZocjJ3cmQxakFVZUpPWjBaWlRwTUV4a0Vl?=
 =?utf-8?B?b2QwU0x4dU45UkdkTFRqbldqejJTamh4U3ZsYTZxemVUQStVajc5cWxXcVVG?=
 =?utf-8?Q?1EDk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlJxdW9XdkMrUU9tcGphN3lxZVF5aHJ6My9iUkJVRDZQWlMxRjVONXZweFY3?=
 =?utf-8?B?TXVXMzhuSTZVbjhOVkxKUWxuSjZHZmNGWWhFdGYycjlxOU1nV1JxSHFwT3B1?=
 =?utf-8?B?b3RnOWNsYUlqVUhhZ0dJQnFvdGw5RHdVRDJCSTV1MndkaVdwRnppVTA3bW9G?=
 =?utf-8?B?c1BhbnJOOW1LN1NsY3czZHJ2MGdacllXNE11VVFTYnpRR0FMYmdZQXBZREs2?=
 =?utf-8?B?cUg5MUNqekpJU1FkaHBvVWNuOE1BTTdZV2VYK1B2TUtOUUs2V2c3aFA1OEU0?=
 =?utf-8?B?d29WMTBFWFB4emIxZS9DQnlUMmZEa0I3eCtlOU8wbEJHeVRxTmVoN016aHB5?=
 =?utf-8?B?UkFxZFBrWi9SUDcveGpSbkVsWDViUnBwc2ptcXRnWWhBczhrUVZxTUNNQnNl?=
 =?utf-8?B?OUh5NmhyR0NubklNVExuNVV3bGRHOURaNGJUSnNBQkE4djVtWkQ2cEQzQ0Va?=
 =?utf-8?B?aTV1SkwycDkxNUlHOFNGRktxb0h5QW5NREQrYkNDbGVxa0R1V0h0YklERmV2?=
 =?utf-8?B?OHd6cFg2RzJDNkU4d1FCazJKZy8wdDFHVDJkR0U4QVdGSFA0UzVzVCs0VTVJ?=
 =?utf-8?B?TG1aT0tBaDVZbE1yNDFIbEhOOHBMY3cyVEpRbWNRRWtYR3NNZ3pCOWZJTHE2?=
 =?utf-8?B?T1hsQXZRRVg5MHdobndIOVFhd09LQ3B2WGs2ZUdLbGdHRnZYNG41ZjhsR0hu?=
 =?utf-8?B?V3d3NVFkeDJYZjlBR2p0QWNCNlpTRUlaM2FyM1F6eGFPZkwyK1M3M1VtNFlK?=
 =?utf-8?B?bWJsakhISjJ0eXBxa0VWTFByWXdoajlGWG1iZ0NTeWRBMERnNnROQTFaQi9G?=
 =?utf-8?B?YkpsbFJOSnJ4RUxsTnFUOGFDcVBmTms2eWJxWkUwbkRIczgzSWc2WDY2a1Q0?=
 =?utf-8?B?UGxiZ1h6TTZJeDhreEhkSXVUaFRGbExHOVJCVU9xREJYUHNEbVVOQUZ5S3ZL?=
 =?utf-8?B?K2xiZ1cvVjkxQ0E2UHEwQ0xPaXUwcFA2TmFoUXBXbzNRNDgwckpwc2JnWDd2?=
 =?utf-8?B?aHF4NzA5djc4N3RaNWl3S1NXb2Z2OE1kMzNKVTR0R0ZJOXY2OTNNeTR5dGhh?=
 =?utf-8?B?bTFpWHNFMnNieTFGem5POG9UczRva1V2bkRocFZYNnpneXNXcGpsOE8zM2lL?=
 =?utf-8?B?ckNaTEc0dUpkdlFMbDgvbzBYbDZGUGhieVBTd2E5a0llbWF5Wjl2ZTBJQ2JH?=
 =?utf-8?B?T3Yxa3IySkd6c1h6MmNPc0hvNW5udXN5aVNFbFN1OHphR2NLelVvSlZmSE1P?=
 =?utf-8?B?SWIyK0t6N2RhYVd3NmZ5MFlWaVdOUmhZRWpLMFNkbG9WaFFudGFNamtQbmpL?=
 =?utf-8?B?OWt5T2R1dHc5M1dEaVA0cDFnejgyKzMrUlFIbzM0dkFNUll0STVBaXo0bzg0?=
 =?utf-8?B?VFdpK2V6U0tMYVhTMmhFeWg3bWlnWjRnQi9BU0xhYlhCb2RLUTNRZVlaSVdD?=
 =?utf-8?B?M1hEYjY0cXBQWTRhSFlYSGdwdk8xanlzeCtONnVvRDBMalIxQTRIOVA0ZHpV?=
 =?utf-8?B?NlNsdXpEdWZWa3JSeHhtYUI0WWo0SDhTQU1ETXlkNklvZDNUL0J2bnIySUlM?=
 =?utf-8?B?QjBmOGI1MHNRVHE1TUdWREdCZFU2VndVVm1GQXlaenlNRnlPakRobko5RTlE?=
 =?utf-8?B?V2ZSZWJlNTlvMGt0KzVvM2dnVEVUY1k2NmRKQ1YzTG1iY1pxTlc3WHY3MXV0?=
 =?utf-8?B?NEFDU3BYeXNkNTQ3K3BaM3JhTVlmYnkwZGhYMWxOcjBPTkRsT01zZC9pUkwx?=
 =?utf-8?B?dUhybE4wVEc3ZGRQSzVOeVQxOTEvOEFFa0FHbHV5VHZzaEljZ0E5aWFGTTBq?=
 =?utf-8?B?UGRpemN3T0tsNE93Z0NFa0hyaXFnMmxGa09KYnRaRDB0eWdYcWV2U2YyOUhL?=
 =?utf-8?B?ZGxBMXp2eG44VmU5SUx6c0hzbGZTSGhaRHVpSStDSElYU0FVWVNrOERXU1ZJ?=
 =?utf-8?B?akpHcWRUMm9MY1g1Zk90L2g5akp2aWNtOWp5dWFVbk03bVUwWEhVYTRDMXkz?=
 =?utf-8?B?bHNUSjJpa1puZ285SUxJS1JUL0V0dUVVelg5c0dWM1I4QzhDUnZBZGUrU3RU?=
 =?utf-8?B?NEJmb2xqWUNFMHZqMTlvc0RjTkJyQWd4bVFkbVNxN09RRUdCRnNnT2xGaUFT?=
 =?utf-8?B?S1g3QXZrSmc5anVtUGVFR1cxOG9PNyswVjBNUXhNUUlsTmhkWllET05rT29I?=
 =?utf-8?B?NFJxM3I4ZFFjUzJNM1VYdVhLT1dVekQrbmx0T29pTFdtZEhTKzdqZ3BtTHdy?=
 =?utf-8?B?d1M2cU9FL0gxWEpZQXZxeHB0amxwY1hVZUNrRk5JQmw3UDZRRi93bU1KRkIx?=
 =?utf-8?B?cHF3eFhlWml6NVB2Um1laG5BRnVudnB3bUUwd1M5V2tta0VBSnEwRVNBb05u?=
 =?utf-8?Q?SBcTA6o7G2V2H4dc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 872ceff3-3d15-423d-0871-08de5a734c88
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:33:58.8989 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ehdz1DMVfez3g+YDe4caohG9aIg94Oh019gyGbrwzu35NedMySRDDk8UI5faKnpIzLMJ9IuOBm4hvufw+mamgt5jshCjVX3SrKv4ypjxcaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6813
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 137DD7518C
X-Rspamd-Action: no action


On 1/23/2026 12:07 PM, Hogander, Jouni wrote:
> On Fri, 2026-01-23 at 10:42 +0530, Nautiyal, Ankit K wrote:
>> On 12/23/2025 4:21 PM, Jouni Högander wrote:
>>> We are planning to move using trans push mechanism to trigger the
>>> Frame
>>> Change event. in that case we can't wait PSR to idle before send

Typo: s/in/In


>>> push
>>> happens. Due to this move wait for idle to be done after possible
>>> send push
>>> is done.
>>>
>>> This should be ok for Frame Change event triggered by register
>>> write as
>>> well. Wait for idle is needed only for corner case where PSR is
>>> transitioning into DEEP_SLEEP when Frame Change event is triggered.
>>> It just
>>> has to be before wait for vblank. Otherwise we may have vblank
>>> before PSR
>>> enters DEEP_SLEEP and still using old frame buffers for first frame
>>> after
>>> wake up.
>>>
>>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++++---
>>>    1 file changed, 10 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index c7ca4f53b8b8..1aca4802b7d5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -7333,9 +7333,6 @@ static void intel_atomic_dsb_finish(struct
>>> intel_atomic_state *state,
>>>    		intel_psr_trigger_frame_change_event(new_crtc_stat
>>> e->dsb_commit,
>>>    						     state, crtc);
>>>    
>>> -		intel_psr_wait_for_idle_dsb(new_crtc_state-
>>>> dsb_commit,
>>> -					    new_crtc_state);
>>> -
>>>    		if (new_crtc_state->use_dsb)
>>>    			intel_dsb_vblank_evade(state,
>>> new_crtc_state->dsb_commit);
>>>    
>>> @@ -7375,6 +7372,16 @@ static void intel_atomic_dsb_finish(struct
>>> intel_atomic_state *state,
>>>    
>>>    		intel_vrr_send_push(new_crtc_state->dsb_commit,
>>> new_crtc_state);
>>>    
>>> +		/*
>>> +		 * Wait for idle is needed for corner case where
>>> PSR HW
>>> +		 * is transitioning into DEEP_SLEEP/SRDENT_OFF
>>> when
>>> +		 * new Frame Change event comes in. It is ok to do
>>> it
>>> +		 * here for both Frame Change mecanisms (trans


s/mecanisms/mechanism


>>> push
>>> +		 * and register write).
>>> +		 */
>>> +		intel_psr_wait_for_idle_dsb(new_crtc_state-
>>>> dsb_commit,
>>> +					    new_crtc_state);
>>> +
>> If I understand correctly:
>>
>> For Fixed RR case:
>> Suppose we are in PSR:
>> Skip_wait_en is set.
>> The portion around the Send Push will be like:
>>
>>
>> -dsb_wait_vblank will no longer wait for the undelayed vblank (we are
>> in
>> PSR and skip_wait_en is set)
>> -we send push -> to trigger frame change event for PSR HW.
>>
>> -After this PSR HW is supposed to receive the event and may be in
>> transition period so we wait for idle dsb.(which internally makes
>> sure
>> that we are out of PSR)
>>
>> -We are not sure whether we are in active or in vblank region at this
>> point of time so we want to use dsb_wait_vblank. The skip_wait_en
>> will
>> now not come in picture since we have made sure that we are not in
>> PSR
>> in previous step.
>>
>> Then other steps will be similar to what we have been doing.
>>
>> Is my understanding correct?
>>
>> What happens when Panel Replay is in picture, given we can have PR
>> enable with Variable Refresh Rate timings.
> I don't know how having VRR enabled would impact this sequence? send
> push triggers "Frame Change" event -> possible PR active is exited ->
> wait for vblank -> wait_for_delayed_vblank -> check push is sent.
>
> Do you have something specific in your mind?


Hmm yes you are right, as you have mentioned with skip_wait_en chicken 
bit will make DSB jump the wait when Panel Replay is enabled.

Lets say we have VRR : ON and Panel Replay enabled.

-dsb_wait_vblank will no longer wait for the undelayed vblank (we are in PR and skip_wait_en is set)

-we send push with send push bit and the frame change bit set.
  This will now happen earlier than the case where Panel Replay was not in picture, perhaps can be in active region.
  This will also result in frame change event for PSR/PR HW.

-we then call intel_psr_wait_for_idle_dsb() that will make sure PR is out from deep sleep state.

-We now wait for undelayed vblank which DSB will not jump because HW is not in Panel Replay active mode.

-Then wait for delayed vblank, and check push sent etc should work as before.

Only thing to check now is DC balance thing done by DMC FW, but I guess since HW is not in Panel Replay active state, it would not expect anything different than the non Panel Replay situation.

In all, theoretically sequence looks alright to me.


There are a few nitpicks in commit message and comment.
Otherwise the patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> BR,
> Jouni Högander
>
>>
>> Regards,
>>
>> Ankit
>>
>>>    		/*
>>>    		 * In case PSR uses trans push as a "frame change"
>>> event and
>>>    		 * VRR is not in use we need to wait vblank.
>>> Othervise we may
