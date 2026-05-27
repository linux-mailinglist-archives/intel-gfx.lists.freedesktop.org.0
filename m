Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAVFA9n6FmqGzwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:08:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD915E59A5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58EA710E802;
	Wed, 27 May 2026 14:08:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HQs5/0Bz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A4A10E80E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 14:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779890901; x=1811426901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=a1mIx8QsC1RDJ/OTaXgolZCUqG4v34q/MdInm7jmloE=;
 b=HQs5/0Bzr1ZAcvAa6dY8ckuTY9x7jmWbsCZTwP8u+0fFak9WNzYF6Q51
 U9TpPOXn5MS84YobGGnPVMR2IDHGssXTOUg8QetBiKfRK8mnqWWvHo9tJ
 daeJe+I36/SSZ2e058U2OlzSP4vGTza3kcJI5AB9d14afI5yxUGF638ok
 AEwXxgQ/v0UqzX4q987MYWRNGikxs43sDyZGwzOd/G5r8Uu3Rg+d3j0P3
 FKcjTD2pDkWWYY5mwc3Q+Q9ONe/43oLWRqW92gwqsVAN6DCh20xoNXD1x
 UuqOpiMRWcgHvBi2GfJffN/PHsF0txpLqsrrrBkeGTBgQ75cYm9tyDRT3 Q==;
X-CSE-ConnectionGUID: 3ccKVuLoRf2B/mnrqSOAMA==
X-CSE-MsgGUID: ZaPv92zdRMKKlO/xjpRL3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91826701"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="91826701"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:08:21 -0700
X-CSE-ConnectionGUID: bCDJpeEXRESfmOGMwziCYg==
X-CSE-MsgGUID: YQQdE1yISUS87F3AridDOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="241212888"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:08:20 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:08:19 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 07:08:19 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:08:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HP4DcReK2qTF0nREL3qq+awTlG1+keqmYlSVwMwpBhqv2Q3fvJGvAVYZC+56GHpRI4jgXXxivWKLXSGZudqz3fQN+OiR5ZZAbyprLRd6o4kmXHWG89Xi291/rRG49vbBOb61k+AIYymZ24EtNB34/gXzHjuEjNKuVwvJb0AuR2o7HbsffSZS244/kFxB36HBf/e4iOAa9DHdRl6KTgMnlWSWZfCJWGM37sSCa/43s54doBIaYgHzKxlfur7N+d+aLumzudg+8NFphXMuHFwhTvd/sty8hTZQdw+RZIX+NIBCEgDcyrZ5e+lTHJTYvd9Fzlc5FQq73HT4GkdbooCeng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3GJh4ZXKn6cbOgC44oI6qZptNYJzAvqVeuIEZNee98U=;
 b=Q2/wQi2qEuHQIo1itw06FEZgTluYLNYZp5+hXzlqARgCbg4qrNysXR1ofR8dgTFTfStCRL4RxY4ABVQuByf8/OouFixoPzHm30hI2BJvCoCcVMrXXwezOOT5ePt9fIdAj3SYvXszTBMpMcl9r+N8lNMhSdCHyw2oK+A9+wuXh4LXN95KeZw07aSaqHJdComySHPHL0Bp1bD6JIgK4rXGNk4at2wdLVxKPXI8DXm0/tLTZc9QxOXVTPlt2dv9iInfsvXRPjXqF7lN1ZUZKmtAoHjNNYeS2xiM6Q2VyHs8cdtTY9B7QSPz49y2ngjKinKY8OJo/VMKmeUWvDB2x75AKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5149.namprd11.prod.outlook.com (2603:10b6:a03:2d1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Wed, 27 May
 2026 14:08:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%5]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 14:08:17 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC 1/2] drm/i915/shmem: Prevent overflows on small segments
