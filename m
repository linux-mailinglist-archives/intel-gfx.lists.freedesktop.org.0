Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3XabIyQzRWpK8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCF26EF453
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=EZinb+qE;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F73310EA40;
	Wed,  1 Jul 2026 15:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40BBF10EBAE;
 Wed,  1 Jul 2026 15:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919967; x=1814455967;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=y4hHwExJp7i05kZLNZfWlaQnkuWicH9Oqg5Pu2f1nH8=;
 b=EZinb+qEL+uppT/ghN7l+7fvJ73x9SogqZZRRrdxtTdxgkaxX6tqZhqe
 5CPnTO3LAJBrjNvi9Wd/QBrmJlMoWdboXE36CMOzJcanX2yhuxPjw9WCZ
 XVgS0pgRXNawhmk5c/gXhhMzVUE5TIovW2haOFxXUGwq49Gz5eDyYQZp8
 XW/k9wqz54IFxvqVdgggwoNg/aHX48E61sBGGsAETw5E7OzpIgsYCGKtr
 BRDaWuPdQK+JcfVnT13PqJJr2v/gNVfVElVEhMIXWbR6s2PqEY9KxYSbi
 +A8IXZYMSx3QrmLcBrK1UF76x/NkSDHU6BhbVludqmIcATVc+xwkKj4c1 w==;
X-CSE-ConnectionGUID: VsiUy2FbQYiA637tfsSgzg==
X-CSE-MsgGUID: QY85vQJuQ5+8Uw2VdhPzlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159181"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159181"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:47 -0700
X-CSE-ConnectionGUID: GVW9WRudRtS2wYqXlslq8g==
X-CSE-MsgGUID: SFX0o2dGSP+xutmRYK6w8w==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:46 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.39) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QeLK6HjgZkLVkgx8SGXwPyggo+Yljk2PX8MvyoKXjH/agFXSZo5kn5a9sP3VV4V/FDJkRF7JJyGV6nrXioRpw7lTlXiheeqFsUl6y7Ca/30jAvxTWexEDrvnsvqIZX2cW83lHP3Uunwjf5l5Tj0MrhuByPAN3UKeg10Q6Jl4RVJ8HUYzStsTD4K+0a0irmGNCLeNk8nzNuZWXTt0e6AKN6OShMTamJKtiB2P4mhfmAejmNNzn2QNsNZwxcwBz72Z4mG4fID6dcBQWGhA6eufUuBig6Q1mK05KlL3Rmk1Jh2C9/aOvmQSpxSPNtSjDfzGPAz3iATqB4Y/0+cCtTLvLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5fBvUgYukVcBnMStq1mn+7dx5DhBcyuzS53EGYeZRxg=;
 b=sXW5jTp7byG1S9CZAuHhiP5QQZmHX9rz3uhGez0ePHfzVcjCsP1w6jAtugdKcjvpWtkFwjYe8eMi5y1DfUdI3/K+dE/OPqnGKlCxXXmKk2Xm8w7Ih3Rw8JnXsTvnia+QQUIRztSkAH3RghiwW9DesTZzYb0kzw/DpxFvjccwnPW6RtKJDEzRxOIqy2AWO/v4c8fsZq/XWwcrgVpGs38XLOpgJyYWOG+7jMlK4agupYbSLo7MTfaIeaZTFvEjCUSIctokrVDj5SL6dZ4zNgHlDBcVXGUVmgayg1JFQsYXu86lGHjc4QCsx0f4QeOKP4VOMWe/C4dH5mXnEMcdu6O8fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:43 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 05/34] drm/i915/dp_link_caps: Add helper to get iteration
 order for a connector
