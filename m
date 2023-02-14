Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A42E696197
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:00:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC6410E86F;
	Tue, 14 Feb 2023 11:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35DB10E86F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 10:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676372399; x=1707908399;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=phmibZdeFt9bpLK42hd2F1jg/dgUTx0p9tRxnBOVI+c=;
 b=Lr1KTWf2pmH13PhujAxGj4GaXZxLR748igy08Dyo9WbGlpUDJ8jouggo
 xRbfcVzFdXfqYG665XLV0mOSTuNaqY/F7jsThAuIAOM3YKLHk3nMywcMN
 WAwaNxAn89BI088J9ZJcUh0Md2mQPlkvpdzKlYpdnv+7YDU5MU8Fnjob2
 UHm91q2jdvnxU6JAn5WFfiK+xfXUw/VOlfRH5aTb+IQZuWMw2NPV5lxHV
 rQO66+AZ4Sh9K1tmpzphdl7CFQX34Ka/jvhRthso9k13K0xIk2TCZ7tsx
 sUMn+jpdCvUd8sg+eOIo0dhGkchcy7VZW4zaPf9+lo6wnwQN0zJnVOxKk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393535600"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="393535600"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="669125044"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="669125044"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga002.jf.intel.com with SMTP; 14 Feb 2023 02:59:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 12:59:55 +0200
Date: Tue, 14 Feb 2023 12:59:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+tpq7S3tGIeEen6@intel.com>
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
 <20230213225258.2127-5-ville.syrjala@linux.intel.com>
 <878rh0tvde.fsf@intel.com> <Y+tjL+PVFpITLIuj@intel.com>
 <87r0ussem9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r0ussem9.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: s/PIPECONF/TRANSCONF/
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

On Tue, Feb 14, 2023 at 12:52:46PM +0200, Jani Nikula wrote:
> On Tue, 14 Feb 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Feb 14, 2023 at 12:05:33PM +0200, Jani Nikula wrote:
> >> On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> >
> >> > Rename PIPECONF to TRANSCONF to make it clear what it actually
> >> > applies to.
> >> >
> >> > While the usual convention is to pick the earliers name I think
> >> > in this case it's more clear to use the later name. Especially
> >> > as even the register offset is in the wrong range (0x70000 vs.
> >> > 0x60000) and thus makes it look like this is per-pipe.
> >> >
> >> > There is one place in gvt that's doing something with TRANSCONF
> >> > while iterating with for_each_pipe(). So that might not be doing
> >> > the right thing for TRANSCODER_EDP, dunno. Not knowing what it
> >> > does I left it as is to avoid breakage.
> >> 
> >> I recently looked at _PIPE_EDP usage, and thought all of it looked a bit
> >> suspect, but didn't bother to dig deeper. Maybe after this it could be
> >> removed?
> >
> > I think it needs to stay due to the pipe_offsets[] stuff
> > and hw making a mess of pipe vs. transcoder registers.
> > But no one should really use it anywhere else.
> 
> I wonder how many underscores more we need to add to keep it that
> way. :p

People are probably accustomed to one or two. So maybe three?
Could also try adding a comment, but dunno if it would any
more effective.

-- 
Ville Syrjälä
Intel
