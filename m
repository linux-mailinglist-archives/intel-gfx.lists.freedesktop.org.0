Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE684AE9C87
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 13:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205E510E279;
	Thu, 26 Jun 2025 11:32:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RPwL2HWk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A82210E279;
 Thu, 26 Jun 2025 11:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750937524; x=1782473524;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gq/bMTMdynRkbjaoBXDaRsNLDVVDk/3ysvYQm1qny/M=;
 b=RPwL2HWkimY0nmn6NYuCRVPs0sfgCbivVo7Bk+ofyQDZnXTc12N6Yae3
 S80IiwljWlawA8JG+Vxa1F7C9e9jJDk9v8DVotFBLWEZDxGTX4QxF+vkb
 AWL+WZ8k1NOHM2ZG8yLy2+ww67NkkZHc86SyY6c3O05jzBJ9SVzUtDh2q
 FKzGii1e4TmeHfRsrtl6DV9EgqOcx78HisJm0+ICjxICE/OjUGPc2xIXr
 t4X6wmsYmGDefZ6aOLyoqA2lVfEZ6UnluAsAJNg676rsZhoxg90ICYI0/
 bv0pfUmsy4B91d4VloKJxZb5Y0IARjE8yV2GD14LDIwlgpz9usHvozJ/O g==;
X-CSE-ConnectionGUID: +gLoQy5pTnaXjOlvs3deAA==
X-CSE-MsgGUID: tG4QRk1URMKBnnRdoqiTDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53325190"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53325190"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 04:32:04 -0700
X-CSE-ConnectionGUID: uBJcLQ18SIW8E+qm8oC9Sg==
X-CSE-MsgGUID: CRrVo6QgRWasthqLibG25Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158251836"
Received: from ijarvine-desk1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.155])
 by orviesa005.jf.intel.com with SMTP; 26 Jun 2025 04:32:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Jun 2025 14:31:59 +0300
Date: Thu, 26 Jun 2025 14:31:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
Message-ID: <aF0vr8gQtw2Lfmx4@intel.com>
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
 <20250620124417.2041233-2-ankit.k.nautiyal@intel.com>
 <aFlnzzW7HhtcqWs7@intel.com>
 <5fe0cd00-291b-4e93-a93a-6f8e32db4541@intel.com>
 <aFrXN20jmuP_Hc01@intel.com>
 <3d26024d8750cb1c188da77f7d3b07fb5b2cc40b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3d26024d8750cb1c188da77f7d3b07fb5b2cc40b@intel.com>
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

On Wed, Jun 25, 2025 at 11:18:03AM +0300, Jani Nikula wrote:
> On Tue, 24 Jun 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Jun 24, 2025 at 10:10:53AM +0530, Nautiyal, Ankit K wrote:
> >> 
> >> On 6/23/2025 8:12 PM, Ville Syrjälä wrote:
> >> > On Fri, Jun 20, 2025 at 06:14:16PM +0530, Ankit Nautiyal wrote:
> >> >> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
> >> >> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
> >> >> TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
> >> >> not support TPS4. While this was intended to address instability observed
> >> >> on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
> >> >> and not for eDPRX.
> >> > I see no exception given for eDP regarding this rule. The only exception
> >> > allowed is that eDP can say DPCD_REV=1.4 + TPS4_SUPPORTED=0. So I still
> >> > claim that these eDP sinks are violating the spec.
> >> 
> >> Hmm.. Yes the spec allows eDP sinks to report DPCD_REV=1.4 and 
> >> TPS4_SUPPORTED, so perhaps eDPs claiming HBR3 with DPCD rev other than 
> >> rev 1.4 and not supporting TPS4 are indeed violating the spec.
> >> 
> >> Would it make sense to add a condition that checks for DPCD_REV=1.4.
> >> 
> >> Specifically:
> >> 
> >> if DPCD_REV=1.4 and TPS4_SUPPORTED = 0, then do not prune the HBR3 rate?
> >> 
> >> Or otherway if DPCD_REV!=1.4 and TPS4_SUPPORTER = 0, prune the HBR3 rate
> >> 
> >> This way the patch need not be reverted, but modified to address 
> >> instability issues for eDP panels that are not aligned with the spec.
> >> 
> >> That said, the gitlab issue#5969 [1] will still need another solution 
> >> since it seems to have DPCD rev 14 as per logs:
> >> 
> >> DPCD: 14 1e 44 41 00 00 01 80 02 00 02 00 00 0b 80
> >
> > I think we do need the quirk. But the commit message should IMO be
> > adjusted so that it doesn't claim that these panels are 100% legal.
> 
> Right. But are you okay with reverting 584cf613c24a ("drm/i915/dp:
> Reject HBR3 when sink doesn't support TPS4") i.e. allowing HBR3
> *without* TPS4 by default, and quirking the panel that can't handle
> HBR3?

Yeah, I think the revert+quirk for the one known bad system is the way
to go.

> 
> No matter what the spec says, this seems to be common. More regressing
> systems are cropping up, e.g. [1].
> 
> 
> BR,
> Jani.
> 
> 
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> 
> 
> 
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
