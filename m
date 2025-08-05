Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D80B1AF58
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC6610E254;
	Tue,  5 Aug 2025 07:37:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="auo5Wqa7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFD0210E254;
 Tue,  5 Aug 2025 07:37:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379430; x=1785915430;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=WzJ9U2TEcXvBAKW7YUr+YxFrKgphofF+6I+O0FvnoG0=;
 b=auo5Wqa7kPx3rVhPZ3GE/ktp7Mm+TIRHe8sNFSQpFtmA3KYXpeebkRHO
 yEpniwZAISgRfufU/f0ndXdLf5owMWjNbiMcVdgLBi9EJqWqfrvJvU+MN
 rqeU8R6aFpLqVSS/jxPQnvt8DbV0/xK0AVB1n85c1Mgcj3/mHZQ2f7+0U
 hb3/VPiHTQDprAjQRIDVWNgfWti9EQmG/HDYxl3TOOqzGpoichMUR8T2m
 g7HLH41CDAjwkNi81EOqmMc/i+uV8uVR1AUKytF2kZTrXjv2jpYb/fX8X
 KYtzVtohhfDsGM1sLULJRaQlt1M00GbqujLRBUbCWdtUJVoxv0iaOKP4x Q==;
X-CSE-ConnectionGUID: XM6dJZrWRaK5WZY1uMmPKg==
X-CSE-MsgGUID: nq6Mv5eBQKaDNcyuR8arSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469649"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469649"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:09 -0700
X-CSE-ConnectionGUID: /FqTAnXyTHi1Qwx15M40Qg==
X-CSE-MsgGUID: 2cEc8LnfRNatPjVTE8U5QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188079999"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:09 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:09 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.82)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qgXISHNsPIyGVlYrVFMWDQxsLKo7SX93ZNiKku0P+oiTpH2L5XL3TytYfgZndia1pFGpJZ8xX7CM+ZDVTGLHuIPSRWgjuhktJn3VjeQwztaT/QkPGexurwz0oiRgqgLf8qIGXudtRwdhaGQZnbPyP/wkBPk13lscod5g3O6dswjwnh7F3WUNm8CkX6a9lt0B/+HSW0Zz5seQX2oYOdruRTQ3UYCUr0VTU7uagJrNUMaa77kL1u8OtoAlV7oJx+Jysczv/Ni1mNcYuc5xY+CRzhJSZFkh2mh5qou/rHUNGm14P8QCygt3BPwE4I8sEYgOXtXL4Hp1wD3h0mJxeLLHhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tFuYHmSnglwapbXBeew5yAVDgsUoSQB4DntJ9DNuOmU=;
 b=EoFz36szdu47gqoVC0q+ctrMKOhul3LVZMqC2T6GllkCw3YJStdvb9b8do0OGKjuFOQw+R09ZxP2ZcmyEcdV/OzZywCJMAq7dUqmZlcam1oq5TbILvAywqexqkUisAHkLyRioj5a3/rykj3JGIQG7K3Y+gzc+dMhsOri2ve3tWZDXKTlE9c1jC25bFDDk31vi7x3/odMWK8eJVgUKoyhRW9nIgeyfZFNfqPOHsxJglnvg7zxaa4qHTcQ4En2xWAxYscThYjJ96zP0JMvebg+yI6sq09LdwHUaA6BwAlDxNm1zRMgTuRM1STDhT1RC+MwAVhSh9LXYNt2nx9X+16+Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Charlton Lin <charlton.lin@intel.com>, Khaled Almahallawy
 <khaled.almahallawy@intel.com>
Subject: [PATCH 00/19] drm/i915/tc: Fix enabled/disconnected DP-alt sink
 handling
