Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D6554CC66
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 17:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A6A10FEA9;
	Wed, 15 Jun 2022 15:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E62B10FEA9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 15:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655306162; x=1686842162;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/epXuYH67542loEcn+XAxyqAQnbg1//O50TWm8uUy1A=;
 b=VTRYVIIbdWr9Z+xRfm/Aeuo+SFzxKtm5NwNXhDTHL2geYF/vIBWnkc6f
 adCNN92qjffTyi0KAXtcGIG7FfPwmm+lP7wPIBCcfNyPIOFFSoY1JZFQ0
 xcfVRffgi0O8r2CxkutdDm5ThVvMI4viYbrA+Ew89wyPS97Yiu2o+qtlN
 X+sKormaSUO+L+XC0EQGccBX5Pr0ZRTe3EEvaXPd032swtgGEa7UFpEr2
 582Pdu6k8+nE3SekxUiTUKLqL6wDaS6xUm4nqUrP/E+Af9Fqr4rhmFseD
 Sq3s/YIZWN4zwc3lQVacJTT2m37o3HBzploGwcBSUytY2JPXmk9a/6cOF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="342953815"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="342953815"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:16:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="641050721"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:16:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <878rpyxak6.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1655297182.git.jani.nikula@intel.com>
 <YqneX9G0VVDqJvYC@intel.com> <878rpyxak6.fsf@intel.com>
Date: Wed, 15 Jun 2022 18:15:58 +0300
Message-ID: <875yl2x8i9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915/display: split out verifation,
 compare and dump from intel_display.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Jun 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 15 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Wed, Jun 15, 2022 at 03:47:54PM +0300, Jani Nikula wrote:
>>> The state verification and pipe config comparison/dumping are fairly
>>> isolated pieces of code within intel_display.c. Move them to separate
>>> files in a long overdue cleanup.
>>>=20
>>> Jani Nikula (7):
>>>   drm/i915/wm: move wm state verification to intel_pm.c
>>>   drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
>>>   drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
>>>   drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
>>
>> I'd perhaps go for foo_state_verify() naming convention. Would
>> match the foo_state_dump() naming convention I suggested
>> for the dumping stuff.
>
> Roger.
>
>>
>> Apart from that these ^ four are
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>>>   drm/i915/display: split out modeset verification code
>>
>> I really hate some of that code. I guess hiding it is one option :P
>> This one ^ is
>> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Yeah, there's some weird stuff. For example we only call
> verify_encoder_state() only to verify it's disabled.
>
>>
>>>   drm/i915/display: split out pipe config compare to a separate file
>>
>> Not entirely sure I like moving this one. The fastset stuff
>> within needs to stay in sync with the fastset codepaths which
>> are in intel_display.c. Not sure if we risk more bugs if it's
>> too well hidden...
>
> Mixed feelings. The problem remains, the file is still too damn big, and
> it's hard to draw the lines what to extract. Maybe all the modeset code
> needs to be lifted, along with the config compare, but then I think that
> has too many dependencies to axe out cleanly. Damned if you do, damned
> if you don't.

I've also got a patch to move intel_modeset_setup_hw_state() and all the
static functions only it calls to another file. Do you also think that
needs to be together with the modeset code...?

BR,
Jani.


>
> BR,
> Jani.
>
>
>>
>>>   drm/i915/display: split out pipe config dump to a separate file
>>>=20
>>>  drivers/gpu/drm/i915/Makefile                 |    3 +
>>>  drivers/gpu/drm/i915/display/intel_display.c  | 1373 +----------------
>>>  drivers/gpu/drm/i915/display/intel_display.h  |    3 +
>>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   88 ++
>>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    5 +
>>>  .../drm/i915/display/intel_modeset_verify.c   |  247 +++
>>>  .../drm/i915/display/intel_modeset_verify.h   |   21 +
>>>  .../i915/display/intel_pipe_config_compare.c  |  581 +++++++
>>>  .../i915/display/intel_pipe_config_compare.h  |   17 +
>>>  .../drm/i915/display/intel_pipe_config_dump.c |  314 ++++
>>>  .../drm/i915/display/intel_pipe_config_dump.h |   16 +
>>>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   43 +
>>>  drivers/gpu/drm/i915/display/intel_snps_phy.h |    5 +-
>>>  drivers/gpu/drm/i915/intel_pm.c               |  138 +-
>>>  drivers/gpu/drm/i915/intel_pm.h               |   14 +-
>>>  15 files changed, 1482 insertions(+), 1386 deletions(-)
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_comp=
are.c
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_comp=
are.h
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump=
.c
>>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump=
.h
>>>=20
>>> --=20
>>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
