Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815115328C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 15:13:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447196E998;
	Wed,  5 Feb 2020 14:13:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B65F86E998
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 14:13:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 06:13:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="220112729"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 05 Feb 2020 06:12:59 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 72B635C0D46; Wed,  5 Feb 2020 16:12:06 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158091171763.3271.18072693037503580803@skylake-alporthouse-com>
References: <20200205123757.1834947-1-chris@chris-wilson.co.uk>
 <871rr9b07x.fsf@gaia.fi.intel.com>
 <158091171763.3271.18072693037503580803@skylake-alporthouse-com>
Date: Wed, 05 Feb 2020 16:12:06 +0200
Message-ID: <87y2th9l8p.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-02-05 14:03:14)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > We have been using '-1' to mean the maximum i915.reset level in the
>> > belief that it was unsigned... This turns out to have been a grave
>> > error, and instead of setting the default reset mechanism in igt,
>> > we have been disabling reset!
>> 
>> Disabling engine reset?
>
> Hmm, Right,
>
> bool intel_has_gpu_reset(const struct intel_gt *gt)
> {
>         if (!i915_modparams.reset)
>                 return NULL;
>
>         return intel_get_gpu_reset(gt);
> }
>
> bool intel_has_reset_engine(const struct intel_gt *gt)
> {
>         if (i915_modparams.reset < 2)
>                 return false;
>
>         return INTEL_INFO(gt->i915)->has_reset_engine;
> }
>
> just engine-reset. Still that wasn't the intention when setting -1.

I was trying to correlate the graveness to the code.

Glad that we agree. With commit message pointing to per engine
reset,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
