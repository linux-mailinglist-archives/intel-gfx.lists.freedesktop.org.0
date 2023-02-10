Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C180691D14
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 11:44:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F3210ECDC;
	Fri, 10 Feb 2023 10:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A7C10ECDC
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 10:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676025857; x=1707561857;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1vpoCwRII/+vYdhIVJRZrSJpr1zv6YDUXX6bL0fkjVk=;
 b=kjWCniQmh1V7qjs8LPWcHyjyQhFpD27rjwa9xqO7fA4488qyeiIM04pX
 KI+VfvwMgkK0RtpGQqhmv/rQNO8suil7KWRGRikmQeDevqkR5ywO7JlO1
 HH+nLkBvfPb5l2fh+K/iZVtr3JCcWMnGk0YEMpdrsR+fdflAvdt9JSP5V
 DQQnQ/0W4oo5mI8WGZZoNnaJUe+J3tia2Sn4fhbqS4ljf8pl1Fr4JqWGk
 66TCVcxpLcqwUwtkzKUBSQa7N6GR74Z56XTTzRac8duoNl7pKIF6nhHo2
 rgaIg4/khaXWyhnr3qrSZX8SuNY9OKiZKnS/kLjzAEuukdAtH3Rznw2YE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="318405818"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="318405818"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 02:44:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="668013505"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="668013505"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga002.jf.intel.com with SMTP; 10 Feb 2023 02:44:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Feb 2023 12:44:13 +0200
Date: Fri, 10 Feb 2023 12:44:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+Yf/dkR4VZ9ISC/@intel.com>
References: <20230209003251.32021-1-ville.syrjala@linux.intel.com>
 <20230209003251.32021-2-ville.syrjala@linux.intel.com>
 <87y1p6x2xt.fsf@intel.com> <Y+Vu0gWjk1LwVJbT@intel.com>
 <87cz6hx0v2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87cz6hx0v2.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Replace wm.max_levels with
 wm.num_levels and use it everywhere
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

On Fri, Feb 10, 2023 at 12:37:21PM +0200, Jani Nikula wrote:
> On Fri, 10 Feb 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Feb 09, 2023 at 05:40:14PM +0200, Jani Nikula wrote:
> >> On Thu, 09 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> > @@ -3229,7 +3216,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
> >> >  	merged->fbc_wm_enabled = DISPLAY_VER(dev_priv) >= 6;
> >> >  
> >> >  	/* merge each WM1+ level */
> >> > -	for (level = 1; level <= max_level; level++) {
> >> > +	for (level = 1; level < num_levels - 1; level++) {
> >> 
> >> That's off by one, right?
> >
> > Whoops. Good eyes.
> 
> Thanks for v2, I went ahead and pushed these to drm-intel-next so I can
> rebase my wm stuff on top.

Thanks.

-- 
Ville Syrjälä
Intel
