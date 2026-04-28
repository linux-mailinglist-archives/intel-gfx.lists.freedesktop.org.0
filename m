Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULGdENqt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2954852B8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48E2A10EBCC;
	Tue, 28 Apr 2026 12:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hPOD9Fb6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2AE10EBD5;
 Tue, 28 Apr 2026 12:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380821; x=1808916821;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=LDd/wjrlccE0UPSu8XJbnYTEQAEug+EFk9zUUIl7jQk=;
 b=hPOD9Fb6whe1PnskP/9RpqpRA2SZ2e3+S3lC9FIVF5IcjPEETCg11Kro
 MfyxgylBXmVX5l0lM6kvDoIjha7rmdto6IdYA/jo/9CyE1JOkMslydU6r
 sj4EFgFWDu00TpCM/A0ELSbDrx5mGxgAgxxJ03emBQibkzzfdHVnSqubd
 YlbWKP037p+UulkcO6GhQyCi3Y397o6uuBfBzfDJrmfQGJAPluDwcarzX
 Ey2pAzeaYh/kcmRBHwQ9AhXIyP6DmoReUv5ygdMGJkKNKkBmR0DtP9VIE
 hxyANps3yvro5AeHjaV6HayQKuwE9BG7aEOAhsyTfcm41H/YyTMwjs5Xn g==;
X-CSE-ConnectionGUID: UO15TzjLSVespDUHEwde1A==
X-CSE-MsgGUID: Yu9lVR5CRL6TqVCReOo8hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398655"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398655"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:41 -0700
X-CSE-ConnectionGUID: JCij8MiGQSugUI/5NW4HFg==
X-CSE-MsgGUID: gocS5TPiQLiCpj9JKqaJ0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911390"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:40 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LDYIucEMBDuOGTqNYzg63vSFXCXAOpWO94ab+HJgs/1wRcEP9VG61W6H+lK05eiE7lXbe2Gg7cgrc7mdKjzEReMcKihBeRBX83OMpBXopR5J3huKoi/CB8vs3vsAWoy6rczNxahWGb38KPRcK6TMWholB/WB5yF+SZ+/VavpaTGZsSw2Eud5EwrhLw84yPGW9pnhZrcQVu4WpFMQiDJuY6k3eHakZDlnINyzdXpC0p0h+IHUPTfDOiQVUH6lhpSqGL1qJqhJC9iYwfXL8UbeL7+A+UpGJE+4nXHT+qL5Zaxli6utq8P+un5/55C9HU4ZIPgPSLVq8SQYGY66PzqLcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BHG/ASdgPkvOAzkm4fKQUNG9FRhXK8q2KQVbOCCd/SQ=;
 b=WoiyoakERDBL8RslSUUhXNFgGtfNU5anwwvKtFdQqfWUnZpcYE0qgzmpJABpx52YFHrXk602OFbkVfywQXeh0/qqiML9/iTuk/6LCQ9Nr4sZH4GSXxgcDy1U7qF09yWkKQriAYA3tQlFYOUDailIdEyUC+sKVqnmcTFsVPiZtvHHU5T/vY4+2voz70Fbi4WBcg7sP1nvyJVcgPGNeymSO9aI2DNkd1ufnSB9nBDKgvizpuNoYcDX7Vj3gNzfEDoC3VqFEzQPGYDDR2rnghTxHqlt71bnRsoi9mzKXDh3BnxJiAwSt+hJJILqPu3o9P17U2j6o/MpfQxjxd403/ip0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:36 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 034/108] drm/i915/dp_link_training: Use helpers to get forced
 link params
