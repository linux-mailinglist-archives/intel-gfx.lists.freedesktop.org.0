Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6335FC7E0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CFC310E51C;
	Wed, 12 Oct 2022 15:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8979510E51C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665586853; x=1697122853;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9ZoN1KWMibWBCZqjoeu36oOm+QIK8Jth5KxMs1BTOP0=;
 b=bMfglcd4fo/gsqBSaZWe6vxycXVJRPovSlZJuZFQcCzItDcsSAOX0MhE
 aHEuDVr4Q2CzbM0E/kM5xaxo8r91yhgF/nZxdkNXzzr+vIeqofv9dt3yt
 Js1wOyzkNRU8QJDzwsbsWq19JzF3Fw34Gl1xuE60frxiUJqBX4R4MiN/D
 Xd/Lbc2GrZreFaKGon/0CAWzSItKFp+yQwFFqIVzDFnsS5Sb0b5XzYw+A
 i4XrlXiTgrG02xAiO7usktpbIBYlpPqeOf3yKDtDbWqGK1RCNUPsVGrTb
 y4nmuYSyZiiu8ededA3CJIqKNMdVpVXdhwoa1du8PkknJ24M7GM4uBriv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="285198044"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="285198044"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="769240681"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="769240681"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 12 Oct 2022 08:00:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 08:00:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 12 Oct 2022 08:00:50 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 12 Oct 2022 08:00:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GLdGuj1674GH7czvE+ikIbDI1OwQN1vr4GzozhsvHeaVHt01qxzYblvVmfKve+Mt006i4MIKnRVC8nH19iDZ0ifkLXlsPnio9/kypzYH+WGksDpZhNZ9MexeiGvKT/+W7V0e6VCfZ2Nt8dwKDh8k5t9TgOH96rBI7IwKlcWjTAEEn2MyDGVVKCx80Rhp6pHCQgSbvJeoXy3noQge8QBubeoM4hA3m0tetpJjaU+hwRTV3gOw4CAIiOhl27cPnNLwRM0+y94YIxjVyIQo2p7zp83n1IcOLbeJ1IvUrDxDXdIwUZoXlJpJmZc7BFvW9eWexG1nkKyF1EG8ureRQ1WXcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1fxbB3dedJFgbtLwjYJW7LOuWEBQjGhfq5m0oFet/eA=;
 b=nlyMvJGtWObDKbDuQwmGvsUY6ggr+npp11b3lEdEFBdbFb4b+lrA1OXDP4LHv7PxNzNKezXWU+wIKo5kGlkvFyYectORH+ntGweVhHyOn4xUA09m1bDD2phw5J1m1Sa2beMUPD0CIEA4A1rGbTQIlzJA3/KOEtRT/SffeDI2aplMWClsDoIGiaIM2EbmkUUgy32sKltxIUQTIe96xOEVfGuN2kUVx8XqNqh8RSNH5QLnVnxan/tPHG7YHxIlVeYywo09+vOYNJvR85apJcEBuzaF6E1Jzw7W6kETuGaJdb1NAZ9u4SROtSr8Bubue1RyKGhPaeFXlYzHfyZtaqfZFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB6325.namprd11.prod.outlook.com (2603:10b6:8:cf::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Wed, 12 Oct
 2022 15:00:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ea6:6f6c:f2dc:cec7]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ea6:6f6c:f2dc:cec7%4]) with mapi id 15.20.5709.015; Wed, 12 Oct 2022
 15:00:38 +0000
