Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A65447B7FF7
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 14:57:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 017B710E369;
	Wed,  4 Oct 2023 12:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7421410E363
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 12:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696424245; x=1727960245;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4tZVu5heMrCxckb2v6XqUm88qB6GSu4rzWVj2jHn3Kg=;
 b=MN4CX+uKT+nQ3TQsGUObrf1DkuQsyKjnBUr5EJzlETSumxA9YWsEbzsn
 1IWEpObpVVZSstB0o/S1GI+we9blfEUvnJlmZwcG5uSGpqaNvfPRAHqmR
 QprbsdDa0d632GCUY+ZLAxehqbNtywYWubQVIbejbJ614BwDExLOE2/oD
 tI2x9vaMX9EPRdC29V3b4bKEnF80hoZFm6zlckpiCrGiPvrXwpCxsrwKE
 wdpK1yFNmwES7wVYk/Jmfe4OSAErrtLo5NAUZhrQcvrj6xup47rlm56Jl
 BdZLkQ6/HT+AKnQferQhhW2BT/EF6eUIzZFCSOg4wrFGv1+jpoSWDevud A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="414076545"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="414076545"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 05:56:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="1082493648"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="1082493648"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 05:56:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 05:56:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 05:56:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 05:56:09 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 05:56:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ICPNIfHLl3lmsyP/06aB/tRhoBAXL4uYTWfjmkh5qBzF+vLpuh6yCmf4wXBGhee1uhKZmzGZn+LOPPV+RwuGSPm0G3KQYqAIuW0umjRIu0CIU3b0ciXuiCnPo3MxZnJl9g3/WlZtmqYPppChhjCa/guIQLS8b42PleH0LbOQLg+aKppBCJI57FDDBme5Jh3kgYS6Zq52dwfmGvoEpoXR75jK53aNJQeEA9kDV5p6Ylv80QsZjFKZM3FM+1Er/IRP22Hki+BqZd6qiJFk2kwDS689G6DUpmKstvAwEFkDcb+PbNZdIBWTZUR1P8vsSPV2A01m9eunKOxo/tmkEotsBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9VgRawcuKfjBaXjmc3/t9o+FrJI8hOIvyqXisPaGPnE=;
 b=m9cjHu3ICa+Lr/95rKRHVslT9LysTikkJOhH5p7qWUs//Tka9y8PZjjtke8f6ePVSC2Svy+08AUkdlSX6r5Yb5nl5lGqfeFljR8spKU5uaf9f3RYmyQWJHHG+5kxfJ44+5PnZji7l1fuE84C+KIrDl/leJFmMON8Mau/Uoq0EL9QIjqwarf2GAGUVdif6aJeIbNptSgajG8VI/AzrMOupHI8ZqSc4QbO5YINQPjLMUdqMSgFIPNG40yvciFbPKDApi7iiGrbi84wLS+8GS5e8MLWTpEQBUwny/UDrOckbBWBTbt/Bw090wsEv+jvrKIzD/CCKXDt+nlhgalAQwYn2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB7479.namprd11.prod.outlook.com (2603:10b6:510:27f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Wed, 4 Oct
 2023 12:55:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6838.029; Wed, 4 Oct 2023
 12:55:59 +0000
