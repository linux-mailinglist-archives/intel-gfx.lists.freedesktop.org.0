Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sm8tLEZyRWq/AQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 22:02:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162126F13B5
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 22:02:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kz7B98b0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7231D10F0C9;
	Wed,  1 Jul 2026 20:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE4410F0C4;
 Wed,  1 Jul 2026 20:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782936131; x=1814472131;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fPT9Q+Ni9DwXoVK0xcCsK/TsgIu7gre9Ed/x5JsDXoo=;
 b=kz7B98b0IsJSnpb3Y87N1FqseKSJnh+B8iaO+VcJTEuU/VmQ3eakzIVV
 cTBvNxbGhPfHVLazdpUfGFeljPmhJ4pU02k+A/C8NM+mRe5Lgx2Ohplxk
 8/pTZabqj09Qjzl+I+a5NNteknrkqfTu7d8Tk2oReIO+betvfchD7/e2u
 Um442HvZI5TheHm7H3CsL63s0S/vBnSfiTfL7LBW8i7ennc5+qxoIkTPf
 aLxFt2BclB3V2F0ViD7DnjamJh+LfBRV/nQznldByoNwbZaE8lzkIJgDv
 bRp0/gjuvJWQ5gGHVFU5Ce8d25DGgmiMcVpZQgGlj/2WFGXMxcPBbUWwn g==;
