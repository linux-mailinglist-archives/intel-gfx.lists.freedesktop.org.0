Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BBg+JdC2VGqspwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1354074989C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="i6/XYTO0";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A2710E8B4;
	Mon, 13 Jul 2026 09:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07B3010E8BA;
 Mon, 13 Jul 2026 09:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783936717; x=1815472717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=PA1uEspqroVL1WSNsbd7f9dq4C9Mm8/FtobG4H6ErjQ=;
 b=i6/XYTO0mV+A0WbUaRVCxzI4PdPZFXQbWvyBDwAfhoOux3irgOTxSR5l
 ykVTxluLZ7B29pvYX7RbKv4WPyo8bpSjo3HAucdzRjdKa9mO3Cfr/0fzi
 KQdH2p/gCGNmB53B3a+Nx0tcRajGttB9HnsC3QMsRbenIQcFcKYsO/FDG
 YGpzMXHM4gF+39EtUqFeS8h6i47qpB+o4MPpt/T6E9Iy+tQQ8SySbfCAD
 OjDZYd9DBU+Brw8Ulw28h4vn7mzS4LCfHRIiDR+446jnJUne3CBHvWJWs
 m6WH238nwCusVK8IKtxcLAtzDmdzXdo79tLKqU7JV7E/VYV0Iq+VwDAMd g==;
X-CSE-ConnectionGUID: HPVODUHlTf2Ja7moTt5hIQ==
X-CSE-MsgGUID: ss6b0SpkSSivYk+/XRak2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87085872"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="87085872"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:36 -0700
X-CSE-ConnectionGUID: y+SqoV6mQ5CtWcK3Yu0eww==
X-CSE-MsgGUID: afnCEgbPROyt0Eennfmyhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278767777"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:36 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:35 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:58:35 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YDf3yv7S1voR16sIEytmeoLKh82lU0JuSXsxWxHzc8Ibz81p2h/klCGJ35Be1hkrzdXIlDdY/NGQv/eij8a6Fa37SaDWNX0JEJzKQutRqWL4mjNaLaZniocEh74zJA4jbXW1IsgfcI+ltVJ77f8QMFQUG+ruuJVhygxP/62xBZZqtQKq0qU2EPjimCLT3VSEWEiHMvdBMsqhG7ROy2NegOEcucpW4I70EWZCbP/SFU41rjkmbKGP3YxnpUm6JkSHbG1mxxzCLuMdEPYB1y6cshl1BuwYtv/+Oo3OTM86EBucMVN7YWjdLw1R56ioARWri5++3eNu+0TLYyGZRF2kaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m9hwHBjSB6IREr4JSpHyieBKRpaLgYanpaOrUlmA8Ow=;
 b=NI0oQTJ5MLYgDRU2AsLlaFpxRofS2cskWss8ciBwCNCsvkLr2nBohELdVPDQTtg+6BZMQF5CE/2AH6YR1nGqUnqZ1nNE+gBz22M+jaFatSwYE0E5AfOb52ffRkuStKGxt9J4G9Qc0z8UgkB+Oqg0MfXtNI9xitV370slIo4mmvWuBcigzYQW5TRADYXSfTj74s0NNHdGcD1A7f17mRYQ8GaKyfZ0LVsMI5qF5WZY0+wOeMdJ/2SzzKwg17RTgyIrQFAsAvFNXK//1aKyE1hyfH+VkOgFvUOL/gxn5iYhUi7JoCBh2+tk/ZA30ZGoA6TLU5zzrlf7AgxnJyWHld5d/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by DS0PR11MB9456.namprd11.prod.outlook.com (2603:10b6:8:290::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Mon, 13 Jul
 2026 09:58:33 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 09:58:33 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 5/5] drm/i915/gem: Remove iterator and use while loop
