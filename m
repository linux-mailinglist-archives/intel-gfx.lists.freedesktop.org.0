Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3A98C2238
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 12:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFB1710E2FB;
	Fri, 10 May 2024 10:34:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NY8K5RzM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40C710E2FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 10:34:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715337263; x=1746873263;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hv04sRqCA31uFmQ4yw/szZ1Jv9n99l6K92wWek1+Yuc=;
 b=NY8K5RzMASCRVsNgbgMDgYdeKev9XtxlFYvUS9Vnn7lSWjR0nTyfIy6G
 DrmQy2oP5m7ImawkrgenHH0dwscUT6YBlYTHF8l/JAHuVOjtrhlGJ5FwW
 laz/AFrBQu3BoylFrzj6vP3vrPi5XxmCJY9rS9hHvIS/p6dJBDccwF1d9
 kuB06QvwiQYAJbVvoQMzsavk8mDi/bou7tnwm/A7FySUjfs2xGKLPTxpE
 Acgc/RehRPwoFt9rOVZJ5GlJ5AlCUfDSCpxSTuDNs9B4HmpOUIfwraBBi
 CNUJH4eGdoXCvPgcKAIRfx4Xg2aatnYO6ZtDeIJUtnyRwJwoc+X2NRCfR Q==;
X-CSE-ConnectionGUID: 29ANKpe6R8G73jp7jK61Xg==
X-CSE-MsgGUID: vSSrz0z7RvWNjsPYvfNFdg==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11190397"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="11190397"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 03:34:21 -0700
X-CSE-ConnectionGUID: o/tSbNKlSx+2TIjNlt6A2Q==
X-CSE-MsgGUID: FzdSfPQcSeidHxKFN0+Ibw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29519006"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 May 2024 03:34:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 May 2024 13:34:17 +0300
Date: Fri, 10 May 2024 13:34:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/i915: don't include CML PCI IDs in CFL
Message-ID: <Zj34KTmYP6VNQ3CS@intel.com>
References: <cover.1715086509.git.jani.nikula@intel.com>
 <bebbdad2decb22f3db29e6bc66746b4a05e1387b.1715086509.git.jani.nikula@intel.com>
 <Zjow5HXrXpg2cuOA@intel.com> <ZjtapMK6kadLqHCN@intel.com>
 <87o79gjznd.fsf@intel.com> <ZjtprkZVSQ-o_qch@intel.com>
 <87le4ihsmr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87le4ihsmr.fsf@intel.com>
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

On Fri, May 10, 2024 at 01:24:12PM +0300, Jani Nikula wrote:
> On Wed, 08 May 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, May 08, 2024 at 02:45:10PM +0300, Jani Nikula wrote:
> >> On Wed, 08 May 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > On Tue, May 07, 2024 at 09:47:16AM -0400, Rodrigo Vivi wrote:
> >> >> On Tue, May 07, 2024 at 03:56:48PM +0300, Jani Nikula wrote:
> >> >> > It's confusing for INTEL_CFL_IDS() to include all CML PCI IDs. Even if
> >> >> > we treat them the same in a lot of places, CML is a platform of its own,
> >> >> > and the lists of PCI IDs should not conflate them.
> 
> [snip]
> 
> >> >> Why only CML and not AML and WHL as well?
> >> >
> >> > Why do we even have CML as a separate platform? The only difference 
> >> > I can see is is that we do allow_read_ctx_timestamp() for CML but
> >> > not for CFL. Does that even make sense?
> >> 
> >> git blame tells me:
> >> 
> >> 5f4ae2704d59 ("drm/i915: Identify Cometlake platform")
> >> dbc7e72897a4 ("drm/i915/gt: Make the CTX_TIMESTAMP readable on !rcs")
> >
> > Right. That explains why we need it on CML+. But is there some reason
> > we  can't just do it on CFL as well, even if not strictly necessary?
> > I would assume that setting FORCE_TO_NONPRIV on an already
> > non-privileged register should be totally fine.
> 
> I have absolutely no idea.
> 
> I'm somewhat thinking "CML being a separate platform" is a separate
> problem from "CFL PCI ID macros including CML".
> 
> I'm starting to think the PCI ID macros should be grouped by "does the
> platform have a name of its own",

That and/or "does bspec have a separate 'Confgurations <platform>' page?"

> not by how those macros are actually
> used by the driver. Keeping them separate at the PCI ID macro level just
> reduces the pain in maintaining the PCI IDs, and lets us wiggle stuff
> around in the driver how we see fit.

Aye.

> 
> And that spins back to Rodrigo's question, "Why only CML and not AML and
> WHL as well?". Yeah, indeed.
> 
> If we decide to stop treating CML as a separate platform in the
> *driver*, that's another matter.

Sure. Seeing it just got me wondering...

-- 
Ville Syrjälä
Intel
