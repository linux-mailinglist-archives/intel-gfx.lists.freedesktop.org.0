Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A11EA797AEC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 19:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0DB10E24C;
	Thu,  7 Sep 2023 17:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B5310E084;
 Thu,  7 Sep 2023 17:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694109469; x=1725645469;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IoMyadGeN8CPSgmrui7rWtd+bdytjZE1OuxGDYMWjpM=;
 b=bG8+AbIVRY5nX1eKfQMgYnIzZlAJuyku8J+u2YNhRMbopNUXhjOYgiDA
 tUsD4bxPLnclOiFVwrFHYgmDSv0LnVro0dixSDEhGbs5Iv6qOpe9Q0fhv
 VXNM3uGIyGQCZAPbQgeMt2yYzCKXX2mosxpYFZt275G4de+aeE/GP0pDH
 lw/Q1R+Na4yWQL45D93BpayZqeJOUdpKAevF1/nmqCvJaNJTeGYi1Zyoc
 tSLU/+8Vs6ar/vhn9CgDggJ19Uua1HQpfzyoRlRAmPn65Q8lUh6UCdcl4
 nbjbSv6By3GrIAjvcIf3aXVoW2ToZe1XJu+hY3M79V6wOo7/wcKShlMLS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="362495285"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="362495285"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 10:57:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="885306194"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="885306194"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 10:57:33 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 10:57:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 10:57:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 10:57:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3J6EKsUpeMqX2Sn6GNNtGB1ua2gaTzstiKvYjBCa2zRQSBFXz96eXBWbKX2g7LmtEJRkAdX2AIsqh+QeZTEky1xIHvGCPJyMN57y/WMUuQK45Z6ywD+71YL6IJYBFIhUCYEtmetV7W2YfAQ0Q/pwtsCBXun8WpJPMrE3XfmchN8x6rqd/7GuJ5cxZOGRjzz8rbz9LeYQtZgQ2hT3iwjWk/1AITKD3Lo0EWCnwUgERJOIzD1UXxEy15VefR1doNsepGm80W8p46XeiwIurUjD38NWNfYZ+3WsYyjKEO131mQzmLUHOykWIl+xprr+pJPa3IX6f1QXyTcZ2cHrVJIVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lc61p1Jxh+cESeCtqUe8FchgzUu6EQAOgtXBeccpmac=;
 b=DO9kfyIFfpcCIK/vcSMQkC3usNtbymNc+wKownnxa3bfogEImY2/OSUbM5VesUwdH1JDb+167lq3p5R4hfmyaaqc/BYUvFYN3TTYrKvELC9H8jNeLXgMfwvDMWIkyyiLKqmpIrKy3snPqfjo65n21TnohnXyfwxmcjhF+moDUbyJcOG3i4k7s3rYLFen5jcKzml+ZHKSIEINh9Ew8IzQI+60/Zl0MRgsVKwaqDRvjggrgPI4btybUyIa/v3uhvcn+JkTmTKILp9w7vTms0hp9qvBnxPjy7KWcthwhjCge+h2GJQ1Q4aNi+GgEwfy2px87Bkxif6mWz/GnNSXtQfe0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB7885.namprd11.prod.outlook.com (2603:10b6:8:d8::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Thu, 7 Sep 2023 17:57:44 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 17:57:44 +0000
Date: Thu, 7 Sep 2023 10:57:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907175741.GM2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-13-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-13-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0232.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB7885:EE_
X-MS-Office365-Filtering-Correlation-Id: b8954fb6-5026-425e-a57d-08dbafcbefe9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n8V18ONaELUW02GM111U6h8osyOVjAva0JbwPF8+yiIyStBNBIuYfVSjNfxHoXvhi8wsvJf/evB8m41APzf0aKLtFfk6ZdhYLNmlcPzcRc+i/HHwpI2UaAjd7cQucQG3hpSZVmDm3t3xX5Q72EPTi3S8544U7HNo/gDFcAt/f2QcKI98nG/dAFAHoUEMAERsfIOGmvxnJrxuoubeKJkzo6JdJ1Vgsi48jC/+cUmL4v//QovWx4/f7HyQkqOfYCqcHfiA5Jb5DY0N8MXRRYaEYLBucEPIBkX9eO3mbkm7M/QQDblIn/Y7O/0IkSgoXI1emBomTq+hXSPUHfi6edA6M/k9YYaamiq7zvWv9IVqchfLNMtSXCb8XJLWiU8+UkecacDzHIM1Rcwr6xdOxeHBwn79czjntqyDtjnp0xcoEVNTYc52ua2qWf8ZoZ/o08dxVimaTdACFy0/wGlQV2+7vhsGF4rj6DE0+hZ/IpDEbNp0ksC4HolNU267Eulm/IqKxB2Dc3bk4eyC3rWJVq+0X0XdKquBMXlKZlCg8x4D0hXQ06w5NpHwz60sBo7xtQYc2mFQJOWs60r/U6PXsI/jnodcyV+i5G0y7oL8RRGQ46o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(346002)(376002)(136003)(366004)(451199024)(1800799009)(186009)(6512007)(6506007)(6486002)(6666004)(1076003)(83380400001)(478600001)(2906002)(26005)(316002)(6636002)(66556008)(41300700001)(5660300002)(66946007)(4326008)(66476007)(450100002)(8936002)(8676002)(6862004)(38100700002)(86362001)(82960400001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EsFCa12sdaxqRMn0Vo1J3cY/a0FYK18R98mZG4EkXr84E86Xe+DCw/vU3vYf?=
 =?us-ascii?Q?gfUK3HZldw695iFh1Nol7MqSnJhJk7IX2DmVNb5Y5slvHI0/w+J91GpXxPK3?=
 =?us-ascii?Q?97X7R8/L6ZrtkeOLxxetWE2ijgjeRHrIP2aE5simjCz2odEy6k53tUzcGscc?=
 =?us-ascii?Q?wErdnIQAt/WxdgNkUCyn8l2SWFBs5L6wjvWHWqRMquOFOTSb99K37uZzBQhp?=
 =?us-ascii?Q?pNUNyxbUExVo83lkUWxB5/uNXMA8hLH+h5txy/51Zdg+kHkaWdeK87o/caTj?=
 =?us-ascii?Q?8GYPLtHZQwbMSd7PiSginrKJsnF6Fs0uICKwJex/lOmY8hQ5BzjeHyAiJHAL?=
 =?us-ascii?Q?Ke6HEhchHCkA3yr0IrZi/zJhuIfo8aS/1I3FS3lFpyZsjRNtMts1fzL6+dVe?=
 =?us-ascii?Q?uYOJYcugnKUDMpU33qCLbkOr5piK5tZpjna2iujZtuPVUFp/ovXSzuMVSKQt?=
 =?us-ascii?Q?XrEFkpjYtpn3MgK9s+bD7ZtlhthLHle7Il1RaLCqjN0IznafO1ZjyIJL8S1D?=
 =?us-ascii?Q?fC+7/G7AmmJozcGjI+QyflpNRA+RyPKJZqpBgQ7wFNjcTAcux7uzgxhREQJW?=
 =?us-ascii?Q?NTrSbXrut0zF19mTjAEe8/zUJ+0XLvXyUalxDgougOOu5t9GzzfOK0HBD/Mv?=
 =?us-ascii?Q?oYbSdi8Fz/28diQPh3sbn6nWqOL1A7oqz70XGt1cxtnU+OYlH21xltCpD/ka?=
 =?us-ascii?Q?xRiWKWYwa6v3Au4J8hfZXPqjunmlO3GDdpYtoskfO8pwc2KTNGqWzxYlgVlZ?=
 =?us-ascii?Q?P5W/TKSGOAHadUKwWMklc+JIFJ1H+LPJhYSxBl87ItXJrBRlbPgatkS0f2So?=
 =?us-ascii?Q?Q5b9gzfNACS8l3BKKpAZClLP9Bj2q4vONtOn0CNCxgDpmn4DhI7YM1ch9ape?=
 =?us-ascii?Q?OBaMB/+reS4wedpQuvPo/3sN6CtqCRJVYqXchSI0aB71pAcYdAbvMAy5KuIl?=
 =?us-ascii?Q?cuAv0rdNMogpUa/oNG4YXx3zxPqKFVzIRuL/zzTVTKIcPY0PwYfBveEeipUq?=
 =?us-ascii?Q?MehaHE703lfRv10DxrtjHrjF7EMsrexH3up5GO8C18MyE7QPfrpV+Xuv4GuM?=
 =?us-ascii?Q?PQGViC0bPAb+D97aM/y6IODUeyHRbwoZa3MzB2mEa0danOv4olHBfTKOThBg?=
 =?us-ascii?Q?ODXd16+9mqJ+WPeKsjH3jMjkpEOzU+kPxok3nm3TfHrwf7qnlKC6HIxOShfu?=
 =?us-ascii?Q?A9ZvYGoXNThqThkzP5JbQRmVMNDSd94GqvC70LcCFkyT521I+T4WY66vL69t?=
 =?us-ascii?Q?7HUhGmqeQcSeRzgnZH+x5TeUO6ytF8sfRE67uR0+1ChGlOdFKVbdOtPl43+i?=
 =?us-ascii?Q?13Q+N4jdN1vnzPQQsZ7pGCnhsPMRV1x/gsavG6X4vDysd7oYkdNmVIPdirGX?=
 =?us-ascii?Q?0Q0NKVWuRv12l8Yf3MFpF+nxMDPydGE69CHgU3bBv+9eKbsSWzJhxermqVpG?=
 =?us-ascii?Q?24cHw9uDL0xpjETS88upSg4vW04AsrYrxn0ztVMeLvhu5nCS0j6etbZE8IIB?=
 =?us-ascii?Q?Wby7eTYYbOK3pkepPJQdRvJrzoC8HSxp1B4L9fqzrT5DNjl3UjwEzkIsvZWv?=
 =?us-ascii?Q?6ggvsZalp8GYBFrO9zdcFL5vAEf7sqDFZliynioGPzLjcBw2cAMQoX8SWR4b?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8954fb6-5026-425e-a57d-08dbafcbefe9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 17:57:44.3077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tc8c35guq24k9CV+vVUloGrYDtF4sKuAkiqwYDA/bhvdubh9LcbV6UoDE9ufOiZe4ecV3TpuinnENeowRWEwMByL+XzS3X3Va+aRi3Fp81I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7885
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 12/27] FIXME: drm/i915/xe2lpd: Add
 display power well
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

