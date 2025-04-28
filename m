Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C12A9F2AB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:47:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0BD10E513;
	Mon, 28 Apr 2025 13:47:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mhb38Vxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A3510E508;
 Mon, 28 Apr 2025 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745848053; x=1777384053;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=z+hklm8+4gBuTSKfVO+392a+K3u+ob/gHw4KkzqLVPM=;
 b=mhb38Vxv6Yi64BexHzTtC5PIFV7azRj3eZkPMEWlHKO3zIaxd2P0+m0T
 +PYO1DKRnxmQ5Iy6BS2id1rVtDY1a+YN8ZNJ2mnNn+Py2bEVON8zkDNoH
 yeWdehQe7vYKnjV6PXdK1Adtcru6D1lQZvRAdY3BnexJil7aHaSqK4x3m
 zAGc1c7CJXyZdFXo3nxYlG/POvpBVQhM4dV5e4ckIihndDnDGyjt3GSk9
 HgmORe335ekLbAu14tlqscpBKIJqgcTSsLAQpKDTM2zsLzoRBn9ed14IC
 p3O3ELNr9TJzvRGf2S0QBn6wM1glHejpBFlBcQcLn0+8VN9U6V7qPesGS A==;
X-CSE-ConnectionGUID: Y28pBHM3Tn+NjZEFlIC6zw==
X-CSE-MsgGUID: 1AnLYPRQQxG1nic63A3Gwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="72816698"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="72816698"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:47:33 -0700
X-CSE-ConnectionGUID: 4b3eSK4cSQKO6cJmFnrDaA==
X-CSE-MsgGUID: oHcTvE+SRCOou9IO0QY90Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134496718"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:47:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:47:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:47:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:47:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ypbhEHhVz3Bc+xA273l0HIWsAC2s+F3vAtQgy7NRnpi1YYhwRrhtRu81bcl3slf+yjjSdmQPEAdu3HlZ4GWpp3S2L0FU8eNQ4UN1vVZytUEg3BYxL2LgNQ48KNRFpMSAgHJ9YMC3a/WINby5L1G2Tj8YBgkR9o5S3uDnmui+mHlA1Is9QmeDDl8JfESLwgGyl1/dLhHm4Brm8lacfyepEqe4dm5e9uLo4v5mEuAm1Dx50J3dd1Yv2q6IDI3XghKP62tZdDaRbNOOUa8mU3+Opvki1l9ZhdtWwcTYbbV20Gq0CLSCceWnn0u6J+V6Y9CDl35n6Cv2P4ohMRuU0yvPEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tbQzNymYHcJZYeG0/SrQ8hDpm5tsU2E/KBUf+pgUYN0=;
 b=e3lUR+A88wg8qmCaCRaOlIAAA2tDGrqEHQfDOM6jOwrYpeeuVntOaMVoS8As/gP1YDFN3dEWndK8d4Eiy3ts9B52Xj+SvOBPjq+J4DBTwXqs3N4qgcBjBXu1C9vhWiqjxEmX2+7z3cVq+uzoI9KF6+1Qz8JmP4hO3+11/62Us5GV1qgKwBUjtoxnNpTrqyMCiVCoIEpktdpDqauzPsArH0MZGsW6PemRFS7ZkAAEAUCDpI4u8jeiHO7dTYLYHJ1awun/b2Yifg+Y8ZXWHxOZxU/epEXIJ6bPHYyMYfJwFEnbP8+cCM2d8ggqHJCBEWvR7YIoq271EviuppTbA0ML0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:47:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:47:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 0/2] drm/i915: Use intel_connector for DP and HDMI
