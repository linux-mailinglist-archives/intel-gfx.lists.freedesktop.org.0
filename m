Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D90C35C66
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 14:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FAF10E74C;
	Wed,  5 Nov 2025 13:11:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sl1fwkIg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0CF210E746;
 Wed,  5 Nov 2025 13:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762348262; x=1793884262;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=gYbttdmPmvwrftinghZzxFwW9sqZdmutXUNI+COHmD0=;
 b=Sl1fwkIg90R5sRq8dMRvhO7TOWPtsiQzh2WSIU43W62kMTGbhKgaDim7
 NSnobnXIyepULWIzW7vS4M00kOrs6lrD9jvTv6efyKrBeK2WhLiUATvLw
 w4ds0pi9g5vrzj4G15L53avvEwySWYy1KKGFbTfCqoccFFn4KF7wlC25v
 WGvWoM0fy5JC59qgfuyhOdSJVxv0hk8VKnH5avflMb2dckUP3pTVZrU0M
 NMj4WQytURmVgZICd1Y7jV5NFQzodn0kDNqWA9fH3OETcxQpccSUenz+U
 VE2bB6SGLY9/qTM+gsUNPfNGgvs+mGP8r0SCNiW+e6rAnf87sXxcdUP8O g==;
X-CSE-ConnectionGUID: F5K23gRqRAqmul82pYUoxw==
X-CSE-MsgGUID: sZ/l1vq/TTOhjzVgW91G8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="63469797"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="63469797"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 05:11:02 -0800
X-CSE-ConnectionGUID: F3/7ZJXtRBygLT6IZA4kwg==
X-CSE-MsgGUID: PXa7tYf0S1ixacsk6C1Fdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="192524253"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 05:11:02 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 05:11:02 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 05:11:02 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 05:11:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xy7y2va4mUppe39pWaYspOU4egh53GG3i3ukj09A63UspQgPwOjsasscv3IBoHmhAYIASrt/Hb/NaiWLDO28SASQ46sVpwpWJBh7g8LmL2R9BiatT/43ACL6S00i/sLE5Rl1SCgiKJqG747UYPyEjzqiRcY9cv0x7LJRRj3KHMMN7+OUvdG5lbk6S3PuYhW+ia4ITBEMDH54wKbqVYHBRZTI/w8bgcjWyGZPXhgTnSYaNVYzT36ty3wI5Q2fyiYwECjdhyjM1Qw7Exbf5K5tfZp0JZYgzoo7sq7IJcq+k6ltbCLPljyJvHuKq8F2qrJO1abyVGyQU45FOomcDZSiEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CyXVZFg4DLeoVfcAwO8thEXu6D4TPh1RyqqC7X8zYhQ=;
 b=gIXfm0+obTwtNx+v/RpJupnhJkZ2mUm/GrpUMtqLuDGpy7NZ10RGiTHqnB8KNdZhSBJipq24O3s1kSppQ1URRvxCm9v8zRHSyZvGpsBNrYCw41RaHo4LBBrPtO9vgWl9wejw4eCt84RhXaWh6UbF5x+atwl85Hs+Z7lmiGXmAKVE9YtPX7Y7qt9cvANEkThWmr7hKj6lonyw/z9rukQ1dsjX5lYkSfUQvJ2UG48NFF//MUV6UL0orQ+vRE4cUBAkd2NZN/SbZlnD/0GQk/baMa27laNAKLUqeDDtYLZ/hCpnxu95MbjK+tsiI5IEcQRxEGsEGMCiYMCbfmxsQvLOnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB7020.namprd11.prod.outlook.com (2603:10b6:806:2af::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 13:10:55 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9275.013; Wed, 5 Nov 2025
 13:10:54 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 5 Nov 2025 13:10:48 +0000
Message-ID: <DE0SBCESZS4Z.1GYDWUUV1N669@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Andi Shyti" <andi.shyti@linux.intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
 <DDZXCBTESHRZ.1JVF91NALHR9O@intel.com>
 <40055244.10thIPus4b@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <40055244.10thIPus4b@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: TLZP290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::7)
 To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB7020:EE_
