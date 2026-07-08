Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0W8tKbqoTmpoRgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:44:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A22729F33
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 21:44:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=S6OFGrGy;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765EF10F281;
	Wed,  8 Jul 2026 19:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3BC610F271;
 Wed,  8 Jul 2026 19:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783539895; x=1815075895;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=H0QHx8xuxrPKqG65VzkOFDEv2dxKsqFkM+yvKDbeR50=;
 b=S6OFGrGyC+DrFHqN2/jZrwEhsr7mSR8viLXN8Fg4jTnvQE5yzNL9e9/g
 mtSUrsUnaPfhFhU2KYW3A7c56yvCll+AQ6V5wNQw1byV8KfImTg88S28L
 J7pGNuYp0qMmrEykQrhxm7bPWfjRvoDIJqNQop6vo1hxd0JqrI3WnJ2ah
 wgVcuq23lZIaqM5Dl43KkXP5IzZEro4dHWq4cAdEkoqCiIGdyBC7qqtsj
 VVsOIiAiBXt58CVxapVCuAOXvM8aCkktCJzC0ruI7LlCkkLT9+FFaFxlx
 FDzImwHXX79mQyU4SA4Q6m+A10Q4YOF/aRlpZChGV0wpSO0TNYRahpk// A==;
X-CSE-ConnectionGUID: QBgk455mS4Gn/kpN+Mfpsg==
X-CSE-MsgGUID: NjAXj4Y+T4qgpASXB1oUZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="101759391"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="101759391"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:44:55 -0700
X-CSE-ConnectionGUID: L3qS6i90SAeeRw1uXMXehg==
X-CSE-MsgGUID: JniYvpeATGSzQe9Gz/QgVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="258250011"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 12:44:55 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:44:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 12:44:54 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 12:44:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jk5PhC4+dTIxSywp2g8VbS3B+AOohevb0soQm/VGp2R1ZCgNyH2xI7QgM79R3U0ZYnB5P+T6NCaiKZYNEY0DNLT4LI3+lPG0WVY5bNttnV047b4Nk7KJ5kiIHEIcH2bpcuXPM/k2Oxyj0gaJPMUFZgPEPIto2AqMMbDdMdiux1YZyO7F26pkrXCEvZNjANTi3Bd81OnBpUFucrCXkWjQ2V69L29Z5JoffGDjxBuVvArWfgCUi8yRux0dPqzUeOaOPiDJ55HR+HyUeLxiVAdtVehPY4eRSsVzfJdcSsxNOiF1Zl7kzPtTnFVo9ARa+gEyK+zIAhzMRCLbL/TdOYOThg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=enw5/UEpiFMvRPKOm4lb4cRkTTR427VzRBFHFuq7+Gg=;
 b=es/YDKLuePkXe1NyNpmLHol6H2HcyyYtg2kgRCgbnA7kiT+xp4QF7G9PFvZK34xyLFiFH33I2Q6uD0FbxEKfgxM1h36kjhjDsFoJJQmswlb+yXuEMG5kJ2bEmQHE5PkdJyfHubNxQ5B+qu2Sj+ZfEj47xW4uIb8ZlDLuYpXrygtIbEe0zmcwEydQh1zrfG6ApIPPeuRi9nBciVMd9I1OBJ7XmluDO8OoJe1t8PEvXqotw6fmC1ltnWgjNSF8OhlB/MsnljKiPKkdMDbNCVeI0FYiTg8A+mLlpU/BD3rTsQqARWyyCzvyT6yJtnsmDtQA0bZmQ5DDDjvAte76lK9M1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by SN7PR11MB6702.namprd11.prod.outlook.com (2603:10b6:806:269::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 8 Jul 2026
 19:44:51 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.014; Wed, 8 Jul 2026
 19:44:51 +0000
Date: Wed, 8 Jul 2026 15:44:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
Subject: Re: [PATCH v3 29/34] drm/xe/kunit: Build DP link display tests
Message-ID: <ak6osNPPvgQ4FuUu@intel.com>
References: <20260701153204.4124150-30-imre.deak@intel.com>
 <20260707124849.135319-2-imre.deak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260707124849.135319-2-imre.deak@intel.com>
X-ClientProxiedBy: BY1P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59d::17) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|SN7PR11MB6702:EE_
X-MS-Office365-Filtering-Correlation-Id: 88db1643-c603-49e4-8072-08dedd296047
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|4143699003|22082099003|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: 0aSF016QnTKgAa128pPDCeVJpBHcY1PiDs1G7O8/8XFsrjS/I/PEpmxRJruMOt3ZTU/6Om0i6hYNQpKont8hxlcfxGZm0HNDkAzEbN1ZW+9+inviveO0q76POgDOB/e3P4FPsQDjJaAiqzM+GbetyC9MNsoCA7Xl/EAnJPJuxs/tOgdQCKA4n2winj6MbKJ0KTE0NFNDwPUW9HT0xyTM6eJcU49S813BmtJbWeKp45unFKGrabxNbuxhueQbVIMDqiugzGLLPHERPNYA8kf41nmpDFcwKbt0ybhvejVd8ilieexIemb6HY6bO0HkDzullg8UbGspqwpqPnIS7mOLVnkXKjxOHTeMw+ixBCI/hmHsrgdA5g+jin6qQN+2go3g/fDlUrKpSp2tTJhhW1r+BFKHtOgS8gQeumZFh7+nfB8csEUgPKXLT4f0ykCsHm/+l+mQhV/0fNVxj86J1RiCd8sHvJuy1uGY6FTLzJftM53ljjI8eDUEqeJZyczPLR5he0BC2Cc5D9rGVoa2OPdTbd30Dui840B/jOkC0KTFvDIFr381p2VqobXTP/Ul7Kpb8rJsZ5ckyWlcuVlA0fSn+aGgbHUXqGWYGyKyy69dRn2tEzJvCp4MfJxhUWuGUAKZBCoRslUPwcSY5Hlt6Ac35X9R4UOWt08cr/u/FsKeTHk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(4143699003)(22082099003)(56012099006)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVp0NDk1eE1zYUpGK3lLaDhLMG4vOW5xUDBJVytiZ2lsZ2R0cDhnWEVNamVp?=
 =?utf-8?B?dXJVWnBIdDRPa29ZNWF5cXhXS3lOckhXRHE5ZCtIRzJXV1Y4eU1ybUhma2RL?=
 =?utf-8?B?NTVPYVZkSVlQVFNZQ1pLcEFIbmZRYnBVS3VjekRqQTlVRzdXaXlSU1RBNEJB?=
 =?utf-8?B?OEVHaE9qc0FTd2YyVUJCUkZiZSsxTFR2NVdyUDA0NDdiVkdCUUNVdmVnaHMy?=
 =?utf-8?B?TzlYTUJXQjFZMUVSbnVIMzZrdnJKS2theXhyU2FnaTdENzh4YlF3SlgzZktz?=
 =?utf-8?B?NDdpV2UwN3pQeXFUN1lNQmcvL05MSklGbUlJUTBNejN1aHBLcGdhVzcwcTJz?=
 =?utf-8?B?VTJtOEN6cGVLRVVXdzA0aGFxTWpmQ3lVU0M0R0FmeVM5UW1WbG1iZC9uZ3Ni?=
 =?utf-8?B?L1JaOHUvcDVKeXlEK090RjFXVXp1dzhjYWhveUZOTVRHQ1hOVDRNcTlJWFYv?=
 =?utf-8?B?VVVUbDRaMzJxRXJGaU1VM25wWjRscnhUWWxFNG9wZ1BLTmFuVGhZaDNralFy?=
 =?utf-8?B?dkFIWUU1NVZiSTFOcmx1NmJONWZWRmx3azd0QXRpTi9qMnEzMmtWYkxlTzdF?=
 =?utf-8?B?SlFSTjZQY3VmTGl4Y21RQW13MnRpQXZNa1dhQmtWZUR4eUJEK04ydGhtT3Bk?=
 =?utf-8?B?YTM0Qk5HMU9ONEJ5SkxuWG40MXg1YzBCNHlDMHdtRVozUG9acHNHaHlhdFZz?=
 =?utf-8?B?RjdsSlAxRVpBaEJwS2ZCOVprNUlmOGpBKzRSWjY1M1VSNG5UdytyRlpucDNQ?=
 =?utf-8?B?N1hXNjh1eU9FdUpBejJlT0pDa2FWMjRueWZybXdaYkQwNk41OVhQVU40SUlQ?=
 =?utf-8?B?WkN5MVNGQzRjZjBUV05Bek5Qay82Z21XNlZXTmpMVUJHNHppTEJNZFBaSDF3?=
 =?utf-8?B?U1dCcXVsbzNkUFVRQUFEdGljQllyM0RTTVJ6RytmU3RxcE11Zmg0MHpVN01j?=
 =?utf-8?B?QlA4Y3l1Q3BnNmkwTXNzd0FuNEVta0ptb1dJU2E5aGRtRldSTWl2UEVWUURs?=
 =?utf-8?B?OXRLSmszODNGRUhXTXZFU3FNaHlYc3BKbkVtM3NNYzFFZktwSi9FVERrbXVG?=
 =?utf-8?B?QitsTUw2UTAyMmVVQTVyMmU4QzhnNWpDMEpEK0xnUFVMcnp0QTl2TWxuRGJH?=
 =?utf-8?B?QlFrWWIyTWNlRVFWdEpHVkl4YjJWWVRNODVLY3J3NVFVWWZGbXArekdFVzZx?=
 =?utf-8?B?Rnc5eVdzTFludVM5OXNMWGREOTFQMlNmTkNOUDVrdmlIT3IzVm5vSjNKWVNL?=
 =?utf-8?B?RU5QbFloMnk0MHJQQmY5NjFPcUdKV3ZxQ1BQUENNRURkZ25aQ2EvUWhCd1lt?=
 =?utf-8?B?Q01kbGV2MGY1VXdFU3REa2pieG5UclFIRmRPMkIzaWdLV1gzaHhKc2JSa3N3?=
 =?utf-8?B?VFVRN1Mxa3dJQ05TY3JPdmFIK2FxaXQ0T1N5ZWxMc1VlL3AvME9rQXNSZ2NM?=
 =?utf-8?B?alQ1NERYOFAvUzlOU3ZsRHhUZmxKRTFlYzBGZ3Jna2NvV0ZLdkhMdFVybHV0?=
 =?utf-8?B?L0F4WFhaVlFvVUc2SytKUVNoaTFZcFFqQngwdTY2Mzg5eDFaOEI0QUZXR0pk?=
 =?utf-8?B?MHg1NllGaVB4T3drRFZvZFByVHhCUkdya3dLU1hxaHNuM3ZVMDNQN2dCQWd5?=
 =?utf-8?B?anU5UHdGLzJYdXJ3WElRTUZScXYzeWlaVTlGMHMzc0VhMFgyK3c4RFVpeStx?=
 =?utf-8?B?dWhINHd0S3RCY0cxUlQ1dFJhQUlaQ2kyTmNjUzhFTjJvZy9IYWZxZURQMXJ6?=
 =?utf-8?B?Z2lHeDZnWkRZRGhKOUVNQ1RBWDhuQldjcEpnRzVPTm85WUJNT29PWWxleFpn?=
 =?utf-8?B?d3hYUW93Y05GWU5LNHM5WjRFczlaOFAyRnVBMFNwQ1BGSmNmUGxZLzE5VXVP?=
 =?utf-8?B?ZU00eEYwN2xHY2dJZHpRaDBwOVJiRkJBV0w5TTNnakYvMnptcXA5aWxZbnZk?=
 =?utf-8?B?L1hwQnV4dVVLTnZVcGg2Y01Eb3diZmd6UDQwcTZUUkEyY0hmdmtDMjZIZ3Fu?=
 =?utf-8?B?Q00yQzI4TG15NXh6ekFqREQvbG5ENDZGaEt2ZGQvcEk5VXdQU2VlVEJyMTlj?=
 =?utf-8?B?dXVaZHJSK2RKR2F5dFNtYmtYa3UxUUo2SVBNYm1VSjVmWUZwOGRVdmc0Qk93?=
 =?utf-8?B?Zlh3RmNDWkgzaU5lcDUzY0pIMUdvM2taRDFhWGRaK0txWndHSDRJQ2U2UlF5?=
 =?utf-8?B?TlRDUzBSemcra2s3eTk0akd5S1NNSmtCVUdncWk2cWYxdUcrdkNueUl6eDlC?=
 =?utf-8?B?dzZxd2FiQmVrOTRGT2ZLYks2dXhTOW9nOVIzVmgvWXNqSGlCSzF5WUdLMUhO?=
 =?utf-8?B?dC9lVGxhYWh3NnhYUzMwam4rMGlKejdaMEExT1dVV0VYdXFYUWJ4dz09?=
