Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D939A4A62
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 02:05:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBD210E9E0;
	Sat, 19 Oct 2024 00:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EFKUIuJR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6744910E9E0
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2024 00:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729296325; x=1760832325;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5VpHnM72WGR0y+JxzLC+jDz3VoQgQIzBN7I546MBT6M=;
 b=EFKUIuJRoeFNBkLRatQ5+lXCmXbzDc3WgOW5G4/z1Z47GHCWpX0E0SlP
 GwpKZ8kO/p3Zr+S9vtDE0HzcOFv7rM7ED5hNOzHb6NedgqMmVL9RlPauh
 WrdCDTGxt/jLmzr8feNjhez7dRK8C4Lu1MyzHNrGRSOA5GTLQTPhGyz6R
 gsTgTQhxOM9sUIj3L5XGlWubintzcTkeDcsc3ZxG/A4mSJCJNWBFv2w+m
 oRHHouydYqIJPeY/rj9xII7ovXUJfLoM5YlctLk91tnedMI6HXocGcnkP
 BryYTs76hAHXMJ1h5xIMnJ+44DDdfFRLSROMYDuPQyutWArlxFmiORTEK A==;
X-CSE-ConnectionGUID: /0f+2tJbSpWs9g2MQwQyVA==
X-CSE-MsgGUID: Xuk2u6gdSJ63T030xiKTkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="31705454"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="31705454"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 17:05:24 -0700
X-CSE-ConnectionGUID: rWhl2xjxQVW0r74Zz6yfzw==
X-CSE-MsgGUID: hJuYK35xQby2oD8WqD7hug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="116466579"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 17:05:23 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 17:05:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 17:05:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 17:05:22 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 17:05:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nXJv5MZ/x1RH0XLjbi4JrryFiqemqnQn8vjIgwPqyHJY+tXsW3b26ihZimLQynT3WTodL0+ENuolF3lGJNxux99g1lhLTTsovQAEKw8vwyioDn3Ex3qsIWtl4/u2JxUbsrFuI5PeD4p4u/CcS1qNeDarvzD2g1myZktv4pr8h584Ff8LgAPraFJljVynTwm7pCHZVU0QeWA+q3KO2YEVHyEcmlhbswP8sbXfZ4U1rDAhZ2zgvKRB5RXttmgxNilE012FvECnrfa/gQAeTm3/YAJ4DWrda1KU8O1flu2/aqoJOCEnaKaiwlYMp6SUNtt042vyiH/kNcrtaPjF9OCt+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0tPtMYPQQY2tc6GdIOy1/F316PpZj8tQHxC6sXNDFs=;
 b=D149bcOqHElyJsFbj/LOU5Pom4N7W/adcTtFdH3EElk4LSsrBMnpSJO7tt3NTAYv6Q3He+JXSthqTJ/vd5+xuKjRryB3wVtkAoKTtldPbo0YSr7v7IGX+g89eJRgVcu1EYZlJ50wRvCaMHYpNIBLon1yU9YHPGR87DjYmpJdEYFeT1mqsCIcCH3g3paTL2mvw6tta7U1ODOg5hLsrnzqY+ZIC31ZrFGcB/EiTlXvnizZLAg/3igzKzLu5T9cVm+wn0CNsjAGXl+950vtMGnBuO1e97XR/Ki7NzCVhqSfbV0uSr94bbtlDB6fal+FUWOYuH/E93xOqSZ6oKAnNyJopw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6454.namprd11.prod.outlook.com (2603:10b6:8:b8::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.19; Sat, 19 Oct 2024 00:05:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Sat, 19 Oct 2024
 00:05:19 +0000
Date: Fri, 18 Oct 2024 17:05:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH 3/8] drm/i915/pmu: Fix crash due to use-after-free
Message-ID: <20241019000516.GK4891@mdroper-desk1.amr.corp.intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
 <20241011225430.1219345-4-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241011225430.1219345-4-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0275.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6454:EE_
