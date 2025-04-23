Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26676A9A4C3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 09:51:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D2210E2F5;
	Thu, 24 Apr 2025 07:50:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GoMj81vY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCE210E2F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Apr 2025 07:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745481045; x=1777017045;
 h=resent-to:resent-from:resent-date:resent-message-id:from:
 to:cc:subject:date:message-id:content-transfer-encoding:
 mime-version; bh=T1XAPNhY1PwvdxFM+LpkDczhf6jN+hmp1Y1mGEzVQn4=;
 b=GoMj81vY7lJvehIiVYx5yIt2L5z0A93iHp6AZ4y/ZIqxBy043nfpXayl
 RLphsdxWU38r9nlBFKy/O6noA+eJwNdZE4I123J38OK3cJuDeZZm1RCJx
 xU6pDcc5mgEzEsu/CeNWGY0VLZ8K1Ibp4L6G641ky4qk5vGRo77jcchaS
 vbSxJKeKM0SMEV0o/NgaLpni9Yf0LZGrpybECk1uwTlYUX1qj31kJYPW6
 OIbPqX+xdTQPqePtkCOhCoqAn0bResMFHPL3fenhP6hLPlu2QLNAzVJ4H
 ppznc4+Uq8no+IClHxjh7HM6ZeYtAV0fSnnAJ4ZYz+5FQHwBzSELgGK4m w==;
X-CSE-ConnectionGUID: CSa8yiUlSlypMZr+dCLD4w==
X-CSE-MsgGUID: 2pW+efOkSZ2xZJew7fHS5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="64512366"
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="64512366"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 00:50:45 -0700
X-CSE-ConnectionGUID: gXrVX+qbTYeE73anKO9IvQ==
X-CSE-MsgGUID: bFgfWHUCSHK72QsEbu+mJw==
X-ExtLoopCount2: 2 from 10.245.246.243
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="137712719"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.243])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 00:50:44 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Thu, 24 Apr 2025 10:50:40 +0300
Resent-Message-ID: <87wmbayp4f.fsf@intel.com>
Received: from SA1PR11MB8576.namprd11.prod.outlook.com (2603:10b6:806:3b5::9)
 by PH7PR11MB6428.namprd11.prod.outlook.com with HTTPS;
 Wed, 23 Apr 2025 09:10:05 +0000