Date: Wed, 27 May 2026 14:08:03 +0000
Message-ID: <20260527140804.2866189-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260527140804.2866189-1-krzysztof.karas@intel.com>
References: <20260527140804.2866189-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU7PR01CA0013.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::8) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5149:EE_
X-MS-Office365-Filtering-Correlation-Id: 772bb300-eaeb-4439-1b97-08debbf9653f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: PGs0XVF3r23LKrgngYdNyGoxL3cy/YjBYscYSLIAjigz3McDvDL0ngtKOlHN/FuLSZ6lZIXMbXGw7cac0Ch96hOaQQoGlFGK2Z1c+2XpP6bze9/F/yEn39rtunzup7Iz59Xrtt3qXU4XjFK6ayTtFEq2zb9DabxCHw+DUSBkXycrMPGqyfRfUfP4XQeN/ex/N6XVax8u1KL+aCLYka3UMUnYbx/ZJDeWkkIdqm66H5pQDkOGEEhG/gNVOBfFfy/Q0SuCBhfdghO3YEcZuwxF+DMiXkMfm3OW0Y7aPgFy0Jjjwp7AMrGNwT8OKnEIRDHkBLhdkPcBx86hgJp1dc1APmkSsAGKiFcehxPAurckAw735WRw9a1t/YUC0fcKP7YLAtL7EjG8g1+kiuHJvDhWa2VgRqVFvIRSAH12m/Ljl+GjtTMoyYeP/J91BI3Vm9HZmNVXQxBcSrjNFsPogXW493BAT5qgSLMdr4f8a0duLFG5ESNjKSBCMR6gFb8bYkJ9oeJbYCKiTRphrt+fcRcQsbRt4mK5UxqTe6EruTv1gbWzs3jXCJq12i2Qky1+bhJw/Nnhzy7KZcj3/BSIDS41+U/hVsOyyUuwAad6VD7OexNAesyFwWKrIPeE3alNiG/31eaA1YF1sIe9Gg4CdCbysg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iWTDAOGrS8bSfr6r21wzJResOSQawLVNM8edI+OFwkVZtKqZCqTe6YZuuuRE?=
 =?us-ascii?Q?SX0zkUtnzUXVbzei4MQOTpbyT9oszeMxar80/50U9gU2YnFuACPQx0T8ym4G?=
 =?us-ascii?Q?XaxvqyImWyjt6qf+Rrn9BfQ0FIPUqR9DiHdk9kwzLWPZl22y1/k8LgiREwLZ?=
 =?us-ascii?Q?BlondgkggmyDZ1dZBZwDvWKYxlqgnD3E9APa+kthxF7duoP0CmP3mYCaToz0?=
 =?us-ascii?Q?Hzq1O9pZTkU2mG+2tOpdi5411vxezpWR+JlHogsNHuncHgi3Gc8LIQwv8aiJ?=
 =?us-ascii?Q?ZcZphFgOviqwrQZ/gukEljE+ThVgFpzUYHQgmHmHHwTWb1LtlclY8MbDbpTl?=
 =?us-ascii?Q?I1byLP/xi6N8R79n8h5h+69kKNY8cfPGdL5r+nMLG6vGY+/JBuK0y7llqHnX?=
 =?us-ascii?Q?40XzF5cRxoHt8wpjTjdpSu0ivXkcmQaEiXHLmkDYDZnenvneWLMrfvXKeg/i?=
 =?us-ascii?Q?LR9Dz81tK60ErUAOlKWYSRGdg1i1F8Ra6ykqtq87ut4fQho+6quCU1f4Z6PC?=
 =?us-ascii?Q?HRvZlD06HIF3K9WuBENWfzONTefaOzK4kEP4fohFLy5nNws9/XiB5hhckT9i?=
 =?us-ascii?Q?5MZGm0bktoiitU1V/CjT4voeZbTIKIvP3R0HEMgEtrmvP+C6+2HDBFj2+Q1l?=
 =?us-ascii?Q?vJ4bmR/p8RaGMpcAkAq1L+Yp55h100KbGNyia9jqaWXwQJZVIhrp8S495Dnb?=
 =?us-ascii?Q?Ed11lwhmWXchGA/HuN63ZtGA3Vc7S4wogfPTnb5La1hBgdtWRhA7tmp4srZI?=
 =?us-ascii?Q?NBcmY0lJ7lHBX4w6u+BkHXssbZRX2YRLsYZyuvT0DoWB+GysDuCXmrgfMnXm?=
 =?us-ascii?Q?tgM1kIGaNkoEPTzd5zDg4Br0xWZevfudrnNIE9UMWPviaynyD/lRmu6sc+KE?=
 =?us-ascii?Q?4CNzbRtoto8xUiZ/89qBBvDqZAuGwkOCAdbI5GW4DjA5tayZOQVKYNEb3v0D?=
 =?us-ascii?Q?OzJ1wYJOS0qv6ZORONaZ2cQsNKxxWjXjm5k03Tx3yH77ZB79QaLyRO7VCNSi?=
 =?us-ascii?Q?UV4txBYycuqAGdeqyzyDBNFUL+G+4zY+5jtcA/ehazcJp7+bVb9P6E4u36MF?=
 =?us-ascii?Q?JCSQ0ReQgghhTPOMDMDuGm6DbEq1lGu7FiHG98eYY3k9zZFLtVFVHd45eqGF?=
 =?us-ascii?Q?bP+2JBPTSrrOz7YG04cuZ3hf97G6xTT4eZAss6hFsfx/v10kDvqppDBc2czv?=
 =?us-ascii?Q?E3y70ryho31S8lsQOmbvlJcGSpkCb4ih4YxiMmbC8x9k6m78t4EvyLZINTCv?=
 =?us-ascii?Q?6th3th01Dbeo5rIzfYjYyqas3TnaXJnyLVqYZ1DawBqDkaoY3t+ThHSPs189?=
 =?us-ascii?Q?b8tPi9oYXCJujtd5wTkYNaBqxTaYVAGodtAs/SKLUbbEspbJ9/StdCR9OL3A?=
 =?us-ascii?Q?nT0yBthOv6VU6TY8jQefwM+YjEr/TgoyQ37OkzZvNQ2+oJaUlE7f/k2UaHyl?=
 =?us-ascii?Q?8XwfrMlv2BhHRW64Iw+F/eRcfenKSXMQEjzXwv5aI7F7rmBQAwuRDmoVwjQw?=
 =?us-ascii?Q?R88/OwEigdpX23brEzCO8Kx3roogPj6/AUWDVM1YvOnPV6fp/2LS+lsenI+W?=
 =?us-ascii?Q?zaa7atwM8D+iM0uTzkvwAOSD1NxOHFjmQemv2RWUyuv6IF9m2HAqYP08QuEz?=
 =?us-ascii?Q?NcJMsX0dTG7H7MqYL94oMt/Ip8feT6bLRTZmKZewKpsITtjR5utMZH+gmuUt?=
 =?us-ascii?Q?bTDblDA0no/I9z5YOvkur2pelKcWyltxnR99DrR5EoB08azei7gFRvIift/d?=
 =?us-ascii?Q?zi92tLjDx0Feci7Y0dlAU1Tr01ExKrI=3D?=
