Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9/lwIXexT2pymwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 16:34:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B717324D2
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 16:34:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jAUqIOc2;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B4610F5EB;
	Thu,  9 Jul 2026 14:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CDD10F5EB;
 Thu,  9 Jul 2026 14:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783607669; x=1815143669;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=xNs+KtUW3uyVhzznigwy+x1WPm31CyA6C2BpGyuV7mU=;
 b=jAUqIOc2cmgbcRfn2K5ZhwjI3pQfK8RNByEsvbtKpjgtvi1HFfPfZfVo
 20VBl3usY/o/E9p3I3onL1/TKHzR4cpHc725ZxmINCrwlzjZ0I+SU4QW3
 WgiUcVGR7wUYFPtcZ9K19nDw7em+iGpmsWbHYSIpJ7lOuOsy9MQVbGmgZ
 qkQ+2u3fPbvgelO7xIT1Uv1I+Co8tCE3ZR7hjgRxTpSNF3mHIeiNrJx53
 P5nFQnNPV2WnLUbwJ1cTL+JMY3cqumyjAvd36Oe7ljFjCguqlInwlSpF3
 QA8JxxpMv3+thcldzOfbWzhh3d9hap4D0dewjgKPFwnFPxUirFJ5oXMZC A==;
X-CSE-ConnectionGUID: up9ulMjMSrWgLGweI7lW2w==
X-CSE-MsgGUID: f03kfYWcTKioW9cjnd+hkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="86834527"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="86834527"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 07:34:28 -0700
X-CSE-ConnectionGUID: FIgGsc8DQiqdGKCzyFckEA==
X-CSE-MsgGUID: rSkdk/ICQyyX4fU8+GxUBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="277828102"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 07:34:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 07:34:27 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 07:34:27 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.32) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 07:34:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZWnmSMtaLbShwPHfpqYlmSSQbepGTjgytteQX2blfZwaszrx5Ymu5EzGlM9km3Yno+TZ647vnF+2hpH4qFHH+6FCmhfc7nbz9+EWe3W9dWgoXHX7lPRqr40XUA8pdjOausVU5I6b8aKHsA6p8QlVGJQUcr3FAeWoFM+jmMlg95DPxub2fH8Pu1d9NE+WzVeOPloPikbgTewH1vNIWQnPiaZpQlfZgdJKOpH7uGmVTNcPwrIwCJb6UYZABoA8AGTuXza1Ssdk5M0AmrVjm6KQf3RjvZ12NgeZW0E2gqbRHUxvwdQ7PfRxbUyuzAsvfiWNsSr+jU6MPpDwkRHG2LMzJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Lvr8vog6J5U+M3rbW+Y8P/YjHnc4ou6vZCXQh+zJsI=;
 b=mvkCzYkR49evzUBa6UtDvZIBHaC8YfSeUA2f4wXaaPYkx/mn0esUYyRCSbx/OVWtKi62wJqLmGvRdYk19WZzac5VjkH14ZbvYXzQPxY56l6s2moWVc8MYRh7MRgbraoXPgBoExlZ9dKnjTvsGmoIE+RAm9Zx5W/VMvBVzsVyBLacstQJVKZISjetyd/p/A+w+0cn4gvZPlOM0cXrGpzI/0kU7mwsnY1BfjpfAzBGT8nsacXOM/ne9SDQilQNH3YFHGFBFnhwIXyDg8KpkmiigiPUIrOJ43JkgfkrIfsGN+Iwtk1+d03O5bQWQQrPq8l3UVh5RnfBTjof9xYo5Xmtig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by PH7PR11MB7596.namprd11.prod.outlook.com (2603:10b6:510:27e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Thu, 9 Jul
 2026 14:34:23 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.016; Thu, 9 Jul 2026
 14:34:23 +0000
Date: Thu, 9 Jul 2026 10:34:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-intel-fixes
Message-ID: <ak-xZPqluaXVJGtP@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY3PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:a03:217::12) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|PH7PR11MB7596:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d71e3c2-88f8-4ab8-0c4d-08deddc727a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|7416014|376014|56012099006|11063799006|18002099003;
X-Microsoft-Antispam-Message-Info: zmf5gnjqurn8pzh8RSes1VtIafBx4kthEOrw9Tbt8+woNO5GzJDZJO6+oG8QE3PJBpS9goDBnt9NxkHI86Hezxn35rqseJt8TppKTNbd/WzMoaukI73mYfLhcCKAlY0MtT2i0Wn8FzERwIBijLP8+ptHPSWPTbkYpsdbMNAUpJgEc+C66E1JMZxu0coT3wn7PximW6+dh9XY56Tr3f2jrS0MNgb4XmW7FuITrZ7H7Sem6DGIDDMasD4yRTRdBN5o6e61hTbyBJSFrgcjCsFIXqGx590mIxVyQr6ULYWuuHh90AbpYBBbq2NpnQwMXvFE4rdJXiNhb9vm5MRT0YOe0BLzFlgtEGWwmjCcfN7Evy3UpWckcRz3wYv58NIMmVcbDk5iVPrkPPpdWe+ljm5YzqaxvMVyyoixUl1LBoKi11dyhruPivkWwjEmSOsYKQCPuCig4I1zPy+mUXrXBbyAlnaDXG9pOBPM/IS445zbJXpp1cX8mr0NghZfVQhgQSiYPHUEiG44hnQkBa3WxvEjnYnsmEwowuN4ZjWBQ4HljmzjQqKFxIKbOXdrFlVqLvzkSpAqnlR4O+qKambK5p3bAqprP2eOY3Q0jCLoI05Flj9owirKXYUkfcqcYZf48Tob
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(7416014)(376014)(56012099006)(11063799006)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6xNQ7NSJpUny5TSkxNFs7qWYDB6qVS382zzTblQHZpagkkRlK28xu33SSOec?=
 =?us-ascii?Q?IeJmTSEDSf+BkgyB87FNkE4h8e91Jkq7jL/FjNAApmXApo1SbNle/waY9de/?=
 =?us-ascii?Q?S+YhwqaS0l5ZWF1Uck/MXs/ZCSOVi/8mFJfYZp/Zhe25k8/u8sSg1nXrbwce?=
 =?us-ascii?Q?DCXzZIAZpSBhUiOk1RkfViRNgm1l/V2a96bWPbMktpjZ/m+1yusIrTFpSLPe?=
 =?us-ascii?Q?YQLGfx9TDMr9FkWTvT6T3Ns0PhKEu8AV5SMogBJ64JYM4nrpgaBtj5rqsUtm?=
 =?us-ascii?Q?eZ+rkNHIVGXgK+GOSqbirQ5IiD3JDZUJ6Fdr2UqXprGbnQFMOMfSo4ul4syW?=
 =?us-ascii?Q?pP2dNYe6rfLSrIWC3oFNBKXeMFDedkZIE/RTePtni19uhP46KPxC3mxOgtrO?=
 =?us-ascii?Q?BLlEs/9VLqf0n+jsZHGDUM/RtkT0XeGX2tbLhyJ+/d7uL5+aMhV7DHVDc05K?=
 =?us-ascii?Q?7ZyVTWqpBKy1OBAihpGJMeJyYvtSffiO8DEck5on8mFPrUBeh78oIUY853cO?=
 =?us-ascii?Q?TmfD/e88XIcy3C7zpHOrLuwtd5yzK2SDrB5YgyK4ktRXuEQ6lj39H1BWgT9V?=
 =?us-ascii?Q?iR0Zakt+tyqhQ1vbWO2O1ETiQs/JWaJ6wMIXksjABZms0BRzGTQWA3zBWh04?=
 =?us-ascii?Q?GsU5Yoj6ZyhwZ1CKDpiWaTSZ7DGyBiqQPV4bNKyd48SGN5P7WZSfw379FeDK?=
 =?us-ascii?Q?17Wh/x1s+dTi1neoGoCGydXMhrT+QRKaHjXflTh6GsCDQY9K5CfdvoO560CX?=
 =?us-ascii?Q?9Xe8GY8nDJNS+mohZTY1l8zFkasPYQ1HmAALNblX/ikePbtexUVrNMBQVDNg?=
 =?us-ascii?Q?OVG3Fl0puxojEpK9+Vfjrp8qvU+eJ3E5VSg/41Rep1IUO/FH7hkJN71zDdKI?=
 =?us-ascii?Q?UEA1yUyRH0opC4HfjccRncFOn0NVaKweU2M+n7B6LNPz4QEWE9fCce+RXgNM?=
 =?us-ascii?Q?99ni0VhO9shuVeR1qa7OT+O6hc7NOPT1EOe8r4I5Y6mv6tTRHCHePDtss/F8?=
 =?us-ascii?Q?kI7rWQkVt2SGi/nF5pvGF9NGCB2g+EuyAVwaoGCo5EnFJkQnHp/u4X2Z/Rqb?=
 =?us-ascii?Q?KRXrRzdy+eVwjC1YDzO4x3k87OC8YvN4yIR5ussHdce3+ba819lOhwAmxWGl?=
 =?us-ascii?Q?pSnP6mHZHNrJOpZPMZl8/kfj2W3/Ot5Gwzdtb/OZQcjVxbuFZ6lRxN0DowOP?=
 =?us-ascii?Q?vyp33aRebqkJPUSVZ+UBopTzQmFpAeOE8GD75iL7A27BGTMxNAKPdoAE3cME?=
 =?us-ascii?Q?WeMLACCXq8JHsBdLcdD7knZyCP4ZL9O1+WpWDGzfbHl4rza/1jWz069wKclK?=
 =?us-ascii?Q?7JjuNKl8cZ9fPrf8YpnGs3W/F3SiFh4X3ldBTJPXI01T7szrmzRvYBbcWFGE?=
 =?us-ascii?Q?Xc3n6IWrAKJ1mk8Fjn0KBEOjEQ6oW/i1685pOY5PjevHWhEMSkH3On9NeZt5?=
 =?us-ascii?Q?TQpPHwmubq5AqC9In6+kxlcLuvDcrG0JC1wU7iADfdPzg8B+PmJxgA+X7cMs?=
 =?us-ascii?Q?94cnW5uy6YK8lNssu+ztsfr+SsGtUR08qN8kdeXTuXwhKIWQT++LsDnFKCrF?=
 =?us-ascii?Q?QnuO5ApH1/1P8z+PaDOIZ+5lYM8wfbaNbiTuWseF4tMJfby/RDTmfE1H2kEW?=
 =?us-ascii?Q?AJwyeQDW+NrLghs1pyw63OCpvUuejuL/lcCR5xS3VFIYXuWSLLcfhbCrzoy0?=
 =?us-ascii?Q?+0EwpekZVoz/IRbHij45kInpCG1GY0kvRqknTFuFWZ8KmRSHjON6Bp19vC8A?=
 =?us-ascii?Q?fSVz38eoqg=3D=3D?=
