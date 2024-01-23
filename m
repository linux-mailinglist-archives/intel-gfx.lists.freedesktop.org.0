Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA458396A0
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 18:41:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9E3710E7FA;
	Tue, 23 Jan 2024 17:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B166310E7FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 17:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706031684; x=1737567684;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=zMsgxXPRwUtyw/uvdDC35lptXQp7SpZAJgMt54ufkeM=;
 b=G/1XLxso9eWAAiZtNKlU5dCvsr7UkDLm1nELkKQqzsi3g819UueUC6gp
 AsZjqKltAkyQdE6wy2dS3h+G9SBIzzQCc2k1j7sC8IA8b7c93CGBpxxvn
 Mgl0KQxtz6i//weSDWPdOvPeXvLXcvz489HYSwZKxCZEAWanaxyTUi6wY
 c9n3wrUQi/9BTuWzQQeuhySnkHAp6jjZ/cQQZ2jgqkzlHq/SXZ7eJfvYc
 ZtRoEhifK478G85qUzv6kkF25YloK/OyrUZXEEIcsBFPynOjdo+6XH++h
 B0QaihksKBJ8rI2fXrvmuY95MqT5cydzwqsuLXYFo/tl9UCGYuMGK6d7M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="401257550"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="401257550"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 09:41:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="1659320"
Received: from pzsolt-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.183])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 09:41:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 09/21] drm/i915/psr: Panel replay has to be enabled
 before link training
In-Reply-To: <87r0i8lzjg.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-10-jouni.hogander@intel.com>
 <87r0i8lzjg.fsf@intel.com>
Date: Tue, 23 Jan 2024 19:41:19 +0200
Message-ID: <87o7dclzgg.fsf@intel.com>
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

On Tue, 23 Jan 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 19 Jan 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
>> Panel replay has to be enabled on sink side before link training. Take t=
his
>> into account in fastset check and in initial fastset check.
>>
>> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
>>  drivers/gpu/drm/i915/display/intel_dp.c      |  8 ++++++++
>>  drivers/gpu/drm/i915/display/intel_psr.c     |  3 ---
>>  drivers/gpu/drm/i915/display/intel_psr.h     |  3 +++
>>  4 files changed, 23 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index a92e959c8ac7..b7e5b2774f2e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5214,6 +5214,18 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>>  		PIPE_CONF_CHECK_CSC(output_csc);
>>  	}
>>=20=20
>> +	/*
>> +	 * Panel replay has to be enabled before link training. PSR doesn't ha=
ve
>> +	 * this requirement -> check these only if using panel replay
>> +	 */
>> +	if (current_config->has_panel_replay || pipe_config->has_panel_replay)=
 {
>> +		PIPE_CONF_CHECK_BOOL(has_psr);
>> +		PIPE_CONF_CHECK_BOOL(has_psr2);
>> +		PIPE_CONF_CHECK_BOOL(enable_psr2_sel_fetch);
>> +		PIPE_CONF_CHECK_BOOL(enable_psr2_su_region_et);
>> +		PIPE_CONF_CHECK_BOOL(has_panel_replay);
>> +	}
>> +
>>  	PIPE_CONF_CHECK_BOOL(double_wide);
>>=20=20
>>  	if (dev_priv->display.dpll.mgr) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index e7cda3162ea2..11143fb9b0f0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -3326,6 +3326,14 @@ bool intel_dp_initial_fastset_check(struct intel_=
encoder *encoder,
>>  		fastset =3D false;
>>  	}
>>=20=20
>> +	if (CAN_PANEL_REPLAY(intel_dp)) {
>> +		drm_dbg_kms(&i915->drm,
>> +			    "[ENCODER:%d:%s] Forcing full modeset to compute panel replay st=
ate\n",
>> +			    encoder->base.base.id, encoder->base.name);
>> +		crtc_state->uapi.mode_changed =3D true;
>> +		fastset =3D false;
>> +	}
>> +
>
> I think I'd rather start adding functionality specific functions that
> get called instead of exposing CAN_PANEL_REPLAY() and DP code covering
> everything.
>
> I.e. intel_psr_initial_fastset_check().

Rule of thumb: if code looks at intel_dp->psr, it belongs in
intel_psr.c.

Or, what would have to change if intel_dp->psr became an opaque pointer?

BR,
Jani.



>
> BR,
> Jani.
>
>>  	return fastset;
>>  }
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/=
i915/display/intel_psr.c
>> index b905aee0ec81..24a80f47b84f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -192,9 +192,6 @@
>>  #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
>>  			   (intel_dp)->psr.source_support)
>>=20=20
>> -#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_s=
upport && \
>> -				    (intel_dp)->psr.source_panel_replay_support)
>> -
>>  bool intel_encoder_can_psr(struct intel_encoder *encoder)
>>  {
>>  	if (intel_encoder_is_dp(encoder) || encoder->type =3D=3D INTEL_OUTPUT_=
DP_MST)
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/=
i915/display/intel_psr.h
>> index b74382b38f4a..e687d7bdbb1f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -21,6 +21,9 @@ struct intel_encoder;
>>  struct intel_plane;
>>  struct intel_plane_state;
>>=20=20
>> +#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_s=
upport && \
>> +				    (intel_dp)->psr.source_panel_replay_support)
>> +
>>  bool intel_encoder_can_psr(struct intel_encoder *encoder);
>>  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
>>  void intel_psr_enable_sink(struct intel_dp *intel_dp,

--=20
Jani Nikula, Intel
