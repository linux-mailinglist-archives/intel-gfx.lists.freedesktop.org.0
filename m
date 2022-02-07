Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E68A4AB5E4
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 08:32:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4627F10E466;
	Mon,  7 Feb 2022 07:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87DDF10E466
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 07:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644219121; x=1675755121;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P/ts5g6pZb8cfW/Xjlqjf1M/hRCJWP7xVTeiGg6Nqmo=;
 b=fG/pjJ6JoDF1qV0uDnnxBG4ULP/V7fKHPOEj0uRjqYhL/JuVTtEQ3tWw
 VndTuS1Oq09K/LHvccI2GgDX43nBhbzd768IxkDTaL6aKC//EGAdA7jM1
 em9bgN5FxLi/7KD5fI6cG+cs79fPx4kVsHS3sc+Yxl9ZXAxuow6N8R07P
 CjZibxaA9kYSJNXK/LpHZfviou2Is1kAWtvYG8oAQWbDH63oid+P6lk5o
 puvXF0plgFJNCv6aBRt6GUQoLKyFyaLPg9Gr1XJsyldySjj/T2dpf/ARD
 AjtmKXgqZftc/gMU16RtKJDfm391ywWtCOroxr8WzZ43DeUJdmSTLd8Sj w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="309405304"
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="309405304"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 23:32:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,349,1635231600"; d="scan'208";a="539982883"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 06 Feb 2022 23:31:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Feb 2022 09:31:58 +0200
Date: Mon, 7 Feb 2022 09:31:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YgDK7qd6kTG/ohK3@intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-7-ville.syrjala@linux.intel.com>
 <20220204212746.GA23292@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220204212746.GA23292@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915: Introduce
 intel_crtc_is_bigjoiner_{slave, master}()
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

On Fri, Feb 04, 2022 at 01:27:54PM -0800, Navare, Manasi wrote:
> On Thu, Feb 03, 2022 at 08:38:19PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Introduce helpers to query whether the crtc is the slave/master
> > for bigjoiner. This decouples most places from the exact
> > state layout we use to track this relationship, allowing us
> > to change and extend it more easily.
> 
> So even with the bitmask approach, we still plan to have bools for bigjoiner_slave?

Nope. No longer necessary.

> 
> > 
> > Performed with cocci:
> > @@
> > expression S, E;
> > @@
> > (
> >   S->bigjoiner_slave = E;
> > |
> > - S->bigjoiner_slave
> > + intel_crtc_is_bigjoiner_slave(S)
> > )
> > 
> > @@
> > expression S, E;
> > @@
> > (
> > - E && S->bigjoiner && !intel_crtc_is_bigjoiner_slave(S)
> > + E && intel_crtc_is_bigjoiner_master(S)
> > |
> > - S->bigjoiner && !intel_crtc_is_bigjoiner_slave(S)
> > + intel_crtc_is_bigjoiner_master(S)
> > )
> > 
> > @@
> > expression S;
> > @@
> > - (intel_crtc_is_bigjoiner_master(S))
> > + intel_crtc_is_bigjoiner_master(S)
> > 
> > @@
> > expression S, E1, E2, E3;
> > @@
> > - intel_crtc_is_bigjoiner_slave(S) ? E1 : S->bigjoiner ? E2 : E3
> > + intel_crtc_is_bigjoiner_slave(S) ? E1 : intel_crtc_is_bigjoiner_master(S) ? E2 : E3
> > 
> > @@
> > typedef bool;
> > @@
> > + bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
> > + {
> > + 	return crtc_state->bigjoiner_slave;
> > + }
> > +
> >   intel_master_crtc(...) {...}
> > 
> > @@
> > typedef bool;
> > @@
> > + bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state)
> > + {
> > + 	return crtc_state->bigjoiner && !crtc_state->bigjoiner_slave;
> > + }
> > +
> >   intel_master_crtc(...) {...}
> > 
> > @@
> > typedef bool;
> > identifier S;
> > @@
> > - bool is_trans_port_sync_mode(const struct intel_crtc_state *S);
> > + bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
> > + bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
> > + bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
> 
> Is all of the above part of the commit message? Dont understand why its changing is_trans_port_sync_mode() ?

I had to touch that line to get coccinelle to actually do the
transformation. For some reason it refused to do anything if
I just tried to add the two new lines.

-- 
Ville Syrjälä
Intel
