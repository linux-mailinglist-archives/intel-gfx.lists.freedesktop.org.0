Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6AIZKUau8GnrXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E984855A5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4A310EC9F;
	Tue, 28 Apr 2026 12:55:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HTml3h3b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0FC310EC8A;
 Tue, 28 Apr 2026 12:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380927; x=1808916927;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=LPXOXAaBWf9rJfeRhdnrzpf1ZbmirkK/rjsteEI7v4o=;
 b=HTml3h3b7S12VEnuyTXQovSEjxrItTc2UxavXD/bF+DLlC1gdFTdWDMp
 LnQ0uenKC6N1kZuZGBbZ8eZ1Jf5JJ6ZD69Tsn7qD9XjGAC6Z5wqnVFwu9
 e3bl6o+THRqqthnHKxo18AXjn7PGRJv6OZMOHj/ToKoqQHNCjDP/Gyqu1
 tr7UGUPDt4wn7BcA9pIYd2KU/B6Tz52Dt23np/owbzdAXp7mXRFtOcP0K
 MhmGIywELwI6Q0PNickVauwk0KNrUgP8VJJcli6Wgd5CAbUTiKCC9Kse5
 P3S4CNgZNDOM1ka/dkmjlzMU/SYlGBPJnBhEUWatan07yma4WxEEMTt3d Q==;
X-CSE-ConnectionGUID: gAOAzmhIQGar52sqGEoOOA==
X-CSE-MsgGUID: 4aIeL90ORXmhiG6Vw6ni2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318779"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318779"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:26 -0700
X-CSE-ConnectionGUID: rowLdaHNRXmwMwhsj0SDiA==
X-CSE-MsgGUID: AJ1WBwxsRZi+NDHMAMV1IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818245"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:25 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FY36fZSxypoj5fyR9EXtjpAW/ZXY5g/YzL6N3AibwmztmUNb1eyqef/xkM8Lv0BbTi+G+mvODJZqo4ZOV0o+TRu7N7DT+iYjADXD14sx9u+ASqhJKNedqBKhHwKVsCi9zjXWMWJYYdPxYfwqeUNzemflyqsoLy2MpQW5+BkwkHG/IMgThoWR77VKwjKzoa4d5IbgIdKnio+j6jSlDykBdvbNC+HsKl/j0hjflqHB8F7HGuQkjPxqJcM8BMMVAg9+f+WwxtYQyrapCwGUfzqbBY2L8TikkSrIDD+yP5SM38V77X3+XcUMW1TA8X23xpwaqY66mKSHI+faR5PUaTSjrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JNNax5Vk+CmhcVibQCVuePctguva6Szellxi4qLaT2A=;
 b=nQfloF6Mk6FP96PnTvOAoAsTssh6LZoXmmqd7eiOvL5XuMV10H4YQE0dvTauWd4km3T1ImVj9gxl0DKPf4EuZrARQyfqEfD7rTRlZBgBdTJmHecW75AQYx23caUzyhr6YWtyeRT/kG2DqRsVJZtVEK3853XZalF1xKZTzF5+qYk8ucUIZ3YrhfnZ5ntZlqIkrH0djh6KsecPUi7hhDjj97gFAR0rySoHARdPvX5eDjdjeCv4FGDAzQPQe5CpHjU2YPyK8KMiBu1+1SN8LJEV69eCueh5LGRIp1wEtSCtDt50FWeRhlTvmcOalSab+xn5CQfLfRBnEPa72jI/TkYFJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 090/108] drm/i915/dp: Add a mask of valid configurations for
 modeset computation
