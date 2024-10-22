Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7C89AB555
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B99810E6F1;
	Tue, 22 Oct 2024 17:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xwx13/3i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B9310E6EA;
 Tue, 22 Oct 2024 17:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729618955; x=1761154955;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dtDHLg1Txjn2cy4gkfwzWOe1ROqM93sfIZ60xzk/dco=;
 b=Xwx13/3iQkTRo8CJNQD91zarApHGM/bATGO3Zk0Y+U2UXok04Wwu+2Fg
 S/x1nkPVatVEWR1dxkMBSB099WCgLOEPVnEWkXjBpJDSr+EWYfkWJ0qKn
 ti784cVe8LxzAWxWf5/tAMtv79iv4tBsyAO5IkZwXSj8PXsi843fE9/d5
 IPnsVn5Z+7LkLEauPoHtS01/KrreNaEHG3cttXdhZmsiU6AoT4v9zwCxK
 poiyuE9y+pyAu9R6lXWM+ago+zdkiMrTZHdHeG3qSVn028o5LTwztBWbb
 IOt/tm14VDK+7jfFrF0a8HgQW0n6MldUs118yWJl6DrEd0m+eUkF4T1WV g==;
X-CSE-ConnectionGUID: WRi5P0cYRJiPMbw2EpvPPg==
X-CSE-MsgGUID: +v52SsvnSm6RVhcZpkCs+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39722820"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39722820"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:42:35 -0700
X-CSE-ConnectionGUID: tB1NVLBtR7C0hOCzw9Rtzg==
X-CSE-MsgGUID: sj9uAfDeQUKekjgRfiQaBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="84733325"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:42:35 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:42:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:42:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:42:34 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QTGYnqUYOckZoJSik5+TEDLoauwIlLeDDntpUj1yftp4ji8AFTxHQVqJLXQXeskb8nY8kl3kwD7r2qffTa/m77Krfgjnrd3R/TzEAW3OUjnc+WpjgXHh6SlbbA4bEQbnxHUQ1rIStqqc3ocmhzxPoaW4nZbKctX7bzl3VSvmUsTnoPEijuKhW09y1r4HE1IXJE7BSioPZL9Cwdmpdmk4+tKOP+fWzPeGNudX38ovA/7Y48HysrV2w7y3pyxqUTr6cdEaEMJhWqioXctNiV7F1gpg/CmUdx4wkJWCLzEiFtvTMzSBJQ2cg9U+W2GvaA0ijsSK0JV/TB7AGJCWyEMEPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sUKxmDcIbpyNWdglmGPDrhCE5iafEi/Pu+iLKADgU90=;
 b=ZEUhA1567AEX4o2D0x9ZJPRi9Gjt8H8yogzp+ZkWnCLB9Bz2gWEGU0jlHlG7T+iD1Ok+C0xXtvVKiSXUy584+n0mN0jh2o9XlKKAa/y1FdknO56ji7QyBwOuLtrjJOEGBjg9xcANPRtPW1pc9hRksANNk0WMW+N8YPH4pA8uybEosdbU19ZTy8Y9Os3QFPsGGSeU9pob+ZcK4PLQc1EZ2xiJkxfkHDbJNbG/rlzNWQnljnhzS1d8yBfdnloM9eMKSTmqL17QLC9WeOlHSyy396M1txJDgFgKFN81gKe7UTyrT52a2qU5i5YNoJ+09snE8Vn5QwMISSItGmR3uVNHgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 17:42:30 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:42:30 +0000
Date: Tue, 22 Oct 2024 13:42:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 15/15] drm/i915/vblank: use
 display->platform.<platform> instead of IS_<PLATFORM>()
