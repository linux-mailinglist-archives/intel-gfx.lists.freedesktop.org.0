Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E924D20309
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6890710E635;
	Wed, 14 Jan 2026 16:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJln8XOR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B151610E62E;
 Wed, 14 Jan 2026 16:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407794; x=1799943794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rChVfxfftYlS8m9s06S9tLNI310YHkDoDaNNSVP9nWQ=;
 b=jJln8XORR4S8X1MdQORu2ZZuS2BjQonX+8v3nUOPHVUn0woBFyRwiwlf
 uwIDGUEStSoLfmaQnitUOG3NFWwpgB1sKoouFvaPns3zOi6MBmj0L9mCM
 fHL1wU3mHZ0SESu5piwOxhDMSfh3Gw13ccCLq4m8atgSCu55opC0iHkN3
 haqpVD+mmxOawtoxGdKpIC+LXdtisgOqkbSD7q7QRknyI9ztbWy06zYVw
 QsNDpR3gH/dOHm7B74eQQph73Q+ftpvRCv36L4A+74E0p8evzbdBpYZfl
 y+XJjAlQkDoZfObV6eXWlM71p/shL7e29ghh+wVcZG/xJwSsXqR1gPWRL A==;
X-CSE-ConnectionGUID: 2FjUuYoWQqKRSEXa8LvXlw==
X-CSE-MsgGUID: Kmg3fiY0RDqUnGJwmu2qwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551583"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551583"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:14 -0800
X-CSE-ConnectionGUID: 5FF8YC/tQCWEpHZlXLtusA==
X-CSE-MsgGUID: jJfz7Ou4Q7m+uy6fggd6aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611155"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:12 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:12 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=siMHcOOP7SpINBRKSvc//MkqPtjJhzAM0i4R/90IExmnWHA3KMNWHptr4IJjyOfX6yF81bQYgZ60E3n3BFhQGLg/V9V4nVr51FceIbdXrg16LJ3rgB659q2tk2yiVGwO9JLR8g/B6lwA83DdJDkrerMRNbqXUz1Aslq6yOFvMDHyBdWFvp06B/cDszBo53loCcEgstsTjJzxgwZbEArqfYcpVHHZSOZaHNTg1LavWAKuQHwj/xZBER0MS+rn7iQ5Wglq+Fb4JDv91DiAa0lZSdaD+6NeSAztjcNbfIKm3WkSJZJwwR1s1GCrMdMVeRHWkKdG2Zi/XbBvEyKCQu+d7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=masw5/+2lvfRa1T20nZAdg3D9fKlgmIGJPFWDaqs3+o=;
 b=Sf7pWZSpFcVTBw2PRAG+jx0SmxSDRPTOPhnjx5OeZMpq3WgtzzOT6WdzYwU2MoQr+15htOQ3sIHC6EfQJL2AQL2aR/PXUsLWlfXUTlpNA5rvVCni9a7lMtGSUEL9e9U+DvRFd0yraEBuIIaam+cbRUotU+dPJCE2qmix55NWx8dyrA+O7HqlAPCaB+FuL/tdKJxZ2V5L1pWiBXMih+OqpYacc5L4rctQFaSQglzf6XrAplnSuafQVWa2crZyktlT1XNOEvbplfTzt2UjCkgjknaKoyFxPukE65kn6tY2Zvkl6SrjvClVG68PcuKplCjPZWQPQ+Xeg+d8Arc4BNoizg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 14/15] drm/i915/dp: Add intel_dp_dsc_get_slice_config()
