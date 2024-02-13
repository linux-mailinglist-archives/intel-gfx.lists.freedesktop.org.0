Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89D7852860
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 06:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AA310E31E;
	Tue, 13 Feb 2024 05:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nDXZc5sR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B748710E31E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 05:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707803427; x=1739339427;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1V5hLrklPwQFZgKNSxe0rfzMeg2Ia9ePywtarwa2KOM=;
 b=nDXZc5sR1Mgsozgi/PWF6ChmCGYlKoSrTtWUpLii/0a1lzAmatXqn0Ow
 /grtjB1G85cc1FB8v1arG7/EuQYUtgVteG9VImJriJYjLo4L0ulXg+BJh
 ClaauDX+VYxNceiCqAwVDoymW7eG+YL2or3LKGAl78XzqcuerOK4/Snz1
 tOS+qKZBugE/ZFeoXwZqSXEPi37lnMN4Qud38P4hg65HJJulE7V2hwJYU
 0nDQh0lo2a4AdIop1PXKlSQx5lwD+H1N23MAEIeCw30/S1Zlgx3V2NEsM
 eRae6fT87R6TP9mKB0PAmYuVTU3vOAbWlJdigHx0pvcA2tW7wboM1WcOt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="436945081"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="436945081"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 21:50:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="2834883"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2024 21:50:26 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 12 Feb 2024 21:50:24 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 12 Feb 2024 21:50:24 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 12 Feb 2024 21:50:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dj//1YULn/dD6G+QC7YB+ENJZ07M5QhWhODIyr6Tp4u73ZqFWLlVA/7DDB5I8WOyXbxGFNo/NgKE7HjaKjbqu0TQQt/fZ5hywTHRGM2nzZgqJylvmCT8zMxx60HzhLSeknPZ9yt24HT3TD+W3SH28yOhUpneJXlbDh++rxp4AjoUJQ5cajENa5xBg4VS1gxQckfhxuYLMbZLyLxj6yja/q6eDkeoZMhiMCNU5VNk9SadBPHDwj3FJnNmr/NJtggTUH57VcjDSBQokYXURqdr56LsAizna6+eUzLpgbO+pgqhULnKX3tNicw1spcDtX20KmUhBVI5Y4QbDskMFbqOTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yKBn455mduNXROcOp7IW/h25mHwSO4G6/VWe3Eg3CRc=;
 b=Vwf0Zu0YlC43D9bkZkXKI/aj7uH7pJ3Zy3NvZxJyhVjVfs3jYQ9YPMu6zVgRrIWXse4nPmm3YTQmKRMArT/5Aar34Kg17E1jA3dWJz5M0PYbbBPzejNtMdNVnIMXndZjHHC0Bgicfy8rb2gO/BscyGFKu4AfiFZLhqpECLAQUxCq87VMjuzVEdNrLsO0QqiihKxyMDPKlZKtmBAzlLyx6PF6lKx3AXViIHrFQUNnNdHNYgDFVeberSArGiOG2aAb9JtOwjmUKs3ziOCvLWbZfmBbt1bCLF5GLIa/lWa6K+Vc+Pb3xYynKHYN2Su6eyg36LY0Kr5c1lgxJjZCH1l/FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB6040.namprd11.prod.outlook.com (2603:10b6:8:77::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7270.39; Tue, 13 Feb 2024 05:50:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%6]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 05:50:22 +0000
