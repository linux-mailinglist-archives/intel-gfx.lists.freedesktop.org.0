Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB25C8FCB9
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6004510E8B8;
	Thu, 27 Nov 2025 17:52:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RiOnymbd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAEC610E89F;
 Thu, 27 Nov 2025 17:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265925; x=1795801925;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=zJARQzfurKe1bEe2jox/iS04Y0LgEW1Lk4NFgpPzY6o=;
 b=RiOnymbdebNISpR1POPs6xbuUSD+0X4iRyZ48ekXzAnVqza12YEy15A+
 g8gp1OuZdhC+fsClb5gyN2mnqSTm4+OdVFhbl0Il2HHftappp7cw/oOL4
 z2Ny0ACv0G8FCi6mKyzfcLCbnEZcRZylCHcII5plr7bfyy9ovO5feYUZ6
 Ro+hM5ny/F0TMihYOaehVf1tUPYUDEDZnDzs4iCqAGbeSUsDShV/mPodf
 54xbgq2KK+FB+Whzvzeoww052AwkG4IPQUnVoSp2BCBiW6vloKHbBKQ6p
 NbH7q3xrwcsmBWd+CoSD61xbFiem7Ay9FNlp/Ufyfss1b7n51Zp7LirI7 A==;
X-CSE-ConnectionGUID: e1vrgIuASJOxK+da+5bzkg==
X-CSE-MsgGUID: eI1U9pLPQDy/EAwiD6qBEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003039"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003039"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:05 -0800
X-CSE-ConnectionGUID: VF56GLhWRxOf4X9V5BUkSA==
X-CSE-MsgGUID: bLSNo9Y/Sd2rrKStXfmCPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453720"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:05 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:03 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:03 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I+JHyYUBHfK+a/cSVha9A0Qp9RQtRQ7TSspcsQq0et2zKYrkxhV+MdlKSYjDtxgqWcPljkeWeLJ0VBkPIKhgQuOhBF48iBkFePi3PgBVJvY5m5Bdw8+w5ZdQEcREfGTlVFEb0zFOKrLIAdJzu8EA/upQJgoXi5pnKBKSVVB7TYk2qA3P5QTqCg0G/vzsZr7elx8pWtO+m0v40BuIMJG9dEs7hHnfuw+Oy42CFOnW6dmYanxfFsyxp4JV79HDgsp7JtNsPDXps4vZbnbItOmugacRpsySYXEAw+nC4wW3Ma7cYoR3l+SXg861oou19DKK1eThEVr4c9D6uTexCAyVLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sKvacPGFQk67ex3jDlGcv6fd1KVF71uembOZZhKieqs=;
 b=jJloNMEiGPFBqHIAnWNL42rZnMZHpGQGlv3X2EjsOfyuyl/jBa4vkI4nYfRZrW8V9ZpCDTtu29se8Le8wCe3tq9v+aITudWtimQMaRKjchVHEThJj2+tFwT7WZTvrbAeYRKbcFmUPwIVjRSfTqksyXddoXR0e5zZMc2SAqqfSJh86b2Hd8cGH0QOlUFiDmzj4i1m4el7uNoYiY3OgUsIntecC5XmnZkIrI9NH0X9AbJkow85e2fUSjEkOX96HOk5RZWMGVuyBXpPdhXuKdWDJlmXrleOzOW4LgqDbgPnTk+VymLR7ZR2ZqsDfu4lgLjyGSR8oA4fJiseti55MNuo5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:52:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 36/50] drm/i915/dsc: Track the detaild DSC slice configuration
