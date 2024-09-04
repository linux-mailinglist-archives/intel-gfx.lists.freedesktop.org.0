Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B970496BD10
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 14:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F84710E7A6;
	Wed,  4 Sep 2024 12:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cOItTigt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6380610E7A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 12:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725454339; x=1756990339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Vkg2OJhzmsW3OXcVdo+fTT0ON/vs3zHb085+LrCVbMQ=;
 b=cOItTigtJuPwAZ2CPNH9B1lAvyemIoUOf9BE2VvPnDxFf0xtL3re20rs
 8VJwQIqZVjsLiZ6lIVcpueo4v6u49g3f0B+eNkwQ/fniFYm3S5Dtrw1yD
 inbbC3ZzT/PrHXa3bfWJBlBkdjXr3KC29bm6kJHZoRaDSq9AZgZZP5xba
 sxMYKUMPNkqszak6qLmDq6SrLJyATHYKHROM4Tan7W0QraLoqlpJd1WhX
 y0zf2I5i6Cez6BN7aNHJmG1GlpG4mWdwFRP5/Q5I6oiDWpHdLUnJp05Gu
 KAv1MXao+7aSHDBk+6X3S8dv3Gl0KuZdj1aoCc6NnzFaGVneN8wXtma+s g==;
X-CSE-ConnectionGUID: F88x2Dt7QZy/Umkuas/ipA==
X-CSE-MsgGUID: 4h7pDMAFSmyv3TrtyG7vAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41609843"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="41609843"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 05:52:19 -0700
X-CSE-ConnectionGUID: Z81RlZ8NQ5Ww08+0uKLNtg==
X-CSE-MsgGUID: vQrLRHmES4S4Jw5+HdwK6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65304377"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Sep 2024 05:52:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Sep 2024 15:52:15 +0300
Date: Wed, 4 Sep 2024 15:52:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrey Toloknev <andreyhack@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Subject: Re: i915 | Bug in virtual PCH detection
Message-ID: <ZthX_8S1iVjb0xND@intel.com>
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
 <ZtcROWI3qildcflQ@intel.com>
 <CAK88eJeLhHP+n1870ZAC0BY2OC-UcrU4E0vmkbBm_ndqZsTtNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK88eJeLhHP+n1870ZAC0BY2OC-UcrU4E0vmkbBm_ndqZsTtNQ@mail.gmail.com>
X-Patchwork-Hint: comment
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

On Wed, Sep 04, 2024 at 05:25:06PM +0500, Andrey Toloknev wrote:
> Hello!
> 
> Thanks for your reply, Ville.
> 
> I looked at the code again and understood you are definitely right about
> breaking other combinations of CPU+PCH with using IS_GEN9_BC in my patch.
> 
> Using libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the problem
> is connected with method intel_detect_pch(). It searches only for the first
> ISA Bridge.

Hmm. I wonder how many systems we'd break if we make it look
through all the bridges for a real match first, and only fall
back to intel_virt_detect_pch() if nothing was found...

> And the virtual ISA/LPC Bridge PCI in libvirt is hardcoded to address
> 00:01.0 - it's always first.
> So, method intel_detect_pch() correctly detects that the first bridge is
> virtual and then calls method intel_virt_detect_pch(), which just checks
> the iGPU platform and doesn't take into account the possible combination of
> Comet Lake CPU and Tiger Lake PCH.
> 
> Of course, It would be nice if we can have a universal modparam to specify
> PCH id by hand in future.
> But as a fast fix of that small bug I think one more bool modparam may be
> enough.
> I wrote the second version of patch which adds that bool modparam -
> force_tgp_vpch. It's false by default.
> When this param is true, we also check that the CPU is Comet Lake and then
> set PCH type as Tiger Lake in the method intel_virt_detect_pch().
> 
> The second version of patch is in attachment.
> 
> 
> вт, 3 сент. 2024 г. в 18:38, Ville Syrjälä <ville.syrjala@linux.intel.com>:
> 
> > On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:
> > > Hello!
> > >
> > > I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500 series of
> > > Intel chipsets).
> > > For that configuration there was a patch for adding support for Tiger
> > Lake
> > > PCH with CometLake CPU in 2021 -
> > > https://patchwork.freedesktop.org/patch/412664/
> > > This patch made possible correct detection of such chipset and cpu
> > > configuration for i915 kernel module. Without it there was no output to
> > any
> > > display (HDMI/DP/DVI, even VGA).
> > >
> > > But this patch doesn't touch intel_virt_detect_pch method, when you
> > > passthrough iGPU to a virtual machine.
> > > So, virtual PCH incorrectly detects as Cannon Lake and you have no output
> > > to a physical display with i915 driver:
> > >
> > > [    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
> > > Assuming PCH ID a300
> > > [    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found
> > Cannon
> > > Lake PCH (CNP)
> > >
> > >
> > > The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in method
> > > intel_virt_detect_pch:
> > >
> > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
> > >
> > > id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
> > >
> > > It must be:
> > >
> > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> > > IS_GEN9_BC(dev_priv))
> > >
> > > id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
> > >
> > >
> > > After that small change you get correct detection of PCH and have output
> > to
> > > a physical display in VM with passthrough iGPU:
> > >
> > > [   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
> > > Assuming PCH ID a080
> > > [   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Tiger
> > > Lake LP PCH
> > >
> > >
> > > All kernel versions in any distro since 2021 are affected by this small
> > bug.
> > > The patch for i915 module of the actual kernel version is in attachment.
> >
> > You fix one CPU+PCH combo, but break the other. I don't think there is
> > any way to handle this mess in intel_virt_detect_pch(). The best thing
> > would be if the virtual machine would advertise the correct ISA/LPC
> > bridge, then the heiristic is not even invoked. If that's not possible
> > for some reason then I suppose we'd need a modparam/etc. so the user
> > can specify the PCH ID by hand.
> >
> > --
> > Ville Syrjälä
> > Intel
> >
> 
> 
> -- 
> Best regards, Andrey Toloknev



-- 
Ville Syrjälä
Intel
