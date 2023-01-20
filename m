Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C94674831
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 01:45:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A14A010E0E4;
	Fri, 20 Jan 2023 00:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDDB810E0E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 00:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674175542; x=1705711542;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TrQP1oXk3zPunHXIRV22Bc+wGNbNM4FGEfsdYWdPr04=;
 b=Nug5S0SJ5+s2ML5pk8HAQCnayOfFLYzMdaOSffmsXBCSvFHvywJgjS0P
 1EEoXZrNQBQNyq+Lb4c/G3X0wrTLxC74WLHvx9miXsgIRYGGuYOKm6KXq
 MOqC/QBleQIxt3na7GxagAaAVnlDCT1d1XYjjjiCKryhtKGfFqJYyBBTl
 y2SZ4nIkKc2tOjSEWK4S2adJNrVi+DmLdtV/qTYLADXypfwXDu5SCPK/A
 zXcF4QdIXmRw6W/Onrk+nOWpHblR+RIB3DTC7XsWVuYT5qM6xdw2C30Ic
 9fKgPuZ5Tz1u014UnGvGZiWRDGELENeLLyhqxTeRXEzT4QKt84D+ULAYN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="305841761"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="305841761"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 16:45:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="802888412"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="802888412"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2023 16:45:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 16:45:41 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 16:45:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 16:45:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 16:45:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gnRUN8hiG/tUhbWvRrhhlE+8IJ36dYjAJ6RiVqoopEhuSNvbrsQNLdCrU7g8E7bmTExZzqdNMR4uzmlprwh3FXzBUmbWkIbHUGI6MLa9r/2AzPAg0OhGqKCNw5e5b0OCWnHtpUldGgr0DkGkGUooJuaQ6Yp2ZdpG11l3lXykuPTaJt6aaBcifozcX7XHKrh1QdJBqstCxIbtMwj0n5cTx4JUmQdq2myU7aYe6PA/dBU9TEm9N6EJ+A/1CpMTx09jinY1HDM7nRxBuJrXa3R3ccnWFRNpyX2ImkQxi5B5wczkkHDNZrewyPgW4IrMseweq3fObAHUU9f6dECu9TTiAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k99nwJIz9E5P6I9mRbUHce+WHUGXVGw5/+Z8uMgIfNE=;
 b=VnuD5jHLzXmYIgDvJbV8Y2VJ3f2CVMdSguRJChSV2TD0RmfDlOMMvmZ+iPJWJXR7zWV9imKs/vE4k0m4FaiJXSYoM94UXL/qgJ2GcbwU0FHkm23KIbtbh8E3ur+GR/Q3GhsgI35FVCPdgLnujBmR2faxRCdo7UVYurfx4Va7NbF5vhsNoaPEbbKnkMiBs5PLIBym9DyQ+kgbYf1Qdxei+0SZS6wTCWopsLRoQyfbMGGFblnEnXv1bKlbGFmJK5c4iHIxfQYJwijSjjhBmz4v/eqU8Mdd+1/O2pP62xgQLIjJBvWICofidQae+MOthmR7cLTHgjz9Ko5m8PgGHdRWhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB5901.namprd11.prod.outlook.com (2603:10b6:510:143::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Fri, 20 Jan
 2023 00:45:33 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.024; Fri, 20 Jan 2023
 00:45:33 +0000
Date: Thu, 19 Jan 2023 16:45:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y8nkKvyJmCmtAD35@mdroper-desk1.amr.corp.intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
 <20230111235531.3353815-3-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230111235531.3353815-3-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR03CA0148.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::33) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB5901:EE_
