Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4169CA16D30
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C5110E3FC;
	Mon, 20 Jan 2025 13:15:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GFr1/W30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CD210E3FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737378910; x=1768914910;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gBVmwO4fULjCXN0+qXKmMCKtSSa2fuM8h8m+c+cMIJE=;
 b=GFr1/W30PHY5AlqB3mIeQ4gSriL8RXaRpeJrtxX7CvxqcZzsYIPu9VuA
 I2t/fu7n7qhtT0i+uu5rO52axVdEj2DtaDQ7VC8Ewy5nEZJm9rT020xhH
 AEtnNFdhnQ7WQbj9A+0c2cVFBhxqo0PhwmVXtGifs1Cijo/3G72qRpNu+
 D/gN0bZa3H5yENDEkcDArsIZ1PLoD1H6wP9MvBUDHL6J9o62vNKegXMEk
 sVjWbu5plXEXq3h6Ldb/agvlYk+7QiXWf8gXI9qbYFcDIeO7+3aHbNM7N
 mxbcQ2K4mWBheQFXpL/sWszPUAYvuD65CEI56BEdWizVu7O+sheze4BEs Q==;
X-CSE-ConnectionGUID: i7qM9erZROiqZ44OgTJ+9A==
X-CSE-MsgGUID: 5238v32CTA2UiTlVLo11Fg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="25372003"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="25372003"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:15:10 -0800
X-CSE-ConnectionGUID: /rU7afwwQZOEkTrG4cceHw==
X-CSE-MsgGUID: jlqy2YCmQBeprxmNI7b+tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="137412136"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:15:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:15:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:15:09 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:15:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YPEOYGVvG4YakuZJkTgsmTM7ldfKhg4aiTabFwbq+rCJZaoxAcbJLh4UAhfcfV5775p+pUcXm35gkIEJE9znZ4E3qi+/cDZ/csLY9tGRYe81yY0S6VQsccyIKa+ZahmTXLNFFiqd3IqnI0DCjquknuFVxCeciWiVKDnsYIRo+FvmdaplszH79nO9BKrq2Yhug4dfA/HO9E21okEsIodkLgxMrWWDji7x7QV1UFIUsjJf6lU8RvwkWY/5uIOCjv9I1l8chasQxbLL2zJuQuJbzM7FWB8JfobppXeF+JLfu4+TE74XXZRVvQbIbgGCavelwAyNT/6soHtiNT8CHxH6fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sN/CQgXpVd+oeoLIw77La1s3N/d706vMSfQql3YXswU=;
 b=Vam/AMbRpwrUFnPPcAe5EmaBFDYSQgLCmbJ55EnPurft9Tb69eMakQIrT6ZzlzpaVeXrdTwvGym8zaKyfquU5G3ZxUshOXAhI8HhrjwOmDoUATlKP5n2uUPpm1vicoL6sw/Whgg2ZRIC1tc4Mivqd9nm8K/PG9ehTjUsEZkKv4Z65xL2CwU2kFy2eQCgfuUDK/PYrybd5gEu2uJv7w+/cvQuGFmtSWj7+O5y9fP6Qtj0Vq0h8+wuDvkV4d6qILTMk8etnQ2qpqbSHEg1ESfWiAa4jT0BQQcQGuRb9e+GZdR+xDBW8yMmHHvmOrdAz6CLsaEbSfgZziQzQLAcE9YUFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by DS0PR11MB8181.namprd11.prod.outlook.com (2603:10b6:8:159::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Mon, 20 Jan
 2025 13:15:07 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:15:07 +0000
Date: Mon, 20 Jan 2025 14:15:02 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 2/8] drm/i915/gvt: fix typos in i915/gvt files
Message-ID: <aywodu6bxtm6jqhp4ufyhwy2357fge7352gfx6lm524tanre7l@bhqkg5o7geyn>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-3-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-3-nitin.r.gote@intel.com>
X-ClientProxiedBy: ZR0P278CA0083.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::16) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|DS0PR11MB8181:EE_
X-MS-Office365-Filtering-Correlation-Id: c9892522-4ebf-4452-86a9-08dd395475fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YXJuZEpuNFk4QnZaV2kwZ0dqVFpOUTlYYnJobmpJcFV5U0tTV2tnVmN1Qksv?=
 =?utf-8?B?MXdHaXIwWlJtenZ4SElIc0pORVJHdGlBNDBMRE5GVEhPWEZYNEt1Wjg3d3JE?=
 =?utf-8?B?MUVWTVpycG5JTmlnaEFSVUh4SE5ab3FuMlVUK29NVVJnNnhNYUxCNnE4a2tz?=
 =?utf-8?B?Vm5sZ3R5Sjc3TURUMjVjZ2VJcWxibWVtYXByOFVnRFlZenNITjR6WDdFUXAr?=
 =?utf-8?B?SUovU1M5SmE2Z200aUF2UlpCMVhQZkYvWHlqL1UyRUdFTHdpT2R4aHBaVE40?=
 =?utf-8?B?NFQrSEc4TGJDVW1Md2NjKzl4ZUlSdnN4SUtrQ0lXZ3dlckJiRHkwSHZKNEE2?=
 =?utf-8?B?ZVRjMmQySWkrSlk5MlF0a05ZN2lDSk13emdtUmhnLzFRL0NzMTlXZTR3dnJZ?=
 =?utf-8?B?UjJkSDNTenB5SVhnZndTdGZUNGlzZmtBT0l6dGdIOXZ0WkJvVWtmSk9uNk1Z?=
 =?utf-8?B?V2Rsa1ZvODhIMCtTOThBUU1CR1VNSHZkRlRnSVN0UitXYVRCYXU2QnFDSnZY?=
 =?utf-8?B?b2s0WVFONHo0STJZZHpoaE9qYitIbXhlTU1taVBCS3pBSmlkZDEvNUtueDl1?=
 =?utf-8?B?RTAvK2s4R0xGcmpiRHByRjdIdzhRR29EWFprQ1h5YUx6ZVpBdTkrcmhGMGk5?=
 =?utf-8?B?NHViM1FHanZiMHVhZG9iSXltY2Q5eEhUNENXZ0JGVythTTNXbUl0WnV0YlU5?=
 =?utf-8?B?NHQ3NGwwV0VPc3NXNDFvLzZrdlJTdEw3WkNDTWpYUVJqSnE4RGxvWlVzdmZt?=
 =?utf-8?B?Vm9Bc0l5MTZXa29kY2RCNGpGaHpqYVRSaURyZXJlMEs4eXlxZnhFMEFHUTBL?=
 =?utf-8?B?NGo0aWc2T2J3NS9maloweXlpd0k2dGVyS1VXRlpXRTN2ZVhCcnNyV1BhcVJV?=
 =?utf-8?B?dmlUbkZLZE9Fc05KdkxKS3VUM0dyU1AwNENQanVmeWlGMm8yQ1p5K2JmVHZS?=
 =?utf-8?B?V3pSUjNCazBrT25BWWdYYThJTnZ4SDVpeHFYbmw0VUxPOXhmREl0OGFLRWtM?=
 =?utf-8?B?cEM4aDBsQkR0NUpxc25OTElndWk0cUZHTHprcFhnUmhKNytFQXd3Wm5BSDdj?=
 =?utf-8?B?TnJLNmd5SEI2amtvbHpkTGYrcllGb0g4SzBSMEpOL1Q0WmxHZGVxakJLVFV2?=
 =?utf-8?B?OW4vdElnVlE4NGkyY0lFemF4cmR6TnBNckF2eTNDL0pwbTNsdW05K1FoNG9F?=
 =?utf-8?B?YURSYXY3ckhNR0s2Snp6M3pTNzlyR3VLbUxQd0xoVll1T0FpV1l6K25sbGsw?=
 =?utf-8?B?ZXZnRC9kVDRscGNXajdSWW5XczAyQ21JRHhvNCtyWWZGdTBmbk1OK0orN0JU?=
 =?utf-8?B?ckYvTzZGMUVKUjBoenZJZWdsZkpsSzNMQzBqSzJycFFaUEZ0WlJMKytVcjVm?=
 =?utf-8?B?d2gzTG1DMUhoOHkyUzNQNkJvNG04S1plQ01tTGFjNTBKZUZwdmYyQ1FpWFNZ?=
 =?utf-8?B?c2JMLzlUdnEyeVVlcVl0VUkvZ1djc2daekZMVlo0dFJ6YldGdHZtcG5OcS8z?=
 =?utf-8?B?YXhsTVM0bkJQeXliYXVsSVhCR0R6ayszVitSNjF0dnFwK2pDZTl3TVJhRlZV?=
 =?utf-8?B?T2s1U0s2VXp5UE5mT3ZRd1RuOThYMnkrYnNGazBVSHBUWkM4T3BrVWtnTkJs?=
 =?utf-8?B?OE1qQkNhMW1mQ2xWbjZaSW9sVXBrdFNtcVZMWWdzMisyV0kyYVVHY2huL1Fo?=
 =?utf-8?B?ZUd1SThXQm9JNCthZi9XUnVMQis4ekFQS1Q0eXdyck9JMzZNdkxsUnZVdUFv?=
 =?utf-8?B?WnNDVDJ6cmNJNHdyVkE0UUI4U3Zyd0JtMjZCbHIzUXJ0YlZpL2JEbDJhZ2NO?=
 =?utf-8?B?NndTKy9lVnBzS3piVEMwMnFiS3NUd1krQnoxTWZOODN6dUhSZUcwUXRldzlU?=
 =?utf-8?Q?swf3hl8FnztfT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHo0eVhCVEg3dklzMFgvRzEwSS9KWDMrNXgxeS9WaVdSUG03WjRhZ20rZTNp?=
 =?utf-8?B?SFk5NWh1bjdhS084U2Vlcy9MVUpUTzJvMGNZSnF2dzBXNkthUDZFU2xTTFFu?=
 =?utf-8?B?WjNXVCt4T285Z0NCNjI5YXFEQkkxcW5JMjIxaG5aQUR4N3VwdEFMMHpMdHIx?=
 =?utf-8?B?TUM2VzYxSUxsS2hycWNwa1dLajhnTW5Gb3lIbmovd0dsRE5nV0FwaWNabmpN?=
 =?utf-8?B?M1A4WXhpOUxndVdtUzJ5U09Wd3VPNllqWXEwaG9YbVJGK3JLN2ZIZUU0aUZy?=
 =?utf-8?B?cENKQ1hpbEZNeGRYY2dIUVRtdDI5cUlWSWMxWXpMeVplcS9YOE16emplZHdU?=
 =?utf-8?B?UTZMN0MwMFd5aDVLb1FEYzlkWHF3WkpXeHNBandhNUdFaEkwN0RqSERVbXVX?=
 =?utf-8?B?aUN2SE1SWXo0TXBhbjM1KzVvQ3Qva0RyTTYxUWlQOEdJQ3ZIZGZ6VXBwYjRR?=
 =?utf-8?B?Wk9aYU4wY3pDcjRoK284YlZVV0J4eGFmMDBOVHBhWThYM2R4WW5xMTcvVCtG?=
 =?utf-8?B?V05PUFB6dnRlNTZWazkrUDVlRnFmZk1PYUNZY3RmdlAwWE1DamtaYlhFOXAv?=
 =?utf-8?B?L1llbHlscFdOdTM0YkFodVlNZUt6Yy9DOGk1VVY2K1hpU1FSYzBoaDIyQUx3?=
 =?utf-8?B?d2RTYjh4akl0dGZPRk1RWFEvaVdiVUhyVElKSXcwT2dRUTRrcHlSUDhjQ1FJ?=
 =?utf-8?B?TGljY3ZINUptN2RkVlhKdEZCWFpsVnRIR01HRTBUb1RzU3VmQTk2YkppOENV?=
 =?utf-8?B?bGlOYkRWUmxqaXg0MFZMK0U4a3ZJVFVPbGpRTE5XUTBuYkVNQmoyWDJ0Wmd0?=
 =?utf-8?B?Z0lCOXFneFc4bzM3bmJyU09qZkVjNG40SDM3bDY4NGNQcGZwaHlqdlZZOXJ3?=
 =?utf-8?B?TFB5d1JJSWttSnlpS0k5R0t3ZVZJNVNqZDZlQ2RaT0pzaFhsL3FqNUNEeG5k?=
 =?utf-8?B?L2xWMENMemxNOFhoSEJNTnFOQ1FRNFVDQ29CMVIxNGlKUkJHaERZdE1mUm5Q?=
 =?utf-8?B?RTFNUWNCNDBwQ1o2cjIrL3krSWs0TllKWTNUWWFVNW9rc0F4NzF2ZzdqVlRt?=
 =?utf-8?B?ck5WRW56WnJkdXJMUHFFWUhBR2ViY01Vc20wc2NMZ09BYXFPSzRBSkd6TVNO?=
 =?utf-8?B?TDcvYkZnd1pEUWVVUUl4UjFMOGpFdWVuSVA5UzYwMWJhcnk1MjE0NUtxdnUv?=
 =?utf-8?B?R0NGUUdzeHVZSE5JNGNBdGQ3MnlhVHhxdkgwZHVKWktxWDJyQzloSTFoN0FV?=
 =?utf-8?B?UEM0eFg1SDRmZTY1L3ZUWHZQVDNEUVk5S2FCOEtUNjhFdG5kbS93SVpuYzAv?=
 =?utf-8?B?V1R2M2MvdEZFSzJody9QOW16b1J0TGFkK09BR3N3VlZWY1p4Tm1tYk45d1pE?=
 =?utf-8?B?UDZGWXdBWDNaUE9VVGRZV01LN3N6UjhNMzY0MUo3cTR5ZmZZYy9yV2VZdEQx?=
 =?utf-8?B?NThRSVhycktIK1VwakZqZ3A4ZCtZSUVZWmVaQVlRUFJDSWNzRzFQZ0dHbitD?=
 =?utf-8?B?bGU2bHR5dzEyR3Z5TnRSam1OWjladDhkVEdpQkNMOWVVRnB1RHUzanRwRjJx?=
 =?utf-8?B?S0tPd2FaeGdTZHJYMGR4MWlDNUVBdVhuR1Z6UkMveG8xeGFmTUkrWFNNMUpP?=
 =?utf-8?B?Q01VdElPYWo2NEVtOGlRTTdqWUxlQzZNNlFqM2JyM1BGYmduMUdheXRrSXNx?=
 =?utf-8?B?MWFQTEd1OXJTQVZBb29DOUFheWh4Q1dKQUhKeXl3bFhHeVdsakJrajduWFMw?=
 =?utf-8?B?cTFTSER3elc2TWxEWFJnckxvMGZMaS9FYmlkSkFucWtvNFN6K1ZobGI1SWI1?=
 =?utf-8?B?TXlnSTZnclQ0YTAxZkRRMlBDa2k5U0ZPaFlpTzYxTExqTE5LY1JWVnc2SkRH?=
 =?utf-8?B?Z3hhcUd0c3RZSk16Um1nR3BBWm1Ec1ZrUTlxbGpJRXZwWEp0U3d0aWZ0azBY?=
 =?utf-8?B?YzNMV1hUREJyL1pQTDFKbUZxVEJUUnY5TWF5MHkwZ3R1V0lSZW8xRkFsdm12?=
 =?utf-8?B?b1B2Q3NtTzZkL2hhNG5WMTU2dENJUUpJeFdZTGIwaFQwNVFqV0R5STZuOW1t?=
 =?utf-8?B?QU5JR3lIbjE1dkFGNU1lSEY5aC9wZlpXaElEWXhBemdqL21TUWpMOW0ycmNM?=
 =?utf-8?B?WlUwaHFXbk1QdWZKNTFWNGErOGxoZEdWQXFSb2JBUWpaRVlDMWE4cjhhN0w2?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9892522-4ebf-4452-86a9-08dd395475fb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:15:07.6830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QgLcV51f/kYCcSiBz8BgazREfzYKycQKl1vU4pi32qFoDn7R0yiPJiro8MzngWDyceVb40OHt5t6kl4U849RQzvd9PdG/AWqwFHSWnLLQtc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8181
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

Hi Nitin,

On 2025-01-20 at 13:45:11 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/gvt reported by codespell tool.
> 
> v2: Correct comment styling. <Krzysztof Niemiec>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
