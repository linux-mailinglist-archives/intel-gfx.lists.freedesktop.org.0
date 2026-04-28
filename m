Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GD1dB7Wt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAF0485217
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E241C10EB75;
	Tue, 28 Apr 2026 12:53:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lGrTngvC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4846410EB90;
 Tue, 28 Apr 2026 12:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380779; x=1808916779;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=DNwo457UsiCyE1Hmnrt8ADZdJ5qjFhsDobAXNb5bVXs=;
 b=lGrTngvC8TosMuf+dPS5abVqJ0/VFufaHjSKawlLsgDOjKavIkZEErPI
 McEV2G+bvCVbTq7110e8kYfiO7c1aJpNprTOG0gBwwN0eRrT3f1CpFPO9
 AvrHteTq9EEEmLgafYp1DNcbw2YtibioZYSa7u/UMQozhqWzKm0O2JvLI
 efxhSoeL6INGvP/1kVhVB/1yFbDfz6kUvXPxd49xR3mh5VKZFhXB/zMI4
 5JUeHEKwEuRRAyOMK9kYIDEKcv2V96i9pokvKv5hZbjNkR+27F500Y5Ur
 X9j/7Wmk54Uiyw2/4iEap2XReT1nGTm6WPwLt65yMWPAyC0sbxmZdjhIV Q==;
X-CSE-ConnectionGUID: Js7Plt4vRBepSMq17238WQ==
X-CSE-MsgGUID: JOS6eUURR3enJ6lI6lO4bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398569"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398569"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:59 -0700
X-CSE-ConnectionGUID: 4KdGQn7dSvyYv1KtV1HvHw==
X-CSE-MsgGUID: ueOsbVCCQ/GPFZuKMrVfag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911282"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:58 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:58 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J2P4mRK2dEwHDZ2XxnLha3FaG9cj+2EDSk80rkbWwwmtezbYebj7Vjns/UAkIeOkTu5yTqhiwMOcxBgSj03Xahku14oxJaXKFqA+W1WGbgczELnTa2YR0nNaEH9b1ooiSQnoJ0M5YsY41/xO73jj4tkR1PRvmqEuDzmhDEF3v+ELOi/23eI7Zmo95QDkg9oKubmnCYKfzVelUwjjqo3v+nsWU8dIA+204nWEwgcLsMy1lrsWhXV5GjmjHu7qdh/OnblvukY542U2zqEyshHBZ33P3rRIAfz/JT1SVKRhL/6N2u/510pGM3VeaPCZ9cn6vhHAYRTZVWCPcNNV0MHcxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NWho35klR2Fkcg3jGc30Cq2ZZbMgIocvbbK/CY96N/s=;
 b=KJ21tTHakG+pAwOfilUKu9o5gRyj2Xa7ZDi7WjYZAms28ckfm/hVJvIDNQ5z+y/L65smkgnEBMnAWc2+HhlM4Mf+BzyAG8jd15OKH/FArGzSgloXYtRCmFMs2KTPh6cJo0ZF/8xtQLYpJesE7GQRemDIxw+pODtDUH+PF2Ub3OQYWEqQDZCPbQw8pVuXi95CGxz8daXzPyX4YPZw5uHhwvAtSJI+hPfSrAgu4lZndxKXL9DpHU6YfoSqwYZu8nt6yquK9jGKeiyifUW//CN2AGOen/LkROecKuev+h/OoTTHzRjFtlYpmU4hehy5pH8ra/3RNPxlfz/g8cHjZiKo3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:55 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:55 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 009/108] drm/i915/dp_link_training: Use link_training as base
 pointer in debugfs
