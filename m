Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD93B0784A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 16:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F1D10E290;
	Wed, 16 Jul 2025 14:39:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m5gXRzhF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D1FA10E290
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 14:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752676782; x=1784212782;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=zVLaFG4P/eg5MljAmoriPKyE/gZBE/oOT48a9m0Ezqw=;
 b=m5gXRzhFRUF+ofepkjeQnT5MM2H5Ik0z9MaY0iC4WmFQV7msks4lDq3E
 jVJwoMqr++8RkyNfimG//UTppKb0tAMVqQtk1dzNhXCwFd2cQh1Grf4dc
 jlvumKnPkGIrOq3k64OrF03t7OrS3dZeHob5nfxcyzfIwVq2gSn9Rcovv
 2eK/Qrn47SmwRopLQuMcgFwRnddDXKZ2TaQuI42V/sGCahxfxlTeqNOkj
 /O1VwB8aMb+NkJMClIMG/C8yaGyv1pgkw8TjOER6JWz5jrBIF9+gkYCaR
 fdrbQdfPgVtgShuoWSKCEQjv5cHxMQqR06Q5lOkWXZcQDmFSnzwcQ4hj5 w==;
X-CSE-ConnectionGUID: b8D7tDVKTvWeNN3NhLFvvA==
X-CSE-MsgGUID: HY7giOAMTRuyXVOqROFpUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="54141371"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="54141371"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:39:42 -0700
X-CSE-ConnectionGUID: icR1hz0QS6KSr/lnK/kQdA==
X-CSE-MsgGUID: XeWrkgWpTNiDx3qt6a6/Ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="161551941"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:39:42 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:39:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 07:39:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.82)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:39:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ro9hzNXU1+XT4U2o0Rhj4cy3Nbw76L3Ew7esdA+T1lUrdWKxVkvx42aOijrQvcl6Q57XcwpVgWo9aoFiEmAWMQAMaEapZhdtDGKp7pq/KfxOZR0yPlQqBZW5U+OIhpZDhh6rGL67YC2kEbAUUEOre+w6W58c3Y++hz1uCXuO7Iu2G3yLCdEph+cKlqNdkC9j2UmYnYBI6YFErf33mc2+VCjp0o6UIaGiZaHX+MbOpay3E0Fu5eQ1CTAjz+hw9kuAv/21R9hNA2ZjMcvuurZNQX93fhEasezD0nS3zM7W+0jqldDDaNoWqd0JgKGDEyLn8iOqTRTUtPq2CGHPpdh57w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vykO1pywiQsj7V/Z/Nf4T5kVawBDmHBH8OcViw5+fIc=;
 b=jPxmz1dt5F07SrdJavF/Fhjbt9CAEdXzLlBTiqLLZchPqF7LfEMrcfaJ7+FiYOaGeSsJ6iOPLohXAc8zK5h/P0NmgdEVYEqza4+L7XKwzCyQq5v5FrjnKw86rTWW3Nci73OmBlrb92F4nIj9oVK21mzxF4P5l4nkEaEv9b+fS/hUuBWDTi+ldbncGBgDzwJXfihR/o/xXY5HYaJGE9zg5t2MtuFROcXr08d2WAQR3BNwD+HZCTY0Ofc9IydSmrFrJv8ebCuA0k/6iH106yd8qOFbA1ypHQz08N3rhZBIAmyHd8qW8ts4dcWAwxKql8P1n+E292xocrikoCieBi78XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ1PR11MB6202.namprd11.prod.outlook.com (2603:10b6:a03:45b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Wed, 16 Jul
 2025 14:39:08 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 14:39:08 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 16 Jul 2025 14:39:04 +0000
Message-ID: <DBDK1X31YM2T.1DZCWWEZYALZI@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH 1/3] drm/i915: Refactor eb_relocate_vma for clarity
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-2-sebastian.brzezinka@intel.com>
 <htvnnxraq3dichhoa22cvvhxh4qzv3wyg7gyxxdwn7i7gye37a@hig3vattgvdh>
