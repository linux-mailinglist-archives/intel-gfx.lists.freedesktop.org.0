Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cABUBKut8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3205485202
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC9810EB77;
	Tue, 28 Apr 2026 12:52:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Th6gQ3Co";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8A210EB77;
 Tue, 28 Apr 2026 12:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380776; x=1808916776;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=q2QFppfjVi1pDhvvG+yn7z7RiR9p9jVh/BCvpizu76s=;
 b=Th6gQ3CodSN7RcHu8oa6GdrHB1OON3a676Mv+5tVjeqxju/jcF8WhcHS
 w5EKUGucJ+ZqqC8tP9RGSueDtBtYtChJ1ZoS66vQBfoj1M4g5hkQYouMY
 iJJlNsESDUMhOx8bjp03cYiP+DsPXY46mOrmpDG8ohWHf9MCzPRLfUySg
 82Vl6Gai4CWtI9AasyF8n9rpgobuayzxU0/zk3AF8VWboXSg47OLCqvVl
 cmlXEhUUHk0fi7ozSNiGt3RNVxJHUGEq07ZSgWNMBvmdXryHR961HdUxl
 yNi9KtEbKdSBECN1xkg1p790k4Y7mKJVn8JYysWsV1tv9miFpx5ZTxLTT w==;
X-CSE-ConnectionGUID: 38StDnonTzSmK8K8vEhKhA==
X-CSE-MsgGUID: omVsoTlPQyOLguGeHYZ+dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203031"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203031"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:56 -0700
X-CSE-ConnectionGUID: fTcMqChFRBKeGkD9GnM4Mw==
X-CSE-MsgGUID: 6Lv2MFN3RJCE4bkCMc6i1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234243867"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:55 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fZNzoo7Tar9JZTWZ9D37w5ehUwwQcqTh7yDmnzQsnHEgLWTVm3KllGVJDpEuZ5UK3fMF/7vDlgZsvjCId0tKZwYLtT3O3PUGFrLBl0+secu41sLB29OCI1g616eBu84v2T8oMDx5DBxeM5iL9KFKFT2JO+7kMVGA/ZUof3mH1nIim+kok0aIqLRIepzFWzWIVHJu2FuLlhHsBVKgKtYwVyS8GV69Rkr/tJxcuiqkZbXZinSfEpY8IUiiYtsD7jdgfKp4oN9QatnHEXT/PXVty+H2zyh75GMpIwS6Q7UALXa7C3p+48+/rDfAA8R9zRu1oUXK4DPaZ/Q28xj8S5j3Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A/9u+xKJb3HBr3ZBtr7xwNqUnvF8e17siCrlO2nYDXc=;
 b=bav/ZaMAyhFS1QFZtLRoChrp5D0M9FRQ5nLDx7MdooYrXnHjXka2rXqO1ToDw3/98dHOXpSj52MxbT1byVn/Hcpp8L29QnZDfXujK3+9mVdY1T0i72RX9YQgUmkeYIEdz+GAH/48Z1t7dFL4379f9iSZjhg8Ez1fdqf2l3+9VY0BF8QGWpBs+dSfePf5FOQL+o6M9elQspMAUudcw3DvImXkVT5eELpO0NO6bQkFEDnu+ZWgdlcXAOJf+wkjC89GUFp/pcBSmSjh1rsRw0kblpeGrLzAMmYRXQYaiQNI4uO0JWqchITVu0j2oRdXwmqBaoD6niIOF3HeJui4k5CUSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:52 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:52 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 007/108] drm/i915/dp_link_training: Flush commits in debugfs
 entries
