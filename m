Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOC8KWhJc2mHuQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:11:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C7074085
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28AE10EAA1;
	Fri, 23 Jan 2026 10:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTSefmba";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D0C10EA9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jan 2026 10:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769163109; x=1800699109;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=RgZwedHqXpoz54KvGhXBcm1J0vNsBSL1kF5EUElrOlU=;
 b=VTSefmbagpN8udh/paUtLYUUmvzKUX+qo2kitQJIuagefbPPaqA6LQ/P
 p6deAPYV0ijCCcfwigA4JOUuJ7cpKZqbxODAQ9bGrDqPpzkfn+FzoBSVY
 9X+wMOVRtnpW/xxb9sFogWPGtHsVp97qbuUoWvTAUN0KuDotxn2ZORmdB
 68qUBgrd/ej4DjRun4WY2S8GqRJtMXMD4FZvNBDpgB+rJc8s/lsdd+XqV
 ngZ+FXILKIRyWYFNRA8goCiCUIS9ab4NbxDMlJzeUqU5s8YSc+g5sZQax
 vNC1BE8MQp4orJFaKgEEFLn+FKs6B/ZGYarMGkK98ZSDE3EFUs94JgdrO w==;
X-CSE-ConnectionGUID: bmZBY2D4QF2MklDModgFPA==
X-CSE-MsgGUID: Up5xL6L9TiOVKlTuVXHvSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="93083373"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="93083373"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:11:49 -0800
X-CSE-ConnectionGUID: qg9Z44onSlKNwJ4ao7xjRA==
X-CSE-MsgGUID: C5HH8OheTCmjggl48Ug7ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="237642770"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:11:49 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:11:48 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:11:48 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.48) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:11:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tGbCjlPx8Hf9ol5mX2O1DB7MoLZ90qOXSC/VfJCP482lc+RQ0JUfR5PRAB4AC3RcPcmkbQ+Jqj7ebpiitVzEwvSy7pE+LXHUlF/g9gFraWns9uT9NF3/zhsulNqjWAkh2ndyEPhc8r3szUnxuL8BuvacA1sq/DbDfcuyEwFLRgWhFWVCt+hWChQsoImX4DXWfLNWcjb3Si9Vy7GiJIXj+Nfvx07Asq0Z4VJXRngfGRi3tEeXDpQI3rmRg1neLkAIVr2D4LncD1r+0pj6ZmUnXwaqtksqaAghv7rf6roFJ9yKcuEKV9lf544lprRksKa58M2joHT4iCE/qpbTGjY9ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TvwLOF75qM0X/D/jAokMRxo7GQ+MlCUr1CImL876H+0=;
 b=zRcpsTeSvUKWJSHB7L5u/YlKAZDnbUCi4djfusFf7vQTMT6qUgdHbACxGa6twph9F17ZQRUAhsjg9D1q0xV1UCAOaSbU+m0YEwt6SAR3v8khBqZN0Jee5PaEBoj+dYrnipUl+PtIBjlpKhRjn+EDK7f3blYBrfZalMUQrBxYfNA38fFoHJEmGebTrp5mpMMeVOMrLV7nlOOcUIgPzZyvdpEJrqytoHzUVJqNKD6y4lulbUE4+Abdin7wjoFooLJcX2/m89h8IB2aiZXluGcSuRSUIXllRR3abs9hogWRlT5go17HCGxbe72Ip93sG8JT0GzLnRZsAZ95zrYV0kSokw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA3PR11MB7487.namprd11.prod.outlook.com (2603:10b6:806:317::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Fri, 23 Jan
 2026 10:11:44 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:11:44 +0000
Date: Fri, 23 Jan 2026 10:11:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH] drm/i915: Add vgpu.entry list initialization
Message-ID: <7updbd6x7fmw4g3tdf3r27xblf4www7xxsxyrncc35jokiuxvr@rflx6oxm5au5>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: TLZP290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA3PR11MB7487:EE_
X-MS-Office365-Filtering-Correlation-Id: d8fd4875-e235-4138-b6e6-08de5a67cf6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cEpFNkdtSFFoMHJVeVdQK1hxWmZwZktxS0JmYklDdnJmQm50NldGZHh2WTE3?=
 =?utf-8?B?SFViZnNTbzdLQU1WVmZJVmlIdkdhUmZlaXZETUNNNE11cUlYZFlsNXJVTXFL?=
 =?utf-8?B?V3FxM0ZwZ25oamlPbzhzT2dIdCtlcXE2d21PMVdQTUpBeXlnMWpJdExDcE1p?=
 =?utf-8?B?WEVPbmZ3ckRNVkRGUC9IK0EwMWZwNkw0UWgzNEVTNXhsVXZlQ0xQa09FZWdP?=
 =?utf-8?B?cTdZK1VFVmV4ZjZzeDU3QTFrbWZRTUZDZW50VzJmblYxUHYwUkloekRVdFZn?=
 =?utf-8?B?VlZldEtwQ3BlUnE2eXhLdXcySXY0bUIzdEJ6Tmc5RHZOOUI3UnlCamhncjBS?=
 =?utf-8?B?NldPdlg0UVIvdktNcUo2ZXRhZDN6MDJEWGdFNGpKZXJWRE9lNVhmYmZKVXdZ?=
 =?utf-8?B?TzVsZXppdXZISUFaNS9xWURwelhJOEdMWXFpMzdqU3N1TWVEL3g1dm1TN21N?=
 =?utf-8?B?UjN5ZEZIZjlQekl3ekorTVE5eFZOYVJrVE5XTnZkNHNsWlhPcWo0bWErdFlD?=
 =?utf-8?B?bkRuZjlWQ1Q2cnVnbmw0cDdzZ2tTdTVHUlhWZzhyazNmVGMzQksxTkROdyto?=
 =?utf-8?B?L0Mwak5nQjVLS3lqUERIMm4ySFFJaEFVc2Via0kwdTJoM3pQK2dSbVNKT05Q?=
 =?utf-8?B?d1NJcFRrUEpiVDNrVG9sMjhyK1JmdFBnUmZJODV0ZmdQZDVzL3hRdEluOHBS?=
 =?utf-8?B?UTNESGdqTEJIRXhWaUNpOHRFTTRFZC9OYU5lZHE0Y2JtRGZpY0RaNWFuZEEr?=
 =?utf-8?B?Mm1wUzRHRG9ScTJPQjB4SEF1eTFnb1FiS1BKYWNsRUxSWktueVlEaE1nSWcw?=
 =?utf-8?B?N1VyNWs3bXlIY28yRzV4TmJ2Rlp6d2lhaldacXNpZ2lqaHhOdGFIMWI0aFdD?=
 =?utf-8?B?Z3ZyaTBtb2liWk03dEdudzlGcUZiVU9sQVVkekhXbTdqbHRlaUlmWkVvdE1p?=
 =?utf-8?B?bnRISEhaZlNicFIvTWpYSmxRYzRFYUM5WU4vcExKTXlpRnR2SzlqVzVTSXFQ?=
 =?utf-8?B?OEZrZFpEWituRUxnRjZWaStEVXVMMzhnN1hIdEFRK2tBTTV6U3RWOHphd3RK?=
 =?utf-8?B?NXdMZDBOMkYxdVhOSHNlTTBIVEt3dWVqUFBmOTduTWdVeUFVeFUzU3NxTlBk?=
 =?utf-8?B?ck1KVVdqcWRsTk85aXB4YTYzRHR5dThER0hhQWtLSklLNkhUdkw1VDBjVnUw?=
 =?utf-8?B?c0xGNG42VmJRTGFIcDFTVktZS2N3VTdGMlNFelhPNlNOcVNDUkNsYnRHRmR6?=
 =?utf-8?B?Y042b25RckUxK05KbkQwOXZSMU5Oa2d2enArQUNhQk5nVUorNzRXOTFDMkJ5?=
 =?utf-8?B?QWlpclFaZTh2Y1lCZjNkMjIyZHViZjdFV2xsRjhKZ0lmTE9xaWExYzk5Wm8z?=
 =?utf-8?B?a3JPWlZxWHQ2b1BKUUdOSjEydGc5djJNTHhlUnQvcktXZlFESDdCem9QVWRJ?=
 =?utf-8?B?ZTlzOVMyZDlhM3c2MkRZd0xuTGcvZm5CejRjRS9iYkYwaXhRMGw5YjI5eU1Q?=
 =?utf-8?B?RVhJNXhpbktrTS9hOFBVVTY0T1pWRUlnSDlJTWVuYVNwNUNlOGNIc21LOEFw?=
 =?utf-8?B?Vnp3aHZ1VEVyOHg1R1pybFBsWC9jZlNKRlpTa01LNkU3VktvWjc3UFVqUmQy?=
 =?utf-8?B?U0ozNHlRUnhEMm5jdSsvU0pORkFTL25wTmU3bFpDd01jOG9FZ3Z3RUpUQjg5?=
 =?utf-8?B?SmVXNE1RM3dLemFpY3h5T05YZ3RVYXp2a1BNdTNqOWt1Y0NpNnYwdUdDcFAr?=
 =?utf-8?B?aWVHcm91ZlBEODZzL1JkNXdvak1KSTNIYzcvTzRuNnprSGlVamxON0ZCdEs5?=
 =?utf-8?B?NlJMQzNMSjN0K2pqMitEaVdCMnFDTkg5eDJBUkhaRllxWVZKWW9DamJhSy81?=
 =?utf-8?B?SVNvQ3gwWHg5NHQvVjh0L3lhY3BzNUJwSzBNM0JoNUVpWXh0YjhEUnJhOGhU?=
 =?utf-8?B?clpSNjc0M3dEaDNzMnFmdWdSUGx2MU90bkZWMUhlTnRkWm5hR2NzNjJvWXo4?=
 =?utf-8?B?Q0ErOEdjUlNKSkNvZDRrc09zdWU1bEROTXNFbmV3NmozQ2RZbVplWWRqdEdC?=
 =?utf-8?Q?yI3UDl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWVMMGsyNjM4aDRZTFRpcGpJNmVtUzdYRUZNSmtISVRrd1drYmdCdWZqMTBn?=
 =?utf-8?B?ZkpCSmIveFpMUWk4THV6aTloNDVhSlpmUGl3UzJRNm5tUFRCMktkTldMYkkr?=
 =?utf-8?B?ZXgveXp5N3o2ZjhmUGhaeUJUdk9RSkVyTTFvY2dpdnhhSk84Vkp1ZzZBeHFn?=
 =?utf-8?B?UStoUTBheExyU1ZmYnBmemtDWldsMXV4Q2M0UU1xTGc5SkpibS9vZ0dZMDR5?=
 =?utf-8?B?SWZ0TE5BT0JkdlJwNUMxbHF4bjdRcGdrdnIyVXRnUVJLdG1XbW16TCtsSFh0?=
 =?utf-8?B?NHQ0emV0azl1MGI5NGdyVmRKMndJK3ZwY2xFVDR6emFkUkQwT0VXaW1iV3V3?=
 =?utf-8?B?aklMUFROa2dsNy9CczJtbmRNRGkyYmloK2swc2V1a3luZmdOTVVmUHNaOUdG?=
 =?utf-8?B?RmdmNC9YN1FpM2NJcnh0RnZwQk84dlBRSFBXa2gyS2dzdTduVkoyMnhzV0E5?=
 =?utf-8?B?VzkrYXJTRElBbUJsY2pmTXg0YnZKV1JweG8zQXpVa3diNmhpK0FhSzIyT20w?=
 =?utf-8?B?Nzd3Z09LeERKbkFJL05rSGhja0dLY1FDemphZE14TjFhb2tyazR6TnB1Ull3?=
 =?utf-8?B?OU9XQjk4S1E3OXpLSXo0R2UwcVlxaEw5L3g2VFdRcG1mcVpQZFFZSGZMM2o3?=
 =?utf-8?B?SEJpdWhvYUdKdHQvcEZRREkzOTJwY3pQTStjL1YrZERJWDNrZWJGY0V6YzZD?=
 =?utf-8?B?SkxhMDFiWUMxZi9YTVVvRHB5Zm81TFg2dFlWc2Rxdlo1QmVheWxSSDZOVVQ1?=
 =?utf-8?B?T0s3aCsyMGhTbWxjSklJOVlXeFQ2ZEhlYkRJOCt3amdTY29JY2NFOWRBaXRM?=
 =?utf-8?B?ZWp0ejlOdmtwN3RvQXRlQ1pRU2h2V3JWV05oSkZJWFVMci9FTVN2S05hR25Y?=
 =?utf-8?B?MkMxWmQ3YnBzY0RQdnVXcnpVN1JNb2RDVVV0d0pkMG1VenlMai9SVUJXOWRF?=
 =?utf-8?B?Q2pOcThGMHJhYVQwRTFrd3VUQ3U4azMvY2t3ZkxlbDBpbGVSdEFwd2NDYmNV?=
 =?utf-8?B?Y2NXbXJGWXdlbzZ4cWZoYkQ5UDk2a1gxWXNNMCtBWit2NHFReHVCRzZ0bDZx?=
 =?utf-8?B?V0JQRmRRT2NlWkxPSHUyZW5LYy81cVVia2xWa1VSa1NwYmxaaUxlbUgzOXEz?=
 =?utf-8?B?bXU1dFo2bG1xK2dGbEI0dWJnbGJQWGFWdmkzdit4MWlCZjFWNzdKZXYzakEy?=
 =?utf-8?B?TGRGRWY4amFFYVd1NmpFNm1Ob3R4b2dxbnpoMGw2QXU2eG9zV29jdEZrSkV3?=
 =?utf-8?B?Y0I4c0h5MEE5UUM4K29vYnc3dlkvMG8zckp0UGlYdjJlT3puQS9lVklEaW5V?=
 =?utf-8?B?Z0twM2JqbzhtQTZod2FSWWpnR2tDWWEzUnBDOGhsTUFIQUdZMlpqcEEwc3Bk?=
 =?utf-8?B?elJ1c3JQS2xIajZzRUVQT1pxcDZRbm1DZEhkZHd3Z1Z5T0Z5ZlFDQUpzT0lo?=
 =?utf-8?B?aGhDVmNjWkFMWEs5aXYzNDQyYVZncGxXTlA5cEluU0paQUREWC9NUFBrd1N2?=
 =?utf-8?B?c3ZxQ2VDZmpNbWtVUVdsWExVUGVTUXVXZVlwR3dkYVVpM3V2VlAxQjlJQjNB?=
 =?utf-8?B?VnlHT051eHBnb1Y1Vnk5Q1hDK0hDT2FuRmJtckJjbkpZWWMrOG1WcElWeTBa?=
 =?utf-8?B?ajFGd212UDdJUkFmd1ZJczI4LzJqaEtSb2J2ZEViRkU1TDBiOFVxRDJsc1Jq?=
 =?utf-8?B?RWZVcGt2MmxtWUlXRHlQSXlMVFVmTGs0WC9RYVVqQzRzTk1mOTVBSlg1MFNs?=
 =?utf-8?B?SG1ub1ZOWjRvTUR5cC95ZHh5WWxDcnNtL1E2dnVBK1daQzFXVGUycEQzbHhH?=
 =?utf-8?B?ZmRFMXBMNE9JRnA5cDZHUlBjSmZEaFhIdTk1elMvQXFZc3Q2SEZ6R0w1by9J?=
 =?utf-8?B?TGM0aGxmRTY5ZGxLWktlQlUxUFpWYWRSM0lORDVEeU9RRGppN242U0tjMThn?=
 =?utf-8?B?S01ORHpSaTVWWWFZSnJpdjJZbmMxWmlydEpqRlcxbjFBOCtlZUh6bWlYZS93?=
 =?utf-8?B?RkQvZjlJL3V5UDZtdk9tQ3RqWlp6S2E0VDJ6eHNLWXdWZTdvR0NWS0tKbFlx?=
 =?utf-8?B?NHpZY2lrRUEvY3JOd3plbTlFNmYvM01JMUdRUkdSYXBTdytxTlZHSHFZSlhn?=
 =?utf-8?B?dlZjYXorbThIUWlQNlJrNTYvUzV0bUMzVm1ZU3M1dWZsbWdlTjdiZnkxNDd5?=
 =?utf-8?B?WGsvWGcyQ2hBN05RSm1uaTZrbTFsbFgwbUpTUnlaRVg3Y0UzRFhGVVp3V0NL?=
 =?utf-8?B?RE96NExFR09qOWlPSGMzdU5LOStCK0JaUSs3QkZoSGl5bk5kbUR3djR1SmdZ?=
 =?utf-8?B?VFNBYzhCS25US3RBWEpFNmFVcE13T0VXUElsQWRESXdWeHhtS1hlaTlCcVBv?=
 =?utf-8?Q?u/I1qyjFth/7S3HA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8fd4875-e235-4138-b6e6-08de5a67cf6b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 10:11:44.5491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kCGHAJ1EvvQ8OKILo+eM+0qWVeRFfzGizba9BZ2DYe53763JaqDio3kPhihPmbXcuMqYdIQpUOROBYSODpNVI/pEHwFMMFP95PSG8CniWNw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7487
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,01.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 20C7074085
X-Rspamd-Action: no action