In-Reply-To: <htvnnxraq3dichhoa22cvvhxh4qzv3wyg7gyxxdwn7i7gye37a@hig3vattgvdh>
X-ClientProxiedBy: WA2P291CA0026.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::22) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ1PR11MB6202:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e9d1fa8-d201-41c6-abb0-08ddc47685be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzcyZHpNNEE3TzMwdll2V2dCVnZua0ZYeDB1eWZ5VHlBNS8zR2l1UnFMbksv?=
 =?utf-8?B?NENheFRsdkIrTEg5WW1KbGZXaFFnSXFTcGVDdnlNdXdZZXZER1RndzBMbW4w?=
 =?utf-8?B?a2R3U1RrblFZY20vREtTT2ErZi9CSTZleFFZUTRIWTEwTXJjcTJPajNUTFh2?=
 =?utf-8?B?Q2lOMno3eE5EaGRCbzY1TzlaanJKbTIraElGUlhIY2k1d05yUEZCcm51bVlr?=
 =?utf-8?B?Vnd3Z0NJVzlNQlI1b29kbmRidnhSRDJMV2drV0wvd3YvdXdXQWVUMFpuQzJo?=
 =?utf-8?B?YzVUVjUvS0ZuMS9GcWZpUjJQSmcyenZvYnlXMmZWUGl0MGI2QTM2TVk0Zmhy?=
 =?utf-8?B?YXpOR2EzSTdsdXZnM1R3YjhTbzB2eDdkNnkyc21uYTZvUmVRTW84dW96SDlw?=
 =?utf-8?B?QUtpSWdjTWJWT1ZyWXdZZXIyQU13NnhER3RwMGxxakM2eXprTzhoWG9OY2h2?=
 =?utf-8?B?SDdib3pYeWo2UE4zSnhnRmpFSUNTbFU3bGcxOS9PcVhWaDRDbDF2bVhDY0xt?=
 =?utf-8?B?V201R1ZkbzZtcUYwNWtXYkZFNVdWcml4Rzd0bDNFT3N4d3Blc1dBczJubncz?=
 =?utf-8?B?djE0TStYWFAzS2xiV3BNWElnbHJwV1NtMUQrNVA0SU1Wd2drcXNVMzBHTkxB?=
 =?utf-8?B?SFpaeEp2aHVFa3JsMTltQWtOUENlNjZzYk9jdng4MFV1OVMvZDRHTzBDY3Nn?=
 =?utf-8?B?Z2hxQTZINW0vazlvOEZ2WXNURHJTcU9LUUthTmNZdUxMS2dlUjE0bkt0azRB?=
 =?utf-8?B?RVovV3RvZGt2bms2bmFPcGpidjYyRWV5L2NRRUk2Tm93SmY5Uk5PU3JQRmt2?=
 =?utf-8?B?NDA2ZDhPdFFZbEFhVGtqYU9kRE1sbnRtL2IzYmUzd1pITEJjQUxlOWk2dnE4?=
 =?utf-8?B?MFVnekZWdTZyL1A5cm9ueTZKUnZlVW5CUUN1L1VFd1AzZElpMzVaaitQYllR?=
 =?utf-8?B?L3NqWThFUXpGYi9ETHF2T2xhc2haK2poOTFHUnQxQlY5RlJwKzloUE5KOXJE?=
 =?utf-8?B?VFpSZk9hU2NGcmMvNEV5cE9GeXowNTdvUTJPaC9hbm5yWmRBci80VzlHVUww?=
 =?utf-8?B?SkludTljUXh4bnJQajhjd2V0YWVFMFFRbE1veGJuR0JETEh4UXUvSWZTb0ZD?=
 =?utf-8?B?MGJ5czFxNjd6bTZiRUtYZkx5eHlLQnZtUWV6SnlHZ1RvUnRwZ1Q1Q2haYU05?=
 =?utf-8?B?TTRORFRJYmgyOGFzVXdEbUNtRWpPZGdTYzBva1FTRHFYQVMwcHVaVDRhbXl2?=
 =?utf-8?B?UXpOWm9XSVFLNDZ3WVMwSzMxVE1lTnUyMUM3TFNJay9ndExxWlBZZlpnR1NV?=
 =?utf-8?B?MUZFc1daazFQZ1NlK3ZCNlJhQnl3MXRNcy9vekU0WUFhT1MxdFJ2VFdKS0cr?=
 =?utf-8?B?aWFscGVNQzVkRUR1a3VocVR5ZnJLRWpYRlFyUVJTTGgrWUVyQ1AzREN6YjJM?=
 =?utf-8?B?YVR2aFJPSGhTTXdBbDRZa1JOWTVZT1EyUk05ZlE5MWlmMVFkUHhnNkZ0UGZr?=
 =?utf-8?B?R2J4TE80QXFLUzdtSU8zUmFidGtWbWk2RDB1RnVINFVJeGpxUFVIOGd3R3Fm?=
 =?utf-8?B?ejFjRjNrU21ybnBsVTJ0TWYxSVRoOXJud2twRnFFdjRFelQxRjBodHI4YXZB?=
 =?utf-8?B?VVUrazhoNUx2cXJZSU1ZL2Rxd1VTZm1iblYzQnh5VFNkVUtrdDZ5SEJZTVNp?=
 =?utf-8?B?R28xYW4wM0s3Rkgzc0VQQ1o5aVAybFlFVEJrbnJLaEFpbTgvWE5CeDJQQ0VG?=
 =?utf-8?B?QU9lVXFQRzZ4RWc1QTRtQkFCV2s1UG0vbUUwWWN3aVF1cU1IeFQra0FpdUJZ?=
 =?utf-8?B?Y0xwOUZzWjd0Z2tValV2NWJ6VWJiOXRHZ05qakNRbkt1OXpOWHVVOVpWOUpn?=
 =?utf-8?B?QWRrcFdJZzRPbFplMGcrWTduNkszZlYzRFo1eHBISXlBU0ozOHRhRmJxYVBK?=
 =?utf-8?Q?M1nJKa1ToX4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1pnL1Y2MGtJQkE3TzM5SStyYTdpZ1NOd2ZYU1oxclhwVHorcjBaYm5IMnpX?=
 =?utf-8?B?bmpnUGl0T2QrL1pmRlJJQ1NFQUxtT0hMQWpncmFYR1cvd25Sc203TXhiMktI?=
 =?utf-8?B?aUh5bmJrMUltdHNZdEJ2WVRqRUpBN2FiTXFERlQwSk1xYkEwL09oNVhWRG16?=
 =?utf-8?B?ek5pTFFJZ3M5TDJ5VDNyQXowaVZVbUl3WUsvYlZmY25jeU9MME9OVUJMSXMw?=
 =?utf-8?B?eDI5ekszWkhJQlR0TXpQbDArLzBUUDJVYVdIK2N0Q1pnS1c3ajNTekJrektL?=
 =?utf-8?B?dmFDUW10T3pEakJad2R0VW9hV1gyNXM2OTV4Qm9OWXFJMHJxMnlMK2szS3Qz?=
 =?utf-8?B?ak9XeWtzK0VIVFEzN3FMcTFFT1pMTTVMVzJIZ0tOV3l5ZDhCeGcyUGcreWRj?=
 =?utf-8?B?TkZmdll1MmdkNkNEZmg4bXd1N2hkbkdrNHdSTmZnRnBoR00yZGZPRlFsaVNU?=
 =?utf-8?B?RHRBeGFwY2VhYUo4VVpPc0d0M0lSQWQvLyt6NkIwcFBLNlhXeCtDY0ZHYUVk?=
 =?utf-8?B?S0E4TC8zeE9WMktwUzZuRVk3LythQXdLa1lncEl0QTRQbFc3MjVQalNUNHov?=
 =?utf-8?B?Ri9uazc5NVRJelIzU2VhU1hhMnU2SGRhMjBlVGI1SGN6bC9RelNvT0ZuZzZM?=
 =?utf-8?B?dXN5RFpuN3NQQzdhSGlLSm5YNUljSXMxQVUvd1ZLMmNoRjVsOU9LU3hJTjkz?=
 =?utf-8?B?RkEveUQ3dUNjZ284Y1FSWGlxc0VKcjJ0TEdSM0Z5RW5YUkFDZ05xR2hMVVZS?=
 =?utf-8?B?U3lTWVUyL043Mk1qcFJzT2RzN1hBZWFFVTdsSzNKdVJ5NEQwbDZZUHRjdmpP?=
 =?utf-8?B?dUVLLzJKYUl1SXpyQVJQdkNsODZYT0NwZnZ0T1pnNHVkNEFJWTNFczFNOERJ?=
 =?utf-8?B?Q0c2a29wUVhkOU5HVXhRenlBM0RCMDIzSWtKY09IaWZFV0NtSHpSM3VGS09K?=
 =?utf-8?B?L3JrOFJZQUUzMG96Q0cwUEdoY3N0Y1pVNkltK0szVFRqdkxRUHBGYWUzV3Bo?=
 =?utf-8?B?ZmQwc3BUaGp1MUZHQVRjMHdpQUFTejhzTFdMOGpXWnBNWnUxNHczZUdqc3ph?=
 =?utf-8?B?WU1VOGdNdnJQWEZ3WGhsUGFxd3ZnMGI4UjJDREZtQWZ1SVl0bGxtYUhsUXVN?=
 =?utf-8?B?M0d5UVBMaEQ5WjBNTjhNa2ZaNk90TGFjdmttY2RyYzdFMzMzUkV6RXExNmdh?=
 =?utf-8?B?QVpmVWpLMjBhUzh4WlRkcGNya0JVdThkRlF1cHFjVFYzQ29nU2xTbGgveUZP?=
 =?utf-8?B?Ry9kZzNmSUhwV3FNVFJESWJpZzNUQzAxd2IzYzVmK0FYeS9yNG4zbWI0R3FQ?=
 =?utf-8?B?U3ZOWXBZUDdJSGN0S3RKTGd4SldiNHhnd0NiSEMzc0p1L00wdjV4a0podWJa?=
 =?utf-8?B?OWpSZXBSV0laZHpEQnpRSndWbmlTTkkvam50L2Q1SFpBNEd4aVk0RG1leXNa?=
 =?utf-8?B?NFJNUHJWcTI4VVZrQWx0QUxYNjdzc0owTHVsREZsMmZhNTU0NjlNai9ZYU92?=
 =?utf-8?B?d0JxcHBoR2R6ZXhpUUcyWjNsZXozcm1SWG4yQkxoekZXSHYvRDBvRnNDQm40?=
 =?utf-8?B?QXFlRzZrOTVycWphU1hUcEQ5WDI1dUJyWnp2ZTQrWmVFbjExWW1GakhhdVZk?=
 =?utf-8?B?L3Job1ZYVXRpeEhsU3dPdzRkMTJpaUJ3R0lqMkZRUjBQN2huekRqVHZsaUhO?=
 =?utf-8?B?LytCN1IvcjlXazB4YkNTSTcyR1Z3MmxGU0pSY3JnbjQzOFJDUWtsenNTUHRT?=
 =?utf-8?B?L2Z4K2RvM3N2OTVvQURVd295TGVsTndVdi92Q1ZkSSt3ZXdNaHEzbjkxUHd2?=
 =?utf-8?B?czk2N2MzS3Z5NHZaQnZiQ29TRVBUdUJrakpmWG8zVUpja1dpM3hPZkFyOGQr?=
 =?utf-8?B?KzRKZnRaUzJvSW91bHBPTzAyOWtZbU8xNlBZRGY1Z2g0M2VLZEJCbDh3Y1VP?=
 =?utf-8?B?N29TWTk0TzlWb2Z0WXNmZDQ1Q1JDdXloTEN0eUVqeThUNFNrejNzN3ZLZXo2?=
 =?utf-8?B?MEN3M1Zzc016dTMyUVBSbGRndUtTMS9EQlF4Qk1iOXdKcGdnRkVRdUlJekZZ?=
 =?utf-8?B?ek5oa1IxVkkvRHRrU2pNczZPd0VTQ0RoUnJJbFZGdXJ4U1BYSi8rN2U5a3hs?=
 =?utf-8?B?bWdCMzlYNzNVS3dHVEVuSk9MbXdsakl5THRPRHl3Wi9Sa1IySjJzY2lLN1hk?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e9d1fa8-d201-41c6-abb0-08ddc47685be
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 14:39:08.7430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aN8ObQq0E4J8PpLuOzQHN7WsQXAIM7ETvzPk/IXd7nWaL2OzszP2HvYqksNWNtZ06hkCMBwkws6JdBH2M8BRGiBdFA3PZh/3HBG3X5CwA3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6202
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

