Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iAKZIhH3CmpZ+QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:25:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2480256B7E4
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E0110E078;
	Mon, 18 May 2026 11:25:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJ26hrQ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04C610E7C7;
 Mon, 18 May 2026 11:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779103502; x=1810639502;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=dhqGKbGSfcsLqugzC2M8IsYk3WPyIyJDK6YF3PU2FaA=;
 b=KJ26hrQ82GoHFw5kVrPG7orf+dX0g+HWhWsHuU5qDoVcH+PMBCa4LHF8
 xeE9jh5z+21pHdyfy+z31mgX2By7hukWNQfHoK/W8F9+k931zqYF5IKZ+
 gcAdVxA84DyDarwkeFl9EUuZsQ1rpqzO6huCUoG4gGvEMUfDW07oMDtdD
 GHoDrAcBJGFp/tmxrp8F/MJMu9PKzR3TAbo2PnCl2y80EiXsDx46kw5rb
 tKtQcHJ04L5Rx1UHMYdUnPq1B/0lzSCFmVqxJcVG3zLeE9cIKb8KnCNUq
 8PyKIZzA48+BTdj8Fu2h9tKVbE5cHE0SHDAnJZPLMdHQSwF3u5WEUepUk Q==;
X-CSE-ConnectionGUID: GXgpeglwSNmAky+rsd2lMQ==
X-CSE-MsgGUID: yCfLNe/ERDiYh4JRXdTsDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="90534248"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="90534248"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:25:02 -0700
X-CSE-ConnectionGUID: xio2YVTFQeyZsbCq8Mog5A==
X-CSE-MsgGUID: ad8G5krJRJyb8HmBVZIzfA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:25:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 04:24:58 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kgpCx+DIWjI687ubTiV97brVgYIw8fvez8WJ41JsHhOQatWYDZrRYxvQVUYishXh4rIWQvQSex9fdL6tqD1k33fTt4MaHtwLW46iurSeSn6z/U9NizmHzDis6QB/NeW+jYDgEeSCD1jvu6RKAe7tEYEVnbnxg/6YSnSqHBgVCI8Dk05tDGxFWzlmfHibN4h4w46FnFOmzcGtXAF6zfbbjDZ6qZvKe3xKYqkjrQ6dpCHw5VuVwZjj3j9URTxYZ7l5jlhJLMd85I5j5UK+XUaC+OzHgnzpb845khI4sg7e8JZLb7ANUIxFER+3tyXmH+xh4ooeByiCE3mKMMQMsGZc4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GqVkZ3KR2OMyyBvz9iv+vQyh4fk3l/V16RXUZSCAN/U=;
 b=YUDvVkH7ZPmMnltbDAaVFHV6L45GGtvibCvxbc+53Ptsh32m069xwo3m7+AyP3hbGB1vru+zP3oUpC72jhvybsEoWg/zS5gHVtLvDugC52xLLiIIUou9pVnCZdSSVy0Gg1sTnO+MXDmOi0/+J5q7KBtvZTFzqu1IiafVC3attV9hqiPm0Qf/BCf62Tm8F63HTymSxXngEbKKxy6w+ihcGucwxJuZki2jKtgpZGaNuV2ypxLYbD/M0F97RkD1/3uuC55MPb6JnrKUa6s8ro1fNzVmZr9wcciI4nzDVbclZnXN0qFU12dV2N+W3MZ03iX2mVYbbYN+fwjIsqt91R3kjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH8PR11MB9508.namprd11.prod.outlook.com (2603:10b6:610:2bc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 11:24:52 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 11:24:52 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 5/5] drm/i915/dp: Detect changes in common link parameters
