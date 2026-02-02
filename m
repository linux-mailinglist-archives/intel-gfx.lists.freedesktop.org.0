Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHCwMjBagGlj7AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:02:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A907C9754
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47E910E1E8;
	Mon,  2 Feb 2026 08:02:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJVT8NSw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B75B10E12E;
 Mon,  2 Feb 2026 08:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770019373; x=1801555373;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5PsNNQO3Ql10PLIggPHdu2eJ85R7QeOk8mEZfZYA85E=;
 b=jJVT8NSwjDf6yGRbFxeCNf70lZMLwgWeo/xFSnXbJAgeRmjd4QPs2Wji
 jBT01IqR8QaJuMPdBn0TjlC7WSXVSgcL5yWK9PJnq06ygCm+Ebkyg98iQ
 pwi7F3WuPg9vUgzZ+d9jkZ0cgku7Oc1bF/HAsklMwcq4aLjhin2ESL7Gy
 W3FA4MoxvBlNdqJS6/UkM8BSigPkJODuL6ouZAn5LWvB05Tc2shC0bCJH
 fzE99nIJajLJnqvANkmX53mkaSAQt7j47rjjN/C5FvjkOoPmk02iUGiIF
 3NlRpZnNL9LqEnbMwzfxcc7jGnhCEww/D66aFYs3SS1KNkSV3+/mKMo1/ g==;
