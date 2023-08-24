Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9234787BA2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 00:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FEDD10E32B;
	Thu, 24 Aug 2023 22:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5623110E32B;
 Thu, 24 Aug 2023 22:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692917249; x=1724453249;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dTAV5Su6pZANAWIw+DpInKWpbDbiF4bkNBM7QexwKxE=;
 b=Vtru9L+xTSxXLHbiwlrHrJMVAJcQzZLzoQdAZQDCjiOuFRDQBiHeyVSg
 6WfcYrrvkCdjznBh5ZZdZjczS4fR0iut/sUGKbzzx+awMkUV/s99UIUAW
 hl7h+pZzsCN5vXCCeNruIiQHExPkyNkcB9iCsa4CB34RPDMTsTkVkMNwq
 iE/5B0N5Ndh/OBwS63C35h9CTn2ythRy6CndfSCadC///dpYLSTAnKql2
 G9nzwzT3hIJw7zAdp42NI29J8Y4fe1l22utP6/TfPkot0iUMYszNxhSGu
 Zynp6Ejb3YzLG0Qk93VqX3I6kxFQFWyIjFfS8g9WyJy2O9iRQKbYsiEEh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364767902"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364767902"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 15:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="714134855"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="714134855"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 24 Aug 2023 15:47:05 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 15:47:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 15:47:05 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 15:47:05 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 15:47:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OS+6mUEHJeIP+0LlmK7NxupKVs5WUAa5skTSsp+kXTd+IEerKmEmJVwAhVJBsVkzXi+HU53YiNrU+KcnTggsFvrWgSwtFNSPjkS/RiZRXy+RxzYo4+9AFgphnagTTmaPKQl0Vvhgi+m7HTm2dadca0tEaA7pKxmLQUGUpBLlbFu6jHGHuiNQKQ6Y3uk0A3Rm/2qTfYyondMsemFjNN8lFlsWTaGxr6IVICJBcalzffHphbVlx5YdHF/WldTCgboDN1Tv/AC8aPqaxAhYBmI33Q3IHNrYCqek9xWfZR9UAUU6cLjPtpmsaoheMj4EhZ7OGY2bNDPoy6kwSkVR60tkCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4l/IptEHDmYOmxanqZo0MHHC03VKgzpspMEyuJBM81c=;
 b=QWCpvoAHP45cd1LhYIBKa5im+NScPaPfYKbTK31blIXG1Klz1I5dn9u/acusvIrdQSvHuEWwEssMlgSltPSOxJtH8WAOANr1ilIT1mBfjVdwQYdXrVO9VoEJe62kjTPe5QwLyxIDhfj+0RHEi6ou4i26fgGaPBr9TXAuBbcARBy1w9xSqx4aa27DxZto9aE7REwZzHqMwcLZ3WfZN2Rq/3V/DMhTqLpJO/Rz2BD1H4sDipWJdadnWoM564858AZFWvIQKeqGOahB+i/HaVxfSQecMU7hv36aTPO+lMvs4v0JyPUJTVyFtoEDRCkST1Q6PajU6jLma3eP9/vnPM7ogA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7796.namprd11.prod.outlook.com (2603:10b6:610:121::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.38; Thu, 24 Aug
 2023 22:47:01 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 22:47:01 +0000
Date: Thu, 24 Aug 2023 15:46:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <2xp5abpk7n2n4lwpav32yilvt36fdzdykqvci4tlpwnjd66ovk@mgr3pywjv4mp>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-21-lucas.demarchi@intel.com>
 <20230823192804.GC1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823192804.GC1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR04CA0125.namprd04.prod.outlook.com
 (2603:10b6:303:84::10) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7796:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c06eb8e-4a2d-49d6-e5a8-08dba4f407ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9x1NIFjLhxmK02FaPv39rN85vsAUk25pbEm1utCl9oPxG98VM9q6GulfelVQcXQh1MzmwZy9x1nPshcvTE013tMgLOjOPx7sV6pVKlwkysUMkvjp/lPVzLfuxsNDCSSXCyfLR/59/OgelI93R2/OqCEhQOruh2CFgZc87hKHFVpTCmekOQVWyagoJc1GpR5Zw/WRq4+/iyEShE4RxG2FsArGXk9iTgezx1bTFPnJ4hBTaUwY05+7Sb8JFswTu2nimtmARPJdzS10piIravh2KWyUv75QhcaoMn7AmAQ21mk7S0LvKTosKUwmjREvGEDiPBjAeTxpT9hFj5V0i9PYVNSgBdJux02t6fQw5KZiJ36vmPek4BjbbVFpoPhU0lc9GES85Hn926yyj1boT1BXUpqWftQw8BQ8yFZnWuHy4LcWSq3xqsV9NZhNc2xLgI1MYK3mbO8RgA73QBRRD1tuBc5SS+zqE/a4ABEX5FofBKAi3fsBSa0hhzPu8EEjAAFWSw09LiLtWuXHcYzTJ/Wei2d+ev94gCQT8BtMIAdT7wyBbSx3FP5MC7LAnSC0YjxX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(366004)(136003)(396003)(376002)(451199024)(186009)(1800799009)(6486002)(6506007)(9686003)(478600001)(83380400001)(26005)(2906002)(33716001)(66556008)(316002)(54906003)(6636002)(41300700001)(66476007)(5660300002)(66946007)(450100002)(4326008)(8936002)(6862004)(8676002)(38100700002)(6512007)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aihbkus+ZKi0kooUlsYuqEPyzh4fPRDW65ww/9gKFM7MmpSajeRBvPWn+N13?=
 =?us-ascii?Q?vLjV+QlDtrqTfgrQSs+dxoyoHpb1Y+4hGMZP5hLCSs+cgHflVQZfUUe6ZOuR?=
 =?us-ascii?Q?Lq32ILxQvwSeQ8/Ox+zzjnWRCPKgCXsxAkezZzgdmDhLjlhun/6xJER0SjeC?=
 =?us-ascii?Q?23GkwDOtcBGa+aVjirKyTwkD4kfQ1+G1Pqdccu+544lD4rOqTH/+GA6ACmJg?=
 =?us-ascii?Q?uwClfw4V7JPpofmioJz0y0LzRLn3zL9zGcttMA/CFGwoch6LZadvqVW6kxsx?=
 =?us-ascii?Q?sSLsnw/A7dREnwqxKrOXq0/ClE/FHcgOpiHihG2UKwhMBRKx97PfC3CWTUKz?=
 =?us-ascii?Q?y2UP1j7g/Qcx+LBymPqXPNyEuufvIx/NDgAunGlhHc7p8PkyG1nrNLrnoVMp?=
 =?us-ascii?Q?JrrnNcuWiCTQqryY2gcIfRXLCtZWuxGuFPdxdtAzeTAACXY2BSKIZPHFLuaz?=
 =?us-ascii?Q?B8x15IfktZ1kXjDrNPCb7y75o32Zdh1YD1nmxnJNTyVeaCbOFpEOO2kOPNu5?=
 =?us-ascii?Q?+iSsXDb3tapbp4xM2ktfrRr3uM/rT1r+bWbFmssEaKx3LvuJJhSzPKiXS/Bo?=
 =?us-ascii?Q?y9I+sSiTi7ecst5SGAs8eX5ar338G46uMCH0Np/88BHSHLFM9eTACs4upo8z?=
 =?us-ascii?Q?qktdalMQ93OhnmpNusQcqa8PXwBULeMTSmDhEM8ik2D1X9JntFW3EO7+Ri00?=
 =?us-ascii?Q?SGU/ESnvKFGp3DuShZAIi0tnW7o7wzgLIQ2FPhT4tNWX4T2Iv8yiNPaa714x?=
 =?us-ascii?Q?u+0nLZgedlSQLxpW9rnFZMJsruKaDhntAxXBKI/52XXIzSJeGiCvkz0poe53?=
 =?us-ascii?Q?jq1YA/+RmDPx40FjG1gcTGzmEQ8iXXWhG2k2+D8hbypjLT5aS/apFKNaKsmY?=
 =?us-ascii?Q?2PCtqwldvJf/ARx7VF9YzJP8mwHh0nf9dwBfa3QUgzQDouPFxIRK9U7+moHi?=
 =?us-ascii?Q?6TFOOkQMmKMw5byc0LRug8MyCUmrnQSh+RLbeMj6i4XLjoNhjn2PkYBV0V9e?=
 =?us-ascii?Q?bTdDF3iYlqpXdMCcdQPex3dblG+e62GbjcwNuM1Z7MTcMEUmSmQhDO5Ljap4?=
 =?us-ascii?Q?ozow50YFjcgZZwm+hakhelHmqsaEvChUA88z5W03xIauwhtCcVcybIR0JZuw?=
 =?us-ascii?Q?MbIsKQhWoVn5yf19VUUz/ZOfpvAS6F3NdXXXMcX/w802uWPLWMwJfk4cVSLy?=
 =?us-ascii?Q?FJpWMfDd1UFgn15bbOJHd13b2jaq03pMD//6304qMjKGTzO2QmPDXBfcsieA?=
 =?us-ascii?Q?L0bwBule7Ia3fmLSCi6XtuM5ZFrSW3RQPtbrlsouWVkkgr1Vfoc00HNK1j+G?=
 =?us-ascii?Q?kCOOV5zLh9Fjx5zBcOxXekyaq26DrCwYczNY33dnbrugQXPK3sFxrh7Ve72S?=
 =?us-ascii?Q?t6FDmlkmsmkHctc0h4IyOrDVpUBbHYIxnigS3NQ48/zHnupOSDVTEVaoeTPR?=
 =?us-ascii?Q?MaYtZBagXm62VwuxlGegjggSy7HFSakNlldjSdeAex0yXglAjZ6Z6qdyA6vh?=
 =?us-ascii?Q?zi+nvW/LOSXuqehRybdUW+PutaMFIL7lsNkUDdek6BByUUjlUptCTbxLMGcT?=
 =?us-ascii?Q?j4LC270tONLVvec5TjjLc3pZl/MZwA/RDxX+niDkrAYpd7iz0MbgNUmyO6AG?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c06eb8e-4a2d-49d6-e5a8-08dba4f407ea
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 22:47:01.6961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oGoTFOxmbwzpR6gMgQ4WcHbq7Oe40hUe6HCAUr88J7CU1iGcn1zNfrNm/dIP/JZ4vpykqdupe6RJ8C3J+PFEj8I1ELDJGpTqyEFzYWyNQhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7796
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 20/42] drm/i915/xe2lpd: Register
 DE_RRMR has been removed
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 12:28:04PM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:18AM -0700, Lucas De Marchi wrote:
>> From: Clint Taylor <clinton.a.taylor@intel.com>
>>
>> Do not read DE_RRMR register after display version 20. This register
>> contains display state information during GFX state dumps.
>>
>> Bspec: 69456
>> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>> index 4749f99e6320..fe2fa6f966f2 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>> @@ -1755,7 +1755,7 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
>>  	struct intel_uncore *uncore = gt->_gt->uncore;
>>  	struct drm_i915_private *i915 = uncore->i915;
>>
>> -	if (GRAPHICS_VER(i915) >= 6)
>> +	if (DISPLAY_VER(i915) >= 6 && DISPLAY_VER(i915) < 20)
>
>We have IS_DISPLAY_VER() that's slightly simpler for ranges like this.

not sure it's very intuitive for this case though. We want to change the
behavior for display version 20, and would have to write something like
IS_DISPLAY_VER(i915, 6, 14) since the macro is inclusive on the upper
end.  I'd prefer to leave with the check for 20.

Lucas De Marchi

>
>Aside from that,
>
>        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>
>Matt
>
>>  		gt->derrmr = intel_uncore_read(uncore, DERRMR);
>>
>>  	if (GRAPHICS_VER(i915) >= 8)
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
