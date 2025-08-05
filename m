Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6097EB1AF6B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A177210E614;
	Tue,  5 Aug 2025 07:37:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dfqCE4Dy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 160C010E612;
 Tue,  5 Aug 2025 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379458; x=1785915458;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=RgCJNQtgLW2sgL4gS+iBsjj5YqNFmet+pzBHxlogecs=;
 b=dfqCE4Dy4LCnGAFPG3QtKdk7ccp3/n/BJDue6lehd7GyPsfKHfrmiSx7
 jHt/mphVil7FFRKWFo288G8TSLCqqg6ycLayw7Xm/BsNHWMBO84+fBp/N
 imCJF4AyuzFYgmJS2+3EsZQp2sanIxIdccvzLKBAOHPjNFWVuiXM35Qrg
 CkEOPkT/XD32qDSeT7VZCmRs5ibmNBEN5B7+JI3N9B60+dYgNzin789Kb
 U30tfZ18aSAfLQU5l2ZGSK8KbuvSpTb8j/iotN5kK6kF5OUqCQnEBOwzZ
 P4Nrtc6ajc+EBjttY7NyH0XTcHssZ2PxHIbrwtJ1PN6J8AVqQbtc8Nhbe w==;
X-CSE-ConnectionGUID: Xr95T1Q3R7W5u7f4udPKkg==
X-CSE-MsgGUID: pTp+R2ppTcy+jnBLfcLTOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469711"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469711"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:38 -0700
X-CSE-ConnectionGUID: GCWd1WnuSRK/dLdE4kuKTg==
X-CSE-MsgGUID: ncfXg5yOQnOzW+LZRj0NZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080172"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NxH7x+79wDWlks8kxCgA/lnC3oJ0tRtM7lYYKH5wrmQYlZZ2JOhrypvgl+Ba1kXD8LCZbQqg8url+hEiKBjgkdhM453oNXdytrchqCzA8InXErVJ716an2yOzhcm4KJ93G0mthstU6KSmhIW0r3dg10lKW8e2GReQyXnU4uPrH3CsE7TEov+r/ty4ZTr8xrXtOvE+j5yKa++FeH1XCkZxmwoEpx3tUcQPiwN3lwkVTbKjjaiZKTm6JQbu7UVpjRX4ku8xgVJlhicBiggABN7GzPy2jUta0H8uHl4onRLkhVkK5Ckw+I4+nfr0gD2JxAvlQB3jJCJNfScS/sjXq8KcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e4q58Wp/miTMlpWIAcAtcQ627iRk4AqZZiIAmnt0zE0=;
 b=Ien8scCL4qdCaLiRsX8hEc6+n61oxIwIBksEa4Q8ZigdvDsaW21+Tx9j8rypfUIyqulASOn7YqFgxK6qYP5HWIfsAIimG0gp8/jmaEph+KzxVazHg+PBE7kxwicQ9JV2wTb47LSUzTdqN9ziwaneD6WQadOcOM7csYGkCqHtJu0jYfU8p1afvYwdG/4gix8nN94Vn5FZHB+c9ZMfOl36sG2vxHF2v8iGWw9OtWxj9OCowDxv2mNK940/EMf0IRK3LKXVBDDDsEZwg4dJjmaXfLIldi2sLWiMC9uDDCfTh2NFmVv0fO17/zrQ9ThkxQN0HUDgKP+2W5LvhJWSq415WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 15/19] drm/i915/tc: Handle non-TC encoders when getting the
 pin assignment