Date: Wed, 1 Jul 2026 18:31:34 +0300
Message-ID: <20260701153204.4124150-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: 6511ac1e-2501-4c0c-b5c9-08ded785fe39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: VeyKVpDv4PtK2k8HzeNTYFVEeihtafAKeeeDCwzxmSvYWQdpIyBgoAisrp3ZLZU82EjmTmiv4lgiBkGRV8Oyro9Tymp5iMujEM3BygRSb5UG32cNWPukYQu1hgYoZGca8yBYtlDsPhF3a/JCqhEBVz9XkRtQI2o86iTKQkXU009oF94qZdicNfEWv/38uS5XOaBEzGTQLBQW6JjSzleZ63iBZectzZEUMUN0Cxkb4xMavw7DD8bf6tU/CtcWbZRlQVlFntIU54BX6iyzY4urar3LTshCoIncN0GNLltf9+KNMsZj10fwPQ9xXk7Kj6Q2dzgwmRmuJ+NntgkLer9iT8o+B3zsoWJDgT8dig+K0PxsGaSaCWaCGERTL3+uy1gCMKxH/pMcnc6GjWoRgkQSYaHY6l/ZVX2IgsHdLTl9iPt1gHiAH2D5cBz6/KAQR9G1viJtk1zKQ8jhCQEysaEpckWK9go7KOo8vWSnVLJsSLUq7QToq8WZv4ENsA0Fr2NLNIKbsL+M1JDAnnnJQzvhKxXJUKtyIQwnxVQCubkaly5NpMM2t9Jk49Bi3DFq6Ah38X/h7GfuFC9aj4mZj2pS33LCWzf5GhrgyCNmDFKL66uQX4nw/UBw7EYDG+pvPWbUQyBQMG4ccmYi7gvg/PiZTBuXVqAqIusYtLX04DQacI8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qREGy0Qdv9bllqKpY4kRs7onX6+oJrzHuvHfcBGa/Q6lFiuV1IH95WBgOnp4?=
 =?us-ascii?Q?gcsdpqtlJQRRsJE+HKJHOElvwedUoJ5G2QZ4rK6rE7984PqOxyoQB4isJqJO?=
 =?us-ascii?Q?VAGsXBKCyyL169fKoZpOAEczRmuPZwBvvAsHDmuRRju+ja19WcFfU6f75rmT?=
 =?us-ascii?Q?2S4cTjqGZ//Ic1Bxkga/WKDVaKNN0Av3haYlbNfl/yjknrDv1xcaCOXGVszh?=
 =?us-ascii?Q?U5RYnyGrvskEvN636Sumj1/6W/KYMzjq1f6RQrUmaXsy3QPy3Azb9hhmU0SO?=
 =?us-ascii?Q?V2X8x5s9cSh2U7wv5AMP5UbFKBMkft7cRgyoH+rKKV9O5syfAkuBTKxDumci?=
 =?us-ascii?Q?AXz8MMppgXhrGZolDpfIUjT08fP359fnlcVU6zrEQcXwzNmaNNignsEUCERo?=
 =?us-ascii?Q?U636UA5yYT7+FChD+PgkBhblYd2bB8h8f9fI8XfWqQcJf5jEks8gzKiAsNOS?=
 =?us-ascii?Q?hmejUk/lhKhWIWMTX+i6U/XjBZHJTbilFVGB0XWoiUm/Jrg8hiLULSG8jxhH?=
 =?us-ascii?Q?jtjC6GDGzDvsLboHEfn4oaTeGH+JcSVRUZDL3UqBi+I/mdef7H35hxSdwEvE?=
 =?us-ascii?Q?j2BT75dMojYWgD8gSGViPqvjpFYZ4+LpWKy8D0B+ovxnn/1yI9vAJW1ex3IB?=
 =?us-ascii?Q?kuwTybkwWupH0WUM50JVMfjtE8GmQ/oBPNx77kGfpRE5dogYtvcEpwt4ywCl?=
 =?us-ascii?Q?NDb8iQ+8G/LJGsDIsHvKY3dH+RJOojDvN1doc3MGsW6vbdz7X6e2IMaaWkwk?=
 =?us-ascii?Q?sHp9pfYxZigAvuYZO0Sdp0SBxl4NUOTm9yzVBnmANLq8yZcAbL9JWe//oJnn?=
 =?us-ascii?Q?hlXr9IQBbpHGvyIbLZW+WkuAuE1dR/67sgF5+ymW5GNRxb0OwOYfbkydS09T?=
 =?us-ascii?Q?HcGXIkkTBOS4mXCvAX6+847YMsr0r6w6jwAXsnLSnEY5RV7fU6L8ArcZjMn4?=
 =?us-ascii?Q?+LZPZDeRQOlgR0tXOkxDT6Ri6I0Xm+g9Y+Wc/8oKCpbJ4Ruel9AgDckXgiTi?=
 =?us-ascii?Q?wzkF6VZn1IEJOe3Cxdsd5uderATP2r2cehv0BQtOnUOBWedV4u0RHPXfDXuc?=
 =?us-ascii?Q?dRQkrRGQjUHy1d6g8kE/aPUKUytB7y9jlwLBqsFRELHtrEPpa+eof1cHc9tC?=
 =?us-ascii?Q?F6JWIBUW7BNeXkhYxrAvwZYef8vIQnlOufoLM2M5ylzzIGvj3qS0niikK7bC?=
 =?us-ascii?Q?OxLAcVRgfbJCSThH1CKgbfOqqcFJDy0KS2lTx7nSKP3aHeiMuEXIwjbz87AJ?=
 =?us-ascii?Q?VPqAAmj227xXyrcAlUJZQqnea0Zet4kHBjLIOlQxvl1QkoD2Rpz8U/9ep9ik?=
 =?us-ascii?Q?P3aLWc2mZNbvz4wuC/kEAUY7DBx4Mf0FkNkCInmWDife9JlSmowAsFw8mbvl?=
 =?us-ascii?Q?WXQddNrmPf/qS4Kn8q8fKmbVO9OfFngc0ErzM4ZcVqcscthufP9S4I3dFULK?=
 =?us-ascii?Q?AqNST5Hjk2nzaPkjUHaPZwYb0cF1sOKCGNXBMJBVr37RaNPp6FJTCfIES28k?=
 =?us-ascii?Q?AvSIz9c4jVxupSgSW34ExQxmum8Hm3NVnan3OnxEFKf43wisENrgfgleLPR6?=
 =?us-ascii?Q?VngY+IjLdk9OZ1EZzh6TGEV1tmHn15fiEsbHFgDggT4q9T+xt8q25Q9HXpWI?=
 =?us-ascii?Q?mLZtu6EC8RNDD07wq5EK/VsmnNMuZPD01nlX3y0JDIZSJ3k3C7Q5Z9qGGORf?=
 =?us-ascii?Q?E4eBnvvDyqYT86o25KZKNkwVrCn7yKfH0ikXsdJP2mKnksZA36kQtNmC/MME?=
 =?us-ascii?Q?TT4SNyW0pQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: raNS3cpo9B0xtHWhOWeI/6JLMOO6OhSngP4Rgg8V4HT9KRbCr4skAl1UrEYYkj2K8pV1kFePQLC8t7u9x0fiZbebdmG1Ih7qAhHA+HwP0I0DwBKNe9DrRmQsdHvgLw0WyjnPf1LifaF2XClFJb2HvWSvBWu1Grn2LljD6RtNt4uiQWfxstV/3LDFJ4NB4jJroB+/piUih5QBrZRgRgEzO+z4upNWxrhjDkA7BIoXflFj2gwODwFwncyXBUHZLk7b0rKm66xS8xUE649R4792EeGBkmTCVCwNi9w+QLBk/TBJi7pQRbs9tnUaZCt8+VTyX+EShc95LMrxFznDLxeq8g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6511ac1e-2501-4c0c-b5c9-08ded785fe39
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:43.1082 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LE5XgvLmCjWRPF3hm0FbSMp6iVkFUiRWvKE/Xczwr6cGVNNiPzB2w7X5A1IClHJAUQrirPzVRQIHe1xwvrsBxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3CCF26EF453

