Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9351ACEB2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 19:28:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E1F6E83D;
	Thu, 16 Apr 2020 17:28:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D64CB6E83D
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 17:28:22 +0000 (UTC)
IronPort-SDR: xr4CVRjvPqYu4SstdxHH3HesDmX9y0euIA8xu3zRohkVPtg5C5hN8ZU+QsOpESrmrxbC/Wu9f7
 H6WNA2sH5E+w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 10:28:21 -0700
IronPort-SDR: aPb/1VwVge3Rf6Ppo6JqxOgVorGsNpawaSG22DU4Foz6upxRxqIH7huZ92sIcyefQ4GT6GhsFK
 PXq51e2mkx0g==
X-IronPort-AV: E=Sophos;i="5.72,391,1580803200"; d="scan'208";a="427911601"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 10:28:20 -0700
Date: Thu, 16 Apr 2020 20:28:01 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200416172801.GC2764@ideak-desk.fi.intel.com>
References: <20200415191408.82574-1-jose.souza@intel.com>
 <20200416164219.GA2764@ideak-desk.fi.intel.com>
 <83eab7901b73aa15de69d02843fd40557b4e7024.camel@intel.com>
 <20200416170655.GB2764@ideak-desk.fi.intel.com>
 <7869ec47ae0feef332c47c67ede39ece4e697d7b.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7869ec47ae0feef332c47c67ede39ece4e697d7b.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add missing deinitialization
 cases of load failure
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
Reply-To: imre.deak@intel.com
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 16, 2020 at 08:20:23PM +0300, Souza, Jose wrote:
> On Thu, 2020-04-16 at 20:06 +0300, Imre Deak wrote:
> > On Thu, Apr 16, 2020 at 08:03:39PM +0300, Souza, Jose wrote:
> > > On Thu, 2020-04-16 at 19:42 +0300, Imre Deak wrote:
> > > > On Wed, Apr 15, 2020 at 12:14:08PM -0700, Jos=E9 Roberto de Souza
> > > > wrote:
> > > > > The intel_display_power_put_async() used in TC cold sequences
> > > > > made
> > > > > easy to hit the missing deinitialization of driver in case of
> > > > > load
> > > > > failure as seen in the stack trace bellow.
> > > > > =

> > > > > intel_modeset_driver_remove_noirq() had to be removed from
> > > > > i915_driver_modeset_remove_noirq() as those are different
> > > > > initialialition steps with IRQ and GEM initialization in
> > > > > between
> > > > > then.
> > > > > =

