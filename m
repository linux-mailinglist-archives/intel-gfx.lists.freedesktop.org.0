Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDZHABjOAWryjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:39:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C9950E064
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0CD10E723;
	Mon, 11 May 2026 12:39:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SvgUVP/k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C3E10E712;
 Mon, 11 May 2026 12:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778503187; x=1810039187;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=0VTVJ8L3iTdrMbJh7QtNe8xN7PGnz67dcc9Tjgub2Ro=;
 b=SvgUVP/kKhEx2u1X9ESE4kYOUpNxxqyUNuCnI3xH99hxJk2SaoFqEC47
 bmhjMzTDpGPM6YyvnEK9o68NEZNUFeo5VQnN8NpDGBTpbTMgzIck0sKnB
 Khz8qIp1LnJasE6vj3gH0HCXB8socQuK7EFuhGOcgyeEyih+QjsN3qLMr
 lUX30ZyqllCRdJqWdAy7BlSETkhnzxrWBVLqqEqc+HgxDvXVLFKbucOPf
 8WlKiTuk1epjEf4M4KhTN2C/UJuseD7JU50Y7pwi3F5EH11x2ioaEQ2Zw
 Jvpijz58DQ9XyNur/nKenIuI00KV2WcPnX5909v3Svp2jkB7TDlD2y33v g==;
X-CSE-ConnectionGUID: oA8gBsKRQBaWP9cklgNg0g==
X-CSE-MsgGUID: 8kaJvEWnQ/GI3UVIdZ6vXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="104846952"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="104846952"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:39:47 -0700
X-CSE-ConnectionGUID: QwcgUSlcRSS+rIkByu3sAA==
X-CSE-MsgGUID: vZ+jhHFeSxyPIN6KrOLAnA==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:39:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:39:47 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 05:39:47 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:39:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mPRngQtnIc1vHeQ9fvPP9LqLMAU0MCYFqDyqIuneiv/DDfRJdB8TF6Hy/1ddBvTRS3XcFtxIKnSqzLnsOwi43HNIQgvNDVapIE3TiSFIBOU7V1iURaHsrJOpRUbartkFZYwFFQ2dkgq270OjSy3d4L5pteQ4Ijp43d5pDoCuW9niLU7/s4c8tODu4rxFeRI91tExYIOKg+9l+1x//ARRzZbmPaiuKEU0Va9rF1Sd5BrUajB2o5gBjLBDMhIw2ss1JI1MdgNMJ3scUEdfLkmO8eerLznCeS5T+Gb7IZEEoWrgehmexlzdWUBKlf5eaZtZbL/u5ZbPFhIrvOeTLQkV6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kgwW8KoT/qGAPW1gaNdJPzFhcNbUbYeomnX7Kfcu5Ko=;
 b=lypoTQx7YPOefv5RTCSdHwWEA6088QG7PubAnlP/mJ9VTodpc0jNwt9GHDGK/DdjbcHHplyXqiK78/ygyqYuLtvYm6SmSf2Bp0AjFkutQZaUAvr6AP9S7BNkZ3Jp1VQjnGR2syJdh9XxT+ThA6Fs1TJfa3tEcMr9oWyng8eLkMjWlD3b35ZIlKHHVPgVRyrIBwFaEZnV1/lgoKvh/bW7X2CEaLGHxTgIRqMgIEuHdL/5FipoO8zWbHql7zqKvtHrjajJPFn0O10OHUHYQ5qz2wylPWpcLklGqtKv0dzjNl0nw0RyLYdxpTVK6vjaDxbBpwXXlDhaeQ9i4whiFQV6Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3658.namprd11.prod.outlook.com (2603:10b6:5:142::24)
 by LV3PR11MB8506.namprd11.prod.outlook.com (2603:10b6:408:1bb::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.21; Mon, 11 May
 2026 12:39:44 +0000
Received: from DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542]) by DM6PR11MB3658.namprd11.prod.outlook.com
 ([fe80::2c3:cb39:90c:2542%3]) with mapi id 15.20.9870.023; Mon, 11 May 2026
 12:39:44 +0000
Date: Mon, 11 May 2026 15:39:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: James Xiong <james.xiong@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/dmc: fix assert_dmc_loaded WARN during async
 firmware load