Date: Mon, 13 Jul 2026 09:58:12 +0000
Message-ID: <20260713095812.1014365-6-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260713095812.1014365-1-krzysztof.karas@intel.com>
References: <20260713095812.1014365-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0155.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::11) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|DS0PR11MB9456:EE_
X-MS-Office365-Filtering-Correlation-Id: 34a22375-ea1d-446f-75d9-08dee0c54cf2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|3023799007|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: dUGhtMSDDF4xPbkMP0obhMXMD7RAknzzlsAP629ZkjErdi6uXJVJJ1QyQHXEjkAbci0F8abklSGu6VL8cgYg6ABeH4K+3u3m2iCrPH0ZEzUnPt68gHxt4ypy/UTLLlG352wranQblJJmpXesaPrEaAOtzBA3+cq6EUjyaQFjHAYbdgkM30LcjtBHv0qoS7+Q30u9Zgp1cHLXHftVnk7MjrfTwV4UT5CeP37FOCTef3fyLfh9r0kf/XZFaG2B/MPJO2o5jw+sCuWTGwj6LRe9eLbJK1zlqSKmabi15VoX0Nhq20WaQAAbGfnjOte2uFVkkbzEc3/Pc/K7ZSgNjNtOZcjoB5WGaW0+bZE9kc+fw/tTZ3A+53Ic4JHOP+Oaq5a0ALVUsGzMC+pZqQziNdK84G9eRew3lhxoTKLscBq91bRbMD5mQ9TB6N1IbC9sLR07yzNGfrAK4LQPdlEriSFMNsBy+BVlZ+P+GpLsbMSKtbSTAlFsxitw1aXA/4DAaoLvzYP0Q09sgt5v/62YrlLjOykGm1s9Yy2rIeDyiHQvqfKkP3xMD7IFNkJD08ZVdXBUgTzlXUaAfhPcd/76AtDjhngtBfdcK3NHQn3nRhMG8L6bCPX7sDnEcbEeeoX+0C3bRyuacE6uQ10NX20oi2tkyxqJHsqi+sY8ZyMOHY45wF0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(3023799007)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yj6BN+rxKD7tu6QISFleUbReZ7wS8qVdva4tDuXsPerEb0MR6V7z0iGGiQhy?=
 =?us-ascii?Q?HAeaN8MteUfo1BZgQajo6K1k6dBt3bB8Nm3y7L+CVdmevnM6oA6oGOlHhbe5?=
 =?us-ascii?Q?G2Q0nMNCTsqYw5LanMoCxH38zEdQCmPJYJ2WXTepSslGL48blcRJZV9xqEGw?=
 =?us-ascii?Q?KTDTeXCTQ/pU5PlD/X1LTd9XWFQyxf5tXE2vsLV6ruLlM5YvhMQO3VcCpkvn?=
 =?us-ascii?Q?LC8ZJ6mAc90NN4+CcFgweY2TvDD0ErWTL1s5xoHAS7DVzr/1ZFz1agw9squW?=
 =?us-ascii?Q?+oQqYYVpRbQcNWe9IEKXkQBv0LTPBZMM58u70OCAGWAiwjWpUsY51oG1OgqT?=
 =?us-ascii?Q?lSUb5tRXz3osdtZfHZDcSDJWbNBRBbV/9wrS/yHV+2EulZakWo5DcFM/JEVN?=
 =?us-ascii?Q?oViTcG023dkgNmY4qlsb9W/51M3hBLobXJG4UrTYn3k+hepf6fIdieNndM95?=
 =?us-ascii?Q?yPeauosYeSDbIsJmc74kYiFH7ZknvgjlwKjSn27517fb7YdCot+u1C+rxVKs?=
 =?us-ascii?Q?wD/GSH9mS3XOlwd4Di6iWUaMfW0pnJoZwRGFZlt3pXbF+toyWVMPQkIA7cyo?=
 =?us-ascii?Q?QKLxKBi7XaESmUcTJuIs7ZF6agHwhjkbpQSc5sZsSRxp/yWbwAle7MZaC8Xa?=
 =?us-ascii?Q?PK3Em8gTvEF1DAW2/hCjOuGJ7CxwcYEo8o45y/5leb6Dg35au+qnzaeRf42Z?=
 =?us-ascii?Q?/T63EXiSQJHzpafhlk1Nwasr3yrNPxt7L83wdQH4IO7SJZmchhurkPSgM2i/?=
 =?us-ascii?Q?Wv25WgC9OJpYChlgp7UrtNezGjWYpCgxoY7KuBPg9ctOqvG+gA0XlKb+7vJn?=
 =?us-ascii?Q?e/BnLsDuF3N7jQFz7at0GGYkGFKdGJbCVyvGXU3zUWfzo4bGugX0Fl5Cs3u0?=
 =?us-ascii?Q?p3VD1+wjfv3iIpXM3CKiuUv2Kc9xUExwMCp+7mq5AlVkapZ9enCDeven4uKu?=
 =?us-ascii?Q?bYua4VFQY7G/BOK+QVUL9Pm3psnxUk64FT9BOXp5WSzblbqPziweI5eGyxo0?=
 =?us-ascii?Q?OgMWYv71QSblJLSAays9z14JgkD1mHLJ/lIL74X1D+nSbB/RJnUqQu7fKSTM?=
 =?us-ascii?Q?wh+uzl/27JcWzfMzHJ/qPHbjPqOM++Uk8Hm+v9BEEWkFK9RvQXc7o5CdSDoR?=
 =?us-ascii?Q?NVOG8o7WzxMU7b11tP2QX+hdmdyKp+9qrL7tZon7Tzk/YqranPJM3qij85ch?=
 =?us-ascii?Q?D9k08Aq0foc0lRL0Zq0S0kAZfJLBBxqMwaqDh3n/OMOQUzkwsaDtJx0C9p28?=
 =?us-ascii?Q?kvO+GPsLYlvGFiBd09wN7NCZ0MIRQZtW/eN75E3WZOMlEVV7vJM+qm/YiG9u?=
 =?us-ascii?Q?ZVJRSpipK6w/D15nVRbSN5VVzFNwSXEJWMoZdUPuBfi2grN4vb2BejTrTcuc?=
 =?us-ascii?Q?chq1zXBBmMuDGlQP+yYMmqcJyQKQJpc0UXnArkqGOc9pialc/Amzcfu0y3Cu?=
 =?us-ascii?Q?rscFUyX/6y1F2kvLSfLVPno9A1rs+hsOOTHQfnEQcqHTicQrHA0U0lkoRK1F?=
 =?us-ascii?Q?jyPDIsPMTzW3UA0ituGWGZ4Q5XjVDcivvIHUCUFwB+a1cj/0GZN2BUhVCpZE?=
 =?us-ascii?Q?7im7mkrKhI/GBwsTHlxFF5211CgYvwQB1aw4mr2I0y1U6tdoyKIHTqc1dHw2?=
 =?us-ascii?Q?Nu2fAebAvmVWHDLonFzAR6RksanNqkIyoSSAnBRyXK8+DFhW2ojWgJZCUvbv?=
 =?us-ascii?Q?Um3RvbyKmFznvarkIABBMLWjsXaQkUFQge5d4w7axELuu8A3oLLHXqkbA6Lm?=
 =?us-ascii?Q?mSrcxYyvyI9Mrm03Q+00pW34NnoYpLY=3D?=