> > > > > [drm:__intel_engine_init_ctx_wa [i915]] Initialized 3 context
> > > > > workarounds on rcs'0
> > > > > [drm:__i915_inject_probe_error [i915]] Injecting failure -19 at
> > > > > checkpoint 36 [__uc_init:294]
> > > > > [drm:i915_hdcp_component_unbind [i915]] I915 HDCP comp unbind
> > > > > [drm:edp_panel_vdd_off_sync [i915]] Turning [ENCODER:275:DDI A]
> > > > > VDD
> > > > > off
> > > > > [drm:edp_panel_vdd_off_sync [i915]] PP_STATUS: 0x00000000
> > > > > PP_CONTROL: 0x00000060
> > > > > [drm:intel_power_well_disable [i915]] disabling AUX A
> > > > > general protection fault, probably for non-canonical address
> > > > > 0x6b6b6b6b6b6b6b6b: 0000 [#1] PREEMPT SMP NOPTI
> > > > > CPU: 3 PID: 1142 Comm: kworker/u16:20 Tainted:
> > > > > G     U            5.6.0-CI-Patchwork_17226+ #1
> > > > > Hardware name: Intel Corporation Tiger Lake Client
> > > > > Platform/TigerLake U DDR4 SODIMM RVP, BIOS
> > > > > TGLSFWI1.R00.2457.A16.1912270059 12/27/2019
> > > > > Workqueue: events_unbound intel_display_power_put_async_work
> > > > > [i915]
> > > > > RIP: 0010:__intel_display_power_put_domain+0xa5/0x180 [i915]
> > > > > Code: 48 85 c0 78 54 44 89 e1 41 bd 01 00 00 00 49 c7 c4 80 44
> > > > > 41
> > > > > a0 49 d3 e5 eb 0d 48 83 eb 10 48 3b 9d 08 ad 00 00 78 32 48 8b
> > > > > 03
> > > > > <4c> 85 68 10 74 ea 8b 53 08 85 d2 74 2d 83 ea 01 85 d2 89 53
> > > > > 08 75
> > > > > RSP: 0018:ffffc9000061fdb0 EFLAGS: 00010206
> > > > > RAX: 6b6b6b6b6b6b6b6b RBX: ffff8884948f5df0 RCX:
> > > > > 000000000000003d
> > > > > RDX: 0000000080000001 RSI: 0000000000000000 RDI:
> > > > > 0000000000000000
> > > > > RBP: ffff888479be0000 R08: ffff88849a180920 R09:
> > > > > 0000000000000000
> > > > > R10: 0000000000000000 R11: 0000000000000000 R12:
> > > > > ffffffffa0414480
> > > > > R13: 2000000000000000 R14: ffff888479beb320 R15:
> > > > > 2000000000000000
> > > > > FS:  0000000000000000(0000) GS:ffff88849ff80000(0000)
> > > > > knlGS:0000000000000000
> > > > > CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > > CR2: 00005634fa8ed670 CR3: 0000000005610004 CR4:
> > > > > 0000000000760ee0
> > > > > PKRU: 55555554
> > > > > Call Trace:
> > > > >  release_async_put_domains+0x9b/0x110 [i915]
> > > > >  intel_display_power_put_async_work+0x91/0xf0 [i915]
> > > > >  process_one_work+0x260/0x600
> > > > >  ? worker_thread+0xc9/0x380
> > > > >  worker_thread+0x37/0x380
> > > > >  ? process_one_work+0x600/0x600
> > > > >  kthread+0x119/0x130
> > > > >  ? kthread_park+0x80/0x80
> > > > >  ret_from_fork+0x24/0x50
> > > > > Modules linked in: i915(+) vgem snd_hda_codec_hdmi mei_hdcp
> > > > > x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul
> > > > > cdc_ether usbnet mii snd_intel_dspcfg ghash_clmulni_intel
> > > > > snd_hda_codec snd_hwdep snd_hda_core e1000e ptp mei_me snd_pcm
> > > > > pps_core mei intel_lpss_pci prime_numbers [last unloaded: i915]
> > > > > ---[ end trace b402d1b4060f8b97 ]---
> > > > > BUG: sleeping function called from invalid context at
> > > > > kernel/sched/completion.c:99
> > > > > in_atomic(): 0, irqs_disabled(): 0, non_block: 0, pid: 1142,
> > > > > name:
> > > > > kworker/u16:20
> > > > > INFO: lockdep is turned off.
> > > > > Preemption disabled at:
> > > > > [<0000000000000000>] 0x0
> > > > > CPU: 3 PID: 1142 Comm: kworker/u16:20 Tainted:
> > > > > G     UD           5.6.0-CI-Patchwork_17226+ #1
> > > > > Hardware name: Intel Corporation Tiger Lake Client
> > > > > Platform/TigerLake U DDR4 SODIMM RVP, BIOS
> > > > > TGLSFWI1.R00.2457.A16.1912270059 12/27/2019
> > > > > Workqueue: events_unbound intel_display_power_put_async_work
> > > > > [i915]
> > > > > Call Trace:
> > > > >  dump_stack+0x71/0x9b
> > > > >  ___might_sleep+0x178/0x260
> > > > >  wait_for_completion+0x37/0x1a0
> > > > >  virt_efi_query_variable_info+0x161/0x1b0
> > > > >  efi_query_variable_store+0xb3/0x1a0
> > > > >  ? efivar_entry_set_safe+0x19c/0x220
> > > > >  efivar_entry_set_safe+0x19c/0x220
> > > > >  ? efi_pstore_write+0x10b/0x150
> > > > >  ? efi_pstore_write+0xa0/0x150
> > > > >  efi_pstore_write+0x10b/0x150
> > > > >  pstore_dump+0x123/0x340
> > > > >  kmsg_dump+0x87/0x1b0
> > > > >  oops_end+0x3e/0x90
> > > > >  do_general_protection+0x1c3/0x2f0
> > > > >  general_protection+0x2d/0x40
> > > > > RIP: 0010:__intel_display_power_put_domain+0xa5/0x180 [i915]
> > > > > Code: 48 85 c0 78 54 44 89 e1 41 bd 01 00 00 00 49 c7 c4 80 44
> > > > > 41
> > > > > a0 49 d3 e5 eb 0d 48 83 eb 10 48 3b 9d 08 ad 00 00 78 32 48 8b
> > > > > 03
> > > > > <4c> 85 68 10 74 ea 8b 53 08 85 d2 74 2d 83 ea 01 85 d2 89 53
> > > > > 08 75
> > > > > RSP: 0018:ffffc9000061fdb0 EFLAGS: 00010206
> > > > > RAX: 6b6b6b6b6b6b6b6b RBX: ffff8884948f5df0 RCX:
> > > > > 000000000000003d
> > > > > RDX: 0000000080000001 RSI: 0000000000000000 RDI:
> > > > > 0000000000000000
> > > > > RBP: ffff888479be0000 R08: ffff88849a180920 R09:
> > > > > 0000000000000000
> > > > > R10: 0000000000000000 R11: 0000000000000000 R12:
> > > > > ffffffffa0414480
> > > > > R13: 2000000000000000 R14: ffff888479beb320 R15:
> > > > > 2000000000000000
> > > > >  release_async_put_domains+0x9b/0x110 [i915]
> > > > >  intel_display_power_put_async_work+0x91/0xf0 [i915]
> > > > >  process_one_work+0x260/0x600
> > > > >  ? worker_thread+0xc9/0x380
> > > > >  worker_thread+0x37/0x380
> > > > >  ? process_one_work+0x600/0x600
> > > > >  kthread+0x119/0x130
> > > > >  ? kthread_park+0x80/0x80
> > > > >  ret_from_fork+0x24/0x50
> > > > > ------------[ cut here ]------------
> > > > > WARNING: CPU: 3 PID: 1142 at kernel/rcu/tree_plugin.h:293
> > > > > rcu_note_context_switch+0x87/0x650
> > > > > Modules linked in: i915(+) vgem snd_hda_codec_hdmi mei_hdcp
> > > > > x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul
> > > > > cdc_ether usbnet mii snd_intel_dspcfg ghash_clmulni_intel
> > > > > snd_hda_codec snd_hwdep snd_hda_core e1000e ptp mei_me snd_pcm
> > > > > pps_core mei intel_lpss_pci prime_numbers [last unloaded: i915]
> > > > > =

> > > > > v2:
> > > > > - fixed handling in case of failure in drm_vblank_init()
> > > > > - moved i915_gem_driver_remove() call to before
> > > > > i915_driver_modeset_remove_noirq() this match initialization
> > > > > order
> > > > > too
> > > > > =

> > > > > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1647
> > > > > Cc: Imre Deak <imre.deak@intel.com>
> > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/i915_drv.c | 20 ++++++++++++--------
> > > > >  1 file changed, 12 insertions(+), 8 deletions(-)
> > > > > =

> > > > > diff --git a/drivers/gpu/drm/i915/i915_drv.c
> > > > > b/drivers/gpu/drm/i915/i915_drv.c
> > > > > index 641f5e03b661..e31535744060 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_drv.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > > > > @@ -228,7 +228,7 @@ static int
> > > > > i915_driver_modeset_probe_noirq(struct drm_i915_private *i915)
> > > > >  		ret =3D drm_vblank_init(&i915->drm,
> > > > >  				      INTEL_NUM_PIPES(i915));
> > > > >  		if (ret)
> > > > > -			goto out;
> > > > > +			return ret;
> > > > >  	}
> > > > >  =

