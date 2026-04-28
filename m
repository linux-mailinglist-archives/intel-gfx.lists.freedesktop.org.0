Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLqbExeu8GntXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E866548540F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D79FF10EC2C;
	Tue, 28 Apr 2026 12:54:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6lnrBG9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4419D10EC01;
 Tue, 28 Apr 2026 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380874; x=1808916874;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=kNYp1volO4MQ2YHpbaJ9ybIMo6nR4qiJoIwFhSglTeA=;
 b=b6lnrBG9CjAxK8KK4Bb3i2l/V0N723lwwVonygsAWCn4fIdT56cSgKQg
 kdQ6OCZzxwO59/xuVfQpQCRHCHAlPXYn72491lCX23403A1TWXXoxrUxM
 t4APeLB6rn3rg/DBpmqJiCLFA1TSy1tYIq70kW8lw5mX1docot1oScMVr
 GYoL5XPK+O23gZWosUSa0RA+T6SBQfklsiuaGw55Psqq+odu6uk+WgEtt
 7KC2XYnKFGlyorsT9Ur81T3u9KziE8GhGTNn6Moyl7cjogelsWAfvYhfZ
 PSvSCoFFq9vNbLImmCDTpJicKxGGjX3TBfcB4aJl1hf17DtdJzD7X0W/Y w==;
X-CSE-ConnectionGUID: KVB8y/BlQqmK7OtS8jqQCg==
X-CSE-MsgGUID: xvSbb+rnRCOXUUEadbDvRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203207"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203207"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:33 -0700
X-CSE-ConnectionGUID: fwHVEXwSTGOe79fdIo50OQ==
X-CSE-MsgGUID: dhbWE028ST+Vu5UPDAHMDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244441"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:32 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:32 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N90tX0dt+XPAkYOborE9T7QjI+MA+r73EmTVjQCoLWzRLs/G4Cq9KHH4bsRU4fo/PCrU67MPqHk7rzt7rJp0ntW3QSEc26gWTbvHL57NdHa07u+Be4GsHmw5bMD8slRYsGzjDoOWJRiWWZplxAOd8XrKLqSVwDxB2Va83RyVO3xNyYMNOHapAVbS1Xtrjs1OHGOdYgbIgQluOhtZOr0XqoFRYwF8sptDPI73AdJR4ItrxkdjZ4/0/GDIvmWYf1gSjxSMJpbpI2HPlA49QLY+/9XqgYF9XgOpMulkLseRL8avvhHlHH7qEcpS05k88qDLmz6HpY5gXqHFTiGS+FzgeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9SOKoANLk6Z/8U80NWMAHOC5bNQqSUeMYh2WydYHoxs=;
 b=ZuGO6vLMCCF2mUMNJoqVHUafrfsogqgxv+2J7ouZW+Tgb5JuzCshERvcsTiHXsKkJNN9g3LqXVXNb9kgNn9qvis6MH+iGFav6y0hk9V2vv0c1lJnAsD5FnyjUUgfislLEc9ihqFpPZ3ZXqDHqr3dKH+TNYCsqGQ7x9RNZ7gSEhlQw8kNL/7rQ4WxOs51uO8CaXpetbODZp2Ll72zAFiEJuYUjZykoRh2BmFO9yiPen3pxcUtkqd3DKRBawgO8DiyJO1BMoaIyi33ErLN/QUVPWO4I8XJu2r/pCQG0XpH5I4mjAtuiMrwC5kdQ48yoJSexANiz1H15PzokNZA/h5MTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:28 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 055/108] drm/i915/dp_link_caps: Pass link_caps to static
 functions
