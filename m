Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F3B782BC3
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 16:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3A0410E0DC;
	Mon, 21 Aug 2023 14:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED2310E278
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 14:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692628107; x=1724164107;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=qzfAHgEYrWQ+AnJnwlhWDvucHOgBtm0lE5lH0eLr3d4=;
 b=fcpOuUyjkPIRbMOkQTDP3ItGsoBAKjXfc5htFZ1738+HWqWDaSxvV2gL
 7CP2durU/4Z8v/nH3DK+ZG4XxtuFEHi1EqTLn+Kf1NiaRtEx+U6RU+6D+
 n5K3VCU4jAOddrFGRjmS+4PsLhRNe7VdYe8BO1MIrD7zaStOYy69NgKTj
 RmM6ntRd9axbXXA3+1cS4U+bHbJNJIpFfYvcuFJ+lgtdo1Tcmvj/8WAL2
 DNLbtE5772/0s9hVvglXWEbHwYmqg+MDf+mZeHIif9xWLzyeU/nS0+GAT
 NA7N0Xs1xKd8Kf6LELgV4Lz+++wPp9bu7VGYR2s6eTeE5yyrKoYv6bzTk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404609525"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="404609525"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 07:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="909726824"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="909726824"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 21 Aug 2023 07:28:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 07:28:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 07:28:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 07:28:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S6UXOidtW74QheBOdMct/jWC7X7lyP551M9l1d7MzvjI82oFF+1PulcGDkmJYd4ls6ouvlW5H0CvvFTQyYb82F9fp9h0ntOH07cQBRhrjrZIKAqOdN+obunXi5s40wUeUkIuSTbUg0Z7M8RvnxuHzapRnFPLeldGDKCppgxlqKBQru0U3LsSFCBb5S3r6Q/RZ+c5I8dJ3K+rEjZSD3OdqqAdwNicvAk/9In6D7uEZlHHLusCESLXO3VFbiZqZbAFwaj9oRcnE1pLt1E6dofHpCRx/1Ko9ovcKpTLoAlUaXNxjr6Yk1KygAwmROfcZLFMUKd2RX/wFfisyJsfHpfdyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+n3P1Chf4cnLjnJQNgNMd2vT+hU3mko2z4B+4cBObk=;
 b=cSZBlb7YSN3wHbJLanyxI9qBO0i1/PzpYzyywMLA8VpRj+ym2k1gkQxejzP5wi+TGDmpQaPD8kTozFO8HUywh0OLg9Crzl1FtgXe6n1eolanT2T6Zt0sK0vCyfpGJiOfAmYv+jHUyBgTOsJQsG5I+7Eqk5eexoU3IIwtZ2p6RKA5/LSGP/LEoKt5THEPx0oSdGoaWF1F+ze0JEoUui7VeGvhQ4WZew5oBkj7uQf7qTtIQ43jRKCPsP+RgqoFYZjixaRjGerLou8pjZO3BCl3QyRvHMQYKnSUbGD/0eDkwtjiQwPg6RQsOiG18Dk2UxFxCXwf97pgtm/i4OJa6hBp6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA3PR11MB7582.namprd11.prod.outlook.com (2603:10b6:806:31e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 14:28:21 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::e76d:33ce:73f1:573d%7]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 14:28:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230814200632.56105-17-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
 <20230814200632.56105-17-matthew.d.roper@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 21 Aug 2023 11:28:17 -0300
