Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C96AD3377
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 12:22:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0BF110E4E2;
	Tue, 10 Jun 2025 10:21:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwXjX/u2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B10E10E4E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749550920; x=1781086920;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=+cpOgxIk3RkCELAd6AMunI8uIeEFlMUggaz8HGJKSBo=;
 b=mwXjX/u2//WAZ37MSrIlqtwaCZndrE9yIji8Cq5vv99t8wynkTrBk+zp
 qmGbgiE2Dd6wj0SG2OF5h+qcFBwEM0UKHqn5h5D+g203wsknicP2EyLn9
 8s0WTK/tlekzfvJCJBvKUAhlTcITMo5UyUD7PFopDDGZBJcid7oBBXHvT
 DjujwL160OxVk4rxczWTsY3fJiMri5jGvyq+fXYZd3l0vM5i2zDie50mJ
 Bm7wVQ2aHYeOYWwZqCH72qGHkB45e8d7wirTY3BxoZxGMfCXQS0T9qa2c
 K2GSgOlRhPxWzlb9Fali4uUZYHDIzjlsR6ojGwXN5UZXL09Lr9nRC5qH5 Q==;
X-CSE-ConnectionGUID: qS/P0uYXTM+IuSFMmHu12g==
X-CSE-MsgGUID: F5APRJ/WT4CR88O2ixP2XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51795050"
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="51795050"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 03:21:59 -0700
X-CSE-ConnectionGUID: ebKJRZWSQvKlVqNXLbbf8w==
X-CSE-MsgGUID: GMzU7Zq+RCiemTmIEkjMFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,224,1744095600"; d="scan'208";a="146674450"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 03:21:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 03:21:57 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 03:21:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.70)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 03:21:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p3CtlumFBgIkmkx6N9v2cntpbGWKOmeKlfI6GpJKTzb1TsWCZ09hECUxdquJ4JnBKI1fVw96KP44wbTXV9ZCvfecI3L9ytmITfxoXBlPT5eaPWXSEYyUrvfY3TvSiAu72KmD9aRMbwOnaZLoU1m13qHXYpQwg+c3bbcunO8et2E0MqbSl3u/a0vEExRPiIs2nWcOUnb9i9SDf5yq2Y44DzleIP8hx70yfLfc/3nqeZfOcfb4gPsJ9rhVwQ2hQDUsAnSSESFpPzXqk25Vk0r2hDwuzqji9Det5CScMvkB2Id6tVCA/LJwXnO6ItrZ2bOUWtBPG0WMIBNQniXkQDHWHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zjte8uzUAAa8c7alnuF5qQff/AXTTRdCiVBqqqRL7Y0=;
 b=AhJ68+7a7MnlK0PzVzmBBcwMtLaDGJ0vsu3mYfTB1xG+96nWiL7iPHM8StWG2UCThWZOiqb/iQgoQK1g2CQLZGdABnJyZpJbfhH3X6g7Jn/p2ediNDl6P23Qjorq6b0Kmtdy9cJ6xV/P07DXQvrqKhbFZ1JiPCj1PDvyoi9yoIDCU6boJO+Go/G/e0iB9e0z5bKWUfnvIYKV9HIF7zT8/o2D95WC/8Sy+BQELiD1Vu4vLC8WVL/iR4yn7RpZVrVOy2h9wSwF+Nm083iYTT71lipBxJeHboN5dukvLNbwXJgEh8hzFtMl1ylcAVxIWOFK2L+RDIuCQLjf0Ob/4EQV1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.30; Tue, 10 Jun
 2025 10:21:36 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%6]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 10:21:36 +0000
Date: Tue, 10 Jun 2025 10:21:24 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matthew Auld <matthew.auld@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH] drm/i915/selftests: Keep mock file open during unfaultable
 migrate with fill
Message-ID: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR04CA0063.eurprd04.prod.outlook.com
 (2603:10a6:802:2::34) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6007:EE_
