Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sP1cOzuu8GkGXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ADF48552F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D5910EC63;
	Tue, 28 Apr 2026 12:55:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGMyetHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 007C710EC66;
 Tue, 28 Apr 2026 12:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380921; x=1808916921;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=1WzfLvgS0HvllrYCCx26A+Vdrcmt9rORf4rKQyFOo2k=;
 b=IGMyetHVqxDwBdh01lR0G4oOTPOqCgUU5Dm6h4gsFXGBXgnx6NQ0IE23
 h8bO2agi1riHwdlYGJ9PozNGBpvu5m4hQeuDpYMpd9RX3RwFgHH7rA4on
 YfCKf1M9ycz7ZsIdQrITwgTlR6gaoGDB+bqP5iNP5uCsYsIySbVw6NyPC
 ym2J/z3d4HXA/agqqKqmi2p7aqh3gJEuH2R/FHGVN1fepeEbyJrsfVBM9
 L3YLhoiqHkuXrpc5K+mAWOKtqXUaVBo8GVyEK/chd8sLkbd+y13CWikhn
 YO5czMUZW7I9oZSJ60H9DeeQ7Nq0V/H2Vy3WJaP3S1ocz4ziQPt0G+SsI Q==;
X-CSE-ConnectionGUID: Bjsb1GdJQ3aAWmCuLUqg8Q==
X-CSE-MsgGUID: Lfo+Qd/dR2q4Rk5t04ipPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893838"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893838"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:21 -0700
X-CSE-ConnectionGUID: Rujj3LD3RGKbIheGbCwsLw==
X-CSE-MsgGUID: L6crLyMQTV+fPSI4gQ750g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233092748"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:20 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QHMNTe0BAilVDRx6vFkcb7LN0Y+029NQKUdgz17B0DeSDVyUc40Jh+rgZOYkl4D9EQNPuwHTPAJqvvDLumgunlXkuFgHhnYqXOmPq2sJg1P4rdXvgWqVNwMc+R9MaXImhs1kPRjbzAPv4qo2zmf7260WHifhdA1geosnIad/vDQ3BhKf+9ObY0kd15n3uQhm62Ku5qiF90zyygELXbSR8CAejNpI0E1j4vSPcGI70U3u6CT1wiJjZMz8t6geTCQjek4o/VDA+UygTc3UdxspZeaHSXht2opH8nlMhBvVKIio//LPmeFkaoaXFhW3SVr2z4Dh0rsUfz+BHrxx0/zrvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LN2PSWqyFcP2ZtrdpQm3FfLVq+uf1ddwgTQVeIyVBf0=;
 b=jOohUvCuYX+jS1BI3L0bFr/wkLJJjgXhWz/MRpx7in2OsMIjf2KY+PGxHtk8jHWC+05IS/iwMedBCP/rHgTj+LLDyzyFachWLbbRAvMm/SH5cdwAgLshJzIb5T/ErHkdCBUYCjoyw7vJIOBoN6ItQ1wVb7taSukhEn0Mcavdg9k+GUzkXa/V9WJK51qpETIqMcNeaJ7Yvij9/tiD3cS+H6/k9XHJ6mQOygPisPUI1pCTTZtbfFDv9ihKeL1nBETQatyG0PWUjfH4ggPnYTUbXWAwAvcuQKT4gMBfG1qNbcB2JQWwudBpH8xcde5MfErFhMyGbi9QPT1ctn0n0Whrng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:55:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 076/108] drm/i915/dp_link_caps: Pass table pointer to the sort
 compare function
