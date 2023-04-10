Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4326DC9E6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 19:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16A6B10E189;
	Mon, 10 Apr 2023 17:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8FA10E189;
 Mon, 10 Apr 2023 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681147266; x=1712683266;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=cd86ep7R6R4rFaOxxpVd2UlLo9E7/t5jtj+rBibwPbc=;
 b=Az8KFBsOL6I4xBVoimXufnEzQNR5APRfZMFxX6CJE41iWxZRxaoSBj+r
 XWTsdIXEwAuXajgTmXKdtdjh3B2qeHnLBS1BumrUyryqYFQjFhqz0zL58
 36GXx+KjsjpsOeoubh+SGpAm6xy4w5V/vNYnmmA+DBt0MawGyGpkOhyzn
 91OUUnz3qnMwn8AbNtyHCrg+RbRT8wYBHOxELe5ZF21kgCH9qoJNWGz3E
 r5o9j7wSKj3GcumR9HaH+mmTP9k5YtN4X8SAQC6wF4kEUd6V9iYe4RgI+
 cXRJTAcCj3W4Ldr8P4liK1o/ls6TgLACgXYxxSvuDNfbJn2aswkdKHYGH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="323770270"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="323770270"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 10:21:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="720903750"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="720903750"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 10 Apr 2023 10:21:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 10 Apr 2023 10:21:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 10 Apr 2023 10:21:05 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 10 Apr 2023 10:21:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BFMVDuD4wdZpDMgtol8OImwAHzg1h1iJPsy8+NHW97kvAC6S+l03SWKL18N1C5JYcCO87HItlNsGPFDIiGfFOW6o8ZkKutFoK8LMW1E27pDFiKV4gElUvnyVnJ0dFDSHCdOiT2cf3f3Qk1LIiXPr0qows+YlhxUaKSzMh19Nw/H9zMHbOKfPmHrIg7PiY5Y14X0gPW+Igwqlh9QMTVb1CCuj3G9zBzXauZXbDQTRqm0/PskQ+dImfdAYc4JXTlHp/Cpi+SXz45seYUjbnn3RUbkUAyEn1rIaFQsbDJQdD474cWuqknRBShSJWPCKsFQsH7Hj9U0653clFSyafKV+4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x0FKMaZxrpSZqVmzK8vCzfw9fp0vATYFBIopVqk9h7Q=;
 b=csO/tUmBxReIzuT+TlH5cG6+7j3cBYE1hJxTTmCH+Z5i7ZPYGcrfbjQBffKmlwNqeK51lB8P/8FP9h15sNIole6+De1cY01xfQJscGmv0K3wV0BmCckd54wO3h0iGyS3LtXbInglIn3da7A9m9wNAwjrEZom2bh2qEV7ME1tLCwvWiglP6VHK9w4X4TrAmd/A/pAunLOM1QzRf6wNMvdx9SPm0r1XpkT0ksp8qEl0sfJLxiSR7bwER9dHtNG0DXpnXmw78QSoaOTvYCDH02+zbiTEIOlYF6tagf3tM20yJYpd1mkV4YlPvJS15ERf41tMJUUcaxXVNVbdclbnu7xaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA2PR11MB5130.namprd11.prod.outlook.com (2603:10b6:806:11d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 10 Apr
 2023 17:21:03 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6277.036; Mon, 10 Apr 2023
 17:21:03 +0000
Date: Mon, 10 Apr 2023 13:20:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <ZDRFe+/F6PZmFWMN@intel.com>
References: <20230406143133.29474-1-jose.souza@intel.com>
 <20230406143133.29474-2-jose.souza@intel.com>
 <ZDQsYi1aR2QZjEw5@intel.com>
 <9b908fa41b9a50ed89c0a635f412201c37bfa4f8.camel@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9b908fa41b9a50ed89c0a635f412201c37bfa4f8.camel@intel.com>
X-ClientProxiedBy: SJ0PR13CA0055.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA2PR11MB5130:EE_
X-MS-Office365-Filtering-Correlation-Id: d4657429-6229-4a0f-e0e1-08db39e7f606
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5Ylk1uoa0pXZAvZrSr4yyYS/lz+3yr8rCnoD9TD0PY3rHvDY9IZ06ItuKXRVcaiSyQ28LVsaV018c4KtmWNgYxl7suivatqyfZC8ftgVBhvRLtwJrGpzvvwWHkdXb0gwlcifrzHU6+ZebE3t/7LPQXeHkRD9cNopFLxEtH7xjWVj55WqtYsM0SEYbwJqqG9oGu1SDjAjPXpI8WRH/cPtsWzqCyb57pZgwyXVg7jtJD7M6BJdWhQT6ZKUtg8cws8KlYmg8qQ1jy4roslTwT1J6e57lP+0dfZ/kCMwp3CNH/x//xT6loZXHwbTI0UsYlJkgX6KqKVuYWFeD72VgKLfX7Bk+OasaW+4q2BboG28fzTOtTey0jk517RESWaz+Ss3Jq4MxhExY8jA6wt74Z3dqmdKhWNfz+0+g5faVRpM3cgut7y7R0qDb7ESajk2QzZI00TOZzxG8gXf9JHa2x2vNIcdeHyP2tkzu+9tUjyQvn1JzPEH2F4Mqdn88gMMpmg8GtHGpUFOnOOBi442HJpG1tXg3qxzy2CTKgRA6biRNgLOJWkXPOIr542zot4R/FKZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199021)(478600001)(316002)(6636002)(37006003)(6512007)(26005)(44832011)(6506007)(186003)(54906003)(6486002)(6666004)(450100002)(2906002)(5660300002)(4326008)(66946007)(8936002)(8676002)(6862004)(41300700001)(66476007)(66556008)(38100700002)(86362001)(36756003)(83380400001)(82960400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?I9CUw8T+zlbGJddGtbV89yMuDY8lFpMDIi1M3r7JACc35SMYkKFSsL+cj/?=
 =?iso-8859-1?Q?EtvhbzhyTWNxa+i4j1t57i7ab/OahS43L2e/IZiX2Zp3E07WamFdMQue2n?=
 =?iso-8859-1?Q?go+mgUXAQ9Z0YYhMr0AbfgZ0GphbJetq3MF/BUCG8mjyR4iYBdH24pnUG5?=
 =?iso-8859-1?Q?oGoEr2rNp3gcPvwMNYeV/peow7kRHMuFeEmHTTltNFzeCt/gcUmDIWRZS3?=
 =?iso-8859-1?Q?0a7MVWwvCB3m3Lfsyr/l6Bit2tECk1C2Fyzy5Guv5nLOd0Wl12S8uYETUI?=
 =?iso-8859-1?Q?neNccddkYjmn7/7sOsiH402FYu9VjMbx0tgIoD2vKxPLTSMpaeihuDLWya?=
 =?iso-8859-1?Q?emtva/5I2xbMEPvzKqVJwQ89uHhjsJpGY8HpMK8ukF1htCUvI9MPWKlku2?=
 =?iso-8859-1?Q?HKDZVlEmAuKqZq9dkdIoXtVEMg91YcNZC56kik2nai63PdIAxK88y3UlgS?=
 =?iso-8859-1?Q?CIyVIexjRxvkG2Mfo5s3G1S0jcSsCvNq010EWaz9H9DyGsOSK84sbzwdHI?=
 =?iso-8859-1?Q?7rMtx2owcsZHDwM/WTF1BS1AlruLm9rBNVcWOK7XWImaFNKh6WgjXhJxlP?=
 =?iso-8859-1?Q?MKdSHRURz/ccDC52lijilb68L4pj7NO3YfWAg56wZ33mXX5KDu8XNkirjW?=
 =?iso-8859-1?Q?SwiQzaUxx6Tr7QkQHlvP2Z+3zzIJ6Af7wuJ0ikYEGSpd3b0YAtB+E1ZKUe?=
 =?iso-8859-1?Q?2H08LlItkGB5mxL1TguBBrsguEgYOn6d1Z21DWk7AsUEd7XXsa6Mc+8eHs?=
 =?iso-8859-1?Q?3gc1AOG8LnEQz4C9JmOmJgybb6YTvhVesM3+jrQgBu75vgMNO87IvH/iA/?=
 =?iso-8859-1?Q?R70PG5fMi7WYcQvDJ6Yl9HapDTkk2qx23qAcofGbHXxPJwYMWQMm5l5/RD?=
 =?iso-8859-1?Q?EWOU6OOYgSpC+JwV63wOWpi0QoW0sJvDWLbxu8++NXqQkndSXYPFNFeD9Z?=
 =?iso-8859-1?Q?5EUCJ9JYh75e8JY9ZLS97X+Iko+IuDSAWWJx/o6+KpGk1/HxD9Zrmw9fEC?=
 =?iso-8859-1?Q?BBUwFpcmL07fr3BmH2dJZK7uPcvppawvV03Yc9b9shtfmZzbrBLjDNn2V+?=
 =?iso-8859-1?Q?YZIOb/ZeZn2a+R24GYqDmWNwDwiYBzpAXbh5cpzcyEYWYTqUcXAzt5rc60?=
 =?iso-8859-1?Q?6R/KV4qZCOXK61NbFOnoIB749ghNlR/5XrDx/pSFZZ+OtugTiAXBZQQVdF?=
 =?iso-8859-1?Q?V5syVxjEAGR97UQhmFzbXLk7zxkL01UG5VF7njWFMwgZGfkb0xuFHIMtmX?=
 =?iso-8859-1?Q?s/8r1m7w7mUmWX9Or7Qx08tU1KfjqOkCzJcBRwyHVgl/i5B4GqHcV4r72w?=
 =?iso-8859-1?Q?1T2fA9/OANw9KgQYRqMaIPrZpHKseGgOfBZlwioqjn8mTvyyCZVh3jVJbj?=
 =?iso-8859-1?Q?/w0VXW8DUFC8JwUamRJEHkVHJoZnZXyXSwZz6pqVHdbVAIGColYSWlgiiG?=
 =?iso-8859-1?Q?yLMsboBCL9WpyeZptPDKhgdXMYesA+Nfv0iV1yhp+r7Z56uske2uu7V0dy?=
 =?iso-8859-1?Q?7aflmxlK6EnSI8AQoWbYlgRsmZ+TNW2IXFtcmCskBR86nPGwnQQr7ttKes?=
 =?iso-8859-1?Q?71ZBkV3dJcBAz/kS3JC1G5EjQrB3Z4pZI3Kg3z9xQJkfbZxytducAF6RXQ?=
 =?iso-8859-1?Q?Ya5DYG/4JTR71nXS8YZgM01AWtqeE5l0+1QJLb2zQZBtGkAzxei75vrg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4657429-6229-4a0f-e0e1-08db39e7f606
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2023 17:21:03.3834 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0iImUgs7H7ddaeoxzbcGxl3FYnKzWTBaPqpkJOiZsczCvnSgOGrSwh2KA+O72nt6mHsl6AJWd0A/FF39x8lFmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5130
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 rebased 2/6] drm/i915:
 Initialize dkl_phy spin lock from display code path
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 10, 2023 at 05:07:57PM +0000, Souza, Jose wrote:
> On Mon, 2023-04-10 at 11:33 -0400, Rodrigo Vivi wrote:
> > On Thu, Apr 06, 2023 at 07:31:29AM -0700, José Roberto de Souza wrote:
> > > Start to move the initialization of some lock from
> > > i915_driver_early_probe().
> > > This will also fix a warning in Xe kmd:
> > > 
> > > [  201.894839] xe 0000:00:02.0: [drm] [ENCODER:235:DDI A/PHY A] failed to retrieve link info, disabling eDP
> > > [  202.136336] xe 0000:00:02.0: [drm] *ERROR* Failed to write source OUI
> > > [  202.175346] INFO: trying to register non-static key.
> > > [  202.175347] irq event stamp: 754060
> > > [  202.175359] hardirqs last  enabled at (754059): [<ffffffff8122cf79>] tick_nohz_idle_enter+0x59/0x80
> > > [  202.180294] The code is fine but needs lockdep annotation, or maybe
> > > [  202.183774] hardirqs last disabled at (754060): [<ffffffff811a5539>] do_idle+0x99/0x230
> > > [  202.192734] you didn't initialize this object before use?
> > > [  202.198951] softirqs last  enabled at (753948): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
> > > [  202.206882] turning off the locking correctness validator.
> > > [  202.212236] softirqs last disabled at (753943): [<ffffffff8114abae>] irq_exit_rcu+0xbe/0x130
> > > [  202.220592] CPU: 2 PID: 1415 Comm: modprobe Tainted: G        W          6.3.0-rc4+zeh-xe+ #909
> > > [  202.243002] Hardware name: Intel Corporation Raptor Lake Client Platform/RaptorLake-P LP5 RVP, BIOS RPLPFWI1.R00.3361.A14.2211151548 11/15/2022
> > > [  202.255737] Call Trace:
> > > [  202.258179]  <TASK>
> > > [  202.260275]  dump_stack_lvl+0x58/0xc0
> > > [  202.263922]  register_lock_class+0x756/0x7d0
> > > [  202.268165]  ? find_held_lock+0x2b/0x80
> > > [  202.271975]  __lock_acquire+0x72/0x28b0
> > > [  202.275786]  ? debug_object_free+0xb4/0x160
> > > [  202.279946]  lock_acquire+0xd1/0x2d0
> > > [  202.283503]  ? intel_dkl_phy_read+0x18/0x60 [xe]
> > > [  202.288181]  _raw_spin_lock+0x2a/0x40
> > > [  202.291825]  ? intel_dkl_phy_read+0x18/0x60 [xe]
> > > [  202.296475]  intel_dkl_phy_read+0x18/0x60 [xe]
> > > [  202.300949]  icl_aux_power_well_enable+0x2bd/0x400 [xe]
> > > [  202.306202]  ? intel_display_power_grab_async_put_ref+0x75/0x120 [xe]
> > > [  202.312649]  intel_power_well_enable+0x1c/0x70 [xe]
> > > [  202.317543]  __intel_display_power_get_domain.part.0+0x4d/0x70 [xe]
> > > [  202.323812]  intel_display_power_get+0x43/0x70 [xe]
> > > [  202.328708]  intel_tc_port_init+0x199/0x2a0 [xe]
> > > [  202.333363]  intel_ddi_init+0x6ad/0xb00 [xe]
> > > [  202.337678]  intel_modeset_init_nogem+0x536/0x6d0 [xe]
> > > [  202.342838]  xe_display_init_noaccel+0x19/0x40 [xe]
> > > [  202.347743]  xe_device_probe+0x1f5/0x2a0 [xe]
> > > [  202.352127]  xe_pci_probe+0x28c/0x480 [xe]
> > > [  202.356260]  pci_device_probe+0x9d/0x150
> > > [  202.360164]  really_probe+0x19a/0x400
> > > [  202.363809]  ? __pfx___driver_attach+0x10/0x10
> > > [  202.368226]  __driver_probe_device+0x73/0x170
> > > [  202.372558]  driver_probe_device+0x1a/0x90
> > > [  202.376632]  __driver_attach+0xcd/0x1c0
> > > [  202.380442]  bus_for_each_dev+0x72/0xc0
> > > [  202.384253]  bus_add_driver+0x110/0x210
> > > [  202.388063]  driver_register+0x50/0x100
> > > [  202.391873]  ? __pfx_init_module+0x10/0x10 [xe]
> > > [  202.396431]  do_one_initcall+0x55/0x260
> > > [  202.400245]  ? rcu_is_watching+0xd/0x40
> > > [  202.404058]  ? kmalloc_trace+0xa0/0xb0
> > > [  202.407786]  do_init_module+0x45/0x1e0
> > > [  202.411512]  __do_sys_finit_module+0xac/0x120
> > > [  202.415838]  do_syscall_64+0x37/0x90
> > > [  202.419397]  entry_SYSCALL_64_after_hwframe+0x72/0xdc
> > > [  202.424409] RIP: 0033:0x7fd11291ea3d
> > > [  202.427967] Code: 5b 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d c3 a3 0f 00 f7 d8 64 89 01 48
> > > [  202.446530] RSP: 002b:00007ffffde11368 EFLAGS: 00000246 ORIG_RAX: 0000000000000139
> > > [  202.454031] RAX: ffffffffffffffda RBX: 00005616a617f210 RCX: 00007fd11291ea3d
> > > [  202.461106] RDX: 0000000000000000 RSI: 00005616a617fe60 RDI: 000000000000000e
> > > [  202.468182] RBP: 0000000000040000 R08: 0000000000000000 R09: 0000000000000002
> > > [  202.475250] R10: 000000000000000e R11: 0000000000000246 R12: 00005616a617fe60
> > > [  202.482319] R13: 00005616a617f340 R14: 0000000000000000 R15: 00005616a6180650
> > > [  202.489396]  </TASK>
> > > 
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
> > >  drivers/gpu/drm/i915/display/intel_dkl_phy.c | 6 ++++++
> > >  drivers/gpu/drm/i915/display/intel_dkl_phy.h | 2 ++
> > >  drivers/gpu/drm/i915/i915_driver.c           | 1 -
> > >  4 files changed, 11 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 2d59330ff5abd..92e1b535b2798 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -85,6 +85,7 @@
> > >  #include "intel_display_debugfs.h"
> > >  #include "intel_display_power.h"
> > >  #include "intel_display_types.h"
> > > +#include "intel_dkl_phy.h"
> > >  #include "intel_dmc.h"
> > >  #include "intel_dp.h"
> > >  #include "intel_dp_link_training.h"
> > > @@ -7890,6 +7891,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> > 
> > I'm afraid this is too late. Since dkl phy read can happen on some get hw state
> > which can occur in wm and power_domain code...
> 
> 
> Double checked in:
> intel_power_domains_init()
> intel_power_domains_init_hw()
> intel_wm_init()
> intel_modeset_init_hw()
> 
> And none of those places call any dkl function.
> 
> The closest is:
> intel_power_domains_init_hw() -> icl_display_core_init() -> intel_combo_phy_init() -> icl_combo_phys_init()
> but it is only over combo phys.
> 
> But I can move it to intel_modeset_init_noirq(), before intel_power_domains_init() is you think is better to be safer.

