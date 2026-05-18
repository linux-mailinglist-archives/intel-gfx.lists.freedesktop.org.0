Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QG/NKAb3CmpZ+QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264056B7C0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D454B10E5D5;
	Mon, 18 May 2026 11:24:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gLWtM4rM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CFDE10E5D5;
 Mon, 18 May 2026 11:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779103491; x=1810639491;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=jTQwHL4SoN+ptMWzX88OfK7gYGXnn/puWXmibmNuQfA=;
 b=gLWtM4rMFl2nhovIuWEwAQMMtBvAVsUH160A779A3DsxVNrHsMWJnl4b
 BEwPTHyYWQJ2vZTBTClIcqzm35lFhKqHgy9+fs7wPmWw7+NIRoZ0XbBoK
 xuSmpfKQXFKucYpllf7MJHd3X3JpVuxSa5H+jF/ez/WHm1V1vVbQIgjXR
 OVYD/wVdLWc4dksTAx6gmmbceolOLmx7r8viu+PfpjcdItBce+6Cxy19o
 appcCCSp3mWKAuUIqRfT/Y0loNkKVebZE/uslf9jsUoZGad+KZw9KAd7I
 9uVQZ2a5Zp6SiT9WyQr0UhXL6uOkLBBE47qdw8HN0B4EiRMaPITTH/hB+ w==;
X-CSE-ConnectionGUID: ftZDpL5QTvG2FZvzg0qa5w==
X-CSE-MsgGUID: B3XF5WTnRw2aTAIhz95h4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="79091493"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="79091493"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:50 -0700
X-CSE-ConnectionGUID: ZCecJzE/SwibbKafAajC4g==
X-CSE-MsgGUID: qXVGoRsUSmOB/HxhnEi+WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="241213075"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:51 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:50 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 04:24:50 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gQr1662UXdD/06V+1txRZ9JAdDt77Wm47p9PE0RJcG6yInQ7WR87L03ovTFUPZUtCddLwC3Akus6HlngwSSmxeeKanqgEYhxjvpTtwhL8KjvNFJkg5v4aoiEqHiFxwtfrLbXP4LYch6XTI+eDfIoD9gx0yM6H42KVqUHXIdlc3/+tE8Z0A9Zi9Nyyvave2EI/1DMJsWePTwNw8Xaj8Lu0ECMBPLIA/1c1XdU5zRkiiwXhAJjEQw/RwfQSXwIBUap7mYM+bAv/5Ea8EaMPCbP2nFmLWLhu9vxYcHshi4Chnmkn6PZutGu0WPA8Mtn1tzk/O0onXmCS/UINiUIi6uwGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDEnV6EvcJ+hzfMYrUu/gil+Hi5+SU8ZWw33+yOgL94=;
 b=Y7lS4+6wjC8ZqH3LOSFUtnrU/65Re3y0X8z2Y/qU6J/lfhmJbeOypVl5Pty3xP7szMzKqMBzCjFCpaUD4jSxLgw0GBBT2ohilvBsj42D+be8t0CUGNYzsYJNsr4dvozc7ThDe2cwq84UqxdIWLe/7njRO7uO2itt7uqpSriNpCqqAvuASSk0kmpbAD6jMao44tSDKSVQtwfiyab6mXbxt9D6h3NgcXmz9Z+m/cTWwZ8IknuwpICdvCfn/66phBpkzqAypG/oGeug05bwZN/724qCz7ZJbtWqmenMlBppWFVmXJYu8y8r8bvEceTNSVa2wid4KF1yublGQSGlZbSo/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH8PR11MB9508.namprd11.prod.outlook.com (2603:10b6:610:2bc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 11:24:46 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 11:24:46 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 1/5] drm/i915/dp: Add helpers to reset link params
