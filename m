Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D20C286040E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 21:54:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA1010E94B;
	Thu, 22 Feb 2024 20:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igxW8PJY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4690910E94B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 20:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708635291; x=1740171291;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=5b2Wq4jQyxSB0XPtNfC9arwhSfyll0nfjUOIX2i7GU8=;
 b=igxW8PJYTUNxJKs8ecFMRf3hCrBZWFgvPVsutDB1ik2lrDm9PN+Y0bn/
 6iU4HCmxVW7O9MkLGnzi3nJ/qYvwqVhKDpkeyYB2kmM6qYerGMhlf0355
 fNnRNjDAC2M1s3GpC4OgVLW39JHwUCX40CMIaKV4UjhWrLUDk2jKca989
 u3MK5ojcMzR2VFCPtTIf+mJZpL89HSGu41UyJHCKr7u76roOgG6FqtPoI
 nyHUOjCEMGFVp/x3XH7tv9OgKg5xXqOCd/s1WrIdWLrWVCbBhEFldHDKt
 jqpQt5ss7QYGgUEnNhw3bnkqWDPGJFjopGh/vs2kffRfehIn2GrEHXh8w A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2753441"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2753441"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 12:54:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5557780"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 12:54:51 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 12:54:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 12:54:50 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 12:54:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YcqpdYrE/LiihRIcVub2SmngyMLBycxd+v3XXzb/1oUaLQhCgGqesPBqMkSiBB6P0x2irfrWZFdui7OlseeLPtpkImEiGjbKfRNJLF67lpC8r1TNgAPfZ6qgSacZlXREOY+ItoiHRKE4vzWhikuuz5UG3dIlxMPU0LlEDRtjwo2Gcgdm6h3n1Fj4bn13S/WEwJCjXClWHCCDjDPEHCAW0DBoV1pe2K+RqU2d0G7+oV89y4fMoZoU4/N9PB3JrNYkVXVPz+ZPMUYl5jyRtI6mhKt5KZ3ukG9dxPs/DOHCX/HcE0vVaLkQeUxNqbvOco5Ik9njgUGzk4GafMR3XsR7Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wFT5zXJNMZcM7hGclmcZ5qm9f3gLvrs2E8DJO0k19no=;
 b=cLbkBMdMt0TZkZF+mq5joo3Fi6eyrduqYcHaVnO0FxRJj5PQ46OpN8N0E+TbCe0ap5Gxtco7/8lI/SB9a/iFCEPCjUHmlN6We9ZQqUA4ziYSAU6MlvlM01w5RFhTz9O2/ZQvo7QKDIaGn6wQgF+GLqKnTgWEv0dpJYKrWDwycsgyXtkor94V//E5KmlxiAYQNtrhn/ID7N/xOH/5n8BN735YJSvTflB9rfFd2Z8h5HwunnkzGj5KfNncBFG/ubkpflVhfvZJYTOLI0hO1NTdNy2t+kxi5uxFOCft517R4HapFpGN2YXeNx+2T8IRqyKonsYzLFtyRRsTYJg/ylypVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 20:54:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 20:54:47 +0000
Date: Thu, 22 Feb 2024 15:54:42 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Cezary Rojewski <cezary.rojewski@intel.com>
CC: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <broonie@kernel.org>, <alsa-devel@alsa-project.org>,
 <linux-sound@vger.kernel.org>, <tiwai@suse.com>, <perex@perex.cz>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <tvrtko.ursulin@linux.intel.com>, <intel-gfx@lists.freedesktop.org>,
 <amadeuszx.slawinski@linux.intel.com>,
 <pierre-louis.bossart@linux.intel.com>, <hdegoede@redhat.com>
Subject: Re: [PATCH 1/4] ALSA: hda: Skip i915 initialization on CNL/LKF-based
 platforms
Message-ID: <Zde0kkWX5TrZu-U7@intel.com>
References: <20240222170614.884413-1-cezary.rojewski@intel.com>
 <20240222170614.884413-2-cezary.rojewski@intel.com>
 <ZdeDNT5jCgXAP16Z@intel.com>
 <13fdb738-1a37-47e2-8d06-959bbb85c2b4@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <13fdb738-1a37-47e2-8d06-959bbb85c2b4@intel.com>
