Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 968E249AC1A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 06:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E3D10E3A5;
	Tue, 25 Jan 2022 05:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2197C10E3A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 05:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643090350; x=1674626350;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4NJoeCEQqSMNZVav5J77XsRwov1arvMSO4GaR8mcbO8=;
 b=oKo1oCL4UquxLX6Lgz9JRZO3AZzQfqT2oSW+WwyQ0WNSLHJStwuKcLRy
 wFxfHmexk7KpDEMlKxsk17ciCfh9Ft+OT3hXeX1sYC+Ki/WYoEo8OvFQF
 Kj12RRomDR2Q6Twgi2Q4U91R3/C4hAc0GHTr4CEv7hT2MUaWFi5HppxA7
 ZlESRl0/sF0jbGYZ8jaG1gleOdnltjvQpQ5MHuwhnFqUU1VmoYMq93oVp
 RzUu7uVMS+0qlnx/Y3ak/aQf8sS4jRV4crJNuXRvYq/TJwejPqYNRe5dq
 7/XfUAu/4gy8/0fR3aLHT5huwj0CAEdFzh+9oN/ZQHrBHDTY60G0yks9V w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="246008656"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="246008656"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:59:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="532319480"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 24 Jan 2022 21:59:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Jan 2022 07:59:06 +0200
Date: Tue, 25 Jan 2022 07:59:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Ye+Rquq9A5WggsYq@intel.com>
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
 <20220124192638.26262-5-ville.syrjala@linux.intel.com>
 <87tuds1ih7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87tuds1ih7.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Move dsc/joiner enable into
 hsw_crtc_enable()
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

On Tue, Jan 25, 2022 at 07:40:04AM +0200, Jani Nikula wrote:
> On Mon, 24 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Lift the dsc/joiner enable up from the wonky places where it
> > currently sits (ddi .pre_enable() or icl_ddi_bigjoiner_pre_enable())
> > into hsw_crtc_enable() where we write the other per-pipe stuff
> > as well. Makes the transcoder vs. pipe split less confusing.
> >
> 
> What about the enable call in DSI?

Hrm. Looks safeish to relocate as well. It will reorder things
vs. the transcoder timings setup, but can't really think why
that should matter

I'm actually thinking of reordering these a bit for DP/DHMI 
as well. Would let us move the whole hsw_configure_cpu_transcoder()
call into the ddi .pre_enable(). Though MST may get in the way of
that plan :/

-- 
Ville Syrjälä
Intel
