Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A41688CE69E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 16:04:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B6ED10E248;
	Fri, 24 May 2024 14:04:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ihw8aZRS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DD5910E248;
 Fri, 24 May 2024 14:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716559476; x=1748095476;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WTWWg9K29svXEQG7eE2wo+sYImfHIrTvw7ipgiGRbYQ=;
 b=Ihw8aZRSKtvTQ1CreTq7LHQnapNOVUuWqUbP8TZZE59pzPzKrBnojOwP
 ADgG29X9/wmzu/w9tSSN4D1lglMOGIif6lRb4zboZxJX67jZWI8zI74C+
 pfXsOrLqScOuxOAY8F2OwjFHOlQNUtc/qodrAmnas2XBHMc8dcPEigb1Y
 OMrJIWBReN+SmFGjXpTO5CRWXmEGRNi2++6QgLlg1RR38HVO1xarW0Qsj
 mVq/JCikSuNMSPf6awXy5ENizrZKjaFG5K1g1UE7fS3Cviv65RMx7b17r
 NKZpyE3V9yFkIRarF89b6AgE5Xzjinan7n22xUnXxChAbocEBU9Cj63o3 g==;
X-CSE-ConnectionGUID: QYCL+mB2RpWe83Ps4fLLkg==
X-CSE-MsgGUID: Qdb2XZaZSE27gQQBXDjj4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="13167696"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="13167696"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 07:04:35 -0700
X-CSE-ConnectionGUID: /zpllfNgToGmsZJPD7D8wg==
X-CSE-MsgGUID: MpuF7FhPQX+9A8NHjDyJ1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="38886451"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 May 2024 07:04:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 24 May 2024 07:04:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 24 May 2024 07:04:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 24 May 2024 07:04:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5nna+ZuCPWP4MjKN0PhZgGYA077+6dYaxov81h1dXBRtytR+5akG2rZ9ez642Ls2LVYaOEDVcAH8OMIg8OiM2diRUsb92Yo4VdFrLy5lbSoUqPO8KfRo+wzbFDggfOG16Ce151Qf2VIpfyPLEPRiSIfibI1SGACqWWR8DmGrCXYa1Kcwb18eZr7IcLRJASa8FNdv8/zX44DognmUmvMl6RRKRSmZx9MgNwSp+aK/Y38pRh+97BEzkfcSCx83EyrRa4d0VYplaC6wd+ASAO9TnNKEW9yb88hGoCdx2wRE3KFtXcizSJRuMsyTNvzN6tC/88zyoDNLlQ3Z7PXqTGv/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WcNjY1OMd7khUB+DrW0KHunK5QOrmjkBWJY078skUu8=;
 b=R07rsrPsS7JP8L0aOJwugzN+mhgmibxNnWsNgmLHKjV6c9Dw2lNijwc8b/P3Ysga6fZ9B2/6v1JfT8mES21EEsWeYWg6fr1DmWcXc1dk9xBSDOe75XEzlrL3B0rQ85IbolKYDTuUkJkaclNXV370ceFNnpnSJvMSddVdiOpSwKrpD11u9YAt2hIE4QklId9Ws0z+qpxTS1jeJ33onSscmaFeaLgKuT2sFgeEoi2hA7gTyfdk1NYlR+1nsanKCSvOoEb8C7mgN0theOy6QYekMRgbV8H8qdDUdX44r43ir7p1XLQi8YObu9+1BMbUeHrmeiyoxyFcvCHJJbUcCKKsNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6068.namprd11.prod.outlook.com (2603:10b6:8:64::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.19; Fri, 24 May 2024 14:04:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Fri, 24 May 2024
 14:04:28 +0000
Date: Fri, 24 May 2024 10:04:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 05/10] drm/i915/display: add platform descriptors
Message-ID: <ZlCeZzoIyYL7on4o@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <45425c155608403efc149d4a022c0b443aa71200.1716399081.git.jani.nikula@intel.com>
 <Zk-PShUokzY2VbqW@intel.com> <87ttinoc83.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87ttinoc83.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0121.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::6) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6068:EE_
