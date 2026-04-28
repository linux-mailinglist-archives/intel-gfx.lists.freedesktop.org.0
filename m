Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UE7rJUeu8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF994855B4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 550F610ECA0;
	Tue, 28 Apr 2026 12:55:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hd5gc8GL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B7CC10EC9E;
 Tue, 28 Apr 2026 12:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380927; x=1808916927;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=QHwNzOCjK6ZaSl7zHIdofhdJqIwDLVOYaJGrGMVqlSM=;
 b=hd5gc8GLDUOoDezYKe0rkwJxzoJ34cQJQNWOKtFFdB+yJAeIEd5nv62d
 uGUI3qfQOwjFxkP2hmAXHisqlylvqIeOiopUR2zR48Cj+d77YVElDOubX
 aIugf57NhBkimHoPJOon6tb0RMWTyDNCsSJQSDVgu7STmDPfaAvc0IvO3
 5DqcIcWAZROhC87JjNNO/bzRyErkajbGSN4RkxWZoNez9mki7Mfp+8aqm
 JA9PzHmwDNImiD7ESInH3CG6m6A+JePGHwqIx109+YNIH4RAjeacTjOMW
 DwM6NgaIdJV/aLP2NAHMZCXav4J36PQBQKhJ1y3rw7ub39yQDSc8u5bnz Q==;
X-CSE-ConnectionGUID: 5zf4CTF+RdC6CT0Z2OK5/w==
X-CSE-MsgGUID: /gNiGDueRKO78uLd03WLHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318780"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318780"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:27 -0700
X-CSE-ConnectionGUID: WhMMb3vgR4urSJgsTfvahA==
X-CSE-MsgGUID: MpgCRbxQSLuPCn4m80vz2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818247"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:26 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YW9oEWGFG2qPconsjrWxdlTfZsYvPp2AD8kWV/VZVl+he2QSFsiz2cqxiX7fzns5FLQuF9CLPbzgPWUVt6JDqKT99j7DARXIhVpw5cG+uE9kKXyWWQSG8iJoklDvRB/dqcx2Gd4h8vFSPGg3YA4Tf6XditGEBm1yRK2HuZPNEW/pkhHCc41MNo1E7GQIPH/tfXjOEXUgnP0JRvCP4mcUiwTbJvDsDq8Y0TDxBUQPTNZ4gb6/Za/DcbAdCxNcn8FrDm7qrRlFl4Iw739GnIbgwwUZaM4ebi78M97dgOzScAoGW20pPOZgSQDwHl5KC7W97NK84QVqQcghS6bRRAsdSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iE5SGK4G8kn/UCYsfQ+b5jgcV90cZPPz9OFXzuADulM=;
 b=ZTraU70e5GjJQ1UucMusJxxCDsFHHrGfGztLGOlzEqVSiyr7MwMYCq5H6sWcLu0WV/wIgd0fvQRDYPXN/1BxlelhpEUYmhKXGC5AxZGe6tWdEL/UlHLEh+9/R+CTdu7TXylhQGG73mN7U9OSQZVNygHQL0f46s9UUyRPYJzLdCZiS/83jorbn/MROuhj9jPW/xyVTRPxi4Oy0cqhz3r++EtOjnNfkgU8FQjvE9hEuBvbp8Bvc3sgRltwHGIaPiIenAFZDRUztTDRzs2FWl+HYj3SM6V0AUWTUGov8qZILE74amVZEtVaY5tUCxgI2/YY6mfCXZV8bcgxMOklYRJ/WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 091/108] drm/i915/dp: Iterate configurations via link_caps for
 SST non-DSC
