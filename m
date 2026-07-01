Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id t33PH+c5RWqH8woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:01:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F836EF741
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 18:01:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IBGEtOTP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0404310F012;
	Wed,  1 Jul 2026 16:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F2F10F012;
 Wed,  1 Jul 2026 16:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782921700; x=1814457700;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=dgQl+Iwr7/JKW1IyBXHPvTbJHnbdZhf8XvdFSTEcV9U=;
 b=IBGEtOTPZPyaAp/b/TonVTigyMGkc7kVhMBXx8GpVOZ8SwdDYSdxUaeV
 QvV+/M5zbmjVQ+87N4F/y43fhw7xUQLXelTxnJp4yhBMa8PvgyKiDuNGn
 v+S0OXdJGPH8S067vfM+o80JjuR4z4ZTaDbKdtSPQyiO1/2WRWYdfEcYz
 wlzw940Vj6BH3Nbt0jRtO8EaFFrnK5KOLi8Bkmt7Bc8AzNL6epscRCn0N
 900TNUiIYc47DFeMq0mqkWFWFn+G8C+OcXxD9bU1pA3+78e7YnOSv1uOb
 Okz2mnuF+JQVrPIkkq2Kq8jcVdloI6JuLZpsuM6vP23dz9pd8Zq5sv9+5 g==;
X-CSE-ConnectionGUID: Mal/eSn7RIKS4r6tBLR9KQ==
X-CSE-MsgGUID: wk32al5lS9mqelhcGce0vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="71184573"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="71184573"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:01:23 -0700
X-CSE-ConnectionGUID: BYxW5GSHRDWYCe6DkFNJqQ==
X-CSE-MsgGUID: T/DGV3+BT3OHLtpN9GuKOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256188968"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 09:01:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:00 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:34:00 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YwofhbABdzzOsQXmULH53dPO6ndjbWBzf/Ktn3WwGOBwkYJnIDycACGWiXoCtxu9odZNjmibvcM6wcncQTK2tffdvt0pVPB51lp16mFatluw6VhawyyMhEuixXfFxORzCEFbxMrxptKXpgrP5/OVMsi3YzHc+wteU5L7uPLwmOuWMNiGFoAhE3/kQvNs4Atbe3JMPRw6+gaJx9Li13REN8isoWuVqIB1vNUblGOLs1D/0x1a8JIleqD02DMC1pGRG5bLCwRXUxbmsQVCIL5J6Ei444NbE3+157WGrQBOWs9mr8Y0HYmidLuHP6kNa3G2o46mihxdALa3OmjcQw9JOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SpF6+AKnISW9X8fPoEkgCe+wbGRnKw5mf2/RZj90PTE=;
 b=HfMPmk3RR9SENEDwcbHqmytG+8fI+xYUAZxTX3lol7TqVBzO8QLJiMr1DHh6OyLCp21xSvLSM4SyipxiZRbesfT25Eu76OnV1ZzYCoILAm69cMZHLfNgK1alhkd9EpKIqMlTwKhvoys0ettCNk/lDj4e/yQ6XWxgFz5fMBobK2InlFpTP2IhcSZpspa3aWoHQpXFTvOptzzTL68QSY/ITnEP7Dr6GYSuV0e2t6Fmjf492sRyVIH20d27YciOJ9ls9esJPbr1SFn+WLuC+Qjl0k7F9dLnmx6vLueWtJJAaAahrSAXG0L2RFP9svRhm9twm0t7IYuu57/UJMF/U5La4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DM4PR11MB6408.namprd11.prod.outlook.com (2603:10b6:8:b7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:52 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:51 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 32/34] drm/i915/kunit: DP link: add baseline fixed table
 reference test
