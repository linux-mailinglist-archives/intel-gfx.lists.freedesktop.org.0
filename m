Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F93D118C5F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 16:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8951889CB2;
	Tue, 10 Dec 2019 15:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71276E10F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 15:20:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 07:20:27 -0800
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="207309356"
Received: from jmcrann-mobl1.ger.corp.intel.com (HELO [10.252.9.248])
 ([10.252.9.248])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 10 Dec 2019 07:20:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191210133719.3874455-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5464825b-9c04-cf7c-3909-450470cf5bbf@linux.intel.com>
Date: Tue, 10 Dec 2019 15:20:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210133719.3874455-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Wait on unbind barriers when
 invalidating userptr
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/12/2019 13:37, Chris Wilson wrote:
> When we are told we have to drop all references to userptr, wait for any
> barriers required for unbinding.
> 
> <4> [2055.808787] WARNING: CPU: 3 PID: 6239 at mm/mmu_notifier.c:472 __mmu_notifier_invalidate_range_start+0x1f2/0x250
> <4> [2055.808792] Modules linked in: vgem mei_hdcp snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel r8169 lpc_ich realtek i915 snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core pinctrl_broxton snd_pcm pinctrl_intel mei_me intel_lpss_pci mei prime_numbers [last unloaded: vgem]
> <4> [2055.808834] CPU: 3 PID: 6239 Comm: gem_userptr_bli Tainted: G     U            5.5.0-rc1-CI-CI_DRM_7522+ #1
> <4> [2055.808839] Hardware name:  /NUC6CAYB, BIOS AYAPLCEL.86A.0049.2018.0508.1356 05/08/2018
> <4> [2055.808847] RIP: 0010:__mmu_notifier_invalidate_range_start+0x1f2/0x250
> <4> [2055.808853] Code: c2 48 c7 c7 70 17 2e 82 44 89 45 d4 48 8b 70 28 e8 ec 01 ef ff 41 f6 46 20 01 44 8b 45 d4 75 0a 41 83 f8 f5 44 89 7d d4 74 89 <0f> 0b 44 89 45 d4 eb 81 0f 0b 49 8b 46 18 49 8b 76 10 4c 89 ff 48
> <4> [2055.808858] RSP: 0018:ffffc90002937d40 EFLAGS: 00010202
> <4> [2055.808865] RAX: 0000000000000061 RBX: ffff8882703a33e0 RCX: 0000000000000001
> <4> [2055.808870] RDX: 0000000000000000 RSI: ffff888277da8cb8 RDI: 00000000ffffffff
> <4> [2055.808874] RBP: ffffc90002937d70 R08: 00000000fffffff5 R09: 0000000000000000
> <4> [2055.808879] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000001
> <4> [2055.808884] R13: ffffffff822e1716 R14: ffffc90002937d80 R15: 00000000fffffff5
> <4> [2055.808890] FS:  00007fda75004e40(0000) GS:ffff888277d80000(0000) knlGS:0000000000000000
> <4> [2055.808895] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [2055.808900] CR2: 000055ad72ec3000 CR3: 00000002697b2000 CR4: 00000000003406e0
> <4> [2055.808904] Call Trace:
> <4> [2055.808920]  unmap_vmas+0x13e/0x150
> <4> [2055.808937]  unmap_region+0xa3/0x100
> <4> [2055.808964]  __do_munmap+0x26d/0x490
> <4> [2055.808980]  __vm_munmap+0x66/0xc0
> <4> [2055.808994]  __x64_sys_munmap+0x12/0x20
> <4> [2055.809001]  do_syscall_64+0x4f/0x220
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/771
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index 54ebc7ab71bc..f7f66c62cf0e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -129,7 +129,8 @@ userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
>   		spin_unlock(&mn->lock);
>   
>   		ret = i915_gem_object_unbind(obj,
> -					     I915_GEM_OBJECT_UNBIND_ACTIVE);
> +					     I915_GEM_OBJECT_UNBIND_ACTIVE |
> +					     I915_GEM_OBJECT_UNBIND_BARRIER);
>   		if (ret == 0)
>   			ret = __i915_gem_object_put_pages(obj);
>   		i915_gem_object_put(obj);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
