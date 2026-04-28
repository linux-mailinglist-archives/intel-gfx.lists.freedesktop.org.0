Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLIxM9+t8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DED34852DD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D68C810EBDF;
	Tue, 28 Apr 2026 12:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M9TtENFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1518610EBDF;
 Tue, 28 Apr 2026 12:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380829; x=1808916829;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=SmZ4KNklmQdzYFYbjble1oZv+tsq3q9ta9DXwV9CE4U=;
 b=M9TtENFFzN9OoRcUF+E+T/rBVsyA1L7Lg940Wo69JVx/WF7MCWPEOTSO
 oblGvJo+38BtdtgQIbOwDesdooxcEQcWtB9Eb7fUWsv9u8lDT/Io6GAuS
 m/Ngz2ocIdb+R8Xjvz+/7KorRMv7RX4J8bpaoyFC3FS6GBetN5wNcK/Uu
 SYf7jMViUz2q/FRTPLXAgeRQKS1Z0xjYyq3fY6ekkCXhss/2IUmTT6d8A
 7GWwTegUEpJAEBazW6H3QiOGdFfkPDLNjXJLMnQyTeHIB8QF2FsQDdjAv
 BZbSqc+60JDo/VEjE7mP7ls9TvtzKZ3Zgb/X+/PFBd3pHxuCEHF10d1Bh A==;
X-CSE-ConnectionGUID: rk85Lq+wQI+QQUMvDXuaig==
X-CSE-MsgGUID: jFbjuTMyRy6l0ls1TH4qjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893695"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893695"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:49 -0700
X-CSE-ConnectionGUID: FJmRbBwIQo2QqgW288bghQ==
X-CSE-MsgGUID: bv0kooOiTI+iRmW/C95pjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083396"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:48 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FXaX+oMrPKkk4qXR14m73d7hH+WvHBSchCBQGpbDMe3QhoWeBs04v+XGtQKgQaI4qi8iXzYUmq1hngSm7tScQVYzd3n3iqOUczt5GDMkuoCuE7vzTpos3fkRwsnPE0RHYByd317DIA6Y07Bh+q/Y7F8A8+Vx9WRQZzUrIF5e9XyZzxpyYiH0KfD6Ytaxhpvcz8ksGcfYu5rorZ4TZfm2yT/MqZM0rlU3c89fSCaTbsnBoVglZVpgolQ8yCnJYxj2GgOGn1wp+IsYybFS9HMEifSXAro4WtiIm62c77R+4D7KU1lQSU+v/nE9n+zNeUL65OsC4juRtXvF5Mrsll7TKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eHS6CM6vE4Uo0SABOl2yi7dau/i0M6staG6D4pruJTE=;
 b=eoW80VWDRTyRYOjGf7cWC+Q/yut0Dz+iMbNRm33clB20+OTnenxfj5NdVuembH80gG6388mBO090CpSeecCOLnjrSZd3v5CKi23hg2qe2JeC4GWVBCYYBD4DGIlixkkWWOEZNplW3XHEOMZEf8I38IynNE+Sc32WJckPG9S2iEVr8yAMHu5nyToLUSGO6vNMjAHGlVP8Nlo0aYqNz5+h67RROlXFOHVpZFxvI+S572FsmbJSUfytchouAzMTs1glM9kIAOPZqlmaGxdqplyCBrO/e/Cof5nvNQfjM01jaJq/TLccD82r7qbU20723jd3rEQGROCXlZr2DHdsScxM3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:45 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 039/108] drm/i915/dp: Factor out helper to get link rate
 capabilities