Date: Tue, 28 Apr 2026 15:52:11 +0300
Message-ID: <20260428125233.1664668-91-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 95764707-78ed-4103-6ddb-08dea5256028
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: A8x8uniiP6PVgVFegk1VB40C1Wp/xF/YGAZzvVKiLh9MhjQbJFFtbr7HpYlusmDdKiA1ciwiQufAtWtWe0/3WnQMoGwXJbwEQZPLaJNekcZ/8GGZwCUHoZ9L3f9CoP8b3s4xkGGIALqcKuH/udEsdOwd0Mk7zbsBYZtXviaz6nHGL++Z661g23SfBx6kSjkYxEgQCWzStK8IR1365VJgJ/jxoTjVWVqmRp0VXDFNMw7LFIVvkbPD7Bb3KsTSQ46f9EflGlvs8EJ71zzSMF713kiIPZIbxnfqAMKucRiw5ilAfTMvRcclNHdhYioBj+xSUGnFTMc1kAsCmeSEdi0tmStJW2jmxctanMLuQq5BWRF+7W0b3XIiqX9p0H8kpsOrkvUzbHE0zzWWCOkVag3UT0uIR30A4TeSa4fGaS03XKnh5HKpRCvs9z4r/0njssxI8Oum0d9tGEnZU+qrQLUVdcaD6QbWnsN4Treo9byf/DtzXbeQsSZXF+cJBFecwkiBxYZrplJFmkphwoaE/D9VtHwjNL2O+DMu4/Mv8WuK45Jjc4tmzAXpw3b6Ginex737g4S3I59nlMZSYVgY/g4vjFaCgGi2QErNT8ho+h5bY92O9/sGILWFbHnKgSgdjX8ArwW7SpAELOQDrCs8Ab3VCfIFTojayZfrd2BowgvetCQu9jW66UZHONXzWij5bTdH4Z4P94dKfKcHboalMc4Vs03CZbEYTR/qqGNNqZ9lVHo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5dPbgfJZlHeajr+SNLu9Rj07S1xzHlsqN2P9FQVludzfI6FdavB+r7gzPLMB?=
 =?us-ascii?Q?V8C1Su8xUKFZlllMjQvMY59U6Qex3AplFubl1Z1jsxfQyexhL/FK/0SMJpp8?=
 =?us-ascii?Q?G/3FKqDzl/2S23LiKIlDxkMpvkPwQ4ofoNpajacq35jrzcUwypo55+fQS3MJ?=
 =?us-ascii?Q?gcgiZ335Dxjc2m26geTORqn+MyVy35+o2mpik5pc8P9v2IJimBtstQfdPhRa?=
 =?us-ascii?Q?lMwSp1P7sXzhdkDOP8EDRZIknTS6h5HYh/Att03HfeP6S4czEUxlLRNtX6Xx?=
 =?us-ascii?Q?J3uf/jKlwiyHUyJcSxluKZdOtRYv4bIIKb0o92X2W22ByLPLYwsswRKII8x+?=
 =?us-ascii?Q?UylKyi6KS/GtGZqqAchBlJlBjvSgMwm2g7ygsunX309LxmOEEgAu8eSLtYCk?=
 =?us-ascii?Q?aaF/DrJB4SmF1yAO0AsmsPVDMWa3zZgHk6DlEXguO8eCZ+u7DhrugqGlgETn?=
 =?us-ascii?Q?g4ve34GfTY2DbfCiudaXyxkJxdlPhcpmLcbgAOH5Bidq7zmb9AyqOi/gD58D?=
 =?us-ascii?Q?irEdWDKqay+GlCS10k0dYDerSjYE6aYdlNdHWF8AcSMW71ezOnmCUQh1kv8X?=
 =?us-ascii?Q?iwlbKcWQut869qT/kpG9I0Fah8TFBs0O4tzgwHZecUdIDLv6R4tUT5viBlu9?=
 =?us-ascii?Q?VwN2V5ySRLqqGW2mAg/lDGaOq6lkm1YQVv3yWeAiodFBSk8HEgwMNCmrJyJ/?=
 =?us-ascii?Q?ISIf7mMhGmvbB0HSAFg/DVmAMEb76J3RFuyvIDxpNVVF4k+TuA2049pu82Xe?=
 =?us-ascii?Q?QGP2RcmmcoXRbqJ6CUygDpsKH7lS8q7xl4HEP3tY85M6R3shyzdXbcims1Fk?=
 =?us-ascii?Q?ZARIOmtPNVEDlLVZJ3bb0Pnie/BsIyPRBJ84PrPuCtP00gySYKBCc0xv0ab9?=
 =?us-ascii?Q?wYVbL93A4tPUWA33yYvjdmN9/0G7Vqt8Q7byo14Pkhf7VHitZRneQ/hddDt5?=
 =?us-ascii?Q?FeIH+2meQzQR40LWt36xWdADubInYx0QOVwOg3bMrs6lK/oYgd7eJlf0R9uE?=
 =?us-ascii?Q?2mS4k9kvWLDsAl/KOpxAyUbX5PjPzriIqzQBhige3ez0xiiol6xQhBGjzpkf?=
 =?us-ascii?Q?NLeQYxOjIKzeYjT6SAHXd9rbG+oLwrcdh5rxmm00U0FuJQNh2MU0dkRxEDUs?=
 =?us-ascii?Q?etDY+rCd6GeplKhx7d5ZXnn1ZOn/EsSLW6ns/fDzTv5B70xnSsWDTEkeMYws?=
 =?us-ascii?Q?RGnvT/cia8fOQkFg+cVdGNInhhsHbyGnuhEtSkszSbEgfxCWYCix+gqAYrBV?=
 =?us-ascii?Q?3wy+NloGm/6zLtXaBeC91iaxA4apbXBQAg3d9aXaK52jmNuvcwDCCgY77jao?=
 =?us-ascii?Q?A/bLpeWwrHuA6hxPUW7oiKwsON6qOm/EmNOJw5GqKjTyPIJ83i/hP0Al5hJC?=
 =?us-ascii?Q?qCeRlW71WkCeM9iXUG2yD6pR9sZkGzIHZiUKseq0iCYAVDzJuw82mFPaedA9?=
 =?us-ascii?Q?+O0lOZIsRftUZrt56K25i2+usGhslXngoEi3woUKEJkO5Vb5NsQy8PfIiFVG?=
 =?us-ascii?Q?e7cFn7hcT6lAZlvZdo3ulGo8O7IJVnGM6GggvXWF8NqL4JM4FlFj4pgxy7Vd?=
 =?us-ascii?Q?CQ3Di7YCm9X0CPGI6MaIsDz8LmEMgzMqWOvtw54JE4rZdgKyPi7C8rvsTHuD?=
 =?us-ascii?Q?d//5mOQJ9cVaiIIqjQ1675l2+Z76yL+8z5PzEhcI5xSMnjWoIfQn6tixWCYd?=
 =?us-ascii?Q?oqdKbHJmDPpLvxadHNYcmOO2zclb1TY3wotnLaf9WDPPTdlYB8onWG7Srifw?=
 =?us-ascii?Q?z36WrPi+3Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: Kz5woAlzI5D8uhbGnkORog+kwH3DFl6mpfzLGLDluFWSHB1/PY4voVt2FDv2Q39Kea1KdZc1GV6dv43FI4ZbAEbx+PylOkF86OdLqu+izTMFkhzq8Zsb+Cl0UA9w6ziSwJltUJjuBvgXB6TLXc6IUMrA90JmPndXxwl4p8LHX9yURdk04d6NvBQU2Iq7QdbGCOkbTVCPScMrliJySPsUgpC89MPBxbs3sGRz9CxtNdXxCr/QTDqjCDSBWZbF9Tgi7eUnDZpd3ELctE59nYY86pPL1bjDLnf4E8g16CcaSn6bJxB4zWf29/pPTvvSTwn6owPwTqXOkodCG9s2m8jj6w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 95764707-78ed-4103-6ddb-08dea5256028
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:08.1155 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VMIvKwYs4CU27TUs/yOfQg2LIUsZ+QJBnJ2nWuEJSWcWrF9L2kHsSJMre4N5hALZWUYnJkZYjgtu2ZGk/DIDtQ==
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
X-Rspamd-Queue-Id: 10E984855A5
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