X-Exchange-RoutingPolicyChecked: Tq1jkUMUBFrTNF/SdGA43bdIMOiTMCZD0zTA8xFskng6yuq1LgkuuJS1Hfd1qCRnbIjwPz/LZdl831OPMx+eYerg2M7Vg0iIFjRPc3JR/DtecSyhNhw5p+WL53edVQTOTMuHMk6XASzfsnxiGBUr37gCHuThy5Y2uS5Vnqqh6nIxP49oXssLV6NboCqlmily8tpFZ72UTSdLf+hm4Wc/H4d4eVGlqSGYW7CdrItqC8oFnLUwKHQQxnrjIJ58JQPGj5pAMGp0LyKaasdjtkSQrvQTyfOG/TOUWugB9aMeUUcVcpOGW1Woa05/h4MSkJLtfXxQLqEgaaarD9kZsXfJeQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d71e3c2-88f8-4ab8-0c4d-08deddc727a3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2026 14:34:23.5342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8DFFUlumJu/Qpgu4qEMVqGZIGMnkiy4aAf/UQbr4Vnsdn4aywG2qGOzDYLNlDO0G/rvA39SL9Z9MsDr86E3Hdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7596
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:dkim,intel.com:mid,lists.freedesktop.org:from_smtp,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D1B717324D2

