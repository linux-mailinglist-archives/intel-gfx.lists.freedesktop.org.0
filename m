Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D27BF54CB61
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 16:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42EC210E80A;
	Wed, 15 Jun 2022 14:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D869410E80A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 14:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655303501; x=1686839501;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=e3LE5eM9DF69UhZuIo376Hv8RZY2pluR+AnslzkNArs=;
 b=dklClijmrPuCeLu1tgHh3/HMEBQntGwZDM2R6mu5c6sw11NjRmKyseDw
 c1rOasmpRymLTihSWmnJlep9ZoTzps02rKALQG3zTwmMfvJmvBozJkGoU
 nNglrchzltMFZNtHCR6z842yIiI2UBeoOzxSJOEYoIjU/xoyt+2G7X2C+
 /+Lcdvpv6QdrfZtLrKenQGO8CpqMBPIb1kXu+d3vhB4L4Jd1Qe1Yj0sUa
 qXepbT0aNhEqTfEfz4RARKfZjRxQBPe83hDnnIErDfj5HtHK6yQ/IBBfH
 hofc6HmE0iHlxCNXiesAxPRemWlW6oV4SuXJjinh8jLcXW29lCwcCY7OT g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="276551990"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="276551990"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 07:31:41 -0700
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="641025380"
Received: from jazuniga-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.33.103])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 07:31:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YqneX9G0VVDqJvYC@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1655297182.git.jani.nikula@intel.com>
 <YqneX9G0VVDqJvYC@intel.com>
Date: Wed, 15 Jun 2022 17:31:37 +0300
Message-ID: <878rpyxak6.fsf@intel.com>
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

On Wed, 15 Jun 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Jun 15, 2022 at 03:47:54PM +0300, Jani Nikula wrote:
>> The state verification and pipe config comparison/dumping are fairly
>> isolated pieces of code within intel_display.c. Move them to separate
>> files in a long overdue cleanup.
>>=20
>> Jani Nikula (7):
>>   drm/i915/wm: move wm state verification to intel_pm.c
>>   drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
>>   drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
>>   drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
>
> I'd perhaps go for foo_state_verify() naming convention. Would
> match the foo_state_dump() naming convention I suggested
> for the dumping stuff.

Roger.

>
> Apart from that these ^ four are
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>>   drm/i915/display: split out modeset verification code
>
> I really hate some of that code. I guess hiding it is one option :P
> This one ^ is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Yeah, there's some weird stuff. For example we only call
verify_encoder_state() only to verify it's disabled.

>
>>   drm/i915/display: split out pipe config compare to a separate file
>
> Not entirely sure I like moving this one. The fastset stuff
> within needs to stay in sync with the fastset codepaths which
> are in intel_display.c. Not sure if we risk more bugs if it's
> too well hidden...

Mixed feelings. The problem remains, the file is still too damn big, and
it's hard to draw the lines what to extract. Maybe all the modeset code
needs to be lifted, along with the config compare, but then I think that
has too many dependencies to axe out cleanly. Damned if you do, damned
if you don't.

BR,
Jani.


>
>>   drm/i915/display: split out pipe config dump to a separate file
>>=20
>>  drivers/gpu/drm/i915/Makefile                 |    3 +
>>  drivers/gpu/drm/i915/display/intel_display.c  | 1373 +----------------
>>  drivers/gpu/drm/i915/display/intel_display.h  |    3 +
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   88 ++
>>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |    5 +
>>  .../drm/i915/display/intel_modeset_verify.c   |  247 +++
>>  .../drm/i915/display/intel_modeset_verify.h   |   21 +
>>  .../i915/display/intel_pipe_config_compare.c  |  581 +++++++
>>  .../i915/display/intel_pipe_config_compare.h  |   17 +
>>  .../drm/i915/display/intel_pipe_config_dump.c |  314 ++++
>>  .../drm/i915/display/intel_pipe_config_dump.h |   16 +
>>  drivers/gpu/drm/i915/display/intel_snps_phy.c |   43 +
>>  drivers/gpu/drm/i915/display/intel_snps_phy.h |    5 +-
>>  drivers/gpu/drm/i915/intel_pm.c               |  138 +-
>>  drivers/gpu/drm/i915/intel_pm.h               |   14 +-
>>  15 files changed, 1482 insertions(+), 1386 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_verify.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compa=
re.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_compa=
re.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_pipe_config_dump.h
>>=20
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
