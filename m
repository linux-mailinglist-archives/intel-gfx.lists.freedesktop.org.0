Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2671095907A
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C437510E50C;
	Tue, 20 Aug 2024 22:29:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E1ZH29dC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25DA10E487;
 Tue, 20 Aug 2024 22:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724192980; x=1755728980;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=G505n+H5OTPC9tx5OsoY3tB8j3HK6Qtl9J0kJe9clBM=;
 b=E1ZH29dCIWkg5HVZLPxIB2/YeP1P4v18vdh6/ziQRgO/HgFvElcBOMOZ
 bniYf5HuQjALyTmxok7PjXi8rBbdPSndUdIeml+rnh9TpKNzkfNqN9qgv
 FcLkT7iIGVO7QE1KdNP0teuNdRsR6ZOkOUk+hefd+VcMnfxYygZ0MyxM+
 Ndqpx47yMeD0xd1u5zlUoN3OfwWHvJASbBbUtVBTnZzvveM1slpsrusTS
 i7bNGwT3auDwpP9/iRlzmL1x61lGP4KDgU0e7o7hQXxNIrgNYbPE3JFN8
 e3V6/2+oDn9IATuUDtnfLLgoN1fRfm8SeaQ/m+t7bBNhE8tBLH4ybm8w2 A==;
X-CSE-ConnectionGUID: mR0x/2adReCMpbV1rDl+tA==
X-CSE-MsgGUID: mjFK235KT2ac5jyA0a+I1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22143399"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="22143399"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:29:39 -0700
X-CSE-ConnectionGUID: XA/oWvypRXOz3duEmVR9Ig==
X-CSE-MsgGUID: 5Qbu30vaQeuAft5RHi9yOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60515883"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:29:39 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:29:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:29:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:29:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LCl0s8KMbb1X5KUVAXZAJ2bGVygt2f73n3JlGcw+aDAIjdcGHl6+aCjYr7AgcEjkDi0jeZ7iw48B1wci10/UhLSOIeOHp6aJjHlSDCObLPfh651ty8V33z7bXdLg4hwWOINXg7E4HZarbrSGc1UvVdiVvLxlnAmJ8+34ychZl0y3kAX41EOVLeK7xRUuMLk2zFVBedOhpqx5lyzDcg5CW1gdSRUYIkldEvYn6bxysGk2FCJhW2zc1QLHkQ1LRil++raBqXRYuHnzm8JzxmzBgrC0uYXk+52ZBp0J1f+uixbqYAuHOQMoM9ud8VtcAUefHxqgVe8mqBeg0b/iI5EIkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtVw3S2CN2hT4O+uObJjwmuWdq7ZRJo27JAIOmy6zvo=;
 b=qnPnjIOXoN+eiEQLemLPFm4BidTVilUNurbEp2agzgJWFs3pbXVJBsxD7AcN6+C/0fL117f/Niq/Xgzo6TEz3psolYMafWK1WxJCgObgLB2+QPGdvcXo6cSj4+fohsa1snGS3+O+AM70sEYuaOJuWq8Sixfy1aeIteUuv4dI7wJ8snRPu6pPuvLe3OIZTJgEmXia+AZPwrdZHvKd2f4rcRb0D8EZizHvU1gK5kThvC1gIsh2Ei3ZsFktY3kbRKFBy4Y5xIi4llTx8i7U80IYwKLEyUEynSbHG7xhZYT9HdvncARbhh22PAs1eX9pkVBPux78hpgJ1w/1Fs2Jfs8HqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB6914.namprd11.prod.outlook.com (2603:10b6:930:5a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Tue, 20 Aug
 2024 22:29:36 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 22:29:36 +0000
Date: Tue, 20 Aug 2024 15:29:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 01/10] drm/xe/display: fix compat IS_DISPLAY_STEP() range
 end
