Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467C9A04199
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 15:06:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF45E10E351;
	Tue,  7 Jan 2025 14:06:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P3C1v/3P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AEEC10E32B;
 Tue,  7 Jan 2025 14:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736258812; x=1767794812;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sFT/gCSEjq5OCyeBezWdQwZVX1iA9H5O3MnHkGHFQjc=;
 b=P3C1v/3PRpKvGcYDaV5r55R9RMVaPNw8ZStTWG562kRVIVR5u0aqOxhl
 FEypLS+/01MY0/2LskPV5B8rRnGGaEMVP6jf58tNQjKUnZ+pqn++Wp9Z5
 85uroGhgKMhua7Au62TCUGnWcBqUN7qN4r5fdksXbKvM93R7SD+0aVS+N
 Necw83JNLYcI1TEvEU7mM0W39rbUnoBz3rgNIPMlQvKFI6JMrAPdXJn5/
 CkLfiSny5dz0vMzfy/ABnfMc1V0b2u0xGcdUPMexpyHgzwWgnSf24dwLg
 u/gPvFf+Wo/GPAqEP1hgfZLR/4E6EsPD/pjWWSfhhNGvXJLFENeI83uZl w==;
X-CSE-ConnectionGUID: 5tuvSnJXRW+99ID0RuoUgg==
X-CSE-MsgGUID: E2gupP8SSBOOcLXViGIdkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="53859254"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="53859254"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 06:06:52 -0800
X-CSE-ConnectionGUID: LZNwr/bNTRi8O0pjYGl7gg==
X-CSE-MsgGUID: qOBRPdjYS/W6cS3BPAPovA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="126069710"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 06:06:52 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 06:06:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 06:06:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 06:06:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gfMEs7YAHXr4wBcedYsdNqrCK7DJFFUw5Bxz5016vZxewPfovrjlGSB8g0Qdar97BxGpYeOyFo1f9SD5lW+3Yq6XPNvCcXRtJDhiQed0HgIljC3b+JIf9iiWFScNsIfntAGvyRE2+Ira3ghg9Io8kaGJasxVQ9/lmhmVITfmVCOLnk4oALaFwKuNOGwqhXS4Yh9beBRwa6QnWUOgXfGRxCDDVj0JDKAq00KbqabEfkhpVpG5dKwSDytQK42Ydo08Bf2qP4uNtFDU18G29sSVt5ZsVdG2pR8vlaAWK6WAKVrtJkKWQIqCayh7P8MG6FRharwaezpTrUjyvxcMwUqasQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZA6ceSZ94WdWx6fdu0kUFxGDiYSg2w0k0fQfIVsuoQY=;
 b=nJTlQTUn9dvasyw6gErFREA2KM2btVFn9L3B2fylc22RmvQ9rXaUByQYheRYhJhq8RIqsjsewsrjuzL0k4cvENhyTO54yEjy98TOAXeC4BaqgJ0fJEASPYK0aP/zxZmR0rm5W4BRsfH1mwu3eJRoyZVj+cdAh2w1VGuCE4DPc9Crx/fDYWPk04lUXWdBKSACNxCOCimtH8GCzzww3ERbLrCwouuB93Ztu3dKZrAbuQA5V/vgiKl+OVBeqGG10H3hoCv3HaPYbWvGoSDJe34Le2halGPrsCgetMweyKqD/2f/JE2w8fH848PQVAXz0exJHOy28fGdEpO9BaJB/uwHTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by SJ0PR11MB4800.namprd11.prod.outlook.com (2603:10b6:a03:2af::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 14:06:35 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::b398:8ab5:cd4b:a2ff%2]) with mapi id 15.20.8314.018; Tue, 7 Jan 2025
 14:06:34 +0000
