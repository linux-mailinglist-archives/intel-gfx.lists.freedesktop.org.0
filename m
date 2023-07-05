Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0B3748FAE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 23:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1622610E17E;
	Wed,  5 Jul 2023 21:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB0810E17E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 21:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688592430; x=1720128430;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UkVzpCjy0npKoDWjL/Tx01vtGP7XvAKGa8jIunSvLgA=;
 b=hGoXAsEu98WtZJLE1HnC8mSDP8Ql4NxUc08IhJGaFtTcbO6UvzVq7OtU
 2yOJDiOzOX7KJgpliDqD+dJAmMFylda03LvJjWD1TJqbgYakfiSKIU0HB
 0kJ2cTSCocwsd4o6MkWPjd2tuFqQ1hMrxuDG43RhXVsg7FuIdJCJgTQ4M
 w61KKCgmF+QikKw+INtls5Zo1mYBrvv8WCNLMxohwgpeQ6CDrS4nAKqOR
 cmo9IkyAGhbbeD+ocum/01hFV3RyzMiycKrjCn162cYtEZbNnbsHzXnzW
 wU9fE0mKU75zwQ8GHshHl53Vt9b1In9rGAeNDslqQI7R7/06v1SSI2VD+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="366017319"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="366017319"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 14:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754512500"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754512500"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 14:27:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Jul 2023 00:27:06 +0300
Date: Thu, 6 Jul 2023 00:27:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZKXgKgl_1F1s9gE-@intel.com>
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
 <20230630155846.29931-7-ville.syrjala@linux.intel.com>
 <87y1k029dd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y1k029dd.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915: Try to initialize DDI/ICL+
 DSI ports for every VBT child device
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

On Fri, Jun 30, 2023 at 07:38:38PM +0300, Jani Nikula wrote:
> On Fri, 30 Jun 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Try to deal with duplicate child devices for the same DDI port
> > by attempting to initialize them in VBT defined order The first
> > on to succeed for a specific DDI port will be the one we use.
> >
> > We'll also get rid of i915->display.vbt.ports[] here as any conflicts
> > will now be handled at encoder registration time rather than during
> > VBT parsing. Note that intel_bios_encoder_data_lookup() still remaims
> > for pre-DDI DP/HDMI ports as those don't (at least yet) use VBT
> > driven initialization.
> >
> > TODO: DSI dual link handling is sketchy at best
> 
> Despite the sketchy bits this seems like a step forward.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Series pushed to din. Thanks for the review.

-- 
Ville Syrjälä
Intel