Date: Wed, 1 Jul 2026 18:32:01 +0300
Message-ID: <20260701153204.4124150-33-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DM4PR11MB6408:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f5cc0da-0539-4958-3db1-08ded78612ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|18002099003|56012099006|11063799006|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: EkVRpev3tmeyz9J30hzlwaO8rB4LtSVXmRFtOdpHHNixJ7GOzhognEBxNJseAbeV0g1jj8Gk7VgUDzuwxG1tazyBUZu7kHS8zwuozs74/sYjNdM7QAkHv7hJnsHSyUO2L8jIKUH0n87IH4cQqInj4YkyL37VR1wPSco2IL055oyDkdynpwNBRA28Cn0EG7YNoob8ADHdNs/FygL8ZRlnMbiy8ddbM9YOWvFVdA4+T4Y/gm+9Mt/FtFlqCHf1xpwpNLrevLWfyoJvQntmGjSLIdGEhl5BAFl6bl2DwVGnXwzNmtrrl59xe1W84cJkuEg0Cg6IkOnQjq/o3Kkp/4yVFZNnbpmDDVY9lzu0lDjiNYcXDgzrF2SsWDzrwrzCygT739W1VZZuln93vKSCboAJmsSg19eYEiOxMvryKFOYdiZf3sEwRpuLDRn7eXmDAhwxzI3Jlwu+EI+VGDQLPxK6klHNQ/Fwe/QoSW/Glo++QDuP2rA3SqZALceJQyw6vesSEwFG05G2Q1WuuwMwzi1/aJ9u3gLSpQZQmNLRg3r9zV2pH9gwJ8+IbaefyQ7jOGT9JMcOx91f3Bh3dfrXVqY78Aadxsn8Ep6or4RpryQi4bbFggu8crCzvlXecga3Yd7F2eZCbDNZ/kQICiG/dr4Ac/mPM1imoajt8BISI6voopg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(18002099003)(56012099006)(11063799006)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8VACaF/LyQMe2j7vZ/vyaADAXt/7IZH23jsYvQXjiOijLgCFQF0Zc/iL4GGn?=
 =?us-ascii?Q?quWg8qaBlJ1N9x5+UJ8z1rrqInj6FAdy3khfPOnnnZJ+6WcNPW7TdnKwvl2P?=
 =?us-ascii?Q?QVl01dIcPNsi0hn8UTw5elxlq+IPiPesp4en1gNueBT35+wmKamrb2GPeLtO?=
 =?us-ascii?Q?MxLCcMi7Zpx7MnIzCo8TC0zQlkd2UiLCDEZfL/LoQdZNsHvI3yCnzIYlEaaL?=
 =?us-ascii?Q?8ySHfU9/VcgHEHdguHn3AtPlz6c82xsc+Abwbz/OPfgyTFfdinQei/LonZyL?=
 =?us-ascii?Q?lJ75hAWZeLEsqnB4xYL80KfBo/TssnYLVFecn06jXqEOWlY57f8QB8cbMkbj?=
 =?us-ascii?Q?TmvHnpUNeyPmPOMQFLIp4AZxffEUnIBcLG45YNhSEJskzltm1CMfJLtvBgXj?=
 =?us-ascii?Q?eamNUoQRFsNdSabDoAjGdPEFAHPRrviPNW7HMCnEt1w8b6IU+bjhymjOlRjD?=
 =?us-ascii?Q?isPb8r4psOdtEDW2wy+bPWuuFWxYWC15i86tTfHJNst1e4lj6fhpTUpwma3/?=
 =?us-ascii?Q?HlonfWJBUJr7j4hYaUHnWa04nzCjyZe0LyOn9MEgqpbTovqUm//QbDKE2+fL?=
 =?us-ascii?Q?EEIQlpzr9iqoYpkT0xLQTDbdwSjF00GVjLpekpSF2MuxO1iTOQ/a3REUjCKM?=
 =?us-ascii?Q?R8AfOCErpoSIdh7iIFh5u28C9D57KNff514gFzO5vaJVwbPMxp1WQaK7HYLV?=
 =?us-ascii?Q?4rnQ1cFg9nYijnQw7mIKMi7Pm4bkyZO3nG5HXbt15qVPbbEGjQ8F4/9IvVVd?=
 =?us-ascii?Q?IQzZpadZWFLlroBf+JOw+nktJVAi+rD23Q2+YP1A0yReQmCLZpw9UM1y6+Rq?=
 =?us-ascii?Q?VTdSzRoGaAtEMyTIDQyxtc0a7GNThXCXrpL54EjjZfQQgWcDARdcpaHAC11V?=
 =?us-ascii?Q?wYdeoAkB/q30bXhpP4/R2vdoxvei08721HCH32JeHsvIctoehU5+gtA0gKOg?=
 =?us-ascii?Q?XsPW0TTh5f4z+OPITRMgrHZm17/plm0ztRohgsGrz1qEcFJWF6NUwhmkV3E3?=
 =?us-ascii?Q?Y/A3nx8zRRBJ1Jap40sziOtJCaaaV1zvWQFyBsHMND2iEolCJicYscL/O7QB?=
 =?us-ascii?Q?SzLBOtgp1sRunSldhqRTlponHiIiwOBa30FhfTspY1GQcw0ul+UxY38brZdZ?=
 =?us-ascii?Q?j5lUZCBX1rcKqyN7Ql263qbXb4jTzMmz/3kxgFvPjMU6hCIY7L+2TNf3Nr1A?=
 =?us-ascii?Q?ZNf8Nnqcm7jLOe8Ffhve5Yhe4vUZKwWTGtA2YcrJ1FUe+V+Hxkn0VPctYXQF?=
 =?us-ascii?Q?JDT4WdrUGkD0xrt+o6nliLqXZgV8KDi1HS9ttuhEBJA57O6Mt8pIRm7sPKUg?=
 =?us-ascii?Q?rPwJLgt8xacCXWlTB4ElE8gYmi0vkSOuIc7rrrg2aVgzhkY/FUCpnyvbCHb3?=
 =?us-ascii?Q?CWPlaNiz3ZTbgCwmcdnKE+23gSnsosZFz23B6wIg2vhJxlATp0b5e/bQhVL4?=
 =?us-ascii?Q?50fu/uxshaQfj1gexrQkkX+pOTQVyGbDIfotQP8kZq4cvVu2uFPsAlUTm8bY?=
 =?us-ascii?Q?1BRefJfV6YFGkteGFL6TGS/Gq4VFnDGRLMkux3/7v57qjW9G1A8tpKktra6E?=
 =?us-ascii?Q?0KGly4ZXxeFphTErGoV6aL7xH0zmn0F5X/1zCzN1N79Y0hmXZB0b72QtkP71?=
 =?us-ascii?Q?6QmrDt1JgUDqY/KEz5pOn2vYtTYt1nZLw0bgWoOwFsImL7KrU+JeYDLztTRr?=
 =?us-ascii?Q?zpOf9KPyCft57Ba6XyQVMyA8D953XzxgtKeLBF3TejLLjzQvHcwTUFYnd1Ky?=
 =?us-ascii?Q?jnyEK3Dksw=3D=3D?=
