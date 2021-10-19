Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC94432F25
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 09:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31FE06E12B;
	Tue, 19 Oct 2021 07:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A161D6E12B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 07:17:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="289290156"
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="289290156"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 00:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,383,1624345200"; d="scan'208";a="490183535"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 19 Oct 2021 00:17:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 10:17:04 +0300
Date: Tue, 19 Oct 2021 10:17:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: David Airlie <airlied@redhat.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <YW5w8L9bMjiqD0NZ@intel.com>
References: <20211015071625.593-5-ville.syrjala@linux.intel.com>
 <20211018153525.21597-1-ville.syrjala@linux.intel.com>
 <CAMwc25quLa7eXH2XOSsnRzDWCuxQjEeXBJ6yLyOUnTdBeYXzsA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMwc25quLa7eXH2XOSsnRzDWCuxQjEeXBJ6yLyOUnTdBeYXzsA@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915: Move LPT PCH readout code
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

On Tue, Oct 19, 2021 at 05:46:33AM +1000, David Airlie wrote:
> On Tue, Oct 19, 2021 at 1:35 AM Ville Syrjala
> <ville.syrjala@linux.intel.com> wrote:
> >
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Nuke the hsw_get_ddi_port_state() eyesore by putting the
> > readout code into intel_pch_display.c, and calling it directly
> > from hsw_crt_get_config().
> >
> > Note that the nuked TRANS_DDI_FUNC_CTL readout from
> > hsw_get_ddi_port_state() is now etirely redundant since we
> > get called from the encoder->get_config() so we already know
> > we're dealing with the correct DDI port. Previously the
> > code was called from a place where that wasn't known so
> > it had to checked manually.
> >
> > v2: Clarify the TRANS_DDI_FUNC_CTL change (Dave)
> >     Nuke the now unused *TRANS_DDI_FUNC_CTL_VAL_TO_PORT() (Dave)
> >
> > Cc: Dave Airlie <airlied@redhat.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Dave Airlie <airlied@redhat.com>

Thanks for the review. Fixed up all the (known) typos and robot
noises, and pushed to drm-intel-next.

-- 
Ville Syrjälä
Intel
