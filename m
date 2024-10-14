Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D2599C006
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 08:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A3C010E26F;
	Mon, 14 Oct 2024 06:31:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a/Q7+oTR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A6210E26F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 06:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728887473; x=1760423473;
 h=date:from:to:cc:subject:message-id:in-reply-to: mime-version;
 bh=kavM46/A0T7DVxl0C5CtnZfSJ/OgeN6vPFTPhTcy75g=;
 b=a/Q7+oTRdv1p/U9JFdVq0yoqJCLIx0S6L4tpj9hOTXYL04vNaE0TB8V3
 9yKpFsrxyd+j+M8MjyRVDoF3r4IIk9/BM2mQ5FGc3mDVu1SVS4M1QqBHz
 HkLxCswVqUZJvHLCFbJRP6gj6gFEpexIu6ihJRRhIz7AIpGTvhcnZ1NaR
 UH1jeHGBUH/j8wXys3WfajCIP1rlgcCUsYC/dc7yySO/sBOfJxn36K4ZB
 ftxBvmak6csMgwP26AZ8AYKtS5vRfj0nMQ0CI/L8gQAlzlrRntw77LgtZ
 HSPFU+lPNMPvdRbDYKhko/BrAEWDAss/jDY7UTjFb87MvG0dZMynBt/lF w==;
X-CSE-ConnectionGUID: saqzwlfcTqCIquR5h1vmsA==
X-CSE-MsgGUID: OYeTtaM8QXWzPhD6Sc4weg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31915909"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31915909"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 23:31:13 -0700
X-CSE-ConnectionGUID: WSdm3GwsQFewIcotblJJWQ==
X-CSE-MsgGUID: Md4hL6mgRJ2wCR1KSjo7Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="77585354"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2024 23:31:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 23:31:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 13 Oct 2024 23:31:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 13 Oct 2024 23:31:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RxM9yfT6aD1NEy5SjtfiqlsUcdUNzNoHjDAsgtf8Y1B5SYmUHAaFIsanNUqNKoha3O7UCHSTXK+xPlN4wVaFP9dPPVzoTHWd+2f+sXkJhDqQ6SGmr59MZaQeiOs8JZ6yaRRmmNR+kTV6nHY+0vIy/t/H6tg5gyLBkHV5mi9QxVyd+OZ5vWsHfwVHCJqi5g5XoUER16GeFyShVQbGVW/DXXE6VSNby1w5qUk28vM1OwQQAP/lqmA797937+jXLXLk4/bPRgNaMLlgxemfCQDXTZLy9e6eCRQWEVxfhqIHS5eqs2nz4vvr/2MptmjQVcg3JmsniwO+vjJB0x6sj3oGVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bCpoN9iYyikmqsLxnpFYY41H8z/6vyYgItdaXPbpkNs=;
 b=zME3gpDK7zYktoQX66qSQgxD5OssN4h81TqQoRYcETPISxmUyPHqZI6NZ09sH6omJIQVVQzjYboD02iYPBHu53eLMkkajDmtHOBBuQfoHpZoiByADga1CV2mD20p58ZMXw9EdLKR9g/buyd3r3kelAYTZt7PpEQj9QSEcWZXjWlzEg1IWzQdTD54Be6vO/2OhKRvqKSwTXn1/5qNeDja56fi8IqKpzldlvi3lYXy8ZX0Dxx2pOs9PHyEt0DDvLP6cY93fNpoJN9e8t3uUj7CJKtEHj+m0ygRFwu4Z7PNn7JTJCS6ydlYSR9d+0X83TPEBRMMRYhgsLlYRE9lnshHPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 by DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 06:31:07 +0000
