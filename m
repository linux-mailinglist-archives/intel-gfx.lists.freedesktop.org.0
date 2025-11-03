Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA27C2D80C
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD1110E478;
	Mon,  3 Nov 2025 17:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sc9e0thC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CB6C10E469;
 Mon,  3 Nov 2025 17:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762191623; x=1793727623;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=o4sTLT3DR6rQLXN/IyXgW4+nNUqyZX0Jgu6YYM+0cxs=;
 b=Sc9e0thCak5/a3DWLzqfmDuYKGiGZtBLve0u3YqffuBUX4mTb1TQFClq
 UNFP656T2OOGLIUnUh7GJeTzdBbg/ob90Ky2c4/OydvrrVIhkW+gysIvs
 iF+HjSF3i8EfjczG0JebGWbGdfU6ZVy8pZmAHsnxouSllXJs+UFK3EBU/
 WDU6iCVQcmiZMmpn3R1AIIWv6JlUw/3YWa2EMmTMqkVmSkY+zHuwQv1Us
 rn0SmAggjn57KHruCeFndPR9dUXN0MpHzN9BG8QN8XAtPOh12JPfpm6or
 LhfWX439kBD73plb0x003vkHJrPQXmxx1CAnVKdaoO+FFn5SLtOlWEaHT g==;
X-CSE-ConnectionGUID: etexeWcPROat+ZfnJjwWmA==
X-CSE-MsgGUID: NtZt2TgSQjuXmJ3KXd/CoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="67929101"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="67929101"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:40:22 -0800
X-CSE-ConnectionGUID: YGy8qadmT/Gq5aWkX36fpw==
X-CSE-MsgGUID: cLDhszKZREG/wMOiTri6lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186215553"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:40:22 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:40:21 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 09:40:21 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 09:40:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NQvswJabyZNRqU8oVCz8h6gkAPYNqbV8Mo2lRYDYNcU5tBZxGP0LNakZ+4wZUbtSWC5TfEs7VzrRZWr8ftM3xl9v6IFcd/NfKMI/D5Z7fitJH/EIA4+ykyIJqUG/n0S4+gT2YUM/c0WTbtJt9A6ACDjQCN67ggjHc17SfseP+qtpFG8iVLCSRRLrHHTZUItgCVayyAS9XViivEwlJcokeKvtrBw+anFn3JZuy3FXqmcz2aVNPuaqqiugfBjZLJNo0wfzrnyfQdNwupKxHxJECAu2r5z6FpQv0IhfvW5r+DccnfPwK9Tl92zQ23wfTN1PzHxrmmOPZQxoNyELJvFgiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lm9ESTBVkJLtDuXSLQZ6VAIq3o4b0IxRlZlVXcfaW7Q=;
 b=cnwrwBtrAhB7rMtsoq0T46J/vL82w8rxyMX5RSxe5vVGJCwXWBoWRivh4KFXyKsBDp7LoL/XQ5BWX+fg2Egn+27XSiACwxfrQ8jUAbNk9Wr3ifEvqIzA+guFwdZxWaw8qooM4r76qZEhXk+pW0BVrE1YtT/t4Iavnzq8KywjWZnkjLSi4VHo+p6JAcvOdB9HjE3+ZWZ1Ols02kCQ7t1JWWs4Ou98pTGoxhg8PBWy6TqH1pc9IhpAD27a/dNCA8PKQNAK1oEkyx5ls9yvzhyXLBm7VixgkJdG3drO1P4vsq0975nuKwl1y5BVH5fVhQdWvMADeoZQTiJ38RPDxx1n4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA2PR11MB4924.namprd11.prod.outlook.com (2603:10b6:806:113::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Mon, 3 Nov
 2025 17:40:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 17:40:19 +0000
Date: Mon, 3 Nov 2025 09:40:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v3 29/29] drm/i915/display: Use HAS_LT_PHY() for LT PHY
 AUX power
