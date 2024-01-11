Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1DD82B7F8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 00:24:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0167E10E3C2;
	Thu, 11 Jan 2024 23:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E786C10E3C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 23:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705015458; x=1736551458;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZTJz1Xdj0iaoqUU5Sc1hZgdYp5Rgf+LVczCBdNB9h/0=;
 b=TjZEQKNHGU9eh0voz53hjFHLG44oZq3fwKsAMDjYtABf1fm9X/DsQX9p
 pgVSebU6JW0pXYoTYNhDix+QydGvi2mDR65hynBxg8aWl8Kd7dCxRZhAV
 MnizX8rWAfTDZWwBjawlLe6D1kC6naLulB+ov7qnkNpB/UAsn+O8OUvJy
 KvWDhPYcvt77I1cxmQyagAjF6rVFao2xSxhKNedpY7zMHs5C2mTQHg51C
 SAtyOwiAKnqbvCoZUJ3GcopW7L9EE1W6Ol1MpnLrB1yrN0Q1rseIUEylb
 by7zpFaJPI0Q+bW67g0NYHvaLYVI+oImOS3nY1g43BMa/QO3rWvme7osQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5790040"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; 
   d="scan'208";a="5790040"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 15:24:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="758937374"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="758937374"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 15:24:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 15:24:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 15:24:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 15:24:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZNkQ0T7G5jkGFdpYQWvVXmyezSxdv47M/TkjUfv0CJUFTph22oIQo5G5mRxhJDh1DDHyIZ0QPgTypkDZ5st8SppYgDJXcL9STct5GeX+zMsTWrQMdyOVQjKES//q5q8SnRt5Mt4r0uCkPH/Ta+YJsypcL1ozUGAtWD75Nl5m4pneYBsJvJfgCzroz7mXD1ytzRJr7l4X4ftEiQ6jnE+w58tKeze4is8n/V1lw6imT7hlw9LzJlsCSicbb9thcSoCUdmOXYiDc0h1EJzPIOxA15gTYrisy+Y6yq3rKmMPzGvU/An9WHlIUGU7zpW0ehYWkOZQiKre8b60LbAbE9wp2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iS9k8Hbq9i4isSWFBha2ZOnKJS22+Ycl093nJYjmpCY=;
 b=BFP8b4nhhJlnfXgeWRzCPE+6VVkAokd5g4irB+uw016/3FwR5rvdQ3INdxzsgEgFWNUSr8X6kj0xN0uWTdUiVEprX1suDX/vd9DtY/DM0WmI4xhVOewPa40VCD92tWCnc2ArUH5Qd9NrDi5SQQJH+KMpF0vupfh0O3SmbudfBDz/WogXJBuAJbYe3j4dIRetxwxh2URoIOwrMxIQcNKF5teg/RI6kpcz3A9WWqRIptj6fQj83E0jxMxmXDPn3Tyd/s2JR51TWJZ1+7O+rhBxgDsEL8MYj+4u6LjFKwwhaFAVjaTSM8Wa51b26oiraBYzg5/V35HkUaESK1ElsL+kbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MN2PR11MB4694.namprd11.prod.outlook.com (2603:10b6:208:266::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.19; Thu, 11 Jan 2024 23:24:13 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Thu, 11 Jan 2024
 23:24:13 +0000
Date: Thu, 11 Jan 2024 15:22:48 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 3/6] drm/i915/opregion: abstract getting the opregion VBT
Message-ID: <ZaB4SOuGeQdUYjgj@invictus>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <8205b8fa724f98bbf1f76c59e661909d874e843e.1704992868.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8205b8fa724f98bbf1f76c59e661909d874e843e.1704992868.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::14) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|MN2PR11MB4694:EE_
X-MS-Office365-Filtering-Correlation-Id: c593d00a-4e54-4a6d-4153-08dc12fc6c48
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EXu81JbJKUjjbiE1OQkkm9WOCG/wt+VLuXY8HdqEkZjenbeCgeURok1q7KHXQBfo1bg5dO/4mUcYGq0SS52kavKCSWtrd1ppBhSwVg7t1nKlSodBBvXRSaxXtx02FVjhKdJiXbzu1ZCCpz5U3NjSn95i9dAvK1Xe6v/tlOikX3jpbTgADL48hTJXlhUzhdgXlmRqJlDtM9cSa11qITf6Cx5vP2CkYA6AflY0il1BLCoN8592XobgV5BzoZ3yNRazvUw5zVhwijT1MJwuFaoPvncvnxR8e/+8ct1cFTJIb27XiM+6C9WhCCDOumHPWPrpXxVON+XkGSNGLcOy2430/PapvHUNVzd+Kmuyopgkk85/st7ieDJ3SefLBv+CU1TmsOoiTg5DBOUGFKmho8WlcFOn0B/TfFrzDruqmcjilqvUQ1Y6SDIgPxeXt3sKuPTxthdWkVXSXpzTB4cWayRttC0bFtxpWGeR7ryesauoHxVePFgbs9WjEbggEHjf0m7M3TAC269VLijCVrYiNTCvZqINM8JGsVfuzavyJSSImTYtnCxfQRcl2fqksZneqUaA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(396003)(136003)(376002)(39860400002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(5660300002)(33716001)(38100700002)(8676002)(8936002)(6862004)(4326008)(2906002)(26005)(82960400001)(83380400001)(86362001)(6666004)(6636002)(316002)(6506007)(9686003)(6512007)(478600001)(44832011)(66556008)(66476007)(66946007)(6486002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t+Q5sG8F06lyFmUlJT7Tm6rx5lpksEOkNMpb+Ad9MnPOrdp1ZYRVKs1ZGcER?=
 =?us-ascii?Q?PQeGH2bsooSWcoNvrnPIZ9qMX2CakxqiAy6piYJLXNGyHteQEVfF1QQGHfJl?=
 =?us-ascii?Q?FxXKi2iO/iNIz3NZ9P0R99FhUwn3VOIpGRkbMyv0FZJb+Tj0LvYt+KMgwpFv?=
 =?us-ascii?Q?U1/eT2ha59uj3VFEbcKHwA4a7fFISr5POEosbjTc5Ktk70anfTwDtr3X1BPm?=
 =?us-ascii?Q?spFh/XQvHAflZGflHpCLxBRpgDLFIhWnK+I6Txm73tOyVXSX6vXi6uUdod1h?=
 =?us-ascii?Q?Ofe9wLjm9Ez7cdv+D9rWJJvrPqf1aa1/N/eT8LsGrRaJd8af8XB0H9ElADe2?=
 =?us-ascii?Q?daKTEwPZY8CwYFWk1oc8b8yS73zQuARP16HpFrw1BwkGgnpDsd+BWDd2ev4y?=
 =?us-ascii?Q?9RdkvOhDWccJjLFRVJu4eCGLAzZMavzWt9T4Yswi5/8atFLyeiJ4D7Il024Y?=
 =?us-ascii?Q?16ucpT7OBZqjn+LpMwt8QRpA7wd9Tvc9ZJgqN37Jk2OyDqHXCRhzTy6KPEwl?=
 =?us-ascii?Q?bo+Cs9CNICTikPMlbrzoSPjboy/O9cZPrCi/Dc7GD9sRcbxwYvD+J4p4Y9wE?=
 =?us-ascii?Q?/CGp3lS02JaFWgyXZe0MGngZ+ZEnDz5fhgYja4B2+0evU6hRza10MjVQ0xtj?=
 =?us-ascii?Q?RX7ztJ/V3GZ+A/Xql67wda6DdhT5LGV9VTL0w/aZU0YNHpAPzEZ6QzyjRqj8?=
 =?us-ascii?Q?8488EgBwYY9DH/i5e/0SM+laTbZLbhuji67eJrdUor4CP1odmPETZ3zioTGQ?=
 =?us-ascii?Q?94X8SANlZtSG5CdA1dEdmuuSQCh9LfMWs6sutdITtQbb9nr+SpXEK932/q9a?=
 =?us-ascii?Q?2ETTNJem6DAHxjvKweifWMHIoyXOglnV+WSWKhMo4uSzr2S4TszTeDBKwHZ2?=
 =?us-ascii?Q?yHgMzTT5hPSfUe772EyQKjXqCGan45YvWEjKNJEbRIojgIFOLZWRNvlEjoAy?=
 =?us-ascii?Q?HKgew649GmKUGUauv6lZ3qk+1rEjIuZoyq7B5Lpr9Dpmb+Gs0I3Tg84nndwI?=
 =?us-ascii?Q?G7UuMF/gjzS1BJR3oY1B2rNcMD3d8I/NAP/MKRBOzMCmAVpYeIBGcc0Nlrl/?=
 =?us-ascii?Q?tbOPfwEx2+9dUU0YHF27MqAUOeLbZ9pqNl3zuF88734V8A6+YMR2dBYoe1Ot?=
 =?us-ascii?Q?p6YAm7iDDR10Ll0qxWoRGixOl6Maqd+uDYwBky8Goe6ah+O4AB+CxauNu2Is?=
 =?us-ascii?Q?HYx6HEeGtllhbsaQDGE6VaPX8Bt+vXFqca1UX4xMrdWfGyLDYEkU73bgShMb?=
 =?us-ascii?Q?XESDBPTB6hlCOKUDoeefOPGDnggAqShZaXvMyala2GNQo4FkR8/LzAmaW0G/?=
 =?us-ascii?Q?uj/2pUjfMT2S9WNDfC6euKXXRrK8eIWv4CD8kdoedWqoLBuEykpqcQ0Th4Mc?=
 =?us-ascii?Q?WN2HK3YOHNjFtcWPiUUayeF2cwVhrZiexYzx8glHzlxtSmY4rGpB4GLT5Ayo?=
 =?us-ascii?Q?Ca+6YcbslNIJSQqegEwAyuAjqimPyWvGjxZHOTQToGMMA7LrwSrlQlclghi0?=
 =?us-ascii?Q?qkVYgc9EojGXz1HEtLbW3lnsPXAS/jOmnSRJQEyQl4/+rTzAza/4wCV0PH5x?=
 =?us-ascii?Q?CMV/2V+o/71/Ve6rt+iTcpAu+v4ukH5/Hutgvmkn87WeOl679jj1LYyVqNlj?=
 =?us-ascii?Q?uKCNSAPqfnssTxk+UlVpUEU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c593d00a-4e54-4a6d-4153-08dc12fc6c48
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2024 23:24:13.8568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5rZFe5zBHu+SDsN+OIrFXPJvOnhjtRyY4Dtxw06McAJQ0cHUKS/MfB9C2L0HdnIWDvYwVPGpzK4DU9s8oOwo3q2COY5haNyg5bsyuzIpA3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 11, 2024 at 07:21:16PM +0200, Jani Nikula wrote:
> Add a function to get the opregion VBT instead of accessing the opregion
> structures directly.
> 
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks clean,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 14 +++++++++-----
>  drivers/gpu/drm/i915/display/intel_opregion.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h |  8 ++++++++
>  3 files changed, 30 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index cf8e6f7bd490..5f04e495fd27 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3073,7 +3073,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
>   */
>  void intel_bios_init(struct drm_i915_private *i915)
>  {
> -	const struct vbt_header *vbt = i915->display.opregion.vbt;
> +	const struct vbt_header *vbt;
>  	struct vbt_header *oprom_vbt = NULL;
>  	const struct bdb_header *bdb;
>  
> @@ -3088,6 +3088,8 @@ void intel_bios_init(struct drm_i915_private *i915)
>  
>  	init_vbt_defaults(i915);
>  
> +	vbt = intel_opregion_get_vbt(i915, NULL);
> +
>  	/*
>  	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
>  	 * PCI mapping
> @@ -3305,7 +3307,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
>  		 * additional data.  Trust that if the VBT was written into
>  		 * the OpRegion then they have validated the LVDS's existence.
>  		 */
> -		if (i915->display.opregion.vbt)
> +		if (intel_opregion_get_vbt(i915, NULL))
>  			return true;
>  	}
>  
> @@ -3660,14 +3662,16 @@ void intel_bios_for_each_encoder(struct drm_i915_private *i915,
>  static int intel_bios_vbt_show(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *i915 = m->private;
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	const void *vbt;
> +	size_t vbt_size;
>  
>  	/*
>  	 * FIXME: VBT might originate from other places than opregion, and then
>  	 * this would be incorrect.
>  	 */
> -	if (opregion->vbt)
> -		seq_write(m, opregion->vbt, opregion->vbt_size);
> +	vbt = intel_opregion_get_vbt(i915, &vbt_size);
> +	if (vbt)
> +		seq_write(m, vbt, vbt_size);
>  
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 26c92ab4ee8a..8b9e820971cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1132,6 +1132,19 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
>  	return drm_edid;
>  }
>  
> +const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
> +{
> +	struct intel_opregion *opregion = &i915->display.opregion;
> +
> +	if (!opregion->vbt)
> +		return NULL;
> +
> +	if (size)
> +		*size = opregion->vbt_size;
> +
> +	return opregion->vbt;
> +}
> +
>  bool intel_opregion_headless_sku(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion = &i915->display.opregion;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 7177f50ab0d3..9efadfb72584 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -77,6 +77,8 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
>  int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
>  const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
>  
> +const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size);
> +
>  bool intel_opregion_headless_sku(struct drm_i915_private *i915);
>  
>  void intel_opregion_debugfs_register(struct drm_i915_private *i915);
> @@ -136,6 +138,12 @@ intel_opregion_get_edid(struct intel_connector *connector)
>  	return NULL;
>  }
>  
> +static inline const void *
> +intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
> +{
> +	return NULL;
> +}
> +
>  static inline bool intel_opregion_headless_sku(struct drm_i915_private *i915)
>  {
>  	return false;
> -- 
> 2.39.2
> 
