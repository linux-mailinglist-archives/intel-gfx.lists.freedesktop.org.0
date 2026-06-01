Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAMHJ01THWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7D461C9A4
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE541130A6;
	Mon,  1 Jun 2026 09:39:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mssSl5r/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C5551130C8;
 Mon,  1 Jun 2026 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306762; x=1811842762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=XJGZQO2FwJJajjdBn8KRI+OFWMWqLMqH3l57qas6/jY=;
 b=mssSl5r/qAAA5FvvwfWw6N1OPY93+YNFrAq6Jfbsh6OFVPhfP/FAhSPu
 GCLQe8rNsox6iyUVNZDORD/WxXr/GT6Azi5VN59PMwHQNhRRCY1jCL77/
 Y139RQGVbwYoxO7TUzOrcwkeX02GEO+y6l8m0oqtuaRUL0Vwfk/BvS0M/
 wq3phy9IYGki4vKSPPMOubPw7a8CdsXrC+f/fV2eU09MuS2BsStJvmCsJ
 76VCw424zsw1UROdl1Vn8m8Cdh92f0Z2+e61+S8vjbg8B4GTfFEMN3QE9
 SPvwerRWlmOI9EGnSq7rSqmim7H00ceD6HspXknOE3icmf25rUFijlj2r w==;
X-CSE-ConnectionGUID: E/PboAEOT5CPP4RI/wxdTA==
X-CSE-MsgGUID: hHvlZldUQRaycEexxzAbBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200589"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200589"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:22 -0700
X-CSE-ConnectionGUID: uWyv0Nj/Q9mUPDOnXJFleA==
X-CSE-MsgGUID: aYTpKoqfT169+PO46skNyg==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:22 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:21 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:21 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jf9vgpn1y8eDrXH4MO+pcOuUmRonP+Wl71WInh71hFslYGH5OVaeMosyvqmOLQLlN1DgenZtPs+OoPr0ZBM0e3CGHt1IlmirWOVbyBju+VXOHl3q7Rmje4AeV9k+uM4NElkypOB4dw1IQw+9ws5uZ/nrucZvw+Y3yoB8wRJtxeXYFGECxg95TCUGVQx9Tp/ZQsAXOHP3UfFW+t9uaC/VoBXa8eyu8D1YueOm0NyeDkE1Uo7iDUZKpnk0DQIIBEadDz5eOUM2IpJY3BBJV9Tcph/1FKQxx/aTtqmfoF+3zfRIV+jDg3ScSnRcWME3VXM3VOVIXUde8E6ZLSmwxSK5Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wa3AEvTgp6fkV6L3s6UNnT820yg84Tf1kbP2HTFDlTk=;
 b=Cmq4Sh8aofM6B7nU79qksvRmK2vp1yNye7B8iIgn21eOBzloyVpgRZJXqwPlHZpOfDdRV9hEtRhXF4NQWNkyJadYZk6V9ISwYHJHE84ODY4T4YIB/hQ3/gd6qtIfQ/lHh7rAA7xNXhQoJk7q+GjZP1ibdnHNcTMO2Emldvl2vGkgS7zt7UrdvkuHflsD2SkY8Sf0RQAwIftyEvy7cQTjFeiMAkrDbFhcI9lAl8q906OovyIBaULdiD22ErLW2vTomKHo5pVlAmX0TZxqOqVzttMfy990QpfQPJ9mVK2HEPA6RxlPewUVY0MJZ3piafQaMoBCLoSqisFdMiZ8bwm2tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:11 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 12/22] drm/i915/dp_link_training: Add helper to query
 allowed autoretrain
