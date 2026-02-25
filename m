Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDvvNoQnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DFB19AEB1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1B3910E7F1;
	Wed, 25 Feb 2026 16:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ISgrb1oC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A334D10E7F1;
 Wed, 25 Feb 2026 16:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038015; x=1803574015;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ONm/n39LcYiVsYdhl35f+xaFDmoCeRKxLZQdqkz1PjQ=;
 b=ISgrb1oCS7v8FbBom5FRS3UQUX9NCcwmD/oxpJHBomn7bKfuv4kaE0yC
 W9r30ZzJhmLUE0eDf/ImMURdNrKyqykFrmq/u1vJarmQGAp6MBPsMwOQj
 q4NmCM4AfrGi7pmFwC0PnHE12O6rv9tcNJCPcY5PBo4ymqLZLs8m4lcAC
 2pD8AtwS8I2Utoh7CZ9M50MfIVEznnL9yqO4HaEUNWJHI165/U1DPmyGf
 Q0zShhwftMFFa6HkmpF4z7DtC7uAv9hZqVGngq57nPlHwl3q6ApDUuYKD
 57iDq06wmyJ7nIkH0CRrmrvhgngR4cIVdDzzQ/8yrF1qn1ia2ecd3l3qh Q==;
X-CSE-ConnectionGUID: yllizSCmRp2bhFiECLcvUQ==
X-CSE-MsgGUID: gtY9CZuCQ6aIOi9C5K7N8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83707118"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83707118"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:55 -0800
X-CSE-ConnectionGUID: iM//eDtxTm+aCeoYb6Yy2g==
X-CSE-MsgGUID: /HaZvWsTQ5+cfmuaHBpEbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216173047"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:55 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:54 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:54 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.8) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VyUX7UGJIIkbYNghz9itcLglJvgcMeMYbIKkWwEIo2rIIRIjdL48OIyxBw7p+KhA37jFQSruWUv1SXjWUk4RngLhVzbL9pfsMiRRzZ7PCY4e4DUAUhOXvi9ysn6FUBpMGbNsyUavbQOivvmF/m2S/Rxc5LildPr5Uhu2BK/WAUZ8rR5YK0DCv1cnHY0Yc+i46j7ChmOhasEZauab+DSjbZG3KcBTG4DxSU+aMidoe9sK+giTQOf2cgvQx01Ke7M98+ZnukLyf9CpsecS2GXgbZcOqDB0Tg33kbpQxcHwG7SwzQ5Fqx9X4hMqcL8Bda5qPbL7V7iRzyYJdHvcoVRwmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+7rF5d2B7p3WYRdrBHMpYNsAe8nJLCGgXOXAUiZsFw=;
 b=daBcg2+NqYmpXghYkjiN9B0kAgmasDcwwWTc1RarJ1mHvIjZ/OxaqiS5MaFQhv9LWdtbx56urGSeJHGX0hD+tMJFnrNnq/mdlFqrp/ZpkhLCyMf7sqHNrZY2yhnHXKXW67WXyTyOt5WKu2qk49V8/PZJhMyUkjVKdcoxIBngfe1qbJo0x0+5kwxqtOXowR0dJLmzMOrmP6HaacmAJ4SBKD9/jC1i7PkrZfz0VUdBYQ8AeGExs0F9TbkmEutWYEEYDJKVIk+bImxdlvgQV/J3GwQiy0ANeA+ei55KA5CLhGknegR+6K9skPozIbS6gkAEjRKGcq5a6r94m3c3SiD9xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:52 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:52 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 10/20] drm/i915/dp: Fix the link service IRQ DPCD_REV check