Date: Tue, 5 Aug 2025 10:36:41 +0300
Message-ID: <20250805073700.642107-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 74b5e31f-d224-4ebc-9d0a-08ddd3f2e064
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8qgxLr4CD2w6iNTlhOajUzSC95wEArg61GObafAgQJbtStcK+PuIeM8QD/A3?=
 =?us-ascii?Q?5oUWezYHGusNdkjdKX+vXyIk+Be8pWDFlbzqEnOPGz24brTfJrWgGqr1Ivks?=
 =?us-ascii?Q?I6PyIW750BGXMo5itIwAJBw0cys2uNnmdmmQ/UMR/T6a1e1gp1tvGJh95MPb?=
 =?us-ascii?Q?ntfiDgBlUGGihicaCa3ho5q5jcWEh/uL9RGwDmSWpbZYpKDzxwDEu9yB0LHd?=
 =?us-ascii?Q?/U+DQwPMaRmeHLTg6dn4NHdTZW3Cr/1WDoFmGDdP9SwB1/ifvcNy1XjgQb2M?=
 =?us-ascii?Q?byUNsmiXtGWNANJh/vnluUxpUI5A45LgSv3S9bGltPYipWWOGiep4RV5EdPq?=
 =?us-ascii?Q?6rVWpPbrWwv9G8tvaKHVYZTjBYrBotRKQ69AwgseKPrU5FBQeNu2cDV8E0E4?=
 =?us-ascii?Q?QdUH5F4ZkQ2yikAPjf1X1QSGTCTJhVqd/XqOcUmpyGaZVW2EN/1CquoUywP0?=
 =?us-ascii?Q?D0lQJSJgRg7fmzhtW5GRm/l7Gdft2M6GISrlTWvTdNJIM3SbV8/r4mit3lt+?=
 =?us-ascii?Q?jf1WiY3Y2h4A7GcchlVjT9SRYKmFdJAa1XiqkISv/lfRouPV9XEilOX3pNGY?=
 =?us-ascii?Q?ZED1px3UmKvs+LWSsn2h89W+sOjLrx37g6tSn1EEp1PA79ILvKTWdwlhmT5J?=
 =?us-ascii?Q?9Iz37RiK67koi1XAgZDd5nkcee5nR3JXqebTJsyvi1APX2w/jI3lD7c2REFF?=
 =?us-ascii?Q?zAl1/BC6MgYsf89fpkRUutX4LMnGUvOKbjboyIAYfAzi8Ou0r+py8NCzhb0A?=
 =?us-ascii?Q?zoWyZ8J6qVhYqHYpC3A38BdsKzEdBeAJV8azYGBcdTT+QPdxRbkjMuv6F9Hg?=
 =?us-ascii?Q?b5U0s2uvc/oDiewylkM0f0CtfduM7zsfeUWG5qjSw6y2Zu7r7HdmT3KrAeh2?=
 =?us-ascii?Q?6FNuTYQXIZh3ifucVRW76oNYIjf5Ba93LM+bEXjOf2jp0QuTdBTXC+CFMPWN?=
 =?us-ascii?Q?JicuTpbIBbiSmZtiCXzWrc8voeKMwumuvcEMWgumIso69rJQ91lMtWUY0ZCu?=
 =?us-ascii?Q?hIlXnX9agVmILWUPFB9UfgmIshrjWapbqMK+WGQgz4r7auh1YD8smowe+OGJ?=
 =?us-ascii?Q?ZiMyUM8B7luiXPdwbZRz4keukzOWzy37LuCIYniOrREmZ/ZMQvtnrgYZ2aku?=
 =?us-ascii?Q?joxpkRWI6cdhjbBZsRonVc7A43bAnQse4emOHlx47fAcKad45pscfy4Uhchd?=
 =?us-ascii?Q?Y58WxJkozQHj/gSFe0naDuqDS6usTqUw/N3Bpgho2fdrHaqg+FH0rHNoVjXa?=
 =?us-ascii?Q?qMJgbXii7N9vUopqeYZ2B8bJqZthEkd1AZrH55vITMCrYNTgffkdUQhjelJM?=
 =?us-ascii?Q?g8cMSkFWIZRoKzVxQ8n+lNm3Osg4sl3OOdSLoVL2us63odncbt2xo+pTMcxr?=
 =?us-ascii?Q?iGM3XY729g0dL7Tsto0sR6c3zZpjdDZGiEGyCeZZxoi0eyRn3GP7bDgd7hKj?=
 =?us-ascii?Q?pNvR1c/I5ho=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iYf4CvIvcgsEL9dGb6zTdlTo87PtUgFgwPNCBEx5qX+yPsWsV6BT4Q1CXwYc?=
 =?us-ascii?Q?vce+20FBXNSkYMquI8eusQlcrEHkNWGbEKiHGn+N6GVTAo5oTFbnTtlZlBUi?=
 =?us-ascii?Q?pY9tEsBD9naPflbKAn1s/joX4de0Xz71DNgO96hKTOZ/Ul3J4djC2l8o4V+S?=
 =?us-ascii?Q?BrrvFomOBOSvd8F8tmUgge4k/EAHkeIwuZrFx73P93/dVB0bY7PrU21+43ba?=
 =?us-ascii?Q?wTF21v5VmfuwOFRuv0W8KK+482lOf/SdRqZlqrGqd17tsKeQGg5oAPybZVCL?=
 =?us-ascii?Q?NBzDA2tSlJ97EjApnv/A5U/Iy2L0SK4KFwllo/91h50eF3ojk9OKJ+GXhNcb?=
 =?us-ascii?Q?olLPNjm7ojYD0hv2p7yC+UFicIRYYyWO5yEgt9dvyj4HgEbA/I/tSUFVKwUQ?=
 =?us-ascii?Q?X+1PT/hlATW8OWR7qjHquKuxoTjpE6MgtG44ozy7NPBG6iZwg2Bx+3L1FPgL?=
 =?us-ascii?Q?g+sjbppgC3zSTeVj5puVxZULsCFicmqNIhp0wuFevRCaQDwRDRG6w1Ssw15p?=
 =?us-ascii?Q?QAQwehu+v4s2ZBJyzcIDGKWjTWGb/chdT7YBpxQNyL6AK+q3xnnkUryJ3wCM?=
 =?us-ascii?Q?gZq608wVLJJufowWXhUkTWZkvMUshlKwJeNZnmUhv6xiPCR4NkpaEJhl0D/a?=
 =?us-ascii?Q?BD8ab3URYLYLouqrEIpgVUnAwqwrmKYncR9gXftIdwBVmtf258FqDyK7hag3?=
 =?us-ascii?Q?jK3gLjjmnicBNK117Yahi9ypFLxYaoMp0E1zWOFBLf0bvBlsc0d2B3XfrIVd?=
 =?us-ascii?Q?luGh3b20D+KR3r0lpn1GKIitbiRGh5hfI0tYuMEoU/WMjtBXYFBgPUZNwPZG?=
 =?us-ascii?Q?vINHkZ96NCOxn0eopse+3mUCbm1oCLuvZLSc76nJJg7a4hz7ZQWjoAalTvxZ?=
 =?us-ascii?Q?bWwYY3oKh2e1PaKR972W4nmq1R6vIVhok25BxfuQn4uDgmXXcu1xt27l7JZs?=
 =?us-ascii?Q?VXibhwswOnu3zGojmrT4+WRXsg4+/6ineAPsI6vJaeMBWVTLp9boJggf4JLj?=
 =?us-ascii?Q?tCMNL/9r2qksIZ2DzXuutWbSp3ac9ObXA9ombQxSXYcnEm/tTmIuB9iXSOiW?=
 =?us-ascii?Q?dmPDjkIhARzl7LZRvRJUOK+agZAnXdRwdu+OlAG3SVTvkd8mAMmmq9FoSQV8?=
 =?us-ascii?Q?W5bENWQHYxEGxDRlMwguGRr3u8DvwVLEzWSHtQJNmQArYTcvzmhsBn1cuCCL?=
 =?us-ascii?Q?7wZrR4TjQaxE6JOoWyR1OZ7A36wkUxv6tzvrY7V1yqSeh8MS5HEpQRuu6uEq?=
 =?us-ascii?Q?2dMai+ldsKmrQnaYad8pNxJ3UtXUXSv2keoweHOGQLFCqZIozG5fHJOndxZg?=
 =?us-ascii?Q?WoWKvh2ofNCEW+5ndCO8e7oEgr0JFZOsHi3iYZW99Q1WVUFwotd9zGgSIj6M?=
 =?us-ascii?Q?yjAzNvv0Cg3DvbR5Nl7KZfnt2haGZz89JfXXXNGXIJLICH69BkRA4d/R8P/1?=
 =?us-ascii?Q?3ILllmjP9VXg1dFtsra1G2Zy190aiZ2m5Vz1xabC0G98898jcoako6IvdXQl?=
 =?us-ascii?Q?XvSIYEgiTPL0L/wBO3eXhW58Z5NiAcHY/R/LZPvgLdKikLOmnWac+fr6Tcw4?=
 =?us-ascii?Q?OckOtIiOp8ftaSrDYE5JaYai98Dhl/o+RiACaEv6j4fWaQ3AMM7asQwSFUsc?=
 =?us-ascii?Q?cyE5IuUC4YoDtoiWtJaKfDon8ceFzvezNjW+PU3kzFTv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74b5e31f-d224-4ebc-9d0a-08ddd3f2e064
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:06.3183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 97EtSLlyceZSpXyXiJKlaoiBWteFZ0sP9D3No4p74EovfKyyduAhyM874QK2nO2GGRFjY77VW/QhfbAbJ13ryw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