Date: Mon, 1 Jun 2026 12:38:25 +0300
Message-ID: <20260601093836.3057345-13-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: b374baa2-9556-475b-105b-08debfc1a28c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: U9VAS7tPNVhz7uMJZufA3DdQWpydCzCtUNkzH8jObDUo4t8k3Dohfb+hEBv94G8ySIacMexpiEss0bxbjqdwBGavNhmIEgCizAOec7+/YaI695MqnYRobXwSXtiifvhe/98/ZkeFNGQe7E4MvsG/02SonLKMn3ymLOFMUhU6fPQLAbQIrDZkCQjT90fET6VNiTJQrq5UnXSn5ZsmXkDJ2bYqyNEHAXnBiKVTv3pb8j81PvEbXCfO5sJC8a299p1ATLY9QkeQv2egyLC0I16Q8s8gycFRZSjW/LQ6w0SAJ2R2J692AA02Uv2UML74tdgcTO10sxTzr3kEJqK4BYbtfj8RnAleyJcFpB07KzHhWv6NMvNXdUr4TplR4yba3D41bdFRuAPi8sss2rKxFs1pI3/LmX7uDEN0vSvmsVuX8sfK9+BONLz0jIm7HhpvMYH6Nt/PTOoL+30aN+pMOvDc7O2V0cuAv7Bu5fP4SaO2MFv86Yb5NWoi/NtnZhYAT8A9+nvyxws+EDg2BJm5hUtqQA/b4RTokn9kzbMmoH/bAlcezZjITnd7yt5IsNd+52bUFLOgj4t8uhmqXiUrSMHPlbj0MQsiUXCnvwFU28RK+56uWRyDqMbQhp63Pk4LD/FWPMij+lDu/3eXIN3ATacJNEeQtsdgiL3bWQNWS8uQeCLyMWQGPwepLPBK6jAbwFrW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iXH7g9CS/dlAaOD+JSS2NWp0kuPjbNnXCaVfLgxqUaAiiyn4SzGAVJVHRA0L?=
 =?us-ascii?Q?Pggu+9Fi26CvbLHLZBJb6c7lnBLiMcLGMC4TfCJ83f00qimkaRhki6BozQBk?=
 =?us-ascii?Q?2diBoCUOLuRpNVeYIR43TTKgjQfrAITPv2S9iMdsmHJDE+QnBcX/3OnPW6nu?=
 =?us-ascii?Q?BKZHkg4A0I0KIk0F1iEyeW8Eud3aBRMmpbILl5ytwYNS0iFp1YRr+zkxGzN5?=
 =?us-ascii?Q?BGQCnFe/V2r8DVYof8uVBH/Kll9chmgyH2J2TO9v+8+U+7BjXe5q+BNIOII6?=
 =?us-ascii?Q?JjblBWxazZS3/Nc8HI0E0w3Z72wJHhF4tIRFYZ2crz88bTX8caf0aOHPFn+d?=
 =?us-ascii?Q?g+9YhuPqgS66mF08+RVX3KEXbbTVGXzf0iXn+haJgSS8wfZgW3czrWg+KGGR?=
 =?us-ascii?Q?tOIZ3Atd4yX/+ngRvSB6cSUROXmpHogEg4+aFRjJGWMHbK/ButZ573GDCpaI?=
 =?us-ascii?Q?OeuUuFgKNAtyu5z/pxFMSjvI2aDfChzbfUQlBTLCGs5u+LqOca6ySZ6kXi3h?=
 =?us-ascii?Q?oAHArSi1f2eM4Rtwklsg/9lJYdZuiphNVEjnvZGmKX6dM5tUo5CU5jV0BTrQ?=
 =?us-ascii?Q?eAXM8x3IVxte34q4vIh1gS/4aKyQH5n1m3aGeFYPNKI1/i+gitYrkGcQbhdF?=
 =?us-ascii?Q?tSf8VeNLxqrnIj4VtY/znnlsDFAnmFvVfjCqqqsC5OvpIaWcW5v3OAm0pXuq?=
 =?us-ascii?Q?yJRVtOUIYvhO/9nt+vp+3CAcVeXv2K1QBBOrV1deLxk6A2CqGTit82XRNo1q?=
 =?us-ascii?Q?xaxyS/hfaO05fl7PvSDvhm0+N7QLcHCjMvxEHPA/sUOAQT7C9/B/ZvgiduZZ?=
 =?us-ascii?Q?bnAkRK7GpbBuJLKTTXVllIcdh7erbUKbHftSBe5KgU3OlvukdMIVGwhEruip?=
 =?us-ascii?Q?RXQjmIDTCGuaWvuD64VyrgShydxopJGltuScmtMGZkn0+1KB49NUuT0QBylm?=
 =?us-ascii?Q?T+U/34vw0Um2nivhDdIaBDgOVaMxOnTZ0ziwKDCtwQ8QSX7UdAvd2xYyq+x6?=
 =?us-ascii?Q?algR37iXG8DnjXpcPyK9HKFbaKVmgb5znoIiBDem8YGwJW+E8UJeTZI2XTkk?=
 =?us-ascii?Q?jUB4IGZo1lXe/E3Q8lnoMkdrvSqHgUrG3SnomXDrAyRM4b0vDMAXH4rWU7Fz?=
 =?us-ascii?Q?WCqZj7ma3gANVpXSj8CNx9UmROHan6nr5533k8ygcDYFH0wswDVWRwXw9rIH?=
 =?us-ascii?Q?TtXx2o776gDyUpLeCsfjAptBvBsxhzZ7jfrfiPHalT48WqBCwy9tb3MK6R6Q?=
 =?us-ascii?Q?l0yc33kUGvvb9Hka2rH276Z7emrnLrCAQ70w23KNaIoUGT5sd2178I9g9j3Q?=
 =?us-ascii?Q?utT/s+O+MGmH7JMZPeUXqbwgjdHtEtWzRULcJLBbRqcdIgaKEj4Ikk5Mbi/4?=
 =?us-ascii?Q?V9horLCL29nvBd7s/q21NUVwnvuPXLhtxMnMqJTFwyTGSBM16/BWtWuMS6sW?=
 =?us-ascii?Q?FWlgoMU2pQ5pyhkec61Hz9hWF4bkE7ta8AJDCUGLBdyvKoeAIJrcFEvA4SzU?=
 =?us-ascii?Q?/8qogNTnI+/GqaE27bZzPPtvTnenu5XaybgFmE27jXOIWftzmzLIUIud0nZS?=
 =?us-ascii?Q?nvl3VunIC70Rr2LmtWQH1WCsXquq3YEEOR6BzXBVDR6COhnyBT4xfpUgYr6U?=
 =?us-ascii?Q?w5Qyx16EXmtm4eh6GcMFZuDTcPQHIr+AafXdKOtUlkmp/nRKysSKxat+tYWD?=
 =?us-ascii?Q?m9caci3KkIIS+4xXHAZzz1RlvBGnEO3jUfNUm/UBhWe5+mqWpub1AYQGhpzb?=
 =?us-ascii?Q?GqTnsAFISA=3D=3D?=
