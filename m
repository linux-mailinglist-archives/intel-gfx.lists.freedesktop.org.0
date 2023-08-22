Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4A87848E1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 19:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE35010E3BC;
	Tue, 22 Aug 2023 17:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 124C310E3BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 17:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692727160; x=1724263160;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OgC4/TRONe1h77pf0O4VZ8hHUq9/fCQ5Q43b0uXcXIQ=;
 b=VATg8ys0Le54X1VU3MEmqA2N57FCgpZxQC0NzO5GcQnhyLgZIHJG/j1g
 No/fjfrsi6qWRB5++Q6aML4WtWQlQlNrFJ1lDgCmjKXjURKeNwuRxiA15
 hFLx+7XVfiuV4hLV/NVJsH/naArn0l1Jmlc1SK7GGhuxrTgZu/YUB7cfF
 yysDWCCTTiZ4Q72PFA24r3BCYdAh33g6NKT/EweS89B2OQEcVLS54Lo8W
 ltKk8YeZ6Rw5TcniwbAdEiHBdGZD/gTYJ9C38dMqxyrHxh9tdT3FZkhyZ
 Xqus6dedzzrcE1ZnZbqc2PFdNBZ6bNaz4JGtES3yZwRSfdtHYIt+FknSW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377710691"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="377710691"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 10:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="686140294"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="686140294"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 Aug 2023 10:59:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 22 Aug 2023 10:59:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 22 Aug 2023 10:59:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 22 Aug 2023 10:59:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LvmKvn7gMHuiwZeZnS+1Foepzodm/f4ZLBZII714dDWQipSHd+9o8uRS0TELxfMOx6l9M39DvdSBLpnlopqlPHuVzrBBn19kfeAu1L7UOnJPohQl7ARm3fKK/zjtEL15TqVP+2zyB5/fkFP0JIPn8MZBJ+w44NppNOLf09L6DhrVk3KGRX/lJK9VCXBuJ8jaxyNY9eqftQ2f3CO43ebx2ujvRHy95AFkinXj5dDoVAFRXL0On/gL0g2KU6qt791uHIca/XbxcB2AXHULdQ4MZb6PuawpnHvnaQ6lGjLFJxfVsqTU6S65IuJUC6qL6/3kLHWbUvOHRFIKUwU/ZSETVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0vuboT4C60yraSLfhtgLz7PRFcUV0X9CBONwdNLNEg=;
 b=nZ05lRzlieciWAW5Z88uxGRwohHV6FP/pixwnEKspUc4ZEsm53OEqVtPx2IamNwhK2rsl7lGSw/XTw/9iOYPmjTBjgpjSvRKLM36+NTLI2ZBBpVcmLXXt+K7HOhfw9xdfuVqWY4WOGn5wKz/ac6+HeYkwW7R/uejQpDdgj4Pzs8OuAzZ3UOstPSYm++fZYpDNKEvfReiojq5w24vQqpQliwbbPFz/ksBOVd3PPpc7hCYVY7iaPBo0C71Wl5Ifit5zvgheuCZGsWHrLLiWginnsw10IGbZ10oyat6pgs/mbgE22doEgtrubb2KddgnEPsLsffUDiLLbFo8vg2/vDmfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH8PR11MB6612.namprd11.prod.outlook.com (2603:10b6:510:1cf::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Tue, 22 Aug
 2023 17:59:05 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::6bdd:6fe1:4045:c26f]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::6bdd:6fe1:4045:c26f%6]) with mapi id 15.20.6699.022; Tue, 22 Aug 2023
 17:59:05 +0000
Message-ID: <90d48c44-2bd4-8711-f8e6-8ba232850a71@intel.com>
Date: Tue, 22 Aug 2023 10:59:03 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.14.0
Content-Language: en-GB
To: Andi Shyti <andi.shyti@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
References: <20230819225001.1040607-1-andi.shyti@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20230819225001.1040607-1-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0383.namprd04.prod.outlook.com
 (2603:10b6:303:81::28) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH8PR11MB6612:EE_
