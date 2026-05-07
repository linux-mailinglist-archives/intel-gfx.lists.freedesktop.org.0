Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPwNNa05/GmUMwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:05:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEBB4E3D6B
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 09:05:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE9A10EF79;
	Thu,  7 May 2026 07:05:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oKefP0mb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3713710E1B5;
 Thu,  7 May 2026 07:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778137514; x=1809673514;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=oygo/6XQsaVgAAZ/tcSDUJHUqelXbZqybRb8Zlzpqlg=;
 b=oKefP0mbJM+FDGqnDT9NaDWmf+cW9Tve2QKVrj49G1Hzn+pEmrYlegmZ
 PkMTxzmMTsdoIj41YlX9dHzU4oG8KIbGamEAUX6NuZRlQhavnmNITmN2A
 LSICA2l7JXnnhLJZNp39c6GdtUtXKMzX67ZLpciacNTANyswSNGO/rzhx
 hRQIRWxqdoXMzxzYpeV5KGUWSiTj34qLbOzU2lsua8LSxmoQbzYlCg/XQ
 eTJN5AHaZV+P0xUwh83wb5ejjCIRu7lPPJ9J5HSRK9fT0KwSSH9SZEWaJ
 YPDrJaVLdwLm+YNiMoAR+xZ5V4XBUobswdFACi4Pnm3zZc14FStNz/eSs g==;
X-CSE-ConnectionGUID: s50jmlpGSGii73XRwXLv1A==
X-CSE-MsgGUID: qicbXo+GRmyiMd37yQ1kmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="89387885"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="89387885"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 00:05:13 -0700
X-CSE-ConnectionGUID: S8re0N5XQQiQtgpgBWi2UQ==
X-CSE-MsgGUID: 8B3aQl8DSyizve+ZEHEk4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="235528971"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 00:05:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 00:05:10 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 00:05:10 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.43)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 00:05:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TrLSMMLQPM8xPZ9uZ90P9nUdX2fyxTYERG86SUwqco0HNwxToqYGJ4qD7+YqJ2JVN6PwNqIcHd4Fg9NFTkBTTgxExBqY/DO+nctlQEkcZIZdfC5Z2LHurhR2lWFAPZmxWYQsnvl7HAJXx8o2sGGWU5fYq+rt8NJIXSBWXlrx2+MRk0c2fnj647f7l1bwlY+X5wN1rLTmHkcuzCme3sWjM8R5KDyfAJ/niCZfHTZEpgxmgtSaie9oXK0WP1Z3lDcGLHoLv4KW4V0s+uU+eSFbV9yiDw5ajITIvHxtrhEbeuG+6YlxJUDyAJnOzzjhfaENv0ah83DcvrqXXxmP7uCr6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IMIFAKTiVS6bEk5hc3gHP8SnCp33FnABmM2a/mP2ujA=;
 b=YJvrYjfy0/JqiAYeFvwPYGZ31blb5hphiD5mYk+x4/2XwwkqoE+JpiM2lzrOvDcQl9+sOMpitvG5uAkMLFupJtl0CUmdPcR+ClyxBeRT8vOcQZfVqmrnIrfK34uBfUpaWVsX15vdpHhZ4QETwZTm2c/Vc2iNls+9Rc54B/p14POrqY1L2ES1z4GRiNaXXpWNbLaK4r+pRz7u/eZM9bMJAJh45KChgNfhbiMJdAC4MxNLF2hSBvBSpidoh4sVFa835ioD1QJs7zrZ4NNHVPGyTZZ2qvuTj28vZA5Y9tvN9CefUM8Klyc43Rl4htwQfShg40UuFYLmP9k8VUzdGLEMHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by IA1PR11MB6098.namprd11.prod.outlook.com (2603:10b6:208:3d6::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 07:05:02 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5%7]) with mapi id 15.20.9891.008; Thu, 7 May 2026
 07:04:59 +0000
Date: Thu, 7 May 2026 00:04:54 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-fixes
Message-ID: <afw5lsrjE4pStEml@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR04CA0013.namprd04.prod.outlook.com
 (2603:10b6:a03:40::26) To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|IA1PR11MB6098:EE_