X-MS-Office365-Filtering-Correlation-Id: c5f7acb6-37b7-4e4c-4d19-08dda8089330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzJMN3dkS2IyTmcvNTI1OTdXdjJPNS9LZWxFWktZZmd4WUNrS3JwejlFT3V6?=
 =?utf-8?B?R0lPQVFPSjRnRGJLUmYxWitvS3FXZFZnOS9UeXBETS9hNVhYUWo1MFFFNHlp?=
 =?utf-8?B?L0EvNUMybXdRRUdYQk93bnoxa3FTTER5SDF1NDhTc2FlR1pFaGt1b3orUlli?=
 =?utf-8?B?OXpuTzUvNE5mVUdPVVpnK3lkbHE4akRYSmVrU2M3bjRGS1QwbkJhTVppZDZG?=
 =?utf-8?B?WmdPbml0bDJyS05nc2dSbU5OK2Z6ckIxbkxNUUZjMXJlMTVreDZHdFhpcFNx?=
 =?utf-8?B?b0R5ajVBeDVZUDNFcTVKaWVTVzFuQXN0ZDJXZjJQTEpOUG5GSk90eU9CREow?=
 =?utf-8?B?VU12WWpEYzhVbUFPUnhvb3lCNzRDdENqWVovTExvRjRnTGVubWdKOWRLQXNw?=
 =?utf-8?B?QlNOaFA5R1RQMnFYRnhjNlhuUHdlbUVmMTlCOVhFYm9UY0FXdU9MTnhOU1pQ?=
 =?utf-8?B?QWNSdE1sckJyb1VBVisyelNRQTV4K0dGUGFUbmZtTnFVTHpVZTdwNngwczRX?=
 =?utf-8?B?NUtGbmZtb0paakkwTk0zMUV0ZytKdVA0VVRtdjlCK1htb2xNajJ1aTJtRCtE?=
 =?utf-8?B?SnIrRXdoSWIxV1FOaitjcXREUHdEOEgyU0l1N2haRmpvaHdEQ3pKa2VKbHZD?=
 =?utf-8?B?WThHZm4ySUh2M1hEbFJHMGZoTHpPUktyTEV6NUJ0N21RampESzdFdC8vL1RE?=
 =?utf-8?B?NGZNOVJzMHR1bldzRWk0UDhZazhjOFNmUEdZQkM4dUpIdmxnaHpzb1RMcThF?=
 =?utf-8?B?MTdHNkc0bUxxVGdxZkVzQ3hFWDBDWTl5RjhKcExyYlQ5ZTlpNDV6RkR1Q3d4?=
 =?utf-8?B?amhQNnZWQmpydk43VFN1Y29kaHk0cjc3M05ET1NudTNhdmJKanMzWDhGQnRV?=
 =?utf-8?B?OTR3VkZuazFPdHVaa1dPU1M5S2ZjUFNLVFYzeXJhZlU1akhpdzVvek5kdito?=
 =?utf-8?B?YWN5emYrZUM1dUxWb1hlbTU1d3lFZHBUbVlqYjdxQzFzNmJ5bElsYTd0WjJM?=
 =?utf-8?B?ZmxqVFpJRndIY3NJcTJ0c08zWktHeExBK1NIb2V4d0NOcFh2LzhxT3Zwcyti?=
 =?utf-8?B?dFU0VkVYZ1I3VEZ3MUdPVDBkK3RPZHZUN1RtbDY5UFZmeVB0dDNMbGttalBk?=
 =?utf-8?B?MTNHaVhXUmo4aXFiM3QxRnlzS1Q0NHZMWjRaRUdDTzFqMEYvZFUxYUdnTVA1?=
 =?utf-8?B?VVRabTRiWExJbERHMDROemZwMVZwQ0x4NGs0MHFiZ3RMMXo2dDJHMjk1M0kv?=
 =?utf-8?B?UDBndWY5R1pzTi91dXdCc2tIWC9qVVVzS2oxSlN6R0VubGl1UWU0L2crN0R0?=
 =?utf-8?B?U0t0NjZ0cFQ3RnNocHpnaXNOdk1mejRvcXlSNEpDUXBqVktRSGdqSE5oY3ov?=
 =?utf-8?B?SG5mSU11RE9NRHpOdi94V0VnOFJEVzNSemZkNzVZZEVyb2xxak8yUUE0WmRU?=
 =?utf-8?B?S1pmZkJwV2FxYk4yNkVsaFBQOWJHNzdjbUlZMzNaWjlnVS94K01mVHVkc3Fa?=
 =?utf-8?B?RElZaE1yVXZHTUZHVjE2aUE3UDcxUWU3ai94T0NPMDJRdWZjWVRQZ0lqSmRl?=
 =?utf-8?B?OWpmekRMcVBTUEFMYk5VR3hZL1ZFaWJGTXhiK2I1Q2twZk9vMU96ekVEQjU1?=
 =?utf-8?B?VnMxcWQ5NGRMYnZiM0h0ZDhVeFRIWDRBQWp6b3cvUHhaeUlSdTByWDFsK3Vk?=
 =?utf-8?B?bFUxc0dvZjZRNml1d1doMFIwNFg5eFFnQVEwL09wMDkrKzF4RWtRdmdGemhG?=
 =?utf-8?B?R1lyc0NDUXdieXgyVVUxQ2UycFh5ZlNuZUlkSU1vdDlSZ0FySzk2MU9sZk5s?=
 =?utf-8?Q?KxnFu2cz7b6cwiGBGdNUZa+97eo6kyOsYHUaE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1Z6VWRNMDladFhaTERobi80aXNuN09VV3dPK1NzVFdvamJmZnlsbG5VQkUr?=
 =?utf-8?B?TENXcTFiSmV4QjhVZy9PUTFrenJnREdjYkpLZDB6YmE5ZTQzYmo5cTk2K1E5?=
 =?utf-8?B?a1RmNjNqVDIrYlNMYllFSEFiNVZ6ak9Ma1VlY0t0alNOUi8zS0NrMm1tWVRH?=
 =?utf-8?B?b0VDWGRSanpRS29keUJ6eXpVa2h0emlpQVFuakphK3BxMlcvd2w2Z3VtRk1L?=
 =?utf-8?B?Z2dqbG9WRUhDWUNQaXMrcFRKYWlZa3BEZ2pOM2M3Q2w4WU9mQWlZNTdTRlg2?=
 =?utf-8?B?My9PZ0dLM0toTzhYNTdyTmJ5U3pIb1RiZnFoSGRRTDlleUlkaUFBTlphZjI0?=
 =?utf-8?B?ZVRzUXU4NUEvbkhtdGo5em9xRUY1blN2OGpJMFU2WnN6U3doNzJLcGk1YzNv?=
 =?utf-8?B?VHB1VVRZeUNLMkdLSHQ4ZDk4Z2lhVGxFZHgyVGUvU0lseHk3YzBkYXF0Zy96?=
 =?utf-8?B?bEtEMXFTOEdva0dZVDZXaXZNZnp5aUhiWW54Tm5XWkVlMlJ4V3lLS3NJT3Ay?=
 =?utf-8?B?WGxiOEpQQStISENhT1ByQmJCZjZiVU1xSEdjemNmb1ZLTisxT2wyZmlGVUFx?=
 =?utf-8?B?RitiVlBvWHdGamZZVHpia012RThXTlA1NjBNME5hT2NnbEVjRTd4OSt0a2xP?=
 =?utf-8?B?RUNvMExwL05IYSt3b1o4SU1zamxsbWJ6RGRScm9SSWljQVFmRUwzbkNhRUdO?=
 =?utf-8?B?N29qSmNHV1FRNUwwRDhBOStkcStjY3lweWhneDRsUEc0YnpWVWRZQmtFS3Mz?=
 =?utf-8?B?N1FOMks5WnIvcnU3SnNwemc4M202T3hrZ2N1S2x5a2R6dTBvTjhVbkhpYW1o?=
 =?utf-8?B?Uk5sS1hxeXM0dThlekdJaERidjRnVVFsOTR2N3ZGKzVlUVBDbUxheXRmV2xQ?=
 =?utf-8?B?c3hrV3BNbDdiOTJ2Wk9HUEo5Kzg0K05zemc1dzVXYnBJY3VSTkFUS1g5TXpB?=
 =?utf-8?B?QmRTRWxlcVVDdnR2VUMvYUdTa3RFSFQ2TmZNN0dRVjNQVVpZTHQzRkM5TEpZ?=
 =?utf-8?B?c3FqZENjNWhPMERUR29QdFNVQVEvam5Ba2l5cFU3dTZ3NzNvbktBU014OThy?=
 =?utf-8?B?UGI1azJURGRjWitQejBDZS9lR1FPOE9kQXF1bnZmME9FMm5iWWlNUTZxa3N4?=
 =?utf-8?B?MFJETlhhN242bjZmK0pZbmtKc3hUWXVxc2pFVGUvYnZZYVhYMkhaa2tZVzJi?=
 =?utf-8?B?djl5K2hQVUJRZmdYeE13Yk14WUkrOXBiR2x0UW1wcGVTcFU2SUtHbSs3MWN1?=
 =?utf-8?B?aHhxdW8yQW5POUVnZ2dXL2ljZmJpeCtVcDNvQmsvckFNczc0MGZFK1BVTjNC?=
 =?utf-8?B?K2lHUHFwZytLVi9hWTN3L3hIVnhLV2gvYnRrd1dkZDBHdEdGb3plNVNjVjhl?=
 =?utf-8?B?SVF2WUVxQUkxY0dScjF6dG16ZGgwWGR2WlVGaHdBaUxpcDJVcWJRSFliTDRl?=
 =?utf-8?B?L1ZUK1dZV3dOZEY5Z29UVHB2R2dya0N4L1o0SUJ6ekUvTU11RVFlei8rRlp5?=
 =?utf-8?B?QWNtR1M5c0xiQzZ5R3pKZDVnZnpRVDlZVVVqMmhtb2xvWVI5YW80d0hUN0pG?=
 =?utf-8?B?RkU1SjR2YnJUTk11aWtKSVdDdTdKa0Q0cnNOQmVpYUpmblpRcjFqM0hLbFdM?=
 =?utf-8?B?c3pqT1NzZk5JeVNBT2xIODJKMzhWcmN6S3U1YUhIZkk2ZlZPSjI4N0tYQkdH?=
 =?utf-8?B?d0VNNTM3N2ZLa2lqaHVhVysyNTVPTGNLOEEvZ00ycmJOM28xR2FoQXgxNDdj?=
 =?utf-8?B?QjVPNThLMmVxU1hwa1dkcVdVUFlNbVBpQStZZUg1Ti84TmdLeGVUL1lqeWxh?=
 =?utf-8?B?cUtVTEpWR29UVW9XTnlUeTBROUVqeGg4UDFpMTg1WXY4clNZanM4bTNBZFZK?=
 =?utf-8?B?dGxwR3BUc2NhYzhEU2J6dUZ6ZDdvSVJ2SHV1Z2RHQkMyQisra0Z4UTV3ckM1?=
 =?utf-8?B?d3VnRUt2NFVRWkdBNTA3eXF5YVgxcmpmOFZLOFVvZmpIZkorcjhicmhZclYr?=
 =?utf-8?B?WS9WN0YvS0lhNmd4bFZhYTk2NFVpSHhsWFpIODA1ejh1aTIvMk13ajJxOWJK?=
 =?utf-8?B?V1BOYWdPUklaYUxMUjRkZnFxeGVlYXBBVUdhTFd3ZjlLUTV3dEhFeXVUc3RU?=
 =?utf-8?B?MjJaTDFFQktvZTh1TGlMelJ5MEFXR3dET1NGby9EcE91TDJkQXFrekUvcE1I?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5f7acb6-37b7-4e4c-4d19-08dda8089330
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 10:21:34.0804 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mZkwVV7a1YR4AXu++sGKikwGKFPtMoZAXEXns4r0JKQDXX+Kx147XN7Wb9QaBrcrO7MC5Zyslm2mh3tokC83As8dTvAmZxJkFIINTiIjq/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
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

