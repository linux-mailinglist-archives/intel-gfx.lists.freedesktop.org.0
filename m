Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8471C5F5A7A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 21:15:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A9C10E392;
	Wed,  5 Oct 2022 19:14:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF9510E2FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 19:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664997287; x=1696533287;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GbQqndfbSIl81wHnHni481D5WIgUUv6eRBFGwC7sHAg=;
 b=XImw9eER5pHUSXR+2Mz5doer8DGKUN3NC/FeeqsHDvbMULKhXjMUEzl6
 GCNFv+FH4KzBmBh9D4RoyqGwQwow0VMACwzIrpjNoMo6u9RkfDseFPWft
 RpYXHNW3YpvHMO1czd7yd4DlhV0F+oYOLRLHlSJYXbXRx7DlEYqZ17QQX
 K60DhGgnXXq/ssAYrmpHY2XFc4W6HrT2pYFDJ2Xw1tMzn2nExx0gsbrYB
 p/6httbweCNQ4Xf/76TkBchFVhA8J3bxGnhZ3GDg3Pk+cls5P6Bp2cY9S
 vkKwWi4cHsT/FPr0hN25rZzhT0+9RfsWwTIa0BNMOUqSLT96LZ7On9f1w w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="329668158"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="329668158"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 12:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="766847652"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="766847652"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 05 Oct 2022 12:14:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Oct 2022 22:14:43 +0300
Date: Wed, 5 Oct 2022 22:14:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <Yz3Xo4sj71e83rsV@intel.com>
References: <20221005175251.3586272-1-imre.deak@intel.com>
 <20221005175251.3586272-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221005175251.3586272-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Suspend/resume encoders
 during GPU reset
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

On Wed, Oct 05, 2022 at 08:52:51PM +0300, Imre Deak wrote:
> The GPU reset involves a display suspend/resume sequence, but this is
> done without suspending/resuming the encoders.

The display reset path is there for the old platforms which
can't reset the gt stuff separately from the display engine. 
And the only reason we started to force that codepath on more
modern platforms was to make sure it doesn't break all the time.
That used to happen quite regularly, but not sure if we even had
any pre-g4x hw in CI at the time.

I suspect it's probably a mistake to start piling on more
code in there just to make it work on really modern hw.
The old hw where it actually matters doesn't need any of
that code after all.

Well, unless we manage to make it just call some simple high
level "suspend display + resume display" pair of functions
and nothing else. That would probably be nice simplification
in general, but iirc currently it's much more ad-hoc than that.

-- 
Ville Syrjälä
Intel
