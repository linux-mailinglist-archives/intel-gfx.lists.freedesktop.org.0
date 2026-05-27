Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MIJOBDH4FmrUywcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:57:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9F35E56A0
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 15:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCCCA10E809;
	Wed, 27 May 2026 13:57:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GyjJRxRy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E82AA10E7F5;
 Wed, 27 May 2026 13:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779890222; x=1811426222;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=0fH/I6Ciwn7XgkTluuXNXC+escdA899kTun2yERBkD0=;
 b=GyjJRxRyc0/lWMq/PDETMvwQVHVoYyfeJ2i5IDxOKXK4+bAzVLd9Nrzo
 q5OfR+HxyBAs8CPx0yTc3q29/1Qm6rPIB5TFKty9AUa3Zm0BZV8ar83cT
 NBMhFWCSjmrM7DpqEAy4ZHDzO7nl24dG6mxpU5nKQptOL1wnUU+45g2w0
 XuAaNl2GPrkEp5QL1WxLbyYG/UWY2+f1P4wzy//Q52unwSQaT9GjfV/jB
 eQq9FnWbpRWoSk34UYWOfjPDRzvSIuVXDaK7bbHi5F7UhY6mIKKVj8zV/
 pfdxi90ccSJVR+hDWUN0JWDoFxqTyMcamG7O2Ozm4SeSRiDMonD9uoZG3 A==;
X-CSE-ConnectionGUID: GQ73BO2xQDGoRLtVTG1ALA==
X-CSE-MsgGUID: fZpTxTxGQzm9sFuX+qeYoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="68247087"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="68247087"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:56:53 -0700
X-CSE-ConnectionGUID: bV5udxkqQky25lhb81SCbg==
X-CSE-MsgGUID: o36bmQlDR5Gq51BxBTvXKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="266134689"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 06:56:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 06:56:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 06:56:52 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 06:56:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aEU8SoF9GVUUrBUCgTv/0yk3tYw+foBTlYd8wj/3evNpN1l9xSATBHQGK4M7eovvdiCw4/M3yzNRFT0o7rj3UC+QocIJlp48x6u9726q4TxggP4A4csTvYqG9DeN+AA74oVSd/YcLS1spmYmfnpvYBGsfKMYg1+k1MX/j+TQGda1oE12awmzvVrcHKydNcw8K8KocXElAGVutL9451SQl6WJBsPBOElSfNKHKUafXdwIWAFFvbikzixrUHUiUNYXLmStgXTS7Qu74cfaFD6toPAx0qAa08hwWYU2LWuhv9E4ss+qhG28TSyBuFXb35JrAFzyERTh/mARUrUMCFKm/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjf3umyk6BNjvXesymkvdGvso/ID/N3xZu+gOLn7asM=;
 b=ruKjRMSYFoPK3cm+MkMiwxbqg7oOuzq3Qit7g8809BupvGHq5xQUMkeSasxGHGm2HJj6Ae7PQ3e15tcmRNB8uGGDL/WvamAAR89flQ/A9Kyj1nSuqzClq344N2GblmIVCsGYG5LS/+2cus+/7bN8srDO0ssTu3ygTKdgcGe1Vg/PajBnb0qcq/j2KO4snvN3viwluIBfKX4jIz3Qq8VyWGINpHqwaozu5USn0c5fJ2qGgqwoJ4/semuG8qe+DqzJDQYZ0KOHTj6i1UeHf5rqO/zNUd+r0xoZkxXnz9+LHY8dQXmu9sqRUP9ec6t2AudnwMvWoZTElYdBn1lPKIdeVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Wed, 27 May
 2026 13:56:50 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 13:56:49 +0000
Date: Wed, 27 May 2026 16:56:43 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: rename intel_runtime_{suspend,resume} to
 i915_pm_runtime_{suspend,resume}
Message-ID: <ahb4G0TjUWpbVQdX@ideak-desk.lan>
References: <cover.1779876087.git.jani.nikula@intel.com>
 <fc5b796a3fd764a64b257edfdbe08e54b690efbc.1779876087.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fc5b796a3fd764a64b257edfdbe08e54b690efbc.1779876087.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023988.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::375) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CO1PR11MB5059:EE_
