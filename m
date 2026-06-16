Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0vQeC6utMWo7pAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C68736951AC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BIXtmekK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5767910ED61;
	Tue, 16 Jun 2026 20:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC72E10ED3B;
 Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640600; x=1813176600;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=yUMlO1oep0fqWVLZOy4nAT6hhbK6BDlGD94XOvwsKKw=;
 b=BIXtmekKDgv+nylV+M+ld/nij+LPo79lYuW0pCfA7uAouDPRlad3JD/v
 sE15KgNRGjDF398+Tko6iLfzDkixcPRpDKtfmCQj+ObsgWFfMksQoMBJo
 W4O4xjgXaKJxfYR96gtUOME9+ibmJoC8GQHPY4d8ZQXw+fjzkFgrCf3s0
 bzQu11IKZxHAH7GKi+L7r1nzB5aBmMGLP0z0aWwOLdo1Plz45RsWq2GrU
 F0GvcKNKl/iWPJYmxHGpoWxn888AefjSkJr/OvqZGNqVCXzP9i5jhR9a9
 kvDm+ko2EcRS/2FYPjke0sb/Kr1eFHFfOJKZStXNZHxoj/qQgqzqDNTid w==;
X-CSE-ConnectionGUID: oyK6PNeZQVCiFWfGBxxW7A==
X-CSE-MsgGUID: XZ/GkzRTRyGdEqPg2nM6bQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81427293"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81427293"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:10:00 -0700
X-CSE-ConnectionGUID: E94OLMpFQrmqjxFKZqmgbg==
X-CSE-MsgGUID: azIVMm97RHKSabNgn0YYqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="251786344"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:10:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:59 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xEb4UeUX9zPcgZsevIv10Ddvvll69B7jlyPGwGy3U5EN4dDtE/7a6Wh67L3vd0N8qTT6I796hzMfsK71kJIjyDjIiGTLPno19z5Ck0P9nAU0NUfQ0z4SW+ShSj6iuJ1Xy3QuHF4mKqmXd+V53k5M0LmtssPpl6J9UDdOYtgETAt8ruRaJGQUKP0RuMHxm/nvQP5kv+AdWJ3gkd5b26u6g8pAE0vVfKLR9C1VhI3isFjAk2jntJ0/Ads7Djt96xS/JrxMUqxARVeKOgAaI+UkD+E4OsjvcMyFHC6xk5cWL2WpEVYLvZERZQvqa5VpdP9lvod2bKidr2ucYneLEU6IHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Skw2WqmQBLpBx3cj4XCzATRqAYeZoVk8lwLIYsAD/TE=;
 b=efD72vRozLObLbEh+2usllO776hhAYyLeFRjpugUBIqVmPDrZeMinkrz2tJiC2hrVtoFfM8bHpI2jusPWtaW7x4YJMmb+VQ+gMTrC96G8qtedE5Buh5zzKdSmR74bh4QARLCdLV018dnOixY2j/piKbbCM2JznQ7axQPQanu3U213WIfxBhRPH2bnDa2ayD8vRk/p9tqI2Oxt8qbPvUvWEigqTDddHLWNQ/rx3wdIxShUHw7aWytZcLeBFbrMfpEWjGtow8eprkZQ7S1CvOFH0KlXmBTQCRfHQsB4ueUtZmbMYhKp9sOXF4NW+CbsxzTNc1764qmNsnBFYIwlEbceA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:52 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:52 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 26/28] drm/i915/dp_link_caps: Pass link_caps to static
 functions
