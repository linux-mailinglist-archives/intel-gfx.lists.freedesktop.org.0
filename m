Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CA4881BCA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 05:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C3410E865;
	Thu, 21 Mar 2024 04:08:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VKr2uzBQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAED210E865
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Mar 2024 04:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710994129; x=1742530129;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YVMb8RMzYnG0jkg+ZMOaiziZUPPp+5+F2bYEImPMw48=;
 b=VKr2uzBQ1akGK/Q6+OKPUeECP10RpnQX5QDaXsa40WsN9CV11wTjaAge
 NlU49FZiXPCRghxjRDeuaDZ1gIRKneZItNQoVyXa+zmGEfi4s543/Uv+e
 TIcXNHqAvgR0UIpqXorcfFEZXllqFfQoigMead6Eab8UM4DmXO3WrHjbW
 UJJojBlneYWoUxdJyfu3ZcR2ySVpEStSaa7qq8XsknQEsFiLWoKej9O2Q
 txNSpOROLL+X5Z8hm06NQOXTiczL6Ux4kJIJDh9xJZIJuXCV9mGW+EbUr
 N9X0V5P6u0co2GSO/qclut1aRc+AA5SBfbF5RVUz0duqI6Ve/84Rrgnhn g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="23412354"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="23412354"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 21:08:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="14777395"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2024 21:08:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 21:08:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 21:08:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Mar 2024 21:08:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Mar 2024 21:08:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EgCqWziMzZG5Gu2kmEArByfZobID1Oz8yuTgOyxw7I70o4G4xCdrpQ14gLPHu6Fng4YOY4el+l71wpZ57YQclCHdocZ8puaZm0oxMO5iVUe0/Ja0C9NOko07poL0QsGtpkNROXCquj7V6LAeSiP8Z6zqkG07Af+ILXuGo5xsgMsMqhlf9DZw5ZRO8SWZcEQCe33A+yCNZo1vDcCbOI/vM8fC5fyj/tGQ8Y5xV0erd5qCUD2ZZanv2LQCX5YzGqb3D6DOeAx1D/4hrbYherNKVs0iXhuIC0Q74JHhAAMXuRcamRUfDRXGYqSLhnjhb+efIB+OCJihmzbSAhoQ0viGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3TVSfYnM62Oyj95mlIFgHHhyY9tJSXXeZQOousEW1bo=;
 b=aNXh4It9qMseXvp31GofdoB+TSC5a22wHT7agQY3PhAQbU5/e8cCA93MY72EPb4WkawDPR52wphm7lnt3ZvujcbHkvQ5P9U1j4Q6zOr2+EpCeOktnouY3JOPDYnrj49CziHgLz3MNojm0GMmwetqngPIz/ADnxaE/lYOQZwumgEYAFVvfB+Z9kjV0vmuzPY4QQ02W6fQGrCuy9mTOqucsbSEksJ1i8gZ+Cc0haTjPWf7uXPuvsaFoS55O7G/qa8yjoBft53l189LHmleqAACQ1phy0t5x1UxK6xO0U4T/W2d1LtZsTGDPRUDD//6lDTbDGfQ8L0jfCEmnmaIHvGXNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8223.namprd11.prod.outlook.com (2603:10b6:208:450::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Thu, 21 Mar
 2024 04:08:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.010; Thu, 21 Mar 2024
 04:08:45 +0000
