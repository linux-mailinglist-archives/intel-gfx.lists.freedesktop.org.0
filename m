Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6B54348A9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 12:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E236E964;
	Wed, 20 Oct 2021 10:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4336E29D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 10:10:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="229015366"
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="229015366"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 03:09:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,166,1631602800"; d="scan'208";a="444305751"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 20 Oct 2021 03:09:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Oct 2021 13:09:36 +0300
Date: Wed, 20 Oct 2021 13:09:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <YW/q4HXo7q/aceOj@intel.com>
References: <20211018094154.1407705-1-imre.deak@intel.com>
 <20211018094154.1407705-7-imre.deak@intel.com>
 <87fsswq0nx.fsf@intel.com>
 <20211020090624.GA1662819@ideak-desk.fi.intel.com>
 <87r1cgnhsf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r1cgnhsf.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/dp: Sanitize link common rate
 array lookups
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

On Wed, Oct 20, 2021 at 12:53:52PM +0300, Jani Nikula wrote:
> On Wed, 20 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> > On Tue, Oct 19, 2021 at 10:23:14PM +0300, Jani Nikula wrote:
> >> On Mon, 18 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> >> > Add an assert that lookups from the intel_dp->common_rates[] array
> >> > are always valid.
> >> 
> >> The one thought I had here was that if we're adding helper functions for
> >> accessing common rates, they should probably be of the form "this is the
> >> rate I have now, give me a slower rate" instead of making the index part
> >> of the interface. The index doesn't really mean anything, and if we want
> >> to avoid overflows, it should be hidden from the interfaces.
> >
> > intel_dp_rate_index() is also part of the interface, but I suppose it
> > could be improved.
> 
> Most of its users could be converted to two functions:
> 
> - is this a valid rate?
> - give me a slower rate
> 
> The only place where index is actually needed is the eDP rate select
> method.
> 
> Pretty much everywhere I'm starting to prefer passing the actual values
> instead of mappings.

I think I had an ancient patch along those lines...
I guess I'm thinking of this one:
https://patchwork.freedesktop.org/patch/101471/?series=10354&rev=3

-- 
Ville Syrjälä
Intel