Date: Tue, 5 Aug 2025 10:36:56 +0300
Message-ID: <20250805073700.642107-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 58bfc391-a3de-49c1-b62f-08ddd3f2f15c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hrbuWwChRXseoDwaM8I/moOUe9537IWB5ZgibC8HJEd40n2vY3+ajdZsZOKV?=
 =?us-ascii?Q?9YOAYvCoga6SerGVvyOF7lWRUm651CSmtuwQZqjUp/LZKD/AgvBRlOAJppop?=
 =?us-ascii?Q?MOLv7xAt6M1Xre+G7OOwP9fJGTnEmKCPcLEGBPJ5PI+utAM3KpxEmMb72LU3?=
 =?us-ascii?Q?z/KH3AEk18QEM2849wprGWJIEjxjxDbyepxvao6vZZDkgW9++SbgJs+7ovvJ?=
 =?us-ascii?Q?3lnGe6o9nJR0WYAW4zVmYwZH1wGslOFxKHTdTOcTX45YrI85FcAoMHkMc35I?=
 =?us-ascii?Q?gpHEWiCYepqCTyJdbpOS/JGPDQOcw5jbMU0UQqhFzDv6UwJdxKCDdk+0Z+IY?=
 =?us-ascii?Q?gnrWQ7m8O+kfZMty8I8PXVxABJLzq9f/mLwiCnUDqMNCGobco49ccgw8xnQj?=
 =?us-ascii?Q?bvfFYI4NLcXTGUaInxAGNzEUbPCUxW4hHyZAcHtv1EQcCyjX8MwgoON+jZfY?=
 =?us-ascii?Q?0CE56XmJIJU1WZOIPpuqWffBOlWEqoQYLHG2z5E8HVRjLngY1J956BFZv/pO?=
 =?us-ascii?Q?/MIolPc6f+LIoyf9gfn2uavL3TtDPBA0sTvXEqL6u3i6zgRHnxsC7taZ5boq?=
 =?us-ascii?Q?OxjJvTtoLvGrjgwJ4fIeJjlcDMRH5KPlmw8R3sT4WqbepWMgx+Ua7OSA9qgf?=
 =?us-ascii?Q?SrNenPtUDm4dt172OmtKMl6NvHf8j5AEKjjFihDBokGUloubwG2XSTJIq0td?=
 =?us-ascii?Q?q9ct7od1FMZE2C/+i02jTjBGo0Gjq/82G512GFk34UgLbsGd9fAkGrhdIX/h?=
 =?us-ascii?Q?uJikNJ3f2ZZUjgh2TSZODh41oJWUCxCihpjQpclDEUEKsxx4O1Z0Zww09Msc?=
 =?us-ascii?Q?NWFC/nCKP6zgkL/1MhWtXvuZjEUDb3u0vUn1uMtVvIhzIRY4181gKT+i8N07?=
 =?us-ascii?Q?SYZrGvJe0RCltzOCkUMKaE2JiQ+mrf6Ga1FYcV8VZaGdp7fmr4aUKZY44dc5?=
 =?us-ascii?Q?7Pg3KqPtwepD91TTp79/1oW+uzYv/tqMm39ERDLWPQVkBAYwQ3jRl0z+ekaZ?=
 =?us-ascii?Q?YwBL+I8fRJnOesbBogXvWg8PqPsGEOOl8C9aXaW0d98oHTGO3HPxtFYyZ9X9?=
 =?us-ascii?Q?iv3hkiFup1ZKpHPGL7gonx2n56c0IxzbeT+xYFXOIDGjnkcJWDM1XsYbPTHL?=
 =?us-ascii?Q?B93nt5cgKtnPsUIt5ka9QWP3Zp7DQZLzAVfysIOtgLH/MJCPbBCpoKoLxXI9?=
 =?us-ascii?Q?LvK6zL8Sks8+z/KpUoFnVjXgEqVl8tJeoZfL/RtrBhkdZrXC2nrbGPusbTpe?=
 =?us-ascii?Q?qCufNst+o8O3NgCzT3l34aAaadtdElclQKmqS9mN48o3P1o6MmcgAcT74GE/?=
 =?us-ascii?Q?2syEEh0c7vtyumvmtSF5LT4fygd6Geby/7nCCGWi6qAYURxH8mbTsMj5LwVf?=
 =?us-ascii?Q?vf+0c/XkrDEmoC8LzkbeCilDGkhZ1nXyh8SGq/w1llvFWdNCQg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?19RULVr4qOrb84SPOfrny4G30xLumphFBTR3qqJ72d5DdTIKSUJ5jM59qrSg?=
 =?us-ascii?Q?60aknkjuGuL+gIRA0gjup2j4qdJuecxJdc+imNTgsO8vFfSvW+azl9Nt96kx?=
 =?us-ascii?Q?q2iyNat6fGc7AjVSdzie5ENTdhPaTzJ/K2PtPO0JqsWMrbd1BEtCJUe7HNGB?=
 =?us-ascii?Q?wCs1ZJQyxRdUHH1amLsR+36pxZiKsj77YKwgBtPZrRCMyLT7m3iRAh/Ookqc?=
 =?us-ascii?Q?JeCSpNTqCjzeUp9UCtn0nc+yyWW94LdNCxDVb1+RmeVqN4VCfU7xmVnP9nFk?=
 =?us-ascii?Q?9cgRdohqwLAhPRo2Q3qg9MrNLVTCFfmI4fLFTcKVgPo1utSujoBE+18XLQO6?=
 =?us-ascii?Q?YtT1r5oE4Sh0465a3yHMabgPDL/R3pzfPNj6OObEMFAKllJjR40Lphd5TqYK?=
 =?us-ascii?Q?t1ZuyOPj8B3ypXD47PXV+IJoBOyK11BTWVtaeDQD3dm8V26BUAe66+M31PPx?=
 =?us-ascii?Q?qK24SNOlm+6BD26k79PWmEW5+z+2Q6bTjDH5x/bfhS1xKLwgVgmLBzHXrS/X?=
 =?us-ascii?Q?7clKgDEKkensA3YCMInGpt0XJwjpyRNBcYVE9bxkz/1VkfM3G+m8uSfYsOXN?=
 =?us-ascii?Q?JvQHRtjbDJst2JKTISyQXg0BLUlEXld5tEZyPQS2aqHfv5Pf1gU3Xm+dGDX/?=
 =?us-ascii?Q?2+OTBmuBpwtbZK7CGYzFytbYkt0SAh6Sq79BB7lr0jVTWpdNk/IOhec6iebO?=
 =?us-ascii?Q?m/aRmv3RQWPWi0jI53+DmdRwEcroxjWV5yrOIF0mb6zHHhKnEO6Fyvi1kO4I?=
 =?us-ascii?Q?PKthwmzwRSgC68k2cePuEwHZdevjjpnq079LYr838j9MFUK50LvlQxdpno+l?=
 =?us-ascii?Q?bFrXUI1qUrHWQFFlAMb6YvpAFjihqhGxu454MhtmJP5BgT83pUgNNak5Tkr0?=
 =?us-ascii?Q?tUiVgdl/35wcE+eg4oLY8DiKOw8nbtMFDxSVMIjdRvFEnXciJvUSLnaFN0ZL?=
 =?us-ascii?Q?9ydbTf/PNQxvNGgwnUVwmozBZX9uDL7czfUZgCRcTgluj6z+SPp4CJKBdkdG?=
 =?us-ascii?Q?D2fdLOeOCfBM5EDyTxMyhnfo4SGPV4Y1Qgmf8MaPeq7AvohMdUeT6Slr4E5h?=
 =?us-ascii?Q?tuf+5psiLHQjsKFt/SJkffmCW7IDHn2xjXH14FbhBXKlU9CpSyD3RZF2PINI?=
 =?us-ascii?Q?7sQ84Rf0Kuy+fIAekbypGT7K6a8vkPYVYxpX0p3PMUU+S4x9TSG5neN/Gkc4?=
 =?us-ascii?Q?7UO9rMxhQw1KdDV+TcfkZwjE5kEdmKF7PjdzGikUwAqXyPyYpIPy1vUMVLF8?=
 =?us-ascii?Q?P7LP9Uip3CE1x1zJl2kLy38OrueZARNLiLLwF30fKGPMRfYaIfbxtzWRLgUd?=
 =?us-ascii?Q?dijsJ/hXPKbSvl128rwjjrUmAU9imRnjWVArGTWlx5hO7w39b4SJZuANRRzh?=
 =?us-ascii?Q?nYqJwa698WuMNYqCmTOeIQGH8c0G7A4UFZwvM2xDEKuASdYSIR0sm0l8dAbb?=
 =?us-ascii?Q?1VsDDU6LIz9Rt5V2tGzMJlqPQ0GGiVX7Pt01uI/BSc/j490fRhypA40MTVka?=
 =?us-ascii?Q?h5/Onf6H9d+7gA7dPF9SnR5VAmB2EhkdSChKqrgZJHlEU54u7K9urKbe4Yvv?=
 =?us-ascii?Q?pIs2tVJmFnlda66gAOActrZu3gRwTN/9JOGOdULx0dHSBU6KkZzpuCIzRPpZ?=
 =?us-ascii?Q?BSRC3e7lxfHfEthbNAHRcVKmv+b0RSsgs8EH2e3dSlSr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58bfc391-a3de-49c1-b62f-08ddd3f2f15c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:34.7262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: snkWNk560g6u1pzfgjd/oH0dTyAWcQyWgjWKIQMq18RN2FOfO5jyXXhSxBc8NrDl6SvJl89ZLmgm0CoqQ3CBHQ==
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

For consistency, handle the case where
intel_tc_port_get_pin_assignment() is called for a non-TypeC encoder,
returning the default NONE pin assignment value, similarly to how this
is done in intel_tc_port_max_lane_count().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 77c5a37450a26..571d311dc09df 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -400,6 +400,9 @@ intel_tc_port_get_pin_assignment(struct intel_digital_port *dig_port)
 {
 	struct intel_tc_port *tc = to_tc_port(dig_port);
 
+	if (!intel_encoder_is_tc(&dig_port->base))
+		return INTEL_TC_PIN_ASSIGNMENT_NONE;
+
 	return get_pin_assignment(tc);
 }
 
-- 
2.49.1

