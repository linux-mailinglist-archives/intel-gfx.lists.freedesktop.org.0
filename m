Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11751A10DDA
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 18:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A03E310E41D;
	Tue, 14 Jan 2025 17:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KU64ngjj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B7510E40F;
 Tue, 14 Jan 2025 17:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736876048; x=1768412048;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6rSx7ELLJOEUIgV58FGsM9/kQGRoynYCRCuFHfIM4WI=;
 b=KU64ngjjzGjn0srIeLTSXDtw6T3KNrPwKXfQ0oGhpV4/RPQw2VjShWFA
 9BPfT9WK15JlKoF0yx+3yM5TFBQV/AWwC5jGPFrQRJg0AqlIMUYbhnlNK
 8UI8eH9iLa/7gMhTwm6vdKBEX2n8R8RjvQCDXuPeJMHOWlnsGsEARxwIN
 +htdItvXH0BqVixa6GMAgLerh7SB5dJ4lepxOZM4xbJ0jT1IGmsDyq3Jf
 FigSxIr6UbeXRXGXROvtNInDNILxTVu3IjwrUgJlLZYLBtcRMMT/8qEU9
 aNPJi/7V43bTPnFNkFdj6Y6YsmXlltQybTSPVz29C/O4g2LzSzCFNcVan Q==;
X-CSE-ConnectionGUID: vLOiBaOKQU2zGAO9kV3Buw==
X-CSE-MsgGUID: ULuge+KCQWWIxMo6yEO+dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11315"; a="40947207"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="40947207"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 09:32:49 -0800
X-CSE-ConnectionGUID: X8V/RMPhRfym9eD9dl0dUg==
X-CSE-MsgGUID: UfZV5N5bSWygrVB1v83B1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="105042464"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 14 Jan 2025 09:32:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Jan 2025 19:32:45 +0200
Date: Tue, 14 Jan 2025 19:32:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
Message-ID: <Z4afvb-BsavfTC54@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com>
 <173687228001.2823.13065824358956469360@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173687228001.2823.13065824358956469360@intel.com>
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

On Tue, Jan 14, 2025 at 01:31:20PM -0300, Gustavo Sousa wrote:
> Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
> >On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >> The CMTG is a timing generator that runs in parallel with transcoders
> >> timing generators and can be used as a reference for synchronization.
> >>
> >> On PTL (display Xe3_LPD), we have observed that we are inheriting from
> >> GOP a display configuration with the CMTG enabled. Because our driver
> >> doesn't currently implement any CMTG sequences, the CMTG ends up still
> >> enabled after our driver takes over.
> >>
> >> We need to make sure that the CMTG is not enabled if we are not going to
> >> use it. For that, let's add a partial implementation in our driver that
> >> only cares about disabling the CMTG if it was found enabled during
> >> initial hardware readout. In the future, we can also implement sequences
> >> for enabling CMTG if that becomes a needed feature.
> >
> >Doesn't this patch disable the CRTC, not the CMTG?
> 
> It disables the CMTG and that's it for LNL and PTL.
> 
> For platforms prior to LNL, disabling the CMTG requires a modeset;
> specifically for those, the CRTC is also disabled during the
> sanitization process (not sure if there is a clean way of forcing a
> modeset from the sanitization routine).

I'm not sure why this whole global state stuff is needed here.
It seems to me that this should be handled more or less the same
as port sync. Ie:

- track the cmtg state in intel_crtc_state
- read it out
- add it to the state checker
- add the necessary bits to the disable sequence
  (no need for enable right now I guess if we 
  force a disable)
- flag mode_changed=true for any crtc that has cmtg enabled
  in initial commit to force the modeset

I guess the one open question is how to deal with cases
where the same CMTG is used for two pipes (assuming that's
a thing?). We may need to extend the port_sync master/slave
handling in the enable/disable sequences to deal with cmtg
as well to make sure things are done in the right order.

Also it looks like CMTG is more or less a full blow trancoder
(ie. has a full set of timing registers). The docs are rather
confusing but it looks to me like they're saying that one
should still program the normal transcoder registers as well,
even when using CMTG. I guess if we ever implement proper
support for this we should at least have some kind of
sanity check to confirm that.

-- 
Ville Syrjälä
Intel
