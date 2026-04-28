Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOboERau8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B32F4853EF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A827610EC1F;
	Tue, 28 Apr 2026 12:54:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NC45kWs5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E6110EBF7;
 Tue, 28 Apr 2026 12:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380871; x=1808916871;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=RB7tPz2a6KWuKhlpKUAymXzG3RUXIfrpVYI4skOfybI=;
 b=NC45kWs5JOsf4aEGFIoOxhtEafDbm2itAKnPtA6cUEsQoGFqLp9osuj5
 f/x7PWqguukmNgCEKo5Pl8I7Et5kdQYWNVhhF8U25IoypLQ7Quln0oGeO
 ZRp6uQqqKAG3tWZwfJXz6RJyoTpdVhiECLoe+gLG2CETroUPcAU2Zg9z5
 4ze/TzA5XHrub1+pZRwMRDeXY0RkdD9s0CskSBCEc8LdoKe1ha5E3EhA2
 woFDpK6gjf3aLIKuV5dv/RJMm2HWRK/LiHQzMwTEdRQ0iB+wO4OkzHYL0
 jgRE0argGSLqMX7ls61Il1QNE5RWcaM4hZXMT+u4tsq/QLOIOjixBa4HI w==;
X-CSE-ConnectionGUID: DC3NyoDfQ0GOlFXEOI0ORw==
X-CSE-MsgGUID: 9bj+AKwFT4eU4Ti3+9dxXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893782"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893782"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:31 -0700
X-CSE-ConnectionGUID: RZF9Vxz9SLuOZvrvT9QOlg==
X-CSE-MsgGUID: ejkUdUWgToWjkYw0oqasyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083518"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:30 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z00Wp1CSjJ/dI586SWD2lgQ6KX480wSdfEfSG+wGgi3Qbe/CP/91nv7UxQ9ZonReJ1UjrftXAazmxsxDjJ8L7Ln4ycJOgarQeW1DlInnsAkvbVxbuHMZ+6QTHW6SfPcxftpzfD5zJcpkuuStjpd1Ovol10q58QuSsgMIIftb3390xMQDukcAtvkwbtVOijlMNS+5RCwEfxHnyUpbopbHdLRYw23yyWvxXk9dBUUMbcqBMdyNo24t7UJVfcmQcrxDhlFcFjMT1Nfh0XrUYCojmKJrVTm9mqLegXgCZel8/eI3AwNUuuAxDiHQtVx38l5gYJO27iqLzqxqDAomZJhbEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uTa2V7B7Nnp2FzLZpG+gd4XWYeQ+xd67SFhB3Djx3ww=;
 b=S6NHA6FPRlBZkTdWnyRSuky1A/lL6EfZhsgtLTWA49rADcjvj1rAHbHCd+24KOqS5TZ+ysJccfLXz9w24zt1CBKa+p0ZFms572PJEUZsUUtZDfKbDbDzxf9vCYn0LL8eRfL++DmZOh9dvNCApiKv5yB8Fga9ElKywKpfLLxEgVJhbaar4uex5UvQYqXh1FYVMQNlFkdJKojc6TdzkdbCECLmPlwS8jFxW8wdfX0eh1TDBSfOn8qlH9qnm3a4WIN2n4EAmMAJVw5NBvj8sZ6jJ/X/pLdBsE+5yDEm8rtcJNoOWSxneeRC49gRwtGglHyCQ4OQ7gjOBsn2hbLbzkk2eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 044/108] drm/i915/dp_link_caps: Move tracking of common rates
 to link_caps struct
