Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hDnbKBmu8GkYXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0944348542B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0EFE10EC3C;
	Tue, 28 Apr 2026 12:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hhk0hRcC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4308710EC21;
 Tue, 28 Apr 2026 12:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380876; x=1808916876;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=uD+wf90fb6I0uGA/xNXNAMlhVJIRY1c8N5ppqzfOdbI=;
 b=Hhk0hRcCEL0CoxtDPsdTJqdsqaSM+gFcMfx+yiDCQzabpSjGLGvjeW2o
 fZSxTX6D8Kdg1KGruUoPubwPROQ6ckleA2f3UW36s79zNXQ4lR6wk3IEA
 U2j3ErLSERZX9xmQAfllciCEh9ULuiV+fyOI+bRMq9a0aaS85UkHseX8u
 7uSWIxjBmhGFKuo3rsiJa372Qq6wDFKP47zf5tWW3M1QFw9qlYVo/6Q0y
 JEJKN22lLuXCuM6ZtOEz2vfVHcsbGquimYvZwCmiL2jo7H15Lmu0LJ3mh
 XuAoYmksorU/oQ57TTv+z3NVeOVUafxWincwEUxLVf6Q97gCImlf6IvNH A==;
X-CSE-ConnectionGUID: Wg9gqljKQM+gKTqZFzQ91g==
X-CSE-MsgGUID: jCEAEldyQG2EUGzP8M7b4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945236"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945236"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:35 -0700
X-CSE-ConnectionGUID: v1YLPCK2QqOglkbtR8DKFg==
X-CSE-MsgGUID: XE2nYYq7SlijqAjBgVua5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377744"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:34 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JbgWwuyUv5ezvvVZE2lIHFoL92PYN5gT2i6KOid3V0ukHgqsVzuuC62yJmgdy9UChjFhXXTuuuaYwAInXJCsuXYVc1WWOnrsAOoozXsw6CqOcmU4/ew6p9y0Qy7/zygtoHzAubfufKtpfoXTDKoltfA0IVlA3Cp/a0zxm3BCuL1hLdHPiyFb4xE3UJFnMNXEQWzLZmUxkrT8Iz0iAOaUitulgnbHnn/QeAuDy8tNuKOqfqDGypVl+sQXvjhGdbKwCPLcgsq5ET0sxgIN1DEn93aBpTXMYyt4nYK3qlzCgl9NwPWdporjC/pYFp0nOONPtHfKiUIHWigiFZgr6vN0rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gI4gc3DT+wlNoDX9Q26zuAQG2i6Hp5qorRcBW6WXGWg=;
 b=K1p/Ox/KGwl+CA9aEJEfQP8a97cQTI33ML41AQunpxsKAuAwYSBaoczwz1/07F9P0lYlft1XSIg3NJzz4S/xCDXbqfOTudNDJV/ptIOcRAUsgjvkK+KGVb8NhBZeWtqgEaES+0Q8/q0zH38XR2UQarU8xQAKfntLKZt/hIeIKJtOWLvtr+s+y76fWrC97Cl2dBV4oXsI41jx2KRyOeag3jlfInJ5Qi32fPNNrzHR5F3FkL+svioLtolrX8WzJZ9QHNbWJc2TRD8aabRJ7zsQ8xTT0bUZZ2xyMgKNK1jkHKnRPngBwIDNrP3Yy+ufHkzCXp3K/tNoO2DoXO2JQpsuOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 050/108] drm/i915/dp_link_caps: Add helpers to set max link
 limits
