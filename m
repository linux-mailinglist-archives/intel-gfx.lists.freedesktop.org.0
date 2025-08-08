Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC42BB1E484
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 10:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB0F10E8E9;
	Fri,  8 Aug 2025 08:39:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UQtsGsDG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9792010E8E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Aug 2025 08:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754642345; x=1786178345;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ECCcV2D1yJ0jc+kNUaiDEhV7C034oarehKh0OHFmcVE=;
 b=UQtsGsDGR7r5AGELXCST9Ruv3wkIKoE4wvAbiyudIcs6Y9iFbI/SsTGH
 DrH44j7ZxsOx4exEkmrx0mHZMiHv02i/OHl8tBX89qH3NZjwxl+ltDnUf
 ae7eR2LPaPHaQKtMhhK4wvaJJc7RXqKr0Wx8iPY6fc5WGo2ZiPZxsbGVZ
 PHH/6XKRZgf1hu1K1ea5ji3tBYUAOaZhxR5UDwSR6/I2WxFIsF/SZauZs
 zvZiZbxYiumhb+VeBs6wjIomN98hEr1Xt8S5A0v8YMzIveeCF6Dy/miml
 w6z8uo6Fuiu8crqAy/xwIQHEkdqr7djQ9TDmEnegPE/F2Qh1DjzYk9PwD A==;
X-CSE-ConnectionGUID: ar0KwNGkR2iotxmJFCfdPg==
X-CSE-MsgGUID: VwWv/E1gQiq5Slki1bJaVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67258266"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67258266"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:39:04 -0700
X-CSE-ConnectionGUID: 22T+4ZP6TgSuZJkocaYRog==
X-CSE-MsgGUID: 0oRAa/a/TG+J2LfUH3OvfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="170531416"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 01:39:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 01:39:03 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 01:39:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.65)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 8 Aug 2025 01:39:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TjtEklILNHdaVCCTb1FeJOSIeMIL3NXJgjMujOYWGsFusXF3SndDHlnAGK64jAP1AxTIvGQJ0L4hvypRaRTBWdWU/s8v43Ffzty+xBQKuU6xZSVDURBst4mxAGrInDLcm61wd03YUSc/qi8udnw68Zd9Rd4SDPXnvyUs3tIgRhWnyH/eFsdjdIEujIRbjZACq7EWsVreqkes5ezGk2iP2uZb7/qbNkQwWn9I7W7yOaIz1BKsw9ITBVRxjMBUIBYCETqjNbP/ezyS1u2QC29uwazpIhRqesrLsedn8IVOd+4ZB8TMtXGEXVLuY02DMnb69w/VSJgIF/zXv/YXGHhLOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m185GFm+XSTAfZKZoI0vvB27eD/DYSGhBJCRumk4y/4=;
 b=tTB88DhiDxEUobkshn3lv9QSRUg2OLeJVCGRDcSKY2FzdOrS2wsyBU6XcyYl8a8EMlrg3qm0txELI4nZk5L2BVQhorjXgGsXxQuITSljBUAzAHD8gvvkkV4OVPoykfjM46EdKL7dZYvf1BJUy60jTqS16eC08biW25e9J5dPO1fgsTO+aoyDgICEGtVm5It79AlvWPDn+eCdHfrvfGne2NGt4OfmPPykX9mZxR0HFgb6Ke7goyhi4f+93ZunpQDdZrwooKArprVl9XLnwB/ftIEFGmPZ53cKLX/fG0S3rdkWfEzK1eC8WiGvR1HPkcK8nsVcoxh3R3BVuwy4kAPHdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 by BN9PR11MB5324.namprd11.prod.outlook.com (2603:10b6:408:119::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Fri, 8 Aug
 2025 08:39:01 +0000
Received: from LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::4622:29cf:32b:7e5c]) by LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::4622:29cf:32b:7e5c%5]) with mapi id 15.20.9009.013; Fri, 8 Aug 2025
 08:39:01 +0000
