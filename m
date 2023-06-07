Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0CE725B79
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 12:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F8610E00B;
	Wed,  7 Jun 2023 10:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E4E10E00B
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 10:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686133261; x=1717669261;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZZjSLkDfgtNSmsmt9CE+yKCtF/MeM5I5EKnR/GYafyg=;
 b=b8G9Frx4kRgiGdCcQDva1m7L4ewD70iuYsj+l0bgmKExBXLBUKQn+xtD
 FmXLKiNDXOjQi3AfilPmdSPhS4+Mu8FzholPwcLEsGVEmA9iEwK1L0tru
 ouqZ8GU57mukrWYT5QxgPDxa9aiaMqsXIZkuAG6/6ZxvvWv8cmKL0WRtO
 0iCfSv3stPF/iukdige9lj+RMXuNGuU92iii/Uk3RFiE8g0JV3h7/YB3G
 8vc4wrGew0D9wAVdAICHjUojVnHAirBZNMnsSjB9gnZEIAq80rgZpEZjE
 hFo3q2x3lqxKvpgJedoAimEk1P5JUfxCzks+gPC1mwutHl8JyRnPtWgVq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="385264678"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="385264678"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 03:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="883684642"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="883684642"
Received: from nnesher-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.222])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 03:20:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <5a1ad448df6cd5540103d68c76db7fb7bde56c79.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230602132321.3199445-1-jani.nikula@intel.com>
 <5a1ad448df6cd5540103d68c76db7fb7bde56c79.camel@intel.com>
Date: Wed, 07 Jun 2023 13:20:56 +0300
Message-ID: <87h6rjtvxz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: stop using edid_blob_ptr
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

On Wed, 07 Jun 2023, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Fri, 2023-06-02 at 16:23 +0300, Jani Nikula wrote:
>> Only the EDID code and sysfs should look at the EDID property. Stop
>> using it.
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++----
>> --
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index 2a4df62692a6..165e2c7e3126 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -6,6 +6,7 @@
>>  #include <linux/string_helpers.h>
>>
>>  #include <drm/drm_debugfs.h>
>> +#include <drm/drm_edid.h>
>>  #include <drm/drm_fourcc.h>
>>
>>  #include "hsw_ips.h"
>> @@ -228,19 +229,18 @@ static void intel_hdcp_info(struct seq_file *m,
>>         seq_puts(m, "\n");
>>  }
>>
>> -static void intel_dp_info(struct seq_file *m,
>> -                         struct intel_connector *intel_connector)
>> +static void intel_dp_info(struct seq_file *m, struct intel_connector
>> *connector)
>>  {
>> -       struct intel_encoder *intel_encoder =3D
>> intel_attached_encoder(intel_connector);
>> +       struct intel_encoder *intel_encoder =3D
>> intel_attached_encoder(connector);
>>         struct intel_dp *intel_dp =3D enc_to_intel_dp(intel_encoder);
>> -       const struct drm_property_blob *edid =3D intel_connector-
>> >base.edid_blob_ptr;
>> +       const struct edid *edid =3D drm_edid_raw(connector-
>> >detect_edid);
>>
>>         seq_printf(m, "\tDPCD rev: %x\n", intel_dp-
>> >dpcd[DP_DPCD_REV]);
>>         seq_printf(m, "\taudio support: %s\n",
>> -                  str_yes_no(intel_connector-
>> >base.display_info.has_audio));
>> +                  str_yes_no(connector-
>> >base.display_info.has_audio));
>>
>>         drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp-
>> >downstream_ports,
>> -                               edid ? edid->data : NULL, &intel_dp-
>> >aux);
>> +                               edid, &intel_dp->aux);
>>  }
>>
>>  static void intel_dp_mst_info(struct seq_file *m,
>

--=20
Jani Nikula, Intel Open Source Graphics Center
