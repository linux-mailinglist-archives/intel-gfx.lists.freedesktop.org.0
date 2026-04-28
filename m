Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNtbBc+t8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B744D48528D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F27B10EBBB;
	Tue, 28 Apr 2026 12:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IIJh4C22";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87AF10EBBA;
 Tue, 28 Apr 2026 12:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380811; x=1808916811;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=gN01Sb1/aQfJxHkcOK0eICh1QrqwYL2VaSD3FnS+k+k=;
 b=IIJh4C22elnxSz19QFUblgVZ02l8u6tjlsKHZcbY0fWgRs9c3VEIPDxT
 +KCuycL0auI0FU+HvZd1XsLwyK/F3cgltfjeXMJbZ+mEq4uVUNYcqifIj
 wv9RuM8VrscPOyXV1JX5lefqvF+AyjPZMfwOSZhgOaaAiGFX08wYdQp9L
 IDoGJ+Kgh3dewv2dYYvTc/7Lvhl+yvxzREDIV+ImJWH2w9JijSfDaVGit
 O8E3pld0FwdGvsaJtO+XO02ag8M2xuZMhbKbtbHf2IaJf0VM5Va/2HxuE
 uwwtUAegvstskQL4ssIurDISD5ZXxoSx4HUarX5rWhSs4FFyCyJKhiBrM A==;
X-CSE-ConnectionGUID: ik+g02z1SPSCIJn9xZUAHQ==
X-CSE-MsgGUID: QMuBQwGYQjWERbHhpV+9pA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203091"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203091"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:31 -0700
X-CSE-ConnectionGUID: JYbCNzLWSnedpUKA8oLN3g==
X-CSE-MsgGUID: PCO6zit6SyCBVxXmWaArSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244109"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:30 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=avg9PKkmbpbdKpwU3jas8rH6HyfrIGmvI38nM2OQHJCtZd2faYgjjnpF4iR8RE6XNWdooyJHh8awx56zExRFkMeZNs3h1d4ew8A2Xx+7PRERiktjC45kB9qxsF/pK3GEh04LmTmXpaNUt+d5I8grubjrEOZym3mEeUFx+imurIKa0IY8Rlvop/zfPF2O0wmmksyAd/s+Xiq5jdnd06xaqHToTNDNMXj8mBUG2iteUyh6Ys6koO69NMvXskkmuyWH1ZnS2b/4hxs+vnctFZ+9EfjhAjOvrhpQWkA//JbZDPvnwu9/SRGiK2VQd1SCLhho2NxGgZvfTxmeBcgp60JBMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ECcoYtJIU9+Gn8CMVTFCiO4Qu45zx+DvFG0IsCvomc=;
 b=e2zBv+1qKBthTtU0dJxml3f7d3IOtM/Q+Hy8BaxvAVmztY3gwR3PRwMKszhao3ay26mLCio57x1ullNfSsa3csBca2c1fFLgZYIGNI1wqXPDAVpilaXT2MpkVOjqEV+tgltQowewz+EHmKY2J+GsXTj3qKxgxkKzQ/LqqK4mOLn/rY49ZS1g3DE5/QU+ss0UzqNadYpou8AtImM1i/99NMvxOY5c+wbEWDt9Cx1KV1KagwJ92UUxOJMDecachDOggrlfjoefKSa/mULQI+pNPhjIrQEnkPra0OmmdeJu50BmfIqOhHpRyCsWsi7npvnsTie9o2o11omiLu1yQLqnCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 026/108] drm/i915/dp_link_training: Document DP link recovery
 logic
