Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9933CB383A6
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 15:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03D410E0FB;
	Wed, 27 Aug 2025 13:27:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mP+lF9mf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCF710E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 13:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756301224; x=1787837224;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5BfiOW/smlETCLJmXhVv4Ti3RMQ4pGwPELCLl+waCzc=;
 b=mP+lF9mfN6c8lmqRhZnJpY+qWrVpBBF7n0EmxxE4yGj/CJN+R78TsP+b
 Zzy1g0Mb27mymBcnGJ8C4LosMo57FqjojtsLrVWANhSWtCBMmK7G7EL//
 AhCSKTbMLXhlosrxLihFc0yNTZGn/tCgG1a/QXOKt5yYx8mwRqiEuIWmT
 /icATLtoD0M73Ru+gX1Sua/TTU8++w1N5vXVNE8JkWVbo7wvoBNM3YTr6
 e0iCjJo/sMVqzCiYXMZfZIKg0JWh7nusbqCDXFC+W9e4jHIVaVAyHID+U
 xEDF8Tw0H/rfSkT7tpsTUm0WY4FR8XeJGHulZ6WnwX7+Asvsg49DL2nEi g==;
X-CSE-ConnectionGUID: amaNh+JLRru7UMmsTCNedw==
X-CSE-MsgGUID: oou924fCQuS/DaLO2Tl+lg==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="69991617"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="69991617"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 06:26:53 -0700
X-CSE-ConnectionGUID: TI33C1maSvu5gIBKlv7C5g==
X-CSE-MsgGUID: A9OZn6zKS0qgzHL6FbzR5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169745260"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 06:26:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 06:26:52 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 27 Aug 2025 06:26:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.89) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 27 Aug 2025 06:26:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GI1wsU2h57kccB+Oma+fZWT99eWR6v6S0FF/gVNzpLT/Bzgzr3q6obdka7xf/eVWeUbuqODbEEv60/G2jrqA0dCjhAzromly/6Makx4N4DKsqqjkeH9ftTrgYw2MALwlykLxmUyDjt5M74bRl68b1iRheXGsyurmQMuNW2RIBO33mxImiuX/9LgeiwXJPV/oYwq7zz22PLw524kdP6MBR+G5yaCKSEC1gyQfqxvoJS58SWpPMWYjsDY+xz++es0LEd1G2IjrTlMoWTyXdIzrqHtHMC+I0tPpnbhmKuzJdNxmOQOHMaHLE+phOJaunYhDvAvpmPe1qpFP9aC96Sm7bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8dTIKbWGsLfl4UUr0Oedu3zSZ5OCwHG4Iw0VYvLjQ5k=;
 b=bFtqkDS/15+Xa1FGVtbbUXzSYyAxH9Q9sNRF00UM80enqjE7JWACJJIX/p5CJu18A6vP5hsJ9YuMSVVX3uyDml/A5pPSk7/4WqrBgRTVeH0XJz38+wcJNQQuh6+YEg5es/02p0iCrVPIqS6U83q4FeLYleUbvi908rH5gc0jfXOd8zm2HT1qQXj/jwQdBhJA9muL4bbxSWl4jf1qbnbXDy3WTKDESPBQwLyId3oCZ8PZ8Zm+kDbHIBHVd1SVdYVtEJ91m7/JoreBLWQlPTSeolVfsDKgP+p9GNyG0JAP9sc36hZFRo5a5wMbc4FJ2nXyOfLPsOBKBqMMqjj/uAcRAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS7PR11MB5965.namprd11.prod.outlook.com (2603:10b6:8:70::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.17; Wed, 27 Aug
 2025 13:26:49 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9052.013; Wed, 27 Aug 2025
 13:26:49 +0000
Date: Wed, 27 Aug 2025 09:26:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <matthew.brost@intel.com>, <john.c.harrison@intel.com>
Subject: Re: [PATCH 0/2] drm/xe/xe_vm: Add error injection support to lock
 and prep
Message-ID: <aK8HlCbvZWlHEOzi@intel.com>
References: <20250826154352.90434-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250826154352.90434-4-jonathan.cavitt@intel.com>
X-ClientProxiedBy: SJ0PR13CA0192.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::17) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS7PR11MB5965:EE_
X-MS-Office365-Filtering-Correlation-Id: 83b05891-2c39-488e-0015-08dde56d608c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ik0zqYZg7DyoRfU0MNnxD05USfRpNCVPpulhB/hEXh7HvOvpXYn1BSVDppjs?=
 =?us-ascii?Q?AFVBqHdWrzktiSrgioTZtenMil7ny0MVjo0VwdkfvnkqxXwlchrL2uj4l7Gc?=
 =?us-ascii?Q?766TF6FacmWq6COCGh6e8dXBdXzoDQ/ELgtHmaROB+dCjLSNgEtwNBu/1Fn2?=
 =?us-ascii?Q?GDVLOpTZQLMU7c1unf57UerUJureVBHy2k5y5FFpPeNQW5WuUhbKLOs3G3/Z?=
 =?us-ascii?Q?a3CPI/v/7Uftx2xbfQT/3hKOsx+CSh5Q6TcVmRisJ653CkNCwRZOwWB/3rR8?=
 =?us-ascii?Q?kxYfQkLjsw7+WhLWJHmIwEN12C8EMxgOffW2xnOP7s7SsgyXoRTyCoafeGWA?=
 =?us-ascii?Q?ZHNu4gNXvaIzdBMywcV1xocR2G/mKNdVB1TDJ2pMMtGouBx1mBAsm+6FWc0k?=
 =?us-ascii?Q?h2h6SYIgnQNLuMTEknnte6JaNxlKZocFAmVVRpA4MAFvxeHIAQ7NSMfkkzaH?=
 =?us-ascii?Q?DPQtvrffbS8Zq2AEjxZBOLWVRU+EHMISU1keWhjIeRBKe96oBtaoJuBmCJq6?=
 =?us-ascii?Q?lEYrgQD86ujhJYLJfi710oJbevKxvdfyNn4OGXfqPTYWk19dg6zmSLvZ2Bo7?=
 =?us-ascii?Q?We/yWYwikO2/RJLD95xCM/2VsKZhRqmbTYpDqUg55x1Rfcu2Ns1meycgrP+s?=
 =?us-ascii?Q?u7m59OHrq3rEbnITjwCNEOk96IzGQqgYQYk4Kv3mwlW691XcUG5scKZ7ipe7?=
 =?us-ascii?Q?JlZ1QcIsb6qTHvpJOUBuUzZQVaMcBDtNxupnMrh+ULB1Jx/gflGBD9hFxJQZ?=
 =?us-ascii?Q?HNHuKkIP3xZ/xiZOZGb0KecQjFprpuXfc17+82Nz/Nb5IndtooY8YvSi65QS?=
 =?us-ascii?Q?BAZFEUG+tWlVrff9wXDR6alPOT54vQKfEO0ZG0VPz/NAeECFD5tCqNb3QDtd?=
 =?us-ascii?Q?4KS/MP3AZ5BRid/GnFi1xU+4tw3QnT5zciXhRxEFo6sgBY2S3rYGC7n7VaFW?=
 =?us-ascii?Q?PcMHxMQORwtavJVvvInfDHt9CYDhzK8KAlaKNOBqWtIEb8aMj+Ns51zjx1H0?=
 =?us-ascii?Q?tKWwQpinXc0/DotwaNB3842URes8moaW3Fwst97QdhhQsiIW84hTVpkcDP8G?=
 =?us-ascii?Q?+6WWlbtQsbKWMr31wea5KPj4Fov0OGlCfgxjK3jyjOxcQTPBW9A1FJdxjaAI?=
 =?us-ascii?Q?SI3LhE9ePGCiVfvykIMBJyYvhDB+s8SBHSKLPgfc2UO+Doyuu75v48b0+5UA?=
 =?us-ascii?Q?uOC2981i6deYcExfjkdofYsFQxR29f46kTNFGi9OBjVVdTR7YIPkaa9EQm3E?=
 =?us-ascii?Q?PEYT7BHDYVDCkoHnyCqJuQNae58T8QAEd52To803KGxddx13viwlJhnewgnE?=
 =?us-ascii?Q?TJFpk7dhNqkFsmtg2cs6JFp8k/JLibRGFJ6Y7eqmliG3AEIG9M6y3R290xyv?=
 =?us-ascii?Q?9N8exhDXALY1a1xj02eioFEEW/hLUwev2AGCVhbd8Z447nNzHtdKJHTellnH?=
 =?us-ascii?Q?x0mJwPFIPqU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aaY3KEb3DJ9FokTMcUSqSMuaQODNsTAXq0xj5ptt5Qm2CVFj0XdL5o1MvNIX?=
 =?us-ascii?Q?RKujPnt9lJyP3533cmUQd38oLv+y6SwzQSXBYC++SIyxK4Q5KnrxWxfwHxqw?=
 =?us-ascii?Q?YKRXoj/f/9VDHO4t9v7Cj/UeRSHpOJdMWZ6IGwfQFvUhwj3I3nUSx452lNTf?=
 =?us-ascii?Q?+R6t8cprfo3DNu22J3XxM/WdZVmWrtSY/SSm1s/cIuy3HSvNicF4KJN1j2qP?=
 =?us-ascii?Q?hSlTodZizgLSI5gqaqQ/Ylqi+Eeftnyri8FSiUJRezSNeXBir5GL8y2jq5Tk?=
 =?us-ascii?Q?vJ1vIMZqtJau5vqaEUcFPKw649g0vRN6Aj80IIkprI9e7WvcCbftg6wsjmLZ?=
 =?us-ascii?Q?/3tgWZvVa5jmInfPuFmFAy/tyQ0C/Lmiic04gRmgBZegqfwPLfALRl/Tl5NS?=
 =?us-ascii?Q?u18MhV90PiXFSJWfx97udZbniWH5k6HD+MGhd4hFr/IriQbgiszRB4njzGvp?=
 =?us-ascii?Q?zLPmOqfftHigyhtBGNGtyMF6Bi5uvI16JB9zil0Be2BWotQ/FYWRPKfdmaR5?=
 =?us-ascii?Q?fX3oMDiC78UPxxwXURszLRQljJD/zzma2PQbGZvIlvGFPbw+YBsPEy6ofQZ0?=
 =?us-ascii?Q?RQYX9vajkbgdpiOQ3HVRPC8MZb0UP7Dm4RM+LTncyQXhQJMEIU1Y33QEn+8I?=
 =?us-ascii?Q?ZABwDxEYd6BgvfCjM/LUsg1A6C+IpF0fwKvy0Q0xYPnlxqF/dy/1RZEkgVy/?=
 =?us-ascii?Q?7r6ux8PbmBdM0l22x4OsyJtOw2rwtmBNKVypVqaa2KBoAL3zjUx9BA992wVn?=
 =?us-ascii?Q?DkCg8HlQ2E1UYpjKpCszb/XUgzi3p7Ax711OWMI1aX0Ba+wJ9J0DPsJL8yWO?=
 =?us-ascii?Q?wzKXmqjos//zylnMFkf9a8dna10xku8K2ptFwemGvUCkSpS8Y14RuVSoYWKZ?=
 =?us-ascii?Q?q/32QrCpa7JFIpCafZhSq+EgvOgByyxCacd1xgRXb+5CXkZXQroEP4o4uXBC?=
 =?us-ascii?Q?usOQD5NkLweGYERNnbOjn97s9iJIxOKg4WBDLm8QkxU74FvVadeWlRr9CEFA?=
 =?us-ascii?Q?GuTvyGlT4Apqy6CaM4xc6N7LCqnYSpdVF6WHPIfYDXZWNlW1+Mtw+D5QmX7U?=
 =?us-ascii?Q?61EmVoOBCDvdLWhUKdDFCXuz5faSAw8/k5lEbCA3dQUp20Ow0gGMohuttahu?=
 =?us-ascii?Q?I5EeeBr/1iC5E9UzjklCfGxmEVDdxddKDb7l3J8Ri/5ubmflC2rP5u8Cfbr/?=
 =?us-ascii?Q?EnlNBi80natG9Bz5Crzx2lkkSuJVOZxdxB+DSSNcKsGUwCDjDUB/KgIpDxRE?=
 =?us-ascii?Q?KzmG13MoIm/QskSuFnBB5BAZ1QP/al4nNqxZBYcK7qH2w+t613J2XL4v0/me?=
 =?us-ascii?Q?Z/7t+D9lZnoTPJsPTcmix2KpDKW8h6IcrituAOXChLKdSck+H/s5/F1GO/he?=
 =?us-ascii?Q?PdPtPRnnhnU5Gxo2MfoSDu+xsGQeldwu8OcJWoZbCG+Nz2nACQo+pZbPlbMs?=
 =?us-ascii?Q?yEhxogj1KxMEFMHwGYX6meWPCHZ2Vqfp/qyPI/frE1c2EzTZeosOKbx7o5a+?=
 =?us-ascii?Q?esfo/JvMQz2bNNsvjH3ZG+/eoeP1EZJ+W+qkVIs8H8Wo77VeqkcvMa5i7Z+o?=
 =?us-ascii?Q?omP3PkgPJfcef9ejnv/g1xriZeydcQXr0BEILM6evDU21ZizZnp9NiLAmLq0?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83b05891-2c39-488e-0015-08dde56d608c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2025 13:26:49.3442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /iQQ/qhjo3CzM33bpaMGv8GeaZjBuvKGv89pGoyc2t0SOef0uERXr369JZQphr8f7CFym8zcAe1RSjWQFvAs6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5965
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

On Tue, Aug 26, 2025 at 03:43:53PM +0000, Jonathan Cavitt wrote:
> Error injection should use the error injection interface, and should be
> decoupled from CONFIG_DRM_XE_DEBUG.  Remove TEST_VM_OPS_ERROR from the
> code, and add error injection support to the function
> vm_bind_ioctl_ops_lock_and_prep.  This necessitates marking the function
> as noinline.
> 
> Jonathan Cavitt (2):
>   Revert "drm/xe: Add VM bind IOCTL error injection"
>   drm/xe/xe_vm: Add error injection support to lock and prep
> 
>  drivers/gpu/drm/xe/xe_device_types.h | 12 -----------
>  drivers/gpu/drm/xe/xe_pt.c           | 12 -----------
>  drivers/gpu/drm/xe/xe_vm.c           | 31 ++++++----------------------
>  drivers/gpu/drm/xe/xe_vm_types.h     | 14 -------------

You used the wrong mailing list.

Please use intel-xe@lists.freedesktop.org for these.

keep intel-gfx@lists.freedesktop.org for i915 and display
related patches.

>  4 files changed, 6 insertions(+), 63 deletions(-)
> 
> -- 
> 2.43.0
> 