Message-ID: <4419cf65-ac4d-4bce-ac79-134f3c3488a3@intel.com>
Date: Thu, 21 Mar 2024 09:38:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 8/9] drm/i915/display: Compute vrr_vsync params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Arun R Murthy <arun.r.murthy@intel.com>
References: <20240318111216.3715694-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240320050020.3785596-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240320050020.3785596-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0224.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8223:EE_
X-MS-Office365-Filtering-Correlation-Id: b745507c-4f92-4534-bcda-08dc495c9a4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +MHwahvafeuIUpARAkzrBmhGUqz6Hek8GFdb30FTwc2GNJ2bZkTaU82UZleHrPw9Ir980pzs8Grou/Mt1ALivGHk8Ni28zNHeb+pTuOYuBfYZaUrXB6Ik5WeBZe0coO91uCCBQluGsR5YngpOeRRbdmwsIhOkT4EMzZO8oNssmMYSCb9cXWX2tfoEYsatBxT5h/sNXmXO82rY+NTeFN1/M4AIIZjuK7yoMdKxeMqDi+Q1yvrQ31qLApjbGdCSqouvJOpCklLPggRN9ecfNIVzkuMLHDp+dVDPFvLPw1+JaqnUz4QeyXQQuuZkLLJ91knspdEsS3l2ZFh857gH/1ww3DBU40ZEhq3V/yQ9VUzu0PqdkLJUhBm4gcPA7Z8op/bvjWoAq33mP4A0FCDYVEV6QXx3MvaKqa5ir5Y0ImPWLs2wft68pO+4eInw1Cp/P0ywa1dS/Q2jwPAbMjVi00uFr9MsU+2VdI/jI5wu82aKDPNdL9pQqNUbNQrdnmSNZYMshIReFubp6UPeJGixuNPdnP8VMpqW2DompWvyCJU81M1Rw7MZdgMAXuxTnJnL6/AsXPSHlxBWzWn3sD8ZqUAX7CyJFfp01QFstPRytwifcgFF0LMu/wcCDN5ZFsTtSlHZy+FsfoaH8CBxDoXMGACbIOmiPM4S8vbElxq9BYayTo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dm9tTjZ2QTVHSVdhZzdHTHhMOWpGeHJQY2RRd2c0S0F6K3pHN3FidHY5MkhT?=
 =?utf-8?B?YXRLUnRIdFlRM2t4Y3VXck1nSVZEVFlxa01WMElMbzdZMEpMUlcxZkY0MU5C?=
 =?utf-8?B?RDdEN05Qb3V0ZWlRQkY2RE05RWhTWkEyeW9tWHExQy9KQy94bFEyOVVwYkZl?=
 =?utf-8?B?alYyTFFxTjVwTytZRE1Zc0J4WTVHNTZXVlBIQ1kvT0E5ZXQxNGxodkV3bTc4?=
 =?utf-8?B?TS9WdGhHejIzVXZnaFpjZ2IrZTZDaFI2Y3AwY0htdS8wYXNGM0EvWHBxQ21U?=
 =?utf-8?B?WTFjbXZpTTJIM1hnVXVqbjVmTGZQTFk5RmFlRk5lNVNkc0pPTlJkOWpVOUxi?=
 =?utf-8?B?VkZEdEt4eGpLQyt3OWRpZ1BEMDJ4TzdMM085aC9xL0NmbC9VcXZxM3B5UHpa?=
 =?utf-8?B?d2FmVnhSTmlieTVMb05IaGJRalBCWTJzY1RrMTRKZHpvY2tCVGlURDEyQXhl?=
 =?utf-8?B?MHdib1pVVmZIcThTVzRtZXU5Y29OdzZJSkl6aTBiSEdWOGR0Y3hlWHAwNlJ4?=
 =?utf-8?B?dlBqNlpWR0U0ci9Na0FSOC8wZ0J0ZzVGUzFLZi84dWhNaEFHWjAyTWZ5YVJS?=
 =?utf-8?B?NUJxSzVFNzY1WWdDUll2NzQzTW5nTGh5REF5V0ZDK3RCRXhlOUE5OU5xWWdt?=
 =?utf-8?B?bFNKTXNqVEQ2dVl3Si9KM3BZdDh1aHRuVzdhNnQxUldaYkczV3M3NDdmYXA2?=
 =?utf-8?B?WGxGSmNEb0JUZU81c0tsTjUxRlNQWHAxUTVVb3JwV3gvMXJRWDlzN0ZIdUhi?=
 =?utf-8?B?TXltb2pDMmR0WHp5U2hQU1F2aTBTYWtsZXhHYmtQOUd0dUJ6ZXdVTnN0SzMv?=
 =?utf-8?B?QmNvcG1BYmovUUtGUlU4WXMvWDlVSCtnczR2QWlqcHFYVy9KMXVPcHlIK1BB?=
 =?utf-8?B?RU1xZ2NVZVR5U1d3a0FMdjBPdUpvLy9YcEFkRG9jdm5zOHR1cTlwOGR1dXRL?=
 =?utf-8?B?U1V4cEV0dUt4YW82T1pwTkFDOUZhOWdMSTREdXE3UURGc2dLYU8zYUUrZWxP?=
 =?utf-8?B?UHdPOWVkaStCM21QWjdLWVlyKzFHN0VzT1BUb0JMVUlyalpCMzhoUlViRW5F?=
 =?utf-8?B?UGZiWHpLRFkrdmJIdC9VR1l6QnJoMVJCck5xaXhUS29KTFZ3ZmxHRXZZdkFB?=
 =?utf-8?B?Wi9tYlZpSm5DRnN3eE5iSEZDUnhRdnlCSGpCc2xPOXhDNFZ1ZGh3bnRSVFFw?=
 =?utf-8?B?bm9NMU1UZk5jM2FYWllMY0VVS25sMjdIRU0vQUdlL21zY2JMNGxFNTJuVXJ2?=
 =?utf-8?B?WkprR1pOZysveDNtVVR5U2VtQklxTVRRbjRLajdlY0dkZ3dOSjY0bVRXdGh2?=
 =?utf-8?B?NEo1b3ovVERTRUdjUE01ZFN5VVZZcG9MeWsrbDFncVlWdVpCYWQrQlVrc3J6?=
 =?utf-8?B?WlYydk1wL1p6ZWNiYkN6ZU5XNjJUYUE2NVJnRGFuMDVKZ2JucFBDcDIzMmlC?=
 =?utf-8?B?VTFFQkRjQUp4S1VkVkd5MXdJNmt5Nm9wNW8ra3NjdElUL25ZUHNOKzdBNnhz?=
 =?utf-8?B?YzBNT0JBZDhlZnlKbWY2T1d1ams3NUlKUXcrOVNFUy9kT05nNGljbUhSbEdw?=
 =?utf-8?B?QXZ5dFpZb2tLWHFQRFhpbXFQRkJIb0NFczNKVUMxaE1tZUsyaTk4cnVPaXpO?=
 =?utf-8?B?N3VRYXp2VTFjK0kyM3MrK1EwdXVUUk9OTmgwZjhjcThORVE4VDRGOVhXaENr?=
 =?utf-8?B?SEUzdHFrSEFLY3hXS1F5U0ZWRlMwaytONEFKZkVjUmNTUXg0ZHFwV3hxcitq?=
 =?utf-8?B?bnFOd1A1Z0RyMGt2dlNXUUdZZWNrWG9GRDRQYnA3SWU2d09hUjhMa20wRGdV?=
 =?utf-8?B?cWVJaHdtN2NDZjY1TFk1Z2JJcE15ME84NkhZcXBpNm4rSFJiUTJySm1FcFpq?=
 =?utf-8?B?T2RweDVSMHdiVzBsNG9pQ2UyVnVNUmRpamNlTzduMngxTTdrcEFiNm1DL0hs?=
 =?utf-8?B?dXA3V3RtSklOREZtV2h2UDlnUzNNWlVFYzFxN0YxTGthbnA3dHNiNUhLVVdy?=
 =?utf-8?B?N0dTU2UwK1M0OVlITXdUVEh6VnkzeU5zVDYvd0dEVklIOXRHM3VFMk9YUWJl?=
 =?utf-8?B?bjcrRXhvNU1GM0ptVVgxd1hJdU4yVVZKMEd5V3lsaThScTFMSEdMSlExcEJN?=
 =?utf-8?B?VWVmaGdka3lidnQvQUdKRkdFRjNGS2VHc1E5T2hLRmRFWDhBYXduZWdsWnRk?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b745507c-4f92-4534-bcda-08dc495c9a4d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2024 04:08:45.5465 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O7UOX7IC91yEgPtq02wJipTCVpJmQ2GzmlrL1+w+sxWXFhE1MTEAQJT/iavTm19jlGdQPDAQZaR+fVqciBDtHK3jEMLggD4E40ZJURExHoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8223
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 3/20/2024 10:30 AM, Mitul Golani wrote:
> Compute vrr_vsync_start/end, which sets the position
> for hardware to send the Vsync at a fixed position
> relative to the end of the Vblank.
>
> --v2:
> - Updated VSYNC_START/END macros to VRR_VSYNC_START/END. (Ankit)
> - Updated bit fields of VRR_VSYNC_START/END. (Ankit)
>
> --v3:
> - Add PIPE_CONF_CHECK_I(vrr.vsync_start/end).
> - Read/write vrr_vsync params only when we intend to send
> adaptive_sync sdp.
>
> --v4:
> - Use VRR_SYNC_START/END macros correctly.
>
> --v5:
> - Send AS SDP only when VRR is enabled.
>
> --v6:
> - Add TRANS_VRR_VSYNC befor enabling VRR as per bspec. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  2 ++
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 33 +++++++++++++++++--
>   drivers/gpu/drm/i915/i915_reg.h               |  7 ++++
>   4 files changed, 41 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index eb8f36b38c41..9e5924e21eee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5356,6 +5356,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_I(vrr.flipline);
>   		PIPE_CONF_CHECK_I(vrr.pipeline_full);
>   		PIPE_CONF_CHECK_I(vrr.guardband);
> +		PIPE_CONF_CHECK_I(vrr.vsync_start);
> +		PIPE_CONF_CHECK_I(vrr.vsync_end);
>   	}
>   
>   #undef PIPE_CONF_CHECK_X
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 36fcded7564a..95da3cf27188 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1431,6 +1431,7 @@ struct intel_crtc_state {
>   		bool enable, in_range;
>   		u8 pipeline_full;
>   		u16 flipline, vmin, vmax, guardband;
> +		u32 vsync_end, vsync_start;
>   	} vrr;
>   
>   	/* Stream Splitter for eDP MSO */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index eb5bd0743902..856378f8b90e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -9,6 +9,7 @@
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_vrr.h"
> +#include "intel_dp.h"
>   
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
> @@ -113,6 +114,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	struct intel_connector *connector =
>   		to_intel_connector(conn_state->connector);
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   	const struct drm_display_info *info = &connector->base.display_info;
>   	int vmin, vmax;
> @@ -165,6 +167,14 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	if (crtc_state->uapi.vrr_enabled) {
>   		crtc_state->vrr.enable = true;
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +		if (intel_dp_as_sdp_supported(intel_dp)) {
> +			crtc_state->vrr.vsync_start =
> +				(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +					crtc_state->hw.adjusted_mode.vsync_start);
> +			crtc_state->vrr.vsync_end =
> +				(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +					crtc_state->hw.adjusted_mode.vsync_end);
> +		}
>   	}
>   }
>   
> @@ -240,6 +250,12 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> +
> +	if (HAS_AS_SDP(dev_priv))
> +		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> +
>   	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
>   		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>   }
> @@ -258,13 +274,16 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
>   				VRR_STATUS_VRR_EN_LIVE, 1000);
>   	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
> +
> +	if (HAS_AS_SDP(dev_priv))
> +		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder), 0);
>   }
>   
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	u32 trans_vrr_ctl;
> +	u32 trans_vrr_ctl, trans_vrr_vsync;
>   
>   	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
>   
> @@ -284,6 +303,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
>   	}
>   
> -	if (crtc_state->vrr.enable)
> +	if (crtc_state->vrr.enable) {
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +
> +		if (HAS_AS_SDP(dev_priv)) {
> +			trans_vrr_vsync =
> +				intel_de_read(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder));
> +			crtc_state->vrr.vsync_start =
> +				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
> +			crtc_state->vrr.vsync_end =
> +				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
> +		}
> +	}
>   }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3ff6a38826cb..2ede6982175c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2095,6 +2095,13 @@
>   #define   TRANS_PUSH_EN			REG_BIT(31)
>   #define   TRANS_PUSH_SEND		REG_BIT(30)
>   
> +#define _TRANS_VRR_VSYNC_A		0x60078
> +#define TRANS_VRR_VSYNC(trans)		_MMIO_TRANS2(trans, _TRANS_VRR_VSYNC_A)
> +#define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
> +#define VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
> +#define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
> +#define VRR_VSYNC_START(vsync_start)	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
> +
>   /* VGA port control */
>   #define ADPA			_MMIO(0x61100)
>   #define PCH_ADPA                _MMIO(0xe1100)