Date: Mon, 18 May 2026 14:24:26 +0300
Message-ID: <20260518112427.2460725-6-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: aa70ea1f-c0a6-4604-184a-08deb4d01442
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: CgK4ZfmGxFCqMnZBQN5XLfKyTJRRR02van87ngBt2B0SZMqtFrQtQ8iiNs/AAzC96HqW+odUtijofcXtX39zZ/7K2FAp0KAKTGCXOQQma84C+JHgsmbAvLX25LCs7L8RvKdie2Sx8DBhBk2VsT/HCeGKJrpivlLgvIuFzpjhlmSuHyNIPvhS6nvQdv/lBojYalztx8ebtvmDORPT5N3iRCma3PPdFYcQudXLcP6ZIlIoK0jEMQlyIn6jFPYLMpsOVSQ7DAlAEy5R1WI+8vde44pWwv5j4iphGkRssDETtcwkUiob0ZS3fR2jqT3An8hKrE/SOxfjomda025ab3wRf+Ti9V+uQN97aPLY+tG6At8uDD0ESqvM9PnDf7J7ztSiFlhcsrsfRi6yeRz/VzULhMpC5qJpuz61e4VOCQl8Mra0mX3GVkvg6LvNIdvXK2tdomopPYzxPh7wdl6U42KRuXyg3Y0F7xtHCCfavgmuala2kxa0ASiQWsRgg6A6VW8HoAorVxLt/SZCOGSzaUcyF/GgWnTieaXhtgS6s3FQjN0jB/pw52nGd5bGKQEM7+Q4U0Ib+annBPdBuZOztZ0ZKf9LghEFw+RTlD+Qf5YITY7ZczZvpymUWo27ui9R07SKcdxlr50yu0xYrVspo894zmKdqbC7HRP8C/WRht8Q5kJaDmVa1zJnpkx0HERNMAe2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ShvNIszjMUHigVqpniIr4l3L6jK1iUzy4HgAMFdkPhXNYKYGyhzP23v1ZsEe?=
 =?us-ascii?Q?qSwoGnZZEjglQflnIupAGpOFM4d6MCCHfVl8tkas8no1dV9Dp6b/9FXhswnw?=
 =?us-ascii?Q?jy+4syo9dSe6VeLhB/1LeoGDgoursTHZrWHQW5sv1iTDEFrI/bTmK2z/YHjp?=
 =?us-ascii?Q?Y+kX6f0ZpNHYE+Nii2Q/J/vJ8lPFb82GTQNyx2kQrPp0R+bXfVvCDcBA+d5L?=
 =?us-ascii?Q?u9xQ9gxdCIrZ+wUzv4BOFeACBwrNzqI779C3reiRfTIt8fCs4IeJKf8M5l0J?=
 =?us-ascii?Q?MbgPJHVLqZiOHNvaNm5qyhJ50e+TolLLKfCWKPLfJZJ1a8W5isP6GjG7GPzg?=
 =?us-ascii?Q?B4Td19OEhbtHt0PuC33cLnPT3mmfenfzV3/sbwy8tdkysNOeBRzvzo3gOZ7o?=
 =?us-ascii?Q?61ghsW68qrq5zoBX66T0b5svEpl6AUe/0pJ29V3kc/t6F3H6E7wpFWGq0zvG?=
 =?us-ascii?Q?d8b43sV6vgW3sc5q6fSlzUUjaZTG+OqsxpsIHbPB5qGhYB9UoQGv9g2BJdE8?=
 =?us-ascii?Q?oJP1Rj10+Ht6PUmpQwUbdKBqlkrC8A/gPgwGoY8j98t+iEjXqNGKzmmt+IT/?=
 =?us-ascii?Q?UwRqipw/GssR6sM9zQuRrKlh6fh6De1MC/Y+30C1Ml39i9E5GsLios9nvz/D?=
 =?us-ascii?Q?XJXfUjQpFvBTQfA2HeaVMB/x0PjlJrND/2qw46bvkgw4wAJcP4NcnWyO7BXR?=
 =?us-ascii?Q?u2EP2lvTqAnMdr2A3/O/DLsS2Zh/aKFB6zKWUW3fT6+ZSlRuhoRJWyxg37/7?=
 =?us-ascii?Q?FAqOOzgNeJao9rrMoOjtBKOiqQ+LkApjc59FiOV+pWZoTX4TeNRgw+DTzOZu?=
 =?us-ascii?Q?x5vCShawPAlJrqNqANIjCaiM27AZLL0JdXnke+u3GpzIKH0WQJhF0pxd5nRt?=
 =?us-ascii?Q?HIJ+HyrZziebtrOlUd0rjYcQRHJ3ZzCYZLgqvjxwHE5kgJC/tlBF7pDkfuyh?=
 =?us-ascii?Q?Z1/RTbsKxqO2pR95swCa8QRkvJ6zp4vKMIA1BbFoakS4dJ5o5aFU6xjsO6TW?=
 =?us-ascii?Q?vsWxyr3j657lt8DW3MsC3jj5pxAQqJL/nk5QikMA15ib6qoFR6WqFUq58qIE?=
 =?us-ascii?Q?xPhMKZuirjRhBoK1dFEm0G+ka38y5MJOwdHhvxCqXxyds4gud7XYXQuiIMCv?=
 =?us-ascii?Q?WVx26h1dSs4MlvPV7K/qVYfCp63UgpNiYCDSyrQF9EhGXBTFV9xrdDGOIBC9?=
 =?us-ascii?Q?Ar00xfMVOIv6LBWnLMpgl4ibKIa3cpqqyDPVJP3TNekwDJ9pwfTFYlZMDQOa?=
 =?us-ascii?Q?V6UcDLrHFTNvFmeHknt5Q7p6zr9i9hyWj9oYmCh7tMIxNev6P4NaRPtl+LRU?=
 =?us-ascii?Q?Bbs3zgG8I6xkQyQfvLm23OLivlTnYARQ8yCnuZrNK3tH4XWfD14tx/XsbAa2?=
 =?us-ascii?Q?Z8G3YFPO61Y4s+QQR/dCVTwWe+6jJDtftHFwt+uHqAZCMHhzgrZBmastU2G0?=
 =?us-ascii?Q?S0eqS8GLwBJq/BDsY6Li8CZ9aOnnHw27X7xhhCYhbTVGnnhygTst8nABYJmw?=
 =?us-ascii?Q?gZ8v+UhXPQR1fNZn9wvdYmd7BGMdWVmqCMYEoyEVZVJHHqg1cwM7jT3X2Fi1?=
 =?us-ascii?Q?cZyISwAvIhVSa8TXoUN/COI9MfpDMtEndwzL+cECkTKZ9yh7bYYbMNc8pcf4?=
 =?us-ascii?Q?MW/kytPKwbcFHXCmxNNpSWGkwjmELlBLovPQAh4/2UqDDUpLRpaUT5c2g3GI?=
 =?us-ascii?Q?1lPqk+0O5hymldKksQ65FjIFABHwdDuiSQaEXP5vrkgAAXc/O94+ZiJVraa/?=
 =?us-ascii?Q?dK5dtXKuBQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: CmCVx5dQiDhEw32zdcxGz19Z+xFZ36jMi39Rlnpvpi9vTpvrRyY3dp4FSk4s4w3WoPSILjk8JAFOAY4nK+3i/ps98erHXubyHdeKGE4W6tEBii6JXkZhsXwt7benzdYdXKT8Nqe0rDq6t/yFPaDF0M8y5uafejEDTYLGjIFYN+2kWSGnXk69sSPqR6vyLHqdIsLCj4PtqjLmpoVYS6htNB0DEVmRkjovz4n59fnbtSiLFJUCERm+M5ByDSCanRyXF836jsCV1/qZOxQfR2jT4fhoi/jtGSeY4mzgag6YYw9KgzvgbNtKoPsfjSTOvCFwzK5iWbwy0qPC1IBvMJxTgA==