X-Exchange-RoutingPolicyChecked: O5jFF2ZwfYlS1uNvaOt6vznNBa5QLKY6oNJbxfU68mvd3Yv3ekbXCdhW+c9xcp26XzgmrPznwgtais9xV11HRFJL9Or2NXnGoTV/7lsX7fTPhJbXOljqN/N4ry7+zK2t/6jGhzneSv0vn1S4/mprxJVkSblNTWhZc/cWOpSQriC2Mte/1hCxSQWKkHrJu8VRlLZx0IOLgQKnNZHdu0sN3i8z2h2xBAcePWIGgsfuCvJ93DV7wxC0E49H6OrzfotO4WaOQDoDgZy+kZwXUabLvHzbXPj7u47ON1AfFbVWiyeHTim+fW8I7tLmAFtTEYf5knUdVNOyKEDOrhF6gQc/4Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 772bb300-eaeb-4439-1b97-08debbf9653f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 14:08:15.4843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HfydfJ7Q18pzQpRLAQwEUlblJ3sKt9FrWex+z1AGD4hmlgUUz8N5K72ZTJoloq/NdVwBqJamc6jVjfTkxF0rwC3xo3FZ8JV4ghf/oknZXqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5149
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim,gitlab.freedesktop.org:url];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6DD915E59A5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

With addition of commit 029ae067431a
("drm/i915: Fix potential overflow of shmem scatterlist length")
max_segment size was included in calculating a number of pages
for the scatterlist. This meant that segment sizes considerably
smaller than number of pages in a folio [1], were not enough to
jump to the next folio. In result, sg_set_folio() was called
multiple times with nr_pages smaller than folio size, using
many scatterlists, all pointing to the beginning pages of the
folio and never fully covering its range of pages and corrupting
mappings.

[1] See shmem_get_pages(), where segment size is set to
PAGE_SIZE.

Suggested-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatterlist length")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15816
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 06543ae60706..ac9b263c341a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -156,7 +156,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 		nr_pages = min_array(((unsigned long[]) {
 					folio_nr_pages(folio),
 					page_count - i,
-					max_segment / PAGE_SIZE,
+					i915_sg_segment_size(i915->drm.dev) / PAGE_SIZE,
 				      }), 3);
 
 		if (!i ||
-- 
2.34.1

