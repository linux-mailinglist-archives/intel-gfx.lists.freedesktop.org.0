Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5167780C35
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 14:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D89310E0AD;
	Fri, 18 Aug 2023 12:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A77410E0AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 12:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692363595; x=1723899595;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QZ5epV+gLiKTZKogXuzpTDNas6FJ+53Hrnll31Pi7bc=;
 b=Lyk9q7dLyod+0DaTUfs2kJyUqS56/JdvFoHEib3HD1kawSHVPpLF0lwW
 50PFLBBWXYAa/YrI25atCD0nwKbuWvBbToKa3HOszWoIUjRt0E5WoOVzS
 ufM/qBc7RIP9cC8u3zALez0P2cjlLIjtc8dEpQF4YtXp+YG7Mlibb8NrA
 MH7xheAFJd0XVVQnCRar3F972l9JdayhWtoikdCaa9VLNCFkJqui754bH
 dWCSCt/IqALj9WO4zZ13taVrk0huU3sOzkDCKMFm3RTteqlhWtRocTZuF
 miVeYobFKiXUD4HvVpdPr0kK1SxT/SWG7+jTIu6HhBXhSj7d/Z7uw+Epr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="404075478"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="404075478"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 05:59:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="800462816"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="800462816"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 18 Aug 2023 05:59:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 05:59:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 05:59:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 05:59:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 05:59:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gvmpcOMx16XBD3whxgJaJb3QifGOLduj//18KcbubDlqPEaL1HtdDLVXSiOp+gnf6wTmrGAFFtQfglNOQU1uCyMLu/ttX5F4GP5oEZ49jB2a3vsA012UBznktagxT6WDKk9hcJGkOOQ9d9573ZTf5s7ac8gUaP2yIeHfVlKfrRUpKl3YltyMrEfJ1pm3Bd/jjzs8FZtlC3GVTKPtNTyw5Tvq8a4p4ylRo7qFGzzid2l37ZCmD+u4C10+BgaWu8FtscGYyjyByVLher8stYX0y16Xa5oS9eYGtKW7XmlSELi2jEbAotU1Ntxn9GFEZEHYNZU9cYPQCth15MpWWMUw0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=22ygpN1utyJ80lUZbFkxrAgtx9Uz4Bt5bOI0gI9kxaQ=;
 b=KePfo/rCjfhXy+xu2JDEZwmTsNh3bLPPNOjZr1ObdDc5R7ArzpbpW8CIwhFA6et9/RpKPsYKUajJ+rxpQz11KpIf3eBb1HLfZWj0h14OHJeQCbTS3KdfhwtJBao3qitPiDVHrvM6KpUq8jzDu49WM35iiQIadSIfHw/AmswdjiaxJbUyUQJptlzbinDCpXoFibaIigEoxl6qoYgQw6UmBmDa2uCoXxq+M9mSr+kvhMUG3GQmpRWA5kWsmIaFzRi0IuzJPZKzdn5N+w4ewRd/v87tiPYc0p74v43SDq3duoPRxUryuzDFI23wCEAQ9VypngNTc8Z7UBlDM2fnqHlItA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 12:59:46 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6699.020; Fri, 18 Aug 2023
 12:59:46 +0000
Date: Fri, 18 Aug 2023 08:59:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
Message-ID: <ZN9rPQ0ij8mOXo3i@intel.com>
References: <20230818024558.10780-1-sujaritha.sundaresan@intel.com>
 <CY5PR11MB6211DF1509200AA47C77246F951BA@CY5PR11MB6211.namprd11.prod.outlook.com>
 <7b9ea8e7-9f9c-c12e-1844-71b828f91eb1@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7b9ea8e7-9f9c-c12e-1844-71b828f91eb1@intel.com>
