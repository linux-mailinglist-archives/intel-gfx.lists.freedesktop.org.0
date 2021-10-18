Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 268F4431A77
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 15:13:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363526EA28;
	Mon, 18 Oct 2021 13:13:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 723846EA28
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 13:13:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="209037763"
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="209037763"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 06:13:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,382,1624345200"; d="scan'208";a="526242311"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 18 Oct 2021 06:13:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 16:13:08 +0300
Date: Mon, 18 Oct 2021 16:13:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: David Airlie <airlied@redhat.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <YW1y5D7qhkVokRbg@intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-2-ville.syrjala@linux.intel.com>
 <CAMwc25oi5bn-c-YgKX3xpHnNKzdZ4WO5P2xLpGKKU=7sg-gESw@mail.gmail.com>
 <YW0stRwPI8Mz1s7c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YW0stRwPI8Mz1s7c@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915: Move PCH refclok stuff into
 its own file
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

On Mon, Oct 18, 2021 at 11:13:41AM +0300, Ville Syrjälä wrote:
> On Mon, Oct 18, 2021 at 09:56:33AM +1000, David Airlie wrote:
> > On Fri, Oct 15, 2021 at 5:16 PM Ville Syrjala
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Move the PCH refclk stuff (including all the LPT/WPT
> > > iCLKIP/CLKOUT_DP things) to its own file.
> > >
> > > We also suck in the mPHY programming from intel_fdi.c
> > > since we're the only caller.
> > 
> > The title of the patch has a typo refclok->reclock.
> 
> I must be blind since I don't see the typo.

Oh now I see it. Your suggested fix had another typo ;)

-- 
Ville Syrjälä
Intel
