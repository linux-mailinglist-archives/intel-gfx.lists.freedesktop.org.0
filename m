Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LNBYNwNuK2qy9QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 04:25:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC8F676458
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 04:25:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=crM6mlT0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93EA10F1C9;
	Fri, 12 Jun 2026 02:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E89410E8FF;
 Fri, 12 Jun 2026 02:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781231103; x=1812767103;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=1vfpk1tzT2fiE/DJdHAu9LRm2tWvZ3sdUqy6sRHVrJA=;
 b=crM6mlT0jIvY58nD4ce8I/y7kyubYvFW0iP+3PbDXHjJyXpoZYNwZItN
 6MKzqm33ddZo7z0KBSOVt+XNffHDCM/5u4Lgt1kTs0IIwvzIJPfctXiqw
 qm9THhRBWwdR+TJbqbvvQhtkRMfjH4dlSw89FGlSGlCQflzlrzCuS+qff
 p7+gdrFLUUn9r3DS50ZoGmIb1h2i50nWFDlj6P+499/CDvmRH8jxBVZQa
 8DAXd+crq7d+zhXQTmzLlNcyPlpPTDTnGBgX+XYaMUb4DZr+gIkIWkJ/6
 XSJJVDrtzf4XNnNgczY+A/Swlii2UTWgv4qcFeCDwgc1AOlNzXve5F9Im g==;