Date: Tue, 28 Apr 2026 15:50:48 +0300
Message-ID: <20260428125233.1664668-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: faeff6f5-02d3-4dcc-afb4-08dea5250f39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: HpezrR5mZU1uutPt+adU+X4cKctdJgTD9P9ScwUsHrDmVi0i0Lp7+Makt/SUvPNIJ2I45hAq2OTMLSHMCRRFvgpnx4WJdg7MJ+zpd+OSQvx6WcAZ2BlIlJn3mxXRTOXg4jy4WkoYlTWHRsrIJyuKwKkMIztvbl/N1DCiSDICxVG2JDrUTN1QCKhupjJL7jV8e2DUWVP3ygxveCR29ssL7XOrWBtQrTmW/BYDhdf9PgqT9leje/49etDwiwQcSjSIYj8rQeAQz43QLnOHXXE4iD1PQaHIP3G/nT5pOJBu2O+fhMoAtQqeK7YuXylc7JFktjeTo4/7HgyadhLtKy0ddCVUpjyKxPV2yb6dTQ3K6+MYDVdGfQJlgRSpigMlTppoSPFl559hPvubcHVBJ29eFKhkeIsoXGfUCp9bUlNMWvMG0RFCD8xFDdlDlqNSnTqtYop9bfCeFrnxkE+5NEqUDvCmui01/V4egvTcShSV3zlvjlnD45AvEUVYrJi8CXrh/zsbA4gVh7yx71w8Ll+tBOndztZlh9tKufolejOB0qUb+Nm5ZSwlmlKo2kU+hqpTFcUFI468eHVev0z9imbP7YxQx2wn6d4tlBD1mg7LR/xRTd7zBBD0WbLeo9JOFQ0em8kBynLqYfEBZA4ozLsN7i6yrQhLEVJHlQVCdQ0XLzviGmqgz4jKqJjY/J00eX2xF34Iur1K5HFkiDnueq4EWie1soW60J94GWH0Y6kKXxM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4fc23Utys9b3VtBwrdiXgy0tx9UXCuqJYPkY4URwdP7OYavKZhtx9e6gOYAI?=
 =?us-ascii?Q?ogf7zOX3C0Z6MVdENxoO4kCWAtHJMUTNPLDz0Wp3gtqoLaa79mGbyFMjx5fq?=
 =?us-ascii?Q?+UH7ExPy/0BWxx0AxSnTiNKrRBFQpK1sgY1y28DT8yUeOfc7qd7b0sMCQKYX?=
 =?us-ascii?Q?B6ovB6Vntnkicoq3lKq2SCon45EZB5qTW4nOa6JbcDhXNBDwQe+8UcVeekcX?=
 =?us-ascii?Q?1o+1y43DMzbVpakv6/dkQ5aiI+3sJ/s2FjiWvI0tMPXoo9zyS8ihQVLnH1jk?=
 =?us-ascii?Q?Nl9H6CWxNsY4Y8J1DrypmyYw8/ciMaAkFz23Saqx7xaY2s3J4AUhSAqZw8uR?=
 =?us-ascii?Q?AzJP0X1InbAKGqzO7Kv3KWtq1t46CM7RkQe/wcj9oOK7n3HVdAGyiNJhU3Dj?=
 =?us-ascii?Q?I8skIF14bkgG/cVdky1T2idOSm/Uv3vI4DWbfh7KsZzqpp6GlpwA13VB8zev?=
 =?us-ascii?Q?AkodUCrDddecWaZf8EYl+Lzkb67fu3u4Zvaej5kzSU1zbITmEHiAmTZne0JY?=
 =?us-ascii?Q?6YtdeqOzpvxnm/n1Xs309vqPE/kb1U6ULd4Y69ce1750mNWTimhxc4Vx7gob?=
 =?us-ascii?Q?f3gW4g3RA8rsmDss2ZiKxdroRlkgCnRYZXcd+ilEgaPITmxg5gbyoR6oKOeM?=
 =?us-ascii?Q?12ZQdBsYALUtf9ebuEy48mRSqxWTBl3Owr08oKx6pbPz5dQUAt9hwqZCdgOk?=
 =?us-ascii?Q?T96OJ7Utz+tYx4uYKRc+/vju/jyvEiuiidO9zE/Do9JREiV59Bw4KIXOkTJl?=
 =?us-ascii?Q?RtScVbgnMDNArBKpFdGkhb++1CBQHwFob9zltjyGenQf1q5z2FJOBZqtarMn?=
 =?us-ascii?Q?rAHways78uc5sjAnzLUMXgFPwnpbEXjJUT3DYmMu7sqor9z9yGVP0J20NajQ?=
 =?us-ascii?Q?I9B6PuWLUKYSoyE0dQRuIa5Ad6ytwg4aw2svW6rFr2enWtUVqHDsfwJssxJT?=
 =?us-ascii?Q?TckTnGLY1Gl1yyhKvrViDdmmClEFxumqxxrgXt1Ho4uf2TLAieEYwVT62+HX?=
 =?us-ascii?Q?5k/Ra2q/q4hcZ6zmfQKLfJ0dbJm29QXpctrY9u6OVC2VOL0aiWytpuPnypYJ?=
 =?us-ascii?Q?fhGACtlEpgQtfAakXC4WNe0U1YP3bXYiV+b9bu3Y+BBdzBPyCfQPUqJgCW9x?=
 =?us-ascii?Q?4OmxFYD9xqVf8gwXBVK+hJTavO1qH5OXlnjhH/o2R4gK5Vo/7KmFz8up0N/G?=
 =?us-ascii?Q?o5bWo+OJ6IlxD+B7YsXWFVjdwcf5/Gl+EtIumM5MZW3u3c77YTU5iKqHJ7Ps?=
 =?us-ascii?Q?WknsL6mrn3oEhT7ZrEqzZIpJQawSTGkfYv356egfFCH+JKGFcN/GLNqUX/iV?=
 =?us-ascii?Q?Sk3s/mZaJ1S+U7WjTxV+MdKtQ7Cb1EcRlFSbPBrIrs7iFxdXmKtyWLCdghud?=
 =?us-ascii?Q?6b+9hYGTcMCalYu4ah8jaTlMAr5dgDiaonbDJkgBWPXoa/Q7nlaT474uIgc8?=
 =?us-ascii?Q?vsjnobD7u/Ci4mwwOeoGmrNPzWo64PLLT2CB56idCDh6mqonwDC6eyQ0rnxB?=
 =?us-ascii?Q?/DWcL4mCdJMOdGC+jLe6SLtJTF6+d2FAFTsKBtEQ+ulpCLV+JQii7ZkRVaQm?=
 =?us-ascii?Q?afySVcyYlqiVHSLOSIxbek8oEc+0ig8oPsFOdnNEEUVCk9pahHawl1QQI/fs?=
 =?us-ascii?Q?WpMV4gtqwtvqGE3QCD1yYm7/Y6eDUhMfwWUi3iRBwdKN/jYQtlU/s67y7gNo?=
 =?us-ascii?Q?JTKdHhJK7SsYtEyEEAG05RL/FHfUi24HY2C5SzQkMDjIMbvTVtR/0vVvfUMu?=
 =?us-ascii?Q?0cBdavmP9Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: J/JMvEXKBTcwBDrZSzjrgojs8xFwxrGfLweYmzS0f4ivx9NO3toa2ma39qHWMx1Ju5oZcvY3EgLHtb+ZVGUddHSUdV5QO1CaiTekE9KCY7fYCTtkQHh6rcpmVQFvswxPYup8v3saJHVa70Wt/T3GkCvVwOFQs792B+cvvoN8Y05wIA9HZYo6Hs/qJByXkTahQfEjNxMM1AxQirOm3pdYJIOelJ9VZlt9ce/eDLzh6sJWz4O8slTVjtdUq8AI+1JagBD53j47HnJgYnYqpyZRHwBXo6XwC08T+UtS3WAQNqs5rm5Fe7taCbYq9rnQZGdkQJoyDFzejdo2Nft3azaA6Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: faeff6f5-02d3-4dcc-afb4-08dea5250f39
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:52.3261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 06IqlgXRc+mGVmkkKq4DelNdc2sZ2OoaqeBgk7MV8Ofg0/kfjgx2IZ7F096l/HI1a2+ec328bd1dWD6VCpEErQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: B3205485202
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Flush pending connector commits before accessing the link training state
from debugfs. Access to connector state - like the link training state -
that may be updated from an asynchronous commit tail must hold the
connection mutex and wait for the tail to complete. The commit tail
cannot hold the connection mutex, so all other accessors must wait for
it explicitly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 653b974e925c2..6dfb6b8db235e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1866,8 +1866,11 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	if (intel_dp->link.active)
 		current_rate = intel_dp->link_rate;
+
 	force_rate = intel_dp->link.force_rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -1939,6 +1942,8 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp_reset_link_params(intel_dp);
 	intel_dp->link.force_rate = rate;
 
@@ -1964,6 +1969,8 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	if (intel_dp->link.active)
 		current_lane_count = intel_dp->lane_count;
 	force_lane_count = intel_dp->link.force_lane_count;
@@ -2041,6 +2048,8 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp_reset_link_params(intel_dp);
 	intel_dp->link.force_lane_count = lane_count;
 
@@ -2063,6 +2072,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.max_rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2082,6 +2093,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.max_lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2101,6 +2114,8 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.force_train_failure;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2122,6 +2137,8 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp->link.force_train_failure = val;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2143,6 +2160,8 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	*val = intel_dp->link.force_retrain;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2161,6 +2180,8 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	intel_dp->link.force_retrain = val;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
@@ -2184,6 +2205,8 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 	if (err)
 		return err;
 
+	intel_dp_flush_connector_commits(connector);
+
 	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-- 
2.49.1

