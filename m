Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72167475995
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Dec 2021 14:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8884210EE16;
	Wed, 15 Dec 2021 13:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 363B210EE16
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 13:25:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="226083265"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="226083265"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 05:25:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="465600176"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 15 Dec 2021 05:25:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Dec 2021 15:25:19 +0200
Date: Wed, 15 Dec 2021 15:25:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Message-ID: <YbnsvyfxjnqBIPA0@intel.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-2-ville.syrjala@linux.intel.com>
 <871r2g702r.fsf@intel.com> <YbjFh6AnBtI729+V@intel.com>
 <YbjT/f9276cVmgDE@intel.com>
 <CO6PR11MB563679A612675BBBBAEBF307DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CO6PR11MB563679A612675BBBBAEBF307DE769@CO6PR11MB5636.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 15, 2021 at 09:05:03AM +0000, Sarvela, Tomi P wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On Tue, Dec 14, 2021 at 06:25:43PM +0200, Ville Syrjälä wrote:
> > > On Mon, Dec 13, 2021 at 09:54:04PM +0200, Jani Nikula wrote:
> > > > On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > This one is only used in gvt, anyway. And that actually makes me wonder
> > > > if this should be breaking the build. Does CI not have gvt enabled?
> > >
> > > Hmm. I thought it was enabled in CI, but maybe not. I've often broken
> > > gvt with register define changes but I've always caught it before
> > > pushing. I think I have gvt enabled in my "make sure all commits build
> > > before I push" test config, so maybe that's where I caught most of them.
> > >
> > > Tomi, can we enable gvt in ci builds to make sure it at least still
> > > builds?
> > 
> > Actually cc Tomi..
> 
> GVT-d is enabled and tested by fi-bdw-gvtdvm.

We're talking about the other gvt (whatever it was called), ie.
CONFIG_DRM_I915_GVT.

-- 
Ville Syrjälä
Intel
