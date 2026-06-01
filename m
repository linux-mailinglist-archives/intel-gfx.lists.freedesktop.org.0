Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICgYBElTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FD461C98F
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3497F1130C1;
	Mon,  1 Jun 2026 09:39:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bjYrVHcr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5CB1130BF;
 Mon,  1 Jun 2026 09:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306758; x=1811842758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=P8BCHeDzRmmq9s3qGqJ5urNuSdYshl2kGdlQsghnuEQ=;
 b=bjYrVHcrMOTsWkko24Ql4h12oA10Mh7SlOSt4xrmR2VagN0z3pZiHrsN
 XF2OvEWNYx71QKrbNNxTAmyKN8oXO0PRy9WYdW9PMQeoQuhMOlMnxxhJ1
 S3rGpACSI4k8Hp2rmjv0tuhMThiiNRgFwWd9lRowGN5+XjkksIGqktFY0
 GYFPiBamGx2rUCCn0JjL+VdFbIeuaJiIj/TIPOHbkRw7ge9RUDYSDLY+f
 DGYshuqMdP25wWHzKWDBLggufipsyW8eKTJF792LfVdbZRxtf4Shufdkq
 unkFdAHOwbshd9AtRPZ+yB2aNJa00M4pyAc2qkeTn4a17VBNr7BYy4y3r A==;
X-CSE-ConnectionGUID: 3CEpL3laQ7G56bTaMqh2Mw==
X-CSE-MsgGUID: hkGHe9HFSHabbO3PU2QFUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094046"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094046"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:17 -0700
X-CSE-ConnectionGUID: N0291TnkSt2v5wjo+SnjJw==
X-CSE-MsgGUID: AZK/TLRkRYapAbYR8bYxyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160584"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:17 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kvve+qfSKwE5pKUX/Eml9gycLMyTpZqIEPGgr4KONv4HSSp7rLZPuSvlBlbfoptUuEH/ObRykhZFFU+mrvGuYAwqHp+5uAOxCZokenOJn4gPqfL34/Y9Wx759t0M8P40NpA8PSmX1N/fRCrF0yUebz64UTCSek2iifUT8XYcFWsjyuG7QZn4YPkD5TefyODgd0Bko1O4HHH00JS5kB6avtgAuKAo7ZBwIXA9R+BdkhOfW+9UISZypVzjumXyE11qa+HkJoGKigXBRuFtkemuPr0oy6Ass/+3CUYFtBd/MbUsX+FyNMSgF8LZNU3GuF1o1cqrmww0auEMi46RhdyT2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sZ48AbBc0OmyMnP4NRoTG4pBUeSGJnPfSHdYMh8Q5sA=;
 b=SBg0DfH67wilUP/wve32hyUZIUCNfn+ePNAvgFduDifdT6E8/aw4MKu0l3ptI4YyVQ0KsnJCtPBd/memq9yo0HK5PNlGpajPfm7GmRbZmvvWL1QLCMOX8uctKKuKmnKfyS6abcislB31u/U4dfagNeOATvonMElxrhm9ZLaFymppKeKNYVXIgqHuHrAxGgCvhHDzpRLnqCGaO2lpbflBeDKfS4BLV9NDIlkRxZ8dBlsbDKPL25bYt3DVO0QNIDnTQ3PTbG6SeN2pBYy8ioYgATGLRelrjxzZ+Fin7MvLXZ3G/jZmbtp4AkeaD9gQwVdX+WccvrpmOgB2QTiVrjtF9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 09:39:02 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 05/22] drm/i915/dp_link_training: Use link_training as base
 pointer in debugfs