Date: Thu, 27 Nov 2025 19:50:09 +0200
Message-ID: <20251127175023.1522538-37-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: b7878d9c-9584-4e5c-93c8-08de2ddd9b9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VtfYo2rmK3kBWlbrU2+sHnfNOpux+R8no46k9hzHPTg3iLHmcmJF1voRWho6?=
 =?us-ascii?Q?i7rApzuDyUEckdaDeshKtBkU/BNMyolXBhej2OnN4WFx7E9c6Jx/A+trYzOp?=
 =?us-ascii?Q?Z69CMbDMxhXFXj4NcJJKWPKPdcdTLN0ST0ENEASpgP8lmqHrrgzqny3Yvt8z?=
 =?us-ascii?Q?x3mGSws6+8gq+7W8gLcFVX4jH9i/I8gNdOSBH12UKdkaqUnwSehRMx+3p7Xz?=
 =?us-ascii?Q?xrcwiojhlm9uuoTSPmkBzb5UEo4SRZ5XfJNoxIkkBO+gp0kFSCn5s9GuzN8V?=
 =?us-ascii?Q?eM/irS+2hIcxTD5wlLMU2gBpyMvfqL6dU6hN5JpifItWVUCKN97/YXSwO+6I?=
 =?us-ascii?Q?oDYz4/Rj8bCYE8ZNNpWi4vUQ+EguHyYW1ZjnADf2vLEhlHhu3YZcU6DCQePW?=
 =?us-ascii?Q?CuExUgfAPeiB4fbFgvZbcaj2GZr1KPGHDCzEclryuqCmq7tD+unG5vfAxWit?=
 =?us-ascii?Q?KTLSzXvlH+YJKKf2hmZiemKL97hkLEMQ52xaqwudNPVYdhwhchj7Dly3xTQy?=
 =?us-ascii?Q?bAN9Oe/R+ZtrlFJBg9SshFcnLWVAiVgS/rpQZBomoC46f1ECSjohwt7zGtjm?=
 =?us-ascii?Q?UnZ2VPlI2KpO3l/d4vbamRMU0guw5J85bzMHQ28trjk6G1FgnwQKUW26mjcG?=
 =?us-ascii?Q?UsZ1009ffOok3hd3Fxx4cqsDpNOHM2kqm/0O/32uRoEnYEF7pTWTHotzwYIy?=
 =?us-ascii?Q?6digM+cDhosH0XwinqqHQKAaB0HrHAs/8sre6TU0jXHXYOx/3WVdCDPi1CDa?=
 =?us-ascii?Q?iziu+b3e1TLl5Xw75ADinKi9BCOZbUCQwAigXYDJIeap+Dup+pL8RpId29Ri?=
 =?us-ascii?Q?NwbGP5CWfoskQ9kwiayFCV1foEpyS2SUXp51tBugfIB5wjFoElMvxEVU0kVy?=
 =?us-ascii?Q?QvPZVF1jgoXlduw3WNWWVClE9B4Xi3eJu/I0jyt+YSQ/MlHlt4V6P6EIEZVT?=
 =?us-ascii?Q?8DyxAPx9bX1cOAec5qj7RVmGcoZwrva9hVPQlu8/TwPWz3XmseadmGeTcU+9?=
 =?us-ascii?Q?UZQODc0hAyKovJwScc8m2D1Lwrwry1TfOyfEIBI5ArnPyUkXc//h3mPv2Plk?=
 =?us-ascii?Q?21JrncnGTgIxDkTDXNqUHFALdY9Rs0Z145Qq+YelUeFA9Ih1LtSbtt1FDk1J?=
 =?us-ascii?Q?ntYbdTbo4igLg13Q0OGLqIJDOt47ct8kRH1hy1Z7dmgBurNAPAK2sBZldVVq?=
 =?us-ascii?Q?SDjYPaVJRy5Tu+5mmYpz4b/yNCkEhQttgq32R/MEBhvjydootv7jdGfymlUR?=
 =?us-ascii?Q?YxMyZ+p7QN1JcehJVG/rOUPRICdNWN3KPcpoaxeowl5BBSyr+btz7PUBVQOQ?=
 =?us-ascii?Q?Yle+nmvjsT7NIMMJ6Ep9oM4XB8Qhgef2h/8Yt75bVD+qbpnY7vQBV5hJPsjl?=
 =?us-ascii?Q?oM0prpdptD0Y/g0ajc4b6lSw60rkwutFC9b9HW33DB0Wi1ls41sdeQpOJ6Vi?=
 =?us-ascii?Q?1aR0WLfaKudfCFgALqBj59O8YaKYXb8Q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H/A9Mi2NEsjUvAz4fPeZUGwrCdiPSonP/biRVFqOW6Fv0sl4Ui5xVE/tGpdE?=
 =?us-ascii?Q?ybJVBujWVNn+wBbKTd2yFWy0IUwVK/9N556RVvHxhjtktmzQCN9M+ImOfNRZ?=
 =?us-ascii?Q?RuFeRzmoNBydcbx+ZbX3MBGtmn56/M1g8rto2D9jwGYuiJiobzPBLFXOyvkj?=
 =?us-ascii?Q?YZ2V/q5ejosBZvZl55d138lO1WUjY2uRFwH+Uhhab8azgS7G84nEO9KexA5b?=
 =?us-ascii?Q?4d2W58iZRNfPmGCNCXSlNCI7TRdc9nNLQO2yDHoM7IIFjEMmic+l/tNDLzcI?=
 =?us-ascii?Q?1oKtKpGvSsjSXB4qR1w8z6ijAPIrsUGtaC5rRxLHeI+lZd0AZ9pR+XmSsLaN?=
 =?us-ascii?Q?5AI1D0FXOzlVcJ7SENjfunuJpyuHXf1zNdq79sxNme6HAVa/c4duJOWixdyW?=
 =?us-ascii?Q?Lj9UJgVDv0ldZ6mT8NETI2+gCBcjddVTzf9CchWks8pzcMXK6LTOw/IRCOyL?=
 =?us-ascii?Q?6oN9yTkJPWo42TIaneEd86L5qa3tJMd7OLzYLToUK4fZ056au4t4o3vGE9TF?=
 =?us-ascii?Q?3JG89+0I8Hp6ilL8bY3nekWzJGFmFyWOu2De0FsMOgTvT4Q0T5xYxJXyLXKi?=
 =?us-ascii?Q?TbW81i+bUDXCdvSqQrrHPqGWB60wFLO1tQOZqQ+12MpkwbUrT2mjflPj2guo?=
 =?us-ascii?Q?MTCL+giQe3819jQwRH+Yz9HejbiAVzhzuXy1lDW8DIF07v6t4PhtZ+CGi2TT?=
 =?us-ascii?Q?9wkDh91Fuv6dvJag9i0xLbqmIxtxx9B1srssCip3IHSpm2s7doJAAe4hktc1?=
 =?us-ascii?Q?524+pd3sp2Ok/M8Jm16ApaKMkHD8T9LDH/o2WYSEwX5wvAgTeddHl8gLBt45?=
 =?us-ascii?Q?nGRNtkyJSVHWGpi0/mXSCOX7r8S9kEhB39qiQcof8LWElyiDf8V8IpVPjMfB?=
 =?us-ascii?Q?tSHVThn7j7Tgtqw4SEowr3U9s0HKMplc+JuXrcdDVZAh2XRPyUiWuZ4hFJD0?=
 =?us-ascii?Q?bC3p2tmJ6RnXfXnI/68dvb8Id8k2a3wZPAzOMPvWxaB3piBremhx9SC06pYy?=
 =?us-ascii?Q?h0UvC0oXnXGxhN5+g1VcSpx35QvTQe9z40l4XHKxAtkENiwdhWJYB3bADro4?=
 =?us-ascii?Q?Erq0oDCbimPC1h+nyvWHZzZP1UtOdXRSxoZBlEE7Ib8c1jYWYaWaBaK7G7Mg?=
 =?us-ascii?Q?426v9au8xl3x2gr8hmbtjPgjLzG1zK9VWS4O7L50bf0vb/ghoQm4Md58wheE?=
 =?us-ascii?Q?1pjlA/3fa8BW30IUX+YPhmtlcFA2AguXuPJ1X/H6PZOFg8E0WZNudQFtuABB?=
 =?us-ascii?Q?vj5TAiTW1YxQpsMARJtvysVjSqO3mZfzrdIaO06HIyYNjAjyE85+HLXXlaMC?=
 =?us-ascii?Q?DgUVcIxAD+UqRXgN3hNOVVBHqGXLc25eMu//paq9exVxnh6G709cmJ95ey4s?=
 =?us-ascii?Q?k/X8g7FwI1/Xr5+QBbHf6E77jxHoLepJmQHDR+IhqHfcdqeHsMnTJhMe0UGo?=
 =?us-ascii?Q?iHAyQEicNGgTRSlAK6CurGzjG9NXZ8MVVEonTm/WlKCkUiDSezc2yshHFOup?=
 =?us-ascii?Q?6474/iEp27XTlXU5dItdEk7htmkgGIEQQed238FZKgT2UEKxDJBkiglpER/8?=
 =?us-ascii?Q?Kn/EdiFJaducEWEngfjGTrRlXwJHtpoPM3qZVP9c9ZbI4qvFujjNx9LRp9nQ?=
 =?us-ascii?Q?3kO3T9E8bBMMY3wxdGHnvQgahIM6jQ4bBMwvIKQUxKRd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7878d9c-9584-4e5c-93c8-08de2ddd9b9e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:35.6049 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OvB78FPN3zCNDXjwqJ0xZjDQlLvS8xD6ZV39Eh3ipoJ0PWACmLB1BRwdMiSJOFgmjabSBGtiZjCb/zJq1BbjlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

