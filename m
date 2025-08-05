Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75236B1B127
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:34:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1027C10E633;
	Tue,  5 Aug 2025 09:34:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y2lFE6Mb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E887B10E623;
 Tue,  5 Aug 2025 09:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754386478; x=1785922478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5uV9bD5wgU9PDW1K1tinBxtmGhZcXhwFzLb7R/Vqt7U=;
 b=Y2lFE6MbOwlOLzKztjdi423IV2/7Of4G1sPtaquQ1nmLlGAAB+96CEF7
 8zi5QK2Aezt8pJQ3KCRzV+etcf1DmjnrfCf721w8vsxV09fNVyl9jZm3A
 NfgQNNdiIXuc17B0M3UuNnC4HiPG9IAQWeVdRNDM3xzQwg5j/k1e2uHLu
 Dr/odW7PUhGUraRQzWdX5U7vUO/Zoq/oHwJxIkcibT7L5dafNmdJ7QzuZ
 TJmbDqdFBtkaAvXPK92imEYAzy3h9NbIRTSmC5ALZ3Y6G6IT3UK5QSB8q
 NkR3Lxdz23cucFrYnWqqaXJecwCCMNQ30tNXRbil/X+DPwShlp/zh0lKj A==;
X-CSE-ConnectionGUID: l02z7vzHR+qBx4/Q4wqF6Q==
X-CSE-MsgGUID: ceycTLyYRmClmqIrCNlpEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67252394"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67252394"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:34:37 -0700
X-CSE-ConnectionGUID: MZE9cnp3QfCVWcOuGRt5sw==
X-CSE-MsgGUID: QsFoSJ52T8WwDtJQYF5tpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163964400"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:34:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 02:34:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 02:34:36 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.78) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 02:34:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ysKCsPpb9YLOg84Aqsb1ORwjI6lX+hrz5NXx/LlfGFGGexVFJzvLmBdXasrQZWU1IDceLK8lfxFSpwY/TQf6k0XjctrWWFcAWheiKdMQ7FkSv++m8TV59Q8Zzq5qDjo29ODQOK/C8W5MLCbquia1HpZNMkirL79/ieHqn1YQvm4N9GAyGtj5GNMUt6D0TYtmBnfNuSHxtyOz7cBeIJIkluYMmbhRhZSUmuQTx6ODoDztSboHBhcEnAAH0ZfHgLBWaRDBuCRlph800QjrtbaYRX1ugPW/ZgUBtsrakjFYSof7rc+9w6rQcyeYhGU8Ob2KvKQbmn4PFJ+Cen++LJv3Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q47XQX11YUdwrC10F+qMk4mlwcVxxuZe2YaU4pyTiLQ=;
 b=A+DtjvWKKeD1DEEwECm2aM2y5AphcDPergmc1j4t2Gk0krw7fb/kngriqx0vPcKaKUPs/W63hFwx0HTmHRTPT/wVdTvBlFiT3Hmtq+ZEHVzsj1tFvSA5Otwhzc6qGt15VTAbr46di90pNNPcLnW1J4YojgwzykU2DngTa60AQSleUIRQlV230ogIHkiCK8SZVWHMid9siFBe5AciKW+xvY5JhgVmsbRPiED+gNKCvsQ6rSSDEASPUdToOaAoaN+NjWm0DJntfYml99HEVmPsIr+knAlYW75anwQ/hEuJN9VmNwRKxWvaHz7qRi35xd9c1nYuwcovOcqV3uSvTa3+aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6257.namprd11.prod.outlook.com (2603:10b6:930:26::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Tue, 5 Aug
 2025 09:33:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 09:33:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: [PATCH v2 03/19] drm/i915/lnl+/tc: Fix max lane count HW readout
Date: Tue, 5 Aug 2025 12:33:49 +0300
Message-ID: <20250805093349.679158-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-4-imre.deak@intel.com>
References: <20250805073700.642107-4-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO3P265CA0025.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:387::6) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6257:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cdc952b-0ede-4c43-10d0-08ddd40333d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0pW182vkbxk3wDfVP00Kx0maYmpmOyYreBs/yZOlbscNodixA1bvnkFOx2vv?=
 =?us-ascii?Q?RX8rcPKc1tN7WZeCaDoYkqmGguUSsf0Kdi58DdVOKaHDs/+v60MhdpNF7Fo6?=
 =?us-ascii?Q?tVrlulvL0fSLnFIllj1popEPOLlubg9tSE6yYBBRugjJbAG2TUYocozObddM?=
 =?us-ascii?Q?8jaGLifBxvgcRqgFhv72vHVnV7p9KcNqARd5eBvv4cFc2XN+OYV3ZevjviVY?=
 =?us-ascii?Q?fMM/Qi4EcaNIFH6hi/juoEYUMMUzPybxNqzXlDsYfPN+KeQyLbfes1aAtdEx?=
 =?us-ascii?Q?7NrPoqrz7w/vBXjx312Dv1iECFNIrpXmX02x+4bOoH5fRSBMv9gtFTmMF0lo?=
 =?us-ascii?Q?M2BRysxml+IO+3FRpWQkrEtSBhFD512MIiqOLf00NyDO+dC29QOFtIa4woqI?=
 =?us-ascii?Q?KSsRcf1R+pu8z+gb1R9+q6crLJmmtqONDPrUHDciu1vnYB9vbMo/Igxoz87f?=
 =?us-ascii?Q?XTSuw5jPxBFd43e0hQNkWrG0CUF2bAJtWQWufi7KiNUD7/5HEqyyp/FHbmSb?=
 =?us-ascii?Q?8QENr9pB91tGU8hycjfwW6sRpe/zkRhtL8PqZBTjqVvcaGRHQRw1uzJDb2am?=
 =?us-ascii?Q?GSsrHe6ZPvhvHzw28zB0grwzzehzt/DvUZpIVlqL9uCosmno+9XggpKu6+vT?=
 =?us-ascii?Q?8ipfHSZo3gxslHKUvIo+urxymbfKFNWPJwRasfHO46P1i5NtYnsYZD+v8hO4?=
 =?us-ascii?Q?Ceajf7hstA+43qyRV6mFHq7nRHKKzf41BKy3GMbOrXynu7ttTnTQDUpojcw8?=
 =?us-ascii?Q?GELNMzIzZwFQglG1TjOu40qBVPwoQoUQDf/NRJHNDKAFhM6zCfAyJvmsxqaI?=
 =?us-ascii?Q?jyT1AABR3hfCYK7ggKtOObcH9Lfw1OF9QbaByR7S6KgyikHjFb4QXm9u5bjw?=
 =?us-ascii?Q?ILcnvvnz42qT7o33vMwM+f/bu7GN2hBpTj0Z9CfxXzJyF4E6aDzoE26/m45L?=
 =?us-ascii?Q?1obDnAr+0C1pNfdxwU7bJ64YeGXVw4ignoaqGor+bUTDlxb1pI0Gm/TizCd8?=
 =?us-ascii?Q?86XxkpukUUwvpQ6rcJol5WiE/vvia87muW4+UhtnNUukVleeYi9DH7T1kGLo?=
 =?us-ascii?Q?evoZ46MAlPrcef9VDhT5FPOMAVCmTgCzc3o6rm4eSd3f6nJEEcvkQl5dvFki?=
 =?us-ascii?Q?NNTLGcCnaGEufW9JMKtP/mVhsHiQqqxkYYRU+PuJqbgwnhFSmp6QRrbduW3r?=
 =?us-ascii?Q?w9vB+7ARnZyLyqEPc4Ad/XitxOiHtpGMCRoaolZeFGUDa3CUbNiOq/VHwpF8?=
 =?us-ascii?Q?6NRxhgyq1fJeUOzSSTjsbJv5/mgbjuZRwLBlXx1XDMrIqjy1laVjg0wTjVvI?=
 =?us-ascii?Q?tqHsd1L8I4S6qbQnGpGTc9Ajh2c0abs6h2/j7n+GahNyhPTaBlg5TYaYqNpI?=
 =?us-ascii?Q?Pnul4UyHABCuSbbK1n8qbpsBWab0ZIWGTHU5b5IQZuCn3mN0+Fc4EPcgp1e7?=
 =?us-ascii?Q?bpj5NnudtWo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sDHphu0aPtZ5RcgMxsqBe13xwmt+vLE7tIF5hbAsFNDN2GAEglQkMdRmDiff?=
 =?us-ascii?Q?7B4QKUTDxcMowap6omjjrC1qF7T0fIBqXDI506DuuIo9fZYCDyaNN7R8kl6U?=
 =?us-ascii?Q?Cc6uT1CQwpQDbwYLthbI6iq13lrqckbuOkegdN+JxX6yRuuDQeywXyc9uDZd?=
 =?us-ascii?Q?jerOc/bBi3EfDE0u/FMTH//RgMeeVZW8Tq+GfFvr1y8yV4gWNxa53/SpaKO7?=
 =?us-ascii?Q?D+ZCmMa359CgxoXGEROpXtzmGqb2HFRJmJ3JkEPksfWsqXLKX7IK6C89FzFE?=
 =?us-ascii?Q?JNtjNRE09xRk9P8ChAXgYrVnZZsn9NrUZRDiqOkVTbW4VThDeVHEnzcmsSNZ?=
 =?us-ascii?Q?V3gsQ09784h7q5RLNRKEoRaryjPla//IsQOG3+ubYNiiy3GupnTP2xaIwz4V?=
 =?us-ascii?Q?MWmFVye9M7wmLs9VX+caEk6pPQnc0E3221D/XmlV7XLhXLtgDWVrOpJN1ZF1?=
 =?us-ascii?Q?Vs7Zdshy6yPY415eRfwWy1sgPs9qhGzzOC9vd/v21ueHUWtALcGWnstJ4j9z?=
 =?us-ascii?Q?RaZg41Xup+5ophPpHvmZYtaJi3pb8gTj3VOZ74sGzXzDKqcpvqmAr2pSycOf?=
 =?us-ascii?Q?aXHTHmi2ta0jiYaPSyq0BeSw3MrYZcewJ3CLad3Fg0FMTwcVRuh4dxCT7J/r?=
 =?us-ascii?Q?foPfc8EJoi6J69ZFHx7n6002JRN6/wzsP8bp0cMtcGOjOgwCX+pJPwDHjT1f?=
 =?us-ascii?Q?erJ0cly+dWbZjFwaEolFIysC/5jliPcgPOgpZPVP4t0AVllOh2ri+7jftyFz?=
 =?us-ascii?Q?yFB7p74XNiKLqQ5ZDMDtTbiVyR7SJWtf4m7rsTdJwX/6TtoYqvqIsDaDAbyk?=
 =?us-ascii?Q?wrIAbxkGMHgmRA7C6CE02pJ5EIez2a1iHWCxNBpAbtmsDGp4yOqH8QPvKdu+?=
 =?us-ascii?Q?ae4hQC28aPCpu8qziWDhljGTF6Uh1QlG+sYkwK2KFTPY+DmCwVSqmZlSKEkk?=
 =?us-ascii?Q?4xrITApODcd2WpgHWj0MGpDs9wK4k32JQ/cyvqhofyFXkvIN2qSmODf4LeSA?=
 =?us-ascii?Q?eH5Lw925hSpGB6N1m2n+GLJu5ePJYQ1Dl0OP/v+8jlkYIJw3cZEjK5tRdXHM?=
 =?us-ascii?Q?JTXzZsLaBAg+KFC8g0LNbfw3jEruQT1KDPNdhdrw27jJI0bqqQ0GrpJjzCxC?=
 =?us-ascii?Q?M442WZzDk0NWN+9aAgCYQ2L2Xy1WzamBGZcEoTrq8HgbUAkPIQ1pmoFwI/1I?=
 =?us-ascii?Q?nF396nuCVl9Mj+ZSX5ZvISTCeXqbZtU+2V8OoNo4EnQ9h8ybQM8HJuk0Z/rs?=
 =?us-ascii?Q?upCWq76RxTa45pG04+QH9NtJS2XFSvrS2QFvF6DXgJHwp15K7WLJor3mT6K8?=
 =?us-ascii?Q?D+0Mhi0oFxGIPOGcDKkdgb+F3Jhw/wgGHk0v8GebKkLB1m3J08nSInmNtMpx?=
 =?us-ascii?Q?PSEGVw4Lftn1+9GKd5usCt9stQr6L5CMzCZS2uXsPp5t4XtSRaCSGos8hGrB?=
 =?us-ascii?Q?0BUSFU+wkiwTp+ID7D1m26/L9YIJF2iTZVw/DxpwaidHqZFRSsdwHQF2pPrg?=
 =?us-ascii?Q?30hRqmGhW81l2+dI6oZYDS0h+3E8AObzYF566mh5AUVrk6oLSPNRnA7W9Y2j?=
 =?us-ascii?Q?TBi8JDDs8dsWA9V5Y+q6nH3nMMdgzlXJfMMkMozQQAzNx7vb4CVo7igniTv4?=
 =?us-ascii?Q?ZWUE9Z688Cp3ifCj6kO0TUHyVXNmxWDK97V4I7VrY0YS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cdc952b-0ede-4c43-10d0-08ddd40333d4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 09:33:57.8181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m/dKxZUka7RckDgBS8imtpP00n2Rea2IWZFnfA8qzC0coVF7oSm+Wq3zsMC17ZWYDRksgXYeRv04VjJnS8HBhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6257
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

