Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 157164251BC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 13:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65FC86E86E;
	Thu,  7 Oct 2021 11:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEBC56E86E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 11:09:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="207033595"
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="207033595"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 04:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,354,1624345200"; d="scan'208";a="439486699"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 07 Oct 2021 04:09:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Oct 2021 14:09:15 +0300
Date: Thu, 7 Oct 2021 14:09:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Dave Airlie <airlied@gmail.com>, intel-gfx@lists.freedesktop.org
Message-ID: <YV7VWyYyeNF4ep0d@intel.com>
References: <20211007031318.3088987-1-airlied@gmail.com>
 <87ee8xyumd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ee8xyumd.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC PATCH 0/8] drm/i915/display: refactor plane
 config + pin out
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

On Thu, Oct 07, 2021 at 01:52:42PM +0300, Jani Nikula wrote:
> On Thu, 07 Oct 2021, Dave Airlie <airlied@gmail.com> wrote:
> > This is another series in the refactor intel_display.c into more manageable
> > places.
> >
> > This moves the initial plane config and all the fb pin/unpin code out.
> >
> > It also refactors both a little to make the interfaces cleaner.
> 
> I had a few nitpicks I commented on. Overall this looks good to me, but
> I'd like Ville's input on the code movement at the high level, are the
> split and files sane etc. I can do the detailed review after that.

Some of it feels a bit ad-hoc, but I don't really have a better
idea for splitting some of these right now. So might as well go
with this I guess. cscope will find the stuff for me in the end,
at least after I remember to have it reindex.

-- 
Ville Syrjälä
Intel