Date: Mon, 1 Jun 2026 12:38:18 +0300
Message-ID: <20260601093836.3057345-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW4PR11MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: 900b32b3-2723-4d26-7025-08debfc19cec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|6133799003|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: e+K7eo7/vm7WeMFftbofqZNnRYKwws8FUlwWMd4o/GOeWmPZL3Q4xbRhOxveDrllBZSFWSZBYz6lWKjQfJYol5Of/2+ZOdzNa1IahKkV2QAKveXYkCRScl4+Qj65wSKHz4PYsiD8OPzvI/G6a+71DaADNnzOKdDiaUCqMlScl+sPVrl1Tf7bpcO/rEnmQr5ERIkmE2Ic8RQyqpC9OPEVS2D5YUAPKJK3mCRKh80c+i3dZvz2cEqrQyxaYkgRp90zVHFn546MdWEWxer/PAcb7yhMsztJj2fxDuYMkWEEi5Vjuhq/DSOHZna/jLIlN1IuqtzTJEdmzqfsUqZPmJ5LZ80CoZQwP6EgKcX2VtaSGnLXIieCWcdnmCPNYw3/QNwp7MrEWUMR0T5lcSyGvHLAVYRUq33RKjOtoObVgIEX7wWQ2+t2Gh/TQ783G9HbN144EcicuRRnkdptlJ612aJwjGLwQoaxhurjq+jMaAA6Z2gr4NbH7xl1SQrnQ1rq/XaCpviBTr+weWa6JvQXiTSSsBH+EXGrBhEuoIdApy9VzSs3ahDlNrDqb/e+C6NXpmUT7EIUfOoWcfuRXq4scZCa3sq//jZOUfqlYSaYFpD8x3bWy9IWH6wx16pmKLKPcNaL5WJBpNmIZ4W/DD2q/yB2LJEzayKD8mL2NSB4d4IIP6vmUWzsLtOgIaxaTgPYrASD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(6133799003)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HAbgh2tSm4VLG3cvVAD8EAFyw2w6xT7//1H7jeDffpJyJzo9ZK7Gko9CIuSV?=
 =?us-ascii?Q?VaB27i3c/gXNYq+AHB8F9jBP1/h0GqA28brlKyACulIdSBg6rYd+SavZq74e?=
 =?us-ascii?Q?LU/YfE3fP9/4Vzy9Pz26MpCsjIhOUFsKBN4VEE5e1lakawFpOZL4mOs/T9xc?=
 =?us-ascii?Q?M+eGEPIJAcS/MqYnTGJn4wCyS0OG2wEBDhduaH4nStxKlGJs+J81JNuByq2a?=
 =?us-ascii?Q?LogY779x+KUNRkSlL+IoqT3rSW9cSHN5J+GE12rSX9KFO+kZs6zHyNR9Bi4a?=
 =?us-ascii?Q?mZV7fmM07WLG/+aSeYb7BXwEXt9gJSmsv13QeCSD8jBLs/737YNXPtGU46Ok?=
 =?us-ascii?Q?GajxhMUm3yiEQYvX8zzBnHvyGwAo10hiDWz75leSszoa4F76STJHR5Kwzkfx?=
 =?us-ascii?Q?HyOep/99Yjocd30Fp0NuqUlg+L1uFWsZaXDJiZ5r4IDiY7r3zx+fUwmyDt8p?=
 =?us-ascii?Q?Yc9RcYJjMCHJXuxXWAfVNzMTfWLg7kuxIdh00jLfrJjeMg7ZkbQdCQIbwr55?=
 =?us-ascii?Q?lBSk1eWluu18e5PGX4kF1hVp99CO7YxJRx6tZSzCK+NLENkYAtGjPb4ZYk/1?=
 =?us-ascii?Q?os2QTiGFvO9JIcy2oBB02xipX39nfPgO1viFfp/B0B1ty9B76Jm6Ai2Rmn4W?=
 =?us-ascii?Q?gM3Av+0wbdwCU6p54N3LEtt2pvO2j5WLXT89V1OVJuNslpItkHMt3oarJ+Tn?=
 =?us-ascii?Q?HdVq8JfXaFUeTTD/RTdiBrIoTnm3vvLVTw7GMv+V2f1BMJIRwabfjtqajloS?=
 =?us-ascii?Q?zuFDYJrC+omRCa92kIXlVz8cjwpwaeemfWGKzPquiw2Kaj0w2nx8T+rVtB5V?=
 =?us-ascii?Q?Sm/81haxa48bNtJ2V2teLRniufAQOAHse+OoPmhBL1BJ/+qcBOpLdn7XVPRi?=
 =?us-ascii?Q?DrDU2S/CpDEnFxDEwjzE2M2/mtvlHDoSDLsksHc2extejbJZII29B8Mz/j6G?=
 =?us-ascii?Q?38XjTlzRlE3atn4pQtqckmzG+YSIshens86Zn23BlmaoSd56hEReDixYsfNg?=
 =?us-ascii?Q?HDJ73XfVmOOI/DzSJgMOl6MRGGvDCUowgGfJJXlOjRhKrFtu2x3yDO6Drzex?=
 =?us-ascii?Q?TKUx5DkWXMLC4L57HVZmq/0IWpX3qxKJ61uYKK1gtPvkKomn7+NhCDeRRCnP?=
 =?us-ascii?Q?lPDme4JTh6PBPDPLerxJbYitro61RXgIVAYT5Fh8Qd0oz4oRG/3TjpINZRGM?=
 =?us-ascii?Q?oGlxMgoDHdPmBE4OOptQSQpsLPlN5E8AKwTfEm+/F9iabe/e0LnBo6pNaYqF?=
 =?us-ascii?Q?OENCaj6ttGanaf3sjrIo8sZdi4UBMMf6IzvCGhRd2LHVGOZnEyFiX6ssXDYF?=
 =?us-ascii?Q?9WvOlp7PZ8shIWEOcSZy0SNb6ZCnXlZcOxU3LVj8ExubCB9J3HpowYaFWd5q?=
 =?us-ascii?Q?nUY+ZvzRHMvChfqrlgloZuwPo007G2TI+cZlkzWOmW86rCY/ccVv2Vf8DaX1?=
 =?us-ascii?Q?O0BRCv9c4x6ticRq4gkA9S52H7V99X/7/rFeSCgkWcciXrwN6ancpaaz9hb1?=
 =?us-ascii?Q?m3muFO6TEpFwD5XdaaMSJbzAwcqDdNf0JoAwo9KWeoWj4qlyJlfNkdgCdscG?=
 =?us-ascii?Q?EVoX39mrENxNIp1wWNFaI9xC3qC4naA3uTZ19824NcAMWqnp5D3GCX6zgbVn?=
 =?us-ascii?Q?QFHfHK4huPZqXPcSSF1lBj5cbOxFqEsTXKXuhHQQ9iKYe/p5jw4NBY05InCe?=
 =?us-ascii?Q?w2bdvVxWRB6R1Q0mMpb/TLUjhoOMC5d8X1C9DzqyeQcwfGjWFdpmSC7Unm1d?=
 =?us-ascii?Q?BRD+IKPFhA=3D=3D?=
