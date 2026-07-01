Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iz1+CzwzRWpc8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A75EF6EF48E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=InAuIwu+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC7310EF92;
	Wed,  1 Jul 2026 15:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C469310EFA1;
 Wed,  1 Jul 2026 15:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919993; x=1814455993;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Q8zZIVKLcDMCe7wRgNVc7etmd234Xja7/wfzk/dU0X0=;
 b=InAuIwu+a6TsWiba2wkAj0yFTW1evS2zclul8rV0Yrzb53neQRgTRX86
 PgJ0wLujNUthKcnm9zXUzfzgnR3IHsoRcIDEqy9Npsk64lZ+hX9u0wewN
 z14JprCxn3L9sbYVpeTeKHHm9Canrk3vgjFPHr6zqLr5so7+DVrXcSMET
 uGlI37AEu9qi1B6827zhno5aSgjc+dYC9vF78iT0JznbXsjaVLzhgafke
 7gU/owC6l/YA5IJFYgjEeJJ1KMvynDD8Wyf2uPekwiB5zjAoqwiBFXqCy
 Hq8cr+OsK5VBVDkEXI4YC7r1/SsMa5d/igd/TnA9xKLi8qrA+eONLf4r/ w==;
X-CSE-ConnectionGUID: ySJ0KSuHRWu71iim7ITufA==
X-CSE-MsgGUID: F2WUdqQvQZ+/gvlYvLwv9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310130"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310130"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:12 -0700
X-CSE-ConnectionGUID: T9wSgVYjT/eJdvAKHoMguA==
X-CSE-MsgGUID: fsUoefGQSsGn0uErSIRkxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515677"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:12 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.5) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dbv5bYDJnzckrkImKAGQf6+Ktdpe0iBHTSC3p1gNqkSayX4FoA1YMII0LIGssHbF3vxXL5w2S3Xt1hOmW71cFc/XjqYSLvzpdlQWfIkliu8ooJlJVBkCqMOx1DVxkXN1xXnL9TzHAzEjaPZuvwcBOlXM5BV5R7XkdZ0BxFVQdY3x/Os1MoizCdRD9g6ca5eC6xlOTE2v8V5xa5GK5xySlaV/24gEYb6FPsmOvtNVdXVJc+EJ89HAqkw+KhD3aMknoZ8IFfevzI88lpVrKFQu5aqWFojOHYRJ80c54jd36hTJ7cX92vkn5a2dhqwmijVVrB5GXz6H8FmerT2pbCTXZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MHC4CznKjexIqHNm5nVSAsU220RW5TDHHb+WKC7vbgw=;
 b=bIXR0tqOzKBhceRLUVGIBSMEXHSvSYIKcjMeixNoDWLFR6bk/mEGbO6SVPlqSVvpOdeJvbm2ExF9LneXo8Z48H4jUXlzrm74ptiaQOw1/3dIaKCrgg9wU2yVMIbAI1Y3IVNAqJ19F8Y7hnIWfSJPSH1OwuGMimVdOK2F+7FkPd6OOj4y1hadbQBvboZ1aiAXGZzFL3jLVmMZLQJ4b7+rI04Q8iFN2eacMsfahsqlMWegpAbUaTYbGWnKABwAJznjmR8DrEJ+hfBl8eAi2KL08zF/WbvQqLWR59cXp8e3+Xo4e7j/Wf/cVZwe0YtP3IeR2rwstsRYCs194gWXOXBOyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:07 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 22/34] drm/i915/dp: Remove min/max link config limits
