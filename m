Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB927068AC
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A4A10E40A;
	Wed, 17 May 2023 12:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F1F10E40A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684328020; x=1715864020;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xu9vBmuvHnXAfFDqrYqy2e8DCvAnNaiDe2GycgIxjMo=;
 b=a3LR1NhJNQv2O9uNEdZd+r1UWfYvc/0YWNt5NBiXE18oYvGKPjudGBDs
 nQSV/lGCvD5O2V+NyGB2En6YWuNUx/NkL2lqcF69vMCsdGZkR+XJTM61I
 MmkJJx6yKIP8YmmevgQKOZHp/NTpft0mePsIE11MPjASakJP7zsbj3qOd
 +bEKy6Yn2YovjyzDxxZER+CiAhBcrdKKtwvEVVu6SGRNbXvrWHPxgdGjC
 y5cpgeHEiZP6J8SCOHn/Y4oGOLQ2AE3TdfHWq6YLzrdFfuyThzjT2T0aO
 AKRxhv7qY8IpcQS7VolPMrsCliHJzE6vRhCR77GxotyqCIZOxtrb0u7J6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="332109883"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="332109883"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:53:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="704795318"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="704795318"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:53:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <SN7PR11MB67505AA3120196D8E8E684FDE3799@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230516094406.2675307-1-jani.nikula@intel.com>
 <SN7PR11MB67505AA3120196D8E8E684FDE3799@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Wed, 17 May 2023 15:53:36 +0300
Message-ID: <877ct7glv3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: tweak language in fastset pipe
 config compare logging
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

On Tue, 16 May 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>>
>> The "fastset mismatch" debug logging has been slightly confusing, leading
>> people to believe some error happened. Change it to the more informative
>> "fastset requirement not met", and add a final message about this leadin=
g to
>> full modeset.
>>
>
> LGTM.
>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
>>  1 file changed, 10 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 4b70b389e0cb..8afbaf8d1196 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -4857,7 +4857,7 @@ pipe_config_infoframe_mismatch(struct
>> drm_i915_private *dev_priv,
>>                       return;
>>
>>               drm_dbg_kms(&dev_priv->drm,
>> -                         "fastset mismatch in %s infoframe\n", name);
>> +                         "fastset requirement not met in %s infoframe\n=
",
>> name);
>>               drm_dbg_kms(&dev_priv->drm, "expected:\n");
>>               hdmi_infoframe_log(KERN_DEBUG, dev_priv->drm.dev, a);
>>               drm_dbg_kms(&dev_priv->drm, "found:\n"); @@ -4882,7
>> +4882,7 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_i915_private
>> *dev_priv,
>>                       return;
>>
>>               drm_dbg_kms(&dev_priv->drm,
>> -                         "fastset mismatch in %s dp sdp\n", name);
>> +                         "fastset requirement not met in %s dp sdp\n",
>> name);
>>               drm_dbg_kms(&dev_priv->drm, "expected:\n");
>>               drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, a);
>>               drm_dbg_kms(&dev_priv->drm, "found:\n"); @@ -4923,7
>> +4923,7 @@ pipe_config_buffer_mismatch(struct drm_i915_private
>> *dev_priv,
>>               len =3D memcmp_diff_len(a, b, len);
>>
>>               drm_dbg_kms(&dev_priv->drm,
>> -                         "fastset mismatch in %s buffer\n", name);
>> +                         "fastset requirement not met in %s buffer\n",
>> name);
>>               print_hex_dump(KERN_DEBUG, "expected: ",
>> DUMP_PREFIX_NONE,
>>                              16, 0, a, len, false);
>>               print_hex_dump(KERN_DEBUG, "found: ",
>> DUMP_PREFIX_NONE, @@ -4954,7 +4954,7 @@ pipe_config_mismatch(bool
>> fastset, const struct intel_crtc *crtc,
>>
>>       if (fastset)
>>               drm_dbg_kms(&i915->drm,
>> -                         "[CRTC:%d:%s] fastset mismatch in %s %pV\n",
>> +                         "[CRTC:%d:%s] fastset requirement not met in %s
>> %pV\n",
>>                           crtc->base.base.id, crtc->base.name, name, &va=
f);
>>       else
>>               drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s
>> %pV\n", @@ -5542,8 +5542,13 @@ static int intel_modeset_checks(struct
>> intel_atomic_state *state)  static void intel_crtc_check_fastset(const s=
truct
>> intel_crtc_state *old_crtc_state,
>>                                    struct intel_crtc_state *new_crtc_sta=
te)  {
>> -     if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, tru=
e))
>> +     struct drm_i915_private *i915 =3D
>> +to_i915(old_crtc_state->uapi.crtc->dev);
>> +
>> +     if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, tru=
e))
>> {
>> +             drm_dbg_kms(&i915->drm, "fastset requirement not met,
>> forcing full
>> +modeset\n");
>> +
>>               return;
>> +     }
>>
>>       new_crtc_state->uapi.mode_changed =3D false;
>>       if (!intel_crtc_needs_modeset(new_crtc_state))
>> --
>> 2.39.2
>

--=20
Jani Nikula, Intel Open Source Graphics Center
