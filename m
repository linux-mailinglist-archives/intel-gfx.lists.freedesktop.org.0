Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC2CC96987
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 11:14:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E85B10E372;
	Mon,  1 Dec 2025 10:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bcQJgcy5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 166E110E373;
 Mon,  1 Dec 2025 10:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764584080; x=1796120080;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=u732bGx2RJrkT0m8XVrvvjp4neMuBDtY592aWoMUPOc=;
 b=bcQJgcy5zKpOqZaAX3ejbPsNltJfHnkydhiky4vb8U1RMYkYaXAp3UVu
 bbanWWuhi4RUFlHqragypIVdU8z+T88skqBpXMdc3rMX0sUx9qDOxQIev
 HOSrpJ2T77BdxnzpCivjw4eBIXh4k3XTNTA6CvfNTW3o32O1UlBDraYRH
 XEztMEpRpAZfyMOiOiYgszEoMha8SsE8vOOf9cU37lR/TmELVL3Jz62zq
 zderpkcmk1QHS+i6P6rlRNJ6DZMkOFZGwGuDRSJTHMI5zPhoTijY7s3eY
 86ahRbaDjypJ3G9cgzXxum0ewUoY34zlgJSw6xMGQyobJVj2LXlemfpWg Q==;
X-CSE-ConnectionGUID: v2NCs7AWQaueHrgAVwQH6Q==
X-CSE-MsgGUID: GPmloWhQQXSk6civqFsWrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="77620231"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="77620231"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:14:39 -0800
X-CSE-ConnectionGUID: 5cCIk4WxTIWDea5ZLooQwQ==
X-CSE-MsgGUID: kCWmi4aZS46p8xf2+T3ymQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="224727706"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 02:14:40 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:14:38 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 02:14:38 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 02:14:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hxMkyJbj20zTeqvFLSTtT2qpGr7XWaonJMaFbS0YsvzQ6T2NVuga2rGGG6A00TbfMZ++wCUEGa8m3DH0oL9NmcmT1nzLnsnl4YJM6qjW7PWWMR2GwYyyFSqFB+pP9J0m4TcxGK6rSt6IIbcqiGsBl0o2hgbRUXM9G6AeS+GjO/vB31X7aCQt1XWgUs4ZfThikzleNajObysaU6CY2yOwA1FhR8JyWi5dX308S4hcIYl2D0SFkdxQCwma5UZxnGaxKW09ojHIg/gr0S3eOywwXOVQ1LI2LnJB4FArdMkP1gr+bUDnsuNvvhRU6O+VSPSTKUT9U1qtE2FWUtgmtBFWgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vlM3iT1nM/uxcvGN9rfxHJ/+mNRqGimPLfRfGT5Kogk=;
 b=SBaw4eHbdZPkv9YJS6c3MYPeBpLQOuisQPglif3t0rG1jPQ07nsFDQ7OTPCuSScmFY2N8kSt8Cm1OizrkTREt8BhBlcM3Eilj8Lo8BWB/lNZg7p4Tcu1lUF2ZELhXj0WFcYpxCbxyFLHlcjYNydSbZCKp3Pno9Z3vWdfdHtsLfAvUX2igyK3K9iaxIgKEbHSy+KE9ai4aoiBKvSiTSTxiePHFXyy9R6Fu8FMsKUc8rUTFStBa+T/LRrPSb4PUfjE6TJ4jvykvzrDTlTK+qmp3ROJDsayOd5W8j+U2B0UIjAvV/ZALy4nQqhGvFEcKXBfl1NN7zEpb/mxMWK0mga49Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPFB8C3A0B7C.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::84c) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 10:14:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 10:14:36 +0000
Date: Mon, 1 Dec 2025 12:14:31 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/8] drm/i915/psr: Use SU granularity information
 available in intel_connector