Date: Wed, 1 Jul 2026 18:31:51 +0300
Message-ID: <20260701153204.4124150-23-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CY8PR11MB7826:EE_
X-MS-Office365-Filtering-Correlation-Id: 95fc27fe-2e67-4aa9-39ba-08ded7860b55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|11063799006|3023799007|6133799003|56012099006;
X-Microsoft-Antispam-Message-Info: KFnPimJECNcGWB/p/ZV1c4udP/Ue4inch/TunBppRKOZnNVvm9471y2xIecNfy4AahiZKEsfBqQiCf+bdLrMOBW+A09zve1wG4K/Ik/AjfcDsQW+CFeSRxK9daFoZuE+OkoMhq3TYhqGhwQ8LIHGeyKtXupkik0e4XomLsIEusLVJSsFYbIU7DjLdWK+q+GnyLNQG3nbmq1BQL+pWxWl7d4oANKEyAurmUfbl14sAyP4igoFzhJqeTHb+QqHktT13zSxvAtrhLRxzyr0+zRsJ3mczqgfjZFs7pYQ0QXF3WyeNvta+lA82mfHPGLnbxtFv8vw4vr+MbckpOso6TQXV1GcEEIfmiwehB/cvTUa3YuPgCVNgsRDlIDivg/OnlQEiXxQZTV4h0QiU3oij1qbRYZhxWP6YONQmgort9j6SbL1GqL7eem6jGLGVsIdM6lrVG67xhcUsAO7YIvnoCiL4SZju+Lx1Jr62bcTNFn5LotOvzTwZpJVYdLIW+EM9Xs8AwrtTnSnNmHIwtZRtGgaVmzDaPBaq5N8/8euxJxXxpXYlvitXAW83S9uK9C9pdh1yclgydbjSWrsAfO+VVx0Gy8E4l94OixMiFRRALtxMS6+O7StFkR6fcKPU1eifsTyk7RQ+78IsPXVwjr/9cAqKR1y822NV5ZpQtxMHo0dlkM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(11063799006)(3023799007)(6133799003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KpegIsK0K0XycivtxjvBsFCEFPpVAaTGjIV1M+VJwLEcW7IonEj9rE3QTpdU?=
 =?us-ascii?Q?lVK0KO/9cdWRO8zLuWJnZExPfFXpEnH33Pk+QIGKocxb66s3vTwdjF+g1Qex?=
 =?us-ascii?Q?WpkqdHM1SmlvTxE69kGSoHrmgsNSkDaO5R6SMjBt6PBoLUs/JLzoz9kG2N44?=
 =?us-ascii?Q?Ia/8ymlqZryBZF7u1LJeI7kkHIvQ62gTMIzoZhWWn3JWnRnMpuTXYhEzbYt5?=
 =?us-ascii?Q?LEC1zwtHVQp/pOGJtLc9gcxpmFzE+fhXHammvVlAkXc2ttsmIa41j3As+m+j?=
 =?us-ascii?Q?M7t7vU3rl6g5d5uNozwtYsnPQX2pZwt1aelz3IhA9FGghHI87r9HEQUVr092?=
 =?us-ascii?Q?aAtgaUdHs8374L8qjRNGwPYPp+MRkWkjH0qKgFKqQDN+8/fESFXMXRriecky?=
 =?us-ascii?Q?++E9Bm5bGpXmSMKQViOyhLSL0Kmh+kWkG6XGZ8VWBoB4KgwshjHaatumqf/l?=
 =?us-ascii?Q?TV0YuL08XngQo0laAUnfBoNJvkKmnzzY8pzqqfSjBiBUXI8oVGls8i9f1jEo?=
 =?us-ascii?Q?vkfoddiJ+HVgtnC5EJGRtmBQSeocWJQ3omgw/s2FVroCwNihH+kA5olnMA3h?=
 =?us-ascii?Q?zAPoO525XbJffd7k23OrMrlpRhAYYMWF9VB/x/wExjQAgfSrlDSQ6snw5JQJ?=
 =?us-ascii?Q?2QOXPNRaJ7I5bTXcUCPiBF8ja7lAe3rDZnf8Ju+sGVUK6LCZfPkJdCpBbbCb?=
 =?us-ascii?Q?ofRJyW9E89Rva1WvkOFTn8aAPw7lJleflHF1uOY5zNYlDES6ymWR+BTFEJhD?=
 =?us-ascii?Q?pWt/TDgILCFmXYX611b/uYB8rkq2poZkbGcdPEFi2FcIFxoeo2mp6jTVCnWZ?=
 =?us-ascii?Q?ep4PMJLk81/jVYUQcRcTiWI66iI92KpWrmZGGTb9O24Zu59gqrTYtieKV19t?=
 =?us-ascii?Q?ovAX5znpWyCV16+T0XqpdiYd0LG7Z1trqnTqdHaxOaTGk18hq+g0DmQc9ZMQ?=
 =?us-ascii?Q?UJHiK5FjdZ1YgfiOPC/eewI4BDW1Rwh5Wj+qR7tLCAr7r6oouDJQIhuk8rZA?=
 =?us-ascii?Q?Z8/uB9e/7wFI1nYpvGqvRFa/VeXWl7mJFA0/tJc/Th6rVQgSDXg8BCSrMZQm?=
 =?us-ascii?Q?FeVrb1QWURhJaRsk25Ldyk5148zvKvGMqHU3xTNpeShw2pENX1O9GMLWz5G4?=
 =?us-ascii?Q?7ZGbtCZbarsoKEL26WQAroX39kNt3p5e5U7OdiS7I175hJWrFAAtFw9dzw3u?=
 =?us-ascii?Q?R4nBIA6mM8QjxYepLL2VvVIo4lN0GX7+4V1CRsehDOh4YaBTRP8xnbyiWW0l?=
 =?us-ascii?Q?V87S0sQTKFpia+7ihDaNt4NQagjAJ60jBxm2K13WqCn9zA2feoyXC9bR/0KP?=
 =?us-ascii?Q?kK558HFkbedc1dWasx3nJvCwY+gYxb6PtGOUGlNTE72Wza3ewAmpUpm9LWwQ?=
 =?us-ascii?Q?PA/tQ2GfAlL9kOy05obRAccXmGz81RnMuwC42RWKE/h0gkLPXn6XziJNDtUs?=
 =?us-ascii?Q?3u3qZgE6E3rJ1EAKoV9uLJbWN+J5NG0g4YAqi2rjhv7HtNOa5DLsfY9WHZ8t?=
 =?us-ascii?Q?PMgIx4+J93sy6U3qTyaPO5vlAn1qAqyifBKS5aSq2k0YODlHaTEIr5Paogbp?=
 =?us-ascii?Q?eG97DgGLddbwpWkYvODBXQwhCKwSa+FJ1oWih49fB9giXq486I5RR/Z+aKsz?=
 =?us-ascii?Q?0YI9AQwNcb46G9LS55weWhQO7Es+0kofe2ST8v3ta9kZYCXvhrJy5/9xvcv7?=
 =?us-ascii?Q?kA5GF5Qzg/9VPzaEXdSSIhFvFABExcV5x7Bn7svNEUJqtt6SfzO+vFXS6D9q?=
 =?us-ascii?Q?5N4AGIv8Yw=3D=3D?=
X-Exchange-RoutingPolicyChecked: X9cYqzGW92PBtQPC+V/ngpJDYZoUpdTChf5L722Bx/wbE2vDVSGAKr0BxQXUwmX2ywADSgcbO9LtbZkshv+dqXbh8Lvhf5AdNncYpK5RsONiQrO7WW5s4PRdUPRfxuNLVgKFysoxogSUxjTJjJNL3RfgnbeNJDNkZHjuSngvvZDpZVfNmU+CekTaidgOgx0CDrnGGzasANgBJYAdMvzKeXOzIcUANMq0kgR4C9cOXtKlnfts7FOLokny1Jm43JWTuOUEWR1GPLQ3WU/qTN/MMav54CRc6gzTwLfrlIlP/lxz/hJlLRlsFrGh29Yy5a52Iy9yh+rNLYb7Asuq5j6XfA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 95fc27fe-2e67-4aa9-39ba-08ded7860b55
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:05.0175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uQzsZnibrZO56x0qp+Saf5DKk369FWdpS57i6H3r7/6+kelrueVsBkD850cIhl46CMZivVRnIAmpSFt7V/T6TA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A75EF6EF48E

Remove the min/max rate and lane count fields from struct
link_config_limits after all state computation is converted to use the
configuration filter.

A simple min/max range cannot fully describe the valid configuration
set once individual configurations are disabled (for example by
fallback), as it may allow combinations that are not actually valid.
The configuration filter, on the other hand, always represents a
consistent set of valid configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 86 -------------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  6 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c |  4 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 -
 drivers/gpu/drm/i915/display/intel_dp_test.c  | 23 -----
 5 files changed, 2 insertions(+), 119 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 79e3334d24332..16b3ab9732120 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -354,44 +354,6 @@ static int intel_dp_get_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
 }
 
