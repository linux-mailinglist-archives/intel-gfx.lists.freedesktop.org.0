Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB567854ABD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 14:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88CE10E268;
	Wed, 14 Feb 2024 13:51:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8YG++oo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CCB410E268
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 13:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707918700; x=1739454700;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=9LiPhjFV3EbEQecTvAcGm4T7iv3AUeRMFDdre6Zhx7g=;
 b=O8YG++oo9GppvUJo828mlq6VYyXPttgHCWdqgzzmYAglWUsPEAL9C9YZ
 8tV4CDu7VPzEUC1729nWNQ9vuPMShjMd36LwL3pWYicZ2g4WhQh16AIEv
 eULtrT9RgykQuSMuQZAItSN6jqfNKUlLdltsHQr3GeigV64RzJ5MFAoF+
 0wZUcE14EeNkHdf4gEfEr/FGfOS/Z+iwpFZBY0qrLIaCQSIKYu70c+xE4
 CT4TKtiqR6jR5nA9uSIDRERTWZ/D2n1crcEMRYJneBeL0YfWjuxBDHpMG
 yvBxwQH+ULrpLoEq0JuRXGJVQyHoJ6UGRoTZsAZb33ceoUUwSEygZiX5Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="5738051"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="5738051"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 05:51:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="34252818"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 05:51:39 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 05:51:37 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 05:51:37 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 05:51:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eAOhgvEeibdipsTAyzzQKsxLsYEUf7uKKUHIgfH8PhuwDZY9gkwvhRlOvbdq2WJFLgpWS0bd/sTsasXWYXQyM1VHARi0Q14+RysVKG0qRweunxwazXmYSn+mAU3U5wpQWEwlSw4Q98FGm9DqvuQTBW0aCLyB9wBEb9Jsg0u3OLjVi6ar73FiCM+yledjhLcSmFt+SGfvlVo3WqJ+zM1BZjKtwupO59tvu1ltcznFCJakcDuSSULKxrjxDT5/ffNzgERlRZCfyCkgKBP+AL+k3cKY1ncxyL/sdeAw/LBIl+e7fGdEcsUek6DsclHAwNsdxhB7xVnk6zAUIeDiaSlryA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V+HrkiUAn+kFPpsQfQ8dL6AeJwzU6FXBl7hbL6CCFHo=;
 b=Vho6R8dulL4j6Ft0y40nEzU/bHic5y38I+dj2eh1jRpJgi7SvMRv7swUQPNgRYjJkUof9ZzOiX2MxyuF7+WaKL3phlW1BsD0J8IGALU4PHmwrJUM/kI1rKm/aQlrQqZMiB+lP5GBciF5gp4wysetPEkgX2B2gRoINuf/1sqj2AEXAm3KYhsFsWZo2hjFEPrRYgd1cYbVABk53GHHY/zIgtIBDy5iCoKK+8g0+Q/vUq9/ZCimfKpMqML4e4UlPRN3mmznNCdQ6DYpg5HD3dO5GLys1RuxF52bj5xH7nhf9Da3Xulv6fWxa1REF0slxenyLMaU/wcSSVu0SqGmYU/DjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN2PR11MB4581.namprd11.prod.outlook.com (2603:10b6:208:26c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.26; Wed, 14 Feb
 2024 13:51:35 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 13:51:35 +0000
Date: Wed, 14 Feb 2024 08:51:31 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
Message-ID: <ZczFY-wd7oSVlESa@intel.com>
References: <20240212125011.66174-1-uma.shankar@intel.com>
 <ZcuC56_5pZerqAV0@intel.com>
 <DM4PR11MB6360DD7D7B6557C5D0AEAE97F44F2@DM4PR11MB6360.namprd11.prod.outlook.com>
 <ZcuI9vcmQEy+kvpR@intel.com> <ZcuL5K-NtXXHkuUq@intel.com>
 <ZcyOOj1twhuoKTPj@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZcyOOj1twhuoKTPj@intel.com>
X-ClientProxiedBy: SJ0PR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN2PR11MB4581:EE_
X-MS-Office365-Filtering-Correlation-Id: aa34e541-e55c-4469-7fed-08dc2d640f13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1JpAEUQuA2RDV0wGa64yCOs00F3Wpxf15bS7cMY3PcakvgcnFidA+OEhJ4+wIHs9o5RHgpvKlbgB+Rn6JjCGlZpcUMByCSrYIGRfWQW88kYBwuU4DDO6TMpVyYwOCAPlPIb8nHGjKDLp17c/dLPU0At7T8Dd1nqgRWzYBjMyQsdjTRcZtW4r7rqU7db9ldmQ6zkr55QSQ2c0njpLoRUd12DNVXTXHcFFKmE65UjCmtzt4VIxtUJT9aE1MJRo+7bKFqzL7ebxtPXbdFuWWgDsAd8tE/la+GFK3iVIuqwJy/UlX/gnPikXq3B9wrV5J41IPVIJerSEKFmEzNyUUN886pgS3lSW31nqY6+ao42eLgO/xzZjhWi3fe+tU3rOw3WyjzYiNxNyKkO52kzoulV1GF7wpXRVYHIj1GS99l+tQ3yR3Nr+Nnxmgx8Ads6MWbOlYbSSOGriHVIOQ7cQljjJpLxbLIE+w8hFrU81mJonQovObCWtgrBehmT60SsVkiuYrLcUVW6SyjHPvaWlG5e8gEEqAbxmQPX3zxaWCWaynzthfL9bQ8SGShAcBQC2rN0P
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(376002)(396003)(39860400002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(5660300002)(44832011)(8936002)(6862004)(8676002)(4326008)(66556008)(66946007)(66476007)(30864003)(2906002)(83380400001)(66574015)(26005)(82960400001)(36756003)(38100700002)(86362001)(6636002)(54906003)(316002)(37006003)(6666004)(2616005)(41300700001)(6512007)(478600001)(53546011)(6506007)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?/jjFUip3+BSH5MrOcZuuAaRUiS61xkNcG5+h7evt6S8yWFbhyc9fVUuCC5?=
 =?iso-8859-1?Q?SHd4t0eVhMmcKoe5rlEMqp94aXDGCYJxJEbJqdMFx39VjK8bTlnOWNos5f?=
 =?iso-8859-1?Q?YhjTGe1fDs5PHhJVRfBWe9M8MR6mdT3g7RhAavX5o/DtoBz6x9ufkQsHwA?=
 =?iso-8859-1?Q?yyLu4QpZOYrZqToYqxqHs2Y9wJZYibZu7uzmdotQBURNgqDlw9V1tojv+g?=
 =?iso-8859-1?Q?fJQHyAP4nHnjzEzGF72PRbzuSegwXxhfO70opunEDZuaMrpgFuGQvbHfHB?=
 =?iso-8859-1?Q?QO7SvkJ7ABi+6n3a5g9Wu170MkVs/c7y3FoBKoL9K01g9Jzed1UPa4j/qf?=
 =?iso-8859-1?Q?oYG2tHqsDmHPxeeRLFUQ7EPaR5mhHDjmBjh9EcZT0XwBKw+jf9qL1O+XtM?=
 =?iso-8859-1?Q?VIgnuBUMF5byN81qS6wOut+09NAeoWwDVmX2EAHqtWmUzFKCbeF1HV8IEK?=
 =?iso-8859-1?Q?PUFffVBWpn27jnh1mxoTToWIrmbT9OlHtvOvuTvccwxY/+ALLk9JnLWgGh?=
 =?iso-8859-1?Q?YbuvOFqbwKitoKRVk/kWJYLM8GWlzKT/T7z+tZGJ/3eQm8d0ZcNQaNNDb4?=
 =?iso-8859-1?Q?qQvwWLewoqqCfnoHCQX+oDojFa8wndYe8Uxt0hCzbdjmt2+2NG6Vgiu70A?=
 =?iso-8859-1?Q?SPGcdPoZVcKv0W25bAgwgL/J2VokU3Ay0sJAhmK3LLFYGDLa1wAtpVlnd7?=
 =?iso-8859-1?Q?E5Fxp2dtdt9gjGuWnWiIk/OvMaanJU2hi1ohSSp56nhM9dprNyd329TCnu?=
 =?iso-8859-1?Q?b8NGwZCj/7bVtVEWhhhwYMU8rMCuPTX7VgerpGfdp+XH1+4QTyvQ6pVyNW?=
 =?iso-8859-1?Q?2fSD8ABLHB1W3tkRQqFUvnaKe8YSzVAeonB97ifPPcXweBnTzsw/fjWr5g?=
 =?iso-8859-1?Q?q2Z6xGNqMCXt5sBd4Dz5bCGELmh/Qik30X9I+IiQqF8UNTEvpPX8r+34gW?=
 =?iso-8859-1?Q?x35wV0s25aVHFTEFN5Z3kxhUXMrnh8AIKuDu+ipU1I+DfWuslZfpzR1gOv?=
 =?iso-8859-1?Q?kv3SIyPXQTk8Ih0sMy+ZepHLhzzYGMfAm+re5/LXDQUaOOh8uVGcge7EqC?=
 =?iso-8859-1?Q?jXon/NbWLE3DPPjpvdUeZtlTtbAoo6Z2OxDrActEJd/MdAUocbOzzYuRcI?=
 =?iso-8859-1?Q?rnacA6R8+HOlgZJ5xnSFhaAkbGuUT+zdpiVCt7+You+VNMIpsaWI+lstwN?=
 =?iso-8859-1?Q?DjPyz8u9kzAUtUyVT0WsMZKnbQxbaQLYBusIAiq4O1sHaPMIsqoXXAzT1U?=
 =?iso-8859-1?Q?1r4umrXX/qPfpCS1WVj8GNsNeuPPOcctXoAMGLwkWGky5qZrlvNUdUWeYi?=
 =?iso-8859-1?Q?wHhtW+mRj2nbux8yAT6445ZrdBB58R7H0kQR7VCA/ZWr0120YqBh3Kdlsw?=
 =?iso-8859-1?Q?icXhhrC1WAbzukmENbCu5QNcIhpWtb9SrVdPoC7d8Sfv3wzS4hACRv6Ik2?=
 =?iso-8859-1?Q?MxrmnQQaN4LavwtO5UYe7deeIWjZmpPWlwA0VBd94gHPNLsUfYJZnecO0a?=
 =?iso-8859-1?Q?2MYMVnvIsC8tejf6TX1Dra9OlCDGn6j2ZUetXl6Q55hGsEWkQM/OSyLYP+?=
 =?iso-8859-1?Q?s0uuoORqMpmzjhOLmDarAbOMSSUlvCI0ywUPBHj4TqBq1/XoA8BbrOKqhu?=
 =?iso-8859-1?Q?xmwMMO9on1mCZXwQt8GrnMJ1Qv4DXtHwYd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa34e541-e55c-4469-7fed-08dc2d640f13
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 13:51:35.5235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R1crYVMZaE1LwMoirBfwQdDzTdkzcdI93cUGTiLqtH/MK1JSWUWnGKrvdvEhAbv/9w5RfnIReJIC/yeAvFKU2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4581
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

On Wed, Feb 14, 2024 at 11:56:10AM +0200, Lisovskiy, Stanislav wrote:
> On Tue, Feb 13, 2024 at 10:33:56AM -0500, Rodrigo Vivi wrote:
> > On Tue, Feb 13, 2024 at 05:21:26PM +0200, Lisovskiy, Stanislav wrote:
> > > On Tue, Feb 13, 2024 at 05:11:37PM +0200, Shankar, Uma wrote:
> > > > 
> > > > 
> > > > > -----Original Message-----
> > > > > From: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > > Sent: Tuesday, February 13, 2024 8:26 PM
> > > > > To: Shankar, Uma <uma.shankar@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org; Lisovskiy, Stanislav
> > > > > <stanislav.lisovskiy@intel.com>; ville.syrjala@linux.intel.com;
> > > > > jani.nikula@linux.intel.com
> > > > > Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
> > > > > 
> > > > > On Mon, Feb 12, 2024 at 06:20:11PM +0530, Uma Shankar wrote:
> > > > > > From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > >
> > > > > > For validation purposes, it might be useful to be able to force
> > > > > > Bigjoiner mode, even if current dotclock/resolution do not require
> > > > > > that.
> > > > > > Lets add such to option to debugfs.
> > > > > >
> > > > > > v2: - Apparently intel_dp_need_bigjoiner can't be used, when
> > > > > >       debugfs entry is created so lets just check manually
> > > > > >       the DISPLAY_VER.
> > > > > >
> > > > > > v3: - Switch to intel_connector from drm_connector(Jani Nikula)
> > > > > >     - Remove redundant modeset lock(Jani Nikula)
> > > > > >     - Use kstrtobool_from_user for boolean value(Jani Nikula)
> > > > > >
> > > > > > v4: - Apply the changes to proper function(Jani Nikula)
> > > > > >
> > > > > > v5: - Removed unnecessary check from i915_bigjoiner_enable_show
> > > > > >       (Ville Syrjälä)
> > > > > >     - Added eDP connector check to intel_connector_debugfs_add
> > > > > >       (Ville Syrjälä)
> > > > > >     - Removed debug message in order to prevent dmesg flooding
> > > > > >       (Ville Syrjälä)
> > > > > >
> > > > > > v6: - Assume now always that m->private is intel_connector
> > > > > >     - Fixed other similar conflicts
> > > > > >
> > > > > > v7: - Move bigjoiner force option to intel_connector(Ville Syrjälä)
> > > > > >     - Use DEFINE_SHOW_STORE_ATTRIBUTE instead of defining fops
> > > > > >       manually.(Ville Syrjälä)
> > > > > >
> > > > > > v8: - Pass intel_connector to debugfs_create_file, instead of drm_connector.
> > > > > >       (Jani Nikula)
> > > > > >
> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > 
> > > > > please remind to sign-off when sending someone else's patch.
> > > > 
> > > > Oh yeah, sorry missed it. Was filling in for Stan while he was OOO.
> > > > @Lisovskiy, Stanislav Please address rest of the comments raised by Rodrigo.
> > > 
> > > Sorry, had that pushed already in the morning, since it was Acked and I was asked
> > > to do it asap.
> > 
> > no worries. if you are confident that the _show function magically works I trust
> > your tests more then my eyes and greps.
> 
> Well _definitely_ it should not be about trust, confidence or beliefs :)
> 
> See:
> 
> #define DEFINE_SHOW_STORE_ATTRIBUTE(__name)				\
> static int __name ## _open(struct inode *inode, struct file *file)	\
> {									\
> 	return single_open(file, __name ## _show, inode->i_private);	\

                                           ^
this was the part that I was missing! Thanks for pointing that out.
I was looking the definition below, but was missing the jump from the
_open to _show... I hate macro indirections.

Thanks pointing that out.

> }									\
> 									\
> static const struct file_operations __name ## _fops = {			\
> 	.owner		= THIS_MODULE,					\
> 	.open		= __name ## _open,				\
> 	.read		= seq_read,					\
> 	.write		= __name ## _write,				\
> 	.llseek		= seq_lseek,					\
> 	.release	= single_release,				\
> }
> 
> In the patch:
> 
> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
> +
> 
> means it will use i915_bigjoiner_enable_show function.
> 
> which is defined just as it expects in the patch:
> 
> +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +	struct drm_crtc *crtc;
> +
> +	crtc = connector->base.state->crtc;
> +	if (connector->base.status != connector_status_connected || !crtc)
> +		return -ENODEV;
> +
> +	seq_printf(m, "Bigjoiner enable: %d\n", connector->force_bigjoiner_enable);
> +
> +	return 0;
> +}
> +
> 
> 
> So I don't see any reason here, why it shouldn't work.
> If you do, please tell - we need to fix this then.
> 
> Stan
> 
> 
> > 
> > > 
> > > Stan
> > > 
> > > > 
> > > > Regards,
> > > > Uma Shankar
> > > > 
> > > > > > ---
> > > > > >  .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
> > > > > >  .../drm/i915/display/intel_display_types.h    |  2 +
> > > > > >  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
> > > > > >  3 files changed, 52 insertions(+), 1 deletion(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > > > index 6f2d13c8ccf7..a962b48bcf13 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > > > > @@ -1391,6 +1391,20 @@ out:	drm_modeset_unlock(&i915-
> > > > > >drm.mode_config.connection_mutex);
> > > > > >  	return ret;
> > > > > >  }
> > > > > >
> > > > > > +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> > > > > > +{
> > > > > > +	struct intel_connector *connector = m->private;
> > > > > > +	struct drm_crtc *crtc;
> > > > > > +
> > > > > > +	crtc = connector->base.state->crtc;
> > > > > > +	if (connector->base.status != connector_status_connected || !crtc)
> > > > > > +		return -ENODEV;
> > > > > > +
> > > > > > +	seq_printf(m, "Bigjoiner enable: %d\n",
> > > > > > +connector->force_bigjoiner_enable);
> > > > > 
> > > > > probably better with a yes_or_no string?
> > > > > 
> > > > > > +
> > > > > > +	return 0;
> > > > > > +}
> > > > > > +
> > > > > >  static ssize_t i915_dsc_output_format_write(struct file *file,
> > > > > >  					    const char __user *ubuf,
> > > > > >  					    size_t len, loff_t *offp)
> > > > > > @@ -1412,6 +1426,30 @@ static ssize_t i915_dsc_output_format_write(struct
> > > > > file *file,
> > > > > >  	return len;
> > > > > >  }
> > > > > >
> > > > > > +static ssize_t i915_bigjoiner_enable_write(struct file *file,
> > > > > > +					   const char __user *ubuf,
> > > > > > +					   size_t len, loff_t *offp)
> > > > > > +{
> > > > > > +	struct seq_file *m = file->private_data;
> > > > > > +	struct intel_connector *connector = m->private;
> > > > > > +	struct drm_crtc *crtc;
> > > > > > +	bool bigjoiner_en = 0;
> > > > > > +	int ret;
> > > > > > +
> > > > > > +	crtc = connector->base.state->crtc;
> > > > > > +	if (connector->base.status != connector_status_connected || !crtc)
> > > > > > +		return -ENODEV;
> > > > > > +
> > > > > > +	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> > > > > > +	if (ret < 0)
> > > > > > +		return ret;
> > > > > > +
> > > > > > +	connector->force_bigjoiner_enable = bigjoiner_en;
> > > > > > +	*offp += len;
> > > > > > +
> > > > > > +	return len;
> > > > > > +}
> > > > > > +
> > > > > >  static int i915_dsc_output_format_open(struct inode *inode,
> > > > > >  				       struct file *file)
> > > > > >  {
> > > > > > @@ -1505,6 +1543,8 @@ static const struct file_operations
> > > > > i915_dsc_fractional_bpp_fops = {
> > > > > >  	.write = i915_dsc_fractional_bpp_write  };
> > > > > >
> > > > > > +DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
> > > > > 
> > > > > I don't believe this macro here is using the defined _show function, but maybe I'm
> > > > > not following that very well since this macro is not widely used.
> > > > > 
> > > > > What about using DEFINE_SIMPLE_ATTRIBUTE instead?
> > > > > 
> > > > > > +
> > > > > >  /*
> > > > > >   * Returns the Current CRTC's bpc.
> > > > > >   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> > > > > > @@ -1586,6 +1626,13 @@ void intel_connector_debugfs_add(struct
> > > > > intel_connector *connector)
> > > > > >  				    connector, &i915_dsc_fractional_bpp_fops);
> > > > > >  	}
> > > > > >
> > > > > > +	if (DISPLAY_VER(i915) >= 11 &&
> > > > > > +	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> > > > > > +	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> > > > > 
> > > > > I wish we had a simpler check, but I couldn't find. :/
> > > > > 
> > > > > > +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> > > > > > +				    connector, &i915_bigjoiner_enable_fops);
> > > > > > +	}
> > > > > > +
> > > > > >  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
> > > > > >  	    connector_type == DRM_MODE_CONNECTOR_eDP ||
> > > > > >  	    connector_type == DRM_MODE_CONNECTOR_DisplayPort || diff --git
> > > > > > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > index 01eb6e4e6049..0d4012097db1 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > > > @@ -626,6 +626,8 @@ struct intel_connector {
> > > > > >
> > > > > >  	struct intel_dp *mst_port;
> > > > > >
> > > > > > +	bool force_bigjoiner_enable;
> > > > > > +
> > > > > >  	struct {
> > > > > >  		struct drm_dp_aux *dsc_decompression_aux;
> > > > > >  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > index 5045c34a16be..217196196e50 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > > @@ -1205,11 +1205,13 @@ bool intel_dp_need_bigjoiner(struct intel_dp
> > > > > *intel_dp,
> > > > > >  			     int hdisplay, int clock)
> > > > > >  {
> > > > > >  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > > > +	struct intel_connector *connector = intel_dp->attached_connector;
> > > > > >
> > > > > >  	if (!intel_dp_can_bigjoiner(intel_dp))
> > > > > >  		return false;
> > > > > >
> > > > > > -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> > > > > > +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> > > > > > +	       connector->force_bigjoiner_enable;
> > > > > 
> > > > > I'm just not comfortable with the magic _show of that macro and would prefer a
> > > > > more simple and straight forward and widely used version.
> > > > > 
> > > > > Other then that everything else looks good to me.
> > > > > 
> > > > > Thanks,
> > > > > Rodrigo.
> > > > > 
> > > > > >  }
> > > > > >
> > > > > >  static enum drm_mode_status
> > > > > > --
> > > > > > 2.42.0
> > > > > >
