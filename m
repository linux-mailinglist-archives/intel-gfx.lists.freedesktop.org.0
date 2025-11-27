Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A29BC8FCD7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9FB10E8C7;
	Thu, 27 Nov 2025 17:52:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kV1cwBFz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D5210E8A9;
 Thu, 27 Nov 2025 17:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265930; x=1795801930;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=T23s+uPn53p/VoaPBoAMoFbm5WEoKr8/tkpB0U6M5bU=;
 b=kV1cwBFzFD1K4RwOmgJJjNsKRuqUvvSUKA/gFjTAgIzWXXLjR7Oxs6eh
 mX3MN0qPpRbRbjzrhmD+zckUabrI5TBMzySqkj0eTTULOMsI6EftDO+xP
 gdlKctJtXMMAuO7ynjUjZuKbMdfkxnT8Lz/WJ/7cSnfsE6biYx1dRjmMr
 IljC5Dxy97EYdZ9oOVyfpU+QrxKKsSF+TWKhPaBjxvzEUM302oshElL9F
 6rY9iun1W+cguB3MUdB1JQ614fkdv6v0Z1dogF4GiuJ3u5GqZsYsf+YWk
 afy5T4bATjxYD7RSAaYr9bNz8o9JO+UyAshv1GRonv8xQAPYtrFmZzUk0 A==;
X-CSE-ConnectionGUID: CzskZ6VtS2SSEjOdUBiggA==
X-CSE-MsgGUID: tPt9/wxCRrSopMYVHzlNyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174654"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174654"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:04 -0800
X-CSE-ConnectionGUID: lFI69cRFSNW3Ia1LrdEmmA==
X-CSE-MsgGUID: JdaOAdu6TWmKmIgvROrcHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409417"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:05 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:04 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:04 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bnj6uo7lBINpaWaQbwFIwveCqHUt6dax5BCkZm4Pwz0jWpoLFaH0Bq7opk8ZHnfvUb+Rfyu/CCAe/TX4TVxMMk3CHo70bKXUM1bvhkqty5CN7cEdpnNZndM8lXODiy8KcLkdsJ9MAArFc6PrBNjTbEJxTYdLGFyU6q1RqL6uc6kHwaGgxGTdhsIwHUqxV87dxQf5lRG1ZBrSTVUirkU+/l9xVshqfBMsgWwGEEMN9taY+VIvjtkGaSCZ6YKQ9aqcCRgbUu0HBGGno9LUjQe16b8D9h3JvOIiIMns6EK/EsuMaeD+zk4nKGm8fKKnE6CM2VLiYAXI07yYxZG/c+HuAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OEjlPKS622x1N+cSdvCVyw88DafpxCG0M0f1AMAIig0=;
 b=y3tVhi52RIgnbvB2wtJs2+04EahCJ8Vdmjlwc40q8uMxooTP6C5wx7qHkJaSg5+3ZddKpCE8B58Fb39wgnLTUE93sSb37MYAzZKdf9HiWAYJQDWTOqsv7Ns6/upkm7+0GBqs4WwOrE6bGY3FEvU/b3j/6zN4NGdiq6R/UtafdDMoCFEuglW0BGE+1UaD9BiTIKiC6Xo8z5W6nXNmn8gb2BWKOypxoi1JGN2Elqh0pVO8JAm6e4GNDF8vuiBo9hT/kQ+mTShtDz5L2X3XaMyYs41HEZTCujauu+eBzDgvQSHAYODfG04Om5PeDpNR6b7ECO4XOEIlHMCEHeTVl1uDvw==
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
 17:52:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 37/50] drm/i915/dsc: Track the DSC stream count in the DSC
 slice config state
