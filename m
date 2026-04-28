Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGhPLh6u8GkgXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5A64854FA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9558610EC36;
	Tue, 28 Apr 2026 12:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lv3plXhg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D41810EC36;
 Tue, 28 Apr 2026 12:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380891; x=1808916891;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Vt3Wt/Nm8qRIEZmBhVDRMpqB9xgHHVxTN+FQQBBodsQ=;
 b=lv3plXhgYoEHqfVQ8u6ZmXZjiHM5Le9zQGQM8/EGWZZ2gKbaOQmC2qy2
 qgs+bsSSax/UDw+yAeh1tnczmneFLgg5sO3StnbTg5yblrXaA2f8wIOKu
 siFVt/JxoabBmxf23/ckBRshwYmNASa0leHPc9kGBvbJ6sS470I9vJu0X
 z4qe2YUGYuHF6X0qapLo2Ofde+KsMgvjgBjP9TaiSEr/00adhRdFoFVDz
 wi7C4uTtFvePco3eLRVFOrUSpC3VMDd56SsMt8IA9gbktZCFXh8s0aC8x
 PGXZ1z1ryekp38lt6i5pL4kHPdNP9WBNPoO1RlQVf0at167Y7ODkgY4Jf w==;
X-CSE-ConnectionGUID: Mvt+rosYSxCqfrjGI5hPZw==
X-CSE-MsgGUID: otpyW3usR+eoTVcMKOB1Hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945342"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945342"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:48 -0700
X-CSE-ConnectionGUID: +vJMSQoWTOarENOaW01DBw==
X-CSE-MsgGUID: 04eQIqXvRwGuN0k3J3cnOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377788"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:46 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.57) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QItxHn9unnNlg9t0dPT8rKvXbRAB10UGy2bMIQRDl5UDrhzJfr5kBL0hUxA3+dkIPHCDQY7tgujT4kN0+SRpUbB8CuLzP+fxP7Zt2HfaKsB8UWdoSEGxZCd3I0NeGgjTOFLMCNo5H6eoNIJQcu6xikXsB6dh379i2vLAgLq0jF1XosdPZB1newd8YMo/PzlHofjsZVyxM9MR//IqssLX1lJFfHpFmH1D9f+xmw7q+RYRELwLqXOsx24ZLvB5j5ms4Re09bIXsX+T3pUSR1qzfraiN0FAk4o+NbgiGewLElzdFmiXU3sb/7bqAAcKQu8uMWaWBfjsXx58gGlRA9NTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yOyuVMrPaBJQxgSq9Y1DqmNFIM+iNCKBigT345X2sUk=;
 b=gJWmACW/S4MPCuwOYOlseEQV93B+g8tt5LkKiRXyZTHrUUJxm0o8y09jkKfVIJimxIpVWuSAbvZilTSpftvKoJhRPChASa8qxC8uskRQvpEXDJplKsduTb/ZAFGQoTHONOA/mMhos8LMV6tFvCF2RqsKGyBna5J59CxGOFkpOH246s9xyO9bwqVdJUqvF/FmRKrVE9hQZ8pxNYaPk0/HGqToRtT+qXVwVVi0FJdmildEW+SHlP8RcoJT3YvDK10IMsz67EBCVOWr/rvICpjvOJH3juN+IZhIPI0tXhxW93qtL7dKRs8HsijNxi/Wtqo6RRTG/ORVRI9N15Ed5YjJGg==
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
 12:54:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 068/108] drm/i915/dp_link_caps: Factor out a helper to look up
 a config table rate
