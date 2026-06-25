Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EJssBqswPWrdyggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:44:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B59A76C638B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:44:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i9z2FruK;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE2610E3FC;
	Thu, 25 Jun 2026 13:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D8B10E3FC;
 Thu, 25 Jun 2026 13:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782395046; x=1813931046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=w8IdK2icCiY7eJtr9hYITF0ZwQVVvL8Zz9DNutAWTrA=;
 b=i9z2FruKk1huoiuTVnFkFdkkaKK/0Pgv6eKhKJZNRGDg5dVavgyepk4M
 /EFi1Db2hTSSxVw5pfDtHekhQ4EaQ/pC+yzENWXhDnjm5914DlIyYqKe8
 i7bBCL9eDdFcCTvYKY51g0zazUuUIJutDov5p5NaxSae41dBqYxK12sRh
 YIRF3lPOV25wIDhVzjuwnA/hwKB6NcyiT+S48RIJrcm9zWkJJmvCCJiSe
 ouxWG5VGDTpsKH1P/S86FB49wkW330xoN2Z96RvGrYuzIJyCgAUEQPhSu
 UBdMF8qAfzp7XtRx7ToI4esJQniInqsNb1SfHMq7pSVPcWFgZ5ERjL4Vk Q==;
X-CSE-ConnectionGUID: +klplUoQQ0q4cF+TkHW3Dw==
X-CSE-MsgGUID: 1DSJ4FUUSKKa17iD41bOCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83175304"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="83175304"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:44:05 -0700
X-CSE-ConnectionGUID: bVjxUewnQauZHIO2EgwVUQ==
X-CSE-MsgGUID: UjYAnkyhTLuU9oXm7fW3bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="255630561"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:44:05 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:44:04 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 06:44:04 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:44:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eHPMpeeMbdJZQsN9SDJ+MtrWOWlPg4LET9VbQOD6z+tZrfR/nmiavdZzq2VZOTuV6YffgO8RMlJfMryeiE/rqvyu/JiTedLcbwP8HnKtAjJA0bfk38KiVQtDcVHVv8quzH43nxw3IQALFFjrUk3Aaiwvyxe5A93fRrFAGkHXhVFf0KpdiskG9y4im8bPiHI7URQjgUlixfpgQOpgpqEwKtDms3ePC6HmSs4gYRQTNwJ2WVBJFl2EjHoYazzDvCxHpRb0Nbii9HStatFx0KEYgIiNzMYCJ8y0M/lj93o3hzBJyBj8jz+8hYSn4Ib5UEfuNAnDkGaZR45x9uluOuMN3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XamJwKhbj1kIINuSEAmBSr8YU79LhUq5aU03oWofhxU=;
 b=y7RAyzlF+IWlMTS/ApfZFqkyweg6X7Mf5BgJedg4+TE0Y4xCU+QUJnUaVUWakrdCvZt7rzGqY7pk6wJcrvquQ5lQXwyk76C4XinROzvxfIAZgPVbLHvfy4S6EcWcRawc8MFxhWMyhhPEkocbs/PfzUwXnAp/abWJwlPcI/FY7wn6oMSMV6A0LTzqRPJ3MGtF4evdoqsALB/lgQXMXPPlqvclWmK+NrWAFDruOxrJEmgamJ5dn+XPgB98tv9XKDoIAx8gIxqfBnIETFIdehuERhM3PEAq3eVGNboVCURnlVFPnjYarjUdizBzhRuR2jb2jtUkZAmgadVQ4+Evp0MLNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Thu, 25 Jun
 2026 13:43:57 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0159.012; Thu, 25 Jun 2026
 13:43:57 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 1/3] drivers/iommu: Unroll unsuccessful mapping