Message-ID: <3ef0243a-aa73-42bb-b4da-827996398611@intel.com>
Date: Tue, 7 Jan 2025 19:36:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] drm/i915/dsc: Check if dsc prefill sufficient for
 vblank
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@intel.com>
References: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250106165111.1672722-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250106165111.1672722-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0181.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::14) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|SJ0PR11MB4800:EE_
X-MS-Office365-Filtering-Correlation-Id: e87c2363-5925-4cb2-d64b-08dd2f247ea4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vjl3RnBxdjZMclNnaGlTdWEzVmZIdmVGdHFsR3VFRDhnZURCelhWZ2RqOW5u?=
 =?utf-8?B?SHQ4Qzc4bHF1UXA0Z0dOQjBNUWcrUWhsWDVHTnJHZWxmL3NTUUVsazc0SHoz?=
 =?utf-8?B?bi90SElCblZLYlBHSlR2a0xITmk5MDZKZUxkL0tZZDRhTXV0cE0zUXFvSkpK?=
 =?utf-8?B?Zkw1bmg4clVRbFBoeHlBS3lkVE9LZ1FLeG1IUWM0MWVsYkNxbk5tbUt4NVdO?=
 =?utf-8?B?OHgwVDhlN3pmdlZDeEpDSFlyQ281UlBaeDlUaUZMTEhFZWY5NGhudk9XRmdu?=
 =?utf-8?B?WVh2WmNaYTZHQXl1RUZzTTdyUFdhK3BnV3RTbGJQaXFhSGdZNzZLN0htVVdP?=
 =?utf-8?B?UTJhaEx0NG9XaVQ2aWtvUmFtakJCaTNxSnBXc3NJNmZUb3NuQWo2QytraUlL?=
 =?utf-8?B?bzVUMC9abi8wL2ZuY0VBMlUzRmRKcG1CNTl5cmRIRk5acldUaXpHbFFRRUM4?=
 =?utf-8?B?VjlkUVNwWnVzb1pLOVZ2S0tITmRjcE5GSndHQnU5NzhOY1NUNVVLc3grUng2?=
 =?utf-8?B?TkltUkdrRjd2TFFGaVBQSVNneXJiTktrUjdZMW41REJDclpNZ0x1WHhZZ0l5?=
 =?utf-8?B?NFNIZDVZNFgzQWI4RXYrZVV3Rk50YUF0TnFpRm9JUElJU1ptS2Y1Y2tDcjVm?=
 =?utf-8?B?Q1FjZjg2VnJTUXU2WFB5NnN1OC9wNjVZVDZNRi9zYWpPRUI4c2lEUTFUdkQ4?=
 =?utf-8?B?dnVha3VyVEkxUW9SWnNUTWRaelRCWTBVNlZXcjMwSGZoTHlNejNBN2JQVmFR?=
 =?utf-8?B?VmQ1M3ZqMHdFV2xSWFg5M1dId2ptNDFsc01abnJPa2grdXpEWVB0T1lKdTNh?=
 =?utf-8?B?MmxHbXk3NTUwM2dycW5WL1lMbVgxVGlTSE9YUFhxSHBzc0xVM3M0WkJESlJl?=
 =?utf-8?B?UGRTVElNQkpkZHMrVkd0Uk4xeUhkNWNVVSt0TzBBUDd1cnpCVmwxSWRyVlFh?=
 =?utf-8?B?MHNCeXV1dWs3NTNLMHFQaXZBNWt0UDJxbUFLTllWNzR1RytmKzZ3TGthbllB?=
 =?utf-8?B?MTJFaXpJak4wRlRXdGhTWk5rKzN0TjRZNFhSMjJXYXkzVHU3OUNWQlVaODho?=
 =?utf-8?B?aXJhMVREQWhpbnJMTENsL3FvdEE3alAyd2pOZU96dnFOK1U2R3kxenRwMDI2?=
 =?utf-8?B?MWQvdFZXU2xYa2ZyeGh2STBKMm9ZQ2MzaXIwSW5IMmlRSlZRNlFlWjJGSkJN?=
 =?utf-8?B?Y0FUNFdrVTZBeFhmN0RtbTNxOGkxV2JFakt3RlB1RFpnN1MvR1hhN1hSL2li?=
 =?utf-8?B?cGMvbGk0cm1FNnFJSlFlUjFFc2p4ckw5WGMvOVYvdTladk1qc0RaSDBPZlVG?=
 =?utf-8?B?VDFGV21FVWVrNDkwdEFSK1ovZUZjSWh2V1h1NlpIUEdFdjZyOE9HaEp2dTc4?=
 =?utf-8?B?ZkNOenEwQWJXbDJWS3d5SE1KZHI4SVdzMzQvT3pYeEh6b00wUXJzNjBOeUJ5?=
 =?utf-8?B?WWF1bVhBUk9MUTF0Nm85S3pNVzM5clQ5L0xmbmRzQyswbHlJc1BNYS9lb3d0?=
 =?utf-8?B?eHNjWTNxTVA1bTgzVEVKTFNWbjRjdHNiWlFDNUxIc3pZZGRGdm1MMC9oMDRp?=
 =?utf-8?B?NWc2bDI0QitRdks3a3NFV2pabnlad00zdy90OWRHazZhVmJ3akRRQnd1cnZy?=
 =?utf-8?B?U0FFV1lGcTlNdHhqWEV3QXNXd1VSQlZ4cnBUU2xMT2dCK2UyVGc2WEkxVmVm?=
 =?utf-8?B?SFlWczU4QWdwNW4wY3g5NnR4V0dhRXJ0YWVoVWpub0Mva0VEdUYrN2lPSlNm?=
 =?utf-8?B?ZFdZZTNpUEhNOC95R0R2dW9rY3daT1huNnlYYUxZekJYRkFsWEZmQXFYWXFH?=
 =?utf-8?B?bzVDMjBianY1dXpzSDJ0bElxNUlOc21CYnpvaDZTblpGWW9rSXk2N2M3MTl2?=
 =?utf-8?Q?FldFb2cEgrpLD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUpTL3lBTm1keTVYUGt5cTNXTEo0SFVhWUxJLzBQVHFQU2dYQndqR0RqWXZ4?=
 =?utf-8?B?MFo3RlRDWjB2RXphSmk4WHBTN3hHWndzQWhFcm8vaWoxSUxaODd4N0pJM0pm?=
 =?utf-8?B?MktlV2ZnbXR2eEdoWjJlbnlEcmV6WkhHNjM5dnI4OWFzZ1QyOUZBSGVQemFa?=
 =?utf-8?B?NWhOSDFQbmxwRU4yWkVJc050a3duL1AxZjg1TUpqNzU4ZlhEdVJORlNMK2VY?=
 =?utf-8?B?MXcwOHZ3Vll6UkF5UkdYUnFZdHVqdFdyY0pMWlhva0ZVVVg5Y3M4bkx1N05Q?=
 =?utf-8?B?dXhyUG1hMjBERTVRN0JVQ0lBbkdXZDNLNDNKTSsyc0FUYjQyL2cyMU9Cenlk?=
 =?utf-8?B?NERjTGJCM0ZPWFZBZTVRVnIyN2tWMUJ0K2h1WldYN0VIVVFJZ0RjTjIyV3VL?=
 =?utf-8?B?Mlh4b3RyTUZuTXhJdHB2UDdXREV0ZTBRcDdPbyt6Y2s4cThPNEhJVy9qR0xr?=
 =?utf-8?B?TE9EWXlWL0puUSs2ak8xTUwwWmJUeGc2Vjg0Q3Y4Y0dabGNHcWRLdHhVU05t?=
 =?utf-8?B?YUxRdGMybnp5MW5hYnpubDhha1lTVFg3NTdId2hGNHNJSXVCRWpNVHMvQUJI?=
 =?utf-8?B?T09tYmFLMVRyaVgzR2E0VlJibXJuWFlZN0RCVlVxNko5d1MyTWEwNTU4dHN6?=
 =?utf-8?B?aFJFWVZ6aHNMbkdSeTVzajdiVERCR05hNXJVZ1BRRnpCMFY0Z0VmQWZVWFgr?=
 =?utf-8?B?MHQ1WnQ3c3RWZmtjdk9tQUN6ekMyY1E1cmhrTVZ6RG9rVVQ4WVNHL0JoV3N0?=
 =?utf-8?B?MTNMNW1BVGZKdFdEeVFrendtZmVzeUFiMks5enl3OGN5UXYvMUdTbmZuQmIr?=
 =?utf-8?B?U3NYK3hrdDRwbjI2RHNoSHYzRFNjcE9XS1FoVWZxM01MKzA4L1VQdXB1Z1pE?=
 =?utf-8?B?bUlPZ2VaQ0l4L3l6N3NMSUNNK2tJbHVWMlNWYXdHSUZadURUNUFPMzZjT2xS?=
 =?utf-8?B?blBtdHFzTUZyV0JkSG1DN25rNVM0WlBhUzlTUUJkUHlaSVg0bWJ5Y2xtZ0l6?=
 =?utf-8?B?bi9QdkFoZG56MjJwWlZaSThhREhNcEJha0w0UnFyK1NCT2s1Q0h3V1BYMTJR?=
 =?utf-8?B?TkY3TThhM2poSVMxUkU2bXRUQ2JacTczY0k0ZjJOUDZqaUlCVFJvKzVrWGpQ?=
 =?utf-8?B?Mmk1VXRuREZJMXM4N2N4TUVJNW1WU2cyQ3d1TjhtMWhQNVVnZlVHVllXalhY?=
 =?utf-8?B?T3l3Q3dEck1oWmhEVld4dnowTk9KTldBZFhiYjVTWGEyRkFheXZJcitOcEdK?=
 =?utf-8?B?Q21XSlQ2dDB0Ump1NGpiQ05Dd1ZvcXIwTGJZMFR4NS9ZRDZFTnNvSnMvWGJX?=
 =?utf-8?B?RWlCZG0yMmltcENIRXQ5akZZU3dieXVlNVdHRE94d1BaN0d6aFV1Rmtzb1BK?=
 =?utf-8?B?Z3pYOEpMcGZ2dVc5Z0w5QXE3OHN3QmdCTDA4TjlRZWN4NkpmajN0aTdkZGdr?=
 =?utf-8?B?RVhjRW5hWTdZTWRNN3JHeXlQNmxGRmhpTUphQ1BHMW5zeVJzcmQ1eWhweG9E?=
 =?utf-8?B?OThaK3dOOXRXK1BPdHp1WXZ6WmNpZldiQi9UU01RejM4RzBVQTczY0kxTmF1?=
 =?utf-8?B?RGNqeThDTXgrUmtoaFlnNnpIdnRoTERjZHhuUEdJSFd3dk00Y0xhYnhJRHFa?=
 =?utf-8?B?Sk9wRkFud05VSFliSXB4UTk1QXVORzdscWtZREcyM0xFbU9SQnBmZmk1c3di?=
 =?utf-8?B?RGQzSWZWeWVlTXE4aG02SG9oVUI5TmVTTzVPMDZTdkl0OVhvSGpUWUdSWGFy?=
 =?utf-8?B?bzR2aEZoQlF5ZG1JeS8wMm1qMUlzd2QvWXM4VWo4bXMzc1RxaUQ4d0VmeUtL?=
 =?utf-8?B?cTJZQ253eTZDaFo3Y3c2Y2RDTElDUHlGQ3l6eWpjbWNBbUJsdUNiTnJZZ3pT?=
 =?utf-8?B?bVNHZW9KcCs0dnduZWdBZVhReTJhY2ZBbWZXNDg4RXpLd25jZFRkWW1PVXd4?=
 =?utf-8?B?WGc4VDJwV3NSOVI5YjlyQ3F0cDlrajFOYWlSMmFQUjhjcXJidjJuQ25JYUg5?=
 =?utf-8?B?eWRUdU05Skczbm9LU251elFtdStQU3NkU2dtaDB0c2hKd1FJZm0vdS90MGhn?=
 =?utf-8?B?MVczUVdwVGhtNnpxcy8wUTRaZkJVdm1yUjJtZ1JUTWRwcSsxcWhFYlRoU1pP?=
 =?utf-8?B?dGdFbWFWTmM2bHNXcTBKOHhOWUVSTUF1bmZNVkxoQS9NTHU3MWh3UTJKcm13?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e87c2363-5925-4cb2-d64b-08dd2f247ea4
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 14:06:34.8223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GeP+2bXHFhn+insRhGMbHCS0fuqKkatWJGXHYeJMRJ38ibUcDaZrRtal10fgRrWZoASYT4F+jkvrPWs6LiwwdqULT+V7UbEnygHVM3OxzEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4800
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


