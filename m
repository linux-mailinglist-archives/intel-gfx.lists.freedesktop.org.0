Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBIHB1JTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC5861C9C8
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120971130D4;
	Mon,  1 Jun 2026 09:39:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B2yPbNLA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F951130D3;
 Mon,  1 Jun 2026 09:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306767; x=1811842767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=PbQ728mIsySNKFYD7VS4HxdRX68hGDW2rS2C+wWdzKo=;
 b=B2yPbNLAmUXUtYxuCqg+kVqixCb7oTuAjrBw7rqTKxtpRmGs5AXrm/w8
 7Ea84ewxFK+3s1Ykj9oMdxtPsGqfbt/y+be94Ef3K/DJ0SksvhQ/tKc6l
 rLwn4kG+IdOXpuOo6efDuSCeJwgeCq/iJwNRImRl0WbKNHohjcqRS/S6x
 lyBAMQpAsBSFp5/SIUDT8ibdI66YJwloY+/e7osTM9JM2laTNYxuAg5Ul
 SHq2/6jK9oMt+yN4DprtTvL9nQqNh+hRI/CTzGxVlexoO/Ns40sEzJv0c
 pRzSf5INi7Qpl60dXqCi7IY8h6b2DcvK5PjVUfdoA1lNNLhcBpDROmTlm A==;
X-CSE-ConnectionGUID: 64UHdLBrSbm0zKVOPy1I5Q==
X-CSE-MsgGUID: RAcBH4z0Rp6hE3KjUP9QEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094054"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094054"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:26 -0700
X-CSE-ConnectionGUID: MIQwwN1aRTq52MSCSr6WxQ==
X-CSE-MsgGUID: wwRAUzrnRBKFUNC1C6BuhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160615"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:25 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TrFCg/PIZminlpyZlsyf21V8CFIiXfaPeQ83ozWxpXAtCBTDliSOhHROLCph+6/h7TwPAylarPpB2GKkpvsTNXYDdr0KnO2axzuyz8qbsqQqpCkw3o3wi9rI7OKGeiHBLkxOjm9UkH1GyGkJCaAcTTr6sp7u49r9E6cIxupZwZVg+la+Ff6a9gjnPe6nk7YPxZPe25EpxkoJtthYDyjQGZsdTB5RjiilKosiZc04LptDEUPeIQeIMv2YaPgibV0Ao7lwZ+GsuE1p5SgZIahjygX9JRM7wcJE/hOq0X0FsOFjALTmLNOtAL/H9V4HMha7+zus0kGkuF9ACCsaoJLslw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BkvpxOra2dEph47v7zrZdgNKT01vetWbNuo2NehtibQ=;
 b=xkjucqXHBi7L+4k2BBYWd5WxmPKUGm2NOYroBjBtNPNLdH0J+GQ980YdcaKfew2WJJG+Ri6WoOw25ELBV23Z9mjYEt0g/sdzBIUykK+XHZ+CxrtkcUli3gbtPHj0QSlwr9PMwHumNyLEnqs2yrvfh+1nsxS+eyMLUFBIE3tUHEfvQTEI2y+sSZORCubjr7iJeLrdXJ24ttXGUiw7A7gyb3GdILbCcEhlM42bjHaWDdEwMGDIIXKx+4w2GosqnUUXfogbb7zqy1vjdAygvItcmS0COGykKw8IgT5ts28m7/TyROOjSOr/in4u5SQrMEuMNSGW3BgB/2mNSYcY9bqzoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:15 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:15 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 15/22] drm/i915/dp_link_training: Track link recovery state
 with an enum
