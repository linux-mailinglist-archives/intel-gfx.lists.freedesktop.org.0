Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC317456D4C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 11:30:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C87E6EA8C;
	Fri, 19 Nov 2021 10:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADA8F6EA8C
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 10:30:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="295208275"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="295208275"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 02:30:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="495815839"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 19 Nov 2021 02:30:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Nov 2021 12:30:33 +0200
Date: Fri, 19 Nov 2021 12:30:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YZd8yaUEE4tca+D8@intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-2-ville.syrjala@linux.intel.com>
 <YZKvXNyv1bAcU2Xx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YZKvXNyv1bAcU2Xx@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Bump DSL linemask to 20 bits
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 15, 2021 at 02:05:00PM -0500, Rodrigo Vivi wrote:
> On Fri, Nov 12, 2021 at 09:38:05PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Since tgl PIPE_DSL has 20 bits for the scanline. Let's bump our
> > definition to match. And while at it let's also add the define
> > for the current field readback.
> > 
> > We can also get rid of the gen2 vs. gen3+ nonsense since none
> > of the extra bits ever did anything and just always read
> > as zero.
> 
> You are stepping over reserved bits on older platforms here.
> 
> I understand that must probably hw is not using this for anything
> and the reads are only zero. But I'm always afraid of opening
> precedence for this kind of assumptions and end up stepping
> over some reserved bit that hw is using for something else
> but not documented.

We do this in other places too in order to keep the code
simple. I think it's fine for cases where all old platforms
had a smaller bitfield which is extended in later platforms.
That is, assuming all the bits were unused (and read as zero)
in the old platforms, which is the case here.

The thing we probably shouldn't do is make the bitfield larger
proactively for future platforms since we can't know if some of
the currently unused bits might end up being used for something
else in the future.

I really hope we don't have any undocumented bits anywhere since
those can screw us up in a lot more ways than this. If we do find
any undocuemnted bits we really need to file bspec issues for those.

-- 
Ville Syrjälä
Intel