Hi Andi

On Wed Jul 16, 2025 at 1:49 PM UTC, Andi Shyti wrote:
> Hi Sebastian,
>
>> @@ -1529,80 +1529,89 @@ static int eb_relocate_vma(struct i915_execbuffe=
r *eb, struct eb_vma *ev)
>>  	struct drm_i915_gem_relocation_entry __user *urelocs =3D
>>  		u64_to_user_ptr(entry->relocs_ptr);
>>  	unsigned long remain =3D entry->relocation_count;
>> +	int ret =3D 0;
>> =20
>> -	if (unlikely(remain > N_RELOC(INT_MAX)))
>> -		return -EINVAL;
>> +	if (unlikely(remain > N_RELOC(INT_MAX))) {
>> +		ret =3D -EINVAL;
>> +		goto out;
>> +	}
>
> Why? This doesn't look clearer to me.
>
>> =20
>>  	/*
>>  	 * We must check that the entire relocation array is safe
>>  	 * to read. However, if the array is not writable the user loses
>>  	 * the updated relocation values.
>>  	 */
>> -	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
>> -		return -EFAULT;
>> +	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs)))) {
>> +		ret =3D -EFAULT;
>> +		goto out;
>> +	}
>
> same.
>
>> -	do {
>> -		struct drm_i915_gem_relocation_entry *r =3D stack;
>> +	while (remain > 0) {
>>  		unsigned int count =3D
>>  			min_t(unsigned long, remain, ARRAY_SIZE(stack));
>>  		unsigned int copied;
>> -
>>  		/*
>>  		 * This is the fast path and we cannot handle a pagefault
>> -		 * whilst holding the struct mutex lest the user pass in the
>> -		 * relocations contained within a mmaped bo. For in such a case
>> -		 * we, the page fault handler would call i915_gem_fault() and
>> -		 * we would try to acquire the struct mutex again. Obviously
>> -		 * this is bad and so lockdep complains vehemently.
>> +		 * whilst holding the struct mutex lest the user pass in
>> +		 * the relocations contained within a mmaped bo. For in
>> +		 * such a case we, the page fault handler would call
>> +		 * i915_gem_fault() and we would try to acquire the
>> +		 * struct mutex again. Obviously this is bad and so
>> +		 * lockdep complains vehemently.
>>  		 */
>
> Why have you done this change?
>
>>  		pagefault_disable();
>> -		copied =3D __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0])=
);
>> +		copied =3D __copy_from_user_inatomic(stack, urelocs,
>> +						   count * sizeof(stack[0]));
>
> No need, the maximum allowed by the documentation is 100
> characters.
>
>>  		pagefault_enable();
>> +
>>  		if (unlikely(copied)) {
>> -			remain =3D -EFAULT;
>> +			ret =3D -EFAULT;
>>  			goto out;
>>  		}
>> =20
>> -		remain -=3D count;
>> -		do {
>> +		for (unsigned int i =3D 0; i < count; ++i) {
>
> Please don't declare variables inside the for loop.
>
>> +			struct drm_i915_gem_relocation_entry *r =3D
>> +				&stack[i];
>>  			u64 offset =3D eb_relocate_entry(eb, ev, r);
>> =20
>> -			if (likely(offset =3D=3D 0)) {
>> -			} else if ((s64)offset < 0) {
>> -				remain =3D (int)offset;
>> +			if (likely(offset =3D=3D 0))
>> +				continue;
>
> you can leave a blank line here.
>
>> +			if (unlikely((s64)offset < 0)) {
>> +				ret =3D (int)offset;
>>  				goto out;
>
> ...
>
>>  out:
>>  	reloc_cache_reset(&eb->reloc_cache, eb);
>> -	return remain;
>> +	return ret;
>
> now, this function is also returning a different value, not the
> remaining bytes anymore but 0 on success and -error on failure.
> Is this something you wanted?
Function still returning the same value as before, but now we
don't reuse variable. Regardless, the caller treats any return
value the same. Still, the return value is either 0, an error,
or an offset, just like before.

Other than that, I'll fix the other comment in v2.
Thanks for the review.

--=20
Best regards,
Sebastian

