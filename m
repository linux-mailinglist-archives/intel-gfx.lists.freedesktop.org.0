Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CA05FC7DB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE1B10E518;
	Wed, 12 Oct 2022 14:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CFED10E518
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665586685; x=1697122685;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=idcoBzs91si2BUVFTAHJCrcTroZU+34UkwHJgxd9bS0=;
 b=nPnjnOMm387pPK4yGYxECmeGIJt0/2yPbluAMjtq4rc5pXCAJpXRoDdu
 x7xgR1SOHSUce51g6SAPGzZ3EqiDFqKJJ/P/js0XtSxlMu62wCOGB7bVI
 mxxsmSl9DotuTdYWJMR/wiQbQ7/ZkAj5NXlz+YxjLVeB1lP7a61tHID/e
 LTBOVmytbKDKMyhlaPy7XnSrMdgDusyT4zyPY4x2+OFilyAEzr5GzUbOg
 K+4XGbuPGhH4l/0LhtEU10WL+3fc1cS1roLWc8KFP0Wp5tkMZ3KjeF9FU
 fIw3Lbwh62euza7GCcNjKtg2gFbX+ajEVvunPZ0w1GkNfC5KiK+T0B+za g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="306441935"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="306441935"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:58:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621805748"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="621805748"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 12 Oct 2022 07:58:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 12 Oct 2022 07:58:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 12 Oct 2022 07:58:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 12 Oct 2022 07:58:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1TlC01fkJu+Dc8W8A8MQodZgWseHeOSMwjKyiRFKHOlYIbyY0u35mlUp3Kwlao2Hy4lANbfmYJ1qs4b3X5MKWMk8BCtx64kRdf+lRILdaAawvous79unVoUw2jHxM5QcM61OpaYxCGcQMgsQl5CI9GA9rq6T287lGAymspnrRfmvLZ/aKkWgvCWftYo5zwZD4aqDWG+HqERJ3mV6RoYV4lAWYmyrYmLn+JT+0UgTS2O6FTV6FA+O3SQ7DYtojvNWOa8HO3XDDBlqUdbrqwpLQi+yihr4YRrkYD9Gk8h6qtqQzCp1ikzSyH3Brn0akl5NyEsmsX3+oY7iG+sKSP00Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U72EVpRqA23Fc5RPQ5CAaoit1Qa8weG2P+cyHdU40EA=;
 b=TkqeirnChv3ZAcqF0Gu7hgjoA/zp8AlDT71qaYaIrhKUpXCwgCUCc9cZnqLgb6U1dFyugHvAZTCtDfOzxgK9QRfecTiuFoqk3x4Tunl8Pcc/CCrqUaNwyE3wxZ1H+Ye3qh3n98DQORtWRqyYNeuwmXdPYS93Hf8SDbMdADbZQmENCNmMCkMy2oXLg1+ZMv2D3cSoYjeZOEwuyOd+AeAoDfTmFROXaCQEuS0s0dxwk+CHSkHa3MpXdsUIidPRGKDagz6UUBon21EwWoEGwg7FZfZuu4ZDDxmcXbNZmMosOBtCo/P/XfTBYPVOMHvMSeUr79PgrBQCBKAdx4ZdAew8ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5329.namprd11.prod.outlook.com (2603:10b6:610:bc::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Wed, 12 Oct
 2022 14:57:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ea6:6f6c:f2dc:cec7]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ea6:6f6c:f2dc:cec7%4]) with mapi id 15.20.5709.015; Wed, 12 Oct 2022
 14:57:48 +0000
