Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1257470DF90
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 16:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A97410E0B6;
	Tue, 23 May 2023 14:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07D310E0B6;
 Tue, 23 May 2023 14:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684853028; x=1716389028;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0y2hQ+uFcgy7HYz0WxI6xfqzO7c+Q4HAkAZa8MEluAw=;
 b=C+8R4W9IyVP3kYKnTcxcta6USbUtMCnIuqpu0PUzOHVjdmyb/RoNXc8j
 rT41eHf1iL4p4C4QSIeWwIMAsPWwoNhJN3gOiznjO6hBeTpIzFpGnh8ZX
 9VKdO14BIh5lkz4IsdEwoLUrScXCD3R7vOvYS1EYi50c5cSNIDWrAXB4O
 vGtuqkeWiW6o0NmR6/fBC8j7lqvaRD9gBxzjH4H1LszHDyLdUR9DecbpA
 WaM/WxlFK5U23J+wMoEpY8mA9oNpuUlGiDf40xO7BSlpF7OKOzJf3Yl5P
 53aiCgMAJRHEn1OBPyRiaVyQTeiSBUHEtovWAEQaH/DJH8pSJAqQqbWm2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="353283435"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="353283435"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 07:43:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="707048830"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="707048830"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 23 May 2023 07:43:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 07:43:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 23 May 2023 07:43:45 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 23 May 2023 07:43:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QKp0fAAPoBX/7c8327pezSxYsRjO26jZy+PFoh+uv9lhwkOEESOb+DI2EBPaXlsgnJcBN2w3EwVWPBs9ZLlp4TOX+SrlQlTuDp6QjkROUGf8eHsRMQQ+Yi9+8j0IjGY5yZ5a/WeMpksb3jNOSevDUiGPZz51H81Vt51ktysRnEYTiz6BVHCaqOQvxHzTTDQGrQBan494pTgNdbMEOdq+wzz4gsn8MZY+Jqrk9aI+9oPA51OFzCy/zTelpCfKydwYfTImJ8pU7ABNuRfRkZ7p0Oac8IBWhRdE0sGKzUsuxN93ulCkInb4LhmA3bc5BSw2Rm2dLx7TrBs7EdJxP+kWiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T61fHyxgTMwF9Zu6vIcJSlmWLdP3siGonITWwpNQK08=;
 b=aJfcefhDPdu1dkOjpMvnD+KSqGdv49Dny7UdDf3NIpzVl/1e89DQXK5vu20xrxcpxos73GDy8LqG3ZlfSOOvfh6E7oeyzbgpU1J4OsQZqLM5ixVM34rEu8hFJFU9qjJzn6RbeDE+fZHBFDoXLzRHF3xjtoGEBkGGrZEAXnCDkvQhFgyhmNQhBvr0CL4U7LW3wb3mQ0gSIFzML4fLyQ1cbW/XESOE20JZTFm2yIlQsBQA+gjML0NMkafPLtPR7ZIse7Bqn5CYMmcHmju24G5hBLJhY1LIfkebeVmV9GjJ98XQxoT6UykvJtAuqcUNwUxj6zfCTSkGJIjZgv6NqJtIVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL1PR11MB5352.namprd11.prod.outlook.com (2603:10b6:208:311::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.28; Tue, 23 May 2023 14:43:42 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 14:43:42 +0000
Date: Tue, 23 May 2023 07:43:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230523144338.GC6250@mdroper-desk1.amr.corp.intel.com>
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
 <20230522202314.3939499-6-matthew.d.roper@intel.com>
 <87cz2rkxop.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87cz2rkxop.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0211.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::6) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL1PR11MB5352:EE_
