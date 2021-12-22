Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3933F47D27F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 13:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B06410E27E;
	Wed, 22 Dec 2021 12:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F39610E27E
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 12:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640177617; x=1671713617;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fmVNxH4m/frFBsWJGI8fQhJVPstonaaKXzhhuXHoPZY=;
 b=KVa0sxQHftLMBcPmoFc7kGO3bz9bAP7ejur3RG5vemxc/RZSOB+pEIwf
 WidH2LIUqKn98nIYp7rrapEbQPMdoklQQvhWZdI2gZJjf8/HHoP3Ef/l9
 D/ikOrGVrLqYBWA/ikuHJxIxnLftYWo2qzE7jYMLL1SfebqpAJQ8mYfMl
 60j54RlLydKcwpXYyr7ABqmP0nKnVp/zGSnnlSPBkTgntYOh5vxNyefq6
 bNxh67THAl6e9rqhtTnxcsc9XcwF+S4aeTTmmsDmMOXy/RKYuKAtwlm2g
 7bCWOC71BpyJLEBQefmYlHOtAEBLvucwHyC+RchhWUkLGM51rHEBG6gNw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="227907083"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="227907083"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 04:53:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="508457682"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 22 Dec 2021 04:53:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Dec 2021 14:53:34 +0200
Date: Wed, 22 Dec 2021 14:53:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YcMfzuqWKGPPilNo@intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-6-ville.syrjala@linux.intel.com>
 <8735mlyoco.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8735mlyoco.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/bios: Nuke
 DEVICE_TYPE_DP_DUAL_MODE_BITS
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

On Wed, Dec 22, 2021 at 11:34:47AM +0200, Jani Nikula wrote:
> On Fri, 17 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Replace the DEVICE_TYPE_DP_DUAL_MODE_BITS stuff with just
> > a DP+HDMI check. The rest of the bits shouldn't really
> > matter anyway.
> >
> > The slight change in behaviour here is that now we do look at
> > the DEVICE_TYPE_NOT_HDMI_OUTPUT bit (via
> > intel_bios_encoder_supports_hdmi()) when we previously ignored it.
> > The one platform we know that has problems with that bit is VLV.
> > But IIRC the problem was always that buggy VBTs basically never
> > set that bit. So that should be OK since all it would do is make
> > all DVI ports look like HDMI ports instead. Also can't imagine
> > there are many VLV machines with actual DVI ports in existence.
> 
> One other thing is dropping the requirement for
> DEVICE_TYPE_DIGITAL_OUTPUT. I don't know if that should be part of
> intel_bios_encoder_supports_{hdmi,dp}(). *shrug*

Windows doesn't seem to look at that, so probably we shouldn't
either.

-- 
Ville Syrjälä
Intel
