Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A9DB0A0A0
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 12:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BDDF10E949;
	Fri, 18 Jul 2025 10:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gNaZyPOf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC9010E949
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jul 2025 10:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752834486; x=1784370486;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=JI5IF1l6U8O4P7tRUTwFyymJlRlmvDEd4/XPEyIx4mg=;
 b=gNaZyPOfYjYO7RdOeXoyzd39iWAadCsUsuvr8Rw1PmM9Ji0D9cmQ/GZe
 bj5Yg+1bkceQzHw8tdyHWJ99/ylqBeLQztyBVGaiHSz/3rQuTUUr261S3
 gV/yDUqmD84uQPu1ExjD5XU4oDnrna0ff3lDQLF7zdOeUwCVWPkkkqHhO
 mpdDxJWO3zJxd4kFVAg1TBvHST1CsIVL1U5IOh3bVP84/YzHk7un6bRoQ
 OVSSG1wccabyqtknmBWI4euR14YzNQp1gJg2KYsRPuvu+MIecBJ7h5y29
 A5JcQFd8InsfNtdKpNedMKK65uL60z1aHVbQk007C3qU8IdiNyzCxqzCG w==;
X-CSE-ConnectionGUID: wGmH6M/bRQuOoJO5wa6agg==
X-CSE-MsgGUID: +2wHhCX3T+ycdMzmUCc98g==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="65385251"
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="65385251"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:05 -0700
X-CSE-ConnectionGUID: +0ESd3/3RM+e2XrVqNgmAQ==
X-CSE-MsgGUID: KCsYXei4TBCEIH4hUWFBzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,321,1744095600"; d="scan'208";a="162057699"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 03:28:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 03:28:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.65)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 03:28:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Zl+Fk2aA+dhEwYsSy/Sc2rJfakeBJdtWqSB/lp346z/lUXR0S1FxJ8MXnegE98tngieygBm/NSFydAX5twGt+yx4eCyLcLND1E9N2MTTwTpf5tC8yAMJ18r7k+p1zdwSWMK3VoJUHWMpnM9ofAxEMZ7pw2ue8VKTAKI1QI48PAoVbVxLtJgog2zSXO8y4bRoTiYeCFe4TPyk4WZkLphUwBaPdMaremOHCB/AuMdiYrKyFDdfC0sOMWzFscKF3OwyU3yBVwfuk2FoDpFm5q++oAimbVYluZFq2/6GCVWX7WwlvEM0S7xAZmKwxMXsSltF/NXMFHaUOOnRQDB32OfnJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5g93iADPJHdMcPS37fKAxGoDLuvyd34n4GJCxxoE5ZU=;
 b=HIhh8FwtisltX8qHGrKv5+KcO/Rp8yOK7KD9hfcfHxKAy87wQuyVv6CYDZ2AqJW7+JGZQrHMYiQFlgfJHmY3oYHEpdFopT6907joM8svutFoP+Gq3GV7E8y6bG6moPcdVNjaIlTeBfx4ML6vw6+WqJCp2D8vEK6ylAXkYaRHgeX10I3YcnZ9gk+iOWEeBeHod+AZTD7jvaO0f23ac0hC03R0UNjZW+VUQ6oiPvZTjXZU6nNsvWvYBe52q3NrGVXjNACryG1jCVpItLlaKQzCAaS26QUeEx4UP9xQV+BvjzoTLcMOAMA7CeRheP6bm0Rkz5Uoabd7HCjhLm8BncsIhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB7538.namprd11.prod.outlook.com (2603:10b6:806:32b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 10:28:02 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Fri, 18 Jul 2025
 10:28:02 +0000
Date: Fri, 18 Jul 2025 10:27:57 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <sebastian.brzezinka@intel.com>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v3 0/4] i915_gem_execbuffer.c minor improved
Message-ID: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA1P291CA0013.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::16) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB7538:EE_
X-MS-Office365-Filtering-Correlation-Id: 7881ac5c-c697-4df6-f179-08ddc5e5c674
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGVRSmx4RkFzOVdRcHFwMGNkZXY1dDZiWUxPVVh5MGI2dlJEZjBxclA2dGtB?=
 =?utf-8?B?VWJiclVMMUFUdmkxS2RKTlB2MnlDTWxGLzlXRHJFaU04amRlRzg2d1FOYXFK?=
 =?utf-8?B?TU1LNVhYMG9tSnlxcDBSaHJwQmFpZGJOTzQ0aDh3OXJYQ0VURFAyNlZFTGE1?=
 =?utf-8?B?NXhtMnNzL2ZIMHdQRlhLYUh2ZG5zdjZkY2JCRUNkYWVrb0lmZnRMMDlOT29m?=
 =?utf-8?B?NDFyQTEyam11c0xoanBkSWowcElFMmh2M1F3MUVPS1MzdFRuK2tvMkR4VTZ3?=
 =?utf-8?B?L0Vmb1Zocnl3cjdnSHRxTlYxY2ozU0ZuZitQbFhVdUp5ZERBTVMzdlJrQjZM?=
 =?utf-8?B?VlU5dDJ1NHBjS3c4RWN2bUQ1alJpQzJRWnM2aHdEZXpSRUExQWM5V3FOd21X?=
 =?utf-8?B?NmRqWHZQTXpEZkNVNFozcFJwS2ZXL3FTRFl5Nlp2QWtWL1UrVFdyK2o0VmpG?=
 =?utf-8?B?emFzb2FWd1M1QXVxNUhDaUhkOUczdEljRW5GV3AwdUxEWlV0RVB3NnltZ2Vw?=
 =?utf-8?B?UUVob2Z1V28rY2s1SGFkSnh0QWR5Qm1BaUU4S2h5NEpiZkJWYXRmUkszMDEr?=
 =?utf-8?B?clVwWVpEWlZuTjBqcVdmckxMYkVSMmZIMy8yT3JpMHkxcTZ0d2RDajJsUDlt?=
 =?utf-8?B?SVpwcEdJU1NEYnNsTlFBY01KbG8rbVNXdU1ZSitWQzlZMmxSMmYrdzl2YXdD?=
 =?utf-8?B?dFFNK0NXYUM1Ym5DRWZ3Z2RPcDE4T05XV3JjYzd0a0xvNURQak5ERWJISTAr?=
 =?utf-8?B?K25vcmJJdnpCL3luL2hiT2hpZ2RmZkROQ3JkOVNCNHFSd2ZaZXpDaW0xN2JO?=
 =?utf-8?B?czN5WUdJNlBmV0RTaXRKUDllbUpYcnZ0MW5QN1ZKdE5BVTZnd0JXTVgyb3dR?=
 =?utf-8?B?K3VaSXhOY1hqblRCcitFWFhhcFkyd1RKZEFwSU52dzArTFBQVDBUYjhQNVhi?=
 =?utf-8?B?WGw3eUMxWTd3NFoyejlhS1hxcVhod3pEUUQ1U3loMGZlS01UY1UxZkpmZG5x?=
 =?utf-8?B?R0FvT25CTHU3LytmZHdVMTNKeUV3WUNsVEZVai8ydStkNGJOc3QzZG1UOHI0?=
 =?utf-8?B?cDgxOEJXeFBCYlVtRXJlNWR0K2hMcXVlV0YrL2pneW00UXl1UWJxeXk0NCsz?=
 =?utf-8?B?RUJQMStWdU5tTTdzQU1KQVlrNHNDZTNCK21mVHkrdWxYQXVrbCtLYm1zZ2lZ?=
 =?utf-8?B?bmRnSW9vQitOQmp2ekhVZ2lIR0lJQ2w1U0p5RW1rQ2w1eFh5eDNOSWd6bjVo?=
 =?utf-8?B?SjNydHdZczhHSDFCVmZ2aU8vQU9Bb1BuZGt2Y0N2cllha2hsNnI1N1FVeTJq?=
 =?utf-8?B?QlpJMVpraWZVYTFJZ3pyeHZZaWRnZEZZV0NsenFDdzE5YTJtRWNSdU9BQmVB?=
 =?utf-8?B?UjdEbWw4UGRzbG9LRXNWRHpkYm1TdC9tU29JQ3p0ek1mdy9OVUFEaUlxUWlL?=
 =?utf-8?B?eDkwZmZTZWlyOVVoVXROOVdybGZ6YXZnakNRaWE2Y3VuT2g0b1kxamx3Z084?=
 =?utf-8?B?TSs5dGNvZTdnNkFuTnZrVVkyay9vNDhKRXNDNzhCZCsvMTNaQk8yaGhvcFNE?=
 =?utf-8?B?Mk55bFdDUEdjZy8xbzdiUVRxUXlOalVmL2Jpa3hyZWVsYXRQanpMeVhRNnNG?=
 =?utf-8?B?N1FiSGY4RyszTllaNm01SlZuWStaK3R1cUJzaXJmV2tUajJLMVpBS2JWSTdz?=
 =?utf-8?B?bWh5czQ3bDMwZlErNUFJdlA3NkdpRFBJeWkrT0Zudzh1aWExemZ1QVJOaGU1?=
 =?utf-8?B?RmVNSmc1VE5zMnNROTdweWdBZ3VVQTRpb3pDb2FqM2g3c0ZFWXVpc0dPVXR2?=
 =?utf-8?B?RkFkeEZ3QjhGR2JCaktwclpQclluREJEcDJJWmpXOTdiWXZVUXN1VytFYktZ?=
 =?utf-8?B?Ylh0VVFkNXo3bFFyOGY4ZDFQM1kva0tJNVpTVFdOeVl0aVVTN2E3ZmtoTDFm?=
 =?utf-8?Q?l+YU/FZ8Aio=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXNSYWdTRWtMcHNXK0VYZTFVRVRoamdGN2FYWFAzUVZWWnVlWVZxVmVvd2F3?=
 =?utf-8?B?U2RKOFZKbjFPSHlMV3IrRFdJWHdOL3NoTjNuTHo0ZTk1VklOZmRxb25zSkpv?=
 =?utf-8?B?VGJyWUxIOTJGcDk0dVJEZk5rNUtFeS9QY3Bsbnd5bHl6cXZiaVpKenhhUG53?=
 =?utf-8?B?QTl0clVGT2p1bi9Qb3g1a1VFdGl5K3BESzVnUnIrSkVqNHVVckZldmpnUk5j?=
 =?utf-8?B?TjBiSHliRmJmSTgxbUQ3Zk1XY2E1OVBsckwyeE9VTXZRMTQ4amFXV2dFbDFL?=
 =?utf-8?B?Q1ZJdThZOWxWTFcxWHNITnpJcWpSeWtZYWpjSVZCU2p1UWVOY2JoQlI1dG5j?=
 =?utf-8?B?LzB3enpGSDI0WHY5dHdiMHNFUThrVk1IVmhnbGN5Vmk4RW1EdVU2Tk1EdHlI?=
 =?utf-8?B?cmdQVkNTenRVR2ttanRtQVEzN1ZGcTN3V0ZBM0xDRk1wV2Y5a1hpcVRJbHdL?=
 =?utf-8?B?cEY1bkMzSWlxcDNuTnp1MEFjcHRlUytxS2NDRXV1UCttaUE0QTlVRWlORnJp?=
 =?utf-8?B?clB2ZzdUbjkzdHA2Ry9aNXpxRnVvbHY0Q2lwMzJPYUJoMUpUR0I0d2RpWkFN?=
 =?utf-8?B?VjM0eEMvNE8zcFJwdHVSYkx3cE5EbFVqd0JKMkhqUEQ5MnJMVHgxaEFObTIw?=
 =?utf-8?B?MjJBdWJ5OUdRYTFhcW5ZbFB4bFFqd2pGSmcxdHpVUFhwRHhJNWZvYlYvd1Ju?=
 =?utf-8?B?ZkN2LzRIRE85UmhUeVlwLzBlRHBnS2JPaVhzL3RSb25QZHpKZ3d0U2szRm1s?=
 =?utf-8?B?Yks4aXJyUnFQYWxkTUptQzhzcDcwKzl2M0ZZRm43dGhKdTlrUXNEYlJna01L?=
 =?utf-8?B?U0xJUjh5Qk92YkRjWG5jbEhKbytkTG03Q2hpViswaEp3VE5LSy9GbEVpRnJj?=
 =?utf-8?B?amM3ZFl5NkUvbUphQ1U0bllHZmlsc0E0ZXhIUTRmTVNYOWFFWEhGRkhCazMx?=
 =?utf-8?B?QUZQc0R4YW9pMjdtdHc3OFVXcWcyQlRxQW4vVGF5MUJQelVBMDdYVFlUY2JB?=
 =?utf-8?B?Z3Z3VTJZZ2JrUU1YbEtjQ0FsMXJYSjBxbGlZTmpLcHRpLzdqWUk5N2RyR1Jv?=
 =?utf-8?B?MUlWbHdoWGRwNThvblk0aGhuMk1CNXNaYlFJdUl5RE8rYUcvSGdKRk83TFhJ?=
 =?utf-8?B?NmUxSHVwc2JWdHlHQ3ZMU2ErMnp3c2lTMWZwL1lEb2dWMWVENVg4OWdiS3NF?=
 =?utf-8?B?dThCeW91d09jSVNjQ1RnRzh0cTRNVFIxS1dkY3h5UmNIeGhod3JPTzI3NDB3?=
 =?utf-8?B?OUVscTNGbW9DTlkvT29tbUY0dnhLNkoxZ2dTK0JOOUdVZEZza2VWMjc4eVM3?=
 =?utf-8?B?end6anBtYkZaR2s1am13bzdjeTVRK1E5VktncGFTNEVtQUZOUHFtaFluQnVs?=
 =?utf-8?B?QnBUb0crUHdpbDhJbWJhQWcrLy90SElDcWRPVUN3R1BoOStKVmlQWVk3QnY5?=
 =?utf-8?B?OGR5RVRkZm96UExUQmZxVy9OK3RmVXF6aDdKTVpnVkF0ZTlyT04vdksyMjZN?=
 =?utf-8?B?Q2RyWnM4T29UNUFhRXRVcGN0eTRMRlF3NXVQNlZKa2c1czV6MXZ0Q1lTanZi?=
 =?utf-8?B?VTlWcFQwYXRXZWFFemJwRklPa3RFMzVEU1Bkb3U2RVVidDV4WE1KdEhVTVlw?=
 =?utf-8?B?SFhxS1BRRWN2eXBEQjBrcHRjU3ZhNFZqM29EclBxOUpvcE96SXJjTTU3RHNn?=
 =?utf-8?B?L1BjdUJybmw1bmFPVHMvd2IveEdFSzJTcmlPQ3hOQ1JaMnIrQkZieHhTNzBp?=
 =?utf-8?B?MklKcVBVaDJWZ0JxLzY4SFVMUDFmTDRwV1B4ZW04UEovTzcyaWxiQ2NkcUVu?=
 =?utf-8?B?S2JwckJFdWxqMGxFOWw1M1pBWFFmZitHb2pxaXpRK2FoQk13WUEvV0kxQTFG?=
 =?utf-8?B?WTFqM016SG1TRlBEa2xXdEtjUFpGZUo1cW0zckhYUVNYak9yTXVRUHBqdGpK?=
 =?utf-8?B?MDB0a29hbmI3c2EwRkhNQ29oM2lRQTFxTEpCWktyeEpadHhqb1h4SllMTUdt?=
 =?utf-8?B?blE3TjhkNG9ObFdmVUdaeGpyVFdZMklFT0lwRWI5VzJTd2JoNVFZeEo0ZGJN?=
 =?utf-8?B?NHVPWlBOUHRvQk9RYTgwK1Y1bU03Y3EwYWZkUnZKS2xMWGhoczdqNFFza2NW?=
 =?utf-8?B?RGkrUytlMXUyd3hTL3MySXNyaDR1NjAwVWxuMmNuRXpRU1NORmV0WFFzMVNF?=
 =?utf-8?B?Qnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7881ac5c-c697-4df6-f179-08ddc5e5c674
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 10:28:02.5124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: phiX60nmTc3Xeih5MolPgTo/k45IROdqDRcXoL0gGzyT4WFTpGTcmDCDlIX9aOxsp/jWbM1AjM1lwfJydNE+JIRBUcatZl1HJWqbf2QPC1s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7538
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

While debugging, I identified and addressed a few minor issues and
style inconsistencies that could be improved.

I ran some tests on these changes, and pushed them to trybot
first, no regressions were found.

Sebastian Brzezinka (4):
  drm/i915: Add braces around the else block in clflush_write32()
  drm/i915: Replaced hardcoded value 4095 with PAGE_SIZE - 1
  drm/i915: Replace empty conditional with continue in eb_relocate_vma()
  drm/i915: Use dedicated return variable in eb_relocate_vma()

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 66 ++++++++++---------
 1 file changed, 34 insertions(+), 32 deletions(-)

-- 
2.34.1