X-MS-Office365-Filtering-Correlation-Id: d9112e9b-2d3c-431f-167b-08de1c6cc0a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eWs0OGVzSlJpNEIwQm5UNzhVU3hRRmFnSGhWeFQ4QXRqNVpnbFRkZDdwRUFJ?=
 =?utf-8?B?VzFxWHhLbG1qN0tpZjE2TXVFWUNPaGk1c2FVZGNINjAzc2xWQUdHeko2VS9n?=
 =?utf-8?B?REZTZkRKUmpVOFdTRmZQOGRDWktJdXZSRGt4Q0dvalpZUmNaODNMU1BjRkVN?=
 =?utf-8?B?ay9VM0JXSzVtK01ldHJRMG53VzZMQWVyd3RJeFVNd25zVGc5TEFUUkNUQjdO?=
 =?utf-8?B?YTNSR3VIdVVlZHdtckVwQzZneS93NHd2TmdzR3VzVHVnNTBYeFFzVlJ1cEhu?=
 =?utf-8?B?RXVGMVVNRDVjZ25UMDRUUkZNWlE3akJiUDBwczZ2ZGlqTC8zanpYWkU3TXQ0?=
 =?utf-8?B?SWpXL1BhR0Rha0d4K0RSbWNLSWo4Vm1hMDZOdXR5cGo0aTViSjZ3OGhLTEV6?=
 =?utf-8?B?dDVsVDBualNEb0lPc012V25ad1JIazFCUkM4NFRkcFB1SWRCV2ZrVlJCR2Jw?=
 =?utf-8?B?TDl0emhEMXRBVTliaUxqRHNEMm1HdTErcjA5VnlOSHpsZk5MUGRpM09nRzli?=
 =?utf-8?B?bVg2WFpXSXFiOSs3bVRycUEvM0RoMWxlVjh4dVp6TGQ3aC9BSnJHYWpGTGtr?=
 =?utf-8?B?eFRJdTJUcVJJaFpsalVEVTNtS2tsSktlSVkrQWVNUzlvNGRFT1hPNTk4OHdv?=
 =?utf-8?B?NlFVQWxic1plNnBGdDZTdlVvS3pDQmdhSEZ1bzFWME9ra3VuQUk1SDhibGhB?=
 =?utf-8?B?Zmc1SkJTL25sZE9BZExjY1FReWxSZ29QcGV5TjIwV3VKVE1DQ3JqQTlTYWsy?=
 =?utf-8?B?UTFFaVVqS1dlSFM1cnVjUHQvVE9uc21rL0ZQU1gxb1p1SXdIbmpjQWVGeDU3?=
 =?utf-8?B?QlltRkhvQ0t2MlFpYVFIdjhUVjlHNnp2dG52cEI0MGhoTDVNRFdlanNQb1VI?=
 =?utf-8?B?eVhheWtiL2REbFJYYUs1RERZem90WHNtbjVpVlZLa3d2WlpFNzcyTkErMi9D?=
 =?utf-8?B?ak1SSWFtMHBROUJPMUZxbzJYQktSc1JqM2JNR2NKcG1wYzZhUlQySDBwbjdk?=
 =?utf-8?B?MDA5d2JzNmRpb0p1TSs1MGVQdU1CWFhNVU9tNWRPNHRWYitjVjVNb3Y3L2c1?=
 =?utf-8?B?NGhxeCtRZnROOSt1SFFCWWF5eEljYVB0VzBVV3NrL1JldzA0TnBmc050OTNM?=
 =?utf-8?B?UUdJWkpuVUkvcng2enZmRlFvVlBXdUZYb25iUWtMWDl0aHJFUjFQV3ByQWpk?=
 =?utf-8?B?TnA1Y2dxWUljUld3bDVXZ0I1bk0rK1IvN2dhQ3NXbkNpbHhQcytIS3VSWjQ2?=
 =?utf-8?B?NmU2R1J5WW10eDIxT1NhRFhNdUFJWk5pQjFLR3ZDWS94UGtYK1kwNXdIWm41?=
 =?utf-8?B?Zk9pbmttdnVQeFA1WGd6clIwVmJRT0RpVWtQWkJzV3F0YUcyeVlXK0tLMExu?=
 =?utf-8?B?a3Z0eWExbW1ocEw2dmtCUzByUy9xWkdDTGd2dUhFUkYxak5LSjBENmV1K1FG?=
 =?utf-8?B?YmM2MlQrZU5OeERjK0xMcTRLR0Z1N0lUUzJjK3ZrblpLODA3NUtFeEFMTUFQ?=
 =?utf-8?B?UkVKNzVDUFhEQVc4bFFtSWpHT0I2VWpLQmNweEUvR25UaE1jaXcrckFMTFND?=
 =?utf-8?B?QzMyeUt2SUdHbmNsRklsSXRWelRyb3Yxb1BvODNJMXo1K0s2YnVUcDRqTks0?=
 =?utf-8?B?c1RsMFlUM2M0bTlHdlBXRGZlRXZBWndZMkxhc0ZGWlZiQWJiQ2J0THliTXB6?=
 =?utf-8?B?WVNXT1dmTVlaQm1qWWZmQ1BuSyt5cktETWdGbEJib3JMWG9BRXJselpMOFZk?=
 =?utf-8?B?VHJXYjhiQ2t4THYwby9PNjRLUkF6NDFYd1FPZURxdENacTl1ZzVtMitiZ2Y4?=
 =?utf-8?B?OEJYbUF4eHpkclBMendvQzZwcjMzZFFuS2pZbjJ4d2NNek5kZis0SzN1b1pR?=
 =?utf-8?B?RDZKcEFrOHEvK053TEJZK3NIZXF3d3JGR1pBZi9tUDlOMDU3N0ZVZFpIYjdo?=
 =?utf-8?Q?Ms3sg/tD1tQ5kytWcvblBn3oy7Tby7bh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmtrVlVoV1hPZnFhWDV0elNaRnZqTFhONTZaZm5qV096ek1ndmw3b0xDYUQz?=
 =?utf-8?B?SU8zZFpQa09jT1RVMTEzU01nK01VTnZJR1lnQndrT0RmcktKc3k3cjdyUXpp?=
 =?utf-8?B?QnZJZHBZNGxCeitTRkptQmRZbjNlTStIVkhHQklhSWhFY05WdDlTL3lmbEZE?=
 =?utf-8?B?VW53M3lNT1dTYVBSaXVtT2N6NEt1bzZCRitOaFBGT0xJd0x5TUhFY3BDUU0x?=
 =?utf-8?B?eWpqZEFtc0Z0WjJOR0J5Nm5YTU1YTTlBYTRrTkxhdUpKeTlDbEpJWXpYWkhz?=
 =?utf-8?B?SS9US0ZOUlJmR3RFZzQ2c0x3WDRtWmVrZXpUQ2JoTUlVUVQ3bVNSS2dVOU5I?=
 =?utf-8?B?VnZuVlR6b3lvcTVTWEdnRTRUTVR1b2wwb3JWVWoyMWZEREp1N01RU1NLOEM3?=
 =?utf-8?B?VUg0eG55b2NlOGF2eVFGRWl4WVpuM2tYeGtGQ3hpRDZkV1lkNmlxRzRCUEJa?=
 =?utf-8?B?akk3d0UxeXlHZVQ3Ym0xVEQ1WUpqdS8zaDFCWlIxQjRranJqQnVXcUpiSVhu?=
 =?utf-8?B?SXBibjRxeE1FOXcxbkJEV1lVdVZvUnMrMFZTdUVkZnVIN0x6L05Jdm0vS0ZI?=
 =?utf-8?B?OVJ4WnlFK0N5anh2RUNqYjZubWhoWUdJT2dlZVVvMVFQV1EvdUVkZWF3OS9h?=
 =?utf-8?B?R2pLSmkvWVViMXN5aUhCYUQ4bWtNczd1V2dOY0p2ZUk4SUVxWlltWmk3U1Uv?=
 =?utf-8?B?ZjAyYkI3MTBBYjI4TWdqOHoxTXFEYThaZE1PeUVTaGlZMUowUHBXTWtVMkRR?=
 =?utf-8?B?RFpmdHJXOWtYQ3VtUHVnbWM3bWozR29DdEYrY0RmekRuc1kzMldVcnBzM0dC?=
 =?utf-8?B?NWpoKy83QjVzaDdONXpWRHZZVTRibkRDT0l5T0R4ZDJLNENXbTF3djBlVjNq?=
 =?utf-8?B?aUpkYjNRSStKSktia3dUdnpmMGdhbUhTTjZ5cDdUUEJzOHpheTNoYk8vaW4y?=
 =?utf-8?B?RTNWcG52WmZYbDRVYUk2Z2kzd3h5N1lhTTNheG1MQlVjU3VFYXBNdmNJYWVZ?=
 =?utf-8?B?NjJPMWJnY0YwMCtiVGovY0RHbHVMUnl2Umk3WE96SmwzbWhWL3ZmSTNCTWFa?=
 =?utf-8?B?N1h5bnM5M1lSYXltRFUwYW54S1E3NFp1eWVHdkg2cDYrK0ZPWSs2YU10cW9N?=
 =?utf-8?B?dDlpMlh0S1VmdkZjdlZoaWkydmV3eTZVekZSdnUvMCttWmM0bEtJUkJYSVIx?=
 =?utf-8?B?NFd2TnpDb1JnTlFUZGpIdmJmam1LNzBlRU5TMnc2MVpMd1EwRHVObTErdVhC?=
 =?utf-8?B?SXo1ZTN0RkxxcERWUWFKSUlmU290V1pjeGY0N0JwWUxqN29nZitLTEExTmh0?=
 =?utf-8?B?bzVrZjBDMkxsOXp5QStHaEJtMlZoWjNlejI3R1NZelhDTnRJMGRvdnAvSmFm?=
 =?utf-8?B?T2lsUENsUDVLZ29mTVAvalBUMTdQN0hsY2NOOFhlQWJMUWNia2JTd1VoMmpW?=
 =?utf-8?B?RTM3bTJUSTZQRVhwQktRMTdPaUh3SDZhWFROM3dFcFcyaE9Mek5MNjJueFlO?=
 =?utf-8?B?eklzK2dGSlBIR3lhWjlsTjVGck5VclNmekxBRXRZaTJTNngxNm0raHBKWmFI?=
 =?utf-8?B?dW5LYzFSYTErMGFQeDRNTS9TMW0vVEFqRXlOUGVjUmllZDM2S0JGWWxueUgr?=
 =?utf-8?B?UitNcE95QmdUaVdRMlF6S1liSDJGTG1objBWQkk3WXJyWFdUTnBnWUxzR3Rk?=
 =?utf-8?B?eExUVUdCSzRVcjdhbkswSERWb1ZLbldOazFCRkdVTmhqTWY0clJWRk9KQXI2?=
 =?utf-8?B?Zm9sZDNUMllsWEVXck4wZnBQMzIvbjY1RDJVMExBVE9sdEsvZTJCYjVuOEZ1?=
 =?utf-8?B?ZGx4ZjB0czVUZ1M3bE9IRnpCRWx2dnBYdjdIYlZOOWp6SXZoNWhxRUhpS21l?=
 =?utf-8?B?cDJYSHZqUmZGcWRsNUt0NHQwUWZVWVdJaytzSHhPU1ZvWnIrZGRGMEV0SWpE?=
 =?utf-8?B?b2VCYm5OM3lQa1RJUHFrVytlanlNQmZMYWV2QnF4dDV2TFY0Y1kwQ1dLa3Y4?=
 =?utf-8?B?c3lGU2ZXK3lUQU00dU96eThWOGl0dHRxTzlPWEZFWXNuSGtTQVl1WktYdHZB?=
 =?utf-8?B?VUU0eDBCUEQxTGlSSTQ5Q2lOcFFrYzUwUEFmRjhWVmJsMTU5bUJzUUtmRjZC?=
 =?utf-8?B?SUJ6S1VLalVHcDNoRXF3TDNqRE04aFlpbmFsSDl4T0pUdTBtV1N1SkdlVVVX?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9112e9b-2d3c-431f-167b-08de1c6cc0a8
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 13:10:54.9134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nUuIZ7xxRrJ/Xd7ybd3xv9zChR0QPwxcvramcVJtCe1cY/livNArAG3VG2OvhaKb6yPsX48MHIooeGd1IpfXiAfSlWnAanDFncviqbp17+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7020
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