X-ClientProxiedBy: BYAPR11CA0069.namprd11.prod.outlook.com
 (2603:10b6:a03:80::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN0PR11MB6279:EE_
X-MS-Office365-Filtering-Correlation-Id: 6353218d-ef1b-42f8-5a62-08db9feaff2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Id/jIRCBPBqOo4jdbmrcO0Ifoi/w+HxYbbD9tebBFoKRzrav+itP8zyVLxXgrT3wYDlOhhFm0lDv+Kq33Of0/BJsrRfinst5rIW8/qW8//Wqsn+5bUeRNiQCKsfyE+bbEAa+WplPM8q8ZJZbFnvSuIkudYbauRe43VSKxTw0IdMa4qKG8mkkAEnwAL/CM+U6hxtj1ui3QzKvafgehZV/w5o+4xXEobK8Q891pzZzt2nzQElK4WSJEFbrJjVneYbl/wlJRTyradiodFS5qMNVl2nkJtAAC/cUtDA4C4AbvG8O3MHedno9gkRDo3Dg+CLxoXEd0CvyuPr7krzXqxea6Gj1j7uPSJEnZ5ZWd9ae3J+9ygCW9NuhGjccsMBLyDHw/O1r8fhAtuS5GcyIHOxsKOYwLO0uYsPsT/PVr/5C7kJRM1vHjnFIaMkkgizcW8+JvHWGsIq5hJkt0JZhEOxDqOkhhJWBN1lulsVRzWCDwRDhOumYXQTwog604AgjgYls0kEGmcqON1886VsS+pVHHRwdS7v3ugd38ITgo5aM81u9IRdWXsGNgg93JHNQFxey
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199024)(1800799009)(186009)(86362001)(36756003)(82960400001)(38100700002)(107886003)(2616005)(5660300002)(44832011)(66556008)(478600001)(6506007)(66946007)(66476007)(37006003)(53546011)(6666004)(6486002)(54906003)(316002)(6636002)(26005)(6512007)(4326008)(8676002)(8936002)(41300700001)(6862004)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hgE0rYB05gjVMTFepEYiFn6CDvVmYiqxznZLRpGoglg4C0dPV3x/6epNmM/Q?=
 =?us-ascii?Q?yWFpOBKjTZlFKrCAbaJLa77K19gYcToewxqxeCyk3156vJNiTzMRj5oHa+GL?=
 =?us-ascii?Q?V4WdmXTd7zrR19XFMkdBIb0vFahJ0GO44n9Ix7iS4bIchfImCQ4m5MWh7l6J?=
 =?us-ascii?Q?3bQsN5/kTt5ywdqOFYhJTmbEvafYRC0Xmi21B2HJq6213XkljZqlk4Zq5LZK?=
 =?us-ascii?Q?5alqkqaGP0MBpiwwdG3MJDuFpeez2RrwZtE2sVwqqW1UVX0XDczrDV+8eLjT?=
 =?us-ascii?Q?hB+GNTj70hElv4FdxD+dNJ2vXw8ntxbtfTKMqPKmS+aU7dltT4oZaIIORZ6g?=
 =?us-ascii?Q?6uhjQz0i/hW/89ish0zJva9HlBlIPP6zEfS0mYjl3JM7IppReHfLQw2VCmvf?=
 =?us-ascii?Q?P0lpIm3+gWymuQugBpb6/EkpCPT/9RMuMqEfAP5W3E+s4wV0/ahMpHbNM5De?=
 =?us-ascii?Q?SkRzMYM5OUafqvN4lzXlhr4NCZ2t4GJGFl70P7ZdquFP5BOFqSo3mYX29RVg?=
 =?us-ascii?Q?sHkHcDhCmpdU94Aboe0bHUUREXnmnhX/b3ofg7IzCKR36ruQLKPmPiURfQ3v?=
 =?us-ascii?Q?sNl+PVL/CUGknXg8i/quvXE6liCYJXucrqJsqhQGcrO7GltG6iRulkVt9FD5?=
 =?us-ascii?Q?0hvSwr01QuVAXFvk+7D9u0piALt3PH3kjJ8yIdE3PQHz4+zf7SFU8JydYOix?=
 =?us-ascii?Q?qpOsLRgXrCcGVE0vZC0+54zaxOBZ3b2WfnL/EoF020iY/8m7TIIdZWZrzFIo?=
 =?us-ascii?Q?ZlFyC+7vcHXad3DDp3NelIi1yrQXHucqVmnlyigPcK3UzDJi0OMYGoMoxRqY?=
 =?us-ascii?Q?f/STa3YUXzK+xB54UjITeTgtQjuxeKnBnvWD4pZ2E53hi7RztafhmlwmG9eY?=
 =?us-ascii?Q?7+2Pr1yImi2LOILH2y9fz216PJ/GW2gQiY5baq+wh+jn6+SZY1UL4kX6Bgtw?=
 =?us-ascii?Q?cCuTNhdgSII7axBLC8VCLHA2egfwIrdl7ZAMHdyI5hcTbO7q1CNzfYTwcpGK?=
 =?us-ascii?Q?C0zH23lR4MTlNz5lSCR3ZzUqrHapX7y0ZVy3T6BQ4esqxcU3hy7b46NJNY1R?=
 =?us-ascii?Q?GHSjcJq1S4oOJPHsDZCV71BCThCDVw9rUm92BJselBo/MZ+7wUhlOa5JvC8Y?=
 =?us-ascii?Q?slNup1FSiqsuDz9jwRJwC+c7HUrGbvxnbaw6M6ChY1rzYMYh/SJp/jZw4ofN?=
 =?us-ascii?Q?0CBNc+D1e+Z/xpthau3QmU37uah59dBfMY+vMybPbd7lc3XWRxAxDWtO/Bhw?=
 =?us-ascii?Q?3zqZk0hMtmamu6nYkNU/pg0Ybq2+eGTjDrZo7YHTtCQsmCFYInJ26aUKDHOD?=
 =?us-ascii?Q?aZKVoKu5C9VwaFOfAdmuyAJy0kbXWSK8hh32rssrKXKp/ERpEfAG+jyOufJ4?=
 =?us-ascii?Q?OW0fDzE4ao9ACHbF0Yc/rFJFT1b/QiE0HBEvRjkJG26IictMuxIHfkGLnUQr?=
 =?us-ascii?Q?0Qq2cQTFxyTuFR+HzkiYonyWcn+5y0DbvNMr1y+MD2mUKxQghEaGFwTo5V6e?=
 =?us-ascii?Q?vRP8jq9dnbjAlO+q1lP9SVhgajEVkYVpZjd0TdZJ8k9cte3zBWR2g2nqiRng?=
 =?us-ascii?Q?S7pGOCnFGoVA8vLRlFeztmeeXWvM6aPeX+hppppl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6353218d-ef1b-42f8-5a62-08db9feaff2e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 12:59:46.2082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BRYbOoD5Kcw8azTORYM+SnCQCHGqjiLf0k0ncdURUzqCnp/moK0Qort4EYhotiFGTyCipXsivJpFksk3oMMNgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
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

