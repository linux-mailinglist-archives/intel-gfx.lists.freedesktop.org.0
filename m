Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961ECA28672
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0556710E76B;
	Wed,  5 Feb 2025 09:25:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XntG7p2y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F0010E765;
 Wed,  5 Feb 2025 09:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738747531; x=1770283531;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1Ybc9jgOwTdAQKROoGi7vJ1iruE2fL2fLK+gfvDeHYI=;
 b=XntG7p2yZu2kprl/J8sQH8QEzN4Y9ZnQXGYtmp/XTXwj+34DiQd+kh/a
 SygfI0Y5yfCISuIkN/3i2iVEbfthiSOjrJGKN0HlMSch9qpqOOrcbk+Za
 GWo1FfaZ7t3jnxtDdTWUaPAJ3QMXSTGBPTjrYVfUU2noULIiyYkSbAR5J
 zrL+DZm/ZQVyfN+CnpMoahMb2uCoERv5pjJZo287Zwv8QatNbBk4HnQ02
 gCpsrcPE6foeCJcE4Lo2XDJy+LndvjEKjhu4YjaSmyhqgyTa+yCTctYMo
 4NozZQ4KA/XHWmKTYCpdc+X/MvEFxSIBBcrTnHVDQ3tdBBot5APaBrRnC A==;
X-CSE-ConnectionGUID: J/oDdvQ5QBeCM4cVf9j/3A==
X-CSE-MsgGUID: TUQx/heQSLGGG3AFjgG1tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50723262"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50723262"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:25:31 -0800
X-CSE-ConnectionGUID: 0bFR9Q8nSDyxrHnGkT7NWA==
X-CSE-MsgGUID: LbvG9VQ2Qvms6p0I8URgIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="110702289"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 01:25:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 01:25:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 01:25:23 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 01:25:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iAUplxhx3IlDNfC61libE4jSheyn3Q17AJD3RomWfP/x44XNUT6tuRHuQKcqt9h1rtq2zBK1Gcoiqmn+b9OKp+cv4PFYmHb0R6jM19jyBNVQ08muuhYJUaDQO16BwRU2x6X9PIIXldXUIyR5O6CSNiCZwD11Bmr6br9a6+qoXBj0+N0qhUH8/n35OYjarZfOjD90fVvSlhV4cvWwb858Q3vEi5/Hdr6NJYTPgiTPo9AiDDioSJGAI7tvy2mqaplgMjRHrOxXFH7LVsxgK9MPZKx525ZaBMohHaOswNOT57QLsQBuCtO987OWv3ugESHW1UU1645SZGjuowesK1N4Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FVU1RGtufvXvTZQTa+FPF0xR2hfW36y5qRlJ4YZ7k/s=;
 b=u1OGAYB/We3+WObUUAk8xJv53dloKBqpeBoS1JcuO7ghv7Im2ozgce4I/9mWHnS7r1SHMapDoYDuLMJ8Y2kdf+7tqiKRPYtkNuCWIQc5OunQb/maDYcLYhMIflYYi1iLg90OC58hSPCiLgaMQmgmSb/xZ+smPyBpiNomExPCHSWq7K6dfCFs262qKmXYHgUT9O4a9AJG2ClMHlBb3YQpNLX0XqZorhugwsDfHrxdVPT7ZRRMisDjyeXxiY2u/KZdpUPGadxurxa/5N/VZ77NwbpwPr9dwZXoX2ckU39qplL2CAXozZCJxakZE70wzyOSO9I70XSpKhfQnZAbQombAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7401.namprd11.prod.outlook.com (2603:10b6:208:433::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Wed, 5 Feb
 2025 09:25:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 09:25:21 +0000
Message-ID: <d6358bf1-0283-4821-a3e6-2dd6877b7aaf@intel.com>
Date: Wed, 5 Feb 2025 14:55:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 6/6] drm/i915/display: Load the lut values and enable
 sharpness
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
 <20250113104936.1338290-7-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250113104936.1338290-7-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7401:EE_