Message-ID: <169262809708.6257.12034828022967945865@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::23) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA3PR11MB7582:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a55e0a2-664c-4deb-14b4-08dba252deb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hWbLfQ1IBsG6WCRCvfrxiSJlYjpLMM8gFq3SNGy1xzO/YhYE829+CVbiDyWAupI5K67RuxGPrfYXIqb46ibr0UA0Vl+Jcfd5wLHqVpxa+eGQoh8KjeaExRN1ddYaoqQ93soq65JNn54XN07kMPpCkIgNg2a42FRyAUbheUnBotEOKSnw43OVHj+jO311c6T4/v1dzz+dFnl5TV5RJxOufdd9aOVaajw98nYBDBMPV8C4zOYMSpLzjfsggq0zlbyqJxqH94HpbMhbu8C45JrzcqPHuh0S04YrZybwYCn/x1LfYjDT3X1GUT87QbA3LRCGnIAIMZHe+YezeFtcrUD4UDqivEfpoxNUt7QvhjNMXKb6PPvq7Ti53/Moo/6MCKUAZTQM6fYi1oTObNxzYl+FApv7eXZaRveszgLOm0nrgg9jy7tWacYjUBcEIDcEebaFFcDxe5xrvSwjbqC/lCm+a8LcAJRRf/yCpHjWnhxieXcwms0EK9h52LLXU62le/TpU5LskuR6cSSz10y70E0Chqgk17OTj/at9eWLOVhCh/UfSBDx0d73e7VQFZ763bZB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(396003)(39860400002)(376002)(366004)(346002)(186009)(1800799009)(451199024)(66556008)(66946007)(66476007)(316002)(9686003)(6512007)(82960400001)(8936002)(8676002)(4326008)(107886003)(33716001)(41300700001)(478600001)(6666004)(38100700002)(6506007)(6486002)(2906002)(83380400001)(86362001)(44832011)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VllqOXdxbDduQW5sT2dQUng0c25NeEx3L1VnRUZMSkd0eE55andrQjA0VGlm?=
 =?utf-8?B?K201dTB3b1NaQ0Y2QUtFbVNseGVwbjZkVVpuU283c0lJdUFYTmY4elBqQ245?=
 =?utf-8?B?QU9IaklOWDkwd2c3RFRaL0w1MnRYaExKVGNsSS8zZjJ6QXRHK1orVjJ4UWQ1?=
 =?utf-8?B?S3JuNnFLNDNwV3VBaTFOY3FkT0VoNTJYZG1mYmtWdXVybW11T25BZC9vNmVZ?=
 =?utf-8?B?NzNyNVByQ3lja2Z5ajhYeXJueHB0SS9hR0hVMDBJby94YzF0Z29CTTJiOUxk?=
 =?utf-8?B?VTlnenNxa3E5L2tkMy9NNEZ2endvOURKOVhkOWxidEU3cEpaK2tmSUxmZUJV?=
 =?utf-8?B?bCt3WmdYbjNwZEp0Nlo5YkFwSUJBMnRqOVplOStGejlDQ0JncnN3YWVvOTMx?=
 =?utf-8?B?UTFvQTNVOTI1OHVSb2lWQlV5V01kYVV0Q2dSejBYcXBSYlo0TGRQK0JzOWF3?=
 =?utf-8?B?TkY0T3JRVjRsRjVWUVZLVFFnUzVDT3V0aGx2ZUlNYUJMUHByMHgzTzZEZ2tV?=
 =?utf-8?B?dXAySUN6d3JGbVU4WGRHZzNsbGJwZE5mNCswdzJiaHBBRzNScFlDS3FheFo5?=
 =?utf-8?B?UTJKbWplRU94YkNqNG1rQXhUWTQ2MDl2T25Ec0Z1eVgzWjdkbE1WdnRTK1Mw?=
 =?utf-8?B?aWRJaXpqUGRLSEczWjdLckRRdjR1QlpKTlJyV2xOc3U0d1VpbGpPVDkxNDM2?=
 =?utf-8?B?S05odElsaHNFbUNvOVZWOXlzYWdOMFVnc3pnTCtSTzJ2NmNSelErYlhpTkpz?=
 =?utf-8?B?TDZWaTlrRktNV011L1BTSUgvV3hJbHZ4MHlRc0RudkVMa3BSaXJvWUh4Z1Fi?=
 =?utf-8?B?V2N2b1NDSStqbzYrVnIrWFhpcVFrRldOckp6M0tMaGJhREdtL3I5bUFaYm9u?=
 =?utf-8?B?QUpONlBRaXVPSHdTYzBVY0FXVnllTVB3ZDlWRlkyUy9CTVF5VDk0dnE2T0Iz?=
 =?utf-8?B?aThLSlJ4QXA3R0xtOXRFWklIaTltK3lIL3JMV0ZrbEdzZG91NEFkSmthbUxt?=
 =?utf-8?B?SVpZOUJYdWtjOG9FSHdkN3NlWEdzVGxiZWI5aUdIelVHSjBMTjc3RFh3Q2VK?=
 =?utf-8?B?R1prTEEydmRSeWZrQ21uTU9pWUNpNHR5a2xaN24xOU53ZVJ4WVpOZDRna2ti?=
 =?utf-8?B?T2dBdmJMSUVUaXduLzFyeWt6bVdGYzAyTE1OT0x1MVU2b2JhZFo2K3FOU21I?=
 =?utf-8?B?REE5YzFQNklTNE9vSVUwb3E0ODAwWHMraU9ZLzJLb2VUeGZyY1lRSldJOXJB?=
 =?utf-8?B?S3NzL0FDNitBNk4wZk84MkhqazdJbXdKWUJNaFhzdEtNS0Z5aDBic2twZGVL?=
 =?utf-8?B?UkF0SEZGcmxIVmtnQVlnVzArUCtXQVFidGVnZ2tNVWM4MnpnTVNQMTVwQUli?=
 =?utf-8?B?SnZQOXAyb1RiZHhjcmIzT0hRL2owRUVlK3Rxbm5lMElFUHB6elpIaXVYa3BR?=
 =?utf-8?B?eDVwaWhzY2NKUEJ0TkQreW9lOTVvTDJrckkxeXdJQ05Pd09QZmxwZkdmSEhP?=
 =?utf-8?B?VGpNVWdOa3VzRkxURUZwVGw0aGtxNllieUVHdVE1dGNxcTExa1hGclM3VGpC?=
 =?utf-8?B?OW9pVGdmVU1ON1J1Wkk2d1hVYzk5UWt0V21BNUVyLzdEQjA2N2ZwTm5pL3Fh?=
 =?utf-8?B?ckFzSzE1a2t3cmphcHBvOTEzVUNIZDFtMjJEVUlGMzBwdloyamtBU0IxNWsy?=
 =?utf-8?B?T0xWVW5EQVZQNjVDS0hmUGJrRTdUYU44dlNtL2lhSE5ZMUNjaCsrOGVObzhh?=
 =?utf-8?B?TnhVS1dha2x6QWwzTVlnejJYUklFVXlzcVZEZnQwWFprK0I1V1NCeStTS3c0?=
 =?utf-8?B?YnVwZ3V1SkxPMjV1TmMyNEtLTVl6V3RldVJRZmFzSENlVWpZUEhwekJvdDB3?=
 =?utf-8?B?OU1UVE1DcTg1WlRRcTVDZ21tLzdZRGl5dEFTU1dMS3hyVEdXa2tQVlNYL29F?=
 =?utf-8?B?L1BOWWs3QkVvUVVvVkEzaEhxWWdLYVNSdjU5STVKYkdTRWFLVFJJTmliVGth?=
 =?utf-8?B?WkFHcGlRajVOL3hQNjRXWVNQVFBHYnRuYWJQcUU0NDVsQ2ZTcHk0RGhQL0xs?=
 =?utf-8?B?ZUVjOGxTTHE4RzlXWjJucEtuc1Bmdk1Ld2JWMnB6c0VvR2s2anRWalZ4VlRS?=
 =?utf-8?B?OVp0SnJWUm5rdXFBUWdNVjhrOStFSlBldTg5d2RLTEhUM3NIQ0tiMWVGQi9Q?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a55e0a2-664c-4deb-14b4-08dba252deb8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 14:28:21.5021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PcPw6+25eaHHF7qWjkeDhFicLVwPG5UkkamPBxnm/vto2oPAkCTQp9QWWc3/AGADSOqQuRBqZlIbE9I3tuT1bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7582
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 6/9] drm/i915: Eliminate
 IS_MTL_DISPLAY_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matt Roper (2023-08-14 17:06:39-03:00)
