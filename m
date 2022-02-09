Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9214AEF4E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 11:31:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 744E810E6F1;
	Wed,  9 Feb 2022 10:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD55F10E6AE
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 10:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644402698; x=1675938698;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8vMj9Ex0tfKhPUE3dheFXqg2zaW7cKKNoOyo2eIPPvA=;
 b=WYy7wVqU3po1+wi/yDoc4kUoTt9wFLR5pTW07IgBOWMSGIOLtlcxmHj3
 ThDfBcgbf1Ho7LPMce5n3ZADnUu2viNdtuTUBK8ehTnz5TGA7VLrA4atj
 8b2GvNbc8yx4PCLev/6OvVr+jNvU79ol0vOrCF7ohSsnYctlwcEKMUgTN
 QgFLXzuHcw1OTxYlYLQPWjIYYl51/VB6hBCqf5R6YZ/KVIr2FTZGGG/Qf
 8byhRUGli7LElpmqjoPWENNFCBsmP6BKriTTcRpyM78eMwHyofI4B18ye
 IYDgf8cYNYCUN4Ix4rV3FGriUBmBqKdtX+7Gd0ENWgR4ng7kWsn5YnOZd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="248934562"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="248934562"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 02:31:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="678496021"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga001.fm.intel.com with SMTP; 09 Feb 2022 02:31:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 12:31:33 +0200
Date: Wed, 9 Feb 2022 12:31:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <YgOYBfQJF7hIzEPE@intel.com>
References: <20220201153354.11971-1-lukasz.bartosik@semihalf.com>
 <87r18mtwn7.fsf@intel.com>
 <CAK8ByeKSWfeyUB73rVXQr2VKMFxNYZk9KxwYjsws3URFGfk50A@mail.gmail.com>
 <f43df8568a9a49cc9ee21f917ab4cb4a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f43df8568a9a49cc9ee21f917ab4cb4a@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: fix null pointer dereference
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
Cc: "upstream@semihalf.com" <upstream@semihalf.com>,
 =?utf-8?Q?=C5=81ukasz?= Bartosik <lb@semihalf.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 09, 2022 at 02:02:05AM +0000, Sripada, Radhakrishna wrote:
