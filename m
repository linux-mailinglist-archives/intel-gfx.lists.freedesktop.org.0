Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHtmHy+01mmFHQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 22:01:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0ED3C3854
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 22:01:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CF810E04C;
	Wed,  8 Apr 2026 20:01:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dEyokWag";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3885610E04C;
 Wed,  8 Apr 2026 20:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775678507; x=1807214507;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=j0ut1+5yajiuTZ6szu9k2r1otppKDxsG2MvRPIPRHaQ=;
 b=dEyokWagBTHn+fsUCFd2G/4t3faSkpa1wEYfB2z8PWCRr0GEiEjLlkFz
 f6DFwbXSQscy6iiaoH2usEG1up5+wv/YIQuLYHSL92m92S14qiSv7W84N
 gwBs1JLeWDm/NNWyxNgpeawpQHf8iZ+bXD1dL0mpIDOtsKKTBbxaqHFGZ
 1pExK/lf5wh0DEfYBZRXeB6nMPROZQSfIffsEVrFLVC1KpQ9T+Bzikpjz
 Ag3RqB8PQLQp6RoQXzgWVh0rYR40YDfG24/lKrbqAt70q52HW1UpnyNCG
 TItaztqtxudjgJcB+2d7Idbvu38XpljbhW0jTlkf+rOlBaIbTJ8cyroIw A==;
X-CSE-ConnectionGUID: ltIuWYaISnWpAla805D5RA==
X-CSE-MsgGUID: iDZM2BMXQR6DUwUtiKCqpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76795167"
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="76795167"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 13:01:47 -0700
X-CSE-ConnectionGUID: gzFp98OQS2W5P7+/nCAMgg==
X-CSE-MsgGUID: HAENJ0CARXqrkvwPM9t3Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,168,1770624000"; d="scan'208";a="222056808"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 13:01:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 13:01:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 13:01:46 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.3) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 13:01:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZW+a+qrK9Y7rbca5ROFGNRMr77gq6xg9vazQ2tHOBsnMhDaZSRUB/JlE9p2HpQFEtse88hRfA9VIxmSKMqgngDUKgorssTAJ6GCsGxBJxRsNyvA9c2cvuFIJLuuxjygLq15pEcDERsi/FRZpNrMkCBxi1XYOn32tq+Vpdl7ZPYesMFDWlhD3ni8RQoP1FASkOnDN/z23nlzzM84ND1gN7qlJTxHoIRKHgU0UIsfg/Ec+SZAuIOXzp2pUmAnEbmwnnLOhUZSwZ4b7Sy++hQzjOq5Q+Ljt7x0jDgnOxaPjPVfBjEiWzz949ikxdhTOgG1+EqEQVmaL4uIRNvrU8ctWfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ODdmi2diE06UftFTGcUB4zONSKn7mZM/Dp3kQ5orOzM=;
 b=M0/uVImHTTPqo1k2dtQKroxo877W4bvPKegRpP+OR/0RjfCY2nvDiopgCZNfTgsj5mK+ttdK55N25jWuCSSmQYzwopZCZUT7YGqHQ7IijlVXTs3KOkxKj6k2X45MBf9g75bRetXVK7A/IzQK6fbDAcDAF1r5xSjqRvkyF/LyX8o+QzGwvn6j6StuPzvRxxRAGgByuZxaa3UXk6L3zJnPyiWmSFh4YKqHcHZauElqJXbgTIWSXmdA66VL/hZj00itid4YfSKIbL5bCGT8nK0W8R6tVve2/Y9UGvDqTzfpDwmaQaMvrHbT62Krnv6vl5P0UZu/9FXUlZ71f48wdEgIEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 by IA1PR11MB6537.namprd11.prod.outlook.com (2603:10b6:208:3a3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.16; Wed, 8 Apr
 2026 20:01:42 +0000
Received: from SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::79a1:7b0a:45ee:cdee]) by SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::79a1:7b0a:45ee:cdee%5]) with mapi id 15.20.9769.014; Wed, 8 Apr 2026
 20:01:42 +0000
