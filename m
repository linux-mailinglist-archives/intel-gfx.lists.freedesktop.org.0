Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BSlzK6gwPWrayggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:44:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD046C637C
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:44:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MmMSaJmD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B12A110E376;
	Thu, 25 Jun 2026 13:44:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5034210E376;
 Thu, 25 Jun 2026 13:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782395044; x=1813931044;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=dqiWR4pGKoxYrSkxld8PrU8hLA9FJ6VcQ0cu9cbYgFE=;
 b=MmMSaJmDMxeEvKPLzzGBdh+JjjwWEJ9cZkAOfuWI3sUt4nuJVX+wwh4/
 nIyM9ZVv/iPT2bRHCVNxTuYZXqVgKXKV+LunWlPBuVWBwMBfFqc1dJ4I/
 diF9iBItpnGk7r/OfNohfO3qPv7hmbNXbDo3l4w8DiBGDaW/JqMjzywUl
 CD+y5/1oBQFcvmk7a6eZveu1wTTMFDWGExhV/31abMEWY2v7nQwAyvqYu
 88fDlyhWWauAFcewOUPvltfnJC3krRfI8SNSs/ce6QnRT8egxVp8nQg90
 bMgESBFUK/lZEVWAFKY+rdkxoNAcTIFiawUU/tB/ySVXTGm3aXUBnCkNJ g==;
X-CSE-ConnectionGUID: 7NHIMWOaTYmN0DrHB92m9g==
X-CSE-MsgGUID: WnFKXCoBQ5yQPpx4fTFI6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="94566667"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="94566667"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:44:04 -0700
X-CSE-ConnectionGUID: aWIMoYTYQ+qR5Waux1gnCQ==
X-CSE-MsgGUID: uIKOyBL6Rf6bQLt+biaVzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="254419525"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:44:04 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:44:03 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 06:44:03 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:44:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dudlEsijZOrv5IdjViUQrrCHiQyTNvnRqVMt6YNN/HSHt9lnhjLOCG9DDyIX6SiForWoDVWCpUAqKbeem1M5uLBWmwCkgn5WOuveX64w29qj6VZYXK2u9rwBi+BZQapCMvDvpzm8UWJkJqf5+mqbIK52kpWQ4aKoPG1f75E119nePRcxHZutmGl7tnD/xjSyGHu0Qv2BIzViMg4+7H9DT4XTJXWJgaajYjUTTytyIXua+crSWg+imXdSsD1SYx93HrYAK0C1UWpSFfzFqToD7bnB6WbrhzMCbazoouSLRLh/V156NB6sLFdZVDPNYjij/BfdVqeUWUiEeEGRlI7gww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=15cufiSprv2STsKealIB8cwCWdme1J0owPt3u2Qvt4A=;
 b=qSGeRryb/pwbHBpwaijAq3k0saW03J27dNQbZMgWVKQTjDiCNdh07/M+oW4ookNzeGggduWk1L4E6CikQn1xALepsLcOv3nAf0Tkp0zC7nTHN4MMyhTd6m3hbdh09gbU44Vz2HGnQqdlRTvi9PneU0ZuKtkvdryo37fjWou8FQxic8PAutnwG/RRKLrXj4ciXxqPcBaDyg/eeUi15AUo7cN6i+yR/G8fUtkgqOvrAg+V2oW0oVV2AORudzHTZxogvurh1HKN3Y/G5PyzVVblD8KrQCtJ7eqettnKR290O+h/i9h5n7xGwahFJX8LjBZCqKF/qWQ4fDgo0xIdUwI8Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Thu, 25 Jun
 2026 13:43:53 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0159.012; Thu, 25 Jun 2026
 13:43:53 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 0/3] drivers: Improve memory management for large object
 allocations when i915/shmem is used with iommu