Message-ID: <20251103174016.GE2980942@mdroper-desk1.amr.corp.intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-29-00e87b510ae7@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-29-00e87b510ae7@intel.com>
X-ClientProxiedBy: SJ0PR13CA0195.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::20) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA2PR11MB4924:EE_
X-MS-Office365-Filtering-Correlation-Id: c9fb6b8f-3551-4b78-a8bf-08de1b000e88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vMaMES4p82ROZ9k9XhSl7EM46PUhwG2hdSs0vccREPx2tQgj1wPf/39n2fOR?=
 =?us-ascii?Q?qfHNVg6pybeIYEaagwzA/zGsMq1Ovl5rV/9JSOM7efdhzu1DLB8PMkCTOHHF?=
 =?us-ascii?Q?n2Mec4MPcGc5KU0cXR5Ac38x6lAlmRj/etrSv342RI0JgyTs9cD740pJaR4W?=
 =?us-ascii?Q?nQ72S/3u9zlLPLzN7oXw/0SKJpcB876BpQ3UjGWOcShZx0zq8d3F0S8X6fRo?=
 =?us-ascii?Q?nTzlJCp+Ez15WORsf3Uk1dn62Dkprs6cLP57UPoWKh4/J/D5Q7DstmqCCsI5?=
 =?us-ascii?Q?tYq3/geWWFhp3zSh4a5YnS/p5wlsNTupdlBMY7BjbO1fWFpifYW6ox7kvonv?=
 =?us-ascii?Q?q/ml0k1W1a4kYrPtN9hDpix9AOg4lMzRNl6MUPRWAhOjbeaR3lrAYweG25zY?=
 =?us-ascii?Q?k9ChvZDn9C+NL5BPJv2AAf4s5K86T5+X6b43HpAqUnTkJ5ri9sTwJ3Y2fcck?=
 =?us-ascii?Q?laogomXZyNi7zqG+Jsj74C+RPW2vbUw7X2E8pbk32hoa0R/2vErOpdH97Zlj?=
 =?us-ascii?Q?TkL4EPj9Wz00P0KW+dP8PiMNxtmxsJCNedgaDFs3Gakc2RVEhYYsf12fJ74s?=
 =?us-ascii?Q?sgK+iY3afDJ83MmIsKj3AwRZAj3BolPyMufvKSXUe+050lnl3Le0cIOiXvB5?=
 =?us-ascii?Q?eu0tR0PKBO504NGqmYLMuaKi4w6xLUSH1MAp/RtuICI1Zm2y+xvZHD5RACMK?=
 =?us-ascii?Q?8a6QGa8BCT7gEgtsJqjTKaCYnVDSguutYsB9oWrdxiks3Aaafha++thOrWuq?=
 =?us-ascii?Q?4onvpx/5on90meS9Ed2MxKBGkrUPStVxYPmbvgskkNgf+IXnV7+ElGJaA2lM?=
 =?us-ascii?Q?6z0ew6w0EZSfQxWvZgCIAeN5GbaJQqRhOiFIoI8MggZ4lk3wIDjWMw78d24w?=
 =?us-ascii?Q?ej79/4M6c5nDdTP8B3FJDmGanB63l0M1TG8/yyyk6eo3MbqIvKLWkg+AkNg1?=
 =?us-ascii?Q?+FW4C2UilLyWWklDPbUXPtSWllD+6XGuslPVjmJ/TmPfMXt7mVqDIyboq1ow?=
 =?us-ascii?Q?DDEpDApOLTRKFgmTvBXBQfAPU5QN9xtFnPJPZ3+zVTE6X2lWD+zNTzABlMp1?=
 =?us-ascii?Q?qexbiq8Xxmf+kn8oFWcxSkWL1qgb45nJm4u7iqR+HfHsA5yMqyGvh6obsYMU?=
 =?us-ascii?Q?VUXlcvuk/EEhi2McvP9+Zg3xMFSRYrIrU/6vKtb5y9cA2YJBKdsfu9jpwTW3?=
 =?us-ascii?Q?UyaF76jF6B5JDYcf0TDaxWCLY+UidqzPLRefeWWWfK5C1LLMZzmdK/fd1M8N?=
 =?us-ascii?Q?a8hFZB+wwCiec0O7CQhzQSGf/+j/dNyo5PZhqJe+unpB46rzpinTfN+Nlu09?=
 =?us-ascii?Q?VeDGs8tawhLwC0C88i2tXlroKQCU3xgM8EwXArX72IhJf32UkfcKFf9iLWnw?=
 =?us-ascii?Q?NcKPCTezooiPHy1BuiMpUe1pelbjpq8REcBjnU4IUB7xTeaMPZF7MMHOOsxE?=
 =?us-ascii?Q?SRENd/H+U5u4kmR0iUqqQ7qlUo7f331G?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ovfedb+ooR8FUlsMY0jc6WQzaw5GKsbzMcJQWCMvCsFBOETGLeVLMxZ+1nB/?=
 =?us-ascii?Q?0k373p8AdA+H3vfc13U9EDfL+I8w2MTCSUkcfrIwlzO5Uyfb321EMPjF9+3C?=
 =?us-ascii?Q?Nyg5Pg43evbOOVL9FARDZroewCasIFzZLdbCDXMvBshETcLfnnJ/Z6Gjuhkw?=
 =?us-ascii?Q?gaZaHGEltC47ach8MsxD+R41JAPTqlzIrPQTN70jfL5z6TZskZFk8A+uhaP9?=
 =?us-ascii?Q?tqI7Q0tpr+uImvOib+JPfqsRf6mzt0tUDZuJAlH11pqpo7apdaAdGKkU1Kxm?=
 =?us-ascii?Q?lqXfhpebDNOE9tFA3eYsE9Sikum9/4I0A/ynw7D4cIvPSYEaa6ZDBm6PsCvt?=
 =?us-ascii?Q?0s43L22siq9dJD6jc2VU/KmuaITULDJ1NfQC+xi+q/1BcCwcF+2gXEZ2SeiO?=
 =?us-ascii?Q?g1uLfLquXF8JCrzVo3Q7MCJU1+zhPRYWtufCBIyJ1iQ+8S8HM8/Z/7mllH32?=
 =?us-ascii?Q?oem5Xus3DlLJbsrkKq5nEqzqLaFob9z+C7a9eV5x7vga3NcgQVyDm6sYe+yz?=
 =?us-ascii?Q?eQvOXuhK8tszZ9gsdkpn7lNZksx3IK0Yp/0m2MlNE2C+0panh/rlrpt98KKL?=
 =?us-ascii?Q?e02rQXfecb/YW/PfP6iia9g56MH3fM6Ad6uo5VcD3GgFA7PjwyUhgbKWCiPX?=
 =?us-ascii?Q?yfgVLmbLGapo38wawFvx2/DMq+aZsnjgMMzO73nykp9UfH9O28YPGDBtVub3?=
 =?us-ascii?Q?JCcpLngFHQuNErJZSUFORa3s1Ug+MhPCoEjtXNrH2NPbooMIlcWkBltH75Gq?=
 =?us-ascii?Q?L01BL55msgMH3fSF4yepzPlhAqlt1EYkmJp8KRIyRcFe9BUmKg7nPqfqjFpQ?=
 =?us-ascii?Q?lZb3+v0egPDjgneohaktvWm8Xhdw9Oxd9P3HvzVcrdGYwBpZGBlp8eDZ+50b?=
 =?us-ascii?Q?A7GXFH+VNNzc/fzfF9jVUoQNTtpYD/UNrXhJstyGT64OoKsBk9YaoCcRFgzk?=
 =?us-ascii?Q?3hiyLAANGEg7LY7cI1HoiI0y5kHt6VAqPrfHW83/Sta1dZ4mg3m5JXfOyBIc?=
 =?us-ascii?Q?MdIWJx3gQ/B5iKLvi1MkjH1wE86WeDUhlDrYTuRzotxkhjwUyEjJr4sY2jAn?=
 =?us-ascii?Q?h2eI6xEiCG7bAZOe5EPofwcIfh+Pb58EmkVLwujRKCJ/YFFuKol9DSAt06sL?=
 =?us-ascii?Q?hUdl78KKE4YxJ7K/HOuqmhn3nSc/wkfceHP3R6Q1/JxhnEkCJkXuQV0QRwP6?=
 =?us-ascii?Q?6L9xjUrn/dcFMft20hktUbtMQuUB9s55bsyWYvNrt5NQXw16RTkl8N9QQ4KV?=
 =?us-ascii?Q?ts+AAjpj/PVOgR8Prv9gOV8NK82I1bFlHB3lcImVqwrbg89NeCG+eN5GuQ5y?=
 =?us-ascii?Q?dIh+sogwOWBGGvAElag/niXfQgSYcog05m95UvqKG9YIW9+mSTQme7/kdQwN?=
 =?us-ascii?Q?N069gbTsSECG2fGSfgeHenzUMbTH26RnIzvEKhSzThoKtRGcJTe0XFr/EFL1?=
 =?us-ascii?Q?SuEVNQHkRyFwtpWlRtn5ap+a00LxPDTfj7J1EOPkFehWSqNu/FQV15DavugM?=
 =?us-ascii?Q?CAcTWdSK3Aqv59O+nutQOSqXATJl7/tGw541696F/ZNnLdXOyQef9bUP4a4t?=
 =?us-ascii?Q?Lz/UNSgHZnnZ5oDBBb3t3rDI1YMu57nGLh8WLWRrfkJlU7kpsDya0Rmov9Y0?=
 =?us-ascii?Q?RA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9fb6b8f-3551-4b78-a8bf-08de1b000e88
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2025 17:40:19.2565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kETFiVEkqus9g1CcGY+FIutGYkm3jybAENgqbU2Og/31ZWDqDTkk7V33ZMkeHxwnnsEo30KXHhXY6EX1b60Hy0KMxz/wtND6DPsTUv/ScI4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4924
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

