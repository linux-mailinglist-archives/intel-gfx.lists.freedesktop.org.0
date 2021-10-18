Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1654311F2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 10:13:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1158B6E988;
	Mon, 18 Oct 2021 08:13:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB916E98B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 08:13:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="225653648"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="225653648"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 01:13:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="482629561"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 18 Oct 2021 01:13:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Oct 2021 11:13:41 +0300
Date: Mon, 18 Oct 2021 11:13:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: David Airlie <airlied@redhat.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <YW0stRwPI8Mz1s7c@intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-2-ville.syrjala@linux.intel.com>
 <CAMwc25oi5bn-c-YgKX3xpHnNKzdZ4WO5P2xLpGKKU=7sg-gESw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMwc25oi5bn-c-YgKX3xpHnNKzdZ4WO5P2xLpGKKU=7sg-gESw@mail.gmail.com>
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

On Mon, Oct 18, 2021 at 09:56:33AM +1000, David Airlie wrote:
> On Fri, Oct 15, 2021 at 5:16 PM Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Move the PCH refclk stuff (including all the LPT/WPT
> > iCLKIP/CLKOUT_DP things) to its own file.
> >
> > We also suck in the mPHY programming from intel_fdi.c
> > since we're the only caller.
> 
> The title of the patch has a typo refclok->reclock.

I must be blind since I don't see the typo.

-- 
Ville Syrjälä
Intel
