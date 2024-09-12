Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 901DF976F7A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 19:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44A210EBF3;
	Thu, 12 Sep 2024 17:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+0YevQD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D40910EBF2;
 Thu, 12 Sep 2024 17:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726161918; x=1757697918;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aY1FV5yd8pJruVzZe3uapnuzrjuAsf221dXNcXFCcdg=;
 b=D+0YevQDIONdq8wQnOETkB3051onkOUCoHR8YRhSn3cSGMGrAzkZ9ijF
 IqS5lYAHJwQ+P7ZznycD5hPUJFLPbiTIhPnJ7YDz0CEtoRb3ZDy3Csaum
 imnTb8fdP5eyRaxc5JK0fa6BtNyM7oS5LNwC3x56zcYxypQs0hxAx8INj
 VyWe10ldmh8ntIxIkr2HaFf4kZGnnkRQPGB6LSwIqugE0g+6+rpagJEBX
 hDjXTouchhd9M1rTipSZV6BCi0rxjReLwtY5eGJLj/Bs5WJlxJyfwVkaA
 lgOrfehe6FsxFP14ydGHasli88Vty02glRu9el0bE9WxOSkm819eWi9tM w==;
X-CSE-ConnectionGUID: a0qdfFJHTtyuUQtyJFbRvw==
X-CSE-MsgGUID: VS0zdvVIR/e4MxPjwTFSLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="35703542"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="35703542"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 10:25:18 -0700
X-CSE-ConnectionGUID: Kzetm1scSdKW55vaAApqsA==
X-CSE-MsgGUID: kdiq1CBfR/aCEGP7e9klgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="68298982"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 10:25:17 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 10:25:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a+yo89kxM8S4lMNlxuhh7d5omI6Lfz8G2NSTQI4SofUCZP6/sBBSjvYurEsG1+VAeEQT1FNWneE2wttQf1uenMScDSqgDZaQQFQLt8O2gFfgchIvmQg4EjDmWA/WKnOb8djtcGUujoDA3VFQFdOXkZM9NrwfBDi9S6j68UY2rOFfEAm8MOGaupo4ZmWbCPL/ycyDOt4dLJBo/ktOwcRBB5URMN8hNcuc9H4JA+nyiBKHnkuotHczTjjAup1yMNs1DGSqhB9tgTYSouTBnQ9CgKFR9u9buxsVWNrRWMtQCQ00ipPnCyocOkgqCsmo5n/qZckkBWdonkJWXkDsNDwrnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWRrKZ77rIA7E0X1Sns3kzgfc0vfzYVLLYs36tlLPWE=;
 b=yn3sLqTGQQh2Cxajqmjg6sn2xY4MfQeXSkLUbQ6/j4hCnFROf+6yK5/LAjoPGlI9/TFhwI19ZurFo7qMKfe+b7hYQURZF6nZCmV4NNPQr2hK2Fr676u7uiCjG3NSQVhRF6/7X8yfU8w5AH/7W+YVXhwH6NQVV1TQRIjQQsbxCd1fv9UU8V1qg5A33l0/CmB/5k8vjgUsrGxagZEe+DJMqBLIq5Ps6FSNtWfrMEFGeQ4L0/5nRy/H+DOSTA0RRCNgubRuqQ3T/p/HuuTr550v2nDRTbIjFS3ixf/14vRb+XB0whPQiKiXdfEtQrtKN7CE8iAPhUp7ZsNqhYVZR/d5Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.17; Thu, 12 Sep
 2024 17:25:12 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 17:25:11 +0000
Date: Thu, 12 Sep 2024 12:25:09 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/display: On plane capability check rely on
 display version