Date: Mon, 1 Jun 2026 12:38:28 +0300
Message-ID: <20260601093836.3057345-16-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 1dc92ddd-83a8-42ca-f69d-08debfc1a4f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: YNCGm9u9O6kKoFxso59lijRRyCFZTidc3dUCqtKD6ZKK1J5D5F51t0NbUPFOnABx7wjaNWZ31V9P3iU6Cvi1VNiMvzb3EOX4HBAxW75O7vJeYvMUqvuxt9oMRLUgUIlqbunzLDbVxrRBXp/NwxI9ELKNBhLmrYpHOD8eBKXbqklPZH+i5rNwfz/WL0300HXGSD3kXyxNA5uswz2WzMIAe5rcGRHGtP0fKESCXTfK7irjirlWbyt/8I42ZExHuIjuA4yruJPe0wg+Rh7NX32Z4O4shqzAoTulz4RHWaDR8b+Ge2zwcSoRHxgU5LEd7VRaSPz2pMyrSlJANPZFmB224/OW0mIFMEUxnvahIlxqgbDAWWJ1NiEQBEoGqghqzpJ8EkUheeJBwxZi0fUP6UIpfIRpXK1YwoCT2SIIw5ROOEZ1C+AZpc+w+oi60nvrhW/5OfpRYv44zSWYPAEInl+ADuO/lOZL80FnEKhy00eRzEvhYliJcASq9QMC/qTcjY0/OoIxCNpICJcFYn8aZQnZ2WT0zW1xSmk/jjXhaaNx8dPMexqlH3NGmXOBksHdwOIAJgfqFBru0fhYVjMA2KN7wZAivoMrrTQyuo8uInxsB1QXZnFhEurO2bebjJ1B96z7LBwap3ivUS74uW7CF9ADuzJ0prD14v4YOyLjGVFppU36saBIc+TvtXRb7/U0lYjd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?C1dgWexOlyZtH0ZZUIRJF55vHHznfAaa4C5naP9grec1YjBalCAanXIvhZFE?=
 =?us-ascii?Q?2i28yyhsNVQscx/rIZsiEZeg8DfLo9xPf36rbFd8jn4rI/8tz5t3zQw9QLTS?=
 =?us-ascii?Q?QyxqN7J+vBtcb0hWnD7Sv+SDt3bV9sIgwvkYK8f2Jr3eNrHHaPNNjEO+PSFY?=
 =?us-ascii?Q?e7xXbeFHhL3m191B/aESo0Y95THQt/GKtUsT+2JPGmAFsf76JQqbyrl2Exxn?=
 =?us-ascii?Q?jTf1Kmh7woFHNlS+j9JQ5xgnNFLFOhSQy92FHvyey0uxxjxeA5G8BWFeUcA/?=
 =?us-ascii?Q?E8MmI5ejrGNyVCwMVPDcEPX1N8jmuWEASFtRpkx2J1mMUisvcVvByDdcqC4a?=
 =?us-ascii?Q?GNMBZdDEeFtT+9FzTUVCCSQNh26egNPJzVFklR47vCZ7W2ICLWt9HCJU2lUz?=
 =?us-ascii?Q?dpUrTMg4DkJ6Nh5Sv3cY2bMQs1efIzF1qlA4sR5fra5zXPyzUFTMPimQn0mK?=
 =?us-ascii?Q?E8AUr8+eYu0VcFw29Krk1Xw/WL9NJBZtbx3ZEb9DnTHsBx0T85lKyEOjJ5N8?=
 =?us-ascii?Q?AeBBs5WSr3fu3iDY/L4z2oHfbZOeSpfn8p2A3spOP5Ym7qmnK3ZIjqxmi1rI?=
 =?us-ascii?Q?/L5J/glwLs/Z6jT8jaHRN90XOz56YZXXxJemIPeIdbq0m8c88owImOrqMfyZ?=
 =?us-ascii?Q?ZkO8XfTe+0gFllbN3nBF8IiYOc22VN04qTcbgrT+uGlY9dMv5kXCJGbBbS2U?=
 =?us-ascii?Q?yo+yXr42PTiNe3lo0lfFTHyA5Y4lDLulSCKf8zBtX03iQefdsxCYv9GAvl3i?=
 =?us-ascii?Q?JNLN7SRYQGmSsq0MBljy/9yCzhbpGr/xxm5exQDJbVqZbk7DYAqBV1a/gA9w?=
 =?us-ascii?Q?dNo/Tq2JMAmJ/xENyNA+l5ttF64F1Tt0bSaRv+fsUK4q+8KCpMHxifuAaqoI?=
 =?us-ascii?Q?5o2lp0z7fK3YKh8B1PSF5yCAwsviSpxgb76097NtLvxFFo3a0Sn3uNsCs0Wm?=
 =?us-ascii?Q?QlxX/GwHBJx6bKvbDTCeei36qXV4OxIVtY7yOSowP0kNhzv+2Is2IAEQ4Ie6?=
 =?us-ascii?Q?f/Vr2Q13LxUKWeKn4Zqv4OdAAeoPrPIxTyFdh8bkWyFnfnpW3v36aP9kig5T?=
 =?us-ascii?Q?tI9oesxWhq6+j1d83kpBrCJQZjG8zEoCMEjkJoouyTCQoDifwMBx+zNpZ75Y?=
 =?us-ascii?Q?EY31PlVGu0eABYbpkyHiXF9UP6uj8KF9n3geId8YyBkG2YZaS0F8DKeuCOBX?=
 =?us-ascii?Q?ABB4yREx/mqrKSJmwKbZEzTgvZJ52d7jDKfdXh1MdbipTDEgXM3ItCoEf0rL?=
 =?us-ascii?Q?VUeNrL7vwbJJhHuff/Xe4+Lg8LLyujIQ+jqx85o1G5FsfhfJ5seUX9hmAiAs?=
 =?us-ascii?Q?x9t7zWQU2N1ElCERokL+m9AkR2e5VVARMup1KM7nVPLNLllMQYNI+mrFPlRe?=
 =?us-ascii?Q?zJn11xh7SLXtNtfj4bqdafWVIy0mtNdttrD0gVU6t4tzQOt08grn8mgNsx2J?=
 =?us-ascii?Q?1mEE9MKtqfxqdy5ysoCkdyjvLhzEbE4wIxrTpb5mWZWG6JqIiHOcDjwWsBIK?=
 =?us-ascii?Q?SQPBQSysDJdXaS7bpiEZtK2ycIjownzEW2b3IOvvancD3dhFof7Xl1N7+XLT?=
 =?us-ascii?Q?DbvTNzoCGumJERVQAXzxdcmw6lHZ1bo9sNrigC2pDKvYl3KzhJamJZ7xJayC?=
 =?us-ascii?Q?lIlmJhiURCaOoejuM1qmd7mf/tP5QRVfPRLHIZW9L7CD9+yKHJpZEBBRbiDu?=
 =?us-ascii?Q?MPuFz4Yi/2GoiZs2so2rnGnLDO75ot+Ug2QXHF9dIbMBOi+U5O+73HhmUS3W?=
 =?us-ascii?Q?nKVmMDs8dA=3D=3D?=
