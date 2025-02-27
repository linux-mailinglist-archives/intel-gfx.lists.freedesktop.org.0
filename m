Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74164A48B22
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 23:10:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7CB10EBA9;
	Thu, 27 Feb 2025 22:10:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KwdK08Cq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7630B10EBA7;
 Thu, 27 Feb 2025 22:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740694205; x=1772230205;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Q08ZoXUcXJuvtzZuUsU/faBXNIsUIM2jGvfTNV++McU=;
 b=KwdK08CqdvwCgUlZLt4rXy3W3W4l7iXLhB602WaoaVr9LCOIEx2XwecF
 nQOxdOUunFzh65nh5Q4Z1fsrVynPlUCag+wrFCfiGiJ7xE8R8SktnfPyP
 Z8xqwMBQ9hJBFyYGiyQslzwnE2yMHrIoV33xp3FAPnxAmT53TEooMDk5V
 QqncZdFXgvbuuhs0+/BWfleo1a7g15vufhtwS3eDZe8aUYtgjHCe4mZOh
 kExjDc5H8DP3wQ0pdaJYRvtkWh7mnoTad8ZxPRktVFTsiRyticeLyZvrO
 PDmNtABaSTGJtfJOrBmoELR2TE6zPb8tYDpx8BZn+1RUcD4Cv/2cEGWcc g==;
