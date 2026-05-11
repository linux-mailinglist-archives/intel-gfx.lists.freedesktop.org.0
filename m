Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eP7wAQPRAWryjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:52:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C83C50E419
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BCD310E6F8;
	Mon, 11 May 2026 12:52:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SAWkpQ9L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9803110E6F8;
 Mon, 11 May 2026 12:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778503935; x=1810039935;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AqbfCqgh4XYymulyynhYO6ZYG12Z9lpfkC5xjd1rZ0c=;
 b=SAWkpQ9LmDIcCum5SZCCReuVypWQ4bOmjcG4tF83MHQOUUbaXhJnBepE
 NGIG7uFIBJLGphLvRQZaJsUGu10YvviWcKSGihr4xxv50noaIKOvJmqUK
 WY6zJzCv3D3d6VzF+N0Kwz5m+WpYop6+gMbSFrnQRZccry6vfqI1+xUpc
 7Y8PEpb2Rtz4zNossi5sBIh5XNsCDv1Bd2E+aDBz/m40ZKsUaHAa+gWhT
 BAocJesv9AsA+B1oI28xNl167w6NkveuujgE4Fr8l6KGBLKW+Xu3jBbBg
 4PB7gQnTcsceRpaAcXOee4FngX0ccflHAbNn9TZlh907GZAIFTp7yzNkZ A==;
X-CSE-ConnectionGUID: IwR/36CXSIaG+WA7u/HtYQ==
X-CSE-MsgGUID: jHFyawofSDabsD5BnWDEag==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="96954081"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="96954081"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:52:15 -0700
X-CSE-ConnectionGUID: WTdn6+8QQFWYUzCHppaFkg==
X-CSE-MsgGUID: 8ekyxL/hR1a6nBNo+WkxMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="236471522"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:52:16 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:52:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 05:52:14 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 05:52:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XJ3Xrk8LrSxCmCyW6kzx4vKTdDSe8iY/AAydESqs0/gBoyGixNRvCn+GsuWjG1v+xIG/p4mLBVmNjADnTzFr6fL55CmC0PNL0msMAJwUOow/U6I2fHsT80fXtVW5m53IFXbR+ar4zJw53GD0F1Ya/3j9ftNrP8SGbLflTx/cc7naS652yDHGa1J+pf5ZPPotBmsQxYzBukqjf93JdaUoYLQwX7jOFERbYh1DAB2D4Uv52e8xvz8DPte8+sROXpXt+zh1dG5oaW/rJPWC1HjbIniIBzjqipeGlMfWI0eRiExGpSY58AJuMYzxsCL5ZfNHivOT4Y3KuQFXLRCIqxK60w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgEOpzczM67AR5YxN3cn+WqreYiJrIewfwMT91CB7Pk=;
 b=Tf5CVtOEVTx2dlu74conl1meGZZxtKCHwrJl8OhYDULyXFnwLCPfDsmAPKeT7S5cZ1GxIzfiM6+rN71w/LpClzzfa1awGSsnlc4EsrYxmGxi3mqcxeuLoIA/Jc3cRDDcMwAAp4C+ojI/xmGQ7RTWoOWoKM8wDjyliZFCU8dgerOzdrl/WQ3Q0Yh7Hd8oZYaOKJjMC01BYLudxfQI5Akb0/AS+gaHzBh3o/FLssn5xA+6i7ZBsyNPYtTxRoC4sIoZ0Rcu+NKBQPrP/36TWQRdovQZ4C5kV/g+uM8Fhnv4NpgeXQs7zH8YoIJnwrAvYdijEYIlgbEKr6x4UZIeKxIlxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Mon, 11 May
 2026 12:52:12 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9891.020; Mon, 11 May 2026
 12:52:12 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <imre.deak@intel.com>
CC: James Xiong <james.xiong@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/dmc: fix assert_dmc_loaded WARN during
 async firmware load
