Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COoWBuTm/WlMkgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:36:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0DEB4F7251
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 15:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEB910E5DA;
	Fri,  8 May 2026 13:36:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IAJ0Rs/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC00E10E350;
 Fri,  8 May 2026 13:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778247393; x=1809783393;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7N9DAyGvQ66FWsjsBAgsC2qVKnrZbIZSRl1eTDar5/o=;
 b=IAJ0Rs/jVU+qMX7GuOF4GuKjJGRax31nAfdxRkUG7qV/rwFBpeS0HjO3
 ZIi9f1OdKfrOYkhO2qZdZroVDJ772YOxSqkr4exs1VTOCH8oIi2Hbm4yI
 IB0SS4mITchHmjSbhVWyl01mQ1cCv8Kna3q86om1ls4eMpb9njHRPn9Ym
 pSqSEvIzukvw8yAfW+g9Hpb5i7gmMBe+EdbkC2sjLz1bIofOruDex3Z/O
 95y/4qoQvXJGOpajF8yRARS3egtQVKSm7na5nC6AuW7YZeRMNhnHsuA6D
 lIneX7Zq0yJzu9riwmJnofOZH25/5G+WL8/uzwwduOGVjXgLIbWfNPWDN w==;
X-CSE-ConnectionGUID: +rXdC2LORiK/m50Aqtv6AQ==
X-CSE-MsgGUID: 0z4NE//6Qg24xTw1rAbCJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="104674051"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="104674051"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:36:33 -0700
X-CSE-ConnectionGUID: jVZHO5yVRfCs+TFB9Ta91w==
X-CSE-MsgGUID: 8lZUJDKaQnejmGR++N42Rg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="230366065"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 06:36:32 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:36:15 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 06:36:15 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.42) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 06:36:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ahicXoR53O5/v9CWvPgbhMYW4HWDKRjy7diA5kWNmZ/il9LrxrzorvOehbFIWdTLzVUdgA21us6t31ST4jzcuS019MN7yqANbrzj68mHtMNNQBMXkHGAqhaYsegJIhjJJhbGnxSz+coWVivYti2ROe5bfDV1lYemAq2srA9A68EAFTes5Wdws5UifLH2JNBaPkQb3lKbIxIjauvDw3Q2PlbQOmEQ7OHMFT1w6fnExOzQxss7VEx3BWy0CS/th2PurrR1+Nr0SstOfaLG/ihz3+G889mQKDmQixf1QMDHPBVkJzoPTnk5wTpYhv7wKDFYvAKbQ//k2pKMwrwymDQ3jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HSNE4ksI9e8Zdh21JgfXqMeiH79a4JXztykaaWbmYUo=;
 b=WVo1mIXqJjbcWIW4eBbQjtcelDOFGP/sUiKViVReFR2WIbeJwx4rHws+cAOoj+seHHoEGgqaUvs57X4a+HqhWFJoGUkB1XvNuTEekvT62xEV5ONpWyAId6qO20ATe4UTdbmkVtmcqPxtMClIiZKBuHnBYgB3fqIeu2pFeR8jyXbWhYEcP4F4eZVXqAq0PY3wvBCinIMljy3HQpKRTtA1KFP54jkilwTOta8rSU5beNu0W1MdKaeub9T4dhyqEmQZhVWZxamDf6IhA4G0G8JAf67MEaXfnj5Itk2U4vTQMEMNaA7YcZjE71U3S0IRx2DKn1zrggVHbVYYSEx4CfJ7rQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA2PR11MB5132.namprd11.prod.outlook.com (2603:10b6:806:11a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.19; Fri, 8 May
 2026 13:35:58 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9891.015; Fri, 8 May 2026
 13:35:58 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, James Xiong
 <james.xiong@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <jani.saarinen@intel.com>, James Xiong <james.xiong@intel.com>
Subject: Re: [PATCH v2] drm/i915/dmc: fix assert_dmc_loaded WARN during
 async firmware load
In-Reply-To: <c071d6473256af2a2c281a4d148630269106a51a@intel.com>
References: <20260507164605.608368-1-james.xiong@intel.com>
 <b02ec283a5d2137f48859884805d9c55f216cf58@intel.com>
 <87v7cy6pyq.fsf@intel.com>
 <c071d6473256af2a2c281a4d148630269106a51a@intel.com>
Date: Fri, 8 May 2026 10:35:54 -0300
Message-ID: <87o6iqgh1h.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR13CA0027.namprd13.prod.outlook.com
 (2603:10b6:a03:180::40) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA2PR11MB5132:EE_
X-MS-Office365-Filtering-Correlation-Id: b98c1bfb-c45f-464d-f6af-08dead06bcbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: GpGEdus2ojmbSsSSseP769J5ZRvzVfxkP92nVwVqlrYRKJ5Z99zDyJg7IgvRSuXBwXUjvXi+TZ9Hdv9zf9gLHuwxSPvsQsi1EoJkT9/RbkiMsHOOy8D+t8GVG/7swH9NUB7l52ij/C1PMQBPE+TsQ4hewdJlc/awYOpVLUXQCRDz2vKdUibiCabjXJDDntkAtfAKr6uycRCeA5jkD7JLZOvSdTQv2MeDJCYDVawg3GECARKt63eNHnHWTkLtGQ0sFIC/vZ/ZKNE1S1PrTqE1W4z3kEmVDSbQVk+r7rv7UKp6V5ob0VEpnpoXUMmqaOf9DeKV3DUFXQ2xtayaw12AAylt2i++N0YsxkEwwN5htGWrS5v8WTO7cWi5ZEaN73PwHWAxUcaq5K/QcQW6g1DOBMpJyFIjRR9R4Xv6qqRJ2px+LnJ5xxUXfK9s1J3DfmMdKIs0nrgEA4nXXxrIvAuXmdg+XKBx0vuGnGH5jf6l8FZVmw/0OVP1q4bE2CdEZvpw4gomEPZXcrW3ILogExUY1Umf6yu9/fH4JfYAQTqe3ziC78mjj0zGQ+Z/03s2R/q98k9Xb4LV8eLbfTom65fiWhsw9rr403S0dkcw0VvQwNQTD098s8f26TPNztPJxwOux6VOlHJAfvG1Norv7f4RI3wT6TjMhCSb+8dW1EK2URx88DY7lOVrOebeWkrOqnwY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Xp4iUQtCDQ78LoskFLQBiK1tRZIAkQrTAUxdAAN/orgaODECW1xg9AplQ8rv?=
 =?us-ascii?Q?gw/3duPmDFVOG/UKRe2HcmYA64PGZbL3f0iojOumenkdNRUoMoUzbEGeDskY?=
 =?us-ascii?Q?6p4cR8JsYDvbUC+I8/fzbnfK6//WmKU7cyFdlimF45/UU7yKo8hqufaPGSuq?=
 =?us-ascii?Q?1BB5NtmHrzHC/fPf2g4Mb+EB1x+qQXSWHB8iMKN/2nIe4oRmaQXogOt6AQ8L?=
 =?us-ascii?Q?ZtlHjQsOZWr4cLYAPKiC673RKf5ROI7nmr4B1U+qYuDn7iRKHG3QG71fYap7?=
 =?us-ascii?Q?cLLsSlRGk8KjBiWD9ENweV0RVRSZpPwwuypzi1YSRcr7w6g8hUEMhMab70Ed?=
 =?us-ascii?Q?z22PsVKD+J2ivc6zmcOCRIipc/N7rc7DLEPs7QY4JXCPc9PS1VhBYCfIRvPc?=
 =?us-ascii?Q?R189bLEMcEFBE1ndHYl3eHJ3M8LdlaUAjkNZAvAFrg4n8N0QOcDhfpcIGPhd?=
 =?us-ascii?Q?1DS10hmkyF2IBCDQWq5W9v51oF89FKAGb19LJ41/4+3l8qDxdaypDK/a6wUr?=
 =?us-ascii?Q?QGMsPT/AuegOTMYnbHccLKD/IVNNdB2EhHEACS4xw40yrAXRlSiauSj0v2S5?=
 =?us-ascii?Q?QJTluTDOfFRZVqazI9PDrekKib+mgDrg59+XGm4h5kK1ef0dagdN4b+UY2Zz?=
 =?us-ascii?Q?bwLxbq6LbXByZF/0YdnjBS42s2D3V5jB3sKTwyS7n7v9m1KMXHdsBIKRiMWO?=
 =?us-ascii?Q?T2FT9R5S+tYM/JtiFupmIirqBeldfLMqBEee2BhHfMxWHgQt0MRuYGuuBY8g?=
 =?us-ascii?Q?Vj6X6SddmmnCTIT60HcZ0CIEFhJmZnAd7lVgicudFFaAtCfvYwhGCaPkJx/7?=
 =?us-ascii?Q?b/vjf+hBzknVdjVMycZovc0xHwtaG9BWMgqagHUUGhYO6Pc1XHkxiLZtVsqk?=
 =?us-ascii?Q?hQAHR6fL3OmCSGxVV81eTJRsI3ZXgRi4v6KoeR1Z0A6o5HnXIVYcVE0lK4Ng?=
 =?us-ascii?Q?F+Mu4283aVF0zno+2/yStniNlany9ODAGkwH9kKZaRb1aWTPqrSCD5tRfyAp?=
 =?us-ascii?Q?J9Zv6VizvZc77FvXPFYLtLkGbhZqIrALKyDtOVvNj0Gm1P2cnKRhE/W0YDz3?=
 =?us-ascii?Q?uJ+5AQCfYkN1nU1EvtaMnmu70plzMEK3jZOvdgu6Bhknm8Kythns668wa7TN?=
 =?us-ascii?Q?l7FQ1rwkJx5V+fexL5rPLCajC7qpa90Tmac8nRmrXipxdsQbEi49SgnJM8v0?=
 =?us-ascii?Q?AlDoSW34QJQyBu78hz47PkzwqEeJnWT8ZMFjhoUC0OO1V7TNOtRb6XA41m0y?=
 =?us-ascii?Q?a5OyRYeNWDp+yY2snwxyAguNyuTpxSOQ/7FMohizTNztwTO939knMFVkw48m?=
 =?us-ascii?Q?TJYCeKFDcD18UzRGPVIXHgg1nYe1Z+Aiv1k6d0AvMh17kYKvQhiHJVrviAsI?=
 =?us-ascii?Q?An+cAYTTRld2JdvNE+vZO3l1pnYIwSuTKsHlWLpNtg6Obw7umXjeDm/QPFBm?=
 =?us-ascii?Q?am7h0gQZHdpuljV+kB8Oqyu7dM2k0CjyaviFk5KktkHehum2Nhmp6TzTN6Lh?=
 =?us-ascii?Q?IA2cQ1pZyLnM7aHQzBd2y5YT8ubQXH4xsA7v6FvZOEvdAA7G+6JWvQetj3PQ?=
 =?us-ascii?Q?Kl9noOgdQI8nSo8AGnwJ0hZHr0CyeTySDDyXU1vbLO7hUVls8UOo9KM8Qtw4?=
 =?us-ascii?Q?1xqtuVwTkG8rXG3XKZDVxB/s+Opwk7/sUElfuXuB+wpptNINPGWIaBjlwy6/?=
 =?us-ascii?Q?Tl+hFZhi7RvTZf825Go6mtoIzszoTB00IWLWVod7Kb9CbOHkQigTDTGfLsfG?=
 =?us-ascii?Q?yfXXVaECOw=3D=3D?=
X-Exchange-RoutingPolicyChecked: TKIHqKpERuoJv+jEo3Ncz8f2I4o240wl5YfyJujhwPEQE2q0ZTIcTipPHTBQ0ByQlnNKiSxfkazbHgA29zkVy0sM87KQIOCMR9GKPjbobWQU/WogY0oJt5al/cul34cOSQ2AbirsmnbWjyCOPkU6rDymZLXS+8/gVbeV4X5BWnr2wyp2CKPlVC6W7vXKliKymggWCbaTSfQHVI0CFIOSs4M43wxUlYk4D0q6408Mz1epi3E/w1Cax9bfR2I22gvAI3ECEcykqpHonz+7n241mRJEQ8+HGtAVKoQOLiQVaNsf7DoLakUPRcx6tJJpJTQdRCvpNnke5OZhiS2KKBh9WQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: b98c1bfb-c45f-464d-f6af-08dead06bcbc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 13:35:58.2863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RRI7ultPM1blm5Kt/MeM7RNrY8odUkviMG9OwACXfEso/u3/yEtAgk3SDLw+VFlhxAuMJL679JZQnLAUZnTg4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
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
X-Rspamd-Queue-Id: A0DEB4F7251
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Jani Nikula <jani.nikula@linux.intel.com> writes:

> On Fri, 08 May 2026, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Jani Nikula <jani.nikula@linux.intel.com> writes:
>>
>>> On Thu, 07 May 2026, James Xiong <james.xiong@intel.com> wrote:
>>>> During driver probe, DMC firmware is loaded asynchronously via a
>>>> workqueue. There is a race between parse_dmc_fw() setting the payload
>>>> pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
>>>> writing the firmware to hardware registers. If the probe thread calls
>>>> intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
>>>> intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
>>>> registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
>>>
>>> I wonder if intel_dmc_enable_pipe() should call intel_dmc_wait_fw_load()
>>> itself?
>>
>> I also though about that, but, if you need to call
>> intel_dmc_wait_fw_load() in a regular modeset flow, wouldn't that be a
>> symptom of a bug?
>
> Perhaps you could theoretically end up in that situation if you have no
> pipes enabled at probe, and the first modeset comes before the firmware
> has finished loading?
>
> Similarly, why should we unconditionally wait for DMC firmware load here
> if there are no pipes enabled at probe and we could just plunge on?

Hm... That's a good point: we would be adding an unnecessary wait in
that scenario.

As a second thought, I guess making the call in intel_dmc_enable_pipe()
is a safe approach, and arguably makes more sense: it is that function
that expects the DMC to be loaded anyway.

>
> But primarily I'm thinking about the maintenance of all the dependencies
> here. We have so many of these subtle ordering dependencies, especially
> at probe. Can we not add more?

Speaking of which, I wonder if DMC being loaded concurrently with a
modeset sequence could cause issues.  I don't remember from the top of
my head: do we have even try to prevent that?

--
Gustavo Sousa

>
> I'm not adamant about either approach, just expressing my gut feelings.
>
>
> BR,
> Jani.
>
>
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>>
>>>> v2: Fix by calling intel_dmc_wait_fw_load() in
>>>>     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
>>>>     Sousa).
>>>>
>>>> Signed-off-by: James Xiong <james.xiong@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>>> index e88082c8caac..277e56848470 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>>> @@ -961,6 +961,8 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
>>>>  	 * intel_sanitize_plane_mapping() may need to do vblank
>>>>  	 * waits, so we need vblank interrupts restored beforehand.
>>>>  	 */
>>>> +	intel_dmc_wait_fw_load(display);
>>>> +
>>>
>>> No matter what, the comment above now appears to refer to this
>>> intel_dmc_wait_fw_load() call, which makes no sense at all.
>>>
>>> BR,
>>> Jani.
>>>
>>>>  	for_each_intel_crtc(display->drm, crtc) {
>>>>  		struct intel_crtc_state *crtc_state =
>>>>  			to_intel_crtc_state(crtc->base.state);
>>>
>>> -- 
>>> Jani Nikula, Intel
>
> -- 
> Jani Nikula, Intel
