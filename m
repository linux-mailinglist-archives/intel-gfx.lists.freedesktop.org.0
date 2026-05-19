Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLh/CFenDGrskQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 20:09:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F213058372E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 20:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE6610E4E6;
	Tue, 19 May 2026 18:09:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZJloNACI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98AF10E1BE;
 Tue, 19 May 2026 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779214162; x=1810750162;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wMtmOsvQ9CAesw8p2wZEwUybLEca5PwHfQ0w9Z9tk0I=;
 b=ZJloNACIQZ10a7UdUBoWfIjeUxwG+FJ8wFdD8zXvrYeplchMreCetroR
 cKktonAQ2YIpmioQhlLDbl6VPn9LDjZS6TRD6la0ZQABsE9R88TTn8Kgt
 7E7QceXrjrFo/KnV0xvkD2GyVi3C/xWKrd+zT4U2MYQK+JiXSeeNV5Dhk
 yTWlX5mfUWXb8VGBnAwiYIeEdEyxZf1X3UjaIsJvLh2t90Ye9Oaigyvxi
 ZUAnYZ0+QxW3fvdy9aQi59foyD4zFJzK+AaBV5H5S3DnRqLVKbSCySsy2
 MGq2lMmm4phAxsVbqXOauU7T0yhZDMD87rg/BZBO9Qw4Fbtb2FnavHlog g==;
