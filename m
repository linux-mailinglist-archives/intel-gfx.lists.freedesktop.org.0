Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4538ADEE54
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FCC10E844;
	Wed, 18 Jun 2025 13:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c82Bt8eH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF6110E83E;
 Wed, 18 Jun 2025 13:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750254519; x=1781790519;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Jpl7WRCxayXirZtbaawlNfZkH0wQtls2mQ+/XUTx/BQ=;
 b=c82Bt8eHXHrtLfJNUdd67Q/iYe6q/4nAZA3D2qelzTjMlSMYRO/20AGR
 nv2/WlCHvXtst/QiylWbQjn2hLvorQMEbyaSYNFleia7geEgCjofOIIGh
 9p7eTaQmBz+m4k9DIdVjh4WHTe3kSC/t0R0pjbmw+a5aiSe0QWitliVnT
 199WTOzqBeCMGGromwtHEROgisrKQXhklF2SBCu/cdw1hPrJZkXtMOX15
 xfdYhNqNFOPnL/N/gJ4NQnIAvMwLg1W+3LA9421b3ht2cSa1PubYWy+lI
 +9ke31BHUDUHiBwYJ/b27ea6KxJVpqez9qxkYBzRsf7FXFzYzkQgqCWmu g==;
X-CSE-ConnectionGUID: tBVX7rmKRu+3Lwne/Hoyyw==
X-CSE-MsgGUID: mZAeD6SNRvCkGjBH2uhosQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="63826020"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="63826020"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:48:39 -0700
X-CSE-ConnectionGUID: SULczfz+QrWEC8u3moQ5KQ==
X-CSE-MsgGUID: CcbiOvomQ82mYgyTYKJJww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="180639117"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:48:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:48:38 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:48:38 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.49)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:48:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=audaJkSlOWhZmjCk80vNsT4qYq8RbFgg+MfxlkshuLMOWXgZa1jEATOAqyaDH21VHwrSyeKk7ChL5X05ulGOKAv8MAiz00eDbCb3Pepjt5NIO4eK0C3fInDVQCmbvOS2nurq1RavS3KOmdPTXeX/ItUTU5O0jSJ7Xshy94VnR2YK4A/huKXl2doaJLwBxk1OBuyK5/QArMk5voSHDuec0cXXvIIhl5vu8lX8tfJURX9vVoaYuWG26ealBfeoNZmBpTpmEuEB7o2GEm5YaqOGw6lYIyhdwXOzxBO+KVhd3XrO/yZg4opAROpHLmvLk+aniytv6A3zX1il756AVplExQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tCu7aYNU4NVAHmtI2TeOwBkW2OJgKRdH9Bik94k7mXI=;
 b=fJ+hgASB33H8NZw9cuya8j3Z08zaT5gj55itaMtPpo+fEup4ZoOg5xeKsNiei2xOJmCBFFXxOODrZeloa6AI8+aVlE8iKYa1TZ/inlL4TihxETF76UJoK80+EyCu6c7VRlqKsz4GRFSmBtaxYD+kXKU9w+odsUE6zLqNxTB2VwNs6PgDmQY9M7KBTil6Ni1SeGHgyDZpJiIeREg7QN9PQxNcCqWI3SGa5Mtk4R/CO91XnjoOVniQwpftYdUb0p5e4CD1fMQUUa8c/vaiDT/pbfhnXGcviLz/ok7kzFS2adhmiVoRRYdNqYdYE65+i9cs6zxqmlOP1XXrIWyaK/Uw8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by BL3PR11MB6387.namprd11.prod.outlook.com (2603:10b6:208:3b7::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 13:48:21 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 13:48:21 +0000
Date: Wed, 18 Jun 2025 09:48:17 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/display: switch to struct drm_device based
 pcode interface
Message-ID: <aFLDoTaYN8nETN-q@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <f51970f35d49670775dbcad468435b4f637bafb2.1749119274.git.jani.nikula@intel.com>
 <aFCC9hEiu_LQMPoM@intel.com>
 <8ee6ac6ffe87af00aedb5a7f18f402228f892be6@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8ee6ac6ffe87af00aedb5a7f18f402228f892be6@intel.com>
X-ClientProxiedBy: SJ0PR13CA0188.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::13) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|BL3PR11MB6387:EE_
X-MS-Office365-Filtering-Correlation-Id: 2769bcb4-771e-4bfe-376d-08ddae6ec982
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sndLVKhGKaZQe9YVXLH9SP8g48urmypJB/pk76e9qgTWPgItBDiW/h9PAwks?=
 =?us-ascii?Q?4brzXGdOMGxEjRMDpjkEMPc0p9W5ReM2uBhBQNHYw+0NSZRjPd5tefTAkwEP?=
 =?us-ascii?Q?oX8xNB8+p12YQsSRJV2V5Uzz5Y1x1GwSFhIx3jxeptlL7ldQbXVsMllbPz96?=
 =?us-ascii?Q?ZP2eWeVDA5/mBBvBfcwIK0Pka9IX1no/6Ncb9wI+0qcBwC8Td8U+xMWYk+jL?=
 =?us-ascii?Q?fBYRMF8G6Gt7hXL+9AZr7d64yatsI6SHUD0+tbxnEYbmXL1+HFf9NmqknU7w?=
 =?us-ascii?Q?usNlKQnfZh42jcEbvxttWvEKHr9jPgW0DGeGxIUZVbgCWYnj0s8X3WLMHG6w?=
 =?us-ascii?Q?EPG3zFZDBM4Ix3wrkkgG8uwcGm8Kbv3gKaEo7tccFPkAD1jsxz0Q2MIUVLT1?=
 =?us-ascii?Q?2AKIjEs1VXMhZUTNJOI8MZY6CHfERy/DiItyxJga0SGTKjp00ftMvdMW0tja?=
 =?us-ascii?Q?aKHWWbRr0PV0k1XQ9J5YBbDjJEAKXq/QnaJlxR2eX1FSBkNpXfPw3e7feA5F?=
 =?us-ascii?Q?fIBrMbGYsIBM6zxDflfsfsBK4mZRCO4k8euI1cnGSVNdrH0m+5UNJvffh8hN?=
 =?us-ascii?Q?feva++G0vBAvoPGzj5eHKUI02vNKaVrrdWYM3EkU38IqgL36JWxdbg4qZgsp?=
 =?us-ascii?Q?UJlrJSaMybACYcJix2CnZFBzZi390LeBRNFQmujoxzjVC2G1X+FRaeMUrIMC?=
 =?us-ascii?Q?hc6jMtpOZOpanjvijHsMyDq16iOz/oA+CF3L1Gsmup0Wz3sEjxPxGQXt8wKg?=
 =?us-ascii?Q?ix8u/9UcHYwYwEdhD34+trEhNiQpq+37YvJE5KEEpMmGVIkc1E6EuIJjlq4Q?=
 =?us-ascii?Q?H0BUPvyPLI/qYldcZM8LiTtWAV3zV+738zGQyp3LeYkc3tyNWCrUWnCJaKkO?=
 =?us-ascii?Q?w+uyG4km4+LS68PLZryaMnvWeJXQEHn/GBPSgfHH9PVgZhUX2FJNgsTofMnl?=
 =?us-ascii?Q?uPCufvlh3LyoC+HQ1N5RtajO7Zjj4Ng52Ql94ijRYMen/inL2XBhs2s1TTya?=
 =?us-ascii?Q?22WjQJMim9YQRCfF038kEB74rLV6bWsAM2u7E2zYK3hZjaPOXXoIDFF1Cjkd?=
 =?us-ascii?Q?v+Nw0aWHkCrg6QciuPPCCJtenSCWR44gT8vwvGh6Fe/Wypl+pQ5M1r0J02tq?=
 =?us-ascii?Q?f3jyDwVhaLXJ1i++9ntzyfbM1+Yq34Lp1PE5RwMHub7DrRbnGFeJgK92rKxo?=
 =?us-ascii?Q?279ZhUcNmrnBB34rUo3f7rtzIXRLrwYptzu2J8z+BGon7i5VHb2wHquGRJ+w?=
 =?us-ascii?Q?OJr9u9wosySLGemS9+nMtC3uquSihKUYls1HiVXUXnzSCEkgGi6TAMBkz3Mx?=
 =?us-ascii?Q?jkrGehkfSIy2FudWqNB237TwDaZWhuo4ExvtrSuaxdl+Jc2hQ9rxY0Tn4bz9?=
 =?us-ascii?Q?ysgf5iBQTW6+JMTZ1cwcJRH7DY08Zf4Gn0Uscgri7SpI3iHt3V1vKynJcKR7?=
 =?us-ascii?Q?WDpPo1AK2Y8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KHs+yrHoE6R+dkOzPiSQpC4qOBQUCk5mcp6WupJ9YINoyMVnn00zKZeCuOCr?=
 =?us-ascii?Q?CyqX1FGQIBvd37VEyam3QXl8YgHz1WuhntcHoPULBoq4vs5C13re4rYPJDmR?=
 =?us-ascii?Q?71zu3jvkwG3VxhdP1oOFWSfH2coYNqwsJ08Or51BRceEwm1y3ftPxVYTHbVD?=
 =?us-ascii?Q?ZORGQx/oifEmNzpZmRaEivMU5dHZ0AmGoG+sXfks45tM19W0rBKIAds2Pry9?=
 =?us-ascii?Q?WGJ9lvFckrobovZzkea8Uyn4R+nWslvFGi639iGxejuRyuzBm+e/8JMbb/iZ?=
 =?us-ascii?Q?EOMiDkm6MRPn3IDuRcekCPsbYT0MUALg/47UpV3SCHJs3AY3FtBbeU5dpavj?=
 =?us-ascii?Q?1K5SWO09R3dkJOuxpKP6Out5R+qbeUz+52Ew6+1kNeConYqzzahaM+tb9M3H?=
 =?us-ascii?Q?oOyOuOaIYXaxMzUSSGzuUqOXsnIpEwhkpjWbVxbVsFY1M/GTBlv4Qv5NdupX?=
 =?us-ascii?Q?kZZXPh3QeM00e7pF/q07eTT7lbH4wLE2EHUidLMSZZBrRDKFILaMrEK3dpwu?=
 =?us-ascii?Q?hiy+rlArJ4qGUgVFSa6QMMMQrzy95hsxDZCP/EpWCu4mSYRSFdNKiwBQAaWL?=
 =?us-ascii?Q?zbDItSkgeRD+WrT/AvC23qhx2T4qLuN5CJYjQtqzzvhXiiSxdPCM90BskUy9?=
 =?us-ascii?Q?w1L7pfy/BZjk9+PEjYuHDtn/uYfxWLwrBc39BYPcKyPCnyB9V9vWqmUY/SRx?=
 =?us-ascii?Q?V3DLKiQFEXs/a8+DZDIt0bjk06movG/FrIStzUOa219DXv+TeRVGwv71k+8V?=
 =?us-ascii?Q?yhoZVLGCi61Fbh+pp/OtEd3slkX/2cnvJy1FPyNmlvBkwyu3vo+S6YlkUAVe?=
 =?us-ascii?Q?0fbcfTGPRBUqYu7aKAuCZDKBIMGIRgqOiRvNyDfSy5RNrRAlMWm80+WgsQPl?=
 =?us-ascii?Q?fWpsGx5EKqKPRirMx6FokcibK168AYX0Ruzmyskx8YstBe/eXtWNqy13Y+Q1?=
 =?us-ascii?Q?aPQ4EaZZlOFMYpeO9IPLdk/RaW707GxKAEaPxXKgo81QM+vjU/M6VCC2zuI2?=
 =?us-ascii?Q?K73PO/cxQHf6pOyOc7Zp3PlLJYc+1cvLuEzPnkA7ymGX+8z4kme3XNxuFrtf?=
 =?us-ascii?Q?X5zNSnTV+hS2lGoCO9/3oBEiMTv9IDYNOQjRwz849N4snMQm6PTsf/jgCI5n?=
 =?us-ascii?Q?I6fsY9coTaQCrvHlzG/tDf8eOk9XBW0bNZKjFLVLEw+9CgUBati06ggwPZEm?=
 =?us-ascii?Q?aYNz7FkkDoKITMQWpX62PWmmD7c4n8j/RmnUq6RYN9cDGaIrSqYPnacZioTp?=
 =?us-ascii?Q?jpXms/0zJ5t2gyJEd1tzWVeSnqOIqq0jp5HevTj3NQlqGw83WMMuHpyhKMv4?=
 =?us-ascii?Q?Ujd40Gmtw0Jhomky9yTRl8E2qzwi+fyZ2yZYl1WtbhtwiKI4Y5RThGyKd+D+?=
 =?us-ascii?Q?pIFg3bC0E4P4F/rTCXAHgXEvKNI9XP9Q0fBd+sZrXf0EhwgYVWjdqKgeH9bZ?=
 =?us-ascii?Q?mQnfEs8ZTouhxAyd1fNHzzeviJ6T8jU9wpCsQrBv12h0oN4FGM6dj7jSbeax?=
 =?us-ascii?Q?AJdfUFN6fwGOsQe/h4XMISSjthl4ocNlSEJDlcnicER1e9jtxi98KFnABytx?=
 =?us-ascii?Q?PPyu0CUKBKxZqW7mVW+/2JC5pVzGLRdIktuqlzkC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2769bcb4-771e-4bfe-376d-08ddae6ec982
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:48:20.9614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PJ9PhHfEBeQIAmKnDsZ6wTHS8Yx7qMxHLLgP0ScUlcTeizS2mhJ00VGIYTb54KJ9o4w213HXRqUPPKe5dfEyJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6387
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