Date: Wed, 8 Apr 2026 16:01:37 -0400
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
Message-ID: <ada0IQSyELI2V0Og@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: SJ0PR03CA0283.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::18) To SA1PR11MB8427.namprd11.prod.outlook.com
 (2603:10b6:806:373::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8427:EE_|IA1PR11MB6537:EE_
X-MS-Office365-Filtering-Correlation-Id: 07ab4eb3-1086-498b-64ef-08de95a9a772
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: rAKY80h94j7kT/yFg+/YGANqepODbi/fMzf0+LllG0Z9n4ARGUbKmLxKqg7Q7eLRnGDYAoQyoOyR76z4a/lmdQzW/cPmEdgq2y7aTxbDfkYMbuJW2/LZMTM0UBEDZi+btTo7SeTBsYfkAXIiwJj2420wDLe7g8SfQRUtTRG3WniJRSSOftt2aA52aXPQh7kDPfoyA89fTsrqB5kDms9ncvER+n7ldNkiHVDInT/yqjc/CrHrj599rhxtBGaVFF2aCw0sYGj+rtJUZvVFTaIHsXLZZeOANJkCq1otPbyxhhGIiYLGd2I3fiwENX+tU+4csOWnBt5xpGOECVOo9QB5JgmZMoLTA0gDvulmlTaDqqraYN+20ZUh/QCM1uafa0OuK+Gla8F/dXH0/Q5fCakfM/qeQ7UkYhJFdJg0uQK2ginBNA0/T+l3LNIDtc+4Ntn80hQnhc/rbqzIsRlQ71NrCjH09GwphS0OaIPyDd8qzwqktwgdJXUiPE1xsVqnC+DMvmIcJA1ZaHJcP+seTOgjcl6vaHr0ZrKFHKbqDgIvexrNtqpsKuheMCCH3IYdckjwoyw2zOJDWoq98HSJylvSUjV4GN7JDThhM2M75cG6ckUvelRJyoNsp43ads/MDQ2GcqqSM64BPkUiG98NNI7hOv0opHW2BvcbCQdIEga6WwUSqhHDLZLA1MLy6dpEMVB2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8427.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?moSYVM0KstqhKi6mKKZsx0KT7mU4wRRxkz94UWCcViyHe3GUqQNhCU89Ue0r?=
 =?us-ascii?Q?RDAs2RNd8br8cc/kIaJmzh17Sz14NVhFi8V5mOmyKxg+CMyFNobfsr0uGwZx?=
 =?us-ascii?Q?+DNq0Skat+JFuZw5g68H8EWtGba5AtVpWjSOlvcYhWiJ7gliGWavlupL+HN2?=
 =?us-ascii?Q?O/vdeDjo9+ISRZvKl+5TR3xnr3S+hWn37KzCmj/Cgg3BIbsaeX6v/WBPvM2z?=
 =?us-ascii?Q?PZm6FNAsUkG4gEBDtUt/g7KrPVl+yL2VBkQGgEso1YaeLVjIPhS7RpK7gZN3?=
 =?us-ascii?Q?0+KRw843fxAwjL/1OiJ+jPv7wHgKzCjoAaZcIv1u1LXADxXrBgVtclhafuTT?=
 =?us-ascii?Q?8aGhtAFpF7Nb44g1ftDvhI5X/6qqmboaXmCBXz39sWw06g1Jx8uh4suMt/CQ?=
 =?us-ascii?Q?oVlrhyWgidT4+RItPRXSS7s9pcy2TlHa57ruk4cq7KNnwpZmAzFX8tjExGjn?=
 =?us-ascii?Q?NJ9OX3IV3Kf4ATi+BEfVGQWsrM6JVASMPs9+ClfLcSB0lk2PKE5o2MYN9bgN?=
 =?us-ascii?Q?w92AmwZ3WypCisF02sZsE75AOdzSudPI1V+e7rI/UqiPQaA4kORu301tBVVH?=
 =?us-ascii?Q?aZakzEeU583/s7U5k9atuLA9PQow8mI8lKsPAYzD+QTBkl5x5KnhY/RzjNxH?=
 =?us-ascii?Q?6zGdfZpaXWbcZPJ+l5e8QaYTrfWFog0Xgp2FD8nK8NyncU6u32KgZsTWWbTN?=
 =?us-ascii?Q?/HfapHPAhVCLMrpjtu8LJlmQC2mc+rkctnvciLjCZt6i18epO9eR9e4UMMeJ?=
 =?us-ascii?Q?ELBF8EujQSXh6u/9jQwONxhduFDUIME9LaRKa4xtv2zVNbEQoQvJX6q0BCpn?=
 =?us-ascii?Q?O/2DTKCKv1wL26dB2wNT7qopWDimuUOXu0SJmkMM9aLRuSPvhLbaVC000D11?=
 =?us-ascii?Q?CV0oPg8dt4qlf2grtTziJD/UqrdJp8hIqhesXfpI5+2Lnk6tH3Q4EzXFsw68?=
 =?us-ascii?Q?5ONnvk8PuNK0UUwyaSPnpzPH6AWZ1yFod4i+tOYROHf0N3zi+H0IGMBjGdiz?=
 =?us-ascii?Q?1iKWO71/fZ0RMfMXnA9v6XEddVfZovVW3BG0E+MBY3uC+xyaj3KRIcEjoRnj?=
 =?us-ascii?Q?M80yJpaW8C2xQ+r80VmXSBcss0A8ysHz/r5D6HiTYW4uUMa7V6Ce4aNWHRgg?=
 =?us-ascii?Q?OnCyHQekvasrD3B36pNwkgIpScCijD9VI7q4C6OD68Ikx84HlahEzqv0usal?=
 =?us-ascii?Q?tmJIBaeuNLVxXSbhowl6LFRa+q0I3KnH7Lm/jxmfDa049yx1gjmH2ywg1j9i?=
 =?us-ascii?Q?d3kQFsOGCVNaIb/z7T7pFF6ICodt+zyz15n6fBykBOb1wgUIE1uemSx8zCbL?=
 =?us-ascii?Q?zts2yVAl26hAF7ey47aNq/Vhuw01atIjvB6hxvPgvIDb+nEyqCNCyzLM+yHc?=
 =?us-ascii?Q?NkesviF564X7JPQLwrd5FJdo0zhTgdCdrTg7Nanm+IUZ8EZgskihwCTayvqL?=
 =?us-ascii?Q?ppQg6s12Ekqr2Eva1L8o9UELB6ua1zaf9QtCJz8dIpTPYBjZa5+59IzzGJaI?=
 =?us-ascii?Q?eqWpMLKqB40orp5X7bW4TqMXb4tyQ9DYFfbekudPB1SNBLOzT8q8o1pxRZ1v?=
 =?us-ascii?Q?Dkmgrp8fpr8OTFTprHgmuBfreq0Am+OkOoLka4dtb76iwSHyhFrxMMA4taz3?=
 =?us-ascii?Q?oQ7Gvb4DBfJnYiLruq8El+ElteqRlrSdJXdTNpbgwhFPfvCMLcENUET0kaFS?=
 =?us-ascii?Q?PE1rrWvFi1SlDXXg7oz+lgSXny4KeUzTlKmp27ZSzyjjwH+SltgJ92bYPsT9?=
 =?us-ascii?Q?gehivIhmYQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: AnmToNuY5HuLo4UNgwfz1Lwx8f75N5dHyDKMt2CuvJEnbcSrBhjb3IFvfxenSdTyPC6sk/0J/gkxzZKdbCnzqCetGVOciZXTqT8l5NxpGOtU7LNizjs2mw3bqd7d8nXZkiywM4pluLUF3JDUE6894XZk9v50TMM3J1jHQ+H2VOf94llD2Ha8TOys5hX2Basnl25ciy3eFPYn8hS8fuy2vvLPLELx/ZysadTVhS5lCB2MCPyCfZLOT7D80TYXMi1zxCaOEaAAfZk91HiwBuaZfErTa2shgG5/AypNCN/0BDd7YjkA6WcvjxqaR/YEcapMKS+OC7Qc4bT6cg88qgDeZw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 07ab4eb3-1086-498b-64ef-08de95a9a772
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8427.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 20:01:42.6592 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /FZX8OP7BA5hvZNRJOYyYbZrhujTGEPrZ/yA23RUHUYsnz6Tqp4ET6null/3QiIh22l2oYxiudvhhIZtcOIaqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6537
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9D0ED3C3854
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave and Sima,

Here goes our single xe fix for this round.

Thanks,
Rodrigo.

drm-xe-fixes-2026-04-08:
- Fix HW engine idleness unit conversion (Vinay)
The following changes since commit 591cd656a1bf5ea94a222af5ef2ee76df029c1d2:

  Linux 7.0-rc7 (2026-04-05 15:26:23 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-04-08

for you to fetch changes up to 7596459f3c93d8d45a1bf12d4d7526b50c15baa2:

  drm/xe: Fix bug in idledly unit conversion (2026-04-07 16:17:25 -0400)

----------------------------------------------------------------
- Fix HW engine idleness unit conversion (Vinay)

----------------------------------------------------------------
Vinay Belgaumkar (1):
      drm/xe: Fix bug in idledly unit conversion

 drivers/gpu/drm/xe/xe_hw_engine.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