X-Exchange-RoutingPolicyChecked: qtt+UX4k+xegtpTZfJvaTC4zzB53aOVrWCKS6H1nxr0M4Bppoos2ncfV4Fow4WZSW8kdWnaWKZ3wD91p0BBa+Y9GXGnsS0W+iM82ocfMyAKaL6lHEE3a2G7OTVE8YOnSi8iF5vpWYQ21tDS6tFBhb91HwAsI8L94tWh+9odQ6KD9P1+qm2vKF+SQy8CsDrVNhrN5IT9GQcVF+U8v5NeEYWp7Ce08xfzJfbd69gCjg/PqZuIIyoX3tgokmuUSFHxXnRtTr/rPxCkG3x8RdjPDz/54L+ycGZa1r9ta8KUV550bKUeBOmnYcUeSGJNe6KDvpkTYlz34Vhk0SgfG2dfANw==
X-MS-Exchange-CrossTenant-Network-Message-Id: b374baa2-9556-475b-105b-08debfc1a28c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:11.1597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A7IHrhJ+0eHeGSm7VxboQMFEQhGe0HbRl+VbZXRTht481XDxrnQEnrp5b5yDPNoVlMMPCvBqvZa85IUucmYnNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Rspamd-Queue-Id: 4A7D461C9A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add link_recovery_autoretrain_allowed() to make it clearer what the
condition is about at its callers: queuing work for and starting an
autoretrain is allowed.

This also prepares for replacing the sequential link training failure
counter with an enum in a follow-up change.

v2: Convert link_recovery_autoretrain_allowed()'s documentation to be a
    non kernel-doc comment and detail what an allowed autoretrain is.
    (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 30 ++++++++++++++++---
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f6a8102a300c1..6c48219d770bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1270,6 +1270,28 @@ link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
 	return link_training->seq_train_failures == 1;
 }
 
+/*
+ * Automatic retraining is a driver-driven link recovery mechanism that
+ * retrains the link with the current userspace provided modeset
+ * configuration and link parameters.
+ *
+ * Autoretrain is allowed while the link configurations available for
+ * retraining, i.e. those not disabled yet via fallback selection, still
+ * make it possible to retrain the link for the current userspace provided
+ * modeset configuration.
+ *
+ * Once automatic retraining is no longer allowed, userspace driven link
+ * recovery via userspace notifications and userspace modesets takes over.
+ *
+ * See also:
+ *   - DOC: DisplayPort link training
+ */
+static bool
+link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
+{
+	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1310,7 +1332,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	intel_hpd_unblock(encoder);
 
 	if (!display->hotplug.ignore_long_hpd &&
-	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
+	    link_recovery_autoretrain_allowed(link_training)) {
 		int delay_ms = link_recovery_autoretrain_pending(link_training) ? 0 : 2000;
 
 		intel_encoder_link_check_queue_work(encoder, delay_ms);
@@ -1837,7 +1859,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
+	if (link_recovery_autoretrain_allowed(link_training))
 		link_training->seq_train_failures++;
 
 	/*
@@ -1857,7 +1879,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
+	if (link_recovery_autoretrain_allowed(link_training))
 		return;
 
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
@@ -2009,7 +2031,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
-	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
+	if (!link_recovery_autoretrain_allowed(link_training))
 		return false;
 
 	if (link_recovery_autoretrain_pending(link_training))
-- 
2.49.1

