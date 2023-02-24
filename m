Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2316A1FB9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC7310EC8F;
	Fri, 24 Feb 2023 16:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B090510EC8F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677256493; x=1708792493;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Nkxhdi7xh+1GtySIOSoRDw8HYwPMlDeELnVWriz/IBE=;
 b=LojgeeetN76KlCGBiFYDl2ps8ITucxDBNOBj407+whv5gT46gtayLf/r
 BPsq2oeUJVknBbR7yPTbDWioPt1eKySXh8cK9M98REi46NrhIKSpuut6F
 R+wiSvCsrljheycRCmfPZHe+25ZOKTjhsJC3b4zpveX1QFSKRsrfgaC9q
 lGf7/MUVWvkmUk4OhovYY3c/98XEwvw3rUOP+NbgVR6BIWiSzffyn22kg
 CFRIsIuYF6MTef/zpTKnwghjKM0MpbI8JrXho9o71vLxnCo1qtPiEdWHU
 r4UZJpG2MZT9XrQsJmedvfLxggaJC2deNDbWkl93kJFile/kasrjU5hSH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="313155435"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="313155435"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:34:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="782422421"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="782422421"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 24 Feb 2023 08:34:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:34:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 08:34:51 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 08:34:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5VitQLIA7JHJznylBub963JuRXYld2fheaAAHu1D+Q8nBgJauOGRJQD8lBG1SFXaohClLmjG/LZT1TuPNq4Jcy/5r/s5ezdKnUMPBYwkWXhoVT9Ai2d3tfzyxtIVLId23kD4YTI4HIwAm/92yYE9ZXgNi123T3fQ5R+USVvdFUjUWfJntXFNd1alvYf0EjEAfl7TftrDnpz+TgT/60ID7eVLNHy9wxyZOBwtxR40QPB4v/g3sG9vdXNpmEcz+oGGVajLBib00kMWlXF5/aaOb8kCyX/6gi2LOMy5MTVoEdrrrgKj5Gk+XMoLC9fd0chAnacS8vj38emUiYiUzxv4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JdjXm+rbCD3C5zO5ws54gc5kQ9UeK53coSVjW5WxpHo=;
 b=O6JZ+iPlbm050+TXEAs07K3Cvl2oJg1TwTgsPbmSGq3xdly6/obI5JtfwOJ8jgQKcSLveDQpLQQgZoQmS+p25iyfCUGFtx8K4QnMaKze+rj8t1f4tmK5v0sl0OG31oZOKoRxRLs1ZpKwRBO+EsulwxrxtVjF/u75zMg3Gehm7jm6S6bmryHPUvRgcyuKBOt7oJ2DDAEIhu3Hf991oZzTQhQyrkHmJTmOD9olWMFhsz8C9h2wDNJ8sAVx4ZFXkRwuWAAs+fr1NBRqLXAjZ1zB9A7h5bYO72DhNKpNPphzTm5CxCc0I5n0dwtbYWSnLtChHkGsviwMCsT+jy40wMJmnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW3PR11MB4763.namprd11.prod.outlook.com (2603:10b6:303:2c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Fri, 24 Feb
 2023 16:34:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 16:34:49 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 24 Feb 2023 11:34:44 -0500
Message-ID: <20230224163444.818286-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.39.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR05CA0060.namprd05.prod.outlook.com
 (2603:10b6:a03:74::37) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW3PR11MB4763:EE_
X-MS-Office365-Filtering-Correlation-Id: 29800a95-a06d-4cf0-2a98-08db16850bd8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /LybbHQGumSTwdvpvQAKn4MxTXTCcryHnK2cIcmfPP8LTRkq06zGZBO4SUnCAB7eaZ/9EGxkcWQ7XF21ezEV6JhiwrGe8TD1bsHCxrmaTgpWoMn6HT5A1K75VXYbt/nlEGSh3UqhK4yWYbBfqkq+dJIwnLz2OaEVcjmbqCAcK0klkjjZZehI91urTUP3VmipYR8e2iIxnS7eABYYmKK+laURGq93PrImCKDGGpn07RzRPwcFLcHU6VTq9M+yt8zvH5ZE3GPphgbmHXXHJtaGcetBzpgrhMKYv2axtQti1ThtQ+BTRW/HYAWIZOCV05DmUyDCCkNGCjtK4GDnOik3cb75v3oIU9waru29GI/VH0M7ylRDuAYoxZs1S+smQR+dsJwnmBjwlWFkLYlod1lHYgGf1zgsSyqrATxooJZyb7a9QNRtsDTPPgjiiTZEYFnqd5ywejuEy5A+DNh90BP68AGN0JNvKGE9a/dbeNZDnrzL0NNXtF1Vi6VfCipOeGIM/m/RMaSj8jOEudg1srz1pcxHCsSwi6uMv3yCDY2ybkETItCyOQ3clxUQQkXypnzw71bi2TG7fnn3CDpvoqjB2GgNxNaFBF/R7rTN5vgxmkI2ADv5EPWam8Km8hDqjOGnpU4C3OX9/54X/ToK54BmGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(376002)(366004)(346002)(136003)(451199018)(2906002)(44832011)(4744005)(82960400001)(38100700002)(86362001)(478600001)(6486002)(26005)(186003)(6512007)(36756003)(54906003)(66946007)(41300700001)(66476007)(6916009)(2616005)(107886003)(4326008)(1076003)(66556008)(6666004)(316002)(5660300002)(8936002)(8676002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+nX3VfSYx679SoaqDnVYtinXFjvRvbejkPDs535xJTQim7YZKn3C3g4Vu24j?=
 =?us-ascii?Q?vQVR2hIwe16wswx9RKg++RcWU6C8gq8KiXVNSYQQa5G7FyyRtZe7tGVCoDW7?=
 =?us-ascii?Q?wXhzqCgzQ/IzB/gpNKDVo6AprWy4RLG/8eX05HflETtelKOb9Y5a/Avi+ofb?=
 =?us-ascii?Q?34p9V/K8Of9NjlHshfGFyjDvVnApj4Q6kFV+xiT+oOQKE46pKWIW+ZrLUdjk?=
 =?us-ascii?Q?TBBMfVZZIL9rURj+HAjMW3896Pw0iQmOKbv9Q2RXrSfgBgsbIyedKXP4E5Bz?=
 =?us-ascii?Q?tyAYrm0ssd/eUEAuOrAT+95A247ftNATNrN/5lCJ6YL/PVw5adG+PI795zgo?=
 =?us-ascii?Q?TskLdY7qjCfjdq0r7XrxXMHzsoQ5lG3QQyrzA9UX66reuS9XRBH3QoLzLENe?=
 =?us-ascii?Q?1ftuWwSl9wiiciUywoLseJezQDRrspVC+rCXrZgO62eF21rd8uHUNNGBzeH8?=
 =?us-ascii?Q?KO/yUEj1cKBdqm4MPJ7IyxmpMJ6H0Bh1NHHlBSWNB5g53oTBmuNb1oxVUarV?=
 =?us-ascii?Q?ZYTHrIw3ZQPm4QiD0QcFtNZkpSAPUvxbrMLlkOKsVcFQ9sklrLjwpnyUY5EN?=
 =?us-ascii?Q?uEIFFwv8U6DI4QP6qLnVo0FoEZ9AIU8PZkZsBRA3HROUv+XLEYSrIrGQfWcn?=
 =?us-ascii?Q?ah9WovicQIp2JvWxwHV117W8TA3e5ui3TnwPp+YcO1VR+3tpd0MX8LXW8Peu?=
 =?us-ascii?Q?ZWSC6cBhNuPhWsLYb8690FglDCmz4mjy5c++I81psHV9jX9tTmyibK7iBv6W?=
 =?us-ascii?Q?UW9m80DI0rkunXPoboBuRW1vnD8ZWn/wUMnwr5XHZD/0JXQjd6BuARonwgcf?=
 =?us-ascii?Q?T/zrxEKg++8aHRkdpURzuVtxT2ZyGOQQBG1fy6geikGCs7cDO80D7bI/gpwL?=
 =?us-ascii?Q?DCVdbp1QQ9O51Mh76RrcVRYqBE7uUodfa+FepNUmvHY4EhGX3dHHobYktzY8?=
 =?us-ascii?Q?3HLRyA5FpN09lMywoVgDkQ95Uz2p6M/pu8I1cX5fIrdgPqb2jyddlKSf41sM?=
 =?us-ascii?Q?oZpe7aip9+hQA7s9sYHX2cew15hX0wAAPH8kIqoqe2KEqpk4VueL5aZVjAVi?=
 =?us-ascii?Q?q2OoidOrsHuqAMpRcw0uvOmUteLe1oFNo79WkiBoWN6SKIXVXny6LCQoluln?=
 =?us-ascii?Q?6RAMRh/L0H5/ScpQDvb+5A+cn2Xsz5lq6/x77W7scNwUjdQoGAYmEdVgG1Ib?=
 =?us-ascii?Q?Mxq+oHgKe3M8rk6cng2xumj7Tle2TpkvU1wVHt55jDHXUBb3xY7GCQ0yYrSa?=
 =?us-ascii?Q?i7/S2c9bszz/znlHFOwn5q93RAYOSM+AEuta61sVz24BgG/Z2O+W7XuswDRZ?=
 =?us-ascii?Q?JrRODqmNHfqIiZ/LUo9FSvq9U0CliTlEeP8PGdwYuFW/vM/Ms7H0s5adGfML?=
 =?us-ascii?Q?dNBdYerY+19zja8E3arHBMQfsurzE/T1veSiyTJG1f5skxE0vT+ie+zwc2BD?=
 =?us-ascii?Q?xwYTlJXIFeu/eThg1dKBle05XhjeEM04zLYIn8K8iCmS9dgQgVyg3g+Vo+iP?=
 =?us-ascii?Q?7slhlQNzDsa3O1qM7vai5kjBu6jvKPTN51RnJzkU2BhIzI5hAebgW0dpDMtZ?=
 =?us-ascii?Q?0X3HTr3/N1Z2jezajDkfwzDuEW5PEB4WlDLCv+fi+BILFGNTsDqQTOcyd6H6?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29800a95-a06d-4cf0-2a98-08db16850bd8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 16:34:49.0734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MXEbYr/pyvtWAlUlM+CdJOM2H4yGhNHbJlaH5F21dFhV6SE8JoPsmb+9sPxb9q3Z3YTH40yq/pKrt/zTxetPEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4763
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915/adlp: Restoring ADL-P/RPL-U IDs.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some PCI IDs got accidentally removed when subplatform was added.

Fixes: 61b795a9c352 ("drm/i915: Add RPL-U sub platform")
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a8d942b16223..d2dc81848e3b 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1235,6 +1235,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_RPLP_IDS(&adl_p_info),
+	INTEL_RPLU_IDS(&adl_p_info),
 	INTEL_DG2_IDS(&dg2_info),
 	INTEL_ATS_M_IDS(&ats_m_info),
 	INTEL_MTL_IDS(&mtl_info),
-- 
2.39.1

