Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FE1797303
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 16:20:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4351810E7DE;
	Thu,  7 Sep 2023 14:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF4810E7DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 14:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694096397; x=1725632397;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QivLOpms6dih4pkCGbY83lx+bCwG1lWTt1SvovvE8PE=;
 b=Jh4p9N1haybZC6xfBQYQD2u0LUbOftQa1wu6uRBNJKJx5I26Qc5ncQkN
 xaa8U+77Wpd2kjQqIj2f3akkqxYNNVlYsWq3pMBDiUoca31tuNAQf8hoX
 8XvxYruO0Et7IUhNkQd/DbG0QtjirmcGBEis9LSLRlitR0J8mKE84T/8b
 p7EnTpGubx87jEirZ9ipuv/Uh0hY1ixf8GL3L4map/X09fiXTn7UIfrl0
 jbOjkRGmIVJ95v6sh1hVtbf2iqM1tzvPR8mq5kzs/CzkSA/6Mi0R1VKPI
 AMEXnYfo8dqFzD6/s7RpWbKN9ioNgBZFz/2ZWlt1iNAMk4gUvn+RXQSA+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="443764026"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="443764026"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="812153067"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="812153067"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 06:51:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 06:51:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 06:51:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 06:50:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SAnwAgCa2sE9eHznBDGnGEt3oVhqVEnXRKFSw4U3+ULefrSPIX7ahIlKEZ74+3WSfHR/AXX3uP9kWviIQfcBDm41YUffR5OpjkYedXe8rokxtVX7Urv3qaANXckJy/KYKpJxzWplTqmrsKGY486cg7Itpzcef3UaaycLateMyj+g4UGzo0v5Uz6ftj6yFxkOSZJVx7egzFWyJvriHuiu0p9y9wjhfZ0d1cceK/SIghrfv2UL2epW+JbnGTu/qXIjssVC7pSj6XE76TS5WmWDLqscndKJ2fVyXQ2mgDruLiMZ8NhMkLWqNnklEgMsii4Hd8N6KLDXaCOwj4ercrkyFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yrHSSjV4yFFAn+rFb4VsQ1inP5kBlrtgBawVx92QIS4=;
 b=MZSM08cfTIVTP8SUVU9gQIlIxW3e6KssOTsrecZDXZkL+B4joa5km6xzAwy69y3OZkhkli6/6VZS9hoAYTpCswxF9NJVNxLz+OYjQlW5y4WogIN7hQSBuOXw+moxJlr+/FBX7/1bNKY8TeI2HULup/tELBy4esIE9JN2u7uStHXeFTKgtMQS6KZV67G9P/bfueHdYQgt0lhFho/XpSv4gRGXb51fKq84MQwuxNKlfc4lgWdTIGsEHFJ9KjEyh4qFWkY1LZdSLo/mfAibEzMOyRY/hG043GtwZ53S6RmXsLhcR62aFrkYTYhZqdzl6F/2uEV76uUHLqNwettR3qLmKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5367.namprd11.prod.outlook.com (2603:10b6:208:318::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 13:50:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Thu, 7 Sep 2023
 13:50:54 +0000
Date: Thu, 7 Sep 2023 09:50:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZPnVOrqXkS00feK2@intel.com>
References: <20230907000354.3729827-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907000354.3729827-2-matthew.d.roper@intel.com>
X-ClientProxiedBy: BYAPR02CA0039.namprd02.prod.outlook.com
 (2603:10b6:a03:54::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5367:EE_
X-MS-Office365-Filtering-Correlation-Id: e9c4e829-4d74-452d-b10d-08dbafa9743f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v/uLzv7D1Iz2jRBbgotiRh03wwTb+3bxvsRe8PIslaFLpwbEEp2Z0U/X/cq+uLA4BUXiBzyzB5cTlBYvrLLHoWbaYya6kQY3CKb8GN8+Hrdo9hjw5UE2+Rr1ae9PKoLLbXPxq/YVpGXW65TXPz240ODQCCFDnruKDuJfmp4FwULUjSjLOaRgFHy5YmpNZBmfZbX6+DKY4La05VUurejVQX5nFq5pkDX0hSTq79u4xSnLOZ1pgPxqtt2ReWWQcc6ruT05ewbySWzRLTjDbSm6mCDgq7/KFioNScYn9oJ7DRJu0S0UFtfqzi1pQUPsNghIBRltdTbOuu/e6wd1REnfPGPqdxSziq7XbNY6Ajj64UTWDzvOE7y+oi6+W2vlyUzYXDBBWkcyk+kDOA79QHDGThbIPGY2woMq9cwBEZmNXnU5yvya2paPdgIuDR+96EVCV0hqoKm3CMTt7jbN3QfRiYtqSDvxeaGU+RuouPivONI48y1tyQ9nyAq5wQJEoW/nJ+FOeUI2boeJtMsmB2aoJlrjmfaeaAfRC3kNxXl3oU82xLsgXWNNJvM5M2E6cc+L
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(376002)(396003)(366004)(39860400002)(1800799009)(186009)(451199024)(2616005)(82960400001)(6486002)(6512007)(38100700002)(86362001)(6506007)(6666004)(478600001)(26005)(83380400001)(37006003)(5660300002)(8936002)(8676002)(36756003)(6862004)(4326008)(66556008)(66946007)(316002)(44832011)(6636002)(66476007)(41300700001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gdqyCwfQzeSAXUhQYlOZDBm+tzvX7tnwiT08AMXkuf+vfADYwabIXwTDMbV/?=
 =?us-ascii?Q?SXUgbMmrZ+Cy/bAWfAj8anifpN3x0Q2I036fWZDzGIGaui0kQ4ecjtBIMpBK?=
 =?us-ascii?Q?wAwfPRyvdbn37OspvXDMq/D2XRqm0pjHi0dc7Z0L3vFBfVW1jaofC6TONqec?=
 =?us-ascii?Q?ZDRiM1+gjkrTsC8VBFpak5XLy/DhHc3mx23w+6BX30pYfOdLdEmik1mPBXTw?=
 =?us-ascii?Q?232wHT41RWMNKelWlKkgirZlyaMPw1y/LNe9lsqsg47w9Y0EMueuSoEBZrre?=
 =?us-ascii?Q?mvpeUryxbjW7J9ZEC+Sh8e7xlcbGq2ZHKzpToZKq9YDR38IRNImlhopOVhcu?=
 =?us-ascii?Q?vGAcyaiRVyUEfw1WTk5UpRKzmOUTtqw8hTmWAkuHCS8oGTjn7TdGypn0tjFO?=
 =?us-ascii?Q?U6e52kPTvqu4csud4PaEgz9gZb04+f/wCTbPTuPctACn7izNtTUM6bLFzx9C?=
 =?us-ascii?Q?Pxko8JmMBn12eOxyuuq9nztWD1KduftrVQMdKTCKg7FQJ62Wng2GLYRcJx1+?=
 =?us-ascii?Q?VdjGtARczwn85s3Y3pvG2tkZqcOWQ1J6Ae+oVALV+t7K7U5MtJjsXhhGRubv?=
 =?us-ascii?Q?9kjOJ6LXejmgm/OIaKeFZnKbZKL7hqHuS6/qfZacvy9HO0rojunBss3wkNXy?=
 =?us-ascii?Q?ME8s3yqfm04olsL/fkBZFhZmsWROjdpjpfuLT4jWjJ4d55EG82eDegEvoIbn?=
 =?us-ascii?Q?ZiFUyNxr0QPYXFq0oYvmf8XA6DDevwx2VeRjO+hLpUHAp9sNeCRxzmKkal/M?=
 =?us-ascii?Q?8c6ezPUAHbhenmXMRKUJxp3H/gTAjLJxeKY9gpS4Ux9I3R1Xol9mLuBYqCrc?=
 =?us-ascii?Q?/U00FPcscL10iMocw4+SD0STi8RPTHmN+J4of6SzMxTeqGPDV4kvLqMfL+Kv?=
 =?us-ascii?Q?w+yqkrdKd1daBiicXn7SZ/KfP2hW5ENL8qicppprJho+thZUsU/GIlIXnjsJ?=
 =?us-ascii?Q?nE8haEWyj9tnmQ7SLdZGcw8TQZKaokTddrhGlcm+M40bOAIvj4/j4Ls4E+uW?=
 =?us-ascii?Q?CAN/9sB1ZbjklRzhEmM5NjKNJ8LZuqvjdV0x67XwCt/BDxZgdynLKRwGUEr9?=
 =?us-ascii?Q?eO4Hy+xJaGoooZxtnB6o0c8r8hpiHDCeZKoE3QNKiuwRsDknLefIfSFDUs9b?=
 =?us-ascii?Q?7Q1XbHWKi/DEQ8A2zy8q5K8oVQ00hwki3bOUlLWmPcGs4AE4KOGY3iWAU32j?=
 =?us-ascii?Q?XzUwEJz9Q2aIQYPcoSxzUuf4b1LCq97dLhrdbEiJVcaclFDgFFixqeutUfls?=
 =?us-ascii?Q?i0UCy90hcMUvnxQMxnPKLAHUC2NH24KQ43xGNBga2yIx47EJLDjJncx7xIfX?=
 =?us-ascii?Q?F5VGqLEJljUw5xvtFR5bAlZW3JwznkF2BFBQfdhBF6ivmGV6UTE4r8U69MAA?=
 =?us-ascii?Q?UMtJ+XORgChhajSpyg7ibakmWDxGwKn3nqjvLJYOPhcenltHhVTLf/hRi99z?=
 =?us-ascii?Q?ga8iVWImZrNPOYIqMyXm7udx6mFrGUStrp9j+5shvkkC6szuTmQ+BXvz8ofz?=
 =?us-ascii?Q?+4rharTJ95xV8CJgTvgLV12QgTB4cHg8D2Cqaplw6UgDmJsV2PHVO9ovH+Wo?=
 =?us-ascii?Q?uLVcmbd/VUOLwvEzjhG/E19k03DSw0YrzRlQ4aLv1NaOAWjqnwe8Sptu6Fk/?=
 =?us-ascii?Q?ZQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c4e829-4d74-452d-b10d-08dbafa9743f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 13:50:54.0521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ibhHrLoPxGqUDafEtkMGxRhDtfB4KBwE6WvdJuyJ9P6WTdywRckMbgB9cWKzEP9dJKJhSFFRByToLa2ZGG6l5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5367
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Drop Wa_14017240301
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

On Wed, Sep 06, 2023 at 05:03:55PM -0700, Matt Roper wrote:
> Drop Wa_14017240301, which is only relevant to pre-production MTL
> hardware.  Although we usually wait a little bit longer to start
> dropping pre-production workarounds for a platform, it was suggested to
> eliminate this one slightly earlier because it's a bit unusual/ugly:
> this workaround is a display-specific workaround that requires matching
> on the graphics/GT IP version instead of the display IP version.
> 
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 517df2aa7a91..007a0bcb3f93 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2170,11 +2170,6 @@ skl_plane_disable_flip_done(struct intel_plane *plane)
>  static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>  				 enum pipe pipe, enum plane_id plane_id)
>  {
> -	/* Wa_14017240301 */
> -	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
> -	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
> -		return false;
> -
>  	/* Wa_22011186057 */
>  	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>  		return false;
> -- 
> 2.41.0
> 
