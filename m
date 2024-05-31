Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FB68D6A32
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 21:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A019110E06B;
	Fri, 31 May 2024 19:57:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlbBcZVh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0650B10E06B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 19:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717185455; x=1748721455;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CxZo2YemdQCxR9uAEgHzVro4DY/vWzkQj4XQbcVuAzM=;
 b=mlbBcZVhynuMYJmWNkbVfgwCgXk87k1ddLRbtm3Wek2fxmfExc0DxGqR
 58oCHIlVJh5LxTM01otjK2OSSpouZKS5VEiK49FnKC3SnDlNeiAgKluCd
 x8EMa0H/uwggfOzBuktayVQze/9f9xDOJtJ04MITcD8LwteiA/+YguNFS
 vljyUzCnF3A3Ba7+eBThzsbCEtlsFcTPjQ9ZFHAovZGIqO8UJt4Cp87OM
 blWtYLUbAXsJrJMJtkWXwhVe4UcodaLjirK5fBvdMkL0A3ONevwsg9HZ8
 d2l1LEH+u4Eknu7CNTChOih1BuNNZV2z9FpjV8G5HYNUpsVvM4XRBvl+i g==;
X-CSE-ConnectionGUID: +bL7IDjLRUGfr7K3jLI4KA==
X-CSE-MsgGUID: wrfN61o7TVOfEqnPAWSKmg==
X-IronPort-AV: E=McAfee;i="6600,9927,11089"; a="24377253"
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="24377253"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 12:57:34 -0700
X-CSE-ConnectionGUID: 0/vQkhi2TEe15at5tadHuw==
X-CSE-MsgGUID: TgHXShP9Q46+4tNZMAHHbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="36879822"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 12:57:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 12:57:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 12:57:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 12:57:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 12:57:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D8zQpLX/8vY0IW73F5GRxvleIgBejqC+b4o6P8g5ZGxW8gy4Zf10duYoeMxSG6Cro6r56jQD1qXkPS6ovFRFP0H776/gjQtaOcd3WN1nzvAnqxc725yxG5qRERWORma/l8lc6WJ3J2WAr18+KAt8Q/Yz6rqnc0dm9yLkW3QU/u/XBbaM/p83xoJ7s8joc5wHmRU0xOakTk1Lz7M5P8Uh62FcQvMp725XbsVtvCc5+nNo98usyz0lXAwjolgTDCKFzRlWL56Ki356mWHeUZubZzMggcyy83xt0uNSI6uQrOXJEjT/4gYzVVVrNVn1N+OdEUU1iuY15NJCKOYqR43fxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J3HDKkiohOw1aiNVpmOZ/bwAHlf1V/qVRWjZ0x1osXU=;
 b=YSc2pRd0XjAjgt41UAc/Hkf3kgkKdK85eaZPdyS3L76+02daqMEEfG6r4pidAz8bWqpT0txKkci/FPYZsmFS6PVu8wKDiVyPK7bJqtVit3gJmzeQotJgm1wlPohPK9vUYkOzOhdNBXUlv65xwSLcPdS+lJqHdq+bazAGvO0bh31/cXBObNqgCYikZkjxt5jQRmADjvX96fznkMaofm7UlNVYSK5I/+73Qc6epAkiAv+23cQuMApGtUcE03gLbf29ZbV6wKYrbjbPGC5acAhtaljGbc4L0VvwqfNq7vdgVY3jFhcE2n898LQ+hlyO2IvxgN6eUaR+q+dJ4RLX1meqFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.19; Fri, 31 May
 2024 19:57:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 19:57:23 +0000
Date: Fri, 31 May 2024 15:57:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [core-for-CI PATCH] PCI: Revert the cfg_access_lock lockdep
 mechanism