Message-ID: <aS1qhwfD1mbAKoYM@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-3-jouni.hogander@intel.com>
X-ClientProxiedBy: LO4P123CA0232.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a6::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPFB8C3A0B7C:EE_
X-MS-Office365-Filtering-Correlation-Id: 66eb4e03-e296-4d7f-3e0f-08de30c26deb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?w76bD+9O+yy87SXlGNh0wrsngwCrd1DFLAS2xcsrvMmf71aJqa0sqGVVpj?=
 =?iso-8859-1?Q?Kdgg7ide73T7nr7WrzlL5ErPmfcXcxOBt9PnqLs3TYeSlqFAdCJ/Xr9zC+?=
 =?iso-8859-1?Q?iZN1EeTWQRChGy/YF5W4BNq0CEbCQ7U++7M11LSdv+D5h0DOwR87tqzzes?=
 =?iso-8859-1?Q?LrRD7qowIxvvEMthBriMwBM2UARr6yNH0EMqi0UPPCixaHaoLucezg9VgL?=
 =?iso-8859-1?Q?Z4coVsZdWbLfstM1Aa/rz1VZW0lm6kdzwe1IFnLsKp7tnPbpY2e8a4ksaT?=
 =?iso-8859-1?Q?1MjKUf9KvT8DTklIBrq150YOIgAywXE5xrZI9GcFodlxvJVI3eLgqXJFYy?=
 =?iso-8859-1?Q?tMqBJkT+R2vV8WHJFfALkCmtesoBAiDb+srp8Jish28oBeLBDLTv+NFLfI?=
 =?iso-8859-1?Q?VWPMEuR0E7sqqGwltdi0cYhPQKqnIcDAuazRF4tsnAkQ+3lcusgui9Ma6Y?=
 =?iso-8859-1?Q?THEzog0X6umAW5Usn+uFSlkpErb5atQDTVH2YpCqGhF6cKDfiYTkXly2Ba?=
 =?iso-8859-1?Q?dMdI/VxPV3q5qyt4GRYYpf9/TQVNYI6IIM4rqiyP7twjwtYvb9FBtpmWFR?=
 =?iso-8859-1?Q?2+9Ihz6+IZpgtb6a1xdttVRdiTWbqeQUD5C5zi5XC+y+b0iuA2W+/GoK+X?=
 =?iso-8859-1?Q?AnxsmZvLmIqIYYhTwIH8LA3I5hYSbSkq0s9AyG3FkC/tIVo79iQgxNU7SW?=
 =?iso-8859-1?Q?pn10ZF10vIshG3QWVTb2YaTt2jWDgi5n/YJC1DF4Jz2D2LgS/ZeGn6VLb9?=
 =?iso-8859-1?Q?K6BucU5LxfnocJqgS/1HFnyA0uYCbCWtrnQlyAgYcmZFyTpwq9v29RPTtE?=
 =?iso-8859-1?Q?rpHyHoboL1JpnKOFc2W/0uN80ioW0P4VRAvcGUK9uBrOU0ULnv1BMxz+Bz?=
 =?iso-8859-1?Q?wfdLrrZrVUvy2T/PfWTOmKH+9f6uZqzBq9Y8n+1wp9ClWAf3u14kqJlKNE?=
 =?iso-8859-1?Q?cK6QlYU1WylRjpAKknR9+6I/bsqcOpdXryNDffSwxO4FdZ8MT0GyKJ0YgM?=
 =?iso-8859-1?Q?C5dJOcHVFvOPtFKmX9Uk+NK1FFz9S/831Opyr5mGsRyrv3jvn0t8hyYeI/?=
 =?iso-8859-1?Q?DP+GhtE1ryaaxNU+cSP5AF5LueW0GZQymn+Fx3cAxZy/pda3flYfEYLARn?=
 =?iso-8859-1?Q?WFSh1yGce06VkdLohSpf0PJVafWOWe9j3c9WUw9g18wyzu1ZcnX+nmrH37?=
 =?iso-8859-1?Q?jYe4STeNyvaXB7/YRfiUtrB1HRCIsvm0hj3l2uR88EkoqdwJvX/XedgxuM?=
 =?iso-8859-1?Q?Y1ZyJ8MTQKtQ32Hkxt99wBHzhTPS3loj45Pt+/dIrN9JIod2IB7MeLRw9z?=
 =?iso-8859-1?Q?TfODJNUPV/KBX/Geuir6/msQha8k1PDTqV3twdgM7LxDrxzXhyIjHZC2NG?=
 =?iso-8859-1?Q?tfiUnalcKgGjHcePpbW+a4Li19CVXJBr4lObG6flbYjoLFLWE1JQWwXfVq?=
 =?iso-8859-1?Q?WfnaUj8vzmaqLQovBUrw4CDcndvGVpFjU//SrT5wkfUK1EuG00oG0Q/m5d?=
 =?iso-8859-1?Q?iRUMQvTU+U2RCm7PzyjWkf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?xNQMvvOptAAtc8a70cyPL1gPyHYHol2gqKEfOwrJYPod2dRAZ3jJ0chSxN?=
 =?iso-8859-1?Q?K29rmVIxWzA3T8EB1559LPqIRHj3BzrBm/YDhS+COTWu3vDG+xI9S5Psza?=
 =?iso-8859-1?Q?Aq8cHo4GlaQRmkxtImLEsoOLHF2KlpkCaLx6sVljzLg4VrGW+52ISa3k4h?=
 =?iso-8859-1?Q?tSYP8wTHhEXgaKkEPf0gCd1BIo+9FtCqlDzmAkkSd0SC5ahc70Yh9JbSaQ?=
 =?iso-8859-1?Q?RRryaDmaWmFpzC2XvXtVtxU3vGwJSZ5gb6NN/YckZNTpu8xF3DtwMLoMVZ?=
 =?iso-8859-1?Q?jkGLMp+EXd4B7INiIjhFz6xiiGNhKs3fUTOnwegSeWMQss2iIqZdjf/bug?=
 =?iso-8859-1?Q?kydVxx1Hs37VA9S2H6vF9k6SN6rTNZ3xjPPGhzS24q1UlxiH+3huekFwTO?=
 =?iso-8859-1?Q?0EkwFLg1i2cE2ZbRt+YHuLzFVZO8LdkhylCToKrrwGkdGM6N5RuKDCik8E?=
 =?iso-8859-1?Q?sOc+89BnOQpnvycDmd71YNgy2u1IWhgH/+ij+N5fXKhB3ntA3TlZ9QstGY?=
 =?iso-8859-1?Q?A6nQkf0YpIBpsnIdXNKcuGIJ6COkI34LY56Gtes2PvUKLfPUaQ/6bjFBCN?=
 =?iso-8859-1?Q?y08LwjJzkDcd7dNGZZDR7UVWfx6Er/uagf/pD5drLtc7aDXu9m2IF3YQK8?=
 =?iso-8859-1?Q?bLR6rEm/5U+vnmQHU9xBi/LrMeoVHQ/JF90yM3cTIUHI4OyOpLtYzfS4PQ?=
 =?iso-8859-1?Q?PbsK3mOzFG0ayuM30RSi1Lhtm5HS8kQCVLF72V0UAFQ0jQ+rQW11STWL0g?=
 =?iso-8859-1?Q?c8i6LuFjXtCktFf/R4eEm43CGKhghxbUjNC0C6z2LBbGdCZEuHcoX0awLj?=
 =?iso-8859-1?Q?QxkhdaVPMVTxVU1COywPiggnqOTI1mM1kfR+r7aONM61tL5JPYNWw3QE5S?=
 =?iso-8859-1?Q?EpqNmaY3eBcikvAhediJSN9YPo3U1+38hDyrmzacgR7NXvXvkTMZHtnkm0?=
 =?iso-8859-1?Q?+GMu+jqm+uYOQCtNVIVxMcoyO0R667piks0Bgb/A5HfwpUwt870oIAXvsx?=
 =?iso-8859-1?Q?s0XEVrUxHL2lbhu57WiP+g6/R7+iHhfa5ETz35nr37bdWuxpHJUCRV1+6j?=
 =?iso-8859-1?Q?ti0bjVlosP63HmIXkg2XrLiC7f7r3d611VrT3dwSYtwUUJCcuwC100SMPs?=
 =?iso-8859-1?Q?+4juBGNryZ/AcjuA7gATHLEtFEoMetaoHXsD3yC0L3t4k39Mq8IeND4EwO?=
 =?iso-8859-1?Q?ShTBHfnuZtfvufg0VAZsc3dd+c0MZ3q3vPi6+f6qp+ZXBv3vf0q1Ws3n3k?=
 =?iso-8859-1?Q?5qMVbsBwswrR34CKzzBnyvwB+UIJ5b9uFyI5B90jTw11oxSyRQm3nKW8ZQ?=
 =?iso-8859-1?Q?iMF0cX1YzTlxLjHwL+sDTNbA/1Rz7dwKHXP7ZaZJPl8RCA5DgzpAL3ZCiA?=
 =?iso-8859-1?Q?TZ+M1XirpXE1QHL5/a6m52rmJQGrECTb/kyzcfhi8U812ARPo6TMZhD/wr?=
 =?iso-8859-1?Q?R9xHM1sjbSEBD7oobwxRaSV3MlvYjUk6HrEPIQ70tFRj+id4uB/asq12YQ?=
 =?iso-8859-1?Q?HnlXVk/fUm/8/sEvtx2jevF3ZKyhJsk9498TNOf62lql1mZgQx+GPlodTA?=
 =?iso-8859-1?Q?CLROPArXxrKeSnmAzvhz7KvMXsy91mME8t+ChhqbhZR6I+7ciKFQObh+6h?=
 =?iso-8859-1?Q?NZ1FPZAbsCCVjkm1OCLS+nBlNGCU0VS00XZK5QDpJmBb7aSGQucWhirCQK?=
 =?iso-8859-1?Q?FEouLiTEJdFAtEmGg2Mg1wmc/2ccn/Pq3AafJB8i?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66eb4e03-e296-4d7f-3e0f-08de30c26deb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 10:14:36.0393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tko4rjE2Y2RL8EKaZlpVaiNs/x1Zj+d1Qzizy4GkbGPdreXjDiEQt6BgdMTe3EAggQaElsiNeKyH0r8LNm79qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFB8C3A0B7C
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

