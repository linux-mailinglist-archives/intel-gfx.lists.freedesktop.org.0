Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uC8EKNKt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8BE48529C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E05410EBC8;
	Tue, 28 Apr 2026 12:53:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VqnwgjMy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B30B010EBBF;
 Tue, 28 Apr 2026 12:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380815; x=1808916815;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=8/7ZxqrcSLK3ipTBRB0uValK8crVwWH+/1davsgceJo=;
 b=VqnwgjMybtrXW0Jts/Bt8apHkRMC/MibURpubtyuClB7m4A14LCvWhR8
 zAMpYNsXnVg+0OYWjYQg9VFn1BRfqnC1zZSV0cKi9O7bjdBL5LD5igIKX
 lKd1ANgJBm/pJygnsYPhBFcyRzFFLY+KMt16yBXrXQJGjR13s5y7FUB+i
 3JO6+dDjE838TKArlyh9j6hO5kI+AoRG+WRLLjYWmPcjZUmsjZ3RmqpKp
 HN9+7f/fexqd6YNItyXvtgvKy6kSGNTTgrib2GRNDqZGD8jQ+9BGjUzsm
 F9TzM/PMcsMzpn4z8C5qF9RETkYuysTZx+8eFV6+bZ680HiZzbJQaWaKN Q==;
X-CSE-ConnectionGUID: 4uF0x7+IQIC+VUsOle0DgA==
X-CSE-MsgGUID: TBcMjYNOQ12h99GNByFioA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398638"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398638"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:34 -0700
X-CSE-ConnectionGUID: hT4CX/+fTxOga9G2Syqn/w==
X-CSE-MsgGUID: AZJYnm27T9uIx0XIyfKtSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911375"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:34 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:33 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ld/HTxD8mBoiQW4K1jWqZIgzatMUmGQ/ugCyaQ/YkvprWt/KOAdFg/tA8hvuLafP4+fAorQ8LNxQySUWG7GkuglfDN96YfBkQbheZERGZF7vwvvZJekMiMV//RQknicgjtYjg8vuyW5lSEUvMvbz12njFXUhV0er5Jays6Auo2n5XJtg14pdiVfD/wPNYmni5ExFqw6k+QL3XjmcydNNTDVaMLcaeRTiOBPttuqpYjZwAf/Mbp2Oys7QhI3tZVdNKj+7nz9flxVMChVGFkEr7lsvB752E/VZiWAzB3p1LBwXRj4N4eId+RLIE5xfJETQrOhmaiSSaId8ujk5NLDBRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XBFOAuKjF4YwS8fPi499sCM0h0UK5c6s4C3iCi1CrtU=;
 b=HWVt6QqoNRZtNBvEJdR8j2fX1RjNQCJ0+8tAI6e+NwDuprqD1FFPKmNe/QrgEG2pgz0asRv6mc8wxIfkrkDxbMj4VoTTEnpf3MDrGI15IK5GYf0XR47xqoXLW0tH5xfZhK8WiWMwgZlH8ZTqtqyyWDqbXBlrdzlaAhzjENJ4xKgCCFRBV/ZvK/lBZB5/eYVq/yEGYpW5x3jpJ5vgWxdGCZFDBd4qz5tznKX41Nu6iZ91/U8o9qQgx9+Dc4UqaxwnBYE3FgjjVoVYL+50MOhx8O2pRM3Y/1v/IFOWqZE6OOHNpw4aTaCtfRS8+uu13se1CGKv1qMaVhjOrqSSJAR/xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:27 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 028/108] drm/i915/dp: Add struct intel_dp_link_config