X-MS-Office365-Filtering-Correlation-Id: 326b85fd-6a45-47cb-def8-08dd45c702ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2dSN0VjbFpoUGdkOHVtUnVBQytsSVhxVzdmZ296VzlGaDhjdnhpWkxEdDQx?=
 =?utf-8?B?VFBlSjlqVEl5TXQ2dHo5S1VUN25Kai9EM3NGeGNXdlFmMEhHVS9wc2JOQjBo?=
 =?utf-8?B?bHh6aFBSdFJYUGJUdGNoaU5Rc1Z2b1g0b01YTU94TUN2N1FiNHcrQ0dSMkt6?=
 =?utf-8?B?d1FEalVXWncwLzVrd2drZ3o3bTVNWkRGc0h4cjdYL1J3UlQrUkliTmJNZFFZ?=
 =?utf-8?B?TGV2L1ZFc2VWbnVEWTJMUStwNk9CMmE3ZmlZOVlUQ29FUkZLTTBUcW9CRnpw?=
 =?utf-8?B?Z2Z0NS9ON3dnYklyR3hhZ2xFOFErMTFER1pWQkdhcDM4WTNpNXNrODcyS29x?=
 =?utf-8?B?QlJyKzF4RW9wOFIzWDZMTm9UTElnSElLcld2ZjlXOTFCb0w3cTlpanlJajgx?=
 =?utf-8?B?dHNDc0NaMGh1QlF2MHJnMWFDS2czWkZkOGpRRmpzdnZWa004ektLMEp2QURN?=
 =?utf-8?B?VFBpTmRTeUYvVW9kY09ZMVNDdjhUNW1sY0M2ZS95dlZGOWQwSVB6dHoyelpR?=
 =?utf-8?B?dWdFaHd5OXJaeGo2a0Jsc0FlZ3FDaWl4Mm41aGFGMFFYQ2dpUGdkMHVWMStD?=
 =?utf-8?B?Q2RqY09mcDdadDVBQy95c1hnejJRRndLVzRvSXorR3haV3dnOEVsNzFSTmJK?=
 =?utf-8?B?Zkh0ZlRyc1lOc29WVi84YTgwZTFxc1hESmpaa3VjYmVyNEUyQ0Rzc2NPem43?=
 =?utf-8?B?OUxqVDlxNUY1elpUeHNuQTI3Vy9pYlQ5bnNmU25rakJzWkhZdEpUQmpYZ0xG?=
 =?utf-8?B?MXNWQXpMcWs3eGl6cmhVc3JNcmJKc2FaZ1BIbFZ4OGRTZU02Mk81cmNKdmFH?=
 =?utf-8?B?OWpET0xwQXQxV2lEUUtZVGlVVHJ0bzl4NDBYVzdjTjkrL1JHMS9CajFqSHJ4?=
 =?utf-8?B?blBqb2M5K3BrVW56blRJYnVpL3h2MTJtTDBieHlpd0JNdW5yV3BSYW40a01a?=
 =?utf-8?B?SEl0QlZBZkQydm84WFhhVTVyMUcranoyYUhBU01oNitvYXJBR0taT3Q0eGlh?=
 =?utf-8?B?cVY5cWdNVjl3ZXFjYk5EcWp6UUdzZkt4Rll1VFE5TEQxZTRHZkhUeU5YYVRY?=
 =?utf-8?B?SnF1RjlLNVl3NFF4MmNxeXpHdG9MQUdJeWljTkJ0azZFMW4xc0RCMUtVSEky?=
 =?utf-8?B?N3J3ZkpDTjYwd2tSWitQc21WUGFJSXhFL2wxc3VQOHJaWDYzSnBhOXNqckNO?=
 =?utf-8?B?eDNPaC9ObnVnQXliNU5RNTJXR1ZkVWJ0cUhVOStmM2NoOU9pQStpbkxldFUx?=
 =?utf-8?B?VUZzU0NtTXU4djZJb3Rub1R3cm9FVU1wSnQzc0hBT3hiU1dEUzRLMHlDSVNX?=
 =?utf-8?B?UDF0QVovdXUyZENBbzZ4RHIveDJQUCsxWlRKcFRrQy8xM1lLV1kvWHZpL3BO?=
 =?utf-8?B?VGNTZWtOMjA1cUhHR1IydUQzeWZyWi8vZWcrRmJnZENPeTBkS0p5RmhjYWZp?=
 =?utf-8?B?RE5Nbm1lMGlxSDducFNUa01TTis4U2wrdk5ySUtwUC8xZFI3MHlqNEI1cGpM?=
 =?utf-8?B?YS9lY3BKNmo0bHB5K0xRdHFxdXlleFR6bmgwMTZ6VjNrWVRBcXJXd1VqUEsy?=
 =?utf-8?B?MVBZblpEdGxFN3BXVHM2M0owT2szQjJuKzFTT01wTWN4Q3lvMzhjWTlVMk9F?=
 =?utf-8?B?QmpXR3VFRkxyVFd5czVublV4bEhWOGJRc0RScUgzdGlpbTBOS01NbFJ4Y1RK?=
 =?utf-8?B?YW5lSFlkK0JaU3l6VS8vaHB3WmN1T0xpVWNWeTlvb2wrR2R5TTZLNzFxazJ5?=
 =?utf-8?B?Vkh2NFBZQWtMZXJreUlHd2YxMXlOVENhSjhKcjhmSjh1SUZ6SDhUdm1OTzBC?=
 =?utf-8?B?WVBLVjR0S0hGZDNsY2F0Uk0xOTd3QUJyZnRCOGVqQ0UrTWNQR25MK0VsKzdQ?=
 =?utf-8?Q?YMlX2QQHFF0kz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWpQdFhnaUcvSmpwS3MzMlRDVHhFNU04SnMvaStBclVTcUZQN1dlSjFKeU9K?=
 =?utf-8?B?MmpiRFdIMXJKNXB1c0ZOUkNZbEFMdW1kYy9ETzZLQUN4aFFjTDc3QktJb0wr?=
 =?utf-8?B?OXk4OW8vMmVKanFPeU9oWFovaDhDa0hpaXJZNGFQM1A4ODNZNWdiRnBBU0xp?=
 =?utf-8?B?M3RhQ1g2VTBYRHh1SzNkamVrMWsxU2RuRC80bDg3SGcrdXUvNWViRXBocWYx?=
 =?utf-8?B?eWJlY2pkN3RRYVYwc2N6bmt6bmY1ZS82aTErK3NEZGxFU1JmNWNYUXM0ZXEr?=
 =?utf-8?B?UythY2U0ek1jZmJiaEJ3dHR6T3AvRWtrM0s4L0pkRzNZT2tGcERFd1NFOUI4?=
 =?utf-8?B?NzkyOHpsaWNObzU2KzlLVnFCcnVzejdtLzZUemRjWEgzMHErNG9EcXkyOGFD?=
 =?utf-8?B?WjJnRlg4RGdQajlWOG9qSDBpYnpNZ3RQSFZkVVdSQ3Y4MjJOdTFUQnZXNzJH?=
 =?utf-8?B?SkcxYnBta1dpb3plMUduVlo5eGJ3bEQzZXdWMjZQWjlocFg0ekZmSHFBRUlM?=
 =?utf-8?B?SXkrVjFmY1o1MXRCN1JjOGwweUY4WGVkSjI2ang4SFJNMGVETEh3bEZKczky?=
 =?utf-8?B?WWg4L25LT0tkSmdQY3dzYUQyZEkxN2l2MWpqK3U3NEcxMk0veEJtaW5jWlJN?=
 =?utf-8?B?WVhuRG5nczlGd2RlVWJ6TmxFTFBzQzl3YW5kY1dETzVqL2JYT2FSWjhkTlR0?=
 =?utf-8?B?R04rTXR6RUlpbkNXK3hNZGlOMzhackcrU0RnU0piVnFINnZFWmNkSmNtZEYv?=
 =?utf-8?B?YzZUWnFaNGg5c1RFeGFCQVpRbVVWOFdvUlVtK21UZjFSN0J2TU1LRjJPTW9O?=
 =?utf-8?B?V3E5akl2UzV1TkhaZU9ST042ekVESnlaY3F1QjIzbE1aME1aYkw4eE03cjQ4?=
 =?utf-8?B?cld2bkpmN2RKYmlWZkV6RHFndnczUWlNa0RJeFFiRXVjdFhPQ1pYZDhyZVMv?=
 =?utf-8?B?WXlmdi9BSEkyeEN4blIwcGFLMFF5dlNySWlCOEMvYkdYK25OTEFwVDZEWmRs?=
 =?utf-8?B?OTdHTENJV25YclEwTElaN01ESTJOUk9OQ2JibUNVN1dxNkY2enJrT2VxT0lj?=
 =?utf-8?B?UEUydTRJa2kybXd2QWNQd29TVFFKZHZveEUydHBnaGlwdVRWK0lvenFWWkkx?=
 =?utf-8?B?U2kvemw4RHMwYlNVYnJ3OFUvSWlyWEF4bzBCZ2RPaVpJWmJsNkhKbXNsdFFa?=
 =?utf-8?B?NzZyS0wwZWhZNmRaOWMyMGlEVWlrZTNuNDBTVGRxRStkSExQTkNMTktmOXFk?=
 =?utf-8?B?dGtmSHNGcGRmMnNiL1oxTGkvTUdUSUlRN2hJc2lIS1VzbGEwbkFFNVFYSmFn?=
 =?utf-8?B?cERjREowU3hBdk1xT1V0KzFKVXB5VWVIWjFSWnoxa2s2TXZsNTNERC9DblhT?=
 =?utf-8?B?OGVZNmEvaGRzSlc3NkQ1SllOSVVEWlhUc1RRWm1nL0ZVUDNhSmt3MUFRL2U4?=
 =?utf-8?B?YTJVeFBGeWlCbnlsNkN3cHR1Z3FaZjA1M05BaW9UeEp2WmFFeVZTOU84cW1Q?=
 =?utf-8?B?VTBkZGtRUnVnUTBodm41YzNUb2k3a3RHcGtVdG0ySS9lZjdVUzlXU3hRS3E0?=
 =?utf-8?B?RU01bFdYcDRZQWZRMUk5RjArSmFNU1Q4eFZXdWFBbU1UZFVNZlJIaHF6Y0NY?=
 =?utf-8?B?T0REdmxkOUtHZW40ZnJFWm9CS2Nqb0hxT0Y3V05peXdzWnpFM2kvcTNjRVlY?=
 =?utf-8?B?K2RpQTcrWWdkd0YvM3VDaXYyYzVXVytkSkNQbzMraTUrOFVUMTc4SEpudCs1?=
 =?utf-8?B?Mko3cUZnOG1zU0dDM1VUazRRMVNMeFl6ZUZrbTJKaTNLcjA4RzBCcnZlTml5?=
 =?utf-8?B?Q0NuQzlwUUFCTlpkWml2T3RBaGNodytwR05JdUdSdmdTcXl0T2xKbG1yd3Rn?=
 =?utf-8?B?L2JBR0RUb3lrL1VWSy9hQmticTZWZDhQTnhhakFxT0pnUU95YnpMM3J6ckFF?=
 =?utf-8?B?YVA1R0IwWWRyaFJ6YVhxYjZvVGFkUktMajRPTGxWUlVnWTIyaytTdklEdFR1?=
 =?utf-8?B?UGFicEFPOU9KTnorTDNhUVRpczhPRVVZY29Mem9sY2M4blUvUTFybG1VeTdT?=
 =?utf-8?B?cVExelJvdk10akw1RXpwdUV2MnpqQm9tQTZUeTk4KzVRWXRoZ0huaytlKzRy?=
 =?utf-8?B?cmkxc21BT2FvMTJiZ2FTcnE5QjJVVVJLSzJnQ2k1KzV2NjdROWNHb1FkSlNv?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 326b85fd-6a45-47cb-def8-08dd45c702ea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 09:25:20.9612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1s0KEY5ZPvz8yvqO7tQKUIYhhr4H/ylDPlFj8G1VJ+GcByHIgd4Xnw7VUn22N0oCjiVIYrixHEMH9k96FnSNIwcXk+5n8je5WJza0lMb5og=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7401
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


