Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC82F6912F3
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 23:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02E610EBC1;
	Thu,  9 Feb 2023 22:08:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83BB410EBC1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 22:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675980502; x=1707516502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=E9qHBquaWsAJgieqS6+rYMrRXI6VVspfGUWB3jYOOj4=;
 b=Yx7/aRu1bDkaK4Ba8l1vK9+KSIttOavaYdea0x6nswy9el3t21c2rIu7
 LY/1ISqsML/X0L8T1nXGY2POFDSQYqV0t83YolEMiB6zqJqsbhwJjNY1t
 N/TVr+rsmuWy1HzqwkWTYTVMT2xxA3tShDWSryvmgGvehgQmdV6fd4+DL
 X5p2vTV748GOvm9Y33SUqibL679YakHKUjKEjRpo8Uw792xavEx104jB/
 C7qOfS5ECf7lRYfkQIDh36O59M8qCFfmCVKfTnLo62UPwBmF1M8Xj4JID
 62t+4w2Aq1ajD7Nn3iRF5k3l77uap2facbIB945tSGEcOE8K8LuR5JcaQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="310622165"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="310622165"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 14:08:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="661177784"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="661177784"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 09 Feb 2023 14:08:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Feb 2023 00:08:18 +0200
Date: Fri, 10 Feb 2023 00:08:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+Vu0gWjk1LwVJbT@intel.com>
References: <20230209003251.32021-1-ville.syrjala@linux.intel.com>
 <20230209003251.32021-2-ville.syrjala@linux.intel.com>
 <87y1p6x2xt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y1p6x2xt.fsf@intel.com>
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

On Thu, Feb 09, 2023 at 05:40:14PM +0200, Jani Nikula wrote:
> On Thu, 09 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > @@ -3229,7 +3216,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
> >  	merged->fbc_wm_enabled = DISPLAY_VER(dev_priv) >= 6;
> >  
> >  	/* merge each WM1+ level */
> > -	for (level = 1; level <= max_level; level++) {
> > +	for (level = 1; level < num_levels - 1; level++) {
> 
> That's off by one, right?

Whoops. Good eyes.

-- 
Ville Syrjälä
Intel