Date: Tue, 28 Apr 2026 15:51:25 +0300
Message-ID: <20260428125233.1664668-45-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 86f094ba-99a1-4f82-c793-08dea5253376
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: ImvXZHNiYSMZrqL/yytu/LjzSO0RKJCOsXkrXWkEgK4jAUWZ+2X+cjGxEOotRKix/txHTknzDUzte4YTiaSO0CyP6xBUtsJeAbUGS2LXMfFTNrEKvP9tSUjOpYgsW+mDDFnYNcE21inCpOLGZVPtCyghYhMDIatb/4bTqwj0EE14JN55ptWSwEOnHVZjhf5MN+5XX/0FvOvGux4jZ7cn3/EUoRKKgy6vOy8foaiptrUcDCG/v0yQU0U10JtQzkDM0rntpDcMVmaTByrPCR3FScN9ExV7Ve+KZlPw4APV99sOYei03zWhnCEKGf8P5QrMNXOHDYVMGWOvDQpMck4sO9V9GCQIXkKJOLhCQDU/cip0/TPvh9+jXDBJRqFkL5zh/S9YEebl/vK5NyuaaYDpmz7oawf0qZcU1y+IMKig/ypt2FOzKt4PQeSHhKOd+uMbMEaGgLzl37IQNbatTrbvwBdE5xGPFwvroDdLUzyOTXMr4JhCqdpsbpqvk5152qtfc3/5yC7/C7MfKZiaZX2H7Qb+qjb9RL6fRjnNilzZfXLjIHtR5phckwiMgpfztSrxlctme++zMe21iOF1f7V/3a8JM2hMriDgTUdybG8F67LYoLp8ybIo3+VeCrZxeHhsaCckNfjzr8PDn8oTM/MYwcg2CZVgwv3uCWodWhd1UYWUbnO5WF+6qwQ4YXBFnR+1kF3Z+bub2TCGXsRWag+7nn/uynSWCqs7xZ3l11D1omM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qM/35xGEWdLOwNUf7CLJwGtBh+hGRLViP2iyH8X58pwnab9HeUMcX3C01WpS?=
 =?us-ascii?Q?r5xowHZbODahYb/szfMMhBFE4x3fCjAwyW/Q+KkV3OaTE6cqAJn2i6O8rhbY?=
 =?us-ascii?Q?ZocUjvI7Fmv1VoDJcU9dsGLh4gffaSEZjkJhSC299arqPfNu4OJ4qbC7hDVm?=
 =?us-ascii?Q?xYWhDfZfFr+mSBZk9Ru5CJBWirw4ndUwHP/kzJgK3o6+xU/eVuU5GVzEcTIL?=
 =?us-ascii?Q?VgYBKOGAL4QBMdA8MoqXUrm7SUBF/TzqNe2vp0GCuxF5H5t+/U1PW4mTFQZ9?=
 =?us-ascii?Q?xsCcB8XhbsBgvG8vGryz0BE9YROFmwoVVlBT5eREnTAUWzwzh0WoRv9EwBMG?=
 =?us-ascii?Q?/R6ZxMxgnscI/J4MjTE1MTxgUrFzA/SjnHb/d96erRUwIzJjJr02VULS+1rA?=
 =?us-ascii?Q?bg8BJYgL/gpNc9LbecAypY5NOQ0QLVzSA7z3rcQWSo7WOdlq2k114oHkzsM6?=
 =?us-ascii?Q?GscR4t2VCBGM4dfW5wqnN41e1JnJA4F798U4jBTVNqa1jXnFlkRx6vgveGow?=
 =?us-ascii?Q?fTFp+G2YXiRcNeB8fiv0vrCSYNOKpaXhjXMfcehTh5Dzkivn4u5zcqqHK9On?=
 =?us-ascii?Q?A3zjmp7frZGGW+0+0pTWxf3igblFk+1N1j+RTWYfuSfkFADks9xjtr6bSDBr?=
 =?us-ascii?Q?aOyDlxfNVKmaM22H3X7AeohfgZ79H4nar0by0sY7PpoI59d/LixaS1WTPmEM?=
 =?us-ascii?Q?mlC9bElfCFISRwR0e7fI3mw2WXOeFs1xraCdxOB59/TNMwooEi4TXSC+V+Y/?=
 =?us-ascii?Q?iWVXcftiGybOWAfKHQ0odHTEPIk7vgtnmmqUtEta18WxClzj/mpdUPXhFTfV?=
 =?us-ascii?Q?7h428NcrMtrWQKoJoTYIc23EkmjwzBRBsZIG221zJkN/y2RqL/4ODi0zS3LZ?=
 =?us-ascii?Q?dzV9BuuUITkcjQwtJ2OFMFFZjonFmL6S7pvFUlFsQiXG6TnAJk9kkbEQ5CqG?=
 =?us-ascii?Q?VabH89m27vlM0wL3UpIzRBDZ0xTOVCnSFrq41yqHOecnKbY32emKBV0pO45Z?=
 =?us-ascii?Q?9A+RrW8gDAhIfvh7jRD/qPJn9hFhuewSeyG9y/88UhfB8aq1V90JHUOjoxMK?=
 =?us-ascii?Q?VigNJPU/SyzkipQjqtG/RS19uEV7wELoPMQFcnV374I8iHs9fkxU1QXuq/uz?=
 =?us-ascii?Q?1kd1+Vu3yF9R258b8Tu/lZjG9tlgggNOSUuDRIT5JoYTlGAQRL2l9ftbAwcQ?=
 =?us-ascii?Q?eFCdPk/sCrLMCmcwO1tyiEbpQD/3Ggn9FY4P7/L0D49Ef8Zebh3NlHDUK5uP?=
 =?us-ascii?Q?gOwC/J1N2Oz7CHZJ+f3lhi4KTenqcnEkfC7Rj48OkiGUDCzZr+Bn6iUoct5f?=
 =?us-ascii?Q?J7u1ZG7TnXg7d/VHOfesZUNGriWkLCak+O1KdSxkYPei7qQpvdbGpxI+AAKs?=
 =?us-ascii?Q?rFbCzw4Ah/P99z2A9SHkwk3h+zR6heEFgs/6YWmhPFIYEMZg+nEIV13wic4/?=
 =?us-ascii?Q?vPxn1pvFl+leVSAvyq++dvBDmWyek1bxs0BlqwElQWMoTQC7tckBQmiUY6GO?=
 =?us-ascii?Q?9zxSKpZy+oNwT0fuhyGxmca6ozEnSz5QP1T0KSzWbpqWv4qJSHifvNLYxvKQ?=
 =?us-ascii?Q?dS61KG5g4WScmWYTWD1sLTOYGJsaIlyXgbAU3FD3f+cPZ5GwNLTdMXZk4HEF?=
 =?us-ascii?Q?cLx1wqVzv+hh94HIx2MnQSW0SLBN6Lfr6Y6aJr7a5Oc5SA+m9ra+yH19Wbd+?=
 =?us-ascii?Q?C/ZERkcQ5/a1+wtM3iGWkRtnuBYIvN+AnYLYJ7fr0+Ady9yMzRSN83zrsiEI?=
 =?us-ascii?Q?juP9JvAC3Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: Ujm5fz5lcPVhb+gDkBAkFzaqJUJPsvZF/C66lymDf+fNtQq4LsZoIO4sfCdID1p3oUuceZm0Y7cIdZn2l4LsA2297Chcuy26jeOCe0kngv5R1kJd8fHRDJqXGJG4MiHzXWe1IeD/p4PvQwIYUJqgPHvkjT5MeEwqmYsKBGLsavRNjjoGdvZEgkr3KjHfz0xX0rmTRvZy7Sw1ldgtupPxUR+fKnXUWE4AD98DWrGfev0Onx/17TR7Fm4NIYItn+9+AqXN3fpAhInyOLPVBOn2zTRFFNr+Fg9skT8ucjLqPmQTBSsX6g+bDWWAGW5XTpKcTwFEEgfJzcl7SewYFIA42g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 86f094ba-99a1-4f82-c793-08dea5253376
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:53.0812 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GqgroWNYEQXlTSz/NsvCMb7+YfmRA2iV2oxr0V9BrqAlxoFyvK77jCJgr/ihvGDVcYH8vwcMJLWMKaCXWimgZQ==
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
X-Rspamd-Queue-Id: 5B32F4853EF
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

