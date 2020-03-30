Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D9E197E01
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 16:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0352F89933;
	Mon, 30 Mar 2020 14:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A69C89933
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20740858-1500050 for multiple; Mon, 30 Mar 2020 15:12:02 +0100
MIME-Version: 1.0
In-Reply-To: <aed4cc3e-7589-15f1-f1b8-0196f608b449@intel.com>
References: <20200330113302.1670-1-michal.wajdeczko@intel.com>
 <158557133270.3228.3738598788092230448@build.alporthouse.com>
 <aed4cc3e-7589-15f1-f1b8-0196f608b449@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158557752051.3228.17902248603368004966@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 15:12:00 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Add more errors for
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

Quoting Michal Wajdeczko (2020-03-30 15:02:53)
> 
> 
> On 30.03.2020 14:28, Chris Wilson wrote:
> > There's nothing else between us loading the fw and the huc rejecting
> > it?
> > 
> > FIRMWARE_FAIL? That's set as the opposite of FIRMWARE_TRANSFERRED in
> > that we failed to upload the image to the HW. The firmware itself hasn't
> > had a chance to run.
> > 
> > case INTEL_UC_FIRMWARE_FAIL:
> >       return -ENXIO;
> > 
> > Or is that being overridden to FIRMWARE_ERROR?
> 
> No, it's not overridden by FIRMWARE_ERROR (since we use FIRMWARE_ERROR
> as final state, while with FIRMWARE_FAIL there is a chance for recovery
> during reset)
> 
> Also note that FIRMWARE_FAIL case is covered by the register check that
> we have below, which provides HuC runtime status.

Yes, if it only reports on the auth failure.

> And if we decide to use FIRMWARE_FAIL to report -ENXIO, then it is
> unlikely that we will ever report 0 again for any other fw error that
> could prevent fw from successful load (now recall your and Joonas
> position that this param shall stay as reflection of register read).
> 
> Michal
> 
> ps. on other hand, if we trust our uc_fw_status() then we can drop that
> register read, finally decouple GET_PARAM from MMIO_READ and fully rely
> on cached status:

imo, that register read is the icing on the cake. We can tell whether
the FW got to the HW, but we can't tell if the HW was truly happy with
the FW without asking it.

I look at it as exposing an interface for the final capability bits to
userspace that the kernel does not have to understand, that go above and
beyond the kernel loading the firmware and confirming execution.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
