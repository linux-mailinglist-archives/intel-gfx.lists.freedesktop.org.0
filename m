Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 552D9B20117
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 10:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59CC10E391;
	Mon, 11 Aug 2025 08:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LUJZqeAq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFC0110E391;
 Mon, 11 Aug 2025 08:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754899321; x=1786435321;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nQHQsVPRdC3nBMzLUwWCl+r/j8sPf9iPbcMMMQJgwls=;
 b=LUJZqeAqebVLptt4+Fngm/XDvgO25ePzqsK3FyZc5qWZ/a8cj1Cu9A4k
 2yyqkKfefRj0A57LaZ8fVCFrZp2TW7e+rDLJDh5ywrqCqS4BhEk7MdUOb
 rFL3GYxdCpcYSrtMsS/zCY6ocnuFXr2SU8W4AJeMeMowN9o1mOsH+wGmi
 sRHcFfl1G9epQgdbHLmjldwrJdTEmVxaEJVTUh4EYjO5iEwDrrek6lGAe
 x1OJDkKg8+Pgseiw0MUZlteSZY5uDuQHpCc2sSMVvEWN1M8n/QGZwFDo5
 HpF/2LV4p36SL/jPCVHVtHA894pEWA0Gy8+7s8YO5nPKO1Z3v/LIFnZiJ w==;
