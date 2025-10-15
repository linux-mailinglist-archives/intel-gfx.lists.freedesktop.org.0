Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13707BDFA25
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442A810E890;
	Wed, 15 Oct 2025 16:23:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BzZZKlKt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA6510E8A4;
 Wed, 15 Oct 2025 16:23:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760545384; x=1792081384;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RxWkdGMXHccfRHuGyR6AyRNEOdUcjKiSDqN24cOF69E=;
 b=BzZZKlKtP+XpqTE6UcL7uZhMA3mdcttDuENx8cuH16bYP36BaDZgjqBA
 ZNy/XpojdOuYqiSMrwxSCTegANkVYREYnIviv0SC2vS5tuv9MRMs/l73Y
 0357wS3QLSAipcOkMa0SYCixTu/7+w0bLayj240PcASCK8BBagNsapN/+
 zXZP3Wp9/ABeiU7987bi6VnEyaqWTS6hJQthotsWXh7nnt8yoNxbt7tG0
 50OQlzdJYyALxiUglXjq/iAJ2IAd53kAFnLfIjaYI8btfIBTK72hpCook
 /aJ37B6dSWpoPx1ATWwifL/UC5KEBdfVopfqc6XZDLDYqqQKAZ6bpy4Kx g==;
X-CSE-ConnectionGUID: IM5svgOLRKKBERZY/HO55Q==
X-CSE-MsgGUID: m07Y3MVtTmWLjoWD/Jn2wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="73326937"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="73326937"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:23:03 -0700
X-CSE-ConnectionGUID: DiFxSs0TTfSWuUl+cjucrg==
X-CSE-MsgGUID: wJWPTtsHQPyR6MLg3F66Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186231583"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:23:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:23:02 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:23:02 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:23:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rxqSZyEEBTNGw16HiJB0DE6rhqavqeR9isP5koN5fzlJv2QzdsE8GfV+kDwEqdBt8DKXwbUUWoX/Gx6GEiW6bt2ImaUu52qeFNzFdSuzvVkgpswPUX5Woc7/Z4JH936FK24iDCCo+zVAyLJU8QaUUy994GePAPg2yOGgwpbPx2q+D/KWa70lXrobOnCkmhj4TxssWTKe0Dk+LaM2Yt7cTc6BFSreRntHTzph1u4IiRzxUBnRhOtJ2x9idwgBH90zmEePGpbbiyhFIBHgejvJx6JEdyKwi0Y4TBrgZ028uea1tDBI7CO20oTkMqjE2zOEgEMEtA4MX8rpMrvJLcVuDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJGkAgfX+ug0evQBhFO5ffN22mDqq1Ryd4soGAFsuLs=;
 b=a7/2Rekk8cKnForIGaUH0O3DU2ARdlok3c7SVsOrs7ym2kGzCKLdcXqPbRhE5ZR5WJQMkF+Dq8iyPeTzxLLxCcT0hvCRyzX7mqyXxoOXG3viQx0PSpJ9sbIcD0DXTm0Pm2oQaNcACDtXMMV+bMTx2woEw727owfLJaeLIOux6PKiwM48Yc+xjH6p1BMoe8t0INe561yBvA9/4+HIs2UlxllEXSd8ofRQ2MFb5Ik+tNLTyMjTeZhMzmEXOfNY6ZVPAM0AObN0UTMIUzrkPKTwm2mch5Hu9QVAA4WjJR+zKPrx+PK1znFQfsA+yzNa8f7FgWUC/k74oQZYZJBxzO2tdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by SJ0PR11MB4958.namprd11.prod.outlook.com
 (2603:10b6:a03:2ae::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:23:00 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 16:23:00 +0000
Date: Wed, 15 Oct 2025 09:22:58 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 17/32] drm/i915/xe3p_lpd: Load DMC firmware
Message-ID: <aO_KYtkIX5eu1bEy@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-17-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-17-d2d1e26520aa@intel.com>
X-ClientProxiedBy: SJ0P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::8) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|SJ0PR11MB4958:EE_
X-MS-Office365-Filtering-Correlation-Id: 98211a61-2ce4-471e-0d61-08de0c071bd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzhsWGdXTTBYblZqK3gxbGFWQ0ZXT2UzSndQQTZUN2FpdEUrbHFDSndwMmgy?=
 =?utf-8?B?Vitpb0JIYWJnR0F4eE9EckdaaUxTdEc0RzRaSGZhUzdPT2NJeVRHOWovdGxj?=
 =?utf-8?B?Z1o5alN4K3FhUTdQaHQyT0VwN2N6N1R0eWk3VTM0K2QrbjN5WTk1WUVKMzNl?=
 =?utf-8?B?Tk9mTkNJRjFUbGxHSnNzWmVnMUl4d3ZSSFE2Z0taNlZlVGxqTHVwSGw3M3Vy?=
 =?utf-8?B?Yjc3K2JMeXRBNkNZUHoyeEQ0TnV1YklVenQrR3ZwK0F1RWFBOXNKVDFxOEV5?=
 =?utf-8?B?UFluWjIzN2ozaVV4YStlWEVRdVZQQ2doNTVMa1JkZ0grNWRMeWtjVjdrUjlQ?=
 =?utf-8?B?NDZ3OTJTVVFNUW1NUzRLdGlxVHhQQmdZL0UwMlllNmttZmd3RndNUjF1Zm92?=
 =?utf-8?B?M1Jzd2J5ejBjTEZ5MlFBRGFkQUZ6NkwyNncyL3Iwekc5ODlSSEJTOVFQK0hS?=
 =?utf-8?B?Yk12ZWQ1UWNYQlYvWkpvMzdIZURMbEtjaktDbGg3TjEvcVJHazdRQkYwTWNk?=
 =?utf-8?B?S3d4cEVUZVdvQUgvVmJvdkN2am1FK0dXYkdKQ2xBdEZ2WkN0alhDRlJvbUov?=
 =?utf-8?B?dEdIMWdBOU1LcUhnR2h2VmN0OWpFVXRnR0tWczFFUU93WnBBSEhtY2grQ3ZE?=
 =?utf-8?B?ckZEV3MyRk5oTkp3RHp4NEJUOWNKdkExQjVhV0VaVVNGQUsxY1F6UzgrUmho?=
 =?utf-8?B?ckRBSmpCSjhWOFBqZUwzQTVqK1IzdWsxcDZXREN5TEpXTEJuWjhaZE9ENjZp?=
 =?utf-8?B?WkNId1BFNm80YlFidTZpYzE3WFc3eTdyZGZJampsMllkdFpHRnZYYy81NVF2?=
 =?utf-8?B?NGw5cTlJdXNFSHFHQTZBUjN2VERRMi9jUTF3VWhXejRvSEx3SjR1ZlMrRnha?=
 =?utf-8?B?c0l1RzQ1WHJjTVNMbWV4Z0sxQ3FBOFhpaWhxNHZTU1p0N2NtQnB2Ni90d08v?=
 =?utf-8?B?VHE2RWk2ZjZqZ1pVZUZzK3RWMjNaR1lCenBHR2hiVmxaTGRpMS9nQ2g4Q2JQ?=
 =?utf-8?B?bEVzazQ1dDJpYVF0ejlmUkhvSjRvZkRWK1MzQ1VhWDFzZ1k5RktMbnBma01x?=
 =?utf-8?B?dWVzby9pckgyLzFKdTdlek04bEdtYzd4N25ScDJoeGpwOTNtL3d6QlZnR0ha?=
 =?utf-8?B?Q3dzL2x5WVNSVERMRTZkMmNlQVV3alpucmpERXl3Q3NVMVpyRHlCS2gwYzFr?=
 =?utf-8?B?aGV4b2NqTVNkYW4vclkvV3Buc3h0TDlaVEFzNWd0Yk9HVWV2emNabE80YWEz?=
 =?utf-8?B?c2w2Nk4xcncvcm5MUXkwdVFNWG5Jbi9EOHdnNmZIdVBhbWhKQ09YZnYwUHlQ?=
 =?utf-8?B?eFZNOWZaTmxIQ1F6MlgvdDNaejVWVGdrMzRYMWNKZG5KdXdZWHJMQ0I5bWZO?=
 =?utf-8?B?QUd6Y2cwNUZ4VEZTTGxkN25WM2VXakRRT3Z6aEZVWERxOWkvWW40cFE3cE1R?=
 =?utf-8?B?a2xYbkhIRkF0eW9ZNll5UkZkd2tpaUxWbFc2NXpOWmJ4TVZpVjJ3di84UnFh?=
 =?utf-8?B?NEpXUkFNalZrc2lTRmNMbnhQU2kvdjJDaC9RZ2VqQmk4TkpWOXlQRWVwMFBO?=
 =?utf-8?B?cHJoVnhab3Z0S0s0MDZGMXc2SmkrMkxmQWUxMG1XNUN3S0ZXMDlJZWdBdnVw?=
 =?utf-8?B?QlZvNzVlM0cvb1dFYkVzajhBcDU3bm9MMnpxT2FsZmZqQVRGRWJVYzZSbFlN?=
 =?utf-8?B?NzJzMmpTa1FYanJYamlpRTJKOTlFeWI4aHo2bzVBNXVYeXMzcFdDZEJKWW45?=
 =?utf-8?B?VSt3UlV5Zm9jZEZWbXZVRUJ1cEloV3VOSndUZkhLcGR3aUY1SUwxaFZPSUl0?=
 =?utf-8?B?VjRPcWpNQ3cyTVZsUWRJeGFMbXVUOXlmc2svUG55c0FoMThzM3VNYVNSZHEr?=
 =?utf-8?B?WmxPdDJYUVpGMzRwTUhnVXhJV3lpZnRMdHFGYWJidDdRVWI5czNlaVVyeTJE?=
 =?utf-8?Q?a/hEDRtmzA1DfqVLbTcHFUOKxlrV0AtN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SU5mU3NmZ0thNi9pTUl5RnlVSUpDQVhVZDJvNmU2RUZ3TDgrVVB5Q1lZVGZu?=
 =?utf-8?B?Z1k4SVIzRHNCTmIxeWNtUnRnTTFvYk1SS0VJbjU1V3VtanpYdkRGMldDSFRC?=
 =?utf-8?B?QUlMNXZocmV5U3hiNVFSQ0xiTUwyazFwdHRuV1NNbERyWTQ1eUZFNFZiV0pV?=
 =?utf-8?B?MXFDTnpoWEJJVS9SVlFjQlBwZTg3TjJaTVN0SEp2eFBMSzJNbFlIT0RrNkFo?=
 =?utf-8?B?ZGJnb245Y29UQTdMSzVkb0QyYXY4QUhWOGxOc1RoQitrZ0lLOUhUQml5d0pE?=
 =?utf-8?B?aC8xMjBaemRVOUlXTU5jZmxZRGVDOURqMFArWGxBbDh4VnczaS9meS9EOERz?=
 =?utf-8?B?K3lTS0VyWGZZS3dCY2lQUDduVWlzQXI0bVdsSnVFMFhWK25nT1VuRDVlMDVh?=
 =?utf-8?B?VzRVeEU3M2NMb0NoR0lZVHFGY3ExQ1Y0SmtGTitoa05HU05qSUN0STJxaTBH?=
 =?utf-8?B?MGNYUXdMdERoRis1Vjc3Zlc2WTVlNTJ6eldueWNKbTRhc29XZjU2MUY3MHdj?=
 =?utf-8?B?U0ZhbFBBVGpVcTcwSitiTUNHZjkwK2pIaThZbDgxN2Q4VTJDeE1kc1p1RjRs?=
 =?utf-8?B?ejBKNHM3bm05N21IeHd2RnNscmdmSVhCd0hjbzNJSngxSkZWR3BHVEhNVVh6?=
 =?utf-8?B?c2pxSFZrVEhXUkVpa2hzSHk1QklOeDFIcTZ0d01pRCtkQ2Y4SHJrU2hxM2lV?=
 =?utf-8?B?MXBEWCtUdHNKVUt6T2lCRjBVMDNsVzl1TnpNUnpiS29wU1NON0RIenRoanBn?=
 =?utf-8?B?bCtLeSt0MWl0S1dEL3FiUDVLSmNzL3U1b1ljVksvcjFLbUo1ZU1KNTdPeHpL?=
 =?utf-8?B?U3NnQ1hnUXJKdDl4S21DeVpYbGI3NmdZWExrMHB1TjdIWkU4QWhJampRbk9E?=
 =?utf-8?B?WlhlZVFRcDRHOUpBRjVkUTlSR2FVMzEzNVNKc0sxc0ZtUHUvTy9yOWRPTzFL?=
 =?utf-8?B?M2E1bzVPZitKWEs4MC9raXJhU2t4a3MyVWlONXVCMGppZUxMWnpxYUhFTTA5?=
 =?utf-8?B?VmwxRTRaQ0FBeEpvUnYxODBGcWdxeXVMYkZCZjN0Y1lsaURtbVZnT1RQQ29W?=
 =?utf-8?B?Y2hCMVFQUWhzTlZLa05JaUlXc1oxSjU4eGp0ZU16ZENCOFdYNDRzTFFZdmlY?=
 =?utf-8?B?TktTOXdQNEora0k0RmEzQjRSek9ITmI1bFVvWmw0SUcyNkVVTzEvWmF6cVNP?=
 =?utf-8?B?T1FWbm9EYk05OXlqdzB3a2I5cnBNd2d0WGtlc2Z6d2REaWdPUkZ4UXRNODVN?=
 =?utf-8?B?VjNrS0lGK2s5czQ5ZHdMbWdESUJIV2dPbG9uREg4cHVXRi9xdVJzWlpabE1M?=
 =?utf-8?B?U01YYXA5MUUvbzJ3QTRiRlE2azB2Q3IrMUZsMDh3SXhjVWg4cjNieWhwaG9z?=
 =?utf-8?B?aGZnMHo3U1FvNkEvQWZ1Vkh6WjhSdDVKbnhjbDl3YXRtUW1SeTRaMHkrVHY0?=
 =?utf-8?B?am9DcVZ3T1RRYUV3cUMySnFENk8wK0RYL0JQeFRkTXJqN2JVTWhkbTdLYUVJ?=
 =?utf-8?B?SVFWbG51Kzc4Q3Y5Y3lIeHBFZ0x5SWF6RTZ6Zm1sSmdNanlZL2hZbWpGTlJy?=
 =?utf-8?B?ZXBDR0tCMk1jWGJMMGphWTBqb2NVU1Z4MzlxOWpDQ2hOc21WSjhvWlNKOHB0?=
 =?utf-8?B?blUrOG9zSU5VbWw1aW9lNHVWNGJ6UEp3UWs3MzB4RVhWY3A0cXlGc0hYNG4z?=
 =?utf-8?B?N0F0ME9LcWtWcGgwOFNGaFlqYkRxT0dYbFArSU1tYnkyT2RGQnhYMzk2Nmh0?=
 =?utf-8?B?TE5nRDY2SWxGcEU5Y0Z0UVE5Y3gvZFpZcFJNMHdsUmRGWkZaaGEyWmk3VDBW?=
 =?utf-8?B?MjdsMjRNYXl4b2hKQ010eFI5WU1hQnpLUk54ditMMHhCUU1VdUZhOHJXOGQ1?=
 =?utf-8?B?WHJweEtrRlpWUTVUQWZJWHBoS1c2RFowQi9lK0tWWDFxS1ZQemVReDN5eWZp?=
 =?utf-8?B?bis4SVh6UDRkbGZ5ZXJDbVdJekdieVd5UFBPcERNdE1OWHZPelM2MmFVWXMx?=
 =?utf-8?B?dkVHMi94OE12eUs0UzhEbEsrVVk2MEh2bFBnZWhSNHBHeXQ3TTdXRS9iVVd3?=
 =?utf-8?B?MGRFL2lvbUtwWU5SbVhSR2V5RGp2cXNDeURUN0NOV003N3B6WjJzVGFhOXVr?=
 =?utf-8?B?NXlUV01MUVJIbzZuVVd4OWxGMlZFOFhqcXFmNm9QUjR0MGt6a0F1ZXNUMWl2?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98211a61-2ce4-471e-0d61-08de0c071bd0
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:23:00.6523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kO9PNDOU6SAvcsR88nxjdFmGDLTBCa3m8A/0FuWyxnYn23ycmA5+MNcwk0XpZEJIYdDyg46yyU+iioCAaIp0cd99mMiv2SltbLuON0iEkII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4958
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

On Wed, Oct 15, 2025 at 12:15:17AM -0300, Gustavo Sousa wrote:
> Load the DMC firmware for Xe3p_LPD.
> 
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 517bebb0b4aa..c496e7a5c003 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -127,6 +127,9 @@ static bool dmc_firmware_param_disabled(struct intel_display *display)
>  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define XE3P_LPD_DMC_PATH		DMC_PATH(xe3p_lpd)
> +MODULE_FIRMWARE(XE3P_LPD_DMC_PATH);
> +
>  #define XE3LPD_DMC_PATH			DMC_PATH(xe3lpd)
>  MODULE_FIRMWARE(XE3LPD_DMC_PATH);
>  
> @@ -184,7 +187,10 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
>  	const char *fw_path = NULL;
>  	u32 max_fw_size = 0;
>  
> -	if (DISPLAY_VERx100(display) == 3002 ||
> +	if (DISPLAY_VERx100(display) == 3500) {
> +		fw_path = XE3P_LPD_DMC_PATH;
> +		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
> +	} else if (DISPLAY_VERx100(display) == 3002 ||
>  	    DISPLAY_VERx100(display) == 3000) {
>  		fw_path = XE3LPD_DMC_PATH;
>  		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
> 
> -- 
> 2.51.0
> 