On 1/13/2025 4:19 PM, Nemesa Garg wrote:
> Load the lut values during pipe enable.
>
> v2: Add the display version check
> v3: Fix build issue
> v4: Rebase
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c          |  3 +++
>   drivers/gpu/drm/i915/display/intel_display.c       |  6 ++++++
>   drivers/gpu/drm/i915/display/intel_display_types.h |  2 ++
>   drivers/gpu/drm/i915/display/skl_scaler.c          | 14 +++++++++++++-
>   4 files changed, 24 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index c910168602d2..f502530a98af 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -389,6 +389,9 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
>   
>   	drm_WARN_ON(&dev_priv->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
>   
> +	if (DISPLAY_VER(dev_priv) >= 20)

use HAS_CASF macro


> +		drm_crtc_create_sharpness_strength_property(&crtc->base);
> +
>   	return 0;
>   
>   fail:
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7ab885fad189..52e8b6c86347 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1881,6 +1881,9 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>   			intel_crtc_wait_for_next_vblank(wa_crtc);
>   		}
>   	}
> +
> +	if (new_crtc_state->hw.casf_params.strength_changed)

Where is the strength_changed set?


> +		intel_filter_lut_load(crtc, new_crtc_state);
>   }
>   
>   void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -7182,6 +7185,9 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
>   			intel_vrr_set_transcoder_timings(new_crtc_state);
>   	}
>   
> +	if (intel_casf_strength_changed(new_crtc_state, old_crtc_state))
> +		intel_casf_enable(new_crtc_state);

