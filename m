Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E63A7992CF
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 01:25:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E15B10E218;
	Fri,  8 Sep 2023 23:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8257610E216;
 Fri,  8 Sep 2023 23:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694215512; x=1725751512;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aye9ousQogCvJNx8VVbLbyFx5Uc7JaT9zrt3/0WLHnI=;
 b=eqNsUTMnFxLqnL+WGDD+6gUTbB0jINUcH8nGsMEEh6tjqjskqmrv/83/
 iW4Y/3ceeQX4QGAYifnT3rUoDLNCTZEvGtwE5BaVW4nM+2VPiwj3N8uPO
 RR+15WKAYfP9PeVMGZnFkLMbeFZwD4HxTN1BopLmd3rzrGW/aWIhCiIS3
 BbUZkfe6LXBedxjNbrJtDFtu/1RxjJB0xZOQfZ0hAq3XH9vh1Rw3fMzO7
 WnPZc1Kt2O+CYPeGR7an6NhJjgWH1T2pGmOgghYPrU8vPkM7ZICOGFG1s
 z/+KTrae7qRbkZuppv6RU4giwEqBUEC6XIGNtTqtrtUM2RzdrxNn1Q9xj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="464137738"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="464137738"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 16:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="771914757"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="771914757"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 16:25:11 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 16:25:11 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 16:25:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 16:25:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 8 Sep 2023 16:25:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ydw9uWUWlOr1KfoTYUHaDU0gCQzYdaowysQfNstg5zP9w7D9cVdmlETxVYxc/0JCx7F44uSoZwwXAKck+EIbU06oBHyelwLOrEEbASX8skfIe7ZX9lP0ha7Tn44qQ32RBu1x5n5OcGdz/mL7BeEI8B9ZYWmfk7FLQsNHf1kkh8xRpmmtlSwK3c99RFGGJEeK6niMAjY4RGpYS9oyBJKgyJQ2o7NkZGrMzIyULoOoey9iEXgwTW30Cg5dI7ztjCFa2Z5qKKdN/5aseFCezzWW1KOMZBoSCf3lYl29yfa20ulMDDM2iGhgHNru3qBDCnroQDAkIkt57UI78ZpoPC0q0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+PBytP5BcGEHcK3YRZ7h36XwCZbZG4kgB9LSTr0fjyM=;
 b=MU4iqTKvHFDB2aci2qnQo28wQAZS6pZLq1znO9WL73KYFMbz5pu1FHz3X0LePGoMoj3zzNNmqQ8EWRMhZeX8oEdC7YZ1HGJS3dzl+6jgZcS3Dv7dKp2webPccGy1xEZ++8eR2xrN7OqVqNgjx6r96m4bIm7HRsHbrkEJpR5O6SVHDUTvOXaE3GHoUII3lNPPLzbIHmI7LtIjO+oel8elkg2QdXUmqUAFtPujq6TXylTXkbc0VX6o1hxEgmMbeNH88JF0xeN+40pFR9VVNUhPFLVxWrkHmZa1PPoeaw2W5L0TQ50301ZtolCHz8OAsmlkSU7X3mHzL5xKOP9owEUXsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY5PR11MB6210.namprd11.prod.outlook.com (2603:10b6:930:26::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 23:25:07 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 23:25:07 +0000
Date: Fri, 8 Sep 2023 18:25:04 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <dhhwbarulygdoq3vky6zhq6jzx3nkdlx6hunj57jyn32fn2y6c@y7l4x43azgjm>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-3-lucas.demarchi@intel.com>
 <20230907161044.GJ2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230907161044.GJ2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY5PR17CA0068.namprd17.prod.outlook.com
 (2603:10b6:a03:167::45) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY5PR11MB6210:EE_
X-MS-Office365-Filtering-Correlation-Id: d4de39eb-ba78-4994-adb2-08dbb0c2d692
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7G6p0sBKWcrtudzm/tZfYLAv7Cumn7NIffMQ2y+G9ufeJmBG3/6pyy1O9A26pxrmgJlwHl4J98RBvccaQFrOsZtGsMDgbMdhCjs0dUBy+MgMji08ll1sVx9GGGI5ELNgUPaKTxMe66ZDEswH+xWXhJ5KcADwSISd2C9cqjeo16eZeQKi4FEp/ubvEjfo6PQ5FxwwgD0RU0c7BFTb3xeMi20WGJ+u+Iqt968t2ABPopmnWLzC0lpgcibADwji+n4+VScpyrmq56+rnXeUixr1O3d6INtJ/+bfffe08rk6PKoD455wKFE/QVJ+17B4UaMoPMLQVZ63l0sGnx4m1klp4YwxeZW5N5GQBwiutDbq+DXf2UhKSve/wTbVR3Z2iLIpG3ZxAyeqbVCt+9aIacYVB1c3ApJhXdRB9sKZD+XE+fhbjLIk+5WK/netm4OPj4ZQafQTKj8KLaGqjBZnhSNOONakOef81MmUFogPIlHUfIc/wvqlAxAFiVFWsFJfYQI3LYko7KW8G1uIefCSMVHENckE1N0nJ4fXpIU1gLZa/uRODdRmzObdfwgeR+Fwza7p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199024)(1800799009)(186009)(66556008)(66946007)(66476007)(316002)(6506007)(6486002)(6636002)(41300700001)(9686003)(6512007)(478600001)(6666004)(8936002)(4326008)(8676002)(6862004)(26005)(5660300002)(38100700002)(82960400001)(2906002)(450100002)(33716001)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JCowfHjJg5OJyNYy3C2gO0KmV5+Xgq6M+J+rN6lfaaQYELGBCYBQP4ZlZrfo?=
 =?us-ascii?Q?P/EJb/dp2msOPbBHRyYBWJa0t2lIqWXBkPFVN+wRMbJ+7BhoAVZ8cqkML9cN?=
 =?us-ascii?Q?GmX7fiYtZRvjXoEt881IRoREx8gJ/XcAc2Xehr0sVdo4q2FtkBHNXVWt9u71?=
 =?us-ascii?Q?2srp8nMx0OKTAMOR8taVL2U3poFU/gi6SDeH0gxWLk8NgOadITMOCEoEt4aS?=
 =?us-ascii?Q?IlW88lUiDBdfM+GAWFKvGNThk0NMQh4e2Q5d2YrhS6Eb64FLt+A79Mwz6cBS?=
 =?us-ascii?Q?n2M8VtJKY0N95ZkuvjEpZQZixrXCCokrNfS/Xp4Ap6uAYHq9II/XcE7hp2U4?=
 =?us-ascii?Q?80oRb/XLw0MjfcLVlUJ3JXa8Q1F6Bqwn5Lq9Xr2eiRwrvZwZ4bpBrOOqjjrl?=
 =?us-ascii?Q?HtY3OzgtJqFYP2WK7CntN0Vpl0QzdH5OnOxiZ/1dU2xbeod56E5Un0QkX1G+?=
 =?us-ascii?Q?xfdY80PA6iglcT72ofWdX2Sqq11ucNcYwuebkTnIp2whDCzIwhXdbLmjgKme?=
 =?us-ascii?Q?ybFXJLIs9Ysl2PhXpANN/PCDdPXxROs4QkSGtBtgVCLKOnN25MIBaciHRzdr?=
 =?us-ascii?Q?2I0RqvnP2V87sxbklSaa8SH300oIH3jw5cHvUiNrIQQh8R7rUeAKz5x4ZrSv?=
 =?us-ascii?Q?iJOaWh5mdk8CRDymJhoTs72dfk7itVSSsRDoSoKBAJWa+1qy8bq6gSyviTbR?=
 =?us-ascii?Q?LFjL3RMJcU9ZaRbI35NyLzVVV66vOOlJpJzOcigbWxLraMsfZXTfoPpihVhQ?=
 =?us-ascii?Q?Kc1iOjPXyVjT3+t/pbiLc280P9ttfo96VfQNket8BOleQsD59sdpKBV0h3Qf?=
 =?us-ascii?Q?9ISO5Qh0hE7NhBe1LNdFMHbT+9SFaiR+l67pfUxgq/QyOupAcVLyho131f2M?=
 =?us-ascii?Q?bdLBCgqwBa4AWrOfTaTOS6ntgJPYubQEYEP4lvJk3rYWhXPnSBWHIWrebIOz?=
 =?us-ascii?Q?/WlZL6taeHAF/tpI+ZS46qduOAvxQ3SMULm2qmYa5KMxlOVy64Xff/ph8xAH?=
 =?us-ascii?Q?2c+ybmkDiQFvSo0u3dxZrypB1TthFzeF9NsniHBqZkcdmV1pIqNWBrPKjWGn?=
 =?us-ascii?Q?5FXOoa7DAusNLPiWVM9Fecp1ARcOOuNvfnc5lzAfsmxJ2jkWDPcHTlkKUbaV?=
 =?us-ascii?Q?iiXqfsz+LV8Puw/AUWzerDV3na0l+833I68aCBC7WKqcgEn6oxvJKvX22PiG?=
 =?us-ascii?Q?XuzdSkxdMNKYiNkwf7EJ7xQbApBIBCPfpKEpLnMg5kalUS9lLPaGR9QwvSA4?=
 =?us-ascii?Q?iMEJGz18MkdlI1N2wZhlJCFFUQFfu59ltgkCIT25u40ZPy4dD4IkjrkDYol7?=
 =?us-ascii?Q?D+fJAUcLVrZQIWA/oTSXUN7A+sIHqrscTALwkS/+G8qXJHHKsOedIop3r60a?=
 =?us-ascii?Q?2BAi0YOqsOaZndvaMPfWd+3+3P1Lxrdhl7qh3bp5duQiEbTtS1V9bSLTK1od?=
 =?us-ascii?Q?IJaVjjwjPIvdJQ9urgynzp17WbDtw6rPNOLYlDyIbh2+9u4BBCFq+15yIHwg?=
 =?us-ascii?Q?zFzicW6PdAJhRRjkXJ0+XFCAn/N+qB+IrS0uyKoZ0tA0YN13Uk+lJNOVx0uv?=
 =?us-ascii?Q?go1y3MC6SuneqNZz+t8qq7vIu7G87P/P5rlb5dj/d5Q4w7Q4VcAGZa2P8CiM?=
 =?us-ascii?Q?cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4de39eb-ba78-4994-adb2-08dbb0c2d692
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 23:25:07.5949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fGqNA4elnFx71QZ3AKC4FQHCA/ksjT+Sv8Q/zYsXOrmdKEJLxC8ocQD8XdqTEvpUQ4YjekBnXtQLyY32n537AY8yi0vVX5587nwcO5GfVrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6210
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 02/27] drm/i915/lnl: Add
 display definitions
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

