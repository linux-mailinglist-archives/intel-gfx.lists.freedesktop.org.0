Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBx1AA7i/Wn0jwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:15:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B02B4F6E13
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85FA810E029;
	Fri,  8 May 2026 13:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E78wboG5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5DF10E029;
 Fri,  8 May 2026 13:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778246154; x=1809782154;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=UiECAvdFr/67Th6GCM+k43YxmJozGYIU30tG2gIUEVI=;
 b=E78wboG5vF2ossMli/33YYuycnEWbvwzpPSAbR8qTJAm3wuip7nCcnqH
 QyGtSH8FLDigokTvad1AmZyzqLA16apJtCGodLBXy4jDQEGd/xO8JxAbc
 Afe1XrpDdZU8nchbARBd8ZKnlSJJw068ABXaFp9yvGt//oHWbBgFqMdOz
 /rX+FZrR8eZFlGFfTs5rrQfDDz+iGb3daT6I8b/hxbhlnPbLXWrF4TaZr
 soZj7ACBK0q+qANQtqbTAPOm3icXWy82dvSOVJ96ka1hm+VRba9aNuIgD
 fpvq+uJu6MFDa2Bau2FDH91onqYaUcxAjMBGOSQ+cM+tw3Bo91P4AfA1f w==;
X-CSE-ConnectionGUID: 4yzdG/pASp2zDZuFym6ysA==
X-CSE-MsgGUID: FNebRPwvTheJ02wGlFFsRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79231372"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="79231372"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:15:54 -0700
X-CSE-ConnectionGUID: 1JxOcO9iR2ufovkXUcadmA==
X-CSE-MsgGUID: Wnrv91g7S4+RPU2/+bWeCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="274884827"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:15:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:15:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 06:15:53 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:15:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DclvaUorhb7kylWX7yzdsjBfY6BRYqJWqdFlaqPguyFEgojuaHPjMo+PtSLL3E/6lH7FJXWIntZCktCL/XJeWOvE+nL2vQF6lleu3VSzXh2LzKtCj09BgRFRChpu3fBPkuuFqcEbD9Cqrs902bXRVu4Idkn+Ty//QY1CqvaH2pMzJuzIdaF5Z7gm3gpnouTLMYyWBrvy8/+z7el/G0/LTvf74ATkqAbI8O8N65Ggn0tTS0EJ4grHWUaJ69TTDpF3W8O37zSsYSyAeRNMPUqqSshBeSSg3owQr5KFW6mlFGkMhFGiRKRHLDCi7yoq0wToKMK6+00lR4mSwqvCIDmorw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kmzi3k5vOfooO9Xg9k+fSLhjm/rDhs1qx+0POWInnlA=;
 b=W5BgfX0xPI2wY8cYO7mzlAoZk/7Pf5mJj3Z6SKuv803Bs+FqTwpwGfMS+6AFF3w3jEjQARZCqx3vMhlg+2dCXO2bEDtUi3dHIu8RdUcFVw2RS2CnbajZe9PMi+KBv9nBqLChcnhwQpgJkBwL2rLwLiZaGxfP+YYjCZqqNfeCqTPMTShNEPu0aMNDpY1WzGRPj+WrRymS4C4Ih8zxH9gQ/eJg16ZQ6vaffypb0tytmsYcADl0ZL64imUVgPn1CD7PJ45z/Z0fEWlNwLC3Fsm5zurRu+bV8gTJxhaWeqjL3wqHTm07J9QwSjjGD7vAChalBnpJlb5yCsTeoh3K1TM3rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 13:15:46 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9891.008; Fri, 8 May 2026
 13:15:46 +0000
Date: Fri, 8 May 2026 09:15:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-doc@vger.kernel.org>, Matthew Brost
 <matthew.brost@intel.com>, Thomas =?iso-8859-1?Q?Hellstr=F6m?=
 <thomas.hellstrom@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <tursulin@ursulin.net>
Subject: Re: [PATCH 2/3] Documentation/gpu: use === for Intel display section
 heading underlines
Message-ID: <af3h_ljWsBUMY5Um@intel.com>
References: <cover.1778235406.git.jani.nikula@intel.com>
 <f49968792220ca3ff24efde813550850340d092e.1778235406.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f49968792220ca3ff24efde813550850340d092e.1778235406.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::9) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CO1PR11MB4914:EE_