Message-ID: <ZloroMxph3af7Pge@intel.com>
References: <20240531183345.1400330-1-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240531183345.1400330-1-imre.deak@intel.com>
X-ClientProxiedBy: SJ0PR05CA0052.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB5776:EE_
X-MS-Office365-Filtering-Correlation-Id: cbe29bc7-0676-4449-62c6-08dc81abe365
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rIdA8OV82JSdMQcqAdsO32XONPjmEdgFE+lw1jb9jpM/zpjJ8b5BPnYXsqJM?=
 =?us-ascii?Q?sT7KEK4RuZXJaqyG5DZCVkiLMOxlOqBXqaywvaF9NWcMtpZvPeAV3xvdB6pL?=
 =?us-ascii?Q?TGiRWT6jko6tcgal/LY7zDIYNPEiLGDeONkhWFMogSNzNx/qaAO2CkiIHCub?=
 =?us-ascii?Q?cWLt82UiJHfbrvIoNQ41rqusmMa62iPyZncXSHFITbuXkiViZqI59Ewhe2I6?=
 =?us-ascii?Q?I08tZqzSFZyxUvmC7CiCiBMs1qjWfH+jBMjyGzNEEzVI0QhVUKKAWxEr4oYH?=
 =?us-ascii?Q?exr69qz2o/prOKUudZJEemv5yucMbjFnO1And6kUDgShOqxS4VJaP9nLLNgZ?=
 =?us-ascii?Q?5ukHDQLcx80cV7MeYEPwtAXeCjFqnpEChe+esyZ3B7EaqONav3f3ZKzGOYBm?=
 =?us-ascii?Q?oHS7HoB8orxlJeq0kFEkNqywOYZ58HArCmTNevcD1zAJxj6XoXwBxn9W7iQp?=
 =?us-ascii?Q?mGg+ZWOdQIJlj+3OBPhrMCGAnAR2K6eznJMd6E+50C2ck6GzfiAprJeCtMll?=
 =?us-ascii?Q?ZgyHbmHlSecriK7CK9j0TejnqstD1UISU9VOaE78KqSrQFFkeKBded6YyB7l?=
 =?us-ascii?Q?Ejbp21MVFEmgAZ/ZOHH5y2Y+xrI+L2mhWaClFpnKLA+q7ZIGBJyhFxdTOjJf?=
 =?us-ascii?Q?1+nLKas7sNg/aQGyBD0woquGdhqM97rIBWE1Ldv3G9NNvDz7VjaAO/NanFOe?=
 =?us-ascii?Q?yosAA+Woq1SPCue+hdt+mUzdxXmbmVlV08koNoPsTp0LxCL6zlBoNA+4yA71?=
 =?us-ascii?Q?Hna5lIX3K9pgCvDGjIXqLZyxmsFbyF8M96ItkGJssN4TuhzQUl3sid2T1naC?=
 =?us-ascii?Q?L271AyHlq0jnSazUIU3bqg8BM3AAoXalKwbSyyR2EUO/FJHU7fhUm7DHIQii?=
 =?us-ascii?Q?zuyAY1WcsRUvR4nEsokkggERSxjlZ3ThmN6lRPCmnGLt36A6P4HS00Cg557Q?=
 =?us-ascii?Q?fVDuemS3Csz3x88QSxd9hnh4va8A65zjbTr7teYjgcZvoKoUt7skLlwzxkdJ?=
 =?us-ascii?Q?YZcVPzdqmREk56i13O6NqrgblG38+wMrWxlF676p5yYAGT9r2kas5NeDu2E8?=
 =?us-ascii?Q?yKRS5eZYgBVEd9/WncQL8DQJjB4u/hSOMzpMPaBWsKjxTqPWyhAEsCLIFNq/?=
 =?us-ascii?Q?dsZZyrExPUfqv4ZJHde1z3deoWvLHs3TK+e8lNSu2JFPmULjRjlGTG1KdDEC?=
 =?us-ascii?Q?ICJEyILPtybR7P2X/ip92CkFkbsIRzYPPIz6OFhiGdBVcQGBv9YDtsxkE5c?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fNu2nmiue/vrBKzbNkMCUDNgrsQ0j+LHOK3fx5yP3jbiGo1UpSenbSiehyoU?=
 =?us-ascii?Q?KtXZrsZCSEtHu8C10uskUi2AStlUN3NMO7KKRY0rApxDEcZ1lIpY8HqOG+Nz?=
 =?us-ascii?Q?NX+9wdy5ctC/ZQl0WLY3ckRIKzmlU6o3U0Km6pL33dQcGN51ZNamv5v+06lv?=
 =?us-ascii?Q?IECfY6cUEP6BQxOE17zbsBlnVRyvruYYVYFIK/KJmFRbALfGNyfzPzmfc1fx?=
 =?us-ascii?Q?BmWPPOaq1A407ncxDbmCGYBIG5N8Et7fEqzwvLUdPusqhTc6Yglhsgipslmu?=
 =?us-ascii?Q?9kkV9vGt36R2vxTTEmyknqXRJMEa5fU3OWMm+kGiJoKDEY2ut8VG4PeUfuiR?=
 =?us-ascii?Q?qi3Z5crFG/MFDKdsHkvFH5yZTbpmNJiIyLZXW/9vDzxzrISOWKSFCobJtO09?=
 =?us-ascii?Q?0OTfGyRMCeCvHhaCT8G17H/7s3RWcyRY/+w0uO1VX9yOCJV/chc7MSZJP+vl?=
 =?us-ascii?Q?xw7xFpJSBb4Kfn/gfCxAy7KmBZEPj3FvNdnuJqYtoO2OYWR3rGDAK3l0hsu3?=
 =?us-ascii?Q?ct+ExwakMZlSrIAWyPhgB+5vzvhU++tNlhscMj22g01hmx7qqVrbMTQSMqro?=
 =?us-ascii?Q?AY72QgdztoijBFOPIYHjN6/l1gkJs8dn8CBHszpkLuiM3YeFFgeGw3UJ7kCg?=
 =?us-ascii?Q?kDPKUFlhyYXYw82TRH+xK5pADRoy47cSaAyQDW9eOCZIvrrU9gK2yGu9Sb2I?=
 =?us-ascii?Q?W4u/edzuisunuhOQDDAATLBA6LdsrSOv9f9eO388nRm+zEYiKBxxfsXc1EEF?=
 =?us-ascii?Q?TZuyGYfLDyXa7SREL1d1VncDtJuK3/kDzzaHANuTnceS+RHkgh6HzUYDDDbf?=
 =?us-ascii?Q?TVQtOCzf2SaURZ0cx4yYKjPN/TCrIJM0PYcAW9uuGgL4HUuWPLiMrgAEqtGO?=
 =?us-ascii?Q?7Tri4p3LL6ugAaCVzHjOez8w9Z2NWctVVuSHfMo8iswVLPjQ4C1hK90eTpsn?=
 =?us-ascii?Q?hbn512OJPJhLvqiGg5Kkykgm3n2l55CiFKUIOrKDeXjSrIyAga6n2nwUTPjC?=
 =?us-ascii?Q?Ahf60G5SdwL/6Qz81QPoA9mltN+IFxcmSyW4tQnzAvY0E0qT5Wx9P2RoHByO?=
 =?us-ascii?Q?BTipcE6O/Pmo9kbuIG+YAGnkTIi30AEcINjnGwDVj3cmkFtJC2gkTjQamzEZ?=
 =?us-ascii?Q?xywdzFvETynJovAl2mkfqjrLPpUDf/6FUIe1NDlri4ts8WlBWh7lGtAShYSb?=
 =?us-ascii?Q?Cm6ZzVyhGrPzOlKNmQXdmIQHctXvCE4LXyH+XwJlbbX0EWs3Tl76iPr+v6Wn?=
 =?us-ascii?Q?VmxR2l6KXu5v67eGon/6qfZsjHGQKvtQf2uVFnrPp7nw243CjOP3C5rRPhPL?=
 =?us-ascii?Q?puWitUXnDC7obo41FBK0UwIQ24Z4p+jPU0kGTRowNqhrJvbBw187TJdOj25t?=
 =?us-ascii?Q?+cEiOY5E9lXOWqa5DhoCATIDb0eLFocI7tnSi5anV0qZI1f+9RIAnS2rmcV1?=
 =?us-ascii?Q?IVurv8z8yvLHK5P1bh6FLWdbfNVNO6ByLhblwviZ3NbP9kFIooeMAL0Q1ChZ?=
 =?us-ascii?Q?Bo9G8/+/zJ5BnEDk2hb43/fLFRFyKEvhPL+iBmMYl+gVil2wY3Y86nVDCrbU?=
 =?us-ascii?Q?3wLRtZeUZGvdddkJbX9HCPT3e5QU4zG6aXqANn39+DyufWDyOP7MaMpFljcv?=
 =?us-ascii?Q?3Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbe29bc7-0676-4449-62c6-08dc81abe365
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 19:57:23.6572 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zwhD7YUZOjvCLamBlBA5OD330XraBmo8ts1EahvEOwq255MLa5hhygq7KoImpGgzoA5tL1vpFLNdIpSHfEnXRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5776
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 31, 2024 at 09:33:45PM +0300, Imre Deak wrote:
> From: Dan Williams <dan.j.williams@intel.com>
> 
> While the experiment did reveal that there are additional places that
> are missing the lock during secondary bus reset, one of the places that
> needs to take cfg_access_lock (pci_bus_lock()) is not prepared for
> lockdep annotation.
> 
> Specifically, pci_bus_lock() takes pci_dev_lock() recursively and is
> currently dependent on the fact that the device_lock() is marked
> lockdep_set_novalidate_class(&dev->mutex). Otherwise, without that
> annotation, pci_bus_lock() would need to use something like a new
> pci_dev_lock_nested() helper, a scheme to track a PCI device's depth in
> the topology, and a hope that the depth of a PCI tree never exceeds the
> max value for a lockdep subclass.
> 
> The alternative to ripping out the lockdep coverage would be to deploy a
> dynamic lock key for every PCI device. Unfortunately, there is evidence
> that increasing the number of keys that lockdep needs to track to be
> per-PCI-device is prohibitively expensive for something like the
> cfg_access_lock.
> 
> The main motivation for adding the annotation in the first place was to
> catch unlocked secondary bus resets, not necessarily catch lock ordering
> problems between cfg_access_lock and other locks. Solve that narrower
> problem with follow-on patches, and just due to targeted revert for now.
> 
> Fixes: 7e89efc6e9e4 ("PCI: Lock upstream bridge for pci_reset_function()")
> Reported-by: Imre Deak <imre.deak@intel.com>
> Closes: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134186v1/shard-dg2-1/igt@device_reset@unbind-reset-rebind.html
> Cc: Jani Saarinen <jani.saarinen@intel.com>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> Reviewed-by: Dave Jiang <dave.jiang@intel.com>
> References: https://lore.kernel.org/all/ZlXP5oTnSApiDbD1@ideak-desk.fi.intel.com
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11223
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> ---
> 
> This patch replaces [1] and [2], those not actually resolving the issue
> described in the first References: link.
> 
> [1] https://lore.kernel.org/all/20240529102341.3928968-1-jani.nikula@intel.com
> [2] https://lore.kernel.org/all/20240529114901.344655-1-imre.deak@intel.com

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
>  drivers/pci/access.c    | 4 ----
>  drivers/pci/pci.c       | 1 -
>  drivers/pci/probe.c     | 3 ---
>  include/linux/lockdep.h | 5 -----
>  include/linux/pci.h     | 2 --
>  5 files changed, 15 deletions(-)
> 
> diff --git a/drivers/pci/access.c b/drivers/pci/access.c
> index 30f031de9cfe8..b123da16b63ba 100644
> --- a/drivers/pci/access.c
> +++ b/drivers/pci/access.c
> @@ -289,8 +289,6 @@ void pci_cfg_access_lock(struct pci_dev *dev)
>  {
>  	might_sleep();
>  
> -	lock_map_acquire(&dev->cfg_access_lock);
> -
>  	raw_spin_lock_irq(&pci_lock);
>  	if (dev->block_cfg_access)
>  		pci_wait_cfg(dev);
> @@ -345,8 +343,6 @@ void pci_cfg_access_unlock(struct pci_dev *dev)
>  	raw_spin_unlock_irqrestore(&pci_lock, flags);
>  
>  	wake_up_all(&pci_cfg_wait);
> -
> -	lock_map_release(&dev->cfg_access_lock);
>  }
>  EXPORT_SYMBOL_GPL(pci_cfg_access_unlock);
>  
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 59e0949fb079d..35fb1f17a589c 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -4883,7 +4883,6 @@ void __weak pcibios_reset_secondary_bus(struct pci_dev *dev)
>   */
>  int pci_bridge_secondary_bus_reset(struct pci_dev *dev)
>  {
> -	lock_map_assert_held(&dev->cfg_access_lock);
>  	pcibios_reset_secondary_bus(dev);
>  
>  	return pci_bridge_wait_for_secondary_bus(dev, "bus reset");
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 8e696e547565c..5fbabb4e3425f 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -2546,9 +2546,6 @@ void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
>  	dev->dev.dma_mask = &dev->dma_mask;
>  	dev->dev.dma_parms = &dev->dma_parms;
>  	dev->dev.coherent_dma_mask = 0xffffffffull;
> -	lockdep_register_key(&dev->cfg_access_key);
> -	lockdep_init_map(&dev->cfg_access_lock, dev_name(&dev->dev),
> -			 &dev->cfg_access_key, 0);
>  
>  	dma_set_max_seg_size(&dev->dev, 65536);
>  	dma_set_seg_boundary(&dev->dev, 0xffffffff);
> diff --git a/include/linux/lockdep.h b/include/linux/lockdep.h
> index 5e51b0de4c4b5..08b0d1d9d78b7 100644
> --- a/include/linux/lockdep.h
> +++ b/include/linux/lockdep.h
> @@ -297,9 +297,6 @@ extern void lock_unpin_lock(struct lockdep_map *lock, struct pin_cookie);
>  		.wait_type_inner = _wait_type,		\
>  		.lock_type = LD_LOCK_WAIT_OVERRIDE, }
>  
> -#define lock_map_assert_held(l)		\
> -	lockdep_assert(lock_is_held(l) != LOCK_STATE_NOT_HELD)
> -
>  #else /* !CONFIG_LOCKDEP */
>  
>  static inline void lockdep_init_task(struct task_struct *task)
> @@ -391,8 +388,6 @@ extern int lockdep_is_held(const void *);
>  #define DEFINE_WAIT_OVERRIDE_MAP(_name, _wait_type)	\
>  	struct lockdep_map __maybe_unused _name = {}
>  
> -#define lock_map_assert_held(l)			do { (void)(l); } while (0)
> -
>  #endif /* !LOCKDEP */
>  
>  #ifdef CONFIG_PROVE_LOCKING
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index fb004fd4e8890..cafc5ab1cbcb4 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -413,8 +413,6 @@ struct pci_dev {
>  	struct resource driver_exclusive_resource;	 /* driver exclusive resource ranges */
>  
>  	bool		match_driver;		/* Skip attaching driver */
> -	struct lock_class_key cfg_access_key;
> -	struct lockdep_map cfg_access_lock;
>  
>  	unsigned int	transparent:1;		/* Subtractive decode bridge */
>  	unsigned int	io_window:1;		/* Bridge has I/O window */
> -- 
> 2.43.3
> 