Now that all users access the supported link rates via helpers, move
tracking of these rates from struct intel_dp to the link_caps state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 54 ++++++++++---------
 2 files changed, 30 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 97d2836d0e159..71cb45a2374b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1826,9 +1826,6 @@ struct intel_dp {
 	bool use_rate_select;
 	/* Max sink lane count as reported by DP_MAX_LANE_COUNT */
 	int max_sink_lane_count;
-	/* intersection of source and sink rates */
-	int num_common_rates;
-	int common_rates[DP_MAX_SUPPORTED_RATES];
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index c99fc7704b3e8..fc0c100835595 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -21,6 +21,10 @@
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
+	/* Rate, lane count caps common to source and sink. */
+	int num_rates;
+	int rates[DP_MAX_SUPPORTED_RATES];
+
 	/* common rate,lane_count configs in bw order */
 	int num_configs;
 #define INTEL_DP_MAX_LANE_COUNT			4
@@ -30,6 +34,7 @@ struct intel_dp_link_caps {
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
 	struct intel_dp_link_config_entry {
+		/* index into rates[] */
 		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
 		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
 	} configs[INTEL_DP_MAX_LINK_CONFIGS];
@@ -45,19 +50,22 @@ struct intel_dp_link_caps {
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate)
 {
-	return intel_dp_rate_limit_len(intel_dp->common_rates,
-				       intel_dp->num_common_rates, max_rate);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	return intel_dp_rate_limit_len(link_caps->rates,
+				       link_caps->num_rates, max_rate);
 }
 
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= intel_dp->num_common_rates))
+			index < 0 || index >= link_caps->num_rates))
 		return 162000;
 