X-Exchange-RoutingPolicyChecked: Es8Mxx/0x6HJCyBvTWv6tBA8nxSHgycOQgb2MoF3KAZghWoExsSJf/YZ9KcV7ClvGJHCNIziOYqZQkxjAuOxki/6i5z3B/urBF68C84FRCXMWrQ1kXkx95QEPF2TD8Ff3D1Qk9nxh88XFwNZjYb2VMEYVJleAxWYMBCgLxIyD4aAfOYLyJDF7tFo8gYk+Wz3EFlDh5li2qjrCND9rI41x+8p8kFNQA631YD1EfVB3abXYfexk6TX8mOsGz/UKSZFjvbL3Ru/20cExXFWFX8KcqLsotxFN3DjuM9aXN4WbmujK33zt2on0vF/RYZpIW2ngKrfFh71WeiwAdxm0mr9qw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a22375-ea1d-446f-75d9-08dee0c54cf2
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:58:33.8501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YwZDD/2SRq0qEC7zU3SYaTHeF6JTW1hGfEtcd8GKpk6Z8b7b1xpQIVivGMs9KVya6Yk9i7gk1MnJYNw95nWfWBlYqi5eC6hYLmqfeD+BXS0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9456
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1354074989C

Change the main "for" loop into "while" to get rid of obscure
iterator "i" and use more descriptive name to indicate how many
pages were already covered. Detect first loop with st->nents and
put instructions for that case in their own block for easier
reading.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v3:
 * Split refactoring and put it after the fix in shmem folio
  counting suggested by Andi.

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 29 +++++++++++------------
 1 file changed, 14 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 7c8de8fe0a22..66d0f8f6ffcc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -135,11 +135,11 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	unsigned int page_count; /* restricted by sg_alloc_table */
 	unsigned long next_pfn = 0; /* suppress gcc warning */
 	unsigned long folio_start = 0;