Date: Wed, 4 Oct 2023 08:55:53 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZR1g2e+gfdeJHad9@intel.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231004102504.497023-1-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR08CA0018.namprd08.prod.outlook.com
 (2603:10b6:a03:100::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB7479:EE_
X-MS-Office365-Filtering-Correlation-Id: 66c1080a-9c15-458f-bfe0-08dbc4d9409d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7OqXKSxykBefVf0sh9FzGNdSZor6wMNEn1c/cpTDiKP5xIbxb1nZ1BqM+b8Xm9DbMdZ2jM+YNpCzcHBviUAPx8hJNEDzpeaNGgRrU51KW0/ZgUJNoo74GL59BCNopScAswnQUw+FbvxCDtkshqdj2ymT2diUiJXDZ76w0tOXoYyvHA6obL8ZBUg/94d6NvmjV6Dq3R1HKR2MzSiqQ6pOmsTDY3CLRdMrgEACwdUhyoFHo7s8gv1Gacq4FmMJMzOQdqKDJL+3o9tZwPg/SBi9IFtkzbdEmwyzOjzDf7NkMsoxX5wqQKEMvvFh7BbxEQaqFlZWnzYfjUa1Ohd8wHizJfQlf2oqCGcJEDRXmCnDz8WrzDoFQfr5NtzOfPzoGsYgreF5u+HO/YjbzjDjeytV5MXNO6O574xotcXC9npXLW4ARzoZHiW1IwS5lshj3JGNQQhtiBGvFt48VgM8QT+2HnvN5hedpWSr5clgiDWbI6VucvDg4vH5+MBrQIJAFi6bqtaEZCxY4F1NNcwy96dvULY/djTC4ACl0yMc95rSzGQivd1NoFATFQt6YKJd4+6SuDOPfxa4c7wwKdMJ0ppXL80/lpyvxZHj7lmTQijgKS1YZIiNjkRZKrO5vb6wF7WuE7ub8i40ic9JYXWfYLOwBQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(136003)(346002)(376002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(86362001)(36756003)(83380400001)(2616005)(15650500001)(6506007)(82960400001)(6666004)(6486002)(26005)(2906002)(6512007)(8676002)(8936002)(6862004)(4326008)(41300700001)(66556008)(44832011)(66946007)(66476007)(478600001)(38100700002)(6636002)(316002)(5660300002)(37006003)(21314003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A5eQ5/DisLwOVZ1x+j5NjbeROnlZSn00PLy6YW0P1XAKttoqq6joCDqTQ90x?=
 =?us-ascii?Q?63GaFat2dwRXHZh8D7O+4g9ocJcDWGyNPHDMgTCUUNDgre1RItPwHYVaS5ED?=
 =?us-ascii?Q?qa4rHZfEg5XIye7z8NtstyuzWMk10yO+fi9k8p90X1Fg8pkrzk9QcNrCvtXp?=
 =?us-ascii?Q?cdkh9SYmtxr23V8L81annLj0Sc4Q3gZpNmgPTaKqCYCJxp9hZnwBoOJyZXyb?=
 =?us-ascii?Q?PmwiZHB8AdJHFwaynpD/zLLJeXUw63s8Vr8cRE0DI/4xy5pHJqMhXUmQMsZr?=
 =?us-ascii?Q?WqLTVSfi5UXnXcQVGeH6n4BEyzZBowqoOEhRchPvSI9vQaEE+XXHus28Q4A2?=
 =?us-ascii?Q?V9L7DjSkfRZOKhTnAaaHEGM9LVSqq6LtgI53CheOMIMSqNTIIazVP3am+9ZZ?=
 =?us-ascii?Q?9/uNqYAbk+G3ZsOQ0XMsF8wQ7im6EzP/yUmTkUPAqtbSBeKPjrkhIVXpZxcp?=
 =?us-ascii?Q?qj6NEd3u5BXhISM2KaNDp8ellz+fY3TxjRGXaX7m19qvrMGizgqi/t61IONm?=
 =?us-ascii?Q?mAi1ITuEuw+Qwyn6fcKhy863xalghlHBUaezArN+xyGGhB40NcPsQo311GEM?=
 =?us-ascii?Q?8vX3vIWi01w9wp6rbRACnMAPSnLTQ5i6OoV3lx3emirjJF0o9sokRWWMoxf6?=
 =?us-ascii?Q?qY4zyynhCssCL/Jryq2qttYHBtMC2LV3KlMEqDvKGSpfzxCTvcz0DU9/Pyg8?=
 =?us-ascii?Q?JnhLB7KLt6gqYOL2BGP9PXNG4YsNveH+hmN1ZnUeOeIFr5+Ak7gCkpK4S+eb?=
 =?us-ascii?Q?1X5xOLQEBUY708AqkMy6hVVVUy7CelfQBulQ7dJZEGPYQYUf2aEi+q6ns5uk?=
 =?us-ascii?Q?zyBs+dqjKERSyp9a0l0ATSPMh03aQdSr39xD9mG/FGQrsipYSMJq/b53Iray?=
 =?us-ascii?Q?UIRYZG5aPkWF4fHWOpOnXu58/FZuMwp90XUHPJTr6ED2DPkkPqXeHGiL/bvQ?=
 =?us-ascii?Q?Xnji7bC20frEBGCqPuRgrLIdeEvU3lXuCy/7YPXS02if2/um1qnYq5gE8oYt?=
 =?us-ascii?Q?DkaQAUwiYVNkvlOzX539DKgGULeBvAgoCT8cBamXs8amriHuBQhfRqJC2wWZ?=
 =?us-ascii?Q?meDdMK94U7Ht7i8noy8k8/YSfQlyvoc7IkLtlQTxwyB6yedYi0Rlnt42bLBi?=
 =?us-ascii?Q?rkTifIFWU/BH5aN+4u0KOHju2hfu5I0Lhj2OzHdW2dTm9q5keVqmbNHhJw9+?=
 =?us-ascii?Q?1nBpSclNgZl21LPBDfiIfIfRPgy/9ACI2wvAu9VvK6kPhMal7QpIFtBlUb/P?=
 =?us-ascii?Q?WqzDGvjzKB66xtApK1AFH09tg1ywB/oA5PSWgSHHjgn1AZR2G7vB1njTVBu5?=
 =?us-ascii?Q?UncDtqmkmazmrjTaqOyNKwMIzKiVD4D0W7ZTCD0BhW7tK2Gf/ygsZXexqK/H?=
 =?us-ascii?Q?p6x9X3pcX43ycrlS5APK4inrYQKHGbMdahSpuRbOitiUXiqcaqNH/yaLm/v4?=
 =?us-ascii?Q?VeABlJKCT84A+LZtyW9q8MKMRYbFqFsNRCyjJzJ5/jKngmCpDOcdbuTsFvtr?=
 =?us-ascii?Q?qwdEbz5XvO98DjOIbpwHmpkFAeVoXg8e3VGAIFMEyWLXvNsBS/mDe5kShDY0?=
 =?us-ascii?Q?09KcZtP3Rhqu+z12nmjzjvIwE4ycjd1Ug4jb2yK0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c1080a-9c15-458f-bfe0-08dbc4d9409d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 12:55:59.3286 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tue+ZR/ak3Nzm7A/fe7PV4MmypPAw/1ObM2zpTB0HS3LoIQWa39ZcJViREPJ7V05Po/G96ST7uzexcvs2gVFrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7479
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 04, 2023 at 01:25:04PM +0300, Mika Kahola wrote:
> Every know and then we receive the following error when running
> for example IGT test kms_flip.
> 
> [drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
> [drm] *ERROR* PHY G Write 0d81 failed after 3 retries.
> 
> Since the error is sporadic in nature, the patch proposes
> to reset the message bus after every successful or unsuccessful
> read or write operation. However, testing revealed that this
> alone is not sufficient method an additiona delay is also
> introduces anything from 200us to 300us. This delay is experimental
> value and has no specification to back it up.

have you tried the delays without the bus_reset?
have you talked to hw architects about this?

I wonder if we should add the delay inside the bus_reset itself?
although the bit 15 clear check should be enough by itself and
it doesn't look like it is a hw/fw reset involved to justify the
extra delay.

well, at least some /* FIXME: */ or /* XXX: */ comments is
desired along with the messages if we are going with this
hack without understanding why...

> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index abd607b564f1..a71b8a29d6b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -220,9 +220,12 @@ static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
>  	/* 3 tries is assumed to be enough to read successfully */
>  	for (i = 0; i < 3; i++) {
>  		status = __intel_cx0_read_once(i915, port, lane, addr);
> +		intel_cx0_bus_reset(i915, port, lane);
>  
>  		if (status >= 0)
>  			return status;
> +
> +		usleep_range(200, 300);
>  	}
>  
>  	drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n",
> @@ -299,9 +302,12 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
>  	/* 3 tries is assumed to be enough to write successfully */
>  	for (i = 0; i < 3; i++) {
>  		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
> +		intel_cx0_bus_reset(i915, port, lane);
>  
>  		if (status == 0)
>  			return;
> +
> +		usleep_range(200, 300);
>  	}
>  
>  	drm_err_once(&i915->drm,
> -- 
> 2.34.1
> 