X-MS-Office365-Filtering-Correlation-Id: 1442dcc1-a849-4953-d9f9-08dcefd1b81e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hujtTLwVNMmN94LTAPz4H9paVFXWGiwIo+IDL3K0hRzrkCF0vZyRcEXS7IZF?=
 =?us-ascii?Q?Uxm6G3KvS3WZre0W/Y/fCQlkjXAIw9/+jSzOzIQGLRAf3gywAEL9F/1DYFis?=
 =?us-ascii?Q?caNEuwWCaQXJKaDdIIZ6Zmr4hUFMBRvVhm/yxHrPMCNJHa+g6mI6bUL8C/u1?=
 =?us-ascii?Q?tDt0F2psqtI5f92FFKoOCVrHSZlX8FWIAaLVrdEeOjXmlgJnMPNwKGqY45lW?=
 =?us-ascii?Q?ysM7eo41/BZo1tWwHDIX+RumUu69X3NBHB2KscGCrpHP2V39RSRLirtcIiXH?=
 =?us-ascii?Q?tOe1WaOpdHCP0SWtachSQrpwWwxdQN26ggDgV95OaaZanluKiCqt/Ma//tpC?=
 =?us-ascii?Q?Of5cpWnBVHvrNyOwqDXTYuPT9N5/M5aAqVVEZDbu8DwyO59q8oKPcM7uWA6e?=
 =?us-ascii?Q?u/XUxvVt6ZRHYrB7g56RuwNueeuOUNTFIz9PV8as7E21L29XLjo4+Yu6kjFh?=
 =?us-ascii?Q?rLsSKtbzxEFHwQwwEK/ecoNd1y7dq6UZ7eJngkYXdSYQiDNg83JXmTQOTQpN?=
 =?us-ascii?Q?Jdm3/djBjHLf4kGYbt99bYMuKCopzAzULek+vB2+79TYah+cAOY8sN96cw3g?=
 =?us-ascii?Q?To2+HmqH5UsZusLnJ6P5nNCajX0bwMz3V2aJ0rPVFCdGZBHL8r11TVQyPk8W?=
 =?us-ascii?Q?Zal/hhwYlmQHnG1bomcMRWC6ukpYGYVJhvVVpBxgdIO7AeajiJ2R3iiEr8eP?=
 =?us-ascii?Q?vHTuHCJQOXWR76Thwt/yDsWbwSlL3naEv5/6SPkfPuCWr+YKLW5YBqbqZ+B0?=
 =?us-ascii?Q?w9tlvhR49CmipQqmXR1a2RRCndlMN+wtIhsp9KNPLEnF3NzETFaR8q9Lde3n?=
 =?us-ascii?Q?7Eo+8MHfTsa8uAdq6ko/fsjk3RacTiJYpzASurXcFMxCW0YxsrZ9GKAdGp+5?=
 =?us-ascii?Q?3TYAJtLAa6sSJ00lmNbsCqmeWxYcVjqkqnGrml8xBMvVcbdXE64XkWkS7a9p?=
 =?us-ascii?Q?NXAXP2ZqtIDKiHENrChmgbXEdJGfvKPXWT645xumidU5HXECBaTJFE1mO5w0?=
 =?us-ascii?Q?mEfi0AwqPomQ8Q8wrDCrU/qxgk37mdpAz6tJA3kEpsuiCLHT0RYjYdnuj2DZ?=
 =?us-ascii?Q?TCUakbEMMpfOLQrxx9mrAkhS5cl3yGGS59lyBqlDhCMvQfFUsU3leauZQQKE?=
 =?us-ascii?Q?u1hmfXA+GbW/yLL7GxpRftTFbivnBjufskT4FZWM2temjMS7B1PpOiBzLgYA?=
 =?us-ascii?Q?FZYssckq69iV3jSwxGgao+k82KdSE45DLNTAspPIMImWjOjlxOHLTjt99fpy?=
 =?us-ascii?Q?G0oIYgKapZ3lwPQgudOVGQm3YRf+ZhbY3qqioCF0JrfCpjtWWOyaIW+4sz/4?=
 =?us-ascii?Q?CwfpPMtcNOFN7vJsJPgGJEw7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?anu0svTFj6nLhxOhPYPwsxXTtf8l3c9BEN2P43dvlTrAP2H71MNZ8h0B2Poh?=
 =?us-ascii?Q?zOWyZcZQ/xqB2XDzD3Wj3HzL55bAnbImMwHGIBgm0N9+3PNvEyC24bHMm5nz?=
 =?us-ascii?Q?icbdukZ+T8MlpBK/mM72UsOzGCoJOQ25IBxRvNnax5udGU2RwTu952i4/+Gu?=
 =?us-ascii?Q?hV7XRf3ODVc9gswKb0HkMe7n6wMWqNRbhxmY3Qp7M4TXI8bQFnnCtBifOZ7F?=
 =?us-ascii?Q?ehS34yIfscGyz339n+J2/2SXxcQgYQVBmTBiWzznexn2+1+iQldVBq62L1nV?=
 =?us-ascii?Q?DeRsN4UzMF/E4ICvY5cDTwN+ardsWtb+PDtj6v6v/rpHEeaKyCrUeO6bDOpj?=
 =?us-ascii?Q?nIMJlWnQxwq3kqGUCg0HlBJ3TtVDeTWKNYFeSnyK5i4UOUTi6wjWZrxnnzzO?=
 =?us-ascii?Q?gxNtibc5E0gGKOp807Y2IiVVtgsCfIi5tFTvzN4Y/j9Y8Efqy0grkkggFIiI?=
 =?us-ascii?Q?N/9eOhVzldm2+4fdf/FnknSlupCP9HIhmXFF8LPjrdCha8YH+kY/IrLBRSn2?=
 =?us-ascii?Q?ikNGwZqtde/UXIZYfTeDpsXN6SXEIjmoeJHjx9jhmDvzLQDDNMp0bx3uv5qp?=
 =?us-ascii?Q?6J5HP/hGBcQyvwkcJKrPXSXBUYs04OH4DdqfVZ90ny3llTu4NkH9xo+6BAi4?=
 =?us-ascii?Q?SB5RIiZ0j00A4BNX0r1XpipVWviE7ddQ4od8dRd6sP+dUOWStgq5VHCMXe3T?=
 =?us-ascii?Q?gDcPX8cbcOJbbTcI1j1IpWdc03Eg3xxUcPToYqtDFhf0d1LzFbFpDuoKaofX?=
 =?us-ascii?Q?gSd5LFa5GG3PcYdXI9eFf4YfDL2yWEFtzAWnlCFmb+SVCjWXSCXdzhV0hMyj?=
 =?us-ascii?Q?KLq9soT8upHuywQJGXy97mUeQjb6qDd5BOyHwdbOnq9K6MLaksDiD/fQ/vYD?=
 =?us-ascii?Q?t49CE0JbWKin8NhRdA20oGgoL4HDfSJx4fjmTa51SOzEsUSRVmUPWDmiQiA1?=
 =?us-ascii?Q?RtOlmcby9Qi4XWy46RVALOwAYeQwHRXqU9PDwwGPa3Z3+67MsaNzk1X8KDlr?=
 =?us-ascii?Q?o26EpyteICVRPgxraPeaXWCGW9lZVzd2I8ON4mjWjzlDQSN1AXkISaei4ZT0?=
 =?us-ascii?Q?I7jAmnfGLZ4cJ5/u3UJLEcVuh/a6CH7ffm3yMjZSvcaVS89Hsmp5F+FNWHF3?=
 =?us-ascii?Q?Jwy0LpQgfh5E0tow8X0fZGR57uVmqGBF5IYKL0LPgnfWde82jeaIQNAQoz3C?=
 =?us-ascii?Q?nHWpRpz71MUUefLZvwsUyewf1JpPQQtPbvvZcNpbcdjXKl0QXqNZg8CDSpUG?=
 =?us-ascii?Q?KkZ15JWCs3hgrEOsKD5xbiv0pURXv0I3RgebIErpfXs0hWMKC/2jmWelS+YE?=
 =?us-ascii?Q?ZdnkXHexFc+XqIPJ4qQqHyMteBEaQStmp6Gj42c26beQz6Gyr+97jDVmFGYc?=
 =?us-ascii?Q?QT0JY0lfYifHVFrIUfePRvCigc0mF2kMGTnTcumhXdHr8Bs2+BfyvrQgB+R4?=
 =?us-ascii?Q?n79e+VJFj4Ldq852aHX4iEuI1f13oC3xWz6pI0UROfc51IPfXNOwpbI+nYKg?=
 =?us-ascii?Q?Gv6IkZUZEIQAEpRaSzCDwYkZHh3PEOjxwLG2Wrk72NfReldQVZnFp0zJhGkY?=
 =?us-ascii?Q?zcQwNKdME5h33zEReDC8cVW3xi64HlqAkhW4z2Wp3eX8v+t4g9jxKo1A6PdX?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1442dcc1-a849-4953-d9f9-08dcefd1b81e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2024 00:05:19.7664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 50fk0jqMjCnOTCZ+XdCewMZYvUVgoVHC6C5bSrN5oaiihXGpCTBArbYvXofgqb48NKXKZaCccxiHouJkIRO22JOtOzUudawYqQ5F0lUJ63w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6454
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

