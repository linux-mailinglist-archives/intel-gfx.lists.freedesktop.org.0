Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gM7KBD6blWmsSgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 11:58:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A65155B67
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 11:58:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE4210E5A1;
	Wed, 18 Feb 2026 10:58:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I20Aq3oB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DFC10E5A1;
 Wed, 18 Feb 2026 10:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771412283; x=1802948283;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=0DnLayhBPyC2R1/bDXXm75sd4RRb0EjPrw5MzmNemik=;
 b=I20Aq3oB/MAILf0NSVxfGfKEZ/a+Xeqklx853h0b256ccfkROEpbICOj
 7qY95YABIYiq556r0NDEVgEofbuakfyMmOAf5x8v+kR/I3jOqbv0F+7GW
 STC2n3zhoy953cWDaE2cFvinlxttJCX2s+fCxV4nOpWTCtwwH1ZfkRONI
 XX/LPxOH6rf6nwE9UbLJcKG1qV71sMwqxWc85z8bgioyuK3ZFw1RjzhHU
 XPUUONjSLBm3wJUe9SuKm1aERhCw2UQnLg87u2To3jIsvDOTXQDoV0Jcm
 AdwE/R4KQUoKHXhuoYEfY4eekOG2SE5bHHnAQY8Rwgkc5dymG/cv/iR0U w==;
X-CSE-ConnectionGUID: 8nRy8PL5TRK0ErJ9FQk5DA==
X-CSE-MsgGUID: RRZ7lMEZQiOZD4YbpVflcQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11704"; a="75094571"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="75094571"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 02:58:02 -0800
X-CSE-ConnectionGUID: ilMJc76CRIW1hv5yHbiH2A==
X-CSE-MsgGUID: a+kk9L+qSDi9NhhfTgyu2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="219155594"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 02:58:03 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 02:58:02 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 02:58:02 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.36) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 02:58:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f5nl6CqqLTiadwi+fJygBGOIm3OrlCOc2XOhtDXalgoQiEQi/jbudPMjYp1WyzZy3gH7S2lag8JOoOaRbS9tIHyY/Me1GkxmIMWBISh0iFF0QzZifsHbuQJVUREl7/6MiypFE0Bcg4I4rMm7aLvU6IVNjR8M8NnN5Kx7AmPauk5U29RKELVerXYQbjvDm+uX8emu/YZm6r4KnyTz5JpyrjAjSnK9eAhq7MpQ5ZnUXaqVSod2ZdHvUgzVdMBQcyP2lZL/gefP2XVvKLVZT5ktNB9IKEqolI6lgtg9KEwi4OucxrdQm+HNRhLRCD2Yx06oA2kpz0Yv5uzVJMTcqBpfPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/OdmlA9TUVO0TnOAPFBBL+7T+nJdBG4hKEx5OMrOji0=;
 b=TZrMkT6Bp9DWQvxG+k9y+JTw95PNjSfI7CjSyI/PCi4lJkuhgbvoNfFuLzWBBuhlN5Idm26Qwo2reKvWRnPVswDEw5j9znwqjucyZhcdR2I85fRRxJfv8R3dUgJUoSnrg1sFbUZ8wwfSNCp/mvjbMf6SSJfw430cv+7wwCfWuRL0YY5oZs6Cd414CQ7/+3sxEBnIhcyyKpfHe/lBggrd3F60LLANucDHYVJf67YpewO4g78kWHyV2/q85Wni35bReBL3Jt4aue1dyKL6g6gc9aRGkPOK0XHBqskYxHDZfXMkvHzYFqJDr+c4coIZhKXTI7br5wpodhdczoG/89HHnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4771.namprd11.prod.outlook.com (2603:10b6:303:9f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 18 Feb
 2026 10:57:55 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.010; Wed, 18 Feb 2026
 10:57:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/2] drm/i915/dp_mst: Fix ww mutex lock failure in
 for_each_joiner_candidate() loop