X-Exchange-RoutingPolicyChecked: XGp5bAFU3nu4pXnAx1fz84kSoHcONSm1GU+5+1z0FsI4VC91g2WLZFHUJ3ljlts8O7RGQ4wGvKPAyokJMf7FUvRuweDlNdyDzq2aUDl0oddC1L3UzXVX/14uAfPc1LOyDml3lyRNIg8i4tgWtKjVqFvz2pNsBIK1qrKvsGRYzGYiapP9j01bfuIXkWiT04IOLwU9g+hi1Wash5DnCHSENy0cfkoQtRtwCXjrbfcHCHswpnZfOZI5GOInSHi0d3RZiWQr7m7OIsiR6kl31Fj6/+xycR7l1vDFug+fFWE7n58Jr6mVaL4VFieabiUc/GOsQqXUZZPcSVyUrNUrvMCOeg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 88db1643-c603-49e4-8072-08dedd296047
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 19:44:51.5150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4OlmYEuoGm6M/bfdtrGkCd6j/vAK9aP+DUilZjCndSYhdwHNDFube70+Pk5e2q2xRel/L6fGyMMrudGIedrMng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6702
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50A22729F33

On Tue, Jul 07, 2026 at 03:48:47PM +0300, Imre Deak wrote:
> Hook the shared i915 display DP link KUnit tests into the xe display
> test build.
> 
> Build the shared display test source from the i915 display test directory
> when xe display support is enabled.
> 
> v2: Unchanged.
> v3: Add SPDX license header. (Michał)
> 
> Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/xe/Makefile               |  3 +++
>  drivers/gpu/drm/xe/display/tests/Makefile | 13 +++++++++++++


Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  2 files changed, 16 insertions(+)
>  create mode 100644 drivers/gpu/drm/xe/display/tests/Makefile
> 
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 6d728f8c4c392..67ada1d6c2fb9 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -374,6 +374,9 @@ xe-$(CONFIG_DRM_XE_DP_TUNNEL) += \
>  
>  obj-$(CONFIG_DRM_XE) += xe.o
>  obj-$(CONFIG_DRM_XE_KUNIT_TEST) += tests/
> +ifeq ($(CONFIG_DRM_XE_DISPLAY),y)
> +	obj-$(CONFIG_DRM_XE_KUNIT_TEST) += display/tests/
> +endif
>  
>  # header test
>  hdrtest_find_args := -not -path xe_rtp_helpers.h
> diff --git a/drivers/gpu/drm/xe/display/tests/Makefile b/drivers/gpu/drm/xe/display/tests/Makefile
> new file mode 100644
> index 0000000000000..c716864580721
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/tests/Makefile
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
> +	-I$(srctree)/drivers/gpu/drm/i915/display/
> +
> +# Rule to build display code shared with i915
> +$(obj)/i915-display/tests/%.o: $(srctree)/drivers/gpu/drm/i915/display/tests/%.c FORCE
> +	$(call cmd,force_checksrc)
> +	$(call if_changed_rule,cc_o_c)
> +
> +obj-$(CONFIG_DRM_XE_KUNIT_TEST) += xe_display_test.o
> +xe_display_test-y = \
> +		i915-display/tests/intel_dp_link_test.o
> -- 
> 2.49.1
> 
