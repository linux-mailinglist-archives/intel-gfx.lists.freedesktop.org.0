Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJvkBX8nzWnTaQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 16:11:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCB837BE56
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 16:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C247710ED25;
	Wed,  1 Apr 2026 14:11:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZVjVAKzJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A7E810ECBB;
 Wed,  1 Apr 2026 14:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775052668; x=1806588668;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/MSjudfKkY0MMxHvsWPx+6G7fz43/CfjpcNDLN+gZvE=;
 b=ZVjVAKzJNWy9ba0IwU6BJ0IwLP+ySdYVMAjgykQjVCGehx5K2RA4IdQU
 8hlFpFyk0yH6lJ/q3QvIHOd+PCdtnUyN8k2+tcq4Nf+rtSazgCqOaJS+0
 0mfAgN8Msh+CUQX7wX6UENuZGns77LKsmM31F7omGN29EC9jaEhemvMbN
 eFZRph7c/IcNxgXwC/GMIetSafl3GoYJy8Ff6cxggt8x5hnWgYy3+Y/oa
 dilLLHv6DFKiSe/eksX8sAKJ6z1B6vQ2FWp9zJYokz/RGWou7VhtnCHxG
 OucOS6hn8sbHxpH6/ahOuwcg0olxXzqwgdPvKgwyjYR0fTcIiZ84lq4K4 g==;
X-CSE-ConnectionGUID: RmnnnmPISdi3qv4kcegdVQ==
X-CSE-MsgGUID: c1x+tESzTSyy+YrJZ08jWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="76055753"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="76055753"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 07:11:06 -0700
X-CSE-ConnectionGUID: /g+BLZbTRQSQ21Io6XEF1Q==
X-CSE-MsgGUID: yLJHR/3fR96D8PdjlWhygw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="249905825"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 07:10:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 07:10:54 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 07:10:54 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.30) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 07:10:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lcMED9bfaBrxFWYx5A4QqV01bjB81Bxe5+wDmnX3iCvoCyb8SsS3QuuIXC9z3OC4cpZd1j38hr/cX5V3MwWCZPFuTJtisyWLicoT17CjR4/AbrmZuHwkTvUlFNonJrcvVaID4rpBqiCVT7e5WbLHaZSVo5jvCeKE8qRryplYYdiqHXyS90tRZX5uAiKqJa+hCCvw5Ug4vAtoKV9MrqQ/QVEVQS+Q/zn5qhB9ChjWuuNQ0LKNhYeAeGBB9pMZA5FaLwiWB2lfYWoa/2Kf+BwvSoKHZf5u1t/FEB0YcM4HI71W62BXM8tHyEl59lSdT7IeED72uaaeD4EqGvRXrpfCAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJumo70VgJd+WIqTQ00vVWNxa2h0Kmp0rcFIF4BvZQk=;
 b=EVpfss6SnaNbjUU5McvDpnDu0D44VVlVNpyM+7n1ZH4XYpamO0m/zex5CECbEr8+qa/H0T94tE90qlzhYAQsqAuzp8jl9oWzsBY2luyWqWbClqGHfH8zpKOtS2NoRJMCzK2X0FUWHMl0reBGpjOF9LkDcMWmCcfta6XWJiO9AKt1uM0WRr/XlDvRH0Uf8z1nBrOfwe2q94oS339R71GpWN/8gbXSYrxLrtsu7RwjKcj4cftsV8KyPa9UxgSEs3FyFeFCQx3g7etXlfbOCYepUJf7TrO134XmEKvOBae2YvhwD1VI8QXTnVrUjyDfxM8jliueWHU3qo4KemzHLKZ66w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ5PPF867D7FF5E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83d) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.10; Wed, 1 Apr
 2026 14:10:51 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.016; Wed, 1 Apr 2026
 14:10:50 +0000
Message-ID: <33f81157-5a18-4faf-8457-edae0275d86a@intel.com>
Date: Wed, 1 Apr 2026 19:40:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915/display: Copy color pipeline from plane in
 the primary joiner pipe
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <uma.shankar@intel.com>, <pranay.samala@intel.com>
References: <20260401083841.4081587-1-chaitanya.kumar.borah@intel.com>
 <ac0EKTbNPeaiHIQA@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <ac0EKTbNPeaiHIQA@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::12) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SJ5PPF867D7FF5E:EE_
