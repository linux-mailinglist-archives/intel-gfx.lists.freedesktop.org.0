Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABC452DFCE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 00:03:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68D3110E115;
	Thu, 19 May 2022 22:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DDCD10E056;
 Thu, 19 May 2022 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652997833; x=1684533833;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nEJpi71kkST6HOpHEsRnRPz+IMUSLuxmUQ/c/6L/384=;
 b=GCqJJY0oYDZulvpa5Lg21YOnlY4nZB4cOR54uCgZL4ytgc/RvdBnDw05
 ZZscRs4wca5DqjTnpzREvATbXkjh1IBgsNhT+h8e8b6aPvYtqrlBdiExt
 DuLsPnT3gQX8e4rNBvRdkTy7GzbZOiXDfqKZGXRojWCT6BgMmTxxVJd4/
 iUe7Oqs88cYwtSeLqz7hss1PDWjYI4lguSUqRf6/bJU0NlPqTy6sqG5oS
 VT/Y07JJsvyjsFCACpXzmy0xPHjGdHQz0Kl1BMdzTfaEMKMdUhjU4cuDf
 klYzCB1cp/1Ia9SCX8zzPjTCnP6lADiKQ9S1BbMw/pwcoPqLFg4mBqI+u Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="259972005"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="259972005"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 15:03:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="598831950"
Received: from annahenx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.37.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 15:03:47 -0700
Date: Fri, 20 May 2022 00:03:44 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Message-ID: <Yoa+wBHpVjCBZjH0@intel.intel>
References: <20220318233938.149744-1-andi.shyti@linux.intel.com>
 <20220318233938.149744-4-andi.shyti@linux.intel.com>
 <218ed800-d267-fc6c-2e07-233d1519f2b6@intel.com>
 <c29bd965-eaff-5767-34a4-1eee27a7fe3f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c29bd965-eaff-5767-34a4-1eee27a7fe3f@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 3/7] drm/i915: Prepare for multiple GTs
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Daniele,

> > > @@ -909,6 +903,8 @@ int i915_driver_probe(struct pci_dev *pdev,
> > > const struct pci_device_id *ent)
> > >       i915_ggtt_driver_late_release(i915);
> > >   out_cleanup_mmio:
> > >       i915_driver_mmio_release(i915);
> > > +out_tiles_cleanup:
> > > +    intel_gt_release_all(i915);
> > 
> > We don't seem to call intel_gt_release_all() from driver_release(), so
> > we might be leaking something there. I wanted to send a patch to add the
> > call at the same place in the flow as in this error path, but then I
> > noticed that i915_driver_late_release(), which we call a few lines
> > below, calls intel_gt_driver_late_release_all(), which seems to expect
> > that the GTs are still allocated, so we probably need to flip the order
> > those are called in, or move the cleanup code from late_release() to
> > late_release_all() (or vice versa).
> > Andi, can you have a look at this?

well spotted! I will check it.

> Ping! :)

Sorry for taking so long for replying. I'm on it, now.

Thank you,
Andi