X-MS-Office365-Filtering-Correlation-Id: 326c9521-8020-4341-3939-08db5b9c1a54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g2IT4MkiQzOzkGCM6EkNC0hI7HFMaTFi5YRn6pWmxMwc0qIKVNy4jnaYPIZzjXSjx6YtEkqxkESFsjCfjotJV8RVRzKKGoZzpinj3/aH84YrUuc8tgltjs9WOhTXvb6CA7XrLoBbNQlda0w0NIACYc3bdjCfSr7XXUi0kjElEmjUu1mw0hVXGZC/Y7ISBMbrfGv0IZdjdcq0y8I048fP79jDorbYCqFMikLOCoU9IpleCjFFvH4CXwo7IfI68mPLzXU0FT3mCLiDiB/i6Z2582RLv0a0pvIeQO53s8nicPgoNtIHz8clcwcqMnhLlaystOFtT/vJ8usnzP4R6dnA+CcIQfI41PiqoZPthUYyy3frexZBpGteEWtgB6n03vckYkgOIEj+88byCwhalj/NWBdTAmcgG8h/azk4mZlCEEOgA5+9quUxQenSAVX0asgFLXUlPUmmHxEI3SNhe8+NzD87CtzA4TWvRdK21tzSzwmmoLYmkFVG70LV/brcF/vu4rDiHkiaRO+2xyT+YvW62YyXX7Z0YtAOTnlPjCkyagYOsWxolHHqWxKYAtBsitUZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(376002)(396003)(136003)(451199021)(82960400001)(186003)(33656002)(6506007)(1076003)(26005)(6512007)(38100700002)(83380400001)(2906002)(316002)(41300700001)(6486002)(6666004)(478600001)(86362001)(6916009)(4326008)(66946007)(66556008)(66476007)(8936002)(8676002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D/OLmjApdqpNsDC1X9SZuoDR3GlukF62b945l0/dXOWZWH+w/ptATU075sqC?=
 =?us-ascii?Q?rxDt6dawpltExsqQv+W/R1R+KbBa5NWBv0BkeMDgo5rBU/0nhfHDOJEIdxto?=
 =?us-ascii?Q?/pc4hNSrLXZ5uO/6Vv5/XA6VaNBy8H1ZGNRKgN2rpUFYpDsH/OKsHQy/SvnD?=
 =?us-ascii?Q?4DV9VjgOUTOLTejgCvIjH7Kz+LZBGtBs6M2wFg2PqbK3sr798V8S1SGktk5r?=
 =?us-ascii?Q?7NN+BDCqE1jyDZHxiZUJcHUwczDwD/WcUphwEwgyF3F8be3Vpr6pygmsN0wA?=
 =?us-ascii?Q?ofLcubyNv16OBZX6k7MQxfONENM3OmWiY7QgiSV1Z1l4Dru/oWcKpI04N3qs?=
 =?us-ascii?Q?6s7cLAni0Y5pxLQdnEyBu8GkWk0cMlISG4UtnTZaYvY0c4O/I9V0iG0aB3NA?=
 =?us-ascii?Q?VQ9R7q9lp9zA2jacCV76T3D/8Bh2Noo882d86CN/ss+yYWL2bC8VT9G735Sd?=
 =?us-ascii?Q?H5hWLy4j/zbYUIfwwGRtL2s4EwOF4phlCOzo5W52DbNdFeQRHC41Y2Q7Cntq?=
 =?us-ascii?Q?40U6mB90OP5NdUDgK3jOAehqNAVDKTagw2B+CqV8zjzUyBNDSD/SZeFS2dBa?=
 =?us-ascii?Q?qiGW4dIgB3sOmRBMX+Zj++DEE95VzLE0usrob8BWIHelX3R7egbJ9x5VnncN?=
 =?us-ascii?Q?ibJQ+sddyBEg+bOBG7n2lYyu8iXjysLFO2GhKNVmwKuHkfJ5an1M87vJjes8?=
 =?us-ascii?Q?eXAa9gcOxandLeaXZJHttxYQ/0r8DdVDaH3xMSKY3izYEIoB6WNe6hMBC0HB?=
 =?us-ascii?Q?SohxX2QSPP0PSe7AfsGqpx8m7TT+dGHqAergtMPcauB4z3cMNsY4t2+Gadhh?=
 =?us-ascii?Q?XV+xpDnk7+u8Fph6uzpE0hbhPeTB+KWGcoK3aQLph+h9Axso4WaEZKlQ7huw?=
 =?us-ascii?Q?qshkokSQeOiZh0K/FhoQDz545nS80Njg+8mdDAPaE1SrJigcRKJFBzKwPTuV?=
 =?us-ascii?Q?30WraloXkFMCDZ89U49FPDPmV+RUWNlHYguoK6HBQzychHO4ioKoHHOXJ393?=
 =?us-ascii?Q?3/ZLgRNSCmOhmyaF00VcMOAg+zoaRyjIKxULomqgb2K4+s8jbuI5Zvf4HPN4?=
 =?us-ascii?Q?A6Fz3AIUCNFc3AS8KAqgRlCKojEHLQ9kvCwLBf4VqZVB+ih5XcmROgwhMFqS?=
 =?us-ascii?Q?mhkPCdxXzDlU1sa2obVT/4haZAmXhAas8qMn4z5uSKp/0yMQfPu1HKWsJHTg?=
 =?us-ascii?Q?wWIJdBd42JQX2x/imM3HNJpRISHYSk/1ZS1D4dLl+ZNGjNjhqofpXDZcIgD5?=
 =?us-ascii?Q?pqYdFldHzAQT1rZLklEuvaJcZq0gZfXDaNsJt2StKBDj+vo5TAqU17f7t3pI?=
 =?us-ascii?Q?hTjtzvskCuRNXSkp+GaQkUjhYhOdO2IPkJzYaOUSJV/tU04q/pe1tCGVrD2y?=
 =?us-ascii?Q?C34ZYmEmOeDCjEIwpxLW/Vl2yOFuDy1hIA65EcQjRGh0MPmpVSLnLd+DH5Ub?=
 =?us-ascii?Q?rHxii1P7P+U3jfKrdmhbK2gqPfHjGI4AG771V0mXRRj9QvJWlLtrdA9v+L9L?=
 =?us-ascii?Q?nPMUpMMiu7utUn28y2yAQbEmoDskBG/s7/A4Xlh2g2lpBVQRfDXaoZtX65p/?=
 =?us-ascii?Q?WGh9KSlAUNjEBT9o/oFqx4uJc/PjjqJOnukx8/TD7k81VgGbDhzX6KF4pMy2?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 326c9521-8020-4341-3939-08db5b9c1a54
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2023 14:43:41.9962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gCznRoxvV+NK2UQ+G0egv7b4biwy7rHmWdVPeJZL2QKuuZrLuWU1wKp6y5ywxYVsHSCle4WdsjlPYzyjQmUJi3+SXYjOSo9IFbED17/CW9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 5/6] drm/i915/display: Handle
 GMD_ID identification in display code
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

