Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1728813C917
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 17:19:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC5F6EA3E;
	Wed, 15 Jan 2020 16:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 028EF6EA3C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 16:19:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19890990-1500050 for multiple; Wed, 15 Jan 2020 16:18:52 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <ebdc5cd5-761e-1cfe-48f0-93bc37b32afc@intel.com>
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
 <157907760539.5559.7281364125701103353@skylake-alporthouse-com>
 <ebdc5cd5-761e-1cfe-48f0-93bc37b32afc@intel.com>
Message-ID: <157910513051.14122.10645009325140090342@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 Jan 2020 16:18:50 +0000
Subject: Re: [Intel-gfx] [PATCH 0/7] Commit early to GuC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniele Ceraolo Spurio (2020-01-15 15:57:27)
> 
> 
> On 1/15/2020 12:40 AM, Chris Wilson wrote:
> > Quoting Daniele Ceraolo Spurio (2020-01-15 01:31:36)
> >> We currently wait until we attempt to load the GuC to confirm if we're
> >> in GuC mode or not, at which point a lot of the engine setup has already
> >> happened and needs to be updated for GuC submission. To allow us to get
> >> the setup done directly into GuC mode, we need to commit to using GuC
> >> as soon as possible.
> > I think this is the wrong direction; as I thought the goal was to allow
> > delayed loading of firmware, even going as far as allowing the system to
> > run a browser for the user to get the firmware first. I may be
> 
> We do indeed want to keep supporting execlists mode even as some HW 
> features move to the GuC to allow the user to get to the binaries, but 
> we don't want to switch between the 2 modes without a reboot. Switching 
> between the 2 modes is not a HW capability that we're committed to; the 
> guc->elsp transition is already not possible, while the elsp->guc one 
> still seems to work, but who knows for how long it will?
> 
> This series is also not really changing the commitment at the 
> implementation level, just making it "official" and acting based on 
> that. Even without these patches, if the blobs are on the system we will 
> attempt to get into GuC mode unless we get an allocation failure or 
> something similar, in which case it is extremely likely that the 
> fall-back to non-guc will not work either.
> 
> > completely wrong about that, but imho I never want to have to build
> > firmware images into the kernel.
> 
> I do 100% agree with this statement, although I'm not sure how this 
> relates to the series. Are you planning to pull some of the engine setup 
> to an even earlier point?
> 
> >
> > The transition from execlists to guc could be just set-wedged; delete
> > old engines, build guc engines. [This should also work for guc -> guc.]
> > Throwing away context state is ugly, but simple enough.
> 
> As mentioned above, we can't switch between elsp and GuC modes so this 
> transition would have to be done before the first submission to HW. Why 
> not go directly in GuC mode then?

So the problem is if we can't freely switch (we can never power down the
guc, that seems unlikely?) then we can't make a decision on which mode
to run (and which engines to initialise) until userspace is active and
has committed to supplying or not supplying a fw image. Which puts us in
a catch-22 of wanting to register the driver with userspace before we
have finalized initialisation.

If the transition is impossible, it seems like you have no choice but to
require the fw image at initialisation. I do not understand why it has
to be that way, seems such a hindrance.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