Date: Wed, 18 Feb 2026 12:57:08 +0200
Message-ID: <20260218105708.845161-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260218105708.845161-1-imre.deak@intel.com>
References: <20260218105708.845161-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00023976.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::377) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4771:EE_
X-MS-Office365-Filtering-Correlation-Id: 09481338-4e24-4998-6d5c-08de6edc9183
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Al3VbZ203IArivQSaaYqOYsuOQxTSi1cNEGr79zdOYyBtzm9E4k4iFOIfgd/?=
 =?us-ascii?Q?e+VrF1jDFgtxeu4OLq6TM9LoOgmuvyHtxJGyrgLqn88qjDXGAJoLoJad6yJG?=
 =?us-ascii?Q?42C9QofmIdZN02gaftZv0G1JfUCwr7jHus6VlaKZ+o3PcJiSJrKdULqfGh5q?=
 =?us-ascii?Q?M60jIpIDDi2EUW1Y99Qi5h8jZu44Tx9sxjXXHhqCKhvAuRIPssPde2Dk8Jhc?=
 =?us-ascii?Q?FwqeVQk2NOWGs9Ky1URVAtC0Oe4Z/ZgcCYN6RxcYJuajKNZJA7aklyu7Mdn+?=
 =?us-ascii?Q?SQJOwVCQZLGVA5Zm5/jwNEBR0Rrczr9gLyf+rio7/IkGc2a9GTEgErETpc7i?=
 =?us-ascii?Q?pLN43l1lxECOclOHvKq9cIBYmHkTw5BsCb7kom9Pn4roagykyL07r0SJTqeS?=
 =?us-ascii?Q?OQNa5JCM46e3gPxN4CIq6gNZo6KH3O8s8sk40ffJ669on4eNjTAyrCZYFNLC?=
 =?us-ascii?Q?G1xn7F4rDYUiv5AwbhICMjIyIenjGR7tck3C31mFcAvWWszPfD83kmKntewJ?=
 =?us-ascii?Q?gPa1hehLL7Xw3p4el+cZH2cRcwg8iLTaZLkhUSduDKuSMxrutBHR2aCqROxK?=
 =?us-ascii?Q?A7zShye7RTqUDJwNcZTx0kjGPrgwoe5EbKxnfHGbKX/wRLBT+M3vymhFyN4r?=
 =?us-ascii?Q?OSBDsY5nWGRKqCtGefrMEtudmjPtG2fiTVgCMvDIdU6qR09kfDWjI7XmSq0j?=
 =?us-ascii?Q?1gE04MYx0NN1zrQks8T8PlLIGUVjoZcSOaJAoDitT3z+w/SSMvvWV3cqMkge?=
 =?us-ascii?Q?pbCMwdYOQjf1kmn9aHf3Rf5NvR6BVXPBSAMSRIuPBR8UH6wDuQswAo3Bvfia?=
 =?us-ascii?Q?lv0yKhNE0PtF9ZclM/ForJ5evokTtkvLNFPHMUzBr5fMj4OUiHb+3HLBxthj?=
 =?us-ascii?Q?7kNQuCW3avtwY2YOwK09FiDpjHNNNK0CaB1k5b3aMygHUB8KIaSe7QcgO4HT?=
 =?us-ascii?Q?yn7fDdDwM3vZUaQiPxPnuXkz5MQkLFxCT/Uc7ozgHElXIr626QFrTwXV5pOE?=
 =?us-ascii?Q?lxLn10y4gl736Q1MT5O/+7mvMDOItuxpoU5rnqfQyOZRApHoFUsphj7CmTW6?=
 =?us-ascii?Q?sTwd/9pCUQ2H+GIeT1iKOpb13TLDgJO6T07t/bO8IMTJaWSeVSzRnfHl8U49?=
 =?us-ascii?Q?wRPiM+E87HFy45Zb7AkEVif5R9ZJvAaRmL5ZDhfIC5KAc4z3G8a4w9/9cXw/?=
 =?us-ascii?Q?Y9UkYNPPrmGRZz2kFnvmIbn1BLAhuLy9ei0bRfD3PQS7hLgq2IAypj+QyGXh?=
 =?us-ascii?Q?8t3xuV2hMtJIAi0H9I7n3wo+fcEIjei7dYhZYjjoAeuwZRAdLSgemUzk2cM5?=
 =?us-ascii?Q?uCz5T2evQ7liLZZN4MXZWc9eENJb03GjF1+wEBEcoCKygoBZp9JpGv2ulmSY?=
 =?us-ascii?Q?Gl5Uad2+3/rVrN/6r8rqLEilvjoNVdDtY5eGDhCoG8DPvxgrp2TBer5gI3LF?=
 =?us-ascii?Q?ph6QRmMlAiY6QXoxilZIevyes3Ziful0WhTOGIywY8iJkAXNmv/S+eeGN5RX?=
 =?us-ascii?Q?d8W4OPW4YP7b7DWqDHUyR/gP+qtNe+DekdooFFFrHGDQmCukPmRqUg17Kjg1?=
 =?us-ascii?Q?0M3RA+JmGireE6pApuY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JPVt2jxdhVsLnS4T9ISkcB00APmv/NVKaGpR/0x/VcJYj+ur/Lq3EN0C3jQ+?=
 =?us-ascii?Q?PjlJVRotaOjlJo8KX3eR19ts+65VN5B3clEpmHagZ1fWZxKCe33Borip5/27?=
 =?us-ascii?Q?WHr3ohqvFmPOIKoDD9UrAcQVxDEIkUGYRjz+KQC/TuPQ4w/GQiR7zUNJmPl7?=
 =?us-ascii?Q?S5RK8TZnUnKvbjvsaxa6GC4O5mpX/kbhHgDXPVeXXIV99eTONv/6A1HGnrmL?=
 =?us-ascii?Q?9VmYR++VJ8SBfe/atEqescBchygGRkazTUSPjKsMphlKWFLwxMAb0bUqVFJA?=
 =?us-ascii?Q?RkbtV57yuNjwgUNrun5uPi+ox5pb+RXeJaJwfCS9k+fLPpU/R8lq6JYODDXY?=
 =?us-ascii?Q?oAuov/6HN01awmSDXqVm//oOtvjb8zDwkCxf8Tivhl9Yge3oTjEhY+JcNfk1?=
 =?us-ascii?Q?fUQNopmTNurxKrenmRzWmso6TN3OylISiEIOYjM+hc+F0DMXPBvhxDCahxbt?=
 =?us-ascii?Q?CwdQEyylcgGA+/gKweI+xTD4Kl4apQq5nhQm2fickT9lSkGXLOG6qIpU1hm/?=
 =?us-ascii?Q?JcjK2sxY3vhaNceM/1Xx122/Im8WTSKv/rp3L+C0eMAHsyJygcqHJd30FoXO?=
 =?us-ascii?Q?0WAZMEi/gl5IWYyx9q4yCKSRKw7jHb/qBBq3jmGU97LcFCsV+JyBXGBQnLkA?=
 =?us-ascii?Q?+tHc3oiSSPHKcDySxpEqs4BlsLhlTF4PEMnYQf4b4EU/XGnlFaCBZk5zf0jk?=
 =?us-ascii?Q?hpFITJ7eDtTlZMd2PyGb0BAo8dg1tkTdjdkxlmkOTTcnhjwP5FXEpS/vOgNh?=
 =?us-ascii?Q?GNNUvhaOhQZFE/oP3lye8uleHJHp+MTIG37fzMCWxx1OS51ECDhiDeXRvlL0?=
 =?us-ascii?Q?HMMIJ6dNbWQP5ZuvnKF/BBnl4IoeSs79UsrnxmUvz6GpZPopb4HeyprjyGeW?=
 =?us-ascii?Q?QMQj4dJbPF6NFMcLDmihKVajU+IgTYZAZzT+saJ07xGn+aCGLWKxELdyd5Fw?=
 =?us-ascii?Q?vHXqht3B/zWnCWdiWbdFxXQ9UimMPVI18Awe4N9N4i/Yxdc3PPTbiZCMDamv?=
 =?us-ascii?Q?rSoaw05gytS47B/g7mpLEbs/TFCObIqk6OM3L+++b46QxxiB3iURgQXnhHdD?=
 =?us-ascii?Q?KgXLM4DaQRxxIQQbR641z38ADcs+HU/HJrPznlO+d52dOs/pJ+wKV50U0iUF?=
 =?us-ascii?Q?CGXtQrM11V4jCrVjvyLcw99ZkOdW/vP/d8vj/ygWTcZtmW5Aq1bzlXxDLfMu?=
 =?us-ascii?Q?DAfupE05uZ/nnkm6xJsb94MhHdBrObXMaUQUA137zFIGiWOkYC7DJnuswG80?=
 =?us-ascii?Q?om4Fjp4RBpXiHnlU8ssfxA/5+F3tmykXoyZP9tjRWt54RGHJZCApDIivn6WZ?=
 =?us-ascii?Q?ry0PSJ4zIHkIeRHAlSupTfN2VmX5ATspqPWDmvc0eU4NyU7PNUL/wPoopBwQ?=
 =?us-ascii?Q?OP1HadAmCZlfmMOKTd3Jv7XItKaDRgqecCeB2F9XzesvWMVqRNzUKaP82QV5?=
 =?us-ascii?Q?qSEWF6WCJuKdxSHgo215uST/Asv4PM1cliHJVlvvEpsvYnQjU3nux4PbldkJ?=
 =?us-ascii?Q?VOVOytGKruL4oQlcMxK6PcUmsKtDothWYHQKf7j04eGA4sCqQ1Iuls0lrFg+?=
 =?us-ascii?Q?R2F0MNMgjTyPJ255TFfGP7iPFg+WXQqZqv7pC0R4FHAL8m94t7GYLoFy49L+?=
 =?us-ascii?Q?ox1/tShwQ9PgKhlTYtmsYEC3awf6AWlOQRs1oPulJiAL/2XJUaqz1qs61IQm?=
 =?us-ascii?Q?+/tfHd18avl4sH+sL5HYI5xrTSa6OHegrDkgRKgJLf7bdX1q307sSxI9A/+g?=
 =?us-ascii?Q?ZtcLOdfyRA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09481338-4e24-4998-6d5c-08de6edc9183
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2026 10:57:54.9545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4U4Jz4eSj43i1fmNZFh3VcBm0OK5moYoTMZewGQbnL9yDyqEfPZYc604NmOjoQNrDdwgAj+PN0981f9WzG+s1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4771
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B6A65155B67
X-Rspamd-Action: no action

Handle modeset WW mutex lock failures due to contention properly.
Return -EDEADLK to the caller instead of attempting to lock the same
mutex again in a subsequent joiner candidate iteration, where the WW
mutex is already in a contended state.

This fixes the following warning:

WARNING: drivers/gpu/drm/drm_modeset_lock.c:298 at modeset_lock+0x1c0/0x210

triggered by ctx->contended.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Fixes: b506a8e18c972 ("drm/i915/dp_mst: Rework pipe joiner logic in compute_config")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f833f47643271..94c0231426642 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -729,7 +729,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 							       pipe_config,
 							       conn_state,
 							       num_joined_pipes);
-		if (ret == 0)
+		if (ret == 0 || ret == -EDEADLK)
 			break;
 	}
 
-- 
2.49.1