X-ClientProxiedBy: BY5PR03CA0003.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB5957:EE_
X-MS-Office365-Filtering-Correlation-Id: d02462d7-1c1b-434b-f9b0-08dc33e88131
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AQibvElPuNud9bIWtnKZpycYeIxd20KDpZxmx51vxzBQKhsrGS1IVPBnhKmUO/JiAacuyFpcVsl2rf2zUOMIMO2gwHUNHGBHGlWBlTbK/j5uLyowpIjGLnCQyz1AnAmLcXl2zQmd1+PSdjJiTU7Vxdim1MwOWgAPDsmuSDoXR9tkJpIxM6P1mW2yy15v6PNo6bgtup+wr8bzK1WuYWwPXskh9Os4TlZxS2QCuoc7unxt/dhCcuhejG5tfNac47MfHlFe+1Ke2ADjS6/V+dmS9qsUyWMQXlQ/X2B/CP7HMPCS5nDfic5AsLEASylwWp2rWG4ZT+HoQQiNrc3TKjRPaIScYIBfATeIdjqBZj9OJEzTnuDL/VdJJZmVLNrWX2BP2ilrz3wTdl+4DnjvDEc5c3l196AJxYA+82UxMnNfITMCAlg5XFF0n8EizYnu2SDcee3/sKnl/OdmTDOxJbEVTEH6qQ6hhTU4QlXn+X6W3n9sGICz2D6zFPZQ+fQPA1kk6a0Ad2aAehDSZlWQdKAOb0sbff6QSoMl2mXRbdYyoQw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?l/8vHEnm7tYVGaTYz+gtzrtpWABnCiCOJqGlOL5M1ij8uyuMxOPZftqG5l?=
 =?iso-8859-1?Q?NX3UowM6P3T2oOh5iYPs8kSJZinkexdoL7IfOzy2PJPt+akyfNduxHYK4V?=
 =?iso-8859-1?Q?37QCCMjSDOCd9gzlFWXBqlZi9zySswr1Lbbs9bHRg+lpx5VpdO5EoFgRLR?=
 =?iso-8859-1?Q?3bmnDoxjjlkNS+c5g0/1oRJheChJ1eKCFHCgh8VaZc8GZi1g9bWbFMlaWv?=
 =?iso-8859-1?Q?eqKDabGnUmZHoUueWTJCUsEjeQMvugD04e+Jr1gz3ey/jJHvm+kZMf062D?=
 =?iso-8859-1?Q?jPsDeffSKbgydu0MZW43LpxOqYj+7zS+qlAQLm+f1WSIaZd/6MTeVQDNbQ?=
 =?iso-8859-1?Q?t0Cilyk4ZoXSTwjVnBGLd1wzQeHi7dP+uiMj6DX/4ahjEJuJwlhJlZyLIa?=
 =?iso-8859-1?Q?VSNZsAJX4s2ELdqAoBTV8uRPSjOv073Y2zCLgjSQCMG3kXxXWURE8DmeDm?=
 =?iso-8859-1?Q?bCQB2qmu61PrE6fhstqjAlRf40dfvNvcYjy/dNY0bVRDxaek1r9tK+FHVX?=
 =?iso-8859-1?Q?DnPCDJshzFILLrnD3mH6gNxix13IpV+MQNjYlpMtYGbjGhUXdbUpTeQI6s?=
 =?iso-8859-1?Q?NqwVSEEn/G4wYv6jUg/apggWoiHPuOzG+FiUjK+yWVOIMmkhngEsvGgCzt?=
 =?iso-8859-1?Q?JiQqaDKK8e/B1qPaTqQNNJ0GWM1hqDdXh/n6yZTAe9EmG8bIPUyprxHqaJ?=
 =?iso-8859-1?Q?JlwpLN4x0MkR4StCSNi0npvqqTwtHFDA1eHnxUKmvD7vDQ2UXAxnAbmqyx?=
 =?iso-8859-1?Q?hU6qMNcQju+jWdcBmCRIDO9fcR0SjUA4t0RKYakwc9UxZdhA3m7KO4XpGY?=
 =?iso-8859-1?Q?2DBi2lE1+Vrguq0Ld/yU8UBgZD+190UQTucpt6gC5p6TBcLEt/qo9IOWeS?=
 =?iso-8859-1?Q?0H4pkHSYfgeTzESpOxXe5+MKNXo8Hk/SgQrqg0WRnACRqkLcfAbdH9BkIY?=
 =?iso-8859-1?Q?L1RJbB+SAO53yGboV6HAyyDZeMERLq21mAI0RsnJD7NKANZVGorxV2UuK/?=
 =?iso-8859-1?Q?25nCXOdsQOxMMEfOI/C0uaJaOH1Whp6HTbBUR+H+G5J9qKTbFTgSlyj8ed?=
 =?iso-8859-1?Q?BcVGozBNk776qsmKpY4jYflRrStmOYYGSxEaVpqqPqOybk7KipJwQ+hBj+?=
 =?iso-8859-1?Q?gAeRG1bBrRc5h6gIyrZBIB19E3dQwKNmjbFRcmasWS7G3kIvJwNyJOFB/l?=
 =?iso-8859-1?Q?Rkikb4cjpMh6Yjw3lO/x5MVLAmOLGnK8SyaLZ6+FROPB0zE1/yj725yRcv?=
 =?iso-8859-1?Q?Dfv3CU34oNaQZfFHHsLqOzU7r1g8cmXZGObyVhIYsj6xmX6xT6khj926pw?=
 =?iso-8859-1?Q?ZKFQYgBkvQEmXO9/Aw/MBssji6TIYLHFBIi1lRwYEhG4Aq3O7S+fJ0ID7J?=
 =?iso-8859-1?Q?hDrJ3VN4t3zVq0bihZr8UTy5tPL/gcnGbnCVX682VTfElfC6wjPFJbwlj5?=
 =?iso-8859-1?Q?vRpvvn0XAvvkV//a1o0oFrHM6jRvzp6qhoFD97uH6aBLLvz01zq4B1wWtZ?=
 =?iso-8859-1?Q?rfCI5d81NMElv8BC/Oh3ptvTaJF6xJ06CTfLagtU7L7CAYnbnX0bWci8ms?=
 =?iso-8859-1?Q?WTZEsqVVIhPsnY6tyfZ9JWVGO5sEBrenXH0chl+sbrZe59RC7E3eK1atUv?=
 =?iso-8859-1?Q?svTmri/aMj8fdW92we/qysbK8Oa6HgMZ9EU1SPyW6HCgz+wIVsB1mc1w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d02462d7-1c1b-434b-f9b0-08dc33e88131
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 20:54:47.4797 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IZwsRaIwIZK4pPO1OX4ze6PxmA8Pi6Z7DUcYogPJ2ZuIfb1U12t+/HyfIqWd6CQXov1OitneUs6Q2dTujhgnAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
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