Date: Tue, 28 Apr 2026 15:51:57 +0300
Message-ID: <20260428125233.1664668-77-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 0b08056d-b92f-432c-cc8d-08dea5255278
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: VXzs9RQifYDqPLi/h5rCNhrkCk1ukaaez31rjV07/ZjrBS+4XzFuwp/pp2kCSVdcmXNcHql5nkdx5jKvC20zjt6IuFzk/kin+a+PxUX9gqUsqg4sVDngiauoMbOlKFyIdJPWS6uhEGj6JBN6yvJeyn8cxKREhew2P9PTYn4g2Ng/Q0Ln31ub8jttl2H8BkOYyqkW52GyO6/aCVNgPJpeWz51Xw1dc6/2Cv3byL7K2lonV/oZcm1DrGtqeriDZQEGrO9ozy7/yKV3NJGGQCwb2JX8zximbgSK8mhvE9DvOLA00itE1Xpa31Q6QIXAVn8cupgv+e4HGSeU7dx4uTNSROTTi0nlItR92+SyIiv0faQM9zmV7AtviJMzfkycW+oDpSy+Fl6RSDyicazwlc+WHRDbQW7DPX0T0Il0uA9dFYuIuwzj4Vq/buj/vcGBe/vpUYeCBMYdr4yYhmNCzZnILXv68gZogYKe8VNb+40/GCCIan1q48EYg49aPgAlFKEz6EXIs/wYXRm9n9vFsLE/b0wBfizPVO0sDd6kB3bE7gv30nTikiM+4GfPqcstb8APnL7cIjg0+5nrNJ8KZ2vr7kWQVuIqJIuIc7+4hqo69fBMeI3bqn5VyMiczMtCGHfg1Lr/9FlUzLJ2KMglRwpFW/wP0OwrgO8AhPurvHVViBa4R12+JatsICP5TGyVNk7yx+Vuh5UUHFDDYoVGHwa0sRRSQmayWc/BsvikpCO8gjk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sNl38xKwvvlfKJjKXSUavUw5c1UW3SntOk4X8/gWbSrUL1tzK3zDB/qvtv0S?=
 =?us-ascii?Q?UCJ2LiWXxkomqasfP8Sg+TZYuFLDkOMzdK3rqLyi3AeGaSFA1FRz1QpDLSpR?=
 =?us-ascii?Q?zUzLKRI8+EWAxkl9xCxbfwWem98lvvxkrYrTIDMRd7qtzNxygJNhiA38sP45?=
 =?us-ascii?Q?V0Y/2Yzdd1Cs42kOjQHecJai3rzsRPvvBBXE1KnzHSlr0MEE68dSJK0aFlCC?=
 =?us-ascii?Q?pD6P8wBTUQ6+tCaJzLulVvh3JcJsfGLyDeUJxifEEYWPr00jKiL0Nqvy9yUI?=
 =?us-ascii?Q?fL/Jd817D6ychH4Oh1zgkJqLpAnHE5X4yvRWS29KQ9+hjMksODVX1eidq6KK?=
 =?us-ascii?Q?ZsRcDkM1O5FRYG6JmGhDMO0GrVLYEtsAJZaKtXDCT07OeZgwyIihkOOpm/52?=
 =?us-ascii?Q?iA53ct0Rxk0hNQLD8k+7v8zb8N6Veb3aA7SSLgRieau+imGTBtbfV7ngk1//?=
 =?us-ascii?Q?wF6Ih/8t3sUq7vwEws+jy1gVEp1HV9qzp3vCGeJuuQV3XuB3S0TlVY2il9nL?=
 =?us-ascii?Q?j499+xv1cj5quzmC64GE+Ru4f6THy5ZCm44ojSMJtFd8x8f9Bh8FNRelN2Fz?=
 =?us-ascii?Q?uXr1YovBIJZai+Y4u92xk7PP7kAoy2NwwfHaarB8S4hv08227Hj3e17J7GUU?=
 =?us-ascii?Q?ZTErEDAlVRx917jB4k0xcco5Sz5xJgsN1GaBY8HaXH7BSPon24+aLkjIk331?=
 =?us-ascii?Q?8cx+2iOpaBHBESMq1/fbLaoZ+HiYwbwlVvcrXO5/JkAzSjmFQv9GNt1ycqJc?=
 =?us-ascii?Q?uJk6w9/EXO9cVacgiv5AIDw7nDUXZs7vPfuLJwNMtN/86PpPNkQjaiycFo37?=
 =?us-ascii?Q?6VyeRNjRNhk11zfVg8pLwbq3NR/FUkxe7K5O+gjF7nJcQt6A0gdFiYLuBKvs?=
 =?us-ascii?Q?wmRgsVcOGMDA0BeTkva/2CwVI08ta2EV73cY3690EnSWD6M1IAL/Fn8tGhri?=
 =?us-ascii?Q?mTeJXlx2tpODOyoMhegLkwoBgp3E/SSCEIiJgoAjdsdlXTl9k3IrZ1JQtpWA?=
 =?us-ascii?Q?1DN121FMODwU+DxfOBllh/WxiEiRVjfJYThDYo7csG8Amq0s5TiBMgTNHof6?=
 =?us-ascii?Q?2/P4BvIP0iwxpgtC7mfezPYaT97xU4dBBN1IbwIqUN9iwTaTPtXGq9Y6LYSa?=
 =?us-ascii?Q?Ht+tDWSVXFlXMbPWGxJHUSLdvmpHObYTtKViuFAjO2gT5gzwkO0c/c67i1kW?=
 =?us-ascii?Q?fEnad8JcWB/GoFdezNZvN499sDm1sQAcG9CXrAb0IBGuRZvgrpH0FkGbzmgn?=
 =?us-ascii?Q?TKVw5dmPWYthbFamO34doUF/JTXR8FSwhy7+m76mk3AqJVzaHMdk9PYjA8Z8?=
 =?us-ascii?Q?XFIud72QWBqLiNJMePALW4xsCWoZAf+8BpMoAz4lNFRdxZ/kxS9rBJiGcfMB?=
 =?us-ascii?Q?T8I1M+Cvu9MM8TLv2u4m7jPxiK0ZjDfNRgF+pAF1EzWboMzoxwDKJOJBowAd?=
 =?us-ascii?Q?Bw3tjmSF/tOqo3Qp9BtDnOZ8Kk7HRY6d+h4+jONiWomkSo6WPYLur5Lyct7R?=
 =?us-ascii?Q?fVyAPG3ldH8iEoWOvDRdIyPsBTe1O/aPmSvliYnWcgI8IBOSDNsc7yve6fS7?=
 =?us-ascii?Q?MX1HXu4G6m2Zaqod0wR65DYD0HA09oqcwKV21+2eK9s1HZGrnbp3lQ24hFdZ?=
 =?us-ascii?Q?JZC4eKnwjv/ZjYcRDVaiTqdFfLFihTettjZpxAFcEXqumYkmSYunYNqUrpB6?=
 =?us-ascii?Q?GghvQeEIfp2yQPguijcCOlgFz+8Px7llw9MVeVHm/pD5oDaD+aJC1sI88yHv?=
 =?us-ascii?Q?u8aPvjjOUQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: CjcQM0apleWejW7NM944DfRCDJDeMydXSrFfNAxcWepc77/45zIJOjiuz3IoIjlojgnqtuCrRJXSzndPWBFckKFO+tV3KwikOfgDashcsc3K8UzzjGUSVi64jczquNwUBk9iNjpg4aE50G6u4O1Md5XKd5dvgnCpbmX/Km5mJUrxGEVa+6kli6QV4btAQc0mRJ9nfm0B5AQOmpsvOVakZXy/1ueTqt3UyUooc09fEkg6JL+E78GmeWy8w0D74TQYUcz6BbfVL4r1kMqBDR2XBNFUZgHkdlmNq68zGZb4+97ikAsBV5i8yFqvgCpM2ciX20dAtbAPuVtzkCiN958Meg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b08056d-b92f-432c-cc8d-08dea5255278
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:45.1518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CbTDqWz69kzXf854ojAlAKpgK4XJuezQKtePZGf8RSUSc+ibVjiYQq3jaPJ25Q84z470KmFb4hGvKv7O4EbEwg==
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
X-Rspamd-Queue-Id: 76ADF48552F
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