Date: Tue, 28 Apr 2026 15:51:20 +0300
Message-ID: <20260428125233.1664668-40-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 0832dd41-2a25-4d83-4c65-08dea5252eb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: vFHVQqxTyy37oNrzEDG0MKS1IFP/jmCKhbyAPfFTwqx2QxcYhkrzoLNwtBTfr9L7PFUWbTnuTsnnYmf383IQXDnWLahp2I/xonD+APljG+xkTLN08EMGKXXHNYCHJIY4aX2mGz/satp27zHmwgPtBrWvE9fD7ZTRxFk89bPVJFluh+gv7cbnPg7ZzDAlas87pcd0Mwheo6lAMKcZjGdL1RvA/22AFBOTGuTB1UTGRXjDswzHT+Lx/fhEJhg/Pil+WhqQ0ZY5Ncbis79zM3xeqmmCN1so267DNe0FBL4zHu1d2P1sLii48izHw8vh+Bru86AxKLYcWJ+PpTfBWEgBUhevJvhnzsjGfLyxUqbu6e79FcLTitnGh9Kl6yh2X0fWmb3kz1VTo5P1lHHXNPUGRJZl4SOV8qMJSRTs0k3JocKY2DWyX7ZyI+08Vogf65Eb4tXaQrs0u87p01GBDMTfQlfqbrJNQTnzs0FDR3jneBLb7vdSdPKfRXMJhZ6NT39edXGdLa6hxIls42OUJ5GBdWA70v6lLTFdZh3D4hQxTv6UJc5WE4i9AKHSdN9vNVFp82PexQvm6mFJUiZ7KCsWD8DXy098QyIGHbxrFqSbqNsSiZDoTA95/Q27nLLEv2+Jg9us1eAmRNF/xRyWCuwx17Jf3/0Hj4/KLe7c7fAiSaYjOqgCqS/0w8+IWX7AXcdnX0CWm02NIsupmdhgax45M+MIT9PY6TVTdPPhql5VWNs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ubw+Ngiy8709jo1aKby+NWb4CO7hkWNAAklK0BA/TDqfK7gd1I0w3My2o5Dg?=
 =?us-ascii?Q?0iKINUyq/NTbCmktZfyOt/KHgi36bKfQdiaaAia7njYPUM/Nxd4Cf43D1zLZ?=
 =?us-ascii?Q?v/H0q26IxuyDxGmBe8TAARihOCyskrDvNvoTMG3m4RCsl/OAe6hBQWMaXiWN?=
 =?us-ascii?Q?+dOFLZhO3nUYvxLhcMFeLqJyKGaYicH8Vk5rZYqzS0RfuMY15IK6h0AcrVSH?=
 =?us-ascii?Q?1ywePPfGFQEfuiHDKOG/rm9GGDgJcN/l5J38dRXuFPdqBZZ8FFSog60npH6u?=
 =?us-ascii?Q?Lx+ndD1I2piHOo2Yrl8GQ08buCEJ55+1MkwMO2f4ujqiFtf5QtOSnt4FGnf+?=
 =?us-ascii?Q?IjPHCF81DcCr9jV67sw9mOjBQma9Xjp4iwYdZDn4eOeAYLQ4VC/sQpQkoxqp?=
 =?us-ascii?Q?OwBpHzM9XdOd7gVsvVqyY6XEQy7TuUYAb74uQSy6pHPP2EQAW2tLKjT59abh?=
 =?us-ascii?Q?of4llTUBNPkDlFn9EFZHaBXhEjobA8FGVuxr4oGy0ci10wR3Mpp6GPbF7rvW?=
 =?us-ascii?Q?ueDi/9a6RAy2iphxhbkrvudgF19hHbcnOvToI/jVgO4PG5k9BM72LU20DaUw?=
 =?us-ascii?Q?LZ5lgUHqSwDXqjpNPr/dxBQvus6mPIs6x9Cu48oh2ro8Jknt7/OwaAqwhZdq?=
 =?us-ascii?Q?fsVmfgR1q4B1zbyjmvRy2PBxL1tbeC5tQdLkj5b7H/kgCu8VcPCJZ3tNZ+TX?=
 =?us-ascii?Q?LAs6aK24MQUy8t/TxTw6mKi8wer3YVKp8xVxY5V/aGYB8Th3sqPmVR1hxX/T?=
 =?us-ascii?Q?5E+3Ajmbc5E7XzJJUkleivx7Krbo2fJWod02KxLuzka9TzZHO0gC0souhkj+?=
 =?us-ascii?Q?ED0XfrML0iQ4hXUbIVlBOw5dxjeVozVMNnaKFARxK97vz08qWfsQioM+389t?=
 =?us-ascii?Q?bE9cbv3VFT6ObQJi79RwcxqUwuLhyY2Mu7eC4C0WIP40hajcSvQ2/7nHDlQw?=
 =?us-ascii?Q?Rw/JO/xRc+vZVX0O1/xqfqtkpPpTFwXHivj+n1V+oPgGp6cgmABujlsTG/GJ?=
 =?us-ascii?Q?zXVDwXWXZMX/SqV3ihoLCe1f6ALzz96x9irF2t3l5hWHx/j1EyCdVmxRWdzC?=
 =?us-ascii?Q?9DLnJ+xNAOXSPDxENQYOEaN9B06O5ajnepESKR7i0FQma+PLrPU6oRzS8l5o?=
 =?us-ascii?Q?fjR7+QreZYUq0UKJ1w5EUwoEyjnpczyeYPij5fHrNIlYmYuGKv5WF9i2+6S9?=
 =?us-ascii?Q?oKF0dCDORNdAPFX5k9Q3swi/aPPB7HpuJjmoSnfMFaF94t8hycnNem5H3Pmm?=
 =?us-ascii?Q?rF8UV2p0lMAv61wwlQq/fXXAQeACJdM160k5VAqAZaR7hqjraZwFt/udHHOL?=
 =?us-ascii?Q?qhXjuwas4aBufkwMA1hUYQbedQ0he+AxEUARNcD11phucIr+C5hQ1pACfpKu?=
 =?us-ascii?Q?NjqfIfyao6VbWS+lwnmlXlf33LfqEqNC5CuY9X5v+98okJLGdhSh7o44hrL0?=
 =?us-ascii?Q?qnqPkqK49IDnElUHbtK2ie7qsFBrUvMe754ZCUBqgKaNpj2vm9QSxsOA3R0+?=
 =?us-ascii?Q?dsRwSRgbtK8t9HhU2MTFNQEs9F28opQrMzzpyan2+nPGwhnsiMlNkKpJ4Fuo?=
 =?us-ascii?Q?wGC2L928eIr68j2p443I61EIeXZ8zjMciqJ+NdaYnWs71PsPT4hVewxH4f3/?=
 =?us-ascii?Q?g2FpqoIjc5Mv3TzIsyjSXmAEIF6i84Mhw2jknvfL911qY4DwrEs+AkZsLepg?=
 =?us-ascii?Q?AqgfqpTVx7CL3fc/2Wi7T6L3f46FRlE/GYdnIyMcpgkOxECmFaI6G/pX0ylC?=
 =?us-ascii?Q?rZgePE8UnQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: XFbzMdMh8dsVM5abPkj5BB+wX0n3r+DWxWoTO8UsNMGd2ctilk8HlX+JfqVT/qcy7jKVoKKEIzX0l5XwoujD9UPl+nABFknfbqRIou8erp4vFzUusMBuDemUGGH7PePuIGdL7wTCNF4Bz1VGfi0uAC8pJj0W+AhsnbxFxqAeiq0T0BkyKr0WdYAFLPfyhqEOe2Rb51+DWokI4c+TG0Q/PbjxU3hJoMiBbalTWhGgRa/4Vv2eo0EfV8CLRNLZzqdR7h41Zyim4eP4VwswFYefS3MN1jjJ4RMyrySenokrefT2+oi4mCi3PFBE3esQ/D9Df2dmgCCYQqJXkrResxt/ng==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0832dd41-2a25-4d83-4c65-08dea5252eb8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:45.1227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u4dhlpg3YjZx5E0kqZOml5Pqms9Yv3ob9L293zwaiGc7i+s1eTgKy4prX9iRKwoh1psn3Ms6fTzZC50xnGGDGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 7DED34852DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Factor out a helper to get the supported link rates. This allows to
