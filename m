Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3420E9046D8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 00:18:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D42A10E23A;
	Tue, 11 Jun 2024 22:18:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JTcct3kh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0608F10E23A;
 Tue, 11 Jun 2024 22:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718144327; x=1749680327;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+BWSngZWvZJpbqTrW2V/l4t8NaaTqqRqbd7pZtxO1Dg=;
 b=JTcct3khnv1KlYlPuAfAkRlH1z7xxvdDWdIY7GOjxoJlC+KKh7PtBUm9
 ZBaF7Qkysvt8kz8Z06tOLabZRLB0QChu6TYZcd0ZyxV7QFeXPFI7/4Dn4
 9v2NyeRV0Y/4KE0Bn0PrfKanLNC+48kzM0IAd8A903DKGF+8bGISIQsFe
 MpwU16LeL1Rom4jUSnxDsZGgUWlqcczPeiQjvpP59w2fkca5iDqSgErmo
 bhQsqGFa1DlLgBzxeo9iWu0RXPIXIPV8aEJy0pgfuDAWPG80SkRBpRAAD
 HMTOJFq1cS/GlkJOP26Nb6/6sRHE9rexSn+Bb4dTQv156SHcWzy8CtLng A==;
X-CSE-ConnectionGUID: JTVXiuz2TsSQGr7oRRJzWA==
X-CSE-MsgGUID: i3WRArmRSv61qTTzw32vMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="15011264"
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="15011264"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 15:18:47 -0700
X-CSE-ConnectionGUID: SuWcV+/HRUK5lx+oDYXMuA==
X-CSE-MsgGUID: UZNq6073TcOXS1+bcJqACA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,231,1712646000"; d="scan'208";a="39440665"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 15:18:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 15:18:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 15:18:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 15:18:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J45WxTtSsqWWODOwlQlmXGbAdMlwwSAFvBV/9igPZk62EtbE1gIi9ad+7m04kLzXHZ78IcQeOhiF9AoI7rlbNLYHPdbXX4Bq/rgpY3Blk3fHdOIXUz4sYjOu3o4h+KOztOeCBGTiD3sasWJxk3MjcwZhG0CEIqLinGS2vpjaCOcS09wb967bN/VNvFsqaFPOJ0KKor3ykPp4N10o+a8CWWybwYzZU+7A0BMHJE7bwyokJv2zuEelbc6y8o54hGeGEWjT/PFlVzzJFMIszBGLIKcrdi4TRCcTktipFrUmuAJS3y8gJmuzd+aZHCemvH4xnHfg55ZP9x9EZexTv6UaxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7PI7qQGgq74OjlzSHji/ZCGaXpi4uOpcU9UZ8hilFQs=;
 b=OzFnWu0uY2KeQzHdcGiOrmKz1TJ3Rh1i2M4CkABPmiWvjxcYia1wzrSkHNTI56WkLf7p65AiK4H3xfUZ/Vr/nvdmY+NX37hBdKeMo9TCaKmU+JUfBovj8EDdNYBhE5C9B6jpirlIWqLgZBktHiO8dHnKHMg2GJJJMdzr73tXLFu0QSBNXBXvQyYwi+hj4AYO2BLlRZXI23DUhbo4daP8957O0UtCdDEmtXOsgow4galcwsPrEk9hV9Y6hl0JNnLmVVvK8gmwXFnV03Dt/NkotdGX3fNqjRPlExd7ssxqD5MOfrcQa9MLYJP6XXpwQBNGjqYULIgnO4P59nMroC6R9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7655.namprd11.prod.outlook.com (2603:10b6:806:307::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Tue, 11 Jun
 2024 22:18:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.037; Tue, 11 Jun 2024
 22:18:38 +0000
Date: Tue, 11 Jun 2024 18:18:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Tvrtko Ursulin <tursulin@ursulin.net>, "John B. Wyatt IV" <jwyatt@redhat.com>
Subject: Re: [PATCH 09/10] drm/i915/guc: Consider also RCU depth in busy loop.
Message-ID: <ZmjNO6-4clY9Kx5d@intel.com>
References: <20240405142737.920626-1-bigeasy@linutronix.de>
 <20240405142737.920626-10-bigeasy@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240405142737.920626-10-bigeasy@linutronix.de>
X-ClientProxiedBy: SJ0PR03CA0098.namprd03.prod.outlook.com
 (2603:10b6:a03:333::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7655:EE_
X-MS-Office365-Filtering-Correlation-Id: dfccc52e-8993-415d-1c4f-08dc8a647178
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VhOGmb4U2oW6QTRF94otIv7UNIJO6QNJSQ+UtkyZZNpVtrRA7aEU4aLvoZAH?=
 =?us-ascii?Q?gcT3PrC+Yf4iuf4u8e6wq3XaF871ax4yRZoqVS6Wq6WSKUljhuo8W8EoSft0?=
 =?us-ascii?Q?jhR78orI5rCJ2uRjc4xWHA58LbVJY2yoEw2bf1JQco77jlyEza1ijLKtEvBI?=
 =?us-ascii?Q?cqH5Z2WMavy8dfJhBrTen8E7rXVWIRrFnPk/scqipK8B6fTzcIj+Qe0+dxj0?=
 =?us-ascii?Q?ArNS8N2a3IFwdKowUvoWGO2ycM/LrBQeYAhHgTHtuLi0RKDMAhWPDiY3Oy9B?=
 =?us-ascii?Q?bYxqm9uMZjBvq0U0vdMsfSakZGuEr9DqxolFWB5qZnnL4KY0rndqkteP64Lp?=
 =?us-ascii?Q?hIuu6dXJa4GiZBZhVNvnhZoBoNKgGuwqb18zJP+azd0MBrCbJQCHTd8HTFQh?=
 =?us-ascii?Q?o2HqHlvT48Wy3pki1w8QunvaBc1qcvpGaZTHDKiam2wvt1YO01k9gShm382B?=
 =?us-ascii?Q?E/1bots8dm00uJ5+sJV6HrslFQGuQBdNNiRgW93f/T9zP6bRTjPjmIBsYaYW?=
 =?us-ascii?Q?TbZoTOTTq3q9cYEpgna/IENfI1KM0rbeF4ODQG+hURqPvJvuerrUxghR2yIg?=
 =?us-ascii?Q?20usALnVxQLATVkqERU+2wAowVN9sh6tsUbd5qfN8VMtws2jr6VPNcmO2wze?=
 =?us-ascii?Q?CGWTR6mzrB7Gbn+TEpg7O5FACnY7mS/Yl6+HylS3hac3gYPQdKWN7qPdHgtx?=
 =?us-ascii?Q?SckW1q1t7EKNSiu6qvp6B2l3yeASSU1y1iWcNWn+z+h/hGzVhlCueZcIm5Z/?=
 =?us-ascii?Q?Hx8Fn5xEZwDnz21lMXxTFSs65VkYd+hGESss8CEIBtC5VhX5/EUTJpMhRdff?=
 =?us-ascii?Q?o9otHg11krl5RrnOl8d6vi3RSJ7MqElbVgdY1XRYADSxCbmYJjigBGKwm1Gi?=
 =?us-ascii?Q?74SryCa0IVu8bjZ5At+SfX09Y0iPj1voV/sdCNYmf13xclHYBSUlrT8p+LXF?=
 =?us-ascii?Q?+HRkieILmtEfZEmOCsIBPCrFqUJ2lLFWpRlHobr/u2ueAafdw23+5mlknkjG?=
 =?us-ascii?Q?4OcUg/jhKQp38oxeVMUiAsOURf4toXG3t+JKG/u72DTyJ/gGFNSjGrtEqZUB?=
 =?us-ascii?Q?BsW5UsENbL9nKL9nZAx53t3Ksir4NrO0KDiN8C/hjk8E5O5TSa+pXGqKhdED?=
 =?us-ascii?Q?MLjGO/qN2QHYEMHyqIp768zmex9Ab/3h146RMA5x0sV6rvFAbsFa8X3xTy2F?=
 =?us-ascii?Q?rZkzOyGcj7Y/JB97mTC+SQh07FPgHzJe/AUbMjgTGWlLCIb/ROSJwYbv0SIX?=
 =?us-ascii?Q?TsV9ulGrCo6henpgfxK0m9ZoJxTp6UNvukRqioO8ekR2nQpl+YHaCZs1xg+z?=
 =?us-ascii?Q?mLs777/zLtCKkI5LIRZYYPIw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7LozJsn2jaVsRBI6sntL7vuClM2nOdMILMS4pgMKYEDC6axipm5VIP5bE3sk?=
 =?us-ascii?Q?PHoOJ28iGZB4TmVHfgC8Q9GL7KBHjMKb21kCfNK69r3EPzxooepbKHQk3fFl?=
 =?us-ascii?Q?IBDpA29I/RM79Llo20mQ5gEAkgeYFjVQcft0brrlzbMZGyMqrGlvtPKoO9jC?=
 =?us-ascii?Q?R2dnkUnZFWBJWx/2/MJi6jstSqhFmHvcxComJRTOX5gIFi03r5rq9jEnb/mK?=
 =?us-ascii?Q?fKoNsnuOnHscgHnYk/mQ/AorzvVBk0pic5FoIefPV9amMWDOpgR4o/JyRrIt?=
 =?us-ascii?Q?kl4z/qFVtqdsKkZadM5PTTHLXr+QnFuAeA33LHvN99U82BiweyCTY1ggEv85?=
 =?us-ascii?Q?Sxe8/TS3k9lHzJKOkYQoF+ReLw4ZPPhx7Gc9oP+BcaFDvwsQOUwhFQovTwzy?=
 =?us-ascii?Q?mnKkucLDrDtI0xTsrolaq+/Ea7wNtuL/n2T30xJ6Ewksr1UnkqDjiCSKHGNU?=
 =?us-ascii?Q?z4tGvc9o7UNa7InXbv3OPSwOwmq+Eh6dItpgohJp4CcGXTWHO1MBsjje2a/g?=
 =?us-ascii?Q?iPnPL3HoU6+nDb16oWkCBI5HHoHkyKIJI0qYHduK7i5fTLruMF4c4FXQ2KW/?=
 =?us-ascii?Q?YR0lcl9GkF6Gr2dWj//tApPbQKuD7aLzFT+cZ0FIalGvyp3jl1xJIkPht+Oq?=
 =?us-ascii?Q?59AsZTsGEzW+21C6SDAma5CWfYU4FqHfnEOzZBdyH2UI2J2vc3AVbZkGYHqd?=
 =?us-ascii?Q?8/EH3epVZbRlXKQXeHNtm1C/5/6uN7umw3oxTgQLQqPvSQUCHKIX42dCXtT4?=
 =?us-ascii?Q?/iTRNYfDhGLAyPkeCPAr6ggciNUEvZw+jxtX7rXf+1xjSRm/gfCc20DMyjnw?=
 =?us-ascii?Q?KhM3KGTcqXJdnPo76uXv0K/Q4+h5ee/JZhv2OPW91K9Hw9AhvhOGdC4Hp1vE?=
 =?us-ascii?Q?N2SmjgFahHoWLJRmLL52JOkn1kcZcb0NguSZjhfJRwInlkOMHyFhBhVKN4z0?=
 =?us-ascii?Q?aVW3zGPy4vUNzuZMHHTvAEDzOom6lR5AOXnvH3Wt3N/D24WWXz2uBAmn/uoF?=
 =?us-ascii?Q?bENRj8s3ezy4VdmQRHa2UycGNr/ipSZLGlkyPEZs+i0VCyRdAI9W8wZidzXV?=
 =?us-ascii?Q?xIzlDD5ybaTxMVw36zIMfsRa/KypKi7E9Fu5LeNbDcX05KVkpW1wqoZc2Sk0?=
 =?us-ascii?Q?4HTjOHNQrY3fdAKwJ2Rk05+X4OABJW+rfqLs4aqeVos5Nl9GmJZO+jm7yEII?=
 =?us-ascii?Q?+NsH/jBE4uqxxF8oH6wj68UQXDb4qBa9DtKfb6zwKIGq50W1eugG27ETucza?=
 =?us-ascii?Q?4r1ngsmUElnyhFvOhDSmyV2p/6JzTrooUkN49ufZjcu0Df/TYrD7YoFDKqDG?=
 =?us-ascii?Q?3xImWwZT7qQF82GzXSwX9Zb0VEXdITB2TAacP4/5mOUK6q7vD0jwDJMfSdy8?=
 =?us-ascii?Q?2x3HiL5wwFwOorP1fpbEPoRU/dKeKFX0WwBo4wzdd0WOCN1J1/8yLK0SNovA?=
 =?us-ascii?Q?UwJn3Nj9fwIhFtaySH36hGmSDUPFUMv/iFQm5OwqjYaVn3bXo4zu/7KWViTW?=
 =?us-ascii?Q?pmxgH3FnvQ0Q9KXWk72tIzRJJfrS4YkBstFA+38WTyY1/6mN8efXctggzoKY?=
 =?us-ascii?Q?+ieeSVamwwCZAOLuqdnjwipHAQLs8fEGbWjGAu2U?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfccc52e-8993-415d-1c4f-08dc8a647178
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 22:18:38.6981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OOl33xYrQLuAJChlGpsv7/aRDaIxR8rxVM9X1CVvwriUD1P9kUZvEkW5npWMN12uxIIKOR95Jb+asyCmPMJWiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7655
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

On Fri, Apr 05, 2024 at 04:18:27PM +0200, Sebastian Andrzej Siewior wrote:
> intel_guc_send_busy_loop() looks at in_atomic() and irqs_disabled() to
> decide if it should busy-spin while waiting or if it may sleep.
> Both checks will report false on PREEMPT_RT if sleeping spinlocks are
> acquired leading to RCU splats while the function sleeps.
> 
> Check also if RCU has been disabled.
> 
> Reported-by: "John B. Wyatt IV" <jwyatt@redhat.com>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index be70c46604b49..387cc1911302f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -360,7 +360,7 @@ static inline int intel_guc_send_busy_loop(struct intel_guc *guc,
>  {
>  	int err;
>  	unsigned int sleep_period_ms = 1;
> -	bool not_atomic = !in_atomic() && !irqs_disabled();
> +	bool not_atomic = !in_atomic() && !irqs_disabled() && !rcu_preempt_depth();
>  
>  	/*
>  	 * FIXME: Have caller pass in if we are in an atomic context to avoid
> -- 
> 2.43.0
> 