Date: Thu, 27 Nov 2025 19:50:10 +0200
Message-ID: <20251127175023.1522538-38-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 0390e51c-b06a-4fae-6336-08de2ddd9c5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XI73nGUI/d3Ul5P883sWqYDueuCTw0Sp/20s8UmAoXPXIVkPi41HSBTYLyD5?=
 =?us-ascii?Q?/KNTLrRmCvAtRdYCAprY/aPNL2Pam8MTvr8YvMwVcs65y05OiwADNl/BuolY?=
 =?us-ascii?Q?TWx1f0ssUnWbkZnbAwPrJzw6FvDhcWlLhO/CYh01+IJ1883HQKLkJZ4P/GUh?=
 =?us-ascii?Q?aSYNNv5zoz2XQn3UZuRCubqqibgRcBJjaZguB0dh2Ee+SymOHgJdZ+T7RjyT?=
 =?us-ascii?Q?8+vEzvBZ+KzFy7fmEiv1y57C04y3F7qP/uihu86e5VGbOZAMkcDtRoXwZX7L?=
 =?us-ascii?Q?ACq1z2JTTPPUQXvkB4DymH5p/Sir8EdHYUX1GUSUiK7Qwipdo1weNMzE0Toa?=
 =?us-ascii?Q?KwTkzBwCdfVeKcCK7fkpEyfOH4iWlM/bqobGzv3yZ4BLjm7OhC2VkeYDZj9R?=
 =?us-ascii?Q?dfvH2troBAHex9QfQ1f+AUjj6qD2FYCQd59eyQyBmY/NKIX9rVSqrh7+ZdWk?=
 =?us-ascii?Q?D3JnLex3ESQbA3FL3v3O4dFfp1fpsLnEoOx+OQ3Y0nxmK2RB8UfTbNs+NT4D?=
 =?us-ascii?Q?hgJjWjFRKI7HheO3uuIT+1ETh+xgHLvVxZHCcqorhoSG9qHcXZk1XZK3pvVy?=
 =?us-ascii?Q?shlHy3xetr7k0ybo4W98rqZFMGnw9wdx356tpcHeFzoJIzBmGAEU6zLqt0/b?=
 =?us-ascii?Q?hQTX13gvsbLmrbq06OOV1MrXInd9u+FgvG7l+CVPZEDuZZIh81NTifr2hop5?=
 =?us-ascii?Q?U6Gah4TbDQn/9q+GxpWMObKx8vUolKk1GkGwGu5YmmjdiZOHUaaEYJz4V1H7?=
 =?us-ascii?Q?BejS2wt+WVjSM1kr5sdJ3cJCviaDSwUvpudU9Gb1o5O5GP+2Qn9SBvh+xrQm?=
 =?us-ascii?Q?eBsdFtzvJ55M/F9xo40WHEPyq6hazYHbCf0hhpXhPB90nERWgZkxFz0UyFNH?=
 =?us-ascii?Q?0vtb2s/ZcRhwDebPkB3K57GH09F/AHM9glOWdtJXVMmwfFLiYOQC97tGWfKO?=
 =?us-ascii?Q?RUtM6WfDuFF4czs4LkoRUTxWbzgwef6ExOAUKddgfwoN/ieDim+qGW+n3ZZe?=
 =?us-ascii?Q?KOemthmfLVJxTAFrFjAtXPdELahef/XxDvYA6gOL5tTXojuk0bc5pzTRzVr/?=
 =?us-ascii?Q?k/B1lUC7rdBS+vVA+WcoAi0ZfbuKWbAXkwEujRuwy9a/Ut3k/O0psC56XYtE?=
 =?us-ascii?Q?3/cUGmKR8orb3UCty1ciSPkhdtckoYlgLsKGQff1ngosbgM33+enXlMAdXLK?=
 =?us-ascii?Q?dBlWHadzPAS0wxKU1DN7DINC4sUQUXWvWPBaPUFTkLQdst5E4mqCg73apoLa?=
 =?us-ascii?Q?b8PkZFEa67xWkF3jfTdrPw6zhqsNtlv/aVy1c0dmO8PM3e7+NkkWf7wvsCO7?=
 =?us-ascii?Q?zq22mn7SfqDOp0yfhENxx7kB/sks5mhqt+6Gp0e9BGFSh8QXVcaqqIyb56lZ?=
 =?us-ascii?Q?H5F3QL6dIfmdHHYlu1sVOOzWw6RqpB6aCm6YEWDkfvzqoBySOIOijUJwq7Lg?=
 =?us-ascii?Q?TkDFx5xk3rON4vRbuKqpz1fifbrNOpkw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SbxgQdszBTchplg3uX8+THPnIQ3otB/sFR0H4xRf3VAaNYIyckfZg1aeDiAe?=
 =?us-ascii?Q?nvKqw19G2HwRPmUdSqnUs6wPvMM0sfH9SjiOscPGN6WAJd7i9FAs/nueL19v?=
 =?us-ascii?Q?qle6lihqtDNlHcrZTKM73VR2HfHhO9oC69zcv+HD/xjHzkDBAm/vSCxOqp/0?=
 =?us-ascii?Q?pLboc4pMnbD5VsvZWaITGnuBp9sUQLrATgXuyn2Hte1459/YNWi2g9ZM+hun?=
 =?us-ascii?Q?DKbxEKq2bCWJgQMfQs6xjfSMRtCcrUvvlIzSvrnjIefxf215nFxVcdY8d2M7?=
 =?us-ascii?Q?TfBa/QeUaWeAg6nXqvYr60Zn+LxAqDJHhdWEuEDApZUAxd+MGMqdLIguqP6i?=
 =?us-ascii?Q?l/m9AxnQ8XKwQ3dZKj+BrCSvMCEHR4ntQCaXRRSQXvduh5GSd76K7+bcxFk3?=
 =?us-ascii?Q?QJUuMBLIMs6+02JgvpkKwb5CsW0p2UkqSZYJ4zCa6ZIaeSOesBVQxc2FNxM0?=
 =?us-ascii?Q?cPToUF5nlq/V1iI8vNjDN1BQNblhJqMVDPZ41wuj6tZ8cVIGgMzxr8zrV+Mc?=
 =?us-ascii?Q?mWagRPYaq8z3Kf0oJNRU2+xHrnl366Lln9K4GhGSiHFO7Y9Nw1W5/F6DDme2?=
 =?us-ascii?Q?LD9VrlX94EjtN8VcPAXounML0gdzs/fbW19KgH+meufCCOGs3ICFnpnIUkYJ?=
 =?us-ascii?Q?TDWfEJCWsnDvwQ5JBwDjyl5xvGJGTaNlc2LcwQgDZAride/qqDy9hVSZvvJH?=
 =?us-ascii?Q?UuRSoR/H0KOGFq9AENZuJDTB8FDpl0aAoz50wqtwYle5WtWN4VubO85sUi0K?=
 =?us-ascii?Q?7dAxvuQt+TQAGIkZg2tDbkhFXLH9SoHACJr90de06iKUQtB+FXtdxQiYmVME?=
 =?us-ascii?Q?gl1uG/7lzJUUYQ2oXIpJH23RtXCJuaqvrr0Ufj7xOS9MFrabbX4Fi7lbPl/w?=
 =?us-ascii?Q?3mNaBAXGQ6ub1JTBkwQl7tP8cS7Eg7pCmfrFgYivZToTKsMh1g7Ru11dmiN/?=
 =?us-ascii?Q?sp5MboKtoGgydVj0CozydzlBq/juMO6+TvnLbHopf2DeJKvqB12WMnBDjY4O?=
 =?us-ascii?Q?JJDJ3UgmOlZiCTynRrZolenw+naMbG1UEbR9XrEhLQd32wIGnyfR7S1Xt/+2?=
 =?us-ascii?Q?PrCgKY/SOhgQazEzqhBvQJI35KHODVRxzUmKnbDeCupDEoB7LIfpQaCwHsni?=
 =?us-ascii?Q?8Yge7Dj08GCwck2LQKWIkFDa6XvkPX+OiWNGaE016LeP0GlYaeWc0hWYIatg?=
 =?us-ascii?Q?kdEcQ/Vm/8cjuCdmFmyrvbtRQtmIspqC+6+8jMLVObqmgQBREv25ctKUvf38?=
 =?us-ascii?Q?kGM/3Gy5lSTobzBivjehs+6y3MXLKQkWFyDoie5okLPupHMtksiluBlT+SmN?=
 =?us-ascii?Q?1sA0WTF2nwIdQc1Ro2AaJJWHnyQHpJ+uZ5853QE6A+qXNRkYv9NZgxExtJjl?=
 =?us-ascii?Q?VvF077BVTmuzeXGHM1TutYNKE5qrMFDNtbiYzy0lQRPwF4gV9H8ql+IiN86i?=
 =?us-ascii?Q?aUjCI8KpnYXS3qe7nhudeG8R+jbqrdAapxmXJB6tSZQ/6Ns02B1OfMaDp63j?=
 =?us-ascii?Q?uTfmC8FkjfHCQU9+mF5i9rodWalPnK45i6xcpJrxdPt+0pulN4qWZnh6NN1C?=
 =?us-ascii?Q?shF7xtFibslcZKg5UQBSet3OgUE0LwITu5jkSAhVnou+wlW7nv2F5aV/kbmJ?=
 =?us-ascii?Q?EhViM716W0XcvqD0R6ZE1alsejHm7hw0tJJ+CwZuWC7r?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0390e51c-b06a-4fae-6336-08de2ddd9c5a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:36.9751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Aea+UxXjBl0OavRb2+uYmejeZOkVsvfT9U3ik/+JO9VPLevQin1tsL+mkCh3AtErf+oBJg/ByWIAi3Rn/Mt+Eg==
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