X-CSE-ConnectionGUID: IIDpvezPQ0mwwye/Qa0SSQ==
X-CSE-MsgGUID: fFcoS0cZRnmBUox0Y/sxlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="101105858"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="101105858"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 13:02:11 -0700
X-CSE-ConnectionGUID: PnE9DeE3RdWHva+cs6bu6A==
X-CSE-MsgGUID: tBmrX7fJSyCWKGBQuj+OQw==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 13:02:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 13:02:09 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 13:02:09 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 13:02:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Be9D3MxRtahcvKBzx+7qcwzYRz8H2brp6k8TyWzswLgRoAAS0llEcaF0jpnaHMHwKphkba1nZtwwG5h7breJqv8r//pfM5CSGknMZCKsnKTDLQILIZCF4+qSzZBy9tAFcblOzwH0mnZQLXYvxDVsPMVbiHscFQYAncpycHzrpxI4WGbGgyVbDieHsmsy7qN87Hrjf4Dn2koV/qLhos/SD3cmadLCKlPcO7u0oJQPBnERemaoDRNt7c0njPoJoHGyZzoWCfXo/hvuMv2GbMFLbFhUYqs0TbB31qLKBBOpAMp4FAe0wLd2ah4KzL8z5O0nUOAx2D+Ykc6dj8/HMjt+Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YBoWaTkWrtIGz9SG2zT1yeSqAEiIERRAx2oQf7XINxM=;
 b=B+owSu2z40lRgKNwSIMxXhwOhQXoL41ugZJAdRxxDpAWCopXg+BkDxGQSHu0r1LzzuBvRW5AJx3JgCDKETqqaxhtoeXSD24Y/XVhMZX3Ca/rbtEQFZCfRJg2U3qgmokcpoT9ha1pXwR+poqcVnWkcdW09I8gGeqoLX8hytpB1Cu68/OJdB4Nt8OaPich6Xiwc+J3eVkBqGefKfm4zi/NorhV4c6RADUZQAjmNDfFa12wMKF/Iw4lHVrpuic75hH06C8+cYFSMqSdEmFsisgom5Q4iQ0sWhlTHK/L0Gsb0d2v2q9Na02P65PeSG4Nlq063TRGUN41Gbe9M94JY6JnUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23)
 by SN7PR11MB8068.namprd11.prod.outlook.com (2603:10b6:806:2e9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Wed, 1 Jul 2026
 20:02:05 +0000
Received: from CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe]) by CO1PR11MB5073.namprd11.prod.outlook.com
 ([fe80::a153:939c:df8c:f4fe%4]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 20:02:05 +0000
Date: Wed, 1 Jul 2026 16:02:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [RESEND v2 3/8] drm/i915: move some display runtime suspend
 operations earlier
Message-ID: <akVyOnlB_6Qodh1r@intel.com>
References: <cover.1782913901.git.jani.nikula@intel.com>
 <00d016457a78589b97972203a52a390f5f1a3541.1782913901.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <00d016457a78589b97972203a52a390f5f1a3541.1782913901.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0187.namprd05.prod.outlook.com
 (2603:10b6:a03:330::12) To CO1PR11MB5073.namprd11.prod.outlook.com
 (2603:10b6:303:92::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:EE_|SN7PR11MB8068:EE_
X-MS-Office365-Filtering-Correlation-Id: c5afe1e3-af9b-481f-e953-08ded7ab9fa3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|56012099006|4143699003|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: Wn6DiXC4MZ8ABt1xuInl4YRvd9CYf7ctfrHpYnnyboWRL8q0nWMB6aaeUSJgIaqwcpKz9LIJfF991zL8drEHxtJtYUkANMHQ1IeZ/1OSazAvdUPjFiCVEKbFfThhdp1RzCauLnHgUTWISVwdlBemTsQMA0TbR+kf62EAUu5WCkN8SeeA28W4jBbzC/iGSD+q/92ViT+0kZrifnBSL5nR8/f5UieDmadMZ7mg2Ar6rNSz1h75Wq5RTyFP6oJ3Dq71kvI28FXIzZYQ8o3Nf+fzYrNGdIt7DI1XQNKBuBc0SOidgQiWKy+jv8h+Bh39DJTPuaCxxSYnVTCS3W2GXH2qsgZrfsOwSNfBeJQKT7a0wvcRfZSfoh1UyP90gI4Mw2htVJFwito3rd4ejbgGC+B36yjNTyp/ywHXP4AxKi/qmNexgA6btC7pyctAzb0N+HqNng0on7CIsuzkAnrjFiVR9WVD0MAndmoGc9UV1m+qHwb8AMKx2+/MlcehFS9R5h4JlhL7cCp3+9W/YDu6LI+Tb0+jNAhPuF3TAnf/fBGvh3OjQ/NI1Smd1eWT2U9fdHw76cSHZI/bS56S3gtRA5qhnf1fxcRSJX9fBhZLwCJM8me0pAz2b8FLzadA8R85J9yZHWP6LPgYlALlJqOBiucub+VqoldBaJ3W20u2nM/Q9dY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5073.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(56012099006)(4143699003)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?GBpjuIdmwb+DS9Ul6Fi6zmGRb5gyHfa/MK311o+GYcVtaRmUyk7bdVRSfr?=
 =?iso-8859-1?Q?jH/hOWu5pdLYBrSRnCpObTu9c4IaYdzgogE3rxrgW0lC3G/nehjmyk/WW3?=
 =?iso-8859-1?Q?XN+LGY8jQv/dEG7yXMG2Bj9Ac1sEjjU55c0pEufr9B1zDShUAVI6XCciqs?=
 =?iso-8859-1?Q?okREM4jwvDAMltomyuLnzr6hNjZWs7KfshMeHbMvc5TlVEsBn3QRi/YVqC?=
 =?iso-8859-1?Q?wYkjvhsN3AWGrOqCgbuBd/eJhG/bo2ikLA+pj0pu+jTpXvmjHvxfphSths?=
 =?iso-8859-1?Q?/6IuxCHACZtYBGlNswCnoX0k0rtqGpEOyUQJApN9QLLUeNHPFl2e1Z3B9o?=
 =?iso-8859-1?Q?S5C0ywZ9hf0q5LM9kiAYCwzWKnwIBu0SuHry4IR11fYsHtrnt0n2uvkFFr?=
 =?iso-8859-1?Q?g+bBTGjWIBcK2/Hu5LnddTrA5P6ImzoprEW8MhHbilQCQQzIt0EYSCOYI4?=
 =?iso-8859-1?Q?kWRwdF2jHh5OCBlpmPnIWA1jRpGqZ29jtsyVs088iSOypBBGLyk0owaCA2?=
 =?iso-8859-1?Q?UwnrOdbobiuXnvMLFlLBmk8wvPKNuI3I1aiZmlkigp3/et2hdfeaZj/g9A?=
 =?iso-8859-1?Q?2NxtF7W8Ra0BmDBMVqUHvKP8TS+PGY6app67qh02tzAFNWCbqbFhQYZtni?=
 =?iso-8859-1?Q?SD+bsvRynZ+NqnRRwdSWH/qhlcqpDjlngRrb0apCVIL/952IU3P+20g5g6?=
 =?iso-8859-1?Q?ZFh00z/b1Umskiz0uwHyojrZsKTTO4IFgWBeohWbjIDRHFcGCxidNOtcge?=
 =?iso-8859-1?Q?6fxgn7papplm79+k6GAM2IfS0pvLj5OO6zG+eoagXiD6tqAOFAkvZEHDEZ?=
 =?iso-8859-1?Q?Y/qsfneAKJ8rrwsTh/qIaQaQBLKiQGBg6CkeNkXYUOamRNPri76BkF8elg?=
 =?iso-8859-1?Q?waTGKK2+Trf4TR00NIcYtgVfnGdj9apffnPjnUd3Vo1LFvBPmfGpqdcm5w?=
 =?iso-8859-1?Q?bia5JCXa+hZi5sEjgPeOZoAJEykOwTPWVuhlPB63ZTgoZhItXjIsdd6I02?=
 =?iso-8859-1?Q?Xz6UEphsIanTEgnBDwQcuvgGgUgLzyDlkDW8IWl50vNrePI5g0sJCmg6Mw?=
 =?iso-8859-1?Q?gG9dKAD810SDgO8dfbM3L+YQs+5rulnKy+Uo0XTD4X18X2zyj9qTEmULe9?=
 =?iso-8859-1?Q?+fruj0dT+lL3UqVGAhP3acScHBbxnmqmzyOTV+sSPN9Ndvzvp5AIB4Avor?=
 =?iso-8859-1?Q?DKqiQkvJgxY27xp2K7E7pXKQOCMQ7s+7wICAYjHU6nPWDpTXBilVWwuw1P?=
 =?iso-8859-1?Q?8PT52rRwBOqhaylfDZnQ5HQmPWljmHP0SQOnvWmtNzbOOWvApZIZae2G3l?=
 =?iso-8859-1?Q?IPFI68dVHCAWxwgnAo3OHcTfk8300D3tPc0rZl1T0s95aGI67BzmDXKf4B?=
 =?iso-8859-1?Q?8+yPJNWqiJCyGeJTSo4U3zgzfipnL1PJNT76vN/jUFwX5UH2MN7Fptmg34?=
 =?iso-8859-1?Q?4NJCNmvtRsCeluIAYAapWVn+sPV/rZGK4d4KQFwwEc/x13kIU3JM0BbGng?=
 =?iso-8859-1?Q?YPmLguE/8T5iQOFjrPsvakyoEZ8YJ0ArU9Wli2hAxQkiYJS3kJwI6vW4oc?=
 =?iso-8859-1?Q?OKfEkSZvL8YwsvNFWPbraH3h2IoffXjUnFt7UNrArYc40xebrOXAJG1Y5E?=
 =?iso-8859-1?Q?+Qfq7yD41gpZae9Ld9CiAP9eW08ziaAODU7Eup4eME2NjLhbBU9myzePkX?=
 =?iso-8859-1?Q?ATAY4HobjZFI5jhN/92omtfTeMAdHumS+Y4v8zyIx/9dZS2qgAAzs/7jRh?=
 =?iso-8859-1?Q?JTWAMYl28Jber2F1H64K4G7Iw8qzY4/SSx9QzSW0AOvgFV1GEd6/CBFg9U?=
 =?iso-8859-1?Q?fCsu3osb1A=3D=3D?=
X-Exchange-RoutingPolicyChecked: rEDIVy678/C4cmicOTecQE6xMD2EU3fE/e8Dfm1n0+PU/AeEervLU6cKwW1vhvNfl5wR0hkdFFbN20WLOBxKas5OY1tFo0GgJObShF+CsfytTBaM/Q1stJrBZLlRw9q4D+CkMUU/bbOIR/Zp1J7C1L0k+nONyzGib5CnFwezcaskPyyhaXMnCixi10FFiJQUCaLMVW0UZepeiPPi5PdL9+wUiNWCAdTJSvxntj7FxgekiQNfgv8xw3YinCxJF5hWTQyAqGSTNf4JpMEa6lZsZFeRBqTEpVwB2D28q+4SDt8SoBeXCK3AUwGJjN6m7Sf4hG4nbDGreWwbS2x8CobYIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c5afe1e3-af9b-481f-e953-08ded7ab9fa3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5073.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 20:02:05.5701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ukk08irmLPsKcZOAFNgqrP8TQYUOaYGOZxFkeWLqyVjun5LS94dmrkGDqx6X3Wa4orkebb+ryw/U+etvX+oT0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8068
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
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: 162126F13B5

On Wed, Jul 01, 2026 at 04:53:01PM +0300, Jani Nikula wrote:
> In preparation for abstracting display runtime suspend/resume calls,
> relocate opregion adapter notification and hotplug poll enable slightly
> earlier. Even though this is intended to be a non-functional change, do
> it as a separate step to pinpoint any issues here.

fingers crossed! :)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 54 ++++++++++++++++--------------
>  1 file changed, 28 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 10427f8f5699..b3d87acc142c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1518,11 +1518,39 @@ static int i915_pm_runtime_suspend(struct device *kdev)
>  
>  	intel_display_power_runtime_suspend(display);
>  
> +	/*
> +	 * FIXME: We really should find a document that references the arguments
> +	 * used below!
> +	 */
> +	if (IS_BROADWELL(dev_priv)) {
> +		/*
> +		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> +		 * being detected, and the call we do at i915_pm_runtime_resume()
> +		 * won't be able to restore them. Since PCI_D3hot matches the
> +		 * actual specification and appears to be working, use it.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D3hot);
> +	} else {
> +		/*
> +		 * current versions of firmware which depend on this opregion
> +		 * notification have repurposed the D1 definition to mean
> +		 * "runtime suspended" vs. what you would normally expect (D3)
> +		 * to distinguish it from notifications that might be sent via
> +		 * the suspend path.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D1);
> +	}
> +
> +	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> +		intel_hpd_poll_enable(display);
> +
>  	ret = vlv_suspend_complete(dev_priv);
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
>  			"Runtime suspend failed, disabling it (%d)\n", ret);
>  
> +		intel_opregion_notify_adapter(display, PCI_D0);
> +
>  		intel_display_power_runtime_resume(display);
>  
>  		for_each_gt(gt, dev_priv, i)
> @@ -1554,34 +1582,8 @@ static int i915_pm_runtime_suspend(struct device *kdev)
>  	if (root_pdev)
>  		pci_d3cold_disable(root_pdev);
>  
> -	/*
> -	 * FIXME: We really should find a document that references the arguments
> -	 * used below!
> -	 */
> -	if (IS_BROADWELL(dev_priv)) {
> -		/*
> -		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> -		 * being detected, and the call we do at i915_pm_runtime_resume()
> -		 * won't be able to restore them. Since PCI_D3hot matches the
> -		 * actual specification and appears to be working, use it.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D3hot);
> -	} else {
> -		/*
> -		 * current versions of firmware which depend on this opregion
> -		 * notification have repurposed the D1 definition to mean
> -		 * "runtime suspended" vs. what you would normally expect (D3)
> -		 * to distinguish it from notifications that might be sent via
> -		 * the suspend path.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D1);
> -	}
> -
>  	assert_forcewakes_inactive(&dev_priv->uncore);
>  
> -	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
> -		intel_hpd_poll_enable(display);
> -
>  	drm_dbg(&dev_priv->drm, "Device suspended\n");
>  	return 0;
>  }
> -- 
> 2.47.3
> 