-static int intel_dp_max_lane_count(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config max_link_limits;
-	struct intel_dp_link_config forced_params;
-	int lane_count;
-
-	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
-	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-
-	if (forced_params.lane_count)
-		lane_count = forced_params.lane_count;
-	else
-		lane_count = max_link_limits.lane_count;
-
-	switch (lane_count) {
-	case 1:
-	case 2:
-	case 4:
-		return lane_count;
-	default:
-		MISSING_CASE(lane_count);
-		return 1;
-	}
-}
-
-static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_config forced_params;
-
-	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
-
-	if (forced_params.lane_count)
-		return forced_params.lane_count;
-
-	return 1;
-}
-
 int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
 			      int dsc_slice_count, int bpp_x16, unsigned long flags)
 {
@@ -1540,39 +1502,6 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	intel_dp_link_caps_print_common_rates(intel_dp->link.caps);
 }
 
-static int
-intel_dp_max_link_rate(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config max_link_limits;
-	struct intel_dp_link_config forced_params;
-	int len;
-
-	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
-
-	if (forced_params.rate)
-		return forced_params.rate;
-
-	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
-	len = intel_dp_common_len_rate_limit(link_caps, max_link_limits.rate);
-
-	return intel_dp_common_rate(link_caps, len - 1);
-}
-
-static int
-intel_dp_min_link_rate(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config forced_params;
-
-	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
-
-	if (forced_params.rate)
-		return forced_params.rate;
-
-	return intel_dp_common_rate(link_caps, 0);
-}
-
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -2711,18 +2640,6 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 
-	/*
-	 * Remove the following min/max rate and lane count setup, once
-	 * all users are converted to use link_config_mask instead.
-	 */
-	limits->min_rate = intel_dp_min_link_rate(intel_dp);
-	limits->max_rate = intel_dp_max_link_rate(intel_dp);
-
-	limits->min_rate = min(limits->min_rate, limits->max_rate);
-
-	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
-	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
-
 	limits->link_config_filter = INTEL_DP_LINK_CAPS_FILTER_ALL;
 
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
@@ -2802,9 +2719,6 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		 * configuration, and typically on older panels these
 		 * values correspond to the native resolution of the panel.
 		 */
