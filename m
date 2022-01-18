Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DDA491350
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 02:11:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0857710E2FA;
	Tue, 18 Jan 2022 01:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE66410E2FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 01:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642468283; x=1674004283;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NMY1fRpHoDTJXpjJSj+o5tPDNek/9tHkjFv+RYqrbjQ=;
 b=X0EP6R23f+HewDcu98FCOjsOdJikLPdABg9+ecT8lJLvM50ZbQI/6oqU
 Bd626YR2pF8xwSpQwbQ/Tgtw6cGWRk85nnztO0aYbZ+4IrFhLJc724zdc
 4O1qEELyGmKrk3CDRZhTN7sL0ebNiXhK4ajaChvJhM58HXRf878h8CvPK
 uar2qAD5dpCfoKZBb8ZgNCNUvyBW1mBOsYDFJd5M9lHEZICcKh7W+YgOE
 UO/txKv88gnCpvaEIb9arLG6XnuoBLcC97uYv0St1sD/3jUSk8+WJZ7js
 eZv41v2lCIffTg9Lq1wkMZZUxeqZPZf4Uoz9rPvlT2ecefzXPw8/bP4FV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="308052771"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="308052771"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 17:11:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="530157370"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 17 Jan 2022 17:11:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jan 2022 03:11:20 +0200
Date: Tue, 18 Jan 2022 03:11:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YeYTuJcZWXanecFf@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-10-ville.syrjala@linux.intel.com>
 <32279e4aa8f858db27c3eac353ec229179965381.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <32279e4aa8f858db27c3eac353ec229179965381.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/14] drm/i915: Clean up vlv/chv sprite
 plane registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 14, 2022 at 04:34:14PM +0000, Souza, Jose wrote:
> On Wed, 2021-12-01 at 17:25 +0200, Ville Syrjala wrote:
> > @@ -7238,28 +7257,36 @@ enum {
> >  #define SPCSCYGOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d900)
> >  #define SPCSCCBOFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d904)
> >  #define SPCSCCROFF(plane_id)	_MMIO_CHV_SPCSC(plane_id, 0x6d908)
> > -#define  SPCSC_OOFF(x)		(((x) & 0x7ff) << 16) /* s11 */
> > -#define  SPCSC_IOFF(x)		(((x) & 0x7ff) << 0) /* s11 */
> > +#define  SPCSC_OOFF_MASK	REG_GENMASK(26, 16)
> > +#define  SPCSC_OOFF(x)		REG_FIELD_PREP(SPCSC_OOFF_MASK, (x) & 0x7ff) /* s11 */
> 
> With REG_FIELD_PREP you don't need to do (x) & 0x7ff.

Actually we do. These are two's complemnt so if we pass in a wider
negative value we need to mask off a bunch of the the sign bits.
Yes, REG_FIELD_PREP() does that in the end but it also BUILD_BUG()s
if you pass in a constant value that exceeds the bitmask. And for
these registers we do pass in negative constants.

I'm not entirely sure how much magic we should have in these macros
tbh, vs. just forcing the caller to handle it. If we had readout for
these then the caller would anyway have take care to sign extend the
result. So by that argument maybe these macros shouldn't have anything
like this. Not sure.

I've also occasioanlly pondered about extending that BUILD_BUG_ON()
behaviour to do runtime checks as well, hidden behind a suitable
debug kconfig knob. But haven't actually written the patch for it.

-- 
Ville Syrjälä
Intel