Add a way to track the detailed DSC pipes-per-line, streams-per-pipe,
slices-per-stream configuration instead of the current streams-per-pipe
and slices-per-line value. This way describes the slice configuration in
a clearer way, for instance providing a

2 pipes-per-line x 2 streams-per-pipe x 2 slices-per-stream = 8 slices-per-line

view, instead of the current, coarser

2 streams-per-pipe, 8 slices-per-line

view, the former better reflecting that each DSC stream engine has 2
slices. This also let's optimizing the configuration in a
simpler/clearer way, for instance using 1 stream x 2 slices, or 1 stream
x 4 slices instead of the current 2 stream x 1 slice, or 2 streams x 2
slices configuration (so that 1 DSC stream engine can be powered off in
each pipe).

Follow-up changes will convert the current slices-per-line computation
logic to compute instead the above detailed slice configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 5 +++++
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 5 +++++
 drivers/gpu/drm/i915/display/intel_vdsc.h          | 2 ++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 38702a9e0f508..a3de93cdcbde0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1306,6 +1306,11 @@ struct intel_crtc_state {
 		bool compression_enabled_on_link;
 		bool compression_enable;
 		int num_streams;
+		struct intel_dsc_slice_config {
+			int pipes_per_line;
+			int streams_per_pipe;
+			int slices_per_stream;
+		} slice_config;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
 		u8 slice_count;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 0e727fc5e80c1..8aa480e3d1c9d 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -35,6 +35,11 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config)
+{
+	return config->pipes_per_line * config->streams_per_pipe * config->slices_per_stream;
+}
+
 static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 99f64ac54b273..e61116d5297c8 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -13,9 +13,11 @@ struct drm_printer;
 enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_dsc_slice_config;
 struct intel_encoder;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
+int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config);
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
-- 
2.49.1