Received: from BY3PR05CA0052.namprd05.prod.outlook.com (2603:10b6:a03:39b::27)
 by SA1PR11MB8576.namprd11.prod.outlook.com (2603:10b6:806:3b5::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 09:10:03 +0000
Received: from CY4PEPF0000E9CD.namprd03.prod.outlook.com
 (2603:10b6:a03:39b:cafe::f5) by BY3PR05CA0052.outlook.office365.com
 (2603:10b6:a03:39b::27) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8655.22 via Frontend Transport; Wed,
 23 Apr 2025 09:10:03 +0000
Authentication-Results: spf=fail (sender IP is 192.55.55.68)
 smtp.mailfrom=intel.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=intel.com;
Received: from edgegateway.intel.com (192.55.55.68) by
 CY4PEPF0000E9CD.mail.protection.outlook.com (10.167.241.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.12 via Frontend Transport; Wed, 23 Apr 2025 09:10:03 +0000
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 edgegateway.intel.com (10.1.192.133) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 02:09:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 02:09:56 -0700
Received: from fmviesa001.fm.intel.com (10.60.135.141) by
 FMSMSX902.amr.corp.intel.com (10.18.84.215) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 02:09:56 -0700
X-CSE-ConnectionGUID: Z5Uyr5K6RsKwDpVfnc5gDw==
X-CSE-MsgGUID: oehgn6ggS7mYfTGofZDErw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163317695"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Apr
 2025 02:09:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
Subject: [PATCH 0/3] drm/i915/display: remove intel_de_*() compat wrappers
Date: Wed, 23 Apr 2025 12:09:45 +0300
Message-ID: <cover.1745399318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-OrganizationHeadersPreserved: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-Organization-ExpirationStartTime: 23 Apr 2025 09:10:03.4124 (UTC)
X-MS-Exchange-Organization-ExpirationStartTimeReason: OriginalSubmit
X-MS-Exchange-Organization-ExpirationInterval: 1:00:00:00.0000000
X-MS-Exchange-Organization-ExpirationIntervalReason: OriginalSubmit
X-MS-Exchange-Organization-Network-Message-Id: 0dcc0e73-cc86-42f7-5777-08dd8246a206
X-EOPAttributedMessage: 0
X-MS-Exchange-Organization-MessageDirectionality: Originating
X-MS-Exchange-Organization-AuthSource: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
X-MS-Exchange-Organization-SCL: 1
X-CrossPremisesHeadersPromoted: CY4PEPF0000E9CD.namprd03.prod.outlook.com
X-CrossPremisesHeadersFiltered: CY4PEPF0000E9CD.namprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000E9CD:EE_|SA1PR11MB8576:EE_|PH7PR11MB6428:EE_
X-OriginatorOrg: intel.onmicrosoft.com
X-MS-Office365-Filtering-Correlation-Id: 0dcc0e73-cc86-42f7-5777-08dd8246a206
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|82310400026|41050700001;
X-Forefront-Antispam-Report: CIP:192.55.55.68; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:edgegateway.intel.com; PTR:edgegateway.intel.com;
 CAT:NONE; SFS:(13230040)(366016)(82310400026)(41050700001); DIR:INT; 
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 09:10:03.3030 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dcc0e73-cc86-42f7-5777-08dd8246a206
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=46c98d88-e344-4ed4-8496-4ed7712e255d; Ip=[192.55.55.68];
 Helo=[edgegateway.intel.com]
X-MS-Exchange-CrossTenant-AuthSource: fmsmsx902.amr.corp.intel.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8576
X-MS-Exchange-Transport-EndToEndLatency: 00:00:01.9400278
X-MS-Exchange-Processed-By-BccFoldering: 15.20.8655.031
X-Microsoft-Antispam-Mailbox-Delivery: ucf:0; jmr:0; auth:0; dest:I;
 ENG:(910005)(944506478)(944626604)(920097)(425001)(930097)(140003); 
X-Microsoft-Antispam-Message-Info: 8jbCuljh8IZdexC5zte1Eb+sHkradXTYYxEN4Ma90xeysB+XS/wciZRPxzC8TXyLjhYSeISYnknWSNC295m2QeTLQfIL6H7ihygstH21/xmfe4Tw6fvpWI3tnxHe53S1A4fGX+wYpsywNb5ZtU6ccubA/Y1DWD/whmZlJDC9+VC4nIke1xKDPl93Ss286pL8fvh1HFSLNq3QGvg2H6JJNT77XW1rvK688t1bMj+jomJK1YVWMMHmU32qwYYk5xYeUGs1sap5wvfI2mKYNY/FJ7v7Yzv200xiYnvXwTu5uJ9DuZkc0Qp40VJ/iaIdzN7kqyJTuE6fp69FBmdzG5RC50EQixTmKcGzdbjTRciQGlIfBHzxK0kHxSjNXz1laHAkSnfi39zPg/+i2P76c0l4He9BIkCd79Wn2XcZxlk6l2CSL35YO0FfNo6ojPYofk3iV7EA7FT9V5hDs8T8fkfzclP+kWt4pjWszBlnfvavbDBF1Da84P7XmPqZdK7b94wsAm5cHTSwH6MbUiL9xr5Vnwf0PQvDjItGOVS8NMw04o48/cq1WXjPzPOcVDhoufIaMahwaLTbCAzKRdsMYaT9Ap4g99ZwUU7+kGLq+jn/9Wb5V80kzO4UyGDDa7FCsQFGduTAYjZW/3TOJreI9O6TvadE6SCwKY5QFVqXQ/3+lMmMaaoYWPX3E8nFEhB32i1mdkFsAHPnYry/mFIydThwcenNxz8hvcfC7UZi11JMz9txsUnmns3Fcct6Vs3uUuuxlgVMUswIxKvAtxBJDod9V3pEmDILqZUcE/W3E2g/hbOzuIuanYKiQXA7Ikxt9U1zLWpWAXh6a20Px61v3NWlUg==
MIME-Version: 1.0
X-TUID: R9QJWyYVssoF
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

A milestone, with this all the intel_de_*() users pass in struct
intel_display, and we can remove the compat wrappers. \o/

Jani Nikula (3):
  drm/i915/dpt: convert intel_dpt_common.c to struct intel_display
  drm/i915/hdmi: convert rest of intel_hdmi.c to struct intel_display
  drm/i915/de: drop drm_i915_private compat wrappers from intel_de_*()

 drivers/gpu/drm/i915/display/intel_de.h         | 14 ++++----------
 drivers/gpu/drm/i915/display/intel_dpt_common.c | 15 +++++++--------
 drivers/gpu/drm/i915/display/intel_hdmi.c       | 14 +++++++-------
 3 files changed, 18 insertions(+), 25 deletions(-)

-- 
2.39.5