Date: Tue, 28 Apr 2026 15:51:31 +0300
Message-ID: <20260428125233.1664668-51-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 10960f12-b57e-4b85-1e8e-08dea5253928
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: m09wnWw4WQ8ZpnQUvEp0HeljYDlZZDyPaa0nUsRb2e7xZfbJKMR5NnufCFL+Dthmsja8+LPAoQiCJw0cmd+bV2z0gaPosyVxXgU+g1y/DyX1L/bMJTZHDDePrzvYGnmePIkc3ucyw3K8BquISkVAI5WxHmewXIE1DuSTgZgf5e0PspRnzoAEO1edaGDL0CViuPgZnzILuFj62eUSOI/s071w/oK+0dyVfjUGVE4gSAUO/P4nO0shVoB3F0diJpIzdkTCEcaFYTiDfyMfg7qmZyJEYxVAS95jKylCaMB/nL8ha0Ud14Vnkwg8BvgfPTOuLCZlxou/CVjh6YDBi+dgL2Cg846zNoQ406WJ+wu8Cw3ClPFtTlxFHr/NQ/rS2t4k03fT+PWyhg1mByy4sUNVTfmWTMITKwLGDUs17oLR2kSu/9W36K19PUJAgBTFA1A2YsFljOvZlIRAFi3Ku5VlouZHXFoKQaOJaG81FfiQuGJrPVqsL/nqita/5lGX9kz/19LHVeMiT7C1H5QeNM3FXcM8xLCaAi4JDpIz1IbRc2VlDmkAwb2UHO9MQTooCg3/5RCCUw3zm6K+AGXIbTqdQ0I2S35ZxUPNV7fS2jhguzsk/yuLbZ9SdiVAYvjGkVdyYD9kjQBb3AJQrnj0ChszoHwiUm6DC3P8xMWsGsiwZTUDnorJkBGsBKf1tP5TfQG9lGoNqqSctjxtAoZqvDy6VKoJ5JMe4b9gzhnHMg+v/vg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TQjNuPUPPA6C+E77s7EyvN5FQ0voH2h5P3A1JRdrpS4F7kBkusGIHunmy/nu?=
 =?us-ascii?Q?bC5iLY0v5ONLDFahFjyILkToXF3mx/mK9PkqFbwsQZDOE73nSJECMDrvHh0x?=
 =?us-ascii?Q?uWHlxwEoWoeJEDyFg9z804uF2TDjIWeEcJcW9JP104TUiP8crmnBRtM/ZA+O?=
 =?us-ascii?Q?iIJtKloe3st+pwHYZ0N4w/NIew/zREBM32NKGmxIkekXuqO5a3oUJ6Bant/r?=
 =?us-ascii?Q?7Zlt/U7BNFoViRx/PuiFv1p3O7YZIc+fTMhtCiDMav/vnr31UwKHNK229mBm?=
 =?us-ascii?Q?uHVCHv2Qu15oWEnD6AKXj5CDI5XTPS3vGb/2KusCTFiejrR+/yJuP/Ii+ZIl?=
 =?us-ascii?Q?MjbZ96zsiYW0hGOUDisD+0rL9Zulz/elmQq/hAsT+K9/FMpIyc6d4D86lUq5?=
 =?us-ascii?Q?ihm24VQ6xiZmT0S8ZpRh46pw3bIOSkzVJrcidXg0ELUlNg0PnoV6zmgZNYR6?=
 =?us-ascii?Q?IXeaUYa/WvvfHXiz0O05Xbmn3BoW+QZQZOu0yYA3IUL70CygjnYOSQce9n/O?=
 =?us-ascii?Q?lKWE7qG8NtfZ3kMuwE+X23iaUymbcel76prPOZgSKgc15BU2419wDLq+bVKq?=
 =?us-ascii?Q?ofGbIBr6g0MYAVURAFH4ole10X+bevZha5Nh435nlGyG19nSqSOtwd2TbU1Q?=
 =?us-ascii?Q?g2WfsAcVv76yPaqzDN+FwC/qWhAufTry1sgl8u8pq0pXce3y14hI9zu7LlDp?=
 =?us-ascii?Q?x5qAaH+tsijFDvFOw/bDSEbXSHhDY51+ndst0ZY1dLAySoHwDEy+5MruSW94?=
 =?us-ascii?Q?aNKXGvWvyVffoMSa4rYPTM1jHNxIXiI0O5QcJvuNWPVYXNqANS0y7y01tTY5?=
 =?us-ascii?Q?f3VX+eIxp0uCi3Bc+O3jhgiPPHejtS1noF2i7eNNmTJ6SACU5MxePRQrD8Nh?=
 =?us-ascii?Q?BAZKoDPx8Ld9swCqSD42Jb2cHLtGS8SHfsCDOHZEATYGbX19tz9pHoA5HZLh?=
 =?us-ascii?Q?e8mvrwa4Cv0ncDqkgrzkA0R8cK8skxhBQG8a0po4LPmCfi6seeo4zNTNixam?=
 =?us-ascii?Q?e0KT3NGipOCkCvAxaXlMRgbHuEiq6jfFh4fwgK/NI3tXPc2A792QnhI2u8E0?=
 =?us-ascii?Q?ilfXHKCR2KaMeQ6yxFug575RFF0fXQcwepjQ96CNwXJ05T/AuU28ccWKhktR?=
 =?us-ascii?Q?3GmQaxoWVumUEjGb+xf4qSWyOUlArFByRy1HGBUKFc62ffH/9mDbusd9MJVg?=
 =?us-ascii?Q?EtT2Q+TE8YfDcASP/zPBLWVj7WU1JFl9tG6/5Tp0pyugVtIDD1pGjxFh6obP?=
 =?us-ascii?Q?tTwKQw0iaKPW+sV9Fz85pfzulX1SorEe94HhPoW9VyJ2T23JkPiLrovN4zXk?=
 =?us-ascii?Q?NjwLF6hjxm57Lg8BE5ejH2a/uXgSq2zUxbmNQiovMRxM5x1Xibo3Tvux14Gt?=
 =?us-ascii?Q?AvPAiHRtzRP9ofbcAUbwpQq0nXZYw3XjFEJ6nKg9On9H6z23FO5kSZirSTAu?=
 =?us-ascii?Q?smlu6x8nJgeCLEsiIUx1KXzKlhjv0amq7xWpM2KYtMIZgyIJqe7oT8Kc0akJ?=
 =?us-ascii?Q?w1Pu8m7bm1wAgTsBC5bwqTKgzG+CWfWnnejbVgkIGTNR5Kxf1UjIJh1X0XDq?=
 =?us-ascii?Q?k4ISMQJNeF0earj1kJSaRCXyfYyhP0YExgy8E17tFup6hoV2S3YThVNwD8BG?=
 =?us-ascii?Q?bJcXzDye/sAVoF1oMeDh85ozlS4Ecr+tkVf9aK/rCU4WZmTJj6EqbZq97Eam?=
 =?us-ascii?Q?0fBek2UGs38VBc4KE4tmVu4qjsnfgHCSdKwjq2QIsg2EewUzrGHhIVweEPyA?=
 =?us-ascii?Q?77OfPfnZkg=3D=3D?=