Message-ID: <29ed7f1c-ae96-4dbb-a28b-afc1975d702a@intel.com>
Date: Tue, 13 Feb 2024 11:20:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/i915/display: Compute TRANS_VRR_VSYNC
Content-Language: en-US
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240212173623.1464540-2-mitulkumar.ajitkumar.golani@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240212173623.1464540-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2P287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB6040:EE_
X-MS-Office365-Filtering-Correlation-Id: bbbd09c8-6dcc-4a06-8c9e-08dc2c57aaea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h0ULmq9oIFQWMAP/hOyVjp9C51DwEV4qxMRgR/BHj3+WF38Rnv2V44JPL/zbtu5gVD7TMQMPiYEEfrWQlrDwLEBq0zOFUSv227kyjNdwxtlyKO3GQ6u4N3YBTsaHqL+ikwPKwGDVijIxdNLMnvIoD538EriZNg1TSczDQXIEPLxRoliahlgjossf5WhMrqu1CTRZiFZUmammZmixvjtCRDDpKzZD4iRlenwV6KYfACqhJRRPzD05eKzoHdO0Ik3L+H7tv9eOe+xF+ZRD2JA2BugTcIcyYF3E3uabRKEvh3xUElwRf3NYP8yV5Li4uuRp2ZlqpBzDTbDGQlPXRjOxt6Qc3r2dGM3DMDDEono6AuQSWpLPVi1769K1wLsuX/tuflLwVPmdZO5bGxmykoR+5ZeErowYCGsv52/0dBOuvQ4hGd5hINdzGWRf2rRec812IKFbUeaO9rRdNe66vzzYZSN3+hHaEJxvAqbsgbDcweWcPVxfZ8nJzv9CQ7we/HHQ6tihrHT2j5hWS5JGDjI47efca916mJ9Kspbz/7CFZn1ZfGBEgTTjUcihiqImJ3Gm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(8936002)(8676002)(2906002)(5660300002)(66556008)(2616005)(38100700002)(36756003)(82960400001)(31696002)(86362001)(26005)(66476007)(316002)(66946007)(53546011)(6506007)(6666004)(6486002)(478600001)(6512007)(31686004)(41300700001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnVFUkdrVmFQb1UrZjg4aDhhVWJid0IrbDVtajBhR25JZXUvVDdHajIxdllN?=
 =?utf-8?B?NXprTXJTcExMSUpjQ1NWaVVRamJJaUQ4azMvMW1mTEN4NWRRMThUWGpNU20z?=
 =?utf-8?B?VmNYM1U0dnZFRCtDaHlSeENxUm02d2dkVnI4Sm96WDFDcjRDSmNlZURWcXp1?=
 =?utf-8?B?d2w1OEw4V0FYQnk4WEdiZkF0T2FGWlQwMjlSOU1ERERLS3g1U3JmT2Q2Y2Zu?=
 =?utf-8?B?TkNhQ3p0bS93R3JyaWpsdlpydk1qbHpYWEdIYjZmSFQ1L1B5d0I4TGtoTzY0?=
 =?utf-8?B?cllJTSt3bFRWR2p2VDVOK2hYWHkzb1V1ejdSNDRDYkxZMklNSE9ab0ZyTFlM?=
 =?utf-8?B?M0U0Q2NqeEpXWnNZbFNOeEJvMnhRRkZOQ1MxM0ZCc2VOVis2YWE5N2tLWG45?=
 =?utf-8?B?ckozbFRSWEdMMStFdU1sUlFidVNkWFExRnpNdHRGYXF1RC94RkFDbzdzbTRM?=
 =?utf-8?B?UWZBWERoNDkvdmlaRkp6dis0QWpMMzE4aHNzUVN4cEFVMU4yOXRJRkovSml0?=
 =?utf-8?B?SEdxY1BKb1JWM09VQ3NFYmlsQnI3OW9ZZVllZzN0L0RHaUk2QUl1ZVd3a3pI?=
 =?utf-8?B?emovQ3RyamozVDMxSmVqU2VrekM1VG1FNEZGVlhibTFvVlg0RWpVWmZVdEZs?=
 =?utf-8?B?VnFvZHJjMGZkWWZrUVlHU0hLUTk0N3VmdUF5Nnc2cCtjZ1M3cmtDOUpSR3VE?=
 =?utf-8?B?eXJrZ1lzS2ZYMUNvZkN0d1UzWlB6cEJyeHNJWFdoRlNnN0xDZHdSNkxXOWRJ?=
 =?utf-8?B?MWx2K3c4UWh2Y3NUU3p4eWpjWkxIbG1Famd2bnJJeHBsVTdKT0ttZzJNWDh1?=
 =?utf-8?B?SjYxUFhPMURLS0M4V2tYQ1Y2YXlXc0UrcGI2MHJvY0ErdWF1UllDZ1o3bzVs?=
 =?utf-8?B?THFockN3ZCtUVm9DcVNybENmLzBLaXlJMldFV2F4S1cvRUdES25KTGRnMVJk?=
 =?utf-8?B?ZGxqQTJOT29YY3dUUXRWZTFDdkZ1WVAvK2JNYldreGNsNGptK0x2NkFRZ1dW?=
 =?utf-8?B?S1YzR0NzUFpJYWFMcEhGSmtpRkkvQ1F6ZUw0cTdGWTAvODlsNFBLTEtibmhq?=
 =?utf-8?B?bWNxOEVrVjFJd0NnYXlvM0s0bkNnd1RndWZHbFVRcUN6d1lPUUY4TEp6Z2hM?=
 =?utf-8?B?dXVKc0xvZW1wSmZHY3h6WFNMS2RRcy9CYUtlR1BDYXozNk9Fdk9mcVExUGll?=
 =?utf-8?B?enlJelU5bGtjSm1vS2ZYL0RtREFsUSsyNGVxK05IdVlCeUJGU05xMVNZSEYx?=
 =?utf-8?B?eDFMS3dZMGxEalgyUUtnTHpJRGpiSkhuNldyU3B0UUIxWWkzaDEyZGZ1Rm5F?=
 =?utf-8?B?eStUQkZPbC8xYU9nUXNGWHhncjZRb0tBS3oxeHhoRHRMRW1veDZYUDZGNDA5?=
 =?utf-8?B?UTI1bWxXNWVZekVaYlBTcGNCVVpJa2VjcktON3lBdHNUZlQ5bnprdXZYVWRw?=
 =?utf-8?B?VTJVNmhMY1U1ZEQ1YThOekdaOUo3RUNUQ3R3MjF5OUtabW1IR1ZWNHB2QnNh?=
 =?utf-8?B?SUtPUS8ybzZLRS8weFo4M3ZZL0ZVL3QzRHR0OENCV3FGWXVTYWREeGVmekhk?=
 =?utf-8?B?U2U4MFVMRFU4SjRMSlRYd0NyV25CVmovc1VwN0tsaEUvMk9remZtK3FhaldO?=
 =?utf-8?B?TXZMelQ1UGlzNHlVM1lrNkpkamNQellWTDQ2OG53MStnK0xDZ2M0UkFZeXJs?=
 =?utf-8?B?MUpKdUNOa25CZHhSZHZ6V0h1cENuQUNkYUxOV1FpWWQ0QnlpL0VJQnIycndT?=
 =?utf-8?B?S3JmVXBMTlB2a2wvcDlNN1BkTGdHa3c1QWZaZ1h6OUdhRjA0NWwzbG8yMGxH?=
 =?utf-8?B?dUFDdUU4eUlnNmEzcGxXdmxvMytCR2dydjM5dWlwTVp2ZmJnOTBZa3cySjFw?=
 =?utf-8?B?c3lzd0ZBWGkweVpncE0wVFZnaVRaajZuTmQySXd0UU5oNzkwRmtvQWdwaG9O?=
 =?utf-8?B?Zy9ZdlN2SFlKS2Q5VnNhTlJXTE5YNXRvM2VtR1c3U1ZTZmw1aElpSDZ5bkI0?=
 =?utf-8?B?VzVYdkVSL09HTzc4cVRnMVRtQlRmeWFHeUZTbW5kWU1RQUt0dmNHMndSeVhm?=
 =?utf-8?B?S3Bqb1dVeVRMUGc5dmowRHh1MGJqUTBYNmVJWkR3VlFUeHgrVXhkY2pGNkZh?=
 =?utf-8?B?RVFwLzhwMmlNbE81cnhtMXB1UVllcnZ0S2xHanhYVm0wSHFvcHNodnMxN2hG?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bbbd09c8-6dcc-4a06-8c9e-08dc2c57aaea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 05:50:22.4171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6B4xYxWLAcY8M5TvlkTfoa4g9anqmnqjTOnforFIxZdAIhR3LNifxmukMyYDAdboYjkKPHioav8q8j/PFMHP3W8iV/b+PzPxtKqM2X2DJPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6040
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


On 2/12/2024 11:06 PM, Mitul Golani wrote:
> Compute TRANS_VRR_VSYNC which sets the position
> for hardware to send the Vsync at a fixed position
> relative to the end of the Vblank.
> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c           | 9 +++++++++
>   drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
>   3 files changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 01eb6e4e6049..c73a0037f6c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1411,6 +1411,7 @@ struct intel_crtc_state {
>   		bool enable, in_range;
>   		u8 pipeline_full;
>   		u16 flipline, vmin, vmax, guardband;
> +		u32 vsync_end, vsync_start;
>   	} vrr;
>   
>   	/* Stream Splitter for eDP MSO */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5d905f932cb4..59628c360a78 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -149,6 +149,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>   
> +	crtc_state->vrr.vsync_start =
> +			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +			VSYNC_START(crtc_state->hw.adjusted_mode.vsync_start));