Convert the sort compare function to accept a pointer to the
config_table, instead of the full link_caps struct. This prepares for a
follow-up change that will precompute the table before committing it to
link_caps.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c  | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 7643c468588d0..53649aa710f94 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -731,28 +731,26 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 	update_max_link_info(link_caps);
 }
 
-static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
+static int intel_dp_link_config_bw(const struct intel_dp_link_caps_config_table *table,
 				   const struct intel_dp_link_config_entry *lc)
 {
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(&link_caps->config_table, lc),
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(table, lc),
 					 intel_dp_link_config_lane_count(lc));
 }
 
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
-	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
+	const struct intel_dp_link_caps_config_table *table = p;
 	const struct intel_dp_link_config_entry *lc_a = a;
 	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(link_caps, lc_a);
-	int bw_b = intel_dp_link_config_bw(link_caps, lc_b);
+	int bw_a = intel_dp_link_config_bw(table, lc_a);
+	int bw_b = intel_dp_link_config_bw(table, lc_b);
 
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return intel_dp_link_config_rate(&link_caps->config_table, lc_a) -
-	       intel_dp_link_config_rate(&link_caps->config_table, lc_b);
+	return intel_dp_link_config_rate(table, lc_a) -
+	       intel_dp_link_config_rate(table, lc_b);
 }
 
 static bool current_common_caps_match(struct intel_dp_link_caps_config_table *table,
@@ -856,7 +854,7 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	sort_r(table->configs, table->num_configs,
 	       sizeof(table->configs[0]),
 	       link_config_cmp_by_bw, NULL,
-	       intel_dp);
+	       table);
 
 	if (!current_common_caps_match(table, old_rates, num_old_rates,
 				       old_max_lane_count))
-- 
2.49.1

