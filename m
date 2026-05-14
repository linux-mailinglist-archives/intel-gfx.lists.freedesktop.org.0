Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2H4ZIabWBWqacAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 16:05:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3409F542BF3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 16:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3831610F227;
	Thu, 14 May 2026 14:05:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iyMS3FLq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C088710F203;
 Thu, 14 May 2026 14:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778767520; x=1810303520;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=fVLXiZth66fZGIXO7sYWV1k/lpZgWxeD5bpw2dtdFJI=;
 b=iyMS3FLqId1X8TgLDlrJ1eF64zr6jl4iiJP5tSeD3SFJJsFI7nbguu8w
 Zvo+xJE5KxZdRTzfnzt6yGnl0hPBiRhX3alxVoZQe2zrXiUxw5mui6NmY
 cZtL9eMsnGz71RAo+PYQTd3H3ngjLZYtVnmRyT/IfV7AVRLzddoE0rYrQ
 5gQRmTrY5Bsv6KqLa7VAZG57eYF0rDl4AfR3/pFfymHjISL82/mHxrThp
 Mo8BNs5Pqeh2TT76G2nNVPHRRQyUFYVKFyUWwYo4UdjRiaUWfyyj0Xo5m
 6HpHcYa/rvMEP6y25i3KdRsmyU4Uz7v1DT71rgQ0qcfmXnsUaHkinj1T3 g==;
