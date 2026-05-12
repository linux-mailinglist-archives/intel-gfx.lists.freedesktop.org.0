Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIoFBC4sA2pI1QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:33:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4899352142A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C75F10EB2E;
	Tue, 12 May 2026 13:33:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n+JZhD2k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E7D110EB11;
 Tue, 12 May 2026 13:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778592810; x=1810128810;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lMSfuT9S9GD2bXZVI6Qdnkk+3Tvc4sIZP2aEb6MyJzQ=;
 b=n+JZhD2kfxU0lPcymsNab1ucDTMJERSVbD+yeCpGhDobyhu0jCM2V08w
 eJKBpSNf4kS5VJ0xLlGnnYO2nayybypVoI+MY0dDzkQlqM7YOyTrjJQ6x
 vL6GeEpnZjjxjumuKcTvSI30MfEr9pmEqQgljgURH58TKK8EoQ+fLZDmm
 qZqHYtiSxc8nXw9tbCL1eXB1y8zzsCHpaVPhwM2wYy5VI7K+Jm0/LNcLB
 u4hA3zuspgQT0qI4snsXqz8gLSKnMugD7hYMYunc2tIzytT4FzFwKKZz2
 zZsudCBx5yrqOJM/xjkhrcWpv3S5dMHry37oFrWW5OtoKrfwiLlRbHP0A Q==;
X-CSE-ConnectionGUID: Q6JIklqRSla7XICQc98zvg==
X-CSE-MsgGUID: BJxL6dIUR1aghf/oE7lzFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="97066487"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="97066487"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:33:29 -0700
X-CSE-ConnectionGUID: gHaRjO1yTmKkPALKojlwcg==
X-CSE-MsgGUID: z8X30qF8RDm7kror0zKsXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="236784634"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:33:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:33:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 12 May 2026 06:33:28 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.3) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 12 May 2026 06:33:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SFXbi4M5KLcStAmvTPAbUnYmcZwjO234mmI/5U1G3f59HW0SknNj01xG9fxLf2aXNa8el2Eh1m2oDEBuC9dk/fGklbu0lRYoL5FmKonvnkko8VNEHL3lmMPp6cp0VsYAD3kO4FS6cWUD16pNCffJCtleGl6c0BOvvChs4unSYijsamH5t0pPsu6YUGaELOnTVn5NYhvz/0qfXZtKqlvi8dVVYF/Ue3NWOYdkaFzzrruGyvO7CoFRF+Oz1CQRnErCWAIK1eMHXwsjWH0pzYJQ30ItiJMzsW671ocUxDGqAMQi9i36CSQcPC4a901erLwAek+YYZxXcIRxcY5/lxgGmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FlThUgt9fxEoJPlx2v66fef/Ml5cWvjyc9/snhxahoE=;
 b=InCBiE4dk1qW7bujHw1NQBS86sbCDLg1hgteVWU+jBHCPI/mNk3IlnToLJTJt6nVT4V1bTPtXNJX8uhBKyUr7wkty/Rp5f1eRAsGZ08hJtqaGTmeP+0cTL/iSfSBhIk0AkrRmaG0ZtlaQwLCOMqEeA+lJOc8flZCKcpS8GjezaaAnt/ZFssS309RIVvn2u/mfFbBqm4JT1Tc5Z/mLvZrDxENWVPXWIqY+HDwHNeDqCHVqT5wxw8w9pE3/34A952ogVeci8NA9iMykuueM4jxScNYgbiU+5BlNRK2C0+TaoCBuPdAYydzJlnQHSY/f8zXd3fh/Il83BP0OhC0fk0ZaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 12 May
 2026 13:33:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9913.009; Tue, 12 May 2026
 13:33:20 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/bw: Extract get_display_bw_params()
In-Reply-To: <0a68170c66f746503b0ed5f285b165ac5ddc9657@intel.com>
References: <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com>
 <20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-4-e762cb8662da@intel.com>
 <20260511224923.GB2131374@mdroper-desk1.amr.corp.intel.com>
 <0a68170c66f746503b0ed5f285b165ac5ddc9657@intel.com>