Add helper to select the link configuration iteration order for a
connector during state computation and fallback selection. This keeps
the connector-specific ordering policy in the link caps module.

v2: Add helper to get the order for fallback selection as well.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 50 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 ++
 2 files changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index d46b9d505a847..36895dd9d6c81 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -160,6 +160,56 @@ static struct intel_dp_link_caps_order bw_desc_config_order(void)
 	return order;
 }
 
+static enum intel_dp_link_caps_order_key
+connector_compute_order_key(bool is_mst)
+{
+	if (is_mst)
+		return INTEL_DP_LINK_CAPS_ORDER_KEY_BW;
+	else
+		return INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE;
+}
+
+static enum intel_dp_link_caps_order_key
+connector_fallback_order_key(bool is_mst)
+{
+	if (is_mst)
+		return INTEL_DP_LINK_CAPS_ORDER_KEY_BW;
+	else
+		return INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE;
+}
+
+static enum intel_dp_link_caps_order_direction
+connector_compute_order_dir(bool is_mst, bool use_max_params)
+{
+	if (is_mst || use_max_params)
+		return INTEL_DP_LINK_CAPS_ORDER_DIR_DESC;
+	else
+		return INTEL_DP_LINK_CAPS_ORDER_DIR_ASC;
+}
+
+struct intel_dp_link_caps_order
+intel_dp_link_caps_connector_compute_order(struct intel_connector *connector)
+{
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps_order order = {
+		.key = connector_compute_order_key(connector->mst.dp),
+		.dir = connector_compute_order_dir(connector->mst.dp, intel_dp->use_max_params)
+	};
+
+	return order;
+}
+
+struct intel_dp_link_caps_order
+intel_dp_link_caps_connector_fallback_order(bool is_mst)
+{
+	struct intel_dp_link_caps_order order = {
+		.key = connector_fallback_order_key(is_mst),
+		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
+	};
+
+	return order;
+}
+
 /* Get length of common rates array potentially limited by max_rate. */
 int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				   int max_rate)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 5ea87f112c13a..79aca74ad9eee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -113,6 +113,11 @@ void intel_dp_link_caps_iter_start(struct intel_dp_link_caps_iter *iter,
 
 void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter);
 
+struct intel_dp_link_caps_order
+intel_dp_link_caps_connector_compute_order(struct intel_connector *connector);
+struct intel_dp_link_caps_order
+intel_dp_link_caps_connector_fallback_order(bool is_mst);
+
 int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
-- 
2.49.1