X-MS-Office365-Filtering-Correlation-Id: c8a16345-e4ec-40f3-3f04-08dafa7fa31d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F9D5HxHJRbmMRqbszuXpFRnJfu1l2MCXF0Eri8BUnztMPLXBFE0iUPy77tWRxIup8o4MHDD11me72f5vJJioLAacEwxanUU9W4d+y9pxKBtDoMnd0pkHAkmWc/gRDCc2us14RfLBeOangl5VCj2sOK7Jn5ooe5le9JFeXA+dLJ0RDDSJLB5MtNm434efA2JqGAiHwbTyiDuJqg3UFua4qUu4v9Y6co/FSg2DDcz4T0xWxL7vGf/6S2TgJfoW6T7WA4IBsyGD7FXwI2nLYzZHmvp+3yyLHvpmo2IZAV5+Uxw4PQ3gOE3qfBUN5AqW2n80ai3yyMHGA1Qc8EIa42g7MaEFoOd7JSXac0sx6oq/xkT8DIhGOWQCjNs4Vm7fqtZPrciGpTZbpPc0/dM1oXD78J5Oax8QF7UzpYcFnbQH93awAHEH+/4Jqvpn8Bkvmav9NT3WFXIDJZTLdScMlfU+LXnc34owTsA/KWKnQDjQTrk+7/UnZf8tWz5XcjXwcy1m4z+x5LNqa/aPW4V7xvJq4goRn+hP5cpGOFdIRtseBzItD9deFGQ+GxUQE/F/Vahiwsp4/j/F9j19o/pPc6i23mf3ybHyL4OcgfQv6DuXuEG0TFaRCfjOO7LfhUe08DTnsHnGvo5KROb7Gqda41KOtw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(366004)(136003)(396003)(39860400002)(451199015)(82960400001)(38100700002)(41300700001)(5660300002)(2906002)(8936002)(6862004)(83380400001)(86362001)(4326008)(66476007)(6636002)(66556008)(8676002)(66946007)(6506007)(478600001)(6486002)(26005)(6512007)(316002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nzKjgqew0/w3ZJPcyKyKJjj+0vuO0LVM4oDpvwo2f38qYBPX94QL077q7OZa?=
 =?us-ascii?Q?8LkRM13a2frC29W5tQH1kyz8D54FB47a5sAO8+rbUN7qlr/QnshGSV1XZUsh?=
 =?us-ascii?Q?rO+IuMSE7t5tzh8FFfhXboVFvy6NLoPwxVpBugDafT9cfGpyhNuLE0JOkvm7?=
 =?us-ascii?Q?cLu+xKu1XpXeMF7uwlMMNLnhHxMuXrtR3f1u/6xK6lFpD5W46SvV0GArCRMk?=
 =?us-ascii?Q?3/2wITgORSJuQVU+Mganz4oG4vsZBMqAWxnxJuBpGW/xIfFAXifl/UEbPrMl?=
 =?us-ascii?Q?Q4sCwHhhWnBCG7pPJg1WslGvY8uWEHO69KODQv10vyCgJKDyNV5cSMz0HC/3?=
 =?us-ascii?Q?udpBUjoiKS/9v0FcaggurY2IU/5ZaBEUVtuw4WwB2wqoyOq45bk8MZ5na6BZ?=
 =?us-ascii?Q?SZ9e0YEBBppHDqJTleuOtn31UDK643pOx0w44VIhu16YIzoK3H6F8GEvFKrr?=
 =?us-ascii?Q?RjHySUEkfC2jkb7Tc76E8xDfoytpD31B6jfpGEWYATEaEaLpLhA9aQ1hhW2R?=
 =?us-ascii?Q?KS6X8Bg2TiidAioCZe0KD4e28WnFlZFFCcD1y5Eg+LylX+4ASBRidZkcOOFQ?=
 =?us-ascii?Q?B29BZLQW58ej/uJChoHQJlYctJ6mblRO4Vhj4caMATTtUhRoj4HmtXBkTSsf?=
 =?us-ascii?Q?EyPa3BGebo6jsaZi/2osUj35XadB/iMquWXY2VmI8iXEHOxu8XXa7shV0ZA6?=
 =?us-ascii?Q?ld+ztFX6igEknh11RaW0hl4TxpNb7z9KDLlWwuofdGbQWXTBryzvOmxGuKSg?=
 =?us-ascii?Q?bPwGAz6SNiw7IcsjLMll05lECHNV3FNXZbxwaR45zDHd1ZiLof4S9Vq90nnk?=
 =?us-ascii?Q?/Ojy9FTsEe+Ye5g94KPd0V+Z8UU9DZHzd2ifYBTnmG9fftHrW/UMkhT7Q9ey?=
 =?us-ascii?Q?WISDKchu5sVO+eFxPl4dED54BiYJgd3Fq2IgCsBsDP9HjeU5NSKNJkC2ksmB?=
 =?us-ascii?Q?mJOUQHwLPv3FGSIsWg6UoM3TG17XkvxrMXWStTOdXyf4/BxNNrWGIhVvcm7t?=
 =?us-ascii?Q?N0WGpM2/O0mVt6PrU8P582Dk4Hs6APRh/WZ/+S2u46fxikYj09E0L7UtOaZs?=
 =?us-ascii?Q?Iowg5gxW1hryf5QlS5NI2i/wjAcJUiPQrfbp0WMlfVNavbPc2PbgFPMgt1Zl?=
 =?us-ascii?Q?ovZlNYvH5fxbA1asZ2Tf/KtXMKdYJL4FS8/ml76j0EEGwl0p4i0LuxWH1D27?=
 =?us-ascii?Q?3kJnkBGTWarTsO13NiC0AJidoQsqGx28VoIYqo//KjSCjxpDCfqa1npcBlHw?=
 =?us-ascii?Q?e4MTO4TdYt2qQXrCJZ3EF+B50iWwyHwiI3K8jUz+wf7P2fbt/fJRyYw32KS8?=
 =?us-ascii?Q?G8fgiA3mOEilQ069UH3TXLpNy3qTenhu8o2JUSbFG2JobeNjws79C8PMX99s?=
 =?us-ascii?Q?6vtejb2+H3i5TCR3uuANmih0p6LMypCJ4mMtzTY+YsCvopsJ3pdpsDMlfEXK?=
 =?us-ascii?Q?JW6smUZheAjxxaRNcsAGf80Ql5R08QBfhd8YyNr9BaPPp4tfK1e1zlzhCg7m?=
 =?us-ascii?Q?4Zxa79KExkFFRE5BmhDV5Yz8No1jQeIX98SFVscIRz2WGxO4hYt3iLr+uN5u?=
 =?us-ascii?Q?vZrppajpb0uScwhzYGeXazv/zRz4gAQBSEoP/V4cbT5Ms79yZg2Ul+8diZtw?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8a16345-e4ec-40f3-3f04-08dafa7fa31d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 00:45:33.2458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8CKdiGqo9gqCMlZ0vJhHKDBzVVW3duJbFb4m4iReYY0wPhOeR3DxYIlHKyrsl3q+4zcGceBakNNC05gTVvI+hbuqpPKsDvpKKbHeNnSwgdo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5901
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 2/9] drm/i915/mtl: Initialize
 empty clockgating hooks for MTL
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

On Wed, Jan 11, 2023 at 03:55:24PM -0800, Radhakrishna Sripada wrote:
> Clock gating hooks to be initialized for MTL are yet to be implemented.
> Use a nop till we identify relevant WA's here.
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

I wonder if we should just drop the MISSING_CASE warning on the default
branch here.  When that was first added (gen6 era), we pretty much
expected every platform to have some kind of clock gating programming,
but a lot has changed since then (GT clock gating stuff gets handled via
GT workarounds now instead of here, we're starting to have lots of
platforms without display and its related clock gating, etc.).

I guess setting noop here is good for now, and if our next platform also
winds up being a noop we can make a change at that time.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 73c88b1c9545..41046ceca9db 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4819,7 +4819,9 @@ CG_FUNCS(nop);
>   */
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>  {
> -	if (IS_PONTEVECCHIO(dev_priv))
> +	if (IS_METEORLAKE(dev_priv))
> +		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
> +	else if (IS_PONTEVECCHIO(dev_priv))
>  		dev_priv->clock_gating_funcs = &pvc_clock_gating_funcs;
>  	else if (IS_DG2(dev_priv))
>  		dev_priv->clock_gating_funcs = &dg2_clock_gating_funcs;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