Message-ID: <ZxfkA2iM-hqUe5O9@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <beed4681f5b69699a5bcf50247dd3f9b451a71b4.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <beed4681f5b69699a5bcf50247dd3f9b451a71b4.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0002.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::7) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: b8598b14-9a33-4079-4bf9-08dcf2c0e734
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VYU7f8Q3tqnQurUwqwmJ8H4Cw6xiLXv+dw82aC00C0SpwaDDpe7uAjiaPxbI?=
 =?us-ascii?Q?OW8ox1QFjirPatmIrvMJL5fm3QlLFnfMmK+PbvMOj2lqlB6kdgA5LzMCWOs8?=
 =?us-ascii?Q?tGPWqE/By6HWrlMUNMC53xvnw11b2I69O03AWd6PdA/LaswXqYkX8iPjHp0s?=
 =?us-ascii?Q?Wge1J/luSMBrtGRaT1c3ZK/uzsmoEsVwM8Hob176WWGGUqzdKWscwv4yaNoC?=
 =?us-ascii?Q?p1WhqcUY5G5pl0sTLYDzTjoQrVzu1s8K1KCoaQdpYloBQTKwzeWYfLHP44Ul?=
 =?us-ascii?Q?SwcIGTeTZZNdsr+QD6Z8FKzbxJ2oUBbpipmDzlclMPqtqXtxcYsoUMQ0EODz?=
 =?us-ascii?Q?A7hJwT4vPBXNIMJMcMFF34gR2IRLEh/qI2maew2tU7HRpoY9a2PtYCHepZZY?=
 =?us-ascii?Q?8PtVVCfdJHtIqq1KTslPHfnzNsba5BmHZe9E905Eo57imFonsJdfYrsw5Wqz?=
 =?us-ascii?Q?sNyLlMXY/Agcr27oBNOEu6GfnihwHH1cnB1fLcZ3Tlg7/KuIae3DYpVMqXu6?=
 =?us-ascii?Q?ESHp3PeJjECAZLRM7xWWgRsKf14JFBdAuE52g3p8qGlaJjro3avoZv28tiLo?=
 =?us-ascii?Q?05H1v207ym5PcrE1Bg/cQ1osMDsltBE99yqzI5nufFm7Rn4uLOn3NvQ2Vmf1?=
 =?us-ascii?Q?voWGvErrvk6gzjRrpn+9WD1PdqojoFm/BQvoVMmyKr1otsJvMahJTx8x0isK?=
 =?us-ascii?Q?RDNZ0t0GhX4mEhFQ3pxxGp4QlevHcTMUiJ+Mg8pQNf0rJGT8MT8xVpJomsxd?=
 =?us-ascii?Q?LAO534y7fCRObklpavEw8N4/OGGJs1OH1zC/7NoeDLwuvTYd3mURUGK+8gES?=
 =?us-ascii?Q?oNUjc2QMEPGhRJkpKrJ3Kk+E9rDKFDbDD6H/LQAyr0MknV7EmyT1Hq/H6Jc8?=
 =?us-ascii?Q?822NVAtDVhceG8C6/s4gh8URfW3ftY8dKQf0yLAKwLz/JRyT2Nn0Jh/qqyaM?=
 =?us-ascii?Q?inXxcqimk4cHRKGE4+ZWtGq0TZJIHtj9MyDEvY0cyIfFuPVe3pb1dxMn1zok?=
 =?us-ascii?Q?3j/5VTpd4sZBmDNaS+e2QjmmvtkY0obQcqCxwS/J3bZpFDbAEXVllhQ5g3Nw?=
 =?us-ascii?Q?Vw6w7Wna5g18i708W1oGMv6CEvrSJ9bBZMb0iqueiQVMLEiQBf88NeNLK88/?=
 =?us-ascii?Q?YrvKLuVp96AYM61lBihzYnrxNfS6jcPE2lFhik3j3MI9vselqC9Q3CtKEp0+?=
 =?us-ascii?Q?EdVfzWJZZRFGZvaK3pJ7FDJG9i+QSuyaPax8IV1nDhgHIVN9s2Lj7xystS2D?=
 =?us-ascii?Q?VLIOSe0ceAHcHSE3OsIrnrSMWUDzQFky21SVS4tq9iiZ0kLPe5Hxr7517cWj?=
 =?us-ascii?Q?dOoDM+0LxmCSRwUtt/D7QiLw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HeXepf1kYgf9ZJUs8Y7JeGNTtETqkcVKUu6nktLfvFGeaq8TSDTy+wzefurj?=
 =?us-ascii?Q?p4MXAEuDZY/UvjsN/9wRVeZFwgyKlvJ1hteDqKG6d+1ucgYp0JNQljIb2bTa?=
 =?us-ascii?Q?x8BFIe3dnqCXah3FwqoJ9n+IUV1X3GXOkfc4IcDd1R5djckq8SyGeP2YnFjt?=
 =?us-ascii?Q?CMv+3Db49LgGe7UoMhVGowNx7GBvm/LtUsbW7sq53MsX0ydc6tgx/BJ8XbKy?=
 =?us-ascii?Q?6tQenXnZKsnRPeec7MBt0kqQWnRrPngv44FRI9lFF/JcS+tVyMoiOr2nMZKY?=
 =?us-ascii?Q?qD0tuT9CvY5+sNoV5z6u1TmYsLeZBkFqwvBRrw//0c78t9uQxMKkI/EABqjq?=
 =?us-ascii?Q?UaAx7sSVP9ow7F3B6uNVBxg8bY0DaLcGxhm8X/jvz1YI4UhYStrHy/SDvmGY?=
 =?us-ascii?Q?okTJ6H31U3nIPtlTXOMJ3hka+TzecTfKNcdWENQMfiFOHo80zksOnaMliXNl?=
 =?us-ascii?Q?+QklCtIrZ6mkY1UfI3sjEozggFh1vTC59VJbcmOyPw5nvnpmmjpmHTmBIiMr?=
 =?us-ascii?Q?NO0CHHYCu6Qj96CCjbn0J1ShfDIFdWzxz5V1pdR0R7h1Ih1vHruI3nBTYXWb?=
 =?us-ascii?Q?hfNzigoQPpbuEKo+OPnSoaLtLxeHxSdiEVAe43zYyOHq5pZiL4IYsO5ooDNT?=
 =?us-ascii?Q?6vDSsjBgeVp4bNBU8uib/fRy3TXD2hU4+vHu01T09ZQki+7kMnKR6lcq9xtM?=
 =?us-ascii?Q?HSKSGvjXHnFVpTke9ZW7U1eEC9bMkbguxJCrM03/1C6G5ita5wVDaokzhULG?=
 =?us-ascii?Q?2xlQqeJtNBq1a7Tx4wyBe+XUBx4AwXb+WZjOw8nstp1EasTS5fwXaV2UNNP+?=
 =?us-ascii?Q?zJ2MO0k48unzKUcPc4G/6LHyol1SLUHFm1z6erwEW9eIiPYcgeOTZPQJoWxe?=
 =?us-ascii?Q?TBgRkaAB8l1pNXM+mDB+dxzw+uSb2UNoBFS3IkH+m+D6C47pZ1DcHv/QTrDF?=
 =?us-ascii?Q?x3f52C+XGY1iiDaTJw8CD2kHCTvfmHNidraKFEBPaX7a/1vTz1w87xg4VkBW?=
 =?us-ascii?Q?Qnd1LkaeaFlEkYvSj/cp8PsAt0VUVLFXeJIMOi38ogNFQsmt0+EWxrph2UP4?=
 =?us-ascii?Q?xLUfFatHQUl6Wl3kyuW3yor6ipXG/SpRcxkPeBhgj5g0bt+mNkgD3qzr1X1g?=
 =?us-ascii?Q?u9YkNt08AkgUJRkyk5GLwQj/kUfbfQHgSxLE+0AnqK6Jkcn7xrdtx338V96h?=
 =?us-ascii?Q?060saLz2UIjtwSMRALjaG2TqSLg52+zFAuS7yBsrFdDLKLkk8Cqyfb0bAUlo?=
 =?us-ascii?Q?Bm6T9oElXuGfiKNC8FGF30NIqYjVXLt1rGJnk1VYFTxII9fA/j/8+TOIGFMa?=
 =?us-ascii?Q?BJhMXBGZ9opMw54MsfqdRQNQ58XhKkoRdnsEQbCdshZpLSVfoYgr2sI1+feA?=
 =?us-ascii?Q?VTZy/LsxDGeWwiM/wm87ttUQ7FPvqKL5dS1lnf6TpGdl9isEuyCqocl3e+wO?=
 =?us-ascii?Q?gqRSw+xycxe26BjNYqGRoM1CN76FLfzwzsT7hr43cVyXYBDkbJFuNJe+zqrs?=
 =?us-ascii?Q?MR6hwKvsGkaXMtemO0KgyAdbu8+92guUZMp+UgIMTbK3Mjvq0s1buS2TEAcx?=
 =?us-ascii?Q?6leJGM4VH3yXz4elFLuFZyE/YBAHYfzjtoDVUb41XWhlzkSAXALyqF4D+wql?=
 =?us-ascii?Q?Rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8598b14-9a33-4079-4bf9-08dcf2c0e734
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:42:30.8367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LtxlGD1d88TQQGzl0BvW1M8t82K1BXTpvqr3Cps+7e7EJYWhcWtNEWV/mJv7AY5YXGUsRTSOC0PfrVeHtdRvGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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

