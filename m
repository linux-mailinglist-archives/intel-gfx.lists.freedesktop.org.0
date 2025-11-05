Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67410C34814
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 09:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA7B10E6D2;
	Wed,  5 Nov 2025 08:37:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a1enQKwR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF22310E6D2;
 Wed,  5 Nov 2025 08:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762331851; x=1793867851;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Rwfs/DSB7eMA/NRr1UP5+ZYk7t2FAPzK86uDq42vlFA=;
 b=a1enQKwR4hzOU+OZ8eDMbaBaiawXvwfRAMkYnZR6Ke5uTfHX60oC6HqY
 YkZEXwdVTNhIvAHn/pURfpn9MI+E2+qepZgNkTWw4yYTuxyyMHClw3Cyr
 emuH2a8XtLjaDVxJYvEXgq/ClmZ4aJt5cSOEaGI9oqg9i5CYsv8Gpjqay
 5GZexKT1+1xNYh8eS9YFCDX6covOBqwTjC577Z0rVKS1YEk99xVm8/iEI
 MKJwcCu8IRReFS+4QNdqXw+DQ8PFhyU7p6/GwMMvaSrvXOthNXat2dqcI
 DcxAdMsMG9g4GCwEgScsp2eoNA6LzoiHGmNpd6HEbxMrPfzk+CduZevBV A==;