we are probably safe then... but let's send to intel-gfx and see what Jani and Ville think...

> 
> > 
> > >  	if (!HAS_DISPLAY(dev_priv))
> > >  		return;
> > >  
> > > +	intel_dkl_phy_init(dev_priv);
> > > +
> > >  	if (IS_DG2(dev_priv)) {
> > >  		intel_ddi_init(dev_priv, PORT_A);
> > >  		intel_ddi_init(dev_priv, PORT_B);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> > > index 57cc3edba0163..5bce7b5b27bc7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
> > > @@ -104,3 +104,9 @@ intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_r
> > >  
> > >  	spin_unlock(&i915->display.dkl.phy_lock);
> > >  }
> > > +
> > > +void
> > > +intel_dkl_phy_init(struct drm_i915_private *i915)
> > > +{
> > > +	spin_lock_init(&i915->display.dkl.phy_lock);
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> > > index 570ee36f9386f..615429b6392c5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
> > > @@ -20,5 +20,7 @@ void
> > >  intel_dkl_phy_rmw(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg, u32 clear, u32 set);
> > >  void
> > >  intel_dkl_phy_posting_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
> > > +void
> > > +intel_dkl_phy_init(struct drm_i915_private *i915);
> > >  
> > >  #endif /* __INTEL_DKL_PHY_H__ */
> > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > index ea2cc56d18a6e..617b3d0da267d 100644
> > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > @@ -223,7 +223,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> > >  	mutex_init(&dev_priv->display.wm.wm_mutex);
> > >  	mutex_init(&dev_priv->display.pps.mutex);
> > >  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> > > -	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> > >  
> > >  	i915_memcpy_init_early(dev_priv);
> > >  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> > > -- 
> > > 2.40.0
> > > 
> 