This patchset fixes an issue on LNL+, where the TypeC PHY's mode/state
is detected incorrectly during HW readout for a DP-alt sink that got
enabled by BIOS/GOP, but later the sink got disconnected by the user
before the driver got loaded.

The issue in the driver is due to overlooking a change on LNL+ in the
way the PHY ready flag and pin assignment is set/cleared in the PHY
registers by the HW/FW wrt. how this works on all the earlier (ICL-MTL)
TypeC platforms.

The first 5 patches fix the issue, the rest refactor the PHY's max lane
count and pin assignment query functions, sanitizing the code, removing
duplications and validating the register values read out from the HW.

Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

Imre Deak (19):
  drm/i915/lnl+/tc: Fix handling of an enabled/disconnected dp-alt sink
  drm/i915/icl+/tc: Cache the max lane count value
  drm/i915/lnl+/tc: Fix max lane count HW readout
  drm/i915/lnl+/tc: Use the cached max lane count value
  drm/i915/icl+/tc: Convert AUX powered WARN to a debug message
  drm/i915/tc: Use the cached max lane count value
  drm/i915/tc: Move getting the power domain before reading DFLEX
    registers
  drm/i915/tc: Move asserting the power state after reading
    TCSS_DDI_STATUS
  drm/i915/tc: Add an enum for the TypeC pin assignment
  drm/i915/tc: Pass pin assignment value around using the pin assignment
    enum
  drm/i915/tc: Handle pin assignment NONE on all platforms
  drm/i915/tc: Validate the pin assignment on all platforms
  drm/i915/tc: Unify the way to get the pin assignment on all platforms
  drm/i915/tc: Unify the way to get the max lane count value on MTL+
  drm/i915/tc: Handle non-TC encoders when getting the pin assignment
  drm/i915/tc: Pass intel_tc_port to internal lane mask/count helpers
  dmc/i915/tc: Report pin assignment NONE in TBT-alt mode
  drm/i915/tc: Cache the pin assignment value
  drm/i915/tc: Debug print the pin assignment and max lane count

 drivers/gpu/drm/i915/display/intel_ddi.c      |  19 +-
 .../gpu/drm/i915/display/intel_display_regs.h |   2 +
 drivers/gpu/drm/i915/display/intel_tc.c       | 217 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_tc.h       |  72 +++++-
 4 files changed, 225 insertions(+), 85 deletions(-)

-- 
2.49.1