Date: Mon, 18 May 2026 14:24:22 +0300
Message-ID: <20260518112427.2460725-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260518112427.2460725-1-imre.deak@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00023A11.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::214) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH8PR11MB9508:EE_
X-MS-Office365-Filtering-Correlation-Id: d4920de9-4a7c-4fa1-f658-08deb4d010f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: 4fKI5W2C+NJMD7vGI0z/IkngQA7RqXwUVtM6/ZmkytEpf37BcUiUhMvm/l+Su7iIRgsK2Wjf1QpL0KTY1MCH8YYbdG1BLqPTrnRi7dQQ3EWVY0gc146W1ra0Ruo5sGed1dwbMXZwiS+pEaexTwKf//aLEFPq5NjE4Yw+RHAOmzYCOSRMUJjDm0+Gzr2NVKwBY7KgRb3FaGEc35xp7gXmHIaxwxuH6sTosOhybRlTBxbEUxszECRVc+rmoL1Y+02L4R1n7PSYxBbR1FcYoNub9LMr/0iFZg8go5fWoEdMviabxXK+U0RAeRHQ1QNJWeimQst5NjJaTXtY3N+QyngtCt5kcKY+ATckH4DOKykywvYvo86k3inZPmmrQtGMYoBijsL4NPxBvck3RY6095CLOUmz6QkTg/pBmSk8XWi/toTUuBH5YnzwKljOh2q5U+GMCUXOAp5RWBbnQqWK3XR75+9jzCwjpvTyO46L2w+9TYW1IzLCaZDWemTpQ9+YLXiSM0n7WqVqZ3dQWufsBE0vdm2ALOFh5GKlTeW9gZvoM9KpcNGv+hQiYvVywp2/+e8oQe0L3oCDf4zlNo/+Dr9rMYsEQl76rZZs71MAgfWw3yN+hD6rEkbtYrwMo5NL5tFnZiv4TJRGf/apDzuxpWrHwD7WnAmZ8zR0zxPRLHu1hPuggjoJ8HLg4nB8MyzxQwj8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BkxDtoQ7fmtLDcvO38on/EwuTInt5l6oDpRtxnAUcPF0OquAKm72JQv4Qv3d?=
 =?us-ascii?Q?eUxG3QAaeMhmvDBfJnPzeQjwGgckjLPb9GiErllIY1ZwvpFaknwwl2UVjc4B?=
 =?us-ascii?Q?scTaKhNwhBMi9aFSkRovdHNyfUcfHxSvvWBjbwbrV2BZSdr+wFZ6RHkpIy9S?=
 =?us-ascii?Q?LGudbJu7dUQck5Pm0QTJv9/idHR77B/1CSs2RjZICxU2O0X20T3b+jOk8YAz?=
 =?us-ascii?Q?XpdcY4cgx0L86kyJiH9JgeAteVb4qafYp5K+YKHtP2wicEukL9JqolreNP7T?=
 =?us-ascii?Q?7FO0BavF2NjxkTwCYcKWUN9YfhRxH9pLvlZ9JEKq+UcTj0BCrEgKu2jbCO/T?=
 =?us-ascii?Q?Yr4NIlqyjS+yBgx0VTrFWWj5LmXNDYxtTNIx6NJuXR/v8HJ54xflBD1vAq2L?=
 =?us-ascii?Q?JKVlR3D5lJEx1pEfgIQ0kjzX9o9OgTgQPOrt5P54i7xqQRSpCHPYXAuPFULw?=
 =?us-ascii?Q?P1FJRN4kg4TG8y6XQQt4Wu2UrRTGwKRRCQknCS+bNu82DjEv/1sTDThh3gGm?=
 =?us-ascii?Q?hE3qOvguzQl2NtdKCp5N9Wo0v1tdxBPCDuO6fQV2M0M9sswX7xqyZOGKzzsY?=
 =?us-ascii?Q?tWwbpXVuPFkC02Q2MCuuUSRncL+LGxsBAp4uO8xb37cTc1yeMR8PuPE/v0U1?=
 =?us-ascii?Q?+ETEQFFYzcL9y+fZkKRp+gG19uLnB9/cRdFHLDjH8N4JnsyrIE+3/010A0hF?=
 =?us-ascii?Q?eRx5leyYFRjwr7FFy0cE5DQZDHk6xFzU0HXYrqoV0FUzrx86FIws3J1KfNnO?=
 =?us-ascii?Q?xyA9017OUKqrCYWcdI4ZbjD9Q5s8wFhe54AGKp+UBAMfiM+O0atRItC74HCi?=
 =?us-ascii?Q?EmKRN5VRL+TbXcMu/G9AOZ82VHxLdzgpkxLMwuurQf4EIDDy1Yx1m0RSsLc6?=
 =?us-ascii?Q?x+4iShMTgHgIyflNZJsbkpmcbwwYCa8CC0ApiKJaSuucMdujBG61LJb1uiQw?=
 =?us-ascii?Q?1C5priFEbSXgK771gnVWl6BvqRjITOrT5g9lIYKg4EBZe3JYwOxDnpxHXyt+?=
 =?us-ascii?Q?TmpKBGDfAY7iGBAqVl1FNA4lMc+bbjDWzcdGk2Sm9YBSJI+K6YYZvBCduNAj?=
 =?us-ascii?Q?0/fZdN92HGVl3lU0GFBv5HUvDWSE0lZAJCt3XhPPCBTVDceFqdOC4hnAYsCO?=
 =?us-ascii?Q?botI8SNpyeBej/e0uWZbOIfn/re7TVdVs0KKL11mXRmzkQlXMaISs2iPv84Y?=
 =?us-ascii?Q?ogYqlcot53cX1XByHU01k+7G/UNqJCaF2IwCw2ap+Icn/bA5boa+l7N/nMsh?=
 =?us-ascii?Q?nW7+6pQZwOCgDdwOA9I+38ChoXQgOdqp011OHNwuP8issOsb4bewFEMuh4Jm?=
 =?us-ascii?Q?1QLdqScbdTfNqzaovDTFUtgWgh/663DWW78pBpxkKyNc3wkt6Ps8viciEA12?=
 =?us-ascii?Q?F5VzugWs48tnzBu87ucCUiKJz8inH7onTeEdhIWVhK01SmqqmzUecq4hfmD0?=
 =?us-ascii?Q?N7eqYswy3baYnVdo3qOWVIWrc9G1mKC+VGdvHQUSv4E3irE4UXq3FLtsJMOo?=
 =?us-ascii?Q?aOoKa37GnWAQzsInnSDjg1msxeX2On+R8TRN2Pe5r2Dn8cNMcqYkAUDFwQK5?=
 =?us-ascii?Q?k5/Kx7pbMeu6anG07NeB4ZZr7Zq5zJ6DlVoCDFYkZVVYdzlp1NdDMddbzKP1?=
 =?us-ascii?Q?+rRx85jHNWDHORIWKCr4q4OxQC774POKdh0tkqmFm8a3DORPBOvPweQP1VRl?=
 =?us-ascii?Q?H8JNDg50vifKoVFvrU3hTRW+owjkvSp0YVWrQDiBDYbpGoYDNH0KxWfp9qD3?=
 =?us-ascii?Q?FqHOdPsTbw=3D=3D?=
