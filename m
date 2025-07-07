Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F95CAFAA93
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 06:31:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F44110E3F1;
	Mon,  7 Jul 2025 04:30:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SmYn8kLU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C8410E2F3;
 Mon,  7 Jul 2025 04:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751862657; x=1783398657;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BslCur1+2kl17Cp/fAbj6nqACdUblCcghpoodiglfMw=;
 b=SmYn8kLUkxhWRgvl95Guyx71cpMVsm7bqcuk3yg80uq/fGuEBtk8j37i
 jIRfNnx2GTta1T1RPTwhYa+INn2ujtGUdUMTqmyBrYRiXZfHt5+RQEegX
 UagbpCZY1+4BoMgRSYdYJH0Eb+426h8XiscqEunWrnK0KDpnD5SVCnPYe
 agKAHQZDomEU20v67edfxmfPSBy1pSq+7++4FdAFfmuixArs8vZP/IdGr
 lggivo2Ua+P3vch5hvkM2Eb0TOCZm/05pgezjg2rtelQqmL5QnaucPhKz
 Hjd7/aFakvtDrTXWRsn7XB4IJuN4Zv4Dn0CKeOHkwVQnZFwNSVRokVYBN w==;
X-CSE-ConnectionGUID: J8WfEkhfQxSZ8LIfAzTbFQ==
X-CSE-MsgGUID: iCwGfVeKRGaeInnCRmsiYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="64763293"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="64763293"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:30:56 -0700
X-CSE-ConnectionGUID: 4CkDxNUYSX2fGEgFQRtSSA==
X-CSE-MsgGUID: qQxlMqfTSH2n4KhXgUv3Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="192299360"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:30:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 6 Jul 2025 21:30:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 6 Jul 2025 21:30:55 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.60) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 6 Jul 2025 21:30:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xfy7DQCL4eEJC+s5B5uX0K+13WA0wu0U/q4aldH+98t99r5CIEPAHDlV1vk2ivcRSke8107Bjl38k9NkZJOWJidRVlKfN4jE2ZmDuioQZ0x5Tj6IR9L6raDypOJmUe+IV3vtQGXMbg9W6AuO067qMO4ENZ7X+z4tZVsL8KIhFCDxsNl1gY+NWI7XqffyufeHI/fZgODXM72poEDrobY768hd2hMt8GXojb8BPuxg4DZNh+Kwi/VX2bFCV0f/XSolhKR4I1VDxnurFF3SWGrdWPH3YAYXz4k9ObjYRTDwPaL3gxe9/Sk5hsOiOWkVsm6kiaNX1dRd9arPOJh9DpYM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M6geHzYn7Sij86lFUowcZmWuYGyTLD9y5S5jda/LbOo=;
 b=a98hnYncaDzR0x/d6tRiUI91nw1vLGZbpUmF3GAskjqj0jB8rEi649u3FJgTt4X4w+YunY9bBM2grAQZQcJpUNLmrfPkR0sIEseV6BhftwTjOmJu1Ktqvd0TWWlqd7rGQ8Vj3XRu+UaOXx11XO7QGMm8Un5zrHo4bo+n8s67yw64DpctbfcZ0PXIk3sIHrO+VR+/pBQwWxj24bSXZJMGIO6WkksghcXbVbQ5H87bxZ9yT2FeJwhby0Je8lE9LSDBLjk38V43Eje9GStbOp0MS9eT9KhFOILATRKbnHvWEdFyeEvBddVRlEt/L9JXMTHDfrPAhD995jWZD6iW8t+y7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6536.namprd11.prod.outlook.com (2603:10b6:930:40::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Mon, 7 Jul
 2025 04:30:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8901.024; Mon, 7 Jul 2025
 04:30:39 +0000
Message-ID: <87e7ee3a-04d4-4b06-a6cc-4175b58a1649@intel.com>
Date: Mon, 7 Jul 2025 10:00:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, Jonathan Cavitt <jonathan.cavitt@intel.com>
References: <20250620092533.3711401-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250620092533.3711401-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6536:EE_
X-MS-Office365-Filtering-Correlation-Id: b09085ff-7cc9-4022-8134-08ddbd0f0681
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUpSeDNsR1ZwZ3N0TDBGQ00wSmMxSDRzN0ZRSFRvTThGSGc5OGZUOUJvRFc5?=
 =?utf-8?B?d25zQTJtRERNaldOeVR2SWJ6WmVTdW5YUERsVDZpNU9BYTBydURmNXQyUVRW?=
 =?utf-8?B?REVRc2FvZFlFTFZRREtMbDQ0YlN2c1RIK1hFUHFhWXI1QjVXV1ZJQ2xUdFlW?=
 =?utf-8?B?NGx0b21hRWp6SC94TU00N3lQd3lvUU1JdE9jMU1sRkJyUkcwaW14VVRsMGc5?=
 =?utf-8?B?ZlorcXB3L1lMSWsxMzdkZ2xLZzZRclVqVS9idHVjaGJmbnBibDlGbHhPMDJY?=
 =?utf-8?B?SkFxNDQ1TzlraFg2a1NYNzNoeHZMd1g4ZWRncUdlYkJGTm5YYzRRNUdsdVlN?=
 =?utf-8?B?NFFBRStsY2t4eGNmVGxLbXY1ajE2bmNHd1FBSFdZeVh6NTNEVERKbjVYeHRQ?=
 =?utf-8?B?eTZoR3VNNWJEd2lwMXNYalZza1ZUbEtVTzdTY2kwaCtCZHV2b1ZPeFcxK0FV?=
 =?utf-8?B?czhIdEx2amtaV21Wb0xwd0tpdXQzbTZWOVNtTW51eWxkVFhrdngxYlI2eU1B?=
 =?utf-8?B?RDJJTDNRTnM1WWc3dW1PMXg4T0xPN01ROGlYTHRBQjRDZmkxbUVPYU5BUWJL?=
 =?utf-8?B?ZnFRM2JmeUVMU1FGTWhZUHdXT2NCTkl2YkNzcHFDVU5RcDhUTVY1MFIzZWty?=
 =?utf-8?B?ZkFHeGxsV2ZSNTI4YTdZTk45RThrV2NVSUxqSWJ2MmtWVEpXZ2tPc2xqQVlr?=
 =?utf-8?B?UTI1VGx3YWhiOUVMUTJDZEhTSkZoVmQreEp6UWJsRE9mYU1hSTVtM1orV3Vr?=
 =?utf-8?B?dTgxcHNHTllsS1p6SUkvbXBUcjQ0blJQREFHUUhkNEM3OVNUeWRob0NFdURP?=
 =?utf-8?B?bVZuTkNDa2ZKQ2J0UklUdDQwcjNoWGdvdEhBMUc3VXdmKzVJWVdDMXc0UXdD?=
 =?utf-8?B?TytHcmppUC8xNmdQeEtqK0wvSFR6dWE4MitJUkNSdDUrZiswMGlZekpnODg0?=
 =?utf-8?B?QTNmV0svbDNKOHFxY0g4WUZUSHg5RUNxSFBkYzZGcUJWREQ1WDViN2F6R0Vh?=
 =?utf-8?B?b2ZKMGV2eHc3Tml6VVk3UU5QUjNjZXdNU3YxN0w3Y0hXSWVEMVJEYitYUjVL?=
 =?utf-8?B?OFNvcm1BaWQ3RUtKSWpRcnJuTHlNQ0tRdXNIRy9STTMvS3J1T2RWUmJtNnlz?=
 =?utf-8?B?WWIyWWo0cHQrRllFS0RhMWs5elZ5THhoTncwdklONVQwSk00Z1EyNVFFUjRP?=
 =?utf-8?B?T0t0Ung5RkFtSmtBcm9Vei9NMmt1K095S1VaMVVpdXgrVWNyODdsa2s5eE41?=
 =?utf-8?B?bzdnSTlHWllxSWl2VFZyNWFqLzRIdHlkazJPejV0R0d3OU1OcFZoZ0U0Y2JQ?=
 =?utf-8?B?VUJwQzNzYW1QcWoxUForaHFTS3VWaEYrLzk0TDB4alhpaGRVUlY5UTNaU3Rh?=
 =?utf-8?B?SHlLYW9UTE9BZUttZGxaTGxwRGZ4VjVJWU5UcmRpekVBVHlxU2FDSHhHMHFX?=
 =?utf-8?B?bTNteFRDaHB4WS9kQm1WaUJLeXVrRHdvQ1JZeFIyK1l5VmoyTVlYeVAwZ1Fo?=
 =?utf-8?B?WXkxRkFXOXdRZkdoaWtCVktvUGtJcHVMUlFWUytHaXptU3hFcTkvNU5rQ0kv?=
 =?utf-8?B?bExTQnh2bzdHU0Y0bTRSaUJ3RWtKWitJTjEvbUh1OGxVMFd6VXozdGdBZG9w?=
 =?utf-8?B?akZYcVRTcUxLZkt0YkZMR3gyaW1rWnlOUkxRQTl2THVsY2xIZGl5UFV4TVVn?=
 =?utf-8?B?Q1E1RjAzSHJpVy9Pc1VOVUgybU4yQTVQNDRRcE9rVzBGWHhORlZ1UWVZUzgx?=
 =?utf-8?B?ZVJXRDF5VlZsVEVMci8yaWsyMDIxNkhuTTJYY2lJcW5Eck9QeXBsTm1IQlBX?=
 =?utf-8?B?czF5VHdqcjVmQzlFOGJFeGlxZkFBb3hOdGFTSTA4OEE2TFpudk9iU1NZTEF4?=
 =?utf-8?B?UFNjRzF3NE9lOWplZkd5QytTditQMXRQYVM1OE0weW5sbXdmenVlcjRiN203?=
 =?utf-8?Q?SQ/9UnvPmMs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1NkdHJHSktlQ2pIK3hadjNTY1RXTnpETmNsSU9WY2U1UG0yK25iY2pOL21H?=
 =?utf-8?B?QlhTY245SHJYNnNJRVdxSnFrZTFJR3lEUHlJM3hvMTdFSys0aHhKajhQT3po?=
 =?utf-8?B?ZkNpSkR1UUxRanhxU2MrN21HWU8vcGNjWkNMYWFScHJGYTBUTjBYQ0tHaXh0?=
 =?utf-8?B?allwOWU2QnhWOGthbHVPQ2Z5ODg0SU1uQmZzcnJCS2p6WEEwWmdqRHduYnZi?=
 =?utf-8?B?YTdqOGZQYkY0RDdHTEFXRU5aaVZQVnJ2TXh2cXVVdFFYMjNMMm5LZ0F2OEVF?=
 =?utf-8?B?VEdkcC84VVVxZUpoYTA3UGN4Z3VWNlNteFJMTGQydEhYWVlUNnJVYU5aeDVN?=
 =?utf-8?B?RmNmVmM2c0Vpby9XTkgrc3pLQ0VMbUpva0ZGc21DeThmK0ZYVUFFc2JmSzAv?=
 =?utf-8?B?c3pPVVkyS1dIVVNYQ3dkZllnQnNNeE1WUVI0MGpzbU1aR0NoTC9xOGFBT2Ro?=
 =?utf-8?B?aFFsK3lKclBCKzlUanBkQk0vZGlrcXNQdWtha2xiYkYrTkVqQTBFWjNvWEJw?=
 =?utf-8?B?V0NJaUFaOCtkQ3JxcDhjamI1R0dEekVGaFdXNmxGMXprazVCOUpXMjNvTktZ?=
 =?utf-8?B?RkpKUHdhMWxVZ3dxMkozNU52TWFWb0llc2pHWnZNdnZRREdjSDhLblMyMWtR?=
 =?utf-8?B?TVAwTEZucDhKWXhyNW1lVGpNWThZSW9reEF1SFF6anlXODE4TkczcmFLeVpp?=
 =?utf-8?B?Mzdaci9BaFRtb1hpM2hZN1R3RWNNTjRDMEE3cXVycG9RczREbGZJWkVpNHJv?=
 =?utf-8?B?YU9Da1N4NjhNRUcvdDErbWd2WjBhR1lMR2xVSjJUOWlFemVwTkVnQ1dzNWFK?=
 =?utf-8?B?S3VYdklRZ1VSNnpoS0QwcTRNYkRaRUo3VnZ6Yk5kbUhUM3MzMENQQ2g2SURB?=
 =?utf-8?B?L0dXUVFKa1RZejRiY2h0eFdudzZmUmNvc2VXVEduZzhIRUVRS0R3RjlIcGxY?=
 =?utf-8?B?SUtlQi9ZamtoWEhYZEJXaU10WWp6NUFFRDdzUWFBeGtER0hWRHNjcGw3UnpJ?=
 =?utf-8?B?WFVUeFdKMjY3UEJQZ0hTUEhMSnJzQ2NrV1Yveml3OFFFVm5LNmx2MyttL0U4?=
 =?utf-8?B?VGN5R3c3RTF6c0lZTkk3K1BSbGFLUkNzamlvZHYvUGdQT2pub0x6TE1RM3Y1?=
 =?utf-8?B?NTl1cDhpNmt0SmZqNkd5N2c2S25uVjA1SGNMRmhpMlIyaVQ4b1hUMVNhTG5B?=
 =?utf-8?B?cXpyb3BPT2tLd2N0SFhxcyt0cDIwUWVqejRuTy95U29USDlUNURaajdJR2xQ?=
 =?utf-8?B?Vm5kU2MwZlNmcVU5ZVYyeldpWDFvaFBiWUU4TW9HT0pXei9BMmJXc0VLY0tP?=
 =?utf-8?B?ai9OY0tQTEtxS3ZiN0lNbUZ0YU1SdWFRTDNtQlpWZ2NQSXZNR203OEp6Wmpk?=
 =?utf-8?B?bFZ4L1J5NjRWQ1FBT1BaR2JzdWJldVZYSjZWTDJyMXg4a0M5alpqeTBnTjVR?=
 =?utf-8?B?UEZBM3lZNEY4R01Uc2FQTEtOdnlJVFY1cEkxR0psS2tNK2JkQVlraktibklY?=
 =?utf-8?B?Sm1WQjRiUmltUDN2d2E4czQxNjk0RENwZ0lObi92akFYQlN1YzY1UTFCNHJN?=
 =?utf-8?B?YnBEMmg2dDhGMzlwVjhiOVlsdmgvNWRLQVBvMVdiVEtpcHlBMTIrWjZWdXZF?=
 =?utf-8?B?WlRVRTVhcVRFbTkxam1wRGZRU3dnejdneXpJN2pwU01jbmRGM094QUUrdEhV?=
 =?utf-8?B?SzU1MFFVdWJlN3VPR1JyUXN4T0M4eUZDdHBrZUFSTml6MldCUmt1cHlKMks0?=
 =?utf-8?B?Q01iZzZOTVkvR1NkeUxRUE9NV0hmZU5TT08ycDBEbE03M2RDTG1TMk9HNW1a?=
 =?utf-8?B?RndLc2dySFoyd2hMcmN0Z1lYM2xuSyt4UE9Qbko3RHY1QjR3WDU2NlpLb05R?=
 =?utf-8?B?Q1pJTEsrcnNFSlJJMEpmZ0JkTnRUVzRqNUk1V0d6OWlvOUd4QlRXWmFQQWlP?=
 =?utf-8?B?QVVRdnRJRVVWS0VPVHc1Vlk2TjFZUjBWb09RNmlUbnhIbndxb3RFUXVmRDlY?=
 =?utf-8?B?VjNYYTdOQXBBeTEyUUhUR0RsYVhsN29yTmFTczRCV1BjV3BzQmhkV2l5RzZI?=
 =?utf-8?B?SG9XWHpIblRHZ2pwcVNHUWRMYmtjZjc5TjhyQ0EwQ3hBNVBiMDMrc05UblVn?=
 =?utf-8?B?QVEzRDdDMVBMVzVBTlgrelU2bmhxYXQreHAwd2Y0dGZpUmNwcWFCZHMvQ3Jj?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b09085ff-7cc9-4022-8134-08ddbd0f0681
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 04:30:38.9279 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bYl2umENqu3F6/LAcgY6pLr1GrNhsw/SN+o/eZFUnIJQ4Pi+5G7Iskk0EA4H3LISPcrAXN3ydbAAS4Tq11ptnYElRMHqjfLqZyzirJO6SUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6536
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


On 6/20/2025 2:55 PM, Suraj Kandpal wrote:
> We only support resolution up to 4k for single pipe when using
> YUV420 format so we prune these modes and restrict the plane size
> at src. This is because pipe scaling will not support YUV420 scaling
> for hwidth > 4096.
>
> --v2
> -Use output format to check [Ville]
> -Add Bspec references
> -Modify commit messge to point to why this is needed
>
> --v3
> -Use a function skl_scaler_mode_valid which is routed throug
> intel_pfit_mode_valid [Ville]
> -Combine the check conditons [Jonathan]
>
> --v4
> -mode_valid functions should return drm_mode_status [Jani]
>
> Bspec: 49247, 50441
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c   | 11 ++++++++---
>   drivers/gpu/drm/i915/display/intel_hdmi.c |  4 ++++
>   drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
>   drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
>   drivers/gpu/drm/i915/display/skl_scaler.c | 16 ++++++++++++++++
>   drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
>   6 files changed, 62 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 277b40b13948..f10650d79663 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1418,6 +1418,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   	struct intel_display *display = to_intel_display(_connector->dev);
>   	struct intel_connector *connector = to_intel_connector(_connector);
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	enum intel_output_format sink_format, output_format;
>   	const struct drm_display_mode *fixed_mode;
>   	int target_clock = mode->clock;
>   	int max_rate, mode_rate, max_lanes, max_link_clock;
> @@ -1451,6 +1452,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   						     mode->hdisplay, target_clock);
>   	max_dotclk *= num_joined_pipes;
>   
> +	sink_format = intel_dp_sink_format(connector, mode);
> +	output_format = intel_dp_output_format(connector, sink_format);
> +
> +	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
> +	if (status != MODE_OK)
> +		return status;
> +
>   	if (target_clock > max_dotclk)
>   		return MODE_CLOCK_HIGH;
>   
> @@ -1466,11 +1474,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>   					   intel_dp_mode_min_output_bpp(connector, mode));
>   
>   	if (intel_dp_has_dsc(connector)) {
> -		enum intel_output_format sink_format, output_format;
>   		int pipe_bpp;
>   
> -		sink_format = intel_dp_sink_format(connector, mode);
> -		output_format = intel_dp_output_format(connector, sink_format);
>   		/*
>   		 * TBD pass the connector BPC,
>   		 * for now U8_MAX so that max BPC on that platform would be picked
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 9961ff259298..03045d188817 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2053,6 +2053,10 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
>   	else
>   		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>   
> +	status = intel_pfit_mode_valid(display, mode, sink_format, 0);
> +	if (status != MODE_OK)
> +		return status;
> +
>   	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
>   	if (status != MODE_OK) {
>   		if (ycbcr_420_only ||
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 13541be4d6df..68539e7c2a24 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -14,6 +14,7 @@
>   #include "intel_lvds_regs.h"
>   #include "intel_pfit.h"
>   #include "intel_pfit_regs.h"
> +#include "skl_scaler.h"
>   
>   static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
>   {
> @@ -546,6 +547,16 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	return intel_gmch_pfit_check_timings(crtc_state);
>   }
>   
> +enum drm_mode_status
> +intel_pfit_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes)
> +{
> +	return skl_scaler_mode_valid(display, mode, output_format,
> +				     num_joined_pipes);
> +}
> +
>   int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
>   			      const struct drm_connector_state *conn_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
> index ef34f9b49d09..2f075748a34e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> @@ -6,8 +6,14 @@
>   #ifndef __INTEL_PFIT_H__
>   #define __INTEL_PFIT_H__
>   
> +#include <linux/types.h>
> +
> +enum drm_mode_status;
> +struct drm_display_mode;
>   struct drm_connector_state;
>   struct intel_crtc_state;
> +struct intel_display;
> +enum intel_output_format;
>   
>   int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
>   			      const struct drm_connector_state *conn_state);
> @@ -17,5 +23,9 @@ void ilk_pfit_get_config(struct intel_crtc_state *crtc_state);
>   void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state);
>   void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state);
>   void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state);
> -
> +enum drm_mode_status
> +intel_pfit_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes);
>   #endif /* __INTEL_PFIT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index d77798499c57..b8193ebf0772 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -134,6 +134,22 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
>   	}
>   }
>   
> +enum drm_mode_status
> +skl_scaler_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes)
> +{
> +	if (num_joined_pipes < 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		if (DISPLAY_VER(display) >= 14 &&
> +		    mode->hdisplay > 4096) {


Lets use skl_scaler_max_src_size to get the the max src width, that the 
scaler supports for a given platform.

Compare max_w  with mode->hdisplay.


Regards,

Ankit

> +			return MODE_NO_420;
> +		}
> +	}
> +
> +	return MODE_OK;
> +}
> +
>   static int
>   skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>   		  unsigned int scaler_user, int *scaler_id,
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 355ea15260ca..7beee5ee0e89 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -5,10 +5,16 @@
>   #ifndef INTEL_SCALER_H
>   #define INTEL_SCALER_H
>   
> +#include <linux/types.h>
> +
> +enum drm_mode_status;
> +struct drm_display_mode;
>   struct intel_atomic_state;
>   struct intel_crtc;
>   struct intel_crtc_state;
> +struct intel_display;
>   struct intel_dsb;
> +enum intel_output_format;
>   struct intel_plane;
>   struct intel_plane_state;
>   
> @@ -32,4 +38,10 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>   
>   void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
>   
> +enum drm_mode_status
> +skl_scaler_mode_valid(struct intel_display *display,
> +		     const struct drm_display_mode *mode,
> +		     enum intel_output_format output_format,
> +		     int num_joined_pipes);
> +
>   #endif
