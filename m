Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 922618BC98C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 10:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16D610EE49;
	Mon,  6 May 2024 08:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ntq0b4hQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 652C9112244
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 08:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714984086; x=1746520086;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=iPRXNJF6Nvhp3mzJk4AP4BcSeUk7YTSfOrqZ+6MX1Yg=;
 b=Ntq0b4hQcdOoAe1xvh0UqX65niAol3cKfXV5ONWc6Lao4RyhBAOn518V
 4Lax0zPs1mEoDB6fgzJvd9CbAdBx/TOfHbEw1C8o2luL6OhP8jirlFkzz
 uK04SYhyrTxZtTUjaxpaIGPbos12ultPXgfooAgG79w3fMXJCcJpx8cmN
 x7xWxFDYKxewEDBQ2oXisfiYgR9rodKI+pTcmIR3DPCRwth3OLNSpEtcH
 PHIHsx91IwaaS9Zne8CoLDqXilL7vem/h6ryyrzRmyR3Q77LYck5urWPj
 ddeh8cr/7ihJ96ipcrmL4LQuGnvL9GUHFu8p/86xJG6fIe96bIGqXAS24 Q==;
X-CSE-ConnectionGUID: afAiKherSZWK8NOHZPvyBQ==
X-CSE-MsgGUID: Wlmpo0v5QPmcR0F4BPcSyA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10596353"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="10596353"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:28:05 -0700
X-CSE-ConnectionGUID: xoqGUVBmS6utc22ZrDkmRA==
X-CSE-MsgGUID: vJxfqyTASDe0xOH9L0TODg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28177441"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:28:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 17/19] drm/i915: pass dev_priv explicitly to ALPM_CTL2
In-Reply-To: <b25a29ac1fc9761f336e8b3793fae037c9f8388f.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714471597.git.jani.nikula@intel.com>
 <09acf2751cfd2f524e6ba97c3ac285495eae5c86.1714471597.git.jani.nikula@intel.com>
 <ZjGoJC6I5W9HQw4R@intel.com> <874jbgpkcp.fsf@intel.com>
 <b25a29ac1fc9761f336e8b3793fae037c9f8388f.camel@intel.com>
Date: Mon, 06 May 2024 11:28:00 +0300
Message-ID: <87v83rny3z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 May 2024, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Thu, 2024-05-02 at 13:40 +0300, Jani Nikula wrote:
>> On Tue, 30 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> > On Tue, Apr 30, 2024 at 01:10:11PM +0300, Jani Nikula wrote:
>> > > Avoid the implicit dev_priv local variable use, and pass dev_priv
>> > > explicitly to the ALPM_CTL2 register macro.
>> > >
>> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>> > >  1 file changed, 1 insertion(+), 1 deletion(-)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> > > b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> > > index 4d950b22d4f1..05dc1c1d4ac2 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> > > +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
>> > > @@ -321,7 +321,7 @@
>> > >  #define
>> > > ALPM_CTL_AUX_LESS_WAKE_TIME(val)              REG_FIELD_PREP(ALPM
>> > > _CTL_AUX_LESS_WAKE_TIME_MASK, val)
>> > >
>> > >  #define _ALPM_CTL2_A   0x60954
>> > > -#define ALPM_CTL2(tran)        _MMIO_TRANS2(dev_priv, tran,
>> > > _ALPM_CTL2_A)
>> > > +#define ALPM_CTL2(dev_priv, tran)      _MMIO_TRANS2(dev_priv,
>> > > tran, _ALPM_CTL2_A)
>> >
>> > no usage? should we just delete it?
>>
>> I believe a recent addition to enable ALPM. Jouni?
>
> I added it together with other ALPM registers. Currently there is only
> one field for LunarLake and we are not changing it from the default. I
> would still keep it.
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks for all the reviews, pushed the lot to drm-intel-next.

BR,
Jani.



>
>
>>
>> BR,
>> Jani.
>>
>> >
>> > >  #define
>> > > ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK               REG_GENMASK
>> > > (28, 24)
>> > >  #define
>> > > ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)               REG_FIELD_P
>> > > REP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
>> > >  #define
>> > > ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK           REG_GENMASK
>> > > (19, 16)
>> > > --
>> > > 2.39.2
>> > >
>>
>

--=20
Jani Nikula, Intel