On Fri, Nov 21, 2025 at 01:16:49PM +0200, Jouni Högander wrote:
> Currently we are storing only one set of granularity information for panels
> supporting both PSR and Panel Replay. It might be that in practice they are
> always the same.

"in practice they could be different" would be what justifies the
changes. If you wanted to mention that they may be the same in practice,
it should be explained instead why tracking them separately still makes
sense.

> As panel is informing own granularities for PSR and Panel
> Replay let's use these instead of having only one set for both. This is
> done by having intel_connector::psr_caps and panel_replay_caps both
> containing granularity information.
> 
> This patch is also removing complexity of sharing granularity read between
> PSR and Panel Replay.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  |   4 +-
>  drivers/gpu/drm/i915/display/intel_psr.c | 139 +++++++++++------------
>  drivers/gpu/drm/i915/display/intel_psr.h |   2 +-
>  3 files changed, 69 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0ec82fcbcf48e..62808cd35f5f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4562,7 +4562,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>  	 * This has to be called after intel_dp->edp_dpcd is filled, PSR checks
>  	 * for SET_POWER_CAPABLE bit in intel_dp->edp_dpcd[1]
>  	 */
> -	intel_psr_init_dpcd(intel_dp);
> +	intel_psr_init_dpcd(intel_dp, connector);
>  
>  	intel_edp_set_sink_rates(intel_dp);
>  	intel_dp_set_max_sink_lane_count(intel_dp);
> @@ -6075,7 +6075,7 @@ intel_dp_detect(struct drm_connector *_connector,
>  		connector->base.epoch_counter++;
>  
>  	if (!intel_dp_is_edp(intel_dp))
> -		intel_psr_init_dpcd(intel_dp);
> +		intel_psr_init_dpcd(intel_dp, connector);
>  
>  	intel_dp_detect_dsc_caps(intel_dp, connector);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 00ac652809cca..4c5883bed612b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -494,69 +494,26 @@ static u8 intel_dp_get_sink_sync_latency(struct intel_dp *intel_dp)
>  	return val;
>  }
>  
> -static u8 intel_dp_get_su_capability(struct intel_dp *intel_dp)
> -{
> -	u8 su_capability = 0;
> -
> -	if (intel_dp->psr.sink_panel_replay_su_support) {
> -		if (drm_dp_dpcd_read_byte(&intel_dp->aux,
> -					  DP_PANEL_REPLAY_CAP_CAPABILITY,
> -					  &su_capability) < 0)
> -			return 0;
> -	} else {
> -		su_capability = intel_dp->psr_dpcd[1];
> -	}
> -
> -	return su_capability;
> -}
> -
> -static unsigned int
> -intel_dp_get_su_x_granularity_offset(struct intel_dp *intel_dp)
> -{
> -	return intel_dp->psr.sink_panel_replay_su_support ?
> -		DP_PANEL_REPLAY_CAP_X_GRANULARITY :
> -		DP_PSR2_SU_X_GRANULARITY;
> -}
> -
> -static unsigned int
> -intel_dp_get_su_y_granularity_offset(struct intel_dp *intel_dp)
> -{
> -	return intel_dp->psr.sink_panel_replay_su_support ?
> -		DP_PANEL_REPLAY_CAP_Y_GRANULARITY :
> -		DP_PSR2_SU_Y_GRANULARITY;
> -}
> -
> -/*
> - * Note: Bits related to granularity are same in panel replay and psr
> - * registers. Rely on PSR definitions on these "common" bits.
> - */
> -static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
> +static void _psr_compute_su_granularity(struct intel_dp *intel_dp,
> +					struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	ssize_t r;
>  	u16 w;

This should be changed to __le16 (even though not added in this patch).

>  	u8 y;
>  
> -	/*
> -	 * TODO: Do we need to take into account panel supporting both PSR and
> -	 * Panel replay?
> -	 */
> -
>  	/*
>  	 * If sink don't have specific granularity requirements set legacy
>  	 * ones.
>  	 */
> -	if (!(intel_dp_get_su_capability(intel_dp) &
> -	      DP_PSR2_SU_GRANULARITY_REQUIRED)) {
> +	if (!(intel_dp->psr_dpcd[1] & DP_PSR2_SU_GRANULARITY_REQUIRED)) {
>  		/* As PSR2 HW sends full lines, we do not care about x granularity */
>  		w = 4;
>  		y = 4;
>  		goto exit;
>  	}
>  
> -	r = drm_dp_dpcd_read(&intel_dp->aux,
> -			     intel_dp_get_su_x_granularity_offset(intel_dp),
> -			     &w, 2);
> +	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_X_GRANULARITY, &w, 2);

should be sizeof(w) instead of 2. (yes, not added in this patch, but
still)

>  	if (r != 2)
>  		drm_dbg_kms(display->drm,
>  			    "Unable to read selective update x granularity\n");
> @@ -567,9 +524,7 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
>  	if (r != 2 || w == 0)
>  		w = 4;
>  
> -	r = drm_dp_dpcd_read(&intel_dp->aux,
> -			     intel_dp_get_su_y_granularity_offset(intel_dp),
> -			     &y, 1);
> +	r = drm_dp_dpcd_read(&intel_dp->aux, DP_PSR2_SU_Y_GRANULARITY, &y, 1);
>  	if (r != 1) {
>  		drm_dbg_kms(display->drm,
>  			    "Unable to read selective update y granularity\n");
> @@ -579,8 +534,8 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
>  		y = 1;
>  
>  exit:
> -	intel_dp->psr.su_w_granularity = w;
> -	intel_dp->psr.su_y_granularity = y;
> +	connector->dp.psr_caps.su_w_granularity = w;

Should use le16_to_cpu(w) instead of w. w was used as-is already before
this change, however there is a related issue below, so I'd fix this one
as well in this patch/patchset.

> +	connector->dp.psr_caps.su_y_granularity = y;
>  }
>  
>  static enum intel_panel_replay_dsc_support
> @@ -621,7 +576,33 @@ static const char *panel_replay_dsc_support_str(enum intel_panel_replay_dsc_supp
>  	};
>  }
>  
> -static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
> +static void _panel_replay_compute_su_granularity(struct intel_dp *intel_dp,
> +						 struct intel_connector *connector)
> +{
> +	u16 w;
> +	u8 y;
> +
> +	if (!(intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)] &
> +	       DP_PANEL_REPLAY_SU_GRANULARITY_REQUIRED)) {
> +		w = 4;
> +		y = 4;
> +		goto exit;
> +	}
> +
> +	/*
> +	 * Spec says that if the value read is 0 the default granularity should
> +	 * be used instead.
> +	 */
> +	w = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_X_GRANULARITY)] ? : 4;