X-MS-Exchange-CrossTenant-Network-Message-Id: aa70ea1f-c0a6-4604-184a-08deb4d01442
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:24:52.1903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8608D7JG0DI6yqqnnQygcrY5rVqR6Prj07EoxXtjkXA5CHgmavcrP1rpF3BNNnPNC0J87BGa+0NQZ+jDbFmKzA==
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
X-Rspamd-Queue-Id: 2480256B7E4
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Detect DPRX capability changes without a long HPD or RX_CAP_CHANGED
signal and queue a corresponding link params reset.

Besides detecting the above unexpected capability changes, this also
avoids races between queuing and handling a deferred link params reset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 50 +++++++++++++++++++++----
 1 file changed, 43 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6c4dadfc35806..dd968c2d9fa64 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -362,19 +362,25 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 	return max_lanes;
 }
 
-/* Theoretical max between source and sink */
-static void intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
+/*
+ * Theoretical max between source and sink.
+ * Return %true if the max common lane count changed.
+ */
+static bool intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
 	int lane_max = intel_tc_port_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
+	int old_max_common_lane_count = intel_dp->max_common_lane_count;
 
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
 	intel_dp->max_common_lane_count = min3(source_max, sink_max, lane_max);
+
+	return intel_dp->max_common_lane_count != old_max_common_lane_count;
 }
 
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
@@ -792,13 +798,20 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	return -1;
 }
 
-static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
+/* Return %true if the common rates changed. */
+static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int num_old_common_rates = intel_dp->num_common_rates;
+	int old_common_rates[DP_MAX_SUPPORTED_RATES];
 
 	drm_WARN_ON(display->drm,
 		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
 
+	static_assert(sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
+	memcpy(old_common_rates, intel_dp->common_rates,
+	       num_old_common_rates * sizeof(old_common_rates[0]));
+
 	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
 						     intel_dp->num_source_rates,
 						     intel_dp->sink_rates,
@@ -810,13 +823,26 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
+
+	return num_old_common_rates != intel_dp->num_common_rates ||
+	       memcmp(old_common_rates, intel_dp->common_rates,
+		      num_old_common_rates * sizeof(old_common_rates[0]));
 }
 
-static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
+/* Return %true if any common link param changed. */
+static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp_set_common_rates(intel_dp);
-	intel_dp_set_max_common_lane_count(intel_dp);
+	bool params_changed = false;
+
+	if (intel_dp_set_common_rates(intel_dp))
+		params_changed = true;
+
+	if (intel_dp_set_max_common_lane_count(intel_dp))
+		params_changed = true;
+
 	intel_dp_link_config_init(intel_dp);
+
+	return params_changed;
 }
 
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
@@ -4911,9 +4937,19 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
 
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
 	intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
-	intel_dp_set_common_link_params(intel_dp);
+	/*
+	 * Handle unexpected sink cap changes, or a race between setting
+	 * the deferred link params flag in the HPD IRQ handler and
+	 * clearing the flag during connector detect.
+	 */
+	if (intel_dp_set_common_link_params(intel_dp) &&
+	    intel_dp_reset_link_params_defer(intel_dp))
+		drm_dbg_kms(display->drm,
+			    "DPRX capabilities changed before long HPD or RX_CAP_CHANGED signal\n");
 }
 
 static bool
-- 
2.49.1