Date: Tue, 28 Apr 2026 15:51:07 +0300
Message-ID: <20260428125233.1664668-27-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 19d2632f-3280-4dc9-2461-08dea52521b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: q67XdZ4ar4rJC/eIgC9kNU50WK9Lu0TP0O9jMFyFySb1PHRkjuoMwb+l/W5DGsgRolq04qyb8C+Ma4OYOqjmMs31NM0WtlKGl2CUwowpP6/Y8q+l5DY4VoicHw/qEdKBjAsaxT5yVoxlSvi5YTmyIkIMEPp4A0gMoFidK6BBI8KrkfXh+w/BK0WY0lDzf2Xn4lMjHQijwMydtj64of+czfSmzBP3OFDSFXnJCMPy+ybkrZoZExRXIkHTOYwlbE/hj/QjOH+HrL+JPnAICVLM+vYXeEcOAebY/CgiDOYSifyG/iAaHji060hDL5VQgWLPl6AAOmB3YVO1JcM0QGeGNLw0Cvczu/L8Qk9oyBy/Tq5nWb2fjkth/mWZvx+rakS3gGgkj0ky8f46JZlvItDXIUzD9PI2bOsdeK6j5kLhAGq7zQlLnlbibctT9YeHhPsCAoZfbkXSDdsy/3uJYXaCdPwm0xVWaeWVn20L8aJ+dM2I8sl2XZx0ufv36cbL0dZSCjSHrGfxC5VPa1FWi0XRhKdjdkxtdJO87fxpc80qZmlaT3A28iDnMFiG8IhCew68Jf0HjQlMvL/lC0WpKAC8kkH/N1AKgXvUfcldAeciCW8AFKE6nC/mx/Ofz447e55t+ABWQtywuUv7Vm94datCBLDws+hTAN2gAdOps26HmAUwaTBkyNEqKigkVjfe5zU3u5HbH0sJ/iL7hbs3XUdQc/pkdScGhrVyefhlMD47IyI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GxFrI85P8mnDkxcAL0LQYiANn0XQ/ikidQK9FxwF+7vLktxSNzDy8SVl/gyC?=
 =?us-ascii?Q?1aJFAC2e4v4yfpxBzVNZhXnKQc37ut0RoccPOh2JFw7myXtcCi4pbrp1FKRy?=
 =?us-ascii?Q?jmrmhFOeNLqrEut9QMNnj3GLZW5zsiiPL0pvCE+bvW15oojCH6f4IDgYMZbG?=
 =?us-ascii?Q?96rArqA2NQwMfI6LoTwFtTwhTHDOA9ZO37bR1/6kr/JUc6+uUKbZednkJlfd?=
 =?us-ascii?Q?zoUVWLCS4/8ls2YSosqkA32zAgDNpEC0tRdOmyrDi4n3YdfgxBGFk0s6+L9Y?=
 =?us-ascii?Q?8XGRy394b8rjaVMSIO51LG6nj8BQLU3ypTQFBZ8OHeJdhS+THaNSvl8k3wkv?=
 =?us-ascii?Q?UhIOefuD/Z7Q79osNjkMQUYRA4VnQiC+sq2VSwS15MSye5OzrhylCxGk5bEZ?=
 =?us-ascii?Q?zCeCDJgxcNqa1Dpf2O6fFPgX/bzWs6UxGNYHeehkWXf675xaEghoteron15H?=
 =?us-ascii?Q?DHZ5id2Dd6nZuvacaTigOIzcjqhlbbqDzI/iKR9obYPUviQ2E58vKew0dLbG?=
 =?us-ascii?Q?sVBexByeJMwQLdmsRsRVxpObBSClLP5PDGgd3aUTBEKVnal9ZBlKQ56NFlbn?=
 =?us-ascii?Q?tjD9c4n9saESCKvwdiToJrM08t3GGkeYpxGQ0/XGobw4e71E/10MF8LBUT0r?=
 =?us-ascii?Q?6zCqU26uqiw/Ufwb4E0HP4gmy+LgXTQAdriwJ0tiHmH+NxcvIEXAS60ysXcG?=
 =?us-ascii?Q?7MIcRoXJ8renpON6St+T3DEqqREOiwi9w3MUWPIgLI7fH34FIrThZ9JtAYtO?=
 =?us-ascii?Q?MMvrUBOL0IAM9fBZS52OffiuwQdnl24EOlS7iFvB7oGUh2ySVR6vQkRowOoC?=
 =?us-ascii?Q?VyX8QOn+PX2FIg+vQNiic+m3HzOW4KTjz0OTBF3uxOzTZurNOC3Cf5UhNpCx?=
 =?us-ascii?Q?0tN/EduLWhmajvcDWVtHWi3nN/0c1Rhc3JpPaFTMCPjGwjkz/jRLNDhm6aH9?=
 =?us-ascii?Q?dv5jeiG0mQH7mrpWPoYrk4418r6M/Gvv+6AIC6oeLXkbncoOIcGt/2Nb/Oo8?=
 =?us-ascii?Q?lAsTnd1qqDtp3tD68M/csLIPzoTcdUddw2FxwP6+HjV12GLA5xf8TGOkVwqu?=
 =?us-ascii?Q?RSZBDfFmkshPdq6uQYAiixXARrf69lTkgwX5UwBKDr9pihggEWrxH709SCks?=
 =?us-ascii?Q?3/DmUNEQjLxvdFDTzQYVGTECeqLD3vvNi6zPVx2cr4AP0gSyjOJ3R2tWgNgt?=
 =?us-ascii?Q?Zdnmi05iLZ1ToLMs0rXHgTVNw4vVfuXcJhZRdZZ/i+xWioOE44RFfxJDqgWe?=
 =?us-ascii?Q?13sg77ZgHh7kw1nnqYAr73AVzP2HGjXLOTC80bug0Vs/NapR+cpPgIHtpqQX?=
 =?us-ascii?Q?W7Ergtvf/sbPQ9x8Dhr072v0PPinyIrzZbk2OykmwSD5+5KMvHKoye0E/T6J?=
 =?us-ascii?Q?8pInh+tGvh9RWGoagOXa1fK4r2vzs6ujczfZ8l23I2rwUx2tp6H+d9gHm0dP?=
 =?us-ascii?Q?akISZvaQAc3PMfawMdpSbrXubl3GvxRowWzzrvDSlpgULtdscjClIjJAiP0B?=
 =?us-ascii?Q?gb9ll++xGuCE9wOYLcwvqwB4cLij15q+5Btd/cP/gGKZlZdYqQ5Nj16k3OPB?=
 =?us-ascii?Q?1e6syt8DzB5QH0Ym4mnClT6e4BW/KUpL+Vt/6sQCVmQu+iSD79sFx3ZAny3u?=
 =?us-ascii?Q?jAf3auoLtNJB7yx0rg8th4of31DpcXln55lll53qlogbqRXkP4rlBBrSVNv5?=
 =?us-ascii?Q?zp7gZWLZUIJstbzBnYGAiE1AxX+gF72hMXW/bdfAj4hWnWN/Y1bEe93pKdpV?=
 =?us-ascii?Q?R/+WOij/RQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: dqWhuwEC4lsxFO9RtTcN2VCUG3KEc0kb5FdLlGkgttarn6YmE6c1TZoFnUAdJVb3nPCX3HvFHmktE5V+4ecoVYcCG6o1FhKOQ2x4sAJ2NHHmhAmgcwmUa1XXnlA3/AUbVF0M2Y8TK7suOXF+ckHA2DhR+dRD/eINhFGipoR6Hib/dnPdxxsXxQ0QM2Q6JfuypjEJJXH1C/V2ENRJZVltpuvs7R4yqPazt1Tqn/wh7qn1wy+y/5MW4tYfc5Do5C51ocusHQBUQHaMVs60f8ygarg4Id8HMQQnX5D3V9Zh7EzhO8kSkKepvBRzHq4T7MfK9Vmf03+tFc9UwLZ/dp6GvA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d2632f-3280-4dc9-2461-08dea52521b9
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:23.4430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j0E9axl1aViQRZUWApujYTmg3OCKbJOlgF+z0lYzXYO9ePOWquSylbv2MUAUvhqKdqymTZoZegeq8bDErCD8AA==
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
X-Rspamd-Queue-Id: B744D48528D
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