On LNL+ for a disconnected sink the pin assignment value gets cleared by
the HW/FW as soon as the sink gets disconnected, even if the PHY
ownership got acquired already by the BIOS/driver (and hence the PHY
itself is still connected and used by the display). During HW readout
this can result in detecting the PHY's max lane count as 0 - matching
the above cleared aka NONE pin assignment HW state. For a connected PHY
the driver in general (outside of intel_tc.c) expects the max lane count
value to be valid for the video mode enabled on the corresponding output
(1, 2 or 4). Ensure this by setting the max lane count to 4 in this
case. Note, that it doesn't matter if this lane count happened to be
more than the max lane count with which the PHY got connected and
enabled, since the only thing the driver can do with such an output -
where the DP-alt sink is disconnected - is to disable the output.

v2: Rebased on change reading out the pin configuration only if the PHY
    is connected.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index b8453fc3ab688..a89fbbf848d7d 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -23,6 +23,7 @@
 #include "intel_modeset_lock.h"
 #include "intel_tc.h"
 
+#define DP_PIN_ASSIGNMENT_NONE	0x0
 #define DP_PIN_ASSIGNMENT_C	0x3
 #define DP_PIN_ASSIGNMENT_D	0x4
 #define DP_PIN_ASSIGNMENT_E	0x5
@@ -308,6 +309,8 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
 
 	switch (pin_assignment) {
+	case DP_PIN_ASSIGNMENT_NONE:
+		return 0;
 	default:
 		MISSING_CASE(pin_assignment);
 		fallthrough;
@@ -1159,6 +1162,12 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 		tc->lock_wakeref = tc_cold_block(tc);
 
 		read_pin_configuration(tc);
+		/*
+		 * Set a valid lane count value for a DP-alt sink which got
+		 * disconnected. The driver can only disable the output on this PHY.
+		 */
+		if (tc->max_lane_count == 0)
+			tc->max_lane_count = 4;
 	}
 
 	drm_WARN_ON(display->drm,
-- 
2.49.1

