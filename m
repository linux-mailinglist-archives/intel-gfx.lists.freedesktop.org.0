Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C685BDE12
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 09:25:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06CD810E322;
	Tue, 20 Sep 2022 07:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADB510E322
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 07:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663658696; x=1695194696;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UBNbzWdlx0c1lGDu4c56jnOG8HC5OMwyAiolWRI79wg=;
 b=ez7MuHQ0B3pRL2Ujqaz0IybuOZHY+7xSPFIPOROYRzK3SKdPNSLkWqnt
 g6LtppFEMuFcOaNbtj5HE/LtsmoZtczHDxJ6blLtqkzZoHxgKWKqegOHR
 TODUFZAWx7RnHFO+P235BQGD7CToSoEkiMpy7r0vP7stGgBjxW7MXbaNY
 YEJlb0sInL64iIhZyDBm3YtE+btScTsd2p/nk3xryNzAJY3VgNrGJTjRl
 RA+vEuhHDmHQkVPaxKPk5IQI7SQOFfMwMl9qAIF0h8XBxpW1CS50eBuqu
 vPDHCOux8CaonJ1BKwrbQHjaj5zgs1J5d9Fyodgl3zm2Xq5K7v/1oVjk8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="363580269"
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="363580269"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 00:24:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,329,1654585200"; d="scan'208";a="681182802"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 20 Sep 2022 00:24:54 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 00:24:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 00:24:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 00:24:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y3OEbYlm6fwTw7MgZatM6Ovcdq9idpwwAiD8DULQZ8ohf6dnF2Q6fJ33YzzUgL/452baW0bwfaZudk1RqvV5Ln8j1QT25jguiyRRxktM/21MWGa6stBNXYcTH2vG6BuahCoNov70ZJSDpWh3+IDKaNIEyw0N/FRoXZogd+OWALnTcuRD3kQ6qN2KRUu9XeK3Da+eaDhl3y1+KdLcJqxnQ41mrKlqom1os10E3i3aSg7l5u7lNizyDhBn+NXgyNrHsXDHKoGzGTwX9TaM2I7/5ve78CmnFGjPEn/QTHyw/sidqhUCcCJOkl6NRDEsYcgqVumGjYJO7xp5TmCDuD+o3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VckApV6RDYnHwMTxatM8c7+FX6hzfgG4mJ2k7TLXems=;
 b=PaDjxJoQJcdSDbSCUHjgf8+LHWQuIoU6z9A9vGx9mxsq5grD2HEoXGgEl5Vl7Cb88b18XDdb2l0rSNDcGp43QU7RmiqkF5N5rxsAdT9c+freN9TiQpzyStZxrm16ENZ/KtRX/M4fX7xsyP78S7VRIWJ9BlBFzVWCHmydcr3bxVY0bblXuAL1aZBWUyFbRZp98lm+LCAg5+inSeiAGUpURrITHXKBJlbgyXAEQRXR4lnjepGKZMdF9ZgWNgUMbiyTMGdM0yGGDlWfJXyvJ94X5P5mAJWaoGwQ9e7ymSPAj8dtv5Pfj9cJuLcWtkt+vdP2bGnykgXltFJ1ADKwIN+vYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB5869.namprd11.prod.outlook.com (2603:10b6:303:168::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Tue, 20 Sep
 2022 07:24:52 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7b64:871c:564d:91fa]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7b64:871c:564d:91fa%6]) with mapi id 15.20.5632.019; Tue, 20 Sep 2022
 07:24:52 +0000
Date: Tue, 20 Sep 2022 00:24:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220920072450.2b6wizrw2i5tyk5k@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220916082642.3451961-1-jani.nikula@intel.com>
 <20220916152638.u3rnatqrq52x5d32@ldmartin-desk2.lan>
 <87edw7rdgy.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <87edw7rdgy.fsf@intel.com>
