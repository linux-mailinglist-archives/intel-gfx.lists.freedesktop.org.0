Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9606D5204
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 22:10:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E1210E18D;
	Mon,  3 Apr 2023 20:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF63610E18D
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 20:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680552621; x=1712088621;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DdwasHJ7F17cRjv26L5FsfGB4BipFj++pX/s/9K0djE=;
 b=kyJcS0wfN78LzVLQ9Yv9ma3t4cZQCh5hIfi6H//OKnjDVFOSxOO/kCC+
 XYQPCzyNa57u06614OZNC//g7BtxN1iNvpS7Y6pVLgwh4JxNB3BGHOIXu
 VH5r6cLDu8wUtMtajJ9OM5De29foRPGlDhIvq58B0zpQG+JUWrDXjOSt/
 kXrIV3IWBhSceHSBX8xYpYqdzVodloKFmi5SoZs7avUQIUETiH2bpIEkQ
 6sMzUJd6lAcCXAA4hvnx8io4R2KcxJBNHry23MQn8KYzNjbnAawqOpzGU
 IX+AmHNKd2YstDHchzp/+vBuc9X2FRcvpempUWuhc2BF7I2wKt7rMgy47 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="407059872"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="407059872"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 13:10:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="755384868"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="755384868"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 03 Apr 2023 13:10:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 13:10:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 13:10:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 13:10:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0m6LMQdvLJBHpuZ/UZhO3v8/Auz+1WjrSfX0eyqzT02dKRupRR1gCDlqWULazz/hYjUwJxOq7iUkaYWVTawACQsy2XD/NBlukGGDQvTV+P2nox6Vht+7lNmY5eodlVPkyDaLysfhNOtpwon4yyccFCJlCtpdGl0Sllu+qncdCBTwk9tYRXb1O1klmFk+yZVeG6D2aPO1Zn3oC7G+7FUkpLara3BP756ZUx2xI96BLI/npJeR9WJ90kqvlWP+i2codnxBw3cTcBaOW3PC1vZ1hE792rKmZxn9oNjXK5yvOIcEWbbtcPVtM3/tua8FTsk3+UVcJbIIi7uVW0O53RW9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ne5swCYEOoB3kVQAKwkQA2yRSiYoShwzyEKbEmCO/F4=;
 b=f2tD26Y8XD8xgOhY835DEa7iwZqle7vgFJIKjLdNQRawp95dYYuMFt2JSmzZhz7B2FVHjMGlcYwpy8Wfhrf7slJhBHCouFfo71I/9WYniBmt2qlqGchfNEOI1DQLED8lYDwiBINpeFGBrCyxpkniZWbz+a+AsFkRqO23qvlk1nZyzd7OZBBG7v9q0YON7zEQDvmf4FbyR+it4sgTJglF8QlFBTwb+b5P6QlJbanKTcEwxRKTyydz765CcQg8pSjJ9FEv0rAGtZgnZKXJtpqA1Om7/+U/pLIUnridcNhYkm9oL32t/GGGba0Uru1YdhQvaaBEdhUceGXtY1u43+xhpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Mon, 3 Apr
 2023 20:10:17 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed%4]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 20:10:17 +0000