On Thu, Sep 07, 2023 at 08:37:42AM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add Display Power Well for LNL platform, mostly it is same as MTL
> platform so reused the code
> 
> Changes are:
> 1. AUX_CH_CTL and AUX_CH_DATA1 are different from MTL so added extra
>    logic xelpdp_aux_power_well_ops functions.
> 2. PGPICA1 contains type-C capable port slices which requires the well
>    to power powered up, so added new power well definition for PGPICA1
> 
> FIXME: make this commit and "drm/i915/xe2lpd: Move registers to PICA"
> to use a similar approach how the ranges are handled

Is this FIXME still planned before we apply this?  Or are you expecting
to do it as a follow-up commit later?


Matt

> 
> BSpec: 68886
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../i915/display/intel_display_power_map.c    | 36 ++++++++++-
>  .../i915/display/intel_display_power_well.c   | 63 ++++++++++++++++++-
>  .../i915/display/intel_display_power_well.h   |  1 +
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 26 ++++++++
>  4 files changed, 122 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 0f1b93d139ca..31c11586ede5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1536,6 +1536,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>  };
>  
> +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
> +		     POWER_DOMAIN_AUX_USBC1,
> +		     POWER_DOMAIN_AUX_USBC2,
> +		     POWER_DOMAIN_AUX_USBC3,
> +		     POWER_DOMAIN_AUX_USBC4,
> +		     POWER_DOMAIN_AUX_TBT1,
> +		     POWER_DOMAIN_AUX_TBT2,
> +		     POWER_DOMAIN_AUX_TBT3,
> +		     POWER_DOMAIN_AUX_TBT4,
> +		     POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
> +							&xe2lpd_pwdoms_pica_tc,
> +							.id = DISP_PW_ID_NONE),
> +					       ),
> +		.ops = &xe2lpd_pica_power_well_ops,
> +	},
> +};
> +
> +static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +};
> +
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
>  				    struct i915_power_well *power_well)
>  {
> @@ -1643,7 +1675,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>  		return 0;
>  	}
>  
> -	if (DISPLAY_VER(i915) >= 14)
> +	if (DISPLAY_VER(i915) >= 20)
> +		return set_power_wells(power_domains, xe2lpd_power_wells);
> +	else if (DISPLAY_VER(i915) >= 14)
>  		return set_power_wells(power_domains, xelpdp_power_wells);
>  	else if (IS_DG2(i915))
>  		return set_power_wells(power_domains, xehpd_power_wells);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 820b7d41a0a8..24fd35d5e4e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1800,7 +1800,11 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  		icl_tc_port_assert_ref_held(dev_priv, power_well,
>  					    aux_ch_to_digital_port(dev_priv, aux_ch));
>  
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	intel_de_rmw(dev_priv, aux_ch_ctl,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
>  
> @@ -1818,7 +1822,11 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>  
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	intel_de_rmw(dev_priv, aux_ch_ctl,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     0);
>  	usleep_range(10, 30);
> @@ -1828,11 +1836,53 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
>  					  struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +	i915_reg_t aux_ch_ctl;
>  
> -	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
> +	aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +		     XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +		     XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	return intel_de_read(dev_priv, aux_ch_ctl) &
>  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
>  }
>  
> +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
> +					  struct i915_power_well *power_well)
> +{
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST);
> +
> +	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
> +				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
> +	}
> +}
> +
> +static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     0);
> +
> +	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
> +				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
> +	}
> +}
> +
> +static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
> +		XE2LPD_PICA_CTL_POWER_STATUS;
> +}
> +
>  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
>  	.sync_hw = i9xx_power_well_sync_hw_noop,
>  	.enable = i9xx_always_on_power_well_noop,
> @@ -1952,3 +2002,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
>  	.disable = xelpdp_aux_power_well_disable,
>  	.is_enabled = xelpdp_aux_power_well_enabled,
>  };
> +
> +const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
> +	.sync_hw = i9xx_power_well_sync_hw_noop,
> +	.enable = xe2lpd_pica_power_well_enable,
> +	.disable = xe2lpd_pica_power_well_disable,
> +	.is_enabled = xe2lpd_pica_power_well_enabled,
> +};
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index a8736588314d..9357a9a73c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
>  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
>  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
>  extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
> +extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index 5185345277c7..2dfc721e1bbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -83,4 +83,30 @@
>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
>  
> +#define _XE2LPD_DPA_AUX_CH_CTL			0x16fa10
> +#define _XE2LPD_DPB_AUX_CH_CTL			0x16fc10
> +#define _XE2LPD_DPA_AUX_CH_DATA1		0x16fa14
> +#define _XE2LPD_DPB_AUX_CH_DATA1		0x16fc14
> +#define XE2LPD_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> +						       _XE2LPD_DPA_AUX_CH_CTL, \
> +						       _XE2LPD_DPB_AUX_CH_CTL, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_CTL, \
> +						       _XELPDP_USBC2_AUX_CH_CTL, \
> +						       _XELPDP_USBC3_AUX_CH_CTL, \
> +						       _XELPDP_USBC4_AUX_CH_CTL))
> +#define XE2LPD_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> +						       _XE2LPD_DPA_AUX_CH_DATA1, \
> +						       _XE2LPD_DPB_AUX_CH_DATA1, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_DATA1, \
> +						       _XELPDP_USBC2_AUX_CH_DATA1, \
> +						       _XELPDP_USBC3_AUX_CH_DATA1, \
> +						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
> +
> +/* PICA Power Well Control register for Xe2 platforms*/
> +#define XE2LPD_PICA_PW_CTL			_MMIO(0x16fe04)
> +#define   XE2LPD_PICA_CTL_POWER_REQUEST		REG_BIT(31)
> +#define   XE2LPD_PICA_CTL_POWER_STATUS		REG_BIT(30)
> +
>  #endif /* __INTEL_DP_AUX_REGS_H__ */
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