X-CSE-ConnectionGUID: qFsqfOv3TZ2ZytVBvEBLpw==
X-CSE-MsgGUID: dW7oKrOZRna1ZmJpN+LnLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="75045446"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="75045446"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 00:37:30 -0800
X-CSE-ConnectionGUID: 9uwHQol6SZWRSL3jZSj0vQ==
X-CSE-MsgGUID: o+7flj8vTTKcEMcsBwyNgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="186683634"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 00:37:31 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 00:37:30 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 00:37:30 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.8) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 00:37:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vNMnCWYPa6a8wS0ehDQtx4aBfJeXn/fD44jok7mh2t1tePwTg4pU1ZjrUvwoDVHlhGyGcXIbjAZAp+8eEQRswI9owDxkQw6MXGFV2rFnkGqfjZWVHLe1WSoCQ4iFvEFWTgpByLzDzJ0DEIhG+FFGy1ZxQi0qoQzaXyPNAZlrBQMmVb3sQwX+KwrCfUmqWuZEUGNLAvyj4NFzHzf53oS5R+iOatmTlHv+vcGoFnLcSvKNbB+QHwt7eii0ec/5vlziRtdYT+fhAZuS/OwcuXPDUiqzBjKZFnj/O+AqxXzIly15SSNOjGVtjGr9xjv83eOviOGbLOvJQ3scJuz2rzX+Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0jeLpt162taRm6DY5HeJ6bsvSUccYHIwtZ6H1VgHqFg=;
 b=ZhiGiEt5ZhaVOPj/eykwjqAO9lvBDOfKVOQ9EitT4McDQoZ0QgkJwUbAvxCQqPojA0pPZ5swnZRMEZlkxFDLd938i3K6asoWMxnEB4HFKw5vJcSSMkxyDDMP1+QGjhymTWEBw+GBg8lVJ/OTpfxfnnVXUwND1gnuOhwopvYidFdNZUL4bb1yzqStY9xPU1eq+CEZuuq63iE7u3XnBDMO2MXEyc8XnO6FRm6nCd7wd1x04k4E+TpYcCXKv9eCRSsBJtXaKttHQJN7LplQknyFq7lGRR/WR9MnSgp6Gdrq+akXl/WZ2AzzEoQVoaqK7+gHRAQ4iZ8CP1ek7pPTCqmOQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA4PR11MB9129.namprd11.prod.outlook.com (2603:10b6:208:55e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Wed, 5 Nov
 2025 08:37:28 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9298.006; Wed, 5 Nov 2025
 08:37:27 +0000
Date: Wed, 5 Nov 2025 08:37:14 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Andi Shyti" <andi.shyti@linux.intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
Message-ID: <r5cgmntobqaj2ou75odamzl75itjp7hbkmxbkb4ek3tnw67wai@lqryev5nzshq>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TL2P290CA0027.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA4PR11MB9129:EE_
X-MS-Office365-Filtering-Correlation-Id: cdaff79f-7231-4ff5-696c-08de1c468d53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bU9jemNxWDVHNjgzVE9RV2hKUXVQV2dVNUsvU1B0ZDJyejdvbkZGNStvUnph?=
 =?utf-8?B?OHhlcTVoaHROMHNxYmtkZWJwcXB3a2M3VG9PNzRqOFNNelEvV2pOTDUzbkht?=
 =?utf-8?B?NWtJSmIrbHZ0RktjaUs3Ym9NbGYvNHhPWE80VjdhVEkyM2IwYXB6QmtCVW1y?=
 =?utf-8?B?RGJsUmhYRDNBRkt6Vm1YQm1lL2IrZTFkbkdNM01jd0F6NTRVcjVVcWxtRWJ2?=
 =?utf-8?B?VVkwN3FvWER0T05wZVZDV2NzeTVJUDdlRXlKeFBGT2RQbmJMOHFzUmNHNmR5?=
 =?utf-8?B?bDUvV0FheWFvYitPZGZORENaQjRKeGpTb2ZFb1J0YXF3VHVlakVFc1ZNK3lx?=
 =?utf-8?B?NnZHYldJVjJLNXowbGMwaDV6Nk5LVGg0WngxRmFjNk5JaE5yVmNLaEhXQXc5?=
 =?utf-8?B?UkRQR0R5WTU3SDZLRTMyaHFteks3Yy9mTVZmSVc4dngzaU1vbXRUaDFtcGsv?=
 =?utf-8?B?Z21nWFU2L1luSUV1U1JKYndIV3UrSXRhRE5QTGhLK201TmYvaHY0UlBab1Ay?=
 =?utf-8?B?RGx0OGU1dXdwZlNpQzVveXd4Q2lBOWJFUGl3dGJEcE5UYU1yZk1nby9ucFla?=
 =?utf-8?B?cmVmaTFNMkJnWjlqMjBXaEkwVFI0aUYzeTZUbWxNTW16QmR2SjYwOThWYy80?=
 =?utf-8?B?TFhKRlNvUzRuS3RURFMzenJjc3ZWMmdBTnhtaGFHN2gxNFlyK29MeW9CU2s3?=
 =?utf-8?B?U2xsakFsQ0xqRDByVzJ6VEM1VzNpZHBuYVVvQ0dCVVdDa2lNU2dYOTFCQmZ3?=
 =?utf-8?B?K29NY1JzRHorUEFsYWtGT09SVnpXWWRYZEZneDNqVUJwRzByUDhmcTNiRTNu?=
 =?utf-8?B?b2s1RTlta3pLWkRyN0N0OENBTC9nYXdDRnhtSlhoejYwOG1TRzY3YnRVUVRS?=
 =?utf-8?B?eE1NT3B3aEdyK2Exd3ptak9XVitFNnhoTG5XbFdCLzNzSlc2UWovWGFicE9Q?=
 =?utf-8?B?dUloRFRHUzN2cldzYU9yZXBDbUowVFpob092eHQwK0w5REF6bUN2ZWF6dUJT?=
 =?utf-8?B?RFRGREVaZlRxNVhaTUdHZTZxWkY2bUJmUXd3bGh2eUFpN3d2RHY1TDZKR09I?=
 =?utf-8?B?aXR6c0p6Wkc0U2VBdWdEYkZlNCtmRkJxN3UvOWI4V3haL05sYVdMWC9EY2Ja?=
 =?utf-8?B?SFczbVY0OTVQeUJVdlhtWDZsN0pyOC9VeVUwa2plWGlDdE4rbW1sU3VUWmJV?=
 =?utf-8?B?MHBiQTI0Umd3bkFLVW1XZjBQb2g0SjVyb2tMdnJPNTllMmpJak1zdlErVExr?=
 =?utf-8?B?Znhpc0RWVUlycjMxdndSeTI2KzcvOU5TNkZ4Z2pNS1Q5N1VkU3V1T083OWda?=
 =?utf-8?B?Y2pENlpnVmpEMGZubXpaV3NpcXRQY01FWUJaRmdnZVV6QXRGaEJPc3hZaXQ1?=
 =?utf-8?B?b0srckE5REhiblVFNFRodFlQc21WcG40SnhSR05MZmJISlhOWXhERm9USVgw?=
 =?utf-8?B?ZDlFTVZ1R2hvbHF5NGhPSG1uUU1GRGk1UGRlbUNOaFdnVjJjL3F3WmxrQ0t0?=
 =?utf-8?B?SlhCd0JtOGtnSmRkT2R1a09seVREV21ENHBpeG5nRG1pNkxIVVpZMERCM0o1?=
 =?utf-8?B?Z1NmOUJ1YzEyM3IxVlE3OEFvajVkVVRuMEVvczhXUWZmSUNpVmdDOUM1Q2Fu?=
 =?utf-8?B?di9QdGo2Sm91NlliTFp5VW1JOUlReVV4cU10aHRPOWYrYmpoNWRZMzlwemc4?=
 =?utf-8?B?QlBZL1NFYm9EVzhJTXVFeHkzMWRxSlUyVnRyY1lkVWFNdTE0T1lQZXpTZTRt?=
 =?utf-8?B?ck5mNHdaUm56V0U4SEhZUmEwZUE3ek52WjFYSWc5cUJxSkowM1NqM3hTYTVx?=
 =?utf-8?B?WDBTQkxrMFBuQ3cxYWVuZDRRNlVuUVFJa2grTGErb0JwRmVQZC9WM2V3WXJ1?=
 =?utf-8?B?NEMzTm5oWGo1Yk5XcjU4WFpIODBleUZMMTNISHhaUmRwSlBkaXVVb0QzeWFt?=
 =?utf-8?Q?wyh5uLKUGNm7LMamVk93LxVARiF/SMw0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REt1L0VIa3BmdTBFcm9tU09oNkU4S2ZZNjR4VG85ZXVtRHZpTHNQY29XYVZs?=
 =?utf-8?B?S1ljWXpUakZIM1ZycU1zZ2NrSWhrNy9Bc1FZN2VGZUdtQlpUbnVCVW9OcWJW?=
 =?utf-8?B?citZRkRHbi92WEdKWE9uUEVFKzlpTlhibEVvdlpFb1pqaXRjeTZVaFhEWXZt?=
 =?utf-8?B?cWZRSHVlcDZZZjRwVFppMVkzdzh1NGNKVEpFcjRzd0QzMXMzVjB5Q0JHSktt?=
 =?utf-8?B?UnJRb2dySzVnaWJ0dGJQVHdwalphTzlZakhDYnQ3aHpWN2tvVWgraGxaREtK?=
 =?utf-8?B?MmFYdHVxWFVtemlIY2NrYXNWOVA1eW82YWcwQkR4M2FUOUlvRGVKeUtMbVkr?=
 =?utf-8?B?bFlSWXdYaTVJTzl3SnltbGpTbm5BdFNranNWNklKMGg5dTZSWnNrUzFZTGIw?=
 =?utf-8?B?M2pVUm1IUlR5a0kwNllsYytqVW11cVdxZkY5MTF0ZDFRK0F1NnVxcFRmSFV5?=
 =?utf-8?B?Zm5paHZWbGJNUUJpM2FIOGV2VW1oNWtJU1hDYi9aWXpFcnBsN2x6WHhZOW5Y?=
 =?utf-8?B?Vjc0MHVSUVR2N3A1UDlVMTRQWEVoTS91SHlnUURNTXA1bFd2bkdpcEtDY2JH?=
 =?utf-8?B?YXZVNGplV3VqRTQydTN1ejh4Rll4Q2NyTlZ4RTVWdGdMbDgxU0dOLzJScy9T?=
 =?utf-8?B?SXk2cjhOdHBjMFhNb2YyZTg3bHBmTnJ2amdrYjJneGs0VkJUeDdwNVh6TEJY?=
 =?utf-8?B?SEVQUDRMMXMxNXk2K2d2Z21heTROUjg0bHZ6b3BTQzcrSjJvYnlHeXBjSjh2?=
 =?utf-8?B?SXZzQUF5cmhNRDhSMWhrYisxR2d0UFlDc3d6L3VWZkRIRWhBRklJUW5CNldD?=
 =?utf-8?B?LzNDT210RjlzMHM3NkdlbnI5OEwrSFRDVVEvUzBKTE1Fbk1waUR5RWVKb3RT?=
 =?utf-8?B?RUplcTQ3Vm9CMlRtTFRnelBWUlJkNGtBNmxMUG4waUtuMUVTKzdUOW92Ynhu?=
 =?utf-8?B?Y0xMaE9Fc0Z0ZTZ2bFppYTRDNzJMWkJlOXBFaHBQUGpYOFVjS0JDSEVYQ2xH?=
 =?utf-8?B?UlpTZG9nMFZ0MlVtRFZNWjQvN05vVE5EWUNCcjhnbms3NXRsSWpmL2Y2Z0la?=
 =?utf-8?B?WStTczVPNFNsNE1VRWJnTWc4dllqQ1J5THZRRnpjOXU2Vys5TXZjOFJvS09j?=
 =?utf-8?B?YTF1aHdCQWhja2QyVGxqc053dnN0MDNXYldXaU84RnJvY3hGV3Fwb2hnbU1H?=
 =?utf-8?B?M0lhMmtBeEtxS3pueWVKMlBRUFJLNTYwRm5pZ2I0cWlVSDE0Rm9sdlNNbXJl?=
 =?utf-8?B?cTZIdnVnME81VnBFRDJ4M3pWcDdUd2NGV3FFVDZva3RndDBYMmlvY2pzQWls?=
 =?utf-8?B?ekZqdkJ1Z3VhWUlQMmZoL2hlcEZRa2tNcHE4TU91QStRSk1FVmtTT1RieGUz?=
 =?utf-8?B?K3padDYwZllnVEFqcUd0S0pWYVp5aU1Hd052bStNYVBjVFhBZ0FQZFkyWUMz?=
 =?utf-8?B?bDNtenV2aUtWL1VYZVVjdDRFNGJZejcyR3BzRzV6RTU5VUtUNVhWd1pZOEo2?=
 =?utf-8?B?MGt5K1hoc2dQSXhJZVliZWpxVm9TcTBQaXFwZndsMHozWENoQ0ZkNXBoZ2dy?=
 =?utf-8?B?ZEgxTVJHSVhScFhpMXl6MndEL1VWK0JIajRsR0NkRVhyNFAvRHM0S01WQ2lq?=
 =?utf-8?B?bjBhZU4rTG15SXNSWWdyeVVNOUNqMXRyRDhQN2xXZEl2MDhhbFJkd1ZKcTE2?=
 =?utf-8?B?ZzlLYThRZSsyTVpYaG9DWEJwSlphK1ZSZlh2WUp5OWdob3ZoNk5qWU10Zmow?=
 =?utf-8?B?QXppV2FXTmp4R3pMdzZHK0xDVlZROHhRRk92dTVVVXlsc1BUc0lkTmN1S0dU?=
 =?utf-8?B?Q1hITy9OaitwdWFJWVNBMWRZdXV3R1UvRXJwalp0aFVBdU5VQ0oyUXZiZUpq?=
 =?utf-8?B?U21UZUdISEJJWU9pRGlmWGREMEMyYnk0UllaaUxMQjNzekdLbzJMZGs1azdz?=
 =?utf-8?B?MXpZL09KZ2lERHFrakpiMjFWb0lFT1l1ckI2YUZtdnFjcVl2Mk1IRGxNYTBJ?=
 =?utf-8?B?TUlWc2N6dElpY29FR01rOEN6VE15bDZHeHN5N3hxazN5blR0cGxUT2d0aUFP?=
 =?utf-8?B?bnpqaVdFT0FqSjZGY0tUV1BRcUJVRjRvQnNXZVl4T2hzVGtqL1JqRkdWd1RC?=
 =?utf-8?B?V3pzSlNiV1JHQ29YVDZiZFlNeDMxNUFJbHhrQ3p4amVMbFdhcXA0RDJ4MldX?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cdaff79f-7231-4ff5-696c-08de1c468d53
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 08:37:27.8957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +5M8arj0S9nur4Vi+Dy9Kp3kp7A1YRur+6RD31sJj5XiyPkyQetsZD3NNiXnsNAQ5absMrBNOor3DG6ikDqDHr3Kxx0sU6P2Z0Y0YL1c3g4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9129
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

Hi Janusz,

On 2025-11-04 at 12:20:24 +0100, Janusz Krzysztofik wrote:
> Certain selftests, while basically correct, may fail on certain platforms.
> E.g., igt@dmabuf@all-test@dma_fence_chain used to complete successfully,
> but on slow machines it triggers soft lockup warnings which taint the
> kernel.
> 
> Sometimes, like in the above mentioned case, it's not possible to fix a
> root cause of the issue since it is not recognized as a bug.  To avoid
> ever returning CI bug reports in such cases, allow selftests to be called
> via user provided wrappers that take care of not triggering unavoidable
> failures, e.g. by skipping specific selftests if some conditions are not
> met, or watching their execution and acting upon certain conditions or
> events.
> 
> With that in place, update the dmabuf test so it, as the first user of the
> new feature, skips the dma_fence_chain selftest if a machine looks too
> slow.  Since that's a hardware agnostic selftest, running it on a limited
> subset of machines seems acceptable, especially when the soft lockups it
> can trigger aren't recognized as bugs on the kernel side.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  

[...]

> +static unsigned int bogomips(void)
> +{
> +	unsigned int bogomips, ret = 0;
> +	char *line = NULL;
> +	size_t size = 0;
> +	FILE *cpuinfo;
> +
> +	cpuinfo = fopen("/proc/cpuinfo", "r");
> +	if (igt_debug_on(!cpuinfo))
> +		return UINT_MAX;
Could this result in running the test on a slower machine
unintentionally? fopen() could fail, the bogomips() would return
a large value and wrapper function would behave as if the test
is running on a faster platform.

> +
> +	while (getline(&line, &size, cpuinfo) != -1) {
It is unlikely, but getline() may fail with EINVAL or ENOMEM, so
maybe while(getline(&line, &size, cpuinfo) > 0)?

> +		char *colon;
> +
> +		if (strncmp(line, "bogomips", 8))
> +			continue;
> +
> +		colon = strchr(line, ':');
> +		if (igt_debug_on(!colon))
> +			bogomips = 0;
> +		else
> +			bogomips = atoi(colon + 1);
> +
> +		if (igt_debug_on(!bogomips))
> +			break;
> +
> +		ret += bogomips;
> +	}
> +	free(line);
> +	fclose(cpuinfo);
> +
> +	return igt_debug_on(!bogomips) ? UINT_MAX : ret;
Same as my first comment in this function: will this not cause
sporadic runs on machines that are supposed to skip the test?

> +}
> +
> +static int wrapper(const char *dynamic_name,
The name could be more descriptive about what function does/is
used for, so maybe "check_skip_wrapper" would better achieve
that?

[...]

-- 
Best Regards,
Krzysztof