+	unsigned long pages_done = 0;
 	unsigned long folio_end = 0;
 	struct folio *folio = NULL;
 	struct scatterlist *sg;
 	gfp_t noreclaim;
-	unsigned long i;
 	int ret;
 
 	page_count = size / PAGE_SIZE;
@@ -163,15 +163,15 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 
 	sg = st->sgl;
 	st->nents = 0;
-	for (i = 0; i < page_count; i++) {
+	while (pages_done < page_count) {
 		unsigned long folio_page_index = 0;
 		unsigned long nr_pages;
 		gfp_t gfp = noreclaim;
 
 		/* Grab the next folio if we exhausted the current one. */
-		if (!i || i > folio_end) {
-			folio = shmem_shrink_get_folio(mapping, i, gfp,
-						       page_count, i915);
+		if (!pages_done || pages_done > folio_end) {
+			folio = shmem_shrink_get_folio(mapping, pages_done, gfp,
+						       page_count - pages_done, i915);
 			if (IS_ERR(folio)) {
 				ret = PTR_ERR(folio);
 				goto err_sg;
@@ -181,7 +181,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 			folio_end = folio_start + folio_nr_pages(folio) - 1;
 		}
 
-		folio_page_index = i - folio_start;
+		folio_page_index = pages_done - folio_start;
 		if (WARN_ON_ONCE(folio_page_index >= folio_nr_pages(folio))) {
 			ret = -EINVAL;
 			folio_put(folio);
@@ -190,16 +190,15 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 
 		nr_pages = min_array(((unsigned long[]) {
 					folio_nr_pages(folio) - folio_page_index,
-					page_count - i,
+					page_count - pages_done,
 					max_t(unsigned int, 1, max_segment / PAGE_SIZE),
 				      }), 3);
-
-		if (!i ||
-		    sg->length >= max_segment ||
-		    folio_pfn(folio) + folio_page_index != next_pfn) {
-			if (i)
-				sg = sg_next(sg);
-
+		if (!st->nents) {
+			st->nents++;
+			sg_set_page(sg, folio_page(folio, 0), nr_pages * PAGE_SIZE, 0);
+		} else if (sg->length >= max_segment ||
+			   folio_pfn(folio) + folio_page_index != next_pfn) {
+			sg = sg_next(sg);
 			st->nents++;
 			sg_set_page(sg, folio_page(folio, folio_page_index),
 				    nr_pages * PAGE_SIZE, 0);
@@ -212,7 +211,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 		}
 
 		next_pfn = folio_pfn(folio) + folio_page_index + nr_pages;
-		i += nr_pages - 1;
+		pages_done += nr_pages;
 
 		/* Check that the i965g/gm workaround works. */
 		GEM_BUG_ON(gfp & __GFP_DMA32 && next_pfn >= 0x00100000UL);
-- 
2.34.1

