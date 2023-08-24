Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE1978749E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E6A10E592;
	Thu, 24 Aug 2023 15:53:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FF610E592
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 15:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692892430; x=1724428430;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=S7xOQjVVEYKttOWusCgJIVxKwN6XGIiuD0PnoC+B5vA=;
 b=OSfPdiX7UBbhJBVi+EjK5tIM3ypUe1F7RPtV8oF+vyUmvPZD2vPty1z8
 EwPuUBDu1Y7Q21ok7XAMA0K7cl9/vhRokrimKWr7fawgTMKbao1TrRimR
 jv/4/JMSHGUi9WMAJI/pN4E9IwkcyiYOP8dY3B6RwJboVYTtwiPHFGkfv
 eJy/zncw/mF081NYmoH855V/7eVy859cOFxrSQSLtY9rac2UtObRPQEEo
 lKoWZ6DE+xidr0Im/h4VzJhP3iPf5Tlo2iz5+fXePgV9efOD7OfhN8npZ
 Fv3Uhkqr4QZe5f9RrQLwkvQ0Ie/MaervUlqWlX44sKiv9HpGDHz86TP2t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460836178"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460836178"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:53:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="730690057"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="730690057"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 24 Aug 2023 08:53:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:53:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:53:48 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:53:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NP8qHKQB1ccV5EgQFhMBpDqL29LZBOnDwlvW2k1S5uKru4lNyIeysMnHGvtAQlshuhTcC58/mMulmPTtD5cBIbQlXThEWGP8/DadyIYm6FIzAAp1XJ6hAH4NbFiH2uNvSBMEKygTfzO24/JroUb+3Oduf9AmoTRwxfnI6VPQuE1FIAJFCnlBm8yuHv9AeOAI31pfrppjr/PN51o/5879eXFTPNQoa3t8O9ZPr81cC08PCc/fKMsFSZEuoO9Saws3BiBIel9AbprKAdHEuTTE1TxOPGU4q3NNsm3UODv+IrRwlny0zHBuWak/OXbK9vMJyLJgNbSixE45yI8i18Di7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ucxfYyafm+nu5BrC1B+Z7JaxlvVqU7R/chG3RrDTSrU=;
 b=LlPHt16WYno7mbglQA4sm0xuKafu+EDi1Lb6LLLbmLMRsSP1MVKkH2iM3JepTky1WjTTr833FtVRQqLhnxc/Eei4uUt0evWTojwkG8DYirlBP4ah6b9AQzktZSp0Q+FvZGNI/q0pQiQeNf4nPd2zaAD9PZb1mJx3bVYdH0sTLDVe6eFaacHnMdgmO0DBbp/RFsO/ta0jujqJ4IOXZ+PKQAjqb9/G5W89IHDREyBnTMhLXskHjHnCgp+GVUwKhNktqBtriVW9cWB4+r+9HEyGEC7CBaiueUEsTiJ0E+StrHNnA8vR+8olBnCj1VoZEGaCQ+dgeYbPJFoItH8x3GN3bQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by DM4PR11MB5360.namprd11.prod.outlook.com (2603:10b6:5:397::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:53:44 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:53:44 +0000
Date: Thu, 24 Aug 2023 08:53:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Oak Zeng <oak.zeng@intel.com>
Message-ID: <20230824155340.GS1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230822152859.1586761-1-oak.zeng@intel.com>
 <20230822152859.1586761-3-oak.zeng@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230822152859.1586761-3-oak.zeng@intel.com>
X-ClientProxiedBy: BYAPR05CA0072.namprd05.prod.outlook.com
 (2603:10b6:a03:74::49) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|DM4PR11MB5360:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d51fc4b-b524-4943-afab-08dba4ba4b74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EF/GlHB4cqOMWS52cLS11ewOm9+ZsXXs5qkvtSeLk98dYbVfh33gY62UWNgotGSH50gGS0HPrHKSiv++b9FgdYVh/t9cDIjX815hJtUWi6RS6EItdm4qQDvFK4KyktWoL8uTaNGMi4pe003y0ol6UyN32bn/fRUHa5egGifTYjwx0OwPypyMZqGE2tucLo2BsGjjvm1zAdFnARHmTpf2NeIAo0R3xjwDOmloNs0f1GD0pmnSrRTh+bMRttyEF8LH5YIWjqc0c0AnsiTFSF4UsHLZNYloX45npQ3LNCwxZa8QlEQgSchLl2m8ygi+MV6U6ectOm3SNTog0wYEoR+hjkyBDpGcUUZIzKlU7VyIHLXYYZQEXiXyFXUnO4CfMKKdw1NTxYeTRSVOndFI3cObd9ZsTlvRSy+Kq2s9HUzXHhehdWTTrszBth8nl9jBCUmf5ifY//BYhYOC/qroHucTTUZW+kbTUVAqF8+R5KqF47wb+JnLuaV6y1/KNdJZu+NvS08DdxMEm8akcpXnxHBv/kSorrpBITdEroTtS6azKmMhtCu4u888itnBbEydV4Za
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(346002)(366004)(376002)(39860400002)(1800799009)(186009)(451199024)(83380400001)(4326008)(6862004)(8676002)(8936002)(66899024)(5660300002)(1076003)(26005)(33656002)(6666004)(38100700002)(82960400001)(66946007)(66556008)(66476007)(6636002)(316002)(478600001)(41300700001)(6512007)(2906002)(6486002)(6506007)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3R1dWBvcELGrRPpM859iCDsL3C4rE43nV83ASgjK5QUYJgd1pwA6rVdCNsBq?=
 =?us-ascii?Q?4+gYHckbJHWkB5Je4GwWBILiRYOilpwHPe6UQlqV7AW4GRJ2XySgLYVsfU4/?=
 =?us-ascii?Q?CD1Iri9d+uC5KNwlGc/fZlH0C4j0diWWAkDWPHJvlcQlfHx+acqu6gIw+x2D?=
 =?us-ascii?Q?yZPLKweNmKziTv64LSrhnB7+W/TxVnuz9Hf2q6ZkSE/ZuMWRtwlyrcF0kWe/?=
 =?us-ascii?Q?ohqQaL0FZt26LWClGnCbdbPjhyOAoebHxCbQlRcTlseCDxtf4oEifVB2cBv0?=
 =?us-ascii?Q?EchMeR9Tyw7lONhltpFV57VaQAqxuYIDH4uHdHAXKV8czgVogsEi10FSyljX?=
 =?us-ascii?Q?qx8W4wq6aypmWvrPzL5drE1rEaEURKm3hOQUKdcts91TVo0oKijH3sl9RCgI?=
 =?us-ascii?Q?O8K0V1AF2ZEHG+FE+DLMkYLCISp4uyf8KwkuxOuDTUp0R+VvDowVyG1eYMba?=
 =?us-ascii?Q?dqB/maQC1G9GUbGvOgIoRuC6ysaSW5OJu8uMbFdpLqBDpWSEgeczKVP6gMDG?=
 =?us-ascii?Q?tPG5mwfn4SlzB5Oi000H75mxcgNw9pI9QWyoRVs1aST1wGhdN1+MyxFMsx69?=
 =?us-ascii?Q?Sjz7jH2rh9aEq+TyWMbi6RJ0NRAwVSe/2CKjmPjpGQGaxdWdCb4xFgc2Gq9t?=
 =?us-ascii?Q?bM5rgZkhx+k2TyxfWkK+O/Qp7YahJKxzCkYVCCc55DHDAJtcGwK7uZGOU9Ce?=
 =?us-ascii?Q?Mv3Nk2RxpAHdLLXQ6ej8u9wA04lF1OdpTAUH50ZbGl/HX+zxwZOmGAG/GLn3?=
 =?us-ascii?Q?4gsHgQadzvhGxJajKI5cAqsfmWUZrBF+qti2npvad7OPa1pYxFAed5g92Wsh?=
 =?us-ascii?Q?k2F708CnMSHBk05gT1QHawth+R4ktwuVx96iqIkl7UL1rCmNEZBx/eGGJSto?=
 =?us-ascii?Q?kpaEBivuxfurDLJo3l58yxSP8Sc6Ie0S5CmQBmU49BwlMTigeipGMtoMvO1M?=
 =?us-ascii?Q?SgKqLBtDzo/SoSZKtarwHgUl3+1ybtgLCfhkgi2lSQWL0b+mBwvjor3kHAAw?=
 =?us-ascii?Q?ih4Bl7eF0QITQ0eqyRO2FrFfhFu8TZ8TPq7911pINB2FGMsjCNZbeXZL9tgT?=
 =?us-ascii?Q?zfHtZMXfrHz2YT0hQBTXX+ofDv5D2Nq8hCFo6XdNxkDZjBfWw+DYpCvVTs7r?=
 =?us-ascii?Q?ycI1bgwsNJKO2YcJkTU0Q3H8/HLs+t20Yx3En8IcT47jOZRKmNfsMKGcvOrJ?=
 =?us-ascii?Q?l93/uPnfZ+5Vp1WTD5MykrZoSta0rER8sYX7x8pxL7niKEIkQtasQL720QBa?=
 =?us-ascii?Q?2h9z5DsFEArwT/xcmrNPkKE9MUTHo45ZN/Fow4Ujbop3N65aQmf/2EveuDzg?=
 =?us-ascii?Q?5UzZWObuKsUsjkjGdWqBjbCrT3SrwbAoPQNEw5mPYSp8pX30oaitIRxOGgr8?=
 =?us-ascii?Q?ZeXdUmJb2SRmYREqtHcZKpRk5VHDi9poBsuyumEpMrBT8qkiOap/FW3F+GM+?=
 =?us-ascii?Q?BicOfMxceKOfxjUdo8IZbYrB8shfo7MdAIO0J/bZNLLZta+kYoG4aNzga4Du?=
 =?us-ascii?Q?jqINoS8Qvx4J1RH6EcE3uu58H1AsBx4jtgOL8750Rc0YCJ19b6gFBbLR40eI?=
 =?us-ascii?Q?CZXB3z0YBELxXY2uJ54ibXgt3GtiO6XhuNtpg6r1SDZ5Z6kh1rz17CXZhFtW?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d51fc4b-b524-4943-afab-08dba4ba4b74
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:53:44.3069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dHVE+9s/UN/Lr45dwYXFbdXdiDCGUKbvYTdYQwPEyhCVhbravCOcVbPznY3KSfamtjDyISFA1Etlojh/OU/QebeIJFVbDHV3moo0S40lrc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5360
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Enable GGTT blitting in MTL
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 andi.shyti@intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 22, 2023 at 11:28:59AM -0400, Oak Zeng wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> MTL can hang because of a HW bug while parallel reading/writing
> from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
> related pci transactions with blitter command as recommended
> for Wa_22018444074.

Drive-by comment:  this isn't a valid workaround number.  22018444074 is
a per-platform record number, whereas workarounds should always be
identified by their cross-platform lineage number, which will stay
constant if the workaround winds up extending to future platforms as
well.  So in this case, the workaround should be referred to as
Wa_13010847436.


Matt

> 
> To issue blitter commands, the driver must be primed to receive
> requests. Maintain blitter-based GGTT update disablement until driver
> probing completes. Moreover, implement a temporary disablement
> of blitter prior to entering suspend, followed by re-enablement
> post-resume. This is acceptable as those transition periods are
> mostly single threaded.
> 
> v2: Disable GGTT blitter prior to runtime suspend and re-enable
> after runtime resume. (Oak)
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f8dbee7a5af7..6afe0adc8ddb 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -815,6 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	i915_welcome_messages(i915);
>  
>  	i915->do_release = true;
> +	intel_engine_blitter_context_set_ready(to_gt(i915), true);
>  
>  	return 0;
>  
> @@ -855,6 +856,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> +	intel_engine_blitter_context_set_ready(to_gt(i915), false);
>  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
>  	i915_driver_unregister(i915);
> @@ -1077,6 +1079,8 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	pci_power_t opregion_target_state;
>  
> +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
> +
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	/* We do a lot of poking in a lot of registers, make sure they work
> @@ -1264,6 +1268,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	intel_gvt_resume(dev_priv);
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
>  
>  	return 0;
>  }
> @@ -1515,6 +1520,7 @@ static int intel_runtime_suspend(struct device *kdev)
>  	if (drm_WARN_ON_ONCE(&dev_priv->drm, !HAS_RUNTIME_PM(dev_priv)))
>  		return -ENODEV;
>  
> +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
>  	drm_dbg(&dev_priv->drm, "Suspending device\n");
>  
>  	disable_rpm_wakeref_asserts(rpm);
> @@ -1669,6 +1675,8 @@ static int intel_runtime_resume(struct device *kdev)
>  	else
>  		drm_dbg(&dev_priv->drm, "Device resumed\n");
>  
> +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
> +
>  	return ret;
>  }
>  
> -- 
> 2.26.3
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