Date: Tue, 28 Apr 2026 15:51:49 +0300
Message-ID: <20260428125233.1664668-69-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e0595ad2-8670-4e29-31be-08dea5254a86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: vuyN5Ncobl/6N2ZSGgEZeYyB7243ogKzdacgTFCE5UJeyZwH4ZmzWy7vjVwImvGGYNOszLJ3felDlcH96+PUFIBHKzMNFsv1est5qrK0T49b0e8VgZzV3x+Kj5/ZtYhTpoT8JSxsrm9SRI1Twcfnd6Q6gD0UwChM9DHYh5aGO3vYwGBVIY5AKdGLLb8yib+OtkT2GNKAy85dYXArQ0OgzLy61ERK/yQEDUqjzhuHjg1aeLUNLpfy4membAaNDi/4hWCAQ+BEbAqQtg0zyUooLFjOT9B3KrxT/kkS5Np4IzkDRaOxmBDfv4VPE/NUJMAnHGr6S9dACRJzIn5wsKN31UtvnTBMuWN7iL+4ptNOEP9yAOshDSHVq6kLGMeBiPwrodYfzPJjjbSwy51JI0j/j0OO6FZKLTXby/WZ+MOirGmyE7DS1zCIOEXfYc5YjjQddrc0qz3iZd7apdW6v4kcFTWADsvrmyglk0/SztDUsnEITh4mLfe1ZWQ0yXDraAdW8oqwdR8nbEsaXkFenhTIhp5U0FqniIhiK0Von13aI9OA/V27uACRjVYQfouK+9GMvpwmcYsNn6IZyYD0MhuW/JH7pMVsC2OgXkaF6fAgAqt61fOZQI2zX7d2hTMdlw+lBgMjE7YvvmI4XekR/b7xxe0Pf0o8CSSn8vqc11gxU5cwpISErYE28VRo0vDCR4LnBJuiyKPz0BO14JVI0fmDfHQW33dYHliK6Ji+FbOjsEE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KDk0UvTzFxAmLkZQF+2SVwV3uZ/lhfJG23GJyC7VE2DX9E4fi+da9StPTRr4?=
 =?us-ascii?Q?WPpXyTFcT2cYu/q5T+VSChRGx982/NfwEf5+ZRQ0Y7BMihyMZtlaLKKu8zOC?=
 =?us-ascii?Q?XBAqDRavuOWvXsBr8FatvnRydOlA9UKIrjBSC0x+/Z/raeQJsIynvVfQTCqN?=
 =?us-ascii?Q?3xQfEMCbkx32iu1H6yH/Qb07MfU4zPHKT6B4N30CpAjrlmz66rqwd5lXOu3s?=
 =?us-ascii?Q?T7uPm8jPtYO53LGLyO2cu/L1Y73IdeEFD3FNOrwx5kGCa59XlHqIRgaiFSFB?=
 =?us-ascii?Q?1r9jSA2OKozSoD2kHvgAUAy/GDjFHEgllOv9x4EoE6L0pSvHfXYUvNlXXGVR?=
 =?us-ascii?Q?IUnAg+QECUURm9AC3AzfhUzGUe17vEG/H3WwKFSdwk5uqZZP5VPTahFrsFiA?=
 =?us-ascii?Q?x01PXRkPA0rXRePh44vDgewtBape6ikIWWKgAXl50XGDYaqg8yeJftoB5919?=
 =?us-ascii?Q?mpcsGOKE3/XhJR7cgJz9v3CdTROuHoXdGa6eWKr6gqowvpJeOPK62ip5urkz?=
 =?us-ascii?Q?H8twPSDkMwcSRoQbBO12FHPiYcvFotkJGBFFsAdFS/u/egOaF+1bW6MVzMhO?=
 =?us-ascii?Q?bi/NTPJQHqHNHKI4shpEyEMeVsFVQsouGFDHOF1mmY18NWkbEot36skthGaG?=
 =?us-ascii?Q?0GveN5xnSuq8YoePpn7XrasF5GhApRYjsgwNkZJXiGnEOn1bSJBaOVCgFfl6?=
 =?us-ascii?Q?+oMn27hZF5FPHD70FYrMBtXXC8B2JIDJ+tqZcD1Ey/3aIMcOJ1TZ664tuVl7?=
 =?us-ascii?Q?THSmJkQwJxqUPNd65ylE6UhvKGNvyik76nHz2QxaoH5gDY6pKC3jKx3GD3FN?=
 =?us-ascii?Q?C2ZfWkZEp9lXxNrpW/4eHQ26l0UhOYMCbUKiogRhE/G/SmrsUHq+XXB3SiFs?=
 =?us-ascii?Q?nlgDvKgQGrAluCQZlqpohpP57J/dRqOs7d/7UWary3jUn+Ut78oPHICB3Ejj?=
 =?us-ascii?Q?Ztn0t4LfiEAOWl6YOPDX1NXPGZKjCIyIfKNi0J6HRCaks/aixohjtfRDbtE0?=
 =?us-ascii?Q?zAZMCQNcGe8MFOqtXV95lEk2H942jsmqmyRt1z65RD1fDUbOUHRSnYJrXIhM?=
 =?us-ascii?Q?/QzLnLwKZspLxIur0WxTa0OoPxqxnrgWavwsL4jKVDz4dPt4J53TZTRaNQ5w?=
 =?us-ascii?Q?sfcFv9TpkuBMNr00wsOrvpyTz9p+pPmHxuNc3J3PKSohG/mwBUZKRm/H1WTX?=
 =?us-ascii?Q?aan/9XP3KX7u+tFP0nrRag4QdegbMFuswOrSioseG7LF2Ucp0os3p2M6JguU?=
 =?us-ascii?Q?hmfd4U8AzjbIPk2ko/UjWJFaiu8AzyxvXB6hhcKHYDzxWzr8iLyZaHRbgscM?=
 =?us-ascii?Q?Fsza4EYSp+qHsHbGnjyNoWrmLJUC99wS1S5Lbw7qIHDw1dpv5yvlDN6fAxf8?=
 =?us-ascii?Q?C0JCCa+110JZsUAfW3tedf2o3RpNlahiT1MiuGV4EQo7zaqcDevbbTa41TMz?=
 =?us-ascii?Q?0BrdG7NmS9WzlpfF8/hT8XXgwbZQHvOgLQQSfj5ooAN57xYDHHrHdKPoqz6o?=
 =?us-ascii?Q?mNN0l/BB5xyyNEu9K6ypyx3N5iZ6Pr+4wUqEVpYS8vzKUtXWG0iooAKjdjFU?=
 =?us-ascii?Q?bEu2FeczxxT6oGQdQa/Ie9F1fu5RYPEY3+B7uR4Gg2/ne0BswqAPYNtG+2FI?=
 =?us-ascii?Q?ToIdKBX1tpdBFwStM+DACUSfpCFCS3wnJZi8x2BjvUS+n6vjqfoYF4MoOGLt?=
 =?us-ascii?Q?BxmfK99J3e+g/wFhMfzvEGUV7Ip5sUVQZPRWuKw067VwHtGgRDny1Jvg83Yo?=
 =?us-ascii?Q?KgNrJLasHg=3D=3D?=
