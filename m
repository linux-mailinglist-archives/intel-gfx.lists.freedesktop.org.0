Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D97298AE17F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 11:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4397610FB74;
	Tue, 23 Apr 2024 09:58:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zotvg0wd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 424E910FB74
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 09:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713866324; x=1745402324;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9Q2Yk9vw0YGolhyBbBOe+loE+FG6xlQ/oK4meHgsJZY=;
 b=Zotvg0wdbY5uffVf5rKvvb+mhM6EUOUjYt0LeApQMCOhzfUElSJNz6az
 7wHdvSNwv+rTPSk/k0ER/qyP0vJKNrMx+R2Exqz8fMRHwMTIuIBEJUVAT
 4dJB8HC/AsLjZF98Sy8IRNpatfUWvTkuVRBCa6aO+Sh2YYSzE9byaeWTj
 EmuNGqN8XaoOvIRPg6io8DczyopnL1il0Uyph8WnVNSYVuHmv+iSt+4xL
 ATHdRW7aOSd5lWG0RfsNxILb1P3NP/ykw3ZjvAEImmM9Qg62qFSfC8G1E
 PazUOP+GXDeRrVNDrK4ezY5kd3EySE4YcdLbfL7eVi42GI8UXJfdxEh0V g==;
X-CSE-ConnectionGUID: MekOAqN+SzuyKpnJGjoMRQ==
X-CSE-MsgGUID: 0+y49nYRTji0PK9Eei5UEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9272333"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9272333"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:58:43 -0700
X-CSE-ConnectionGUID: UuMxqTkbRtWDWYHS4kVojQ==
X-CSE-MsgGUID: 4VURtXs6RROU/x/JlFeqaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24292592"
Received: from unknown (HELO intel.com) ([10.247.119.79])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 02:58:37 -0700
Date: Tue, 23 Apr 2024 11:58:27 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 John.C.Harrison@intel.com, chris.p.wilson@linux.intel.com,
 andi.shyti@linux.intel.com, nirmoy.das@intel.com
Subject: Re: [PATCH v2] drm/i915/gem: Downgrade stolen lmem setup warning
Message-ID: <ZieGQ1ymADCI98s3@ashyti-mobl2.lan>
References: <20240422135959.4127003-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240422135959.4127003-1-jonathan.cavitt@intel.com>
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

Hi Jonathan,

On Mon, Apr 22, 2024 at 06:59:59AM -0700, Jonathan Cavitt wrote:
> In the case where lmem_size < dsm_base, hardware is reporting that
> stolen lmem is unusable.  In this case, instead of throwing a warning,
> we can continue execution as normal by disabling stolen LMEM support.
> For example, this change will allow the following error report from
> ATS-M to no longer apply:
> 
> <6> [144.859887] pcieport 0000:4b:00.0: bridge window [mem 0xb1000000-0xb11fffff]
> <6> [144.859900] pcieport 0000:4b:00.0: bridge window [mem 0x3bbc00000000-0x3bbc17ffffff 64bit pref]
> <6> [144.859917] pcieport 0000:4c:01.0: PCI bridge to [bus 4d-4e]
> <6> [144.859932] pcieport 0000:4c:01.0: bridge window [mem 0xb1000000-0xb11fffff]
> <6> [144.859945] pcieport 0000:4c:01.0: bridge window [mem 0x3bbc00000000-0x3bbc17ffffff 64bit pref]
> <6> [144.859984] i915 0000:4d:00.0: [drm] BAR2 resized to 256M
> <6> [144.860640] i915 0000:4d:00.0: [drm] Using a reduced BAR size of 256MiB. Consider enabling 'Resizable BAR' or similar, if available in the BIOS.
> <4> [144.860719] -----------[ cut here ]-----------
> <4> [144.860727] WARNING: CPU: 17 PID: 1815 at drivers/gpu/drm/i915/gem/i915_gem_stolen.c:939 i915_gem_stolen_lmem_setup+0x38c/0x430 [i915]
> <4> [144.861430] Modules linked in: i915 snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm vgem drm_shmem_helper prime_numbers i2c_algo_bit ttm video drm_display_helper drm_buddy fuse x86_pkg_temp_thermal coretemp kvm_intel kvm ixgbe mdio irqbypass ptp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel pps_core i2c_i801 mei_me i2c_smbus mei wmi acpi_power_meter [last unloaded: i915]
> <4> [144.861611] CPU: 17 PID: 1815 Comm: i915_module_loa Tainted: G U 6.8.0-rc5-drmtip_1515-g78f49af27723+ #1
> <4> [144.861624] Hardware name: Intel Corporation WHITLEY/WHITLEY, BIOS SE5C6200.86B.0020.P41.2109300305 09/30/2021
> <4> [144.861632] RIP: 0010:i915_gem_stolen_lmem_setup+0x38c/0x430 [i915]
> <4> [144.862287] Code: ff 41 c1 e4 05 e9 ac fe ff ff 4d 63 e4 48 89 ef 48 85 ed 74 04 48 8b 7d 08 48 c7 c6 10 a3 7b a0 e8 e9 90 43 e1 e9 ee fd ff ff <0f> 0b 49 c7 c4 ed ff ff ff e9 e0 fd ff ff 0f b7 d2 48 c7 c6 00 d9
> <4> [144.862299] RSP: 0018:ffffc90005607980 EFLAGS: 00010207
> <4> [144.862315] RAX: fffffffffff00000 RBX: 0000000000000003 RCX: 0000000000000000
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10833
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