Date: Tue, 28 Apr 2026 15:50:50 +0300
Message-ID: <20260428125233.1664668-10-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bc907cb-41e2-4156-3a72-08dea525112e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: YMj6p0aBnO15kK7HoHG7+wVL6wiEZuzGmM+eSX1KHxvqs4da4prbmeDOlDRCIdONrUwl0UKiX0yicLsr7B1YvxB5fgr56kXaiQBXZCfJAZ2MRI6iB9L7gOlXnQC0drcNKa29aNQgNE0jLU94VboadtOW3G14PML5QuuwCaZe1lv7kFWN9egxMUgCpkvJ9lACr3INa9TCspbgy5DDiIoADvVMiP0Exe/EAr+Va2kluce3j4hgZkCVrgKF9YtZxvEthbryNlmePuDeuRF4fnmEb50zDepzXAVcxoLgdcevYd1+RiCR86pAqEZwzyFeVnJ+R/q7xQ8HvvDYY+SxXUDL9urhUV2v/OnpjR6ilCu2wF6S8A2Lq60pBj/cMdlC8KHatGvMarA19dFuuDHbb8N1KGsDqRGQqVUi46fj3U8FRQ0u5LeTPwEtJSVFk91Af2lVzprcHGqeSwEUMiZReGlL4JZjHJW4l12p34/evCMx2VXafw7Um2kBBEQ46/KozlXXEVgfz2xaY4PPc3P6lkCiBkhon4EukJ7O2mZ1xQOj1XisRhRApfVK47t1d5RY8sxI4BtFU/bANFqgGq/J+3qzOvmJCBNcXnzNPtTGd6s2deTiOlp5e+C97X7Z+hRqJ/BvhynNUnBWjxmqJivqhXgEMt/AndbMHBlKIgI99y08PJyqZkH+3tIAY1c5rVPsi5/ELFQGaGJIX2u7/+RsIkuvIZ2v4zwFd9TAKDTr8PLgLpk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sTLZb5x7lWXclP15JkHIxvX9xkY3gOSbqS/nPr5WvWufGsIlR5mklHQFtX3a?=
 =?us-ascii?Q?XINTzeO2eFsU7wtK18/dWR9Zf+wB1CBaMth497XpNlYtZqAUe4kbB4aySBGI?=
 =?us-ascii?Q?lBYE1v+g8q1ABYdtLyxClC4zgjdeZXAXVT9+pxeaY7tItn9HB23/oWLPsjuO?=
 =?us-ascii?Q?DbP2Z4+kuqS6Yph8Uh4dpXPobNt7zGIiCT2yb8HSe2+sGyQa0A9dMhnfLMGX?=
 =?us-ascii?Q?iwAHY09nCRN/A4gAcufjN5qS3XlXge9+npkahlFzgMchin2eAR+hJKp3VUEc?=
 =?us-ascii?Q?HZCN7EV/0ogtIdIfp9zuzeRuLqHAWrtOHy0LSYg/FRuQpPgwSa9RF4wRmeIR?=
 =?us-ascii?Q?Oi3/7iQqxcyDQquiDalJXrEvpqZq691By7kcZALu5tkvUYqBXVCzbuJf9nmD?=
 =?us-ascii?Q?6xPNEUweTZwZdyUJnrKshSLuieNTuL7Ws2fuspBKdHDI2yWGN08vZzOIWtpr?=
 =?us-ascii?Q?SdnRt0YjprL22okQSyxnMJtQXG7npLmQN9ZeYUcigsXp7Wj40312TnTGiC5p?=
 =?us-ascii?Q?CyMmZFsBOW/n/GvGy6BRZD7/n/0HMoNMdd2rJijXTfffmMgZKtXzRj7mFyHj?=
 =?us-ascii?Q?0W+M+QPC6DjHTXluLv2GBTyV9xXxBFjjCK2vsh8lLgZqTsXcQIDZuNdnTdQ3?=
 =?us-ascii?Q?FAcpY/ffFRpsasAuEQDnC66ZEI0szNOGpx2zRfBSMpKehGuWxXc835hnCD3O?=
 =?us-ascii?Q?UvEJeEDTInRfzIrNSL2zWhfkPKsG2dA/UE0FsLvALvylRgUzjQQWZclO9OOG?=
 =?us-ascii?Q?UKTexxrF7SfDQGuo74EThxDc+LUFIkUb5xOGEpfV/CK4Y2ObMsLCOCDNegR3?=
 =?us-ascii?Q?4jW995rVrHmr03p+l9UWKq+Mt0A/bU/X9ermR/3imTnGoo1tsJl9fxXMTsnh?=
 =?us-ascii?Q?ZP7e1c1p7WkOC2es7sMHmJaQWc5jIeegRVFb1/HSQzPM4E3AegQ7JpVcW2qR?=
 =?us-ascii?Q?uGXJiRBKalDGEKJv0cpRrOZx6Rn1dfvWMve4uThGk+KUMCsL2hMRfox277HQ?=
 =?us-ascii?Q?eVVQwYAqcVOlg9qwKiLImrauD4fe7DiRYLDG16QNYJS/SngyZ3HLw6ccbQfv?=
 =?us-ascii?Q?twzXWMrpXMD4bBbOP5MEH+coNW8zKO9Owa0mfXskGlbSk3wpNJEMbVVavabN?=
 =?us-ascii?Q?C6dCB+00StTbaFj1ANOv1WNipeZeSrH74UoryNKdv7izRPPeEm+LemSuMYpy?=
 =?us-ascii?Q?TbNUNpHd2EnSYREQSvmMLpK1fMOiWuiRUNpPcFqYrT/NZ8tMsb0rYrZuPVOQ?=
 =?us-ascii?Q?xGOBqEeBJHjel0SJOqd/6i5tUew0d9kSSVgYzjSOPmg4vEDSoG1afvRss8ap?=
 =?us-ascii?Q?hKHi6mz1H590fWuGNLj6zLgFqJE/GJVhgRZkHr+gcgawWgomdN5rIPEJQd/L?=
 =?us-ascii?Q?WuCMsodlmhk5qmdB0RplVz/1tZ66Kgcvc0JHE66drqB/h99rVo8zfjGM+NOy?=
 =?us-ascii?Q?8PVzXQefpsGmDKHEmJOpRlxc+ITZL3A/r16YouNvNleKpWu+GGL7NVHBYkhf?=
 =?us-ascii?Q?1LXSoZIgqhP4R9ZpFV2r//pM1zsHW0wO+REetD0m+lXvFedGG6RVp+bp/llB?=
 =?us-ascii?Q?X109IL6meARtAVlfS2VftuKtBC+hCXp86ID7GVpxD8iS9ruKP8hcMYDKW5/l?=
 =?us-ascii?Q?xjatbtbjqSt4qb2gEuJBhBPf5/xWaNyeYILpAh3Cp1q1W2hZdcnLDVznl3Kg?=
 =?us-ascii?Q?72PZmdLinSOqZZO4HV+7XQEMS/0D2ZLaaL4IW/nR+0ShZ10Yn94lSqHerURm?=
 =?us-ascii?Q?8+mpuUf7RA=3D=3D?=