X-CSE-ConnectionGUID: r3gFaCGqRbC2Yq2lHmZFyQ==
X-CSE-MsgGUID: 3DW7WhNzTgSDEzbcfJ5ucQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="52241464"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="52241464"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 14:09:55 -0800
X-CSE-ConnectionGUID: 6x9Sb8iTQKKMX0lS/Ty8uw==
X-CSE-MsgGUID: wEqZfsTTQmiSASzUozuAPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116922518"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 14:09:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 14:09:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 14:09:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 14:09:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UyAVnJ0R9jsEyI5bZjhYETQR1W9/os1yz5csTVy00npgew7/8zy3Fd1VKtjtYhfeesZ0rhBAwC/sjR2N3JeDG92vjzV+905r+cbXUwD9oFyp5W0ROM+/j7iopiWD3bgkyblK89+SQjlWSbSBBMRyHqVvBTyZc1AfQ0ZROpmTtNTcviBY2fTdmUrNaH1wKYdAuMGIycbJ59cyWEkFH9meNc6huzHLtc53q5yfBWPCPN8bjuRjx0w/oGcP8ttzRXSgAHrqOhwIbW1JLvjFBpypHn655N8n+vcYFm1sTMQHiRr5yybhy+nd6l7GWX8Ge/o4A+nZ4fHqiBGBSLmAIbEsJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S83nnoJZ6juUYiYTulFJCOD+WBjFIF3hPDfKyq3jGuY=;
 b=Hmbq79gdoBX9xfPt3+9yVRi430BmuqN8EwkLQk/Tp+cuB5qYPOQSr6GYaEtrf1D6AWPWonl4h+lkFxbYORkQgPzojxOU1Z+aykQHNgvcC6E1GENcgTErmFX0W9A8IOUcoXG5kmcInc6YE75zBmQF6VETJ3t4q7blle55vxhv/CGlIKXiLofQhHlmyqZjliiI9TS92UEi0WtTiBZ0Jx5Mr4dyi5ZFuj3TjsbDQbkJelu9+Z4MYqXtgstKX2HeD5dirgm/4q6rHjX7DyTjxmcwWhRQ+9+i9xEcJWare79rTSDpgtJIZyAUV8PK3VsPWd1WwBBkIfP2OBXB+NusVapJrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7568.namprd11.prod.outlook.com (2603:10b6:806:34e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.25; Thu, 27 Feb
 2025 22:09:51 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 22:09:51 +0000
Date: Thu, 27 Feb 2025 14:09:49 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD
Message-ID: <20250227220949.GU4460@mdroper-desk1.amr.corp.intel.com>
References: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
 <20250227-xe3lpd-wa-14020863754-v2-2-92b35de1c563@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250227-xe3lpd-wa-14020863754-v2-2-92b35de1c563@intel.com>
X-ClientProxiedBy: BY3PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7568:EE_
X-MS-Office365-Filtering-Correlation-Id: c8fa44b3-165b-45af-1123-08dd577b754e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gIbPiFw+mf57ymvuybPxRYASd8R1URUCD1RW+NeDcMFhspNYurP8PPDvNMwh?=
 =?us-ascii?Q?/7sd+SnfB9Yp/tbYmenk1+lBM/7my+vbWCb38Bbq+smkNRwZLBhcT7FZ1OVh?=
 =?us-ascii?Q?M+RXWVMg5UvsXOjS/DMjI8lhJuIG7P13JlXNb6K65wF7MehoGIkOKuzeYcd4?=
 =?us-ascii?Q?9txyVj+cE81/HQCXn3FSIjRQg4Bd2AvG0mokcdjnThBmcZ4aQBFfELXjV7Qw?=
 =?us-ascii?Q?+40LSiRjOCOTdUW/278Vn5S7wVWDGLfkB84WKMjIMnVoX8r4LqzchBfUIl3c?=
 =?us-ascii?Q?9cuzrgHj8iJhHa59bLSw+6IJ5u78GE2ci8IojyfbU36Ad7Y30K4YBIlc42oL?=
 =?us-ascii?Q?Qvc3ldHSEKWC7GXJ80x7nhKrAZ1G7NjzqdU7734uGXVGj6kctpG219gKpRtq?=
 =?us-ascii?Q?P0QlHf4H1SPlZLeLPMA6zF6HgSeXlKDbOiq3mwQvNnetDRgO3w8Tlq1o7DZp?=
 =?us-ascii?Q?5CEeL38H80U0XMXMhGZMN91s9ua5SKzXLygPJDhktzBSKskljrZkWIBa6NMb?=
 =?us-ascii?Q?/H7NeHloUfFLD3YEnvAtMwXfvd/hu5TXIacRqV8jJHglaRMoR7/s5fs9tCbu?=
 =?us-ascii?Q?54hm4Q18mK0MF1GEREWnESmtaGMROBHgcxO0McNsDU7B83FRX4A8cOkLYMxD?=
 =?us-ascii?Q?300leWnAIcBXun5Mx7e9OEMEpv0FtB+fQFCASvqkHtk2Yv2d2R3dtctfIHHT?=
 =?us-ascii?Q?XuAEzqqWZJzko40zCheYwohXrt6WM5fAwzDDuR3giSzTA2PIuSZMZP4NPICL?=
 =?us-ascii?Q?TkfAF9OWVKEWYJy19VwpvxeDMIQylvMZoXo5Xq+8t6Ja8I26w5x/y48jj4+u?=
 =?us-ascii?Q?ryUpxkT3IyE+HDNRmGe8SNC8ZxrJNWzNDYSMKqmXGWFpRr+mEoi6MziTr0t6?=
 =?us-ascii?Q?EkjpVmuYn/mGEi4EcQWqrd5AcXGz/w9p+M/ZDIVe95ZYChQNpllhXfg5qldY?=
 =?us-ascii?Q?mTn6aawCLbHV2p5oIWAWGoc03hcqUYdWUCkLATvuUPq8e9klpedxWg73zbZE?=
 =?us-ascii?Q?0UCqxJXxjPmIt4gUw8j6Lkv6Njb2fs5f8AOf8wYhoczs891fYhvrB7zLIxz7?=
 =?us-ascii?Q?K/27sCG9BxwqLqyG8PWSE/P7D9msK7xmMljgoxdVOtwqDbVDOZjC9zUUJcTq?=
 =?us-ascii?Q?YCfePfalIwWOrtTWCBofTEwj14hApxrccP5eavd4Iuqtjaae3koqrDCTOq3z?=
 =?us-ascii?Q?OhB3zmcD/8m/WOfF09WcOXMoVbz3lW1ujtA+8g24y1lWmFNrCJDfDL1ubacM?=
 =?us-ascii?Q?LD8CPj4WrkE8cjwJ/Ij0FRv27bd5W3Tkmmf8siU/TCL9O4YOSqODadwYyQ9L?=
 =?us-ascii?Q?bFtn7iVG2L1WqsR/VpO3H813uRg1mtZYIngXZ50D78JpiSYQgnBRMAdudldC?=
 =?us-ascii?Q?wv5sPf8P11znxeaEppTmm92thcah?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UuSBECgy7GiQHwC8/9t5nNPgMSHmUb+EF5kcALDaKltcYOep3gxqU33Yc7oz?=
 =?us-ascii?Q?R+7Q3I/xr6jP79ALAm90UFRDLDqR2vvKezmk8Fd7i2pX9ItL65zZVNdNnNHM?=
 =?us-ascii?Q?8i0FUp4E3oJYp3gCqlPOh6puaLkYnY/dUv3oguRBSYzMUPbdfFI+8Ylt+ILL?=
 =?us-ascii?Q?ZM2TRNNL5aIlY7FaFD/Lh+sqRO2Q+/CSCOPwIM5rsfLE0q+bfDU3ejT7hDrq?=
 =?us-ascii?Q?grOUVbI9Hls48wW6yCAVLXA5zLuBoZm4g8VVpFJfMyQmA0U5f56Bj0pnf8v3?=
 =?us-ascii?Q?JWf9kW3cdZGlGi8R5SOkk1kxNF2zDhYbaPYRvjL4ihlpgqzUZnIrpJMLP/p0?=
 =?us-ascii?Q?lj88m1ZgVjcq1gFIn8OCyaRJwQ03jAoWR+pfYr55JwiGgApVH4dEpFRavyIx?=
 =?us-ascii?Q?PJulCe7khrb/E77jH2pJlewZqt21MzZ4XwDmL4HZ29GuGrSa8/521PsvMO+n?=
 =?us-ascii?Q?uI0d2D/q+1bCa+qmlLhxy71yD5nQKGTFSwcBG7vQ8LcJ5hMMA+gNgReGYf1U?=
 =?us-ascii?Q?az5xI7UA/OBtPrdRPR3/CrlhqQ9wDwcxEydVv+BTMLhhflNxHap0Z3kWAdx9?=
 =?us-ascii?Q?IYdwmv+2l3cszC+qjWMT7kn7T+MoF56uooGIvXpWoJiSEwOqWpyp1cUU1/F4?=
 =?us-ascii?Q?iA9re0IBHF74tcFgvoB+kfLFBot/Ayb1pwIC5CBSw1GdRJG7np26/rglQhM8?=
 =?us-ascii?Q?hJnifSy2xRcgFoXIg5xvpYC4RfpUX01zLmmTp48e8mn+RqYNvxUXI/baigWF?=
 =?us-ascii?Q?3NwLKguSJ+dxS8Mt4PupusQSM/CWBlO61WLHt3mYvX3TOxKPmkc1wzWRwbAI?=
 =?us-ascii?Q?XhkDB3XauTP9oeTNugNfaBrBb+E5Kaa+AMQw9qTwS4B6jsUUzuiQuHBDoeJZ?=
 =?us-ascii?Q?I7J33kKRno9BtjQKMJR11krub2TZZf3mzsmpY3XO1ulVkehDKmYf7zAW3r9F?=
 =?us-ascii?Q?tynCwmBY/+hwwH0nRr11I2eIgihePuEE0ulYC7NhRsOZnQZRlHZFXI4gDmxd?=
 =?us-ascii?Q?DDbWqy17RmfEhWHkPXMThwVK5IASGYdh0zjn1Jg9CKYKTeQVI99uybMVagiu?=
 =?us-ascii?Q?+DBpi/YMlboAaH4sMAXcNNIfGP1VGUUwRGpXcBYza8vTiMTQoKQz1bMNzoDo?=
 =?us-ascii?Q?48wEsevTJRJZXRKqAS1tlLNOKhm1Wqz/gCB/wUB/YD/uk07H4cnJWdOG6DKl?=
 =?us-ascii?Q?vVd94prSChfZ1Kw+gEA3U1qxuOqemDVpxWWUQQQ/GpHD9hofSzHlpuBJvOHn?=
 =?us-ascii?Q?AmlHVswR4JPdqXWcyD20RD0Eth7pAWdsgle7fjjO36wuxLx+3E050xX5cjDb?=
 =?us-ascii?Q?+VGEq4kkEMB8EBsf9tobyU6uJZbgVNFTL7QlmXUD/UMVvb/i5zdb1fs+8Eal?=
 =?us-ascii?Q?2VqukVBuGaIf+8t9S0sPz0ZmVMkL/3sv/3f6zyXAMgc2qP2iSfdb8m7dliFf?=
 =?us-ascii?Q?z3yES+NLc107XB9La/9ipxcSLZMBr2Zmtx7M04YjVGvIUSZ2p0SP6mPLqZXc?=
 =?us-ascii?Q?/HH4kbbiHQkf4XWeHSYlhRUEbrAVK4xJ5c4gz53cYFXfrL33Htu7fo2LUHrs?=
 =?us-ascii?Q?2S8KRrQwklSEiMNAJiDlItiloSwqz8gyoFDffXUH2D3rFZhA9xCwSXrY+2Vp?=
 =?us-ascii?Q?Og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8fa44b3-165b-45af-1123-08dd577b754e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 22:09:51.8351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CabLA+cIPKwvKraaeUKc2W+bqdfFFW/+IGPwxz8bN9tC4RmnjylnHQDXyLJS1O0AuaB0Uak7zQJubmllluICGSK0vBcVltW+Es/r2V5JJsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7568
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

On Thu, Feb 27, 2025 at 05:28:18PM -0300, Gustavo Sousa wrote:
> Workaround Wa_14020863754 also applies to Xe3_LPD. Update
> needs_wa_14020863754() accordingly.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 115c30a5ff70063850e45ab40527d1c17d0173b4..ea935a5d94c87202a68f84b28b0152835f47fe73 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -190,7 +190,8 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
>   */
>  static bool needs_wa_14020863754(struct intel_display *display)
>  {
> -	return DISPLAY_VERx100(display) == 2000 ||
> +	return DISPLAY_VERx100(display) == 3000 ||
> +		DISPLAY_VERx100(display) == 2000 ||
>  		DISPLAY_VERx100(display) == 1401;
>  }
>  
> 
> -- 
> 2.48.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
