Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CxjAh6u8GkUXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7A44854EC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE70310EC5E;
	Tue, 28 Apr 2026 12:54:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJrhUDK6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62E9C10EC69;
 Tue, 28 Apr 2026 12:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380888; x=1808916888;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=2myxKSLSp3vCmHsuOCWBsjxi6/qs5A1XaWp6peGM+Rw=;
 b=AJrhUDK69SecTp7Yx9cJtp2UXu5RPrv74F02jhkFLgqPSHF2N9wa04IA
 3xO/LKxuPj6gfvy1GYvxR012mkczr5TsHuBbc5wm31sontzVTBVEiOZhk
 b8p+9/kB3a4WtkTNECq7DkS/GC6NGDAn5GzAJx8R7xEbnX9QrofbAednV
 voYOGGlHz3hCn3sGhLVibmmNSNSZy0rW4IQvQN2aSXS013h2lKZvTQC1y
 CdBSanSg5UBoZqbwX0d0U0cZ1l6KtrwIw3VjmdN+psnmq16GfoxmO1/0g
 wnAFrbojSh++9BbD3QdL7NuA7CyZHzQPdaDXql6GJrgoo1Q55M8aq3z4X Q==;
X-CSE-ConnectionGUID: UbKZ0Ad5TByIV0qz19aCDQ==
X-CSE-MsgGUID: 1Gy2v9BUSVuj4/+BhpuITA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893810"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893810"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:48 -0700
X-CSE-ConnectionGUID: iwloDowrREOTNxaRXKSN4g==
X-CSE-MsgGUID: iZ9YmBYSSouvktExlr4K9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083564"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:46 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qq89X/wCEQnUPYa8J2nwsFX6LWLGhg+hnNTxuVT130q5R3Rl0hFDpajUGS/RYpvhubPpXOAu1RXfDSnhGwS6+WGgdSeQYBg6m9FLlSgyaMiKiMXxs4mQ+a3/rn69htrmnOQlL06gyJC18NSvItuSmPQDLTWP4wD6GH2VZCR2UC9hdtBJxvfQh7HWWtIMK2JAje2q+saJNcEcZZZS8kpxzmnbNF1b09qI+WnB2eoJ/OvRw3roDwDuCSPH6VVDpsS/DkMShCCOXC173IYEqV7T/UJLzaVPfIwYoL2dbjai0T2A56OYEjbomJqD/Cid2XOxh+3wOCFmxdH2Kr1q+j/ypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N5T9DC1OVxnCI/GfOrji5fa2yIDhxPjN1dXvxbZPmok=;
 b=EJkXNssNPidl7yKWzKCH6Vd/7iKfoLvyBZRF+d+SZXi/vPoGVZrlUgDqG5B632Kq5xnXYUmtSPD6OOXC2jBY4hAn5F5oxD6EtEQyKdRzwwaTSsamPDnz24qshqDhXA+nja1oWROwOGoEwDthFyR3qWaLUfdBubelhE6P8ndIuVqJ2DX5vTyWDsibUFBurwTAB3YDIEq5N3UQP6/FX1CQDcMmeK8/iFjiYYo7tko6Ri7BoQMFsfzimk9xrLauYHSKtpwlUji3NFkkXedJSJXEJKbEM11snYnJVDxkd2V5h4mu0H1pEjGU0r3Zc70dhpGq8+7mRQGkMG2jV5HxamrRIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 069/108] drm/i915/dp_link_caps: Pass config table pointer to
 rate lookup helper