Add link_config_mask to link_config_limits to track the set of allowed
link configurations during modeset state computation. Keep the existing
min/max rate and lane count limits for now, until all users are
converted to use the configuration mask.

Also add helpers to select the maximum configuration from a mask in the
connector's iteration order. This allows callers to pick the effective
maximum configuration directly from the allowed set without iterating
the configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 60 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h       | 10 ++++
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 44 ++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 ++
 4 files changed, 116 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0255aeff84b85..f561e984b4d4b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2207,6 +2207,40 @@ static int align_max_compressed_bpp_x16(const struct intel_connector *connector,
 	}
 }
 
+static int
+intel_dp_get_connector_max_link_config_idx(struct intel_connector *connector,
+					   const struct link_config_limits *limits)
+{
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_caps_config_order order =
+		intel_dp_link_caps_config_order_for_connector(connector);
+	int config_idx;
+
+	config_idx = intel_dp_link_caps_get_max_config_idx(link_caps, order.key,
+							   limits->link_config_mask);
+	drm_WARN_ON(display->drm, config_idx < 0);
+
+	return config_idx;
+}
+
+bool
+intel_dp_get_connector_max_link_config(struct intel_connector *connector,
+				       const struct link_config_limits *limits,
+				       struct intel_dp_link_config *max_link_config)
+{
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	int config_idx;
+
+	config_idx = intel_dp_get_connector_max_link_config_idx(connector, limits);
+	if (config_idx < 0)
+		return false;
+
+	return intel_dp_link_caps_get_config_by_idx(link_caps, config_idx, max_link_config);
+}
+
 /*
  * Find the max compressed BPP we can find a link configuration for. The BPPs to
  * try depend on the source (platform) and sink.
@@ -2560,6 +2594,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 		&crtc_state->hw.adjusted_mode;
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	struct intel_dp_link_config max_link_config;
 	int max_link_bpp_x16;
 
 	max_link_bpp_x16 = min(crtc_state->max_link_bpp_x16,
@@ -2589,14 +2624,17 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
+	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
+		return false;
+
 	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max link %dx%d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
 		    adjusted_mode->crtc_clock,
 		    str_on_off(dsc),
-		    limits->max_lane_count,
-		    limits->max_rate,
+		    max_link_config.lane_count,
+		    max_link_config.rate,
 		    limits->pipe.max_bpp,
 		    FXP_Q4_ARGS(limits->link.min_bpp_x16),
 		    FXP_Q4_ARGS(limits->link.max_bpp_x16));
@@ -2647,10 +2685,15 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 			       struct link_config_limits *limits)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 
+	/*
+	 * Remove the following min/max rate and lane count setup, once
+	 * all users are converted to use link_config_mask instead.
+	 */
 	limits->min_rate = intel_dp_min_link_rate(intel_dp);
 	limits->max_rate = intel_dp_max_link_rate(intel_dp);
 