igt_mmap_migrate() tests migration with various parameters.
In one of the cases, where FILL and UNFAULTABLE flags are set,
during first stages of this test a mock file is opened in
igt_mmap_offset(), which results in allocating some data in the
GPU memory. Then, also in igt_mmap_offset(), the file is closed
(fput) and the cleanup of that data is scheduled. Right after
that, the test calls igt_fill_mappable() to fill all available
GPU memory. At this point, three scenarios are possible
(N = max size of GPU memory for this test in MiB):
 1) the data cleanup does not fire until the whole test is over,
so the memory is fully occupied by 1 MiB with that data and
N - 1 MiB added by igt_fill_mappable(),
 2) the data cleanup fires before igt_fill_mappable() completes,
so the whole memory is populated with N MiB by
igt_fill_mappable(),
 3) the data cleanup is performed right after fill is done,
so only N - 1 MiB are in the GPU memory, preventing the test
from properly faulting - we'd expect no space left, but an
object was able to fit in the remaining 1 MiB.

Amend the problem by keeping the mock file open throughout the
duration of this test and calling fput() from the test itself.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---

On DG2 platforms the memory for data allocated as a result of
opening a mock file remains occupied until the test is done
(scenario 1), but on ATSM cards the data is freed earlier
(scenarios 2 and 3), which leads to sporadic failures.