X-MS-Office365-Filtering-Correlation-Id: 04ed80e1-abc4-4883-ba29-08debbf7cc48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|4143699003|11063799006|22082099003|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info: ne3AFn1v5eQV4jH5GXBdf6IUl2VpOI/RPEGMrHR+TkpTC0wPi5mcUf5rTsSHiToDp9qK28Qwu/YETsKLIV9vujNosKJy+SJV6KLM918U1Komh79WP1TT/MUialeLJkUM8VfeVhjmOC/VWpNibGoOpE3AP7kvnYYBSWa/0s8HY7mPiEPvLmF4Ck1ArjM8jBcWnpo/Rhqr8LBia/I5/kwt6FYb11YTSzBjGZekAdQCiEHBu6DNbSrixwhTLP2aun6aH8iJopY9kCC2e6ENY6Ip5GRQDWWmZTwPQemiTZgOqGbqYlPQJWiV/aRVvAQ4FNzoNP2LkajKJalaNiQs+c+f196Jxdigx/LuDmrzfZ1XMd6nENI6v7smwsMZW0qBFmC8qdBXyISJgzQkpLjM/mCI3tkocpry82kSq58+8UJdzNtKxKZVbvfgZIRImrJb10yX8sA4+ucHMuKoBwRCNqoNm6uY0rvMG8NT/0s3+WHu0FTjwe12R3B/6SsWE1kcIl8V6j6rCX/u5Oj7Zvl/Yks2c9N2TcjEXPsED0JcKpDkM/7AIw7zIwf3LcuDVyCMCA4fJuryoN+wPfUcbDXSaup0faB5z6mgE3pAvs8ihY5BwK8I87qzpgQ+poYA+Zp2uCqBJ5cSXZEejTRv5TLYdlmIFbvMONBmw3YAGk16ZWBpCkb03bnCZA/x+PWHnqkr+B1v
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(4143699003)(11063799006)(22082099003)(18002099003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GThdcAd7yzoOw3AdpANoXbTQrjjqq1Kum3DAJnTMbyjiPIGKGUmmfbmnkW+c?=
 =?us-ascii?Q?zbSWLDr5R/RJSmrOWztQEUWChQ2ZOMwgdEjxOr0HBBzc9JalMXqz39CS80C2?=
 =?us-ascii?Q?5oAp35FIGBv2zfdgGYCRAaUjnb93vLbegjM3lQYj71Qw8kwdbXPaWkZ5SVgD?=
 =?us-ascii?Q?POnQxbzug6Z1hkgAWUcnMJUNFPKu08pm5gxdDAfYYRp4CSsvSzvzjety98gz?=
 =?us-ascii?Q?gZMRpP1b4oFJKQFXuIXOOtP95SLVYcFzmh+DO66Zd3gzSv0PkgsYcAxH0itz?=
 =?us-ascii?Q?d5GmQJqwhc1vdW+covzmBDAiPwASJIAh+HwED2i0GVObb1mywaJNhq/zJ+jE?=
 =?us-ascii?Q?ndRJcxdyVv8HHHPxGmCN1mI7fV7/gvcU8kR3fcsmKaFF4rigO5UOhdONOFEv?=
 =?us-ascii?Q?qpHSkgTiy2+MV23vwfnVuiJDwf1EJUmk2y7PlGCreoBjbwxynkR4yCjcl/uu?=
 =?us-ascii?Q?v1AGP/cTAehfDs5U+7t1DT0hy6/O/BuhcYkXV0C0rbBLjz7WgLAqVCgDHCAN?=
 =?us-ascii?Q?AVsdhj3yknn4Ei77E55VEciEXvWN0EKR/Ozw/Sg+0J1MKDf9ael+gIOhCXZL?=
 =?us-ascii?Q?0BfPgCA5o8sUs6ThwkY2byrthkqm1gBUzwOWNFWp24HHtBQBz/WfgH8v8X46?=
 =?us-ascii?Q?xtZPOv610RB5a8s6klnelW4iLhuBaAZPiKIkkS0tbGWNDH0HfPJI+yb0jkWF?=
 =?us-ascii?Q?gGlRzbA61nyeOo5FKVPcACRBd6LdVZcMPmvDI4RAz5e8RSNUQpyFhuPlgQmW?=
 =?us-ascii?Q?53qIcPcN4IWlT1BeoueX8obK2jz471Yka0dg1Um38kAV7yi+Txde7GVE2mwX?=
 =?us-ascii?Q?0wbtrqjZlmLuFOhqxfpbPUottt/3vMeSlWIokUUysCRLIvw9GJ9e1ecFImJu?=
 =?us-ascii?Q?fStcK8xFRjSnTJeYi0+hccWn6RwFSX6kGzztxEr2htDE3glg/kFsP8oCRWwp?=
 =?us-ascii?Q?BjdGMmp/X1357JrEJy3+OieruuS3+goKK5FMgzyiEznP3nnMyU4X2bDy86mO?=
 =?us-ascii?Q?874K+qOGfTcwVfIHSZ+T7a4ctSvbNMuhCo3zjSet5jXNu6mcEhwc3SGzLlFS?=
 =?us-ascii?Q?Lc+npgxtOn4PoFCYluPIQTtVQblUcHpx/jiJTl+LEDZ8MwAnpJsC1USn0Swh?=
 =?us-ascii?Q?EL39GEyZNdLdmALjOqFgB6BfNKby4of9rX6WBskjHxuIazQevSQE1TTWeReN?=
 =?us-ascii?Q?7rNL5BC7WRtEgcgWECVmMLJ0w1WQ61awUP07auLDBtkL3vK2aXzWmTPtXpMg?=
 =?us-ascii?Q?5HXl9NOO7pYho31jugWBYmQETJrI/UAwVvLXH7xYITrF9sFD34R1m87Xm/Mg?=
 =?us-ascii?Q?Px6+FfGnIINHmn/u8T1IMqbup3wT3oagmRHXsnH+Pn5o1/w0dYUynVxNPdWU?=
 =?us-ascii?Q?26C4Y1s+62TF6UCfx8VP0E49BL+lulFmE0WIMuvGViZ4I0ibTL1VfsjLwWl2?=
 =?us-ascii?Q?2knQah5GXlKU2hzpML068vokfVRXzcp3QtZ2yjJ7Rgk4AoUf/CzOgEUmbHnd?=
 =?us-ascii?Q?7lKwl3iS7o78jG2wuT1qrgIUMWnJdZYRrV2i4llQJALtyhkpO0JpwmQSUul/?=
 =?us-ascii?Q?MQliG3au29fxqKykTdjuX6QLDvdoWekHnUx56PtXcPadWNDbhLdIlqS7NSjk?=
 =?us-ascii?Q?V0oW7ZOsp+y11CQJT553oSlxkmmBK6LhxOHlayPnpAYH2E+3WJ55m+WzrfEO?=
 =?us-ascii?Q?mkCTEaopsTY7Xi+HUwy1Vg7pE4u/Ape+zZ4JPBtL8sX0nzqCTtEblIoUMZB1?=
 =?us-ascii?Q?v8riLvg9Mw=3D=3D?=
X-Exchange-RoutingPolicyChecked: goSBNv5cYimSGIe+Z/2j38yftFroUMgECWU2F0qiVhSxSsxh06KobD98jgayeFiseK9fcUpxwu+95GzWp8wOzHFEfoIywXCXnOzI65/3zmzaEhV+rJsJF/UTcwQWKqjf5FClq3dqVlCov/o/6MT8YivIRS6xIklkqsSgzLPNdAIl7669kxngoMiQ1K+6+lAGp9p0JBTlwhL1GMvFHBiKquriN5HH+cesRBHwYYXzbV2ytGTte7HxrE1ouzj/aNdXhIVZEWX5pkGAPdoIDpJbWjaAERPRrEjsT0i8w6CBnfkPZQDVmNOMKrZXn104srjqgTfLop/3iFrzKvSFIGZmjQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 04ed80e1-abc4-4883-ba29-08debbf7cc48
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 13:56:49.3183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XVb24wer8FhRT2e323ZHtZgAscoijHtcgNy/wdcFHFe39BpfBvAmQi0ps33GJdmP9SEsUU1DmCTgBXCXdMMHAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,ideak-desk.lan:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9C9F35E56A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 01:02:12PM +0300, Jani Nikula wrote:
> All the other struct dev_pm_ops hooks are named i915_pm_*(), but the
> .runtime_suspend and .runtime_resume hooks are called
> intel_runtime_suspend() and intel_runtime_resume(), respectively.
> 
> Rename intel_runtime_suspend() to i915_pm_runtime_suspend() and
> intel_runtime_resume() to i915_pm_runtime_resume() to unify.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d6b94a29c91d..58081b52461a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1558,7 +1558,7 @@ static int i915_pm_restore(struct device *kdev)
>  	return i915_pm_resume(kdev);
>  }
>  
> -static int intel_runtime_suspend(struct device *kdev)
> +static int i915_pm_runtime_suspend(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
>  	struct intel_display *display = dev_priv->display;
> @@ -1632,7 +1632,7 @@ static int intel_runtime_suspend(struct device *kdev)
>  	if (IS_BROADWELL(dev_priv)) {
>  		/*
>  		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> -		 * being detected, and the call we do at intel_runtime_resume()
> +		 * being detected, and the call we do at i915_pm_runtime_resume()
>  		 * won't be able to restore them. Since PCI_D3hot matches the
>  		 * actual specification and appears to be working, use it.
>  		 */
> @@ -1657,7 +1657,7 @@ static int intel_runtime_suspend(struct device *kdev)
>  	return 0;
>  }
>  
> -static int intel_runtime_resume(struct device *kdev)
> +static int i915_pm_runtime_resume(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
>  	struct intel_display *display = dev_priv->display;
> @@ -1765,8 +1765,8 @@ const struct dev_pm_ops i915_pm_ops = {
>  	.restore = i915_pm_restore,
>  
>  	/* S0ix (via runtime suspend) event handlers */
> -	.runtime_suspend = intel_runtime_suspend,
> -	.runtime_resume = intel_runtime_resume,
> +	.runtime_suspend = i915_pm_runtime_suspend,
> +	.runtime_resume = i915_pm_runtime_resume,
>  };
>  
>  static const struct file_operations i915_driver_fops = {
> -- 
> 2.47.3
> 
