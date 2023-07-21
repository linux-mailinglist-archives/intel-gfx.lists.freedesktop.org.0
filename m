Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2726D75D333
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 21:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A9210E6F2;
	Fri, 21 Jul 2023 19:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A71010E6F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 19:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689966484; x=1721502484;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xSAvOZz9ZSdXdk0itkcmeBSwOfKHdAvsg1kp21z0hTU=;
 b=YMnG/uB/ctL42cqL0ZvP8/TRSnh+qsJKzLqsN8ubJnFdQkELDCWYJTiP
 LEPFMVnY3UP1+/HpJt9d0JNINCYTI0YKA8f7tszd09OXo4GsRHrHjdWv2
 X+mFfG1KZBm+5/Imo85JMf02gZVJGf2oOyypHf2Y/RHLpd/RJXxNGjZaY
 4OrlebJ9nXlLyV/Bxs7rsDsaBPbP9o7xawZl4QBSOaG3mgoqgfwYyWZin
 XjdCMYsC4/4HcS0TUxrYfc98FLZCiu2qeOcD/uLeMsGid6ZFfK98Zp/eF
 U182wI7nGxO5OrazEuRr3OZGu1+nZfXNnNx/jy+9nd1bu1yEWQcsN49Sx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10778"; a="367131953"
X-IronPort-AV: E=Sophos;i="6.01,222,1684825200"; d="scan'208";a="367131953"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 12:08:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868332994"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2023 12:08:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 12:08:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 12:08:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 12:08:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ax9jsSYHU4JdockH0fPIo0MGD7m6v/SudWNrh5ab1dGCFiQPjRuGal3s2BShAIhOJS4JBBLQijuFSgC3cbel+DqYgLAQiZmGfuXlyRGJusSBriWr507DqQlRkC6MjwGvshKF6AVCLaTo7Qtyu7E3dJXVHEnAfYMoylAqi9VZUM3B/LDTfTKSr3RD3KsjbWi3awd5Tve60Jls4n59w7p4Xb5vcRiCLht4/MscVR7c3cGSkjmJdrjQPxYv/s91tLP90iruAducX9pPNjPa4qZPqVs9tWo2XfcpLEMErX29G7T/sFlXFHhIN/zGXaAzPHaDyPg0HygR7uax7OLmTCLO2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2v7dBWnbdFQ0l2pClYGWVOe7B7zD3KTTVrxhKerOlXA=;
 b=MdNI7rW/OJq9r3H0tgcsHKuaNj163oCcW1sfpDHDZO2qR6CQsbLOhBWnnGGaYQ3HfwUySYGDd4cF9QQaj/Hz6Gy5BRxp2izFXbgawnVD2m9ZgE4zN6P3lEQl/jXvTz64s2MAFI6VxkQT0OuqD7vzoGMcNvSfzeUYnbUyhvySsZ9gj+9ZeH2VjIa8zVuvtFaaFNdoXtlNVcJ9ARVCWCnmXjhYpGcAIt08bKLqeC/ntHjAR+Jm+awgQ2Xm/vjZmrJ+pWY2FqDwtqQfU5bDlalEKFO4KEL+6cfEUSS8gdpiHOVc/MzLxYS5qY/qJA8xhiv1IPns3IhOAQvNKBcM6qZzvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5937.namprd11.prod.outlook.com (2603:10b6:a03:42c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Fri, 21 Jul
 2023 19:07:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6609.024; Fri, 21 Jul 2023
 19:07:58 +0000
Date: Fri, 21 Jul 2023 15:07:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <ZLrXijG1FGqSK0Rb@intel.com>
References: <20230720210353.214385-1-rodrigo.vivi@intel.com>
 <20230720210353.214385-3-rodrigo.vivi@intel.com>
 <CY5PR11MB6211CE473D808409CC5A1196953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB6211CE473D808409CC5A1196953FA@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: SJ0PR05CA0097.namprd05.prod.outlook.com
 (2603:10b6:a03:334::12) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB5937:EE_
X-MS-Office365-Filtering-Correlation-Id: 790b0faa-19c6-4ccc-c664-08db8a1dcba0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nkloH3UCY2WLsdYKnhdXcu26opdMAWcbJPb3S9vIwVdJiU+n1GZgkASbUVWqZBr40huSvqXUNY7NecQa3mo8qhSrQPOVtX4NtRyyNdpJIPGIeOTKKJQ9Vt7WXGW/0tWTVQ83r3aJMPT0BIRY82y5so2vjJ8v3+CrfiIrnbJnYuYXdXvAi1iKqYUujnw+lF9I6cuN+1Nf9bMZX2GRXO7mGf1Nug30xNbF0yWI8FQKRUTSMbMzIRANDOiDzD9X18iXKJHoS1BsFhVQ4kUGlvrPSkRgkNrNvJ/j9pN3xT0yZrVrxDtDiDOpGa2AQ/NiljNJu0YBA4r7XTg7Q69uwHhEPyO3L8+A3Z9vJSQtmj9fkLv5wOBKWms0Jrhhhmu8ifH8T4bile+ARZ4virmscUHJwxNZTCa3MZuZ2YuFLN8+2PVYtHGtaQOvutNObrxQzA5ABvjiT5tRd440d7pYB711Cw2L0K9JpOMPaMa8/++ltMP+a8iCmJ97BPf/RwYRyDML2lsE/2JnV1ieKPOvLu0JcxkEhyDViMVOuQrLiwkuNLCjVSd6k5IvWYWCnti8UNsfvvKJoI3U1vRX6PifrhHbKpsaoyetepaeBCoiWXUHbho=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(376002)(39860400002)(346002)(451199021)(478600001)(37006003)(966005)(6512007)(6666004)(6486002)(83380400001)(86362001)(6862004)(66476007)(66946007)(316002)(66556008)(53546011)(2906002)(4326008)(2616005)(186003)(6506007)(26005)(82960400001)(38100700002)(36756003)(44832011)(6636002)(8936002)(8676002)(5660300002)(41300700001)(32563001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/UY06Dvmmv4Ho1UVq42BFk1vwRpJhC3sw7ZGbVB//6jvxmHlOLwOb0JBShdh?=
 =?us-ascii?Q?lQXr/iJwf0py/Ebd2XmC18PebLGrtjcrseyCU6sJ2XpWZL6IK8FtRxASginB?=
 =?us-ascii?Q?9bfUuqAfYb9Zyec5BsmzrxBqKGmAZCegk8d6VX+Vsfo8D5FAvqprrccty1yf?=
 =?us-ascii?Q?4A74R2XIqZ8b24jJQ9mWjf3JKtVU53JqxgEmLX6q2Iq3wvpO/zA4mnrh+kFa?=
 =?us-ascii?Q?2QOMghE4S/mlg32L48mbIuJSIsTcd/ZtxBaY2q98um8Ql48v1JbNSiv3mEH7?=
 =?us-ascii?Q?tnKPmr1OFSBhLlZDb0miM3yVY2viRi0fueE82PwAGSWMGMHS8nygYt6KLqQl?=
 =?us-ascii?Q?KL+GlCpflCVMZg7NJXMol/V6daUCHJ10atQS/WwPuVYQFirvTR6nt4Bja9yy?=
 =?us-ascii?Q?69FIqUe/axKZ/I8nvx7Ep3TzT8vW9bkvfDCD3T2TGs2nFZUnlf5sfo1SXMnb?=
 =?us-ascii?Q?cqZr4BHlO6mbkkf2eNRXMdcVNqCvZ3yGeWLg9ouU6PupGbOkH+iQfyCtN4Xp?=
 =?us-ascii?Q?PPwOEZKl8NZC12JvVKPba8iZ/5ket5VkdpQh/dwLArxW4gLX8q036mkH5eyN?=
 =?us-ascii?Q?d00a4Vqg3tAihgyfscNsCxcKptFPcBMpmmJQ/n551kKPanqkBn0NafYOaxtw?=
 =?us-ascii?Q?kB9SOItup8QBsYnH+Z2MFr8XkfANTNM3EBsCQa3Wccm8Cp7A9NttUlumfCBX?=
 =?us-ascii?Q?A6GokoV2R9phLUX+tIm/feumy3KHMIEXSfG2YxmkWkfjrkCHIMPrAXND5Bsb?=
 =?us-ascii?Q?pgZslVGi+/7oi/TLASTPAna7v5dG2ETFEfWTqCKP9vI3zG77lJeWoo7fCfp+?=
 =?us-ascii?Q?txdsYD3NOmuzGfmGW2r4drOa5odxM5+FaQGwhyO7b97FBHry0DgdFMcNHXdo?=
 =?us-ascii?Q?PY+/Jqs7ltnHYQ6vKjb4S+qGEEZ+Z+vb70FHYGC+7SmIaZKIJCFmQEFQmASu?=
 =?us-ascii?Q?QR5qUei0GUC+9Y++rodnkAkm5TMlpXmRIHUD/iWfNgBftiEf8Hno2jVhvs7P?=
 =?us-ascii?Q?Ni9tZS27pefaZo/PoNCMdL0IX6YqtxMAnE+myxNV6Zcti8MoA0DuidlFf7oG?=
 =?us-ascii?Q?Zh+ZSqFATRuh4AC3byHyNXGW/XyRWbN4xOtIxH9BmPFrsIC20dydtSZxdVJp?=
 =?us-ascii?Q?EgSn/hkdkWwyoxC8XGbLBomdSN8r07hRXr6aGP1Igz5dUZ2MLqd+L/IL1i5s?=
 =?us-ascii?Q?x03PD3E+OGUxcX3Wi3sIFIZy+cJRUjMJkOVk/pKL5kVUFeH7aO95yb2xrSR/?=
 =?us-ascii?Q?e0669q3OlRaBK/jIFt+srYDyETTB7PNsMw9MgfR46Uw53+kI+lSlh+sD0QhK?=
 =?us-ascii?Q?jHSpQRn+tkOQV9cRArRsLI4xfeXHSdPNpbKSWQ/ONSvB0wcdJeDIB76WaiPz?=
 =?us-ascii?Q?tjhwHQHyy7SgNEdhFiS29Fli80nFxT2At6FRjgn1MisGQpAFhFcVtkU8li6/?=
 =?us-ascii?Q?eKXm7nvY4DnYpoXOsxkC29MugbalVjXO2Zidb4e8bc5c5g5VHu9BEYV6vWRW?=
 =?us-ascii?Q?dV7mDOKIy0wIK345vGNc86L/9a/rQhiaKzmkiwTqjkXNEbbZXrE3YS+F627o?=
 =?us-ascii?Q?dq3/8baqzM598YGS6s6vy3IhJcB0TXA5juJ8/pLXIJL4ZvDtStTzBdXeVA0F?=
 =?us-ascii?Q?Hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 790b0faa-19c6-4ccc-c664-08db8a1dcba0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2023 19:07:58.0519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nErnw33XrcKOirGHGLUDf/jlqHOQNXGJSD5Xm4BoRK/PX8XaJWRGJ3RTijXwZRtiy89djf2QK0vxCLcA2zAr0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5937
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/xe: Fix the runtime_idle call and
 d3cold.allowed decision.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 21, 2023 at 02:00:52AM -0400, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Friday, July 21, 2023 2:34 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>
> > Subject: [PATCH 3/4] drm/xe: Fix the runtime_idle call and d3cold.allowed
> > decision.
> > 
> > According to Documentation/power/runtime_pm.txt:
> I tried to fix runtime idle https://patchwork.freedesktop.org/patch/543024/?series=119467&rev=1 
> But forgot to CC to you.

I'm really sorry for having missed that.

2 comments on your version:

1. it forgets to remove the autosuspend from the init,
so on the very first entry at driver load it may miss the idle call.

2. I don't like the way other drivers are doing with idle. The rpm infra
expects 0 return to then call the suspend. I really don't understand
because I few drivers decided to workaround that and return 1 and call
the autosuspend themselves from within the idle.

> Anyway some comment below,
> 
> > 
> > int pm_runtime_put(struct device *dev);
> >     - decrement the device's usage counter; if the result is 0 then run
> >       pm_request_idle(dev) and return its result
> > 
> > int pm_runtime_put_autosuspend(struct device *dev);
> >     - decrement the device's usage counter; if the result is 0 then run
> >       pm_request_autosuspend(dev) and return its result
> > 
> > We need to ensure that the idle function is called before suspending so we
> > take the right d3cold.allowed decision and respect the values set on
> > vram_d3cold_threshold sysfs. So we need pm_runtime_put() instead of
> > pm_runtime_put_autosuspend().
> > 
> > Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_pm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
> > index a6459df2599e..73bcb76c2d42 100644
> > --- a/drivers/gpu/drm/xe/xe_pm.c
> > +++ b/drivers/gpu/drm/xe/xe_pm.c
> > @@ -144,7 +144,7 @@ static void xe_pm_runtime_init(struct xe_device *xe)
> >  	pm_runtime_set_active(dev);
> >  	pm_runtime_allow(dev);
> >  	pm_runtime_mark_last_busy(dev);
> I have not thought of using last_busy() here in _put().
> If we mark last_busy during _put then pm core auto-suspend timer will start ticking from _put().
> Theoretically  that can lead to idle() and runtime_suspend() call to race with each other ? [1]

that shouldn't happen if you are using the rpm as designed and returning 0
from idle instead of 1 and autosuspend.

> [1] Documentation/power/runtime_pm.txt
> (1) The callbacks are mutually exclusive (e.g. it is forbidden to execute
>     ->runtime_suspend() in parallel with ->runtime_resume() or with another
>     instance of ->runtime_suspend() for the same device) with the exception that
>     ->runtime_suspend() or ->runtime_resume() can be executed in parallel with
>     ->runtime_idle() (although ->runtime_idle() will not be started while any
>     of the other callbacks is being executed for the same device).
> Thanks,
> Anshuman Gupta.
> > -	pm_runtime_put_autosuspend(dev);
> > +	pm_runtime_put(dev);
> We need to fix this in intel_runtime_pm_put()  compat-i915-headers as well.

I can't see that... I see the compat headers calling the xe_ variants
so we should be covered from here.

what exactly am I missing?

> >  }
> > 
> >  void xe_pm_init(struct xe_device *xe)
> > @@ -273,7 +273,7 @@ int xe_pm_runtime_get(struct xe_device *xe)  int
> > xe_pm_runtime_put(struct xe_device *xe)  {
> >  	pm_runtime_mark_last_busy(xe->drm.dev);
> > -	return pm_runtime_put_autosuspend(xe->drm.dev);
> > +	return pm_runtime_put(xe->drm.dev);
> >  }
> > 
> >  int xe_pm_runtime_get_if_active(struct xe_device *xe)
> > --
> > 2.41.0
> 