On Fri, Oct 11, 2024 at 03:54:25PM -0700, Lucas De Marchi wrote:
> When an i915 PMU counter is enabled and the driver is then unbound, the
> PMU will be unregistered via perf_pmu_unregister(), however the event
> will still be alive. i915 currently tries to deal with this situation
> by:
> 
> 	a) Marking the pmu as "closed" and shortcut the calls from perf
> 	b) Taking a reference from i915, that is put back when the event
> 	   is destroyed.
> 	c) Setting event_init to NULL to avoid any further event
> 
> (a) is ugly, but may be left as is since it protects not trying to
> access the HW that is now gone. Unless a pmu driver can call
> perf_pmu_unregister() and not receive any more calls, it's a necessary
> ugliness.
> 
> (b) doesn't really work: when the event is destroyed and the i915 ref is
> put it may free the i915 object, that contains the pmu, not only the
> event. After event->destroy() callback, perf still expects the pmu
> object to be alive.
> 
> Instead of pigging back on the event->destroy() to take and put the
> device reference, implement the new get()/put() on the pmu object for
> that purpose.
> 
> (c) is only done to have a flag to avoid some function entrypoints when
> pmu is unregistered.
> 
> Cc: stable@vger.kernel.org # 5.11+
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 36 ++++++++++++++++++++-------------
>  1 file changed, 22 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 4d05d98f51b8e..dc9f753369170 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -515,15 +515,6 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>  	return HRTIMER_RESTART;
>  }
>  
> -static void i915_pmu_event_destroy(struct perf_event *event)
> -{
> -	struct i915_pmu *pmu = event_to_pmu(event);
> -	struct drm_i915_private *i915 = pmu_to_i915(pmu);
> -
> -	drm_WARN_ON(&i915->drm, event->parent);
> -
> -	drm_dev_put(&i915->drm);
> -}
>  
>  static int
>  engine_event_status(struct intel_engine_cs *engine,
> @@ -629,11 +620,6 @@ static int i915_pmu_event_init(struct perf_event *event)
>  	if (ret)
>  		return ret;
>  
> -	if (!event->parent) {
> -		drm_dev_get(&i915->drm);
> -		event->destroy = i915_pmu_event_destroy;
> -	}
> -
>  	return 0;
>  }
>  
> @@ -872,6 +858,24 @@ static int i915_pmu_event_event_idx(struct perf_event *event)
>  	return 0;
>  }
>  
> +static struct pmu *i915_pmu_get(struct pmu *base)
> +{
> +	struct i915_pmu *pmu = container_of(base, struct i915_pmu, base);
> +	struct drm_i915_private *i915 = pmu_to_i915(pmu);
> +
> +	drm_dev_get(&i915->drm);
> +
> +	return base;
> +}
> +
> +static void i915_pmu_put(struct pmu *base)
> +{
> +	struct i915_pmu *pmu = container_of(base, struct i915_pmu, base);
> +	struct drm_i915_private *i915 = pmu_to_i915(pmu);
> +
> +	drm_dev_put(&i915->drm);
> +}
> +
>  struct i915_str_attribute {
>  	struct device_attribute attr;
>  	const char *str;
> @@ -1154,6 +1158,8 @@ static void free_pmu(struct drm_device *dev, void *res)
>  	struct i915_pmu *pmu = res;
>  	struct drm_i915_private *i915 = pmu_to_i915(pmu);
>  
> +	perf_pmu_free(&pmu->base);
> +
>  	free_event_attributes(pmu);
>  	kfree(pmu->base.attr_groups);
>  	if (IS_DGFX(i915))
> @@ -1299,6 +1305,8 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  	pmu->base.stop		= i915_pmu_event_stop;
>  	pmu->base.read		= i915_pmu_event_read;
>  	pmu->base.event_idx	= i915_pmu_event_event_idx;
> +	pmu->base.get		= i915_pmu_get;
> +	pmu->base.put		= i915_pmu_put;
>  
>  	ret = perf_pmu_register(&pmu->base, pmu->name, -1);
>  	if (ret)
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
