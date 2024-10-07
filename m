Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDAB99379F
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B889010E19D;
	Mon,  7 Oct 2024 19:49:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGhTgTwS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C56310E19D;
 Mon,  7 Oct 2024 19:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330596; x=1759866596;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dgAYIPQMhiOJ5pCqkU8D6uXNGmaQRhUogqgkjSA9fMQ=;
 b=IGhTgTwSu/kRZHnOYU/9BLfcsS1vQqAbg1GHW6Jhy4vmnj3xzy5x4W5+
 5d31wWq+wPSXW7Ujp/W4cpp7ischM8CBw+Gcv53M4HRCb+0NmtptAH9Pa
 bwvrZFNbM2DgR+Lcs0wY8D157We6jDtuHFE0U9m8Lb3weziwk6oGoERm6
 UxVwtRhjVl+DvlwcxnDgv++A76mXkO3gvGUzbvYIWFheQ+R+061/aIExm
 DemR/fkXhA9LGuuZnu+gwsQWQ84CKU0Csjym0uKPEYUC3GBPa4xMeeTGO
 d3XrvOTDgEaa/2NIjMmar0qEJwqpcxBkkOHo3StqO3vpRC2kJ7QrIU+v8 Q==;
X-CSE-ConnectionGUID: AjtwFixyTBSdfI7Frz2Cgg==
X-CSE-MsgGUID: moGn6ZTPSxWPFgAd3CcMWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38098856"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38098856"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:49:56 -0700
X-CSE-ConnectionGUID: 193dzF3NQRKwNrFWzf7klA==
X-CSE-MsgGUID: CinjEduRQ9i1izJTH72t8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="98911016"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:49:56 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:49:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:49:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:49:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:49:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GAFENXBFnRWPYYlqhuPEg9nuFCM1jp3UUFOf/L10i4hX0Fu4kTUz2QJfZmY3iUrY0KrePbCoHZhWH0UP1NOZ+XwsAdJ6IaQ+FMpqRvAVs3ZsAG3P90fwL9iiAd8AYffLT2etj7/0wutUGPMfxMkZS0iXkBMViJEqDdIbOpeAgoNeLr1zNwoKxiZsMPq5+iybkluRsadpeuDIdNzUubkPbXF2iWgqP1utKjmf35epgygbZlMwxm2/nlCt8WdAvRD0/4qyCo4X0BZO75W5UWZI2nWS+l1Zw1Buwdt9UN2vGB8EgSQSZoCD1MUAGAq5SY1o4z2l9I6I/B4jSkGBrGBN2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WvnspJ/8l8daeYkqmjEGIiwkcpbNwE79F/3wkWZ+2io=;
 b=Trtec+3Xug/gtN/lhlDZvWRxI6M/HGun5qelXJ39HI5PKM9OTQlT6eZgUanUSaOTTNIHaF5MPUnkhq4+URI/KqxFupBjFzfDjIDRnhj+IgUfZWe+m1/Zz7MEVFg5/rik3/NpAsOlF/TPnfGXjBfP4CMiUMP9xKQcoSJgwMDXNAkJWTKo6nouFt7695bdxiZQKGuJNZc9LtYsYMUNoNv9D9/HUNxIlEVEpJFdl8XwTA/sHBQdaCArrjvcLYYDXyELol+hW3fDoAoA7ioOEei0onnHktUDVUS1882E7IrTz9O9xiziRVIzrclxj0kpb1B3Dw5OC3vFdUNn3C3Balj8/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6564.namprd11.prod.outlook.com (2603:10b6:510:1c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:49:52 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:49:52 +0000
Date: Mon, 7 Oct 2024 15:49:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 05/15] drm/i915/display: convert display platforms to
 lower case