X-Exchange-RoutingPolicyChecked: G+53Iwaqt9IUxmd3aKFB0fLBmXr7Vjy1syI5ff6csxAWENLyXb5luNb1qh27uj/wbCsdFpLoNNKyPllnw8D0FfA6zs8mq37Y2gnihLMPdxMQJj4SVxjcuni2yYGcreAQYlEdhqCa3vn5zOTioRk9nHx9wAUwru/00IYvQSTP3ttPjWp9QlLItwNr7eOIWdc9fAVpL0J90BFSIs87fJfqDxf+/JoHelaJh54tOx4KW0gbEfHfqChllUvDkFAtGPfsYu6ymgO39B9vXs+6+3Qrp5nXUxDQdDLZ/51lmpT0cEGYjt6ihiDA7WeVvTal4RG/HRRkKcxvtNgx0fsUtVNcIw==
X-MS-Exchange-CrossTenant-Network-Message-Id: d4920de9-4a7c-4fa1-f658-08deb4d010f1
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:24:46.5800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 510KmwElApY3sN3F84IGOJS4eJ3h0kQ04ao93FqBAoBJW0gTun7jEFMeOLknqbqa1PoY1GyXWU2vKRxfm+nDmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9508
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
X-Rspamd-Queue-Id: 5264056B7C0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Add helpers to defer and handle link params resets instead of
open-coding the same. Rename intel_dp_reset_link_params() to
intel_dp_reset_link_params_force() to align its name with the new
deferred reset helpers.

When deferring a reset, return whether a new reset was queued, used by a
follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
 .../drm/i915/display/intel_dp_link_training.c |  4 +-
 5 files changed, 38 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 5ff1cdf4581a5..c20a97e21419b 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1265,7 +1265,7 @@ static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 
 	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
 