Date: Tue, 28 Apr 2026 15:51:50 +0300
Message-ID: <20260428125233.1664668-70-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 343712f6-400d-451a-b65d-08dea5254b94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: C1DnfafaErzZN0lAZbnaulPzNvjCwx/E0zVmHq3wn8JZMQ4tMZnxQEJQNHjGoDzCDj5W00MpookkCbV2UdlDpahmHV1CYF7R+LlNSG7Jfnh0PtQ6IUHGta6JvyW3Zrq8SLaknE0pN5g2LtoOWqQKel+j4JE3n9Z1ZagFGz3oYNIxZCiOHnmzib2yW9NXYJsESAuaJ8a1sAcDtpGCXFipUFOD4hozDJI0fUIOiXeJbDVMEPT06Ffjl8P6cu8QXD6xOXYgUkk5mkVTCIBojvYNvaSSiPCYvowDPM8TrfbQu23tNulcT8yECKOf6D0pBp7NtMyQ6f09YHu+f0MtylsyJlRiIMMZmfHQwAcRbWjWJQGJhE1A2BG51T3p6KvsjUx9auATezsg05W98zKP/k3+0lU0bn/+Rj1JMgVi+M7UmBwVX6Oeoq7ev5XIZIcH3YV0DpapfeeCBNFYULi+Qwv9AV+/MFM+8NNFZ/Bu6yyk254B8GlB7toAiUd57BCxz2Rev0ReNqw4Nw3f2Xg6FMGNJTwARbTLfmBdFOu9Mhip58ISBjUOKrvi/4oCELOPA+8HIkbcFEoya4hUm989cLYtRdIpH0ZnbPGIrXVAMcSIbP7iblZI9dd3J+8fx5h5ZQ6nQyh62n1Xou+EYkH3o/69eYTCE/FsLCRp1R+Zbs94JpBiejzy9J79zeGFBjxK+VEywFNbOGiyYK01vAtHeWd/OB/O7/vAsUHn6IL6p2P69Zo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FmuSjukoasYV/I4vrBdQ1cPU0cYVAgpdvzXCLLS10M59goMNkomk6bR+DTFS?=
 =?us-ascii?Q?auwlbEo54XXUGGG89uvN6zV+CezmpqkSg+AwB+9fzE5RJALKTJ/VZuahTW7D?=
 =?us-ascii?Q?GV5swlzAf9Denxa+d0ynVy3htGBuFm6iX93E03/804x19LzzfpZ2KZQO1DZT?=
 =?us-ascii?Q?pDKICFSaEqTLKRU+F9naD0o94ugpPLp2Njy/80kfvtOMxAR6Ql+Hm9HStuca?=
 =?us-ascii?Q?RVHGkg4+dTYM8fXDJBIDtfzthYB4mSA7BAB13ckoCDRqre/krCU0UjGyaehm?=
 =?us-ascii?Q?rK4pRjO/6NhU9Ed9Ii5mqj+qHSXFpvuKXDMK6rElaeawTR8XgDR54MMQdkDL?=
 =?us-ascii?Q?w+4RsuKcwxz1Kx5A+Xx7vzDJKqqxAGXiSuGln5cYgsUjmTI7jUE55r5Iv/NB?=
 =?us-ascii?Q?3fBzQefEGz4Aclz/CDSkiIpm82HL162FkINhKe1zjdiB1tBuuIwHkQWHEqmS?=
 =?us-ascii?Q?6na6oMllxE5/FlkGufd/vcklLZtCT40it110IuhfyMTht9SzuJ2soq/Bimiv?=
 =?us-ascii?Q?JgCLo8jkseEppUu4WGDLmH6j6xGyqIaZub9kWPP2lKo/HMnqfXYl/A/gVS/I?=
 =?us-ascii?Q?VVI2NHnxdud0XTJ95wSlL+88U+9ktl7sqyOJIc8tTnRoPk60z2NBSKjUWWFc?=
 =?us-ascii?Q?4QthRs/3bbZAutIIusFGwhOgf5TVQsYI8DQ8WKJQSRer52OxO3adh/gE28Z1?=
 =?us-ascii?Q?Dt0ohOjXvqhYoIN3TKx5iqO8umhVACSNev+xouq7NLOzN8r6qBz67DhYrGqG?=
 =?us-ascii?Q?8jzLpGE4fk7dZhdv9KCbKwvCqW6tRH0AMypEjRJvqFNTYRycSCIDtELeLcqf?=
 =?us-ascii?Q?eIhQjw+lL8XqFuCy79lt56P93Ksy8/Vixm5fxcfKEjJ8piciqUOCof4F7JMt?=
 =?us-ascii?Q?Z/2gooFs7IqcKxZ+5mxUbqOxlo9mi4POc8yRxpTIN+yBoEB6Z1DaSaM5GOmO?=
 =?us-ascii?Q?otXF2rT7yAPU03uT83LUxmCZCRLgQegL/ecFoLw9ha9PEkj7T124104S+2IA?=
 =?us-ascii?Q?OMrdWdHMl5kXpFGieUlzGLIw1vu87T21VBi2HFTpXWDL6tGlkBiiogABPphH?=
 =?us-ascii?Q?fzr847XSug2NEwk+FC5BEKvvEj97XneuwtA1N0byfiv6koCTqVVbYq8jbSM6?=
 =?us-ascii?Q?UhFa6Meg8poYe6f5hh6/qX+OnmJUB6iC7T+T/XPjD/l/q+UEwZOsillDy2ql?=
 =?us-ascii?Q?c0fY9c2h2LGlll0RIQqG4MAF6ZqhnQzUVehtDvNPe2bV5ConowEboDYAtryz?=
 =?us-ascii?Q?FjidjzHkiV98YGHJ1LppHJgJ0a66PFbIoUeuEx2HWtJ68R76s3A0A9f+5DAz?=
 =?us-ascii?Q?mjeCnDNkr/ZAAsidSHJndyAVA7GC7T4DV5amuFAvr7m13kRFYUg93fgyLm9S?=
 =?us-ascii?Q?H8fsadKZ6d0jeSMg0fWxosz/VKAfAaLY5UgpjdXt7TaUkb6sNdizm53WtCTo?=
 =?us-ascii?Q?sKaFkJYsC1vKI5xeu91xCnJu88/qJsFnyD9OEgv51uY/0RynPF5vO59Wub/P?=
 =?us-ascii?Q?5tt+Sbyuxmo3Pk0fes8ayde9qYpO9OWtMfvSXaAbJ6PncWdaDsLJU555HW2z?=
 =?us-ascii?Q?acpOhZ+o20EKyiprzJfO/wFM364vc3d/rueDvyn6/P7ONTVbMMEh3CpndiME?=
 =?us-ascii?Q?Z4gtisr0BEEYpL5AhE47Y/iSRlX3akiQ2lZtZ5uZ3dbzB4w29ckXmJNAK10v?=
 =?us-ascii?Q?ttQzIKSBxMYlhU6/KUvMwaOfz4tjJ/Jq9ea9UqN2DvPhXBpeidX6F702Qi0/?=
 =?us-ascii?Q?Fhmtcn5Ayw=3D=3D?=
