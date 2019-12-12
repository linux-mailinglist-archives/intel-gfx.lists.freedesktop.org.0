Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B57511D4C7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 19:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6924B6E077;
	Thu, 12 Dec 2019 18:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80D446E057;
 Thu, 12 Dec 2019 18:01:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 10:01:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="211195325"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 12 Dec 2019 10:01:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Dec 2019 20:01:08 +0200
Date: Thu, 12 Dec 2019 20:01:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20191212180108.GR1208@intel.com>
References: <20191209143921.9240-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20191212174910.GH85422@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212174910.GH85422@mdroper-desk1.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: cleanup intel_bw_state on
 i915 module removal
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 12, 2019 at 09:49:10AM -0800, Matt Roper wrote:
> On Mon, Dec 09, 2019 at 08:09:02PM +0530, Pankaj Bharadiya wrote:
> > intel_bw_state allocated memory is not getting freed even after
> > module removal.
> > =

> > kmemleak reported backtrace:
> > =

> >     [<0000000079019739>] kmemdup+0x17/0x40
> >     [<00000000d58c1b9d>] intel_bw_duplicate_state+0x1b/0x40 [i915]
> >     [<000000007423ed0c>] drm_atomic_get_private_obj_state+0xca/0x140
> >     [<00000000100e3533>] intel_bw_atomic_check+0x133/0x350 [i915]
> >     [<00000000126d0e0c>] intel_atomic_check+0x1ab7/0x20d0 [i915]
> >     [<00000000d5dfc004>] drm_atomic_check_only+0x563/0x810
> >     [<00000000c9379611>] drm_atomic_commit+0xe/0x50
> >     [<00000000ec82b765>] drm_atomic_helper_disable_all+0x133/0x160
> >     [<000000003c44760c>] drm_atomic_helper_shutdown+0x65/0xc0
> >     [<00000000414e3e5c>] i915_driver_remove+0xcb/0x130 [i915]
> >     [<00000000f8544c2a>] i915_pci_remove+0x19/0x40 [i915]
> >     [<000000002dcbd148>] pci_device_remove+0x36/0xb0
> >     [<000000003c8c6b0a>] device_release_driver_internal+0xe0/0x1c0
> >     [<00000000580e9566>] unbind_store+0xc3/0x120
> >     [<00000000869d0df5>] kernfs_fop_write+0x104/0x190
> >     [<000000004dc1a355>] vfs_write+0xb9/0x1d0
> > =

> > Call the drm_atomic_private_obj_fini(), which inturn calls the
> > intel_bw_destroy_state() to make sure the intel_bw_state memory is
> > freed properly.
> > =

> > Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.co=
m>
> =

> It looks like we'd also leak this object if intel_modeset_init() bails
> out early due to failure to init a crtc.  I.e., we call
> drm_mode_config_cleanup() which cleans up any regular state objects that
> may have been initialized by this point, but never destroy the bw_state
> which was allocated earlier in the function.

The question is why isn't the core cleaning those up for us? It already
puts them onto a list so it could easily do it. Looks like komeda has
already hand rolled exactly that.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