Date: Thu, 25 Jun 2026 13:43:39 +0000
Message-ID: <20260625134342.1102921-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: fbb64936-e05c-49c1-c6c8-08ded2bfcbd4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|18002099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: CT1iJVaRPL6I9ihmxBc8CloMTeYlX7gRXvBY+sVvNl8B38pwhcSaRT3SHPn5wpN6/5WGhssoDKs1LBdR0C83MhpZarRPSjpUysjMAr5sfajX7e6vNAPrACs+2+v8dpVzFgtijgLVM5DPfDOAvCTUrXaM8/3IaUwpmPl5kTmqLojYQ9UabVuzhhsSW/YjQKemiUB8CWA2Y6o7HadgMklYDYDuPaj7wOuXIxdBLWCfjo3N7RYkUbNhHLFt75dNCI1KV+IkiekwoOO1Fp9lKjxLoWJubQoBzenmFsRbATqbGXyJnrxX/Bd4x/bmhZqhK0MaaFBQeOXXoJIXTmjYr6cyKF7RPSEp/nb38YpPmbH1qHoyn0Bn+3nlNPi3CQ85iiU3YjIFG4Eg+g8z7roW3MaUcPBxbce6B3c8kDPEbownlWyn+k1XS70u9GSWdXozXI11yrwZW+8i5DVAH5R8ecTCsGLtm8rfl0g77g2u7+XOJ62kxCyXtc6hRI/HYbO4BwjweLN0VfrDq/8X+X1eZHn+HM8bkusQYQVwyXqRNSTzlGpyznWDQWZoPKcPJk6Uvk3eJFlwsIF8X26gfsBgPD8nYlAwp5vR3NhuVYxl988j6jDIIPYFilQe+C9RBmpTrorWxW8hGfUW8lEyxw9SNxOLapFa/r9gXyaHUIzpTMqEZh0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(18002099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OBzNO0QT0U7jTy0vPQk55ecIpOYsdLAmKwOJkH+4F6bEM3JKUVAQJyPHCmt9?=
 =?us-ascii?Q?tCnFOboqL95PMVxGkjyRXD9JicxwkhX2oaxi8plrJknvSuHSfBGcFD3l9/9R?=
 =?us-ascii?Q?XznQ3RbJW/iSq2A2rRBIyf0pLbWOEK8O49BehxIuAw0cjUuDlTHnYNULaiHh?=
 =?us-ascii?Q?NEv3Uk0+2AzF7vudpsJvC3/yjDNW+/8ClHoaLU0SwkP14qeeATGVXD0dmnyv?=
 =?us-ascii?Q?YzBmBTNN+nnPu5RTtlov37wWEuOb+b35L4XrYcDf/gq7zpkGPsrhH+zvvPqT?=
 =?us-ascii?Q?y++TzlPIOSrzSWGOqWncBhUjt/Qbc3JgFv3x3j95kj8F24KR1NMDaVnpF96t?=
 =?us-ascii?Q?lMYUF5j9HZkyrwfswmO0Pk0wugCWHlUtuvvdGxyf7K+mm+lNVxQGlWhH19Y4?=
 =?us-ascii?Q?BlejU0nKIEKanaADEhEFUHHxDWHJjdG4owrI9D6Jz/rGfWVzfiW9ZXgfdKEa?=
 =?us-ascii?Q?POI3+4FS8Y/TT1cn0JTFvcdn6e204Fv5LTdUnPOjMNz3ecc2LH18MAyUXCl1?=
 =?us-ascii?Q?w7t2Z3YgfW4/NkpVbF6pKHGrWRh4dxETHkYKwB/Vn4TzM3bc6w1BRRD3kqfG?=
 =?us-ascii?Q?vK/dzh3wVScxzUS9CcklvRRl0UAVnc6RZQ6wSCApPw9HJWknu6Xrec0p3MyV?=
 =?us-ascii?Q?hHtEHUMolcrP+fUtup7vJj3Vnr5XCSEi7aLgNyW4YTYMpp+UHT98Q2+XinJq?=
 =?us-ascii?Q?fD6thc2/UcHyxUwq9N8euvVLege4qwkUBGf12tqgwt+f6vlX67dKwt39h8V2?=
 =?us-ascii?Q?P6MoRhZbQS3Fcin6cSpnUiwEfTxlrDrux/KLToLmE77wXEY8p/udcF+Ua856?=
 =?us-ascii?Q?96yRyVjOMfhDUYQlvQgVf7wv5ju7/MZYwH/GMAJL2+ktuoELNVlZwpA6Xab1?=
 =?us-ascii?Q?M0hK48d/Lvls+n+jyc+jfwaq6N3UBUkAVsT1oK4TUG/QH3p8AdipcvbR0Op7?=
 =?us-ascii?Q?EhkNLZqE27A6RIriDBh9J43B7ye2lsWIcLjWLgqXnL9VFQi0QfBleT87lMZf?=
 =?us-ascii?Q?5G5OdGY+VxrT+EiBM9l968HL7PLZ5i1xwS+IvfA7VbIC7juEO+VBUT2gm47Q?=
 =?us-ascii?Q?3SqkLU0yngoVcGspEuulJs41D3ePwrA8eedHnrlk67WAr7JYVISSfDToK/HJ?=
 =?us-ascii?Q?LBbMs0LLGr/IMuf6KOXDshvVjO7nKCqlbZRcfP20AmikUxB0adlR1D5+LeWJ?=
 =?us-ascii?Q?mz58k67z+r4WDftoIZcWQipKmTs8s72yfNva+rm3xVPdyFC4NOcuW0/FlwHH?=
 =?us-ascii?Q?rbqm9VCzGd9AibtORhH1LjBInJKrInqjdGeLsPGl8nuOHgzIGaeNz2RT/Lp2?=
 =?us-ascii?Q?+zQUaIECUuqZw6DweGPStB0mD2Mib4nQv85yifG6661YpqFHnIQm+QN1sXcR?=
 =?us-ascii?Q?z4P+e5qqyFmBX8tp3j3Wu+ngPIlAExm/PmgZQ/aYigixO9AlNaGJxahXnYmN?=
 =?us-ascii?Q?I7ckGx4vSNZcQkxxjuyPxTzr7JCzxMnfDpF4t/4i6UZzXx+kGlI01mo+ytR7?=
 =?us-ascii?Q?czSwaaASLoFGjtpr9MP+fgutRT5nMaLYGtP+hwBrupVBcWHOI66mcQ48dX6B?=
 =?us-ascii?Q?HYos7rgZqofL1GO21m7cmnVKGw21wkfAk0C8cBfrIUun2ShhojaYzcaVXRia?=
 =?us-ascii?Q?qmM5RDUkhNaUWriIfvEF+o/CjiOCTvfGAGiEN11My/sUE52OR7c8REsH7zwT?=
 =?us-ascii?Q?lY2i8JtcZskCKk2nM9tEc2/jMAa+b7BTWr/qUPu1KkqK8tWKnGlwi8NVl11b?=
 =?us-ascii?Q?wheNrM448PcgsG2GiY5YvYxsL7b8X2M=3D?=
X-Exchange-RoutingPolicyChecked: OeJNS0793mQhK6ubO1CHiXDK3IByvUvFAApltaDiikmTvkkg+CVkId6w+B+hCU80igSneW2Vmrn7a4C5YoT2OeIYiwB7Y69hyXyrO7HViHcsOCFqwAUdmZwcbHCEzFZJT4Cb5gO3Q2caLgQhDliHZxErxYf/HQnQXRkNkz/fQjkDnQW77psz6tcYnR1YE0Ucv7s2S4aSP7im3falCr3b/Dl3asHAeBV5MqvuqTbyYPXxfSzD7/41uqDb9sWIvD6pl5sFNmSp/jYbzaECCMLmMR5Nze6wZdR9/2uR0p5jnKqk8ItCOA6CCsY5KgGrfd1Y7n46fjWqSU8aaFU8sljnBw==
X-MS-Exchange-CrossTenant-Network-Message-Id: fbb64936-e05c-49c1-c6c8-08ded2bfcbd4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 13:43:53.6814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y/6anyJv5dbirfl09H1yZyMNkfiBGgqtPZojX8AdT5nNQ0+gmxUqk+TYGHABCswPsdbW4AhBWWcDuqSvybfDwN46fandrijQf6Ie5/GQvho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AFD046C637C

It was observed that allocating large objects via i915 driver
(igt-gpu-tools/tests/gem_exec_big/single) the folios and their
pages were not handled properly leading to buffer corruptions
during relocations.
Furthermore, using iommu driver in this context would leave
residual mappings in memory that could not be released, hogging
available RAM even after the process ended.

Krzysztof Karas (3):
  drivers/iommu: Unroll unsuccessful mapping
  drm/i915/gem: split shared memory allocation table logic
  drm/i915/shmem: Count mapped pages in a folio

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 191 +++++++++++++---------
 drivers/iommu/dma-iommu.c                 |  10 +-
 2 files changed, 125 insertions(+), 76 deletions(-)

-- 
2.34.1