>Stepping-specific display behavior shouldn't be tied to MTL as a
>platform, but rather specifically to the Xe_LPD+ IP.  Future non-MTL
>platforms may re-use this IP and will need to follow the exact same
>logic and apply the same workarounds.  IS_MTL_DISPLAY_STEP() is dropped
>in favor of a new macro IS_DISPLAY_IP_STEP() that only checks the
>display IP version.
>
>v2:
> - Rename macro to IS_DISPLAY_IP_STEP for consistency with the
>   corresponding GT macro and handle steppings the same way.
>v3:
> - Drop the automatic "STEP_" pasting.
>v4:
> - Implement IS_DISPLAY_IP_STEP on top of IS_DISPLAY_IP_RANGE /
>   IS_DISPLAY_STEP building blocks and make the parameters from/until
>   instead of begin/fixed.  (Jani)
> - Fix usage details in comment.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> .../drm/i915/display/intel_display_device.h   | 22 +++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_fbc.c      |  3 ++-
> drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
> drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++++-----
> drivers/gpu/drm/i915/i915_drv.h               |  6 ++---
> 5 files changed, 32 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers=
/gpu/drm/i915/display/intel_display_device.h
>index 215e682bd8b7..7aeff1a5204b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>@@ -71,6 +71,28 @@ struct drm_printer;
> #define OVERLAY_NEEDS_PHYSICAL(i915)        (DISPLAY_INFO(i915)->overlay_=
needs_physical)
> #define SUPPORTS_TV(i915)                (DISPLAY_INFO(i915)->supports_tv=
)
>=20
>+/* Check that device has a display IP version within the specific range. =
*/
>+#define IS_DISPLAY_IP_RANGE(__i915, from, until) ( \
>+        BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
>+        (DISPLAY_VER_FULL(__i915) >=3D (from) && \
>+         DISPLAY_VER_FULL(__i915) <=3D (until)))
>+
>+/*
>+ * Check if a device has a specific IP version as well as a stepping with=
in
>+ * the specified range [begin, fixed).  The lower bound is inclusive, the=
 upper
>+ * bound is exclusive (corresponding to the first hardware stepping when =
the
>+ * workaround is no longer needed).  E.g.,

I think comments for patch #4 apply here as well.

With the same suggestions applied here,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>+ *
>+ *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
>+ *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
>+ *
>+ * "STEP_FOREVER" can be passed as the upper stepping bound for workaroun=
ds that
>+ * have no upper bound on steppings of the specified IP version.
>+ */
>+#define IS_DISPLAY_IP_STEP(__i915, ipver, from, until) \
>+        (IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
>+         IS_DISPLAY_STEP((__i915), (from), (until)))
>+
> struct intel_display_runtime_info {
>         struct {
>                 u16 ver;
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i9=
15/display/intel_fbc.c
>index 25382022cd27..1c6d467cec26 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -50,6 +50,7 @@
> #include "i915_vma.h"
> #include "intel_cdclk.h"
> #include "intel_de.h"
>+#include "intel_display_device.h"
> #include "intel_display_trace.h"
> #include "intel_display_types.h"
> #include "intel_fbc.h"
>@@ -1100,7 +1101,7 @@ static int intel_fbc_check_plane(struct intel_atomic=
_state *state,
>=20
>         /* Wa_14016291713 */
>         if ((IS_DISPLAY_VER(i915, 12, 13) ||
>-             IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
>+             IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &=
&
>             crtc_state->has_psr) {
>                 plane_state->no_fbc_reason =3D "PSR1 enabled (Wa_14016291=
713)";
>                 return 0;
>diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/d=
rm/i915/display/intel_pmdemand.c
>index f7608d363634..744e332fa2af 100644
>--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>@@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>                                      &pmdemand_state->base,
>                                      &intel_pmdemand_funcs);
>=20
>-        if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>+        if (IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
>                 /* Wa_14016740474 */
>                 intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEO=
UT_DISABLE);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i9=
15/display/intel_psr.c
>index 97d5eef10130..72887c29fb51 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -1360,7 +1360,7 @@ static void wm_optimization_wa(struct intel_dp *inte=
l_dp,
>         bool set_wa_bit =3D false;
>=20
>         /* Wa_14015648006 */
>-        if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>+        if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0)=
 ||
>             IS_DISPLAY_VER(dev_priv, 11, 13))
>                 set_wa_bit |=3D crtc_state->wm_level_disabled;
>=20
>@@ -1447,7 +1447,7 @@ static void intel_psr_enable_source(struct intel_dp =
*intel_dp,
>                  * All supported adlp panels have 1-based X granularity, =
this may
>                  * cause issues if non-supported panels are used.
>                  */
>-                if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>+                if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, =
STEP_B0))
>                         intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_tran=
scoder), 0,
>                                      ADLP_1_BASED_X_GRANULARITY);
>                 else if (IS_ALDERLAKE_P(dev_priv))
>@@ -1455,7 +1455,7 @@ static void intel_psr_enable_source(struct intel_dp =
*intel_dp,
>                                      ADLP_1_BASED_X_GRANULARITY);
>=20
>                 /* Wa_16012604467:adlp,mtl[a0,b0] */
>-                if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>+                if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, =
STEP_B0))
>                         intel_de_rmw(dev_priv,
>                                      MTL_CLKGATE_DIS_TRANS(cpu_transcoder=
), 0,
>                                      MTL_CLKGATE_DIS_TRANS_DMASC_GATING_D=
IS);
>@@ -1613,7 +1613,7 @@ static void intel_psr_disable_locked(struct intel_dp=
 *intel_dp)
