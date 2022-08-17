Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D4785A0107
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 20:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E55AB7607;
	Wed, 24 Aug 2022 18:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755E010E611
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660711793; x=1692247793;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7b5fTTwgCoSC9XZ90At0zetT99tvg4C1Ykok0gwBlgw=;
 b=YscTesLGEOi6dHH9kW/7slDBpbLc6xAiMNIYU9yraPx5GGxjS8gMl5o7
 C2YqxYx9wGUixHByW0isVC/Cuyk1GpiWruF1Gd3ciGkW/EZ/UJASTc9fp
 n2Ye7283zI8KGrmd6rhUsx/MtiQg0XIq/ok6JFBTEgUSoB3uaEVYzs8pZ
 c49iZVa3AAl+poWuqs2zYlbgTfmaWpQy3pQy0srUkSUtMrnIX0176vTfK
 q2oK5ed+G48d9Q0aLZQJlk34JF6ozw7NLUnVYSUVLrFlbiq7HBGGD6wAT
 cRt7PjiyKkr/BBB2bbOg9oKgz0mDQheXabJl/L1zID+QRo1jjpyGmTcrG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="292394901"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="292394901"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 21:49:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="583605696"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 16 Aug 2022 21:49:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:49:52 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 21:49:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 21:49:51 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 21:49:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zc+hSMUBvHKnqgV9vBoO+uyZckOlAECFOX+cMe66hgsBBDsG8KVJe4XIR7Z1ScMwqvZRD9FDcp61X7koibIMxaFMQZAhLXaSEJA0yV4WI8TvWpPz7f88rzugJRlKF9crXhAJVR6xNvAXjldHI6XYslpYF3sth49iP7j01eEu6v3K9nIz3VazJg6oaGuAVEJRO/COVD654jjfcIoFrHwjJyv3wZZIe9nHY4DKXAVfHtqLpZy4nH5pxzFzZ1E/g/IwYx6YYMrw/CXEbejXnJzSxi9EHEkCxFJhCzRPX3ODddnH4Si5Jvnr3vu5KkRCIkqX1SLkqZsvA3q0o1mEN1cW8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jKmx1Z14oY0Dwq5uu09QcKZHjtcsD+H9pctomRtDGvk=;
 b=k/3/TVPUf5ogSGMj3f2FnSth/t1hwnH7VQuS/65ToxixfPuKh7eajLjkD65oPz9U5+9avjvZQv0siSOIiwcdmOiINMbgpW49S7SvRxSBR73TF3UoaPlIKPqy2E+VfqUl+dGiRGmQUlsTxENEOdvGLm8Ad6r3lwb8PDTcnKnr9iACN6XJUt20rVIOKDcsLLjlq6XIUR9WKYSfzoLoy0kX5bfjudqD5CaYbfnHe/j0/y+IQ3/QOAz06brMjuWbwvKZzqdxEJS67RBSXvFagBOSVz3a60kl6vo+H5bpry9mZNEGPspI+6l0ph5yZInrfiPmzMGdznsL6MSzyO5QwgdK/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB5658.namprd11.prod.outlook.com (2603:10b6:510:e2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Wed, 17 Aug
 2022 04:49:48 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 04:49:48 +0000
Date: Tue, 16 Aug 2022 21:49:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817044946.2l2i57adje7uhirk@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ec21c8be52c5ff4b0164093bef59187163eb2079.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <ec21c8be52c5ff4b0164093bef59187163eb2079.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0081.namprd03.prod.outlook.com
 (2603:10b6:303:b6::26) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a8b51321-4511-4c9d-59e9-08da800be9e8
X-MS-TrafficTypeDiagnostic: PH0PR11MB5658:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cLZJdDedANJbc6wLMcNZdpdf9f59fUNJXucwfdroNre4T6UYp41dpB/tSK0zv4d50w21pEKl20jn7hlwVfs4OoST4hbLySkR20AtItsYdtBHbdDzwW1KEaeclRpHUtKF0L+NY45il0CQV5o5sMNIHZLuLXXLMTDJ6gFcP0fBf74643a5bX8zxXdUummxluGL6ozqYz5JOZHyAmgpXtRuQLggdFKGDbQrcr+ht618gzgTu/mnOeK/Rn5yoVCrPInNj/Fj0CCnKOVjWErKfpMb2BWIsazKi80/kXbIETLDMRn88Vy2YWaVFcl1mdEZHRDToQZAGMhStY2kZfGFOjicPX6NmqM+0fftTUGnthNnl14fvRdTd9UEr1iUzNlSVmC15BZ1XriQQ1TAY8sX/6LSu5IPwpA26Shqzec697QZsLrHWR/jlG4+l6JS2I34TJcVSvRcS9zC0JOleCB+INkfrSE6D440bAxodRGP+up5s6SN5eSCrcu57/7jj54KYde88PqEajZTRv1w4x82JngYwZTuqfCXHdoLhFtOeVW9AzYxRTZT5hwBeAgoa9JFf1LTIzSV4kAZVvlwoPRnwzZMT9JWEGODzM8rNTpXQCcOK9x/v3cBAdcrF8a8M/0r0Qj1c7bEHhJDgG4xUoZ4xcsY/YswMMubNOk0VLMfHw/GfPVX2SB2Ywy8k/Avyi5ABQhTc7xzp+pKv3iw9t3GRBoDMhpUzqzHvfPkBsqrvO6fYXpkfsUl/efobW9z16KhM9q9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(396003)(39860400002)(346002)(66556008)(66946007)(66476007)(8676002)(4326008)(6512007)(6862004)(8936002)(2906002)(41300700001)(26005)(5660300002)(6506007)(478600001)(186003)(86362001)(1076003)(6486002)(9686003)(38100700002)(82960400001)(316002)(83380400001)(36756003)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xV+llh+33+1gvewf7DuFWk9FDd0EEgCVOuvrvDQ0Bonf0EOfZD6u0LGpjQrO?=
 =?us-ascii?Q?PLgZFiJ5+eYY+5hUGR7T832pg/5EogZI0ztYVfCQOwhzXZW+tbbrN5+4dxf2?=
 =?us-ascii?Q?hwoABvzH33FTg64ERGZL5Wu0/7xx4teBXTx6NNRSjJtL7gFRXW7Y+hSeKYt3?=
 =?us-ascii?Q?ZMSEKJG8X4hJxSfDRos58omTGJZN6nBzew2uNWww74KKLs3PC2XKLMAXHoT1?=
 =?us-ascii?Q?gd6eIwGBgzWImwL4JI2LRcVu4dA6+qMpJtaP0Fq1Bnqs9l+cJ3DXXkmtXe7A?=
 =?us-ascii?Q?oF+NfTX4BJ/ISf9ydkdi8HlNqjwDul/tJFnVgQ0qae68hGnP8svgQfnyw9y7?=
 =?us-ascii?Q?CKzYavIXzZ01Uxs+ixOGxV14lW0/CEOeKmW3USwfGXE7OgCy9Um7rzv9SsSU?=
 =?us-ascii?Q?P+jNHTwoOqyFyg3nWMjyBQhpSEMeYfqqQ4NiCCEBLUHD+ZejIIIOFvj1ywCu?=
 =?us-ascii?Q?mJbIo2B0pC149KqRaC4UrE3lKGPSUMh3gGCTwB70O5gjw2IowpbBSoWPW9bA?=
 =?us-ascii?Q?Pvv1pCcRcyIgdEWfLo65Sxa+sbLbU2YMBXFq7jrvIX9j+FgBap7934KzzX3B?=
 =?us-ascii?Q?nZ+mJjMxljPkllHBoZyZFJut1A05kiKJl+XYt830QitT7To6IpcttypxXbTs?=
 =?us-ascii?Q?wGSzSBpCeixPZaIZqCtyH1EzM4Zpgc0fCoVf1gi779L1IWvUbpEPOAKJiIaa?=
 =?us-ascii?Q?Wisd+9xdIn6oLgfBZwS5Xx9PE7+17KcVymuGu1rQFzhXGOOZ5V7dGQu5eaNM?=
 =?us-ascii?Q?p8jwGnEOniIkbGwXfrygXt1ucQReKy2rUYy4v1Fo50ImcbSruZPt5OxhPmuV?=
 =?us-ascii?Q?209D3IHkSz6mWTzrZGaNnsIroFwkunTZL6dpywyS6AIZ6bVU1DelDdXaYJq6?=
 =?us-ascii?Q?MfY7mYZ5yOzZlr/87fOPYw7sJI9wGUinLh6pk5GZICJlFjS/QeY7EBI/un6t?=
 =?us-ascii?Q?YlaUNXBhlSdiMFty3K4wGGnaTaS8h8fCeLCNaXTYmDJQoKVc6AARH4xjIXIM?=
 =?us-ascii?Q?6ouuXFQrGc6rvnrXZo0maE9xM37BePniSZ1ZqVETDPnbIzdls+XRGeu+x0Kt?=
 =?us-ascii?Q?Pcl6C2sg90KqoB9tIGuYktnylIkFT6MGb522yQ56jM9SsQZdvPIbT8ya9cR3?=
 =?us-ascii?Q?1ymz32aXWP2SJkh3uTKhLZFIFV4VVa1+YFD4KnO4NeZJ0p0pB2/LVjU998N9?=
 =?us-ascii?Q?XljxMDFZrYid9Bmy5zUGW0h5S3izpyPXgbIsKBAJl3HWrwfSUfmveNXuH+hc?=
 =?us-ascii?Q?wRUclyOL6/JhTX60R1eu1g9wBGFyNiIzZ0x6KbGcpKkG8yUdmJ6zk07/rNb7?=
 =?us-ascii?Q?bAkRS/t+ueUNPa3bOLH+TndEz2AZAb09Et5WjOFfy79sDgV5CsmyIJqj/oCS?=
 =?us-ascii?Q?8hJGwAhrhhiiQpWNLm8m5T5G6aeNra/Yq7/jCcOkzmO9ohKLn24PkEIk3uQS?=
 =?us-ascii?Q?d6QsA3FluimSKkmd7OFfKVQCcm5jpoj+Jku7r2KFy74p+8CQ1uuuzdeSd2oO?=
 =?us-ascii?Q?osHbOeGsV6Qpzblq8R4Z9qlTp2F0VN+yp+EQz+KLm7qBaWruk8H1yOtxJ767?=
 =?us-ascii?Q?QbmvkB1G06hmo3E+Gedc5KCFvZv7gjcPB98k4nlTdScrcftXpaAUwpM7H3xM?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b51321-4511-4c9d-59e9-08da800be9e8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 04:49:48.5223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: avC62XXztJpuuyOY3PE2xTvXevPxbI6JYTaP3cU7/dA7WI2MuS9loJA8CUPIDAwPe86bzodCiXK1RlrvPZif+mdHLaDZZYiXwErgpkHtH5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5658
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 37/39] drm/i915: move quirks under display
 sub-struct
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

On Thu, Aug 11, 2022 at 06:07:48PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Prefer adding anonymous sub-structs even for single members that aren't
>our own structs.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
> drivers/gpu/drm/i915/display/intel_quirks.c       | 4 ++--
> drivers/gpu/drm/i915/i915_drv.h                   | 1 -
> 3 files changed, 6 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index da76b3eecbf5..252da61f2c6a 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -367,6 +367,10 @@ struct intel_display {
> 		struct mutex mutex;
> 	} pps;
>
>+	struct {
>+		unsigned long mask;
>+	} quirks;
>+
> 	struct {
> 		enum {
> 			I915_SAGV_UNKNOWN = 0,
>diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
>index 22e0df9d9dba..e74ff042a9da 100644
>--- a/drivers/gpu/drm/i915/display/intel_quirks.c
>+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>@@ -11,7 +11,7 @@
>
> static void intel_set_quirk(struct drm_i915_private *i915, enum intel_quirk_id quirk)
> {
>-	i915->quirks |= BIT(quirk);
>+	i915->display.quirks.mask |= BIT(quirk);

you started splitting gem from the display, so maybe this could be
intel_display_set_quirk()? similar for other functions


anyway:


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

until this patch, except patch 5

Lucas De Marchi