Date: Fri, 8 Aug 2025 16:38:52 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Taotao Chen <chentaotao@didiglobal.com>
CC: <oe-lkp@lists.linux.dev>, <lkp@intel.com>, <linux-kernel@vger.kernel.org>, 
 Christian Brauner <brauner@kernel.org>, <intel-gfx@lists.freedesktop.org>, 
 <oliver.sang@intel.com>
Subject: [linus:master] [drm/i915]  048832a3f4: assertion_failure
Message-ID: <202508081029.343192ec-lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: SGXP274CA0008.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::20)
 To LV3PR11MB8603.namprd11.prod.outlook.com
 (2603:10b6:408:1b6::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8603:EE_|BN9PR11MB5324:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f71a5c1-0702-4b29-4bec-08ddd657060a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jsDKsHoMBHCDIHiJRAnkLYQuXvKyxMC779Re5Brt1D3ybWIqPGnLfdjvzg59?=
 =?us-ascii?Q?3OesawwLkR6BS7jtrLP17HpsD/+GNXyL47iDUcx4Bi+Lxkb6jyBIKolFCLVK?=
 =?us-ascii?Q?XyPaLOpIhC+Qt94xlVefhSwf7m8AUE3pdbt8w7uf3TmOSkLlxqUiiJaWOwN2?=
 =?us-ascii?Q?Inyf4CEPt1wnHTRXb5Su0qC/bYIV31zRxTve6OS2ulQqNTq6jxqjvU5W4gVE?=
 =?us-ascii?Q?6+Gv+Y+m+F/uaqbuqtRtCzXKa7F7yvSXp0OuiCubdWh7MHZmr/vvAPF488NS?=
 =?us-ascii?Q?jS9I4B80daOo2EIZusqsnTZqt6X+M2hVmRlKPO76puBpiuiSXkzs8gqH4NQV?=
 =?us-ascii?Q?cXmd1s5uMkOOYMJIbj7waAtRFldrvApHIlrdo5Qx5/An0cHL5SU3YvGQmeNK?=
 =?us-ascii?Q?xLrPVvNnzFmI8tlmmGnoDSoB5Yo+i/Cw4kbPSfV9ZBAFpVqGpf6z1sqqVYUM?=
 =?us-ascii?Q?f7QkI0IjxIcnLrdpzndtEjxLOz9rtZKFg/n7/XEkFRGLv/F/cs27pBDpZMEF?=
 =?us-ascii?Q?NywX6icW0TfM64NeCi1q5sge2ijpMTpVEl26XgZQu/AhrXVkOVM7gK0bRzpd?=
 =?us-ascii?Q?zIGmYtjP68u/1ecg7o35+3OmqeqS5TZVMXaE5dA2UZVgnVsKvTi15fPniMt+?=
 =?us-ascii?Q?pmQ4aNYjrKb+3lQz8BILre8CVtYd1bhV2uAI4aNVQli16ghbteHPbmcY6udg?=
 =?us-ascii?Q?I2UyGY8kwRwMWK5Qb/jv1IKhr0goHGD241n02JFv9Q7KUvZD7s9n+1qpGSfb?=
 =?us-ascii?Q?exyGgw1EnrkPi+xCbYYcDgHAt+ZB8nTe2DByAZYzzE5HU8d3JtFjjYsXw+aC?=
 =?us-ascii?Q?RayFaw/UFa6BPrp0Ew2VsqxHZkzS5qC+qTsj04jzK9XPLwe7JM192WjL5V/l?=
 =?us-ascii?Q?2+7Tn3sFRlPXvcqZgV1w5M3Z4Dtzxmm8Cce9DsRXxczFL0tSj/IcJE+SEgZ2?=
 =?us-ascii?Q?K7be4cIjLXzhBVZk4bghLVXUVeStxFXDaKnq2ewpmScB3q5LhQLftqOrBvYE?=
 =?us-ascii?Q?LJaAB38qBmn5RxKKuMEQ3AMkQuQQfs21JJGTWGemdb7n5d8idGnRuWftowji?=
 =?us-ascii?Q?h8A716Cb6Unpth4FS5rq0BZSFfU/7nZn03WkFlQH9yYJCJVasHRGf6KJJSh5?=
 =?us-ascii?Q?28n6WjBuPhTjau62YW4AREZ5LhlRQrMN3l92bOoWR7pleAaTu4uZ2YMnzFeF?=
 =?us-ascii?Q?8ETp+Wc+wcKPStW/c4YEPH5MdhllKBmsPiGdOI1+ifcpA23UFNn8WMU1FIQf?=
 =?us-ascii?Q?yFG8Wle0dkp6ufjzvINqoJy5FyJ/1R9mCyk2uBh6irORxRwUVz9tptyqOUEb?=
 =?us-ascii?Q?3sKDKzsdBGv3dA9/8pdoIU6n6ENLgM6/ihUBUPtM1P8XJuR30ORL8HCdYzYb?=
 =?us-ascii?Q?MkVVopOcPSYzey2A4ddwb0ymGrYc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T2sJDpOhPaBdJwKjteH+3e3AP1fLQfe6N66tUeck9+Emu6tImIlAD2/T9H4G?=
 =?us-ascii?Q?s9V+d8TTi/JesWfd1mWWmN+gTUONL3Qiwbez6xG1hl27i2RSX8bFE71P2cBD?=
 =?us-ascii?Q?qlpajBS74JFUfs+ME7ghcTUOrW0fFtPUdHOulcB/o/V+FJQa/B+e99dpVjon?=
 =?us-ascii?Q?/BT9ZMgt9jAJ+hOVlPkAS235bLWaqjy9kj+FJVQKMojHYjkm/Xdoy/LiMAp/?=
 =?us-ascii?Q?7Rgce8xKzGEg+b5gCCbSXl7B3lnukhSyiTmfmqHcnN8mXqQQ7QT1m4NXZtFZ?=
 =?us-ascii?Q?1KC9VNKQv5hkucd7fgAEZfZcbpGE6gITeBkbqZ8D/y3FNDntTuR5S/A2SGq5?=
 =?us-ascii?Q?IJSYAHRQNISZfugPBkSisqJGDIAZ6k6JuG69WYJnvHK2pRIYnSWYsB7SPvtI?=
 =?us-ascii?Q?fhW2xESxhK1UECe74vy7ailxPAb6FYZEbX97vsbEPcn5FPvQQ8USVpU9QLKH?=
 =?us-ascii?Q?qevPll3EhQedocqmcuIxR2LuF6s4SQxHPhH3HL46eNrlGDmu+StElAw0GK+k?=
 =?us-ascii?Q?ydCbff0LSCrGGGM+W1rwDjKMYLYnFMN+tQM/8h6us3ih5nK1TwRVB+sidHoG?=
 =?us-ascii?Q?lgryWk+Bk9mHTNHnIkH2CNoykB+jLCV7FBBBi+W1muL2MwvpYr/M4fVJyFk9?=
 =?us-ascii?Q?QqmFw61fHRQKH2ratk8fhDaFd4OTJ+PjGG45KGIrVoUNJTkJxntw1s+O0TGj?=
 =?us-ascii?Q?rsNXTvwZPmCJUVwnaoWcTIQEh6Uzp0csi6iKTxPMge/r+tVLYwPtlh6zZpqG?=
 =?us-ascii?Q?ect6yuZKAoIBot2IPIfdeLr2oxJ9EhRZVwnwTfQE/7v2rytYKswE1v/JjH15?=
 =?us-ascii?Q?02pbzjq1iryl0yPzZrGkKvapI2zJySWs0k/PFFnr9CJ87lNQ51epohoO5qpc?=
 =?us-ascii?Q?q8qIZZKiopanet96GO/Esm1PFX+NKsZw+bMRy2zJtfJnCJKqfEPBRo7NIGKJ?=
 =?us-ascii?Q?B30fy54G14SQpmRsluy8A8nuA9NnNrm3s1deRGfRIkltZnrSy2bFrK/P7M9X?=
 =?us-ascii?Q?Jl072OzO3LVKfI2OYaxsjOhpZbeAv+Ip7Xw6om5SBvP0GW1BAaMB5rRzjTbD?=
 =?us-ascii?Q?VgH+qFjYg5mTjOS4GfRCbw83gqhYUnMslfhKv2jjDod+5LwvBfyeidRD7mel?=
 =?us-ascii?Q?IMJQPD/ISQ3I2qfxfLNhe01iOfNY1e1EphC81gJvrXD5U0FVdmrqLULRiojA?=
 =?us-ascii?Q?gypN7LtwWC8Mdl9useqyoYlbfBJL4uCZ4rYXtVYFtU/5BDHyXRQDwV7KsK13?=
 =?us-ascii?Q?+/Z47QOInKolL2P2/YseiQhW6u8Q6vwhrqFBW5iSLtwXIKaiUCyhQfjJXcXk?=
 =?us-ascii?Q?S14PkhLesVYiswS7hJW5XBGQi4z5FTBFjNOV2sEo8sGY6bCx4FjvroIiSrNm?=
 =?us-ascii?Q?y/rnqHB7Qhc1R8JLCcOGsGlwfqkTfvpG2qKImYwQ++xKsD/QUkBDanQpIYaU?=
 =?us-ascii?Q?8oHrgvtoeaxqaYXN/m9iOIiwmjhdy1KheQ5EefSEwokvXMl5IJXEhurIuRJ8?=
 =?us-ascii?Q?b6BgYkKU7FM/MbETBIXAdqL0Y2K2GmgmyPpei33VBTDrtbJOaT5oRAj+mGdu?=
 =?us-ascii?Q?lLIGfv2ITl3pRmu6mDHDfTSl7FSyK47FdtoCHa/ad3xmWczipwLk7zJ++R25?=
 =?us-ascii?Q?xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f71a5c1-0702-4b29-4bec-08ddd657060a
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2025 08:39:00.9384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RsNLFat7MsJw33xbDvbIiUJK9g7Rm+OW9BZFjZnl6aEdrXEFAurAARGoEXcQ3wmJVpVzK76AzwvDkU6n0Lud8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5324
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



Hello,

kernel test robot noticed "assertion_failure" on:

commit: 048832a3f4003113c3a0f060b08376c103622099 ("drm/i915: Refactor shmem_pwrite() to use kiocb and write_iter")
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git master

[test failed on      linus/master 479058002c32b77acac43e883b92174e22c4be2d]
[test failed on linux-next/master b7d4e259682caccb51a25283655f2c8f02e32d23]

in testcase: igt
version: igt-x86_64-a53a2b478-1_20250803
with following parameters:

	group: group-24



config: x86_64-rhel-9.4-func
compiler: gcc-12
test machine: 20 threads 1 sockets (Commet Lake) with 16G memory

(please refer to attached dmesg/kmsg for entire log/backtrace)



If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202508081029.343192ec-lkp@intel.com




user  :err   : [   80.799062] grep: warning: ? at start of expression

user  :err   : [   80.807324] grep: warning: ? at start of expression

user  :notice: [   93.658557] (gen9_exec_parse:1321) ioctl_wrappers-CRITICAL: Test assertion failure function gem_write, file ../lib/ioctl_wrappers.c:416:

user  :notice: [   93.675127] (gen9_exec_parse:1321) ioctl_wrappers-CRITICAL: Failed assertion: ret == 0 || ret == -EOPNOTSUPP

user  :notice: [   93.688924] (gen9_exec_parse:1321) ioctl_wrappers-CRITICAL: Last errno: 5, Input/output error

user  :info  : [   93.698755] [IGT] gen9_exec_parse: finished subtest bb-large, FAIL
user  :notice: [   93.700815] Subtest bb-large failed.



The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20250808/202508081029.343192ec-lkp@intel.com



-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