On Tue, May 23, 2023 at 04:02:46PM +0300, Jani Nikula wrote:
> On Mon, 22 May 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> > For platforms with GMD_ID support (i.e., everything MTL and beyond),
> > identification of the display IP present should be based on the contents
> > of the GMD_ID register rather than a PCI devid match.
> >
> > Note that since GMD_ID readout requires access to the PCI BAR, a slight
> > change to the driver init sequence is needed --- pci_enable_device() is
> > now called before i915_driver_create().
> >
> > v2:
> >  - Fix use of uninitialized i915 pointer in error path if
> >    pci_enable_device() fails before the i915 device is created.  (lkp)
> >  - Use drm_device parameter to intel_display_device_probe.  This goes
> >    against i915 conventions, but since the primary goal here is to make
> >    it easy to call this function from other drivers (like Xe) and since
> >    we don't need anything from the i915 structure, this seems like an
> >    exception where drm_device is a more natural fit.
> >
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_device.c   | 64 +++++++++++++++++--
> >  .../drm/i915/display/intel_display_device.h   |  5 +-
> >  drivers/gpu/drm/i915/i915_driver.c            | 17 +++--
> >  drivers/gpu/drm/i915/intel_device_info.c      | 12 ++--
> >  4 files changed, 81 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > index 3c5941c8788d..6605487c3890 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > @@ -6,7 +6,10 @@
> >  #include <drm/i915_pciids.h>
> >  #include <drm/drm_color_mgmt.h>
> >  #include <linux/mod_devicetable.h>
> > +#include <linux/pci.h>
> >  
> > +#include "i915_drv.h"
> > +#include "i915_reg.h"
> >  #include "intel_display_device.h"
> >  #include "intel_display_power.h"
> >  #include "intel_display_reg_defs.h"
> > @@ -692,18 +695,69 @@ static const struct pci_device_id intel_display_ids[] = {
> >  	INTEL_RPLP_IDS(&xe_lpd_display),
> >  	INTEL_DG2_IDS(&xe_hpd_display),
> >  
> > -	/* FIXME: Replace this with a GMD_ID lookup */
> > -	INTEL_MTL_IDS(&xe_lpdp_display),
> > +	/*
> > +	 * Do not add any GMD_ID-based platforms to this list.  They will
> > +	 * be probed automatically based on the IP version reported by
> > +	 * the hardware.
> > +	 */
> >  };
> >  
> > +struct {
> > +	u16 ver;
> > +	u16 rel;
> > +	const struct intel_display_device_info *display;
> > +} gmdid_display_map[] = {
> > +	{ 14,  0, &xe_lpdp_display },
> > +};
> > +
> > +static const struct intel_display_device_info *
> > +probe_gmdid_display(struct drm_device *drm, u16 *ver, u16 *rel, u16 *step)
> 
> Please always prefer struct drm_i915_private * over struct drm_device *.
> 
> > +{
> > +	struct pci_dev *pdev = to_pci_dev(drm->dev);
> > +	void __iomem *addr;
> > +	u32 val;
> > +	int i;
> > +
> > +	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
> > +	if (!addr) {
> > +		drm_err(drm, "Cannot map MMIO BAR to read display GMD_ID\n");
> > +		return &no_display;
> > +	}
> > +
> > +	val = ioread32(addr);
> > +	pci_iounmap(pdev, addr);
> > +
> > +	if (val == 0)
> > +		/* Platform doesn't have display */
> > +		return &no_display;
> > +
> > +	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
> > +	*rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
> > +	*step = REG_FIELD_GET(GMD_ID_STEP, val);
> > +
> > +	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++)
> > +		if (*ver == gmdid_display_map[i].ver &&
> > +		    *rel == gmdid_display_map[i].rel)
> > +			return gmdid_display_map[i].display;
> > +
> > +	drm_err(drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
> > +		*ver, *rel);
> > +	return &no_display;
> > +}
> > +
> >  const struct intel_display_device_info *
> > -intel_display_device_probe(u16 pci_devid)
> > +intel_display_device_probe(struct drm_device *drm, bool has_gmdid,
> > +			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
> 
> Ditto.

I was a bit torn on this one.  Although we usually use drm_i915_private
in i915 code, in this case it seems like it adds a needless dependency
on i915 types and leads to more complications when calling this from
non-i915 code (like Xe).  What we really need here is just 'struct
pci_dev' to obtain the device ID and map the BAR, but drm_device
lets us also use the drm_err() calls.

But for now I can just put this back to drm_i915_private; we can revisit
this later once we have more driver restructuring to move away from
drm_i915_private in a more global manner.


Matt

> 
> >  {
> > +	struct pci_dev *pdev = to_pci_dev(drm->dev);
> >  	int i;
> >  
> > +	if (has_gmdid)
> > +		return probe_gmdid_display(drm, gmdid_ver, gmdid_rel, gmdid_step);
> > +
> >  	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
> > -		if (intel_display_ids[i].device == pci_devid)
> > -			return (struct intel_display_device_info *)intel_display_ids[i].driver_data;
> > +		if (intel_display_ids[i].device == pdev->device)
> > +			return (const struct intel_display_device_info *)intel_display_ids[i].driver_data;
> >  	}
> >  
> >  	return &no_display;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 1f7d08b3ad6b..2a14943313ad 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -80,7 +80,10 @@ struct intel_display_device_info {
> >  	} color;
> >  };
> >  
> > +struct drm_device;
> > +
> 
> Please keep forward declarations near the top of the file, right after
> includes.
> 
> >  const struct intel_display_device_info *
> > -intel_display_device_probe(u16 pci_devid);
> > +intel_display_device_probe(struct drm_device *drm, bool has_gmdid,
> > +			   u16 *ver, u16 *rel, u16 *step);
> >  
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 522733a89946..37532e55327d 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -754,13 +754,17 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	struct drm_i915_private *i915;
> >  	int ret;
> >  
> > -	i915 = i915_driver_create(pdev, ent);
> > -	if (IS_ERR(i915))
> > -		return PTR_ERR(i915);
> > -
> >  	ret = pci_enable_device(pdev);
> > -	if (ret)
> > -		goto out_fini;
> > +	if (ret) {
> > +		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
> > +		return ret;
> > +	}
> > +
> > +	i915 = i915_driver_create(pdev, ent);
> > +	if (IS_ERR(i915)) {
> > +		ret = PTR_ERR(i915);
> > +		goto out_pci_disable;
> > +	}
> >  
> >  	ret = i915_driver_early_probe(i915);
> >  	if (ret < 0)
> > @@ -843,7 +847,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	i915_driver_late_release(i915);
> >  out_pci_disable:
> >  	pci_disable_device(pdev);
> > -out_fini:
> >  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
> >  	return ret;
> >  }
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index e1507ae59f2d..85105639d55d 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -345,7 +345,6 @@ static void ip_ver_read(struct drm_i915_private *i915, u32 offset, struct intel_
> >  static void intel_ipver_early_init(struct drm_i915_private *i915)
> >  {
> >  	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
> > -	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
> >  
> >  	if (!HAS_GMD_ID(i915)) {
> >  		drm_WARN_ON(&i915->drm, RUNTIME_INFO(i915)->graphics.ip.ver > 12);
> > @@ -366,8 +365,6 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
> >  		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
> >  		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
> >  	}
> > -	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
> > -		    (struct intel_ip_version *)&display_runtime->ip);
> >  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
> >  		    &runtime->media.ip);
> >  }
> > @@ -574,6 +571,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
> >  {
> >  	struct intel_device_info *info;
> >  	struct intel_runtime_info *runtime;
> > +	u16 ver, rel, step;
> >  
> >  	/* Setup the write-once "constant" device info */
> >  	info = mkwrite_device_info(i915);
> > @@ -584,8 +582,14 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
> >  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
> >  
> >  	/* Probe display support */
> > -	info->display = intel_display_device_probe(device_id);
> > +	info->display = intel_display_device_probe(&i915->drm, info->has_gmd_id,
> > +						   &ver, &rel, &step);
> >  	*DISPLAY_RUNTIME_INFO(i915) = DISPLAY_INFO(i915)->__runtime_defaults;
> > +	if (info->has_gmd_id) {
> > +		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
> > +		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
> > +		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
> > +	}
> 
> The division of initialization responsibilities between here and
> intel_display_device_probe() is perhaps a bit odd?
> 
> Nothing that can't be fixed later though, I guess.
> 
> BR,
> Jani.
> 
> >  
> >  	runtime->device_id = device_id;
> >  }
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