X-Exchange-RoutingPolicyChecked: V1qYKNrd4g1KufjXAX446dDd7xa4SW8joTSyDCb6cmBibtAoKVwJ8YLCnf8hCqPLW38fA6Pssdv0ijhorqB6Vo+fr8Kvtrg2ImUCT5jjuNsCzRtyZNiGjXGtUibZla0oHpLs6i4Bih3VEp5gZx/wkpQp3KMp6fyipVFt6Z1MIuN8LhOxTXARY6ELCA/87RD3ZmFVjyK+l/4o6CprgTsgx+VfiwTVzIRNYIJVLTbkZd9TZX3VrF4A+ws6VitFxrtlSnNxl625KmaNe78+MDmKFiFKeEdfiux0d5wl1h6l7LcdMJISIa3ifTumnr/sCyB1su2R69xXAfQfsyBR8HGZIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dc92ddd-83a8-42ca-f69d-08debfc1a4f6
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:15.2236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kHQS1wq7zTaNjvRZVvIfAEbOiZVCfZG3HXWlMQF55FoU1V1TJPQnUmotxPM6q6JppBYIU3j9OlKbIyGK+6ZGjA==
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
X-Rspamd-Queue-Id: BEC5861C9C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace the sequential link training failure counter with an explicit
link recovery state enum.

