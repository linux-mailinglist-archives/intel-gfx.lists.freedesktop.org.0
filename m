Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B275BEB17
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 18:27:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB0F10E1E9;
	Tue, 20 Sep 2022 16:27:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BADDB10E1E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 16:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663691220; x=1695227220;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bFm+t3TsBR9emE4Z/X28ciGVWnvkR6rjL1tYCrfwhpY=;
 b=Hzi49MiF/GJEHl0V4Pkrs2cj64djtQc4GE781IxjsWXr/gNh2axIl0X6
 MS/h0Z13RmZqa+d6106U8q8Yyrwuyrv4mB0Ukj65RMahRE62ustzFeXG9
 vg/Ukkw3PmAGiuowaglPvxPkYjA2ek/c8oaRw3JAP2qwCnNPb4/a+a0aJ
 5ySW9oeaYX8ETcF6BqIUSVlvCA0AG/qNpvd9nxVMPUzmc+AHir7pLw/im
 zeg/1959qUEE1wHtr1YwzSH5carSUPPEMvOvsk+fpOblepUFLEaoQLvVH
 bUQO+u8IqfkycPyCotmOSIoF1D/WlPBfEi3bxynrSqOpBWm23+kNtrxyW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="286793540"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="286793540"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 09:26:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="794317947"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 20 Sep 2022 09:26:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 09:26:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 09:26:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 09:26:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 09:26:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9fosU9dMprDwXrbR3yJ2mGcB/ahWTdXgwZq07GgMvBqW3REVvfofMwdLlnVmzfVrQF/lGKEhOTvkQJXjEpYX7tfQIqYtipIeeMKC45lJn1GNGD6KgYKWJ5h8UWoKW+RdoHV7a0mgFRVNn01gKWO7S3fKYmVQ91CYgXbacNH52CizLUHYfwlKLAI9J5fUSszxC3s3zUZPM1FVuCGBnNAvRsPOKi8AeP5UXs8tlfZ4eAvwHrHkxGzncd72fffaH1/dUhuWvqexW1nEVziuHZ7XtqhzUyiwUwZfbMhuoaDJw2JoQfixbdpD434KfoS0AuN4xYPWyfDznhLQeOJCP6lNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9BEDKMOdzy0YCh/YLGFMI+j76dzuirxAmSW5ymtJ1o=;
 b=fY7qHFZ1ox8L/mzqEwy8m7ulxRK+Yi5Ap4rvyTetn+Vh4/29IOC1zo68MC9rHb639PBW7CjRh5Bi4NCWyXccnZxO34RWSbONivgLS0unQjIeTuy4IGv4FLTp7SyAb04m1kUz1jpldgf+nid4M01Eda2nuTNVc6kLL7qq8TRa7qzjzFrdm6oKtkePQSLa9XAf/ZLVaW0xmVoFk0Fn+CIvq4sTJv4CubxZ16tVXc4Qo6IrLGfJFlRsR7YaCfXl0K+Ca70MrHDY2YbY8zmhbCRRgXtdV2dJnldYcBuCBBv+7cIS7FARCW4dHKTSBdnrlNHj/Zo6xk6t67BZG8rQC65GzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Tue, 20 Sep
 2022 16:26:52 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d%5]) with mapi id 15.20.5654.014; Tue, 20 Sep 2022
 16:26:52 +0000