X-MS-Office365-Filtering-Correlation-Id: 2217ac8c-46a0-4106-ce4a-08dead03ea31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: ukBR3Z0D++srg7tLcK8cdcAykd+XCptvykpD3VzrCj6aGEIbE+yUBbhCihe3HZQYWTELVs0AWP6eooA/nGPJD+PRH0+2jhumCizIYduRbXsAbgS5ayHW5UFRvTa4zTb3MaGjEsDalzKHKfpJIWVejx/pdlk1meTLSpwyzySpweKZNnVFryomW3ozIOuiOf2WgKUVfFAGix+yBJXWey35mPAqG9RwCBnoMpZ6UrjusHbWw1siYnXgpqbBPz2WTkpSBqn2NziilwtH6cSxF+EA1ZJSoK26eVToPZw0zI5QHzq7rMG+xrdyZqNoZNv21BPsiWlxT5h4yzHd85VOAgc2Fy6E5YQcCR9ePgbyPq8bREpzu3ghBCf2Y6qGsdegwFbKEG+fypwubX9N7uT4zACOSbCsZQkm8QnUW2nUCHgG5ainkPR/vUHedzYCzeOrXBQiXPv19RDmKBwgvn4/sj9o2paBmpylwzAwChwG34KzILsCQaezAzbqyLGnMfelkKiyV6EUuvgPeamlohONL1pCcQxhEFOC1e1i0flqQxAMkBvanlzlgq9FJSDVDAkhI8Br6ObTpQKetxBXpUZY/HnmvGNb/AmzcIm8rXD8oYxWhTnU5bO22a1T5/Fx43YIFucfhNnI7Idr4SnA9TURUM0DymHR3m1oxp2olsVoTBKF9jGxLMee75FCC7XAWQpKKWq0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Tnmin+hF/q65iAVkAHtj9VpsHxK1xYrTVUja2fLS9DbRdcqlwQGw910sqs?=
 =?iso-8859-1?Q?DmiRw+InFjCP1yshPM4vLrRxDRmPXxlSLyBQSjlXZYVtS2MJopBaWdLAbl?=
 =?iso-8859-1?Q?4uVBA3qiDqcLlNdbrB9aADuP/qMf7S5kS4xtYL7PwEzdnYxUdjoXrrCi/u?=
 =?iso-8859-1?Q?3wgFCJXKGHDugjZr+NyBxYCn3NiFM27Vlpy4igHjsF9xEp/69M5Z9CHiIK?=
 =?iso-8859-1?Q?QNMRCTIFV/1h8jCCpoKCOYCPheyHaYoKORuJNjfBDEaYYETFopmHmLGxwv?=
 =?iso-8859-1?Q?Hiw9M5WOoBDr9CxwTYQ/OOrXzNEJFW8Qrjsrk3ngFcJ76SvVdJ9a7QOhqn?=
 =?iso-8859-1?Q?mvFm2gwKYbqwZEnLlWH9gEFu2nGwdff2UJ3EEc+xEsxcERXFJdhGvvBVTi?=
 =?iso-8859-1?Q?XpM618al1DPeeM1hERT0NzZ/iXGigY0sgi50ITAOpIpdAB9yfQEc1ls5du?=
 =?iso-8859-1?Q?Yig+fXI+hfBXjfYfgJ6DWVWO+MiieaVJFBHY2uDax9FU6Snshv5tu8gwSd?=
 =?iso-8859-1?Q?jUUjZPi8zgIHgHWpndVH2wZhEho1r5EWKrSyldse8Rk0usA5ZIjB6zIJAa?=
 =?iso-8859-1?Q?QZQa01bx8QNCYg1CJxQEht+WFuYchCjoacwVU2vNcC3HcWBgRvxsN9u88b?=
 =?iso-8859-1?Q?Hh5NI58aelS8WsVADS/E4pSQYBv/OoBQ/ejXONQZLJMbnIKM9N6RLrhJZi?=
 =?iso-8859-1?Q?T2DLGtQmZzMhfBeuhCZ7hhLFgflv7aCc5ZWINyvjfMye40HNNSX3Wq2LNO?=
 =?iso-8859-1?Q?Brw83RoLd4UXX9PK5683woeJhe30YuSac2qqefDltuQqurcpmYZFbyriPY?=
 =?iso-8859-1?Q?OXF4TsVq5hUdic0geD1iCfibKCMmhyzAjXrMasueDjEKG2wIrRsK1ZfySN?=
 =?iso-8859-1?Q?Xdx/dpj4BOE4NB6iHwOg1eIsME2Xgv8HD2PGCEGTOToKwEk7fPdNvDE+Mr?=
 =?iso-8859-1?Q?PPSaXFrt6d2wo0JuLRvK5NSi9a7lof1pwbMVId5TTySgJkC4vIe+61D/dT?=
 =?iso-8859-1?Q?xa/34EMes/HYKMvF2HSdsU7B9u31OqlM9KiF6NlvdsdDxt8F71C/AL8bMN?=
 =?iso-8859-1?Q?l6QhD0gN8bE2os0fsfnQJL71QUC0/MUsQsr9cVe+CPIAVm1qRoyLERE39b?=
 =?iso-8859-1?Q?nJ/eD7kZtlTS4l8+52Yijs2ljPmmz0HLtRQttOwWhnplpt1Iols9rHboBO?=
 =?iso-8859-1?Q?JkuoSHiSkjqRfsHtTjb4FBj3TCX0xP6yZD4cpNSY3Q/I1vwJbCfP1SaT1A?=
 =?iso-8859-1?Q?gbTsFxfwciqbGBhp8bKUSraGdN/kM2Y3FHd5nnyzp/1fpmxVDWJxKgk+WN?=
 =?iso-8859-1?Q?j2cblZ+doqStVd5+txdzW9OkLQ6TG8qCNlJte83B96UcaTanZDWE3NIdUW?=
 =?iso-8859-1?Q?f/4HQdG3bSlD3oK0CVB051LydGSe8J9tBBzPU5uvTYZkN+jnBNv7PV4fKe?=
 =?iso-8859-1?Q?bSMO9dH4ACZpbPUUwwOtcy1PZurBeDbqyD66kzGRBRER/dMFGt/RExuBV9?=
 =?iso-8859-1?Q?0ZjEHQt7SmEkR9OFISKctC8yeqeddi/xfZBRVDDeCfBPXi9AR7Dq8aI1Iq?=
 =?iso-8859-1?Q?WHtz6eS9hGWQraj+3upYVSIUl7PuFOwZlmjHXnEq2gu9siQx5n665C5pdW?=
 =?iso-8859-1?Q?luTd+oDfwjIaYul3fsNUH5DrKB7dvqa43kV3V9pUYKWwJbbVK1wUayHpDK?=
 =?iso-8859-1?Q?UxKw1M1WejJFcSUMMSkDtqMwpBzr7+7SVQuLEMwV0FXF9EifIoodngU55j?=
 =?iso-8859-1?Q?nCAPe1FB4sKBDNEC8KDKCzZCmnjOkyxxP6imujiughBcn3cLjeiJ6gPk0o?=
 =?iso-8859-1?Q?g+v9u+7pkg=3D=3D?=
