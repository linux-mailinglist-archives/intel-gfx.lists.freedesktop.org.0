Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E41CB2F218B
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 22:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6188589E2B;
	Mon, 11 Jan 2021 21:11:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6B989E2B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 21:11:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23564508-1500050 for multiple; Mon, 11 Jan 2021 21:11:02 +0000
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB379949C26EB75C832D559822A9AB0@BYAPR11MB3799.namprd11.prod.outlook.com>
References: <20210110150404.19535-1-chris@chris-wilson.co.uk>
 <20210110150404.19535-3-chris@chris-wilson.co.uk>
 <BYAPR11MB379949C26EB75C832D559822A9AB0@BYAPR11MB3799.namprd11.prod.outlook.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 11 Jan 2021 21:10:59 +0000
Message-ID: <161039945998.28181.6651626457900840592@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 03/11] drm/i915: Allow the sysadmin to
 override security mitigations
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Abodunrin, Akeem G (2021-01-11 20:58:42)
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Chris
> > Wilson
> > Sent: Sunday, January 10, 2021 7:04 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: stable@vger.kernel.org; Chris Wilson <chris@chris-wilson.co.uk>
> > Subject: [Intel-gfx] [PATCH 03/11] drm/i915: Allow the sysadmin to override
> > security mitigations
> > 
> > The clear-residuals mitigation is a relatively heavy hammer and under some
> > circumstances the user may wish to forgo the context isolation in order to
> > meet some performance requirement. Introduce a generic module parameter
> > to allow selectively enabling/disabling different mitigations.

> Although this seems like ideal solution - giving users option to choose *potential* performance over security or vice-versa -  However, I would have expected that this patch adds a DRM warning to inform users of the consequences of their action, whenever module parameter is used to disable any kind of mitigations. Well, that is my own perspective, not as a legal expert.

It's marked as unsafe; setting this parameter will issue a notice and
taint the kernel. That should be enough to warn of the consequences of
their actions, without going into the gruesome details.

I very briefly considered a few pr_warn_once() for each disabled
mitigation, but I am not sure what we should say to the user.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
