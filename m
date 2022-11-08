Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 866A9620643
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 02:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE2910E3FD;
	Tue,  8 Nov 2022 01:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABB910E3FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 01:41:38 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id k5so12389277pjo.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Nov 2022 17:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=acGzcAuPPpYiHPkz55yqVxVgyq5z5ejpgBQTkBg+EH4=;
 b=b0D1idW+zs56A8sf7SoFT9ENjJEo1aG91L5XpG8orRVBG17ZLfRl2xhM2EwnSXF6yA
 EPPCv/t0kigkeqjr5QlXE2qyxM7bzgkHwv4XZIqIrdaqAFHRsaVkTuYrK9ruc+y5I09G
 EJUQvmqqWQB9A1VDCTfzAqOzrZyggF3Ih404Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=acGzcAuPPpYiHPkz55yqVxVgyq5z5ejpgBQTkBg+EH4=;
 b=gJNpv7B08M9XscSrQsr4OQAfSf/wKKiWEBSq4MWq0f5d+OB+dfK+CzD/SMOb++x+91
 QVqys4cHJ3sbuKcpRLCXPNx+1acwH3AVzeQHU+lInXRJq4W1C41V6zeo1DcWVSc7VBfS
 8VArObPMPXPH7kfqO22qLwKsOtpvmGr7O5tmdEBORuQ5sR4qyUGj3x2iqMvw0BuaMEXG
 o3r0Kh221//i8xRFgYIzEBYzKDCNJGTcv5D45088mS8GGrPyeP4MAgPUuQ/kuDUcJz8I
 T7/HvMpzY0QNOnD5Wbsa3h/iMiqqRkJRG+f4dDOlaIxj5FF94t4bNGdHQ74pE0HlJ1dv
 orfg==
X-Gm-Message-State: ACrzQf3gZCmv/fcEJDewtQn/NZsYgUp1n54UIApftF+pSlc8aIo9TScb
 QrtryJyq0FUme8CimxrmhrzakugiS7Fwew==
X-Google-Smtp-Source: AMsMyM70hnJf6HJijtA658NBsypgsMJ8ZRMtIWD7AwvLWXkuaKEu4zYa0Rbu4k/1X+tCOILSukoetA==
X-Received: by 2002:a17:90b:1c82:b0:1ee:eb41:b141 with SMTP id
 oo2-20020a17090b1c8200b001eeeb41b141mr56247076pjb.143.1667871698023; 
 Mon, 07 Nov 2022 17:41:38 -0800 (PST)
Received: from google.com ([2620:15c:9d:2:c0b0:ef94:558d:9b69])
 by smtp.gmail.com with ESMTPSA id
 y23-20020aa79437000000b0053e8fe8a705sm5331174pfo.17.2022.11.07.17.41.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Nov 2022 17:41:37 -0800 (PST)
Date: Mon, 7 Nov 2022 17:41:35 -0800
From: Brian Norris <briannorris@chromium.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Message-ID: <Y2mzzzFLU9klpDje@google.com>
References: <20220928004145.745803-1-daniele.ceraolospurio@intel.com>
 <20220928004145.745803-12-daniele.ceraolospurio@intel.com>
 <5589d713-c371-1121-ef74-58be63057ac4@linux.intel.com>
 <Y2WfpLbX1SeDtk+7@google.com>
 <301a2ee5-db5a-ff79-f94a-ef6014ca3a10@intel.com>
 <d1be3d1b-da7f-f1a1-cfe2-143bcbd99b45@intel.com>
 <Y2W8Fj00yaq8Y9ib@google.com>
 <ac5fde11-c17d-8574-c938-c2278d53cf95@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ac5fde11-c17d-8574-c938-c2278d53cf95@intel.com>
Subject: Re: [Intel-gfx] [CI 11/15] drm/i915/huc: track delayed HuC load
 with a fence
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 07, 2022 at 10:38:14AM -0800, Ceraolo Spurio, Daniele wrote:
> Ok, I think I have an idea of what's happening: if HuC is not enabled, we
> skip the call to fence_fini, so we leak the debug object. Can you check if
> the below diff fixes the issue for you?

Thanks for checking! This also gives me the hint that I can try out the
HuC firmware to see if that changes anything for me. For reference,
here's the firmware bundled with ChromeOS (and that I'm running):

https://chromium.googlesource.com/chromiumos/third_party/linux-firmware/+/HEAD/i915/

We tend to pull pieces from upstream linux-firwmare.git as needed, and
seemingly ChromeOS folks haven't found HuC necessary for GLK.

> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index fbc8bae14f76..e3bbd174889d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -300,13 +300,12 @@ int intel_huc_init(struct intel_huc *huc)
> 
>  void intel_huc_fini(struct intel_huc *huc)
>  {
> -       if (!intel_uc_fw_is_loadable(&huc->fw))
> -               return;
> -
>         delayed_huc_load_complete(huc);
> 
>         i915_sw_fence_fini(&huc->delayed_load.fence);
> -       intel_uc_fw_fini(&huc->fw);
> +
> +       if (intel_uc_fw_is_loadable(&huc->fw))
> +               intel_uc_fw_fini(&huc->fw);
>  }

(NB: you have some very weird whitespace in there. It's neither tabs nor
spaces. This slightly increases the chance that I get your diff wrong,
since the patch doesn't apply directly. But I'm pretty sure I
hand-copied it correctly...)

Unfortunately, I still see the same(?) problem with this patch.

[   85.182000] ------------[ cut here ]------------
[   85.182014] ODEBUG: init destroyed (active state 0) object type: i915_sw_fence hint: sw_fence_dummy_notify+0x0/0x11 [i915]
[   85.182238] WARNING: CPU: 2 PID: 1925 at lib/debugobjects.c:505 debug_print_object+0x6b/0x7e
[   85.182257] Modules linked in: i915(+) cmac algif_hash algif_skcipher af_alg btusb uvcvideo btrtl videobuf2_vmalloc btintel videobuf2_v4l2 btmtk videobuf2_memops videobuf2_common btbcm soundwire_intel soundwire_generic_allocation soundwire_cadence soundwire_bus 8021q bluetooth ecdh_generic ecc rtw88_8822ce rtw88_8822c rtw88_pci rtw88_core mac80211 cfg80211 r8152 mii video wmi backlight drm_buddy intel_gtt drm_display_helper ttm prime_numbers joydev [last unloaded: i915]
[   85.182593] CPU: 2 PID: 1925 Comm: i915_module_loa Not tainted 6.1.0-rc3-01115-ga397a9098fb3-dirty #35 b6325f6cdf3c04a0862a445aa86b1799d3939949
[   85.182607] Hardware name: HP Meep/Meep, BIOS Google_Meep.11297.262.0 03/18/2021
[   85.182619] RIP: 0010:debug_print_object+0x6b/0x7e
[   85.182634] Code: 31 c9 ff c0 89 05 ae a4 67 01 8b 43 10 8b 4b 14 48 8b 14 c5 e0 4a 86 8d 4d 8b 07 48 c7 c7 fe 47 ac 8d 4c 89 f6 e8 ba 53 c2 ff <0f> 0b ff 05 2a 50 11 01 5b 41 5e 41 5f 5d c3 cc cc cc cc 55 48 89
[   85.182646] RSP: 0018:ffffad7280583638 EFLAGS: 00010246
[   85.182661] RAX: 229fb1a4f3034f00 RBX: ffff960980064348 RCX: 0000000000000027
[   85.182672] RDX: 0000000000000027 RSI: 00000000ffffdfff RDI: ffff960af7d1b440
[   85.182683] RBP: ffffad7280583650 R08: 0000000000000000 R09: ffffad7280583490
[   85.182693] R10: 00000000ffffdfff R11: ffffffff8ca46e5b R12: ffff960988382cf8
[   85.182703] R13: ffffffffc08656b0 R14: ffffffff8daffd1f R15: ffffffffc08656b0
[   85.182713] FS:  00007fd5f9306940(0000) GS:ffff960af7d00000(0000) knlGS:0000000000000000
[   85.182725] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   85.182735] CR2: 00007fd5f85ef000 CR3: 00000001061d2000 CR4: 0000000000350ee0
[   85.182746] Call Trace:
[   85.182759]  <TASK>
[   85.182775]  __debug_object_init+0x26c/0x5ea
[   85.182794]  ? intel_huc_init_early+0xa6/0xa6 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.182996]  ? 0xffffffffc03e6083
[   85.183028]  ? prepare_ftrace_return+0xa2/0xdf
[   85.183059]  ? __init_waitqueue_head+0x5/0x21
[   85.183082]  i915_sw_fence_reinit+0x19/0x3d [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.183310]  intel_huc_init_early+0x72/0xa6 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.183514]  intel_uc_init_early+0x76/0x25b [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.183697]  intel_gt_common_init_early+0xc3/0xd6 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.183878]  intel_root_gt_init_early+0x4c/0x5c [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.184055]  i915_driver_probe+0x26b/0xbf9 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.184233]  ? drm_privacy_screen_put+0x5/0x23
[   85.184260]  i915_pci_probe+0x182/0x266 [i915 30ae04bc806a1fe406030ed4bf98e870eb8aa3bf]
[   85.184468]  pci_device_probe+0x99/0x126
...

That only required:

  pkill frecon
  <rmmod some audio drivers>
  ./i915_module_load --run-subtest reload

Brian