Date: Tue, 28 Apr 2026 15:51:15 +0300
Message-ID: <20260428125233.1664668-35-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: d81e103c-81dc-43e9-7746-08dea52529aa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 2/yoAw0RpEJgzmU1m7zYVrMA2zGzIAfMjWKlXovnGnxOVg6FkXPafiyw2h818+R3HXakeQ0UFS/ABh7NHm95gNn2pLS9sXPcNInckB9r806b4NoSdT6s6wNJSwdhwURs1UKQnqVJrlng2lkH05DWVI3wfGsQku6brs2yzgbC9dUxqhkIyAGxQI9qRRplupXAo+IHyHxLNiXBmGIDmQg9L+gfWb+6Rm9DSjpqAPXIfMeHonCBzmQ5OLkA2gHg7nmFbwKzsl83JQBfHnJpu9Fx5lAsUgs6Xs3kXQmA+U3UvBCDpYg1BKS6vVk/UK/2kgvhM8R23Ant1JWC3yBeKWIlLoeiRxgY27fPkHNxtfgNlK3Z037u9+o3UiXBIzpkdRc0uFOjIpcg3W7zlgi1hmwIn5EjnxjZAR279/cqC59/B073/Z/sNGQ6bZ2dP7XPdFyrLaEhiC3uCfoG8x5sQM8Iz7gkgCjak+KpkVT7eUTin5UevGi5gX9Jorv6VKeumWvLUc71Qm0TL/cFljDPP5PhvVelPQi098xI9D8K7qJnCejvemtNAVtXKYKcCscOJ9fatvpYz7jXn6YezwSfl8tmfjCSbgR1dEwj2PrHP7XSDnE8ac3oFJg/j6Qq02hmnN6sxYftAfjhoE5JE+B4sWrBkOxpBKogKwrX/lSMtDpbxdcH64JAf8htyMg4pMHV5lIYXzuV4eKEmG2TAZ4NnfvPG20jfd85H9ip4YLZIJ737e4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gXq4XHmmFBhQVC8lnmsfEziPsAjRZGDzi1ZpoJa3qmFoaCj3+AOuOHOorGni?=
 =?us-ascii?Q?0MGP6sPTSi8viEzFxvqLTB6CgqnyeQ/N80vK8szbqqKSWV9KmQ1JR/6q2mIQ?=
 =?us-ascii?Q?bA/RpefBbGzX7n6ZsQaZ3yP6d4Y9JzG4+n12A7s1pU1ekwmyt/hXpd1r0I0H?=
 =?us-ascii?Q?kbdbaXtxA2/cMZvRTpELsridTHmq+iiWdoG+7DXJBUzO2pJAQnOHtpF82sPE?=
 =?us-ascii?Q?hwvR/T8VpqXOF3yxNZqg8ebzkIXyCHYCnGEI+avANkXtkd2WhjfVJJt5wOw8?=
 =?us-ascii?Q?xIBuQNWN37gx5oW99OD7Y3PfANhRWRAInKocV35+w706PdvO3s6wvRD7VWql?=
 =?us-ascii?Q?qDz7814IxTgrLPc3bcwzUgvwQm4wSI/1V++p3d5/Yu35pAEj6XI07z0OILuf?=
 =?us-ascii?Q?mCCWd5FSoAObqj8yXe/FZkHPjMY87+xUiQeNyDqd2+0tP1KWGmMy7qakzHIg?=
 =?us-ascii?Q?bMK9dnfdkWFw5ra48+RxJRlrMl0g+uqOnBfsMoMkaZih5YEyvFtOq/PGTa3E?=
 =?us-ascii?Q?39WdiR9vdbTRMNQ7T6g6/of9YD1xjsxMStepVkwwpZG0cx8WRk5WF3aDiiK9?=
 =?us-ascii?Q?z5330Op9FFR+jcbbmijtiU0MZAWRXXHp/ciViMRi1A7QCZPul3Oiu4FgyXdJ?=
 =?us-ascii?Q?rCMxfnOK1t96gfurC7XKLyHyB663Ag+kwU6iGHkGb7z5Djb6BQ+HKvSWZH5q?=
 =?us-ascii?Q?kp8w1f9atf8GVPAt+B+JyLoMU+BdrzZWqz0kD/4K7lZvRvLk/gBEGI3eSClK?=
 =?us-ascii?Q?qVLqkZB+zAwsFllBbuKGQHnT/YUHWVDGzftn5BtDbjU0YpDg5xPoZkXuLraE?=
 =?us-ascii?Q?kCuNJ9XSGA3Gyc24dqCFs1dKKWZp7K9mPa/EYYPazN5c8e5oGIHgpSd+xGjC?=
 =?us-ascii?Q?eG48XwYJQoRGPHcWGMlDm6Ugxp7ZbnxvKqeGBBAry8R8lNiaVRvRHYhyb6JE?=
 =?us-ascii?Q?WLal2Lcil2pC9yopKgJ4o6tlABFhKWW+MAi3K6YGvdaFXcKSmK5RLvwcBkXN?=
 =?us-ascii?Q?zzVQ9nLH2jqv57xBLVoTut1c/svWKUAcaZeJiofPO1q8cf29U+M9quqiFKel?=
 =?us-ascii?Q?n/7OH10Yd9sENBj3+IrP7kPHliZdq0qniYyH44XnVNVkU90kUz6B+fjZvteE?=
 =?us-ascii?Q?rkBbGz64+F8Pghnl/kNuq7+CVjOfekvJQ7Ico+e3we88AIDF4BUc0qczAvmH?=
 =?us-ascii?Q?2wOZMT3xDaPTluFU8i5R5Fi2v21YpY6XshL/q8ev/9BBSo3Avg+cezmGUDp5?=
 =?us-ascii?Q?C0GW+3OA+t/pIvjGSc2NXw44N81SX5N1kOoQJ1ya48sBEFndmCHQiIO3ztIa?=
 =?us-ascii?Q?8N3PeWZnTQKMySbJcVrmm/nho+mQk5cVi/F9Ilyr0Qjm1DOmPcCbGYiChI8O?=
 =?us-ascii?Q?t8afm++kcbUvOXKrrZGv46djGn1y4v9UCJoM6ssy3f8eo9FBEFXml/7puQx5?=
 =?us-ascii?Q?PEgoC5Gg2NB3Ybm/AlDkuioc+y9XA0ycGGE3RSUTxEzlXWYeScGjnj7Ki6br?=
 =?us-ascii?Q?mxEsBX2U7n4gIr/xSxyz7jfYFHoVGuJ3YoEWwJgix5yLG3HeNkTo7nFVK4CI?=
 =?us-ascii?Q?/g2HJaMTPxrQye8/jMPs+lcnb99e8Pn3A5ZvmruwNc1a+F3wyi4+t6D2k1Mt?=
 =?us-ascii?Q?tOWNGpjJooGRYVTxx7AGQz1rJlXsuB3Q4wANEcTOlJEUaqyQsnGLa4WZaqGc?=
 =?us-ascii?Q?PUGWapN62fkYwmNPQ6HtiQRUIArG1CnF6H+LZV4Vm4sjCPJQpixU53bfMW0k?=
 =?us-ascii?Q?BhCHwIl6ew=3D=3D?=