-	return intel_dp->common_rates[index];
+	return link_caps->rates[index];
 }
 
 /**
@@ -78,22 +86,22 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
  */
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	return intel_dp_rate_index(intel_dp->common_rates,
-				   intel_dp->num_common_rates,
+	return intel_dp_rate_index(link_caps->rates,
+				   link_caps->num_rates,
 				   rate);
 }
 
 /* Theoretical max between source and sink */
 int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 {
-	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	return intel_dp_common_rate(intel_dp, link_caps->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
 {
-	return link_caps->dp->num_common_rates;
+	return link_caps->num_rates;
 }
 
 /**
@@ -113,10 +121,8 @@ int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	*rates = intel_dp->common_rates;
-	*num_rates = intel_dp->num_common_rates;
+	*rates = link_caps->rates;
+	*num_rates = link_caps->num_rates;
 }
 
 static int forced_lane_count(struct intel_dp *intel_dp)
@@ -185,11 +191,11 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(intel_dp, lc_b);
 }
 
-static bool current_common_caps_match(struct intel_dp *intel_dp,
+static bool current_common_caps_match(struct intel_dp_link_caps *link_caps,
 				      const int *rates, int num_rates)
 {
-	const int *current_rates = intel_dp->common_rates;
-	int num_current_rates = intel_dp->num_common_rates;
+	const int *current_rates = link_caps->rates;
+	int num_current_rates = link_caps->num_rates;
 
 	if (num_current_rates != num_rates)
 		return false;
@@ -217,7 +223,7 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
 		return false;
 
-	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(intel_dp->common_rates)))
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(link_caps->rates)))
 		return false;
 
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
@@ -226,11 +232,11 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 				    ARRAY_SIZE(link_caps->configs)))
 		return false;
 
-	num_old_rates = intel_dp->num_common_rates;
-	memcpy(old_rates, intel_dp->common_rates, num_old_rates * sizeof(old_rates[0]));
+	num_old_rates = link_caps->num_rates;
+	memcpy(old_rates, link_caps->rates, num_old_rates * sizeof(old_rates[0]));
 
-	memcpy(intel_dp->common_rates, rates, num_rates * sizeof(rates[0]));
-	intel_dp->num_common_rates = num_rates;
+	memcpy(link_caps->rates, rates, num_rates * sizeof(rates[0]));
+	link_caps->num_rates = num_rates;
 	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
@@ -248,7 +254,7 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 
-	if (!current_common_caps_match(intel_dp, old_rates, num_old_rates))
+	if (!current_common_caps_match(link_caps, old_rates, num_old_rates))
 		link_params_changed = true;
 
 	/* TODO: Also detect a change in the max lane count and max link limits. */
@@ -273,7 +279,7 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
+	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
 	int i;
-- 
2.49.1