Message-ID: <20240820222933.GM5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <fe8743770694e429f6902491cdb306c97bdf701a.1724180287.git.jani.nikula@intel.com>
 <ucvbwa5omt5mu3xihr54727q6245lukivpze7amveoiqtk6uur@vc63sjfruszm>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ucvbwa5omt5mu3xihr54727q6245lukivpze7amveoiqtk6uur@vc63sjfruszm>
X-ClientProxiedBy: SJ0PR03CA0184.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::9) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB6914:EE_
X-MS-Office365-Filtering-Correlation-Id: d9b2cc18-b778-4ad9-b7a0-08dcc167928f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qAes6Wcino90afYQDrTK/zkxH/Be/Hf3DgLT6PKnitOzQmgw+El2DtcdgAke?=
 =?us-ascii?Q?v+9Kef+n6llwi1L30ncxnqTF70gQb/1vJwI8N9cg3tOPLxwowwLoiOdKtRsV?=
 =?us-ascii?Q?rNM0H80P6/O+7P1pM5kX6+jpeUYzFcR/Q7wPtA3VGfCiwnjljKtqHvrULEPm?=
 =?us-ascii?Q?f4jeqsyps7SgwMUjhRmSitUhSCFUG27kCgip15gfob9JvEoCDdfZcDZo8V4e?=
 =?us-ascii?Q?5VlkKuNFFwJD//9Q9SEZndpop5ikiAcyL6A/7i+eM7vRwx4Mc8638gxbTjut?=
 =?us-ascii?Q?Fwmpk7PE2blniqOyU5zDzhbvvTKz64Su80htaSCnh8KLwRmnn9jdTw7FdMd3?=
 =?us-ascii?Q?x7pr9hxMLBTcs9didu7A9e3FwYPwEI+vcGbsqC+SPnPu6CohR2sW5qhU1rpk?=
 =?us-ascii?Q?Dk2v+DZ8rPUe7vqYIEzf2hRxShgYSC1RlSmDeMCt7xxT0yrl77/irLXCwr5a?=
 =?us-ascii?Q?qaKyBo/Sgi+/TdLFosReO6MFXE7Dqx6Jwgs2fM+9XKlmYnb53y3GwsvKYENP?=
 =?us-ascii?Q?CABCFPJewZDWHITcqPEaNI2qhhmv+DH2etJR9yVldYD805tC5QHqshfvrPHy?=
 =?us-ascii?Q?StjQEmpB5PcsnesSCihLPjz5WYvaIuJSKLVajLZvyhURIJsQ/kVERR0eLUGX?=
 =?us-ascii?Q?SJZqzMyaWS7fbq11+FqXCvyEJcuLZH/YrQKi/gcW/1jvlJuj1iC4sK1rNwvt?=
 =?us-ascii?Q?sp06yN5gdsIwvx+JNa4t/oP9Q3YzObQ3C4yTvcGtoVXXIXchk8Oym0D1iB6W?=
 =?us-ascii?Q?vtdvw1I2WBHfqydC3KabxR3vCiR77DUUGDlvhSGXXMoWCwZ10MaM9oQR18Y8?=
 =?us-ascii?Q?fOKstliLl9WTZ1905Y8EOdsiNsroo97LppxWBnVMDs3ka11S3D9UtYL2EC6u?=
 =?us-ascii?Q?nRVsVCpv33t9ZeqDelsDR+xZco0pwt4Aas5TrWFZln4e8bvQQNtuRHcJRMkU?=
 =?us-ascii?Q?IM87bsHsqy6gkLQgmpG2vX0CN0tUM+LyMgTsKCaXIer42L2nejBEr2Cdqpgp?=
 =?us-ascii?Q?6twa22wZjrXnjKApu3aLfFVtU7/HswA+NIIBZvZjHJXm8pnaHHCkwqQfmEZR?=
 =?us-ascii?Q?3G19up2XqdrEgf6hqlAPYhWYkbOQr+qeE1ZQBifbzCRc0qAP6y1C5yO022/v?=
 =?us-ascii?Q?NpibdOuL/+OOp/nxR5CAsSon5s6kCHo73qDNpq50KPSKIgwBwrmgmHaz0PDn?=
 =?us-ascii?Q?DMKZp7WXnY4FCvPC3SgPMU79K/FmyW1l/xrKW+Mgi3gJJP/PpzGmh+CGDehB?=
 =?us-ascii?Q?tDs4R8guPExhL/sjn7Igoh4vcWiQJ+ShxGnIsscUGwqrJDU1zgSokysmzY4b?=
 =?us-ascii?Q?d1hhBAEXHC4taMqt8nR9QrK25/yYeQZyVuY6QUMkAf2CsQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RqA50jrFVyMoyJQ0ao7aZ+EJEGl7DcPE8ShJUSXcWCWAoeG2aiXz8aB9+q8O?=
 =?us-ascii?Q?gpUkrk6oenZJ/w1fNMKjXWySJgL1YLVO6krdYxrUlPlsn1w1Qve08AUWEeiS?=
 =?us-ascii?Q?Vx3YzdIvsIiYBFoioqzXGN53KSCu9RPB63Nm/6yevYWE0BndeG+FTa/xUuCI?=
 =?us-ascii?Q?wvXoTvq9kjFEN5hwTYCjjY9y3/5FvyMjQArTaF9arX8711k1poJasn9ozKJt?=
 =?us-ascii?Q?cOfOP/prlbVUSQv0BfS5y/n5cLkCdtAIRjYztT2zot522DL0QTKlUZh7QbYZ?=
 =?us-ascii?Q?C7NVO6uArLPqY6qz2FfWCYd3U+MjfLo9pjNVGiGlP1giMG4qb1qhp9KWd3DZ?=
 =?us-ascii?Q?+J8aJYsxEynZEpTYYQykEfLfRwpRLuHmgMoYdWftk+oGWBWKoXzcSNdtEFgQ?=
 =?us-ascii?Q?FMVrk3buW5SQTK1xDP0gXnfN3DPeFqmzWqFKwSRKwIuTVW55MfR/zMdOvTqs?=
 =?us-ascii?Q?c2ihn4u2S6wyinNo7qkFqMTdqDQZ97boGsAZ5kRmmVLogsFAQDPj7zF5H9rT?=
 =?us-ascii?Q?QkTiPekpJOoVnI8IwZDFoaZz3I+POV+m0jb4taA3vw1iJkeX1W07688HdbbW?=
 =?us-ascii?Q?GiVsGUfa2Ya+/FoW2EinKLK6rxIbpSrzRRxTsgLOTvSOw0sNv8L7TizEiDRe?=
 =?us-ascii?Q?Ncuxdmq6WaXKoK49Pcs26MaWkjsYWUSfIGGTharJyZAM9x3w3Ze2H3N/0+iU?=
 =?us-ascii?Q?gUyJsw4iKPwwTL5Qhe/pGhz4dVhWTNfZp+yEBdlfVDEJD+Iskbng9moi+HzR?=
 =?us-ascii?Q?Bws/KORpRbpFMw/QY+zzHeAOroF/vw9WkPf8n2dqAJsKEqHpDsJXyplI9/Kj?=
 =?us-ascii?Q?NgHIR6Wx5rQVirPWAiB3B7+Ajcp6W/WihUvzfvcW+jlc6aUZGeNu290M03pY?=
 =?us-ascii?Q?bV8Pm9WY+qyVp8TCyPH0VTu4EBZlNx7pmrWxSl3FllRsAavGIHGFo3MJPnYG?=
 =?us-ascii?Q?RFuDFEqks5Q6R9qsQ8dAUoNg8ZXWYgog73sqbFRnPu9wrb6Mw1lWRPuFYwmV?=
 =?us-ascii?Q?pcn9SUOPnWizQaJJGpXqc+KMVTrG/5h9c6J+ZEwkSJt6UVy3nQIYT1RuD3Vd?=
 =?us-ascii?Q?jfIzK3Pt9hT48gsHXUvfMv8Pvie2PJqd4t7dL9QpWGu/A5exSwyOkJKMyNPN?=
 =?us-ascii?Q?GB4E5n9Zb1cC5xLeVTaPWC8fDMIj2L3nuhU4wzwVxEt5ASfebxl5ZqfPaR1l?=
 =?us-ascii?Q?p6f+t/s9UX9hcnPm8ERUonxUbxKTWQ7zFgeYr+c4LMfY+QeHdQ4VegY5ePFx?=
 =?us-ascii?Q?ySn+NTURNnUiqV+nIQpkxoXnaiXD4HX8BaKcUMdk9YGhAJg3JapZkF0fc2/m?=
 =?us-ascii?Q?dJ/meHriOViV4jAZIBx4EO25vf3laDXaNdHOs8B7twGIXqF09ohkw76fZeal?=
 =?us-ascii?Q?327cySA44G8jaZAgR+th1V1HPIi8VIkyd7ySQdOgDwhSQn4SCS/LZa+cWD2p?=
 =?us-ascii?Q?4DSkrKS+w3wu/mXMEV1A8mRBV93lQWOtjYNq29DzQBrpEUUdH234+CFrwO7E?=
 =?us-ascii?Q?7gJIxu44DyYKdLiHZIf9GJv6IvXres7uL6kquU4NM0i/fZNNVsAr56uEntrt?=
 =?us-ascii?Q?LfOaokJcHuDyEfZBipP3/0A+wAEgFSh58IdtMWOsntyQkEH0auS9WQZ0Y4CC?=
 =?us-ascii?Q?7A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9b2cc18-b778-4ad9-b7a0-08dcc167928f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 22:29:36.5632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rw7p+aZno1/1/5ymnO7M85Zdly7xlgxM46P9Ybn87LDSLmMDu0CLcdYruQTApsgua0DjOL5WAbeCXJ0dqWrMkuqXCWUh1n9vtc2XS37kaJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6914
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