On Mon, Nov 03, 2025 at 02:18:20PM -0300, Gustavo Sousa wrote:
> Bspec states that the new AUX power enable/disable sequences are
> associated with the LT PHY.  As such, use HAS_LT_PHY() instead of IP
> checks in those paths in the driver code.
> 
> While at it, also move the comment that we can't use the power status
> flag to the "else" branch, since that comment is not applicable for the
> LT PHY.
> 
> Bspec: 68967
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 1485fc65ab87..33c9540a5d73 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1870,19 +1870,19 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
>  
> -	/*
> -	 * The power status flag cannot be used to determine whether aux
> -	 * power wells have finished powering up.  Instead we're
> -	 * expected to just wait a fixed 600us after raising the request
> -	 * bit.
> -	 */
> -	if (DISPLAY_VER(display) >= 35) {
> +	if (HAS_LT_PHY(display)) {
>  		if (intel_de_wait_for_set(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
>  					  XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 2))
>  			drm_warn(display->drm,
>  				 "Timeout waiting for PHY %c AUX channel power to be up\n",
>  				 phy_name(phy));
>  	} else {
> +		/*
> +		 * The power status flag cannot be used to determine whether aux
> +		 * power wells have finished powering up.  Instead we're
> +		 * expected to just wait a fixed 600us after raising the request
> +		 * bit.
> +		 */
>  		usleep_range(600, 1200);
>  	}
>  }
> @@ -1897,7 +1897,7 @@ static void xelpdp_aux_power_well_disable(struct intel_display *display,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     0);
>  
> -	if (DISPLAY_VER(display) >= 35) {
> +	if (HAS_LT_PHY(display)) {
>  		if (intel_de_wait_for_clear(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
>  					    XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
>  			drm_warn(display->drm,
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