@@ -2659,6 +2702,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
 	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
 
+	limits->link_config_mask = intel_dp_link_caps_get_allowed_config_mask(link_caps);
+
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
 	if (is_mst) {
 		/*
@@ -2733,8 +2778,17 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		 * configuration, and typically on older panels these
 		 * values correspond to the native resolution of the panel.
 		 */
+		int max_config_idx;
+
 		limits->min_lane_count = limits->max_lane_count;
 		limits->min_rate = limits->max_rate;
+
+		max_config_idx = intel_dp_get_connector_max_link_config_idx(connector,
+									    limits);
+		if (max_config_idx < 0)
+			return false;
+
+		limits->link_config_mask = BIT(max_config_idx);
 	}
 
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6d6bb9e23ff26..bfba29ba715d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -22,11 +22,18 @@ struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_display;
 struct intel_dp;
+struct intel_dp_link_config;
 struct intel_encoder;
 
 struct link_config_limits {
+	/*
+	 * Remove the following min/max rate and lane count limits
+	 * once all users are converted to use link_config_mask
+	 * instead.
+	 */
 	int min_rate, max_rate;
 	int min_lane_count, max_lane_count;
+	u32 link_config_mask;
 	struct {
 		/* Uncompressed DSC input or link output bpp in 1 bpp units */
 		int min_bpp, max_bpp;
@@ -138,6 +145,9 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 dsc_max_bpc);
 int intel_dp_compute_min_compressed_bpp_x16(struct intel_connector *connector,
 					    enum intel_output_format output_format);
+bool intel_dp_get_connector_max_link_config(struct intel_connector *connector,
+					    const struct link_config_limits *limits,
+					    struct intel_dp_link_config *max_link_config);
 bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
 				  int link_clock, int lane_count,
 				  int mode_clock, int mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 13d39d07b42b5..70f72a32a9a7a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -734,6 +734,50 @@ int intel_dp_link_caps_find_allowed_config_pos(struct intel_dp_link_caps *link_c
 					   link_config);
 }
 
+static int get_max_config(struct intel_dp_link_caps *link_caps,
+			  enum intel_dp_link_caps_config_order_key order_key,
+			  u32 config_mask,
+			  struct intel_dp_link_config *config)
+{
+	struct intel_display *display = to_intel_display(link_caps->dp);
+	struct intel_dp_link_caps_config_order order = {
+		.key = order_key,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC
+	};
+	int config_idx;
+
+	for_each_dp_link_config_idx(link_caps, order, config_mask, config, &config_idx)
+		break;
+
+	drm_WARN_ON(display->drm, config_idx < 0);
+
+	return config_idx;
+}
+
+/**
+ * intel_dp_link_caps_get_max_config_idx - get the index of the maximum config
+ * @link_caps: link capabilities state
+ * @order_key: ordering key used to choose the maximum config
+ * @config_mask: mask of candidate configurations
+ *
+ * Find the maximum configuration from @config_mask according to @order_key.
+ *
+ * See also:
+ * - &enum intel_dp_link_caps_config_order_key
+ *
+ * Return:
+ * - Configuration index of the maximum matching configuration.
+ * - %-1 if no configuration is selected by @config_mask.
+ */
+int intel_dp_link_caps_get_max_config_idx(struct intel_dp_link_caps *link_caps,
+					  enum intel_dp_link_caps_config_order_key order_key,
+					  u32 config_mask)
+{
+	struct intel_dp_link_config config;
+
+	return get_max_config(link_caps, order_key, config_mask, &config);
+}
+
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 009bee0f7dffb..1dfd66380a96f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -27,6 +27,7 @@ struct intel_dp_link_config;
  *
  * See also:
  *  - &struct intel_dp_link_caps_config_order
+ *  - intel_dp_link_caps_get_max_config_idx()
  */
 enum intel_dp_link_caps_config_order_key {
 	INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW,
@@ -193,6 +194,10 @@ int intel_dp_link_caps_find_allowed_config_pos(struct intel_dp_link_caps *link_c
 					       enum intel_dp_link_caps_config_match_type match_type,
 					       const struct intel_dp_link_config *config);
 
+int intel_dp_link_caps_get_max_config_idx(struct intel_dp_link_caps *link_caps,
+					  enum intel_dp_link_caps_config_order_key order_key,
+					  u32 config_mask);
+
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
-- 
2.49.1