Date: Tue, 16 Jun 2026 23:08:46 +0300
Message-ID: <20260616200849.3534628-27-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: c34772b9-6a60-4135-47fb-08decbe339a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: h3aMgAthH1lYA2lrXgRgEatUzQsnPx/CM5bEsl1to2+kNvXw7ru96dQgF6A2SGysgrSvn/yML/APGEVdCgEMtnNjShF7H1IQmjjBiJZZVUg6/kOIFUewgvR+06RdCsHRen46zlRbO/UZgkZCrIJ7CQKKn/EBJ1csYN3T8hN53nPn5Q6o0Rsb5XaU7KuptsBSggYcl5BQmgXe+rJ2vj3BVhmGF+CS89sCmryBmmsYHW6yRx5+sO3/w/00+YmjzjhvadjS3G96SLDYPA8VxDw/S749FMf3oW+GTMJxOJG1Y9ESsae7hP/hntkIaI688xOJm6LPCq31Gw/lKdme5kQ1TYZpeZa9W0rq4UXH8GQZPxZeHQ4CjVHons8FCfz/pHhrV2gY/WBQhdEwvl+ZpR6ggFgq0XHNyinIVar2vrj+T+3rDsabjQHHlOgkXj+jrqMVYeFTbfAgEEk0Bjb0cTYPL2Ln/sGq1bz8AcGhBwnrWVctd7yFUZzvgDR8mq181FvTknEJFB5wjfPKT5DiXCkOUvEvSe0Cf4ii8yMzOe0V3n9Sgu5ZRLs7H8wpm9FZgBHx4QuL9Pfctvw7avlkXyQ6Sp+TCl3ZIuL0DwDHjbgcypo00Cit3RXFhJQHVN6tMQ+1ksecqBj8rwktFE/eNXPAMRDdOynOAJWvh5CA5+PfRaVrZKDLZtYK8LtdTUFp3Kle
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gg03yxspnMN5RWt/Fjgi50T62SaRZ16zhMp3r7CogvYwrozvigm5+4aq9/01?=
 =?us-ascii?Q?dQxzu9TkwWPE/PkZbcPZFnmDIeNbtPrP5hyn6a8sxID7RghxlmjOiChmBt8S?=
 =?us-ascii?Q?4NEVHHIHJS6/2JJQBByqCjR88f96b0eIsAtm5idbeM58U1l49puohLw+/t53?=
 =?us-ascii?Q?EoXU4yEqgomk5ZsvMRH40ovlVA2OyDcn70yylDLwxjJmD3KX0SFVQTmZNVtU?=
 =?us-ascii?Q?UFI3AkpA76+jpsKphjQTe//fm6V+zw6ptVrDRoHULqKeXQ+XuLJA+GPMMf7l?=
 =?us-ascii?Q?aY7teDqSuWImOglIWeCikCzFiLnBVih9Fd2M/2diVhTNuvvgYIibba+RrWrD?=
 =?us-ascii?Q?SN3NfUymnNZwYkdjEeZpIXz3w3VX8mra1I0Tjx747uUxApzZCZqx9eF9ROkj?=
 =?us-ascii?Q?sS96e7MqINGC+gNhDx5PkaArVk6M4a0jLTyYG0lK/0RxUsjZRIqU8Uwp/KeP?=
 =?us-ascii?Q?eqaPv+1oeH+mc13qMknBPl7lVYsu5ORDSjbh18Ec7V5uEQe5dQ93RwtINAB9?=
 =?us-ascii?Q?nJ7Rh8had7w85fytsMZcLDQe2U89R1zX1pZfauaiumw98auQKMxPmv/8vtn4?=
 =?us-ascii?Q?JEehhjtEF69G31c4WAYGgd1LolG3h3WI1kick7tTSKpB4GBuyR0xo5a6o8tE?=
 =?us-ascii?Q?0zYDc5Gm5XVOGtacovbvKtlCFQ0fI5CNd2UN+Ht5cZtJs3H7dq3OEt9NJt3t?=
 =?us-ascii?Q?lsV1Qcb+E4turVnDxcHqbwh+7bTaGQdPP28exbXvIqv5uEm1vxQo8YZZ6a/4?=
 =?us-ascii?Q?r/Zw6+d2mMfRt5RGSLzZjxl2pfj+q0DOUGXj1OE/xPoGPtUisaxLF/HlSEiC?=
 =?us-ascii?Q?dSLKGFS/nv2CkiBuEXdrOb83xvqPTaCf48au5izDecfH1baWB5lD3o/B8TqE?=
 =?us-ascii?Q?VhnzrsLgyqflS9xsgH9y3NOAg09l5wcixeHGaa/WwPvmqCUCMgYrepC7dKKO?=
 =?us-ascii?Q?xOw3MfyCiJpzHKMG8vx4Dux6VSTviboVluVWHorJzPz5WWfKzEfHM1ax8a2A?=
 =?us-ascii?Q?mRRcVbtk1LP1+FmBMh3agOFCaZoLDXoa3so32APVcfBTqyv0BjJTdAhajvby?=
 =?us-ascii?Q?kdqK56Tg5YmzeqQL5N/SFmuhsTLnjHkhhIxGNGCRGkAVf9XATuptSKG91rgy?=
 =?us-ascii?Q?XtY7bcRadEB1n4ItFtOGMqgnjU+Y7Z6XwEWvqvSO/MkIKTsCf0xpZNkvW37a?=
 =?us-ascii?Q?60oladV8RJshbgYlPA75KrApticviBnSROlCbDvySKuzGaSas519ntaxRTJO?=
 =?us-ascii?Q?NyOQQhbbr97m+QuNTDZoIEuWIl4dUaT6pYWH/KsY87saw5s9O5uB4x/LKe6I?=
 =?us-ascii?Q?rENpEmVuA7ssWsuTHGOzJ5E3sQ8UScm2DYdBasV9qPwZnndRumpmIzoui+hF?=
 =?us-ascii?Q?b/5hiO7ptG/lFeq6fzRyKmCycz6r+E7AL1UtEoJH7ClvVyCA7yL13dTZNb77?=
 =?us-ascii?Q?GOqn+yH4A/CVhNZR/jKLmpOuAtja+9BvcO8hNVI6vw2KsSDgSe3jomcigc2L?=
 =?us-ascii?Q?yR8cCff/KFZbDWNKDI8QSXJjC1dbbuPSpiDcEK+P36NcXnLwjokeIYUgRbRe?=
 =?us-ascii?Q?yLdTVxWIRoTk3PlnKdlWAkbPYO4gUpH4Pw+96llSxN96aJ+cXF1/fDri2/Ih?=
 =?us-ascii?Q?qO3fhSsfigfIwnPVCBJLvxDzcjSn4u1byVfKR637XxVdww4bBgJoeYWFKn1e?=
 =?us-ascii?Q?qfTNDYOl9usPrsJjgwqW1jsKCHNftp8UwNGkzmYgv/bL2FGTl4NkN/gzKnRM?=
 =?us-ascii?Q?tIjp0wr9pg=3D=3D?=