Date: Tue, 28 Apr 2026 15:52:12 +0300
Message-ID: <20260428125233.1664668-92-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 789bc6dc-c7ea-4de4-a6a9-08dea5256123
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: SEOoJRYKyBw9mXReLhudTt8CSJNMVuhKuYEhu5dCX6fvG5ukBvOfa4tMbnkg+6wE5bjFaU2yb6OG1wUoXXfEvCHz2RxwuVH2/rKww+OlPG2TyM4kQb3XGrYO7l63PT9Qh88Kpx541DR8+n3u3DvbqOqZ3dXBjqDHmLKLLYoUJ5qHoUWb7t3/QleFgESSslp1MhaQHzIEkRmwXJNqKgQNV4P5z8BijRuyhZM6d2jCoAqi2zlVWuQq0V6K3Ym3yiu76P7+wBLSvqYk2TMjfW21U2fp8om8kJjFPFRHBpq6f1sezTljW8cdyJbe5AQJKJM2GXAQOpM9Jc/JW/w5GtNDX++Y5p3cjDnRSN3wCE5nZU3YWck/mn8TUsTq8yNcGIkFKp2Zltl8pQbhTvcpFjCwxTlpA19S9wIFsPOF4au/KuyO9Jxt+tIyWVfIPwoXqQAt2NZvTN+tOUGLtpbkCF3/qQnMypRlCsswZVH1tytFk20lClU1vLrasN7wToltaRC+GfiABaG+zvqen8NPvs4FBluHAyRU7aT2l8dC2K9mbMXqjcKvfUcH7w44OLKJBFO4A0+qhQU8RQy0Q8JUSXRJwpjQt1EYezxrNnl75WlJyTN7J3OX9PFJ6HZG6MbnNqiiPtOK4PFjfM0+vRL62DnuzG8FM18Oe/e11SIFzCISChWF+st2BTgeKefCYY6pk7KAYQ6LPQIBATZQLdcmBa2OK7HuTm8jkaqxuI6fix2ObV0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/o7zvMfRN8mMCzi9FiOW2Db9Wn3muqklVGsNxvGjSxCR3fnWbE1rjXdSELYB?=
 =?us-ascii?Q?N8TsVhSTZkdcZAXhpm+4j8CFXAl1GaxsPFFx3fpFQI0SPsZA299jagrQwGJZ?=
 =?us-ascii?Q?pvaWWUzmf9FF1RuL3JBQPlCPn+nuSFR8rp1xwy4MJgOaFycTrwUtRSsL4+nu?=
 =?us-ascii?Q?Z0ftGa+wEBSG501AAU6dXovHKoA/KVjpy3JbMEsGVuKe9entHbh774TdyEBm?=
 =?us-ascii?Q?kCUaOTIzn47fUg+wcMLcKoNGIXFLPifGCNqe3YB1C7JnEKn8EM40SzDXNWK4?=
 =?us-ascii?Q?39F7OkNdyiN7S1rbnG6cq6Y433WXjG3UtrPOoCwCUAZbEzenU3Wp+HPbp8IM?=
 =?us-ascii?Q?vQFMGbCTd5VL6V9ED49xAbt5xOZE80SwYi/4QUjXV1ZKL58V6BUMuD4fVtmj?=
 =?us-ascii?Q?5uKqErJB9XVQ25XZ5HmaNUFt6uFb6vB0Pk47Cpb+vj7PqD0mm05lrmMGEDQF?=
 =?us-ascii?Q?ms0i0jpoL25GM5I0TrVbvQJR+czwFBh+CTbieNVzy9iUaWfiiDf6mWO54bWE?=
 =?us-ascii?Q?UB5zG2S3sxSwtqlMSXasqDf81dUEL7N7UmBymqQkc0uECGGv8HdBA/OcBWJO?=
 =?us-ascii?Q?u9yiK/1QR9Hj4zRUNrAZvLShJ0sd/XgkGhJbfXxWaI3aiMjdhQfLHFR/KaAV?=
 =?us-ascii?Q?jfz5OQ3+6FmOoG20LAM/7sU5KsA9vy4WkKXafWA80w4YwU40rNRFIg5sTml2?=
 =?us-ascii?Q?ca+KZBJff4MakIbT0NglBuv/+sjxxg4MOXnDvHvs8puWApbcFVQlbXt8PNgQ?=
 =?us-ascii?Q?WnhdHrSvzIv3qgNASGE/U93Xy2vzZ/HYF3NdzKyAIV2VSg+TNQ7GBOakIuYr?=
 =?us-ascii?Q?E9+M/2Sykpk1RSc3ioGVyjB1XWulaDq0r5Zdh17tzSU5aXXBuLeE/IvzPfPF?=
 =?us-ascii?Q?OaMdtLjKeAZS0nK+y8ANdMY6ChKQhqt4fkZLTRhmJPqqJY22kbhz3Dyq4YTl?=
 =?us-ascii?Q?SNBeSQ7yUAxtr5pqPiF60eTUE22RFEJl/JoUvYdX4fvlABoaLidWVtkJMe31?=
 =?us-ascii?Q?Pt26cquJjE9y88pQdwmiHS0Vl1RxvmHoqY3sfM0qSosaD55DhmFMSWw7wxUY?=
 =?us-ascii?Q?zZHq0PeM8M8izydtm2JWAu9QhvqTwGa5LnX8jL53XI2bZcB3KvYAmCSSP8QR?=
 =?us-ascii?Q?CIlAZR+nUvz/7p4v2jzK2KNsQOMqrDtVsassUMgvCEY92f6oLPcg3LRvpGL5?=
 =?us-ascii?Q?VzN9/adRw0WbeTBa10Fv+2BN31FL280NtSH3tE0zuHSGaQG1pACiLXuS3TAN?=
 =?us-ascii?Q?+QVNYpWDrKI7C1liDNk9hsiRc3ksFBhVqX9WbqmF5P6E9vDUEkgsJRHzntDb?=
 =?us-ascii?Q?FHB/bkI5mwW/hdU0S1mPJOo/jgxHKVwVO5bDpPw0LLDf5y9SaH3HdeaY1mRS?=
 =?us-ascii?Q?gb8t8PQi45ZdwAY56k672Cpp/8bEXqXn8zfLt/7fEmXIlVuG7OEmWysp/G7r?=
 =?us-ascii?Q?FcfS9potbkwVAagSVf8S0RoM1+dmYSVpAHFECE3eRIkEO5qgwZsaRFH36q16?=
 =?us-ascii?Q?QyMqYU9bOy4ebMlIFnUXV3rr1JPJemUDmaHcUX+H+NdgVgnxrDLtbSUWgQ5z?=
 =?us-ascii?Q?MJt5ihH2yLdDeth+5v56VnnjYhj7VVBsNIi8byff9mEyHUCaLwnvLPN42CkR?=
 =?us-ascii?Q?WR5yjGcyI9RxkTkfdJRc0/KfdcqlaXKoVovMKB0I7gU9uvd0AlwBVeEIDyrf?=
 =?us-ascii?Q?Kn/b6e1x85lw+mlovGlhTnv6mFvmKPRPVxfIDwyVmk7M1LSYta88u0uPQzks?=
 =?us-ascii?Q?R5fq6UWi7A=3D=3D?=