X-Exchange-RoutingPolicyChecked: lWbJhyENE3GR5x+iSCfnZRCo2hf5bIN9KcNY9shNyGcQSu3mDSqbelvLF/zeeyIyt5kfK7PzPXgUfl58Rzad4mA+q3pcNf2fxVhyqxdSItYAZJ+VWekm2/qdH1zRWPBF7AYoyz6ub4hr4onzeQC0Rvjl6QmLJLLR4QJSww4Rxs4ZqsBVu6ALihosJQ5EGV0xJpbfAdKIChtBH4nay9SzwZq05rniTX11RN8OPaQNV5j99ukfXJbu6qFuU46fSZWW/xtWIZzPRPg544S5cRBIGxyrvrLMyxWOeD3+Q/yRqSIFpGO6NvR9Wmk4cBqzV2EBpG2FKepuIlDhtHbKwt8S/w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f5cc0da-0539-4958-3db1-08ded78612ff
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:17.9157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DZ9+HZpTOGeB01CVOk/Cp6QfngiVLPXPqNmblUa3ypV7dOU+fA36FBQyaKfgiGmJZIuoYcS/ofex6Cq7Fim8Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6408
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89F836EF741

Add a simple baseline test for DP link caps iteration using a fixed
standard DP configuration table. This provides a minimal validity check,
independent of more complex test setups, verifying the iterator returns
expected configurations in ascending and descending order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 200 ++++++++++++++++++
 1 file changed, 200 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index b77472e9bbe12..1dc5bf6888990 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -7,6 +7,7 @@
 
 #include <linux/compiler.h>
 #include <linux/device.h>
+#include <linux/log2.h>
 #include <linux/prandom.h>
 #include <linux/random.h>
 
@@ -20,6 +21,18 @@
 #include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 