Date: Tue, 20 Sep 2022 13:27:42 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20220920162742.3x6z2z6p24bkea6x@gjsousa-mobl2>
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <20220920070136.nyhompdd6yvpa65n@ldmartin-desk2.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220920070136.nyhompdd6yvpa65n@ldmartin-desk2.lan>
X-ClientProxiedBy: SJ0PR05CA0033.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::8) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB5902:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ed5be76-d267-48a8-3fcc-08da9b24ecf4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AV4qsBecZ2XUd302oQwUQvWYJaLKJsezemVZAQATzpyepNj4da79RExr2NAnWHVbOSwjD7wq7saY7AEoQgs+INEi1Cqdgyqp8U6fTFe1Y1dmAhdopVRkOD6JtjLp2q/VzAI5gwwe+hHmUPxIr1JuQIQJPjLxD8E773PtN8tBS2zhX+F90D7lsZEjMDJXrAzDoQ+xtwuM8MMvX4xs1ry2jKmwzY1tir1HEcDmQ6JmVqqjnreNwm+0HTSEe1zXu0MtY5aBlN0XmnGaO9hsEvdF2tzMRH95clivCcUsKRdLO5vGIG0b28R4xm3jLfD7JtYRQamqIfcLVuOWTFwwjjmrzv/BBvJhdDlWGQRNWVNs3Caem/twqmLYcejLmBDAcEKe3cfj/cmf6nh3N817udNjw0QIvEwdtI2H25CWDMoZXPf+VS0eMXcCJgGCC8HoMd+7+H/2GtXllM301tSu23J5EWfxtcAMxiOBEOAOSsHafJdG6wFGK+sNeFs94vxCzdZQ2ACnGSfnfKNN5MBL/VLh0JKk6vMq4QYmd6QMeRl3mcQZJFzq4FzmpvtpZqzWfv62gRPNdVq6A+lNeQf1Wb1o+R0Ga8pw78XYkAYbJivAFltOnd96lHoS4P0J94xRvBJoDNYG2VtRN75UI0ekqIQQWi4Vj2JJLgXKoBT36ISqPuBJQGY854w13UDqQs8ZOnjlC4WosxzOnLjPa2xrJgftPg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(39860400002)(376002)(396003)(136003)(346002)(451199015)(2906002)(4326008)(186003)(6486002)(44832011)(8936002)(66476007)(8676002)(66946007)(9686003)(6666004)(86362001)(6636002)(38100700002)(33716001)(26005)(1076003)(6506007)(66556008)(478600001)(316002)(82960400001)(6512007)(5660300002)(41300700001)(83380400001)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Vuud6hMlJ3MWtjLj6Do4U6a5Q0dQ585z1ZLHU8Z4gUaAz532w028zPiZD3Eq?=
 =?us-ascii?Q?1pI27GO7QH0q1EKvqiWRmsrlApylJ1jC+2GHt8GU39ARHmLO39yzvc0vVyJu?=
 =?us-ascii?Q?W0Sk84LlkugzxF187FS7fZQ8JwtghpqX16KTQ4uWiLYyTz3lTUKS3/vpsqTf?=
 =?us-ascii?Q?0bfNVT3NKXYBzQvmaRM2xeV7CNP4DDVkHSjqutFNPqhL8US0ght8QeN9ZeXh?=
 =?us-ascii?Q?rjy/nXux5mmsre63/NH21xx+8B8x0oE+wBgsoqFITRWoOoP7URNemVUfWZXl?=
 =?us-ascii?Q?qFkfDCwTRMJB//wK5irqBGY6qzVTULo1xaPbV4LgeIHCzOiKdeq5vISlmFK+?=
 =?us-ascii?Q?s1vVTrzshRmw9MzMCyHQmtwFk2PMkVRoJv3CppTVcVkPbFAsaQFQa5kiTDyj?=
 =?us-ascii?Q?VGxZtuoWljniZ36JL+rjiYY/WIKq4CxKrI8e297jzkjHJCQs22jnC71Li+4p?=
 =?us-ascii?Q?32EFy4Oa66Vy8j2N+QgAk5VmYk9yn0nGGNfB40sA4Eth2L38suo0Bf6usIYH?=
 =?us-ascii?Q?F5hJdH/zJk9ZTXJqTxmniE+1r7XsfkUTGa7rrgPg45Tem8h3r7fsy7N9iWYr?=
 =?us-ascii?Q?5k8mvM6GgXs0flVllYGkGAON5LGl/24QBfrucCfzWRaWtOGalYyWSq4VcKJg?=
 =?us-ascii?Q?v3HxiiKaUcpLKDcUVMYV5tMQog0asyKj6RSTzG2tf+XfSaIp7eMkvKwd+dte?=
 =?us-ascii?Q?cx76ei6hGmGU/7FY2jdTjNdBLjc1ERScGN99FY/srMoJCyaR+aO+UwFhaFqW?=
 =?us-ascii?Q?TekEZdjMtx/mhsVKeziOLA1jzib/8K/0y/O6yGPxSIu9ERmoMUn3xyTBRcee?=
 =?us-ascii?Q?RbgEvq+rGhgeBt7LTZ01awTGFDE/HkbXq1Rtd1LtODrivsHtUWwN3SBtinG5?=
 =?us-ascii?Q?5LsjKiRUTAghICFe9xlMBqpI8q9zWlB8NpB2GMwXnlCsisVVwGpgnl+JsUtg?=
 =?us-ascii?Q?5Igy+Wz6UiqwmGMzueRitqu3VUIsTevVQ3+4fNjd642lpXegAQtUqiISmtFL?=
 =?us-ascii?Q?gANO2BYzxlDWq9MXrpwZepEZEkA7S0BBsCryrwPycX2gL4W53vhYz39KMU03?=
 =?us-ascii?Q?yg9lx4ZzS3BSWFgMu/Mu/Nc0tfcdb5JU3SeR1DN3UgDda9Lp7zy0IhPOvJUl?=
 =?us-ascii?Q?c0JS84kbXtGarK37e0UYLGUUu4EryQfuc31XduyfgDHIngYvBw/cHOk5PtxI?=
 =?us-ascii?Q?j38rmZrYuGTbuZHZ3wL7LfGZEruRhOBLzF7atgR6+0eZVxxyl7pcNaj4F6PO?=
 =?us-ascii?Q?1W1KTDu1APVBs7GUyzNeJR/Vai3Pg233y6vaCc5YKjsfk4P4Xdd734KaLfM8?=
 =?us-ascii?Q?lb0RN1+utD1D6g2vHLSN11RAIto1F+gPwEo8zMFUSWtHFxDiHB4j0el566uu?=
 =?us-ascii?Q?oiTGZsZjWmpXsZPY9AxImt90gLIVqgPCEGE76RBJdqIjBZj66mKOB2oL5lGs?=
 =?us-ascii?Q?Ek2PkkJ05UB3FBndNITWTQBU5w8luRjt0bjj4G+T3iLP1qh48EnfKfO9sBD6?=
 =?us-ascii?Q?tNmS0/eXIwqbhX5rHWoHF8LgS3iz6X+F72DFtKWcqTzMcebJlyDnXB9Y4bEt?=
 =?us-ascii?Q?oxBec9PjbrU7bhtF5E9ov0xf+Fj6RMqewA7W3xIFdh/oc3vR8ifCo3NHzxgw?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ed5be76-d267-48a8-3fcc-08da9b24ecf4
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 16:26:52.5404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3xwvzRMPP7Y64p5zmpjzB/rRfDpWl29LuGSTkRSol0A8LGaqpU9mGyMxTfsrUo756jSgNk233au5/UQF/Y0wDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5902
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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