X-Exchange-RoutingPolicyChecked: KTO+fejHNA0gpy3Bqquj+zU+WLutAaXlaN1JWNWtLgC297Z2G53E1ovaf09d1B0jpB6IW2QaXLkjJI8Dcsqi0IREiU0pQz0NY5b53pNuCn9OIGqM2MFT9YqYVjXN+0gvhMuhtQlUZJ5G4mX6wKh4b5HwAXxeRRdxAObJRJTOghB31jlEUFdRTpp3Us62dYfw8O3ABLUi3F4OlkxLPtZS2WqOr/8Zv1kQphGuoX5OwlQE+hrgDiUHl1m2zth4kfjMb6PneZ85Qm4sjycfAhKhvzu0+LIo9Oh8y39fdUeO4vwkp4JMlZbi/t0zEDuMf+oIShdgvGW+T6yZi0YBK3ICKA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 789bc6dc-c7ea-4de4-a6a9-08dea5256123
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:09.7791 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: utNXNTnKXnGyKShv65eAOnyGv9LGNPpEsHvytlbMCup80npfgkkjftdt9QMFgoHcrZ5tcv1tQNHQm8QC3GmQuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 3AF994855B4
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

Use the link caps configuration iterator for DP SST link configuration
computation for non-DSC mode. This is a step towards unifying
configuration selection and iteration across connector types and between
compute and fallback paths.

The iteration preserves the DP SST connector rate/lane ordering used by
the current code.

This also allows removing the now unused common rate count helper.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 47 ++++++++++++-------------
 1 file changed, 22 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f561e984b4d4b..bec78ddad7f09 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1758,43 +1758,40 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct drm_connector_state *conn_state,
 				  const struct link_config_limits *limits)
 {
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	int bpp, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
-	int link_rate, link_avail;
+	struct intel_dp_link_caps_config_order order =
+		intel_dp_link_caps_config_order_for_connector(connector);
+	int link_avail;
 
 	for (bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
 	     bpp >= fxp_q4_to_int(limits->link.min_bpp_x16);
 	     bpp -= 2 * 3) {
 		int link_bpp_x16 =
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
+		struct intel_dp_link_config link_config;
 
-		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-			link_rate = intel_dp_link_caps_common_rate(link_caps, i);
-			if (link_rate < limits->min_rate ||
-			    link_rate > limits->max_rate)
-				continue;
-
-			for (lane_count = limits->min_lane_count;
-			     lane_count <= limits->max_lane_count;
-			     lane_count <<= 1) {
-				const struct drm_display_mode *adjusted_mode =
+		for_each_dp_link_config(link_caps, order, limits->link_config_mask, &link_config) {
+			const struct drm_display_mode *adjusted_mode =
 					&pipe_config->hw.adjusted_mode;
-				int mode_rate =
-					intel_dp_link_required(link_rate, lane_count,
-							       clock, adjusted_mode->hdisplay,
-							       link_bpp_x16, 0);
+			int mode_rate;
 
-				link_avail = intel_dp_max_link_data_rate(intel_dp,
-									 link_rate,
-									 lane_count);
+			mode_rate = intel_dp_link_required(link_config.rate,
+							   link_config.lane_count,
+							   clock, adjusted_mode->hdisplay,
+							   link_bpp_x16, 0);
 
-				if (mode_rate <= link_avail) {
-					pipe_config->lane_count = lane_count;
-					pipe_config->pipe_bpp = bpp;
-					pipe_config->port_clock = link_rate;
+			link_avail = intel_dp_max_link_data_rate(intel_dp,
+								 link_config.rate,
+								 link_config.lane_count);
 
-					return 0;
-				}
+			if (mode_rate <= link_avail) {
+				pipe_config->lane_count = link_config.lane_count;
+				pipe_config->pipe_bpp = bpp;
+				pipe_config->port_clock = link_config.rate;
+
+				return 0;
 			}
 		}
 	}
-- 
2.49.1

