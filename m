Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HNHK0RTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD0161C973
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7ED71130B3;
	Mon,  1 Jun 2026 09:39:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Erle8vg9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF2FF1130B3;
 Mon,  1 Jun 2026 09:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306753; x=1811842753;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=UiuOQBUjLbMzPUC0g7PZhnu5gwVAqXsmYEKaw17sXrQ=;
 b=Erle8vg9AkkU8fGvNWXrd7U0zl+p2xtZIvTm2k7HJJw/4HHeZXyyS+Tt
 pXhu6N2A1Bh9+Mo0DFgJNcE35mRQ20LX/xldotyx7Xhl9Og6exScLqTZV
 GY8MWjDFs4t2KxsdbIcKzy6jPYNB4f557ZZ2RA/rQKwuq+8RcErcJmPbm
 Sek89mi9QRpM1SpIDK5yuSBUK9pUorogEAuiuaeyV2CaNpPR4xxN0krbD
 L4v7ELLZ44/rbJVk/ZZCD4JkEomyx4y5HgadQjcePxDLLBs5OaUDzP/z2
 H+mS7+5ocq6eXrz2D+JlLKQgUzh8dXuUirMdLmudd0kijqOwB1z1CfNKw w==;
X-CSE-ConnectionGUID: ud9YB2EiRlaCKEc2LTjKNA==
X-CSE-MsgGUID: Q1YX1QBnRgGVPGmcl81QGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200580"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200580"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:13 -0700
X-CSE-ConnectionGUID: IM+pxWWfTIeHT0oeeu0WgQ==
X-CSE-MsgGUID: NgkHmI/2RGWn6BK7TJObWw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:12 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cx0gZLnzzf17+BEKqFjkNN5bUK8wXQVZh3+xbdliuZOhZ/XCJyc/yMw3lDfi/yWkkdm/sYjH9H4xSl0UJdnjg77xNYH06HXBNu6TH/55lXesezzteKuos92HB/TS7qN+lPxW4ZjHBI93b8XicyBxxn/yGx5hiD5dMZVlRUwEmwyMaa/NIJOZNI48if+2KbZyjcPnKgPe9CPD7a117K+U7moUty2mENDf4nF7eXo1x6Itjbe3MpvilkVy6odWoidnpvpGggRsAs8SYsqnlFtssUOKFI8aDkIR0RyBiOWUlEz2BHBvnVfMu6bMsRRu86Idh5LpQyq89yb0XNMVKYOWnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7JhFzYe81MFkcqLC78fUOzmFsYdHuXNCCUAWaHdyWsA=;
 b=aj8znHC2YY9+yaVVzK0+yDRooBzKqo606kNKAZ42+mSWRdY45kATu98dIjBWHvPDgYKs+/6ipbmqxSH1RtF9dno3umh/oDum0sCmNJnu9oFaYpXoAV9C7ieBtQAA1hDFXnhu/CZ+kR/0hA6+iqPKbIkTlrV76p99+s56F697hfXi/D6VhdUvgOgPE0VOIgn7NhyZj5U4nQRt16Zu8/sXFchtqQiI++2zkJowEz0tVqzaHEO5YL71J7ZF+B1dinERuoQ1xv4L9qPFpiqqZD4tfNlKUO2DATlgM4QNe/GYkALqyQx+jGcS1T8ag2lyPgog2Ru4wXYoTgtgc6N89B3fcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:03 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 06/22] drm/i915/dp_link_training: Add helpers to access
 force retrain state
