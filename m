Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AC677CDA6
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 15:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B6510E251;
	Tue, 15 Aug 2023 13:58:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2852B10E251
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 13:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692107924; x=1723643924;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NGP83Jbgo/fH25n4jOkPtuiBlH6zX5bkll3zWyLQTw0=;
 b=KKm0MVxt7FHC2TPv4bqYVPvsCb0higtHJ4z315ewKASvr7h42aVu8C6b
 l6IdcrpV9ltxcpQ+1uaejTj+kcIB685dujfoqiIuW78PPZIN66S83kXTh
 nloO7Mgm+JyKiibXH/UiCAw9Po1sokYqyIIOcYp0RSfVj2H9LVTSVjOgG
 yizNZc+0uaXy1dWMI7Dceqqs8rRcXSaa/2o5ZcNhPm163BemKIOM8oL4R
 RNhOts+fz3aU7bKq5KCwuboOt6PEHWtR4jfCwSEJPAaT9CLvy6KVfhqHP
 KZd9bRhTYbb0wK+3MqmFXyHuVOFxCpUDdTXmSeFQERD84+yvGvLd001kB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436172896"
X-IronPort-AV: E=Sophos;i="6.01,174,1684825200"; d="scan'208";a="436172896"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 06:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="877339079"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2023 06:58:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 06:58:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 06:58:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 06:58:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Izos7oYDR5wCcdo2OUvsWJaGlABCSLI/9ngjSayySoQwN4rl5g0Zi9UFEmYDuYyass+7DSlLnRNaPyZxqu3GxXcfmkGm2yCMgAswlC8cNBGuKconFWgtlGfzQ7gC9TjQShTjI0GymTdaBwko+DoA3YL2V2MI2FB45Nn7LBXIVIFdmypeV9vNCjd/6T6GdKrlKeA2mavFQgbrtq2SWILJ0dPY2heLyi+JOs3EHxnMpcAegywqY3XdFR+FbhxPUYTMugmtMaiSUP23eeYGSf6LELMb5PyuNm2K5txLQt85xRcowhfEp/DJ1vkUFeW5eT7bORTVHyJE7ERitl+2zEjyXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YVBae4EjdVTNeCxVYuvETgwuAtAcO2/ok7r/bur+Z5c=;
 b=j177JVdSW8xs0dTjcU3ILaoo24qCovA95HiicdW4LsNqduegcD89s0S3ML7UhRld0AeCHfhttb8xiNg9sv2gdgcgFRaSA3FYmyTZlvHcBK0sg5rFe4v9wgL/xZ4ygqaAG5Z6Q/xCeKqNaqpNuCgBdptrNv/IPkiW22ALeZWH4AivinyWlAChVhshna8nBUQE0CHRahGI2xZuALjvyr5vQgmJUe84NH8gWf03W9jBSUfacoVDFpe1rYMDXQTLqkrIfDrl26BSExiliLXnJz8dGf0sfMCdK+MtIPvP9d+c4v+CP98WRNlDuzznd0dpJNiFSTNGXow9att1rhYrKU/hxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM6PR11MB4724.namprd11.prod.outlook.com (2603:10b6:5:2ad::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Tue, 15 Aug
 2023 13:58:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6678.022; Tue, 15 Aug 2023
 13:58:33 +0000
Date: Tue, 15 Aug 2023 09:58:21 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <ZNuEfWxPh5psQ1zi@intel.com>
References: <20230814110418.1557979-1-anshuman.gupta@intel.com>
 <ZNpQS0kVEslsVNg2@intel.com>
 <CY5PR11MB62111994966D89A3623DACC29514A@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CY5PR11MB62111994966D89A3623DACC29514A@CY5PR11MB6211.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR05CA0086.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM6PR11MB4724:EE_
X-MS-Office365-Filtering-Correlation-Id: 37ec6814-0d26-4f9e-9428-08db9d97b3eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iKGpO/SjmOJy4usWnFGykygty7gf1AF1Z1aJUkyP0I4V+cN4w5KQ8SZjz3XqVtXzOSkq3Ska+cBheCxY0ZCklToHYsI3EyIficyWCHnhwcLIU1eQRoGygeSDmPKm7Y3mUv8PJDNwE/H6Jz+KOSthKr/yrlUp9fMxNb65E1oOd7ZVmEfb2wD9P/9Ybi7EG3A49pzAa4IwuX5xqqD+4bfsM3XsLPOJC9+roYIBh1DKgFidRN/YMsYeUNV+B9olJxfXErxYI3V8rgxbcTfStMVUYfeXQM71mh3V7d5Un+aKNIjhtNR6CnhXCtDgA1W+jZx3QJke2+zm/zhj5Tjj7fDMnR5tIeAdDtNg53dfkqbi9Y793+NBPRzZ5NSeDmS0CS8NglhgXYpMkXoYC+qpDoER//0fS1jR8GnshlY/pC7A58bpz3RRwk6QjdKAmJ6Xj0OdWOvMs1PJX+K1kDUfkPrCrjgPx0BVHoAReEpkCV1/iB+jYWKS4bIckYR7rPLde3VProCQaDQYn2m6OPTSNjrR1P/8+IFdJTqOMkHNcOf49yRMwz9QlDY5KCnVK9wnYgiie8302UwfBCHv28cuyqIa62r7HRhPf0t4U6XxqdYbEWXbeJFTP4A5pEzKlUHf6vx/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(396003)(346002)(366004)(136003)(451199024)(1800799009)(186009)(6636002)(37006003)(86362001)(2906002)(36756003)(66556008)(66946007)(66476007)(4326008)(6862004)(6486002)(2616005)(53546011)(6512007)(966005)(316002)(107886003)(8676002)(6506007)(478600001)(26005)(83380400001)(82960400001)(5660300002)(38100700002)(44832011)(54906003)(41300700001)(8936002)(6666004)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BovVlZ/V4czyWElrPKrU1cdzYhmpCTkKZSasS2ffQHE7QIBG8WxIFoEIuvBS?=
 =?us-ascii?Q?ZaAgSS7T8dLVN6R2Zd+y2M/MjU3fFUxCxyQf0uyWAgWGw2HSMvefYweQ7Q3y?=
 =?us-ascii?Q?eGOcETz//P6sPnW4xVbQ6QRJgkEFp/NAI/lTGbMLS6Qaxi0zb6Qu5MgXiIBK?=
 =?us-ascii?Q?S8UrbWDE5C8sbtUquRXbiz3PH3NBNFNdbJmRY2xBIuMJkrml7qSbDU1WQs7S?=
 =?us-ascii?Q?emqPNS11tXejpySyphFX0CJzubTCNzfrZ+75ulFs+K8DL9yQ4+hVUGnq2qtH?=
 =?us-ascii?Q?3MAFPDfq2X6nGEmN8Zabi0Xjb43EccGiY1saXIVuvyjvE+FjeDXhXmQ6P1fQ?=
 =?us-ascii?Q?q78SMckQSWtyyeiQPVMScnWWFWl79YRy1Y8/PF5pnPIhIxhgKlZyIMiHbS+A?=
 =?us-ascii?Q?VIixDuixZLC8H35xgY1osRPmoBrg2aZCJrdyUhZzK8STH4PCe2v+wniLSx+f?=
 =?us-ascii?Q?jKci1DC4AgOeh7hHGcNocqzcYU/viQK9qCG8eSfe6lKqiiJrvEV7UPvtVy4P?=
 =?us-ascii?Q?VVf2nfMhuL01HFG+68f02boEeZNBmam9Q7rGwP5gK7Nxq3Q5kyZg1FRpL1kF?=
 =?us-ascii?Q?A4NqC5+mJuycRkmwpKk9N6SbGIjJkBVYan0A5Wf4iFTo9BWCohuS35CM4vaJ?=
 =?us-ascii?Q?GwRK7hYDPca7xCxJK4YBxYZ1Sic9P6K5nTXum/frnCmpCx56iSWF9KMXGNbN?=
 =?us-ascii?Q?PpWl6d0b/Zq1KSlixaE8i8elw852+K8YzgcZV8Cy9j7py6PcLyKAP9rgvtAa?=
 =?us-ascii?Q?IqVX0H4Al2tp4n8qLW4jSJXmeklQHTLk/DN7QAZjq61Qt3fpLYOfDQC/pceu?=
 =?us-ascii?Q?QhJgKxbxwVBMR8rCzs5ZbVbKc2tqSgKhwHiwSMuuJq/Q9uvy+mrWq/rDCTLk?=
 =?us-ascii?Q?2m0BXqpFWKNtZKq1nS1wZPvLbzLC2mBNpx5fbJnQYuuF7cO58vSNHklOOWTF?=
 =?us-ascii?Q?UWIZk46Y4oZ0JmoYwO9VvFY6GfW2CDfgGkLky2hfVvULMNwWoTQj69WJ4HhB?=
 =?us-ascii?Q?jO1DuKqATY6FWV9KlL3NELsNRQhAg6G/6p2d4esZzfDHHJctrdTq9kQWNSiW?=
 =?us-ascii?Q?B6ZqfUeHweQa8L3S/rzGS0DlMqeBmDdsekGMHgH7uherJ9JVdmRTtdbacx+X?=
 =?us-ascii?Q?+3SrUjDRsf8HFF1uEnXMcCHY8zgJIcLABn7r/hDlX06po97M2XFl/o+CzzVP?=
 =?us-ascii?Q?GGYvZO0C14qsSLwtAGJLr3x1ssQDZMx7ahIuPOd1+OLqiVS3Ajz5B3Shzuie?=
 =?us-ascii?Q?Y08dJtsQIxn7DtquDWC3EWUb7/45If283kxBaUEID2BzTR+Me3lJFs5ZyhYy?=
 =?us-ascii?Q?iktvetD+Avxdurytx/9SUbIhGYO+nankQ+dglK1o4fJrF8Kqr6FRJhZLkXkF?=
 =?us-ascii?Q?tnEJClr+n2SvTR9FTsHtPHw+GtXunOA7y2CgQPNocwsH9sVKGczmdc0gyctj?=
 =?us-ascii?Q?CUVZnzl1j6jOIiixIvkHnASv+/AIByGuZV6Cr4q8GQUh64VAlrl1E+ElXKob?=
 =?us-ascii?Q?HczLh+hof3ivulZJhEomZ6lD3Pmi6Qjc2NwXHo8xqVK5jTvrWg8rlcBSwTY2?=
 =?us-ascii?Q?dScL+3HSk+33NFblLd4PHjh1jJ8CjittKHkN6II2WMvjcX82tG+3Lb3Piq5R?=
 =?us-ascii?Q?Jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37ec6814-0d26-4f9e-9428-08db9d97b3eb
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2023 13:58:32.9534 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HdKjj4CjhW8PfTKNYUZS4jef8BPWd8qDm2rZfPinY19wpCDIX+7Vnznd2hpORwOPPkg1H28RUhkAGm0MRyyoFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4724
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wang,
 Lidong" <lidong.wang@intel.com>, "Yu, Jianshui" <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 15, 2023 at 03:29:12AM -0400, Gupta, Anshuman wrote:
> 
> 
> > -----Original Message-----
> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> > Sent: Monday, August 14, 2023 9:33 PM
> > To: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Nilawar, Badal
> > <badal.nilawar@intel.com>; Tauro, Riana <riana.tauro@intel.com>
> > Subject: Re: [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
> > 
> > On Mon, Aug 14, 2023 at 04:34:18PM +0530, Anshuman Gupta wrote:
> > > System wide suspend already has support for lmem save/restore during
> > > suspend therefore enabling d3cold for s2idle and keepng it disable for
> > > runtime PM.(Refer below commit for d3cold runtime PM disable
> > > justification) 'commit 66eb93e71a7a ("drm/i915/dgfx: Keep PCI
> > > autosuspend control 'on' by default on all dGPU")'
> > >
> > > It will reduce the DG2 Card power consumption to ~0 Watt for s2idle
> > > power KPI.
> > >
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8755
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Hi Rodrigo,
> Thanks for review, will this be good candidate for Linux stable tree ?

Yes, I think so.

do we have a good commit to mark for 'Fixes:'?

but we can add the cc: stable even without the Fixes already in
advance anyway.

otherwise we need to wait for this to land in Linus tree and then
send directly again to the stable mailing list.

> Thanks,
> Anshuman Gupta.
> > 
> > > ---
> > >  drivers/gpu/drm/i915/i915_driver.c | 33
> > > ++++++++++++++++--------------
> > >  1 file changed, 18 insertions(+), 15 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > > b/drivers/gpu/drm/i915/i915_driver.c
> > > index b870c0df081a..ec4d26b3c17c 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -443,7 +443,6 @@ static int i915_pcode_init(struct drm_i915_private
> > > *i915)  static int i915_driver_hw_probe(struct drm_i915_private
> > > *dev_priv)  {
> > >  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> > > -	struct pci_dev *root_pdev;
> > >  	int ret;
> > >
> > >  	if (i915_inject_probe_failure(dev_priv))
> > > @@ -557,15 +556,6 @@ static int i915_driver_hw_probe(struct
> > > drm_i915_private *dev_priv)
> > >
> > >  	intel_bw_init_hw(dev_priv);
> > >
> > > -	/*
> > > -	 * FIXME: Temporary hammer to avoid freezing the machine on our
> > DGFX
> > > -	 * This should be totally removed when we handle the pci states
> > properly
> > > -	 * on runtime PM and on s2idle cases.
> > > -	 */
> > > -	root_pdev = pcie_find_root_port(pdev);
> > > -	if (root_pdev)
> > > -		pci_d3cold_disable(root_pdev);
> > > -
> > >  	return 0;
> > >
> > >  err_opregion:
> > > @@ -591,7 +581,6 @@ static int i915_driver_hw_probe(struct
> > > drm_i915_private *dev_priv)  static void i915_driver_hw_remove(struct
> > > drm_i915_private *dev_priv)  {
> > >  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> > > -	struct pci_dev *root_pdev;
> > >
> > >  	i915_perf_fini(dev_priv);
> > >
> > > @@ -599,10 +588,6 @@ static void i915_driver_hw_remove(struct
> > > drm_i915_private *dev_priv)
> > >
> > >  	if (pdev->msi_enabled)
> > >  		pci_disable_msi(pdev);
> > > -
> > > -	root_pdev = pcie_find_root_port(pdev);
> > > -	if (root_pdev)
> > > -		pci_d3cold_enable(root_pdev);
> > >  }
> > >
> > >  /**
> > > @@ -1519,6 +1504,8 @@ static int intel_runtime_suspend(struct device
> > > *kdev)  {
> > >  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
> > >  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> > > +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> > > +	struct pci_dev *root_pdev;
> > >  	struct intel_gt *gt;
> > >  	int ret, i;
> > >
> > > @@ -1570,6 +1557,15 @@ static int intel_runtime_suspend(struct device
> > *kdev)
> > >  		drm_err(&dev_priv->drm,
> > >  			"Unclaimed access detected prior to suspending\n");
> > >
> > > +	/*
> > > +	 * FIXME: Temporary hammer to avoid freezing the machine on our
> > DGFX
> > > +	 * This should be totally removed when we handle the pci states
> > properly
> > > +	 * on runtime PM.
> > > +	 */
> > > +	root_pdev = pcie_find_root_port(pdev);
> > > +	if (root_pdev)
> > > +		pci_d3cold_disable(root_pdev);
> > > +
> > >  	rpm->suspended = true;
> > >
> > >  	/*
> > > @@ -1608,6 +1604,8 @@ static int intel_runtime_resume(struct device
> > > *kdev)  {
> > >  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
> > >  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> > > +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> > > +	struct pci_dev *root_pdev;
> > >  	struct intel_gt *gt;
> > >  	int ret, i;
> > >
> > > @@ -1621,6 +1619,11 @@ static int intel_runtime_resume(struct device
> > > *kdev)
> > >
> > >  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > >  	rpm->suspended = false;
> > > +
> > > +	root_pdev = pcie_find_root_port(pdev);
> > > +	if (root_pdev)
> > > +		pci_d3cold_enable(root_pdev);
> > > +
> > >  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
> > >  		drm_dbg(&dev_priv->drm,
> > >  			"Unclaimed access during suspend, bios?\n");
> > > --
> > > 2.25.1
> > >
