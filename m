Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199ED969F24
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 15:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B2A10E113;
	Tue,  3 Sep 2024 13:38:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h5g06i5L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 171DE10E58A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 13:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725370688; x=1756906688;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WMDQWVfWFAPEm/gqJNwySAP2G4+AwqXHxyvmUoxKJOk=;
 b=h5g06i5Lfss4yH1H3Cg3AiEmQX2oIoNSOWxPgAD9cZ+YQpOnpWqDwM9+
 1JjOAHbhiD+FMJGOI42rVfI+tPGRJ/hqpyoT8KRLbyCE57KL01aZvjmnZ
 6SjQd8DFvalfNX8vqGLtruStL+S/qmTMdEx8Z37qcwHNmlEaLnhsT8ACI
 Ix8fmvkQIiiXtiGDHnr1U7LmUTh87nAckvC2uDToLG2ExQMZfWoxS6SYH
 z/HjA5nTKr9NpW4sOg3JoxrqG30BneKzlSzaTaD8RsNaTxSzwxNDPcypp
 0qIMSCJKYGZw4faUyKMmWlzJlvmf+z7NcuIU8ypwNxHBp4yD8GY0+BSSi g==;
X-CSE-ConnectionGUID: g+dzDvhXS5unw3HxFerP4Q==
X-CSE-MsgGUID: XdiGta+vQb2dFPUz6wewfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23482492"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="23482492"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 06:38:05 -0700
X-CSE-ConnectionGUID: eM+4Ai8dTOernp2OCaV3gQ==
X-CSE-MsgGUID: 1yMzVxNSQDm0tJj8uS7Omg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64931059"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 03 Sep 2024 06:38:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Sep 2024 16:38:01 +0300
Date: Tue, 3 Sep 2024 16:38:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrey Toloknev <andreyhack@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Subject: Re: i915 | Bug in virtual PCH detection
Message-ID: <ZtcROWI3qildcflQ@intel.com>
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
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

On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:
> Hello!
> 
> I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500 series of
> Intel chipsets).
> For that configuration there was a patch for adding support for Tiger Lake
> PCH with CometLake CPU in 2021 -
> https://patchwork.freedesktop.org/patch/412664/
> This patch made possible correct detection of such chipset and cpu
> configuration for i915 kernel module. Without it there was no output to any
> display (HDMI/DP/DVI, even VGA).
> 
> But this patch doesn't touch intel_virt_detect_pch method, when you
> passthrough iGPU to a virtual machine.
> So, virtual PCH incorrectly detects as Cannon Lake and you have no output
> to a physical display with i915 driver:
> 
> [    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
> Assuming PCH ID a300
> [    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Cannon
> Lake PCH (CNP)
> 
> 
> The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in method
> intel_virt_detect_pch:
> 
> else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
> 
> id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
> 
> It must be:
> 
> else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> IS_GEN9_BC(dev_priv))
> 
> id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
> 
> 
> After that small change you get correct detection of PCH and have output to
> a physical display in VM with passthrough iGPU:
> 
> [   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
> Assuming PCH ID a080
> [   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Tiger
> Lake LP PCH
> 
> 
> All kernel versions in any distro since 2021 are affected by this small bug.
> The patch for i915 module of the actual kernel version is in attachment.

You fix one CPU+PCH combo, but break the other. I don't think there is
any way to handle this mess in intel_virt_detect_pch(). The best thing
would be if the virtual machine would advertise the correct ISA/LPC
bridge, then the heiristic is not even invoked. If that's not possible
for some reason then I suppose we'd need a modparam/etc. so the user
can specify the PCH ID by hand.

-- 
Ville Syrjälä
Intel