X-Exchange-RoutingPolicyChecked: foyaXekJZfzC1PQqzVcweV2yLI1rnn4lCV+gi0htV29PBz4TAZ4ncShmRRpx5/WSs8WUxC4Jns61IrjMrNZDmaZf7D3x0DwAPWNbbVzqPE/OwLaFPyWC/FoQiWxwc3tillj50AmeUuHsy9uJ5eSEZ64u9u5MeCaJexbAZ37HiwhyivIA3vJW8wEubdS+tjjN6iAU9CYg2LmhcRa8nXv/uez642PM8qmYPPTfi+rZHX/AmVgOj6A5JPVxFCzzLccuJw5IDDCofgQxhRNiFZnxD7AkyoHffgqObxOQzgoDpsWV/AfAJCEC4SUEowtYmnaqNGAW567MgzUkXrbBMvLlQg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 343712f6-400d-451a-b65d-08dea5254b94
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:33.5837 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FW7i/b3+aU4qfPMTE1bIiuv+AmbR3a2tbydggQjvxxCA64vXkDnE5GFTi69WIvUmPs4d5EGEqBMtY582EAKOqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: AC7A44854EC
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

Convert intel_dp_link_config_rate() to accept a pointer to the
config_table, instead of the full link_caps struct. This prepares for a
follow-up change that will precompute the table before committing it to
link_caps.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index d5456c24714f4..bd0a7a44279a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -274,10 +274,10 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 	forced_params->lane_count = forced_lane_count(link_caps);
 }
 
-static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
+static int intel_dp_link_config_rate(const struct intel_dp_link_caps_config_table *table,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_link_caps_common_rate(link_caps, lc->link_rate_idx);
+	return lookup_rate(table, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -290,7 +290,7 @@ to_intel_dp_link_config(struct intel_dp_link_caps *link_caps,
 			const struct intel_dp_link_config_entry *lc,
 			struct intel_dp_link_config *config)
 {
-	config->rate = intel_dp_link_config_rate(link_caps, lc);
+	config->rate = intel_dp_link_config_rate(&link_caps->config_table, lc);
 	config->lane_count = intel_dp_link_config_lane_count(lc);
 }
 
@@ -562,7 +562,7 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
 				   const struct intel_dp_link_config_entry *lc)
 {
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lc),
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(&link_caps->config_table, lc),
 					 intel_dp_link_config_lane_count(lc));
 }
 
@@ -579,8 +579,8 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return intel_dp_link_config_rate(link_caps, lc_a) -
-	       intel_dp_link_config_rate(link_caps, lc_b);
+	return intel_dp_link_config_rate(&link_caps->config_table, lc_a) -
+	       intel_dp_link_config_rate(&link_caps->config_table, lc_b);
 }
 
 static bool current_common_caps_match(struct intel_dp_link_caps_config_table *table,
@@ -719,7 +719,7 @@ void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 
 	lc = &table->configs[idx];
 
-	*link_rate = intel_dp_link_config_rate(link_caps, lc);
+	*link_rate = intel_dp_link_config_rate(&link_caps->config_table, lc);
 	*lane_count = intel_dp_link_config_lane_count(lc);
 }
 
-- 
2.49.1