Move the tracking for the DSC stream count from
intel_crtc_state::dsc.num_streams to
intel_crtc_state::dsc.slice_config.streams_per_pipe.

While at it add a TODO comment to read out the full DSC configuration
from HW including the pipes-per-line and slices-per-stream values.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c             |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c            |  6 +++---
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 11 ++++++-----
 5 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 9230792960f29..90076839e7152 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1626,9 +1626,9 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
 
 	/* FIXME: split only when necessary */
 	if (crtc_state->dsc.slice_count > 1)
-		crtc_state->dsc.num_streams = 2;
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 	else
-		crtc_state->dsc.num_streams = 1;
+		crtc_state->dsc.slice_config.streams_per_pipe = 1;
 
 	/* FIXME: initialize from VBT */
 	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 04f5c488f3998..aef6cfa7bde8e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5450,7 +5450,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
 
 	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
-	PIPE_CONF_CHECK_I(dsc.num_streams);
+	PIPE_CONF_CHECK_I(dsc.slice_config.streams_per_pipe);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a3de93cdcbde0..574fc7ff33c97 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1305,7 +1305,6 @@ struct intel_crtc_state {
 		/* Only used for state computation, not read out from the HW. */
 		bool compression_enabled_on_link;
 		bool compression_enable;
-		int num_streams;
 		struct intel_dsc_slice_config {
 			int pipes_per_line;
 			int streams_per_pipe;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index de59b93388f41..03266511841e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2417,11 +2417,11 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 */
 	if (pipe_config->joiner_pipes && num_joined_pipes == 4 &&
 	    pipe_config->dsc.slice_count == 12)
-		pipe_config->dsc.num_streams = 3;
+		pipe_config->dsc.slice_config.streams_per_pipe = 3;
 	else if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
-		pipe_config->dsc.num_streams = 2;
+		pipe_config->dsc.slice_config.streams_per_pipe = 2;
 	else
-		pipe_config->dsc.num_streams = 1;
+		pipe_config->dsc.slice_config.streams_per_pipe = 1;
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8aa480e3d1c9d..2b27671f97b32 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -421,7 +421,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 
 static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->dsc.num_streams;
+	return crtc_state->dsc.slice_config.streams_per_pipe;
 }
 
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
@@ -1023,12 +1023,13 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
+	/* TODO: Read out slice_config.pipes_per_line/slices_per_stream as well */
 	if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
-		crtc_state->dsc.num_streams = 3;
+		crtc_state->dsc.slice_config.streams_per_pipe = 3;
 	else if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & VDSC1_ENABLE)
-		crtc_state->dsc.num_streams = 2;
+		crtc_state->dsc.slice_config.streams_per_pipe = 2;
 	else
-		crtc_state->dsc.num_streams = 1;
+		crtc_state->dsc.slice_config.streams_per_pipe = 1;
 
 	intel_dsc_get_pps_config(crtc_state);
 out:
@@ -1042,7 +1043,7 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
 			  crtc_state->dsc.slice_count,
-			  crtc_state->dsc.num_streams);
+			  crtc_state->dsc.slice_config.streams_per_pipe);
 }
 
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
-- 
2.49.1