Date: Tue, 12 May 2026 10:33:17 -0300
Message-ID: <878q9o3g82.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7386:EE_
X-MS-Office365-Filtering-Correlation-Id: 11e6bacd-78ed-40bb-f580-08deb02b0858
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: kNxAFx9FkMS6v7RaHIb01YSvA1vdRP2krhc1yC5Q1SjtlkxlTnazR2XB3LLNRRQBX87bPbTwvTDydC92DONAI54IclSVvyPk3ENDRgSGtNErR3SGXC/JCBPOP8rHoTcyJf/3TUE8AGUf2vcYqAInt+oO6lZ58qWcNotPj/Oiwt5QH3JUn6o5OOoEjca+aAxLnSsVEUSJRthRLDEui7F4rZNFVvIRiMbm/DEQlJ/AnEd4DlzcRrBpEQZ/lB67GnrGA4dgJ0PbqU+CkOz4CJwO6fWefaYKvqR2VDFme057tuR30AQmjDr1V5SK/9+FI4RLxuKvbMr1CTH8PxBXtwvElwCF4a+GQNIkgwjgl/nbXDktT2ED3oEPCtq7SrMXQDQ9pp2renQjH4MtmLwjdunc5GR+XdVPyGCrAbChY1MwQqD9KQKgH5vyh1ahlZ6fjONr9f0RlQSb81cd5BVTQkrE4OUJAWoBHTiUhUHLeiloYXyJdxVzXcI0690eE5qC9Wf5xqShicxtAMQkfX74uqDiTI4n5Ur60eOe/dFTUbdkqFHzcOA4sa9fnTF2axu9xL9XKgc/pe+M9KXOG/Cvrj91svNKqO6E/iI0DEirtc6mBWclUlie4MA7HZq3PxVYrYcr7qa3fZ8EeJAWH/etf/RmJ9oOY6go9xHMYmcD7mHiQaYQXjiqzqoai3UIGJZz2CQ1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kBllZcAG29I0MtbzqgxReGKY1qqjRRCuEbbUPipqns+pG3i8TKD6IM0s/Nlg?=
 =?us-ascii?Q?jUsriYAhIOhJu0Kkpk4/MuASDt4qQzpddLPuKzrW6HP5pbOgqlwLEDaLXeO/?=
 =?us-ascii?Q?pH7tiA6DLuOc7vk7haZr3kXwwDzl7SIPbJ128lboHLRs2+3BXDixGm79VanN?=
 =?us-ascii?Q?XAwy2QMZhRE1EHnSkF9ZPHpM/l7lb1Vb9GPw58csKXIwL+mLvBeooOcoqZCW?=
 =?us-ascii?Q?cdutlCpi7m9/Fg3tLJA+lhur3UlbTJQ//5rJstW1LzpWIekGESYJ7eQr6GYZ?=
 =?us-ascii?Q?RBpyfgPUPTroPyT/qJcMd6tQJXPM4Afpxyb1BGwXLb9anjRo8wYol2nktnRF?=
 =?us-ascii?Q?FCpRlQIG45G1eGqUOI5Lr69bC7HLEWggDlEjFufTyWDeuQ4vCs2D6pkpVKIM?=
 =?us-ascii?Q?l+8SHzpURnTNAMPE4lUZ/Vs4LBONJ2CyOUN2wOgMujsKBWAIwLJuNbcfKick?=
 =?us-ascii?Q?Xb19NTKD+QnHWofT9UvltBl3+Ekfbnok9qIBJdpQgMaRymUgblZT9Ov9xQQI?=
 =?us-ascii?Q?Txb7kyfLupgj0DuT4yta0afEzbyYkgrB3EHB71ld/AqpRYRN/t6W3xtIb01v?=
 =?us-ascii?Q?dMKwk7sdGSXmfhk6lEqCOfOuziDTJWPyuMuCzkE0j7nq4DLlN5LMqgkexib5?=
 =?us-ascii?Q?idVA3Kb1E8HA4/xBvE0OABWOMHNdIz1ZyaccWO0Y5iMwsjIheeZoXubZgil2?=
 =?us-ascii?Q?jksRUqMFUM+evOUEI4LgH8/qODciRfoqnQznBWAXYmQCHfA30lDRUIU1ZGYD?=
 =?us-ascii?Q?UMEjzqWEQXf7l0NMD9DoYSx5HV4ZFKjet126wHMRpWKhFlIF/kx+Doll8Qxm?=
 =?us-ascii?Q?18LirqxWm/yfejPtvgXTx4gAhykp5q8Ngv86fkorSw4qZIh8cXogBHWdGFGp?=
 =?us-ascii?Q?G0OYQwvsAXrH6F0j+W6aaSLgnRK0WPLCQy2NTlHWZNIfokdgE6wqDOkcqgJA?=
 =?us-ascii?Q?cMEhCEvnedHirN4GlJsni9e8bBPTqP0ql+ngbUZgRRBy7uD2ejZIWoEyNfeB?=
 =?us-ascii?Q?si+B5CD/HwMwnWBZN0OcOF2c8OaX2xYKwcRmxq+/1mEBfPYP9JBQVG7ZqR1u?=
 =?us-ascii?Q?kq8YyrGfceAyjP7z4sy0qDmUuPqQhZ0cBCD2ATyDjZsW/OZZrtKS9U7chKsb?=
 =?us-ascii?Q?vqDAyJfyhPWFY/dl8oKAaYn8c+dpSQvSTMerN9nF+y0uXgKPsdNDM7nACreF?=
 =?us-ascii?Q?7C2Uw50P3xbkGvDp0jsNrmplDjTrQ/8MTSwgIyf4rvtLSsWNOJxQM0NmPA4D?=
 =?us-ascii?Q?RV77YMOz/yJ4hPX+XlqyJ6f9ixYiIA6KsAlShMTyXQ9uAdgxJb0rF4Rb2tR6?=
 =?us-ascii?Q?wTfAFjfEDpM5336NlK5wP08bHEZx8NFa5x4/O/vdYkVTlmuA3yFMdLjiuEFu?=
 =?us-ascii?Q?kthSbb5leHLFsrVuHa3zl8HQsdb1NxPA/p0Ri/FxVJTDxqW+l+YFOZbtC6Ie?=
 =?us-ascii?Q?UZKGEKczXAxW3QRKFEJmzwMKeMzkKY3E+IBnIynSphu+hFvYglYZysQdWEhc?=
 =?us-ascii?Q?9q+djCdGxrokzecoEmPGJTqEstqMn1N5GswDjCVIE5dWxTf1aaamJ0FoTNCL?=
 =?us-ascii?Q?ynu7OqM/Om9gJAwsJtnhcdj/yHeYjh+JAE2SLN8zVmv2SPV4d5/DzCWSq629?=
 =?us-ascii?Q?9rrh3NeCI6/vDd80JimRw7kyMJR7NPfOFZm4CID57q4tOtDLX4Xy7XOyjHKV?=
 =?us-ascii?Q?d25cAYIQ1+dWqGEH9dK3shvxElQ020CNQWe5WX9eb6ntWsNx4kmm1GSQC5s2?=
 =?us-ascii?Q?tkR1Sl7SNA=3D=3D?=