Date: Mon, 28 Apr 2025 16:47:14 +0300
Message-ID: <20250428134716.3396802-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU7P195CA0027.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: f4b59a28-e27b-48e3-752f-08dd865b2c08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eahUBJgO/7Ul6BIi/J5lhYL1vZmpzcOxd6j+pJmIp6318voqbf25cvNHczMB?=
 =?us-ascii?Q?Aor5qpJuv/It3C9y/WSREFcxds6Tj1dgvlUEgrrHzXhzTt+ofNYp9HYqx8nq?=
 =?us-ascii?Q?RzpOYetHuftO8JvKLkNeheqzVG4vhftRFGIEs+fQZQrdKA0u7Jp0wGknRSAI?=
 =?us-ascii?Q?YDUC1rhOdPunvB6qEPbHwuTzCNn4nKPSGzMSk5Rh0TbgMJyLi5MN6B4ydDMn?=
 =?us-ascii?Q?GGLuzv0Z+giBFLEPecxMf51xNYbxyykJS4Sh8aGuZNrV3wDurGdPX1kNh6P4?=
 =?us-ascii?Q?pFKbTNA6VLI4PKVM0wlu6Uv6hfMC+T0/ycA4wyrWwQXiUS9JNC8C9LBUN8Y4?=
 =?us-ascii?Q?NitMs1eDS3f+DnGQos9+VfHlLfpaa696v3LJnTVRC+ewy/3AFUIJUbpWG3NT?=
 =?us-ascii?Q?g5LsF60wQSgspHKfCwNX7Cb6TRdpgn4MKYA15cPBdW/QNmqgzIgXsj4LqvHK?=
 =?us-ascii?Q?QKSDCBhHxvA+BA/0Ry/fFvpYQij16vTDBX+BLYrynoQ6si/fs1Awb4Z7nBWM?=
 =?us-ascii?Q?9HqvXKzQFM2niu74/HOJ+u1yuxguDWivANKcyHt+WjNmZ8Jnx5uHuhsLiKZp?=
 =?us-ascii?Q?drnbpP19G4L4nKRd6RoMoZAAtvvSFTnuSWc8QzCnN5F53Hysj6riEq0Yf70n?=
 =?us-ascii?Q?uTlX9QBuU54WeOp9nINe4K5rErxJuxt7JGboB7xfe0nx8fs76oYpcnfBTaJA?=
 =?us-ascii?Q?doiZuoaofxZjfq58T34YQOYgRa5SCFZiW/L4R0xqTVDmmWe/FswwMMgtVsEO?=
 =?us-ascii?Q?JFsXcFfiOMSME4O8Y2dWxDWflEYbzIEewnewYgArryBa/XQbctbyHwiR6WRv?=
 =?us-ascii?Q?tkPn14rUv7MiWH3y+PNV2liRTEAxMTmQFB64WTHQaFW38+hEo2b3LWNqDXnO?=
 =?us-ascii?Q?259vX1LBmbLAaTK4LiSnyyILJ3z6tCo17lT9DFMbXFeQNg1pvEjBsosOLiPJ?=
 =?us-ascii?Q?nRyzuolHCmekhswiLk80u3r3XkcOGWXXRg5htKlglpRrokb+yKTS6lob+Seo?=
 =?us-ascii?Q?QPijxaWkywpeWjBCHuwpm6fu27EaAa3acX2J7mqKYnMlfk7gvgJbfh+PsY4O?=
 =?us-ascii?Q?A8G5LncrPNHYtaGbzLyYE8E72go+Bnviy7Jlgl/xJKErOMMBKp7gMh9XiWtu?=
 =?us-ascii?Q?YNiFRqIiXfXMGsTrjSwZEY2GLNnb4sEY9sfhBrEn8fRaU5VsAsma6wtIGfUk?=
 =?us-ascii?Q?hrj09icg3A1Lx/oqfHL3P7hJXmF3wW0fhLIPZ6gGd82MzP6bKX+7pgjTmFJx?=
 =?us-ascii?Q?7LME4ZC+pbqrURNGjnQP9gUtglCN+RLLc/GfB7+DPVoU06bprL95AlP2Pj1l?=
 =?us-ascii?Q?p2tCHUE5ayH/KhMrFvDpF/ZIIymhHKPfQjsera1zrwh3ypkWwe9tSpePjuYi?=
 =?us-ascii?Q?ALlwprbAHC1XRG/K+GfV+sUT0qhz635LAtc0vkMzwBOUW9ssQIGlQSHhulU/?=
 =?us-ascii?Q?Mraj4gbIm9o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H+sE9np5eIzWhHK+5U3L11YRcmvd6D2eiY3S/Y4qAq9EAd7WoZsZ43+/E8OA?=
 =?us-ascii?Q?mn3u8pwuHrOPnA6/aOo8S44fuxciySHu67rmco9F8E+RBdI7bw2fUn/O4hkp?=
 =?us-ascii?Q?oStBMcw+idrKlcW0/7ilJAuSQ9ApHDuneYD0Mdp8I+qUTsJvxlXUNztqqULj?=
 =?us-ascii?Q?jY8Nh3fFtJTn89UuvOu3Z279tZv/PBbFiDbMJm6ra5//mTBCKmdFJSpI+FHJ?=
 =?us-ascii?Q?+E8FJSIdNuHiqNxKxPrxZlNTChvuiyGdcpCclplP3Zo15n7eq2iq2kRKOOU/?=
 =?us-ascii?Q?A1qIkDNPDlnWHk+YREXpSc5w0mCr2L+60kVRk9UoPWCf0+hJcehFNXifhjoB?=
 =?us-ascii?Q?hD2S1ti8ylADxD2DI7Ism66qFjgbD6ucGnvdK3OU4CaekRp8i/SeCt36dAXz?=
 =?us-ascii?Q?D5OIP4oy+VC2j83/WTOgMJ9MvxshTMdV3YJQP4SyCxzZDb4jsnRMqot9Lhw9?=
 =?us-ascii?Q?NhtTUvSboMHBU3Cb46wIevro0yArI0E6K2bp3jXUxDgYegRkoAIayyRQX2d0?=
 =?us-ascii?Q?fkdWbJblDpzGorNlRRt1zfE8+wUnZZ45dvYxvybOgLWDSeqWQ6vpVh+3PFes?=
 =?us-ascii?Q?vyKo5tqLIpt94EizUpyYfj5qesfeOsu3rkBfAhEKNGa44ogCR+TKSrDiFW7x?=
 =?us-ascii?Q?gaf9nkd8B86yd3Zrq4C7KCqEp7ZDnc/e5x7W8GqACm5QooWPWVl23ZEsC6BU?=
 =?us-ascii?Q?z6blO/RijbixYC/T/81Mi1cH+EBPm8rG7hIpMzMVEC8hjK507YOxbTiTK/Ly?=
 =?us-ascii?Q?w7QaqSUg2J6XQKTMnXrwXRqQIqqCSwyhdzWC3/nEZkldtytyMp7mNH1QPquJ?=
 =?us-ascii?Q?jsn9mPr69ya+FWUEl7g5MEV5c/uoeRbqYwd55VREZ5whamdfXP3+0aGu58At?=
 =?us-ascii?Q?9gkhVaVgfAMAUE1o/4k9rR3CLoLRi6VqKAESaomrhyC2RjgyLXaQOtvZZ8bp?=
 =?us-ascii?Q?/T05BgRsP/T8V+3vl/uW1uiQ97wwQBMygwxwpHMESMcEQe90JvJ8EAg23nxs?=
 =?us-ascii?Q?MrTqHckZCVxQIeP8f1Lozg9IUDCGQMxxaoAvrJurkZrBOvpCnL0GCRTscLcZ?=
 =?us-ascii?Q?2S2nbMGyKoyGuj3dOLH9LY6VWrfu6F9wXfhg0Ht+68mPYc5rjLN45prXUt66?=
 =?us-ascii?Q?PtlNZ4MeMlON/0R+nCJxCqmhSMUMOEznRCBThRf0koyuNh86ryEswZm9ClnQ?=
 =?us-ascii?Q?+SDotswkQ5RREf9uoDWrjQ/Ut2/4eOAEx767BcicsbBLe3aM2rxnOhmPae89?=
 =?us-ascii?Q?+IPzvYjmlxF6V34oi/1QoLYjEm3RQ3EYzMLWF1s1bKQ4stv6WDVOGLvM9NEE?=
 =?us-ascii?Q?rju+Hocacel7gQ/wCLk7jHmI4TSCIHPu1g2HV8eJZWPxAHMVjOUOEpSAXcGJ?=
 =?us-ascii?Q?70Wk1oPf+pDUmQ8RLZIKL6TmKdELXlWpNGnlOxcijwvILGquKyhfVTWjkR4p?=
 =?us-ascii?Q?6OSwm52SRAi6WPIR+fHCZXXMTeo7x7brhVSREIZ/2VEaf9DWWabWzRmwwDY9?=
 =?us-ascii?Q?LGG4REqJzvbEDRCDyfzX2DRuG3DFnsVx2nzhUmgDiCqQUA5nC+qY+FyvhUL1?=
 =?us-ascii?Q?uDuOVAOwhz0bQ7x+B7JIB0LHmkzw2VvJ24bXJHwr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b59a28-e27b-48e3-752f-08dd865b2c08
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:47:09.8458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c9Ww0U/1773ntQu8JoxRwsZvbCO4ij+gm0fViagbs4OGjEU+0B5j7uoIfslZtA4YvodrJgNH51WvJeDoGPcvgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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

This patchset - resent now separetely from patchset [1], adding the same
patches originally - converts intel_dp.c and intel_hdmi.c to prefer
using an intel_connector vs. drm_connector pointer.

Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20250408214342.1953197-1-imre.deak@intel.com

Imre Deak (2):
  drm/i915/dp: Use an intel_connector pointer everywhere
  drm/i915/hdmi: Use an intel_connector pointer everywhere

 drivers/gpu/drm/i915/display/intel_dp.c   | 105 ++++++------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 189 ++++++++++++----------
 2 files changed, 159 insertions(+), 135 deletions(-)

-- 
2.44.2