Date: Tue, 28 Apr 2026 15:51:36 +0300
Message-ID: <20260428125233.1664668-56-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 1aa53e42-5629-483b-59c1-08dea5253df8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Le/r0sHkeoOzWYD07r+ilf8MeA7Az7247d25zWUOUQnRUsAFST/d+4bWzSNpAknKh8SWXe8Jtlc/CCbX4VFDTgEo8ZONYpdPSoHQlJTceHr34FQOnXcx736L2Fhdq5G/eLrQ5/8ZTOagD0t9BiQUvj/V05GmCjlPle1pGZUfiu7rGUnfSIlW+WlliT7CeIWxnGtaYZ3JVA1RMbcARnvZ1Ifi+RZJbRevNZmNpRY1x8fgrWX5BwPSePeMdsf8OoJPZYw94EsExS9l4DAHcuOwafwq8Em6uvlgC6lDTfo72PDtIQhRQ99oQPhTygGDfk3ngh7eVmwwBNHq58eNSkXtR+7D+8AphHCYFrAY2lshGAwnWIfwVBTWerAU0HiY9OZi4b02YpSsh7JZQ1Gy8vrNZtsAd450ueCqrRfZVGDdI9bq0cx48NIU07tWYluP6/Z1gLSqjyiDRhorUEHEFVMHx/a956fOTi+gRspUn2rZWB8bd05oxhuwInT1ezta8jv8t3gEUtBU1TbyMmrT0DfvLKGOjYexOhw2vaXrWFlI/IwSLnjQwM3295s67tR4A6DaNtfCrBwk5WFCALr1aKn2CAYZ2vzg8jeO9RjkZHehz5rTAfBtYMxBDe8zVOvFKQwmTw9N63V+WITSKGvyDwsdy7YX/GQHAtUXUTPmA+JDdLtpsCv3NzE+jkuUFYqVyRORsA8cSd+bOnzq+a4XX2w9rytML9a8bhkk3O9d71tLAEc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FAT5Cvye715U0mMnK59IUtdQbY3IayupwslauYgoQ4PuGaDd9+9P/aHmucxV?=
 =?us-ascii?Q?rO1nd+BHk1uJSIz7ytzJF56Tg2wF7EmldfJAYbB9KoT80I8jBvxHtm2smCwG?=
 =?us-ascii?Q?kXt8aINerzEYlw5PR2OzNvVJjawvSi3c2qtWNLYEuP1p5c8mS/EVMhp5BlI7?=
 =?us-ascii?Q?eH0iGUXNiKUOgwmJGrKDCzpSspTE5rbp7Dsnxzv1/iykvjYUhny3JXV0Lb0F?=
 =?us-ascii?Q?F9EBykD0TmyZ/SkfvXz0uLa67AEKzbVYdvF8osmO1t2kU9H60oUmcBXXPXs0?=
 =?us-ascii?Q?7TM/pgMpZhIHUqlmJQSReKVedA4ysyoGLpD6cN5sTv6n81iK6r48L1Nlt3zd?=
 =?us-ascii?Q?ITLfKC8mArCSydpb9Ut4sG5nZeYmXlkkVvdSNiOuwfYnXYBG8kEfT4c+rwPz?=
 =?us-ascii?Q?5PrXM+hKzECTPVAxSiA59ubnywcrqjfi9VF/zGbffUodrulQTVeZLYBszT8I?=
 =?us-ascii?Q?82105p2WQuVc40GknTkgPaCH3rE6bKLDmddOxdiZ0kQrqOyaS6ILylantNoZ?=
 =?us-ascii?Q?DRU+gek+H6jDr5MWsRGrTmmEDKxY8ANmGEnlrLQyCKO35DFW6/jT5VBTyE9a?=
 =?us-ascii?Q?fVGCoi26i0PuH/PFrQRYYtJSncWUwJpAPFvkjF9Gt4l24z30iiLjG2+CmYiX?=
 =?us-ascii?Q?KwGd0LHv04fRwdmkbae6a6BQIdtcRf4prCKwrpTzW1fNEzsq/0zN/8aDAcjo?=
 =?us-ascii?Q?t3J/4EjfppxeTvfPWxpdC+hxky8tn/XoOQIHAPXTtsAM1ME2pAdUW5uHU30l?=
 =?us-ascii?Q?CR7W8yU9r3exFQkk/T+ehDJSRtOMIVXVYsNkLsP5TSpWDXSZ/tzVb1vRuSvX?=
 =?us-ascii?Q?lIvx/gQNLhl00qPIcCPEeEvnXpCulDmyGppYHKsljNGL65+7HgYIFQ4cEW9c?=
 =?us-ascii?Q?QX8LcErzhv+1Fv6JBI6VeaQVHwtEzR5326ZPR9esE3L0FYldvpoDFJkzcEWH?=
 =?us-ascii?Q?8lMKVPNASemNLNQ2blJRtGomAzIY4ibt5hJJi2GGa0a+SUHClU3VaqHYkMWy?=
 =?us-ascii?Q?tITm+jHUOGzjsxsGooEao9SnJKwxlNWZa32IsNEB/yu2Bsj4EIeU5lEpfG7L?=
 =?us-ascii?Q?srFhI+oNmh2hrPMe0AzVs0R9xiyDQr6EWepz8fAaVA+ZHJxslRlnqZsqs0lt?=
 =?us-ascii?Q?EbhK5V6MlYDviCnBJ6LmTUTb7JQ8AmugGRVzR4xNcCmp9NGhZQIZdexlw8rv?=
 =?us-ascii?Q?uN+fevYk2NmGjHwcIP1nkmFOPPC3yG+lMdLHc5jwILoeNskmiKBpb5rreJWK?=
 =?us-ascii?Q?WN1n48EjsHV39dLfyAMWWDcz8+lYu+kw19gpHvRiJc7rURYdkW0za45Lmu11?=
 =?us-ascii?Q?SQEWoLGjD622dGNIXD7Q19MZIt2A9ZiExFrdNXx7RyK4qH5AXLuf1Zzmrd94?=
 =?us-ascii?Q?OluQTvUcMvElweTEtTP8JMgkXrzEaJiTXG7VhS56kt+parMiFremcQp3XjNW?=
 =?us-ascii?Q?tQiLKdSwcq9o+cp2dVLanNxZzDE/lOGoQu5J+fseZzynIk39QLvbPwp/E4HI?=
 =?us-ascii?Q?iXXmd9MbKqPvvPsqXgs0BXCFDAI2X2DyWUkFD/ZHg7DmpLUfk2n01VR6hDwD?=
 =?us-ascii?Q?8o6J03IRviGHbmmw2AVF3iNN53opvLPv2M5falPKftbqlQ0jChasN06qIsDE?=
 =?us-ascii?Q?KwCZNNjExH/BuSZREa2WbHpwz2yPzaCRCAMDIAwMkBIZ6Bf4pjdFBYNjeNhY?=
 =?us-ascii?Q?m7KuwHTarjxeMQg9rZT6DIVu9Rc6RjCKsATzYW+SatEhbi3JqvkuXqtuNYx+?=
 =?us-ascii?Q?7eeQN+ERZQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: uXhG1JOnqWChko6bic337TbKZSLFLeApeufGKXbKo/xCGR2nBS6PwQ+qBWhYXxOUY7sAqnbvWWqZubJTfNFWxPfb5J/pC7ra1QQeLfmT04Ehe0lPBmq4ZGmeF3qsjjVqSzCLlgVAHFEKbxrebGAnIRuiQS959Onr+QOQ+/WGGlWxAUXzPeocpaYUpTkuKn7Vj/CRxAqhBNcsVjJrK/BnKFiEB8zzwQGxWN78Fww2A8WAJa4nugI08jRDI9IaqUWBACDr3ZdLmY9Hem+DngDqg8hUVsAbsUR3eIq19XXIwa+CQsf6BCA4shTt2JxieCTzubau6n7COXXM03Nxurnr1g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa53e42-5629-483b-59c1-08dea5253df8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:10.7196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9BHEZlkNNXS81JjSK2QA9morckkJmlxJhbbon5zsi+0pPO+YFgd4n/Rzbg5RbBcLDRDIxz7VaSx8FM6Vx33B7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Rspamd-Queue-Id: E866548540F
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