On Thu, Sep 07, 2023 at 09:10:44AM -0700, Matt Roper wrote:
>On Thu, Sep 07, 2023 at 08:37:32AM -0700, Lucas De Marchi wrote:
>> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>>
>> Add Lunar Lake platform definitions for i915 display. The support for
>> LNL will be added to the xe driver, with i915 only driving the display
>> side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
>> i915 module.
>
>This final sentence no longer matches the patch.  But it might be worth
>adding a different sentence saying something like "Xe2 display is
>derived from the Xe_LPD+ IP; additional feature deltas will be
>introduced in subsequent patches."
>
>>
>> v2: Use a LPDP_FEATURES macro (Matt Roper)
>>
>> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>> index 089674e2f1d2..feafb0f94b06 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>> @@ -768,6 +768,12 @@ static const struct intel_display_device_info xe_lpdp_display = {
>>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
>>  };
>>
>> +static const struct intel_display_device_info xe2_lpd_display = {
>> +	XE_LPDP_FEATURES,
>> +
>> +	.__runtime_defaults.ip.ver = 20,
>
>There's no need to set a default value here, right?  If we've managed to

unless we have a broken check for display version before this is
initialized. I will give it a try and see what happens.

But if we remove it here, we should also remove on previous patch.  As
far as I can see, it's true for Xe-LPD+ too. If we have a wrong check
for version, I'd rather prefer it broken and a loud warning than it
matching version 14 due to using the macro above.

Lucas De Marchi

>match this IP block, we already read out the GMD ID version and matched
>it against the table below.  We'll be assigning the real value directly
>and shouldn't need this for anything.
>
>
>Matt
>
>> +};
>> +
>>  /*
>>   * Separate detection for no display cases to keep the display id array simple.
>>   *
>> @@ -847,6 +853,7 @@ static const struct {
>>  	const struct intel_display_device_info *display;
>>  } gmdid_display_map[] = {
>>  	{ 14,  0, &xe_lpdp_display },
>> +	{ 20,  0, &xe2_lpd_display },
>>  };
>>
>>  static const struct intel_display_device_info *
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
