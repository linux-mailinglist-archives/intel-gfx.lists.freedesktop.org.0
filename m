Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE709B338D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB8F010E4CE;
	Mon, 28 Oct 2024 14:31:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kh9oa44/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A110210E4C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730125891; x=1761661891;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UmL7r23ieXt3vqfV/9LtbjXDLfHwMqClkG9pRkxqXCU=;
 b=Kh9oa44/syIFTA0wBF49oB58zCX9EhL1+yavqR6fpAnKdFWwaA9cZr7y
 U5f1lh1LKPgKv72BPeVyanXUmeJDo1THgT47+rv40L5A47tY66zkECR0X
 QjS2JbjV1e+f1QeZMbSq39scAmbT7EX8UnrOcD7EbYz1HP06QpbIAHObZ
 X3pywhnWnOKE/PO02DLD34DCbfJeKLqmAA5raIf1aZiFFKJpECPh4HQIH
 MXxmA6FEnyj+j2WXifgaZYCN/V90xxk6KON/ja3ejkoE9TfhWH7oc0Kaq
 AawznsMF9XMepKqu1JFpaEk0JCTPEggYxght+Ii/q6bajqd8llZGQrbSl A==;
X-CSE-ConnectionGUID: 9YpviQugRleEO04/suHztA==
X-CSE-MsgGUID: tMqWWzaQSQypeD/iGf18ew==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29181975"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29181975"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:31:31 -0700
X-CSE-ConnectionGUID: STBKwKHMTx6Bd0d6RR6oDg==
X-CSE-MsgGUID: v2PkK7/fTB2T7xV3Az47pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81694358"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 07:31:31 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 07:31:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 07:31:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 07:31:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ny2soaeyb+45MxoHw2bnYXmUc1JAokQNo9UVwz8RWKsW7iVLbIeirwftn45YsPKJHDnsckzW6iXZD/BtFLuHgbZBwST/Zr8NnrwbtlxQ5UM85OKv/SsG2+Db41BjOUrC8m6y1MxxO6cXC4qW3LrQjuTGcfnUYaLWXrLunVQL1UAB/qET9m5Y6DrsPxxgkoMSr11Zyc3WqAMQrWEV9wBChJxjIULV2eyftSQJfOY82PzBV/iH75UATA/o9IHYBW7wT+F6IssseLUTLijyNGxe4ju9V8fPimnUYCfuIoaWsuawzHMppQBBsj0EmptxBd3UCi65xJaVxH+Rafu5uTgxBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1CCEw18wW0HZdkuJyXta1Obq18vqb72OL3LVVYECN0=;
 b=fChdpTUHI2v4t02y1jQsKPTeQmjB3O0NzGfFtxGQATMfLYJzVymaOUvR2hf9c8atx80PcdmR3WcqqvSxF3//Dx5GASXkTul2jss351VuxShGILxNJHAecbn6WyERaGZR27S1tjE2IKu6wIHGWJNPB7wftxq0L6oCYCHpcRRGtHczYUfHbRIIsRWmWXC3BZmIdcC01iRk42XTIdNhH+6xfy/Xkz6c4czkxFKSCurvrlosd8wIhq1y1o4HMhanf5hrpp0aTArEN3wgS5fLmH7YF9G87/rdwXJjCjzkGy3BGjOF/Mceu0eLp9dRV1zWh3kH+xMg5GyLO28OT06kBWm5Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ2PR11MB8497.namprd11.prod.outlook.com (2603:10b6:a03:57b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Mon, 28 Oct
 2024 14:31:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 14:31:25 +0000
Date: Mon, 28 Oct 2024 09:31:20 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tejun Heo <tj@kernel.org>,
 <stable@vger.kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Schedule the HPD poll init
 work on an unbound workqueue