X-MS-Office365-Filtering-Correlation-Id: 39699a61-76b7-4470-9115-08de8ff87a88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 9Q/OmaUJpKWHEIQDm4KcsxQQmyUm4xWbgcLC1pGVLulMpNI3qykZCECa5s40gtgC1NfZBzRFuADTQsYcrSSBdGtOM5LT35HB9ymNlk46UWmwmbtxVsqBcmOEvMqkw2rU4rmhrGakjxNCK1k6k/njMOOZpNQBqJHOT/DjTxkCD5O/MLZzT7ToLRTp9QfzfCKFcycpnW+YhjIO7e/5cCRmKpcxxV0iiHCplXLTa7BNzf1oMlKkbffHNaAxNkuMeVntnP68XDgmEzJepH2Z9lBnqengvzbnzuu/UGoTVJx60T/tEKqaPmIw5Q8ngi3k0DeFO/Nc6hxqHA+2xMX1/iFx4s8FSzNeDqtVlJkrZBThE4LmUIf5bxkmWqkDGFeIqnjTTTVwLaY0KJjaTX6wDRXhP2xFBPMQvl+Y9iDoPIpPorMmzgoIaq0Zug9eQ/867g7M/daCMjlnhwzmLqo7bjkivOdbIA0iBXQLLuO8ZyOQa8D+eyh++geD6Mc0aQ8lAoSAbXKrGzn5i58xQO9m0FGYU3H4o3VRIt7DZTt2DRk61FALTw/aRrdlrg2S+NN1qBLXtfriGTMcm8m1s82spW7PYDtekauCMTiczSjGPNp7zBiWpVuEstUj9GLONuVKCu/INT/thV92y2Xgz/oXgMiGQ2xWhPRbdfNcfLnmOzBRKm4oQ9xxsZqBUPjQ7nsV3wFG3tj29t59BinW8HlXYrD0F0SGGxzR5Gkz7oGNgwCKNjk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0JzUzhIMGdkYmJ5cWpKdUFSOUI1Z1VWMWVYV0wwK2liekY1Q0FXUmRNeGRO?=
 =?utf-8?B?dEhGQms2NENqNmd5ZGpQNG41ZXk0Zk4rWXh4NTB6M1FTN3o0VTlGTTZncW1n?=
 =?utf-8?B?MHkxbU43SGNRa0J0ajNXNTZPZUJvYkpBU3BTK0UwMEZuNjRIZTI3L2NoU1FF?=
 =?utf-8?B?bE03WHJHenR0dE4wVjRLL0YrY3FnSlhzWDhYeDN4Y1pONG5iSkk0RUI1WnR1?=
 =?utf-8?B?WUp3cXkzNkZCb1Jua1JVWkFpb0IraExiZlM4QTB2aWZxQnFNVzFiUzZ3OVpk?=
 =?utf-8?B?dDJ3SW9xOUVWRXZoSVlPV0JPbFU1T203UmtRZmM5T1pJWjdvc3M1TnZkaHd5?=
 =?utf-8?B?WGMwU1ZzaWF0TUJUdDk3OXFvaVhuL2FUMjcvNDBtSE10OVNnbWVXb1lJNnNO?=
 =?utf-8?B?ZVlpNmNSZHN4dVM0Q1BuMEtMczFhdVNBd1Y5RHB2Uks1cUdYOVozNHNCV0dm?=
 =?utf-8?B?ZXV6YjMrbUpKeVRVdnJpNXhSakRoUk9SWmF5OTc0bkgyaWNIOHE0dm9pdlRT?=
 =?utf-8?B?cWZEMGoxK0E3SkxhdUI5QTVkdzZ0REtFYkRPN0tEVkRjMldkbmJIVFZoS3FH?=
 =?utf-8?B?TmNvV0M3dUYwQ29XaDFhcnUwNXJRK0R6bVJROGYxREJ1Tm94K2txY1ZoR1ox?=
 =?utf-8?B?aGlUZzVXYUZFR1NROFdyemcycWVmUTJmbkFEY1hQazZQbHgweHBEZU1XZEtx?=
 =?utf-8?B?aDFpNEgzUUZJNWtWRktoeXRObFh5V0JkQW5HZUdOajdHQkRIajd0a08vNnYr?=
 =?utf-8?B?cHg1QkROUUUzVEljb0ZIc2F4SFRCZW16VVl5UWE3OW1KTXZWTzYxcE9wTEU4?=
 =?utf-8?B?cStPZE5CN2JCeURCaDVObnF3RWpYMUlYeDZNa09TQnhtVTZPVEk2Z3VNeHdr?=
 =?utf-8?B?UHpBOFBFMnFkaGZlOFVTbE5RL2xkVFBXamRpYis3ZEFXeGFPUDJOSmY2YlQ3?=
 =?utf-8?B?aWxmbm10QkNzMFduVEVBQjJuVXdNNDZ5QS9GM2VrOWF1NVUzUFQ1WkRKZWw5?=
 =?utf-8?B?OHo5bFJlb1RjOURWOWVrK2hNbDBEd1pxR2JKNktXOHNxOXQ4c0FNQWdzb1Nj?=
 =?utf-8?B?clRQY2M5NENMSFhBVVF3dmwvdWoydTlEQkMyYnRoQTJjcVJWd1hyMmF1a0RE?=
 =?utf-8?B?SGZ4Vno0MGtBU3dmTHZjZGlGZ2RLQ3ZFUmYwVTJzVnBFNnVWU3IwbFpaQkxp?=
 =?utf-8?B?NmlIcE84Z2UrOVlaYWxBN0FHaDk3cDdMMG44ZVdvcVdnZThTUHh5aExBbVZ2?=
 =?utf-8?B?bE01aG1vKzIvZnU2VDRMa0RhSkt2U2V6MldKZGtCdzFMM0VmNElQWHNJWUk3?=
 =?utf-8?B?aDNLWWVvSUl6ZC9yRFoxb0xIRGFYVlI3TjZtMktkQ09UY01KczdsYnV2UXYv?=
 =?utf-8?B?TzlWcjI4NHlpZTI4b1Z2cmZ4Qk9RSjBMcmRwMHM4SHpqN3A4V3JWbUtJUWZh?=
 =?utf-8?B?MVJUZWhwalRjaWpWcENRSFhJU2F5VGY5U0Q0STZkWFkvaitLeXZZNHpjS245?=
 =?utf-8?B?eEx3dXhSMWVWUzVlc1RUN2lqSjk5aWFERTlwc3FmRGlmdWNpY0htMjErdUVW?=
 =?utf-8?B?S09xTmY2WlNSTTFWbXl1ZUtFaEtHaUpOS0J3aHNBRUp1cmlZRzkvSGxuNlFu?=
 =?utf-8?B?TC8ySXUwRmpGNHowWEpkd3IyUFZQVUJ3clVCTmkvZ0k4TzQ5RTg2NVJyVEQ2?=
 =?utf-8?B?NXlGUTRuSE5TNnU2QWJOb29EZ1RsdDMrVXhTT3d3V3pLSDFVbnczY2UvMkxR?=
 =?utf-8?B?dWRMZ1NxekxmRkFLRVBDMDA3NUFEdXFBeWVxYzRlM0JGY2RkK1ZPMm1iU3Mx?=
 =?utf-8?B?c2FSRUorK2FSUVhoNVgxMXdLbjJlckh5UUdIQjlhU0hGL3ZPWVBaWFJOSUdE?=
 =?utf-8?B?ckVxbFRtVGZzUEYxY2ZzL0paRm1uRWZ2T0dQYmVPdEFvTytzRTJlS3ZYZjFw?=
 =?utf-8?B?SG1VZGR4a0tBQVNnamJzTnpTZzFLdUdtZFZhNk03UXQ3eG5DTk1scWtRMzVm?=
 =?utf-8?B?NnFibWdEUVFOdmFMM04rQmluL3FuSGR3K1IyTzlObzZQeWdvWnJ5cU5mTXRz?=
 =?utf-8?B?czY3MGFuVUNaZDhEU0pBUVN2TlF4RllyQlIvTzVIUU5oZlNCMU1rOHpkT0pX?=
 =?utf-8?B?ZXFUVnlFdlh6VDZZdFVheHVLdys2cXk4KzlFU093ZjBVd3VFLzRZR2Zhc09l?=
 =?utf-8?B?VjV5OWIvd0pVbzFDcmhWMnlva3N2ZlR6K09zZ0tpSEVzU3d0VmN5VDJWZk9v?=
 =?utf-8?B?MWFhOUJuRkJsU096dkpTcnpsNmhmRlVDT2ZZNlhGYnk0YlI2UW40WXlkdkJY?=
 =?utf-8?B?U21lT3VjcDhxL3RKVWtBM1dWdGZzUXhwcnJ4Z0lYSjRPNTR3WHA5RFNFRVda?=
 =?utf-8?Q?yIwUE9fAdAkxkhmTz3H2+yRaN/M+4zwugJi3T?=