X-Exchange-RoutingPolicyChecked: rsRBOzmPlay0xRQt0plM4V6cotOHApqm8AFvoMo2cpBpf3TSxmk/M9AsRtOA6hgnHr/dCkMo/eUzI9xFDVJlxGCX74WsfG8PJBvPp+rlCjQfe6QdFWR9f1UwiTzX509Ah0QEU75iSCGekbEPe7dw0Hb2EPYyUszwOz0zeB/2v17k8bcFl9HZc3v1AQ9dfBjvkuwhoMiw9/RJHNWNhqpVd54iiixD2fegIcgUbH6VCOplOMfHf/P+OPtLtOZEPwJA955WuxtcxVt76mLYW9uQweG8WpXYFcDJW8Q5fBAxkznjzhw7bVoZ80eX2a1Dsq5LadUV4sRwdBczMUyRe3eQ1A==
X-MS-Exchange-CrossTenant-Network-Message-Id: c34772b9-6a60-4135-47fb-08decbe339a9
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:52.0763 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wNr0zI45+EEpqPPtyGZSyid2x6QeOgad9Iz57H1/YRv9+2g6TUXEj1ozsspOPo7Pk6niFr71QkR9n5mRXaxpzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C68736951AC

Pass the link_caps pointer to static functions in intel_dp_link_caps.c,
as it holds the state with the relevant information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 37 ++++++++++---------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 43427e7cf422a..fc1061149ef2e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -118,10 +118,8 @@ int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_cap
 	return link_caps->max_lane_count;
 }
 
-static int forced_lane_count(struct intel_dp *intel_dp)
+static int forced_lane_count(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
 	if (!link_caps->forced_params.lane_count)
 		return 0;
 
@@ -129,9 +127,9 @@ static int forced_lane_count(struct intel_dp *intel_dp)
 		     1, intel_dp_link_caps_max_common_lane_count(link_caps));
 }
 
-static int forced_link_rate(struct intel_dp *intel_dp)
+static int forced_link_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp *intel_dp = link_caps->dp;
 	int len;
 
 	if (!link_caps->forced_params.rate)
@@ -147,14 +145,14 @@ static int forced_link_rate(struct intel_dp *intel_dp)
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params)
 {
-	forced_params->rate = forced_link_rate(link_caps->dp);
-	forced_params->lane_count = forced_lane_count(link_caps->dp);
+	forced_params->rate = forced_link_rate(link_caps);
+	forced_params->lane_count = forced_lane_count(link_caps);
 }
 
-static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
+static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
+	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -243,26 +241,28 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 	reset_max_link_limits_no_update(link_caps);
 }
 
-static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
+static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
 				   const struct intel_dp_link_config_entry *lc)
 {
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lc),
 					 intel_dp_link_config_lane_count(lc));
 }
 
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
 	const struct intel_dp_link_config_entry *lc_a = a;
 	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
-	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
+	int bw_a = intel_dp_link_config_bw(link_caps, lc_a);
+	int bw_b = intel_dp_link_config_bw(link_caps, lc_b);
 
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return intel_dp_link_config_rate(intel_dp, lc_a) -
-	       intel_dp_link_config_rate(intel_dp, lc_b);
+	return intel_dp_link_config_rate(link_caps, lc_a) -
+	       intel_dp_link_config_rate(link_caps, lc_b);
 }
 
 /* Return %true if the supported link parameters have changed. */
@@ -333,7 +333,7 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 	lc = &link_caps->configs[idx];
 
-	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
+	*link_rate = intel_dp_link_config_rate(link_caps, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
 }
 
@@ -414,8 +414,9 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
+static int parse_link_rate(struct intel_dp_link_caps *link_caps, const char __user *ubuf, size_t len)
 {
+	struct intel_dp *intel_dp = link_caps->dp;
 	char *kbuf;
 	const char *p;
 	int rate;
@@ -458,7 +459,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	int rate;
 	int err;
 
-	rate = parse_link_rate(intel_dp, ubuf, len);
+	rate = parse_link_rate(link_caps, ubuf, len);
 	if (rate < 0)
 		return rate;
 
-- 
2.49.1