X-MS-Office365-Filtering-Correlation-Id: c180f4f8-983f-4a0c-8e99-08dc7bfa6cf9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+gjPX8gzbJcYW8fzY9Gj7KftGjqf6HnRBDZrHI2nH86QIA23EBQbVYDUeIwi?=
 =?us-ascii?Q?VpeTOC6BB12H3PACFKEA4vmADMQopak3MSDvnIdIEJJVnalRlPf3uq2YxayN?=
 =?us-ascii?Q?wIV0A+C/5BxHuB7HfBG65dYrf9n3OGrf5IOgGX8eRSG4NEOWh3omHaa2i0O5?=
 =?us-ascii?Q?1SpGjt4Fg5+hs8GMMVdCEcS4JztMzF+3t9rzWDnl68jrNvLqSvNNFbqgzdJ1?=
 =?us-ascii?Q?Udx5zUInzm7Rwmj9oBO8ff93Xgac6wvxHbEwmPF3wgnrNILL8NEWH22E95pJ?=
 =?us-ascii?Q?DZNs+GwCwmoUaRxXWxjIrMi1lgrEPu+SOh8otrUdmE7TKg9rtpuE7J7iFquz?=
 =?us-ascii?Q?SJJexZ2fJ+O5wTpwnSK0l5QNkN37d/zoHrS2pLmoCHELVrZf5vGSXihey/o3?=
 =?us-ascii?Q?pAkuKn/NDUecKvaRG2uS3YiedNDx7TyRZr54ittwzv8rd7MYI58Gyzp1j46U?=
 =?us-ascii?Q?fJmc74WsRwlVKiAqQfipHPFsFgZErToMoSSf0vJTIj7lati97NiQcmWSJEYD?=
 =?us-ascii?Q?LU+l38kripuhxAR5AMYhvb3ZrtcxvODlHcGxV3mVT9yUZMbh2r0dw/sjzz+o?=
 =?us-ascii?Q?MRPtF3OH8ncdLYMZC172dwzoZwtRf0dWpEnYoHePYg0NkIMmUS8kzlV8OYqp?=
 =?us-ascii?Q?IKpFMM7RQNlYZDXvQQDIElzrs7qfKSp9SINAIA6bXucBmRcnYvJnOchMcEes?=
 =?us-ascii?Q?iPxP45daspJjK7HxpIajwavC0QQxpl2Ip27mfkuZwEzbWJQ0HEKvp8ycYRda?=
 =?us-ascii?Q?U+aAAOhZFOM0xPhA3JOKiB6qzufV95VFLslbHY2ztOoK1vITknZ3pzygUyHJ?=
 =?us-ascii?Q?kk0SmfArxI89CMilkY6dVpObJr1tJrk1cruZVwwJTvxdqYtOCISWtgtMI0gz?=
 =?us-ascii?Q?fOUdZPgWHuz8SmcOEPOR0OcAmwCiQ/cSHjqqjqGPXGTk/xjWk51jHiQTrQsM?=
 =?us-ascii?Q?KrWJGkIGvHg/DVCP/+wZKaSXLSVQFN3l6t0MHkCAqpkDs5dKOnom8/Rqb+2X?=
 =?us-ascii?Q?Q/NThWYW9oGV7ivnd4EKjMWC8ewaMo4Zq4qWtOsVZ/PzldWtEIAGxx7NXTdQ?=
 =?us-ascii?Q?YHyFfPIUejxmxy/2z6rEQd0+lIBaFrBAIv/DyXYe4MvvClM72KhOg93WS8Uu?=
 =?us-ascii?Q?GRYK0vQ3929PdoUSjNbjV1Fd/PdRiEI332nE6uDYNrLuouRDRxLMPcftVTRZ?=
 =?us-ascii?Q?kY02srL/YPSezPv4o2jZWUUcB6it7J0DUZTYWrSR+p12vhHqr4EAaLFx+Kx4?=
 =?us-ascii?Q?WKB+9PTZj9dE2CpjolU6sPognSCnXesbNpRbTIxpNg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/NCPhw07hcxiDznC95rE3bWjo3B59V6k3umo36Uvr+ngewMT5Y/Hbmj7uu+e?=
 =?us-ascii?Q?jCaLYcwTVfSVaUjQYl2vBCfH/H/xl8KfyQRblUw/R8x2ijazuqnJ5Mq3McbU?=
 =?us-ascii?Q?W5kU9czGJ9nMOowD4+7P3gHYSoQn1V3lZxtAX6r4eRZ687owMZOXDGidhCx8?=
 =?us-ascii?Q?rojU8h/jj3Qri3XpDN/7CDei3WqmU5vQPy+zVN0PaTfuCZVbk/bFi5wMFYga?=
 =?us-ascii?Q?vU91WfKlMAJ0i3DQ0ev64cx2f0sqpOzTJuVfdZ6fmyxiYfIsm0U9MhZ6uHox?=
 =?us-ascii?Q?yGL5a5F0ihH/0kfJI3V3B2FIBHBqwD2E4gUb7RzqN6dVptGXnDQhxrJ11ma6?=
 =?us-ascii?Q?Qh5ecG0f2GjEXrPALCmEQpPkSJ2Sq6knZh+JB/eSn1m+BEoZeKjwiGS79h0Y?=
 =?us-ascii?Q?6w7HrJOklXkpGnG6dCVRktnNkX6l7YjIfv+LZECDEJj340R68qyTbjFo+9yT?=
 =?us-ascii?Q?gdCvo56vENEmNoGR+Q5q4LxHiP9EldbVpFCRhmOst1RLQ8sOdo3MWj7Cukvb?=
 =?us-ascii?Q?2ARfWSUIFMcG60oZfb7AGAX2+t22Ncddi5BJQkjQqjPXhoa2FEp568kS1Lrt?=
 =?us-ascii?Q?e/jIIUuSuGgYqGrMDYLHMis8Suouy8Qj/S/dIVR+oLhXQWRqLxbkIdkMGvYb?=
 =?us-ascii?Q?qx1owV4+jf8D2CEBJBwz/bvXT5cx4K13RuY6GUchEGGfNZI9eeu4v2T3jJbc?=
 =?us-ascii?Q?fZAmkcc60gb6IMxHSzWg/3hQKiC6HyA+LAF8Q7JrsoQndVaO0PGv3QMKuKYY?=
 =?us-ascii?Q?a9pqF7MbQX+HC2WzTl03rcgZT+CtcYQ+204vmBNuyD0/GfBrw0sRbGlRenym?=
 =?us-ascii?Q?qQjiY5Tt3Li9NRgI+TWEVBSc4yroXkvjlrXVxbGN+baf2ku2Lt0xBd/bRIj4?=
 =?us-ascii?Q?i3V9J7ezlFW3qQzIcqCj4wfS5MT8VVyKz269klEBHefSG1hOGxEKxjuJmGA4?=
 =?us-ascii?Q?Xtee49EEuM+lhn7nbFj3yrUqsNIVPJIOkF6jbFoM3ZgGLQw2neE83KWZh0UU?=
 =?us-ascii?Q?aL5vMHiYZD21acUhmHV/oWoUsiiKucbkzvguxy9ipxvPrgxbXrkL0KL468C1?=
 =?us-ascii?Q?+vVpThFrJL9S8Cx9eMJz1C8ctUBsuoSQ4XJkfU6cDGXSos/Ei0GDQEKWsARo?=
 =?us-ascii?Q?3GEaicvcXrbfCFYnXJsvP0clP2rocemMI5rN9XiXY2dPJVejek6vCl1tkwTV?=
 =?us-ascii?Q?ldQe5jhNgKHcl8jo120GzmM/88PnCtfDFDZHjwNiAwN/45rIGVVKRCdOmGAT?=
 =?us-ascii?Q?a5R4X639Kpj+2Ivo2JwOxhKISnml6+0bLlFNPSw/H/5HSDqhyQHhZqDgf2F4?=
 =?us-ascii?Q?bgSg8WRCepr8hHVuZnZ5SpQ3FiHiNwtW1WEbEdKqQ18V3YmDVqy88t1pE4BW?=
 =?us-ascii?Q?Ok/XI7Wzs9UzRrDXuTSMHCtyt27iLw7P4KBVLhHI/zBk4W3LxRop8vShPw6Y?=
 =?us-ascii?Q?CNEszxnBZS2j+TWkROs6JjLUX8QDt5IgWXg2+cZErh5KAgn6CTybLO6MPlzd?=
 =?us-ascii?Q?FVgDjcTou7C8tEVrqFp5npttvHIeIYnfCMih8fxqK1awKPh/ymMIlajKqXyy?=
 =?us-ascii?Q?gvdjjsT4d3qL05GKIo43HCtA3AYl44zcOyiDAESKEg3ozzy+lgYlyh/ze0tB?=
 =?us-ascii?Q?dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c180f4f8-983f-4a0c-8e99-08dc7bfa6cf9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2024 14:04:28.4192 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RgrIiaxFiwRZKnff8THJUYpZSa+cVm8XYuj+B7/KeNx5BLY1wclz3mFTYhekiWO536258gcyN8VUH7bnSTmbpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6068
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