X-Exchange-RoutingPolicyChecked: ETaoe14bcft+F/pU+UCfPtoOkR/fD5ysPtUJPv8ayycTTD+cwBMZegsngXugsWHo5/E603yUMFT3PSCyJS5cAnyqs9KOJ6Fx52FeSifG0D5NTznE4iRzSDLErsRM8jOsonrC1KUdHkBneaw8zAdEzXM2LXzkUgvlQSlFE5En4sv2rqgPO7ihdRf9mLOkP15A3lWMZFp23dh1nfmGClWyiF8GZVh6b4n1sK18/JRO1NZ6Ad3zLfLY8THUXcb4BVLfHoD4sXsNI35IVkFGUZU6ZOQhez0mT6jLitEcPCOsH7plbulVNKJh3l7timsXIKXIpOJvAl7a/xN1XcgE0ukSYA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 39699a61-76b7-4470-9115-08de8ff87a88
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 14:10:50.7931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZPi5wM7RLLr1/oVoMScf6gyclXGyjNt+ftbrri9hSgd54D91C3P3DMs/vNzH63yRrEhMhEHlKAtFtcwEOyMhiKpM+UVxO9HBBxbucXrdzk8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF867D7FF5E
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5DCB837BE56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 4/1/2026 5:10 PM, Ville Syrjälä wrote:
> On Wed, Apr 01, 2026 at 02:08:39PM +0530, Chaitanya Kumar Borah wrote:
>> When copying plane color state in a joiner configuration, use the plane in
>> the primary joiner pipe since it carries the pipeline number selected by
>> the user-space.
>>
>> This assumes that all pipes in the joiner are symmetric in their plane
>> color capabilities.
>>
>> Cc: stable@vger.kernel.org # v6.19+
>> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_plane.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
>> index 5390ceb21ca4..82f445c83158 100644
>> --- a/drivers/gpu/drm/i915/display/intel_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
>> @@ -373,7 +373,7 @@ intel_plane_color_copy_uapi_to_hw_state(struct intel_plane_state *plane_state,
>>   	bool changed = false;
>>   	int i = 0;
>>   
>> -	iter_colorop = plane_state->uapi.color_pipeline;
>> +	iter_colorop = from_plane_state->uapi.color_pipeline;
>>   
>>   	while (iter_colorop) {
>>   		for_each_new_colorop_in_state(state, colorop, new_colorop_state, i) {
> 
> Hmm. This whole colorop thing seems a bit weird. So each plane/crtc/etc
> doesn't actually have its full state in its state, but rather it points
> to some other colorop state somewhere?
> 

Yes, colorops are unique in the DRM model. While they are DRM objects 
with their own states, they contain information about a plane/crtc's 
state. The plane/crtc property "COLOR PIPELINE" determines which chain 
of colorops is currently active.


> The mess here with the 'intel_atomic_state' here needs to get cleaned up.
> At the very least we need to pass the full atomic state from the caller
> instead of digging it out via the plane_state->uapi.state footgun.

To make the dependency on the intel_atomic_state explicit?
I will make the change.

> That thing should never be used, and ideally we'd just nuke it entirely.
> 

You mean the back pointer to the atomic state in the plane state?