On 1/6/2025 10:21 PM, Mitul Golani wrote:
> Check if dsc prefill latency is sufficient for vblank.
>
> --v2:
> - Consider chroma downscaling factor in latency calculation. [Ankit]
> - Replace function name from dsc_prefill_time to dsc_prefill_latency.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 25 ++++++++++++++++++++
>   1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 95f60819fe0a..900e1c54450d 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,30 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +					&crtc_state->scaler_state;
> +	int hscale = scaler_state->scalers[0].hscale;
> +	int vscale = scaler_state->scalers[0].vscale;
> +
> +	if (!crtc_state->dsc.compression_enable)
> +		return 0;
> +	/*
> +	 * FIXME: CDCLK Prefill adjustment to add
> +	 */

I am not sure about this.


> +	if (scaler_state->scaler_users) {
> +		int chroma_downscaling_factor =
> +			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 ? 2 : 1;

Ycbcr420 as mentioned in previous patch.


> +
> +		return DIV_ROUND_UP(15 * crtc_state->linetime * hscale * vscale *

This again need to have hscale and vscale right shifted by 16 like the 
previous patch.

Also, it would be good to add bspec reference in commit message.

Regards,

Ankit

> +				    chroma_downscaling_factor, 10);
> +	}
> +
> +	return 0;
> +}
> +
>   static int
>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2333,6 +2357,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>   		scaler_prefill_latency(crtc_state) +
> +		dsc_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