On Fri, May 24, 2024 at 11:17:32AM +0300, Jani Nikula wrote:
> On Thu, 23 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Wed, May 22, 2024 at 08:33:42PM +0300, Jani Nikula wrote:
> >> We'll need to start identifying the platforms independently in display
> >> code in order to break free from the i915 and xe IS_<PLATFORM>()
> >> macros. This is fairly straightforward, as we already identify most
> >> platforms by PCI ID in display probe anyway.
> >> 
> >> As the first step, add platform descriptors with pointers to display
> >> info. We'll have more platforms than display info, so minimize
> >> duplication:
> >> 
> >> - Add separate skl/kbl/cfl/cml descriptors while they share the display
> >>   info.
> >> 
> >> - Add separate jsl/ehl descriptors while they share the display info.
> >> 
> >> Identify ADL-P (and derivatives) and DG2 descriptors by their names even
> >> though their display info is Xe LPD or HPD.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_display_device.c   | 558 ++++++++++--------
> >>  1 file changed, 326 insertions(+), 232 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> index 56b27546d1b3..d1e03437abb3 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> @@ -20,6 +20,10 @@
> >>  __diag_push();
> >>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
> >>  
> >> +struct platform_desc {
> >> +	const struct intel_display_device_info *info;
> >> +};
> >
> > I had to jump to the latest patch to understand why this single item
> > in a new struct... later it makes sense...
> 
> Yeah...
> 
> >> -#define GEN3_DISPLAY \
> >> +#define GEN3_DISPLAY   \
> >
> > I had noticed a trend in all of your recent series, to replace the long tab
> > or space before '\' with a single space. But then here you change the single
> > space to multiple spaces. Intentional?
> 
> Accidental.
> 
> Emacs wants to indent and align \'s in a specific way, in a nice column
> towards the right. Usually I follow that when adding new stuff manually.
> 
> Here, that happened on a line I didn't mean to change.
> 
> In the PCI ID patches I intentionally used a single space because I
> scripted the whole thing, and I couldn't be bothered to figure out how
> to align the \'s any other way! :)

