Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 801477EFB32
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 23:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50AA110E784;
	Fri, 17 Nov 2023 22:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD1610E784
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 22:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700259155; x=1731795155;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rx8KNRLtZtdnv5y8z1stKSWk+PyEFMoI/GT6SkBqwpc=;
 b=PeIRIHHJ/yzLrfk6XWhElUEP4CANKM/jiQdNgHaNVkuoRs7upmZ/oWLP
 7ChyF3FH96iidqroo1wiiA1ez0ncmh/GRZZsUe2HE44RdhBq+kgeVGgv/
 LILxpAcJiHTPW9X9jZyaQ9HGnlO8irK1lBrEGY3Dh+bY01PoDDXk6ewqh
 8hUdTBGZyYetOo6OubyI2vLg1MRHEWvN0owGo+J71l/U+PD8VeC760JoY
 Q4t3Y35TYJgk7srYV0SEK2nLSK8TE2DeKyKx6A53uB8AejS8fCO4LZ2Xv
 LOE0QBvZGxsXneQ0wDH3ajHmOH4PwJsmXKnRaY67wEou9V1E+aIw/GkmK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="391160651"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="391160651"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 14:12:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="909539626"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="909539626"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 14:12:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 14:12:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 14:12:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 14:12:33 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 14:12:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wsw+0HLu+7HPLou5b5zldQAjJ0ybJfwKkXDAYq46wdgtyitQy/mjU0Fmr5dnczcdYv/9ZNJZ9qcJHAlibXCE6T9Ij7VR9u2fA8ELvbsuFHDpjy/bk13EbbTZXRgHX96PV46Es5STMyd8iWdmSmgdl5uEeZMAEfatfKwg0RoH52AbWg+QObhbj7JFRlD7Ux+/tunDkGoHdvrrTOxUHnFMewlhH7zkFFvYPuC9M3733yDYo4lcl2njR6Ii9KjcwOBhXBucNleA1d6axWZCyCM6w4MpWq2a3OpChdsTxoB+KvaQSR+0a+ftmJfQ1NkVu8MX1W9Nl3dnFAxjr6iTdypujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VUGQcSuYOxkonLjjQYX8MUrS4gAOXDbDq+AA5cUHiiw=;
 b=VFuAVVWYcXpwi6ja4YKxv2yJwIhvZSEC0kCNBd2jsYNNXkxWsensVOQ+ayB9RovkXUTnGr9MX1T0P05HYiFZuE4k7tvMNCNPiCJyHqN03vc4xWtTw/ZY7SO4rzqftCSzF2aJoHPmP49t9pucAeEzcZIpiH4hFJ5E4wMjSSg2uaXDDX+8WXF59NRNpPnjdzcyEZl+UC/DbUVHbFfYBjp7/R+1Nos40/xPRxAaefbqxx+JLnyKu9/Xctffs43GCVdXXjUA4kcBLRA2JC6PrYvATW99+RfipqI/pbH2e80NITklBGQI3MU5avZLD/T36AlKi2LJtSzRr7pQz2JS32WS8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Fri, 17 Nov
 2023 22:12:27 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 22:12:27 +0000
Date: Fri, 17 Nov 2023 14:12:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20231117221225.GA1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231116212511.1760446-1-radhakrishna.sripada@intel.com>
 <20231116214625.GU1327160@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231116214625.GU1327160@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR06CA0051.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA3PR11MB8073:EE_