On Tue, Aug 20, 2024 at 02:31:20PM -0500, Lucas De Marchi wrote:
> On Tue, Aug 20, 2024 at 10:00:34PM GMT, Jani Nikula wrote:
> > It's supposed to be an open range at the end like in i915. Fingers
> > crossed that nobody relies on this definition.

I think the various IS_DISPLAY_IP_STEP uses in the driver were already
assuming the corrected logic from this patch, so we've just been
applying workarounds to some steppings where they weren't technically
required.  The risk now would be if a workaround was somehow recorded
with incorrect bounds in the workaround database itself and we were
masking that misdocumentation with the wrong logic.  That doesn't seem
terribly likely though.

> 
> we are checking for step though, so IMO this deserves a
> 
> 	Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
> 
> from a git grep, for the platforms relevants to xe, this mostly affects
> ADL-P that is used as a test vehicle.

A simple grep is a bit misleading because IS_DISPLAY_STEP gets used by
IS_DISPLAY_IP_STEP, which is what we use instead on the newer
GMD_ID-based platforms.  If you grep instead for IS_DISPLAY_IP_STEP, it
turns up some MTL, BMG, and LNL workarounds that would have been
impacted.  But as noted above, I still don't think there's much risk
here since it would only be a problem if the workaround documentation
itself was incorrect.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> > drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > index 2feedddf1e40..1f1ad4d3ef51 100644
> > --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> > @@ -83,7 +83,7 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
> > #define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
> > 
> > /* Workarounds not handled yet */
> 
> I guess this can be removed already.
> 
> > -#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step <= last; })
> > +#define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> thanks
> Lucas De Marchi
> 
> 
> > 
> > #define IS_LP(xe) (0)
> > #define IS_GEN9_LP(xe) (0)
> > -- 
> > 2.39.2
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