As an emacs user I also tend to do that right alignment hitting the 'tab' key.
But I really never care if it is all to the right or all the 1 space.

> 
> >>  static const struct {
> >>  	u32 devid;
> >> -	const struct intel_display_device_info *info;
> >> +	const struct platform_desc *desc;
> >>  } intel_display_ids[] = {
> >> -	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_display),
> >> -	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_display),
> >> -	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_display),
> >> -	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_display),
> >> -	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_display),
> >> -	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_display),
> >> -	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_display),
> >> -	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_display),
> >> -	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_display),
> >> -	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_display),
> >> -	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_display),
> >> -	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_display),
> >> -	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_display),
> >> -	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_display),
> >> -	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_display),
> >> -	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_display),
> >> -	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_display),
> >> -	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_display),
> >> -	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_display),
> >> -	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_display),
> >> -	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_display),
> >> -	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_display),
> >> -	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> >> -	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_display),
> >> -	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_display),
> >> -	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> >> -	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> >> -	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> >> -	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> >> -	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_display),
> >> -	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> >> -	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> >> -	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_display),
> >> -	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_display),
> >> -	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_display),
> >> -	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> >> -	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> >> -	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> >> -	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> >> -	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> >> -	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> >> -	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &xe_hpd_display),
> >> +	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_desc),
> >
> > But here is what I'm not sure if I completely understand/agree...
> > before this patch is a display device with a display struct
> > but then it becomes a display device with a platform description
> > but a platform that is not used by the driver...
> >
> > I'm probably missing some later jump there.
> 
> Yeah, I did not want to put too much stuff in the same patch. I think
> easier to review this way, though I guess I should've made my intentions
> more clear in the commit message! Also, easy to squash if so desired.
> 
> So this one adds the platform descs with just the display struct, and
> later patches add more content in the descs.

yeap, indeed... let's go with this then.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