X-MS-Office365-Filtering-Correlation-Id: 38bb7b5c-44b7-4e7a-b325-08deac06f37a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 5LgwIcpmrw0TCT/GexSjji6Hpsn7k1rx8wOxuA+zoW/vxyMgoW1yTXC/Jmd8LbQ6YGYd9mny+4fS4a8NztdhQmteSmarLPUHFeikOPtnitlERgQCyDo1V4b1ku2tggm2653cJ1SrclSq5TZUoAii2iuyfs360LTYEuboiiaeXnYjFsypdymTWe3BaK7MVkJlrP/xe5yuZqRaxD0LjnMXCMKFvrzMAkFBTi8gZDrZ9sYkEVy5RKf3rdgi48IfPypXA9C1b/9mzN+oc72/M7QBT9qVzUYNknQjf0lTghjvsmqjSKwz+W2cKtOMWO+/sQ1Wg4RRBGkXDVWNw7Gh73f8apMnckIedTHNQuAhP74X4yEobtZpiH8jJMphVNm7Mc/tzadY2TlD1twsgSCD/y4YmJuxjpE9kfoVLkGpDMQsbVU4bPp8kCpXqBrao+dXrHuzjQxyZS1DdJWBVbAb+8CVchWA6WSrwAA5rEcBB+/VAVLG4UHsdsEOPWCIE1UHWTBY79E74pYXK8QK7w2F9HvqdkBUkJdFJXiNFxICJFXaDkGIjMPdzzCmEIfHMgM2dR40bH/r389XryiXTxbco6VQzadvcyCkQdh+PuFoG5JMmnsWBaQSstHou0MeChX/WEtdCJzcH7ulKdQOPsTIwkboJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?udbCbhzH51P3WpaB9GiPR+jOBmYsQyBBSws5N5+eAYIDH4PytlJyR21/N5rb?=
 =?us-ascii?Q?RABmP4K6Ue45sqJA6XLd0EhacNgWHSJ7mc9hoiRVhKzogKdWzAEcOxF3kU80?=
 =?us-ascii?Q?/jXHWeaoeP5BqgkVUc+NdwiZOfaQdfssSaKjR1uH+EOQys4q6AIj+F6O7uGX?=
 =?us-ascii?Q?HHkpaKCwRmu/Q6EcsBOFZZ2uYjCC2g9hPC6mcZll/pV00S/9HwzF8Qsaenqb?=
 =?us-ascii?Q?bORAjLbVK5RaXnuhBu+N8SESLEEFWB0RkFcy9UWRSKY1n/5IT0Lj/Zz44jEz?=
 =?us-ascii?Q?ER45iFEj3jbF0hnr6ylh7sCWLCKUVl3dRt7zvF9BzYNwH62DjoUlfTE6bXWW?=
 =?us-ascii?Q?sSs0h8hr3m2nIObaPUKc7gjUBEwKxu7Ien5GH0srsNsNM5sxKsX1+YIhv++M?=
 =?us-ascii?Q?qcPWzUzg41J4qpg0BVhLRVATtJnXKDUAih+UiGSEPzp41GxM1T8uwioL3ffN?=
 =?us-ascii?Q?OFuFsPtXbc0Y57MreX1vzg22cMYQhQFwOajPU2atmjPPxqI0fM1LfyrIGVmn?=
 =?us-ascii?Q?tEPZL/WXMN1jHCV0aHy/xOPxKqGHZYau3akuU7+/MyDh6gukKefwSWm9yDAH?=
 =?us-ascii?Q?XKcafnx3w0RvFSV68lYL30ixfubNMNb0fV9rrGhRFKsfpzWPWr7tvnfH4NtF?=
 =?us-ascii?Q?2bXIAouTo68zwFuYLmPSbE8bkc/t+Fimf05aiBcaFGeF6rB8jfIUC1nxpBiA?=
 =?us-ascii?Q?ojR8qqutlFYbxVUGiIovSKBdYIyteUbW5Qia27nheX5xn76PDZCSjBKBkOX7?=
 =?us-ascii?Q?a81evQEjLRrqzM9LSdsGi19OdwLX8hcieZ7vFm/S7SCGzHMf5GJHGzcgBg19?=
 =?us-ascii?Q?FXwxn5cf0uTmWj+Veu2IMejkOEnvNjmr/Lvjil2ef+jqJdqUMLVlHbUvg08H?=
 =?us-ascii?Q?fU8Uyy1wqicHpOpX82JKLnQEETsAN1ZfDz8LffkV/35IJ1sW5t0Pklq7Z6pd?=
 =?us-ascii?Q?dDeYjZ5sguQw2k+t6QnQgoPp6zrrd+qaOWi6AIES9WwxwNPjfCeCSg5Wj8Ds?=
 =?us-ascii?Q?w816TFvZIiG+nXYgtBiIaWS9qwMEZaNxiiNxeoUmEIQZD1mbhREpzEUfI953?=
 =?us-ascii?Q?Nq/mT3w6QRpMUmhqfTdR27ccU65bWe6hrTgD+/XpOHJ3cs8eRoaC2P1PAwT3?=
 =?us-ascii?Q?AOL9kVccj+/yckv1EHeD+o9Nq5yGIZwxauFBIEsDdIliRXbavavabjj4Wy/v?=
 =?us-ascii?Q?mlfIwl3jfBrcDycuRh4TQKAYsSvYXTyzLKq3hUH5mvcXjX6A9QXiYfyZ70Ry?=
 =?us-ascii?Q?28T/Ggy6M8fP2yl+cIN/InC8CsXNTwvjv5y06mwjkSapGLqdpBkJ6YrpvoFO?=
 =?us-ascii?Q?Dlt/zk5RrcJDUEcCH24qJOHY6TVKee5vPb+rWIuB6yZ46WFklSl7snkb2rPS?=
 =?us-ascii?Q?t5SfO2CbWzGGkFKDXvqJH/HsOpGu6g3o6ya/rUj/mHG7pgkd8XOHnMffYE1H?=
 =?us-ascii?Q?wSFozYkvFsUW2an2ga8kkxJvVpWcEwGtaC9wtZy3kJEcKkWrPY7TCs9eimNO?=
 =?us-ascii?Q?X6et5WbWzJ/n+CqwJUsfUDMWen7eQBDF3ZLMzXvmlDRVWtXhxcvX5fFM8LmS?=
 =?us-ascii?Q?6NpeoY8gKAR8eweELLgThWaTNkz5iYpuMQU4nHZ29EDO+8hGG0YBNS4drIP4?=
 =?us-ascii?Q?6sYHfX6eCC7kKQbS/tb308/+t06xMKvEvE3WBAccNlOkzQdMyKITNFlXCHsX?=
 =?us-ascii?Q?91EBqZ/BAItk75UGPgqXxjRNyY2Nr3WLSBSZ9MoF/kgUYg+utfmQ67OaW0hv?=
 =?us-ascii?Q?qzI/IdCTVZe0J1qSMVec3o0uqXApxlo=3D?=