In-Reply-To: <87o6imqfd8.fsf@intel.com>
References: <20260508181329.666762-1-james.xiong@intel.com>
 <87tsseqgrb.fsf@intel.com> <agHOCIcYOsDPyUi0@ideak-desk.lan>
 <87o6imqfd8.fsf@intel.com>
Date: Mon, 11 May 2026 09:52:08 -0300
Message-ID: <87lddqqfbb.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BY5PR17CA0052.namprd17.prod.outlook.com
 (2603:10b6:a03:167::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA3PR11MB9254:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f8f3463-102b-473b-b5b7-08deaf5c1ec6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: 1J3k9eqp6sXuihY/GKFiHBw1CduKVs4ajb4RzJhuJacMmWl4DYTiSu0o4YP2rmSa219fUVYlMc6jGqCo0DG3c29d395G7j8iFJ/S+TIiz/jqeVHgfX9kKkALC/QYGD20Ho2jAeoY/2OVTqZ8G9r75pJpMKZdnJ2T9Psylf2QPRyRquv8fN8Dp8Kjjf55tgqjvLwDj/sL1wWsRcFezxadmUK1atF6W+QuMYVm6XH7dP7Lpet+rayo1k+xB40B3+oD71MPG4s+3MMv/loVE9cqQb9GogQfUnhWYVMdUKo2ylCWP7mtoNKYaFIJo6uqlZ8JI7LlY6H7Qdu2CPQUKubnatYVitg6+yQlHZZJjXG1KayAd7XiyBUr0qV+oPvTmV1v6rdRtMwbvyprFVR1Isr/mS34o+Zd9wa112bWXPJyy9L8dMoUZW2JmZIbfpcJ/zJsovvQ1I92VKxZmqf3etjytVNUBRTLErA+SpfmfIGgc82pcSQqwRI67DcRqVix3+At8XfDO5G67KmgHzN/jgMHf9/TKnrZ24HFY4d2OrNGwrU7tubXGrjnhrAerVXLwr4uU9APj9Uv4RnAAzG7km+PZKhTdIjrT5fVUkNkurEalzQUjac3HvLYAS4kXJ+9cTNANNWNgiq47jReCy74tH1YjqpWuGdPJ1QTNaGXlQ+evxtmLu6QUiK7QbMLqVMUmPmT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nKNWfjRsHYVukuZ7hGsvTfv+gwjRH0DHrfnjRNGvzMBXzhzgyaITu/gEtK07?=
 =?us-ascii?Q?1ly9yeiPQbTuIJGUCNR591sEkOU//90g8qrDy2q7iZ/dZsRY7F2cWvbIcdJa?=
 =?us-ascii?Q?zC9kLNSVp4sraKR9g2zBe+GHco8Qaw+xNScVuvx5MKr0pJ0noI8zSRtDOc03?=
 =?us-ascii?Q?GFLzS+KHUBxv5oCpJ5L1Y4vB1ng0FmOrsUcQMJJXgqN6CfSDPCskannYAk/O?=
 =?us-ascii?Q?tizRGbgCeW7RtQTSPDvjQGeN3jlUTwZjs+nKSrTR+oal5VfysdbWKBIHQfvo?=
 =?us-ascii?Q?0cM1c3jj9HzbrUnLsBGsdLFHPZBluQRIVApvmDMuUldVLJBBnBmnxic/sd9F?=
 =?us-ascii?Q?0sgjZHlcMaD+WciU+2HGY4sUyerpAtngMIvMSJkhIMeoZziybtJFSOz6oI8J?=
 =?us-ascii?Q?OSc2IJP3E3UUyCVW41DkKjLrYg1dCJTfQi3WCR/HBfjlhgK+sCjru1qCS4dJ?=
 =?us-ascii?Q?6rs1vM2cU8U1rgXCuA6nsZc4UP0T1B5vGbo79HUEWg4TMrvytJQ2wwqFRRb/?=
 =?us-ascii?Q?9m2Oqt+ELdFYBIEvpk5fXNyWFy16N9SJQQ+5Af1NGbxfZj0uYgeTnlG9qreD?=
 =?us-ascii?Q?+qDmJI9P/1VqNpb3Q60SUfrulvpMysM2W5Eg06uQ/FPN/v3Nl6gdmTMR+5+1?=
 =?us-ascii?Q?WsByp4pZZIbjAT/cHTct4DLqD0nygyvEHSpBtReXLXlWSNeQFcfW55JM24JV?=
 =?us-ascii?Q?rVkTOb3EfF9nRXo1qTo+DjZpPu4Fgh1Rh1YRbOXtpsVVRk9Mn22DiRCleWJV?=
 =?us-ascii?Q?85BtSNcqDLjl+rq3GFsZBWJTj962PJ2n0AZ7vC3inTWzF5K5vIzJL/uGmU5T?=
 =?us-ascii?Q?4fZUmSi2/+eDqeTUxkeqPMTArmu/DLsvgTP8m4fdgzpz3EIvpy+SOCmDhbNE?=
 =?us-ascii?Q?QB9M6X0vQbrx9V5xD8U12BUCFnrlUOkqZocRT3z0rOrDaAIZ2+ZzUv5ivxs9?=
 =?us-ascii?Q?20DXIBiomSRVYm5fiScdocYY4+iJUQQnaMZLnZtkugwkSnB0c6Xkisdewi87?=
 =?us-ascii?Q?2wkreIKsAGrBmmt+ueS8nok/3Qj7AAurlMPlaDy6g88SNpfdWVdqpdZYrg3m?=
 =?us-ascii?Q?i3JJ+Ib+O/KMbTIZTcuJu18hLiRnEghCeP6zZh6AbyYTbjf+4YmywjbjppY+?=
 =?us-ascii?Q?zqGMkrvmnCg95bmmkUcemFuHfdguEGobcUE4GQ3nUJKM437g1exRtHozQUWR?=
 =?us-ascii?Q?Hkj7flD05OgGvxpeUnli39p7o/XCtPTqUEKaohzV0wmN3DtHwA+VfJ75gWFY?=
 =?us-ascii?Q?19GS11ujD8QW0kPAJlQgkm3aJLp+smORvQ/WX5dPbQFIKND6AMNBV+1/08nJ?=
 =?us-ascii?Q?MVeV425yWbO3MQVg9CzVeJFwURkoLBvRK31vtPHhQ2G64sVFEm4OzCjQrOjO?=
 =?us-ascii?Q?VB2iQRL0tSsOs4E2rBMU9xleuaOg17Ea9oYFRk8o8+B9x4y132CbbLci99QY?=
 =?us-ascii?Q?a1swouciWvC2w4KB2ivnQDp+VMpFN9vSosrtb6BArjBblFpA9ZSBko143DLH?=
 =?us-ascii?Q?4NLw5Xxhw5OXCkHMFF1FM/XML7mch6IfJi1Z4DS3vs/fZiDZ17IHUREGi2Hp?=
 =?us-ascii?Q?+TxhcgntL7VXoRY2DVfZgICZ1qPKLAmg2wA0qVuY9cTilS3Hth43KotxfVFW?=
 =?us-ascii?Q?bV8c5WrzgJaZsB2mJ5smwovyLYEzbhQCjr+Y7Sny8VQ+1WX7NSq4oUvJyH+B?=
 =?us-ascii?Q?c9TqTfHj2K2eG07BvQtGxt46q2J2DncqkE73xmzWSyMYFCmHlpLkdYFFLHKu?=
 =?us-ascii?Q?PwYIHi2MUA=3D=3D?=
X-Exchange-RoutingPolicyChecked: qdl2PHiFU+mMESpTjoPxryG+XqF9iSkzFjalQ0ce1Mr+2LJFaDfOmE4QFBq0XfZpqjkdvI+kdMe8PMYUE6HYHFOwrkiSxHYSVyFLNoPjNnYEeYkt5SB7oFYrnoB3v7CjQp2dgzG7k6s2CmVljLQL7v94lgMkrGNG1TqsPu02jB25FBZVbNIeRNM1MTCqmD78+9JYNIanWlw1X0yBwG6lf0PDBqyggtNo7NA+nb2M1HarOnPcpftoGGSHgZrNKOGLPa82BNi3sR6pKQ63PiwW9+oGecZntSNN0dZ68K4EaA2WdAWwW8F+J+sgF7crx6OOosAoCF/qhWiys0QZLPspSw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f8f3463-102b-473b-b5b7-08deaf5c1ec6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 12:52:12.3710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DkRcq9RlJlwsYHbZeOmByt6dDIr5G1VJz+nwu8wF6ie95Oco+N35ZJvzsp/BbC23f45D2EIH0NTl6OcIPf1QEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9254
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
X-Rspamd-Queue-Id: 6C83C50E419
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Gustavo Sousa <gustavo.sousa@intel.com> writes:

> Imre Deak <imre.deak@intel.com> writes:
>
>> On Mon, May 11, 2026 at 09:20:56AM -0300, Gustavo Sousa wrote:
>>> James Xiong <james.xiong@intel.com> writes:
>>> 
>>> > During driver probe, DMC firmware is loaded asynchronously via a
>>> > workqueue. There is a race between parse_dmc_fw() setting the payload
>>> > pointer (making has_dmc_id_fw() return true) and intel_dmc_load_program()
>>> > writing the firmware to hardware registers. If the probe thread calls
>>> > intel_dmc_enable_pipe() -> assert_dmc_loaded() in this window via
>>> > intel_modeset_setup_hw_state(), it sees parsed payload but stale HW
>>> > registers, triggering a ~20% intermittent WARNING on ADL-N warm boot.
>>> >
>>> > v2: Fix by calling intel_dmc_wait_fw_load() in
>>> >     intel_modeset_setup_hw_state() before iterating the CRTCs (Gustavo
>>> >     Sousa).
>>> >
>>> > v3: Move intel_dmc_wait_fw_load() into intel_dmc_enable_pipe() itself
>>> >     so the function is self-contained (Jani Nikula, Gustavo Sousa).
>>> >
>>> > Signed-off-by: James Xiong <james.xiong@intel.com>
>>> 
>>> +Imre
>>> 
>>> Perhaps this deserves a fixes tag?
>>
>> Since that would result in backporting the fix to -stable, it depends on
>> whether enabling the pipe DMC functionality before the firmware is
>> loaded is an actual functionality problem.
>
> I think we depend on pipe DMC for the flip queue functionality, so I
> suspect it could be an issue.  That said, I'm not very involved in that,
> so I can say for sure.

s/can/can not/

--
Gustavo Sousa

>
> --
> Gustavo Sousa
>
>>
>>> If so, maybe it should be this one:
>>> 
>>> Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
>>> 
>>> The change itself looks good to me, so
>>> 
>>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> 
>>> > ---
>>> >  drivers/gpu/drm/i915/display/intel_dmc.c | 7 ++++++-
>>> >  1 file changed, 6 insertions(+), 1 deletion(-)
>>> >
>>> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>>> > index 0df4f42ba3e3..4151eae92744 100644
>>> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>>> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>>> > @@ -786,7 +786,12 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state)
>>> >  	enum pipe pipe = crtc->pipe;
>>> >  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
>>> >  
>>> > -	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
>>> > +	if (!is_valid_dmc_id(dmc_id))
>>> > +		return;
>>> > +
>>> > +	intel_dmc_wait_fw_load(display);
>>> > +
>>> > +	if (!has_dmc_id_fw(display, dmc_id))
>>> >  		return;
>>> >  
>>> >  	if (!can_enable_pipedmc(crtc_state)) {
>>> > -- 
>>> > 2.34.1