Date: Wed, 14 Jan 2026 18:22:31 +0200
Message-ID: <20260114162232.92731-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: 0208308b-1731-420a-878a-08de538935d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qjk0SjBRMGR6ZnhtSk9MM05jZXU2VWh1dUQ2R3IyRXY3QWgxc3MwRnVMblQz?=
 =?utf-8?B?ekFqZSs3QjNVQ2Fnem1WSExqOFB6WTVuNjdaWUxBU3JPbjdEUVh1OW1RdUYw?=
 =?utf-8?B?bTkybGdiUzdzUVAwZlhuNkhYa0RncUNMNVVxYXNYU1JJK3E5ZkdlRnp1OE5I?=
 =?utf-8?B?a2QvZDhadmxQTzNPQjI4d09JZkQ4NzBzdEZvOW5jK0hQM21CS1FqbmlQYmpp?=
 =?utf-8?B?STgwU0ZyR0RZbWJFSTFBQ3JZM3hUV0xyOGhBT05CbHc5SVVOMUpzMHlDdC9C?=
 =?utf-8?B?QnQvUDdJd3kyZ0NRYXgwRTE4Q3oyUStCUm9ncmF1VmJrMlVqTFBSa3hLU1dS?=
 =?utf-8?B?NThmV1NZbnBBS0UzK2htZC9wV09PMzhTeFowTnRpQTBwRnltenNQYkp0em5a?=
 =?utf-8?B?MmVUOWJhSmtJNDdtQ2I4UVB1bWJrdkFKNVl0SHdXSmh5VFJXS29sRktVQURU?=
 =?utf-8?B?R0NFanFiSi93V2loRG9FN25SRzBweTN2WVh5T2w3Mk1ocDlVbXVEUmt6YUh6?=
 =?utf-8?B?dUo3TWErTlRFMmFMYkpTdnJsZnphNlBMTmdvR0xFdjNVWVRwMzRldElteWVV?=
 =?utf-8?B?SmRDZExScFZXNFhxZmlDSnhlK0FLOWRFTFR2N1R6NExOUEIrV2tjQXE4WDFi?=
 =?utf-8?B?M2NyQ0ljWUlFeUorNFBoZ0g2Y05IZUhrZmNjdnJaNCszbldyTk1TRW5kWTFR?=
 =?utf-8?B?NTdIMDg1R2t5d0s5a1o4NEgzeGxVdkxub1g2Z2szbGlrSHZ0ZnoycXRjUjNS?=
 =?utf-8?B?VThCRmtOcnM5Sk9jY2ZSVE5NOVpSc2dqRGJZdVk3NGcraTNzM3BUZURMOGpJ?=
 =?utf-8?B?bW03aFErcTJXQjlBdm1TR2FoV2hiZGRvbWNqdTZLKzFFUEMycllrL1hrelcx?=
 =?utf-8?B?Q3pPaGVqL1U0TmRXT2lWbis4Z0orUXNUaFdEZDRnQVJGaUg0NkxOdnRmbmF6?=
 =?utf-8?B?L0Njelk2b3lIMzc4Yk1leGcrSnIvdjNZRjJEYisvN3JVR08yZ3R6R1J5Q2ZB?=
 =?utf-8?B?WWdyeGxoem1zSzUrc1JmOXBMQzljM2ZOYjZaYTVjeUdqdUk5T1QvYmlJbkJW?=
 =?utf-8?B?cXdQK1BUeGtZOE9ra0pMem1iVkdxWndTSEwrdzNxUkJvVUNEWWNBbjhlVHlC?=
 =?utf-8?B?WkVVQ3h4RThwVVl0Q3VUYkFOMEUvaEgzYmpkSmVuUkZDZHo4YVlqS0xZNkJk?=
 =?utf-8?B?cE1QVlBBSzRNa3ZiZmsyamhvMXQxeWN3S2RyZVdyWFFkUThNYWsrcm5aWU9U?=
 =?utf-8?B?U25nVVgyUHlsRndTUEtIRUhsK0Z3MTBzRFFQUEN3SkRleldpcThQL3pLc3Vr?=
 =?utf-8?B?dVplbHplNEpTY1ZCNDJjeVk2bXM3U1Z5S3h3WGJxc3JCZnBRaisyTGUyQkRj?=
 =?utf-8?B?V3c3NnloeW9mdy9uZVRrYndidk9xM2gwUWt2dnM4Tm1ZVmFWS2w1aVhrSWR5?=
 =?utf-8?B?YnNFbkNCdVlvWGVzanFaTitrNnl1U2YxeXBDN3RhNWkxWHdXM1J0WCthK1lh?=
 =?utf-8?B?K0R2eTRDaHAzV1h3MkZYUEg5QitOT0M5am9pZGwwMkE3NDJrV2k5d1EyRE1V?=
 =?utf-8?B?NlN5bHczODE4YkRqMGd5Y0RuenB3UkRBMkh5Z0taT1lWMld4NFpsTjN1aUdG?=
 =?utf-8?B?OEVQVTJDMDRkVUMvT0xGR1IzR2R3M1dPUFJZU1JOK3pIbk84emxkZHNoeFlo?=
 =?utf-8?B?TEpVWktyS3FsckhaUnZubElacmx2d2dTbGRNZExjMHNVc3JrNWVKYUd2bTEr?=
 =?utf-8?B?NndudFhCanJZT3RqNi9RK0FWTVlzbDk1akVMRjlsRnJkYUpTM0NsemdoOFJ3?=
 =?utf-8?B?MHluMllSZjBuYzFkQk5MZVZ1Tm1EWXhlZitYMkNuNVFLRWJuWFJTa0JKNE1s?=
 =?utf-8?B?SFNjU0QrMjdySStuL2pXSUtkTkZNOUE4ZUpXR1ZleGs0dDdZc01LU3FZL2hP?=
 =?utf-8?B?UmMweFV1OVRmWEtlU1MxTURNMUZ0K0c1L3I3SzNXYy9COUx5YXhYVjZ0TFE0?=
 =?utf-8?B?aGxuUEVJZXNZNVVoaThNWEVVVnQ4Z0xUMkV5U3lGOXRUeGd4NEpyVXdWcG1T?=
 =?utf-8?B?Tmp0MXZ2bXBvV2VkWFpjRGIyODROdUN6eVliV2pxVFNlZXMyLzVxVkVETVZY?=
 =?utf-8?Q?gTwU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RzJSL1NsMUtyOG9TUXZZRHQ5bG1pS3gyQXpnNFZFTjZNMllCUUZNK0R4NXp0?=
 =?utf-8?B?VWtJSTkydTFuOC9DSmMwcU1jMGU2dXQyRnJyaDhPeXBEMFc1NGNMRi9CdW5X?=
 =?utf-8?B?OWVQQlVzcnFXczNhNFlEblVLVG9ubWoxTGdqeTRVMHUvTnBPZHpaZFZBblpw?=
 =?utf-8?B?TkNZdTBOMnNzcTA4T2FxR3FZMHdsZUFCb3l0WWFTbUpQVVBFS05EZEk3bU94?=
 =?utf-8?B?Rmh3MXFhZDlBelFvUnR4SllhRU9HM2NtNDUxVkRDNHNraGt2NTNBQVZFUk52?=
 =?utf-8?B?UzlHRENLai9hd3h4d0I3dGRtS01pQnpCbitxMzBhRWdxVzBCWmlYTk5nOFBr?=
 =?utf-8?B?VEM1RWgwNHRGZG1Hby91VHJicFRLZVZXKzl0M1lNWGU4NEdRbWVCWUx0NElR?=
 =?utf-8?B?dXBKU2tyYTZzNFpVUDg5emw5VkNJRUdkNzMwdFp6SHhqenVrNVVhWXhqcDkz?=
 =?utf-8?B?UmU2SlFwcEZPS0VQS0s4cmNGZWxwZGdQZkYvWnVTR2tLSDFobm50MzZYQ28y?=
 =?utf-8?B?RXpSSDA0clFRRWVIelRkOSs1ZjlCR3RoNDhMR2hvOW5jU1BuUVFmMGdLR2tB?=
 =?utf-8?B?MU1TL25vRUtJRlp6WHhqZWpCNWc0RW04Vjlkd1RxRWJEb3BIZ0FXeGNXZzlk?=
 =?utf-8?B?dFcvb21XUnZrZWxQanBvS2MvWU9lc3hZczVlSENrdzlpQUM0WkhMVUIwakNZ?=
 =?utf-8?B?SXdkK3dSWlFFNkZITUx6K3JHR1lIdG1wZU5RZVd0anE5WktLbWRYM1BsMGVh?=
 =?utf-8?B?TnNORnZuU3hMMzZsTlNhNVhWZzZhQlN4d0JZcWUyTFNTZ0NGK2E4UUpDY0Nx?=
 =?utf-8?B?azJYR1VBOVp4bzE5bHpuUHhiZHE1T3VBYW5HYmplOFgxMWt6L2hlWmlzZy9W?=
 =?utf-8?B?NFdGZUhmZUVzQ1NNdzZua2h3cGZYcUEzMEhXOHI5TkU5ZFFQWHpxUkh0RzE1?=
 =?utf-8?B?T3l4UVNQZjFoRHpYSjNiMWswcEx1T1lNQ2VQOG93TWRKQzN0bWhLKzliTGpK?=
 =?utf-8?B?aWcxa0N6T1BDdW0rY1JQQkdUT1hMaExzenZ0aTRYdzN5UEExamhneVRBSFdN?=
 =?utf-8?B?MmtiKzlRL1BjZ3FyZ0FxOEtkNnp4SWlnUUt2eWtScTVrQzJ2eEJhZnc0YVE5?=
 =?utf-8?B?TzN6K1k4c2ZPSGdWK0hWNHBvengxWFFIQjJjdy9RZ24rT1puZHhlaGdQUmdp?=
 =?utf-8?B?YzBqanVtU2pZSVJFWWJNcENIeDA4VVRnU1MzeFpzc3NFWHVvbmFyRTFjVnNX?=
 =?utf-8?B?R3d6WE5hMFZnNGcwUGhSejFZdXhYNm9CZ3ZKcGFZMDJHS3U2dVdiMmE3bklK?=
 =?utf-8?B?cmlHRVpQd3hZeFFRMHY1bjJxRkxocjM0VkdmeWhjOTB5SEQ5ZWlSZ2JNNzk1?=
 =?utf-8?B?Q202VTYycWh5OC92QkZJb2Q5b2Q0dFFhZ2hxckg0RmFmZHFOcnRzc2ZBM05B?=
 =?utf-8?B?RW56WFY5SU16aW9IRFlhcWgwRkp1bXZZMnNobVdjWkRHb01MY1kzazlVZTdQ?=
 =?utf-8?B?QzZzb1E4NGRGUDlUR3pSOVlyRHdBVFozUGZGWVNGSVRreGhLekNKV1lPeHB5?=
 =?utf-8?B?M0lBYUhQSk5lazhFMHpSRkU0VEIzNTUzbENONC9tQlNpYWMra3JOTGk5NVhm?=
 =?utf-8?B?QTU4VEJVL3RoSFhVcXZ5Um9YRjJ4dVZibGh3ckpPR3lvcXpxSGhBWm5xMmFY?=
 =?utf-8?B?UHRXVkNXVzJ5Q0wwckpiU0I5d0RBOTBqUUZBRUY0SlF1eXZleTVBRnlCU2pU?=
 =?utf-8?B?RzNCVGR6RU9NWXVSaXNERURGWlI2OUxxK096bDYzRmpKalV6dDJ0Ty9KYS9E?=
 =?utf-8?B?WGwzQ2QwQnhmeW80M0JGUFV4RkdydXhCRXdwdy9qaUJoY1VXb2RxVUlpdTB5?=
 =?utf-8?B?VER2UUtvNWNzS3ZYb3Z3YTIzL0IzSjY0RmZ3QWx0ZXdTVEI3NHFDMWx1UFVD?=
 =?utf-8?B?VWdSMlU5a3MxSzlCVksxVnFyRS9icXE5eCtqUTAxK0t3M2QvcDZIZ1IrK2h5?=
 =?utf-8?B?L2VNdGtqUjdML3Ewam1WclBzOGkrSXJTM055R0VRR2hZMEROaWVRMllkVVBj?=
 =?utf-8?B?OHdPelQ0NTQ5ejVBUEtrL1ZORjNTWmcvWm9HT3JXeEJNd2RwcVVMNWVyazMz?=
 =?utf-8?B?MHJUQjZzd3ovUUUzSGwzR25JY0VIZ3NxOExPdEp2NWpjRDZGc1g0OC8zWEhy?=
 =?utf-8?B?VUVrcnJxbWQ4RHpSVmFhTEg3dkZ6d1lmeXF6YVBjUEVkYjlPWE8wNTQvcGVJ?=
 =?utf-8?B?ZzlEZGltQlU2cklUenZrMld1OTVUZythamZZV3p6OHoydlJPU3RROFQxQmpj?=
 =?utf-8?B?aEJxamJvSnNSQ1Q5dDNqa2lubHNQSXhpbDVhT1JWV2dVWk9IcXJZQ0JyZG9N?=
 =?utf-8?Q?aAtrInHUG0AH12OZmyQZVJaaYGy6SLE3nfrmBVcQI7dyf?=