Message-ID: <3zig6pemzxmg7hhhth7oebgvk2clleg2znvtl5mikikgaxjfiq@zt5dgn4xvw6g>
References: <20240912152432.867593-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240912152432.867593-1-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: SJ0P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB8427:EE_
X-MS-Office365-Filtering-Correlation-Id: 78a325df-e0dc-4d63-33d8-08dcd34fdb74
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ycuONDjw3wRm9TipUIsTiyLGZofReJoDzJQ7h4RAHtqi9cxAoQ7YgzxS/oO7?=
 =?us-ascii?Q?M0FlIb2zmcOu3uwLvpXYAU+o+jpRsD0eTywICohQA7Ljm58iqcFGGSZoMAPh?=
 =?us-ascii?Q?IKYUzH3CxgQ0Wdv+zE1dx19GNCKO/auf5zZ64NRBxvJSGErJmgmIulA8+oxA?=
 =?us-ascii?Q?qFamzUBokUhqzafSwUsDpS9Gh44w8UpJrCR63+r1X5ifr/jSnUc6XkVf9btm?=
 =?us-ascii?Q?c8bzxTnqk83qWnAsTR8/8YioHlba7rXDEOZwaMdgg/yUH0+VTuYPp3ssp9Va?=
 =?us-ascii?Q?5TeBStoSVRGyrfBqO97dDI3JtXgrHJoO5owCrQzDOUVj+CGXtG5KAdsuZsZS?=
 =?us-ascii?Q?bKLuERPhYRJvLupxsiTuoDHvFsN5LXZINrjiRutEnG251OGLQzOuxVol6WzK?=
 =?us-ascii?Q?ssJrvN/C5PjCu3Xb9m3L7BfRbCtwUCr9tXOSIXASj5WhTuy7SUMBCRizzHDA?=
 =?us-ascii?Q?oQgz3gcwWqVB1wZNrBSSkLriixyCIxhWc0mbe78XHmD7YBvhmpwKj9les45I?=
 =?us-ascii?Q?NBOekxy5c/epPpKJO1cPqQlkt9rQE4fTw1rr8lZ3VWZCruI3w3U+DsNzVk16?=
 =?us-ascii?Q?RDVDWocLHA2miSwGFY5Yf8qVOoBAeCCvY5UYH/GWHLGJbAnt9BkZ3tApFfqg?=
 =?us-ascii?Q?W5AksRBhE851wHjn1deQZoWLQy3BAHOQSkY1WJ48Ly/EId/ln5D1jk0za3xP?=
 =?us-ascii?Q?83clOga7CBEZh78WTGchJunx9vE8Cm3znicAnc/tFByXTAaaJlwR8GRCDjlC?=
 =?us-ascii?Q?WurjTeUGP6zic8TcoZC8oer86kN7rzb+Dlntppjy7kplVTuD/dTo3m98UufI?=
 =?us-ascii?Q?x843HlHFwWn6+fbHGhZws0R1B3vkbtyumvXA9hax38nkes6tFOz9+KWde1d/?=
 =?us-ascii?Q?iIoQi/4PSzfCcggS/5yJuXS3hBdKbQrV8zPs7O0Wm+tAKQnjEJN1ulPAG4KS?=
 =?us-ascii?Q?j3bmKjgZLrJ4iDvJ9F6qbjRuKjGic1ET/3zVkWnbXQgzc/Nk3gL13HlrEvKN?=
 =?us-ascii?Q?WIxcqerDHXYhydmw7Niz8n357S7IXNgmmt4A0VripXWtxpuxhgs5OT6z19+P?=
 =?us-ascii?Q?xwGjEXXRv7xTqDmz5T1sk72skx1cW32THpY9VtskfuQX/vE3dhj89uvSW/Fc?=
 =?us-ascii?Q?XGJRn0kdfihiaXGyaVF4GdDMdAAeBZalp1Nhyub9eMHDtbZitdrA/MDDpMal?=
 =?us-ascii?Q?lhPEoviyzPnwHMzU6c/PoBl7e+U8hqHhzRdw7utIePDOVle2w4iM+yMV+B9Q?=
 =?us-ascii?Q?tuvDidjF1u0k/bJx75MWfyOFYioSMtWd0mBcUmBRUcwBGw6+B5Pqe2KLukDr?=
 =?us-ascii?Q?RmLQzFIYSSaqo9lVb6XuhynZzB8kNXIZw78E9tMxsTw7Jg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wJnMbcfWMHDXir4/EbURLFzclQCaULYDXz9QHrmyKQXRdoYySWy32wf2C6xW?=
 =?us-ascii?Q?SFg0mRllnXx4lzUy+9UhjAEoCY+NejuUoCivGlRxLshPuZ7O6InRoJUI6BoW?=
 =?us-ascii?Q?mwBRAdgUQC8CTwAfVBl733WzWUkQe07hIhNZI7gxgdbf406rt8UF5OeqdkE3?=
 =?us-ascii?Q?8lkKtfFxDKtj3bOAGN5hpf+wuAGJB969Mvo8Hd2KZFhc4ry2rBMREaUSzDv2?=
 =?us-ascii?Q?BZhL5ogo9dVj1fpNF1YR5+g/0J7CpzOwns5QIDpRmpdyeJC1fQNDFHR7a758?=
 =?us-ascii?Q?mEUtsXPDxDCbsYu3v3ICDF0bN7XUMUFGwqz53CLDoT5m4pEWUwpm5gDC3ZHH?=
 =?us-ascii?Q?bppF+dkR+YMLkH3FiijBlhkC8Z4QlvH8t2k5/j9dpO69VgQN6+8S9UKqYEuE?=
 =?us-ascii?Q?rYzVFcjaG5hOnBabUZCqchQ8B5HVyIbXnwTtWsN7zxwB9cJGn92YyidcAveI?=
 =?us-ascii?Q?s/UGfuQ62t3zDVyhyKonNRpkF//3F+alOQM55QHaVgHdUpkv8HPlZVuVw3JE?=
 =?us-ascii?Q?OEajsTXu+KKuhs5MO5aN8bj4mhY4doK4jYw0Ga3KqxyEc6/wY7VoCTA5iXMo?=
 =?us-ascii?Q?1hB/RErc9gZ2bcEPewQKuHgev0sZPX4MqbsW5b7WPsabCbOd4U8zXuj5YRCb?=
 =?us-ascii?Q?cWVQKlGZq/F7NvGWmDqPQSybaBGuWrG1tSb2eJEPx+zB039xqoen8S4dG7Iq?=
 =?us-ascii?Q?zfxcI1FtEd8OjwNwWKTjBdalqMeO44tZL1lJCojzigoPEE+ly4NKLNrWwhmo?=
 =?us-ascii?Q?aIUgUEdUJ0rRQGLxBQL0J0/ppJuGV1/SAU6ocnPnc3EoQk9rE4VeyVHcIbjd?=
 =?us-ascii?Q?1BehBZRAxohRuNxVwyPpTxMrTyd7QAYde0zBX7b4j5IIiGXd3RH7l+z+nPRx?=
 =?us-ascii?Q?KirpAvy03Z3FNzsFiADVmH0cgxJ+BS0pRBJqyJusBimqNQAeCPEUoA61aw7f?=
 =?us-ascii?Q?T8UEUuWN/y705992nVRKqvlXLjWFyJbpA5y5o/7yTsgFxgQbhTS04I5Nqc3Z?=
 =?us-ascii?Q?qfyGzSuK1FmrPkvcTytA67ToWa9Cw0oiRhVXbVnr0qCDxctB2Ln/wWaiLoSD?=
 =?us-ascii?Q?A+jjse9bR8tikD89hECN+60pIcwJRRyDSJPsv5D2D6EdRkysyrQREpYlVMmH?=
 =?us-ascii?Q?bQbUodGICsa0irJYw22uJhrjm7Y2mFcFApjfLCo+PKfE3AwWrBO/LxV2usnv?=
 =?us-ascii?Q?MT1NcghcUWtismCyXgpByJy3+J2ItT0m27ddAi3u4OxzSVzB2MF1JOZkXqom?=
 =?us-ascii?Q?cGhXB8eXrtEEvTEAocqL+g+RlmkwTtAuQnPT2md5gXGtUhfxfpFVW6CMGaf/?=
 =?us-ascii?Q?qAaI/ik5Fxqj1okBZIiKph7iIdKONld89kHbwlPkeuKLgV+Fgleb7vO3pdch?=
 =?us-ascii?Q?omHQAt6QK8ZVQlV7Nqqo3T33AvcJTv+Gn38cj3myYC72Be0lXvOkgmQLsP7j?=
 =?us-ascii?Q?dGvdzlf+CSTf5s9ppf8KPTUcUOP615CE5vaWZU6CWMPemwkEqbnFFio9b3kh?=
 =?us-ascii?Q?71Ydj768OJ9zFLdZFAlJ08afFQLpZbRKRWTHbpDkmeFSTHnqk8vkoi1kV/Ll?=
 =?us-ascii?Q?0UDCkrrh7OyN2jCpOO1B239BwrlllXOFAF9kRIrqd2uqjPogVuxQozO70khM?=
 =?us-ascii?Q?4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78a325df-e0dc-4d63-33d8-08dcd34fdb74
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 17:25:11.9241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ij8zmYMEaAsbuux+A4xuGEGgyZWQwWLG39lBiwW98SE/c5IvKSbU0cTur5lIr0qK4DvARr9p8xTTe2KTb7MlMvMbgF55OE3nu/v3S6Z05+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8427
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

"On" in the commit title seems to be wrong... and also it doesn't
correspond with what the patch is doing.

On Thu, Sep 12, 2024 at 06:24:32PM GMT, Juha-Pekka Heikkila wrote:
>When check in display code for Xe2 ccs modifiers rely on display version
>along with separation of dgpu and igpu
>
>Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>---
> drivers/gpu/drm/i915/display/intel_fb.c | 6 ++----
> 1 file changed, 2 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
>index c9038d239eb2..25de4ce356bb 100644
>--- a/drivers/gpu/drm/i915/display/intel_fb.c
>+++ b/drivers/gpu/drm/i915/display/intel_fb.c
>@@ -477,12 +477,10 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
> 	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> 		return false;
>
>-	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
>-	    (GRAPHICS_VER(i915) < 20 || !IS_DGFX(i915)))
>+	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS && !IS_DGFX(i915))
> 		return false;

if I understood correctly, this is relying on the first check in this
function, right?

IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until)


if so, with commit message rewording,

	Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>
>-	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
>-	    (GRAPHICS_VER(i915) < 20 || IS_DGFX(i915)))
>+	if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS && IS_DGFX(i915))
> 		return false;
>
> 	return true;
>-- 
>2.45.2
>