Date: Thu, 25 Jun 2026 13:43:40 +0000
Message-ID: <20260625134342.1102921-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260625134342.1102921-1-krzysztof.karas@intel.com>
References: <20260625134342.1102921-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: 97d7d532-0210-436c-1d22-08ded2bfcddd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: oy9ZDNa9UUs5jO/BwyhI4yOq/41z59fKzdNW4PziUoS7RI8STrxSDpN0nLMplGu3BblnjkesEvi76D8n3UhBwds3K5xngiaSUoodBUA4UOC9fMk8A9jeLeo9ISVwGWJI/rZtHy8NZPQtAHZcXoW7t2K027irmzWOB3oPF2mf3Ae+49B2w+IpvNHAR0G7KOkTJJzpzcq8TsVwr18AcE1+6UDVtRH/E0lwt0t+NhfPLxpD/wKqChsSqoirzN5OO/v2MskPA52DzuFWBjFl5dP4YI27s819afHss5NrhZPqqbHVaX50RxUxMrlZH2fyqe9UJpTxTHajJqe6q+NSZUzMo8u7Wmqeg62B20j4mXvBX90YaUlqYa+xc5/mrUeb9aO5CU0L5VoVcbgj1svo1OAqidu77Vc9swffu9l7+WR1vDdO4qSDfdPoRYtaeB+iHgGfujdfAl1wDo1lePflXCpMPT6ZsIuNE4TJao3J80dw7DA6etNBXl5Bfn+3QjtOZXUKHL4kUeLk+c7WoOLwozecKHDlAIIk27jKXXBptrV4FgFEu+4kAdFB/kYUBs7uPjbC0VsBop318Hzv0c6YVFdL+LyCJY/YieeA2qA7hNEaWIjcxXDV/39KKZK4M9UZ9gb9VCfGfNEs35QRrkSPzUbwNMQ//EaemEuncMKZUeFpG6I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GjXPp+B78CxtP4afwPw9PQCrpxHkVbjL+Zva+57v07LDE5UhFSK+acO/dOWA?=
 =?us-ascii?Q?jeGsWI358uFdcHP6DyTd3mbKAEbogHGaOeyqupXaNC5AnESfHTuSOwRobWCu?=
 =?us-ascii?Q?tJHWIVJ9rRBuNjC1QcrQkSiSbOX5vzGkwlDNhux1zKVNHG9aTTEBgp0UkPdi?=
 =?us-ascii?Q?56Cie4tEHySUC/QohsQXG9q0S4YdEV1GB2T0YQQsMW/es+Nh32iO4D96cxjt?=
 =?us-ascii?Q?Z8GBMXfyFSZMcFJQ0PgsXuzl8hgi5rO3msJcyLNR6/UBmGo7gmZ0xCo6pSl+?=
 =?us-ascii?Q?n6ydLtGR/bgWyEUJTKpNwAM1m2QkAVfvfQW7tVOjirSR61TniRy28682i5XC?=
 =?us-ascii?Q?pXtKViX8dqXYPLwUA3mDPJFfHI4R8Og8Xq42t6KH+xt2ez1JLNw/Lb/piXc4?=
 =?us-ascii?Q?Q+oqhrWXLz1Flmuctb8Ru6x3p59cPX/bnd/PAw+pySJhBQYPwG79AwdF6y1R?=
 =?us-ascii?Q?iBgqNwkNN9XNxqF8R8ruwzJwCqCacI/eP1fjHWidrCMzrfJ6uX5C4SULE8zn?=
 =?us-ascii?Q?HFKYZo9xYSEvrZrsG+lVAiB3IiUOFQ2y3Bcz0aV1zQIDMFG/q1MRSdnlvUtb?=
 =?us-ascii?Q?uE5KJWO7XyFt3BELlB2ENUO495/lwBCE/OVrSgdK22TbX3IptsIvmvwIoOCr?=
 =?us-ascii?Q?4Buf2OghFZvu8p6TH9YHAxVwiBwP4BFBMqIdi3iFzp0ZfwPavVbsO4CKhSLI?=
 =?us-ascii?Q?Jp22KidJ8AlTpRyDXAt6veXk5qdSgRuujru1lZaoGA/876D/akfd8wRPKnt8?=
 =?us-ascii?Q?Kfgncc+I9pKDwPE3uSSniUjqju7RVhW3S4G/HcywgxS/oOHF8TUykA/9cFeZ?=
 =?us-ascii?Q?UYbA568fgxM4HsFRNHZgYtNUhblkgCC/8XDdX4IjmYYEx9dZiDo7FMqFQ4iB?=
 =?us-ascii?Q?MajH25OKucckjM141F9YdmSr/rJZqou4WEhskF4oD8Ga51Rlc5N5O0aec8yZ?=
 =?us-ascii?Q?EjF1iggCw7k2e2tuISouoxd4lsf//iK9Saq8sElSCA6GIqF6dvpxP1e8vSHM?=
 =?us-ascii?Q?76r77OJfDfyDShy/axl2Z25pdYrhpIx8pdwmCOLFrvEFuFKKLnJeOMmvH8iE?=
 =?us-ascii?Q?dnwJ/gZ/yFmIxQ4G+/wNOv8HP/Xd0GG2J3jWOCV+7KekjglOhrcx54zj7dN1?=
 =?us-ascii?Q?kkQUWUabFJPF6qSkGfq2y2bHJ4PTD0kajLrkKqVn/fAub6ILScepW5zaLQpn?=
 =?us-ascii?Q?5XAJYyBbAwbvm6gz6GbAlc2NKST9oOIXgiLWQhsYwk7LCpWk1CHZucqAxuLF?=
 =?us-ascii?Q?HOEU7C9DDMWyNb1oWI50DfFxTAqjD+D55f04o0NQa6r74AzOyhbSqoBU10Kr?=
 =?us-ascii?Q?NEk/wzXLf1b17TL+4sIUQBF7cDwD709u6Cq8e46USfBaK6k/ng9Yq/BMBU2E?=
 =?us-ascii?Q?fGsKdTUBXLsOfCgiIwIkO5zLdlaAJPJqK/YHpasRa87i5XOxN2IPtgMF2M5q?=
 =?us-ascii?Q?t8rEPT2rY8Kd5spAJY4cF/UqCsRq4WyjLPyNXrll/XrKdgxN8dC6rOvE9j5O?=
 =?us-ascii?Q?kP+gtmxufReUtm2hAkeonwjiW0+lR8LSuj9kKfy0Lnj224sQcXWYY3O2Kud0?=
 =?us-ascii?Q?j409qZoPt7AiqAK5WZCn04BNh8Qq6hrwXF4VYB57H83IFrkh0+B8cS54NkOh?=
 =?us-ascii?Q?NsKOBtMgaSc163jg3zI9RIG+DqJinfFLKNTchIMmWmP69LAUI9Wk52ydn+P1?=
 =?us-ascii?Q?1h69cgKwq64AGb1G2KueaGdqzD04PbqVUKPR88LjukNbWbqoWCw1QL565jdE?=
 =?us-ascii?Q?itP8mciHnDAXpPqTIK+1aLNjrk2Iok8=3D?=