The DP_PANEL_REPLAY_CAP_X_GRANULARITY field is 2 bytes in size. Here the
DPCD value should be converted (explicitly) with le16_to_cpu() as above.

> +
> +	y = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_Y_GRANULARITY)] ? : 1;
> +
> +exit:
> +	connector->dp.panel_replay_caps.su_w_granularity = w;
> +	connector->dp.panel_replay_caps.su_y_granularity = y;
> +}
> +
> +static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int ret;
> @@ -657,9 +638,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>  	intel_dp->psr.sink_panel_replay_support = true;
>  
>  	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> -	    DP_PANEL_REPLAY_SU_SUPPORT)
> +	    DP_PANEL_REPLAY_SU_SUPPORT) {
>  		intel_dp->psr.sink_panel_replay_su_support = true;
>  
> +		_panel_replay_compute_su_granularity(intel_dp, connector);
> +	}
> +
>  	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(intel_dp);
>  
>  	drm_dbg_kms(display->drm,
> @@ -669,7 +653,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>  		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
>  }
>  
> -static void _psr_init_dpcd(struct intel_dp *intel_dp)
> +static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	int ret;
> @@ -722,17 +706,16 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp)
>  		drm_dbg_kms(display->drm, "PSR2 %ssupported\n",
>  			    intel_dp->psr.sink_psr2_support ? "" : "not ");
>  	}
> +
> +	if (intel_dp->psr.sink_psr2_support)
> +		_psr_compute_su_granularity(intel_dp, connector);
>  }
>  
> -void intel_psr_init_dpcd(struct intel_dp *intel_dp)
> +void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>  {
> -	_psr_init_dpcd(intel_dp);
> +	_psr_init_dpcd(intel_dp, connector);
>  
> -	_panel_replay_init_dpcd(intel_dp);
> -
> -	if (intel_dp->psr.sink_psr2_support ||
> -	    intel_dp->psr.sink_panel_replay_su_support)
> -		intel_dp_get_su_granularity(intel_dp);
> +	_panel_replay_init_dpcd(intel_dp, connector);
>  }
>  
>  static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
> @@ -1311,24 +1294,32 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>  }
>  
>  static bool psr2_granularity_check(struct intel_dp *intel_dp,
> -				   struct intel_crtc_state *crtc_state)
> +				   struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state)

