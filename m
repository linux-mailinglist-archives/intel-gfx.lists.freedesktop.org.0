Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CC91AE289
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 18:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46DA6E0DE;
	Fri, 17 Apr 2020 16:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A6B6E0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 16:53:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20936328-1500050 for multiple; Fri, 17 Apr 2020 17:53:22 +0100
MIME-Version: 1.0
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F82484E0F@BGSMSX104.gar.corp.intel.com>
References: <20200416105419.9664-1-uma.shankar@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82484E0F@BGSMSX104.gar.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Shankar, Uma" <uma.shankar@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <158714240053.2062.9367097555507629884@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 17:53:20 +0100
Subject: Re: [Intel-gfx] [v6] drm/i915/display: Enable DP Display Audio WA
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
Cc: "Vehmanen, Kai" <kai.vehmanen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Shankar, Uma (2020-04-17 12:49:21)
> 
> 
> > -----Original Message-----
> > From: Shankar, Uma <uma.shankar@intel.com>
> > Sent: Thursday, April 16, 2020 4:24 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Vehmanen, Kai <kai.vehmanen@intel.com>; Gupta, Anshuman
> > <anshuman.gupta@intel.com>; jani.nikula@linux.intel.com; Shankar, Uma
> > <uma.shankar@intel.com>
> > Subject: [v6] drm/i915/display: Enable DP Display Audio WA
> > 
> > For certain DP VDSC bpp settings, hblank asserts before hblank_early, leading to a
> > bad audio state. Driver need to program "hblank early enable" and "samples per line"
> > parameters in AUDIO_CONFIG_BE register.
> > 
> > This is Display Audio WA #1406928334 for 4k+VDSC usecase applicable on DP
> > encoders. Implemented the same.
> > 
> > v2: Fixed build failures on 32bit machine.
> > 
> > v3: Dropped u64, added helpers for sample room calculation,
> >     other general comments as per Jani Nikula's feedback.
> >     Also fixed connector type check (spotted by Anshuman)
> > 
> > v4: Addressed Jani Nikula and Kai's review comments.
> > 
> > v5: Addressed Anshuman's review comment and used crtc_* variable
> >     to get timings.
> > 
> > v6: Dropped a redundant initialization.
> 
> Change pushed to dinq. Thanks for the review.

You pushed even though it was failing in boot?

Please fix or revert.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