X-MS-Exchange-AntiSpam-MessageData-1: 3EgEOb+/tY5G9A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0208308b-1731-420a-878a-08de538935d8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:11.3430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jkRdBcDHFKyBjnK+XU33mOKYHGL7FyR7KnrZIE3FxSkaym+QQCqAuWMVZlt6SpPWzBTdpJCMFr+hqXdV2cVHhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Add intel_dp_dsc_get_slice_config() to compute the detailed slice
configuration and determine the slices-per-line value (returned by
intel_dp_dsc_get_slice_count()) using this function.

v2: Fix incorrectly returning false from intel_dp_dsc_min_slice_count()
    due to rebase fail. (Jouni)

Cc: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 31 ++++++++++++++++++++-----
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2c50e380fb396..0ea9c4e3b7d35 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1019,9 +1019,11 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 	return min_slice_count;
 }
 
-u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
-				int mode_clock, int mode_hdisplay,
-				int num_joined_pipes)
+static bool
+intel_dp_dsc_get_slice_config(const struct intel_connector *connector,
+			      int mode_clock, int mode_hdisplay,
+			      int num_joined_pipes,
+			      struct intel_dsc_slice_config *config_ret)
 {
 	struct intel_display *display = to_intel_display(connector);
 	int min_slice_count =
@@ -1058,8 +1060,11 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		if (mode_hdisplay % slices_per_line)
 			continue;
 
-		if (min_slice_count <= slices_per_line)
-			return slices_per_line;
+		if (min_slice_count <= slices_per_line) {
+			*config_ret = config;
+
+			return true;
+		}
 	}
 
 	/* Print slice count 1,2,4,..24 if bit#0,1,3,..23 is set in the mask. */
@@ -1070,7 +1075,21 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		    min_slice_count,
 		    (int)BITS_PER_TYPE(sink_slice_count_mask), &sink_slice_count_mask);
 
-	return 0;
+	return false;
+}
+
+u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
+				int mode_clock, int mode_hdisplay,
+				int num_joined_pipes)
+{
+	struct intel_dsc_slice_config config;
+
+	if (!intel_dp_dsc_get_slice_config(connector,
+					   mode_clock, mode_hdisplay,
+					   num_joined_pipes, &config))
+		return 0;
+
+	return intel_dsc_line_slice_count(&config);
 }
 
 static bool source_can_output(struct intel_dp *intel_dp,
-- 
2.49.1