Message-ID: <agHOCIcYOsDPyUi0@ideak-desk.lan>
References: <20260508181329.666762-1-james.xiong@intel.com>
 <87tsseqgrb.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87tsseqgrb.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF0001A327.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::690) To DM6PR11MB3658.namprd11.prod.outlook.com
 (2603:10b6:5:142::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3658:EE_|LV3PR11MB8506:EE_
X-MS-Office365-Filtering-Correlation-Id: b13a2140-6115-46dd-82c1-08deaf5a60ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799003|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: CUDloPX4+VghbsCa1o5Yj33Bg2Q8OPQyhOD80Uhph2IeEizhyuzDQcSQw7/njmA8aAwAy5zdeGMm6rjcrPFUjZ2oCdWJsf6mrWBviBCMSmjFjin+AypO44JM4BuZnAL3AhWluL4G302nHv+uIMOv7tRB5wBINwBk1WisOK6PVDEwIhLC6E1vGKfC49IFvTidZwwj6SeYdL+FDct1PiNnqWp5QsDChYMq66piLfg6IFFZVR8oIYbKypqv3BTAR+vGPSJnz5Ocnbd/QcpUhfwc1Q7ADCmz/oxDuSHXUv2di44wLLlWQlBFOOCKmO1LSSbFzLmodCu+eKXJNUSCWh+tq7CuAMNrOTDHAdGR2WI0JJb5gm2kwXpYjy11amoXm4dWIULPLC2kzHkDM3eOX0Jdqzip/ROx1FKN3bjGfjSgIKdE5z7ejku2nniErrQsQZYgLj/2hNuEGl/tbYA7mnf8FmFFpDAKh2dgvfuOslYsJGvINKh6u1pg4ohtqOMalBN4Ngvn1orqUkKAjlUhzL9XmEJ+KsJHASLN4EbBN8v/9adD/IaAAfk3aw/YmI23S621FgLTdjBtaDX3y6NafRd104x3qNWfRdynreLUSHs4yUNLBLP4VYP6EP5W7ChNuNi1FJc4oI88wjbke3WQWdE8QNZ1J2ns6v5r82j4o9lqY7v143SjgfXeji6tpXFwt/wh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3658.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2MoT/sYBnx5MLaxMiOCz/J2nxf/oxFPjXAT9UHfOV8X+jnE8uVieC8G/XZ7I?=
 =?us-ascii?Q?R/Qi8n/y87TpNoE7EaSP9Rc9IozU2vNqW6RkrXSS0Lbqcdy8fL7DfzL2X/eW?=
 =?us-ascii?Q?dLSqqyte2FGTBuFlioMpgfd4m74ga0V6OhnvE775rDzKqBoYCWKg69bWyDmg?=
 =?us-ascii?Q?jUcr1w0PZ0oiW5Dq3SHXicj6nXqbzpylJdzUGsXPOFGU04anieUp1ssi0Lcx?=
 =?us-ascii?Q?SrWTUf2mnOSYNR1bM8lCtaFI2b+s/AOzJLvigeHaVYPrNUZ/7e0kEx7PbRQY?=
 =?us-ascii?Q?OKdSEm3/z4BFzFZZ7RPDaCowvr1Zk0GklTsDThUitI70ofxBEAFokNkLU7y8?=
 =?us-ascii?Q?yRnMZFIou2QibHhdC5sy7TrdFNLUJnOjLzHYWJj2l+MOItGsxg7KjlWegq6L?=
 =?us-ascii?Q?eas8LsLPyBWVsr8W7sK5AYwSu5bCax52rpr6ht9ZFnmGojVcQd5jhh4rsew1?=
 =?us-ascii?Q?E5mJ9oBJF7vsLReLxA+RqCqK5Y8kbSPKR5GI4+h+eZ8OYFEf5hMTLNYkS1tl?=
 =?us-ascii?Q?DoY7Bfght5qcG4cRjtypV377pQrBJuU43kyM7qg4FmfeFrmF3/d8NmJY8vug?=
 =?us-ascii?Q?v0zmICGoH06OlERkwC93v+FSOY6859pvSZkbRD0ysJIkxRMJVAjtdHXT5nZ1?=
 =?us-ascii?Q?i8ERH3woW4FQd9yaGbhQyj/V3hknggmC/W42/03LJbtaMkCL8l1MIvlesAHN?=
 =?us-ascii?Q?iy123RouOaIuqv4KSBEyxp5TxH6BcM2kUkFblzO4Ry3Wq29wkzitA8GoBOUf?=
 =?us-ascii?Q?5SW005cmXVbBEHSCD/wfY3iFb9obigyuWxLd1XBiAgpr2CIlzP9mt9zbT6zV?=
 =?us-ascii?Q?ZRwbmBy7HFLHOC6B3JXtWHCU2IfmdsABG5ZYaJMRh7r8DIT2zuqXCAsSpreo?=
 =?us-ascii?Q?t1hXMyCTzA0sogj4qdCbMYF6EfcCVZhy8+GiM9U2cgdkxwfPhF03bBHLb+Tu?=
 =?us-ascii?Q?Js2D0NKAUZWg3P5zL84mmmLn86BQboAvCcUcLcmunmBl/7g/Fv4E4FyxMESO?=
 =?us-ascii?Q?3fIfN4Vi26cLZ0/0DUBrX+4OouJZDDC9TD7bSRzQOzWNx4SayXnLr5RrSARu?=
 =?us-ascii?Q?f6bNuSlE7SBZEmq/SbSaWyvnpZfe7zjEew6zcsLy3Oi3FPZ7HyCG0EuNzo/f?=
 =?us-ascii?Q?ap7T4Mr4e7xphSjCqZu0cD3RH9ojBtDfZPQAqxp9BBSGY6c9KSfqQNo0bCRW?=
 =?us-ascii?Q?UUaFdsN94IF+N8uP7Htu1C6xpbAXtj5wybXvKSJImyjDb2HRTx/K8ubL/4o4?=
 =?us-ascii?Q?aVFIfDgEr/8qgcz+cGU7j8sST8A2hz1imGfJez2dWegcW3uRMen0YtqdZfQo?=
 =?us-ascii?Q?mQ6zYD3LzcH6Y8AxAC6Y/R35H9yQ81En6bzDkdI3XlHg6+SHAM0TSP9+AO+E?=
 =?us-ascii?Q?rSv+X1UVEAQtIWqw7WRKSOQFJAX/GTzAafiI6v8fbOjhRLMTKx748axdrrsu?=
 =?us-ascii?Q?iZ6cBCoMw+htd6i9XNdb1r5Mp/XaiIEASxfGpOQBaXQpdDlUKdw+IVcnSZYc?=
 =?us-ascii?Q?L1M5uUeJlrnZuphmOjXAQSWCef/KuLeYJdfwCpeypkK7CVbEiareuWb8OgBK?=
 =?us-ascii?Q?gU2awIauxT1rCl6yt+H90JuzFU5cSwRYclO0/Pg73e/FGJtWoQ8bBo/rzri7?=
 =?us-ascii?Q?6xuMPWEZLrd+DTiifBz36d3uyQ6xqPvjQOxUccTsj235xDGCkes035LbTtFI?=
 =?us-ascii?Q?VY1iQLQrwQ5t941aX6p5o4ybcXFvftjrGbRwQjY/TnLxzBX25IwLnapMGouP?=
 =?us-ascii?Q?hRYuFQrf/Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: KPR+C1C9U4mTmXGzmnZSepXz/gUCtBC+5mGrUPsA2BERizcWtZ3Eg3y9nS46CV5vkQasTYvlLbaKUlAcAD0zFH9y4RRVxpBAMutif8vuwLWJFkQDNSUA0UKGrd3BJJFl88SKmNStXnop2Moh1hxtvp8Zkramkmv2K0bHS1DnASC+Jd0ntfWflt3Ezwtd073ZAkIPFNF0pCm17cwkKz1c+mQXF62N/BX6Gg5oyWGXBPozbF1rNy0XigEx60Imcv6b2H9Wmr0Hcd2Jxjx3qrEviBr4S6mmG165aDh7AdTBt4HCY7/b70efmM08FG7iGuig5DqtlRYNQP4HOyuPr/eejg==
X-MS-Exchange-CrossTenant-Network-Message-Id: b13a2140-6115-46dd-82c1-08deaf5a60ba
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3658.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 12:39:44.2078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1034r2AMUhVo1PCSo7NzVs6xLsxx9hn68HZFtiw+Fwo8ywIIFYQUUC400OhHboIE/tBTbNELOhA97TAHq3IPeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8506
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
X-Rspamd-Queue-Id: 54C9950E064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.990];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 09:20:56AM -0300, Gustavo Sousa wrote:
> James Xiong <james.xiong@intel.com> writes:
> 
> > During driver probe, DMC firmware is loaded asynchronously via a
> > workqueue. There is a race between parse_dmc_fw() setting the payload
> > pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
> > writing the firmware to hardware registers. If the probe thread calls
> > intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
> > intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
> > registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
> >
> > v2: Fix by calling intel_dmc_wait_fw_load() in
> >     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
> >     Sousa).
> >
> > v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
> >     so the function is self-contained (Jani Nikula, Gustavo Sousa).
> >
> > Signed-off-by: James Xiong <james.xiong@intel.com>
> 
> +Imre
> 
> Perhaps this deserves a fixes tag?

Since that would result in backporting the fix to -stable, it depends on
whether enabling the pipe DMC functionality before the firmware is
loaded is an actual functionality problem.

> If so, maybe it should be this one:
> 
> Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
> 
> The change itself looks good to me, so
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 0df4f42ba3e3..4151eae92744 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -786,7 +786,12 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
> >  	enum pipe pipe = crtc->pipe;
> >  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> >  
> > -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
> > +	if (!is_valid_dmc_id(dmc_id))
> > +		return;
> > +
> > +	intel_dmc_wait_fw_load(display);
> > +
> > +	if (!has_dmc_id_fw(display, dmc_id))
> >  		return;
> >  
> >  	if (!can_enable_pipedmc(crtc_state)) {
> > -- 
> > 2.34.1