X-CSE-ConnectionGUID: vcQpU4Z1SdqLZnTck/RIYg==
X-CSE-MsgGUID: UETJNk4XTuSP459ghYFerw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="69605880"
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="69605880"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 19:25:02 -0700
X-CSE-ConnectionGUID: NlAgIwMWQF+BTQGMpPqEDA==
X-CSE-MsgGUID: 5N3vGHFBS/eN+0Bbx+IGGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,199,1774335600"; d="scan'208";a="245803990"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 19:25:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 19:25:01 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 19:25:01 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 19:25:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x12nS1MSVJ5vgtQiZt2vAd7uZyZgD2f1yO/b4m+HSBhomTympDaz1Ory9Q/7Fai83t/J2K3evTe8YaA5lEnTQHcsyhyalR8efkhvm7UwUhepj9jqzpQq1vlDpk2q09l/K5X6QFCcHCj3RtAePjfoZWsP40hFMqM5YH+bnZTPU4D80np5q2ZXzWmU7+h7FuaWEQYCsGrLWmpy3KYq+pn0O7NMRacYwnJyRZa+ks/nyZJYavOGsv7fz0IFf/iRr3fSYRfB1Cb+qVGns2otzZU44Q1rI1JsqRmseFRvBT71jcHuQ5l1DSb+1lNBaHM6m4VLC+mbxWrSqCUY8cCvu2VV2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R5bbCtLH6f3pPa9Ic7TZMyLITOVjJwIyGo7PAi23nA0=;
 b=JSTsJphCjLIKFivZb6AG8b1bpYn+06BO5rCfbAbBC3Wljyl41owmPJAMdCbkOPH/B8zdlniXb1HFKOj0JARDTT7sl9+tMye6P6MLhOyCu2580iS73dCpWCa1MWDunIhzU6XMYhwfTMHU2vQn7STgkySfW+0T9yhjt3m4L15Mt36pdCpcYGubUj0SPci1UXWFueT+XY7L4mp55jowwQH+wnKHWmHVxTrzwa4zJ5VocjVrgaUhYU4NWbGpdra91QW/OR9cjUDBxcuoIvz5QZ6GgnFfOoovgIo18zLFolDL++Zci+IejQWm8d2in18f50m2qd48cgoBg6Pkx96ujis1RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DM4PR11MB6336.namprd11.prod.outlook.com (2603:10b6:8:b9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.14; Fri, 12 Jun 2026 02:24:53 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0092.016; Fri, 12 Jun 2026
 02:24:52 +0000
Date: Thu, 11 Jun 2026 19:24:49 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>, "Oded
 Gabbay" <ogabbay@kernel.org>, <dri-devel@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dim-tools@lists.freedesktop.org>
Subject: [PULL] drm-xe-fixes v7.1rc7
Message-ID: <aitt8ZkYmxIT9cdP@gsse-cloud1.jf.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0231.namprd04.prod.outlook.com
 (2603:10b6:303:87::26) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DM4PR11MB6336:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ddc8e43-a301-4226-aa4c-08dec829c920
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|7416014|366016|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: KgL1AOFb1L1g4Iz+HbtEnpBbNSDEUbasCTWyT3g2qJjKSq/YlwE71B5Uuk9JmOp3yfH7DRZAmo2ODl7usB92zE30JrZoI5ume3q2geVdvKoIzgeeguM2NioXkzpqv2YeIXZHV0fyxW8sKjXZXjPW7/Q7f3z4tW2+GWBW8pnt/Rnm8OZeZNQLbAKvEvrzdcUX9CaJYy6rbtQdZ9KJqq07ShMa2wt76ft3FNKsMRLF7lwdOg2Vy5hGIblhCtBquPnN1XmkwrP6eqO/D85UYH9h5VJirYX/ZvvDpJ6cQ/qT7s6pEllM2Ufk2oJw0JiIyj8+byL9ynltDkWnimvfMlAXBk9B7yALo/lGoztO8KFffK8IMRVHWAO5o2Bi0LCrDOVLKKKBiuAcQ9cNQFHO2Gbg2yZo5O+lDHuDQbtZD+e4oceT8BI6h1kDLbX1uBpetCR4vtkAxSMQB5HGRXuZowZvByq3d9jXbi9rTXeTiQgI8tmLNAp8WbtXrZJ6ofUQP4AkxLXF834K0tnzS/gcBlVDgcucPBnrmTP7Yai5MfgbEkaLRiPj/NU17KC13/u5oncmwKDmoEXfDVmVp4AFtZ/h3BA+TNvVywtduuLqfY9jYWNgjPX8pG2x2lX9uBTNefOY2lmdKI3D4h2kCOoofcdGwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(7416014)(366016)(18002099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S09yYXZybHFMTENSZlFjbTdSZ29FL1AwZGRoOS9QMDAvaG9sZmRISU9USVVK?=
 =?utf-8?B?c1VHTFgxWHN6T1NjYUpGdWJ5aHUwdzRqMUwzdVREN0FsR1E3dEpPK3lTbk1I?=
 =?utf-8?B?RHlBa0pXeElJL0xURE5oMUZ3d3pGa0Q2YlhvdVVYNm5hd2c1SUZTaGE2QWYy?=
 =?utf-8?B?aktOMGtOUXcwZUJmZDVIQ2dmOXRMSUJXYTJzNm03UnJDc2pRYUJvdTNuOFpi?=
 =?utf-8?B?RkRkb3RrVkh0Yk1RUTR5TVdLbWZaY0kvWDVzYkZwVXpteTRaQXNtbi9obk5V?=
 =?utf-8?B?L3lGMTVTajJQK1VkQ0VraVRvWWRjYk1JKytLcE5ZT3pwTC85WDl6ZENnOU53?=
 =?utf-8?B?Y0VBME9RMG8yS0E5ekZ6dEJLS0F0UVBqOVYwSEhhcG9wYm1Pc3JraGZHRitQ?=
 =?utf-8?B?YVBvYmRHcDh1V2Z1LytUWTNJRENoN0VkMnBLUncwNjEvSFRqTVZxVzB3dG9J?=
 =?utf-8?B?QnpRczN1b2x0WjYvQlUyVVF0T2x4blRab3ZaNHdNWm4zR0Y5aGFtdkFnZlhr?=
 =?utf-8?B?aHJLTUxITkp4NkZMY3dsc1BvSDNiZXk2SFlHS3FSY213QzdnS2ZPRG5sT1VL?=
 =?utf-8?B?cjFzMVJvSUk0clV1REZSblVMUUVRM3hTVVQ4enF3d1ZtV1g3NTk4UXMxM2VF?=
 =?utf-8?B?dmF2WGpOd0p1VERjT08raHU5WjBtdGI3OHJrNXN2b3VrWnhrM3FmblVXYlFo?=
 =?utf-8?B?NFR4aVJVa0hXVHJzeStxblF0Y2ZMMDF6dTlmc01CenIzUXVPNjdOejBOd2tN?=
 =?utf-8?B?TjJzYzZFdzJQU2h2TS9acGxzWFl6WEFuRTZuNTV4VGFyNVl6ZTB2d29ldG1a?=
 =?utf-8?B?SWZBQktKcW01QUpLVzNJL1R6ZElOdnVaOXd2V3orYzZHQVNWVDUzeE90L1h6?=
 =?utf-8?B?cTNoRE0rOFZ5RDZaTU8wRURQTnZLMDBwZGVQU3RhL3FWQ1dGanNtK2w0c1Av?=
 =?utf-8?B?ME5TK1ZjTW5YZTgwT25oZnE5c0d6a3M2SVdWRmZWZitqWEZ1SFNkbzJuZVlS?=
 =?utf-8?B?WUpsM2h4MEFPZ2NCYkxWMUpGSUVEWnBsZ1d2T3phbnAra28yWmFkU1pNbEE2?=
 =?utf-8?B?MXZTNXI1YURWN2lLRFBWVnl0ejMycGJXRlhLZEJlSDg4NUU5azJkSGtOdE9G?=
 =?utf-8?B?SUxGSUIzTUpTcDQ2K3JqdmlmaERFeWtadEQ5SHFXdUZZSy9zU1N2WDMxaExT?=
 =?utf-8?B?Z2RDajNKM3diWTdNL25RMGxHaXJRVGdJdDF6eE0xaituNnZXOFEzWUZ5cjZx?=
 =?utf-8?B?dkhqNzUyNUJHSUovNTV6TTlodFFJYXlleVZabUthUndkZGd4WE1oS1FaMjIw?=
 =?utf-8?B?emdkSHdudzBqMXBTRVVMSGMySENGVFRldXkweHQxOUhQWFZiajdyOG5iQ1Nj?=
 =?utf-8?B?WlVRQkFFYTc4NW5sT09XNVFpOW94aGVaejA1TWRjNGdJbVJIRDlPTG1YdVNh?=
 =?utf-8?B?SnJTSDJVc3l4dkM5VC9WbCtXVWZlaHJYdkdYeVJyclBvdmovV1lEQVlpdGg4?=
 =?utf-8?B?L3g5Q1N0V3lHSDRGR3NvTndJQ0JUSFM1UENlR3ZaS3FiTkpraVNVeFg5S1VH?=
 =?utf-8?B?WFNlcGpHbzhja05taGdsRzFGTldoTEE2U1IxMWk3QVlDNVowNE9KenRwZWNy?=
 =?utf-8?B?K0JFdnBRQ2ZFRW0rTXgzM1BETXNkTHNHUzlaUjgyelNLRWxMU3hRYlNrNDdn?=
 =?utf-8?B?SURqNmtRRnNtbW5qRDBPUy9zWUw1SVRja05LTEE4MXk2UVN3Qlo3WXVTRm9x?=
 =?utf-8?B?TnhDK0twdm1OTVdmd0tmSG1GU2RDRC9kbzhRTVo2T1BtYU5ubXlMeFpIcmZt?=
 =?utf-8?B?c0VhN0NRRUUvMHRMdU9qMnRxd2s1V1ZRUUE2eTdYQk5aWHRiM1dnU2c0OWxj?=
 =?utf-8?B?YU5GMlByUXFzb0krR0VqdkVMbWU0dHo0Z3JRS2lwYStPTlA4cXN5YmRxUmRI?=
 =?utf-8?B?aEpEU0M0dWl6M3FKQ2l0dkdIdnNrdkszRmQ0alpJZlF1Y2QzQnExTnhVdUFv?=
 =?utf-8?B?dFV1YVZRRU1VSDJReFIvdTQ2N0JsRWduM0FQTXJPUTF4VzRNTTlBSitxMk1a?=
 =?utf-8?B?NlpSNkdkZW9rLzB4QXJBL2RQN21zT20rL2dLTGI3VVhDYVZ6QnZFODVVd24r?=
 =?utf-8?B?VXdqZVlORkE3M0FSMHkwNXZ0OUxWUnZtUzhEV1ZKUTdRdmdPV1pDSEhyVWJX?=
 =?utf-8?B?WWM0ZGhUNGpjRElPc3MwR3JBUlRuNWNCU2tuNjlzd1JhU1pDWjdSRi94djUr?=
 =?utf-8?B?OG1zWEZEdUZ6WDlmY0dXWndNM0YzY2tMZWJicDdaNThCNkpZdEk4RDk2VzlH?=
 =?utf-8?B?RFZFODdkK0xyMUdqb0VEUmkxZlpoU3d3NCtvTUNmNG5YektkMUhaZz09?=
X-Exchange-RoutingPolicyChecked: i5I3lMxpaFxqdd90rggahEXG2T07IKJ13rQOnim1OmIXZavdWlKxHnmGXyayoIrPAiEivPDZTTN5AVRNvkSaTRwKeIihvLGpTQpqLFdV5x+/oUQzl54sN/SB37BFTnWGfhYqM3yq18wJMGF4n1+cjEX4rb2ofvepD0QjNxjNuFIdQzbH9fDyt35wk47d4HeFwIkU1CGhbbkts5hOrDsHSUEwr20fn8gnYvk+liqmCnqIAGFLWyt/RNCzPpSdTKT3NsL+UkJyWn7+5ojmIX6+TnnSLMTGDCYem3hrlK2PVbpiwKJJ5/OehkEyN6951oc9vI7v7Hk0rXkvnZ7xAExzxA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ddc8e43-a301-4226-aa4c-08dec829c920
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2026 02:24:52.7944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ol8JyscGdLSInMPgjvlbwwrjJGbTzMqkzhWrEgFmHWHjzGA41/MIpcXb4pLW1nZ4Xv1zemLzSZWkFjb9Phwzrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6336
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:from_mime,gsse-cloud1.jf.intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3FC8F676458

Dave, Sima

Here is this week’s PR for drm-xe-fixes. It includes several
patches—most of them fairly minor—aside from Rodrigo’s fix, which
addresses a nasty driver loop during kernel job hangs. While it won’t
fix the source kernel job, it will prevent the system from getting
bricked. Linus, among others, has reported this issue.

Matt

drm-xe-fixes-2026-06-11:
UAPI Changes:

Cross-subsystem Changes:

Core Changes:

Driver Changes:
 - fix oops in suspend/shutdown without display (Jani)
 - RAS fixes (Raag)
 - Use HW_ERR prefix in log (Raag)
 - include all registered queues in TLB invalidation (Tangudu)
 - Fix refcount leak in xe_range_tree in error paths (Wentao)
 - fix job timeout recovery for unstarted jobs and kernel queues (Rodrigo)
The following changes since commit 4549871118cf616eecdd2d939f78e3b9e1dddc48:

  Linux 7.1-rc7 (2026-06-07 15:37:58 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/xe/kernel.git tags/drm-xe-fixes-2026-06-11

for you to fetch changes up to 347ccc0453fca2c669e8dc8a72000e76ca4adf10:

  drm/xe: fix job timeout recovery for unstarted jobs and kernel queues (2026-06-11 06:39:43 -0700)

----------------------------------------------------------------
UAPI Changes:

Cross-subsystem Changes:

Core Changes:

Driver Changes:
 - fix oops in suspend/shutdown without display (Jani)
 - RAS fixes (Raag)
 - Use HW_ERR prefix in log (Raag)
 - include all registered queues in TLB invalidation (Tangudu)
 - Fix refcount leak in xe_range_tree in error paths (Wentao)
 - fix job timeout recovery for unstarted jobs and kernel queues (Rodrigo)

----------------------------------------------------------------
Jani Nikula (1):
      drm/xe/display: fix oops in suspend/shutdown without display

Raag Jadav (3):
      drm/xe/drm_ras: Make counter allocation drm managed
      drm/xe/drm_ras: Add per node cleanup action
      drm/xe/hw_error: Use HW_ERR prefix in log

Rodrigo Vivi (1):
      drm/xe: fix job timeout recovery for unstarted jobs and kernel queues

Tangudu Tilak Tirumalesh (1):
      drm/xe: include all registered queues in TLB invalidation

Wentao Liang (1):
      drm/xe: fix refcount leak in xe_range_fence_insert()

 drivers/gpu/drm/xe/display/xe_display.c | 11 ++++--
 drivers/gpu/drm/xe/xe_drm_ras.c         | 61 +++++++++++++--------------------
 drivers/gpu/drm/xe/xe_guc_submit.c      | 49 ++++++++++++++++++--------
 drivers/gpu/drm/xe/xe_guc_tlb_inval.c   |  7 ++--
 drivers/gpu/drm/xe/xe_hw_error.c        | 12 +++----
 drivers/gpu/drm/xe/xe_range_fence.c     |  2 ++
 6 files changed, 79 insertions(+), 63 deletions(-)
