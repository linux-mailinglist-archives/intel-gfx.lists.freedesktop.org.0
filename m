Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 34BtKHBVVmpL3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDCE7566CB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Noy/Zy6q";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CCEA10EDBE;
	Tue, 14 Jul 2026 15:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3D4210EDB7;
 Tue, 14 Jul 2026 15:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042859; x=1815578859;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=C0ZLz46Ek0d7Z+yCuLa1EYaUApm3rglN6fepP+Ca3LA=;
 b=Noy/Zy6qwfEenEdbjHHjSmYvH5DyeHkG4V+lwjTZgDZJWLPeiPuPlxyz
 5HEEsqu/zwH0xDgJWXghEuhKxzd1jVhC4KGaKO5eLDpdtSgmvM+g5usqJ
 PCeMB4Bdwm94EC2tW/wndGOmqw5X+No6lh9rDQ4Z0T6lsLmT2q4qCOobP
 v5uPnYBR8oTQ7r5nLnD3p2r+dnz/LyII1knsqvGaoDj/BefS/E5IacAub
 gXIR/Si34GCUaVXDAsZSNfkpH0Ws7XlhNCOwtLqbx47JEKmE1LcUNI5rk
 4Ok6RGQk7DfKw3YKQHzyBDLwwRyoz5+Pilw34aL0goqr6oAV2J+FwMbkJ w==;
X-CSE-ConnectionGUID: XGkKoDThTOuZebEbC12Cpw==
X-CSE-MsgGUID: btzSo9P6TQOB+FGVE9fikA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84548010"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="84548010"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:39 -0700
X-CSE-ConnectionGUID: O9PlJO/ES/+To6IBIDonNQ==
X-CSE-MsgGUID: 9sqetw2aRiKAmDIvJqBkwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="285962057"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:27:39 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C3cU7J7aFssv+Xt3TQqfS90ZIeF0hdDmYdbe8tLY8i4EyNzSBQW75tXt298enev64RGgJzUZaGiQMgTXeRjd0dTDMIOAibQkq4pEmcCtpJP0lEHTR7tdcgkRLogxapWzMD8lVSxg5/7UN3Nw+rUOZRk1eTxq28LzMk9M7/5wtCOX/J9y1C8hOeAhtUZylGSwHaOpFsDrKCUQvLfA9mhELfL1zQA7ygt6Qe6MTX7ynKPGK226zezNv0semsz7DGyhkTwETz4NTHePfA0hL2WQ7PdDmlhJzQm9jxejtY7wqRf5BIUX7DY7R9ws2hiSTR9eB2jzAuOCwtnAO5kdMI+DJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2RQS3XviziwX8a5wkz9yjIU3WJ3hQEmXU6qEvY3dnY0=;
 b=IZ29/bFe/Mgy9w7yWX9uaE4Bbd7pdIzpU1mc4t5lZ+p+l/MPQBXrpKQ48kmt378S9N/k0x8ed0FZuoTYme5WHHzLOgsaQlLkz6fGvf0Ut8XxbHqQGP8SFgNNHt+c6shgOlowkBsxpnfsIpZOzEjPkgsJUpN2b9xiInVdva5jHhNkgZt5p4erI/EO2KWOqQfkLHYYy0aHiwWGU8nbACTvPG0DWdtcmhKKjJbHxJEz6idGEn0C3WD/mQLHKB8tZdIdNCi330ZyZL5RJPp9KBJpAT9ffI82uXmtGNlx/E4JTaUSBbCpnhnJumEbjWLYiKU0jAKEbdJKs0ZRq4faCIlsnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Tue, 14 Jul
 2026 15:27:33 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 15:27:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 2/6] drm/i915/dp: End link configuration loops properly
