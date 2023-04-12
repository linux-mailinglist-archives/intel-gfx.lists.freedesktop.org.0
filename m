Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3CC6DEAF6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 07:22:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019EA10E14D;
	Wed, 12 Apr 2023 05:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B4D10E14D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 05:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681276963; x=1712812963;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L+8cnw2pyVeLJWnIMZU6i/iDxCrq11irdud0GhlFdSA=;
 b=aeAYLszODScQUduNeScizzl5dYuUmziN2Plg/wd1RPk+CNIV1mjeDfRY
 uNQbGt9RwPUqmJ4rUrbziTQBXW3pjGveaF8YB24565TS2YAKQOjdRODT6
 A6HK0K7nf6TzYrp8IbEjjX4cmW3/8DSaxs5wXH1FbqBOekDdEP2gVC9uX
 jj3REMyYM5TbLt9njeYmEgIxCCIJyNzfhLkaS05ScQpzVDakz5ksywHHz
 43uvhqHg17Mn5SqtlT9VjxNZGuyO/J3S8qiUL16LyAZYGlM8U5+n+ISa9
 hWZow53OmZAkLcmy5EOq4SqDPme03QhvrQrz9nm1LD+QuHd/nw5Q+uP5Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="345597156"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="345597156"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 22:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="666211453"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="666211453"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 11 Apr 2023 22:22:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Apr 2023 08:22:38 +0300
Date: Wed, 12 Apr 2023 08:22:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZDZAHj4PPaDD9HHj@intel.com>
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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

On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
> On Tue, Apr 11, 2023 at 10:42 AM Ville Syrjälä
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> > > In the function intel_dp_max_bpp(), currently if bpc < 0 in case of error,
> > > we return 0 instead of returning an err code of -EINVAL.
> > > This throws off the logic in the calling function.
> >
> > What logic? The caller doesn't expect to get an error.
> 
> If this returns a 0, we end up using limits.max_bpp = 0 and in
> intel_dp_compute_link_config_wide(),
> since max_bpp is 0, it exits this for loop:
> 
> for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) and returns
> -EINVAL which then wrongly goes to enable DSC even when link BW is
> sufficient without DSC.

And how woud max_bpp<0 prevent that?

The real problem seems to be that the DSC code totally
ignores bpp limits.

-- 
Ville Syrjälä
Intel
