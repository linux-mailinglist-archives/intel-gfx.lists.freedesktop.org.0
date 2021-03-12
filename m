Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A51983395DD
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 19:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F08186ECC3;
	Fri, 12 Mar 2021 18:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C98816ECC3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 18:09:20 +0000 (UTC)
IronPort-SDR: feXV6T0SypVVfDRoxzZWnnIBJwW2sSN7AiPfFJg462t7Fz37Gr5vS84CI7zC6JC+sLDPb8FAje
 kvlpUy/orjyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="188964020"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="188964020"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 10:09:19 -0800
IronPort-SDR: g5kX9WUe6eA5IThyEU7UJTDlR8+oNjIqwkho29ZlqcJViM9wOEseqNqsWQ//rauuoTJCaO/m5a
 DhWg1zmE6JCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="377787231"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 12 Mar 2021 10:09:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Mar 2021 20:09:16 +0200
Date: Fri, 12 Mar 2021 20:09:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEuuTBaP2IUCWPp8@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-19-imre.deak@intel.com>
 <YEpzSj9TVv1wFrSr@intel.com>
 <20210311221942.GA3107177@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210311221942.GA3107177@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915: Shrink the size of
 intel_remapped_plane_info struct
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 12, 2021 at 12:19:42AM +0200, Imre Deak wrote:
> On Thu, Mar 11, 2021 at 09:45:14PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Mar 11, 2021 at 12:17:31AM +0200, Imre Deak wrote:
> > > Save some place in the GTT VMAs by using a u16 instead of unsigned int
> > > to store the view dimensions. The maximum FB stride is 256kB which is
> > > 4096 tiles in the worst case (yf-tiles), the maximum FB height is 16k
> > > pixels, which is 2048 tiles in the worst case (x-tiles).
> > =

> > Actually I think the worst case for height is remapping linear fbs
> > since we more or less treat it as 4kx1 tiles. But 16k is still< 64k
> > so should be all good.
> =

> Yes, thanks for catching that. Will fix the commit message.
> =

> > Integer promotion stuff/etc. is what worried me the most here, but
> > looks like rotate_pages()/remap_pages() at least gets everything
> > passed in as unsigned int, so we're not in danger of sign bit
> > shenanigans there at least.
> =

> Yes. Fwiw I can think only of the following kind of sign-extension
> problem scenario with u16:
> =

> u16 v1=3D-1;
> int i=3Dv1;
> =

> So if u16 stored a negative result, we'd miss the expected
> sign-extension, but I can't see a way we wanted to store a negative
> value to these fields. So for instance in remap_pages() the
> =

> 	offset +=3D src_stride - width;
> =

> would be still correct even if src_stride/width would be u16 and
> src_stride was less than width.

I suppose most issues would be along the lines of expecting
u16-u16 to produce a mod u16 result. But since things get
promoted to signed int that is no longer true when the result
is negative. Also if you then cast that result to some bigger
type you can get even more sign extension happening.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
