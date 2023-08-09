Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB91C776C2A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 00:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E6B10E009;
	Wed,  9 Aug 2023 22:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D01C10E009
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 22:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691620064; x=1723156064;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=at4PsJ3agH69qOIbuI5GHekANr/ZvXM8OIh+w4FFCYU=;
 b=TFa/Oqkz+b2E8N8/bwGYxENSa2tJTieKFyA/MpXwX730fnCXhfxbrjyi
 PmqSOQjTPKlE4OY7toN5JYT7wYseiOjxCjeimhEQDQfW+WbeO1ZbAEIVZ
 hH/0mIv3I7jd8xw2vOAVcgzPa/V0pI6UY90yXcwCzTPzwhse/HAWb46Ie
 oZDxUe8MP1WYPh4hB2FilqJ9z+hT97S6oSjCxgYixcRnFvEaJmmL0vYQo
 OvWIOWe+XTMjfRfB6fDEs3YiW+2b8tnKCFZSqDydTxAzOigohSIzuXjwf
 hf1W6HfvZW2KD1q/I5IRnwabRwQEswTPqnc1uPh+VZ8N5DoRej7kUwaw8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="374028406"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="374028406"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 15:27:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="978563844"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="978563844"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 09 Aug 2023 15:27:43 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 9 Aug 2023 15:27:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 9 Aug 2023 15:27:43 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 9 Aug 2023 15:27:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FaDl4RqRIetxrNlZuyGftpK7tavji0+ny2H5mv0xEeVSYtvbcUXkAJqcoM4Sl8HzUK8TUEm8FdaWPJIRGkFkuf1Kr43tCQm8Nc0SFzHowJcDJ6chyJgzrc2R3tQPfhZkUIlQ/3A0IeggXeJxFxw0f4GAS3yKu8pPfmbZ67Bcgc9lqoQMgMI+RlzMVxTMsBBvZDBqfkauIgsVG8JtdDIMEHNYy6nr5fHWrCHfIWawnNccIMhcqAwNYNgoay3Hg2gKCaLG5pHGDkmrUOEt8dxDTzldc6VXUwQsNA3oFl9PBZ8KnLb3ihvlpJly1IPs06tXqELp0mHG7Vx++ClxB+ZOkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xW7bsphqMwEfErOg28urxJHumjQqXl85rlizJ/Pgo2o=;
 b=DN5E9GFe+4ffFlHh4HHulHEWV1CdGTe+GfpLvLLsvfsbRpgVL6iqbL5vNXJwVFX4T8CaINlpiE0KilO2X9lOzYZskaajO1jrX0ez9mOIsM7JX7nzf+1JLGbEp/BiNiWxt1mMyvZyY1Rmwm4knDroPPUbBUNJyR//dHrQEBCyKxU5iuYJW5H6h3vCCp2hR7Ff97p0ccyREl5/c+/nDGAWVL2OKOJK2xpyuYIf6SXG2w1P2JdAE6sT2zVuuo0VcCwQKdoU2AyV4bgjZ9J5wX97wd7LCahYyC5qhEJVm0TJ1hDFWSEJ8K3HWe+27bBzxo5JfzBDOGkT3+Eg25IEg4kfFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Wed, 9 Aug
 2023 22:27:41 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6652.029; Wed, 9 Aug 2023
 22:27:41 +0000