Date: Tue, 28 Apr 2026 15:51:09 +0300
Message-ID: <20260428125233.1664668-29-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 901149d8-8ef7-4202-71ee-08dea52523b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Ghg6UwFN+tPRgUvxoLURIO/iHVHLuFdQhBb8Ca+AkkfmEHTy48dCUxxQricERhw2uNBi8yI+CzVP0RhHHPOA/GVEu854B+iwP/CslbvV0OXmtR9udoR9VV3lbHI7aK8vXCdWgcoymcBVGMV/yx35vRf/R3OKXKttOf9c6UndRg0smm2BCcGGrau/7ZALvOkO7gtWRQoZEGO1cRkwpFOFEs40/317fsz+b+cFggAXKEYBqF1Uv4JolZabCAmP79dcvIBR25rhdbw/LB60YRgvJKv09yujS/+DMJPng8lHBlUT83vASJWEsVbu4SZgYRcdBeVyH2lUKeyYJ1/K3vpC1Nn1NVTPe5LtGQ1hZ2ONum2d7nFfI2vA+ULD/mMP7Cekub1KtYDFkMSO+zC6Afu1xLv/r2ADfUxMt9Tfn4LRqwCnzEwmdJ2RS0JvdE5xCbv0S+Pc/wtXJQrzBNwPSDifDgoDORXEYFRkaQupeO/RqYm95h174NryDMuO6WMdxpy1CSBqHFxXFVft+jxHlzSNWBh2oR2N2rnzm+YXHo8AceabRrIIkmUnbCbFqUY3I9zrOXunvrFYOpGBe0/RJouPq92719Q46uNNxDQ8Vxu1+vu0IDiyVa8/jl55wvDqa58ACErG6rrrNv7ac7rb/htQkN2e9G+NzswYHsV4VlTh+Jl3YfQXOCNrNXUHTXvx5DW8vEFBdtnsGRkWYzrC9eo2K/j/4oBS9Xk621J0/MADq2g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NY4pGCtj48BMk+QxQ2KfAlf2bA50upqlh/uab5dtmjqiGK0pb4Uy/YHJ/wLe?=
 =?us-ascii?Q?bFrMe/IcqJXtRwN3NLGJ1Hv3mlfeFah0W2UGFyKAC4o644aXORFtZikGaT3b?=
 =?us-ascii?Q?FmPfB0qxlz10+rC2P3uk0vzsyR/HToe1E0E67+jLow0ggU7T/S+HbpkLQxJv?=
 =?us-ascii?Q?3XSKTCZ5BUkjgQvwuGOxkDfdA+lpRkT7RPlVTAYeh+Y9PVnqmGsq0OXNJU/V?=
 =?us-ascii?Q?pwabR4N96qpTFIglhuMF+Fvp3oq1a1pRtQ+c/9H8dW7dEU08LlWqjV9TLXwh?=
 =?us-ascii?Q?Q82cn/V0gzejIwcEw8Dm5yslw3l3zTm1f2Rt6cyAMksC4/JPVNbceXyhbRVP?=
 =?us-ascii?Q?5pUytUGLqn4auV4vdLP4rxlM79KvyQh3SVmrHccdOP+WXEo0CUM1ZIFGKxX/?=
 =?us-ascii?Q?mnqtjXsI988r7JX9Gaor2O6m9jxFML2SbnG+/xW6DRBaqyLEOT4tS1YaG67P?=
 =?us-ascii?Q?56Gnj7qUZSglrN4HkoBOI1sKNcVP14M+EwX971F9XYhosy91JdDc1HEMWb5C?=
 =?us-ascii?Q?H4b6ZZWY+vAu8Qk0BsfrBDdTVO6GDXuqC1w0lspP1sMQGrNsMH9N7bLfXeLg?=
 =?us-ascii?Q?zxIQ/Lq5f1Ha/qYoDNzK7z9WsRVLc9R8Wm0QQmyB2GkUC9f6BmqnTyxwDvjC?=
 =?us-ascii?Q?5zC+4qbuOsOI2YfweQXA8jElQ4LZ7vDUJLuV7Tjt5rBkmpC8Dk0acXLpLqHw?=
 =?us-ascii?Q?8n/38yO9t0gwU5tqz/Tnxby0Xex2W51qS/G2MDXV2SsCffyZv+JMg+t/dgq/?=
 =?us-ascii?Q?jwyyvnCDl+bNuPSeHpG7FJuiDRM2gteXgx5LZc0gJQMqUw50nx7kg2wzOBmj?=
 =?us-ascii?Q?9AjlAaD8L5bNKgMsApkvS+eqd00RiUz04PqDHdCc0BmZlIurfTdXE6FnCFRE?=
 =?us-ascii?Q?0O1rTGEf44aUXGdTMF3j3MTbB/qamEtZAca0/Xj+mAnndtUU9lLSFrF9monD?=
 =?us-ascii?Q?RVW2CiHjKQ0WbUr9n0d0iat38eQPPAd4UNWQMjikFq+N4iaowJeVcU3ArHFh?=
 =?us-ascii?Q?M9xLnUbYUMHIr8BfGotuau+g1R9+n+//ZwI7UCXSv241K4/dmVH8onSw2+wD?=
 =?us-ascii?Q?NU4IzharroxghZ6OCzpc8m6eTwryfKM+XGbLufEzTO/aaiqepGYMB67EJvB5?=
 =?us-ascii?Q?nOEdFkGzoq1ApKK+djTGgDUzlRRsRmwFTadEAOGPYLy44GRy76Fc/hLOgkFO?=
 =?us-ascii?Q?qDhgpTzu/duNerMB+IjwOodRT4cLCtPpRga4zwyxx56QR4ulkIzPHi7q17KM?=
 =?us-ascii?Q?L1ISdF1JdJ0ZKMQB1YqRQlYyBrrl/LCVxJBA+BgiEzIP0+jH+dOHc+VW6zr4?=
 =?us-ascii?Q?AElJQ9txpSllv+46lMBn2xx/yBNlWwrHQrZy54EcR0bSC2mY1u0zC4sPUfat?=
 =?us-ascii?Q?Lc/JjptvSPG1BI1e9XbX5QCP1RhPmhQVwq4LfruU0O+dYFePgou89JYWTTYx?=
 =?us-ascii?Q?kX3zBpGTSe8ytXipdzQv2jNEueJI91JI5CPyPzkKcYgKphLAHn+Kje88QC/k?=
 =?us-ascii?Q?HoIyJQEtz2qrKZyLCJpbR+dpaxT15MuY2cq4xRwYCccs4WFGPWmbEqLOS/9d?=
 =?us-ascii?Q?Eoqzzy7Ca18eWyj/5Npoc40hI5t6GvJ2kEIkH0gvo12tv7musB51JC2Cj0kh?=
 =?us-ascii?Q?/dIHoBp1OK1CT/a7/V620Mn/HSXor8uV169vMVW/MpRgOzw56IpjthK5wnjM?=
 =?us-ascii?Q?K93stPjHpI9VSGyWDnljcjmXw9uxuCxBv10TyE7DfZcXSprR0Qe8MKT1B9Tq?=
 =?us-ascii?Q?iFV9ogektQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: GX/ZANVoVslnNocKdGlmHDSGZGI1wcRl4IdhVzzbxBbGoyKrw1FOWFT7IsZ0W6L3qKOJhiSgiLMvLFrWIGbKzJjlGaMAIQmfPsvJE1Iv5aBhjlUZp/m6JN9QBNotC0crDNPwub/F39rPv9zv7a4mYZk2IKoWfVa5ESZFHkTIoQegXbyBDyabwvDAXRbx4BQ7sMwAueCtQ+hfqcCR1ChVKtv/DVCAkXt6MIju77hungakd4PgMbGzhN3/RginDp1cwUzqksJ3vQU7MyKaY9sv2s+xiBRMSRXoPlxph70XKjj+LmwNQ2XnPIPaReWzjfSVdw7bkAMbg+UcyFlT0+wUlw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 901149d8-8ef7-4202-71ee-08dea52523b8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:26.7894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mN8gfjmqJyCyZK4A8BIVW7tkvFsWp4QYhWUCHmsFfcRZTevdWZJtXJUqymrLHf6I2HdZ2TgjLWHNektYPQx7UA==
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
X-Rspamd-Queue-Id: DD8BE48529C
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

Add a struct representing the public unpacked format of a link
configuration. This will be used by the DP link capability API added
as a follow-up, and by DP code in general that needs to track a link
configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e591bca15e4eb..28a8a149157e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1792,6 +1792,14 @@ struct intel_psr {
 	const char *no_psr_reason;
 };
 
+struct intel_dp_link_config {
+	int rate;
+	int lane_count;
+};
+
+#define INTEL_DP_LINK_CONFIG_NULL \
+	((struct intel_dp_link_config){})
+
 struct intel_dp {
 	i915_reg_t output_reg;
 	u32 DP;
-- 
2.49.1