> 
> 
> > -----Original Message-----
> > From: Łukasz Bartosik <lb@semihalf.com>
> > Sent: Tuesday, February 8, 2022 8:20 AM
> > To: Jani Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
> > <joonas.lahtinen@linux.intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> > Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> > gfx@lists.freedesktop.org; upstream@semihalf.com; Ville Syrjälä
> > <ville.syrjala@linux.intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>; Srivatsa, Anusha <anusha.srivatsa@intel.com>
> > Subject: Re: [PATCH v1] drm/i915: fix null pointer dereference
> > 
> > Have you had a chance to review the patch ? The crash is still there
> > on v5.17-rc3.
> > 
> > Thanks,
> > Lukasz
> > 
> > wt., 1 lut 2022 o 16:49 Jani Nikula <jani.nikula@linux.intel.com> napisał(a):
> > >
> > >
> > > Thanks for the patch, adding some Cc's from the commit that regressed.
> > >
> > > BR,
> > > Jani.
> > >
> > > On Tue, 01 Feb 2022, Lukasz Bartosik <lb@semihalf.com> wrote:
> > > > From: Łukasz Bartosik <lb@semihalf.com>
> > > >
> > > > Asus chromebook CX550 crashes during boot on v5.17-rc1 kernel.
> > > > The root cause is null pointer defeference of bi_next
> > > > in tgl_get_bw_info() in drivers/gpu/drm/i915/display/intel_bw.c.
> > > >
> > > > BUG: kernel NULL pointer dereference, address: 000000000000002e
> > > > PGD 0 P4D 0
> > > > Oops: 0002 [#1] PREEMPT SMP NOPTI
> > > > CPU: 0 PID: 1 Comm: swapper/0 Tainted: G     U            5.17.0-rc1
> > > > Hardware name: Google Delbin/Delbin, BIOS Google_Delbin.13672.156.3
> > 05/14/2021
> > > > RIP: 0010:tgl_get_bw_info+0x2de/0x510
> > > > ...
> > > > [    2.554467] Call Trace:
> > > > [    2.554467]  <TASK>
> > > > [    2.554467]  intel_bw_init_hw+0x14a/0x434
> > > > [    2.554467]  ? _printk+0x59/0x73
> > > > [    2.554467]  ? _dev_err+0x77/0x91
> > > > [    2.554467]  i915_driver_hw_probe+0x329/0x33e
> > > > [    2.554467]  i915_driver_probe+0x4c8/0x638
> > > > [    2.554467]  i915_pci_probe+0xf8/0x14e
> > > > [    2.554467]  ? _raw_spin_unlock_irqrestore+0x12/0x2c
> > > > [    2.554467]  pci_device_probe+0xaa/0x142
> > > > [    2.554467]  really_probe+0x13f/0x2f4
> > > > [    2.554467]  __driver_probe_device+0x9e/0xd3
> > > > [    2.554467]  driver_probe_device+0x24/0x7c
> > > > [    2.554467]  __driver_attach+0xba/0xcf
> > > > [    2.554467]  ? driver_attach+0x1f/0x1f
> > > > [    2.554467]  bus_for_each_dev+0x8c/0xc0
> > > > [    2.554467]  bus_add_driver+0x11b/0x1f7
> > > > [    2.554467]  driver_register+0x60/0xea
> > > > [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> > > > [    2.554467]  i915_init+0x2c/0xb9
> > > > [    2.554467]  ? mipi_dsi_bus_init+0x16/0x16
> > > > [    2.554467]  do_one_initcall+0x12e/0x2b3
> > > > [    2.554467]  do_initcall_level+0xd6/0xf3
> > > > [    2.554467]  do_initcalls+0x4e/0x79
> > > > [    2.554467]  kernel_init_freeable+0xed/0x14d
> > > > [    2.554467]  ? rest_init+0xc1/0xc1
> > > > [    2.554467]  kernel_init+0x1a/0x120
> > > > [    2.554467]  ret_from_fork+0x1f/0x30
> > > > [    2.554467]  </TASK>
> > > > ...
> > > > Kernel panic - not syncing: Fatal exception
> > > >
> > > > Fixes: c64a9a7c05be ("drm/i915: Update memory bandwidth formulae")
> 
> LGTM,
> Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> > > > Signed-off-by: Łukasz Bartosik <lb@semihalf.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_bw.c | 16 +++++++++-------
> > > >  1 file changed, 9 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > index 2da4aacc956b..bd0ed68b7faa 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > @@ -404,15 +404,17 @@ static int tgl_get_bw_info(struct
> > drm_i915_private *dev_priv, const struct intel
> > > >               int clpchgroup;
> > > >               int j;
> > > >
> > > > -             if (i < num_groups - 1)
> > > > -                     bi_next = &dev_priv->max_bw[i + 1];
> > > > -
> > > >               clpchgroup = (sa->deburst * qi.deinterleave / num_channels) << i;
> > > >
> > > > -             if (i < num_groups - 1 && clpchgroup < clperchgroup)
> > > > -                     bi_next->num_planes = (ipqdepth - clpchgroup) / clpchgroup + 1;
> > > > -             else
> > > > -                     bi_next->num_planes = 0;
> > > > +             if (i < num_groups - 1) {
> > > > +                     bi_next = &dev_priv->max_bw[i + 1];
> > > > +
> > > > +                     if (clpchgroup < clperchgroup)
> > > > +                             bi_next->num_planes = (ipqdepth - clpchgroup) /
> > > > +                                                    clpchgroup + 1;
> > > > +                     else
> > > > +                             bi_next->num_planes = 0;
> > > > +             }

BTW this code makes me rather suspicious overall. num_planes==0 means
no planes can be enabled at all. Is that even correct? IIRC the icl
code did not have qgv points that had num_planes==0.

Also IIRC I added that 'num_planes = ... + 1' to the icl code
ot make it actually sensible. The icl sample code didn't have
that +1 and instead it used '>' as opposed to '>=' in the
comparison to the actual number of enabled planes thus
implying the +1. But now here in the tgl+ code we have the
+1 for in one branch of the if, but the other branch just has
a 0 (so no +1).

And it doesn't help that the code is doing this weird [i] + [i+1]
stuff inside the single loop. Would be a lot more legible if we
just did two loops I think. Though I see the same awkward construct
is used in spec sample code as well.

-- 
Ville Syrjälä
Intel