The macros VSYNC_START/END dont seem to be correct here. This register 
uses 0-12 bits for vsync start and 16-28 for vsync_end.


> +	crtc_state->vrr.vsync_end =
> +			(crtc_state->hw.adjusted_mode.crtc_vtotal -
> +			(VSYNC_END(crtc_state->hw.adjusted_mode.vsync_end) >> 16));
> +
>   	/*
>   	 * For XE_LPD+, we use guardband and pipeline override
>   	 * is deprecated.
> @@ -201,6 +208,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   
>   	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
>   	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
> +	intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
> +				   crtc_state->vrr.vsync_end << 16 | crtc_state->vrr.vsync_start);

I think we should write this only when we really send the Adaptive Sync 
SDP, when the source and sink both support the AS SDP.


Regards,

Ankit



>   	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
>   	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
>   }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e00557e1a57f..3449e65fdf1b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2007,7 +2007,9 @@
>   #define _TRANS_VRR_CTL_B		0x61420
>   #define _TRANS_VRR_CTL_C		0x62420
>   #define _TRANS_VRR_CTL_D		0x63420
> +#define _TRANS_VRR_VSYNC_A		0x60078
>   #define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_CTL_A)
> +#define TRANS_VRR_VSYNC(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_VSYNC_A)
>   #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
>   #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>   #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