On Wed Nov 5, 2025 at 12:52 PM UTC, Janusz Krzysztofik wrote:
> Hi Sebastian,
>
> Thanks for review.
>
> On Tuesday, 4 November 2025 13:54:30 CET Sebastian Brzezinka wrote:
>> Hi Janusz
>> On Tue Nov 4, 2025 at 11:20 AM UTC, Janusz Krzysztofik wrote:
>> > Certain selftests, while basically correct, may fail on certain platfo=
rms.
>> > E.g., igt@dmabuf@all-test@dma_fence_chain used to complete successfull=
y,
>> > but on slow machines it triggers soft lockup warnings which taint the
>> > kernel.
>> >
>> > Sometimes, like in the above mentioned case, it's not possible to fix =
a
>> > root cause of the issue since it is not recognized as a bug.  To avoid
>> > ever returning CI bug reports in such cases, allow selftests to be cal=
led
>> > via user provided wrappers that take care of not triggering unavoidabl=
e
>> > failures, e.g. by skipping specific selftests if some conditions are n=
ot
>> > met, or watching their execution and acting upon certain conditions or
>> > events.
>> >
>> > With that in place, update the dmabuf test so it, as the first user of=
 the
>> > new feature, skips the dma_fence_chain selftest if a machine looks too
>> > slow.  Since that's a hardware agnostic selftest, running it on a limi=
ted
>> > subset of machines seems acceptable, especially when the soft lockups =
it
>> > can trigger aren't recognized as bugs on the kernel side.
>> >
>> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>> > ---
>> >  lib/igt_kmod.c              | 13 +++++++---
>> >  lib/igt_kmod.h              | 10 ++++++-
>> >  tests/dmabuf.c              | 52 ++++++++++++++++++++++++++++++++++++=
-
>> >  tests/intel/i915_selftest.c |  6 ++---
>> >  4 files changed, 73 insertions(+), 8 deletions(-)
>> >
>> > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
>> > index a10626eedf..68ab4dbd57 100644
>> > --- a/lib/igt_kmod.c
>> > +++ b/lib/igt_kmod.c
>> > @@ -1355,7 +1355,8 @@ static const char *unfilter(const char *filter, =
const char *name)
>> >  void igt_kselftests(const char *module_name,
>> >  		    const char *options,
>> >  		    const char *result,
>> > -		    const char *filter)
>> > +		    const char *filter,
>> > +		    igt_kselftest_wrap_t wrapper)
>> >  {
>> >  	struct igt_ktest tst;
>> >  	IGT_LIST_HEAD(tests);
>> > @@ -1370,10 +1371,16 @@ void igt_kselftests(const char *module_name,
>> >  	igt_kselftest_get_tests(tst.kmod, filter, &tests);
>> >  	igt_subtest_with_dynamic(filter ?: "all-tests") {
>> >  		igt_list_for_each_entry_safe(tl, tn, &tests, link) {
>> > +			const char *dynamic_name =3D unfilter(filter, tl->name);
>> >  			unsigned long taints;
>> > =20
>> > -			igt_dynamic_f("%s", unfilter(filter, tl->name))
>> > -				igt_kselftest_execute(&tst, tl, options, result);
>> > +			igt_dynamic_f("%s", dynamic_name) {
>> > +				if (wrapper)
>> > +					wrapper(dynamic_name, &tst, tl);
>> > +				else
>> > +					igt_kselftest_execute(&tst, tl,
>> > +							      options, result);
>> > +			}
>> >  			free(tl);
>> > =20
>> >  			if (igt_kernel_tainted(&taints)) {
>> > diff --git a/lib/igt_kmod.h b/lib/igt_kmod.h
>> > index 9050708974..c9700240c9 100644
>> > --- a/lib/igt_kmod.h
>> > +++ b/lib/igt_kmod.h
>> > @@ -28,6 +28,13 @@
>> > =20
>> >  #include "igt_list.h"
>> > =20
>> > +struct igt_ktest;
>> > +struct igt_kselftest_list;
>> I would avoid using this declaration. I=E2=80=99d rather place the funct=
ion
>> pointer declaration lower in the code.
>
> The above declarations are needed for typedef of the wrapper function tha=
t=20
> follows.  Whether those lines are placed at the top of the header file or=
 in=20
> front of the declaration of a function that uses the latter is a matter o=
f=20
> personal preferences, I believe.  Anyway, I'd like to hear from Kamil wha=
t's=20
> his preference here before I change the order.
I meant that you can slightly rearrange the code,
and the forward declarations will no longer be needed.

```
diff --git a/lib/igt_kmod.h b/lib/igt_kmod.h
index c9700240c..5a2ee1576 100644
--- a/lib/igt_kmod.h
+++ b/lib/igt_kmod.h
@@ -28,13 +28,6 @@

#include "igt_list.h"

-struct igt_ktest;
-struct igt_kselftest_list;
-
-typedef int (*igt_kselftest_wrap_t)(const char *dynamic_name,
-                                   struct igt_ktest *tst,
-                                   struct igt_kselftest_list *tl);
-
bool igt_kmod_is_loaded(const char *mod_name);
void igt_kmod_list_loaded(void);

@@ -83,12 +76,6 @@ int igt_amdgpu_driver_unload(void);

void igt_kunit(const char *module_name, const char *name, const char *opts)=
;

-void igt_kselftests(const char *module_name,
-                   const char *module_options,
-                   const char *result_option,
-                   const char *filter,
-                   igt_kselftest_wrap_t wrapper);
-
struct igt_ktest {
	struct kmod_module *kmod;
	char *module_name;
@@ -102,6 +89,16 @@ struct igt_kselftest_list {
char param[];
};
+typedef int (*igt_kselftest_wrap_t)(const char *dynamic_name,
+                                   struct igt_ktest *tst,
+                                   struct igt_kselftest_list *tl);
+
+void igt_kselftests(const char *module_name,
+                   const char *module_options,
+                   const char *result_option,
+                   const char *filter,
+                   igt_kselftest_wrap_t wrapper);
+
int igt_ktest_init(struct igt_ktest *tst,
		   const char *module_name);
int igt_ktest_begin(struct igt_ktest *tst);
```                                                      =20

--=20
Best regards,
Sebastian