Add kernel-doc documentation describing the Intel DP link training
recovery state machine and the sequence of automatic retraining,
fallback selection, and userspace notification.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 Documentation/gpu/i915.rst                    |   9 +
 .../drm/i915/display/intel_dp_link_training.c | 241 ++++++++++++++++++
 2 files changed, 250 insertions(+)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index eba09c3ddce42..34556b2104aa5 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -141,6 +141,15 @@ Hotplug
 .. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
    :internal:
 
+DisplayPort Link Training
+-------------------------
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_training.c
+   :doc: DisplayPort link training
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_training.c
+   :internal:
+
 High Definition Audio
 ---------------------
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 35f160761e182..810227328d002 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -41,6 +41,246 @@
 #include "intel_panel.h"
 #include "intel_psr.h"
 
+/**
+ * DOC: DisplayPort link training
+ *
+ * This documents the Intel DisplayPort link training implementation and
+ * its internal interfaces, with a current focus on link recovery.
+ *
+ * Documentation of the full link training procedure is not yet included.
+ *
+ * The Intel DP link recovery logic governs how the driver reacts to link
+ * training (LT) failures and to links that degrade asynchronously after a
+ * previously successful training. Recovery is first attempted via
+ * automatic retraining (autoretrain) and, when that is no longer possible,
+ * by selecting fallback link configurations and notifying userspace to
+ * recover the link via a modeset.
+ *
+ * Recovery sequence and userspace notification:
+ *   After the first link training failure following initialization or a
+ *   previously successful training, recovery is first attempted by the
+ *   driver via automatic retraining, without userspace involvement. During
+ *   this phase, a given link configuration is attempted twice before being
+ *   abandoned: after the initial link training failure, an automatic
+ *   retraining modeset is performed with the same link parameters,
+ *   constituting the second attempt.
+ *
+ *   Once automatic retraining is no longer possible, recovery is delegated
+ *   to userspace, which must select a new modeset configuration, as the
+ *   kernel must not do so. From this point onwards, each link configuration
+ *   may be attempted only once as userspace iterates through alternative
+ *   configurations. A successful link training restores the automatic
+ *   retraining model for subsequent failures.
+ *
+ *   The failure of the last automatic retraining attempt is reported to
+ *   userspace, and from that point onward the driver notifies userspace of
+ *   each subsequent failure. This allows userspace to both initiate
+ *   recovery via modesets and observe the outcome of those recovery
+ *   attempts, even when no further fallback configurations remain.
+ *
+ *   Link training failures are always reported to userspace, even when they
+ *   result from a kernel-internal modeset. Such modesets only re-apply the
+ *   existing userspace-provided state and must not modify it. A failure
+ *   triggered by such a modeset is therefore treated the same as a link
+ *   degradation after a previously successful training, and recovery is
+ *   handled by userspace in place of the kernel caller.
+ *
+ * Contexts:
+ *   The following execution contexts (A/B/C) describe how the different
+ *   recovery states are reached but are not themselves implementation
+ *   states. The actual state machine is defined by &enum
+ *   intel_dp_link_training_recovery_state.
+ *
+ *   A. Modeset-triggered link training:
+ *
+ *     Triggered by:
+ *       - link training during a modeset, or
+ *       - via the "i915_dp_force_link_training_failure" debugfs entry,
+ *         forcing this path by emulating a link training failure.
+ *
+ *     Transitions:
+ *       - A1 Link training succeeds.
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_IDLE.
+ *
+ *       - A2 First link training fails after initialization or a previously
+ *         successful training.
+ *
+ *         An automatic retraining attempt is scheduled with the same link
+ *         parameters with which the link training failed.
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING.
+ *
+ *       - A3 Link training fails again after A2, or fails when automatic
+ *         retraining is already disabled.
+ *
+ *         Through fallback selection, the driver attempts to restrict the
+ *         allowed link configurations for subsequent modesets. This may
+ *         be done either by lowering global limits (rate/lane caps), or by
+ *         disabling only the currently failing configuration while leaving
+ *         all other configurations allowed, even if they use higher rate or
+ *         lane count.
+ *
+ *         (The current implementation may still apply parameter capping as
+ *         a coarse fallback selection mechanism. This is transitional and is
+ *         expected to be replaced by a scheme that disables only the failing
+ *         configuration, rather than removing configurations that have not
+ *         been observed to fail and may still train successfully.)
+ *
+ *         This case may repeat in a loop:
+ *             %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED ->
+ *             %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *         via repeated A3a -> A3a transitions until the configuration fallback
+ *         space is exhausted, reaching the A3b terminal case.
+ *
+ *         - A3a Fallback selection succeeds.
+ *
+ *           Userspace is notified to retry the modeset.
+ *
+ *           State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED.
+ *
+ *         - A3b Fallback selection fails.
+ *
+ *           Userspace is notified of the failure and may continue recovery
+ *           by retrying the modeset with the remaining allowed link
+ *           configuration.
+ *
+ *           State -> %INTEL_DP_LINK_RECOVERY_NO_FALLBACK.
+ *
+ *   B. Automatic retraining:
+ *
+ *     Triggered by:
+ *       - after a failed link training attempt, or
+ *       - after a successful link training followed by asynchronous link
+ *         degradation, or
+ *       - via the "i915_dp_force_link_retrain" debugfs entry, which may
+ *         bypass normal gating and force this path.
+ *
+ *     Transitions:
+ *       - B1 Autoretrain modeset succeeds and link training succeeds.
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_IDLE.
+ *
+ *       - B2 Autoretrain modeset succeeds but link training fails.
+ *
+ *         - B2a The current state is %INTEL_DP_LINK_RECOVERY_IDLE.
+ *
+ *           This corresponds to a first failure in a new failure
+ *           sequence and is handled as in A2: an automatic retraining
+ *           attempt is scheduled with the same link parameters.
+ *
+ *           State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING.
+ *
+ *         - B2b The current state is %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING.
+ *
+ *           In non-regular (debug-forced) scenarios this may also be
+ *           reached from
+ *           %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED or
+ *           %INTEL_DP_LINK_RECOVERY_NO_FALLBACK, effectively behaving
+ *           like a userspace-driven recovery attempt.
+ *
+ *           The failure is handled as in A3, performing fallback
+ *           selection and transitioning according to A3a or A3b.
+ *
+ *       - B3 Link retraining cannot be started because its modeset atomic
+ *         check fails.
+ *
+ *         The modeset may fail, for example, due to external conditions such
+ *         as changed shared link bandwidth, which can make previously valid
+ *         modeset parameters no longer acceptable.
+ *
+ *         In this case, automatic retraining is disabled without selecting
+ *         a fallback configuration. The driver hands recovery over to
+ *         userspace without modifying the allowed configuration set, so a
+ *         subsequent userspace modeset will retry with the current link
+ *         configuration. Userspace is in a better position to select new
+ *         modeset parameters (e.g. video mode or enabled outputs) that
+ *         satisfy the updated constraints, as the driver is only allowed
+ *         to retry the modeset with the existing userspace-provided modeset
+ *         configuration.
+ *
+ *         This policy preserves the normal retry model, where a given link
+ *         configuration is attempted twice in the automatic retraining
+ *         flow before being abandoned: after a first link training failure,
+ *         an automatic retraining modeset is performed with the same link
+ *         parameters, and if its atomic check passes, the link training
+ *         itself may either succeed or fail, constituting the second
+ *         attempt. In this case, however, the retry modeset's atomic check
+ *         failed, so no second link training attempt with those parameters
+ *         was performed, and selecting a fallback would cause that
+ *         configuration to be tried only once rather than twice.
+ *
+ *   C. State reset:
+ *
+ *     Triggered by:
+ *       - sink capability changes,
+ *       - sink disconnect/reconnect,
+ *       - system suspend/resume or power transitions where HPD
+ *         handling may have been suppressed, or
+ *       - successful link training.
+ *
+ *     Transitions:
+ *       - The recovery state is reset from any of the recovery states
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_IDLE.
+ *
+ *         After reset, the driver may re-check link status and schedule
+ *         retraining if the link is found to remain degraded.
+ *
+ * State transition summary:
+ *   - From %INTEL_DP_LINK_RECOVERY_IDLE
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING
+ *
+ *       - In contexts: A2, B2a
+ *       - Action: queue autoretrain work
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *       - In context: B3
+ *       - Action: disable automatic retraining, notify userspace
+ *
+ *   - From %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *       - In contexts: A3a, B2b
+ *       - Action: disable automatic retraining, select fallback
+ *         configurations, notify userspace
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *       - In contexts: A3b, B2b
+ *       - Action: disable automatic retraining, notify userspace
+ *
+ *   - From %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *       - In contexts: A3a, B2b
+ *       - Action: select fallback configurations, notify userspace
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *       - In contexts: A3b, B2b
+ *       - Action: notify userspace
+ *
+ *   - From %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *       - In contexts: A3b
+ *       - Action: notify userspace
+ *
+ *   - From any state
+ *
+ *     - To %INTEL_DP_LINK_RECOVERY_IDLE
+ *
+ *       - In contexts: C
+ *       - Action: no action
+ */
+
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
 #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
 					(_intel_dp)->attached_connector->base.name, \
@@ -95,6 +335,7 @@
  * logic.
  *
  * See also:
+ *   - DOC: DisplayPort link training
  *   - link_recovery_autoretrain_pending()
  *   - link_recovery_autoretrain_allowed()
  *   - link_recovery_has_no_fallback()
-- 
2.49.1