Message-ID: <vgkma7lsnlajc2ttvk3zrfzfqw4uclyjvjq3qlb54pmrcuolvd@7xdf4nzxxdcx>
References: <20230901140403.2821777-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230901140403.2821777-1-imre.deak@intel.com>
X-ClientProxiedBy: MW4PR03CA0155.namprd03.prod.outlook.com
 (2603:10b6:303:8d::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ2PR11MB8497:EE_
X-MS-Office365-Filtering-Correlation-Id: 66b243fd-c38a-4782-c09f-08dcf75d33a3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?NtNB1KL86Q7yQUdD/ZeGUMoYczZlTGgTET2RPQ0aruHSrUKljRS/6Qsx5qnx?=
 =?us-ascii?Q?MZeL5IcCZLUtXmju/gSOWzl4J/oEwGCIZcHf0PW4+Yjwc2vWn7TdliFXu3f1?=
 =?us-ascii?Q?lD18mdRMsahfZW8/D24Ss7c3VGVYJd5hJrIBnZN/2/s0/cysFlX7VyCuNkLR?=
 =?us-ascii?Q?Ru/BUw5WjWt0e+A/SE1/e/UyeevWBc9r8BgxtBhvuCklJnewPZeuJZAZ5YOn?=
 =?us-ascii?Q?UIxM4Oo3mVJNGx1coR56KlifzFeyUzJkJuiC1LMVau1RNbugS7ix2o277PXV?=
 =?us-ascii?Q?ReLtm/OOPBS7OKrcuNFh+eB1kybj8v9ph4NPqLrqVyn27RKWMHL3utCNjoUf?=
 =?us-ascii?Q?+O8C/3sbyON9Pt5dBtxNeebepWx2bi7oez17kapPT5tqj9csAFMqoFPx7xsF?=
 =?us-ascii?Q?0/c8XIzlPe7rXaPlwlQBmgYkfxlJCvLaoNXsXqHcU3hwevNWLtGKvFax1nb6?=
 =?us-ascii?Q?KzhIbhsnBQW7jeRAIqAiMeTu3llr5kBfn3qs53rscuRJS8RrqDrPIhWSJ/rG?=
 =?us-ascii?Q?zYRejO3+QJy6LAtZ+reymj0oUH32IT7dDKQSCK/nvTGa2dWGqZTn0r6mMXvC?=
 =?us-ascii?Q?CBZi0D0e1Q6BoFMiu5rYh39rLHFD4cBYbZwQTd2ibKh5VySVUW/uRRyIM8xu?=
 =?us-ascii?Q?PeANTacIvbLOjPOi9lISV0tL2VXOvazeFcFddTfJ+oNAweijSe/B+DJw4qh1?=
 =?us-ascii?Q?fgKMyu+97Efs5dXbfmFqAoHdZtPc80MVVS5JCmEXnMOX7rbfHJGa3o+3k6wc?=
 =?us-ascii?Q?yR8qm++YEb9qd647slmQEfwKGSjUbgfnya5wbD6wSi5E3MsY59rpg22DEdA5?=
 =?us-ascii?Q?hVl4MF9I4BgVf9fmgxjbtH8YfshlP6+61gmKmuUO0pCi5Y1J+lzUpTtoI6fg?=
 =?us-ascii?Q?SxRRt0MMczp3uWLZanj0308Weo341pebI/k7oBnk0Eb2zqJC9Hq/dbXORfSA?=
 =?us-ascii?Q?yR7sAH2t4TFL1XWv4ax4KZUPa/E/qLyxbcGWo2eTy2HWOL3/HKWzE0NnpYw1?=
 =?us-ascii?Q?dhv/zwgiaYiazM3WbBCeXpt3jphTGD/5EWmSGpARvfvDnmp76Py1zTs0AIXN?=
 =?us-ascii?Q?OrAqa5aT9CSwvKrToc4JUu509k+xKbkevcSgCGDUbrZoZnt6F0dUjJvXK7Pj?=
 =?us-ascii?Q?ga3hmiXPzpssru8jCPM/oJ4v7PXmqZ6H9Gr6AX24mesfRGoWkwg+7SwGb+0h?=
 =?us-ascii?Q?PLeWvgxv5PWI+ZJxfZhdSsGJp7fO9f5UGfGA7UEEiNQm1Evu4jEBzXBK90/g?=
 =?us-ascii?Q?jYbfa2M2yDgsZPUU0YQ1RaNClltleAXTjPXI3zabxg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vMELWajWAINga4GbFCDo3wZ6wRzMl4OH7U7Nn6IVFmEWCGJskjBPICBoTZIv?=
 =?us-ascii?Q?mPuCEnmwT9BjBl/mPoI0flpuFsoRovY3G7odoxGnSj6aZ2bg6QHRJiJMzXUG?=
 =?us-ascii?Q?4el2xdJBLSgITnYvKy+iY30/XxyeCNZqniMhotEE9T/l8LmmLqO9dqqd8INH?=
 =?us-ascii?Q?m3pxV2xLXzSbAi0f8NlfP8TeXlMGchgVehh44btIrZnwMRnOZ9rpiyfLn6NC?=
 =?us-ascii?Q?Yddk9/Edvog/xjZ3i0tvJ0Y1hzVSxYuLXRqqzAHmFzjtMETORSl8SiuNviiZ?=
 =?us-ascii?Q?tZCiuPjSFaDnUHaT1eMpMown0AMXS1iOf3BmKato9nl9tp/f5Ybt7Ktuu4By?=
 =?us-ascii?Q?Cz3SUep4/IODI5vvnRb5Jc/uy8pN7bEqWcTPVHTfnB4et+vqzJjV7HGPfz+b?=
 =?us-ascii?Q?yVjdOWWkbja3ohAETXCNVBNbnJGI2+3ZmCufC8TxnBz9cVjWcpkdbPKjzrgK?=
 =?us-ascii?Q?KRzPdVuy0t9sN4BXQl8xkrHEGhfwVW5G7wz/ICyFWSSigWmOoz385F9SUCjF?=
 =?us-ascii?Q?UBMQIOZk0KRTQx1S15fVBLZFI6JW8DYrzfAmCjEpIEh11g7JcYgPObw/Mt4a?=
 =?us-ascii?Q?TaNpt5r9Wqwe1KcuMH1j2MvrwukbhNEmyDSt4/Y7sm0bAcSyBqYfWC6o10ND?=
 =?us-ascii?Q?UJ3sLDmITlWnl7Q85Hy13iLLHHttQ8Rn69RddTy9mQtgDHmn4nU2VYH3QuKv?=
 =?us-ascii?Q?9C87THx2CQvvRT8X3Zvf+TD9WaReA5jSEuJBVxVTmn46auJNhmJn/UMdbd1w?=
 =?us-ascii?Q?yfETRlmCjvXidLZdPE4JXTu6gyrhLk69PfuaQwgcgbfTVd1bni48as2BilmD?=
 =?us-ascii?Q?5piNAIVYKRZeD6zVPX/Xus6ay/lmvSkf39dBnVPOQZKt9rgUQNJZZ+xjqHz1?=
 =?us-ascii?Q?8sUyv+HdQmPMK55BMvI0aw1wW2BuQBVc7Wq2e/0GIgygzhQonbKQVv4uU2hh?=
 =?us-ascii?Q?dspi8/mQ70AVnvBs4k6cZJ4ib69TPtUhY8OF4GlB972nqY745U+Cv/yEb8YE?=
 =?us-ascii?Q?KkVbpt3yaPRg/yAVn7NyrerQDnwqLhKmKZdQbZh1Cp7slvJssiX1laX+GQ8Q?=
 =?us-ascii?Q?mBCNXKzjBqhC2G9lkIrd4mfF//mmbE27R+/+c9b2zBOnSg32F87rGDkPGB0I?=
 =?us-ascii?Q?KeXczlyueVctLsFncmNkPqzgDD5kzIygqpRD35ZdmkXvvEyCN0xIfBwrKMGf?=
 =?us-ascii?Q?rakQxQpRL0C3ecYZaOh91GgRuSKJuNIzNLLOeiFeTLtId+ch3e2ZfmcqGdIA?=
 =?us-ascii?Q?q1bMZBsrhWpcdtAL14oQUOCSleY3Kq0zsxNLSwoLaNle2M/XtK0HVyOO27sU?=
 =?us-ascii?Q?gTDZZkgzgr0cNLgvapFhtHjBHEKlmpyUg8vXyzdeFMFGcRRq8PujpvJA9B+q?=
 =?us-ascii?Q?8bloqmd+e6LnR3rA97OhZ5pTGBN8eTKzyd0oSiRuaTvhuLoLeau8BZy9i4UJ?=
 =?us-ascii?Q?B33cMMYoh0XCBWnhS9Kt8iLi84ziG5TTcxj2/39RybHJDE/J6zZIklHXQzBs?=
 =?us-ascii?Q?EcgEgw0gd1bd9RzaAXeJox2CMRrLrfjsQ4uUUnxxUEsIgkBEqtrJxUUEMJVh?=
 =?us-ascii?Q?4eSozs7MCdWQw1RCh1oV1bQ630k/JBGAbLX1PhDt5lRjCPdVccv3KZvH14DY?=
 =?us-ascii?Q?Fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66b243fd-c38a-4782-c09f-08dcf75d33a3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 14:31:25.4414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lB9WkTYo/ID29ms88ARLQLhscaWEMgrsD0USnA3prw+CQyE/GiVHMOx3lR64LAATJRCNIPvsya4VbQ0ort5+I5CXUBnQD9jJeCUCwHXXs8Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8497
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

+Jani

On Fri, Sep 01, 2023 at 05:04:02PM +0300, Imre Deak wrote:
>Disabling HPD polling from i915_hpd_poll_init_work() involves probing
>all display connectors explicitly to account for lost hotplug
>interrupts. On some platforms (mostly pre-ICL) with HDMI connectors the
>I2C EDID bit-banging using udelay() triggers in turn the
>
> workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
>
>warning.
>
>Fix the above by scheduling i915_hpd_poll_init_work() on a WQ_UNBOUND
>workqueue. It's ok to use a system WQ, since i915_hpd_poll_init_work()
>is properly flushed in intel_hpd_cancel_work().
>
>The connector probing from drm_mode_config::output_poll_work resulting
>in the same warning is fixed by the next patch.
>
>Cc: Tejun Heo <tj@kernel.org>
>Cc: Heiner Kallweit <hkallweit1@gmail.com>
>CC: stable@vger.kernel.org # 6.5
>Suggested-by: Tejun Heo <tj@kernel.org>
>Suggested-by: Heiner Kallweit <hkallweit1@gmail.com>
>Reported-by: Heiner Kallweit <hkallweit1@gmail.com>
>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9245
>Link: https://lore.kernel.org/all/f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com
>Signed-off-by: Imre Deak <imre.deak@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_hotplug.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
>index e8562f6f8bb44..accc2fec562a0 100644
>--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>@@ -774,7 +774,7 @@ void intel_hpd_poll_enable(struct drm_i915_private *dev_priv)
> 	 * As well, there's no issue if we race here since we always reschedule
> 	 * this worker anyway
> 	 */
>-	queue_work(dev_priv->unordered_wq,
>+	queue_work(system_unbound_wq,
> 		   &dev_priv->display.hotplug.poll_init_work);
> }
>
>@@ -803,7 +803,7 @@ void intel_hpd_poll_disable(struct drm_i915_private *dev_priv)
> 		return;
>
> 	WRITE_ONCE(dev_priv->display.hotplug.poll_enabled, false);
>-	queue_work(dev_priv->unordered_wq,
>+	queue_work(system_unbound_wq,

This 1y+ patch doesn't apply anymore and now we also have xe to account
for.  I'm reviving this since we are unifying the kernel config in CI
and now several machines testing i915 start to hit this warning.

Looking at the current code for xe we have:

	drivers/gpu/drm/xe/xe_device_types.h:

         /** @unordered_wq: used to serialize unordered work, mostly display */
         struct workqueue_struct *unordered_wq;


... which is, actually, just display.

Jani, should we move this wq to display where it belongs, with the right
flags, rather than queueing it on system_unbound_wq?

Lucas De Marchi

> 		   &dev_priv->display.hotplug.poll_init_work);
> }
>
>-- 
>2.37.2
>