X-CSE-ConnectionGUID: XW0cvi3wRXC/6xHCxsmhJA==
X-CSE-MsgGUID: PE2YUassS/yFogWB3mJzWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="60774855"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="60774855"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:01 -0700
X-CSE-ConnectionGUID: MZFYjybIRlaD97tM2OK7qQ==
X-CSE-MsgGUID: kqPX8g7qQJu1kDGwPzqpFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="196688195"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 01:02:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:01:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 01:01:59 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.51)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 01:01:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=byQrp7FdqS4jEujUtN2azor7ky2qzFF7yRZbWyqOyxFamMgGWVMuMlREbUja/244AaKOSKyXP1EtYWKfufogXe2I4gtelML2WV8pvfh5GbplZus/1qs6nLmlCvyJtgsDuUz8uyZP95zG5QSGCCMMbH/sheKLyoaO8sU77hkFc8jmNI/1twP+tEeImnQlpPUIVwxaqFIVEy+Rajx+XQCzYHNPX/M986Voosd5I6Qarpy6lM2q/ldOYvGXa6/3bW23ku569YIEyN9TtqRxOhOY0O1cW9nOFxUrnb4nBs0c+3VGDtPpXrWbgmkqif458rDzTrffL8pBB5dmt3F2i1N/4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eVSDKz+Ip19eX4adK0vOT5XL/pwariwYwFvC/RmsJjY=;
 b=VxvZoHl17bPtbG0F2HLUdmbpOJZ7qxw8lyMDzP/YgwT7OkWJdttlGINAnVv4Yv5+A8naqu1F4CAIKP33ooKCe6eyGXkQ5AHI4QHh3pkfX1wuPkFgJmV0jeVFMcWlhNojBGJdG0XV/C6bRr0FA0XVU95mxoPlGMUDEBmByD9Hg6vraLP7x0sf1ekBUvmMOboX36ybOt93V0LUzdOvwJUdEkx88nxpt+KfuIspWuOjTbEag0dVnqyA3NpNjCeVzpR+4xBhZ3g1wWpPO2xL9oab3aDpD49rz9omwVKOsKj0oy3Jp8D/9nZdG1mG9wEMsJiI5zEJAnRKI7oE22MGHof/ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6557.namprd11.prod.outlook.com (2603:10b6:806:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 08:01:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.018; Mon, 11 Aug 2025
 08:01:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [CI 0/5] drm/i915/tc: Fix enabled/disconnected DP-alt sink handling
Date: Mon, 11 Aug 2025 11:01:47 +0300
Message-ID: <20250811080152.906216-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0223.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::10) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6557:EE_
X-MS-Office365-Filtering-Correlation-Id: eb538d12-c1da-4aa6-15c1-08ddd8ad5807
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|366016|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?S39BN8oO6v6sEPJ/SUEQkPr4VRHGOwic+/uDXYvA4br+zebqnyEkGHgfBr/F?=
 =?us-ascii?Q?E/jyoa0F9280o1vX7U0NfprcbvQWtmFK+MTPB0SsgMguPMv/1fqA50n7c4zw?=
 =?us-ascii?Q?7G/OSRAW17UAEQaC5XkVTMa8ggO99zlV6/3VnCKqn7j0Z3/PEWCXiSLLII4z?=
 =?us-ascii?Q?caGMNqKI9P3Ln07M4wmAQW9jClcdAAg5WGIA0x4FSjEBIFD2TwwXrQ8/zlIl?=
 =?us-ascii?Q?KBgNQgxmtEFbhaR4ZElQkjnRh76uFUr3VJb8whLJKxu7JQhygFExftbxKHxL?=
 =?us-ascii?Q?o9rFUuGu0eKcZfWb77wAauwSE92rcjcJZAHMZTUvOO1wiRz5PRUff4n/85b2?=
 =?us-ascii?Q?TMeK2RIggCyiFMPPDNT8oo6a/gyDzUvlqFwKbBs/3Nk5JRrppzdIbe5fypeI?=
 =?us-ascii?Q?OevYxOq6F78PtGKk3DFnZYD/n0Zt+fCfSiYpSgj+xFVQBGy64vsdbkLlwLMc?=
 =?us-ascii?Q?85IW0PiikNyRBXXpHt4JRlVv6nBDpZ/1hsmkrPlk+ZYZR9VyvnQ4B98xyj4n?=
 =?us-ascii?Q?ZV2a047J9U1kLETp8nl9RXt7AKAw3vIyFwYAzTMRbRcz181wIR0sfjdUsRLh?=
 =?us-ascii?Q?h6g30yI7gAlkMsa/Vg/SLsEyDS3CiY40e8pnwHPF422rGwU3kDkCHwQ6k7mh?=
 =?us-ascii?Q?TVDrQUyxf4d1w/17OO4GoSpXB1y39SlWyYQ2NdsiBT39zWf1l87AjmFE6xEP?=
 =?us-ascii?Q?Y8jgB/5ya1tyUlX40TL7RLuFO8e7aoSK8E8nvXuTKZkbRJLuQA7Jo4WE6SIa?=
 =?us-ascii?Q?fiEAQ31yyRcLDXun8C3uhe7GBg1zWYrmdgg+jNj9smpTakrKz1cUQGzNdP7m?=
 =?us-ascii?Q?NhkaKAkLcXtU9+UdghzPN2rGTgQNxVr8zc/zJ7SyYCaUeTC0za2LaBwKLyBr?=
 =?us-ascii?Q?BEU/s6uycHvnt4P32O3Nc4IaENwfS5W8kD2zDMV60aXCwKa8+q6xqxMDHscf?=
 =?us-ascii?Q?0oapDFfQCrdF6C7TAwYYx1vrm4In2y2bRzsZyzoIozNLfNagiuOGDrKDc3f9?=
 =?us-ascii?Q?43S409DxktBI3NHTnNoosVnKe1sr63Sp/eRdVGKVbd+aNAWsv7qOZd0MDDPo?=
 =?us-ascii?Q?iMC0PnRzDM3xKlEPi0iwaRWEu6HlEzyLaiGtYl4T6SvHZIJdi5fjYXeGyv8F?=
 =?us-ascii?Q?HMFkuRtwZDYAXZVCVbYFQRiSj3by/0vilHiJNYUI5qnQFqvfAAc3FRnJFOuj?=
 =?us-ascii?Q?EU+2oGxMjO6FoSTNMhQG7sH8JMyCBwYcFV96JlY2+J81sputztpNjhTg9BXq?=
 =?us-ascii?Q?QEXA11RCQexJefuTJfL9qVwbTVh/8FuLh6vijxJtZISbbREpLbrstHEeWuCq?=
 =?us-ascii?Q?nWjGIJttqB5AdgoTVn6R0uAXxHSAKXvAdQupmaFRM0sqVC8TZeSTSGGqkysS?=
 =?us-ascii?Q?RKhvNmbVJdWfbOaEernfFLpXArffAhDKYQlur2D/RF2gsWD+/ZX05rcCipBF?=
 =?us-ascii?Q?vp52ue9KUBI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w5+p5nMSpezz39V++eLJH4V8DZXQXUSgYbSQkM81eBygTJINWpNInowqJ2AW?=
 =?us-ascii?Q?b2DbXICeG8ocYR55c3lqazSFM/QWtAASHQLnDDPOv0gNzCP/OSCQTZwK614+?=
 =?us-ascii?Q?R+WuXLUjleipJakqhK2YPEN/fy91PTY4cJI7xJi21aWicNbExlpEcdN/eucM?=
 =?us-ascii?Q?N2jFZFpHIuDKkryyDylIhuGbZ6Zm5JzOvHxcu9OzHPU3GD/6lS7+E2Todjff?=
 =?us-ascii?Q?MmkexfGuInmvInUVVRQXfvSgsWSlIw17v+cZ4M3Y9SEpawxS7RGxz7KCPubJ?=
 =?us-ascii?Q?8cYbA9HKTVtJKXfUUY8lnsGNlzPxpgMRlFowjDSUON8GaIozbLoNWb4XL6yV?=
 =?us-ascii?Q?6SXjlAZQsNrcsDtTuI24CgwsLNZhMP6wdq0zrXYTf68hztnfA/MVuBmm+s/l?=
 =?us-ascii?Q?pGSFKu0wsx2ZX7FaxuiJuOImSXv6Cmfr3ZFaSRkq3V/hTz+U+wAe+z0aNJMc?=
 =?us-ascii?Q?W61qNpPOGsTlNxfV1pJQHAGToYDDvwvRGkzI6G4GyNEAr/4Fqc1el4kTlwAr?=
 =?us-ascii?Q?zCochYaAlIZIbxqKmhivKpP3pGHsgpxL28Y+HhWHIC3mKAkrY0MYvMtVbfwN?=
 =?us-ascii?Q?D65Q493UM38idFsR289yK9NiSzKgnkEhgAz2kvf0/3BSxR054W5PtDXZ2V21?=
 =?us-ascii?Q?CEDh0bC0bnNSzsgZCvwUcTp4MFqQ6wTBJEC9vNfpHTBUV+tYQvYBXHMd0gUp?=
 =?us-ascii?Q?DB9J2ze/+Er2mwe/JsLAr5FVVvex1VyDl7rId++tg63TcCXDRHYg5JJD6iKU?=
 =?us-ascii?Q?otxctYppFmVAsnPcQcnzLuo4SFfW+4HtiiFUGSaj+D7bdXDyWxNG6M6RpH4a?=
 =?us-ascii?Q?3mnTzEtsLKwSHy8JYKqTJTkDAH4dNp4K/6h/huhTBxcUk04hNTlyMstPsL8A?=
 =?us-ascii?Q?u/4omAK0LQwZpyYb/dP/TUwJeZxORbbY4OoehiUWGmatSXH9bPu7q6vqpWRi?=
 =?us-ascii?Q?CCbZBmAVRAw5tQecXw+P8lEDIVEqtFYWdEi/NHJyOATAueU4hU88JuyZPEUV?=
 =?us-ascii?Q?DGdO7NarQYZbjwi3b1RZfdRfccpT7SOo25aC/WLhHvpncEpZouCLPf3yK1Nn?=
 =?us-ascii?Q?wfQ4g0VhEL5cjfmvYubUXUuBDdJgDhOBiSzVLuOQwcQcT3yF34LyPWla+Ad5?=
 =?us-ascii?Q?unkVC9tt8l9iwHbkVHUwyImI8f5pNyzfwxEbEyfnj5rsV5vWEtdVEVHEsm63?=
 =?us-ascii?Q?Q/vkB/wmGCTteYKDZL35OT4ohRmyqL4OozDY51X5lqW9UEMoMDmueIKi46dj?=
 =?us-ascii?Q?cbcq6gGVn9qDocP8/UdxvGLW6YxttFuNbT0rV0aDrvXsZgsvQ8rAp1kZniMS?=
 =?us-ascii?Q?VAfiWOc7Pl2UQ6/v83mUvM5Yg1OIg3BQafXxYHYJoVedU5QhP8QEtO8819S2?=
 =?us-ascii?Q?Km+0tN5mxuk4fzK7fHlXHenF2HVlIF+tYmMeTRzCV1YCf0E3qCh3f06A1Y6G?=
 =?us-ascii?Q?AsNggpg1miga9T2oSqpMy+zvlndWBaIN5Rp6DEaRNT2psJr9LE/2YAMJvxHC?=
 =?us-ascii?Q?m9ufdlB8hOkKKvVVRk/dmAWq13HGLUTEdYiKatEwqXH4pBuhBDSpmc98nwxE?=
 =?us-ascii?Q?2rSQjNfAy5xlOZJu7mr2tOgW+FIpDt5G68+A1sH0V5q7ang9dnVWjo4zxoJg?=
 =?us-ascii?Q?TM2pRiEezbM4H5ZFXXpJdnIXQ+OkVGh2hdCVY5mWo/Fk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb538d12-c1da-4aa6-15c1-08ddd8ad5807
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Aug 2025 08:01:57.7598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T17pHeykeDzSPyZmzJp8GfLtukCl3RJOuu4VGYP3fJgBReXOQq+XRKd9DFQrJhYx/kI0yo2ycNcyTs1Pz6euPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6557
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

This is the first part of [1], containing only the fixes required for
stable, resent separately as suggested by Luca.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20250805073700.642107-1-imre.deak@intel.com

Imre Deak (5):
  drm/i915/lnl+/tc: Fix handling of an enabled/disconnected dp-alt sink
  drm/i915/icl+/tc: Cache the max lane count value
  drm/i915/lnl+/tc: Fix max lane count HW readout
  drm/i915/lnl+/tc: Use the cached max lane count value
  drm/i915/icl+/tc: Convert AUX powered WARN to a debug message

 drivers/gpu/drm/i915/display/intel_tc.c | 92 ++++++++++++++++++++-----
 1 file changed, 74 insertions(+), 18 deletions(-)

-- 
2.49.1

