Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oyoPG6VxRWpeAQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 21:59:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3206F1355
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 21:59:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aQUXfPjo;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80CF310EE0E;
	Wed,  1 Jul 2026 19:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 883CE10E405;
 Wed,  1 Jul 2026 19:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782935968; x=1814471968;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=oqEU3Ts7Wm6e3An7WFojkiZumS7pookC7tGVTEqQH38=;
 b=aQUXfPjoaEENgZoKYLnkmpmK5e4ZbisEsApGybF2X55sDyIXUYoq4gn3
 suWzJ5QO6ATFdQEH9tiTOoliIvKWxeoNGdRBdaSYZyYQDvKFynWFe2QPL
 jvBxq2BP9fyFQLhEgyHZJC119Z3Pn++nztbj92azNyReBv3BC2Of3Inp2
 1apIJB49OrxeYzWKC4p656uNYki/qhMb7yrQu3EZa0plsOQd2SsRwBkwI
 V2LYb19uBmw44ypDOIcBuKSfZlloqYtC+ip5kFb2Hqyu8VdXCT5P6OOxz
 OlbIeYI452cJNnJlkgz0YZBRnU4NpuIBp86CvMTF5jOgLVC8gRgZjktS4 A==;
X-CSE-ConnectionGUID: qMNAOnowTo+T3Q9f//3Myw==
X-CSE-MsgGUID: m/V2vyfySLinuuezBQh5EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="101223694"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="101223694"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 12:59:28 -0700
X-CSE-ConnectionGUID: AUIl0Io2Q1S+HSaU+bg4Rw==
X-CSE-MsgGUID: l4oc2m4QQC+fB5YUOnJ+0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="248209877"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 12:59:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 12:59:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 12:59:27 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 12:59:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p6Ofjpey7HBcdJeyjzjo4pD+GqBlQDM+NoTLVvOZkmrEDNk0lIBr3xannHMB6xq33KFH4zopUHJt20ruXqD9pE5CXurIzhOEThrhY0ekR5g58QclMDsM8L+gtO+6Wj+waibhvP8VZv036LwNl9xYxi/pHqDWWnBXp9TUbiSrIJWYvSGmlR/D4h48LIapUz8XGVXFwG6JEdug+75RJJYfgPEHSHurz09l6GznKas0YFZsC4i9oZTb+jJtvhyZ22b9grmubOKjsM/ydCcUdT6k2v3rOUW/nzsgsQqWXLfscEgbfdrkFGmF+RzCghX4QOu521tpyAVbJsLC5Z2ct3Z04A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PWLzifQ0j1L5aeJxRVaM0ZrOsr8UWAfOBxuEZ5ku2LA=;
 b=A0Ep3tNyXEX0m/gF+e2wLg1HGbcmdsNdgt6emjyeY7iZrR0zuX3Sr9sx1DsnvW5djjqs/PfTbYKM/+RS1Lv6fjRAWSLyHsrqxO2ui5LB3vixxezslCh0lrG49my70Cr0f1+ijTIXnFBlhdT6NaAb8UwbkZF6PQ541LNXdR6YhIVSXt81DgVQutnzSYCspDk/uK094XXLDGZTbjvm/scf4e7Zs6XjXj7A0GsHI0TNG3YVh7On5qRUhyLeR3cbGhmRP/vcitoJJbzHp2ep20MrQP61VeoCHgJ6NODNgWTMdJPbTKOB+84P9cuqnoAzfsKNN3N8l7YMPLfPZh/+P5HYGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by PH7PR11MB6769.namprd11.prod.outlook.com (2603:10b6:510:1af::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 19:59:24 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 19:59:24 +0000
Date: Wed, 1 Jul 2026 15:59:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [RESEND v2 2/8] drm/i915: call
 intel_display_power_runtime_resume() on suspend error path
Message-ID: <akVxl8opQQsPiOSF@intel.com>
References: <cover.1782913901.git.jani.nikula@intel.com>
 <b0c131ed970d16d0147c87ba583abe3a4ea36ed5.1782913901.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b0c131ed970d16d0147c87ba583abe3a4ea36ed5.1782913901.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0161.namprd03.prod.outlook.com
 (2603:10b6:a03:338::16) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|PH7PR11MB6769:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a6bd96c-fcf8-44e1-2fd2-08ded7ab3f28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|11063799006|4143699003|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: zwcmupx3CHGfmJprL9EqJsFPGmxUwerWzP9BvbZVyrBDetYQrQOJlBWedvoe/bDUTQEMiUTsEti/ASVSF+5USqoVcOBz4Wsnx8J72xv9JTC4Ix1NN7XIgb9i3sIGhdTrRBgeecUMpQuDdL0iVBeEkCmO2ebDd2AbZBc2PG1byJI6fF9h4Zdx0nkOfQYMw1uiPsEGs9TkoehYCR0jRfiovNIKZ1fHYZrkxBgm9GfP6PfyhebAcLnDUblwzqswbI9cZtWKlFrTIlIxRwcNFwNMH7bOP8HwPs7zwKinRDA+1tpjUfcGJuJUsFzJ/NUGfNfZjopTiJmVCqXpqNWD+mqPlqMWLDuuQtWGFybKOPSOZY6edmCgWRqm0SRD4azka4H2urn/ScTsmRDCT4bc3OddmG1pvJrVNawn8wI3keMn0NZ9MyN3qNJl0u+ninAzVknNLojhuxsnAiJSWpVh+zMZgDtzOo/pl/YbQlEl/F+T8Y5HvfhCckL0ma0n6MaooU1CLXD7q0dD6tscp8oqyjUYVFG4f2NdrAOld6v72mdlaPNWZFWh7/agQE0hqkcwP1SUXAwbjJBGISvwxTzgx76K18t6uk31NMaJiDjCWsTBSllyYj34ahmRsCIwQNFxvP/dDSU+bK+O0y9IXcqPGi+LrkbpbwKwwO6g7djf0Q4DjqY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?zw5fwSKeu3hUsnHSFFrp5C8yxcv6Rm2NYuiBjOrwRQmru/QYRd5ast2nrl?=
 =?iso-8859-1?Q?Owhx9ie6YAns2suFncqV5eOjNTh29EfpZnwi/Gq5v90PoOrxbcYa5OP65J?=
 =?iso-8859-1?Q?jp7VmZXHuyTqS/7p9veLLGrANkY2IrDH0qCgeUWX8fpdw8otK3TXMHM1AZ?=
 =?iso-8859-1?Q?tdFN/Htxd1aaxOqusAXkWMxNDcLLq0LazfivMsIWsOIakWt5z9BQbKcmrI?=
 =?iso-8859-1?Q?T1aPEjAr2FC5rBtqgZO3XRjQ+/3i47mjRX/sCXqWGAu0UcYY8isxCM1wN9?=
 =?iso-8859-1?Q?Cp5yOQw0tHb27NecODfrAnVBksUcNGog9P12o9ask8FjLJ9uwtz0AIRkR5?=
 =?iso-8859-1?Q?IyMsgKp/j1ZvbVH4mRTpElQjCYZzpx6+Gm+O+0Yc9VwOxOG0X4G4fH/Se0?=
 =?iso-8859-1?Q?fz+Go7TCog53KAiFBr5lG/dcNpgOthI5Bd7asEeYBVE5fIu1nWtGqDeVWv?=
 =?iso-8859-1?Q?Pzf7A/NNEu2OsAkGxqgluJoygI9pGn+NreM02ZFfJK7a/qV+T4fXdmtD3M?=
 =?iso-8859-1?Q?Fli4FIZ61L8d0X5XHpaJf92S9Yi7TdrBc2EcKe69S16SbnbRje5ZGvuRhe?=
 =?iso-8859-1?Q?Oq3dte2q+ciJNee7yyLHj/7VHfG5y0wr6bcP3q79z8WuIzY1TxeQbVNblh?=
 =?iso-8859-1?Q?JK/wUnOjreLttmbNL+cnESnfj4bNJT6zt/nFxjKMw2lRJ/DM9rkP25RgL6?=
 =?iso-8859-1?Q?2qAq0yjsMaPPJQrkdBEaAfTiJ34WqadDHGmIfyRGHbIRMfzKkWykjvrFSp?=
 =?iso-8859-1?Q?0m/nNQXDlBsRM/8TVQ+kemYhNOPTY+aVEAVZmPyk7e4N9erk5eMzIqDmZy?=
 =?iso-8859-1?Q?5LkV731ZiQlzE1R5P04QaJkzrTWv81krbkob+04lt6EhI+hGrj2krUUViB?=
 =?iso-8859-1?Q?utEQDvWqc98H3PXP25MmXKEZ0tC3mSeNA7htdmzEX/W8P2lIpJR/9C+bX9?=
 =?iso-8859-1?Q?fFeq88tlZiEGm1nn8bqlH3yahWEK6Xubyrn6xHkG+3v2JH5c1zodmdfzI8?=
 =?iso-8859-1?Q?kHUt+DPY50GeVvaBNgOS0iX7dD2lGgnzwNceLdt7LYpqH+IOjg9rMTrlwq?=
 =?iso-8859-1?Q?mmp+MTiTKXRlHVyj6EikF2T4WY6mTw9suqYkr9VzsA+VDRYrQGfdcLYyUi?=
 =?iso-8859-1?Q?dUslni4Q34jBB3N721t/q0FcbKgR0Rdypcax5v08v4ENg2QytKxvwmvbHi?=
 =?iso-8859-1?Q?9kKM8Ed52DtbbpVQMOgcdxq3AxWwg98ZjYOkx3hnBcFC1lViM5OEUYPyRq?=
 =?iso-8859-1?Q?cWCt0pIn/OsAlS/gU7HCpQbtCBF++K6JV8ZPiYZrgr2OeDbzP+8b0pHI3N?=
 =?iso-8859-1?Q?kNI+/zZCVTwKKZJrIBQu+qOVEWucKVCnndMTDtD0Qp34GFlsAz3D6PuzFT?=
 =?iso-8859-1?Q?DwzWYFUtW/eQISsIPmMTGPXjXv66Jkr3H0c0Ao1Kt5LxC++7UcWz+U5MKg?=
 =?iso-8859-1?Q?2tV11Q0VOAE/bZBz7o3iwy2IJip1VCZRL92HWOg55NlKjRQiYT3Kvx4swN?=
 =?iso-8859-1?Q?yfCHr5T9bfDskV5Ih1cwB1R8WUKrDCilmIaAfvcjQIF14qyWARHx4fk4BW?=
 =?iso-8859-1?Q?qKExgeYgxYJnK9F6bDmD83yX6oeEooRW/Ut88cnzLFtpJe2VSP1+rEkeiY?=
 =?iso-8859-1?Q?0Y1gaj/etEqkF71Qb4HsDUpVV74JTfgxpWt1DQhI5+rUysPvYueO1uKFC6?=
 =?iso-8859-1?Q?rVBjFKtmIT4bKWMDpH2kqZrv+4KazaQNlql/cXnY87n78Zx2CG7X9yYKvj?=
 =?iso-8859-1?Q?VAU/wdcrqdN53bOLqn1uv7JEGY0GHw8s/t1WRauEHjTI3EOWuTS6e7uCBY?=
 =?iso-8859-1?Q?/GM7EIraMQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: NwRIlPKWlooyFEIJ1HHMs1sXjORlxl+nNjWHKy7MPKxai/UfNWehK5ZrsBOuP5+KY9RZc2+gmIPgOP6jIRSVrJyNzWn0UT0uvyq175ey16nF54Q2xhF+lNd1tEJ/4I4UvXg4I/f2R0/n5kBKjz8LH4vGYYrMSM9AO2FkwXs5SdzvH9uRDV63BeALXeJ7HNOo4LaPt63nmbYJ58CAVE5cpwWLrVse5SOnKmZ8TD+E5y34r3YidVHuBAq/s/wn1PqnYlihCZmcIGd7XhqpJRf/XuDUeiszz3Vtxmpd5CIiYCyGiMUsJf+uVLtFDeigWhXBdM5yqv3YB3dYArBdUiQ6IA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a6bd96c-fcf8-44e1-2fd2-08ded7ab3f28
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 19:59:23.6185 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WtAa0KBMl+B4YIBHi+mSpNDIELb/W/OKEEvttXRXE2Y69xoflGFhAbUnsnVe+fdCZULUvp7aNArPG58Cqu+obA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6769
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E3206F1355

On Wed, Jul 01, 2026 at 04:53:00PM +0300, Jani Nikula wrote:
> The vlv_suspend_complete() error path fails to call
> intel_display_power_runtime_resume(). Fix it.
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c9ce2b05b787..10427f8f5699 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1523,6 +1523,8 @@ static int i915_pm_runtime_suspend(struct device *kdev)
>  		drm_err(&dev_priv->drm,
>  			"Runtime suspend failed, disabling it (%d)\n", ret);
>  
> +		intel_display_power_runtime_resume(display);
> +


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  		for_each_gt(gt, dev_priv, i)
>  			intel_uncore_runtime_resume(gt->uncore);
>  
> -- 
> 2.47.3
> 