On Mon, Oct 21, 2024 at 04:54:16PM +0300, Jani Nikula wrote:
> Switch to using the new display->platform.<platform> members for
> platform identification in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index d18b8292be49..a95fb3349eba 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -195,7 +195,6 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
>  int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  
>  	/*
>  	 * The scanline counter increments at the leading edge of hsync.
> @@ -225,7 +224,7 @@ int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
>  	 */
>  	if (DISPLAY_VER(display) == 2)
>  		return -1;
> -	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +	else if (HAS_DDI(display) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))

I believe this first chunk should be in a separate patch.

but if so
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

in both anyways...

>  		return 2;
>  	else
>  		return 1;
> @@ -327,14 +326,13 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  				     const struct drm_display_mode *mode)
>  {
>  	struct intel_display *display = to_intel_display(_crtc->dev);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_crtc *crtc = to_intel_crtc(_crtc);
>  	enum pipe pipe = crtc->pipe;
>  	int position;
>  	int vbl_start, vbl_end, hsync_start, htotal, vtotal;
>  	unsigned long irqflags;
>  	bool use_scanline_counter = DISPLAY_VER(display) >= 5 ||
> -		IS_G4X(dev_priv) || DISPLAY_VER(display) == 2 ||
> +		display->platform.g4x || DISPLAY_VER(display) == 2 ||
>  		crtc->mode_flags & I915_MODE_FLAG_USE_SCANLINE_COUNTER;
>  
>  	if (drm_WARN_ON(display->drm, !mode->crtc_clock)) {
> @@ -603,14 +601,15 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>  			     const struct intel_crtc_state *new_crtc_state,
>  			     struct intel_vblank_evade_ctx *evade)
>  {
> +	struct intel_display *display = to_intel_display(new_crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	const struct intel_crtc_state *crtc_state;
>  	const struct drm_display_mode *adjusted_mode;
>  
>  	evade->crtc = crtc;
>  
> -	evade->need_vlv_dsi_wa = (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&
> +	evade->need_vlv_dsi_wa = (display->platform.valleyview ||
> +				  display->platform.cherryview) &&
>  		intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
>  
>  	/*
> -- 
> 2.39.5
> 