This makes the recovery states and transitions clearer: idle, automatic
retraining pending, and automatic retraining disabled.

A follow-up change will also move the retrain_disabled flag into this
enum.

v2: (Jani)
- Convert enum intel_dp_link_recovery_state's documentation to be a
  non kernel-doc comment.
- Compare against / set enum values explicitly.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 72 ++++++++++++++++---
 1 file changed, 63 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index dc1ad0fc6bd8b..a326e9803f2c8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -62,14 +62,54 @@
 		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
 } while (0)
 
-#define MAX_SEQ_TRAIN_FAILURES 2
+/*
+ * enum intel_dp_link_recovery_state - LT recovery state
+ * @INTEL_DP_LINK_RECOVERY_IDLE:
+ *   No link training failure is currently tracked and no recovery is
+ *   in progress. This is the initial state after driver initialization,
+ *   power state transitions, sink (re-)connection, or after a successful
+ *   link training.
+ *
+ * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING:
+ *   A first link training failure has been observed and an automatic
+ *   retraining attempt with the same link parameters is pending. Exactly
+ *   one such attempt is allowed before switching to userspace-driven
+ *   recovery.
+ *
+ * @INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED:
+ *   Automatic retraining is no longer possible. At this point, a
+ *   fallback selection is made and userspace is notified to take over
+ *   recovery, performing modesets with parameters it determines are
+ *   required. The driver then selects a link configuration from the
+ *   remaining fallback configuration set. Subsequent link training
+ *   failures trigger further fallback selections and userspace
+ *   notifications.
+ *
+ * Describes the link recovery state used by the Intel DP link recovery
+ * logic.
+ *
+ * See also:
+ *   - link_recovery_autoretrain_pending()
+ *   - link_recovery_autoretrain_allowed()
+ *   - link_recovery_mark_train_failure()
+ *   - link_recovery_reset()
+ */
+enum intel_dp_link_recovery_state {
+	/*
+	 * Keep the enum values ordered from least to most severe
+	 * recovery state; helper logic relies on that ordering.
+	 */
+	INTEL_DP_LINK_RECOVERY_IDLE,
+	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING,
+	INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED,
+};
 
 struct intel_dp_link_training {
 	struct intel_dp *dp;
 
+	enum intel_dp_link_recovery_state recovery_state;
+
 	bool retrain_disabled;
-	/* Sequential link training failures after a passing LT */
-	int seq_train_failures;
 	int force_train_failure;
 	bool force_retrain;
 };
@@ -1267,7 +1307,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 static bool
 link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
 {
-	return link_training->seq_train_failures == 1;
+	return link_training->recovery_state == INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING;
 }
 
 /*
@@ -1289,7 +1329,13 @@ link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
 static bool
 link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
 {
-	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
+	switch (link_training->recovery_state) {
+	case INTEL_DP_LINK_RECOVERY_IDLE:
+	case INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING:
+		return true;
+	default:
+		return false;
+	}
 }
 
 /*
@@ -1307,13 +1353,21 @@ link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
 static bool
 link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 {
-	if (link_recovery_autoretrain_allowed(link_training))
-		/* Move to autoretrain pending or autoretrain disabled state. */
-		link_training->seq_train_failures++;
+	switch (link_training->recovery_state) {
+	case INTEL_DP_LINK_RECOVERY_IDLE:
+		link_training->recovery_state = INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING;
+		break;
+	case INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING:
+		link_training->recovery_state = INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;
+		break;
+	default:
+		break;
+	}
 
 	return link_recovery_autoretrain_allowed(link_training);
 }
 
+
 /**
  * link_recovery_reset - reset the link recovery state
  * @link_training: link training state
@@ -1323,7 +1377,7 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
  */
 static void link_recovery_reset(struct intel_dp_link_training *link_training)
 {
-	link_training->seq_train_failures = 0;
+	link_training->recovery_state = INTEL_DP_LINK_RECOVERY_IDLE;
 }
 
 /**
-- 
2.49.1