On Tue, Jun 17, 2025 at 11:29:54AM +0300, Jani Nikula wrote:
> On Mon, 16 Jun 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Thu, Jun 05, 2025 at 01:29:36PM +0300, Jani Nikula wrote:
> >> With the struct drm_device based pcode interface in place in both i915
> >> and xe, we can switch display code to use that, and ditch a number of
> >> struct drm_i915_private uses. Also drop the dependency on i915_drv.h
> >> from a couple of files.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/hsw_ips.c        | 13 ++---
> >>  drivers/gpu/drm/i915/display/intel_bw.c       | 23 ++++----
> >>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 56 +++++++++----------
> >>  .../drm/i915/display/intel_display_power.c    |  4 +-
> >>  .../i915/display/intel_display_power_well.c   |  4 +-
> >>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
> >>  drivers/gpu/drm/i915/display/skl_watermark.c  | 30 +++++-----
> >>  7 files changed, 58 insertions(+), 75 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> >> index 4307e2ed03d9..19b020a4ec22 100644
> >> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> >> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> >> @@ -5,8 +5,9 @@
> >>  
> >>  #include <linux/debugfs.h>
> >>  
> >> +#include <drm/drm_print.h>
> >
> > I'm afraid I didn't understood why you are adding these includes here
> > and also below...
> 
> While switching to the new interface, we can drop the dependency on
> i915_drv.h, as mentioned in the commit message. And dropping that
> reveals missing includes, which wasn't mentioned.
> 
> Yeah, it could've been a separate patch, I guess. :/