X-MS-Office365-Filtering-Correlation-Id: c0bb4fa8-65f1-4d74-d7c3-08dbe7ba4890
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 59FC06qs2aQQMP4jWJaKv6JUfPCuADEbqF2WPWljO2UgQk4wnA5GJ9Vvmhbt0GB2nvjKWxakVBwrzjB234HigJ7BfLnmb5A4KZaP+oDFZHH3ZGx3EM/hZ/b8mClfTNXQZNqsJtdNavZzjfTp5HO1/GhsSCqWWliDOHrcVzcthpdLmy9nrZ+RgP+OfxeQTA7u7+pYSPBdG29irGAb3fLTGvRU46XuGXZMEsIvqXTf1EQtB5WsCW5ywVlir/5SGyeTEWAGqa8ptwDNfSFRKu9grIwJ/lmM1HlJ/uH0vKz9zBQPlROb+z7AIJGaLXYCZPMnk/BtLkTWtMVpBtOM8jGngVPeBs1X3vsFC+rKeuzn1MPxXX8NjOiWjvi6qEdwwOetU8TFA6RQv4waFtEe47rUpzwc2tbCfMHzD7/pJrWlqqSq4jTGu0OZA0zXEKIDBQLF7tHrBZ2mE1NrTzqXvy39c3bbK+VIOuM9GBb3qg1FIFjDkW68HJnCO2xTe2lWmDq2ycThAND37QJumF0zkll1035cSmLDQ05ryEiVi+ymRbB5SCIz1ONb2DHl0pQmbGYY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(136003)(376002)(396003)(366004)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(38100700002)(83380400001)(82960400001)(1076003)(6506007)(26005)(6512007)(478600001)(6486002)(5660300002)(86362001)(41300700001)(66476007)(66946007)(66556008)(6636002)(316002)(8676002)(8936002)(4326008)(6862004)(33656002)(15650500001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FwXDbAXcIhSOdRKoYJ3qJRwNQJGi3qpaGjSsTDcYc3gd02kXF54dJ4cP6PIY?=
 =?us-ascii?Q?6z4W/8vV+/cqGNXflXppbj4x3I5s0JFC2LUXh8e+elGf/2F5hTb6MuYWCHql?=
 =?us-ascii?Q?xsHhgbvGjxXrtBTrnnZa6BSrKQVIEJEZ2uvidHEZ5x/MDgBYIHUQUy0g+o2w?=
 =?us-ascii?Q?b3onnAlSHLMEFvChEUAuKkx4KT4i8POa/wfOatkJQROGD/WC0m1cAydL32zA?=
 =?us-ascii?Q?RvP+QWQnvdN4Lt+B3WFrmF0XR1In2MNCxqnM539joBECXH1KDY7gPaxjnp0Q?=
 =?us-ascii?Q?Ir/YVmnU148Z5Ny1ZFZr8nyVjELNiu+chZLJL+rNVK6Sa+4gp36U2PQB5Mac?=
 =?us-ascii?Q?2pIDK2GKL9K1n9FKh9ZepcpquDOcVI0upqKJnUdbR/MJtgu50AXw0ha9mpPQ?=
 =?us-ascii?Q?xaP56rwapndy3tgATsWPldEsHasy8E7+N9hHfnlSOlWEcUeLM6MstODjUurF?=
 =?us-ascii?Q?bmeGkcMjNqOMp4NeCMtrqCOsevAKzNG/Eyr7GY3OMtOspUeAmxY37vSpy370?=
 =?us-ascii?Q?V5NEl3kkBYBF4uRmSdmnJyyQfyaQ8muQTeW+VtJjB3Z8My2OtbPk1xNY3DbA?=
 =?us-ascii?Q?BRn2G/wl4af8dvWSVkkg4yk7Dm5Rib8mOG7CyBwzzbL7F1v49NEVRew0D5bS?=
 =?us-ascii?Q?zY/xUvCjRl6hXLDrr0fLKq83Ww0TTNzNTtUS3la0PHBu5gJLYk/Y+DM2nlZt?=
 =?us-ascii?Q?gjhp8c5cbiLo8/uil7Ogty3OviKFgsIG260/QL9aAZePrfdQ1KwDfRlS3Hx2?=
 =?us-ascii?Q?cUztI0qOOH12AiVXAQFeOIbyMvYrwK4HyiPwZagxG8Cbov1BV8cTw+gCd2Ed?=
 =?us-ascii?Q?a3dAqul5pyOAIIBHjTI1KQqjSvQ68drvEzs6HqxdOZIVzkPXIUCm0GRNzUCh?=
 =?us-ascii?Q?GxLqCR2xsvoAGUGjV9DPNhwnWoRwaDbDobMHVHZSgjh081zkD8zYoYrht9U3?=
 =?us-ascii?Q?D9u7l6q1aDxEPEkyCusAmIQRoogW93EEDbJsMCOPT3+0bhNXBhZ7APo/8jjw?=
 =?us-ascii?Q?3rpl4bPIOQ9ij8lRF2BkBt8K1WRNXVfYjIyrYcEEmwraZAGaxhQZKs48smEk?=
 =?us-ascii?Q?7aOHsijqXMt6Wl/G6aTYtZEtmYr/tLCGGiz60BF+A6yCQTQzCRYIjIN0p8RS?=
 =?us-ascii?Q?+GAA8W0/uFjuCl6Ri/V9sOOJqatbc35xkkr1jvCFUleWZWm/blNRDTfrUmLy?=
 =?us-ascii?Q?JBkqkVywObXMLYLvXOpeiFB5weTXj8wlV5RGTHhOOa1iI0UfexT5XCseXURq?=
 =?us-ascii?Q?p+Et+Ao+9uyNHRZlGdAIaF2j0FHUpA/03zCU+9bwOCUMX+aPs3tiz/zJV0h/?=
 =?us-ascii?Q?vp8mMoujca6PkUBMUkvNsHJvTuov2HiP827/O0fb5dXeYy35Xzuvo8IJtuw2?=
 =?us-ascii?Q?txmJ0jBxKdkJjuwyuyWNMrs2KT6+MJdgp703sMUIf9NrAeQ6M8uA0Z/BtxkR?=
 =?us-ascii?Q?hJWDRiig0OB4iai+mUo3GPmtVtCYP+Qdra7oXr8oglVM9Cgvpw+MICkrduKq?=
 =?us-ascii?Q?Fj4zDauhritWf/Gt6yC31x7Yh+wGra5i0hbda6TSGajm78XAqTMEXKbJKiU2?=
 =?us-ascii?Q?bRf7rfQi8ieuU12iDrNlIM7muG4R9GL2+gVf633R8bTeBC0jMozl25L0xsNl?=
 =?us-ascii?Q?fQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0bb4fa8-65f1-4d74-d7c3-08dbe7ba4890
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 22:12:27.1628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eA/apARQXW+iodQynasE6YIqKG5z7rIfDOgXjTLC8P7Z5jF1agmnsIKILwvjhLUcEtH8F+IwWn25xmtmEXdWQYSnjnl9vojnNlxHpMaO8wA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Update Wa_22018931422
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

On Thu, Nov 16, 2023 at 01:46:25PM -0800, Matt Roper wrote:
> On Thu, Nov 16, 2023 at 01:25:11PM -0800, Radhakrishna Sripada wrote:
> > Commit 78cc55e0b64c ("drm/i915/mcr: Hold GT forcewake during steering operations")
> > introduced the workaround which was in early stages. With a valid
> > lineage number update Workaround for future tracking.
> > 
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> In case anyone is checking, the entries in the workaround database still
> aren't 100% updated yet, but we've been working directly with the
> hardware engineers on this one, so we know this is the correct lineage
> number and that it is indeed needed on the MTL and ARL platforms that
> this code will execute on.

Line-wrapped the commit message to appease checkpatch and applied to
drm-intel-gt-next.  Thanks for the patch.


Matt

> 
> 
> Matt
> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 34913912d8ae..e253750a51c5 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -388,8 +388,7 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
> >  		 * registers.  This wakeref will be released in the unlock
> >  		 * routine.
> >  		 *
> > -		 * This is expected to become a formally documented/numbered
> > -		 * workaround soon.
> > +		 * Wa_22018931422
> >  		 */
> >  		intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
> >  
> > -- 
> > 2.34.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
