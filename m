Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8D6A1424F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 20:31:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C8410E211;
	Thu, 16 Jan 2025 19:31:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I1aIAyYO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5838810E211;
 Thu, 16 Jan 2025 19:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737055906; x=1768591906;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=S17O3qbcna9x4gwGVVj/3mlrw0DKvMu4yiRup/a+lH4=;
 b=I1aIAyYOxfFOijAeqFAuO9Fo5XTnc5z1Km3Qt1xgYB8+KaxjRAQQZnIg
 FZxghUhkWJXXWz6aQyglM7OIzGvgLmoHiGIkomuyMNoYkBnYqrVZR3qxF
 8lVSwBtJC0MNwGIjAe6LZp7bem/zbrVvkkJgnHQ7r3IxQzczFGqvV7c8k
 QGdbI9cLyH2Y3qHQ40Jht/txYoEI0vS9SYdl8DynzoYR/qefAqfa8wn6U
 U6yRrJoECSmzokeFTx4MRpD7AgfoQyegIK40di9Qmti8gnoDPZk24gZ4J
 ai49fFMRTz/FrsRJGhSOOjnysImY8QmUBpwvqZ5jeBV1+QmENBrxvqiwg g==;
X-CSE-ConnectionGUID: hBhLrLI5R86e6ofIv0dTeA==
X-CSE-MsgGUID: iJFfukYjT0y+N4ZldQY3qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37580808"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37580808"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 11:31:46 -0800
X-CSE-ConnectionGUID: 8/j9lukcTrO5sv/fKOFBcg==
X-CSE-MsgGUID: Y3VQwyjzTRi3augI8EXwsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105737374"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 11:31:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 21:31:42 +0200
Date: Thu, 16 Jan 2025 21:31:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
Message-ID: <Z4lenh5MrgHvzQNt@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com>
 <173687228001.2823.13065824358956469360@intel.com>
 <Z4afvb-BsavfTC54@intel.com>
 <173694505428.3159.15238384116175670777@intel.com>
 <Z4fPO_hBt9tr-gY1@intel.com>
 <173695792830.3159.388878827702803545@intel.com>
 <173697006552.3159.7695562530356807466@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173697006552.3159.7695562530356807466@intel.com>
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

On Wed, Jan 15, 2025 at 04:41:05PM -0300, Gustavo Sousa wrote:
> Quoting Gustavo Sousa (2025-01-15 13:18:48-03:00)
> >Quoting Ville Syrjälä (2025-01-15 12:07:39-03:00)
> >>On Wed, Jan 15, 2025 at 09:44:14AM -0300, Gustavo Sousa wrote:
> >>> Quoting Ville Syrjälä (2025-01-14 14:32:45-03:00)
> >>> >On Tue, Jan 14, 2025 at 01:31:20PM -0300, Gustavo Sousa wrote:
> >>> >> Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
> >>> >> >On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> >>> >> >> The CMTG is a timing generator that runs in parallel with transcoders
> >>> >> >> timing generators and can be used as a reference for synchronization.
> >>> >> >>
> >>> >> >> On PTL (display Xe3_LPD), we have observed that we are inheriting from
> >>> >> >> GOP a display configuration with the CMTG enabled. Because our driver
> >>> >> >> doesn't currently implement any CMTG sequences, the CMTG ends up still
> >>> >> >> enabled after our driver takes over.
> >>> >> >>
> >>> >> >> We need to make sure that the CMTG is not enabled if we are not going to
> >>> >> >> use it. For that, let's add a partial implementation in our driver that
> >>> >> >> only cares about disabling the CMTG if it was found enabled during
> >>> >> >> initial hardware readout. In the future, we can also implement sequences
> >>> >> >> for enabling CMTG if that becomes a needed feature.
> >>> >> >
> >>> >> >Doesn't this patch disable the CRTC, not the CMTG?
> >>> >> 
> >>> >> It disables the CMTG and that's it for LNL and PTL.
> >>> >> 
> >>> >> For platforms prior to LNL, disabling the CMTG requires a modeset;
> >>> >> specifically for those, the CRTC is also disabled during the
> >>> >> sanitization process (not sure if there is a clean way of forcing a
> >>> >> modeset from the sanitization routine).
> >>> >
> >>> >I'm not sure why this whole global state stuff is needed here.
> >>> >It seems to me that this should be handled more or less the same
> >>> >as port sync. Ie:
> >>> >
> >>> >- track the cmtg state in intel_crtc_state
> >>> 
> >>> The main reasons I implemented CMTG state as a global state were that
> >>> CMTG is not a exactly per-pipe thing and it could affect multiple pipes
> >>> (A and B), at least not on pre-LNL platforms.
> >>
> >>I suppose. But it doesn't seem to be fully really independent
> >>thing either especially given the dependency to the port PLL
> >>and such, and that's all handled per-pipe.
> >
> >To make matters worse, it is possible for CMTG A being driven by PHY B
> >and vice-versa.
> 
> So... I'm trying to come up with a way to handle CMTG state as part of
> the intel_crtc_state. I have some questions that I was hoping you could
> help me with...
> 
>  1) For those pre-LNL platforms that have a single CMTG, what would be
>     your suggestion?
> 
>     I was thinking about keeping the state on pipe A's intel_crtc_state, but
>     then how to handle when pipe B's eDP TG is sync'ing with the CMTG?
>     Should we just pull in pipe A's into the atomic state and deal with it?

I was thinking we could just have a bitmask of pipes just like with
port sync. If one needs a modeset we could then suck all of them in.
Althought for just the initial disable thing we'd not really need even
that I guess since we'd any flag all of them. I suppose the one whose
port PLL is providing the clock should be considered the primary
for the purposes of the modeset sequence.

> 
>     If it is just transcoder B's eDP that is hooked up wit the CMTG, pulling
>     pipe A into the atomic state only to handle the CMTG seems rather
>     unnecessary to me. Just accept it and live on?
> 
>  2) As of LNL, eDP A would sync only with CMTG A and eDP B, with CMTG B.
>     So, I guess having each state in the respective intel_crtc_state
>     seems okay here.
> 
>     If we were to encounter a CMTG dual sync mode (is it fair to
>     consider that a possibility from the GOP?), since only care about
>     disabling of CMTGs for now, I guess we do not need to worry about
>     turning sure the secondary CMTG (which will also be disabled) into
>     primary, right?

Yeah, just making sure the thing gets disabled more or less
properly should suffice for now.

> 
>  3) There is also the case that we could have a CMTG (the single one in
>     pre-LNL; A or B for as of LNL) being clocked by a PHY that is not
>     being used to drive any transcoder. Not sure we could expect that
>     from GOP, but it is nevertheless a valid configuration.

Is there even a way to turn on a port PLL without turning on the whole
port in the current hw with its per-port PLLs?

> 
>     We probably wouldn't be able to disable the CMTG during the initial
>     modeset commit in this case, because we need the PHY up before
>     accessing CMTG registers, and such PHY would be already off because
>     of our sanitization routine after hardware state readout.
> 
>     Since our driver doesn't even model the PHY being active and not
>     driving a transcoder (to the best of my knowledge), should we keep
>     this case to be dealt with in the future?
> 
> --
> Gustavo Sousa

-- 
Ville Syrjälä
Intel