Date: Mon, 1 Jun 2026 12:38:19 +0300
Message-ID: <20260601093836.3057345-7-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: a4be65da-8259-43f9-8207-08debfc19db8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: vADDrq87fGh3pJB0NhCvJ/ro9hVpn3V/+RDUXqWXIq0eDYspNMSZjPTVbXRKZcD6xKMH5n3voALQCc9c8dbHKRwo7RGeusX3xayX1n6/4EabDRYezC+vlGFzlfnqoCp6L523M0+n8pO6d+R8XpYrIBZvWWFIrLU6VYaHmMD40oWHMK5XXcyklEHNytbNZDUaeA5Wiotn85giZJ5yjL5lybvSeC0l6hwQcDotTwNNwnSuDYuyTNHStKS5qAY/6oXyyPRNLWxqZ3uubPlDQYtkXNCDMsrtvPSKfdQ7DOaoA8qy1X+qTz7hjKnmFEnFXoUVnReSU6Zk3cHH8cUErQDeVnWWo8JCpTGvZ5iFMsDC78F4b6lDJGYH1ZtR2aQznObWn3arB3jiX+S/mNDbEV7Q7uw3x/5ZaITzsltMA0n9O/yL/TLSWtaxsUTX3brTTXDuWlIxt/+dUeXP+ddk29dT+MzkBZs4iMqfjjQ7RSXqoAiut0zL/3PqyTFTbBCR8DwhGT1WdzR7n3d3NqH6w9aSRZ6xfBd71W4PbyX+5PM+LZCqkqpauRKDR0Ns2diYSnBbg4QnSjVmhEFJfq8kzVmuxkIoSEmpsFBH/RjTJ1a+K5AcAho2+JuyfzW/0kwTn4U8YSG+fyPQc9UI9IROsfz+W0U9teW38ZmxfkB58ue2SirMQaS9d9vodV6SPq6JifcE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CZSFtHSK1RW1EQ70mKtc4wr8V1ysLuw2DMyfAuQlXm3+Wd8WBeHm4A9GF2z5?=
 =?us-ascii?Q?F3YnfEC/47Q2UayGosMkHdMZiVtV6kHK8rR+JjSSkjCLhl2NJ/zQOZtv4kHI?=
 =?us-ascii?Q?8cAN4yqQlFLGbPAnrcJflL0kZbnBvLYoZtxSlLmSL5mxkWkqXdp++XF/1gWD?=
 =?us-ascii?Q?vTj5voZZI/lt1O7aOUftTvYrssijCz7F1TMU40/zUfNCUE2ZVyaxW809TaRD?=
 =?us-ascii?Q?1cl9KFeQSDF//FTv4vSJOVmFdIacTMydB5HK+iTEsq3BMqTra2ZZ3CZXFV9y?=
 =?us-ascii?Q?B/0nfRldq9YRaqgd0lGpbLmUR11BceohR+ciBZvRRc/SJvfx59YNvnOz+uxW?=
 =?us-ascii?Q?K1oXFTRhCeO81QcNzmcKFSMCuDJNH0lRExqylKU/SnFXWNe8aVKHpS4czJ26?=
 =?us-ascii?Q?r3Pcdsx3OrvibL5g1pJDpfi0TB4wjRMTlnotXbfIUJBqcimHMckfMoZUf17G?=
 =?us-ascii?Q?sOjUazNHd+THLbUk2RPXkVQvAouEThfaIXXKtnbPh+9GIHYpSHAktYHWTgQj?=
 =?us-ascii?Q?J9xUKY346xo4U3KaFmrgVvrZJ5gp1O0LghJCiG9SiiBpbBxEi978/rV/bkxK?=
 =?us-ascii?Q?37uLygXeL1B9m4rl48pTre0yKguBtWfslRxEjrAr69On63Ks152fJ3zMNrgH?=
 =?us-ascii?Q?TtGFUnaLE8ADJPHW7si85vH5j1grLTSsrhP+2HzZIRoO7bmkC0P4HoiNwBTW?=
 =?us-ascii?Q?93HkAablbasStc8lPLwyzHSOcrNaFjfFH+nKtRAZLUxCoTycoDij9XAZtT0u?=
 =?us-ascii?Q?dp3hHKuAOTg+nbcDtAAR42S4T2NgZ2G+fLU9iUM3AIxo57Mh/2fSaRQ5SM3W?=
 =?us-ascii?Q?6OL3ZJSguQAhBQPexfWAnfzPKxKLYSupc0dHVG5BrGj8n+eRZB72WDnH+WK7?=
 =?us-ascii?Q?P7WTt//oxJIOQJUyul5sYtRw4IprMoPDSLo3ZtmikWlzhl8L+hr7rq/GMYNB?=
 =?us-ascii?Q?eakJR+mpZRWQxBBusVreyJCNuwmtgNpcb4RyM4SB+TdAgG2TfONHC7VFB+xu?=
 =?us-ascii?Q?WMTbo1GnOBjQl2KRCvRDpsoEQsIJ25J3EI8zb+lc2AN/ezoI2Tom3837Sguc?=
 =?us-ascii?Q?LM4VCdZT6LrgI7A6eYulR7Edrd/Iw87IHvgqGSquzvqCPRQIAm83vrBaPnow?=
 =?us-ascii?Q?NWaKxbVBsr15HatEnxU4O8S82koPhbEQNx/hG2n7salfuHhM7mG+Rw7vJ5cw?=
 =?us-ascii?Q?nHKDOnCYGok0O8ytNGb+h8x+CC6bGfw88zG4ZmmG1MdZC1Wog76inLZ4jeP2?=
 =?us-ascii?Q?gA28aSVZnwCEOXrFn1C1V2Fs+lctN4H5bMUNTaaUirfnOnqcv2sbnDuPxXG+?=
 =?us-ascii?Q?sDDUfK+NNKcy3Z2Y1Qsjl3/0kY5RGukwFxQoCPF61bmCZYyusiYWfxGTrjVl?=
 =?us-ascii?Q?k4LmmxUh4BdMBVEOSvWgf1igT6RlODtwVJTYJ/qY+AnGjJB8q41UNAS9w7iZ?=
 =?us-ascii?Q?jzYDKC9fh6/tjWE/yyd/riqLK6Qdip4ggdwfwrkn2zajes2/waJie7lDnvxG?=
 =?us-ascii?Q?dYr41WsKtdxptLp2/33aL5ZRD4qDOQXieJwRe729Qd61OBkjL7suc8kcMkEp?=
 =?us-ascii?Q?UA6lzGURRvbRqY0LNmi5skeuAKDBYpReO/6uoguVp9Js86QPfWTT8Ih2oKuN?=
 =?us-ascii?Q?4xri1eSH2mLH/Jkk5w0DCupptDCYkeVspb+y8RWmch0/XLAPCLS6Bt9MIRIH?=
 =?us-ascii?Q?d59j/Pibbtyt9AxLirU+egaeqMTWyBkh6p2IDpL3WW2w+pWqJ1pZKEqRWbzt?=
 =?us-ascii?Q?SoWdpCjd2Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: aejlGibYZJSoNlbl1mzMQaI4rZbFT0A1g85yQ63MN6TXYh4l0xgcrJmXE61OJWylWEJs/75nkaJxYkL425wN750FIP254F8XMoU0bry4jqmb9mXWHVxDmCloTsFsxJYiPmP6AxakxciSg3zv47BEmkrOHiWBvYJPcI9xHqEK/aSAdFDpwUVpIn/BHz5S39qBeeLryLChWQGaFPkckrF406mIy+LdHvoEM53jkNbu1L+Hkee9Q7CwQyo4gHA+PMyHxXB8ZdAhqjDpi8kaqrZXU6Pu9n25BFZhcxJA4RNfdZJNiYchZbjos4fFwldQlpicVbsD7Ldl6NGHSfITSSGQPg==
