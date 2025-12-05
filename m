Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31808CA7906
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 13:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7367310E25F;
	Fri,  5 Dec 2025 12:29:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lL2A+cUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B648510E132;
 Fri,  5 Dec 2025 12:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764937787; x=1796473787;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=9d8uswMPKGReAlool0nVOlNMjQ1l3DeJiHCSHZaJ0Ww=;
 b=lL2A+cUQmpiQjnVzg/Ft5HovMIgsXf8fJxqaaupUcf3dD2igMfb2EmVX
 aRm67V5vu7YBqEEM0irYsuKBcvCp7gmNIOq0ASL+fV7T+hYKhs717C7XD
 R+kfXlo/90vrzcYIAbLGuqrLZQyrqLMb8iqUY6s4C8MUP5Uy88aw0Fhy5
 d4wZZjM7Dir62mxn99+M1WggnIwqw7vZbnxibyXCuRQ9Fh9/V8/GFHsiz
 aCaHp9F7b8n148y0CxYPBjBthB733MLJJ1tXemL/mFoPTAG4QN2ownhZN
 LE+5BGFUBM8ZkuqlnHYvf53lzh7DjdC632YA5S4f7te8chue4FyqwI1pS Q==;
X-CSE-ConnectionGUID: 6mAJ/QkTRSaU1VIwaJjWMg==
X-CSE-MsgGUID: ukD4G3ccRSeooH7xpoyJYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="66906256"
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="66906256"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 04:29:47 -0800
X-CSE-ConnectionGUID: dA8Pyc1URACNWXGp62kFWQ==
X-CSE-MsgGUID: 6H9Jz5hmQgq8X+P34Adhng==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 04:29:46 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 04:29:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 04:29:45 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 04:29:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sTTZ25bR9Wgs13930S0GjOd4ROV4uzLM9bGcsHOjFQ7OgPGS2FOFduoM3D6ZamllMu4q28kXrKxb2w58Y1X5hqKF+uPa7wOEqCnQmsiaptXlN2c16S8yU90hHc0TitGbZycUxMa974B6hsP6nROR+7DlWuiilt3Arq6ca2vxu7w46ygQbyRVjnGtG2Li2BJRRDbGGahBEJb8d9r0aHUxkZq2f/l9ysenuOTzpABALLmFrcC/BUO070bhgzszO3o3ClBkFDOPTb1WnF18UaxqKBO4M+JyaqvyhrrYFhssEEQPyDXh5PF6j64ADabCHC324sCWKc8pUV4url/RdYZVmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p82MqgS6vBYHqTClECwU3sdX5+b9uGpoi+1Ps9/bcqE=;
 b=hai9wsyEt0wPmRVhtAOeUmzPo3SbtrA6Spr/1IaTeuxKiqQbdLw1oE1EIZkK2VkbcQGp+oWAVLbi6LSIM4E7MaJdSoe0SagNYrXldcs3e5UGcY6Rb2M1+OJBMk0MlhzFk1QZuOQ1Wy66qpDF1TX4ICf9cDcfyvzrU9AE61M3LYO45UXLBbWm29+QLBrytvlCGq+TJP+qH1IIHQempLkI/Xl41Hl5CI+tZ6FnziYwuWENGc1Et2Q2EMIbn2LJN1zxa/A8X/l1B/uNEJC7Gg0QkKKd2thvBmihN1288x6ei1mI4LRrEOwRSKMhN7+fVDzwCMvT7Y+wEM6qaZZxKOVwHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA1PR11MB6736.namprd11.prod.outlook.com (2603:10b6:806:25f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.12; Fri, 5 Dec
 2025 12:29:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9388.011; Fri, 5 Dec 2025
 12:29:41 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/cx0: Convert C10 PHY PLL SSC state mismatch WARN to
 a debug message
Date: Fri, 5 Dec 2025 14:29:02 +0200
Message-ID: <20251205122902.1724498-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0189.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a4::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA1PR11MB6736:EE_
X-MS-Office365-Filtering-Correlation-Id: 8343c928-4a70-48ee-b849-08de33f9f63e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RuWxiVvJ1espPOlvUzwCFoQZ74QafkrWYqkbSIn+EqmnYpKhE8VuTlW1DBhb?=
 =?us-ascii?Q?fuysMOevVF3C1Z3tLqcr2mAheRQhVthbfvPnsJ9JiMvF5ArBE8WKaiXj8RML?=
 =?us-ascii?Q?uigwsAxyuQ3Yad9ldaDGSLs3tZl2kX6rUKHKoxriDpMRlTBhINjb8l5w4dWx?=
 =?us-ascii?Q?eZvQ6MZvLWOS0mFB44LGMJSsUMPBjhrrn4nYqL/TnwXSpvF1Dnay4xKE1SYu?=
 =?us-ascii?Q?kEV+BEkY7Vpa118RLSRw9kmJAqFy8H6vo30RFwjGMyTYFiPVoYd6pbRuJpLc?=
 =?us-ascii?Q?s4MUiMSw61Do/0jfFSRKDfVl2HpZhZTrAKEmxcjlz8o+YyAzb264r32YiCrs?=
 =?us-ascii?Q?Snr94UftLHK5nSTw+lSqoxDLClPnxfbs0eSno9tJExcDxouBdY9RG8IvfvHj?=
 =?us-ascii?Q?SMEypL4aemCWvZ3cCzyKz0JmT2HuHcXqc7S1Cq2DnfaQwycwsA/pyn/KNMBf?=
 =?us-ascii?Q?kSHP1BE29M3cBDDfxsbjnfWsDMkENAzgkwB0iDFtgTkCiBEdf2qyHbkRTmmU?=
 =?us-ascii?Q?GmLlWnRrQh+i0RhkRU/Da7tb7tAWV7I/nQIEpA6wO1YxL5XwuCfoqa8OfAhE?=
 =?us-ascii?Q?JE7HKr2kFbVdY0RmydquzQKzpzpe/2T+iZspkvNqqKr2VdLbRiOSdj8grYXV?=
 =?us-ascii?Q?8DpWkVLiqQNIJdivPAwasFQvgT8CK6Io6kS+EHC1Pp2z1bhieqqcodsCrZHN?=
 =?us-ascii?Q?hf5afEKJoduJZ3qfWIzon41TAQ3NL3nPFLUYvTSchDNCd1Q63phQOoQ6ap1j?=
 =?us-ascii?Q?SRcxZvhUqTz5SwKnB05VyrzTyTSPD9lMduNHIKy6Evz/78Br/Xdi+avY9hqZ?=
 =?us-ascii?Q?fbx6ziJZ+8nxZVSfCisFdKGhQ3y/+QhjBFceDN5onU0y8ifv+0JG1Jl5uJAb?=
 =?us-ascii?Q?3upmUV2l9I7V2tXOun6NpOEaRZv+/8iezlre+Gv40Pdd6hv2ebglDsRl8OOR?=
 =?us-ascii?Q?L79r96gNTjxUvSnMJguhZ7DXuQM2l2VaKGmi4B4FfFh5Z2+n0kLfr/nKL/6y?=
 =?us-ascii?Q?4Pr7RQFwJUDF9vHc/kfa3wITSu+PsuXPm8g0ScRgIj6Rze1Y4tQ8JJ4ggCc4?=
 =?us-ascii?Q?N7xsiw+U7hy1uY9K8jQpQc59Won9sZrG1FZo1vELs8Zv0lIenBBCnRSygGlt?=
 =?us-ascii?Q?cP8T4FuTjJN/b7c/f42chox+4pZ3Em6+bmmdnGm1h4IMXfrKVScFYMaSE1AF?=
 =?us-ascii?Q?pQ3Yyrw8YB3XSoheuAlInhju0GM3FEmR1923o8+o02w0BtieY8r6ZKf65OYE?=
 =?us-ascii?Q?KKnQ3d/HIlI9F68WWulbRshHIEm5XYPMtROxhx8PwcKB0b6eS6mDTIuM7tj0?=
 =?us-ascii?Q?Q3AggIqMfgZWllAjXQOGsOVehl3KpOPUZpyfLswlVPO7S7RyUqiDEhDwONzX?=
 =?us-ascii?Q?4aNz2bXOyRiqbIBd8xQ6wWi++hgg25+omCOg505pzusddK+FV6mgmwLD3+hC?=
 =?us-ascii?Q?Iq1r1Jgv2oYmAXpNFE07EqGkD0AogsQV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Tw37KAxrLUP+UT8c5UDnqUWppXWp+6bYY6d0/3VouOJPFIRXPp0LmF3MGWfL?=
 =?us-ascii?Q?wd5Mmpdit+vURySPjpnUeNfdwpbP27fSgCenLmmoETwuuoIWnBuue1PWSAM3?=
 =?us-ascii?Q?+QzV5l8ZPf/9ZI4w7c4XynZw9/ApC/g0xBmOe6zcRKYrv6BX2vrG/HeDG1wh?=
 =?us-ascii?Q?imVJlvChRS/9/7K4HLrqAkVhjBEKR4c/M81ZS9dqrz1w5/7tSiC/6oLRfR4j?=
 =?us-ascii?Q?O7h7bA/Ys29aPgKPOOcUhdRJBD+/zNWbtmSbIwAs/Jntd2lJKZQH4MXz5a2d?=
 =?us-ascii?Q?fT5KP9FEkW+kpzc7grjCxgR4eWxceB3+FusV9WW1VxpHJRdACQEWRV08oRaV?=
 =?us-ascii?Q?zCJLKfBsF1S4ddSWnyCruUL3vhNORBwjOQM1AX92mGmLUaJBrbKIX9EJT/mi?=
 =?us-ascii?Q?cnx98kpEBoceu8tNSPTkU6YMR3cAi+sMte+g61dA6GkncB7gqUyw/3lE20jg?=
 =?us-ascii?Q?Qfga20r6xzDLSd68nQ6XzjM32uVK/is9xSEgu6kU+794F/XVrSfP2EY+/Mwj?=
 =?us-ascii?Q?irrb+T4WfH8or1kqvHqpyWrHggfXxP2/cV6LsGbkidx1AQ8KGN7LE7nuA+CY?=
 =?us-ascii?Q?EYoU0CbOfksR/TG9a1DvZTSGBXSzpNP8sgcIWewhM1VGQF3hmNlb0peEWtFB?=
 =?us-ascii?Q?t9OIjYA/DoQvHSbp/+2Kzn6dmpyXln+5mLIzB0wWji+LYmxUlL4N8fx4Kd8E?=
 =?us-ascii?Q?H9dj/sUkEhq/t7oOH5/5q/qVmgunY+KBS0iyjgT8g85PS90ba8Ihsf3G5bl6?=
 =?us-ascii?Q?ic0PfsgvPAGTiZfPl6HGOA2vdc5PpygnnZHibjtWOnPRoxPgtIt9kYxBtZE/?=
 =?us-ascii?Q?xEvBoQJEtF2Xz2y8Iw4uVzndYoS/efLP+wTDqHvuqIcAqcffjvVuT52K6UY0?=
 =?us-ascii?Q?VInXgbWP53uzpV+7uWA5eiVw53baKWJ0rvZjnm916BZubtTyCytzWktPnFfQ?=
 =?us-ascii?Q?Dvc85QusMsiNIcElhPM4pWx/HiXA8IJiznVWLknbYUo2njt/4JHsEDcCmgxK?=
 =?us-ascii?Q?t2HhBRwrdfXFrqxemTUYH4xz3mPQi0uP6AYYsUPPw4AOdXsZYiZx83MThkOB?=
 =?us-ascii?Q?6IucNfxHJibq32+0LramrkvF9Q9we1WnCuCk9C7vQcOBGaIR7WBD1sAvMJ9q?=
 =?us-ascii?Q?9xD0VDqToO9h8CNAv4qIZALkiCj7RFsCCaXOz6fwFoCww3pX2DdKL647Hqz7?=
 =?us-ascii?Q?0FjGLSZqmSrrBVQB3ZIr0QZX+R0ISTDVT0tp0fhJnh20LgVlHNQJRj5aeSPz?=
 =?us-ascii?Q?wHJtxp0aUo0jl8mbYvwIwFpq37kF7yNJmYOGTB9Xm1l0m/yrHSdF4h7eQtBE?=
 =?us-ascii?Q?xwytFGDgcf9zvD8eoOJRD412FZibWWVdRkHdeM4lJAnPEJqz/LzqSWwW6jTI?=
 =?us-ascii?Q?J55L11+8vkjYSc5n2Hoj0yW7W58Ft16mO644mLDWIfYFMYxy9kDu6yIIkj/X?=
 =?us-ascii?Q?YmOiYQV/wQElXLT/SPA9qio/IZvPpF0C+7O0IGPwngoh7dHje+MS/21KJ3MJ?=
 =?us-ascii?Q?g4I9u0kQ4UH5OQjeDxCpZgoXVdkGVeKTzS98S6xq6Su3FNHKMiOW4KXwItND?=
 =?us-ascii?Q?+hj/n4Mxc6lrVDxNggYDR+aJz9T6/lx2JChmhq/KZeNBhDiFwS574i1wJmiu?=
 =?us-ascii?Q?/pHbCOJmU3Ahd7C6aTuWP9ccu/2Il2Dkc7X3OoOYkEsN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8343c928-4a70-48ee-b849-08de33f9f63e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 12:29:41.3143 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FRDIv4uIzry/GVv6alplg5+C4eqBdVSy7tNvs9CB11T3YzEukdVtP1g4O2Z5/AJxTqwLyFdsvlip/tokCzgVpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6736
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

On C10 PHY PLLs the SSC is enabled by programming the
XELPDP_PORT_CLOCK_CTL / XELPDP_SSC_ENABLE_PLLB flag and the
PHY_C10_VDR_PLL 4..8 registers:

- If SSC is enabled XELPDP_SSC_ENABLE_PLLB is set and the
  PHY_C10_VDR_PLL registers are programmed to non-zero values.
- If SSC is disabled XELPDP_SSC_ENABLE_PLLB is cleared and the
  PHY_C10_VDR_PLL registers are programmed to zeroed-out values.

The driver's state checker verifies if the above settings are consistent,
i.e. if XELPDP_SSC_ENABLE_PLLB being set corresponds to the
PHY_C10_VDR_PLL registers being zeroed-out or not.

On WCL the BIOS programs non-zero values to the PHY_C10_VDR_PLL 4..8
registers, but does not set the XELPDP_SSC_ENABLE_PLLB flag. This will
trigger the following PLL state check warning during driver loading:

<4>[   44.457809] xe 0000:00:02.0: [drm] PHY B: SSC enabled state (no), doesn't match PLL configuration (SSC-enabled)
<4>[   44.457833] WARNING: CPU: 4 PID: 298 at drivers/gpu/drm/i915/display/intel_cx0_phy.c:2281 intel_cx0pll_readout_hw_state+0x221/0x620 [xe]

It's not clear whether the HW uses the PHY_C10_VDR_PLL 4..8 register
values if the XELPDP_SSC_ENABLE_PLLB flag is cleared, or just ignores
them in this case. Since the driver always programs the register values
according to the above, it still makes sense to verify that the
programming happened correctly.

To avoid the state check WARN during driver loading due to the way BIOS
programs the registers, convert the WARN to a debug message.

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 7bd17723e7abb..b973a9201edda 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2278,11 +2278,12 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	pll_state->clock = intel_c10pll_calc_port_clock(encoder, pll_state);
 
 	cx0pll_state->ssc_enabled = readout_ssc_state(encoder, true);
-	drm_WARN(display->drm,
-		 cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state),
-		 "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
-		 phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
-		 intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
+
+	if (cx0pll_state->ssc_enabled != intel_c10pll_ssc_enabled(pll_state))
+		drm_dbg_kms(display->drm,
+			    "PHY %c: SSC enabled state (%s), doesn't match PLL configuration (%s)\n",
+			    phy_name(phy), str_yes_no(cx0pll_state->ssc_enabled),
+			    intel_c10pll_ssc_enabled(pll_state) ? "SSC-enabled" : "SSC-disabled");
 }
 
 static void intel_c10_pll_program(struct intel_display *display,
-- 
2.49.1