Date: Mon, 3 Apr 2023 13:10:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZCsymlIzlcCkEwVY@orsosgc001.jf.intel.com>
References: <20230331200253.1435236-1-umesh.nerlige.ramappa@intel.com>
 <bf911744-c53b-d10c-1ad1-36b0dc91502e@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <bf911744-c53b-d10c-1ad1-36b0dc91502e@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0157.namprd03.prod.outlook.com
 (2603:10b6:a03:338::12) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: dc34b570-13bb-4dc3-1ec9-08db347f7182
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CEwHx3b4kOwqu52x9BcN76kmpUu3UZdHrY+0KRNt8r+/hMgRdIGMTxIjWND5FTvVRjj96xOdWHBoS+os20audvDI7mFkwtieDTZxerE9LMGAIvkuRE3U6wiOzDTht8yUgLVdiNLGBKlX6tCXaDHd43kC/iaQp5em+AiL0a+rxNgWu4BUd1jr8pmRQ5bT01ClMBSguaazYsD+AH85d1IpXdBrjLEoKPxJHNhEJ0gL8h20mf12cDGgJ/2Qe8Ija+2vvExXB5ZnBVA5rVPAMHbZG4bWWkC7XoxvrTFLYbfbpDMs8OsxPg4DONYERa07KVEPaeJ2789oxIgpf3wqnUQn8iGPIYpy4muOKI40Boee0TVo2exv9oJaejF3X5v8ueeCyr4ZNzZBHtblczWqGnxoQJBwUka9R3d0RB5khTrDrQ1sTX6MMID5mGARAm3NuHhP6omUei9xQS0h9Wmd1tKZQBtTuf8GgMZXrws7E5X6WhNz3zYYznco0lTelnuskRwl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(376002)(366004)(346002)(451199021)(86362001)(2906002)(966005)(6486002)(83380400001)(186003)(26005)(6666004)(6506007)(6512007)(4326008)(8676002)(66476007)(316002)(478600001)(66556008)(66946007)(6916009)(82960400001)(41300700001)(38100700002)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFZtaDRjc3pvUnBhdi9kMEozQVBKbEdCdzZ0aktZeXhJUVpvWS8rRUpHYW1W?=
 =?utf-8?B?QkVZaWh4YUprZzlwL1l0b2xiYVlQZkZ0eDJQb0VwTXFTQ1lENjRrVXJQTEhQ?=
 =?utf-8?B?eFRQQ2krdm85R2pZVEczK0RCMDM1Q0dLRGZWcVI4Skt5bldyMk9QeTh1MGdX?=
 =?utf-8?B?cStUNkxDK2xNU1dFaDVmR0Z3V0s5dzIxQjV2b0hJVVhVY21XZE43OFZSeVg3?=
 =?utf-8?B?cU5zWTloOHcwYk9MNERuS2cvRGtMZEMxS1VKbEVZdDBVR29mRy9ySUk4YWRs?=
 =?utf-8?B?ODVoREdOUEpZQUFBTnVLRXF3Y2NuWXJaRitDbVNha284c1VkMEJsU1ovSG5E?=
 =?utf-8?B?MGpmay9YMG5Xei9jVEVTQzN0WGxQTldPcFZXVDNGblNEVEtFN3dvUkFXSjNG?=
 =?utf-8?B?UUYvQU9oaEYxRmVMY1QzaUVRNlVxSURXR2txNFFxUlU4UVAxYWx6cEFXM2p3?=
 =?utf-8?B?bXI3dlJsbVpCZyt3VE1NRGE2bGVHaEhJc1lEY2JrcllCWFk4QUdBL2hiNmVT?=
 =?utf-8?B?cEQweGNoa0taOHBnZkV6eWV1Rjg0V3hwYWhXbTNkUzE5c1M4WlJRNnFtc2hX?=
 =?utf-8?B?ZlltNWxvWmF2a0NKNWxPTTZkaWlid3B2Z3k5WVpBa3Jud3BFdUFkS0NWekxp?=
 =?utf-8?B?aGh5ZFlXM3c4OWtMTEk0REVnaWVTSk5oWmpYL1oyRmJQZ0FwZWEwTWVNZnRx?=
 =?utf-8?B?ZVgwbTg2WUtPVC9UbExJbytqRE5tTkNPY1NjMER5MmhpS0g0eVhJMHNEQkcz?=
 =?utf-8?B?QUVrUEtyWEhmQUNJSlN3S0p1VjlSNFFyeGFiZ09aRFQ1U2d0bDBsa0kyMENx?=
 =?utf-8?B?YlNqbkNwbjIxeVB3T2VhdnlXc0FFYlNnak5KSnpjeFM1dU9IS3AxZDRML3Jv?=
 =?utf-8?B?Z1k0ZXlZN245dk9LUWpGRHRheWJJQk9sTy9HZjk1dE9xVjhEZ2xJeHFsejJm?=
 =?utf-8?B?NDZGZVdCTkJYSlppaEkxV1hWZmFwUDgrenFlU0tDQXZ3UFIvS2pPWEYzcUxF?=
 =?utf-8?B?LzNpRG1ORUtXbUx5RnowMkFWQWk2NkRsZnNCUWZNMTA4dGpzNzcva2NkQlg0?=
 =?utf-8?B?SGlWeGRnRXdiZHhremU0d3BTMEVkZHF2YUgzdVlOdVdUNWNaMEI5alR5aytV?=
 =?utf-8?B?aUFtVDJ5VGVVOWlEVmlmd2hMQ1czdnVNYVRXSU4yWlJpS3VsZUxkQVllNE50?=
 =?utf-8?B?aFlWWVZSOEFpMmI5dy9ucUFmQlR3Z2l5VENDZEJKYTc2bXZ3M2JXU0dqL3Jw?=
 =?utf-8?B?Z0Zjb0JVaE0xbWsxeTBMak1iWnhtT25oeFc5Z0UxY2F1MnJYeFdnR1h3Q3hF?=
 =?utf-8?B?K1lHR3NSTE40Y040ZVF3TVFOdGgyUHlWTTIxMnV0aVNkSE5IVXJYOTRhS3My?=
 =?utf-8?B?WlNWZzNqRExaeHg2R3RJS2hmTEZYRUt0NU1yaUJMOHo0WmRIOEZ3clRvUU1N?=
 =?utf-8?B?UjFFUWF2SG92Tks1TzliMURLY0dWQjFuUFJKNzV0VkMrVXR0RWYrcTQ3Q0s3?=
 =?utf-8?B?Y3lhaUZtUk9SRVd3ZzM5bU5jYzNnbUR1YVZZNENPZWNwV3N5djF1NG1IRzVT?=
 =?utf-8?B?SlZxU3dUQ2tTMHMwVldpMmdHQm85UFFTNWtCdGFJWjFxRVFVdWdUdFVIOER1?=
 =?utf-8?B?aTZLSGxVMjloMitVRGpkdUxjZUhnY1VPekRTTUJ4cTFrS1V4bzY5NVpMQUNl?=
 =?utf-8?B?enhNSjd4VnJNM2IxelRxOVBvZDByVE94d0M3SnhWNWNNN1U5RFhValdHeWtT?=
 =?utf-8?B?aERhOHFUME1oelowSTlkRkoxemxFLzFrUFBWTUtwNllsNzRzbFRkRHF1bVFx?=
 =?utf-8?B?aTlWWU5xamVnMzhvbjlQalRVZHBsazU4T0NRR2tmKytRaVlCaUMra2p5UHlC?=
 =?utf-8?B?N2lJaHhPcUhrVzJTY0VBOTBrbGNGQVU3R00rb0JrSWt4N2lmKzU4RzhzOU9x?=
 =?utf-8?B?dWdLQ25PWVNGbUExQkoxZWc0VGNGalB3U2kzTUNKNi9OdmxvV3NybWRuanVn?=
 =?utf-8?B?aU5jdmV3QWxZQWV5Z055UmwwUzNnOUxTRjJzTE1kY2oyQXdqRnhKdHdzKzlR?=
 =?utf-8?B?MncrYitWZzhaRHdRaktSTGhTOTJ6VjBZR25xK0NPZCs0SGo5emhhVlhrTEZi?=
 =?utf-8?B?TGhWWk9BRzF6QzFaZXVYSmVKbWEyMDY5aXBtOW9obXFUSlJyRW56bFZkOHBN?=
 =?utf-8?Q?jIi+HLzPYRBwRm4vuzZUmDg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc34b570-13bb-4dc3-1ec9-08db347f7182
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 20:10:17.5576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: smnrHxsViI0xteYp4Ex7iIeXeVPcQnU0UwbwLe/eXCn+XWU+gWl3/1Nhzc3VUUpgEl1lgsLmlWfwyCdnmEewBoGUOQccuf+P+lEUui3h/So=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdinfo: Enable fdinfo for GuC
 backends
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

