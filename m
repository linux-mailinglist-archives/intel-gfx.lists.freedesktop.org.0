Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0186CC742
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 17:59:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5F210E28B;
	Tue, 28 Mar 2023 15:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E200E10E28B
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 15:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680019153; x=1711555153;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Mqhxr04d3eR/WEiBk8GiQkLHWBg37VElKCUYXF7axx0=;
 b=a2JtFqDaI0vYXy21rBNXCK8Xkt5017d78ff2bG4B1vOQhk4Q44g73AWQ
 ZN2F07mrGU+p0fDdOpjYrHDRSUq8nZvFDF0TUvyAhlgn18KTsHoI8Z6mL
 VXt/il86oekikopTW1hG7ZqKKPRqhtxpNk+p76fDofZIPmar3QWFjiYP3
 YJQ9GrFMyiUyPUhHdKEUYdOgN+VONVa78R/O1CF5Nij1T5nKmLbd0AgFM
 QRnTgxdVS/aGRTd90WkRRkTjgeWfPMOfvShZjend+zbjPH2PBBc2j4LtM
 uMDFtn0Pm6es8Ot1RLDFd4OWyFgBfs81ovLcYi7EIianVTliqWhoa6/RS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="339331370"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="339331370"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 08:59:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="858148070"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="858148070"
Received: from mmetzger-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 08:59:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230327121116.1785979-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230327121116.1785979-1-imre.deak@intel.com>
Date: Tue, 28 Mar 2023 18:59:08 +0300
Message-ID: <87wn3050kz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [core-for-CI] x86/topology: fix erroneous
 smp_num_siblings on Intel Hybrid platform
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

On Mon, 27 Mar 2023, Imre Deak <imre.deak@intel.com> wrote:
> From: Zhang Rui <rui.zhang@intel.com>
>
> The SMT siblings value returned by CPUID.1F SMT level EBX differs
> among CPUs on Intel Hybrid platforms like AlderLake and MeteorLake.
> It returns 2 for Pcore CPUs which have SMT siblings and returns 1 for
> Ecore CPUs which do not have SMT siblings.
>
> Today, the CPU boot code sets the global variable smp_num_siblings when
> every CPU thread is brought up. The last thread to boot will overwrite
> it with the number of siblings of *that* thread. That last thread to
> boot will "win". If the thread is a Pcore, smp_num_siblings == 2.  If it
> is an Ecore, smp_num_siblings == 1.
>
> smp_num_siblings describes if the *system* supports SMT.  It should
> specify the maximum number of SMT threads among all cores.
>
> Ensure that smp_num_siblings represents the system-wide maximum number
> of siblings by always increasing its value. Never allow it to decrease.
>
> On MeteorLake-P platform, this fixes a problem that the Ecore CPUs are
> not updated in any cpu sibling map because the system is treated as an
> UP system when probing Ecore CPUs.
>
> Below shows part of the CPU topology information before and after the
> fix, for both Pcore and Ecore CPU (cpu0 is Pcore, cpu 12 is Ecore).
> ...
> -/sys/devices/system/cpu/cpu0/topology/package_cpus:000fff
> -/sys/devices/system/cpu/cpu0/topology/package_cpus_list:0-11
> +/sys/devices/system/cpu/cpu0/topology/package_cpus:3fffff
> +/sys/devices/system/cpu/cpu0/topology/package_cpus_list:0-21
> ...
> -/sys/devices/system/cpu/cpu12/topology/package_cpus:001000
> -/sys/devices/system/cpu/cpu12/topology/package_cpus_list:12
> +/sys/devices/system/cpu/cpu12/topology/package_cpus:3fffff
> +/sys/devices/system/cpu/cpu12/topology/package_cpus_list:0-21
>
> And this also breaks userspace tools like lscpu
> -Core(s) per socket:  1
> -Socket(s):           11
> +Core(s) per socket:  16
> +Socket(s):           1
>
> CC: stable@kernel.org
> Fixes: bbb65d2d365e ("x86: use cpuid vector 0xb when available for detecting cpu topology")
> Fixes: 95f3d39ccf7a ("x86/cpu/topology: Provide detect_extended_topology_early()")
> Suggested-by: Len Brown <len.brown@intel.com>
> Signed-off-by: Zhang Rui <rui.zhang@intel.com>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> [Imre: resend for core-for-CI]
> References: https://lore.kernel.org/lkml/20230323015640.27906-1-rui.zhang@intel.com
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/8317
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Pushed to topic/core-for-CI as a stopgap measure.

BR,
Jani.

> ---
>  arch/x86/kernel/cpu/topology.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/kernel/cpu/topology.c b/arch/x86/kernel/cpu/topology.c
> index 5e868b62a7c4e..0270925fe013b 100644
> --- a/arch/x86/kernel/cpu/topology.c
> +++ b/arch/x86/kernel/cpu/topology.c
> @@ -79,7 +79,7 @@ int detect_extended_topology_early(struct cpuinfo_x86 *c)
>  	 * initial apic id, which also represents 32-bit extended x2apic id.
>  	 */
>  	c->initial_apicid = edx;
> -	smp_num_siblings = LEVEL_MAX_SIBLINGS(ebx);
> +	smp_num_siblings = max_t(int, smp_num_siblings, LEVEL_MAX_SIBLINGS(ebx));
>  #endif
>  	return 0;
>  }
> @@ -109,7 +109,8 @@ int detect_extended_topology(struct cpuinfo_x86 *c)
>  	 */
>  	cpuid_count(leaf, SMT_LEVEL, &eax, &ebx, &ecx, &edx);
>  	c->initial_apicid = edx;
> -	core_level_siblings = smp_num_siblings = LEVEL_MAX_SIBLINGS(ebx);
> +	core_level_siblings = LEVEL_MAX_SIBLINGS(ebx);
> +	smp_num_siblings = max_t(int, smp_num_siblings, LEVEL_MAX_SIBLINGS(ebx));
>  	core_plus_mask_width = ht_mask_width = BITS_SHIFT_NEXT_LEVEL(eax);
>  	die_level_siblings = LEVEL_MAX_SIBLINGS(ebx);
>  	pkg_mask_width = die_plus_mask_width = BITS_SHIFT_NEXT_LEVEL(eax);

-- 
Jani Nikula, Intel Open Source Graphics Center
