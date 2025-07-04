Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53F5AF930C
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 14:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B376910EA2C;
	Fri,  4 Jul 2025 12:47:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bYpjyxLu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4C210EA20;
 Fri,  4 Jul 2025 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751633256; x=1783169256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=GWuCbOVFHfYwmQvK/UrJd3j1YCJvnBbJ6UWQHQmCa2E=;
 b=bYpjyxLuPXRFUA7ReAu3dJa/QOFMSo57laxxAdojiVN96kG6Oxnh3ydj
 NMRybtxg14xKJg00+6MO7xvC3bCEZ9lVhOOBLCEx70jgXbkFGb1SSJRDo
 6ChgEX8FD9scLw/gg/CoY1a5dsBsQXmG2OlnQEm1WB4+h/GMLyG8kFerl
 X0D40NXCKIql7MmhN4LMRHvgC60Hus/lEM9jtuvOD2s2P2bwJ9zb426vg
 ZrDpmUsvDMPZQAjwFGFqNYWYf+9m5/zC6m1OqWpmM5rFXHUjn79F2G5Xm
 Un22Hft4aiT5m3QFoOdE9dETjzE/Jq8AxTwFeTyLJQuPm4BuZEEWmeYys w==;
X-CSE-ConnectionGUID: Iee4OF7oRpaRQQ3LhbEt7Q==
X-CSE-MsgGUID: 9dGWM1UCT4Gag97rI0qF+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53100165"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="53100165"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 05:47:36 -0700
X-CSE-ConnectionGUID: pbRuhhs3TAWTuwUHbuRSig==
X-CSE-MsgGUID: csKY7TiEReSUT48AYoc5KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="185592122"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 05:47:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 arun.r.murthy@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/display: Optimize panel power-on wait time
In-Reply-To: <91eb3ff6-1b47-4ca3-acb3-566a97eb6d35@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
 <b5a84286f9729e9d92e08596bfbeb4e9c77f6dc1@intel.com>
 <w22u6gjs6uuzfkksxrp6cjlkli2jzanqodb7ukyptlsv4a2kvk@kni4djwoeefx>
 <fe44d12c701c3d410de6e0ebc1f08bae2eec10a1@intel.com>
 <91eb3ff6-1b47-4ca3-acb3-566a97eb6d35@intel.com>
Date: Fri, 04 Jul 2025 15:47:30 +0300
Message-ID: <652c78d343137c9cd67eea2bb7059854c24a62cf@intel.com>
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

On Thu, 03 Jul 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrah=
manian@intel.com> wrote:
> On 02-07-2025 14:31, Jani Nikula wrote:
>> On Tue, 01 Jul 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>> On Tue, Jul 01, 2025 at 12:28:41PM +0300, Jani Nikula wrote:
>>>> On Mon, 30 Jun 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.s=
ubrahmanian@intel.com> wrote:
>>>>>   The current wait_panel_on() uses intel_de_wait() with a long timeout
>>>>>   (5000ms), which is suboptimal on Xe platforms where the underlying
>>>>>   xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>>>>   to unnecessary delays during resume or power-on  when the panel bec=
omes
>>>>>   ready earlier than the full timeout.
>>>>>
>>>>>   This patch splits the total wait time into two pases
>>>>>      - First wait for the typical panel-on time(180ms)
>>>>>      - If panel is not ready , continue polling in short 20ms interva=
ls
>>>>>        until the maximum timeout (5000ms) is reached
>>>> I'm *very* reluctant to merge any new custom wait hacks. I'm in the
>>>> process of *removing* a plethora of them [1][2][3].
>>> good riddance
>> Yay!
>>
>>>> I think the question is, should xe_mmio_wait32() (and the i915
>>>> counterpart) and the intel_de_wait*() functions be migrated to an
>>>> interface similar to read_poll_timeout(), i.e. provide sleep and timeo=
ut
>>>> separately, no exponential backoff. And implement the waits using
>>>> read_poll_timeout(), or whatever Ville ends up with [4].
>>> I saw your patch series and I'm eagerly waiting it to either propagate
>>> it in xe or have someone merge such a patch.  I'm not sure about
>>> removing the exponential backoff is a good thing overall, but if it's
>>> needed then it needs to be justified to add a new function to pair with
>>> read_poll_timeout(), not a custom driver function.
>> While I'm negative about the patch at hand, the underlying problem is
>> very real.
>>
>> I think at the very least the exponential sleep backoff needs an upper
>> bound that's relative to the timeout. Maybe 10-25% of timeout?
>>
>> With the example case of 5 second timeout, the exponential backoff
>> starting from 10 us leads to a dozen polls before reaching 100 ms
>> elapsed time, but then polls at approximately 1 s, 2 s, 4 s, and 8 s
>> elapsed time. Longer timeouts are of course rare, but they exhibit
>> increasingly worse behaviour.
>>
>> So if what we're waiting takes 2.1 seconds, the next check will be about
>> 2 seconds later. Similarly, if it takes 4.1 seconds, the next check will
>> be about 4 seconds later, in this case exceeding the timeout by 3
>> seconds.
>>
>> Anyway, if xe_mmio_wait32() remains as it is, with read_poll_timeout()
>> it's trivial to do the wait in the intel_de_*() macros, in display side,
>> with sleeps and timeouts defined in display. Because for most things the
>> really quick fast polls are useless in display.
>>
> This exponential sleep back-off is causing around 120ms additional=C2=A0=
=20
> delay in resume compared to=C2=A0 i915.
>
> how about polling as below , use=C2=A0intel_de_read and=C2=A0read_poll_ti=
meout
>
>  =C2=A0 =C2=A0 ret =3D read_poll_timeout(intel_de_read, reg_val,
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ((=
reg_val & mask) =3D=3D value),
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (2=
0 * 1000),=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 // poll every 20ms
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 (P=
ANEL_MAXIMUM_ON_TIME_MS * 1000),=C2=A0 // total=20
> timeout (us)
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tr=
ue,
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 di=
splay, pp_stat_reg);

This would be a temporary measure pending Ville's work [1], but I'm not
against it.

Also, needs to happen in wait_panel_status() instead of adding a
separate wait_panel_on_status() function.

BR,
Jani.


[1] https://lore.kernel.org/r/20250702223439.19752-1-ville.syrjala@linux.in=
tel.com

>
> Regards,
>
> Dibin
>
>> BR,
>> Jani.
>
>>
>>

--=20
Jani Nikula, Intel