X-Exchange-RoutingPolicyChecked: Nk7JZ9DFvRos19RQ1Kq2wDZIbXq3eyMNOapnmdQewDscucbFp5+jXhX2cIRrtTf8cuHVJhMOneWMFLmkc47Gp0ILmyhpnRqEM/cxsWcPSFYZzFTzkv7IkITfrODJIva+Or2Mfah24mVs9fxiqgCuU8opirG4BovQscSSZOJVOhoOQStKCQf2mCxJ4SDeMoiAdf+DwLqsDgcNXnRMb6ztr5uJI8ULLhWS+5TylJp7Q3bTI4r1l5eFThXpuVvwHFXumm2yeEJ6IJSwalujd587xLENu08uvF3LxR8L+u7MJTlC0pCMdiI+HRqjpdXo27tVFL7CN8eSzTFYfy0+kvNzew==
X-MS-Exchange-CrossTenant-Network-Message-Id: 11e6bacd-78ed-40bb-f580-08deb02b0858
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2026 13:33:20.6268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eMmu8Tg+ZHaHT+GEIo38eAg0XAMUOxzbm8PFijoeLlvYCG8GvIr+2zj3J8J6S8XkO0CqeyzAyBMSlkkFZd2Byg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
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
X-Rspamd-Queue-Id: 4899352142A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Jani Nikula <jani.nikula@intel.com> writes:

> On Mon, 11 May 2026, Matt Roper <matthew.d.roper@intel.com> wrote:
>> On Mon, May 11, 2026 at 01:30:59PM -0300, Gustavo Sousa wrote:
>>> Just like it is done for the platform-specific bandwidth parameters, use
>>> a separate function named get_display_bw_params() to return the display
>>> IP-specific parameters.  This simplifies intel_bw_init_hw() by having
>>> just one call for each of the *_get_bw_info() functions.
>>> 
>>> v2:
>>>   - Prefer to call get_display_bw_params() only once in
>>>     intel_bw_init_hw() instead of having multiple calls in each of the
>>>     affected *_get_bw_info() functions. (Jani)
>>> 
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_bw.c | 36 +++++++++++++++++++++------------
>>>  1 file changed, 23 insertions(+), 13 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>>> index c01356d38e64..acd1b6901b46 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>> @@ -493,6 +493,26 @@ static const struct intel_display_bw_params xelpdp_bw_params = {
>>>  	.displayrtids = 256,
>>>  };
>>>  
>>> +static const struct intel_display_bw_params *get_display_bw_params(struct intel_display *display)
>>> +{
>>> +	if (DISPLAY_VER(display) >= 14) {
>>> +		return &xelpdp_bw_params;
>>> +	} else if (DISPLAY_VER(display) >= 12) {
>>> +		/*
>>> +		 * RKL's SoC was based on ICL and the display, even though being
>>> +		 * gen12, had changes to the memory interface to match gen11's,
>>> +		 * consequently inheriting gen11's display-specific bandwidth
>>> +		 * parameters.
>>> +		 */
>>> +		if (display->platform.rocketlake)
>>> +			return &gen11_bw_params;
>>> +		else
>>> +			return &gen12_bw_params;
>>> +	} else {
>>> +		return &gen11_bw_params;
>>
>> It doesn't really matter, but this is technically going to assign gen11
>> parameters for all the pre-gen11 platforms that call through here on
>> i915.  If we never use the values it probably doesn't hurt anything, but
>> it might be best to make this a condition on gen11 rather than an 'else'
>> just to avoid any confusion.
>>
>>
>> Matt
>>
>>> +	}
>>> +}
>>> +
>>>  static int icl_get_bw_info(struct intel_display *display,
>>>  			   const struct dram_info *dram_info,
>>>  			   const struct intel_soc_bw_params *soc_bw_params,
>>> @@ -843,6 +863,7 @@ void intel_bw_init_hw(struct intel_display *display)
>>>  {
>>>  	const struct dram_info *dram_info = intel_dram_info(display);
>>>  	const struct intel_soc_bw_params *soc_bw_params = get_soc_bw_params(display);
>>> +	const struct intel_display_bw_params *display_bw_params = get_display_bw_params(display);
>
> Feels like it gets increasingly weird to call all these functions
> unconditionally when we bail out for !display right below.

Yeah.  Let's fix that. I'll have a separate patch for moving
intel_dram_info() down and then fix the two patches that add the other
calls.

--
Gustavo Sousa

>
> BR,
> Jani.
>
>>>  
>>>  	if (!HAS_DISPLAY(display))
>>>  		return;
>>> @@ -858,23 +879,12 @@ void intel_bw_init_hw(struct intel_display *display)
>>>  
>>>  	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
>>>  		xe2_hpd_get_bw_info(display, dram_info, soc_bw_params);
>>> -	} else if (DISPLAY_VER(display) >= 14) {
>>> -		tgl_get_bw_info(display, dram_info, soc_bw_params, &xelpdp_bw_params);
>>>  	} else if (display->platform.dg2) {
>>>  		dg2_get_bw_info(display);
>>>  	} else if (DISPLAY_VER(display) >= 12) {
>>> -		/*
>>> -		 * RKL's SoC was based on ICL and the display, even though being
>>> -		 * gen12, had changes to the memory interface to match gen11's,
>>> -		 * consequently inheriting gen11's display-specific bandwidth
>>> -		 * parameters.
>>> -		 */
>>> -		if (display->platform.rocketlake)
>>> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>>> -		else
>>> -			tgl_get_bw_info(display, dram_info, soc_bw_params, &gen12_bw_params);
>>> +		tgl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>>>  	} else if (DISPLAY_VER(display) == 11) {
>>> -		icl_get_bw_info(display, dram_info, soc_bw_params, &gen11_bw_params);
>>> +		icl_get_bw_info(display, dram_info, soc_bw_params, display_bw_params);
>>>  	}
>>>  }
>>>  
>>> 
>>> -- 
>>> 2.53.0
>>> 
>
> -- 
> Jani Nikula, Intel