X-MS-Office365-Filtering-Correlation-Id: 166c076c-74a3-426c-e49c-08dba33979e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MmisZhWkUNUPCUGZeLdKCkecRSj7+SKRjCQ1D2CDA7tkylXiNtyGLJKUodlQw/lCWOqBRtEqsVRZotA8dNspdupC1NaG8v3QVbYMWK/oo+qBLU3OyDVpb7JGINCrTQR1GD/Hgogu+7KB4sKjW3JTE9oWQXHWUpGK/ByzDHkeuJeIIlDGyvb7RdFW0EWrMmDzox5qKSILQRxQRbVDxFUW9ppxLAh4MNs8+VVNghO8zzsxTWtE7UzWRJyWne6JHOmFlfyII9vty/sipTkAv6EM+n+tVHxolb5qt4bt8bXK9Uabere923ueHHjesEGpYE9tYKGkaG7FoixdqSHwtnP5TYlS5onWvAx9Zva4iX5ODOI1HiCIcQDzuibNIrhP9T+4QOmh/hVyuPuc1LARjhhNBy+1Kzt75oGQht3gE4HNkJe2R3/rRTfzkziB42w3WXtrpyN0M4hXuKX5/E5i3z4c9Rh6o0QO5O/mmjcNXKT5Y8WaJzxamu1jcfpUa6msulAmUc0BzlPmzNUAAIvbfO4YNQ0uxT53YVq2usOeYjdFO1IA3cJLpISQtWwcxZc9pb3PVWYR3tDzE2ra/RjaC7+zQUDuOGFfFBDYObns2BF4wm6OZnYTp1niiYE1er/Rr75ej2BcZAJ1jTzJm2r20zYY2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199024)(186009)(1800799009)(2906002)(38100700002)(6506007)(53546011)(6486002)(83380400001)(5660300002)(26005)(31696002)(31686004)(86362001)(8676002)(6636002)(2616005)(8936002)(4326008)(316002)(66946007)(6512007)(66556008)(66476007)(110136005)(82960400001)(478600001)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YW50U3k4TkwxZ0JmcTdLbDkyZXlWZUhUL1NuKzJFa25hNjI4ZjY1SHZjazRD?=
 =?utf-8?B?ZHp0eCtUbVdxZlVwY0JUNGg1U3NCQ1VaZzhYOXpONG11WnkrQkRJWENoZzNv?=
 =?utf-8?B?UWFYYmUraVJpY0UzRkl5aWVUZ3J4VmdwWGp0enRiMjd2U3IzVk5JNEE1aHBx?=
 =?utf-8?B?US9TU0lQUXNiR01GVUU0bFhLaFU0Zk1jbS9tRDJsUGYvMHVOdDFmbkNQeStB?=
 =?utf-8?B?NEk2N3hmV25kK2k2V3h6anFxRE9odnFOZlZmTHFQVzIwRnhYT0VkbHFrMDRB?=
 =?utf-8?B?UldUK1JqMitseEpVbWRwdkNQcmVJcjUzUW5tdDN6L1l5UVpIRUVTMFRrZS8w?=
 =?utf-8?B?bnhFSmxGZERJbjNYdXcrVFMzRkowT3hvTUpLZ21vZW5ueWlBc0lkVnMwdHl2?=
 =?utf-8?B?cjc2Q2RONENVUzlhT3JTTTNQYk1FVmF5bDZMcitUUnJjYkdRanZvUVZJYmFk?=
 =?utf-8?B?UHR0ME9rODVzaVBUa1ZvQThMbG8rUVRVcFUwSWg5ZUV0R0xuSHJRMGFORTFR?=
 =?utf-8?B?L0NzSGVkZGtjR0pOQlpKaWVaT0JxNGxuMGhiUGR4OTM2M0d6ei92b0ZobzlD?=
 =?utf-8?B?SjdaKzdHQmFIQStlL3E1ZGhaWjdZT1U2OGJPdFl2WnYvUWxWaUtIbmg2ZTJt?=
 =?utf-8?B?MHN0bVNBNXNoMlI3NDByRDFHQlV0cE9jeHdnaVVYQTJ3ZkRVcUFpWFhjaGVC?=
 =?utf-8?B?ejQ4WkpnTG9uTnFaaERkMWF3dXM5RTFYT3NEd3FvTUdkSGdpazZVYTdoWnpy?=
 =?utf-8?B?ZEFkV2N4SElkUHhGWVNtbHVmK2QyaEszSnhINCs3YkpQb2RPdTZIRm1NQS9t?=
 =?utf-8?B?QkhXaUlkRklqQnA2d0hNZWpXK3h2NHJKeHlySTdOR01qWFZGVzU5QWVtNE1C?=
 =?utf-8?B?RHk0TElHRElNSGlsdDBuVEQyNy9LRERFazkrTmRnekRXOEkxbHVZNWxrcUlG?=
 =?utf-8?B?UUR4bzQ2NnhjV2lpNnd5eFdKSXkybUdXNThMaDFqMkszWU4rY08ySmwxcGow?=
 =?utf-8?B?SGtWdUxGQlNkVEMwRlF3VWNiOGRFYlV3VnFmUk1wWm1jQktNTDRlVy9Qb3hI?=
 =?utf-8?B?NUR6UDhLM3pneTYrN0thSnBLWUtYTDdnVWZPWSt0dUJKUG5qMXczcHdERm95?=
 =?utf-8?B?aVVBOW82cFE3UnhTMzlkcWo4cVM4QTVyOXdhWW96RFZ2b21YY0duNHVCeDdu?=
 =?utf-8?B?b1hySlA3cHYxdmR4a1poTW1rMVc0ZXhVckFWbUpIZjhNZHlIZHA2WEdIY2lt?=
 =?utf-8?B?WmQ3TFZaeFd5dEs5Wk1wNWkrOVFUTS9nanV0Qkg4NGs4T3VVNTdPVEFWZDli?=
 =?utf-8?B?MWJvQnhRYjhySUZQZjBhVDBhZEZJZ1dibXBGKzVVcVkzRFJJZnh5UUNUWEFi?=
 =?utf-8?B?VHpySDdkMHdXYTJkaXllbFRROVRLVjRjWEUwaFVOZU5UcXk2WkxUd0NRMUc1?=
 =?utf-8?B?Qi9nOEY1VWZDZFJxM2Q3dU4ycStOWXFUZHFTN2hBekhxSGtSam5OZHZ0dmJI?=
 =?utf-8?B?TytIaDB2R0RNNjJWL09WZHVpdEhORE15OVJLRTNnUVpGdUh2RTNmbHo1bjl3?=
 =?utf-8?B?ZUlDL3ZxYmRwbGJDcVpadlc2eENoQjhoOTkwZUdrR1hGUjlIQmtseUo1OGpx?=
 =?utf-8?B?Q3JFbFJ6dkVyOUhLWG9UVE5teTJVR1c5czc1TlovV3lnUDBFWkgzRnR4eklL?=
 =?utf-8?B?Qmwzam5DdzNOQTdER2FmSVg4cG5lSUhwUEtSNE5maUZGZndHaFJsMGs4Sk1U?=
 =?utf-8?B?Z1BtdHFodHVKZmgyUFZhaFU1RGpWUGlGVlVZZ1pKTDlmWUMzRCtlQjY1NTky?=
 =?utf-8?B?QnZoRWl2SFNNWU02RFdtQ3ZzWElYSFhUMXJyeDd3bnRCQUhNRHQ4VjVmaXo2?=
 =?utf-8?B?amhsNFk3TktTYnpSbFJ1M3JTK2tiYmluQmcxVVAxVThrUDQ2MXE1ZGIvS1dX?=
 =?utf-8?B?b3ZjbC9yUkp2TmlyQkhjRWRrME51SGtpbStQYjBMei9HZ29HVXVtMlM1dHJw?=
 =?utf-8?B?N2crOVQ0ODNHQ2Z0YUhFbDl6eEM0RDVqQjByZTR0MlA2QndIZHJiUHFjL3A0?=
 =?utf-8?B?S2FuQnA3T1ZPdkQ4MElSWGV4bGhIUFlzcnNLZ1J0YnE2TTBhcnZFTnN4Z3Vz?=
 =?utf-8?B?aHI2QlhXalNnR3l5OWtYcjJ1K2NQNlBqVzBtRUFDb1JjVVJadFd2czdCOURz?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 166c076c-74a3-426c-e49c-08dba33979e6
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2023 17:59:05.8340 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dsk71N99jtEDiFr1+uDFwOq+OVsj4Ezzns/uom4p/RXbhMPn1zgMYOIIODMCEFJH+NE46Q6DNLlZgqBwyEXFncsITTBuP97kgWKHFNujs4o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6612
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [CI] drm/i915/gt: Refactor hangcheck selftest to
 use igt_spinner
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/19/2023 15:50, Andi Shyti wrote:
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>
> The hangcheck live selftest contains duplicate declarations of some
> functions that already exist in igt_spinner.c, such as the creation and
> deconstruction of a spinning batch buffer (spinner) that hangs an engine.
> It's undesireable to have such code duplicated, as the requirements for
> the spinner may change with hardware updates, necessitating both
> execution paths be updated.  To avoid this, have the hangcheck live
> selftest use the declaration from igt_spinner.  This eliminates the need
> for the declarations in the selftest itself, as well as the associated
> local helper structures, so we can erase those.
>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 457 ++++++-------------
>   drivers/gpu/drm/i915/selftests/igt_spinner.c |  15 +-
>   drivers/gpu/drm/i915/selftests/igt_spinner.h |   9 +
>   3 files changed, 155 insertions(+), 326 deletions(-)
[snip]

> -		pr_err("[%s] Hang init failed: %d!\n", engine->name, err);
> +		pr_err("[%s] Spinner init failed: %d!\n", engine->name, err);
If this code is being touched, can you also change it to use gt_err 
instead of pr_err? And gt_info instead of pr_info, etc. The pr_err 
functions are the worst of the worst for message prints, they don't even 
tag the output with 'i915' let alone anything useful like which GT it 
was or which card in a multi-card system.

John.