X-Exchange-RoutingPolicyChecked: iCfXQKJWMbhzOczXQLVNdMP7a2rfZF2Bfahi83pYeaJ/DdUb3asFgH3uIi/EoZOKifDRw1bjo/pHxsAxWTNKv671QqTt72QAE6Asn/Vh81KkFVRcvU3eJ6/1ARqeSB9bMZAl17OzFt2JBG2rfnKtA3HcUy1zBQhAq/MHQOnJAeHYljXq+RuBiNoavrm56hgLbeATy4G9sibSkjeG3Ayi05TlKwpfi284p5XC5/G/DzYHf8omr0UiLolXWqEiQGSuYzmIU26EYR6KaPCNlyfLg20urqXns296InysNzzWPnvovHDrzOE9cn+9iaaMy0ebuLY4t/tkxcr6PiSwW827eA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 97d7d532-0210-436c-1d22-08ded2bfcddd
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 13:43:56.9077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /PD56OUkXOXYq1vmyirqupPEzvMJGoI/RmhZqEqezfgqIIlbZmad8qC5i09SyV4IZ0PDxpN/ajxoRW//NHv8tGb/YICkLvGXiezgo44hqDs=
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B59A76C638B

Currently, if iommu maps fewer bytes than requested (iova_len),
it proceeds to free the iova, but never tries to unmap already
touched bytes. This behavior may cause memory hogging down the
line.

Correct that by unmapping before exiting.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/iommu/dma-iommu.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 381b60d9e7ce..c4c058ba07ef 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -1515,8 +1515,14 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 	 * implementation - it knows better than we do.
 	 */
 	ret = iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
-	if (ret < 0 || ret < iova_len)
+	if (ret < 0 || ret < iova_len) {
+		if (ret > 0) {
+			/* Unmap partially mapped bytes before freeing IOVA */
+			if (iommu_unmap(domain, iova, ret) != ret)
+				ret = -EIO;
+		}
 		goto out_free_iova;
+	}
 
 	return __finalise_sg(dev, sg, nents, iova);
 
@@ -1525,7 +1531,7 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 out_restore_sg:
 	__invalidate_sg(sg, nents);
 out:
-	if (ret != -ENOMEM && ret != -EREMOTEIO)
+	if (ret != -ENOMEM && ret != -EREMOTEIO && ret != -EIO)
 		return -EINVAL;
 	return ret;
 }
-- 
2.34.1

