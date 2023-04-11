Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54CB6DD658
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 11:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B5E10E503;
	Tue, 11 Apr 2023 09:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F8910E503;
 Tue, 11 Apr 2023 09:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681204328; x=1712740328;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AIDc0YT+U1vB3MHOuWlo4z1Lxd76Qa7SrvgmuupGqXc=;
 b=KkOXqOlM8IqTGcE9E9/Sgm4llv6m6krYXuNJkVAnSH0Y9qNgtCS/3W4u
 LLy+ssGnysFlOKlx3DpaCEtYRc5xDfRJvyE4XFgg1qOR9g8UN8TNwoZZD
 u4AYzo6IWsXWB4xRyx9jSPr7/bPmiTegazX2ZnNEawcXjvlmH99U5BJV9
 UFj99zxgeaeLuGYRQ++7RaOQbun1Na+tn/ZavKOWYtVdFZx11ZXF/Z5LP
 ucIrFuqvQlV8nzteVaj1aPgtYRIKnJtXrRwSIGunsCvb1eDy/gy9PZK0X
 mi0gnrpsBRHKS3vFehNGRnMsC9MGlNLnlfKCNKhQphebxZWr6IYWh/gjJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="343568444"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="343568444"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 02:12:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="753067121"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="753067121"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 11 Apr 2023 02:12:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 12:12:04 +0300
Date: Tue, 11 Apr 2023 12:12:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZDUkZKotRVT0bxga@intel.com>
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878reyer8q.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 11, 2023 at 11:51:33AM +0300, Jani Nikula wrote:
> On Tue, 11 Apr 2023, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Mon, Apr 10, 2023 at 11:32:14AM -0700, José Roberto de Souza wrote:
> >> Start to move the initialization of some lock from
> >> i915_driver_early_probe().
> >> No dkl function is called prior to intel_setup_outputs(), so this is
> >> a good place to initialize it.
> >
> > I disagree. We don't want to sprinke these all over the place.
> 
> I'm thinking if only foo.c uses a lock, foo.c should initialize it, not
> someone else.

Perhaps. But I think there should be some consistent place in the higher
level code where all such things get called instead of dropping each one
individually into some random spot in the overlall display init flow.

-- 
Ville Syrjälä
Intel