Message-ID: <ZwQ7XGH3atqGyMci@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
 <0574d8ad22b6899e01a0d84fcf32862ebe557dc5.1727699233.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0574d8ad22b6899e01a0d84fcf32862ebe557dc5.1727699233.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0118.namprd03.prod.outlook.com
 (2603:10b6:303:b7::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6564:EE_
X-MS-Office365-Filtering-Correlation-Id: b79268c9-3120-483a-0da4-08dce70935cc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CwYY5aXOlT0SEIViN6s4xc46tFq6O6iCIYavH0IsfTs1XmAq3XoM07OROBTX?=
 =?us-ascii?Q?4V5YQ4EVdGdE1oHodAwV+HDyYpfb2uov/m3ppkijirHUVRM3U1i6BbIl2WI0?=
 =?us-ascii?Q?qyP1+C5TKba3OJlYmmCfK9JSjnbcYZK11cgQHXMbx8963JzQzJx6i1xxQDHU?=
 =?us-ascii?Q?b3f/ih4zgwY2Aig2a2w+mGWYMd8HsH79nyVcM0DZatPODHPO5KtYKxxhM2ns?=
 =?us-ascii?Q?lkvFWwjndt87xGYnrK6n/eTl8mCPmHZmiD3n7s523qnLc229FAgAoAYAQj0g?=
 =?us-ascii?Q?J2eIekUfGCqDuvDM9IuYggjE3Lg2kYKaRaXrt67SN/YV63+svKfV0fPYhEPo?=
 =?us-ascii?Q?MjelutjUjya20FHKYnLxtlgQ+8DnARRM4UTTDZvr+LLax5aBcL9WDJ+1d8IO?=
 =?us-ascii?Q?Lg5HBVcUAYrv6PgpE3IYxdJtdASuejM1Oh5d5cI56+NQMlCinmXr7iXj3Zgd?=
 =?us-ascii?Q?02NpLQQp7XU8Ns2qee0al0Uv9l2QzmoqE09y/Emh9gTqom3OGkj2jj7Q2J5H?=
 =?us-ascii?Q?F3AnHCtBY8F6zM+kmeg7nMIn++AvjoTr5Nx0YnH8mRdU4lGNk0P4rAZGsCQ6?=
 =?us-ascii?Q?KQXbEkN4LWfqfdcJlwtCdgJ7I4vA2cpws4y4m/yBXDd9nvJTH0kQrA0o+XJ1?=
 =?us-ascii?Q?G27kbrMZBCj5zr6hwqFgYNXNAMKz1OV1c7hujno58wFQSwXWRTlCj87dRIFX?=
 =?us-ascii?Q?6SWW3ZQNCs0nQGjt5CpNZ1rjc5VfAd+AbUE/4PXEVpHEmibfZPRSRRUGBoqQ?=
 =?us-ascii?Q?HUT2eGn6kDTl2FF0OuReURhIGjNRXnMFOfcciJMnqIXnfS/qTHn7/oGY/S5E?=
 =?us-ascii?Q?XLxzSZ1ng1QQ4skqBWIJyhtB6PZNykqJnANC2bEXilb0KKs3RQMLt9HW50WR?=
 =?us-ascii?Q?0wgvOsA/d3wQZNsqOsHuChlHoblyaMxtC9i6J0xhAjyNUBI/sGD4C+OP0DPf?=
 =?us-ascii?Q?jOUdjj6Tn8md6jV1bM1MGoDszRdFjkegjkNZy9IIhs2x6IvpIbTKhqwMey6m?=
 =?us-ascii?Q?jP7W4sA+PePSTV6KyJP4iFcFcMDuhDAiBOVGNYJLp66aVhNIrrc/CPXCiiG4?=
 =?us-ascii?Q?zB5DD3Eb1ittfVl7YEyLim0vn9HJAYiCpsBff0axk41KZ9ApShH/bhV/W4C7?=
 =?us-ascii?Q?XJqhHT3RlLp1brAdU5smOKzUDIV/qSqXdn5GBRTKoRigeSn5ZWBzyxfFCg+P?=
 =?us-ascii?Q?UpYAADpDNRekpvAQ1sl0s3RcVpsGFe+z67bE7K7a6uGge3Iddh51hsw8GF1H?=
 =?us-ascii?Q?3Kud9gRglOcoLtYCJZ/awcWcN2YV5urHfBPoXQLtBw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Q2w0nKTK+64aqhhmkTxdau6HwAzNIE3x2eNTM7E8oWY9HD3v1rhFDj4FB2e?=
 =?us-ascii?Q?Yj9mWLnVhAATFPJ+/cTddUIXQMddNBHRIbYU3HuibfOj4EE6S8SIk9djndvE?=
 =?us-ascii?Q?LKGgX6SDnya6tT0RGThEHYVRnJg+Q3G2COSMwo+6hMihCfHV31Tf6RTBwOAk?=
 =?us-ascii?Q?iv68qGKt7+zMu3ICrCB+ssqEyswPPA82DX8PJuVN8M2/NCBV2ugeMAXCFwYq?=
 =?us-ascii?Q?DsRTBwNzAMpxrmBmGttx4OJ3FgRjEjO9x3M/h8AFADdKODjLdCYgB3yHkR/I?=
 =?us-ascii?Q?uqtwAAVP5bsbuDc11q/2m/03Vn4spUhOu/yzEsIxQx7rV2A7g66h0lyedD0K?=
 =?us-ascii?Q?8qyc7fdm9Zov/W1Y4gQo3nbnE77EzOJTGjaERLaZ1+utDC2WnNcI2ZSsDOkE?=
 =?us-ascii?Q?naendF+v5Ywe8qhuxRvpAGDoE7Qj1C5Ng8kY51r01jJAxMdz55VgIS4hjq5g?=
 =?us-ascii?Q?+Vm/bi+H2waKSIaVbw36necSB9aws40pKZZbkFy1nniwrq7dIsdQR2Ecbn6G?=
 =?us-ascii?Q?Gby/tiRa3JkfLpMkDNWwXtIlVo33xJERLX5CRbWEcNQeQ2kAJX/Nfw55wp0n?=
 =?us-ascii?Q?tM5GruYcnRXahDiWomxvsb3Mw/mEF2x5yUj9S21Tbx3jl6Z0YaMD+WNn1Ng8?=
 =?us-ascii?Q?tjnRBUYRgZxwmTN5ZdZXU9cuda4xHzJJftzVOtnAv12Y0qOysB5MXRoVaf5T?=
 =?us-ascii?Q?LwmUswXbVur8XmT4+mH5Co7wKNK0WxWIjJh5+x/QF9elnA4ThRW7jnf2VwgV?=
 =?us-ascii?Q?PDS4IcLweH88YVUoWx7QpZmPvwHA7RoItXjh6UpqBjqUwXRYA5UAIlgFgC8W?=
 =?us-ascii?Q?0OFm3L81MsloArUmVkrcMlkKWkdplyTSaa0jTdVHtrFEhVxELEExOKpecXgt?=
 =?us-ascii?Q?UVE0Y63wkGDKLXy8v8hQX84fyewH1ENHibOZs6NvknYe30HK7yKHy7puBz3I?=
 =?us-ascii?Q?FTYxAWtn4dJ41rX9BTY6TYPsgewV0Yrc51skq9XUUPd803aR36jBEZdpzY/C?=
 =?us-ascii?Q?kz//lIT1M8Vy1er/TXTXZSYciiY4DJeGackULKRuN94b7vOddBAG07baF8Fr?=
 =?us-ascii?Q?lDOCyzK/1ZBHgDaM0FlwDEJIqTGLKPKPVgm09ftq7DYC/38F0TcB03OUSfpy?=
 =?us-ascii?Q?MuN/v2vrm1bPreZsyRTKteH0+vqpA9IJWNy1RZMs8YtBJ2IOK0XMBoX3uABF?=
 =?us-ascii?Q?rBTFN7RV7klhDkwRGO/0AphqDuZmfaSgqbYfVAp31t0UE7lKPFOV5U+YdF9L?=
 =?us-ascii?Q?yfpHagBkXu0syLrwYf11n8HrLzQYEsgdhasbowD5yjLAp4XXE87ghvLVCTfj?=
 =?us-ascii?Q?JmZb5y0ugTAhcc7n6IRWAQ3x2PrUb3byceWjI8y8cWwc+YySuFaJSG1WaG7p?=
 =?us-ascii?Q?FjxO0+c6PRf+zSIDo4+0UKGOyrPeZQm0+uyusNXvsea1oUf3j3jVv2WFK9hj?=
 =?us-ascii?Q?yX5KvxOVdw5RltTIAAhq7En9NBMuLeaaVQUiHO5O2Cxv2M6+l6cvdGfHRmH7?=
 =?us-ascii?Q?J47eI/6NbRODbIcJTKdc/Rb8V5JnLWh6mPFVIZn6ph+L/SY8XgkYTmwqQGFF?=
 =?us-ascii?Q?Jj72SwXcTV+g/O9rj3MdAOntjmBMkN475SB1nf4pu1JDMscEdPIreMpXaFpc?=
 =?us-ascii?Q?yA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b79268c9-3120-483a-0da4-08dce70935cc
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 19:49:52.8099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qyvO6kadMPeJJjo5qZCu1RwdZdfL1NbS5yHUv7NVtjGlwVa1wVFY7CWQ5C8WWunaeKu72EYO/rIASCxwrz77Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6564
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

On Mon, Sep 30, 2024 at 03:31:06PM +0300, Jani Nikula wrote:
> This will be helpful for follow-up, where the names here become struct
> member names.
> 
> This does impact debug logs as well, making everything lower case.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   | 120 +++++++++---------
>  .../drm/i915/display/intel_display_device.h   | 120 +++++++++---------
>  2 files changed, 120 insertions(+), 120 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index ab98a69b84a7..b2610217f5c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -236,7 +236,7 @@ static const struct intel_display_device_info no_display = {};
>  	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
>  
>  static const struct platform_desc i830_desc = {
> -	PLATFORM(I830),
> +	PLATFORM(i830),
>  	.info = &(const struct intel_display_device_info) {
>  		I830_DISPLAY,
>  
> @@ -245,7 +245,7 @@ static const struct platform_desc i830_desc = {
>  };
>  
>  static const struct platform_desc i845_desc = {
> -	PLATFORM(I845G),
> +	PLATFORM(i845g),
>  	.info = &(const struct intel_display_device_info) {
>  		I845_DISPLAY,
>  
> @@ -254,7 +254,7 @@ static const struct platform_desc i845_desc = {
>  };
>  
>  static const struct platform_desc i85x_desc = {
> -	PLATFORM(I85X),
> +	PLATFORM(i85x),
>  	.info = &(const struct intel_display_device_info) {
>  		I830_DISPLAY,
>  
> @@ -264,7 +264,7 @@ static const struct platform_desc i85x_desc = {
>  };
>  
>  static const struct platform_desc i865g_desc = {
> -	PLATFORM(I865G),
> +	PLATFORM(i865g),
>  	.info = &(const struct intel_display_device_info) {
>  		I845_DISPLAY,
>  
> @@ -286,7 +286,7 @@ static const struct platform_desc i865g_desc = {
>  	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) /* SDVO B/C */
>  
>  static const struct platform_desc i915g_desc = {
> -	PLATFORM(I915G),
> +	PLATFORM(i915g),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I845_COLORS,
> @@ -296,7 +296,7 @@ static const struct platform_desc i915g_desc = {
>  };
>  
>  static const struct platform_desc i915gm_desc = {
> -	PLATFORM(I915GM),
> +	PLATFORM(i915gm),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -309,7 +309,7 @@ static const struct platform_desc i915gm_desc = {
>  };
>  
>  static const struct platform_desc i945g_desc = {
> -	PLATFORM(I945G),
> +	PLATFORM(i945g),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I845_COLORS,
> @@ -320,7 +320,7 @@ static const struct platform_desc i945g_desc = {
>  };
>  
>  static const struct platform_desc i945gm_desc = {
> -	PLATFORM(I915GM),
> +	PLATFORM(i915gm),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -334,7 +334,7 @@ static const struct platform_desc i945gm_desc = {
>  };
>  
>  static const struct platform_desc g33_desc = {
> -	PLATFORM(G33),
> +	PLATFORM(g33),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I845_COLORS,
> @@ -343,7 +343,7 @@ static const struct platform_desc g33_desc = {
>  };
>  
>  static const struct platform_desc pnv_desc = {
> -	PLATFORM(PINEVIEW),
> +	PLATFORM(pineview),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN3_DISPLAY,
>  		I9XX_COLORS,
> @@ -364,7 +364,7 @@ static const struct platform_desc pnv_desc = {
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
>  
>  static const struct platform_desc i965g_desc = {
> -	PLATFORM(I965G),
> +	PLATFORM(i965g),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.has_overlay = 1,
> @@ -374,7 +374,7 @@ static const struct platform_desc i965g_desc = {
>  };
>  
>  static const struct platform_desc i965gm_desc = {
> -	PLATFORM(I965GM),
> +	PLATFORM(i965gm),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.has_overlay = 1,
> @@ -386,7 +386,7 @@ static const struct platform_desc i965gm_desc = {
>  };
>  
>  static const struct platform_desc g45_desc = {
> -	PLATFORM(G45),
> +	PLATFORM(g45),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  
> @@ -395,7 +395,7 @@ static const struct platform_desc g45_desc = {
>  };
>  
>  static const struct platform_desc gm45_desc = {
> -	PLATFORM(GM45),
> +	PLATFORM(gm45),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.supports_tv = 1,
> @@ -418,14 +418,14 @@ static const struct platform_desc gm45_desc = {
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
>  
>  static const struct platform_desc ilk_d_desc = {
> -	PLATFORM(IRONLAKE),
> +	PLATFORM(ironlake),
>  	.info = &(const struct intel_display_device_info) {
>  		ILK_DISPLAY,
>  	},
>  };
>  
>  static const struct platform_desc ilk_m_desc = {
> -	PLATFORM(IRONLAKE),
> +	PLATFORM(ironlake),
>  	.info = &(const struct intel_display_device_info) {
>  		ILK_DISPLAY,
>  
> @@ -434,7 +434,7 @@ static const struct platform_desc ilk_m_desc = {
>  };
>  
>  static const struct platform_desc snb_desc = {
> -	PLATFORM(SANDYBRIDGE),
> +	PLATFORM(sandybridge),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_hotplug = 1,
>  		I9XX_PIPE_OFFSETS,
> @@ -451,7 +451,7 @@ static const struct platform_desc snb_desc = {
>  };
>  
>  static const struct platform_desc ivb_desc = {
> -	PLATFORM(IVYBRIDGE),
> +	PLATFORM(ivybridge),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_hotplug = 1,
>  		IVB_PIPE_OFFSETS,
> @@ -468,7 +468,7 @@ static const struct platform_desc ivb_desc = {
>  };
>  
>  static const struct platform_desc vlv_desc = {
> -	PLATFORM(VALLEYVIEW),
> +	PLATFORM(valleyview),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_gmch = 1,
>  		.has_hotplug = 1,
> @@ -499,14 +499,14 @@ static const u16 hsw_ulx_ids[] = {
>  };
>  
>  static const struct platform_desc hsw_desc = {
> -	PLATFORM(HASWELL),
> +	PLATFORM(haswell),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(HASWELL, ULT),
> +			SUBPLATFORM(haswell, ult),
>  			.pciidlist = hsw_ult_ids,
>  		},
>  		{
> -			SUBPLATFORM(HASWELL, ULX),
> +			SUBPLATFORM(haswell, ulx),
>  			.pciidlist = hsw_ulx_ids,
>  		},
>  		{},
> @@ -549,14 +549,14 @@ static const u16 bdw_ulx_ids[] = {
>  };
>  
>  static const struct platform_desc bdw_desc = {
> -	PLATFORM(BROADWELL),
> +	PLATFORM(broadwell),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(BROADWELL, ULT),
> +			SUBPLATFORM(broadwell, ult),
>  			.pciidlist = bdw_ult_ids,
>  		},
>  		{
> -			SUBPLATFORM(BROADWELL, ULX),
> +			SUBPLATFORM(broadwell, ulx),
>  			.pciidlist = bdw_ulx_ids,
>  		},
>  		{},
> @@ -583,7 +583,7 @@ static const struct platform_desc bdw_desc = {
>  };
>  
>  static const struct platform_desc chv_desc = {
> -	PLATFORM(CHERRYVIEW),
> +	PLATFORM(cherryview),
>  	.info = &(const struct intel_display_device_info) {
>  		.has_hotplug = 1,
>  		.has_gmch = 1,
> @@ -646,14 +646,14 @@ static const enum intel_step skl_steppings[] = {
>  };
>  
>  static const struct platform_desc skl_desc = {
> -	PLATFORM(SKYLAKE),
> +	PLATFORM(skylake),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(SKYLAKE, ULT),
> +			SUBPLATFORM(skylake, ult),
>  			.pciidlist = skl_ult_ids,
>  		},
>  		{
> -			SUBPLATFORM(SKYLAKE, ULX),
> +			SUBPLATFORM(skylake, ulx),
>  			.pciidlist = skl_ulx_ids,
>  		},
>  		{},
> @@ -687,14 +687,14 @@ static const enum intel_step kbl_steppings[] = {
>  };
>  
>  static const struct platform_desc kbl_desc = {
> -	PLATFORM(KABYLAKE),
> +	PLATFORM(kabylake),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(KABYLAKE, ULT),
> +			SUBPLATFORM(kabylake, ult),
>  			.pciidlist = kbl_ult_ids,
>  		},
>  		{
> -			SUBPLATFORM(KABYLAKE, ULX),
> +			SUBPLATFORM(kabylake, ulx),
>  			.pciidlist = kbl_ulx_ids,
>  		},
>  		{},
> @@ -718,14 +718,14 @@ static const u16 cfl_ulx_ids[] = {
>  };
>  
>  static const struct platform_desc cfl_desc = {
> -	PLATFORM(COFFEELAKE),
> +	PLATFORM(coffeelake),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(COFFEELAKE, ULT),
> +			SUBPLATFORM(coffeelake, ult),
>  			.pciidlist = cfl_ult_ids,
>  		},
>  		{
> -			SUBPLATFORM(COFFEELAKE, ULX),
> +			SUBPLATFORM(coffeelake, ulx),
>  			.pciidlist = cfl_ulx_ids,
>  		},
>  		{},
> @@ -740,10 +740,10 @@ static const u16 cml_ult_ids[] = {
>  };
>  
>  static const struct platform_desc cml_desc = {
> -	PLATFORM(COMETLAKE),
> +	PLATFORM(cometlake),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(COMETLAKE, ULT),
> +			SUBPLATFORM(cometlake, ult),
>  			.pciidlist = cml_ult_ids,
>  		},
>  		{},
> @@ -782,7 +782,7 @@ static const enum intel_step bxt_steppings[] = {
>  };
>  
>  static const struct platform_desc bxt_desc = {
> -	PLATFORM(BROXTON),
> +	PLATFORM(broxton),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN9_LP_DISPLAY,
>  		.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
> @@ -797,7 +797,7 @@ static const enum intel_step glk_steppings[] = {
>  };
>  
>  static const struct platform_desc glk_desc = {
> -	PLATFORM(GEMINILAKE),
> +	PLATFORM(geminilake),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN9_LP_DISPLAY,
>  		.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
> @@ -859,10 +859,10 @@ static const enum intel_step icl_steppings[] = {
>  };
>  
>  static const struct platform_desc icl_desc = {
> -	PLATFORM(ICELAKE),
> +	PLATFORM(icelake),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(ICELAKE, PORT_F),
> +			SUBPLATFORM(icelake, port_f),
>  			.pciidlist = icl_port_f_ids,
>  		},
>  		{},
> @@ -887,13 +887,13 @@ static const enum intel_step jsl_ehl_steppings[] = {
>  };
>  
>  static const struct platform_desc jsl_desc = {
> -	PLATFORM(JASPERLAKE),
> +	PLATFORM(jasperlake),
>  	.info = &jsl_ehl_display,
>  	STEP_INFO(jsl_ehl_steppings),
>  };
>  
>  static const struct platform_desc ehl_desc = {
> -	PLATFORM(ELKHARTLAKE),
> +	PLATFORM(elkhartlake),
>  	.info = &jsl_ehl_display,
>  	STEP_INFO(jsl_ehl_steppings),
>  };
> @@ -959,10 +959,10 @@ static const enum intel_step tgl_uy_steppings[] = {
>  };
>  
>  static const struct platform_desc tgl_desc = {
> -	PLATFORM(TIGERLAKE),
> +	PLATFORM(tigerlake),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(TIGERLAKE, UY),
> +			SUBPLATFORM(tigerlake, uy),
>  			.pciidlist = tgl_uy_ids,
>  			STEP_INFO(tgl_uy_steppings),
>  		},
> @@ -987,7 +987,7 @@ static const enum intel_step dg1_steppings[] = {
>  };
>  
>  static const struct platform_desc dg1_desc = {
> -	PLATFORM(DG1),
> +	PLATFORM(dg1),
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  
> @@ -1004,7 +1004,7 @@ static const enum intel_step rkl_steppings[] = {
>  };
>  
>  static const struct platform_desc rkl_desc = {
> -	PLATFORM(ROCKETLAKE),
> +	PLATFORM(rocketlake),
>  	.info = &(const struct intel_display_device_info) {
>  		XE_D_DISPLAY,
>  		.abox_mask = BIT(0),
> @@ -1039,10 +1039,10 @@ static const enum intel_step adl_s_rpl_s_steppings[] = {
>  };
>  
>  static const struct platform_desc adl_s_desc = {
> -	PLATFORM(ALDERLAKE_S),
> +	PLATFORM(alderlake_s),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(ALDERLAKE_S, RAPTORLAKE_S),
> +			SUBPLATFORM(alderlake_s, raptorlake_s),
>  			.pciidlist = adls_rpls_ids,
>  			STEP_INFO(adl_s_rpl_s_steppings),
>  		},
> @@ -1146,20 +1146,20 @@ static const enum intel_step adl_p_rpl_pu_steppings[] = {
>  };
>  
>  static const struct platform_desc adl_p_desc = {
> -	PLATFORM(ALDERLAKE_P),
> +	PLATFORM(alderlake_p),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(ALDERLAKE_P, ALDERLAKE_N),
> +			SUBPLATFORM(alderlake_p, alderlake_n),
>  			.pciidlist = adlp_adln_ids,
>  			STEP_INFO(adl_p_adl_n_steppings),
>  		},
>  		{
> -			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_P),
> +			SUBPLATFORM(alderlake_p, raptorlake_p),
>  			.pciidlist = adlp_rplp_ids,
>  			STEP_INFO(adl_p_rpl_pu_steppings),
>  		},
>  		{
> -			SUBPLATFORM(ALDERLAKE_P, RAPTORLAKE_U),
> +			SUBPLATFORM(alderlake_p, raptorlake_u),
>  			.pciidlist = adlp_rplu_ids,
>  			STEP_INFO(adl_p_rpl_pu_steppings),
>  		},
> @@ -1214,20 +1214,20 @@ static const enum intel_step dg2_g12_steppings[] = {
>  };
>  
>  static const struct platform_desc dg2_desc = {
> -	PLATFORM(DG2),
> +	PLATFORM(dg2),
>  	.subplatforms = (const struct subplatform_desc[]) {
>  		{
> -			SUBPLATFORM(DG2, G10),
> +			SUBPLATFORM(dg2, g10),
>  			.pciidlist = dg2_g10_ids,
>  			STEP_INFO(dg2_g10_steppings),
>  		},
>  		{
> -			SUBPLATFORM(DG2, G11),
> +			SUBPLATFORM(dg2, g11),
>  			.pciidlist = dg2_g11_ids,
>  			STEP_INFO(dg2_g11_steppings),
>  		},
>  		{
> -			SUBPLATFORM(DG2, G12),
> +			SUBPLATFORM(dg2, g12),
>  			.pciidlist = dg2_g12_ids,
>  			STEP_INFO(dg2_g12_steppings),
>  		},
> @@ -1305,15 +1305,15 @@ static const struct intel_display_device_info xe2_hpd_display = {
>   * reported by the hardware.
>   */
>  static const struct platform_desc mtl_desc = {
> -	PLATFORM(METEORLAKE),
> +	PLATFORM(meteorlake),
>  };
>  
>  static const struct platform_desc lnl_desc = {
> -	PLATFORM(LUNARLAKE),
> +	PLATFORM(lunarlake),
>  };
>  
>  static const struct platform_desc bmg_desc = {
> -	PLATFORM(BATTLEMAGE),
> +	PLATFORM(battlemage),
>  };
>  
>  __diag_pop();
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index dc425e2661bc..c4208c34cc31 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -22,79 +22,79 @@ struct drm_printer;
>  #define INTEL_DISPLAY_PLATFORMS(func) \
>  	func(PLATFORM_UNINITIALIZED) \
>  	/* Display ver 2 */ \
> -	func(I830) \
> -	func(I845G) \
> -	func(I85X) \
> -	func(I865G) \
> +	func(i830) \
> +	func(i845g) \
> +	func(i85x) \
> +	func(i865g) \
>  	/* Display ver 3 */ \
> -	func(I915G) \
> -	func(I915GM) \
> -	func(I945G) \
> -	func(I945GM) \
> -	func(G33) \
> -	func(PINEVIEW) \
> +	func(i915g) \
> +	func(i915gm) \
> +	func(i945g) \
> +	func(i945gm) \
> +	func(g33) \
> +	func(pineview) \
>  	/* Display ver 4 */ \
> -	func(I965G) \
> -	func(I965GM) \
> -	func(G45) \
> -	func(GM45) \
> +	func(i965g) \
> +	func(i965gm) \
> +	func(g45) \
> +	func(gm45) \
>  	/* Display ver 5 */ \
> -	func(IRONLAKE) \
> +	func(ironlake) \
>  	/* Display ver 6 */ \
> -	func(SANDYBRIDGE) \
> +	func(sandybridge) \
>  	/* Display ver 7 */ \
> -	func(IVYBRIDGE) \
> -	func(VALLEYVIEW) \
> -	func(HASWELL) \
> -	func(HASWELL_ULT) \
> -	func(HASWELL_ULX) \
> +	func(ivybridge) \
> +	func(valleyview) \
> +	func(haswell) \
> +	func(haswell_ult) \
> +	func(haswell_ulx) \
>  	/* Display ver 8 */ \
> -	func(BROADWELL) \
> -	func(BROADWELL_ULT) \
> -	func(BROADWELL_ULX) \
> -	func(CHERRYVIEW) \
> +	func(broadwell) \
> +	func(broadwell_ult) \
> +	func(broadwell_ulx) \
> +	func(cherryview) \
>  	/* Display ver 9 */ \
> -	func(SKYLAKE) \
> -	func(SKYLAKE_ULT) \
> -	func(SKYLAKE_ULX) \
> -	func(BROXTON) \
> -	func(KABYLAKE) \
> -	func(KABYLAKE_ULT) \
> -	func(KABYLAKE_ULX) \
> -	func(GEMINILAKE) \
> -	func(COFFEELAKE) \
> -	func(COFFEELAKE_ULT) \
> -	func(COFFEELAKE_ULX) \
> -	func(COMETLAKE) \
> -	func(COMETLAKE_ULT) \
> -	func(COMETLAKE_ULX) \
> +	func(skylake) \
> +	func(skylake_ult) \
> +	func(skylake_ulx) \
> +	func(broxton) \
> +	func(kabylake) \
> +	func(kabylake_ult) \
> +	func(kabylake_ulx) \
> +	func(geminilake) \
> +	func(coffeelake) \
> +	func(coffeelake_ult) \
> +	func(coffeelake_ulx) \
> +	func(cometlake) \
> +	func(cometlake_ult) \
> +	func(cometlake_ulx) \
>  	/* Display ver 11 */ \
> -	func(ICELAKE) \
> -	func(ICELAKE_PORT_F) \
> -	func(JASPERLAKE) \
> -	func(ELKHARTLAKE) \
> +	func(icelake) \
> +	func(icelake_port_f) \
> +	func(jasperlake) \
> +	func(elkhartlake) \
>  	/* Display ver 12 */ \
> -	func(TIGERLAKE) \
> -	func(TIGERLAKE_UY) \
> -	func(ROCKETLAKE) \
> -	func(DG1) \
> -	func(ALDERLAKE_S) \
> -	func(ALDERLAKE_S_RAPTORLAKE_S) \
> +	func(tigerlake) \
> +	func(tigerlake_uy) \
> +	func(rocketlake) \
> +	func(dg1) \
> +	func(alderlake_s) \
> +	func(alderlake_s_raptorlake_s) \
>  	/* Display ver 13 */ \
> -	func(ALDERLAKE_P) \
> -	func(ALDERLAKE_P_ALDERLAKE_N) \
> -	func(ALDERLAKE_P_RAPTORLAKE_P) \
> -	func(ALDERLAKE_P_RAPTORLAKE_U) \
> -	func(DG2) \
> -	func(DG2_G10) \
> -	func(DG2_G11) \
> -	func(DG2_G12) \
> +	func(alderlake_p) \
> +	func(alderlake_p_alderlake_n) \
> +	func(alderlake_p_raptorlake_p) \
> +	func(alderlake_p_raptorlake_u) \
> +	func(dg2) \
> +	func(dg2_g10) \
> +	func(dg2_g11) \
> +	func(dg2_g12) \
>  	/* Display ver 14 (based on GMD ID) */ \
> -	func(METEORLAKE) \
> +	func(meteorlake) \
>  	/* Display ver 20 (based on GMD ID) */ \
> -	func(LUNARLAKE) \
> +	func(lunarlake) \
>  	/* Display ver 14.1 (based on GMD ID) */ \
> -	func(BATTLEMAGE)
> +	func(battlemage)
>  
>  #define __ENUM(x) INTEL_DISPLAY_ ## x,
>  
> -- 
> 2.39.5
> 
