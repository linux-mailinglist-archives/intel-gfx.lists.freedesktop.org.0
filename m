Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714C1B35A80
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 12:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D5B310E631;
	Tue, 26 Aug 2025 10:56:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naNR+Ibh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528AF10E2F0;
 Tue, 26 Aug 2025 10:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756205803; x=1787741803;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Cima1+Iqo6LOGJ1YzdhrB4htTTHoYWHnhTCKCHSN8l0=;
 b=naNR+IbhcvzF5AUEoImvrt2MxfiC4V4T/1k3FruRsVk84Hak7fzo9PiI
 QnDvthm/x9JjyjaIdONoWEHcJnTt0oyGrWoKyNv073wzh0NrsF+7xucee
 l2tFb9jyd/NnlpIyKcCqzvSwcNXXey40Cu+Sf7NKS3JS7dNwYzHP0+oC4
 tHWaeq90S7jdqDkZptxEgs/rr3rHLbtbKlPQW1HnEZRaZTaEg3QV6Fiaz
 rQr3VFu/s9wpBiNOKXBSkmPZkTJ5giK5fP5XofJrHmBSRAPotDRR3yDkD
 +To8xaZBLH3ysxhTlXLOtTWBKSobL537WVj8flq9iYmKKP4kaI0javYPS g==;
X-CSE-ConnectionGUID: L9evsD6nSdCLp5Uzizir7g==
X-CSE-MsgGUID: RBpV1UIhRnCVDkQz+MPbKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11533"; a="46011582"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="46011582"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 03:56:43 -0700
X-CSE-ConnectionGUID: OBVlZwNiRm2Dws0pyVQv/A==
X-CSE-MsgGUID: KKJuS7akRC2UpPCyCabZ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169721311"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.97])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 03:56:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Dibin Moolakadan
 Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>, Imre Deak
 <imre.deak@intel.com>, David Laight <david.laight.linux@gmail.com>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Matt Wagantall
 <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, Andrew
 Morton <akpm@linux-foundation.org>, Sima Vetter <sima@ffwll.ch>, Dave
 Airlie <airlied@redhat.com>
Subject: Re: [PATCH v2 1/4] iopoll: Generalize read_poll_timeout() into
 poll_timeout_us()
In-Reply-To: <6509cf62cc5c28e1626a6ee82c9f9caf62a7ef4b@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
 <20250708131634.1524-1-ville.syrjala@linux.intel.com>
 <aHacCnkuMCwNYin8@intel.com>
 <6509cf62cc5c28e1626a6ee82c9f9caf62a7ef4b@intel.com>
Date: Tue, 26 Aug 2025 13:56:34 +0300
Message-ID: <cd2c7eb2b6877704534620098374075416514ce0@intel.com>
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

On Thu, 31 Jul 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 15 Jul 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>> On Tue, Jul 08, 2025 at 04:16:34PM +0300, Ville Syrjala wrote:
>>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>>=20
>>> While read_poll_timeout() & co. were originally introduced just
>>> for simple I/O usage scenarios they have since been generalized to
>>> be useful in more cases.
>>>=20
>>> However the interface is very cumbersome to use in the general case.
>>> Attempt to make it more flexible by combining the 'op', 'var' and
>>> 'args' parameter into just a single 'op' that the caller can fully
>>> specify.
>>>=20
>>> For example i915 has one case where one might currently
>>> have to write something like:
>>> 	ret =3D read_poll_timeout(drm_dp_dpcd_read_byte, err,
>>> 				err || (status & mask),
>>> 				0 * 1000, 200 * 1000, false,
>>> 				aux, DP_FEC_STATUS, &status);
>>> which is practically illegible, but with the adjusted macro
>>> we do:
>>> 	ret =3D poll_timeout_us(err =3D drm_dp_dpcd_read_byte(aux, DP_FEC_STAT=
US, &status),
>>> 			      err || (status & mask),
>>> 			      0 * 1000, 200 * 1000, false);
>>> which much easier to understand.
>>>=20
>>> One could even combine the 'op' and 'cond'  parameters into
>>> one, but that might make the caller a bit too unwieldly with
>>> assignments and checks being done on the same statement.
>>>=20
>>> This makes poll_timeout_us() closer to the i915 __wait_for()
>>> macro, with the main difference being that __wait_for() uses
>>> expenential backoff as opposed to the fixed polling interval
>>> used by poll_timeout_us(). Eventually we might be able to switch
>>> (at least most of) i915 to use poll_timeout_us().
>>>=20
>>> v2: Fix typos (Jani)
>>>     Fix delay_us docs for poll_timeout_us_atomic() (Jani)
>>>=20
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.=
com>
>>> Cc: Imre Deak <imre.deak@intel.com>
>>> Cc: David Laight <david.laight.linux@gmail.com>
>>> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
>>> Cc: Matt Wagantall <mattw@codeaurora.org>
>>> Cc: Dejin Zheng <zhengdejin5@gmail.com>
>>> Cc: intel-gfx@lists.freedesktop.org
>>> Cc: intel-xe@lists.freedesktop.org
>>> Cc: linux-kernel@vger.kernel.org
>>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>> ---
>>>  include/linux/iopoll.h | 110 +++++++++++++++++++++++++++++------------
>>>  1 file changed, 78 insertions(+), 32 deletions(-)
>>
>> Any thoughs how we should get this stuff in? Jani will need it for
>> some i915 stuff once he returns from vacation, so I could just push
>> it into drm-intel-next...
>>
>> Are people OK with that, or is there a better tree that could pick=20
>> this up?
>
> Cc: Andrew
>
> The iopoll.h file is not in MAINTAINERS, and previous changes to it
> appear to have gone through various trees. I'd like to base follow-up
> work in i915 on this, but who could ack merging the patches via
> drm-intel-next? Though doesn't look like anyone's acked the earlier
> changes either...

Ville, can you submit this again, please?

If we don't get any feedback from anyone, I'm just going to merge this
via drm-intel-next.

Cc: Dave, Sima.


BR,
Jani.


--=20
Jani Nikula, Intel