X-ClientProxiedBy: SJ0PR13CA0154.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB5869:EE_
X-MS-Office365-Filtering-Correlation-Id: d425abe0-e127-427e-0156-08da9ad93578
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4hrCiqgn38qj6FFGa78g+au/rrNxoOkwFjR5ewZ7GY5Rq9Saf1RYJIuxJp5rhsECWgpSNnt2l6laYtjPppf6110UlYw/vAJt+GD0tZW7Q6OZqYqjTLEDN/ZOxZ94y8qoxKBW3uo3qMezAmE6FdWVWLzM5Lq98aEZ3Em3bEZdamiLYip9vF98bQRUaSrya9OT9KW/xvwPxrpFAhB4H/nU8W/31xUPrkr8JqXSEMGEGt+wvbhsDRCzDeV8H+4AbpQHe7SF7mL1dKLWwP9QhhjkRf9vzt1OtAXCmEWCOlEmTAzSIEn5VoCqUexLbdxHE4MqkZs5tpP3ilOcHy6Q8rMEdDl4IogoRfX1BjK0QQY2NhIlcoEj1ItD9Xv/uik1QPS3dtaiH0EmFqqkepLEWXwjO14Ds7jLeXBwadR3c8RgdjxNqYwGKGeFKk5VPru6cq0+H6krn15Cl1wsLz0jQ1QtZvHhzWpcZ/u2GcBEJfLi+cz6m5lyPAY4cthIEkxmOV1CWVw3df9hMfF2PTIqdT/AaabdBbSdYou9BVItg1At2mCBs+6/Qwyz9jxCsyGry7PFTgHo0+7y7JOJkveiQaUbRwBo1H62jQWyRFKK6smDdX4XsG0WKYYh7/zztM2QcPPtbrU01b78zyr8S0GOUGGZ0I2kpektFkm41nopGazkbjaz4cNAoopWBuFlKr4A+rRsOFNAd4IuhAwlbT9uDUhPhXppfU8PU0FUJQOedZXCDuM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199015)(36756003)(86362001)(41300700001)(6512007)(966005)(1076003)(6636002)(26005)(186003)(6862004)(5660300002)(6486002)(8936002)(83380400001)(316002)(82960400001)(478600001)(6506007)(9686003)(66476007)(66556008)(38100700002)(66946007)(4326008)(8676002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7k4XWja7cb5PGope80qMeOqBWzYiiFI0jIDON4uPz8N5Ov8JG+pAZons1EVs?=
 =?us-ascii?Q?w9bspp5wwqUpg111YULS0YK3xgS2OrqxNXu6T0uRmvKjyziBQl1ui6DEkBLT?=
 =?us-ascii?Q?AYSlY0Fm5nxQpOWSskL3NOpHLc7pNLuQqDKIP3uS4qk1seInJVx+Nr77wi9z?=
 =?us-ascii?Q?qB++IfToehzAi0bTVAx4WJof8ObO8KyLwMNUNpIf8lb4bW8qXwKMOiVd/wSg?=
 =?us-ascii?Q?4hucst5QdrucziQEAFw5NYqRlLFvD8CnmvIyLR9xAkRP6vZu0tmpjGofcAaj?=
 =?us-ascii?Q?o0jywDMuVMEDd/CNxFIQXY+1aW78kvhxGfgT1UdbFqKmo001DAy7g6ycWY7C?=
 =?us-ascii?Q?y9hEFEMXCgVBXad3WJ94dH7lgC03LgdWTEjOi8ses+2QC+Aj5hMalf+wWwJ/?=
 =?us-ascii?Q?3GlwiQxRd3DOQvInuD04g5vl7c0XqYPEDbVPMiENlTMV4mf6glBFop5DINLy?=
 =?us-ascii?Q?CoCMcM8A44o0sXqmjohkCQsPB2RR08xKNuJA0zrpMDjiwW9TqYj4LKb2kWJD?=
 =?us-ascii?Q?UO1XtIZDav+f2iGx5y3j0rFpPdfJgMCO+v9aCGuevRWbw2CGf1mkRJMrzzug?=
 =?us-ascii?Q?wmg4rMUjgbUHRJ4L47A+7SmrHh4sxaH0Ku93a2fbiODp1BZS4+jnKZHPlta3?=
 =?us-ascii?Q?HK54eVVsm+1Yc0gkWCLOgK7GWkrZufKJHcn98eb4O6Kjg3XCwqi3bqwXVfSI?=
 =?us-ascii?Q?aJdTAQ4mXmr4dzHcjy6Nejdo+awde44AkHSzi/wj+tt/vmngNmfW3+xZLC89?=
 =?us-ascii?Q?ltt/nyAy7UGRfnnigd4BFkAnakBVNm6VYz/55sOFs7HCE0q79i1nNrfvL44f?=
 =?us-ascii?Q?iZpa5agggX1NQvrBaZRJ/eSqInRcM9Em+mmsAUcVSwBzqU5XqUodzZpmCS7W?=
 =?us-ascii?Q?ovVavhyK66b7t1200N3nd5XWPZDhtbMWhNu3EUgekzjynDU+Tl0A5uk7wsnV?=
 =?us-ascii?Q?qoHdRLQAR7388i+EtWiu6rBvYDN83xkkBjQ82hYZrkXk51ODmTo9E1yHJTre?=
 =?us-ascii?Q?RdXhdEi47GF4U0KNyGPhygeebJ99+zwq7edArw8oSnrFSt55DXjmdbx3kIkT?=
 =?us-ascii?Q?Uvf9JohoLJs3e9sissiaCt5YMpeBdBKFqvL48tj7Y6eRr63qHudREEeIpTr7?=
 =?us-ascii?Q?QMLhVc01cMmqiOhQPUBWpawnTbarI1LVbq/OrnHQ5vwQkWUzggEnKyAu3R3o?=
 =?us-ascii?Q?3OsLffoBsgfMP6peHRxJQKwML+cxAB2si3mRFN2HwNojaiYe8sFsb97Fsl1t?=
 =?us-ascii?Q?j0BmvFOvnno2oTNi0fHcBDBQHZaXzGPw2zFPxeZDhCvS7P7WGoe+I4d3+ED9?=
 =?us-ascii?Q?/qP2jWMjm0AcHEF8Q93fL8xpkjOoZEND7YV4Q5z3qyO0xilSVfbYDL8IGbVC?=
 =?us-ascii?Q?TbLDh90qhWalVMA3Y3cb28U4+TT2JzfBTj1Z7sPpctvLvluC3iq8gju6181c?=
 =?us-ascii?Q?i4ZEQ3kOAAB6qp1yNlbrmLkQMv/Rj5EGgBe/PNu9QIJoHLhtZCKTzmijssaq?=
 =?us-ascii?Q?Pr3qbeb7V1vLOWXi+6rRCMlP9Xv4QPOpaN6nGsHlztTvMVkEzWl74k3VFc/l?=
 =?us-ascii?Q?LzIK2n6jwDWWCIEpNREgJrTZCfQV5Fd14ELJhsCzKaS7ntC5/Ukq6bAlcKUS?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d425abe0-e127-427e-0156-08da9ad93578
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 07:24:52.3702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1fh/BDK6Jzjf61D7ABcj7auwIg1dWO1jZWRTW60squVC6YZxfRN9aXK1UgPrKZu3l5QhUMrclydv3WPmbxAJ5haibuJkwERvhlLYy/bIiFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5869
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix device info for devices
 without display
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

On Mon, Sep 19, 2022 at 11:10:53AM +0300, Jani Nikula wrote:
>On Fri, 16 Sep 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Fri, Sep 16, 2022 at 11:26:42AM +0300, Jani Nikula wrote:
>>>Commit 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask
>>>to runtime info") moved the pipe_mask member from struct
>>>intel_device_info to intel_runtime_info, but overlooked some of our
>>>platforms initializing device info .display = {}. This is significant,
>>>as pipe_mask is the single point of truth for a device having a display
>>>or not; the platforms in question left pipe_mask to whatever was set for
>>>the platforms they "inherit" from in the complex macro scheme we have.
>>>
>>>Add new NO_DISPLAY macro initializing .__runtime.pipe_mask = 0, which
>>>will cause the device info .display sub-struct to be zeroed in
>>>intel_device_info_runtime_init(). A better solution (or simply audit of
>>>proper use of HAS_DISPLAY() checks) is required before moving forward
>>>with [1].
>>>
>>>Also clear all the display related members in runtime info if there's no
>>>display. The latter is a bit tedious, but it's for completeness at this
>>>time, to ensure similar functionality as before.
>>>
>>>[1] https://lore.kernel.org/r/dfda1bf67f02ceb07c280b7a13216405fd1f7a34.1660137416.git.jani.nikula@intel.com
>>>
>>>Fixes: 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info")
>>>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>>Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> drivers/gpu/drm/i915/i915_pci.c          | 11 ++++++-----
>>> drivers/gpu/drm/i915/intel_device_info.c |  6 ++++++
>>> 2 files changed, 12 insertions(+), 5 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>>>index 77e7df21f539..cd4487a1d3be 100644
>>>--- a/drivers/gpu/drm/i915/i915_pci.c
>>>+++ b/drivers/gpu/drm/i915/i915_pci.c
>>>@@ -41,6 +41,8 @@
>>> 	.__runtime.media.ip.ver = (x), \
>>> 	.__runtime.display.ip.ver = (x)
>>>
>>>+#define NO_DISPLAY .__runtime.pipe_mask = 0
>>>+
>>> #define I845_PIPE_OFFSETS \
>>> 	.display.pipe_offsets = { \
>>> 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>>>@@ -519,9 +521,8 @@ static const struct intel_device_info ivb_m_gt2_info = {
>>> static const struct intel_device_info ivb_q_info = {
>>> 	GEN7_FEATURES,
>>> 	PLATFORM(INTEL_IVYBRIDGE),
>>>+	NO_DISPLAY,
>>> 	.gt = 2,
>>>-	.__runtime.pipe_mask = 0, /* legal, last one wins */
>>>-	.__runtime.cpu_transcoder_mask = 0,
>>> 	.has_l3_dpf = 1,
>>> };
>>>
>>>@@ -1039,7 +1040,7 @@ static const struct intel_device_info xehpsdv_info = {
>>> 	XE_HPM_FEATURES,
>>> 	DGFX_FEATURES,
>>> 	PLATFORM(INTEL_XEHPSDV),
>>>-	.display = { },
>>>+	NO_DISPLAY,
>>> 	.has_64k_pages = 1,
>>> 	.needs_compact_pt = 1,
>>> 	.has_media_ratio_mode = 1,
>>>@@ -1081,7 +1082,7 @@ static const struct intel_device_info dg2_info = {
>>>
>>> static const struct intel_device_info ats_m_info = {
>>> 	DG2_FEATURES,
>>>-	.display = { 0 },
>>>+	NO_DISPLAY,
>>> 	.require_force_probe = 1,
>>> 	.tuning_thread_rr_after_dep = 1,
>>> };
>>>@@ -1103,7 +1104,7 @@ static const struct intel_device_info pvc_info = {
>>> 	.__runtime.graphics.ip.rel = 60,
>>> 	.__runtime.media.ip.rel = 60,
>>> 	PLATFORM(INTEL_PONTEVECCHIO),
>>>-	.display = { 0 },
>>>+	NO_DISPLAY,
>>> 	.has_flat_ccs = 0,
>>> 	.__runtime.platform_engine_mask =
>>> 		BIT(BCS0) |
>>>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>>>index 1434dc33cf49..20575eb77ea7 100644
>>>--- a/drivers/gpu/drm/i915/intel_device_info.c
>>>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>>>@@ -433,8 +433,14 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>>> 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
>>> 						   DRIVER_ATOMIC);
>>> 		memset(&info->display, 0, sizeof(info->display));
>>>+
>>>+		runtime->cpu_transcoder_mask = 0;
>>> 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
>>> 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
>>>+		runtime->fbc_mask = 0;
>>>+		runtime->has_hdcp = false;
>>>+		runtime->has_dmc = false;
>>>+		runtime->has_dsc = false;
>>
>> why are these not inside __runtime.display?
>
>The short answer, because there isn't one. It's an anonymous struct for
>now.

/me confused... that doesn't really answer the question. Why would we
not move these inside a display substruct? When moving stuff out of
device_info.display.x, it seems the better place would be inside
__runtime.display.x, not __runtime.x.

I must be missing something here. We had a "recent" move of these flags
lying around in device_info to be inside a display substruct -
commit d53db442db36 ("drm/i915: Move display device info capabilities to its
own struct") - to be able to keep the display flags together
and zero them together.

Lucas De Marchi

>
>BR,
>Jani.
>
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