gather all the link capabilities and pass these to the link capability
module from a single place. A follow-up change will extend this to
gather and pass the maximum lane count capability in the same way.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 44 +++++++++++++++----------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e0f8dc35574f3..347ea9bbe1ef2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -680,33 +680,41 @@ static bool current_common_caps_match(struct intel_dp *intel_dp,
 	return true;
 }
 
-/* Return %true if any supported or maximum link param changed. */
-static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
+static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
+				      int common_rates[DP_MAX_SUPPORTED_RATES],
+				      int *num_common_rates)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+
+	drm_WARN_ON(display->drm,
+		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
+
+	*num_common_rates = intersect_rates(intel_dp->source_rates,
+					    intel_dp->num_source_rates,
+					    intel_dp->sink_rates,
+					    intel_dp->num_sink_rates,
+					    common_rates);
+
+	/* Paranoia, there should always be something in common. */
+	if (drm_WARN_ON(display->drm, *num_common_rates == 0)) {
+		common_rates[0] = 162000;
+		*num_common_rates = 1;
+	}
+}
+
+/* Return %true if any supported or maximum link param changed. */
+static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
+{
 	int num_old_common_rates = intel_dp->num_common_rates;
 	int old_max_rate_limit = intel_dp->link.max_rate;
 	int old_common_rates[DP_MAX_SUPPORTED_RATES];
 	bool link_params_changed = false;
 	int len;
 
-	drm_WARN_ON(display->drm,
-		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
-
 	static_assert(sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
 	memcpy(old_common_rates, intel_dp->common_rates, sizeof(old_common_rates));
 
-	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
-						     intel_dp->num_source_rates,
-						     intel_dp->sink_rates,
-						     intel_dp->num_sink_rates,
-						     intel_dp->common_rates);
-
-	/* Paranoia, there should always be something in common. */
-	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates == 0)) {
-		intel_dp->common_rates[0] = 162000;
-		intel_dp->num_common_rates = 1;
-	}
+	intel_dp_get_common_rates(intel_dp, intel_dp->common_rates, &intel_dp->num_common_rates);
 
 	if (!current_common_caps_match(intel_dp, old_common_rates, num_old_common_rates))
 		link_params_changed = true;
@@ -4752,7 +4760,7 @@ void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 
 	intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
-	if (intel_dp_set_common_rates(intel_dp))
+	if (intel_dp_set_common_link_params(intel_dp))
 		link_params_changed = true;
 
 	current_max_common_lane_count = intel_dp_max_common_lane_count(intel_dp);
@@ -7039,7 +7047,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	}
 
 	intel_dp_set_source_rates(intel_dp);
-	intel_dp_set_common_rates(intel_dp);
+	intel_dp_set_common_link_params(intel_dp);
 	intel_dp_reset_link_params(intel_dp);
 
 	/* init MST on ports that can support it */
-- 
2.49.1