X-Exchange-RoutingPolicyChecked: s2YAjwoYYpdcCbSbUE+lNF50J9wZ8paUVDYceIXgK2sXA0hMBseNW83JBiam+F0Xm9jVDAEazIQ86dhsIR/qn3/7el4huW43Oc76wolBZrqH/VPV2IWYMgQ4o0xJJ2+5SnFOTCCMig9jL5Q8G1Y8A5Q4Dr08Oks2AfgU9yvMb6llmxZaezVsP1STgEKjr4cVsPO1NrlDGNr9fZF7ZrrJieaT+oXXDHrQ7GQFnSU2hccWMyDlgsr/KXDnARP0ki7gmWNrCrjWOPkh0Zm+MeUiA3NiEXUFx8lF1TtzfB8fwRj4TUplcQODWaP4gmNnPjnhzUBvw1VWs+OnvjMq14O0Pg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 900b32b3-2723-4d26-7025-08debfc19cec
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:01.7837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rkL05AsnoKIoCVbWP02F6pd3Ezw/2YLRjxuTQiItSJoMTWvugLn4QLSwhtKxAZh+yv1QMEttk3yWlsW5VabvEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B4FD461C98F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Retrieve the link_training pointer from the connector and derive the DP
pointer from it in debugfs entries.

This prepares for a follow-up change where values exposed via debugfs
entries will be retrieved from the link training state.

v2: Join unnecessarily wrapped lines. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 20 ++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index d8f1834e50433..4ecc00b7c9ff5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -68,6 +68,11 @@ struct intel_dp_link_training {
 	struct intel_dp *dp;
 };
 
+static struct intel_dp_link_training *connector_to_link_training(struct intel_connector *connector)
+{
+	return intel_attached_dp(connector)->link.training;
+}
+
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
 	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
@@ -2322,7 +2327,8 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2342,7 +2348,8 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	if (val > 2)
@@ -2368,7 +2375,8 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2388,7 +2396,8 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2413,7 +2422,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-- 
2.49.1