X-CSE-ConnectionGUID: avu/PKdER0qisTC89vxNRg==
X-CSE-MsgGUID: dWWxdsllT8O3nrd/xANQZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="97533586"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97533586"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 11:09:22 -0700
X-CSE-ConnectionGUID: HOdNOLAeT8CBlqop1ylPlQ==
X-CSE-MsgGUID: +0UATGjOQ8+BccyQ82+jmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="237238202"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 11:09:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 11:09:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 11:09:21 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 11:09:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nbR+uTs4Qx+IyUGTMPa5qHwCeX7aw8l1AGu6bnlB0s92n+wMYyyroB7B72wXcW8qPRef/pR9EPApQZnTwIQ7z/xW6B4kJjduZGpayr5+uKrGrtHDTP3GD8TXyiv4MnLzfqTWoAMF7C08DpezU7Tz9Ndqduqxnm0IMlYeeoALNb1WM0Cyxw3GCrhgYQ/G0BWhb3DnebA2hlKI7S0agcQhy0AKlu9EBmVc+bmQ1sbG6iv2SYmPFX112BcxnPz4bnSVQBWh7E9aiOBbQxbnB8XP89NTXPJb/do2AkfxT0+EECtn61blcSLrnk4tD9x95jErzKjE+TGMJFL3XVIG+N2L9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J9jAiZK2MtJ32BpZwHke8ZOnZB/z0xVMI8Cbo9HRT3Q=;
 b=PzLm1VcZSG3e4RKrinPSWcDpEc67o93kEebMB9xvQxEEq8A6gaTnNeOQwOPMgmTLyBeddx3j8XYJyPsvJgfXJeLeOjNThsDH9Sv4uHN9V7sj7h/d0k7hQn6alwI8OL8h44DM55L99c5A9ig4jLqzFzyKGaCipAMhiUdRe5gzNh7KGey1nhPFbJEX09009U7um51nKojPfWwspPKGuTcGCu4Jj1HMYcLcPlyF8242WqBvICpe0ylVlR/W9t4PLl86aWnAiBafdUOuuwlDVIlhoGRKnoz5sLA9CAJgl9YP7JsxWbyoXeg62v9IBWfgKJvulNoPUxOKBYHvcdSvHMNQcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB4773.namprd11.prod.outlook.com (2603:10b6:510:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Tue, 19 May
 2026 18:09:18 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 18:09:18 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.Full: failure for
 drm/i915/dmc_wl: Remove macro HAS_DMC_WAKELOCK()
In-Reply-To: <177751121924.26993.13483017234016089673@5ab824fced77>
References: <20260429-drop-has_dmc_wakelock-v1-1-62cb6fab1da0@intel.com>
 <177751121924.26993.13483017234016089673@5ab824fced77>
Date: Tue, 19 May 2026 15:09:13 -0300
Message-ID: <87se7np8za.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR21CA0014.namprd21.prod.outlook.com
 (2603:10b6:a03:114::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB4773:EE_
X-MS-Office365-Filtering-Correlation-Id: 83374a98-0168-4ca3-cc7d-08deb5d1beb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003|11063799006|4143699003|5023799004;
X-Microsoft-Antispam-Message-Info: ZNrzLadSdCcW6ASqbeozgmk+0m/v2p/F2m8jwc6jWlAABuREk5AORIgUERTLeUeUxoSWl1L6zzyKfLa/OZ7ucnb7JJbZh51Lw+HM8N84YZhKaGNLM6GynOrzQz8BhP1mZM69sieVn364Akh2f8v3I4KoiRjzUuSlYtB4fqmp35xCOiNrS98qiSeXrOyZaWZEbVppahFhICyUbVlFqWpU7Xp5m7muBEhzb91ahhNFVO5phGnsHJY7xHBNuLngQ0YoGIfy3bUNgEsVGw5tv57g5xSLoRhqL2maTtVVleo1h30caaxwiq1ONL9lGRxST1wE8H4xKGUHtuHT2T4CKOSTRsmI/JINkCLHZDD1DamLVwiRg+bUjqiSEJ8RvwXTWyD6UDv4IV6pATWHizD0OCCdtoLigVkTGcBg/ff9L57G6jKRFYpqfrlacvMPirNAmX4enfGysaHQKgCYV34wHCsCjP3qr30OaIPYMmlFxfXa80dcP1xCjlDhpXbQcsZ7BhX+VXulgJsUQ/786Q68ZkwbD5oJjc5kU1txWrLv6m3wUoX+QrFWa4YwRO4CW0hEezUnQsEfAa3HWDJe7hmnHj6FJQyO6yiiEom6oipzIgPQAoTdDHIIY0ut4HmsPkTdbyGpSSHUmJkkYthU6Ltmezjx6A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003)(11063799006)(4143699003)(5023799004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ni1pSKu8n7AM2havmQzlYV+0JeYYHYUH9ib+JDzU94r7bLHPDWCBMd+DWxiO?=
 =?us-ascii?Q?YByProGQXpbbDuDiz7pQwzEMjM44ureT9pBuHPOZL7qdujEN+Y2Y/iRY9krp?=
 =?us-ascii?Q?EpUz8JEs8mP9PfRmn97Gh6QDnq451i2vRLTG5YOGzyZK8+9oyJx0zOZJrTHJ?=
 =?us-ascii?Q?OFeXw01MfFLlvqekCEOO0BR3LSBFF/Bjd/+iceI38Y7s7uJT1WC7m8R+nCLH?=
 =?us-ascii?Q?mPFGdmNI3aO0Ge222sQgt3I3LcFmB071dj5WrOQS1TeE6fR9YFamncUEZuWt?=
 =?us-ascii?Q?JVYL0GqJeS2Kg/wsCsGBDb1cRQUSlpIEYibSY/SgCouSnuE57TLVne5cf0Fi?=
 =?us-ascii?Q?/+yoIOpdluZPpggSi/G4kb48cxu3/LLdCJRlAhUHBmliVK/U41Wd6ggSYkEU?=
 =?us-ascii?Q?3z/b2xBkQ/lWzgDtZMzbS3FUhMEIscvIu5OARq4GKvDCOJrNyatMxsfW3TVY?=
 =?us-ascii?Q?rUlS/IuMZG3wBQhmqr5ZOs9YKdLiLgVw4lNUB86YOFmfkXXHztB7tzFwvIfK?=
 =?us-ascii?Q?a4TPksMbXco5oSd8cwCUj0BYxp4SRpQGBrFbvp30zj6k9fknOz0bfTX7OkdC?=
 =?us-ascii?Q?qB4m6exD99EBHV8iG0++7aGTV5r6MZ4OVQYGDWOX5zWjYMHbgdVgJGjBd41b?=
 =?us-ascii?Q?uDpSRw3145ot+9XEgyJecvWb1ey/yXo/cJ6MK3W8/68v8pl7B8IkvbgalTSB?=
 =?us-ascii?Q?VKpyNO/E4NSyDEZUWdNkU2C4cBUyFIQ7zPEHRF8kG8ZDC6WkS1DoxPxcEZi2?=
 =?us-ascii?Q?CEINtj8bH+bGkx5/PlcvNy/LLVr9FbcvR2d1XzxLX4DVbqppjMT99V6nELVE?=
 =?us-ascii?Q?Oe5giGGPAC02MWy2ETiVktOoUNPoXmh65GUHwy0KX3FlM7/UrLsBo1oswVjb?=
 =?us-ascii?Q?S+v31X2TuB+DdHWzT6xJLIBW7560RxLR0xco6OechHjDZRNFL0w04szUpegF?=
 =?us-ascii?Q?0OWDJgBIMcGJVEDQkf5RGjOca+ZZ+Nf6TC3W5pDK21cETGsGkyH0xd876huq?=
 =?us-ascii?Q?5f0DhveCo3MsGj6Jhg0FarHjEhWgHnu1j3NCiGqzhljstuVCTIhj0+nfEnRw?=
 =?us-ascii?Q?tv42+PiCi2vl5/OwBdBJJ/shHX92wSQcEp1GZZgvihKDmWPVOYuq1goSjeHg?=
 =?us-ascii?Q?nUVhV7YeutSw5VeJ2p9ah6NRFXLlzOiJuiQ3QIv3hgCuDV7Et52tbgwa/3Ne?=
 =?us-ascii?Q?dzZsbQO3IcMvG6sX5PugeeV0qQwrbT8I8QxKX3DESx/NvXH+0342WpXbi49q?=
 =?us-ascii?Q?FTiFb1xHwigxTgLbJA8505rpTA4lol2EYBigt3Iogf/SN/oJbOD/rBmmFpvu?=
 =?us-ascii?Q?wGETm56XiPLlP+en1Q9CHc1vLKiIHW1yA+b287mIXXFs59O0aXiN94ig3s3B?=
 =?us-ascii?Q?KuKdJ49rKe8U9XLg6lIgvns4gd0GLwC3S0gxnh0h2xY61XI5qzDFHjFDYPsA?=
 =?us-ascii?Q?7EFB5PtpRxincf6weMOPMrpjgO/dkDAIsbfpANnKOTOwtKQB3/sU+KDxuCNe?=
 =?us-ascii?Q?zY1TakNGwjNblYSZuUTe5zrsU0AXyLA8NC7CKO7xx4B16hXQrxA9MzutP51c?=
 =?us-ascii?Q?6yZ/nRD0xP0Kv3wL1RXWcbUO5S51/EB5vsNN8QmOzoZOG2zEiLt1XWd44Qpr?=
 =?us-ascii?Q?mztRB16R2J2c5r7SHmnqke4/VX/0B7bDBsrsAShZHQm8w+hhdrVn9YX0P80h?=
 =?us-ascii?Q?RlyDNc3+hQgsqXQi1czlpORVoI5+PGQiR6vwCJPcRReJX6vftZHOw+lchy+R?=
 =?us-ascii?Q?Zc+wzy0lQQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: txBSp/Gmt4zofwsBMMd0vNJHhpL4TQen3h2+e4h0yeAs0vaNKNrvQgh//jeby7EBSOlHwFSQso9xHGk33cqmT/4OJa2igCQT3CaHWAnlpq40q5EVzxDxOred1CuBR6d9MBTNdMFxfYhn9e5EGuPqKrAcNkzFlkNpyWryU2S9Nc5AXo2JXarGnz7NfWrNwfzIrMF+GUKoU/F3kSQ6JPnDpxk5moYz1pI8PX8Xo9ONharl5upsxFIMaH5BmUjdYYGSnFA792rdctob/AH3X0CCiGcVCMtDfFLqu+cFBnLA0DuZVxJDcIBlp3r00xq1rM10Hq+8Am/dnnZr8myxNZw8HQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 83374a98-0168-4ca3-cc7d-08deb5d1beb0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 18:09:18.7599 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iH8jpw+n+95sBBc1J7eKrTB3qJZpfEBAoVnQHCTnJRzRxA2LKD4cVXT1v5UezX/z7c1KgU5yaGgkl7bj6aSU5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4773
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url,01.org:url,emeril.freedesktop.org:email,lists.freedesktop.org:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F213058372E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Patchwork <patchwork@emeril.freedesktop.org> writes:

> == Series Details ==
>
> Series: drm/i915/dmc_wl: Remove macro HAS_DMC_WAKELOCK()
> URL   : https://patchwork.freedesktop.org/series/165729/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_18379_full -> Patchwork_165729v1_full
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_165729v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_165729v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   
>
> Participating hosts (10 -> 10)
> ------------------------------
>
>   No changes in participating hosts
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_165729v1_full:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@gem_exec_big@single:
>     - shard-rkl:          NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_165729v1/shard-rkl-5/igt@gem_exec_big@single.html
>
>   

This patch has no functional changes, since it is replacing the macro
invocation with an "expanded" version of the same check.  So, CI
failures here are unrelated.

--
Gustavo Sousa