On Thu, Feb 22, 2024 at 06:53:12PM +0100, Cezary Rojewski wrote:
> On 2024-02-22 6:24 PM, Ville Syrj�l� wrote:
> > On Thu, Feb 22, 2024 at 06:06:11PM +0100, Cezary Rojewski wrote:
> > > Commit 78f613ba1efb ("drm/i915: finish removal of CNL") and its friends
> > > removed support for i915 for all CNL-based platforms. HDAudio library,
> > > however, still treats such platforms as valid candidates for i915
> > > binding. Update query mechanism to reflect changes made in drm tree.
> > > 
> > > At the same time, i915 support for LKF-based platforms has not been
> > > provided so remove them from valid binding candidates.
> 
> ...
> 
> > > @@ -127,15 +128,26 @@ static int i915_component_master_match(struct device *dev, int subcomponent,
> > >   /* check whether Intel graphics is present and reachable */
> > >   static int i915_gfx_present(struct pci_dev *hdac_pci)
> > >   {
> > > +	/* List of known platforms with no i915 support. */
> > > +	static struct pci_device_id denylist[] = {
> > > +		INTEL_CNL_IDS(NULL),
> > > +		INTEL_LKF_IDS(NULL),
> > > +		{ 0 }
> > > +	};
> > 
> > I thought these don't actually exist in the wild?
> 
> To my knowledge the opposite is true - while LKFs were shipped in limited
> number, they still were. I did ask few weeks ago my friends from Windows
> side about the support and they're still running full-scopes on HDMI
> endpoints on LKF platforms in their CIs. It seems the drm support is there
> though. Once you re-boot to linux we get -19 during probe().
> 
> In regard to CNL, the commit removing CNL-support left the IDs intact what's

I would prefer to go the other way around and remove the unused/unsupported
IDs entirely and for good.

> very handy to us - we have a lot of spare CNL boards for our validation
> purposes - CNL-based AudioDSP spans multiple platforms, e.g.:
> CNL/CFL/WHL/CML. The number of newer boards is lower, unfortunately.

Well, I do see your point here and you are not asking for us to add gfx
support back, but only help to have this protection here.

However I'm afraid that these entries in the list would only cause
further confusion. Couldn't they get defined inside your .c directly as
a const deny_list? so when we go there and remove the missing bits
of CNL we don't conflict or cause undersired issues to you.

> 
> 
> Kind regards,
> Czarek
