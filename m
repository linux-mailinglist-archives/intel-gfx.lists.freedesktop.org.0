Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAD14A4E9A
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 19:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D44010E332;
	Mon, 31 Jan 2022 18:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7474910E16C
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 18:39:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643654360; x=1675190360;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IOsqsIhQLQtQRY0U97zhB74xsOUyexaLks+leXPlGNE=;
 b=D21AVZfID0sjiD3BMN1WddC1FAFpOQErJ6NsTlwQ1NLrYolN1GRE8j+B
 2DzAb5fWq+VFEm5ZNISjyiQl0RDxr9gFx+7r8GZdsHOq9hJak6E+UJYI0
 b2G/tRXHjQzjFH9WxOVjGMTJ8xyQsJXoSB8CLA1R6iIdiB9korReICSkH
 vD9ymiO02RlYols7Lv4bAdQ8sYefxfcrxQJ5lqV7bGEQslT9vFIHtjjQu
 2aYRQsy4llQVzFMJD8CVPW14jMSGKYjv2kVZ0ilqDPI7/0R0I76+OWfdU
 atJyg6vEpv6P+eCawzysDXJngb/BdWhsXuLJi/hbi4hg5HjsoRjb4iRj+ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="227496563"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="227496563"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 10:39:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="537384881"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 31 Jan 2022 10:39:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Jan 2022 20:39:17 +0200
Date: Mon, 31 Jan 2022 20:39:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Yfgs1ZVWbYNdlHCt@intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
 <20220128103757.22461-13-ville.syrjala@linux.intel.com>
 <87pmo8uer2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87pmo8uer2.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 12/17] drm/i915: Fix
 intel_cpu_transcoder_has_m2_n2()
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

On Mon, Jan 31, 2022 at 05:05:53PM +0200, Jani Nikula wrote:
> On Fri, 28 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > M2/N2 values are present for all ilk-ivb,vlv,chv (and hsw edp).
> > Make the code reflect that.
> 
> Nitpick, it's not called intel_cpu_transcoder_has_m2_n2() until in the
> next patch.
> 
> Side note, I've also been looking at this bit in intel_drrs_set_state():
> 
> 	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv))
> 		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_type);
> 	else if (DISPLAY_VER(dev_priv) > 6)
> 		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_type);
> 
> and wondering if that should be deduplicated with the
> transcoder_has_m2_n2() somehow. This is all a bit confusing with the
> slightly different conditions.

Yeah, I have a patch to use intel_cpu_transcoder_has_m2_n2() for
this already on my drrs branch. It just didn't make the cut for
this series for some arbitrary reason.

The other place we could perhaps use intel_cpu_transcoder_has_m2_n2()
is the PIPE_CONF_CHECK_ALT vs. checking both m_n and m2_n2. But I don't
really want the logic there to depend on the states it's trying to
compare, so I think a naked platform check there is better.

-- 
Ville Syrjälä
Intel