X-Exchange-RoutingPolicyChecked: MeOC2nVyd8HmiJCpDDIB4jfRVGfZJMbzLcUeDPImiNHZMl0/9jeSTmmVOCE7TFS89w5ovQGz69hkloPuuSxpJm7a4eIb5lUZ+68qdSWRlVdx6Sn6dIAZzDGNh9JQdLxnE2FEurTZewYl42DCs8NxRj5suOVTn+24g5wOGlKoD5+G9nurEs+SJCJv8qwu7Lyji+k6BrGVRrNbflc9oMJqBrSGjAnnt3zUmgyaGadwhRMG1jbX9dtHogU1RczdNDb5GR7ZeuURdhues0R0QVwgbrtecsiQ1lG28uVQWHgg3f7R8Xki+62FsSk4pxDv+6HxuPCcj4o80UFPH0F1aMDS3g==
X-MS-Exchange-CrossTenant-Network-Message-Id: e0595ad2-8670-4e29-31be-08dea5254a86
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:31.8876 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W/vLAOwtp7L8+HtHHFMh3f32D2f2OfTn3y7uTz59LC8vn8vYhBsYvZwZ1NvWeV5/33n0IvF6SLEKIZj8eoEB0A==
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
X-Rspamd-Queue-Id: 6E5A64854FA
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

Factor out a helper looking up a supported link rate from a config
table, used by a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c   | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 81c36e3326bb9..d5456c24714f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -139,6 +139,14 @@ struct intel_dp_link_caps {
 	struct intel_dp_link_config max_limits;
 };
 
+static int lookup_rate(const struct intel_dp_link_caps_config_table *table, int index)
+{
+	if (WARN_ON(index < 0 || index >= table->num_rates))
+		return 162000;
+
+	return table->rates[index];
+}
+
 /* Get length of common rates array potentially limited by max_rate. */
 static int intel_dp_link_caps_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 						    int max_rate)
@@ -162,14 +170,7 @@ static int intel_dp_link_caps_common_len_rate_limit(struct intel_dp_link_caps *l
  */
 int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= link_caps->config_table.num_rates))
-		return 162000;
-
-	return link_caps->config_table.rates[index];
+	return lookup_rate(&link_caps->config_table, index);
 }
 
 /**
-- 
2.49.1