During testing I observed that the max memory was equal
to either 4096 or 2048 and igt_fill_mappable() tries to allocate
as many 1k objects as possible before halving allocation size.

 .../drm/i915/gem/selftests/i915_gem_mman.c    |  6 ++-
 drivers/gpu/drm/i915/selftests/igt_mmap.c     | 54 +++++++++++++------
 drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 +++
 3 files changed, 51 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9c3f17e51885..1fe4a45d3efb 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1176,6 +1176,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	struct drm_i915_private *i915 = placements[0]->i915;
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
+	struct file *mock_file;
 	unsigned long addr;
 	LIST_HEAD(objects);
 	u64 offset;
@@ -1200,8 +1201,8 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	 * level paging structures(and perhaps scratch), so make sure we
 	 * allocate early, to avoid tears.
 	 */
-	addr = igt_mmap_offset(i915, offset, obj->base.size,
-			       PROT_WRITE, MAP_SHARED);
+	addr = igt_mmap_offset_get_file(i915, offset, obj->base.size,
+					PROT_WRITE, MAP_SHARED, &mock_file);
 	if (IS_ERR_VALUE(addr)) {
 		err = addr;
 		goto out_put;
@@ -1299,6 +1300,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
 	}
 
 out_put:
+	fput(mock_file);
 	i915_gem_object_put(obj);
 	igt_close_objects(i915, &objects);
 	return err;
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
index e920a461bd36..237ad91cd009 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
@@ -9,14 +9,14 @@
 #include "i915_drv.h"
 #include "igt_mmap.h"
 