X-MS-Exchange-CrossTenant-Network-Message-Id: a4be65da-8259-43f9-8207-08debfc19db8
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:03.1302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pp9/JDVdisGH2Rob/8R7UvEovZoL2at5nkD9rQmZvGhZYw85XvUQWNAMd8ioKPgBoXJkIBguxPdxsyXWKpRLeg==
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
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5DD0161C973
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add helpers to get and set the force retrain state in preparation for
moving the state from the DP struct to the link training state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c | 29 +++++++++++++++----
 .../drm/i915/display/intel_dp_link_training.h |  2 ++
 3 files changed, 26 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 980659f5ace6e..b6b5586ea0845 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5682,7 +5682,7 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	bool force_retrain = intel_dp->link.force_retrain;
+	bool force_retrain = intel_dp_link_training_get_force_retrain(intel_dp->link.training);
 	bool reprobe_needed = false;
 
 	for (;;) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 4ecc00b7c9ff5..831dec86febd1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1944,9 +1944,25 @@ intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STAT
 	return 0;
 }
 
+bool intel_dp_link_training_get_force_retrain(struct intel_dp_link_training *link_training)
+{
+	struct intel_dp *intel_dp = link_training->dp;
+
+	return intel_dp->link.force_retrain;
+}
+
+static void intel_dp_link_training_set_force_retrain(struct intel_dp_link_training *link_training,
+						     bool forced)
+{
+	struct intel_dp *intel_dp = link_training->dp;
+
+	intel_dp->link.force_retrain = forced;
+}
+
 static bool
 intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_training *link_training = intel_dp->link.training;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 
 	if (!intel_dp->link.active)
@@ -1963,7 +1979,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_psr_enabled(intel_dp))
 		return false;
 
-	if (intel_dp->link.force_retrain)
+	if (intel_dp_link_training_get_force_retrain(link_training))
 		return true;
 
 	if (intel_dp_read_link_status(intel_dp, link_status) < 0)
@@ -2005,6 +2021,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_dp_link_training *link_training =
+		intel_dp->link.training;
 	u8 pipe_mask;
 	int ret;
 
@@ -2032,13 +2050,13 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] retraining link (forced %s)\n",
 		    encoder->base.base.id, encoder->base.name,
-		    str_yes_no(intel_dp->link.force_retrain));
+		    str_yes_no(intel_dp_link_training_get_force_retrain(link_training)));
 
 	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
 	if (ret == -EDEADLK)
 		return ret;
 
-	intel_dp->link.force_retrain = false;
+	intel_dp_link_training_set_force_retrain(link_training, false);
 
 	if (ret)
 		drm_dbg_kms(display->drm,
@@ -2376,7 +2394,6 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2385,7 +2402,7 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.force_retrain;
+	*val = intel_dp_link_training_get_force_retrain(link_training);
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2406,7 +2423,7 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	intel_dp->link.force_retrain = val;
+	intel_dp_link_training_set_force_retrain(link_training, val);
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 36ba9535fc34f..ef16fcabd6da9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -59,6 +59,8 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 
+bool intel_dp_link_training_get_force_retrain(struct intel_dp_link_training *link_training);
+
 void intel_dp_link_check(struct intel_encoder *encoder);
 void intel_dp_check_link_state(struct intel_dp *intel_dp);
 
-- 
2.49.1