Date: Wed, 12 Oct 2022 11:00:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <Y0bWkQwb6ALdGED9@intel.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <166557040585.17580.5212685833257862558@jlahtine-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166557040585.17580.5212685833257862558@jlahtine-mobl.ger.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0066.namprd03.prod.outlook.com
 (2603:10b6:a03:331::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB6325:EE_
X-MS-Office365-Filtering-Correlation-Id: e0c2db91-e887-4847-d622-08daac6285cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DWlBKjs3ncW8QLerD5J9+QoJ0ZO+y0vUlyesZm2Qxsrgj7LS9uR86c96dCRVDfdzB+WTisgqIb643YJ84H5oor/36SqB2t9x4/wM6NY8/KRPmyasGX9l9b47m8K7IjUC/mZtLdUrENVtfwYV39b39HNAY/qKJhEe/wGF6yYqZiqiBMnZIp9LGbx0UAMZq3j5Qia/8GhSRReSxP82P4iJlQwCRe0E8K0HG19DUu3ayXbX31V2AAue3ix+tUJPO6ORiKd8uUlaaCMI6uDf3y3iXCHb1I60PQCuHwy4jrsY+uv4pyzu0doxEYPZWIo4BC0CtFVqa5GI9iL6kSbPoBi6/FYwUERUaxUk91tuifHqe5DzfJMJ0j4Etfh9WsLo2g1Iqv2TsYqENkpB+8dSshdUt9f/dEJPTbOSPHhSG7HyPgzOSkmw/Zh1We+suRWxzHgNOWG/CnyJ5QQ/yEShTpIxYr6CWqWLbk4ZfMv1W2ycc/U8FeZgOrVjq2CmMLdnOcsWXqrSxGEIc1Vo74gqF4Vj5Qo+mbH6qifR+Je3qwW+OGSY/fTCxj4Ws6DWrMX75KuOKDN1KP3yC8dktx6GxOZgTg3O52EGV2bNhIZB0kAuwDte6/r7j7b111UQqiD1/QTZRinW4jEW4CH0EHWcPyPOyvGjci6/2W9vQYKHEvrkUG4ZDzZwJjs668fUwiy7ToC5CWogerSzhH1fc7nquqmuVw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(366004)(376002)(346002)(451199015)(6916009)(86362001)(36756003)(44832011)(66556008)(5660300002)(2906002)(4001150100001)(41300700001)(66476007)(8936002)(6512007)(4326008)(8676002)(26005)(38100700002)(66946007)(316002)(83380400001)(82960400001)(478600001)(186003)(2616005)(6506007)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TfkB93TgbIZAPnuq5a9CKzx0BuQDDHTESpt0lB4ChGhrgmoVKmLIesnP+4ti?=
 =?us-ascii?Q?RgwqZmV5J/AkwBxrOA7q4WfC8f781k20nBDd4WJr4VEeDE1wP7f4Ib1JSQrf?=
 =?us-ascii?Q?y6+naEGRYqGaEtrWPiGUor3DfMMOTbCH9n5m7Oct5p5vr9DyF93cIDuRF2Lu?=
 =?us-ascii?Q?EV/A3goCfGy57fTK0MVfud3PNsvmkLX5YlAt4rwKH6HSDt1Lgxbue07MfxN2?=
 =?us-ascii?Q?Eu5BHzIZQ/NcjnG6ZNIIUaDZaKvPfkGNY2xQpnFn+up0hNcJf+B3fBR6Ncbe?=
 =?us-ascii?Q?73BwOo80gz6gPNO4EWznjJc9Egw35Ss413I6dhRCX1FJ7VZbYAQw+GwcRghA?=
 =?us-ascii?Q?pBJ8Z/MbRthnqBGfdi6E9d1QOsiAqfr5B6sRFuNWZZ1H35Q3p4AQDpCxUz9Z?=
 =?us-ascii?Q?FCd4VFp7Vi8JCdgvIXdpHtIOsxm+qxuwMsTaHnDnSI8E7MDleDcvA5aQMWSR?=
 =?us-ascii?Q?7lVRWMY0OY8cur455LVYUpq7A6jou1nYW1EnRyOY5fF+6OLwuoOPcUMMUeEX?=
 =?us-ascii?Q?LFv0q9ChtuHVm33DlknasB+u7o1MGXWsOxtaRdjjXiHDbGGf4hCeiGfB1VMg?=
 =?us-ascii?Q?PpX87K3NYuIzImThr+49jkCm/+Pgg9V/kyPhAkdyLgCL6Gl9h79QzMJB9n0Z?=
 =?us-ascii?Q?/5rp+BB7P2cQtm+g+0inm9kZWoCmuDrGLIlGAxie6mFNou1UCoevqOylPkC6?=
 =?us-ascii?Q?MpUSQA4fLdFNMXw3eFLrG6gheXFSZNjVl0+cwemTXfebuZ6Dx//dFOGxFfdI?=
 =?us-ascii?Q?4HfXWatjCnstHoTWw1MQ4C2XbayejfTuSfRQfHU8+BZUL+D11cWSKajRRXL3?=
 =?us-ascii?Q?IVTdyRnY3f3x1op7JfOehMXUaZ6UAyT1RVwdfBR3OS4cpbNvT+QyXFG4DYJw?=
 =?us-ascii?Q?IJ0TANx5seOQTvYs3ZuAWQ11+ncqDNY5b7QJoDkvYCOsfVwnnYd0/rxUxuNs?=
 =?us-ascii?Q?V7nwFeGN5dEFWFSKuQx88UVopOPcfGAbtKTRyxJq83GB/gj124l2XTo6a2Df?=
 =?us-ascii?Q?YmRuKQVgwqBMhQJVJ6IejVEwPjrBBejnvI7T/MeYC0w83GkTP3r5InHinmOO?=
 =?us-ascii?Q?tuU2245ZHSEBlA1taDEUIHKdeA95jhfyiG/W3TVC2TAkUZF+FNNvfR8bCBnC?=
 =?us-ascii?Q?GTd4MfFMvjObWk3woRKlSms/POTQE6Pby3hPWiSKmgWb9Uy5JPscfiezLfDO?=
 =?us-ascii?Q?NKc4DdFUSOXawSl8bp0iPxqRETXcgvyE6i9fDFxulzsfg/Wk2CozRAeapv24?=
 =?us-ascii?Q?zM5wcjmXg3PWS3tYbOd6OQkpcDzRKO/JQ4N5kWYjxy2OaciC5fZu9NpARCCC?=
 =?us-ascii?Q?wETjJZQWifml5kJeLi6qnq3Zp3FwSLVGXuCiS/+y9nVTnzwOQPB1eY7W84On?=
 =?us-ascii?Q?1yaqA1/mmbLRgW48cIeCPfAEWSabZxJj3Iwr0Xx9sOgFI2kV57i9DPXvRS9Y?=
 =?us-ascii?Q?d0kjja6aVDGfyoXDGg4a5JbWZ8D7pT7uO+3C5M3wRFmBNBee3suqSlOyK+jN?=
 =?us-ascii?Q?E/Ksh5YVu1e1KXzYGos+qMKPMrhtP+XTAW1pDa6nYjEbdHT8t1mQcTouxQmJ?=
 =?us-ascii?Q?RT3OnI3Ju8IxSWxDZO72R37ivZ3/FaOu1EXBt7LOs5oeLnd+MemHxWOBDPT5?=
 =?us-ascii?Q?vA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e0c2db91-e887-4847-d622-08daac6285cd
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2022 15:00:38.3189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DfYINmgQpx87fnVpbgCoCvmMCUDTAgO815Pb1KRVWl/NBNlnkzpkb2JkhjkcUtg2LgwPXXW7kz1bwJ5kDQEQeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6325
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 12, 2022 at 01:26:45PM +0300, Joonas Lahtinen wrote:
> I think I commented on this already, but the patch subject should really be as
> informative as possible like: "Disable PCI runtime PM on dGPUs" as that is exactly
> what the patch does.

+1 here.

> 
> Also bit unsure if the Fixes: tag should really point to the runtime PM
> commit but maybe instead to the introduction of LMEM commit.

indeed. if the runtime_pm by default came earlier then the LMEM, the
HAS_LMEM() won't even exist and it will break the ports.

So, I'd say to go to whatever patch is the most recent between the 2.

With those changes:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Regards, Joonas
> 
> Quoting Anshuman Gupta (2022-10-12 11:34:02)
> > DGFX platforms has lmem and cpu can access the lmem objects
> > via mmap and i915 internal i915_gem_object_pin_map() for
> > i915 own usages. Both of these methods has pre-requisite
> > requirement to keep GFX PCI endpoint in D0 for a supported
> > iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
> > 
> > Both DG1/DG2 have a hardware bug that violates the PCIe specs
> > and support the iomem read write transaction over PCIe bus despite
> > endpoint is D3 state.
> > Due to above H/W bug, we had never observed any issue with i915 runtime
> > PM versus lmem access.
> > But this issue becomes visible when PCIe gfx endpoint's upstream
> > bridge enters to D3, at this point any lmem read/write access will be
> > returned as unsupported request. But again this issue is not observed
> > on every platform because it has been observed on few host machines
> > DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
> > which really disables the PCIe  power savings and leaves the bridge
> > at D0 state.
> > 
> > Till we fix all issues related to runtime PM, we need
> > to keep autosupend control to 'on' on all discrete platforms with lmem.
> > 
> > Fixes: 527bab0473f2 ("drm/i915/rpm: Enable runtime pm autosuspend by default")
> > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 6ed5786bcd29..410a5cb58a61 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> >                 pm_runtime_use_autosuspend(kdev);
> >         }
> >  
> > -       /* Enable by default */
> > -       pm_runtime_allow(kdev);
> > +       /*
> > +        *  FIXME: Temp hammer to keep autosupend disable on lmem supported platforms.
> > +        *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
> > +        *  function will be unsupported in case PCIe endpoint function is in D3.
> > +        *  Let's keep i915 autosuspend control 'on' till we fix all known issue
> > +        *  with lmem access in D3.
> > +        */
> > +       if (!HAS_LMEM(i915))
> > +               pm_runtime_allow(kdev);
> >  
> >         /*
> >          * The core calls the driver load handler with an RPM reference held.
> > -- 
> > 2.25.1
> > 
