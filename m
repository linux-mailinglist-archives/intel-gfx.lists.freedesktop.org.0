Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F19087E0755
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 18:24:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD7B10E0D1;
	Fri,  3 Nov 2023 17:24:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2276B10EA3F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 17:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699032259; x=1730568259;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6bf58NcJnHOqkkLkkdalOfpWgq37EECxF2x6ub918O4=;
 b=TWAyD54jsqscfeamQtMopWF749B053WTjFRLQsuAqfxM1KX+4F4MGpuP
 9fIJvgvhvtyJqmCJTR7B8vFL8FtZ2PgDUoLwD2CIXficMyAJ27yD6k5+J
 flKzI9P0FnbzStgwuZPSgsoWfeis/QPk/toBRnBUmzRNY3GGMGT90/UVH
 FRtsftlbBUEdt8VjyL+P3vZhbaloi4aMIuF6zCo9XRfYvgy7bsu8LayBB
 acc2ZMlL//3Cv1r/wYcjtIJehzBFjgCUdkYVAXJ/Tjdttzf2/T3vuxIYU
 79DtLTzXB7FzRgvWfhfpS7xXu+gLuEgeqmeCrLH9MnZjHlnNUIFq3oFs6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="1868271"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; 
   d="scan'208";a="1868271"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 10:24:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="878710469"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="878710469"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 10:24:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 10:24:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 10:24:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 10:24:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nvTlpTexgDmWbrGhGxZUWEL1y09nIsEevUyGsPxE5snyiz5dJ0K5d5JEOxSi4FuulgwCTCTFX0X9Bn2cPr8QDDEWqJzfElfIZ/Ln6HL4e2LmS+0XpbSzfbEQ80zSam6l75TDrs0jpKCja/QtMqH5RhKYk867sisk16kcaY1uLAMgma9mm7LvsJfLJ2HpklfZ8nioX8pI8RCx3OHeKMYtqjTtvApDCMnlqcdtr+5edBjTOBF+k99z524tHjoepV2dY9UFCiA1ZZmHmmN3Y2ymXTid4iyFt7wKYeSX9v2XeQa4jyygHODL5/+LzY/isawJmK2E6XcUTm1lWk9il1432A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Aezhv0/nATXAz6ulYa3QG9P6vz4Eff3d204zNuIvIeQ=;
 b=GbM3wXgC15bdg3PV8E23M+McEoj+dFe+vQzJ5/KAOH4xYMFMIKGQ+I77tZglkzhtUzF63+IayzXCc5jjKyNWH32a2EUmu9Q51b4CdLTVnf9qRr31Cr3Hip9xvZmoQ2ofcAiBdsZkZasI3214SSEOJliW85QzgZRFg82s1caLef5U5YEN7t2cE1JIlP8QM+jcNeKAfxEGxd3FLoVAkm6MWmqUo3RRvvnjGk0m/L2Bw5RSxMtcOUI0T2KFSXsPS+lyAI4DN7yNMka43m2JjBdFSTeeM73q9xlfptLYq0m4aZuoFzGNl2Z7nUKVrbYUxVHZEO/UFZQnfZt0nviAGB7pAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7924.namprd11.prod.outlook.com (2603:10b6:930:7a::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.21; Fri, 3 Nov 2023 17:24:15 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 17:24:14 +0000
Date: Fri, 3 Nov 2023 10:24:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20231103172412.GQ1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231103052959.3537-1-gareth.yu@intel.com>
 <35c88e1e-0f2a-411e-b224-a9526723b2dd@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <35c88e1e-0f2a-411e-b224-a9526723b2dd@linux.intel.com>
X-ClientProxiedBy: BY3PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:a03:254::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7924:EE_
X-MS-Office365-Filtering-Correlation-Id: 451ad265-7a3c-4c6a-e21e-08dbdc91b3b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lnjRnVn+U0OA/bJ4IaRY+uPdHz4uhQS+CGO1QK/PqhD+SvKDIs9jygHf5aL4WoJynLfA43AEd9je35cSri6riti/UpnH8AWJniY3H58V5vqO4SjrUnaFC/MrZqH2CmqO9xWNC2+khAeIW2+4uQ5WGdR4Bj84HYkmYamHkl2YNzB8YqU11jUs1cFm4a41Gw9zTDNXVTUFT57iWsdK6Oep9j/h1cf36XhYlRpOrkCmnXj9s+0HfxijspriVCzNbOarccMVrm03cXGLtis+vOatKwYThRlEJ88MS4isFv9h/OkaatktlwjM4QHUeTzkx6FK6NrzIFHnBz2NIpO0oEERPcT23EXv+/yYyFQhnHcswTXfI8udknWWH7UgqWEFI2ng8mtJr9iGKfloQqU6hnhNglgznDMyZxCZsSZm5gMHvj1/vDchCXCRIqysS6eTBiu1WLYx52FNMsESnZotzvI/TcWxv4yZFHrfOdJKjrxRRVj2eJaUHoDpj6+bcNZUxydp/agjxoBhDvaw9kmfJ4x08Naq/FMWRLbcLNfZX6NmY/a3TR8CqwRdEm98gKwjYFrW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(1076003)(6512007)(6506007)(53546011)(83380400001)(66574015)(26005)(5660300002)(82960400001)(33656002)(66556008)(54906003)(6916009)(316002)(66946007)(86362001)(66476007)(6486002)(2906002)(8936002)(38100700002)(8676002)(41300700001)(478600001)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?JlExJlnTTT5FAnKBwUIC74M8HlIkyzw+lQYj27BDI0XXFGQCWJ8XPEN+sz?=
 =?iso-8859-1?Q?DalYi0ddZpXI87h895HFbjS39VpexZF9nuRzGGCIltb2b57eMZojAEJ7tP?=
 =?iso-8859-1?Q?Le/Tq5UqdlmLmmqUwtf4FK5C025GH572tZOEu9JG4Y4Kc3RYX42H613i1x?=
 =?iso-8859-1?Q?SmMCZXrBNmViRsZN9hSrEfbbUku1l600F6CXa/qctaLorhNTFZ+bcETp05?=
 =?iso-8859-1?Q?FIN5nMjPM4ypLrBP8FkeCXepH6CFy019MmRYnQxn6xCW3Y/O1jghtHIWyA?=
 =?iso-8859-1?Q?tGXUa68vLk/YTMMB0NNUPWb7dTszHGlzl58ZBd2xLer4gNbBFDOs4Np5fj?=
 =?iso-8859-1?Q?sbioZG8grz+Yo6CcnNttaTj28nIMvuPHA5LY78mc4iDrbcnFB2F95PZZEX?=
 =?iso-8859-1?Q?gPdAcGTSzfImPK/fvC7RF6SF4oRwwnk8alXRWzQCqnqaUOrVgyyGcHCBpB?=
 =?iso-8859-1?Q?Rzly29zZrNGhUuCa57+t6jVSWxkcUjpBCEXpverbbVtF8pga/XjQsCzEr4?=
 =?iso-8859-1?Q?YOwEqXy93hE9ALGfnsELncVGTUGzFNEOlN5mO++b8OfI86REA8IagNChJd?=
 =?iso-8859-1?Q?xqJAXpUOgo+neFXZzLz9MKzTrxI9u/TkYlz4wDrG/m4BMfMW2ABNeitsE9?=
 =?iso-8859-1?Q?XTjUUvUP+ltlCj9mCeX6s6BlbQ3Y70XWHEqzy03Dse2bUOj73A3f0sHstf?=
 =?iso-8859-1?Q?rZ6lJrPcp77ui73y+Zq2CuE/H1SACdYe6Oyi79OIvB/3OqzoGsS2dvY/M0?=
 =?iso-8859-1?Q?eIAwD1czaxUVLIVYPkur+/HNg2U5DnQ3VeYs4fbKs05ae2vIVoXfBECd9s?=
 =?iso-8859-1?Q?ES13StW6F5yFiWkKY+kaXjogjlIM9PlX5A/Ltb61DGV83dmGz8neKj3f3k?=
 =?iso-8859-1?Q?2apxVYBCj0byQUrI2ec/LXrgs0Xmz4R0Ko9X/vHHQWBgnHbQIi+YiEKr2r?=
 =?iso-8859-1?Q?jFmN3/zIjaaLytlFzMIDfi7G5vRZ0vvU0o72RIjFImBmFdrRY4TIfDayjV?=
 =?iso-8859-1?Q?FR3x6yL+QJzANoD3gZriD4m6YGsVE4UK7vOniHgwj10T3Z4h5s0fjaXqSS?=
 =?iso-8859-1?Q?DHfg+7aNkhk5+Hz3k88BmCeFO9lNrNrbOiFKGbZJNB8KHKyJ2fVsp3seJR?=
 =?iso-8859-1?Q?U4otCtU2oFJ2ovGCYyRHaECH2YSLg2K9uiVnvAkJHHyENwyUS079gjnkyS?=
 =?iso-8859-1?Q?qphbhjxeog2hquBxUUmmyfIGtdF9Fdxpn8oLka9Zt5KpMyusf+tR/bTHMr?=
 =?iso-8859-1?Q?18p9+FE+PiGdOMljBIECNv4RwjoSS4+wdIxMLOznPIij/WCYVq/IPJdoN8?=
 =?iso-8859-1?Q?preOsELWP064HKOkE65oiRzXNT6n4KeDY93su1DwxHc9OKsdmSBO4qa5Nc?=
 =?iso-8859-1?Q?Z+B5SWTJxP3ocTb3Ir3sCPWb/Si6kdkTnw7OhZU3XYnV/8S5otyvBcoUZk?=
 =?iso-8859-1?Q?yUE9Tm/e9IohTSuPgQjoxeD5jLtcRSHm3p7WjIM8S/Lv2cZYgTzGu32Pyh?=
 =?iso-8859-1?Q?Z6AZrBHW+1+4Vgd4dLb4THj07xlMc55Pjv/tc7lc9jF1e1fb5awOAtTUvJ?=
 =?iso-8859-1?Q?JcnjBtndjq/EN708X4BP+CuTLlaZB7rM7HwnvQP5BCCHx2b1j/r9s3zFLS?=
 =?iso-8859-1?Q?WNYzjqwdfiolMtg2AJ7PwhjO1BGEgWabmn2FncHeNjYpHqQnG0CEA8uA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 451ad265-7a3c-4c6a-e21e-08dbdc91b3b5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2023 17:24:14.8529 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2xnto6wdTqS7ZMpGg9jkEBnh0K5IhfD5IRX4BoEzRcHDYnog6uPbGfrjvZNkAivwFQt+qoTRSDDJvwTrO+qAllRC/RP1WutOWT1hFQg+bXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7924
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Print SSEU information of all
 GTs for debugfs
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
Cc: intel-gfx@lists.freedesktop.org, Andi
 Shyti <andi.shyti@intel.com>, Gareth Yu <gareth.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 03, 2023 at 11:17:18AM +0000, Tvrtko Ursulin wrote:
> 
> On 03/11/2023 05:29, Gareth Yu wrote:
> > Print another SSEU information addition to the first one.
> > 
> > Cc : Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > Cc : Matt Roper <matthew.d.roper@intel.com>
> > Cc : Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Gareth Yu <gareth.yu@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_debugfs.c   | 13 ++++++++++---
> >   drivers/gpu/drm/i915/i915_gpu_error.c |  6 +++++-
> >   2 files changed, 15 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> > index e9b79c2c37d8..b5914a2c0597 100644
> > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > @@ -63,13 +63,16 @@ static int i915_capabilities(struct seq_file *m, void *data)
> >   {
> >   	struct drm_i915_private *i915 = node_to_i915(m->private);
> >   	struct drm_printer p = drm_seq_file_printer(m);
> > +	struct intel_gt *gt;
> > +	unsigned int i;
> >   	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
> >   	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
> >   	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
> >   	i915_print_iommu_status(i915, &p);
> > -	intel_gt_info_print(&to_gt(i915)->info, &p);
> > +	for_each_gt(gt, i915, i)
> > +		intel_gt_info_print(&gt->info, &p);
> >   	intel_driver_caps_print(&i915->caps, &p);
> >   	kernel_param_lock(THIS_MODULE);
> > @@ -783,9 +786,13 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_drop_caches_fops,
> >   static int i915_sseu_status(struct seq_file *m, void *unused)
> >   {
> >   	struct drm_i915_private *i915 = node_to_i915(m->private);
> > -	struct intel_gt *gt = to_gt(i915);
> > +	struct intel_gt *gt;
> > +	unsigned int i;
> > +
> > +	for_each_gt(gt, i915, i)
> > +		intel_sseu_status(m, gt);
> 
> Don't we have the per GT debugfs directories and files already!?

Yeah, we shouldn't be updating this.  Commit a00eda7d8996 ("drm/i915:
Move sseu debugfs under gt/") notes:

        "The sseu_status debugfs has also been kept at the top level as
        we do have tests that use it; it will be removed once we teach
        the tests to look into the new path."

If there are still IGT tests that haven't been updated, dumping both GTs
here will probably break them since they aren't expecting it.  If they
have all been updated, then we should just move forward with deleting
this device-level SSEU instead.

> 
> > -	return intel_sseu_status(m, gt);
> > +	return 0;
> >   }
> >   static int i915_forcewake_open(struct inode *inode, struct file *file)
> > diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> > index b4e31e59c799..2adc317af944 100644
> > --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> > +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> > @@ -722,9 +722,13 @@ static void err_print_gt_info(struct drm_i915_error_state_buf *m,
> >   			      struct intel_gt_coredump *gt)
> >   {
> >   	struct drm_printer p = i915_error_printer(m);
> > +	struct drm_i915_private *i915 = gt->_gt->i915;
> > +	struct intel_gt *gt_n;
> > +	unsigned int n;
> >   	intel_gt_info_print(&gt->info, &p);
> > -	intel_sseu_print_topology(gt->_gt->i915, &gt->info.sseu, &p);
> > +	for_each_gt(gt_n, i915, n)
> > +		intel_sseu_print_topology(gt_n->i915, &gt_n->info.sseu, &p);
> 
> Do we need a consistent story across all error capture? Aka why is sseu
> special.
> 
> Also the intel_gt_info_print() above calls intel_sseu_dump so we end up with
> root tile SSEU printed twice?

I'm guessing this call was supposed to be deleted by 0b6613c6b91e
("drm/i915/sseu: Move sseu_info under gt_info").  We should probably go
ahead and do that now do remove the redundancy.

err_print_gt_info() should be printing the GT information (including
SSEU) for whichever GT had the error.  I don't see a reason why we'd
want to dump extra SSEU information for a different GT that wasn't
involved in the error.

Actually, SSEU is the _least_ useful thing to print for extra GTs
because once xehpsdv/pvc are gone from i915, the only platforms that
have multiple GTs are MTL/ARL and the SSEU information will always be
empty on the media GT (there's no DSS or EUs there).


Matt

> 
> There possibly was a Jira years ago to do stuff about multi-tile error
> capture but maybe it got lost.
> 
> Adding Andi if he has comments.
> 
> Regards,
> 
> Tvrtko
> 
> >   }
> >   static void err_print_gt_display(struct drm_i915_error_state_buf *m,

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