Date: Tue, 14 Jul 2026 18:26:56 +0300
Message-ID: <20260714152700.555527-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260714152700.555527-1-imre.deak@intel.com>
References: <20260714152700.555527-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF00073CE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1d1) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA0PR11MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: aae2b79b-2019-4be1-a92d-08dee1bc6cd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|6133799003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: Gaqinv/t59Frrgsa0FxVopO3OfUBLO/R7NgiPit/CwS5yvoTg/IJzZlKKDyquREecRb4l4QLtNlv4+PFqAMUZ4mz6CHo73EGJD21JKQQe2IGkfa3e5Tz7qsSfMS/9Fx1FAmDUq+K4ChlgM/GEXBPKSuUgXJqOTo9diapIcyCQWylrSEwduWV/+0A0DVsgNCq+9mOOIJyorExtS5hLJZCg29OiR5JWmOUmkFTsS9/QOkdHJi+P9svaPymY+A3lfAbhujPdMaW7lmyuN9YKTg+0gWdazf2srPynpNdb14HcVOBiIGDJ9TSkQn6YTttV2XU+Yr7nsP0Qt2BfRj53rRFemxDnB5R3Lxx9g0YgcX8vvJS75sRDuGZymeVwkEFxxJ76EEl0PqQ2znn/CIl+TMSVLkdqYkv2qdTroZDEs7AR7RYBnsn67FJciNV/1PrGNTt8KLldDEJw6Ff+3Fl9nqGwZngRhylVayrWBoVqwNvzFp7b7pF1m5b+cWGxKgoDbc+wkce0oswh1bZRKJOw5qeC2+rBKZM6ZUlfHdVs88wVgP1J98in/doBYwHKDXNvfv9Pq5cDUKNYt/TcNLYUPpJUcfZmCdfezqS9lTLK/jrOxgAUMjjXahTMzNEirOquH4Uv7hAc3qvO5wONjTQaEnLQvZj3ETxlFQavhz1qMKJC0k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(6133799003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FYBIJmTBkR/+GjqmuX2WTbhJDsvfV1GXolMc7v3v3I2LasCd0+xYYFnj4piq?=
 =?us-ascii?Q?f6bDMdA8wqf/w++FXLbPP8CZfizYKz2zT+2TaKzdiF/M2KSvo37IGZUuexdx?=
 =?us-ascii?Q?xbxnz11Q3YT5icvfGRV+vdah6VFj4XykK3NhCJLXx+zvTcL1T7YS4GcG0b7Y?=
 =?us-ascii?Q?69A8nT/KZWpOGarYw/zMIOfMUlcZ8AfsUQOIlS9PTMCiujRBBkSdWETC2WQg?=
 =?us-ascii?Q?P0fPJkRI0GbvO75JVtYBsMgR5RXZM2kprbE8uEeh/j+dJRw8VjwaEzeZb/lP?=
 =?us-ascii?Q?H54eaA9okMS06BZfLRGtAnvjE37UC6pNi2ujs+ywHT5TglTSedL/bFvqIDU6?=
 =?us-ascii?Q?1OQUh7g2lnbOLwXTrR3vvRyOdSEkcKHWZaA9iQNcLW4tcNDXZjD3RWqhAdMz?=
 =?us-ascii?Q?pDRFLLhrzOXPyNN0+V29J8NzvM0uRoRTeC/5Ve/ZoVlekl6WIFMahUtesG7F?=
 =?us-ascii?Q?5R2aA1LJJ058WA+57WFHky84w9jQ/e3f5ExhQLx91TjUxpMpKTCG2faG1VWu?=
 =?us-ascii?Q?MLxNF7UlTF3v6MOpnRmJJa8s7bHhwe85JMwf03KjBL+0ZcEQMtClR8tsN9DA?=
 =?us-ascii?Q?ImlMAo56PPKs0j8dCnmlVpB7ir+Vu/pY5oVRkieUmqBR4G5ttZZZGuQ8OTFh?=
 =?us-ascii?Q?GkQIz3kBjikF/ynzj0GOVEHkjgcMCb+HqXHex4+BgSW5prMS6AcSLEgzv+rN?=
 =?us-ascii?Q?+A74D/OW/GasPyOScglxYromt1mewTdORuFKh72N2xpogTDgHzOKJWnTVqQm?=
 =?us-ascii?Q?W+KiKHO3TDsazVlqG2NWqpiqFJ6ybYiiYNQNd7J1o288QB4Son5Sg/CIrZX4?=
 =?us-ascii?Q?2sW44kydlnoX7tvMPUPKDcUg6uLAWlTG49oOp3aTgNX8CbX7x7ydV9ierJn4?=
 =?us-ascii?Q?7lrRQ5Da/m2/lo5IUW3qnDMT0ZLWPlb9VSVqBbyS2Ps+wNArF9dQXLtmogFs?=
 =?us-ascii?Q?bdRDrwOatHPClUmcx+dznLcIN7HPYctfQ8U8Y/VnxDfGTZtqlY0yys312e1F?=
 =?us-ascii?Q?R33ruDhZqgjehVKf4ji60+lOzszBrLNdfEkqqRlDB5yr4iCvquKgoFdx1/Ex?=
 =?us-ascii?Q?+PPxvJzmH62H1rUmkTY/ZTDGKfqJcOjw85Se6RU5t0wJvmInBwwM0mgypskO?=
 =?us-ascii?Q?TMpp6DueffBD1vYgn8g8y2MUm51BU0R8sCRMBKR7PfkHtG6JpM1zrcrDRvJL?=
 =?us-ascii?Q?fkCzer9c3OLq/Y14KfoQ3Tmems9BQSVpHhjd0i6qAdfJ9UsdZ/gsEEPOjqjf?=
 =?us-ascii?Q?m3mbzOXAGVnk5zLWstcmyoXT8mroTx0YZaswh0j9fMJqysqidv3CYPW7JT+W?=
 =?us-ascii?Q?gF05WkHKzJncUca5DHpIomF6rWiiPAqffKte0FD+aAalw42tTTEVBJPcb/GJ?=
 =?us-ascii?Q?12n01HFUn8a2rEPTsv76z8muLLvHEIoeF7bftMJgfAcSazfjsu1yCScxjTNX?=
 =?us-ascii?Q?KkbTpy8PUQceKUtinY4HFZy+SYOk8FzxIgWgbPgivVAzq/fwS6VHV3/RQd3S?=
 =?us-ascii?Q?0iGw95Irsr6o1Uz9MwawEDQ3dCpeCU7G5BmztyAOSWKN19D8eCzo4ZQDJxp6?=
 =?us-ascii?Q?OiWDg78CBFqMDhEW4PW/PHcF9QzdVHAVi0OzCWMWKs/J11ZMbRL/sEuCseJA?=
 =?us-ascii?Q?eDC0KzrAprNuqUJuT3yymmpdbG6S5od0QMxrJx1ftNWfEaGgFgJG2aG88fGV?=
 =?us-ascii?Q?OKLKeXPR5HKcdJtzjUh+/hfPBEuv9nVN30uypPbmPlKWF9AoNNy89qNjXBuY?=
 =?us-ascii?Q?uBYKT1U42w=3D=3D?=
X-Exchange-RoutingPolicyChecked: f18zyHto5shqnovyGdjaDiyXZJguProHrj8n2G+J3LtY97IwfZ2h09YJYWmPMjIWm00I1qmU+vn3asuujemwwL2nDEUTJexPMH/NHuL8Fc2GoYClbRahigGQdDmsLSWrs1NQu41xS02FEeHU7DalBpd8WMhhIQwdau5SThJ65UoZjpSFKlXle/l6fcnSNYQbwgHfKMp0mXRBSUDyj2r1wA1WX3nUboSG9ljxuNenQWdEF/B/nPkpAhMHwJX09sBG3a3FMH8Xi0qu9NSNkNGjCzXKnpfkXhK+n+fXYiLlwQPzJld8T3P4Gr8uible4X/IGARvFOeSSnV7gXg1WjU3Dw==
X-MS-Exchange-CrossTenant-Network-Message-Id: aae2b79b-2019-4be1-a92d-08dee1bc6cd5
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:27:33.1767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /2Ww2NU2CIk1xSlKqjtPVyf7vzAjrRfedBLDXnYkP6CQQxc4DdFS46QzKoPu2PLHRfIWHVBK85p2XZgkhDdttQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1CDCE7566CB

Call intel_dp_link_caps_iter_end() after the link configuration loops.
At the moment this call only clears the iteration object, so the lack of
call didn't cause an actual issue.

Cc: Luca Coelho <luciano.coelho@intel.com>
Fixes: 7266df62ed0a7 ("drm/i915/dp: Iterate configurations via link_caps for SST non-DSC")
Fixes: 4f104fc10a461 ("drm/i915/dp: Iterate configurations via link_caps for SST DSC")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0922d23b284ca..0d2c696b9e4b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1688,6 +1688,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_caps_order order =
 		intel_dp_link_caps_connector_compute_order(connector);
+	int err = -EINVAL;
 	int link_avail;
 
 	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
@@ -1718,12 +1719,18 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				pipe_config->pipe_bpp = bpp;
 				pipe_config->port_clock = link_config.rate;
 
-				return 0;
+				err = 0;
+
+				break;
 			}
 		}
+		intel_dp_link_caps_iter_end(&iter);
+
+		if (!err)
+			break;
 	}
 
-	return -EINVAL;
+	return err;
 }
 
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
@@ -1924,6 +1931,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		intel_dp_link_caps_connector_compute_order(connector);
 	struct intel_dp_link_config link_config;
 	struct intel_dp_link_caps_iter iter;
+	int err = -EINVAL;
 
 	intel_dp_link_caps_iter_start(&iter, link_caps, order, limits->link_config_filter);
 	for_each_dp_link_config(&iter, &link_config) {
@@ -1966,10 +1974,13 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				continue;
 		}
 
-		return 0;
-	}
+		err = 0;
 
-	return -EINVAL;
+		break;
+	}
+	intel_dp_link_caps_iter_end(&iter);
+
+	return err;
 }
 
 static u16 intel_dp_dsc_max_delta_bppx16(const struct intel_connector *connector,
-- 
2.49.1