>=20
>         if (intel_dp->psr.psr2_enabled) {
>                 /* Wa_16012604467:adlp,mtl[a0,b0] */
>-                if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>+                if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, =
STEP_B0))
>                         intel_de_rmw(dev_priv,
>                                      MTL_CLKGATE_DIS_TRANS(cpu_transcoder=
),
>                                      MTL_CLKGATE_DIS_TRANS_DMASC_GATING_D=
IS, 0);
>@@ -2087,7 +2087,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_=
state *state,
>                 goto skip_sel_fetch_set_loop;
>=20
>         /* Wa_14014971492 */
>-        if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>+        if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0=
) ||
>              IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
>             crtc_state->splitter.enable)
>                 pipe_clip.y1 =3D 0;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 42a86483c694..b11810308e8a 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -437,6 +437,8 @@ static inline struct intel_gt *to_gt(struct drm_i915_p=
rivate *i915)
>         (MEDIA_VER(i915) >=3D (from) && MEDIA_VER(i915) <=3D (until))
>=20
> #define DISPLAY_VER(i915)        (DISPLAY_RUNTIME_INFO(i915)->ip.ver)
>+#define DISPLAY_VER_FULL(i915)        IP_VER(DISPLAY_RUNTIME_INFO(i915)->=
ip.ver, \
>+                                       DISPLAY_RUNTIME_INFO(i915)->ip.rel=
)
> #define IS_DISPLAY_VER(i915, from, until) \
>         (DISPLAY_VER(i915) >=3D (from) && DISPLAY_VER(i915) <=3D (until))
>=20
>@@ -658,10 +660,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>         (IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>=20
>-#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>-        (IS_METEORLAKE(__i915) && \
>-         IS_DISPLAY_STEP(__i915, since, until))
>-
> /*
>  * DG2 hardware steppings are a bit unusual.  The hardware design was for=
ked to
>  * create three variants (G10, G11, and G12) which each have distinct
>--=20
>2.41.0
>