X-CSE-ConnectionGUID: wkFQjwsZQnKUJU747uw7Ng==
X-CSE-MsgGUID: qQ6W1QkQQHWka4k3CUIhBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="75031157"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="75031157"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:02:52 -0800
X-CSE-ConnectionGUID: SGbZf3t4Q12s2imhGC7GPg==
X-CSE-MsgGUID: mtFesl7eSbKsyn+49q5Z5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="209744873"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:02:52 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:01:27 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:01:27 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.59) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:00:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SOWDRKtwjeSXC/kHf7Bq1PDTWzq9OyGI3/UFqfLCV7b/s1XSymZBEV+qTbW1RLbR9XoWyHXXlhlVpFH5QyAQP5yfryD2mAijxqFnNFp5gJbqeM4iGQOytPLtwSDVzbvcOiF8MJkJIeGqnJx0QlIz1LacTSWgcu7QBJ8YGQHrUd+UwKKC29QbpQ4aKQju+hvOaMEYOzsEvyKn0GmY3gie/oC1dPTuv/lfyRqr5pkYABagt8LzkS9uTjh8aaO3HR4DgjRIXRFXAFSZ5fFQbMZDF++K1qo8JmY17hFQ+QHOsY4DECX4+e+1crCmzhsUB0TTfibfaxBWT+n0va+Qp9ocGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YJ2cO4qEobIFBYUAQJbClrlZHi9h6fcQSmH5VZv/S8s=;
 b=xy84aJJAGkn5VcpDJYEoBfKUA3C+ztUd0lRmmMQ3d+dUMJHWhvmc+eXzuGfQMd3jikT9HjP6Usd3b6BHsB57cTF3+yvcUgg/+u77MynHg5RgfaCGUi+U4CT/h7gHtts/eO+S+kpEyy+xlYiiI4YoVGK/lxOjhEGCVi80/pZjIYpK6xppv4MlsZoGQzw0Ii5y54BrsBTiT+WR4Gt3LurftWPoydk7kdhR/a7x5lE2W0KFIpDDFZFgu38fQtrOypW0gZ020olKYNYff7ArwZHMr2c+B746u/XhasvRO8p39vU90I1pYC+/he3V4COrTHs5fhiJhmcbq50c+LZsNgb7pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA4PR11MB9394.namprd11.prod.outlook.com (2603:10b6:208:563::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Mon, 2 Feb
 2026 08:00:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Mon, 2 Feb 2026
 08:00:49 +0000
Message-ID: <339b0078-060a-43df-9bdf-33317796f5dd@intel.com>
Date: Mon, 2 Feb 2026 13:30:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/dp: Add a meaningful return to
 intel_dp_read_dsc_dpcd
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <arun.r.murthy@intel.com>
References: <20260128044904.1293185-1-suraj.kandpal@intel.com>
 <20260129041816.1332954-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260129041816.1332954-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA4PR11MB9394:EE_
X-MS-Office365-Filtering-Correlation-Id: aedcd6a6-8a56-48d3-0b66-08de62312da1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFN4aHArdGlGUzFYTGsyeEZhaU40Z2pEOGdoZUthc2ZERFhqRDhJdzR6Z1VU?=
 =?utf-8?B?d3l3ZzUwNUJ2K3Z4akFOMVVmTENwU3o2SFFjaTJyc25GakhiSXExNSt0WmhN?=
 =?utf-8?B?ejhkZHJMTkRtKzNSSkIxZTA5MnFPTTgxajdrTFVWa0RHbll5VEpmNTNXcGp1?=
 =?utf-8?B?b2l1b1NNRkNucy9oSVJrUHN5TUVJdXJHV21wSEdZVFFFM3RNcXk0U1VIR1pv?=
 =?utf-8?B?QzdzQ3JJbzlIbHVEcmxxMjZMcUU0SXZKQjNrdG5IbnJDeTQ0MEw0L3E2N0Fk?=
 =?utf-8?B?TTd2ckxudmdOL1Vud2djVWMzcjM2ZFV5dTJ2bDFtTGxXaWpoWXdkTGtSaHNR?=
 =?utf-8?B?SUFINHBiVWo3ZXJpeFFqU0xEMzNLb2dHYWNqMzdTaHJmeFByY2hyKytJRjhO?=
 =?utf-8?B?bW5OQTJ3bEdvT2lwNlVBQUo0V2VrRGJMdmF3dHRQanpMWFJicEZTYXQvRWpk?=
 =?utf-8?B?OEZpRU5NU2tOUTBQdU40RlpmQnQzVFF1MHBBWmtTQ1k0MTE4Z2VOSmRoMEM4?=
 =?utf-8?B?Rm1VeTBHVUJrdW5Ga1Z6RkZiWjRqeksrb081WXNWSnRIZjIweXp4YUhWY1Fu?=
 =?utf-8?B?NW1tSEo1RmF5WTZNRTlwQ2dQbE02MUozZHd1dEs1QUNGb1NKbDRpV2tpdGoy?=
 =?utf-8?B?VWNBUVhmM0RqeDJNUzNSc2tZT1RsVHc0WWZwUUdTK0FUQllnODcrOHVQNjBa?=
 =?utf-8?B?WUNWNDBVektUbnhuSmRPRTdEZzI3aWpYVnZLd2RObEVKQU1FekttUGNtZStx?=
 =?utf-8?B?TDhtVlJNYm5iT08xbXRlYm8rUm9EbThFb2F5dGhtV2dyR2EwVkNqMTR0VnB1?=
 =?utf-8?B?eFpWUG85ZXpFRFRkd1FvaThqdWQ1Tk5kNkhGU1JQMkJKdEFaTm5PV2NPZmJN?=
 =?utf-8?B?R2FUb2xmQUMzNDFabVlrMC9OOGlLWnJjMU5FQjBKNnhqdHdOdGp5VktFYjho?=
 =?utf-8?B?Z0loRFNFb1VZZFg5S1pPblBkVElENzFUZzN6dGdTaWh6bUZvejdWckxlL0o1?=
 =?utf-8?B?YW15RERzWEtWN2RROHVqOVg0UUt5a0wvRTdRTkhpUXlYeTJDMVBueDBPN2ZO?=
 =?utf-8?B?WVZSUlQxa3Jpd1lUTThIVXhtNXZoSUErNEhrL2NINDYyWlBkTTJWUW12WEV1?=
 =?utf-8?B?Ym13cDBrajMvQUYzRWJOTTE3MkJFd1c3M2lENUQ4ZnRUUGlMTW4rdDNhcGdF?=
 =?utf-8?B?UTMvYWVrbDJuQ3hpNlNZNWtiaUNHeEFBdWUvMWZWaHFhOHltbDBQY0FBamVD?=
 =?utf-8?B?d25lOGc2b2EweG4yY08wTU1wU0E4eVcxQ2lhQjJvMjRiM1NyUis2YXlBR0Rr?=
 =?utf-8?B?Mjh0b09ML3d4c2JabCtNR05rY0tFUXdva2c3dytjSWVxWCtCeUxLMzNqbnMr?=
 =?utf-8?B?cXVrbmRGcTFBc3QybkZZRFpTMXdrckJaSEtVU1dEZ0RkSEJxYVZ4ZnQ5Q1pM?=
 =?utf-8?B?KzN3NCt0SGozU2ZBNHQrcjFLc0gyUDFGY1FtU3h2Q01JZ0tGd2FNZDE1TlB5?=
 =?utf-8?B?cVJiVkpKUktYeCtwQ2s5TlIzUUc1dXhtbzU0Ly9BRXV2bEluZEFFblVGR2Yx?=
 =?utf-8?B?T0NjWU9QV2FyMXFwMXNBdXhhSHE4aktiWDV0OWtDYVd1cEVnYjZKM2I2VkVC?=
 =?utf-8?B?d21TUGpZV1ZDdXRWNE0ySUtid2ZLMGdlRkpsREpMakpnT0oyOFBRMVJOTkc4?=
 =?utf-8?B?ekZTMmREeWtLWlZLQ2VuTS9MODc2S3FaajBESmdTL29PWnZWd0xaRGNFOXNy?=
 =?utf-8?B?TlhkZzR3cTlDZ2VBSUlKbC9NZ3ErUHFrZnlFUGo4d1pIWXRUZ1hqcXRXVWdo?=
 =?utf-8?B?dlZMSTJ1QUxkcVFIUE9qWnE3QlR0b0IvbTJPSG8yWlJYcUdVSzJDZllSaTZW?=
 =?utf-8?B?ZlMrVUQ1dmRJNDFoNDRpdDNUTC84L0ZXMzU3Zk9rZjNjeDE5Q0JWMDBobDhq?=
 =?utf-8?B?TTZ5K2lXb3ZPUkYvYVVNOWd4eml6blo4YmZUbzZIR1FhKzZEVHBQRjdhUDdN?=
 =?utf-8?B?VVEwVVZGSVNYblVLRlJwMDlmL1dGQnA1b2JnUzAvblRaNlZReXg2SUxZUUVh?=
 =?utf-8?B?OVZJekIvWXhPNGhnQ2srVkMxcUNCU1QvQ3NZVTQ1eXBIOGpZMXJWWG1lTmJV?=
 =?utf-8?Q?0Yus=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlJjRU4yUXhhdFpSSGRNOUVaNFREaFVFbDZXOHhlWXVBRTJTMDRlb0g5WHdE?=
 =?utf-8?B?ckxoMGM3NVZ0SUVwNDBiT3pRV1prWk9IQmJUNzMvc0RPalUvZytpQ2tPV1pI?=
 =?utf-8?B?bFJrN2dMZXpLSDVic3lva3JmRkhOaFE5LzVwaEFIYi90cXV0dVFsSGN2MlpS?=
 =?utf-8?B?NnNMeitWcTc5OFgzaTJIZTcxVnJmalNjM2pTeVE5eU1wN054eTVJQ1JORDMy?=
 =?utf-8?B?d3BmZlhuYVozcXE1dHhaMndLMFBYTmp0elk0OTBMRnIyUXdlMHliYjhoREZL?=
 =?utf-8?B?MU80U0hwdk5NaXo3WmFxSWRLZHY0aE5sRUMrMWFqMDB6UE9lSkFWYzgxaE9z?=
 =?utf-8?B?VmwzbXlTdVNTbXdiVWs1U0d0YU5KdGdHU0V1WXBBeWxYNTZ6UlNMS0ZrZmdU?=
 =?utf-8?B?ajBUQ3Y3YzdETTRZUmN2NUJlb3RFOEdDVkVURlIreElhaEZZejFoZTZNSUpJ?=
 =?utf-8?B?MzR1c0VvRHNnYVBSZHM2MUhMVjZ0RjgyeTNXMjFtSFdka1c5WkJEd2QzaUx0?=
 =?utf-8?B?RmJTSzFKVkkzbEc2cFJROGVnUkNFY3ExcFhRbzFPWEJBV0lWWVhWb0tKTzcz?=
 =?utf-8?B?RE84eUIrR0Q1WGxLVzBPNS8rQmZKaGRkKzg5VitJU1ppcWl3cTVEZFgyNmU0?=
 =?utf-8?B?R09Cb2FlTDVhbURyRmwrY3V6SjdzdFY4TXZ4TFJBalVEdGpBYWZ5RmZjdjgv?=
 =?utf-8?B?TFpHUTNGVEhlZjhab2hCNHU0UWlSY25XMVhRYU95Njgwc2VRdXpKU2hPeDcr?=
 =?utf-8?B?Y2xZd3ZrKzZ1MlUybEh6b2dEWktqQkRyd3R1cjFwUzhLU1lLMXNqVW1vZE9p?=
 =?utf-8?B?bllvNXZXNVVUcGY2bEczU2JINXlKQnRKMmMrYm5kNG5FUzVzc0JpaEgrYzJ0?=
 =?utf-8?B?NXVTa0pIbWkya3Y2ODRsU2xmYklKSll6bU84T2ozYVZnVjBQeEFLQ3g5YU5z?=
 =?utf-8?B?RWpZcUNaM0szdlZHM25iaU1RbVZqZ0JKMk9EWDVHTi9HTk5ONWNsdGxlc2Vs?=
 =?utf-8?B?aW1obGhLRFNzM2pIZWRFTlY4SzVRVW85YisxSnJZZW9Lb2dCeVQxUlFzVlR0?=
 =?utf-8?B?QTdtMkZIOFdDM0Rub3l4L0NSVm9YYUpSd3N2VXVReTV5UWNPc2pjWmErRGFm?=
 =?utf-8?B?WjVhdmVKMUhRNEVOOG40UDErdkJ4TzhpbXhXUE9Wa1hJc1lGV3lRZ25oR0tk?=
 =?utf-8?B?QUpRWUtWdVpWT3VuK0tNSEd0aVJKWUt2U2t6YVh5WkZsOStmbkZPVTdVNXNU?=
 =?utf-8?B?YnFZV1UxdDlSWlRJSHJOMWUzOUhzMmFnUXYrZnZrdkJaOXkrTllvWXV5dngw?=
 =?utf-8?B?RkpndkgvY2ZZckc5cFZXVWtkb09NMk5NSmZJZ2N6YTBET2xDV1VoL2k3MEZa?=
 =?utf-8?B?MXJPZ1M3ZnRxajJXa1RMS0RXc2RpaVppNmtOR3ptRDdTZFRZQUNlMmlMR0Rw?=
 =?utf-8?B?Z2FqdXNicjZhVHN2eTZEejVEK0M2dStCRHlhaDRHTU81WHpvc0Z3TkZha1cr?=
 =?utf-8?B?a1NLUm5RZDI0S0hGVDljY0dwd1lPQ2Z1WHEyUUxieHNudDY2NVczQWViUHJj?=
 =?utf-8?B?a0t6dlU0VVYzNkFXNTNGTUxPYkM1RmFISXdVelcwT2dZQmxzZ3kyMm5ubTVh?=
 =?utf-8?B?SGZXMEtsaUJZdUFYVWdmMGdJanpJVkhiOGhSUVhlcDUzK3VJclZNQXAvai9D?=
 =?utf-8?B?NmxuY3NhV01tT0dSRFlKQzIrWHI3RGVqWmxVb1JjRm1JNk9DY1NVeTVqU1lp?=
 =?utf-8?B?WStmRUdjU3lCQzh5U2FueEw3OFhlTzNRNGFiNlZyUVUzSXdhZ2RFcHk3OThK?=
 =?utf-8?B?aWNPMjMrdTBwbExVd1R1SytZR1M5bUFrMnA1K0F2RThjSlZwVG5aSXhRV3ZV?=
 =?utf-8?B?NlZzL2xHU1RzdXdxMDhjQW9QNEtHclp5Rmlpb3Nid1ZZQWVjdDBTRUpBK0E5?=
 =?utf-8?B?QmVIOHRIcnpyenVLSm1UY3Z6UjFlZm14c3VxUHRGT3huUzRVQmZQaEx0NU5a?=
 =?utf-8?B?VG9xd3pQVWs5Yi84M1ZWbDRHZ0dJNGd4VGZtOXQxc1dmMk1IRE5JRmdqQ1Ja?=
 =?utf-8?B?MlVmMkkzZXVaTGZCRUtjbFRLS1NJK3lBTjRQZ0EwdEZwcDJOMVpMV3BTZHFh?=
 =?utf-8?B?QXJIbHRWKzFMcFdxdktieGVqK1hCa2lJN3prSTZWM2tWRjJOYk4rK0FQNlph?=
 =?utf-8?B?azlnaEJPMXZSNkFwOHhNRlFKeGpVbTJOS3paeEtpSGpHSnNGVWR5TTFiZmFp?=
 =?utf-8?B?a0Jxb2I5dDdnbnZ4ODZkOHAxc1oveXllTXprTmFEUmwyWHlDbUQ3MkZBR1lx?=
 =?utf-8?B?VWQzdWx6WXYyMkVBRisvWHdpTC9TNXpBKzAwUlh6MUJDRURQOWtud1hTT2x0?=
 =?utf-8?Q?f4vUreQremRW20IM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aedcd6a6-8a56-48d3-0b66-08de62312da1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 08:00:49.5519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0ExyE1ilXKNG5kVNAhSVya+Ly5yy4ULwFNYbVPSg8SK8uQTirH+/BAkeKTNbkG5ZRxsErrtF55fvR44mR1g5C9oF1554j8KzB9PiZPQ8rM8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9394
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
X-Rspamd-Queue-Id: 3A907C9754
X-Rspamd-Action: no action


On 1/29/2026 9:48 AM, Suraj Kandpal wrote:
> Add a meaningful return to intel_dp_read_dsc_dpcd. This is to avoid
> unwanted DPCD reads which are not needed once we know DSC DPCD
> read fails. To do this convert drm_dp_dpcd_read to drm_dp_dpcd_read_data
> which returns a meaningful error which can be propogated up when all
> bits are not read.
> While we are at it convert the drm_err in intel_dp_read_dsc_dpcd to
> drm_dbg_kms. This is because we do not want a hard ERROR when we
> call this function, during the intel_dp_detect phase since AUX may not
> be up, it is expected to fail but we do not expect a failure in read
> when we call intel_dp_dsc_get_sink_cap so we move the drm_err there.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
> V1 -> V2:
> -Commit message fixup (Jani)
> -Convert drm_dp_dpcd_read to drm_dp_dpcd_read_data (Jani)
> -Propogate the error sent by drm_dp_dpcd_read_data up (Jani)
> -Use %pe and ERR_PTR() to log the extact error (Jani)
>
>   drivers/gpu/drm/i915/display/intel_dp.c | 33 ++++++++++++++++---------
>   1 file changed, 21 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 79fd3b8d8b25..ec277dcb24bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4281,20 +4281,24 @@ static bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>   	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
>   }
>   
> -static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> -				   u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> -{
> -	if (drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
> -			     DP_DSC_RECEIVER_CAP_SIZE) < 0) {
> -		drm_err(aux->drm_dev,
> -			"Failed to read DPCD register 0x%x\n",
> -			DP_DSC_SUPPORT);
> -		return;
> +static int intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> +				  u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> +{
> +	int ret;
> +
> +	ret = drm_dp_dpcd_read_data(aux, DP_DSC_SUPPORT, dsc_dpcd,
> +				    DP_DSC_RECEIVER_CAP_SIZE);
> +	if (ret) {
> +		drm_dbg_kms(aux->drm_dev,
> +			    "Could not read DSC DPCD register 0x%x Error: %pe\n",
> +			    DP_DSC_SUPPORT, ERR_PTR(ret));
> +		return ret;
>   	}
>   
>   	drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
>   		    DP_DSC_RECEIVER_CAP_SIZE,
>   		    dsc_dpcd);
> +	return 0;
>   }
>   
>   static void init_dsc_overall_throughput_limits(struct intel_connector *connector, bool is_branch)
> @@ -4345,8 +4349,11 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
>   	if (dpcd_rev < DP_DPCD_REV_14)
>   		return;
>   
> -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> -			       connector->dp.dsc_dpcd);
> +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> +				   connector->dp.dsc_dpcd) < 0) {
> +		drm_err(display->drm, "Failed to read DSC DPCD register\n");
> +		return;


I think we can skip this. We have already mentioned the dbg msg in 
intel_dp_read_dsc_dpcd().

Also that way DP/eDP will both have symmetrical behavior as far as 
reading DSC DPCD is concerned.

Regards,

Ankit

> +	}
>   
>   	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux, DP_FEC_CAPABILITY,
>   			      &connector->dp.fec_capability) < 0) {
> @@ -4376,7 +4383,9 @@ static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *
>   	if (edp_dpcd_rev < DP_EDP_14)
>   		return;
>   
> -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
> +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> +				   connector->dp.dsc_dpcd) < 0)
> +		return;
>   
>   	if (connector->dp.dsc_dpcd[0] & DP_DSC_DECOMPRESSION_IS_SUPPORTED)
>   		init_dsc_overall_throughput_limits(connector, false);