On Tue, Sep 20, 2022 at 12:01:36AM -0700, Lucas De Marchi wrote:
> On Mon, Sep 19, 2022 at 11:56:59AM -0300, Gustavo Sousa wrote:
> > Make the code more readable, which will be more apparent as new
> > platforms with different hotplug inversion needs are added.
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> > drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
> > 1 file changed, 16 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index de06f293e173..c53d21ae197f 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> > 	spin_unlock_irq(&dev_priv->irq_lock);
> > }
> > 
> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
> 
> new users of drm_i915_private should use "i915" as variable name rather
> than dev_priv.

Thanks. I will update this.

Is there any documentation where we can find information like this?

> 
> other than that,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> 
> Lucas De Marchi
> 
> > +{
> > +	u32 invert_bits;
> > +
> > +	if (HAS_PCH_DG1(dev_priv))
> > +		invert_bits = INVERT_DDIA_HPD |
> > +			      INVERT_DDIB_HPD |
> > +			      INVERT_DDIC_HPD |
> > +			      INVERT_DDID_HPD;
> > +	else
> > +		return;
> > +
> > +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
> > +}
> > +
> > static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
> > 			       enum hpd_pin pin)
> > {
> > @@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
> > 
> > static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
> > {
> > -	u32 val;
> > -
> > -	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
> > -	val |= (INVERT_DDIA_HPD |
> > -		INVERT_DDIB_HPD |
> > -		INVERT_DDIC_HPD |
> > -		INVERT_DDID_HPD);
> > -	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
> > -
> > +	setup_hotplug_inversion(dev_priv);
> > 	icp_hpd_irq_setup(dev_priv);
> > }
> > 
> > -- 
> > 2.37.3
> > 
