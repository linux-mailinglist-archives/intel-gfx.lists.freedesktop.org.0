Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EE427BF0F
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 10:18:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF06F89893;
	Tue, 29 Sep 2020 08:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E729089893
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 08:18:42 +0000 (UTC)
IronPort-SDR: ixATcm4jd72a/6RtvJffInXz5INOC+iAkitWMFctHaYyR73Cq/L2yXpYmdaEN1nNHIUfja2TbZ
 7HP7vpx0Z7WQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="159518235"
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; d="scan'208";a="159518235"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 01:18:40 -0700
IronPort-SDR: v8sk/OfXNv3tLbDFTwNKKIUDe3RcBDXzfM+1oKbAn5iWLXRTGxCFZ4gl7ewLphKsyFCcb66N2V
 ec/iIRtf4cdQ==
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; d="scan'208";a="514592291"
Received: from akoski1-mobl7.ger.corp.intel.com (HELO localhost)
 ([10.252.11.87])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 01:18:37 -0700
MIME-Version: 1.0
In-Reply-To: <CAOMV6SUP1=U3bqO=+f_HrnTYpaLLwvZY4muCdW-ixQU2M10_WQ@mail.gmail.com>
References: <CAOMV6SUP1=U3bqO=+f_HrnTYpaLLwvZY4muCdW-ixQU2M10_WQ@mail.gmail.com>
To: Tony Fischetti <tony.fischetti@gmail.com>, airlied@linux.ie,
 jani.nikula@linux.intel.com, linux-kernel@vger.kernel.org, peterx@redhat.com,
 rodrigo.vivi@intel.com, chris@chris-wilson.co.uk,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160136751431.9258.5367116987368823201@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 29 Sep 2020 11:18:34 +0300
Subject: Re: [Intel-gfx] REGRESSION: in intel video driver following
 introduction of mm_struct.has_pinned
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

(+ intel-gfx for being i915 related)
(+ Chris who has looked into the issue)

Hi,

Thanks for reporting!

Could you open a bug report according to following instructions:

https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs

A full dmesg of a bad boot and git bisect logs will be helpful.

Also, please describe when the problem happens, is it at boot? Are you
getting the OOPS on every boot?

For future reference, replying to a single thread helps keeping the
attention focused.

Regards, Joonas

Quoting Tony Fischetti (2020-09-28 21:14:16)
> After a length git bisection, I determined the commit that introduced
> a change that ultimately caused a bug/oops null dereference (see below
> for relevant syslog entries) was 008cfe4418b3dbda2ff.. (mm: Introduce
> mm_struct.has_pinned)
> 
> The RIP (according to syslog) occurs in function
> `__get_user_pages_remote` and the last function to call it from the
> i915 code is `gem_userptr_get_pages_worker`
> More specifically, it appears to be the call to
> `pin_user_pages_remote` in `gem_userptr_get_pages_worker` in
> drivers/gpu/drm/i915/gem/i915_gem_userptr.c that directly leads to the
> oops.
> 
> Unfortunately, I don't know enough to try to fix and share the fix
> myself, but I hope the information I provided is helpful. Please let
> me know if there is any further information I can provide that might
> be of use.
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000054
> #PF: supervisor write access in kernel mode
> #PF: error_code(0x0002) - not-present page
> Oops: 0002 [#1] PREEMPT SMP NOPTI
> CPU: 8 PID: 497 Comm: kworker/u25:0 Not tainted
> 5.9.0-rc7-alice-investigate-3+ #2
> Hardware name: LENOVO 10ST001QUS/312A, BIOS M1UKT4BA 11/11/2019
> Workqueue: i915-userptr-acquire __i915_gem_userptr_get_pages_worker [i915]
> RIP: 0010:__get_user_pages_remote+0xa0/0x2d0
> Code: 85 e7 01 00 00 83 3b 01 0f 85 e0 01 00 00 f7 c1 00 00 04 00 0f
> 84 12 01 00 00 65 48 8b 04 25 00 6d 01 00 48 8b 80 58 03 00 00 <c7> 40
> 54 01 00 00 00 c6 04 24 00 4d 8d 6f 68 48 c7 44 24 10 00 00
> RSP: 0018:ffffa1a58086bde0 EFLAGS: 00010206
> RAX: 0000000000000000 RBX: ffffa1a58086be64 RCX: 0000000000040001
> RDX: 00000000000007e9 RSI: 00007f532f800000 RDI: ffff92f22d89c480
> RBP: 00007f532f800000 R08: ffff92f23a188000 R09: 0000000000000000
> R10: 0000000000000000 R11: ffffa1a58086bcfd R12: ffff92f23a188000
> R13: ffff92f22d89c480 R14: 0000000000042003 R15: ffff92f22d89c480
> FS:  0000000000000000(0000) GS:ffff92f23e400000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000054 CR3: 0000000016c0a002 CR4: 00000000001706e0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> Call Trace:
>  __i915_gem_userptr_get_pages_worker+0x1ec/0x392 [i915]
>  process_one_work+0x1c7/0x310
>  worker_thread+0x28/0x3c0
>  ? set_worker_desc+0xb0/0xb0
>  kthread+0x123/0x140
>  ? kthread_use_mm+0xe0/0xe0
>  ret_from_fork+0x1f/0x30
> Modules linked in: snd_hda_codec_hdmi snd_hda_codec_realtek
> snd_hda_codec_generic ledtrig_audio iwlmvm mac80211 libarc4
> x86_pkg_temp_thermal intel_powerclamp iwlwifi coretemp i915
> crct10dif_pclmul crc32_pclmul crc32c_intel i2c_algo_bit
> ghash_clmulni_intel drm_kms_helper syscopyarea sysfillrect sysimgblt
> fb_sys_fops cec mei_hdcp wmi_bmof snd_hda_intel drm tpm_crb
> snd_intel_dspcfg intel_wmi_thunderbolt snd_hda_codec snd_hwdep
> aesni_intel crypto_simd glue_helper snd_hda_core cfg80211 i2c_i801
> snd_pcm intel_cstate pcspkr snd_timer mei_me i2c_smbus mei i2c_core
> thermal wmi tpm_tis tpm_tis_core tpm rng_core acpi_pad ppdev lp
> ip_tables x_tables
> CR2: 0000000000000054
> ---[ end trace 8d080e8b96289c9e ]---
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