X-Exchange-RoutingPolicyChecked: tgDZ/cA1SyI4pGXOsLxGpfec/MOl60wC0/4oSyBplVpYPEm+LGLMrVyhWpKdFZLfnDhhNl1RkLBTmlSV12XpHCxL9P9E8VRCVLdmgwgLGXwXmaYxJWOOMrBFFu4asbK1Ni06inKnzRVKPM4kBjB0FG0zodGl+1unwg71oppOOFmzNWV8zAl0smgfAE6FutlsYWHb11MH5qYaQOMQesW2IPR1AKAUJ/Pe7D23sO3BxEaV+3YxmmrSErV7LylMYxyoOaZmirB0i6fKHr1kwjAjbUUDfNYFNVcidGD+171CvauD0LT7gYfVtfkTlNyzFjXPHQvYv5Ii66lqILILcxS3Pg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 38bb7b5c-44b7-4e7a-b325-08deac06f37a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 07:04:58.9594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I3wJ6bJvZVnsZPZd2yn35NBuExYC0e2J7VlfpY3wHkgv2q+KFyrC1WH0/qmbjKkj4FCdqPgBlfryr4CP7f+BAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6098
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
X-Rspamd-Queue-Id: 3EEBB4E3D6B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gsse-cloud1.jf.intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Dave, Sima

Here is this weeks PR for for drm-xe-fixes. Nothing major, just a few
small fixes.

Matt

drm-xe-fixes-2026-05-07:
UAPI Changes:

Cross-subsystem Changes:

Core Changes:

Driver Changes:
- Add NULL check for media_gt in intel_hdcp_gsc_check_status (Gustavo)
- Fix EAGAIN sign in pf_migration_consume (Shuicheng)
- Fix MMIO access using PF view instead of VF view during migration (Shuicheng)
- Exclude indirect ring state page from ADS engine state size (Satya)
The following changes since commit 7fd2df204f342fc17d1a0bfcd474b24232fb0f32:

  Linux 7.1-rc2 (2026-05-03 14:21:25 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-05-07

for you to fetch changes up to b29987dfd943e655df6e3b641ecffad5cc1509c2:

  drm/xe/guc: Exclude indirect ring state page from ADS engine state size (2026-05-05 16:15:04 -0700)

----------------------------------------------------------------
UAPI Changes:

Cross-subsystem Changes:

Core Changes:

Driver Changes:
- Add NULL check for media_gt in intel_hdcp_gsc_check_status (Gustavo)
- Fix EAGAIN sign in pf_migration_consume (Shuicheng)
- Fix MMIO access using PF view instead of VF view during migration (Shuicheng)
- Exclude indirect ring state page from ADS engine state size (Satya)

----------------------------------------------------------------
Gustavo Sousa (1):
      drm/xe/hdcp: Add NULL check for media_gt in intel_hdcp_gsc_check_status()

Satyanarayana K V P (1):
      drm/xe/guc: Exclude indirect ring state page from ADS engine state size

Shuicheng Lin (2):
      drm/xe/pf: Fix EAGAIN sign in pf_migration_consume()
      drm/xe/pf: Fix MMIO access using PF view instead of VF view during migration

 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 12 ++++++++++--
 drivers/gpu/drm/xe/xe_gt_sriov_pf_migration.c |  8 ++++----
 drivers/gpu/drm/xe/xe_guc_ads.c               |  5 +----
 drivers/gpu/drm/xe/xe_lrc.c                   | 11 +++++++++--
 drivers/gpu/drm/xe/xe_lrc.h                   |  2 +-
 drivers/gpu/drm/xe/xe_sriov_pf_migration.c    |  7 ++++---
 6 files changed, 29 insertions(+), 16 deletions(-)