-		limits->min_lane_count = limits->max_lane_count;
-		limits->min_rate = limits->max_rate;
-
 		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_config))
 			return false;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9564369ea4852..0ec519fa12368 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -28,12 +28,6 @@ struct intel_dp_link_config;
 struct intel_encoder;
 
 struct link_config_limits {
-	/*
-	 * TODO: Remove the following min/max rate and lane count limits
-	 * once all users are converted to use link_config_mask instead.
-	 */
-	int min_rate, max_rate;
-	int min_lane_count, max_lane_count;
 	struct intel_dp_link_caps_filter link_config_filter;
 	struct {
 		/* Uncompressed DSC input or link output bpp in 1 bpp units */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 4ce35b76afee6..766dc9a98e05a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -242,8 +242,8 @@ intel_dp_link_caps_connector_fallback_order(bool is_mst)
 }
 
 /* Get length of common rates array potentially limited by max_rate. */
-int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
-				   int max_rate)
+static int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
+					  int max_rate)
 {
 	return intel_dp_rate_limit_len(link_caps->rates,
 				       link_caps->num_rates, max_rate);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 3c7e6c8d1ab1d..bb785c15c91f6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -119,8 +119,6 @@ intel_dp_link_caps_connector_compute_order(struct intel_connector *connector);
 struct intel_dp_link_caps_order
 intel_dp_link_caps_connector_fallback_order(bool is_mst);
 
-int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
-				   int max_rate);
 int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index ec7fa690910bb..0551a1ce60d39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -114,7 +114,6 @@ bool intel_dp_test_compute_config(struct intel_connector *connector,
 				  struct link_config_limits *limits)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* For DP Compliance we override the computed bpp for the pipe */
@@ -130,28 +129,6 @@ bool intel_dp_test_compute_config(struct intel_connector *connector,
 
 	/* Use values requested by Compliance Test Request */
 	if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
-		int index;
-
-		/*
-		 * TODO: Remove the following min/max link limit setup
-		 * after converting to use the link configuration filter
-		 * instead in limits.
-		 */
-		/* Validate the compliance test data since max values
-		 * might have changed due to link train fallback.
-		 */
-		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
-					       intel_dp->compliance.test_lane_count)) {
-			index = intel_dp_link_caps_common_rate_idx(link_caps,
-								   intel_dp->compliance.test_link_rate);
-			if (index >= 0) {
-				limits->min_rate = intel_dp->compliance.test_link_rate;
-				limits->max_rate = intel_dp->compliance.test_link_rate;
-			}
-			limits->min_lane_count = intel_dp->compliance.test_lane_count;
-			limits->max_lane_count = intel_dp->compliance.test_lane_count;
-		}
-
 		if (!set_filter_for_link_params(connector,
 						intel_dp->compliance.test_link_rate,
 						intel_dp->compliance.test_lane_count,
-- 
2.49.1