+#define LINK_TEST_NUM_LANE_CONFIGS(__max_lane_count) \
+	(ilog2(__max_lane_count) + 1)
+
+#define LINK_TEST_NUM_CONFIGS(__num_rates, __max_lane_count) \
+	((__num_rates) * LINK_TEST_NUM_LANE_CONFIGS(__max_lane_count))
+
+#define LINK_TEST_MAX_LANE_COUNT		((u32)4)
+#define LINK_TEST_MAX_CONFIGS			LINK_TEST_NUM_CONFIGS(DP_MAX_SUPPORTED_RATES, \
+								      LINK_TEST_MAX_LANE_COUNT)
+
+#define LINK_TEST_NUM_RANDOM_ITERATIONS		50
+
 struct test_ctx {
 	struct {
 		struct intel_display display;
@@ -38,7 +51,194 @@ struct test_ctx {
 	struct rnd_state rnd;
 };
 
+struct link_rate_set {
+	const int *entries;
+	int size;
+};
+
+struct link_config_set {
+	struct intel_dp_link_config entries[LINK_TEST_MAX_CONFIGS];
+	int size;
+};
+
+static const int standard_dp_link_rates[] = {
+	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
+};
+
+#define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
+
+static const struct link_config_set standard_dp_link_configs[] = {
+	[INTEL_DP_LINK_CAPS_ORDER_KEY_BW] = {                        /* MBps    PBN    */
+		.entries = {
+			{ .rate =  162000, .lane_count = 1 }, /*  162.0    3.00 */
+			{ .rate =  270000, .lane_count = 1 }, /*  270.0    5.00 */
+			{ .rate =  162000, .lane_count = 2 }, /*  324.0    6.00 */
+			{ .rate =  270000, .lane_count = 2 }, /*  540.0   10.00 */
+			{ .rate =  540000, .lane_count = 1 }, /*  540.0   10.00 */
+			{ .rate =  162000, .lane_count = 4 }, /*  648.0   12.00 */
+			{ .rate =  810000, .lane_count = 1 }, /*  810.0   15.00 */
+			{ .rate =  270000, .lane_count = 4 }, /* 1080.0   20.00 */
+			{ .rate =  540000, .lane_count = 2 }, /* 1080.0   20.00 */
+			{ .rate = 1000000, .lane_count = 1 }, /* 1208.9   22.39 */
+			{ .rate =  810000, .lane_count = 2 }, /* 1620.0   30.00 */
+			{ .rate = 1350000, .lane_count = 1 }, /* 1632.0   30.22 */
+			{ .rate =  540000, .lane_count = 4 }, /* 2160.0   40.00 */
+			{ .rate = 1000000, .lane_count = 2 }, /* 2417.8   44.77 */
+			{ .rate = 2000000, .lane_count = 1 }, /* 2417.8   44.77 */
+			{ .rate =  810000, .lane_count = 4 }, /* 3240.0   60.00 */
+			{ .rate = 1350000, .lane_count = 2 }, /* 3264.0   60.44 */
+			{ .rate = 1000000, .lane_count = 4 }, /* 4835.6   89.55 */
+			{ .rate = 2000000, .lane_count = 2 }, /* 4835.6   89.55 */
+			{ .rate = 1350000, .lane_count = 4 }, /* 6527.9  120.89 */
+			{ .rate = 2000000, .lane_count = 4 }, /* 9671.1  179.09 */
+		},
+		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
+					      LINK_TEST_MAX_LANE_COUNT),
+	},
+	[INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE] = {
+		.entries = {
+			{ .rate = 162000,  .lane_count = 1 },
+			{ .rate = 162000,  .lane_count = 2 },
+			{ .rate = 162000,  .lane_count = 4 },
+
+			{ .rate = 270000,  .lane_count = 1 },
+			{ .rate = 270000,  .lane_count = 2 },
+			{ .rate = 270000,  .lane_count = 4 },
+
+			{ .rate = 540000,  .lane_count = 1 },
+			{ .rate = 540000,  .lane_count = 2 },
+			{ .rate = 540000,  .lane_count = 4 },
+
+			{ .rate = 810000,  .lane_count = 1 },
+			{ .rate = 810000,  .lane_count = 2 },
+			{ .rate = 810000,  .lane_count = 4 },
+
+			{ .rate = 1000000, .lane_count = 1 },
+			{ .rate = 1000000, .lane_count = 2 },
+			{ .rate = 1000000, .lane_count = 4 },
+
+			{ .rate = 1350000, .lane_count = 1 },
+			{ .rate = 1350000, .lane_count = 2 },
+			{ .rate = 1350000, .lane_count = 4 },
+
+			{ .rate = 2000000, .lane_count = 1 },
+			{ .rate = 2000000, .lane_count = 2 },
+			{ .rate = 2000000, .lane_count = 4 },
+		},
+		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
+					      LINK_TEST_MAX_LANE_COUNT),
+	},
+	[INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE] = {
+		.entries = {
+			{ .rate = 162000,  .lane_count = 1 },
+			{ .rate = 270000,  .lane_count = 1 },
+			{ .rate = 540000,  .lane_count = 1 },
+			{ .rate = 810000,  .lane_count = 1 },
+			{ .rate = 1000000, .lane_count = 1 },
+			{ .rate = 1350000, .lane_count = 1 },
+			{ .rate = 2000000, .lane_count = 1 },
+
+			{ .rate = 162000,  .lane_count = 2 },
+			{ .rate = 270000,  .lane_count = 2 },
+			{ .rate = 540000,  .lane_count = 2 },
+			{ .rate = 810000,  .lane_count = 2 },
+			{ .rate = 1000000, .lane_count = 2 },
+			{ .rate = 1350000, .lane_count = 2 },
+			{ .rate = 2000000, .lane_count = 2 },
+
+			{ .rate = 162000,  .lane_count = 4 },
+			{ .rate = 270000,  .lane_count = 4 },
+			{ .rate = 540000,  .lane_count = 4 },
+			{ .rate = 810000,  .lane_count = 4 },
+			{ .rate = 1000000, .lane_count = 4 },
+			{ .rate = 1350000, .lane_count = 4 },
+			{ .rate = 2000000, .lane_count = 4 },
+		},
+		.size = LINK_TEST_NUM_CONFIGS(ARRAY_SIZE(standard_dp_link_rates),
+					      LINK_TEST_MAX_LANE_COUNT),
+	},
+};
+
+static bool link_configs_match(const struct intel_dp_link_config *a,
+			       const struct intel_dp_link_config *b)
+{
+	return a->rate == b->rate && a->lane_count == b->lane_count;
+}
+
+static const struct intel_dp_link_caps_order config_orders[] = {
+	{
+		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
+		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_ASC,
+	}, {
+		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
+		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
+	}, {
+		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
+		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_ASC,
+	}, {
+		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
+		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
+	}
+};
+
+static const struct link_config_set *
+link_caps_config_order_key_to_set(struct kunit *test, enum intel_dp_link_caps_order_key key)
+{
+	return &standard_dp_link_configs[key];
+}
+
+/*
+ * TEST: Baseline with fixed reference table
+ * -----------------------------------------
+ * Verify the link_caps config iterator using fixed standard DP config tables.
+ */
+static void baseline_test_for_order(struct kunit *test,
+				    struct intel_dp_link_caps *link_caps,
+				    struct intel_dp_link_caps_order config_order)
+{
+	struct test_ctx *ctx = test->priv;
+	const struct link_config_set *config_set =
+		link_caps_config_order_key_to_set(test, config_order.key);
+	const struct intel_dp_link_caps_test_ops *ops = ctx->link_caps_ops;
+	struct intel_dp_link_config iter_config;
+	struct intel_dp_link_caps_iter iter;
+	int pos = 0;
+
+	ops->iter_start(&iter, link_caps, config_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &iter_config) {
+		int idx = pos;
+
+		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_DESC)
+			idx = config_set->size - idx - 1;
+
+		KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
+							   &config_set->entries[idx]));
+
+		pos++;
+	}
+	ops->iter_end(&iter);
+}
+
+static void intel_dp_link_caps_test_baseline(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	int i;
+
+	ops->update(link_caps,
+		    standard_dp_link_rates, LINK_TEST_NUM_STANDARD_RATES,
+		    LINK_TEST_MAX_LANE_COUNT,
+		    true);
+
+	for (i = 0; i < ARRAY_SIZE(config_orders); i++)
+		baseline_test_for_order(test, link_caps, config_orders[i]);
+}
+
 static struct kunit_case intel_dp_link_test_cases[] = {
+	KUNIT_CASE(intel_dp_link_caps_test_baseline),
+
 	{}
 };
 
-- 
2.49.1

