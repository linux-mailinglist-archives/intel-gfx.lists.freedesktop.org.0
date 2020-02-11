Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F131F1594E0
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ABA56E4FE;
	Tue, 11 Feb 2020 16:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE496E4FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 16:26:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 08:26:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="313111313"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 11 Feb 2020 08:26:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2020 18:26:13 +0200
Date: Tue, 11 Feb 2020 18:26:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200211162613.GV13686@intel.com>
References: <20200207142042.19689-1-anshuman.gupta@intel.com>
 <20200207161531.GL13686@intel.com>
 <20200211160936.GB3527@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211160936.GB3527@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 0/6] 3 display pipes combination system
 support
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 11, 2020 at 09:39:37PM +0530, Anshuman Gupta wrote:
> On 2020-02-07 at 18:15:31 +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Feb 07, 2020 at 07:50:36PM +0530, Anshuman Gupta wrote:
> > > Updated version after rebase and fixing few comments.
> > > =

> > > Anshuman Gupta (6):
> > >   drm/i915: Iterate over pipe and skip the disabled one
> > >   drm/i915: Remove (pipe =3D=3D crtc->index) assumption
> > >   drm/i915: Fix broken transcoder err state
> > >   drm/i915: Fix wrongly populated plane possible_crtcs bit mask
> > >   drm/i915: Get right max plane stride
> > >   drm/i915: Add WARN_ON in intel_get_crtc_for_pipe()
> > =

> > Another broken thing I realized recently is due to my
> > commit ee34801cc0e8 ("drm/i915: Prefer to use the pipe to index the ddb
> > entries")
> > =

> > We either need to revert that or always pass s/num_pipes/I915_MAX_PIPES/
> > to skl_ddb_allocation_overlaps() in skl_commit_modeset_enables().
> > The latter may be nicer since I don't really want that silly 'i'
> > usage back. Can you cook up a patch like that as well?
> AFAIU entries[] may have holes inside it as its size is I915_MAX_PIPES,
> though these holes are already initialized with zero and will not harm =

> skl_ddb_allocation_overlaps, is it good a idea to avoid these hole
> as ignore_index bit mask ?

skl_ddb_entries_overlap() should just ignore empty allocations.
And that will anyway happen for any pipe that is not active. So we
don't have to worry about any holes.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