X-Exchange-RoutingPolicyChecked: bN5logA7HP404eYI4Qc4+MWt5wZ4QcKHOZOBW0wFgMlfx5B1fER01yGla+UsrrESfFkDtOPtxW3lOyjmqccwhOuUhr4DlEEj7E6c0LAIElsO+KIKH4OeUCgMElV56kB0Tdtb9bgjFGFjTmDNWbTWXw+Lc8onNtWm71BBYiYkWZUdNL2+HmVh15zYaHcGXOkMN0KDUZ+srBWeJrpahQG6xRt5BwGiOmk0nTP72U/kx5Qlt8WwLWSezEV1Bi9n3GVqlZmzb04ud1EYif+r8ZMhLqFzyOUr79P1A74lS5U88msEq35ZI25iV+xurHsAtNb7zEwa1fcIEOG8OKRYVgSc+A==
X-MS-Exchange-CrossTenant-Network-Message-Id: d81e103c-81dc-43e9-7746-08dea52529aa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:36.6415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uzStImnbr6gVCjMeQYzlnfzKKIt4N/oxYf7/c3xJsE4gh2nHCdaNfZJyQ00nwdE7kOHtPiJGB7rO6itw0vf+tg==
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
X-Rspamd-Queue-Id: DF2954852B8
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

Use intel_dp_link_caps_get_forced_params() in the link training fallback
code instead of directly accessing the state. This allows the link caps
module to track changes to forced parameters internally.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 26 ++++++++++++++-----
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 3455e4daf1faf..5218220b82b0b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1760,18 +1760,26 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state,
 					   int *new_link_rate, int *new_lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
+	int forced_lane_count;
+	int forced_rate;
 	int link_rate;
 	int lane_count;
 	int i;
 
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+	forced_rate = forced_params.rate;
+	forced_lane_count = forced_params.lane_count;
+
 	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
 	for (i--; i >= 0; i--) {
 		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
 
-		if ((intel_dp->link.force_rate &&
-		     intel_dp->link.force_rate != link_rate) ||
-		    (intel_dp->link.force_lane_count &&
-		     intel_dp->link.force_lane_count != lane_count))
+		if ((forced_rate &&
+		     forced_rate != link_rate) ||
+		    (forced_lane_count &&
+		     forced_lane_count != lane_count))
 			continue;
 
 		break;
@@ -1788,10 +1796,13 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 
 static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config forced_params;
 	int rate_index;
 	int new_rate;
 
-	if (intel_dp->link.force_rate)
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+	if (forced_params.rate)
 		return -1;
 
 	rate_index = intel_dp_rate_index(intel_dp->common_rates,
@@ -1812,7 +1823,10 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 
 static int reduce_lane_count(struct intel_dp *intel_dp, int current_lane_count)
 {
-	if (intel_dp->link.force_lane_count)
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
+	if (forced_params.lane_count)
 		return -1;
 
 	if (current_lane_count == 1)
-- 
2.49.1

