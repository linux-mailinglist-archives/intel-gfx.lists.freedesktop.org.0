Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3BD153283
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 15:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042BF6E9A0;
	Wed,  5 Feb 2020 14:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B996E9A0
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 14:08:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20125061-1500050 for multiple; Wed, 05 Feb 2020 14:08:40 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200205123757.1834947-1-chris@chris-wilson.co.uk>
 <871rr9b07x.fsf@gaia.fi.intel.com>
In-Reply-To: <871rr9b07x.fsf@gaia.fi.intel.com>
Message-ID: <158091171763.3271.18072693037503580803@skylake-alporthouse-com>
Date: Wed, 05 Feb 2020 14:08:37 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark i915.reset as unsigned
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

Quoting Mika Kuoppala (2020-02-05 14:03:14)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > We have been using '-1' to mean the maximum i915.reset level in the
> > belief that it was unsigned... This turns out to have been a grave
> > error, and instead of setting the default reset mechanism in igt,
> > we have been disabling reset!
> 
> Disabling engine reset?

Hmm, Right,

bool intel_has_gpu_reset(const struct intel_gt *gt)
{
        if (!i915_modparams.reset)
                return NULL;

        return intel_get_gpu_reset(gt);
}

bool intel_has_reset_engine(const struct intel_gt *gt)
{
        if (i915_modparams.reset < 2)
                return false;

        return INTEL_INFO(gt->i915)->has_reset_engine;
}

just engine-reset. Still that wasn't the intention when setting -1.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
