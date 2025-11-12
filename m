Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 246FBC53591
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 17:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D6E710E778;
	Wed, 12 Nov 2025 16:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f2fYcK62";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66AEF10E0E3;
 Wed, 12 Nov 2025 16:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762964361; x=1794500361;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=7/gW8j+Wgj4GUud8qs7b1G/iepKvCvrxv6plx+uTPIY=;
 b=f2fYcK62cfHU/ja+5SttsET/KpJIvc/0vk2ttZpBjatHqovXhbo4bw+g
 krW3QrBD4qeAqZUN/c8cdT8rFEii/enEJphGwF0CJnU9C/1x1efDpkRQS
 ecVaew3gE8XUO8qmVVYwLyDeWEoYpuz/QOme4qby+gIqTd/4Ku4wNbuwL
 4h4ehupg905Hhas6gj3sOUwZpw2yYpdDpu5RWmGI7RFZhdlpbCmiJKa1b
 YlyUFxzNqdBXFEFQtJGHfANO2IPSDGVpmBE7SBCQ5mUopPTOhvrj67BWN
 WS87fwRmNcaXARIzsTqlgAugsYmUdlKM8GWI4tG+zZDYsDzT+9WSXDUPl Q==;
X-CSE-ConnectionGUID: hhPs/R9JTLe1OTFWv3vntQ==
X-CSE-MsgGUID: /JnC8GtGTSe0oHvKNvvfeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="68881804"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="68881804"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 08:19:20 -0800
X-CSE-ConnectionGUID: AF0bw1ZKRJa8Rh2akEhC/Q==
X-CSE-MsgGUID: GYs65xLCRjuGrUu6cM1YUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="194238214"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 08:19:19 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 08:19:19 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 08:19:19 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 08:19:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hF9yxlvufYR2hyBKo0EkjkMdgAZJW7LUcmKswOFffXblTftX7PBI1Uzv70yWZ/Yr9c4KZvdgVgJxh4WfYgWxIkP2aWvkNW2bYal4HBG6rZKNoTR1+3hlrSfmkrcysinraGHqWYxfq8q2l34CRMuRXaTJahtqHLMexphV0oTU+qbCZwYQXcxW8ETaQRVIP7iv7wKXu7ZKeYDODJySV/ybiJoy6vWzncz8BjO/ZRPqiFzq6hmbg5RThzBl/WSTzzY/xQkm7Ee49BJ9U/Fy0qor/ysVMoFeUTCdEwcZussAjCPnM+NWLEkILckL8cLefms37Kez4urIrBOplWjmjL7a7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1kgxfJnhy6DUn00R78Y42sB/wFzxaTjHiEuFsLnPMYE=;
 b=WaRs5FjrWXLx/smxQ8b/rtIpKtrWif9mlWNtsehKKa2ENAev/mcz8vCQdwLgwC9XAnfSGZX61VibeRqk8LZgMO1gzn5lZiuDNga4eQ3yUuiuZ1wznPEgdIfO8imuDj0EZPgjgOBke58EBMhFJRBFlSwaFuv74kfQv+uLJ24fAo5gvTLHY876GtVKkck4STuRDwOQksiMq3OH+4RgQHjZpSXoukydOU1Idj45UAl+yVX/fEw5dR5eG43sphsxmWkbIXDf3TGoN0lp9qZVrv3Y/4QiWYa+aJSLFxx8ZhqMBBktw0iyg3YLzBQva9cUiYNYT6cGrxuTd46sADhU39MX4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8018.namprd11.prod.outlook.com (2603:10b6:8:116::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 16:19:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 16:19:16 +0000
Date: Wed, 12 Nov 2025 18:19:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH v4 03/11] drm/i915/power: Use intel_encoder_is_tc()
Message-ID: <aRSze0s8p4Qi6OVM@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-3-ab3367f65f15@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-3-ab3367f65f15@intel.com>
X-ClientProxiedBy: LO4P302CA0004.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c2::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8018:EE_
X-MS-Office365-Filtering-Correlation-Id: 99f832ae-574b-42ae-81ab-08de22073986
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WrFA2fkwqCWksaObHaR5okaAtkJr0gjo6fNC47ls/fmENbliOXyptaCZqXTK?=
 =?us-ascii?Q?iEbQqZHgkb+Qujmffml80XkcQgWBOjOSOnjdg5u/eO1cpAUMcecr6L1Jga1J?=
 =?us-ascii?Q?bbnOXqBbqcpF/w+YAgUn+nPauQaMVNJNyCMG76Z1nKAfIUb5DZV4TZ5JcK27?=
 =?us-ascii?Q?Oo27FhRFlw1n25pOkQjAGHZDI5A2raiFcHgT+D+yqT0LUHUgGS9wWF/L4aDs?=
 =?us-ascii?Q?CBICF4r++Nx0aQX4HM1qc0ZrifTIauK9sy45sTekaPBcFUYe/fZ/LU7vdCJi?=
 =?us-ascii?Q?Dgpdl4VbHrBZt/tevpcqSOx8tNV/ll4Niyfb40u9XNfYP5KPauOocddKtZ4u?=
 =?us-ascii?Q?1ifQJYaw0PpEU4MTSCpu3BY8aokxbRWPBpuB7NGyZdGzyGzKuPQV9xB8DOsh?=
 =?us-ascii?Q?AhIjUSn/TdBfwdsuxwe+dLvm4t0e4DfzWOTxoKBbsqkCZq75n1FQYSr/nL+D?=
 =?us-ascii?Q?x827CoEGO37CayXUWtLbvN6oogfHW2MR+roBcEWKfj62Em8AjhwmmG6ye1w3?=
 =?us-ascii?Q?npbXhIm4EuPdmZxVThal/ky0A1PRi+AHLbckvL14vSoAk85om/V3pTJhDLDJ?=
 =?us-ascii?Q?T5tpaVFxXIM1Ae+xmtpufmsQOOtL5DtJM1Xn+CwzOwDxa9PyvqmUk+5ttIao?=
 =?us-ascii?Q?rV6JcQkjxVDEGG4mheHC/XS9WoPqs10YnFqdO4szIx2E+G0FzzKNssqKGOky?=
 =?us-ascii?Q?Z6A1z9C+Fb5BYZpJPoSlGUGLSM67/GS+/9GLgARGNV/ec86YfdSf3YwUPatc?=
 =?us-ascii?Q?Z9PvJsvjKAzIIeEiC1BORrtHWlWsvIMXzJk8l2VxRPgGrgS1la+NeJ0SE+aG?=
 =?us-ascii?Q?b+qAMJmoDaz5xFeA8M9Yjxlxj3lR622UXXVt+JHreDQGc0RC6qf4GvQJLNmA?=
 =?us-ascii?Q?Mev1YPR4Hou5izKS6kP2yZ1xwsfzr+iETZFLhpLXo5+ZQfPbMdW4EdXDjv06?=
 =?us-ascii?Q?UlBRl3hFJ14U/dIT6UiQ1jylrE8OF2FRITpQSu/uAqI9jdZ4Ueks+Wm+NRCQ?=
 =?us-ascii?Q?+lH3xMEDn1C60QR8FQc5S75GFYlKSDFpbhDOGujBrjEncaWlryXBrXJMHeHF?=
 =?us-ascii?Q?LLeXCgLkhcSJFTjxzd/GyGqD9UbOTJOKR6aBiBw00Y1b+6Ql+O5Z+0rwkrpL?=
 =?us-ascii?Q?8kL0yhOzvuwTvomrk+mAzbPXUzJaGtNJMIYMEvRDBE77+9hhtgGB/9Tnv3Rd?=
 =?us-ascii?Q?Xi5hxqvk++XGMjDNhrwdHLzuWLITmBsmth0QRyVdf9xIxlhSZMAenCRn5LN1?=
 =?us-ascii?Q?wRTLJ2TwaUswoIZq4WK40v78stTjntcZnxeF0Gre5E8P4Xi8WVQYd6sO5FB0?=
 =?us-ascii?Q?MM+D06GX7QGBq8ds8byzz+WyPnJg1MGenctedM0pH+Iq5S1ReEQ/ZiD4ulHm?=
 =?us-ascii?Q?t8LkEptlNAMho5JnfXBfZXYO7coVPDXO3bIhm9bD9ez0E7XtVBunAarZTcO7?=
 =?us-ascii?Q?4w8+k0/2GuA7oSMp72UVNI/wi19mSZVn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kCUdweycL2hSEQuGRrte+d6ruuoShuX2elDx60rSqCGifnKUq45vA0A+Ds0P?=
 =?us-ascii?Q?Fj97p8S8GgmjWONkZg9aOmG5dke/E0RIZcJNm74f4zpGJIzsALZt1mdpJF7G?=
 =?us-ascii?Q?gpiAf6rq/Pg+dkKvmmCsyL1RX+BYIFcSc3WAsomWuBF0YhLAnz0tqaxWDwNU?=
 =?us-ascii?Q?YGp0Fr4SDAhxY7f8oxU0JPs9IKzNPOGeLa/RVt7xyD00ny55cmDhQwdDzoVK?=
 =?us-ascii?Q?MkwdddK3yev5FV0KdcXbyCJiaCEAyTm8UT4jq8dofVC/BHlhMFc9pJfcNenv?=
 =?us-ascii?Q?ZaBYFaxJP7o+0kKbyEtOogrEeJ7xOy8052s57PFMfZdod7iGyAymFggWpaTt?=
 =?us-ascii?Q?DjYYnAmvMMoYkoxU435cVzykDtQ6bHGj4DVMzPD7SBlQ7/fxYC7m64azbdjA?=
 =?us-ascii?Q?tsYfG40zSJP7UBpttlNmKPQF8lBRnZGV4JYfZ/dvSMtkMlFljvETGz9LEn4Z?=
 =?us-ascii?Q?lBKn4PlPPIG0HXo/ch2cXcDVJp4+g5MlIdWZv4+9bS3lY/I5pgNcMA1Uk1hs?=
 =?us-ascii?Q?9Xfiqs4b7mKKNT4XFFVkVkDJVxeK9Q9HZB5qRCZzea/d7sVC2Zjgwhu9oinq?=
 =?us-ascii?Q?cKA9W7ZqjojYxsc4lyhezLNoY1Tf4zncco5WIOJYLartK8YekTZJw9tXR/xK?=
 =?us-ascii?Q?9LTgeRlXyAVHarUlR7Cb3+UR5YtSimw3c2I7nxQKNRP8s3OLiXjiX7kaonSJ?=
 =?us-ascii?Q?GJkAIUvTA0c8w80+pL9VPatmGtXeQuO/bdsME/pScZNgW0nWvQw661tGgfxo?=
 =?us-ascii?Q?Gpikee3gsW+wH6xQ/4TscDYAXR+G1scEWSRKFksvBf7QT/c6dQh1pxHC0g94?=
 =?us-ascii?Q?MZ1f+vKrM211S66Es88cFxmGQV0+gh3d/kp3Am5OcFFca/xizyU6ofqfDgoX?=
 =?us-ascii?Q?+l8/JNByEeRwQ75+wgMqsUKKdydh2Muf0TyfKqwVQGUGpyemIfHQMbM2xHnF?=
 =?us-ascii?Q?/btk5w+28LHrR0WCX51JzkPdimje29RzBFaaTY+Xtv9tFmYF8xm/EYIwRq9c?=
 =?us-ascii?Q?QLbx9eO6AjlP9R4F0At85fpdB3QH+OucYJjmbN0i3HUvtL0QBbEDOnBhxO3N?=
 =?us-ascii?Q?G3zwjc84uNWsWR/pas5D+AXhL0ElTTw5+vfSqVxDOXZBvIDzo9ASTbKBRNzT?=
 =?us-ascii?Q?8wvpIaZT/xO19vcs0iAPfL7x9J/gU6EtjF1PsUUunJtSFNPNOpqvedho81OK?=
 =?us-ascii?Q?YnpRpP53zjhFsMrCmW6ImACEgZGGC/gaSIggsI/Pb6Ge/jIqLVEwcBOn3Eck?=
 =?us-ascii?Q?TS9/hBTI/snm6WtsAPklLBEs2YzUic36gqKVLPVoRtL0Dkbi4W+2ZwSrtsoI?=
 =?us-ascii?Q?/EXHRVJfNDXZgVmvKfa5rud4JGCa3cew4N7XSHwLBqj0+p5PxmK5h27MTi4v?=
 =?us-ascii?Q?ILeAQd2TiB5uDa2v8xdDjpzliGMyrDNggx2OkSpB3h6pnO9FP2tPFBTnXYVt?=
 =?us-ascii?Q?MtXAiGoUImTXCgb1TZwgMu7TWfqz+9SU4vi3RWx4/3sz4vSpCiSe7/z53fXF?=
 =?us-ascii?Q?8hSNJTVJcGFrFIE2lDisJRMEBPCOk3shEJREYPNYP3VNm2CFHCw2K/Zuk3Gz?=
 =?us-ascii?Q?Nwn7EFqbdogsIDXAhTOQOWEn8uUzeSAXlFURAU3t3bEy1kX9WSvM28DhpG7t?=
 =?us-ascii?Q?x9aPSjGvZialHp3SOIGVJHvC+JKVeIqZ1AqwoIZFO32t?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99f832ae-574b-42ae-81ab-08de22073986
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 16:19:16.1984 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 453hztW9lOkcKFiPyaIZ+bBWEVGzd1nAqHTNG8DWQ6mOCrOoHqL9Mu+77fU4IYnz8LCrq1ynbDhgz8ExrP3Jqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8018
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