When a user changes sharpness strength, there can be 3 transitions:
If transition from  0 to strength 'x'
Intel_casf_enable() -> Enable Sharpness: need to write all scaler 
registers, Sharpness LUT values and Sharpness CTL etc.
Transition from x to y
intel_update_sharpness() -> Only update sharpness strength.
Transition from x to 0
intel_casf_disable() -> Disable Sharpness: disable scaler, sharpness ctl 
etc.


> +
>   	intel_fbc_update(state, crtc);
>   
>   	drm_WARN_ON(&i915->drm, !intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF));
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e5d28377bd0b..589596bfd8c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -940,6 +940,8 @@ struct intel_casf {
>   	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
>   	u8 win_size;
>   	bool need_scaler;
> +	bool strength_changed;
> +	u8 strength;
>   };
>   
>   void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 40584bc19dbb..60e2ec86ee90 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -9,6 +9,7 @@
>   #include "intel_display_trace.h"
>   #include "intel_display_types.h"
>   #include "intel_fb.h"
> +#include "intel_casf_regs.h"
>   #include "skl_scaler.h"
>   #include "skl_universal_plane.h"
>   
> @@ -896,7 +897,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>   
>   	/* find scaler attached to this pipe */
>   	for (i = 0; i < crtc->num_scalers; i++) {
> -		u32 ctl, pos, size;
> +		u32 ctl, pos, size, sharp;
>   
>   		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
>   		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
> @@ -904,6 +905,17 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>   
>   		id = i;
>   
> +		if (DISPLAY_VER(display) >= 20) {

Use HAS_CASF macro.

Also this should be checked only for second scaler ie. when id == 1.


> +			sharp = intel_de_read(display, SHARPNESS_CTL(crtc->pipe));
> +			if (sharp & FILTER_EN) {
> +				crtc_state->hw.casf_params.strength =
> +					REG_FIELD_GET(FILTER_STRENGTH_MASK, sharp) - 16;

strength is u16, perhaps need to check that the value read is greater 
than equal to 16.

In such  a case, print error and perhaps set strength to 0.


Regards,

Ankit

> +				crtc_state->hw.casf_params.need_scaler = true;
> +				crtc_state->hw.casf_params.win_size =
> +					REG_FIELD_GET(FILTER_SIZE_MASK, sharp);
> +			}
> +		}
> +
>   		if (!crtc_state->hw.casf_params.need_scaler)
>   			crtc_state->pch_pfit.enabled = true;
>   