> > > > >  	intel_bios_init(i915);
> > > > > @@ -248,8 +248,11 @@ static int
> > > > > i915_driver_modeset_probe_noirq(struct drm_i915_private *i915)
> > > > >  	return 0;
> > > > >  =

> > > > >  cleanup_vga_client:
> > > > > +	intel_csr_ucode_fini(i915);
> > > > > +	intel_power_domains_driver_remove(i915);
> > > > >  	intel_vga_unregister(i915);
> > > > >  out:
> > > > > +	intel_bios_driver_remove(i915);
> > > > >  	return ret;
> > > > >  }
> > > > >  =

> > > > > @@ -308,13 +311,13 @@ static void
> > > > > i915_driver_modeset_remove(struct
> > > > > drm_i915_private *i915)
> > > > >  /* part #2: call after irq uninstall */
> > > > >  static void i915_driver_modeset_remove_noirq(struct
> > > > > drm_i915_private *i915)
> > > > >  {
> > > > > -	intel_modeset_driver_remove_noirq(i915);
> > > > > +	intel_csr_ucode_fini(i915);
> > > > >  =

> > > > > -	intel_bios_driver_remove(i915);
> > > > > +	intel_power_domains_driver_remove(i915);
> > > > >  =

> > > > >  	intel_vga_unregister(i915);
> > > > >  =

> > > > > -	intel_csr_ucode_fini(i915);
> > > > > +	intel_bios_driver_remove(i915);
> > > > >  }
> > > > >  =

