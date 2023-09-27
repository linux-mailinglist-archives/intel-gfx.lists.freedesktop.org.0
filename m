Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503237B0D31
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 22:14:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FC3C10E5A5;
	Wed, 27 Sep 2023 20:13:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E211910E5A4;
 Wed, 27 Sep 2023 20:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695845635; x=1727381635;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WZbWkeb2PwDVDuvmj4BBGOEJMaaaoqJwF67XZAV2Pxk=;
 b=cE4DmCPwSltD2TJKlHSXYMrIjmu26Buo4G0eWsIGfwjCBrJQbr6esV6e
 ukv+YbSX8ShGMIZw1VfSy6TeCs5TJ1W4PcpmgRpYRKt3L1jD454rw8Fuw
 qviRLENEg+g63xCgbnD1cwnVsdA+Szy44OwzklwbN1gTKhdaQDwiImWc+
 ZvZwE7Ns0gMud+YoG69qbasR+ewtur67asg2F1he44gK5WR5gPoaqPTU3
 EyMylY2cPnmjEBX2n1drmsFuV/2DBKgNxuBaPLiqY87HXIk4XEHvilQys
 QDKIETTyj8kF2Eejr8Uwhy6wGcLFCQDWjCfvaIWTtLuCrSZNf1rXHYcO/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="366971493"
X-IronPort-AV: E=Sophos;i="6.03,182,1694761200"; d="scan'208";a="366971493"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 13:13:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="749346511"
X-IronPort-AV: E=Sophos;i="6.03,182,1694761200"; d="scan'208";a="749346511"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 13:13:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 13:13:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 13:13:54 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 13:13:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 13:13:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gCJJfmaympCLopsWnyo+BNbmcEhPMAGqFRy0ji3slty9XNUkgpITLeNHWAOpIaC1yCQL5xRuOob5kLxk4QWA7RWp0c86uyyHOMEWDcWDuwHUFyZjRXSkEjmKz85oRHDgtu9cu2cAWeVmuAe3LJBHi7ZYb3zPQn0W5YxniH6qboPmrySA6ClHAME4iOlLIe4iIiCDRDD87+TWg/YfzgWnl/7mgjnS+GAkULUY6uWhUTVEIDen4UDUH5NLAi2+CPw1CeTHFa8nVAkPq64n8tGE93S5HF+tIUSOOZUXH/Z9B2Qh6GuzZBCZKe+QX6ip1qEDMuzrnGScQaAnOnKK5kM2CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4GV6gw3/OD9m/5rWDOMjT3fdhxXckI8UatwjAya6no=;
 b=Gd3JdG+OmJmjUdmsDhhu0fU0MTyb+QNQVBze2j7D7NPEwzcsZoVUZh3eg88J8geVHJ8ZlSJVjArwDcoyuzrytHzBi1bLDUFp4Qu9PQVxnj2SWR7LJsPsjm7P8O1ERqaWHVkbPnkZcKeUIe5S26S97otV0CVP/0NCGAQYQH5hyzEDfbfEQaGsPExrfBS0ppZ+jY5+AFvm7Grd2y9hfFXwcHswv18UrnKT1zqVPuVfhtFECSjl9q9HuvANi6x2zqm3jrSRtHD0paziy++UvgTY1DnbPJ6Dfw4lmN8zVycLzK379czswAC3SdMnhpC8J7ZGPhh6j2LnvD3fB2KuBFMuUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA2PR11MB4908.namprd11.prod.outlook.com (2603:10b6:806:112::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 27 Sep
 2023 20:13:52 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::a51e:7713:dd10:97da%3]) with mapi id 15.20.6813.027; Wed, 27 Sep 2023
 20:13:52 +0000
Date: Wed, 27 Sep 2023 13:13:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZRSM9hSf71QJn8Pw@unerlige-ril>
References: <20230922134437.234888-1-tvrtko.ursulin@linux.intel.com>
 <20230922134437.234888-4-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230922134437.234888-4-tvrtko.ursulin@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0116.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::31) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA2PR11MB4908:EE_