On Fri, Aug 18, 2023 at 11:32:27AM +0530, Sundaresan, Sujaritha wrote:
> 
> On 8/18/2023 11:30 AM, Gupta, Anshuman wrote:
> > 
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > > Sujaritha Sundaresan
> > > Sent: Friday, August 18, 2023 8:16 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
> > > 
> > > Added intel_pcode_probe, promoted wait for lmem init and intel_pcode_init
> > > prior to mmio_probe during load, so that GT registers can be accessed only
> > > after this, else MCA is observed.
> > > 
> > > Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> > Both DG1 and DG2 crashed during i915_pci_probe.
> > BAT is failing.
> > Thanks,
> > Anshuman Gupta.
> 
> Hi Anshuman,
> 
> Yes I'm currently looking into it.
> 
> Thanks,
> 
> Suja
> 
> > > ---
> > >   drivers/gpu/drm/i915/i915_driver.c  | 37 ++++++++++++++++++++++++-----
> > > drivers/gpu/drm/i915/intel_uncore.c | 12 ----------
> > >   2 files changed, 31 insertions(+), 18 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > b/drivers/gpu/drm/i915/i915_driver.c
> > > index f8dbee7a5af7..92cafceaf447 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -93,6 +93,7 @@
> > >   #include "i915_memcpy.h"
> > >   #include "i915_perf.h"
> > >   #include "i915_query.h"
> > > +#include "i915_reg.h"
> > >   #include "i915_suspend.h"
> > >   #include "i915_switcheroo.h"
> > >   #include "i915_sysfs.h"
> > > @@ -436,6 +437,32 @@ static int i915_pcode_init(struct drm_i915_private
> > > *i915)
> > >   	return 0;
> > >   }
> > > 
> > > +static int intel_pcode_probe(struct drm_i915_private *i915) {
> > > +	struct intel_uncore *uncore;
> > > +	int ret;
> > > +
> > > +	/*
> > > +	 * The boot firmware initializes local memory and assesses its health.
> > > +	 * If memory training fails, the punit will have been instructed to
> > > +	 * keep the GT powered down; we won't be able to communicate
> > > with it
> > > +	 * and we should not continue with driver initialization.
> > > +	 */
> > > +	if (IS_DGFX(i915) &&
> > > +		!(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT))
> > > {
> > > +		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
> > > +		return -ENODEV;
> > > +	}
> > > +
> > > +	/*
> > > +	 * Driver handshakes with pcode via mailbox command to know that
> > > SoC
> > > +	 * initialization is complete before proceeding further
> > > +	 */
> > > +	ret = i915_pcode_init(i915);
> > > +
> > > +	return ret;
> > > +}
> > > +
> > >   /**
> > >    * i915_driver_hw_probe - setup state requiring device access
> > >    * @dev_priv: device private
> > > @@ -547,10 +574,6 @@ static int i915_driver_hw_probe(struct
> > > drm_i915_private *dev_priv)
> > > 
> > >   	intel_opregion_setup(dev_priv);
> > > 
> > > -	ret = i915_pcode_init(dev_priv);
> > > -	if (ret)
> > > -		goto err_opregion;
> > > -
> > >   	/*
> > >   	 * Fill the dram structure to get the system dram info. This will be
> > >   	 * used for memory latency calculation.
> > > @@ -561,8 +584,6 @@ static int i915_driver_hw_probe(struct
> > > drm_i915_private *dev_priv)
> > > 
> > >   	return 0;
> > > 
> > > -err_opregion:
> > > -	intel_opregion_cleanup(dev_priv);
> > >   err_msi:
> > >   	if (pdev->msi_enabled)
> > >   		pci_disable_msi(pdev);
> > > @@ -778,6 +799,10 @@ int i915_driver_probe(struct pci_dev *pdev, const
> > > struct pci_device_id *ent)
> > >   	if (ret < 0)
> > >   		goto out_runtime_pm_put;
> > > 
> > > +	ret = intel_pcode_probe(i915);
> > > +	if (ret)
> > > +		goto out_tiles_cleanup;
> > > +
> > >   	ret = i915_driver_mmio_probe(i915);

chicken-egg problem here?!

I don't believe this could ever work. You need the MMIO space to be able
to communicate with PCODE mailbox and check the lmem init, no?!

I believe the bug is that PCODE check should come before the LMEM_INIT
check.

LMEM won't be ready before pcode state that everything was ready for
the lmem access. And on your code pcode ready check is still after
the lmem.

Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>

who was recently raising that we had an order problem there.

> > >   	if (ret < 0)
> > >   		goto out_tiles_cleanup;
> > > diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> > > b/drivers/gpu/drm/i915/intel_uncore.c
> > > index dfefad5a5fec..4a353d4adf86 100644
> > > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > > @@ -2658,18 +2658,6 @@ int intel_uncore_init_mmio(struct intel_uncore
> > > *uncore)
> > >   	if (ret)
> > >   		return ret;
> > > 
> > > -	/*
> > > -	 * The boot firmware initializes local memory and assesses its health.
> > > -	 * If memory training fails, the punit will have been instructed to
> > > -	 * keep the GT powered down; we won't be able to communicate
> > > with it
> > > -	 * and we should not continue with driver initialization.
> > > -	 */
> > > -	if (IS_DGFX(i915) &&
> > > -	    !(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT)) {
> > > -		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
> > > -		return -ENODEV;
> > > -	}
> > > -
> > >   	if (GRAPHICS_VER(i915) > 5 && !intel_vgpu_active(i915))
> > >   		uncore->flags |= UNCORE_HAS_FORCEWAKE;
> > > 
> > > --
> > > 2.41.0