> > > > >  static void intel_init_dpio(struct drm_i915_private *dev_priv)
> > > > > @@ -992,7 +995,7 @@ int i915_driver_probe(struct pci_dev *pdev,
> > > > > const struct pci_device_id *ent)
> > > > >  out_cleanup_irq:
> > > > >  	intel_irq_uninstall(i915);
> > > > >  out_cleanup_modeset:
> > > > > -	/* FIXME */
> > > > > +	i915_driver_modeset_remove_noirq(i915);
> > > > >  out_cleanup_hw:
> > > > >  	i915_driver_hw_remove(i915);
> > > > >  	intel_memory_regions_driver_release(i915);
> > > > > @@ -1029,12 +1032,13 @@ void i915_driver_remove(struct
> > > > > drm_i915_private *i915)
> > > > >  =

> > > > >  	intel_irq_uninstall(i915);
> > > > >  =

> > > > > -	i915_driver_modeset_remove_noirq(i915);
> > > > > +	intel_modeset_driver_remove_noirq(i915);
> > > > >  =

> > > > > -	i915_reset_error_state(i915);
> > > > =

> > > > Moving the above later looks unrelated to this patch. The rest
> > > > looks
> > > > ok
> > > > to me.
> > > =

> > > i915_reset_error_state()? What is moving is things around it.
> > =

> > The order of i915_reset_error_state() and i915_gem_driver_remove() is
> > swapped now, which is an unrelated change.
> =

> It looks to me that i915_reset_error_state() should be executed after
> i915_gem_driver_remove() as some error could happen.

Yes, that make sense, but it should be a separate change. Please also
CC Chris on that.

> Will swap back for this patch and then in another patch move it again.

Ok, with that this patch is:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> > > > >  =

> > > > > -	intel_power_domains_driver_remove(i915);
> > > > > +	i915_driver_modeset_remove_noirq(i915);
> > > > > +
> > > > > +	i915_reset_error_state(i915);
> > > > >  =

> > > > >  	i915_driver_hw_remove(i915);
> > > > >  =

> > > > > -- =

> > > > > 2.26.1
> > > > > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