Ah, great. No worries then. On that I will trust your compiler more than
my eyes ;)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Btw, Jani Saarinen just pointed out that I had put the rv-b 3 times in
the same patch, while I had reviewed all the patches and was attempting
to add the rv-b individually to make your life easier with b4-shazam.
(facepalm)

> 
> BR,
> Jani.
> 
> 
> 
> >
> >> +
> >>  #include "hsw_ips.h"
> >> -#include "i915_drv.h"
> >>  #include "i915_reg.h"
> >>  #include "intel_color_regs.h"
> >>  #include "intel_de.h"
> >> @@ -17,8 +18,6 @@
> >>  static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
> >>  {
> >>  	struct intel_display *display = to_intel_display(crtc_state);
> >> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >>  	u32 val;
> >>  
> >>  	if (!crtc_state->ips_enabled)
> >> @@ -39,8 +38,8 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
> >>  
> >>  	if (display->platform.broadwell) {
> >>  		drm_WARN_ON(display->drm,
> >> -			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
> >> -					    val | IPS_PCODE_CONTROL));
> >> +			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL,
> >> +					      val | IPS_PCODE_CONTROL));
> >>  		/*
> >>  		 * Quoting Art Runyan: "its not safe to expect any particular
> >>  		 * value in IPS_CTL bit 31 after enabling IPS through the
> >> @@ -65,8 +64,6 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
> >>  bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
> >>  {
> >>  	struct intel_display *display = to_intel_display(crtc_state);
> >> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >>  	bool need_vblank_wait = false;
> >>  
> >>  	if (!crtc_state->ips_enabled)
> >> @@ -74,7 +71,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
> >>  
> >>  	if (display->platform.broadwell) {
> >>  		drm_WARN_ON(display->drm,
> >> -			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
> >> +			    intel_pcode_write(display->drm, DISPLAY_IPS_CONTROL, 0));
> >>  		/*
> >>  		 * Wait for PCODE to finish disabling IPS. The BSpec specified
> >>  		 * 42ms timeout value leads to occasional timeouts so use 100ms
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> >> index 97aef729f7d4..82f131c3f8d3 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> >> @@ -80,14 +80,13 @@ static int icl_pcode_read_qgv_point_info(struct intel_display *display,
> >>  					 struct intel_qgv_point *sp,
> >>  					 int point)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	u32 val = 0, val2 = 0;
> >>  	u16 dclk;
> >>  	int ret;
> >>  
> >> -	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> >> -			     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
> >> -			     &val, &val2);
> >> +	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> >> +			       ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point),
> >> +			       &val, &val2);
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> @@ -108,13 +107,12 @@ static int icl_pcode_read_qgv_point_info(struct intel_display *display,
> >>  static int adls_pcode_read_psf_gv_point_info(struct intel_display *display,
> >>  					     struct intel_psf_gv_point *points)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	u32 val = 0;
> >>  	int ret;
> >>  	int i;
> >>  
> >> -	ret = snb_pcode_read(&i915->uncore, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> >> -			     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
> >> +	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> >> +			       ADL_PCODE_MEM_SS_READ_PSF_GV_INFO, &val, NULL);
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> @@ -155,18 +153,17 @@ static bool is_sagv_enabled(struct intel_display *display, u16 points_mask)
> >>  int icl_pcode_restrict_qgv_points(struct intel_display *display,
> >>  				  u32 points_mask)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	int ret;
> >>  
> >>  	if (DISPLAY_VER(display) >= 14)
> >>  		return 0;
> >>  
> >>  	/* bspec says to keep retrying for at least 1 ms */
> >> -	ret = skl_pcode_request(&i915->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
> >> -				points_mask,
> >> -				ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
> >> -				ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
> >> -				1);
> >> +	ret = intel_pcode_request(display->drm, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
> >> +				  points_mask,
> >> +				  ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
> >> +				  ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
> >> +				  1);
> >>  
> >>  	if (ret < 0) {
> >>  		drm_err(display->drm,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> index 7ad506da7d3d..f60bf8a06541 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> >> @@ -840,7 +840,6 @@ static void bdw_set_cdclk(struct intel_display *display,
> >>  			  const struct intel_cdclk_config *cdclk_config,
> >>  			  enum pipe pipe)
> >>  {
> >> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> >>  	int cdclk = cdclk_config->cdclk;
> >>  	int ret;
> >>  
> >> @@ -853,7 +852,7 @@ static void bdw_set_cdclk(struct intel_display *display,
> >>  		     "trying to change cdclk frequency with cdclk not enabled\n"))
> >>  		return;
> >>  
> >> -	ret = snb_pcode_write(&dev_priv->uncore, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
> >> +	ret = intel_pcode_write(display->drm, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
> >>  	if (ret) {
> >>  		drm_err(display->drm,
> >>  			"failed to inform pcode about cdclk change\n");
> >> @@ -881,8 +880,8 @@ static void bdw_set_cdclk(struct intel_display *display,
> >>  			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
> >>  		drm_err(display->drm, "Switching back to LCPLL failed\n");
> >>  
> >> -	snb_pcode_write(&dev_priv->uncore, HSW_PCODE_DE_WRITE_FREQ_REQ,
> >> -			cdclk_config->voltage_level);
> >> +	intel_pcode_write(display->drm, HSW_PCODE_DE_WRITE_FREQ_REQ,
> >> +			  cdclk_config->voltage_level);
> >>  
> >>  	intel_de_write(display, CDCLK_FREQ,
> >>  		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
> >> @@ -1122,7 +1121,6 @@ static void skl_set_cdclk(struct intel_display *display,
> >>  			  const struct intel_cdclk_config *cdclk_config,
> >>  			  enum pipe pipe)
> >>  {
> >> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> >>  	int cdclk = cdclk_config->cdclk;
> >>  	int vco = cdclk_config->vco;
> >>  	u32 freq_select, cdclk_ctl;
> >> @@ -1139,10 +1137,10 @@ static void skl_set_cdclk(struct intel_display *display,
> >>  	drm_WARN_ON_ONCE(display->drm,
> >>  			 display->platform.skylake && vco == 8640000);
> >>  
> >> -	ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> >> -				SKL_CDCLK_PREPARE_FOR_CHANGE,
> >> -				SKL_CDCLK_READY_FOR_CHANGE,
> >> -				SKL_CDCLK_READY_FOR_CHANGE, 3);
> >> +	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
> >> +				  SKL_CDCLK_PREPARE_FOR_CHANGE,
> >> +				  SKL_CDCLK_READY_FOR_CHANGE,
> >> +				  SKL_CDCLK_READY_FOR_CHANGE, 3);
> >>  	if (ret) {
> >>  		drm_err(display->drm,
> >>  			"Failed to inform PCU about cdclk change (%d)\n", ret);
> >> @@ -1185,8 +1183,8 @@ static void skl_set_cdclk(struct intel_display *display,
> >>  	intel_de_posting_read(display, CDCLK_CTL);
> >>  
> >>  	/* inform PCU of the change */
> >> -	snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> >> -			cdclk_config->voltage_level);
> >> +	intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
> >> +			  cdclk_config->voltage_level);
> >>  
> >>  	intel_update_cdclk(display);
> >>  }
> >> @@ -2122,7 +2120,6 @@ static void bxt_set_cdclk(struct intel_display *display,
> >>  			  const struct intel_cdclk_config *cdclk_config,
> >>  			  enum pipe pipe)
> >>  {
> >> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> >>  	struct intel_cdclk_config mid_cdclk_config;
> >>  	int cdclk = cdclk_config->cdclk;
> >>  	int ret = 0;
> >> @@ -2136,18 +2133,18 @@ static void bxt_set_cdclk(struct intel_display *display,
> >>  	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
> >>  		; /* NOOP */
> >>  	else if (DISPLAY_VER(display) >= 11)
> >> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> >> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> >> -					SKL_CDCLK_READY_FOR_CHANGE,
> >> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> >> +		ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
> >> +					  SKL_CDCLK_PREPARE_FOR_CHANGE,
> >> +					  SKL_CDCLK_READY_FOR_CHANGE,
> >> +					  SKL_CDCLK_READY_FOR_CHANGE, 3);
> >>  	else
> >>  		/*
> >>  		 * BSpec requires us to wait up to 150usec, but that leads to
> >>  		 * timeouts; the 2ms used here is based on experiment.
> >>  		 */
> >> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> >> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> >> -					      0x80000000, 2);
> >> +		ret = intel_pcode_write_timeout(display->drm,
> >> +						HSW_PCODE_DE_WRITE_FREQ_REQ,
> >> +						0x80000000, 2);
> >>  
> >>  	if (ret) {
> >>  		drm_err(display->drm,
> >> @@ -2176,8 +2173,8 @@ static void bxt_set_cdclk(struct intel_display *display,
> >>  		 * Display versions 14 and beyond
> >>  		 */;
> >>  	else if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
> >> -		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> >> -				      cdclk_config->voltage_level);
> >> +		ret = intel_pcode_write(display->drm, SKL_PCODE_CDCLK_CONTROL,
> >> +					cdclk_config->voltage_level);
> >>  	if (DISPLAY_VER(display) < 11) {
> >>  		/*
> >>  		 * The timeout isn't specified, the 2ms used here is based on
> >> @@ -2185,9 +2182,9 @@ static void bxt_set_cdclk(struct intel_display *display,
> >>  		 * FIXME: Waiting for the request completion could be delayed
> >>  		 * until the next PCODE request based on BSpec.
> >>  		 */
> >> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> >> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> >> -					      cdclk_config->voltage_level, 2);
> >> +		ret = intel_pcode_write_timeout(display->drm,
> >> +						HSW_PCODE_DE_WRITE_FREQ_REQ,
> >> +						cdclk_config->voltage_level, 2);
> >>  	}
> >>  	if (ret) {
> >>  		drm_err(display->drm,
> >> @@ -2473,7 +2470,6 @@ static void intel_pcode_notify(struct intel_display *display,
> >>  			       bool cdclk_update_valid,
> >>  			       bool pipe_count_update_valid)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	int ret;
> >>  	u32 update_mask = 0;
> >>  
> >> @@ -2488,11 +2484,11 @@ static void intel_pcode_notify(struct intel_display *display,
> >>  	if (pipe_count_update_valid)
> >>  		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
> >>  
> >> -	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
> >> -				SKL_CDCLK_PREPARE_FOR_CHANGE |
> >> -				update_mask,
> >> -				SKL_CDCLK_READY_FOR_CHANGE,
> >> -				SKL_CDCLK_READY_FOR_CHANGE, 3);
> >> +	ret = intel_pcode_request(display->drm, SKL_PCODE_CDCLK_CONTROL,
> >> +				  SKL_CDCLK_PREPARE_FOR_CHANGE |
> >> +				  update_mask,
> >> +				  SKL_CDCLK_READY_FOR_CHANGE,
> >> +				  SKL_CDCLK_READY_FOR_CHANGE, 3);
> >>  	if (ret)
> >>  		drm_err(display->drm,
> >>  			"Failed to inform PCU about display config (err %d)\n",
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> >> index 8e8c3a2f401b..562d15f8c38c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> >> @@ -1255,10 +1255,8 @@ static u32 hsw_read_dcomp(struct intel_display *display)
> >>  
> >>  static void hsw_write_dcomp(struct intel_display *display, u32 val)
> >>  {
> >> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> >> -
> >>  	if (display->platform.haswell) {
> >> -		if (snb_pcode_write(&dev_priv->uncore, GEN6_PCODE_WRITE_D_COMP, val))
> >> +		if (intel_pcode_write(display->drm, GEN6_PCODE_WRITE_D_COMP, val))
> >>  			drm_dbg_kms(display->drm, "Failed to write to D_COMP\n");
> >>  	} else {
> >>  		intel_de_write(display, D_COMP_BDW, val);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> index e60f60ddbff7..c05b9349d806 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> @@ -485,7 +485,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
> >>  	int ret, tries = 0;
> >>  
> >>  	while (1) {
> >> -		ret = snb_pcode_write(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0);
> >> +		ret = intel_pcode_write(display->drm, ICL_PCODE_EXIT_TCCOLD, 0);
> >>  		if (ret != -EAGAIN || ++tries == 3)
> >>  			break;
> >>  		msleep(1);
> >> @@ -1764,7 +1764,7 @@ tgl_tc_cold_request(struct intel_display *display, bool block)
> >>  		 * Spec states that we should timeout the request after 200us
> >>  		 * but the function below will timeout after 500us
> >>  		 */
> >> -		ret = snb_pcode_read(&i915->uncore, TGL_PCODE_TCCOLD, &low_val, &high_val);
> >> +		ret = intel_pcode_read(display->drm, TGL_PCODE_TCCOLD, &low_val, &high_val);
> >>  		if (ret == 0) {
> >>  			if (block &&
> >>  			    (low_val & TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
> >> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> index 3e3038f4ee1f..52808cab95dd 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> >> @@ -373,7 +373,6 @@ static void intel_hdcp_clear_keys(struct intel_display *display)
> >>  
> >>  static int intel_hdcp_load_keys(struct intel_display *display)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	int ret;
> >>  	u32 val;
> >>  
> >> @@ -398,7 +397,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
> >>  	 * Mailbox interface.
> >>  	 */
> >>  	if (DISPLAY_VER(display) == 9 && !display->platform.broxton) {
> >> -		ret = snb_pcode_write(&i915->uncore, SKL_PCODE_LOAD_HDCP_KEYS, 1);
> >> +		ret = intel_pcode_write(display->drm, SKL_PCODE_LOAD_HDCP_KEYS, 1);
> >>  		if (ret) {
> >>  			drm_err(display->drm,
> >>  				"Failed to initiate HDCP key load (%d)\n",
> >> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> index 817939f6d4dd..df5522511dda 100644
> >> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> >> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> >> @@ -6,10 +6,12 @@
> >>  #include <linux/debugfs.h>
> >>  
> >>  #include <drm/drm_blend.h>
> >> +#include <drm/drm_file.h>
> >> +#include <drm/drm_print.h>
> >>  
> >>  #include "soc/intel_dram.h"
> >> -#include "i915_drv.h"
> >>  #include "i915_reg.h"
> >> +#include "i915_utils.h"
> >>  #include "i9xx_wm.h"
> >>  #include "intel_atomic.h"
> >>  #include "intel_atomic_plane.h"
> >> @@ -85,8 +87,6 @@ intel_has_sagv(struct intel_display *display)
> >>  static u32
> >>  intel_sagv_block_time(struct intel_display *display)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >> -
> >>  	if (DISPLAY_VER(display) >= 14) {
> >>  		u32 val;
> >>  
> >> @@ -97,9 +97,9 @@ intel_sagv_block_time(struct intel_display *display)
> >>  		u32 val = 0;
> >>  		int ret;
> >>  
> >> -		ret = snb_pcode_read(&i915->uncore,
> >> -				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
> >> -				     &val, NULL);
> >> +		ret = intel_pcode_read(display->drm,
> >> +				       GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
> >> +				       &val, NULL);
> >>  		if (ret) {
> >>  			drm_dbg_kms(display->drm, "Couldn't read SAGV block time!\n");
> >>  			return 0;
> >> @@ -157,7 +157,6 @@ static void intel_sagv_init(struct intel_display *display)
> >>   */
> >>  static void skl_sagv_enable(struct intel_display *display)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	int ret;
> >>  
> >>  	if (!intel_has_sagv(display))
> >> @@ -167,8 +166,8 @@ static void skl_sagv_enable(struct intel_display *display)
> >>  		return;
> >>  
> >>  	drm_dbg_kms(display->drm, "Enabling SAGV\n");
> >> -	ret = snb_pcode_write(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
> >> -			      GEN9_SAGV_ENABLE);
> >> +	ret = intel_pcode_write(display->drm, GEN9_PCODE_SAGV_CONTROL,
> >> +				GEN9_SAGV_ENABLE);
> >>  
> >>  	/* We don't need to wait for SAGV when enabling */
> >>  
> >> @@ -190,7 +189,6 @@ static void skl_sagv_enable(struct intel_display *display)
> >>  
> >>  static void skl_sagv_disable(struct intel_display *display)
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	int ret;
> >>  
> >>  	if (!intel_has_sagv(display))
> >> @@ -201,10 +199,9 @@ static void skl_sagv_disable(struct intel_display *display)
> >>  
> >>  	drm_dbg_kms(display->drm, "Disabling SAGV\n");
> >>  	/* bspec says to keep retrying for at least 1 ms */
> >> -	ret = skl_pcode_request(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
> >> -				GEN9_SAGV_DISABLE,
> >> -				GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED,
> >> -				1);
> >> +	ret = intel_pcode_request(display->drm, GEN9_PCODE_SAGV_CONTROL,
> >> +				  GEN9_SAGV_DISABLE,
> >> +				  GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED, 1);
> >>  	/*
> >>  	 * Some skl systems, pre-release machines in particular,
> >>  	 * don't actually have SAGV.
> >> @@ -3277,7 +3274,6 @@ static void mtl_read_wm_latency(struct intel_display *display, u16 wm[])
> >>  
> >>  static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
> >>  {
> >> -	struct drm_i915_private *i915 = to_i915(display->drm);
> >>  	int num_levels = display->wm.num_levels;
> >>  	int read_latency = DISPLAY_VER(display) >= 12 ? 3 : 2;
> >>  	int mult = display->platform.dg2 ? 2 : 1;
> >> @@ -3286,7 +3282,7 @@ static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
> >>  
> >>  	/* read the first set of memory latencies[0:3] */
> >>  	val = 0; /* data0 to be programmed to 0 for first set */
> >> -	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> >> +	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> >>  	if (ret) {
> >>  		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
> >>  		return;
> >> @@ -3299,7 +3295,7 @@ static void skl_read_wm_latency(struct intel_display *display, u16 wm[])
> >>  
> >>  	/* read the second set of memory latencies[4:7] */
> >>  	val = 1; /* data0 to be programmed to 1 for second set */
> >> -	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> >> +	ret = intel_pcode_read(display->drm, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
> >>  	if (ret) {
> >>  		drm_err(display->drm, "SKL Mailbox read error = %d\n", ret);
> >>  		return;
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel
