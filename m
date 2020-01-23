Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DC5146D5D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 16:52:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB236FD99;
	Thu, 23 Jan 2020 15:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9206FD99
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 15:52:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19984562-1500050 for multiple; Thu, 23 Jan 2020 15:52:00 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20200122194825.101240-1-michal.wajdeczko@intel.com>
 <67edac14-e319-a1b2-76a1-1404ca5836e2@intel.com>
 <157979173710.19995.3438477214193047615@skylake-alporthouse-com>
 <op.0euq22k9xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <157979471850.19995.901739010740499969@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 Jan 2020 15:51:58 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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

Quoting Michal Wajdeczko (2020-01-23 15:38:52)
> On Thu, 23 Jan 2020 16:02:17 +0100, Chris Wilson  
> <chris@chris-wilson.co.uk> wrote:
> 
> > Quoting Daniele Ceraolo Spurio (2020-01-22 23:52:33)
> >>
> >>
> >> On 1/22/20 11:48 AM, Michal Wajdeczko wrote:
> >> >  From commit 84b1ca2f0e68 ("drm/i915/uc: prefer intel_gt over i915
> >> > in GuC/HuC paths") we stopped using HUC_STATUS error -ENODEV only
> >> > to indicate lack of HuC hardware and we started to use this error
> >> > also for all other cases when HuC was not in use or supported.
> >> >
> >> > Fix that by relying again on HAS_GT_UC macro, since currently
> >> > used function intel_huc_is_supported() is based on HuC firmware
> >> > support which could be unsupported also due to force disabled
> >> > GuC firmware.
> >> >
> >> > Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >> > Cc: Tony Ye <tony.ye@intel.com>
> >>
> >> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >
> > Once upon a time did you (Michal) not argue we should indicate the lack
> > of firmware in the error code? Something like
> >
> > if (!HAS_GT_UC(gt->i915))
> >       return -ENODEV;
> >
> > if (!intel_huc_is_supported(huc))
> >       return -ENOEXEC;
> 
> Yes, we discussed this here [1] together with [2] but we didn't
> conclude our discussion due to different opinions on how represent
> some states, in particular "manually disabled" state.
> 
> In this patch I just wanted to restore old notation.
> 
> But we can start new discussion, here is summary:
> 
> ------------------+----------+----------+----------
>   HuC state        | today*   | option A | option B
> ------------------+----------+----------+----------
> no HuC hardware   | -ENODEV  | -ENODEV  | -ENODEV
> GuC fw disabled   |   0      |     0    | -EOPNOTSUPP
> HuC fw disabled   |   0      |     0    | -EOPNOTSUPP
> HuC fw missing    |   0      | -ENOPKG  | -ENOEXEC
> HuC fw error      |   0      | -ENOEXEC | -ENOEXEC
> HuC fw fail       |   0      | -EACCES  |    0
> HuC authenticated |   1      |     1    |    1
> ------------------+----------+----------+----------

By fw fail, you mean we loaded the firmware (to our knowledge)
correctly, but HUC_STATUS is not reported as valid?

If so, I support option B. I like the idea of saying
"no HuC" (machine too old)
"no firmware" (user action, or lack thereof)
0 (fw unhappy)
1 (fw reports success)

In between states for failures in fw loading? Not so sure. But I can see
the nicety in distinguishing between lack of firmware and some random
failure in loading the firmware (the former being user action required
to rectify, command line parameter whatever and the latter being the
firmware file is either invalid or a stray neutrino prevented loading).

Imo the error messages should be about why we cannot probe/trust the
HUC_STATUS register. If everything is setup correctly then the returned
value should be from reading the register. I dislike only returning 1 if
supported, and converting a valid read of 0 into another error.

So Option B :)

> Note that all above should be compatible with media driver,
> which explicitly looks for no error and value 1

Cool.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