-	intel_dp->reset_link_params = true;
+	intel_dp_reset_link_params_defer(intel_dp);
 	intel_dp_invalidate_source_oui(intel_dp);
 
 	if (display->platform.valleyview || display->platform.cherryview)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 86520848892e0..77819aaeccb76 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4664,7 +4664,7 @@ static void intel_ddi_encoder_reset(struct drm_encoder *encoder)
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
 
-	intel_dp->reset_link_params = true;
+	intel_dp_reset_link_params_defer(intel_dp);
 	intel_dp_invalidate_source_oui(intel_dp);
 
 	intel_pps_encoder_reset(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1920d2f026665..13163dd085e91 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3710,7 +3710,11 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 	intel_dp->lane_count = lane_count;
 }
 
-void intel_dp_reset_link_params(struct intel_dp *intel_dp)
+/*
+ * Reset link params now, preserving any deferred connector
+ * detect-time reset request.
+ */
+void intel_dp_reset_link_params_force(struct intel_dp *intel_dp)
 {
 	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
@@ -3720,6 +3724,28 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 	intel_dp->link.seq_train_failures = 0;
 }
 
+/*
+ * Reset link params during the next connector detect.
+ * Return %true if a new reset was queued.
+ */
+bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp)
+{
+	bool reset_was_pending = intel_dp->reset_link_params;
+
+	intel_dp->reset_link_params = true;
+
+	return !reset_was_pending;
+}
+
+static void intel_dp_handle_deferred_link_params_reset(struct intel_dp *intel_dp)
+{
+	if (!intel_dp->reset_link_params)
+		return;
+
+	intel_dp->reset_link_params = false;
+	intel_dp_reset_link_params_force(intel_dp);
+}
+
 /* Enable backlight PWM and backlight PP control. */
 void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state)
@@ -4066,7 +4092,7 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
 
 	if (crtc_state) {
-		intel_dp_reset_link_params(intel_dp);
+		intel_dp_reset_link_params_force(intel_dp);
 		intel_dp_set_link_params(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
 		intel_dp->link.active = true;
 	}
@@ -6487,10 +6513,7 @@ intel_dp_detect(struct drm_connector *_connector,
 
 	intel_dp_detect_sdp_caps(intel_dp);
 
-	if (intel_dp->reset_link_params) {
-		intel_dp_reset_link_params(intel_dp);
-		intel_dp->reset_link_params = false;
-	}
+	intel_dp_handle_deferred_link_params_reset(intel_dp);
 
 	intel_dp_mst_configure(intel_dp);
 
@@ -6944,7 +6967,7 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 
 		intel_dp_read_dprx_caps(intel_dp, dpcd);
 
-		intel_dp->reset_link_params = true;
+		intel_dp_reset_link_params_defer(intel_dp);
 		intel_dp_invalidate_source_oui(intel_dp);
 
 		return IRQ_NONE;
@@ -7252,7 +7275,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		     encoder->base.name))
 		return false;
 
-	intel_dp->reset_link_params = true;
+	intel_dp_reset_link_params_defer(intel_dp);
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
@@ -7317,7 +7340,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 
 	intel_dp_set_source_rates(intel_dp);
 	intel_dp_set_common_rates(intel_dp);
-	intel_dp_reset_link_params(intel_dp);
+	intel_dp_reset_link_params_force(intel_dp);
 
 	/* init MST on ports that can support it */
 	intel_dp_mst_encoder_init(dig_port, connector->base.base.id);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f41480d247142..7c24d3dbb6983 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -114,7 +114,8 @@ int intel_dp_rate_index(const int *rates, int len, int rate);
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
-void intel_dp_reset_link_params(struct intel_dp *intel_dp);
+void intel_dp_reset_link_params_force(struct intel_dp *intel_dp);
+bool intel_dp_reset_link_params_defer(struct intel_dp *intel_dp);
 
 void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 			   u8 *link_bw, u8 *rate_select);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a26094223f780..b7075060e7bd3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1935,7 +1935,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	if (err)
 		return err;
 
-	intel_dp_reset_link_params(intel_dp);
+	intel_dp_reset_link_params_force(intel_dp);
 	intel_dp->link.force_rate = rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2037,7 +2037,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	if (err)
 		return err;
 
-	intel_dp_reset_link_params(intel_dp);
+	intel_dp_reset_link_params_force(intel_dp);
 	intel_dp->link.force_lane_count = lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-- 
2.49.1