Date: Wed, 12 Oct 2022 10:57:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y0bV5mavoHl6pBqM@intel.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <6fb51e71-bc5c-16d1-ad13-33017035be83@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6fb51e71-bc5c-16d1-ad13-33017035be83@intel.com>
X-ClientProxiedBy: SJ0PR13CA0240.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5329:EE_
X-MS-Office365-Filtering-Correlation-Id: a5915179-6126-4ffb-f912-08daac62208a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x9GGhF0ILBTfAjD1/p7EjK97updF+dxlP1sD0MDAyIEF8DQa1KTeGQ1w+i09JFGPFC1H/GC8uI22AYVFrnF5Er5MIN1w/38BLe6+mvwc29GiY5+o2dyG1EHYcLtj+7v7NUU0u7KiK9zxLtPWjObjiTjoQ3EYTYeqpaHAQEJB8KRZZwoEjZjuW8R6DWcfZ3nm+yOtuCyF24jCmN0D//5YI0gP2Q7MysHux3uNSD/nK5RlI/cXoZGDFNsdyixSlcJrgJYBfnOLx/GB43czv7cPCYo6iUs4EKEW5huOvTnFBUFPr7EzAq7DiUl9Ywb6ZmmPaGc6ctzZq6gzI0N6CMRAmRswpPl+hFXpxd+XCyWtF7fOHPM1lr0FwG0Uq3zKbCWCUuAi8Rf2rLi9AklppepKwDwHludWQ2qZl7tA74TsZ+G9BFC6DbgRz0ZDT2vLcCt/JzltttxCC2WSKd4n9ubNC2EsQKKjeAZLezAEMAo+aS06ZEheYwxORUXbrzUbd3ShaVKaojXyHQ77C1fP+5v9hYYLDX3yEPYtvfiRj4VHr/J/qvUeQY1rD7rBamzU3J5E8GvuEDjDYzuXqvtucdxO07VZ6HMx0hkpbYtaRGlrL0SOK6WwX1L4Z/+Ezn/bd5QGeJGahFgmJxBUt8hXuaZMrk240Nne2hiqXPJnoa+o9CmhbSkK869/cZYqNY7kOjPsS2UQhrP7grvb4rFh1AGqEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(366004)(346002)(39860400002)(396003)(451199015)(6636002)(6512007)(6862004)(6506007)(86362001)(44832011)(5660300002)(8936002)(8676002)(2906002)(4326008)(36756003)(66476007)(38100700002)(41300700001)(66556008)(82960400001)(66946007)(83380400001)(37006003)(316002)(2616005)(186003)(53546011)(26005)(6666004)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JVVYtvFDTCXYIe0N/5ahbUeVqGIBrc2aCVdGh8Y1wOIUOu+RW85rsiSphpvK?=
 =?us-ascii?Q?EDfrbHcO3mC7Am8ZFAlT+alx6BHKohfyT0fetCn5aqweY4fblna6yjIdPnIz?=
 =?us-ascii?Q?SpkCgB9T863UMVVmglXy9bt7NmIKY6hellYACU+aOb5z0yOejpJESjM/BjM0?=
 =?us-ascii?Q?hMbEb8uSYPagA6M7JzuJEdjk4tRFcFGAtshO6RO88tT/AY6n0JjWowg1J8fT?=
 =?us-ascii?Q?hjTBBZg9nwvJF9rk+DfVXlDhucgycgDrIrQNv+nZa0PRrRIvCz2/IWtHIXtw?=
 =?us-ascii?Q?91T2NWp+z5qtfXtfvHolgLE261H8gEwhGb6NuPo2rSiwSZqZgFXpUB7lv5Ru?=
 =?us-ascii?Q?jCzWKh3AHGnwljqBH8vrQQkMi7D1JaxvyWzGe9pTZKQXbtf7I+ItOTuMn+t9?=
 =?us-ascii?Q?t9cvB/8fGTHY866kDexPBb8WKcksjiK8BqoBIahdD7vk/3Ufibw37cijXE7p?=
 =?us-ascii?Q?QpAmQmbvdOQ0i1Im+ezUoEwekQ9Jm8YbmyrdjI+U4SN6JurlRt59oPLd9Ojc?=
 =?us-ascii?Q?mp+l32E5iQCnmtiWtlnbtsaDfdGAG7VZ7H+H8QQqfs6PdpnJPUCR1pfJgPte?=
 =?us-ascii?Q?VAcrsRs8I4+W/hQjpMbevaRiTZve3r6y8mUa3Papsz46wmxyjdaD30pS8CDv?=
 =?us-ascii?Q?GZYJyL+4//a/IGfPqKG2P4JvaVw7ExRs8tJL6Pm7Fw7NQ5HFnMaI+KN1rKV5?=
 =?us-ascii?Q?63tsv7F1mAo07pa4X1ZB+xjcAKJCiw2VhF8D83kIu7Ng0IBaUj/bHijykmvz?=
 =?us-ascii?Q?Dnk5H9+7NiD+09blBjxVfsZO24Jgg6GhNd09PlZQbafISiL0wT8xizqzTXeI?=
 =?us-ascii?Q?w3Sa76JNVRVU1YgqH5dDZWe+/zLb+7sMXNCz2hJi2SdZ7JywkUR9Rko/QVQ5?=
 =?us-ascii?Q?UQnvePHY3ul0P7Dne1vXQ6Zv6nN51f4Hgms9u/4JmiDo6vzfg/LwYm8Ll2D9?=
 =?us-ascii?Q?yRLOzZTymb/D2oOH/PHi9d5WugPtUuLzrkkBCTb7XK3R7YJnRO3TMei+J2o+?=
 =?us-ascii?Q?anMn9HG/rb6f2qOU4cm370kqMZQQtIb+8rmevNK+HbWSEBOrDwaqU2tFRnFy?=
 =?us-ascii?Q?w0VHDbTgW3ey/w563Akr3SiSxtX6jU0ux6qP461s+jGHEhGEtTG4zG0k+hnJ?=
 =?us-ascii?Q?U5OAz7ZeliCN9rUOqYgfn19Cyh1isyE0SDR+EiE3qJnFvKg418Tv6EdyAIPt?=
 =?us-ascii?Q?zzbqQYSg/7IxJHXxwtzv20YkD9mFkanwsZ9RceEFom+rkSSWUi2/pFyYEVNI?=
 =?us-ascii?Q?99eIzuOPA2xgssaRN41IozpTwV+AhAUdb6pILCGzq7TM/aLe/lGDmoOTWTBf?=
 =?us-ascii?Q?cV0s3dLVXXfh2SsmF6tqNr+Y5gO0dGVGEfbGqPH8yuZ9FZzuoiGZXlm0UJ5Y?=
 =?us-ascii?Q?Euc/Z390+E6Oee+nq9Txav1meuA1TBFLdadrgasMx3+qp5yQM0Ur8Zl70ZEv?=
 =?us-ascii?Q?yjtts6Zzg8fdnPcpoY7dRCGylsdHx5AaZcKZPsS5fOXGKkE2log5ebaIJ5vm?=
 =?us-ascii?Q?OqgnRcLFfWbDwH3GqQ0ZSPy2tn8Kz/5Y3ql6yKi8+Uk4KeosjP45W05zqCQj?=
 =?us-ascii?Q?lVngPyONo1ScKDa2T6PDud6stuOVm9m33xJdKCqI5nihHRGc+31FhvSOjmO9?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5915179-6126-4ffb-f912-08daac62208a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2022 14:57:48.2221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bk48i6tykHbC79+rvW+Q8SN/vKC+DeFF50ytE2+NvXZM34TtieH6bzlb9ZCotpq3P7CRboci8JfGsbisBVF2Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5329
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 12, 2022 at 10:48:30AM +0100, Matthew Auld wrote:
> On 12/10/2022 09:34, Anshuman Gupta wrote:
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
> 
> So with this change all the runtime pm stuff is disabled on dgfx? i.e
> intel_runtime_pm_get() always returns zero or so? Wondering if we should
> also revert ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend") for
> now, since that still needs some more fixes...

I don't believe we need to revert that. That's already one step forward towards
the final solution. It is not complete but it is not wrong.
And it is orthogonal to this protection right now.

> 
> > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >   drivers/gpu/drm/i915/intel_runtime_pm.c | 11 +++++++++--
> >   1 file changed, 9 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 6ed5786bcd29..410a5cb58a61 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -591,8 +591,15 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> >   		pm_runtime_use_autosuspend(kdev);
> >   	}
> > -	/* Enable by default */
> > -	pm_runtime_allow(kdev);
> > +	/*
> > +	 *  FIXME: Temp hammer to keep autosupend disable on lmem supported platforms.
> > +	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
> > +	 *  function will be unsupported in case PCIe endpoint function is in D3.
> > +	 *  Let's keep i915 autosuspend control 'on' till we fix all known issue
> > +	 *  with lmem access in D3.
> > +	 */
> > +	if (!HAS_LMEM(i915))
> > +		pm_runtime_allow(kdev);
> >   	/*
> >   	 * The core calls the driver load handler with an RPM reference held.