Nit: I'd keep the parameter list as short as possible, by dropping
intel_dp and getting it from the connector with intel_attached_dp() in
this function.

>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	const int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	const int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  	u16 y_granularity = 0;
> +	u16 sink_y_granularity = crtc_state->has_panel_replay ?
> +		connector->dp.panel_replay_caps.su_y_granularity :
> +		connector->dp.psr_caps.su_y_granularity;
> +	u16 sink_w_granularity =  crtc_state->has_panel_replay ?
> +		connector->dp.panel_replay_caps.su_w_granularity :
> +		connector->dp.psr_caps.su_w_granularity;
>  
>  	/* PSR2 HW only send full lines so we only need to validate the width */
> -	if (crtc_hdisplay % intel_dp->psr.su_w_granularity)
> +	if (crtc_hdisplay % sink_w_granularity)
>  		return false;
>  
> -	if (crtc_vdisplay % intel_dp->psr.su_y_granularity)
> +	if (crtc_vdisplay % sink_y_granularity)
>  		return false;
>  
>  	/* HW tracking is only aligned to 4 lines */
>  	if (!crtc_state->enable_psr2_sel_fetch)
> -		return intel_dp->psr.su_y_granularity == 4;
> +		return sink_y_granularity == 4;
>  
>  	/*
>  	 * adl_p and mtl platforms have 1 line granularity.
> @@ -1336,11 +1327,11 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  	 * to match sink requirement if multiple of 4.
>  	 */
>  	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
> -		y_granularity = intel_dp->psr.su_y_granularity;
> -	else if (intel_dp->psr.su_y_granularity <= 2)
> +		y_granularity = sink_y_granularity;
> +	else if (sink_y_granularity <= 2)
>  		y_granularity = 4;
> -	else if ((intel_dp->psr.su_y_granularity % 4) == 0)
> -		y_granularity = intel_dp->psr.su_y_granularity;
> +	else if ((sink_y_granularity % 4) == 0)
> +		y_granularity = sink_y_granularity;
>  
>  	if (y_granularity == 0 || crtc_vdisplay % y_granularity)
>  		return false;
> @@ -1628,7 +1619,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  }
>  
>  static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
> -					  struct intel_crtc_state *crtc_state)
> +					  struct intel_crtc_state *crtc_state,
> +					  struct drm_connector_state *conn_state)

Here as well I'd drop intel_dp.

With the above fixed:
Reviewed-by: Imre Deak <imre.deak@intel.com>

>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> @@ -1677,7 +1669,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		goto unsupported;
>  	}
>  
> -	if (!psr2_granularity_check(intel_dp, crtc_state)) {
> +	if (!psr2_granularity_check(intel_dp, crtc_state, conn_state)) {
>  		drm_dbg_kms(display->drm,
>  			    "Selective update not enabled, SU granularity not compatible\n");
>  		goto unsupported;
> @@ -1872,7 +1864,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	if (!crtc_state->has_psr)
>  		return;
>  
> -	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
> +	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state,
> +								   conn_state);
>  }
>  
>  void intel_psr_get_config(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 620b359288326..688ca3e73cdda 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -28,7 +28,7 @@ struct intel_plane_state;
>  bool intel_encoder_can_psr(struct intel_encoder *encoder);
>  bool intel_psr_needs_aux_io_power(struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state);
> -void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> +void intel_psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector);
>  void intel_psr_panel_replay_enable_sink(struct intel_dp *intel_dp);
>  void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
> -- 
> 2.43.0
> 