Hi Dave and Sima,

Here goes our i915 fixes for this round.

Thanks,
Rodrigo.

drm-intel-fixes-2026-07-09:
Fix underrun regressions on Panther Lake by reverting the recent
SCL=0 enablement for always-on VRR timing. It also includes a fix
display LT PHY SSC programming and a small set of i915 fixes
addressing NULL pointer dereferences, memory leaks and bound checks.
The following changes since commit 8cdeaa50eae8dad34885515f62559ee83e7e8dda:

  Linux 7.2-rc2 (2026-07-05 14:44:06 -1000)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-fixes-2026-07-09

for you to fetch changes up to 3d04d9f390eeaab4d9e1ed4e9737e3d83581e18b:

  Revert "drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG" (2026-07-06 10:52:42 -0400)

----------------------------------------------------------------
Fix underrun regressions on Panther Lake by reverting the recent
SCL=0 enablement for always-on VRR timing. It also includes a fix
display LT PHY SSC programming and a small set of i915 fixes
addressing NULL pointer dereferences, memory leaks and bound checks.

----------------------------------------------------------------
Ankit Nautiyal (1):
      Revert "drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG"

Jani Nikula (1):
      drm/i915/mst: limit DP MST ESI service loop

Joonas Lahtinen (3):
      drm/i915/gem: Fix NULL deref in I915_CONTEXT_PARAM_SSEU
      drm/i915/gt: Fix NULL deref on sched_engine alloc failure
      drm/i915/gem: Do not leak siblings[] on proto context error

Suraj Kandpal (1):
      drm/i915/ltphy: Fix SSC Enablement bit in PORT_CLOCK_CTL

 drivers/gpu/drm/i915/display/intel_dp.c            |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_lt_phy.c        |  6 +-----
 drivers/gpu/drm/i915/display/intel_psr.c           |  3 ---
 drivers/gpu/drm/i915/gem/i915_gem_context.c        | 24 ++++++++++++++--------
 .../gpu/drm/i915/gt/intel_execlists_submission.c   | 19 +++++++++--------
 5 files changed, 33 insertions(+), 27 deletions(-)