X-Exchange-RoutingPolicyChecked: tsNMV5/W4fWNBgLw1vEO776uDdQJ9J3wqyUg6KG6Zf0tpe7kq0APcdH2tAxfoKhsp105ScNYiWUU1L77ibrkQat32U/QizonZ9GdxVcr8xDbiGkr/UndxiIhhsRR4FcAcQ56wYDflmhhnW1hb+q8rA12UtCdJBL0POQ52JTlTYiA3mnPWYYcj+3nH6JRYrTsBhH+E3p07V8KGel/3NdWlh2MoOdHDvc/OEDuuG/oiXZJygps3qpQ7cX0qyEi2TGjvYVvQDrFILTS8Ap1K/9oOKQVLpfZ7KIgRamGScnC49NOs/BwqckrF5P+Q7ICZ9vehjvq/ejZG2KzgkwCFN7pSA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2217ac8c-46a0-4106-ce4a-08dead03ea31
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 13:15:46.1311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xuuIum3WHvLsofliLm6s6wOVVUSMXz5o7lhWYrYia2sjiP6Rg/ovwguBDmMlaKgEkMkQp83/Qt/+PJZRn7vpCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4914
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
X-Rspamd-Queue-Id: 7B02B4F6E13
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Fri, May 08, 2026 at 01:20:48PM +0300, Jani Nikula wrote:
> Prefer to use === instead of --- for top level section heading
> underlines to allow using the latter for sub-headings later.
> 
> While at it, fix the underline lenghts where needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  Documentation/gpu/intel-display/async-flip.rst    | 2 +-
>  Documentation/gpu/intel-display/audio.rst         | 4 ++--
>  Documentation/gpu/intel-display/cdclk.rst         | 2 +-
>  Documentation/gpu/intel-display/dmc.rst           | 6 +++---
>  Documentation/gpu/intel-display/dpio.rst          | 2 +-
>  Documentation/gpu/intel-display/dpll.rst          | 2 +-
>  Documentation/gpu/intel-display/drrs.rst          | 2 +-
>  Documentation/gpu/intel-display/dsb.rst           | 2 +-
>  Documentation/gpu/intel-display/fbc.rst           | 2 +-
>  Documentation/gpu/intel-display/fifo-underrun.rst | 2 +-
>  Documentation/gpu/intel-display/frontbuffer.rst   | 2 +-
>  Documentation/gpu/intel-display/hotplug.rst       | 2 +-
>  Documentation/gpu/intel-display/plane.rst         | 2 +-
>  Documentation/gpu/intel-display/psr.rst           | 2 +-
>  Documentation/gpu/intel-display/vbt.rst           | 2 +-
>  15 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/gpu/intel-display/async-flip.rst b/Documentation/gpu/intel-display/async-flip.rst
> index e4ae4012efc5..40f93e885bb7 100644
> --- a/Documentation/gpu/intel-display/async-flip.rst
> +++ b/Documentation/gpu/intel-display/async-flip.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Asynchronous Page Flip
> -----------------------
> +======================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_display.c
>     :doc: asynchronous flip implementation
> diff --git a/Documentation/gpu/intel-display/audio.rst b/Documentation/gpu/intel-display/audio.rst
> index 7d3c1b514b0e..eef95df75f8d 100644
> --- a/Documentation/gpu/intel-display/audio.rst
> +++ b/Documentation/gpu/intel-display/audio.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  High Definition Audio
> ----------------------
> +=====================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_audio.c
>     :doc: High Definition Audio over HDMI and Display Port
> @@ -14,7 +14,7 @@ High Definition Audio
>     :internal:
>  
>  Intel HDMI LPE Audio Support
> -----------------------------
> +============================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_lpe_audio.c
>     :doc: LPE Audio integration for HDMI or DP playback
> diff --git a/Documentation/gpu/intel-display/cdclk.rst b/Documentation/gpu/intel-display/cdclk.rst
> index 231b22a733e7..a66d623b0ec9 100644
> --- a/Documentation/gpu/intel-display/cdclk.rst
> +++ b/Documentation/gpu/intel-display/cdclk.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Display clocks
> ---------------
> +==============
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_cdclk.c
>     :doc: CDCLK / RAWCLK
> diff --git a/Documentation/gpu/intel-display/dmc.rst b/Documentation/gpu/intel-display/dmc.rst
> index 2fcdbd457d79..4368da4c7048 100644
> --- a/Documentation/gpu/intel-display/dmc.rst
> +++ b/Documentation/gpu/intel-display/dmc.rst
> @@ -4,7 +4,7 @@
>  .. _drm/intel-display/dmc:
>  
>  DMC Firmware Support
> ---------------------
> +====================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc.c
>     :doc: DMC Firmware Support
> @@ -14,13 +14,13 @@ DMC Firmware Support
>  
>  
>  DMC Flip Queue
> ---------------------
> +==============
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_flipq.c
>     :doc: DMC Flip Queue
>  
>  DMC wakelock support
> ---------------------
> +====================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
>     :doc: DMC wakelock support
> diff --git a/Documentation/gpu/intel-display/dpio.rst b/Documentation/gpu/intel-display/dpio.rst
> index 32e6f299f256..84d92ac162f8 100644
> --- a/Documentation/gpu/intel-display/dpio.rst
> +++ b/Documentation/gpu/intel-display/dpio.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  DPIO
> -----
> +====
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpio_phy.c
>     :doc: DPIO
> diff --git a/Documentation/gpu/intel-display/dpll.rst b/Documentation/gpu/intel-display/dpll.rst
> index 35e8168ccfb9..c750352e0ae5 100644
> --- a/Documentation/gpu/intel-display/dpll.rst
> +++ b/Documentation/gpu/intel-display/dpll.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Display PLLs
> -------------
> +============
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>     :doc: Display PLLs
> diff --git a/Documentation/gpu/intel-display/drrs.rst b/Documentation/gpu/intel-display/drrs.rst
> index adb413f300f1..a5aaba63d6b9 100644
> --- a/Documentation/gpu/intel-display/drrs.rst
> +++ b/Documentation/gpu/intel-display/drrs.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Display Refresh Rate Switching (DRRS)
> --------------------------------------
> +=====================================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
>     :doc: Display Refresh Rate Switching (DRRS)
> diff --git a/Documentation/gpu/intel-display/dsb.rst b/Documentation/gpu/intel-display/dsb.rst
> index cbd40b0a4e7b..857aca59995a 100644
> --- a/Documentation/gpu/intel-display/dsb.rst
> +++ b/Documentation/gpu/intel-display/dsb.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Display State Buffer
> ---------------------
> +====================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dsb.c
>     :doc: DSB
> diff --git a/Documentation/gpu/intel-display/fbc.rst b/Documentation/gpu/intel-display/fbc.rst
> index 40f9d16bdebd..de9e19021f50 100644
> --- a/Documentation/gpu/intel-display/fbc.rst
> +++ b/Documentation/gpu/intel-display/fbc.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Frame Buffer Compression (FBC)
> -------------------------------
> +==============================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_fbc.c
>     :doc: Frame Buffer Compression (FBC)
> diff --git a/Documentation/gpu/intel-display/fifo-underrun.rst b/Documentation/gpu/intel-display/fifo-underrun.rst
> index 50731f3a1f03..5d8f01921506 100644
> --- a/Documentation/gpu/intel-display/fifo-underrun.rst
> +++ b/Documentation/gpu/intel-display/fifo-underrun.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Display FIFO Underrun Reporting
> --------------------------------
> +===============================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>     :doc: fifo underrun handling
> diff --git a/Documentation/gpu/intel-display/frontbuffer.rst b/Documentation/gpu/intel-display/frontbuffer.rst
> index 2a1bc63ba6b4..7ae38e0827bf 100644
> --- a/Documentation/gpu/intel-display/frontbuffer.rst
> +++ b/Documentation/gpu/intel-display/frontbuffer.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Frontbuffer Tracking
> ---------------------
> +====================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_frontbuffer.c
>     :doc: frontbuffer tracking
> diff --git a/Documentation/gpu/intel-display/hotplug.rst b/Documentation/gpu/intel-display/hotplug.rst
> index 4cd9dd5ac8fc..f33bc0087c27 100644
> --- a/Documentation/gpu/intel-display/hotplug.rst
> +++ b/Documentation/gpu/intel-display/hotplug.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Hotplug
> --------
> +=======
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_hotplug.c
>     :doc: Hotplug
> diff --git a/Documentation/gpu/intel-display/plane.rst b/Documentation/gpu/intel-display/plane.rst
> index 41cf6571aab0..59932a82051b 100644
> --- a/Documentation/gpu/intel-display/plane.rst
> +++ b/Documentation/gpu/intel-display/plane.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Atomic Plane Helpers
> ---------------------
> +====================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_plane.c
>     :doc: atomic plane helpers
> diff --git a/Documentation/gpu/intel-display/psr.rst b/Documentation/gpu/intel-display/psr.rst
> index 134c905f500e..63e56abcdd56 100644
> --- a/Documentation/gpu/intel-display/psr.rst
> +++ b/Documentation/gpu/intel-display/psr.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Panel Self Refresh PSR (PSR/SRD)
> ---------------------------------
> +================================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_psr.c
>     :doc: Panel Self Refresh (PSR/SRD)
> diff --git a/Documentation/gpu/intel-display/vbt.rst b/Documentation/gpu/intel-display/vbt.rst
> index bbc7ee183f1b..be69f7fd7b39 100644
> --- a/Documentation/gpu/intel-display/vbt.rst
> +++ b/Documentation/gpu/intel-display/vbt.rst
> @@ -2,7 +2,7 @@
>  .. Copyright © 2026 Intel Corporation
>  
>  Video BIOS Table (VBT)
> -----------------------
> +======================
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_bios.c
>     :doc: Video BIOS Table (VBT)
> -- 
> 2.47.3
> 
