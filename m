Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B98F2B6BF0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 18:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD0A89F73;
	Tue, 17 Nov 2020 17:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2296989F73
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 17:40:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23021966-1500050 for multiple; Tue, 17 Nov 2020 17:40:34 +0000
MIME-Version: 1.0
In-Reply-To: <9701765a7a5bff8551859384e15eb1c8a19b4cc5.camel@intel.com>
References: <20201117171411.10030-1-chris@chris-wilson.co.uk>
 <9701765a7a5bff8551859384e15eb1c8a19b4cc5.camel@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Souza, Jose" <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 17:40:36 +0000
Message-ID: <160563483651.10300.17227048667820371697@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/phy: Quieten state loss across
 suspend
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Souza, Jose (2020-11-17 17:19:19)
> On Tue, 2020-11-17 at 17:14 +0000, Chris Wilson wrote:
> > When the HW is powered down, the register state and links are lost. This
> > may be an issue in the firmware, or in the code expectations; whatever
> > it is, it is expected behaviour now for Tigerlake; stop warning!
> > 
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/2411
> 
> We are missing a IFWI/firmware update to fix this issue, already asked CI team to update but no luck so far.
> 
> During icl_combo_phys_uninit() is expected to have the registers set with expected values as it was not powered down yet.

I thought it was being thrown from the resume path, my bad reading of the
suspend events.

Still is there no other way to prove it is an out right error, or
dismiss it as irrelevant? Or disable the fw if it is misbehaving.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