On Fri, Nov 07, 2025 at 09:05:36PM -0300, Gustavo Sousa wrote:
> Starting with Xe3p_LPD, when intel_phy_is_tc() returns true, it does
> not necessarily mean that the port is connected to a PHY in the Type-C
> subsystem.  The reason is that there is now a VBT field called
> dedicated_external that will indicate that a Type-C capable port is
> connected to a (most likely) combo/dedicated PHY.  When that's the case,
> we must not do the extra programming required for Type-C connections.
> 
> In an upcoming change, we will modify intel_encoder_is_tc() to take the
> VBT field dedicated_external into consideration.  Update
> intel_display_power_well.c to use that function instead of
> intel_phy_is_tc().
> 
> Note that, even though icl_aux_power_well_{enable,disable} are not part
> of Xe3p_LPD's display paths, we modify them anyway for uniformity.
> 
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c    | 26 +++++++++++++++-------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index eab7019f2252..1485fc65ab87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -258,8 +258,9 @@ aux_ch_to_digital_port(struct intel_display *display,
>  	return NULL;
>  }
>  
> -static enum phy icl_aux_pw_to_phy(struct intel_display *display,
> -				  const struct i915_power_well *power_well)
> +static struct intel_encoder *
> +icl_aux_pw_to_encoder(struct intel_display *display,
> +		      const struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
>  	struct intel_digital_port *dig_port = aux_ch_to_digital_port(display, aux_ch);
> @@ -271,7 +272,15 @@ static enum phy icl_aux_pw_to_phy(struct intel_display *display,
>  	 * as HDMI-only and routed to a combo PHY, the encoder either won't be
>  	 * present at all or it will not have an aux_ch assigned.
>  	 */
> -	return dig_port ? intel_encoder_to_phy(&dig_port->base) : PHY_NONE;
> +	return dig_port ? &dig_port->base : NULL;
> +}
> +
> +static enum phy icl_aux_pw_to_phy(struct intel_display *display,
> +				  const struct i915_power_well *power_well)
> +{
> +	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
> +
> +	return encoder ? intel_encoder_to_phy(encoder) : PHY_NONE;
>  }
>  
>  static void hsw_wait_for_power_well_enable(struct intel_display *display,
> @@ -570,9 +579,9 @@ static void
>  icl_aux_power_well_enable(struct intel_display *display,
>  			  struct i915_power_well *power_well)
>  {
> -	enum phy phy = icl_aux_pw_to_phy(display, power_well);
> +	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
>  
> -	if (intel_phy_is_tc(display, phy))
> +	if (encoder && intel_encoder_is_tc(encoder))

Adding an icl_aux_pw_is_tc_phy(display, power_well) helper would
simplify things avoiding the need to retrieve the encoder.

>  		return icl_tc_phy_aux_power_well_enable(display, power_well);
>  	else if (display->platform.icelake)
>  		return icl_combo_phy_aux_power_well_enable(display,
> @@ -585,9 +594,9 @@ static void
>  icl_aux_power_well_disable(struct intel_display *display,
>  			   struct i915_power_well *power_well)
>  {
> -	enum phy phy = icl_aux_pw_to_phy(display, power_well);
> +	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
>  
> -	if (intel_phy_is_tc(display, phy))
> +	if (encoder && intel_encoder_is_tc(encoder))
>  		return hsw_power_well_disable(display, power_well);
>  	else if (display->platform.icelake)
>  		return icl_combo_phy_aux_power_well_disable(display,
> @@ -1849,10 +1858,11 @@ tgl_tc_cold_off_power_well_is_enabled(struct intel_display *display,
>  static void xelpdp_aux_power_well_enable(struct intel_display *display,
>  					 struct i915_power_well *power_well)
>  {
> +	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>  	enum phy phy = icl_aux_pw_to_phy(display, power_well);
>  
> -	if (intel_phy_is_tc(display, phy))
> +	if (encoder && intel_encoder_is_tc(encoder))
>  		icl_tc_port_assert_ref_held(display, power_well,
>  					    aux_ch_to_digital_port(display, aux_ch));
>  
> 
> -- 
> 2.51.0
> 