Pass the link_caps pointer to static functions in intel_dp_link_caps.c,
as it holds the state with the relevant information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 41 +++++++++----------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 6d0ce343e7b04..1f6e391838894 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -161,10 +161,8 @@ int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_cap
 	return link_caps->max_lane_count;
 }
 
-static int forced_lane_count(struct intel_dp *intel_dp)
+static int forced_lane_count(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
 	if (!link_caps->forced_params.lane_count)
 		return 0;
 
@@ -172,9 +170,9 @@ static int forced_lane_count(struct intel_dp *intel_dp)
 		     1, intel_dp_link_caps_max_common_lane_count(link_caps));
 }
 
-static int forced_link_rate(struct intel_dp *intel_dp)
+static int forced_link_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp *intel_dp = link_caps->dp;
 	int len;
 
 	if (!link_caps->forced_params.rate)
@@ -190,14 +188,14 @@ static int forced_link_rate(struct intel_dp *intel_dp)
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params)
 {
-	forced_params->rate = forced_link_rate(link_caps->dp);
-	forced_params->lane_count = forced_lane_count(link_caps->dp);
+	forced_params->rate = forced_link_rate(link_caps);
+	forced_params->lane_count = forced_lane_count(link_caps);
 }
 
-static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
+static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
+	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -210,9 +208,7 @@ to_intel_dp_link_config(struct intel_dp_link_caps *link_caps,
 			const struct intel_dp_link_config_entry *lc,
 			struct intel_dp_link_config *config)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	config->rate = intel_dp_link_config_rate(intel_dp, lc);
+	config->rate = intel_dp_link_config_rate(link_caps, lc);
 	config->lane_count = intel_dp_link_config_lane_count(lc);
 }
 
@@ -354,26 +350,28 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 	reset_max_link_limits_no_update(link_caps);
 }
 
-static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
+static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
 				   const struct intel_dp_link_config_entry *lc)
 {
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lc),
 					 intel_dp_link_config_lane_count(lc));
 }
 
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
 	const struct intel_dp_link_config_entry *lc_a = a;
 	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
-	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
+	int bw_a = intel_dp_link_config_bw(link_caps, lc_a);
+	int bw_b = intel_dp_link_config_bw(link_caps, lc_b);
 
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return intel_dp_link_config_rate(intel_dp, lc_a) -
-	       intel_dp_link_config_rate(intel_dp, lc_b);
+	return intel_dp_link_config_rate(link_caps, lc_a) -
+	       intel_dp_link_config_rate(link_caps, lc_b);
 }
 
 static bool current_common_caps_match(struct intel_dp_link_caps *link_caps,
@@ -483,7 +481,7 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 	lc = &link_caps->configs[idx];
 
-	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
+	*link_rate = intel_dp_link_config_rate(link_caps, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
 }
 
@@ -564,8 +562,9 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	return 0;
 }
 
-static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
+static int parse_link_rate(struct intel_dp_link_caps *link_caps, const char __user *ubuf, size_t len)
 {
+	struct intel_dp *intel_dp = link_caps->dp;
 	char *kbuf;
 	const char *p;
 	int rate;
@@ -608,7 +607,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	int rate;
 	int err;
 
-	rate = parse_link_rate(intel_dp, ubuf, len);
+	rate = parse_link_rate(link_caps, ubuf, len);
 	if (rate < 0)
 		return rate;
 
-- 
2.49.1

