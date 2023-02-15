Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D87AE697B86
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 13:12:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C9A810EAA5;
	Wed, 15 Feb 2023 12:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A199210EAA5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 12:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676463166; x=1707999166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=px2ZbRcujcBuCFRAPLZM/mHRnlorgepaNzdDz01Diao=;
 b=k/tt6Sg+hC3khSxkkxQf52BH9oi7bKcU5o9KcLfTtsgSa9MYbBmpNr9m
 VI7SP3Q1zeGVnTds02aPju2zJ9Lz146rquXFIB0oyFjWeYRHqwJYAbuJo
 JukWrA4h++v1SMuRuwanfUnYBGTWnsmSRMGqMQSAEauZfXMAC+g9MRZ8a
 wRwXXPQkvBbnE8tKHIkgVjwlax6uMQ/bCQlMEg5Zrcb+mzD5NP38TrwIr
 EgQgpPIDwZpaCU9ap0VBiEIMH6xoOfLLoEPc48UobAXsTwjx5f9ruF4as
 rM6SQf9K8Ya9bDOxOqVkE3Ns50hiMLN4Cy5ABYiKpgcaasJ3pX7Lao3/7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329130352"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329130352"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 04:12:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="778762291"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="778762291"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga002.fm.intel.com with SMTP; 15 Feb 2023 04:12:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 14:12:17 +0200
Date: Wed, 15 Feb 2023 14:12:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+zMIV3lTkoeTVOE@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
 <77c30bfdd258c4e0cf143c93514f94c92f371484.1676317696.git.jani.nikula@intel.com>
 <Y+qjUAe0Y4LTwG67@intel.com> <87r0urqim4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87r0urqim4.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/wm: move watermark
 sanitization to intel_wm.[ch]
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

On Wed, Feb 15, 2023 at 01:21:39PM +0200, Jani Nikula wrote:
> On Mon, 13 Feb 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Mon, Feb 13, 2023 at 10:00:00PM +0200, Jani Nikula wrote:
> >> Move the generic sanitize_watermarks() to intel_wm.[ch] and rename as
> >
> > It's not generic though. Only the ilk_ stuff uses it.
> 
> Okay, so the caller side requires HAS_GMCH() and the callee side
> requires .optimize_watermarks != NULL. That indeed leaves us with PCH
> split platforms before display version 9.
> 
> However, the implementation of sanitize_watermarks() seems pretty
> generic, right?
> 
> I guess the question is, do you suggest moving the whole thing to
> i9xx_wm.c and specifically not calling it on display 9+, or do you just
> want the commit message to reflect the above?

What I actually want is to just get rid of it entirely.
But that would require doing some work on the ilk wm code.

So in the meantime I suppse I'd prefer to hide it away next
to all the other ilk wm code so that no one gets any more
confusedby it. 

-- 
Ville Syrjälä
Intel
