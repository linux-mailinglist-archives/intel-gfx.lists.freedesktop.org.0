Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B495A4F91
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 16:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7599210F352;
	Mon, 29 Aug 2022 14:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A974910F352
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 14:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661784493; x=1693320493;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=JQwv8Nd64M8rHYiYu6xV6n4fl4GhPLuT2oi66GZ51sA=;
 b=ZEnyP/eZmwkQgjMIQkad7YcXgf5OKBGUtMeI5jbYvFOwVe1mNDjurgmR
 PRGZIaXfPf7J4Bz5mNye4LFuFLfuJtrl22ppqB/fe79bBo/8HcCNr5s65
 mJLuk9kxqJor3Q7cXm8nfbp5HLNpmVv1pImr04lI0RPIBFv/REOIbHG0d
 CSsS9qt8wYyGXlGCIm7yVE91V9tGhHNltABsjpIv7jW4z44D6z+qviJSm
 YtIV+IaiV5bc2QeeEEmdL82DX5ItCHPCLoEnvHfipwnw8fk9QkYSQrFtR
 i+lUHpwMuIr16qt0u+ZDdP5I5K9+5Q18cyNd0ni+1f4Y51grlqCMNjQ6g g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="281882917"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="281882917"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 07:46:29 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="588188833"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 07:46:26 -0700
Date: Mon, 29 Aug 2022 17:46:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <YwzRPkKSeeYXWtgn@ideak-desk.fi.intel.com>
References: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
 <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
 <MWHPR11MB19353E66246E6D9CB5F021D4B2709@MWHPR11MB1935.namprd11.prod.outlook.com>
 <MWHPR11MB193572EF5A173CC9F42861DDB2709@MWHPR11MB1935.namprd11.prod.outlook.com>
 <YwdURvTR2xakrFK0@ideak-desk.fi.intel.com>
 <MWHPR11MB1935880C25E9DDF3ED205669B2769@MWHPR11MB1935.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MWHPR11MB1935880C25E9DDF3ED205669B2769@MWHPR11MB1935.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 29, 2022 at 09:45:53AM +0300, Golani, Mitulkumar Ajitkumar wrote:
> Hi Imre,
> 
> > [...]
> > Still not sure what's going. Both i915_pci_probe() and
> > i915_pci_remove()->i915_driver_remove() is called with a runtime PM
> > reference - taken at local_pci_probe() and pci_device_remove() - and so the
> > device should be runtime resumed at those points.
> >
> 
> Yes reference is being taken at local_pci_probe() and pci_device_remove() but
> During i915_selftest@perf, it is loading and unloading i915_pci_probe() and
> i915_pci_remove(), here pci_device_remove() is not being called, that's why
> runtime PM reference is not present during i915_driver_remove().

Ok, that explains it. Taking an actual RPM reference unconditionally in
i915_driver_remove() should fix this (instead of the
disable/enable_rpm_wakeref_asserts() calls there):

wakeref = intel_runtime_pm_get();
...
intel_runtime_pm_put(wakeref);

While at it the same change should be applied in i915_driver_release()
as well for consistency.

> > > > > >   disable_rpm_wakeref_asserts(rpm);
> > > > > >
> > > > > >   intel_opregion_notify_adapter(dev_priv, PCI_D0);
> > > > > > --
> > > > > > 2.25.1
> > > > > >