X-Exchange-RoutingPolicyChecked: GFHyTzcxffj9dgVpAfZ3+k5PQmGPdtPt2EUSvlOM+gSSzCUxVQ3eSIBOZgEf446OZN1UlFDIsgiDtplU/EVJ1s9hMAtxu35exVfV0fdRkmpuZulTC9CEZAl8XeySi8ukAYbEWVRB0m7svAT9mkuOV6lXVqkoqCeXQMdX3aWk0QxuDTgnMCwWCEbvNxajcvclM0yh3HFPD31R/xDaEZlpCocc6IAejZhFCc4+gt7pkX20auM+ThuCV21iWVPylVcJdBmAP21rZ/cD+/D2xcsqQTfXSHSEnUxM6FhXgVwZYLdcSo0u6eI2/B0eDkfLhvjjYELf6ipg2q/Cx9PetE76YQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 10960f12-b57e-4b85-1e8e-08dea5253928
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:02.6508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6UlMAF7KjXPXv1c5JtkJfTEky/ljIu7f8FgXTd5I7wBj8A62GHX6EQoV/xAkE9gvi7BDot1Vyeimrta0NRdB/A==
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
X-Rspamd-Queue-Id: 0944348542B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add intel_dp_link_caps_set_max_limits() to set the current maximum link
limits (max bound over all allowed configurations) through the link caps
API instead of direct accesses.

This allows tracking the state internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 35 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 ++
 .../drm/i915/display/intel_dp_link_training.c |  9 +++--
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index f645c0a9dba69..fa8d3a140414f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -175,6 +175,15 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
+static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
+					  const struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	intel_dp->link.max_rate = max_link_limits->rate;
+	intel_dp->link.max_lane_count = max_link_limits->lane_count;
+}
+
 /**
  * intel_dp_link_caps_get_max_limits - get the current maximum link limits
  * @link_caps: link capabilities state
@@ -205,6 +214,32 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 	max_link_limits->lane_count = intel_dp->link.max_lane_count;
 }
 
+/**
+ * intel_dp_link_caps_set_max_limits - set the current maximum link limits
+ * @link_caps: link capabilities state
+ * @max_link_limits: new maximum link limits
+ *
+ * Set the current maximum rate and lane count limits to @max_link_limits,
+ * constraining the set of allowed configurations.
+ *
+ * Unlike intel_dp_link_caps_get_max_limits(), the caller must serialize
+ * this call against concurrent queries and updates to @link_caps, in line
+ * with the rest of the API.
+ *
+ * Return:
+ * - %true  if the @link_caps cached max limits value got updated with
+ *          @max_link_limits.
+ * - %false if @max_link_limits is invalid.
+ */
+bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *max_link_limits)
+{
+	set_max_link_limits_no_update(link_caps, max_link_limits);
+
+	/* TODO: validate max_link_limits */
+	return true;
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 35bbe340955a6..ed053d9c81380 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -27,6 +27,8 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
+bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *max_link_limits);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ff146027baa3c..5e60621f4442e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1872,6 +1872,8 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 						   const struct intel_crtc_state *crtc_state)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	int new_link_rate;
 	int new_lane_count;
 
@@ -1897,8 +1899,11 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	       crtc_state->lane_count, crtc_state->port_clock,
 	       new_lane_count, new_link_rate);
 
-	intel_dp->link.max_rate = new_link_rate;
-	intel_dp->link.max_lane_count = new_lane_count;
+	max_link_limits.rate = new_link_rate;
+	max_link_limits.lane_count = new_lane_count;
+
+	/* TODO: handle an update failure */
+	intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits);
 
 	return 0;
 }
-- 
2.49.1