-unsigned long igt_mmap_offset(struct drm_i915_private *i915,
-			      u64 offset,
-			      unsigned long size,
-			      unsigned long prot,
-			      unsigned long flags)
+static unsigned long __igt_mmap_offset(struct drm_i915_private *i915,
+				       u64 offset,
+				       unsigned long size,
+				       unsigned long prot,
+				       unsigned long flags,
+				       struct file **file)
 {
 	struct drm_vma_offset_node *node;
-	struct file *file;
 	unsigned long addr;
 	int err;
 
@@ -32,21 +32,45 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 	}
 
 	/* Pretend to open("/dev/dri/card0") */
-	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
-	if (IS_ERR(file))
-		return PTR_ERR(file);
+	*file = mock_drm_getfile(i915->drm.primary, O_RDWR);
+	if (IS_ERR(*file))
+		return PTR_ERR(*file);
 
-	err = drm_vma_node_allow(node, file->private_data);
+	err = drm_vma_node_allow(node, (*file)->private_data);
 	if (err) {
-		addr = err;
-		goto out_file;
+		fput(*file);
+		return err;
 	}
 
-	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
+	addr = vm_mmap(*file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
 		       prot, flags, drm_vma_node_offset_addr(node));
 
-	drm_vma_node_revoke(node, file->private_data);
-out_file:
+	drm_vma_node_revoke(node, (*file)->private_data);
+
+	return addr;
+}
+
+unsigned long igt_mmap_offset(struct drm_i915_private *i915,
+			      u64 offset,
+			      unsigned long size,
+			      unsigned long prot,
+			      unsigned long flags)
+{
+	struct file *file;
+	unsigned long addr;
+
+	addr = __igt_mmap_offset(i915, offset, size, prot, flags, &file);
 	fput(file);
+
 	return addr;
 }
+
+unsigned long igt_mmap_offset_get_file(struct drm_i915_private *i915,
+				       u64 offset,
+				       unsigned long size,
+				       unsigned long prot,
+				       unsigned long flags,
+				       struct file **file)
+{
+	return __igt_mmap_offset(i915, offset, size, prot, flags, file);
+}
diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
index acbe34d81a6d..756ccdf6fd69 100644
--- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
+++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
@@ -11,6 +11,7 @@
 
 struct drm_i915_private;
 struct drm_vma_offset_node;
+struct file;
 
 unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      u64 offset,
@@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
 			      unsigned long prot,
 			      unsigned long flags);
 
+unsigned long igt_mmap_offset_get_file(struct drm_i915_private *i915,
+				       u64 offset,
+				       unsigned long size,
+				       unsigned long prot,
+				       unsigned long flags,
+				       struct file **file);
+
 #endif /* IGT_MMAP_H */
-- 
2.43.0