Received: from LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::4622:29cf:32b:7e5c]) by LV3PR11MB8603.namprd11.prod.outlook.com
 ([fe80::4622:29cf:32b:7e5c%5]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 06:31:07 +0000
Date: Mon, 14 Oct 2024 14:30:55 +0800
From: kernel test robot <oliver.sang@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: <oe-lkp@lists.linux.dev>, <lkp@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <rui.zhang@intel.com>,
 <yu.c.chen@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>,
 <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <riana.tauro@intel.com>, Raag Jadav <raag.jadav@intel.com>,
 <oliver.sang@intel.com>
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Message-ID: <202410141449.699cfd23-oliver.sang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241007122424.642796-1-raag.jadav@intel.com>
X-ClientProxiedBy: SG2PR02CA0096.apcprd02.prod.outlook.com
 (2603:1096:4:90::36) To LV3PR11MB8603.namprd11.prod.outlook.com
 (2603:10b6:408:1b6::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8603:EE_|DS0PR11MB7484:EE_
X-MS-Office365-Filtering-Correlation-Id: 73cf22de-5430-4ba9-6e54-08dcec19c8fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GCJgxOGpVYrqnD7DD0ZhTxUfgpMEBQIdlkepaxSORKcisIn1stvLqVbgSjAu?=
 =?us-ascii?Q?+g8gYw/mOL9bqTPrMpictPiJuqhWnvjKk9hhpkNOQWG2Kd5jwm1NgU0xjIO6?=
 =?us-ascii?Q?bRWEE9u1SbysfUS9HIuUQ+d+8q9BOa6wTWBOvalAQWHB7TAVzywc5EU/PDOJ?=
 =?us-ascii?Q?CCXIQ644YPmZiB1GAzgWEMkpOr1wK5d8WJfienXmkfG2Z4LVrd2rw5FcpzxL?=
 =?us-ascii?Q?Awb0n4zwh4IkhQAaKaf48sco150DXIqG7mZPgV+RbRwJRsXfxAE11n1ux2A3?=
 =?us-ascii?Q?Wl+FjBitqTPATXx4ZYWwJ0kerkEYRDSRnVH02MOTMHvFK5Mzpn7gy80YPDM2?=
 =?us-ascii?Q?PQ1OmkPC4t+02JW1PUUAFrWmdAX3RFEv+zvOOMvO/2YM/ZCSaz6pGksuWiOc?=
 =?us-ascii?Q?t5vkf6oNj2VvdDJ5Qdl39F8l8WgCTjg4F+OQ7UWOC8Vf3AiZH9Px0ZmhiLOZ?=
 =?us-ascii?Q?+Y17K470AHuIzr1RasYC8N7AAt7nCDs6K9FU0KlYY7JcRvm/k6IHohom6tRm?=
 =?us-ascii?Q?V4h81B5VShHVBiolLriCy2BfvMasFxuwp4ttAm8GMMUHQ1PEhoXfNVnF/Ro1?=
 =?us-ascii?Q?6ZXXOvVMBoNMrwwD5lvuKSKsrUhpPiogzoH+OKsvcnzNZEMHpvstrwODpPlB?=
 =?us-ascii?Q?VZ+3tsOfDBgdtAXV7hdcrshHRYjA/V5r6wHEw79gwLeVEPFOI+nCycHYQHzP?=
 =?us-ascii?Q?fLxMl5lfOHSUa2UmfaVaQb7cS7MA5FSGjaTSjwuX8YGo8E5EtaMt1pUQFOVw?=
 =?us-ascii?Q?s+Rn9UAQobROGVGOZNGL4XMOaZ1lcXX+nerHhgQkHSG1Lq6YDB/rz94SSJ+5?=
 =?us-ascii?Q?QoBNZ6CFzDSi6NMzgHU8vjt/FeT7XaxQpttiYx1Kwigt14gPgF5vHvLm0Lzu?=
 =?us-ascii?Q?8nS5Vdydc0gtQz6bZNQZZrv0Bxa4OrTYhEu7Iy/C6FvPfi5xvNk+YdOMe3RH?=
 =?us-ascii?Q?Ql9TxkP+UqinUsB6zzzSk4sAutos/bMkJMrHTqgQQThobX9cm04x8XYi3pre?=
 =?us-ascii?Q?1kwLOmpnlNSErH0LyIrNOZvXqyxr198imRXSmJ6rPSNy6J9uy0EdlkqB7H4o?=
 =?us-ascii?Q?WdVf/+CvAZzBq4a70aZSSPmVZY85/XXt4rYgEke+FmlzIq9wIrlWu7QzgAA9?=
 =?us-ascii?Q?1WH3GAFgiClCcpf2cvYYPNCHl8SBI6x/fLNH8vVOuk2ETB3drGcF39ZHhmi6?=
 =?us-ascii?Q?9MRPOcWS/JzqMfnZZrJCevnVSa5+Lx1qzcMbdrgxVhmipcN4babc2qD2ALA?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8603.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?44zfv5jahoN0VnMRhGmdqvBoWagOK3OvYRwMmpckPgDRRcnjn+XPDkZe//2r?=
 =?us-ascii?Q?J72JuijQGYQMXg+kJ96q1G9F3GwkQbPSnq8DVojGO+dCjn44zN5kbBCnks5p?=
 =?us-ascii?Q?7+2joslJ7AOpRZo2kTFtczZh2DaIxNdqPwLRjWWM1NaHteErW1dzYAKmTNU6?=
 =?us-ascii?Q?diF2Fr7vzH6P+d1DyHGvdr26uej4wSt+XWfhTvzCNBUPpVO3+P4b5RrmFXHm?=
 =?us-ascii?Q?FJWTlcb4+1ua+peVX0ySU8+rNoEZs2z/mXyy0hs14F+6H1f5B6QyeMUZWQEE?=
 =?us-ascii?Q?gR6Z9vC0Gq/lGtO/iX+qzspAk8egZly5vheKHS+8vA9DMJioIKBhef2Mk80b?=
 =?us-ascii?Q?IMBX7WqEurGFELrQmUGUN9mvigh2wgLGCZ+350tliCF1TdlogAFU+65puP1P?=
 =?us-ascii?Q?lf6Hoar0Hc1LGL0kcEnKFKrRbwdBfEAE+J/LrZbhTH9tGqQOHT0e52/nMH7Z?=
 =?us-ascii?Q?bQGPc0+BiKvQgFuiqLUDgB9lXtQ8rq+1c2RBPA7wQe8Btv2M7LAZ17tNMCcK?=
 =?us-ascii?Q?Uyy7EUwPAZ8uxprwrDm1zka+h0c8ovCp6vTKOin9SI/Dif6rQTKxn4KtDk6z?=
 =?us-ascii?Q?IqvNUHSbh8FWnY9JwT46Zo7CLxnJerRz2irTvFlhn9bwJ3A9bbdX4EXLE36R?=
 =?us-ascii?Q?+djIQnzkL9DClF+8UYhRh3fBoULphMOfw9/9miNIqb1/V0gh8Ka8mTjvditC?=
 =?us-ascii?Q?74u97oXNDcynkZbxINCgTOOhq+vB7sTbOJcVJFOQVMyV7gm/wsTuwsM80fH/?=
 =?us-ascii?Q?6LPBWEOWILYIc11TvTYILIubiGnQqeSvHNy5mcWNC41Loe/Q+tP/uywt1NoF?=
 =?us-ascii?Q?b5d/plF805zT48sqER/aXAy3oIfD5BcAvId/SsdNsieHFt4o4agSiRqn2ZPj?=
 =?us-ascii?Q?DB6DcsMOmfnd84BSjOAQgjZ+lj0/8XHO7QGFOGkfjtmxcUyrBD0p0yMTIFCQ?=
 =?us-ascii?Q?qWWPffnPl+hKSlgt/pYQJSaqWhmvc2IJ/+0axAmWGZGEt2CVkLcG2HkmJ1XT?=
 =?us-ascii?Q?iUdqsDapP/1LFnip+GsWUpv6KWrRI5IMjnv2UOWLxeQ6CNzNcEZ2MqwuNVJx?=
 =?us-ascii?Q?ASftBgWMePRJ7WiE9L3ecs30EaTxIgwHapbqAE3UIyTKzi+HxWKbu/s9INAj?=
 =?us-ascii?Q?VM2K89SP1HJELMxqf+sTyvQBQdrZEATXPgUUj71W+3HHF9DZU0RutdON+n/m?=
 =?us-ascii?Q?bddFoeZNQsShocDk3dET4Im3faObF5mhfLUPGFet9AAGdT9EzOINA0FNCHLA?=
 =?us-ascii?Q?SS5HOCMksKsGbTrOxbVL7l/O5zNGXEexIZSC/hpMsrEIehp9FLsCTfIzbJvU?=
 =?us-ascii?Q?P7fchHasdtKMA3u+mrn3bBSm3lfhtrcxqq8AmKEzCSRbncyi9TpNGizEzSmT?=
 =?us-ascii?Q?+ECHtOTw3yxXKezpR8eu4XHuTz4SijKUElcxLEVwqEAWB0WkF9xOHAXTz0eY?=
 =?us-ascii?Q?5Ioqw5jTntU1upMstEvCkhqFq+3bQYMfd20o/rF59OkoG6YtjqI6Y2Kt++u1?=
 =?us-ascii?Q?1mSTFvNU5xqn0ni4LNFXTzSXFQ+yWpu9oxNjeyzfYB4UqxCqw0yuo6/Awirw?=
 =?us-ascii?Q?SrVABoVOHF0VDWrKjt/+YbchcIPgv5/imchAnFeSgqfikRQUyD+dTS9fXjer?=
 =?us-ascii?Q?aQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 73cf22de-5430-4ba9-6e54-08dcec19c8fe
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8603.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 06:31:07.3632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y6GDzDRt8JzSaSsNYKP8Zp/snJl7poP1s8df2ItUuInTGRA4u9EVQG0qLIITFvxkRsDJ/DUxC7fZmHeMUere7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7484
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

kernel test robot noticed "UBSAN:array-index-out-of-bounds_in_drivers/gpu/drm/i915/i915_drv.h" on:

commit: 3d845c2240623759952e06027546304b127ec1c5 ("[PATCH v1] drm/i915/dg2: enable G8 with a workaround")
url: https://github.com/intel-lab-lkp/linux/commits/Raag-Jadav/drm-i915-dg2-enable-G8-with-a-workaround/20241007-202716
base: git://anongit.freedesktop.org/drm-intel for-linux-next
patch link: https://lore.kernel.org/all/20241007122424.642796-1-raag.jadav@intel.com/
patch subject: [PATCH v1] drm/i915/dg2: enable G8 with a workaround

in testcase: suspend-stress
version: 
with following parameters:

	mode: freeze
	iterations: 10



config: x86_64-rhel-8.3-func
compiler: gcc-12
test machine: 4 threads (Broadwell) with 8G memory

(please refer to attached dmesg/kmsg for entire log/backtrace)



If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <oliver.sang@intel.com>
| Closes: https://lore.kernel.org/oe-lkp/202410141449.699cfd23-oliver.sang@intel.com


kern  :warn  : [   28.439916] ------------[ cut here ]------------
kern  :err   : [   28.440035] UBSAN: array-index-out-of-bounds in drivers/gpu/drm/i915/i915_drv.h:466:28
kern  :err   : [   28.440211] index 58 is out of range for type 'u32 [2]'
kern  :warn  : [   28.440322] CPU: 1 UID: 0 PID: 202 Comm: systemd-udevd Not tainted 6.12.0-rc1-00198-g3d845c224062 #1
kern  :warn  : [   28.440489] Hardware name:  /NUC5i3RYB, BIOS RYBDWi35.86A.0363.2017.0316.1028 03/16/2017
kern  :warn  : [   28.440636] Call Trace:
kern  :warn  : [   28.440703]  <TASK>
kern :warn : [   28.440764] dump_stack_lvl (lib/dump_stack.c:123 (discriminator 1)) 
kern :warn : [   28.440862] __ubsan_handle_out_of_bounds (lib/ubsan.c:232 lib/ubsan.c:429) 
kern :warn : [   28.440977] gt_init_workarounds (drivers/gpu/drm/i915/i915_drv.h:466 drivers/gpu/drm/i915/gt/intel_workarounds.c:1689) i915
kern :warn : [   28.441968] ? __pfx_gt_init_workarounds (drivers/gpu/drm/i915/gt/intel_workarounds.c:1665) i915
kern :warn : [   28.442781] ? fwtable_write32 (drivers/gpu/drm/i915/intel_uncore.c:2012 (discriminator 11)) i915
kern :warn : [   28.443526] intel_gt_init_workarounds (drivers/gpu/drm/i915/gt/intel_workarounds.c:1725) i915
kern :warn : [   28.444297] intel_gt_init (drivers/gpu/drm/i915/gt/intel_gt.c:715) i915
kern :warn : [   28.445032] i915_gem_init (drivers/gpu/drm/i915/i915_gem.c:1191) i915
kern :warn : [   28.445793] i915_driver_probe (drivers/gpu/drm/i915/i915_driver.c:799) i915
kern :warn : [   28.446517] ? __pfx_i915_driver_probe (drivers/gpu/drm/i915/i915_driver.c:751) i915
kern :warn : [   28.447243] ? drm_privacy_screen_get (drivers/gpu/drm/drm_privacy_screen.c:168) drm
kern :warn : [   28.447499] ? intel_display_driver_probe_defer (drivers/gpu/drm/i915/display/intel_display_driver.c:81) i915
kern :warn : [   28.448300] ? i915_pci_probe (drivers/gpu/drm/i915/i915_pci.c:996) i915
kern :warn : [   28.449003] ? __pfx_i915_pci_probe (drivers/gpu/drm/i915/i915_pci.c:957) i915
kern :warn : [   28.449712] local_pci_probe (drivers/pci/pci-driver.c:324) 
kern :warn : [   28.449811] pci_call_probe (drivers/pci/pci-driver.c:392) 
kern :warn : [   28.449905] ? _raw_spin_lock (arch/x86/include/asm/atomic.h:107 include/linux/atomic/atomic-arch-fallback.h:2170 include/linux/atomic/atomic-instrumented.h:1302 include/asm-generic/qspinlock.h:111 include/linux/spinlock.h:187 include/linux/spinlock_api_smp.h:134 kernel/locking/spinlock.c:154) 
kern :warn : [   28.449998] ? __pfx_pci_call_probe (drivers/pci/pci-driver.c:352) 
kern :warn : [   28.450095] ? kernfs_add_one (fs/kernfs/dir.c:819) 
kern :warn : [   28.450190] ? pci_assign_irq (drivers/pci/irq.c:149) 
kern :warn : [   28.450282] ? pci_match_device (drivers/pci/pci-driver.c:159 (discriminator 1)) 
kern :warn : [   28.450379] ? kernfs_put (arch/x86/include/asm/atomic.h:67 (discriminator 1) include/linux/atomic/atomic-arch-fallback.h:2278 (discriminator 1) include/linux/atomic/atomic-instrumented.h:1384 (discriminator 1) fs/kernfs/dir.c:557 (discriminator 1)) 
kern :warn : [   28.450465] pci_device_probe (drivers/pci/pci-driver.c:452) 
kern :warn : [   28.450557] ? pci_dma_configure (drivers/pci/pci-driver.c:1656) 
kern :warn : [   28.450653] really_probe (drivers/base/dd.c:579 drivers/base/dd.c:658) 
kern :warn : [   28.450741] __driver_probe_device (drivers/base/dd.c:738 drivers/base/dd.c:798) 
kern :warn : [   28.450841] driver_probe_device (drivers/base/dd.c:830) 
kern :warn : [   28.450937] __driver_attach (drivers/base/dd.c:1217) 
kern :warn : [   28.451028] ? __pfx___driver_attach (drivers/base/dd.c:1157) 
kern :warn : [   28.451124] bus_for_each_dev (drivers/base/bus.c:369) 
kern :warn : [   28.451217] ? __pfx_bus_for_each_dev (drivers/base/bus.c:358) 
kern :warn : [   28.451318] ? klist_add_tail (include/linux/list.h:150 include/linux/list.h:183 lib/klist.c:104 lib/klist.c:137) 
kern :warn : [   28.451410] bus_add_driver (drivers/base/bus.c:675) 
kern :warn : [   28.451500] driver_register (drivers/base/driver.c:246) 
kern :warn : [   28.451594] i915_init (drivers/gpu/drm/i915/i915_driver.c:1395) i915
kern :warn : [   28.452466] ? __pfx_i915_init (drivers/gpu/drm/i915/i915_config.c:13) i915
kern :warn : [   28.453207] do_one_initcall (init/main.c:1269) 
kern :warn : [   28.453304] ? __pfx_do_one_initcall (init/main.c:1260) 
kern :warn : [   28.453408] ? kasan_unpoison (mm/kasan/shadow.c:157 mm/kasan/shadow.c:151 mm/kasan/shadow.c:182) 
kern :warn : [   28.453499] ? kasan_unpoison (mm/kasan/shadow.c:156 mm/kasan/shadow.c:182) 
kern :warn : [   28.453592] do_init_module (kernel/module/main.c:2543) 
kern :warn : [   28.453687] init_module_from_file (kernel/module/main.c:3198) 
kern :warn : [   28.453787] ? __pfx_init_module_from_file (kernel/module/main.c:3174) 
kern :warn : [   28.453895] ? __pfx_userfaultfd_unmap_complete (fs/userfaultfd.c:810) 
kern :warn : [   28.454012] ? __pfx__raw_spin_lock (kernel/locking/spinlock.c:153) 
kern :warn : [   28.454112] idempotent_init_module (kernel/module/main.c:3210) 
kern :warn : [   28.454214] ? __pfx_idempotent_init_module (kernel/module/main.c:3202) 
kern :warn : [   28.454321] ? __pfx___seccomp_filter (kernel/seccomp.c:1218) 
kern :warn : [   28.454424] ? fdget (include/linux/atomic/atomic-arch-fallback.h:479 include/linux/atomic/atomic-instrumented.h:50 fs/file.c:1141 fs/file.c:1155) 
kern :warn : [   28.454504] ? security_capable (security/security.c:1142) 
kern :warn : [   28.454599] __x64_sys_finit_module (include/linux/file.h:68 kernel/module/main.c:3238 kernel/module/main.c:3220 kernel/module/main.c:3220) 
kern :warn : [   28.454698] do_syscall_64 (arch/x86/entry/common.c:52 arch/x86/entry/common.c:83) 
kern :warn : [   28.454790] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:130) 
kern  :warn  : [   28.454900] RIP: 0033:0x7efbffb92229
kern :warn : [ 28.454984] Code: 00 f3 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 3f 4c 2b 00 f7 d8 64 89 01 48
All code
========
   0:	00 f3                	add    %dh,%bl
   2:	c3                   	retq   
   3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
   a:	00 00 00 
   d:	0f 1f 40 00          	nopl   0x0(%rax)
  11:	48 89 f8             	mov    %rdi,%rax
  14:	48 89 f7             	mov    %rsi,%rdi
  17:	48 89 d6             	mov    %rdx,%rsi
  1a:	48 89 ca             	mov    %rcx,%rdx
  1d:	4d 89 c2             	mov    %r8,%r10
  20:	4d 89 c8             	mov    %r9,%r8
  23:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
  28:	0f 05                	syscall 
  2a:*	48 3d 01 f0 ff ff    	cmp    $0xfffffffffffff001,%rax		<-- trapping instruction
  30:	73 01                	jae    0x33
  32:	c3                   	retq   
  33:	48 8b 0d 3f 4c 2b 00 	mov    0x2b4c3f(%rip),%rcx        # 0x2b4c79
  3a:	f7 d8                	neg    %eax
  3c:	64 89 01             	mov    %eax,%fs:(%rcx)
  3f:	48                   	rex.W

Code starting with the faulting instruction
===========================================
   0:	48 3d 01 f0 ff ff    	cmp    $0xfffffffffffff001,%rax
   6:	73 01                	jae    0x9
   8:	c3                   	retq   
   9:	48 8b 0d 3f 4c 2b 00 	mov    0x2b4c3f(%rip),%rcx        # 0x2b4c4f
  10:	f7 d8                	neg    %eax
  12:	64 89 01             	mov    %eax,%fs:(%rcx)
  15:	48                   	rex.W
kern  :warn  : [   28.455283] RSP: 002b:00007ffe0d7f9428 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
kern  :warn  : [   28.455429] RAX: ffffffffffffffda RBX: 000055b5a7168b10 RCX: 00007efbffb92229
kern  :warn  : [   28.455562] RDX: 0000000000000000 RSI: 00007efc004ab265 RDI: 0000000000000014
kern  :warn  : [   28.455695] RBP: 00007efc004ab265 R08: 0000000000000000 R09: 00007ffe0d7f99a0
kern  :warn  : [   28.455826] R10: 0000000000000014 R11: 0000000000000246 R12: 0000000000000000
kern  :warn  : [   28.455959] R13: 000055b5a7170fe0 R14: 0000000000020000 R15: 000055b575213cbc
kern  :warn  : [   28.456095]  </TASK>
kern  :warn  : [   28.456422] ---[ end trace ]---


The kernel config and materials to reproduce are available at:
https://download.01.org/0day-ci/archive/20241014/202410141449.699cfd23-oliver.sang@intel.com



-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