Date: Wed, 9 Aug 2023 15:27:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230809222738.GN138014@mdroper-desk1.amr.corp.intel.com>
References: <20230804084600.1005818-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230804084600.1005818-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0177.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: d111bfde-9a3e-4b2e-6548-08db9927d802
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0wnusTDna1YUkkm7IpeBofwOIKpZnFG/8Zbccr/yrjCvV0T3vMPhnPGWEE1yl5PVTbxhJSyxsfiC9Dila9CL4aeMP1uHK2SvIISSZd3yy+e26Ywmwu1JMmvNfUI4tgqRr0gW2VFXZNYIUKAF7rtV/SbWBhxwio57yg+vs1ya0Tg9yBveuUh5Pe3n9IRN12RXiRV6ks4k0qyx21TbCoBbe7U5iQdAfgMid+07a3n5Bx7PrVrHKAqQfB9oxJzTMcmKcv8ydF3qy2Yi/OUslDvhx/2bNsDNInC5PeUHWGcn9ZfBU6ZC3OAjKvgTzu1Wbo/93fLtZZGc2LQaW1i/eP2c+HDALqeW0XKFk5xqdOCN+snrXawuUBL5NyitSONbLfpaTZa1U5ojOwZ+eCvkzyk8J5Zd5DMJIgR0ovDuL7dx6r61YvNzGu86KIg3GvwpwsUVq8gJC5fH6Gj0Ahv641Y6snbvtClr7h5rTXS71RSXl+9qfJrFIzSH7+0joz+njLbmZbR6KBBYtB9O9XpinJ1H1e954ax9S7YwpxVKOZF8w7I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(39860400002)(366004)(346002)(376002)(451199021)(186006)(1800799006)(8676002)(6862004)(8936002)(478600001)(5660300002)(41300700001)(66899021)(4326008)(316002)(66946007)(66556008)(38100700002)(66476007)(86362001)(6512007)(2906002)(1076003)(6506007)(6636002)(33656002)(82960400001)(45080400002)(83380400001)(966005)(6486002)(6666004)(26005)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YIPsoS2lVbRe0jl+lhiT1S/RsZCyvo5N/dVlscIA9+igEymFCrh9UqjqhysF?=
 =?us-ascii?Q?wqsQWUhUgHAYyXMIBIH/nVfDAibgnt9usG6WgmNWUQjU9WDhgcTUgVW09xGn?=
 =?us-ascii?Q?PpXhKRS5q432OTdAD7cEIcaS+d42GqKMCE7Dspz8VbDJMxzkZQaHEWLjn4fr?=
 =?us-ascii?Q?zsXjj3ot8BR1Hx+QVrBXwo9mDGFouf3Rt0RoG0kAV63nIJgkkpFt0iyMHsAH?=
 =?us-ascii?Q?X8icGMFDLdJxoaEo78nnA9lwHytQFJm38SKK9B7iZjsDQADT4LI90KGipWYF?=
 =?us-ascii?Q?n06fWt+nR5MqYqy4h7NZmnOdvRnK3cBtaH6WhldCAnSYquutYBw4neNUaKQq?=
 =?us-ascii?Q?E+cluwdYIFAPVB8SIOb1R2dn0/GscuD/rrhfUQeCKptySOEqJRn3KDETpO7h?=
 =?us-ascii?Q?YlABRUUqsUf9bNEbeUmq4dhfIG492NMVZxpM6Q5NQ5w/iaFbyZqjnvO5m+om?=
 =?us-ascii?Q?4hJdbC6d5zIkGX476rxVvixfxZMwtne8dhWciCbGQrlo03A8Z4cIjyWj4FP6?=
 =?us-ascii?Q?qtYuYaX8RGSCriaMsE+ilwGFy0xoz1gi8XHGmLzo02JB7UFXt4fXJTQMuYxY?=
 =?us-ascii?Q?XkwAFueiW1kvZPq4AUstFIsvRZprWARn4Q0oCtpukrUhdcOmM0cH6vnG+Fa8?=
 =?us-ascii?Q?rJGe0rR1w2XdODNvybdbYNPe76LsHlpkyO7N2RZqa/LHsA+Z8Y0R8lMUuG5m?=
 =?us-ascii?Q?q0roqDR8R1ci+3SePL8agN9wa7jJ5cBralAH1D3kUwcskexi7V2oIi38xlzj?=
 =?us-ascii?Q?atoeoCu70BkyZg8lnBZNs7uWkb4VeenqF0sD7oLu5ULqQ54inYX0+mqHR8MY?=
 =?us-ascii?Q?PLjREZHza7G3RSFA5GGGcELrTHe/57W5UKHWm48RUgaMLG8NT+At++r1Qomb?=
 =?us-ascii?Q?pyAzdxYzcp2YFlB0X1Cht0lx6jPQvB5ha+JkVlYgkwQ/MuTv4FQxfrTprbz6?=
 =?us-ascii?Q?nFwGrrlxaqPe/v0gnbTJvTgizk3/EoWMJAyuUMReUwItXvk2cDyLYsmwlG+s?=
 =?us-ascii?Q?Tw9BjsQ3tWPRFDAHUaYHcPK6hJEesYLZyZ4xlodbV1DU3XNDVqjM6AFOlttd?=
 =?us-ascii?Q?F1jWm4KhVqzu2mAM/1B5H8Zie3Sgc9pA53JGyMhipohfxgZvYBKIwkuG4BO1?=
 =?us-ascii?Q?GG0r9+y2zJh0oDtmXpHhfQe+/Dq0Sh0XHAThOEuE3GuiXGqNezU76/qs0hZc?=
 =?us-ascii?Q?ZJPYmtIiFm8bh5Jw86ELohYOvurgmcaytieRFLseN37H+EbD0+VsJdyqQZ2K?=
 =?us-ascii?Q?GZVoBgK5EczvSbZdb9bhjZugSrIGpuwX1pPPW/EHsoWdUmwvNU80gQ/rnt6Z?=
 =?us-ascii?Q?/w1x3LV1TZSMVHr8fUptBaA1S1clniJh3HsefImD6R4qJ0dvAU6vMi/C2+1Q?=
 =?us-ascii?Q?i5yv3KBsCHdLJpiz8dsx6F9WH1arnlofYWAObZejg8B5Ri1qGmczKJKvU1hF?=
 =?us-ascii?Q?wzXmLrtrDmv9b+BE6U0RPmkPIiWY17IG17cag8kbXMVvuIjT+EdPBXAsdKrm?=
 =?us-ascii?Q?dzQXQxv15atcpEhASYWxc69GOxq/hxDeu6hNZxxXjy4NP9x+0Kx9v8qHI4Li?=
 =?us-ascii?Q?zD/8rFmpKuuZxgwoG7bMs0z5YrYSMOk9ZJDUTVKfvxySyMeSqNc9VEt/vAVr?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d111bfde-9a3e-4b2e-6548-08db9927d802
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Aug 2023 22:27:41.2193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Kpz3za6wRuFM6ofVsgYC9hvUPUPAVnEIt99YrMyITOtKMY3Mgo/S+PgdbrmnG0vZUL2sou7Gof3EHG5i9pQ+2IZt2z6RGwT8qMkfx8qi+C0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: fix display probe for IVB Q
 and IVB D GT2 server
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 04, 2023 at 11:45:59AM +0300, Jani Nikula wrote:
> The current display probe is unable to differentiate between IVB Q and
> IVB D GT2 server, as they both have the same device id, but different
> subvendor and subdevice. This leads to the latter being misidentified as
> the former, and should just end up not having a display. However, the no
> display case returns a NULL as the display device info, and promptly
> oopses.
> 
> As the IVB Q case is rare, and we're anyway moving towards GMD ID,
> handle the identification requiring subvendor and subdevice as a special
> case first, instead of unnecessarily growing the intel_display_ids[]
> array with subvendor and subdevice.
> 
> [    5.425298] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [    5.426059] #PF: supervisor read access in kernel mode
> [    5.426810] #PF: error_code(0x0000) - not-present page
> [    5.427570] PGD 0 P4D 0
> [    5.428285] Oops: 0000 [#1] PREEMPT SMP PTI
> [    5.429035] CPU: 0 PID: 137 Comm: (udev-worker) Not tainted 6.4.0-1-amd64 #1  Debian 6.4.4-1
> [    5.429759] Hardware name: HP HP Z220 SFF Workstation/HP Z220 SFF Workstation, BIOS 4.19-218-gb184e6e0a1 02/02/2023
> [    5.430485] RIP: 0010:intel_device_info_driver_create+0xf1/0x120 [i915]
> [    5.431338] Code: 48 8b 97 80 1b 00 00 89 8f c0 1b 00 00 48 89 b7 b0 1b 00 00 48 89 97 b8 1b 00 00 0f b7 fd e8 76 e8 14 00 48 89 83 50 1b 00 00 <48> 8b 08 48 89 8b c4 1b 00 00 48 8b 48 08 48 89 8b cc 1b 00 00 8b
> [    5.432920] RSP: 0018:ffffb8254044fb98 EFLAGS: 00010206
> [    5.433707] RAX: 0000000000000000 RBX: ffff923076e80000 RCX: 0000000000000000
> [    5.434494] RDX: 0000000000000260 RSI: 0000000100001000 RDI: 000000000000016a
> [    5.435277] RBP: 000000000000016a R08: ffffb8254044fb00 R09: 0000000000000000
> [    5.436055] R10: ffff922d02761de8 R11: 00657361656c6572 R12: ffffffffc0e5d140
> [    5.436867] R13: ffff922d00b720d0 R14: 0000000076e80000 R15: ffff923078c0cae8
> [    5.437646] FS:  00007febd19a18c0(0000) GS:ffff92307c000000(0000) knlGS:0000000000000000
> [    5.438434] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    5.439218] CR2: 0000000000000000 CR3: 000000010256e002 CR4: 00000000001706f0
> [    5.440009] Call Trace:
> [    5.440824]  <TASK>
> [    5.441611]  ? __die+0x23/0x70
> [    5.442394]  ? page_fault_oops+0x17d/0x4c0
> [    5.443173]  ? exc_page_fault+0x7f/0x180
> [    5.443949]  ? asm_exc_page_fault+0x26/0x30
> [    5.444756]  ? intel_device_info_driver_create+0xf1/0x120 [i915]
> [    5.445652]  ? intel_device_info_driver_create+0xea/0x120 [i915]
> [    5.446545]  i915_driver_probe+0x7f/0xb60 [i915]
> [    5.447431]  ? drm_privacy_screen_get+0x15c/0x1a0 [drm]
> [    5.448240]  local_pci_probe+0x45/0xa0
> [    5.449013]  pci_device_probe+0xc7/0x240
> [    5.449748]  really_probe+0x19e/0x3e0
> [    5.450464]  ? __pfx___driver_attach+0x10/0x10
> [    5.451172]  __driver_probe_device+0x78/0x160
> [    5.451870]  driver_probe_device+0x1f/0x90
> [    5.452601]  __driver_attach+0xd2/0x1c0
> [    5.453293]  bus_for_each_dev+0x88/0xd0
> [    5.453989]  bus_add_driver+0x116/0x220
> [    5.454672]  driver_register+0x59/0x100
> [    5.455336]  i915_init+0x25/0xc0 [i915]
> [    5.456104]  ? __pfx_i915_init+0x10/0x10 [i915]
> [    5.456882]  do_one_initcall+0x5d/0x240
> [    5.457511]  do_init_module+0x60/0x250
> [    5.458126]  __do_sys_finit_module+0xac/0x120
> [    5.458721]  do_syscall_64+0x60/0xc0
> [    5.459314]  ? syscall_exit_to_user_mode+0x1b/0x40
> [    5.459897]  ? do_syscall_64+0x6c/0xc0
> [    5.460510]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> [    5.461082] RIP: 0033:0x7febd20b0eb9
> [    5.461648] Code: 08 89 e8 5b 5d c3 66 2e 0f 1f 84 00 00 00 00 00 90 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 2f 1f 0d 00 f7 d8 64 89 01 48
> [    5.462905] RSP: 002b:00007fffabb1ba78 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
> [    5.463554] RAX: ffffffffffffffda RBX: 0000561e6304f410 RCX: 00007febd20b0eb9
> [    5.464201] RDX: 0000000000000000 RSI: 00007febd2244f0d RDI: 0000000000000015
> [    5.464869] RBP: 00007febd2244f0d R08: 0000000000000000 R09: 000000000000000a
> [    5.465512] R10: 0000000000000015 R11: 0000000000000246 R12: 0000000000020000
> [    5.466124] R13: 0000000000000000 R14: 0000561e63032b60 R15: 000000000000000a
> [    5.466700]  </TASK>
> [    5.467271] Modules linked in: i915(+) drm_buddy video crc32_pclmul sr_mod hid_generic wmi crc32c_intel i2c_algo_bit sd_mod cdrom drm_display_helper cec usbhid rc_core ghash_clmulni_intel hid sha512_ssse3 ttm sha512_generic xhci_pci ehci_pci xhci_hcd ehci_hcd nvme ahci drm_kms_helper nvme_core libahci t10_pi libata psmouse aesni_intel scsi_mod crypto_simd i2c_i801 scsi_common crc64_rocksoft_generic cryptd i2c_smbus drm lpc_ich crc64_rocksoft crc_t10dif e1000e usbcore crct10dif_generic usb_common crct10dif_pclmul crc64 crct10dif_common button
> [    5.469750] CR2: 0000000000000000
> [    5.470364] ---[ end trace 0000000000000000 ]---
> [    5.470971] RIP: 0010:intel_device_info_driver_create+0xf1/0x120 [i915]
> [    5.471699] Code: 48 8b 97 80 1b 00 00 89 8f c0 1b 00 00 48 89 b7 b0 1b 00 00 48 89 97 b8 1b 00 00 0f b7 fd e8 76 e8 14 00 48 89 83 50 1b 00 00 <48> 8b 08 48 89 8b c4 1b 00 00 48 8b 48 08 48 89 8b cc 1b 00 00 8b
> [    5.473034] RSP: 0018:ffffb8254044fb98 EFLAGS: 00010206
> [    5.473698] RAX: 0000000000000000 RBX: ffff923076e80000 RCX: 0000000000000000
> [    5.474371] RDX: 0000000000000260 RSI: 0000000100001000 RDI: 000000000000016a
> [    5.475045] RBP: 000000000000016a R08: ffffb8254044fb00 R09: 0000000000000000
> [    5.475725] R10: ffff922d02761de8 R11: 00657361656c6572 R12: ffffffffc0e5d140
> [    5.476405] R13: ffff922d00b720d0 R14: 0000000076e80000 R15: ffff923078c0cae8
> [    5.477124] FS:  00007febd19a18c0(0000) GS:ffff92307c000000(0000) knlGS:0000000000000000
> [    5.477811] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    5.478499] CR2: 0000000000000000 CR3: 000000010256e002 CR4: 00000000001706f0
> 
> Fixes: 69d439818fe5 ("drm/i915/display: Make display responsible for probing its own IP")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8991
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   | 24 ++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 8286e79522d1..3d6a262e037f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -724,10 +724,24 @@ static const struct intel_display_device_info xe_lpdp_display = {
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  };
>  
> +/*
> + * Separate detection for no display cases to keep the display id array simple.
> + *
> + * IVB Q requires subvendor and subdevice matching to differentiate from IVB D
> + * GT2 server.
> + */
> +static bool has_no_display(struct pci_dev *pdev)
> +{
> +	static const struct pci_device_id ids[] = {
> +		INTEL_IVB_Q_IDS(0),
> +		{}
> +	};
> +
> +	return pci_match_id(ids, pdev);
> +}
> +
>  #undef INTEL_VGA_DEVICE
> -#undef INTEL_QUANTA_VGA_DEVICE
>  #define INTEL_VGA_DEVICE(id, info) { id, info }
> -#define INTEL_QUANTA_VGA_DEVICE(info) { 0x16a, info }
>  
>  static const struct {
>  	u32 devid;
> @@ -752,7 +766,6 @@ static const struct {
>  	INTEL_IRONLAKE_M_IDS(&ilk_m_display),
>  	INTEL_SNB_D_IDS(&snb_display),
>  	INTEL_SNB_M_IDS(&snb_display),
> -	INTEL_IVB_Q_IDS(NULL),		/* must be first IVB in list */
>  	INTEL_IVB_M_IDS(&ivb_display),
>  	INTEL_IVB_D_IDS(&ivb_display),
>  	INTEL_HSW_IDS(&hsw_display),
> @@ -837,6 +850,11 @@ intel_display_device_probe(struct drm_i915_private *i915, bool has_gmdid,
>  	if (has_gmdid)
>  		return probe_gmdid_display(i915, gmdid_ver, gmdid_rel, gmdid_step);
>  
> +	if (has_no_display(pdev)) {
> +		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
> +		return &no_display;
> +	}
> +
>  	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
>  		if (intel_display_ids[i].devid == pdev->device)
>  			return intel_display_ids[i].info;
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