X-MS-Office365-Filtering-Correlation-Id: 7796e8e6-5c69-4dc3-b1a0-08dbbf9644c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UmFeSubxToXqyyA8Acjhufh2ujtzCZDQ8d8Xy5Dyfk6uQVaKd4Ago3l9ZMwIvBMsPS4yTeTDLtbFpdxYw4Q9YajGX/mC0R0FSIg2iuFmHUooPCogD3PAM7UHnQnajjv+ZiaaykCHEbeSMbOldMYGz+7PfjUEWU8pV03CWnD5xx2DJroM6JJ3RD1mcZpe5GAwVrLcUOFuNkmjQ5iIOg05RXTOXiWgRLR8bFOlujb5Eg7xW8LQbmpFOw7kCv5H6vAIq5SeOF6Spg89uqHrlQLhxJlN6rH4h7dJKm0ipzq0OOcywIqWjm1OTAZDky/6m6mIb3yli3OtS9Kffyf911wsvYKGpu7gfz1ZwEzWdStLH8AXTTdWspLzSAvCzkXOSdXg+Y4dt0I905TYFYTxBohOnerGktYF+vLoJTKFn+tcRwKqDZhkPFhLXZDjc8lFyX358+6hubrKQM9PITxaURpmSh+slzawwbFhBA+J8JAIdiJ72NJ5HL+h9FkBukCdIexU+IZLpduiYRTie61+L+Vz6qZiQ6qUtBemq0jv+BL0qSI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(396003)(346002)(376002)(136003)(366004)(230922051799003)(1800799009)(186009)(451199024)(478600001)(41300700001)(86362001)(6506007)(38100700002)(6666004)(966005)(9686003)(6486002)(82960400001)(26005)(83380400001)(66946007)(66556008)(6916009)(66476007)(316002)(4326008)(15650500001)(6512007)(5660300002)(2906002)(8936002)(33716001)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDZqNnAzT29GK2xHSGMvN1VuSUQwOUV1U1J4OUh1bmRLTncrbVpGRDkrc2FE?=
 =?utf-8?B?cVE0b3lFcUhSQldxa0N4UUhYMmZCc2U5RDZ2M2RHMnU0Z000MTl3UUwvVWlD?=
 =?utf-8?B?RHRqc1h6cFlDSUdWY2JTdTk1YUkwaW96ZWlqM3Y3OWhTUmg4VWVtQnBtbWRX?=
 =?utf-8?B?TUt2SGJsTk41N1pvOXJjUzI5VzNTaEkvc083UXNyMU9sQ2VhWnpRMWRWOGZu?=
 =?utf-8?B?R3ZxcWlLTjVrQnkwR2JRbjgwdUFLVHNmMStzSzIvUDAyZDlJUmY4emVUUXlW?=
 =?utf-8?B?QmpKU1MzV3Bsa1R5cnFnV3BkMDBPM1UrL25ZYlo2UjYyNXU4Q280U2tJcDRQ?=
 =?utf-8?B?RStPMGpZUlAyc21YMEVoaTBPSUhNS01sVUNGUUxtMzVJZ25jb3lZQmJpa1FO?=
 =?utf-8?B?aFF4c1JCZHhGTURUZ2JSTm9oQ2x4MEVndk1ZT1NGdXU4c3ZvVGpZVmtra0gy?=
 =?utf-8?B?MTBYd2hydlBVZnZERU5OT1NCbnpDVG5Jd3dBZGlnNFhvSXByQ0JpM0wvcUg4?=
 =?utf-8?B?UU9Cbzdsd3RvUGdBNHlWTG55OTJobUhRbXBPL2p2eTlFZG43RStwQ3N4SkZ5?=
 =?utf-8?B?SEpDdlJSZytRN0xrTWZwN0xEVWREdzN1M2dyWk1wSXl4NitKdnkzbk8yZzlW?=
 =?utf-8?B?VlM1T3lXVHVONnVZT1A1QjFIYkgxQ0Iyb3pDd0dCMnJxVmZ6UlRtNG9yNjBQ?=
 =?utf-8?B?RVIvMTFoZzlEaFRtbWVLR2tCamtvZmhWZ0c0eHRjUzNnT1N6T2xhWHBRZDAv?=
 =?utf-8?B?VHRiVXdUcWpHTmFTczRTWVA2ZkdMQUF0Wjlpc21YTmV3aWNNbGR5bXQ1ZnVz?=
 =?utf-8?B?N2NFY3g4VG9QVkhXQ1NXWWdlUEpVNnJScVRKYVZmZlIyY2djaDdsTXNJdFlP?=
 =?utf-8?B?bkZieXo3Q2xXVHBPZ2I3Qm5xSnY1SXBNVmJTYWZmd1VTOW9XTHZHOUg2TU03?=
 =?utf-8?B?bnU0dW1MbzVwamQ3ZitQTm9RUEpPRGZaOFBoSExUb2ZMUSt5ZEcvTnIrMU40?=
 =?utf-8?B?REtpTUs2Q2Q0NzUyalVjMFN4S0dsMHd3ajZGOUJ6WWRFK1EwcWVVNVpTVUNE?=
 =?utf-8?B?UENVTnpRbnBuTFRXeC9OTE5VV0c1aGFrZDd1N2pMTlB0bk5FSkdlYXVqOUNq?=
 =?utf-8?B?dkNWaE1jVHlxN010UXNFVkNaVG9aNXFZWkJZSXl4YzRqR1g2UEtSUnBOaTBW?=
 =?utf-8?B?a0ZVcU5EN1hGRzFLdldhbjlDakZkc0loQUh1YU1oSGs4WnJ6U09ZeXlqdjlX?=
 =?utf-8?B?QjMwZ3JtbXNhVVZ1RUY0Yk44eUYrN3R4UC9oMExnV1daM0s0R2NzRkVkekJt?=
 =?utf-8?B?cGxzTmxPUTZWZllSTko0N0taR2tzNU0zMHZUckV6azNwL2l1cnJZMHYxNW9K?=
 =?utf-8?B?QWJaeE9PaFpGL1JXa0dtZzR0Q09GanE5UFhRNjgwUmNkZm9mUy8ybHBuS1Fz?=
 =?utf-8?B?OGUvc0hiQkh0UDR3QlZyUTFCWHVjM1g2amUrVlkvU2dZRFU4ZzMveUUwWUdW?=
 =?utf-8?B?SmNPUEZzQUNUZzlQdW9NWGdTb1pRdFR2ZEJrcHd0U0t2S1RpYU5tVGpRSFlx?=
 =?utf-8?B?UWZoNmlEbHd1L0RoMWpJR1dPRlBvL1FTK3dCN05hMjVGOHFsVTlKRHNGcThs?=
 =?utf-8?B?aHJvQ1dQK2dJVE9hY3RCYWRHb0NQY3MrYWFlWnZETk9od1RZTm1xNGMwVS9y?=
 =?utf-8?B?OFBSZjVQb2JFNEVrODJHUFkwdGdTWUNhQkxFcjdVN04zN3ZHR08vTlZWQ0wx?=
 =?utf-8?B?cHFWa2ZQK1hBekRzMjlPVGZpbWRyMmZsMmpudjhRRnBMTUlHVnlJUHpVU3J6?=
 =?utf-8?B?aUhYbEdPbWpTWGsvUUkvQXpnNkl0bnBLVUlJWjRWckVSczRRR3lnczdFSFNq?=
 =?utf-8?B?Y0FrMWdaK1RpK0ppOHFWMGxqTE5JQ2Y4czNCN3UzOXBjQ3RWZmNiUEJUSjFC?=
 =?utf-8?B?SXRmSDJ4bldOTU1qNCt3c2puVHlPSVpPMWd0V0xuWUdlUkppbDM1NXRZalA5?=
 =?utf-8?B?N29wNGxISzVZOUZ1blFZU1FDWnpWNFNWYVFrMW1HRC9XL3kzcENCdEx0cVFH?=
 =?utf-8?B?Z0UrUElzc1BraDluVnVCc2x6emVWUENNbUUrREc4RWJjckVOYzArL1luc0p2?=
 =?utf-8?B?aS83c2hBWERuUzJnejd6cGhVb0dVL1RjS296MTRaOFczZ3UwK2p3VmRBeDRE?=
 =?utf-8?Q?69+5q8SP+KcKGnkp5SxKO+I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7796e8e6-5c69-4dc3-b1a0-08dbbf9644c1
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2023 20:13:52.4224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +kPUpiMT1v53bQTMVI6QQDTcbIwcLJdLZLKLaa7pMpeyJxVidMyyBUMd2y6wLttY4R8frFOnxGava5mCSSycoNzd8Ofmn/j1x+zZJ0HpJAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4908
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 03/12] tools/intel_gpu_top: Restore
 user friendly error message
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 22, 2023 at 02:44:28PM +0100, Tvrtko Ursulin wrote:
>From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>We have a nice error message displayed when an user with insufficient
>permissions tries to run the tool, but that got lost while Meteorlake
>support was added. Bring it back in.
>
>Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> tools/intel_gpu_top.c | 10 +++++++---
> 1 file changed, 7 insertions(+), 3 deletions(-)
>
>diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>index 87e9681e53b4..e01355f90458 100644
>--- a/tools/intel_gpu_top.c
>+++ b/tools/intel_gpu_top.c
>@@ -554,9 +554,11 @@ static int get_num_gts(uint64_t type)
>
> 		close(fd);
> 	}
>-	assert(!errno || errno == ENOENT);
>-	assert(cnt > 0);
>-	errno = 0;
>+
>+	if (!cnt)
>+		cnt = errno;
>+	else
>+		errno = 0;

ENOENT is the only way this logic is checking for num_gts.

In this case error is propagated only if cnt == 0. What if cnt=1 and we 
get an error (other than ENOENT)? Should we ignore that?

I had something like this in mind for the regression (and sorry this 
fell through the cracks)

https://patchwork.freedesktop.org/patch/541406/?series=118973&rev=1

Regards,
Umesh

>
> 	return cnt;
> }
>@@ -590,6 +592,8 @@ static int pmu_init(struct engines *engines)
> 	engines->fd = -1;
> 	engines->num_counters = 0;
> 	engines->num_gts = get_num_gts(type);
>+	if (engines->num_gts <= 0)
>+		return -1;
>
> 	engines->irq.config = I915_PMU_INTERRUPTS;
> 	fd = _open_pmu(type, engines->num_counters, &engines->irq, engines->fd);
>-- 
>2.39.2
>