It was observed that during fault injection testing the
vgpu.entry remains uninitialized when taking the error path,
which results in warnings [1]:

<6> [491.828427] list_del corruption, ffff88812cd2d0c8->next is NULL
<4> [491.828430] WARNING: lib/list_debug.c:52 at
 __list_del_entry_valid_or_report+0x6f/0x120, CPU#2: i915_module_loa/2921

Add initialization step to intel_vgpu_detect().

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

Example of failure from intel-gfx-ci:
https://intel-gfx-ci.01.org/tree/drm-tip/IGT_8711/shard-dg2-5/igt@i915_module_load@fault-injection.html#dmesg-warnings385

 drivers/gpu/drm/i915/i915_vgpu.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915_vgpu.c
index d29a06ea51a5..362282b20f7b 100644
--- a/drivers/gpu/drm/i915/i915_vgpu.c
+++ b/drivers/gpu/drm/i915/i915_vgpu.c
@@ -67,6 +67,7 @@ void intel_vgpu_detect(struct drm_i915_private *dev_priv)
 	u64 magic;
 	u16 version_major;
 	void __iomem *shared_area;
+	INIT_LIST_HEAD(&dev_priv->vgpu.entry);
 
 	BUILD_BUG_ON(sizeof(struct vgt_if) != VGT_PVINFO_SIZE);
 
-- 
2.43.0


-- 
Best Regards,
Krzysztof