Date: Wed, 25 Feb 2026 18:46:08 +0200
Message-ID: <20260225164618.1261368-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: 1365f0b8-19cc-4adb-1d95-08de748d79f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: MR0JakmeVJPrCXBVa8tp6/AQVaO4yNGH6IKc8mXl21FSGBV8FFU3XgFLJ4ZdfG8f0S40PyBhBl9JOUyzibXuIbl2RcfWOoeMLMJohTx+DZf9p+svaUGazCX1Hj/in0IYibhCPFU3dIrYy9gqzPtbmkoYqVgCTP+X0S8PpWfF3Ppp5XOvxTV3rQjhuk1p1icCATMoaichwnnLilPK+8AP78N4bApOEnsRVbppxgvSQbM2qUhqeiy2EbAUERdyK0dF+96lft8cTIyO/GxDjv1bG4mx/MlY0f869NwgY9mLrjQ86oKkh4oEn2coJsXmsabWpJf9VmWIshLb72qYBciUMZKrnlglamwmxoBisQ27cwARsy6U+ARBaph6i0TnyNn8UzL4R9O8Cq/mQqqtCsNbhErSF9lO8/xIxyyvyQ0vVqETE4lOeFHOoruhtzJcR+pBWbKNGPrRbcEj24z5jjD+Vjexv7T9wDFJZZg3NvSDNbWifYSKqNQSFIGLd6NBSwTqxJE36rh4UDc4ADA4nZlt7iNLA4w+KiypNFGIjLDJt6QhvdopY+vfMC2WzPXwphryDBwJs7UxSAbyvoaCrtFW3n1owtUM2iMWoOLNbAsKpdsFTKunkq0qaFi3vxX9DrHGNWHvw1Zfsq7lpK3W1HhArO1qAcsucXDEKQtkMciISlJLPSXpnbSn649PHWqTbOveVV37yC1ScJMFazc2bycUY7bIbuenF5YGIElpxUKCDV4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tWxDnWKKyHJZfKSGUtS4XsWJbbG8PnwlwlOe1IqBxDrrOGKuSaSgJKoFKTGo?=
 =?us-ascii?Q?6rao0qyU+gDuFaslQr1CvsqmawA0JY0NnvOYgZas4Ykne/TMiHq2HPfol+79?=
 =?us-ascii?Q?Vlcnnlm0rinI76OX0SOtoWr7pEid3Gw4Q+sIGXBfOJEIt+4og1lZGVklq2NM?=
 =?us-ascii?Q?JNKju9Z2N/qCovFlgxicPIaPTFKWzKTIQuOr6o6E9ACRZA0yPuZY0UVgsb7K?=
 =?us-ascii?Q?jDrDUSg/aM/HM9Npiwrd3b2HursdGfEMYPa2IUC9HzmrGu5P+e3wO6kN6U2u?=
 =?us-ascii?Q?wbxK63Zp8zOC0PePYTIfBbSp/pqHpqGJCdpLF+VogdWLbqj+mf+uyY5X3+fh?=
 =?us-ascii?Q?0z+PNkTOBdGE5G9CEruOKc2VeW7rJ0a1ws1egl5DhTkenvLmhcPvpEp2WGKp?=
 =?us-ascii?Q?z/j6Mz4ItDsNIWvJjomOcyLwkUe7fggv9qwUbrcV7YNW/2G/28rQ7344Du0o?=
 =?us-ascii?Q?Ao54qyFqwBaFGQap596y4ECJnquNYXTob1+XI6T3cZ4qiXxucWKk5bagVhpg?=
 =?us-ascii?Q?65uxFonzi7cTMxFGNdpap5juBzhiz9BdA19DJ28L0qON/cPW3OxZCywvmS3r?=
 =?us-ascii?Q?ucxHE+klJKRSZFTqFTOdPTu8KUpfCVmeUidUox7dcUmopigB18311uu3qQuD?=
 =?us-ascii?Q?/9G4h2eDZPS2RlgjlEeCqnFADdWYh9af4awatTnUybFLlmWO0iK/5Fh5zpic?=
 =?us-ascii?Q?xEPuEqRBFVZd4HGxYEMHbKFjxJ1w9xxnXLGMBMvDKUwu18nDU4ifhXM8uyoy?=
 =?us-ascii?Q?TsIJNIg8QJw9c3dRt2cFmFwjBsgkupdgCTgSWXtxzFWfQLvlGYYWwAwh7R/j?=
 =?us-ascii?Q?hqEEKZwgTviX5Cw16rT2VLKcRdEMjBrRl6BdyWAF8g4s4IZWtNL3cj4RsFH/?=
 =?us-ascii?Q?i9yvNi1cBzOE1j0wujer4Opzp+sXKlv5rgixxMpWzr16BB6xh9VZLLYEHT0H?=
 =?us-ascii?Q?zoEUR1YzYSoNoHnbMMvuiS+vjSdFYxPhEeNgwrM/KHXt/w8bA4L8ml3XW9FY?=
 =?us-ascii?Q?H0cZP931ONXUWdhMD4XLa55e5R+hhOGQCgDvmjzWZyOl/rZSciDlE2lR0A78?=
 =?us-ascii?Q?KEbshHOf4yamt4BKhxZ3lQFncCXwsttBB5+QGm7of199qqPVA5i8N36lRn5K?=
 =?us-ascii?Q?gjLykodmzXRYVRsLLDEHPhncHlWXdP9lDknQt5mtedwDWc7AsfPa/KMncxpx?=
 =?us-ascii?Q?JgfrtLFYrnQvMK++iC/89UJu5NvchVpQKouDIKgHK8LEegeLrxJgW4q2xzbi?=
 =?us-ascii?Q?PYhq9omjPTHMNwM53SgwgQW7gX2bmoyweA5OL4Y7BhFTkwJLQJM+2EiF3c+1?=
 =?us-ascii?Q?RLK3tOETHuTwJ4YaaaN5auWEvDRCgwvR1AnVNw2HTed0HlQatqVuG0ZHFoXr?=
 =?us-ascii?Q?s0AlSqmZr37nLdUWERnnjBdQPpGHjr/wZhHDdgRecXEJqB+Z1vTH5jmnQSSr?=
 =?us-ascii?Q?yZxq2buj8eiBySph80iUU4DDUfSLFY753mEmwKf1VfGF2GoUKjp0U71AU6Qo?=
 =?us-ascii?Q?EK8E3nwjOjtuOWrqDIxl0p1kBgqmuNy2DOXGKAUZf7COZYjm3wddPLWwl6L6?=
 =?us-ascii?Q?cdFIfs9Mp/jK+53I3JiTM3NmrXlaVo91wnYriL3U6/RgZnoRHCKJqXvVA1su?=
 =?us-ascii?Q?0ErSneijPpf1xtBxNPm988GN1NWRazE7pgLx8YauEtfsXiT9NU/1NNEXd8ix?=
 =?us-ascii?Q?de13QUIZaU3y/nEfGeRD4unFzvUTc+uo0FWw1tgxYEvoNcm8hJFHi0hKrgz2?=
 =?us-ascii?Q?iKMeesuL7Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1365f0b8-19cc-4adb-1d95-08de748d79f9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:52.2398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FQkRLsDIz9veRaCbcrECPM1fv5vqReTfpcmirW+xW3HNwFMtxcVvXRHh/zmlRAJwnFSIpmIz4AkzONGd+kYz0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 85DFB19AEB1
X-Rspamd-Action: no action

The DP_LINK_SERVICE_IRQ_VECTOR_ESI0 DPCD register is supported only
since DPCD REV 1.2, so fix the revision check accordingly.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 88be5a03af912..9feda949570ec 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5799,7 +5799,7 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 	bool reprobe_needed = false;
 	u8 val;
 
-	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
 		return false;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-- 
2.49.1