On Mon, Apr 03, 2023 at 11:21:51AM +0100, Tvrtko Ursulin wrote:
>
>On 31/03/2023 21:02, Umesh Nerlige Ramappa wrote:
>>The underlying mechanism used to provide the client specific utilization
>>in fdinfo is context busyness. When a context switches out, the HW
>>records the runtime in the specific context field. This information is
>>accumulated in fdinfo. This information is independent of the scheduling
>>backend as long as contexts are switching out in reasonable time.
>>
>>If a context is actively running on the engine, then the active busyness
>>is calculated by using the delta between current time and the context
>>switch in time. This part of the calculation depends on the scheduling
>>backend. For GuC backends, this data comes entirely from GuC FW. The FW
>>implementation is WIP.
>>
>>Enable fdinfo for GuC based platforms with the exception that long
>>running contexts will not provide reliable busyness data unless they
>>switch out at some reasonable point in time.
>>
>>Revert "drm/i915: Don't show engine information in fdinfo with GuC submission"
>>This reverts commit 8d0e3decf26bc423d8b1c42c05636ccc05ea6b17.
>>
>>Resolves: https://gitlab.freedesktop.org/drm/intel/issues/8303
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>Test-with: 20230331195915.5839-1-umesh.nerlige.ramappa@intel.com
>>---
>>  drivers/gpu/drm/i915/i915_drm_client.c | 6 +-----
>>  1 file changed, 1 insertion(+), 5 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
>>index e8fa172ebe5e..d18d0a3ed905 100644
>>--- a/drivers/gpu/drm/i915/i915_drm_client.c
>>+++ b/drivers/gpu/drm/i915/i915_drm_client.c
>>@@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>>  		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>>  	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>>-	/*
>>-	 * Temporarily skip showing client engine information with GuC submission till
>>-	 * fetching engine busyness is implemented in the GuC submission backend
>>-	 */
>>-	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
>>+	if (GRAPHICS_VER(i915) < 8)
>>  		return;
>>  	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
>
>Ack in principle but we have to figure out why Kurt reports this 
>doesn't work - usage always zero with real workloads.

Hmm, looks like this might need some more changes that I initially 
thought. The changes may need to be extracted from this - 
https://patchwork.freedesktop.org/patch/496441/

lrc_update_runtime (which updates the stats by peeking into the hw 
context), is only called when the context is about to be unpinned. The 
issue is that the GuC context is not unpinned until the context 
scheduling is disabled. Disabling the context scheduling is asynchronous 
and does not align with context switch out. Also if requests are 
scheduled frequently to the context, then the context scheduling is 
never disabled.

In the patch linked above, I am calling lrc_update_runtime whenever the 
update_stats hook is called (in case of intel_gpu_top, it's every 
second) and when context is inactive. This resolves the issue, but I 
need to check with Ashutosh/John if we can do that for this specific 
case because the way we check that the context is active is dependent on 
the WIP feature of GuC.. sigh...

Regards,
Umesh
>
>Regards,
>
>Tvrtko