X-CSE-ConnectionGUID: ZwDiG1UlQP+BhOTKUQMQ7w==
X-CSE-MsgGUID: HJc0HE/ISDGH7lwkw/gibQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11786"; a="82277458"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="82277458"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 07:05:19 -0700
X-CSE-ConnectionGUID: wFGcs6StRWWQbFRV0VvexQ==
X-CSE-MsgGUID: kL9IKOoZRQOoLV7woASaNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="268741675"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2026 07:05:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 07:05:18 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 14 May 2026 07:05:18 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 14 May 2026 07:05:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jihtrQu8NUzEl2T1JSWQ+7X9vX1/ai9eDZ+kXpSFMlG6QSEY3W/hd2MjDdM0f2EH7sw8tNiCdv7dfm8c0IXIco0d59H2FoeY88jXmUUUiZixw2DOm5w9QL2C385MDnXIDJOk6Esin5s90jcYTe9gIE5eN/X9EvwDEMy25/jTthRlg0nrCfLBJ0tHa0bWEI/LSq9WbvBro/IXsOWKge/oOK1cO7Crx28WI8gK/2TWyNP5dtFoXNnu9WtTsZbKKcl2+/SGnGzLX03ZAE+dM7dLF0wmSsKDWESFsTOa1Q94bt+LtbxM/S5pv9ahhHB2AXX21dKOmGlEnxTeXFQDBM+Tkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0DryzRTX6cKzPSlIAoPSQUtPRvgVqTqD0P2aDmss9Sk=;
 b=bu4CV4A4drcoBGaR6/KJM6pBqV4I2XLUpXn7d2Xc4UJ515IJwPOLgE8M1JvdMPhoQQXBOYTJ5HbwdHkSir8zYARUJ77cgjYOBwdIOPVywpg9cq3Vs1RryZ777R3Hk9k3nD2O7LvzwYLJ9cqKEFcePAexZpzhbFZn+8ZRS12dLo4lh0coLda4JM6O+fgGlRYsolwUL+w3RKPblzsSVoC6i+10stixsGL+ilJFqi5xwjbArVzr1/5YeiF6vKp872Rad0L27SMih9uq6JFRceCAyrlSOxVf4iyTuteSHlBkuLW/uGVkczZ1bxQWJenfFPGLWMWkNrrI8snfTFvjlDZJoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by LV3PR11MB8529.namprd11.prod.outlook.com (2603:10b6:408:1b3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 14:05:11 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9913.012; Thu, 14 May 2026
 14:05:10 +0000
Date: Thu, 14 May 2026 10:05:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
Message-ID: <agXWkM3Y98bqt6TG@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY3PR10CA0028.namprd10.prod.outlook.com
 (2603:10b6:a03:255::33) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|LV3PR11MB8529:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c9c688f-d7ed-403b-cb50-08deb1c1cfbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|11063799003|56012099003|3023799003|18002099003;
X-Microsoft-Antispam-Message-Info: AyUir3JrPJYTR77M3Ws+yICo3YgWFJOVidtmIyvxYNA+gkRjIwQZ1dykn0VO9EXMyzMZyvoVqli44Ll7ncp0uL9nsn5Gb9jgkCeRLi26vifDk+2yq6UDJR5grpKm+VtDs7pqsGjiBjSDFKy1JBWYRuttBXr44S1m/zqXRcTaae4ZBSRbfJqGs0W7oqivxdFj38y637hryLqBkr22t6/xAVvpr+HPEjD6T0dm2yWgrUsZVIBgpoW9I2Q3awp6iC588hc6PbbwxV4mH7tcC391zE/1zcoiQbWbKt62dkYaS+WrFxbf61xfX5iojiH/WMJiPppnf3C/OLvMOpx4us8MjnteBanjDju8Y0FD+DaU11cJEX9PRIXPk1Mnu3yTeJLAEmacbJs1seWkpRFOc+lpcKEpXBQZMbcuGEzEFe/76so/B9STwxNSz2CIsGi+KsvU/r1iJO/7BRUjdSC6yxCpUY3PW2fcGqCSUJ7hXtqvtXyUEsvwqcrSSU3Q7lQBXxHHIS3jtFCnT0rCxBSjpstWIfTder7X6NVUpKqackPKEujzezPo4BmPSqDTNzBV7u1UhgfYaRGfDD6hT2ACPzR+g9P66YY4e4KttRnEDgxYwOcJwPebZVvhrSPrdEyBcDaqMrusEhGzSPP35UQ/w4R0nw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(11063799003)(56012099003)(3023799003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ArMTlbMm1MMvw90eAOhxeQXBkyUGssFp89boAwz95Wel5PXZVuXly2Af5uVT?=
 =?us-ascii?Q?26wIusLxZeEy5njQ1g476b8Phqi2mAU/ABTqEuJif8iveEg5OC0kBXLyNcQq?=
 =?us-ascii?Q?0mNmA505BpYG5RfQfBxOnKthM+o/h8+ikqG1l5s7LcKpnecwD+K5dl/gmNjc?=
 =?us-ascii?Q?DsviiA8mwNrgrF6t1IshSI85yftnfBZj4YjWXMnAdIYJhSUdwoMh4iDeFO0c?=
 =?us-ascii?Q?DJfmOjNfj3iLMXk7NnNARpgDzJVVrYJmd2nj99GKkmHJEZhYsh3A+GzgDz8r?=
 =?us-ascii?Q?T1CeVvhOSAy97ctURxZX4uqnHp39Ttut8QodW1QdDmjfMFmy6AQqBA6oh7qV?=
 =?us-ascii?Q?XZiyDPsyrEH97NMV1r5uBe3+UgJgDpk5y1X/RSoJAM5v0AqKD5Nny3ixIhQA?=
 =?us-ascii?Q?X7AUOslzPx1VyECMIdzwVExmcsJzdlVCEPoJAPjXiFKWgFcNcoWHj7Fxf2tS?=
 =?us-ascii?Q?2xswtAy2kYfCnmw9Tgm+iETeb1SZDCTFk5uEkb9Qgh3tM5ZVSfMvSj8J++MV?=
 =?us-ascii?Q?FhZyQDjVZZoXmNaN6EB44vNJBozTi/RjMJgawG+KuMKs/YiGpnO0J8CtzDhw?=
 =?us-ascii?Q?VgDdJGMY5bHfrBcgvKYdNuo/rYqQtQyLBDW/suhE6PEq6yJTfnNYx0VerhAo?=
 =?us-ascii?Q?zoIV6cnZ90+qYdGxnV5wlj4C+SmzStWpj1AEG4+b8P5pPg3GPokzGNz9cBXn?=
 =?us-ascii?Q?FFCmGNB9Tmrv/YVNh1ePbBdSx2fTwn3fZTNydgfWPfhsS0neBM+ZhNGH12Vs?=
 =?us-ascii?Q?S4ZPp+2e3voRwKEdVlZgxgEcdO0Vd9E+aefTlw8kNmN11BT9kfVZmCdH9NVR?=
 =?us-ascii?Q?DTT4TH5FeU0JoBx1iggHo4PHvC8A3MCTpd8fxpMwQYfCi6qerWCmwJJZMQNW?=
 =?us-ascii?Q?fkoXv1SJLIeHx+YSdTMHILN9e2h+U6bmdpz7YKvpDEpm/WdAEhS81O1c6L+i?=
 =?us-ascii?Q?2Tr0T2Dk8DusCoiDIGelyEkj0QCQTJakVEbW5yElLC9twrsj31BC7SgVcQJm?=
 =?us-ascii?Q?h/NFPA52exTk6wWKiNp6buH3EEy7mXyqZ9Saya8q7b6f+hawERDQ6iLs1pVo?=
 =?us-ascii?Q?Zti7qaMeucMwTgLcYZFTbAtm7J85bhMXrfyQQElwSy1IMCccxX/MkEgaa2dt?=
 =?us-ascii?Q?5kiIwAJze6JUf8PI/LWrJSawHgNceiKoeQ3R+gx6NpAWMGH1UtAU44D+vtR1?=
 =?us-ascii?Q?zYgYc+ZNihhxROYAK9QHIDtsnNtRsualgzgnR6wGp71LP3+0J0J0EV+xDCe5?=
 =?us-ascii?Q?nmJE6tQKaUTd6DMNfVi2DjJ0spvYKqA3VNUsEiNjQfLLLtMrlxtppHb9FBIX?=
 =?us-ascii?Q?7Tm89Z/YI4W8qjauvMlnB/sCxLe0acheCL3JaI/MFJIj0K+Moon+pZieJsYG?=
 =?us-ascii?Q?Z7ROX9uXI3x5fh+vIk4EpeFvnk97NaJuSl7PMxn2Hb25eIr7e5wEyQtf0igv?=
 =?us-ascii?Q?KPfBN3Dtld1j7Mx8gVoUnI32tjfbQWYIQN+81jSJ+Hn+TN0S4rJ9jB7FGHYh?=
 =?us-ascii?Q?P3pWMKgJysyiadH8pNPoE0yURCnOkxvp8dNx/0ftLQ40q9MFctme16DZKL3j?=
 =?us-ascii?Q?ZYjRRRC/8y+OE1/JetqJ03Hu/1HVELjWlAxrCW57nwk6Z/wsxpVxL+sOZgeZ?=
 =?us-ascii?Q?G6wjebrHhAo+OHBpu64gBPY4CvnD5fIYoLk+xYDYCcU2RnanGZeqrC3N99e4?=
 =?us-ascii?Q?aunecr3R+FN8HLdoj3DT2KyrdKJDsLQWqv/30Fonp294iFADBk2qNp8QkM+p?=
 =?us-ascii?Q?R1rOChFTsQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: wogxBt/VFhNxmJVrGXF5+Z+9a1H5EPq6CU0KCMrHDyM7ULjaoTQX36FZ3Fjlo7NNS7rO7q+4AMs4S51/elNwnZpvRyUmZAzra3PIYQMz3w66bkW7pwqTPIhDGMLMOOL2k9U+UA+ry2IuRuEwYZA5orEnThwlXH1XHCABwL1iKyG5rG33zMyLeHquUhSMV5e+D8ZpQbBwhHskCbbrZpgga8Nz/O0tgxXSaZByqWwiSzYwQ5RTUSbT3wEkDFFoNaf2/JsqXJwZEmgnVAUoFO/y3vE9jLEtJZzWJO7fKe3HssdEkpqalq89+W0kNqRE+f8ukOZ7zeEannKe9TwpOWBkIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c9c688f-d7ed-403b-cb50-08deb1c1cfbc
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2026 14:05:10.8412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /Ym+gA0KfWTFaVi0hkTJ92GKDouCeAWU/U/USH5XYiugYqoYWaQ/XZngyyVP4sdT0/cnvGGoXdTEhxQIr1Dx7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8529
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
X-Rspamd-Queue-Id: 3409F542BF3
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi Dave and Sima,

Here goes our xe fixes for this round.

Thanks,
Rodrigo.

drm-xe-fixes-2026-05-14:
- Madvise fix around purgeability tracking (Arvind)
- Restore engine mask for specific blitter style (Roper)
- Couple UAF fixes (Auld)
- Drop unused ggtt_balloon field (Wajdeczko)
The following changes since commit 5d6919055dec134de3c40167a490f33c74c12581:

  Linux 7.1-rc3 (2026-05-10 14:08:09 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-05-14

for you to fetch changes up to 8fb70afe671cc8c1f6237a39aabd50714fcd1189:

  drm/xe: Drop unused ggtt_balloon field (2026-05-13 11:19:21 -0400)

----------------------------------------------------------------
- Madvise fix around purgeability tracking (Arvind)
- Restore engine mask for specific blitter style (Roper)
- Couple UAF fixes (Auld)
- Drop unused ggtt_balloon field (Wajdeczko)

----------------------------------------------------------------
Arvind Yadav (1):
      drm/xe/madvise: Track purgeability with BO-local counters

Matt Roper (1):
      drm/xe: Make decision to use Xe2-style blitter instructions a feature flag

Matthew Auld (2):
      drm/xe/dma-buf: handle empty bo and UAF races
      drm/xe/dma-buf: fix UAF with retry loop

Michal Wajdeczko (1):
      drm/xe: Drop unused ggtt_balloon field

 drivers/gpu/drm/xe/xe_bo.c         |   6 +-
 drivers/gpu/drm/xe/xe_bo.h         |  88 +++++++++++++++++++-
 drivers/gpu/drm/xe/xe_bo_types.h   |  28 ++++++-
 drivers/gpu/drm/xe/xe_dma_buf.c    |  80 +++++++++---------
 drivers/gpu/drm/xe/xe_gt_types.h   |   7 ++
 drivers/gpu/drm/xe/xe_migrate.c    |  18 +----
 drivers/gpu/drm/xe/xe_pci.c        |   9 +++
 drivers/gpu/drm/xe/xe_tile_types.h |   2 -
 drivers/gpu/drm/xe/xe_vm.c         |  51 +++++++++---
 drivers/gpu/drm/xe/xe_vm_madvise.c | 162 +++----------------------------------
 drivers/gpu/drm/xe/xe_vm_madvise.h |   2 -
 11 files changed, 222 insertions(+), 231 deletions(-)