X-Exchange-RoutingPolicyChecked: bqqonT3nR8OUhK61wBr0vlJlOalT76MmjZswsfi1yKwi23rBjxh9o/Sp/47qwnpE2y7UMyW4SnkDOkvQ/oWBOEyvc50kBwJsFeS2+8LAtg1UsmMTacNtcw9BBReK9BYrJkBmB1BatCvqmin6N6TYnuhq2tg8YM2SOMLJCQ5wx6noS0sL1BdJiUo3Pd98sTxbo0XxD3wwRkqE492B8g6uSF0gWnUup4sSWgd10x2ET1dntjhtWt9/yYWcyLECZUIKIruvec1LCea5sR4QK0EBkL+XXy+2Xxu4g/O9+aA5Lv5rItFvux4kByTS2s4w5CfTty+XKppudgF3cdVZyt+ZXQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bc907cb-41e2-4156-3a72-08dea525112e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:55.5928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4JlSiHSBK69TQc1RK6FAZD6XQZrGdI8KWX3Z6LApri/PzoIQSh+bGB/+pXZ8R5JRbYUWByqukHXD/iZUHs2V7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: 7FAF0485217
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

Retrieve the link_training pointer from the connector and derive the DP
pointer from it in debugfs entries.

This prepares for a follow-up change where values exposed via debugfs
entries will be retrieved from the link training state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index c2f9af251b6a9..1762e507dd1ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -67,6 +67,11 @@ struct intel_dp_link_training {
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
@@ -2307,7 +2312,9 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training =
+		connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2327,7 +2334,9 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training =
+		connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	if (val > 2)
@@ -2353,7 +2362,9 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training =
+		connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2373,7 +2384,9 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training =
+		connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2398,7 +2411,9 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_training *link_training =
+		connector_to_link_training(connector);
+	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-- 
2.49.1

