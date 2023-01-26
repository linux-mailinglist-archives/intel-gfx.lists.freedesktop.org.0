Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CA467D2B0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 18:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F63E10E2AA;
	Thu, 26 Jan 2023 17:08:32 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5177210E294;
 Thu, 26 Jan 2023 17:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674752910; x=1706288910;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Y7o4cHroaXqmEXJ6pXboGAtmXOhBH+vtwcChTlfQReA=;
 b=NLGsYzRACWGwbjydseVAm3Va/ey9PVnYxBdnjLQ0byZJugs8Kap4WqEB
 cjEk1DKKSnL5S7gzif4bKd5QmvL9LDBwzBADfxQa+ooYK/2vUUAnpcgHo
 uysCeAU7uFuwHLtC96CT1GI5xrJc8WLsfyAvBaHt19F1SmooQnZgrfnB2
 xel1U3s9477fbmKL5HJ/IzXmvf2E/BjgHCw5WQiw1wYBttgd73XPgkeyf
 5TYZ4jeNdY46ORwOJ7WVOepHdsbd/oH+S6WuMOfpNDnyXL5uH5Ef/sBqS
 +PbmCYsLydqx0fH8i5n9Vn35HkCfFB+KiIXT7VlCzdcpcUJZMZXq2Fz63 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328138266"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="328138266"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 09:08:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="805436166"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="805436166"
Received: from mrudniew-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.1.114])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 09:08:26 -0800
Date: Thu, 26 Jan 2023 18:08:23 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230126170823.2cbgkn2ffksfyomj@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20230112174730.1101192-1-tvrtko.ursulin@linux.intel.com>
 <20230112174730.1101192-2-tvrtko.ursulin@linux.intel.com>
 <20230126153938.3iotcb52eawnwbcl@kamilkon-desk1>
 <e3b0efd8-7e4a-9bdf-4725-128c4637e806@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e3b0efd8-7e4a-9bdf-4725-128c4637e806@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/4] intel_gpu_top: Fix man
 page formatting
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2023-01-26 at 16:09:29 +0000, Tvrtko Ursulin wrote:
> 
> On 26/01/2023 15:39, Kamil Konieczny wrote:
> > On 2023-01-12 at 17:47:27 +0000, Tvrtko Ursulin wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > New lines are not respected when rst2man generates the page so try to work
> > > around that by followin advice from the Internet.
> > > 
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > 
> > Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> 
> Thanks! Later I noticed there is one more thing which currently renders
> badly, this line:
> 
>   -o <file path | ->
> 
> Are you okay with re-review if I can fix that one too and respin?

Yes, no problem, I can review respin.

Regards,
Kamil

> 
> Regards,
> 
> Tvrtko
> 
> > > ---
> > >   man/intel_gpu_top.rst | 15 ++++++++-------
> > >   1 file changed, 8 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> > > index 748c7740c800..b0c95446a011 100644
> > > --- a/man/intel_gpu_top.rst
> > > +++ b/man/intel_gpu_top.rst
> > > @@ -53,13 +53,14 @@ RUNTIME CONTROL
> > >   Supported keys:
> > > -    'q'    Exit from the tool.
> > > -    'h'    Show interactive help.
> > > -    '1'    Toggle between aggregated engine class and physical engine mode.
> > > -    'n'    Toggle display of numeric client busyness overlay.
> > > -    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
> > > -    'i'    Toggle display of clients which used no GPU time.
> > > -    'H'    Toggle between per PID aggregation and individual clients.
> > > +|
> > > +|    'q'    Exit from the tool.
> > > +|    'h'    Show interactive help.
> > > +|    '1'    Toggle between aggregated engine class and physical engine mode.
> > > +|    'n'    Toggle display of numeric client busyness overlay.
> > > +|    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
> > > +|    'i'    Toggle display of clients which used no GPU time.
> > > +|    'H'    Toggle between per PID aggregation and individual clients.
> > >   DEVICE SELECTION
> > >   ================
> > > -- 
> > > 2.34.1
> > > 
