Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C4F250934
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 21:24:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3AE76E0B9;
	Mon, 24 Aug 2020 19:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C2B6E0B9
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 19:24:17 +0000 (UTC)
IronPort-SDR: NdxEbTvCQxwtnqk8lZyhxoErbLZnnuz697c/IOi9Htl/aymKcimYBs8n6ZFowR+KIlKdLR3pFX
 7qrGXq7JowhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="174015134"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="174015134"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 12:24:16 -0700
IronPort-SDR: ksX/F6EdSecZTJ6ewvxXZdGrsyhQNC6PFlvgTcFT1FCS/GanetBF+lGVtUONCIJdceiwYR6Mf8
 QD/QdgXQDJSQ==
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="499583813"
Received: from kdonepud-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.128.135])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 12:24:16 -0700
Date: Mon, 24 Aug 2020 12:24:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200824192416.3a75wbqwhan2xdv5@ldmartin-desk1>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-6-lucas.demarchi@intel.com>
 <791224e3effd491cc3276cbe55a2958dafdfe3fd.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <791224e3effd491cc3276cbe55a2958dafdfe3fd.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 05/22] drm/i915/dg1: Wait for
 pcode/uncore handshake at startup
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 03, 2020 at 04:24:17PM -0700, Jose Souza wrote:
>On Fri, 2020-07-24 at 14:39 -0700, Lucas De Marchi wrote:
>> From: Matt Roper <
>> matthew.d.roper@intel.com
>> >
>>
>> DG1 does some additional pcode/uncore handshaking at
>> boot time; this handshaking must complete before various other pcode
>> commands are effective and before general work is submitted to the GPU.
>> We need to poll a new pcode mailbox during startup until it reports that
>> this handshaking is complete.
>>
>> The bspec doesn't give guidance on how long we may need to wait for this
>> handshaking to complete.  For now, let's just set a really long timeout;
>> if we still don't get a completion status by the end of that timeout,
>> we'll just continue on and hope for the best.
>>
>> Bspec: 52065
>> Cc: Clinton Taylor <
>> Clinton.A.Taylor@intel.com
>> >
>> Cc: Ville Syrj=E4l=E4 <
>> ville.syrjala@linux.intel.com
>> >
>> Cc: Radhakrishna Sripada <
>> radhakrishna.sripada@intel.com
>> >
>> Signed-off-by: Matt Roper <
>> matthew.d.roper@intel.com
>> >
>> Signed-off-by: Lucas De Marchi <
>> lucas.demarchi@intel.com
>> >
>> ---
>>  drivers/gpu/drm/i915/i915_drv.c       |  3 +++
>>  drivers/gpu/drm/i915/i915_reg.h       |  3 +++
>>  drivers/gpu/drm/i915/intel_sideband.c | 15 +++++++++++++++
>>  drivers/gpu/drm/i915/intel_sideband.h |  2 ++
>>  4 files changed, 23 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915=
_drv.c
>> index 5fd5af4bc855..5473bfe9126c 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.c
>> +++ b/drivers/gpu/drm/i915/i915_drv.c
>> @@ -85,6 +85,7 @@
>>  #include "intel_gvt.h"
>>  #include "intel_memory_region.h"
>>  #include "intel_pm.h"
>> +#include "intel_sideband.h"
>>  #include "vlv_suspend.h"
>>
>>  static struct drm_driver driver;
>> @@ -737,6 +738,8 @@ static int i915_driver_hw_probe(struct drm_i915_priv=
ate *dev_priv)
>>  	 */
>>  	intel_dram_detect(dev_priv);
>>
>> +	intel_pcode_init(dev_priv);
>> +
>>  	intel_bw_init_hw(dev_priv);
>>
>>  	return 0;
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index a0d31f3bf634..3767b32127da 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -9245,6 +9245,9 @@ enum {
>>  #define     GEN9_SAGV_DISABLE			0x0
>>  #define     GEN9_SAGV_IS_DISABLED		0x1
>>  #define     GEN9_SAGV_ENABLE			0x3
>> +#define   DG1_PCODE_STATUS			0x7E
>> +#define     DG1_CHECK_UNCORE_INIT_STATUS	0x0
>> +#define     DG1_UNCORE_INIT_COMPLETE		0x1
>
>With s/DG1_CHECK_UNCORE_INIT_STATUS/DG1_CHECK_UNCORE_INIT_STATUS_COMPLETE =
or something similar that makes easy to understand that 0x1 is the response
>of the DG1_CHECK_UNCORE_INIT_STATUS sub-command.

checking all the other users of skl_pcode_request() I don't see a
pattern there. Examples:

ret =3D skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
                         SKL_CDCLK_PREPARE_FOR_CHANGE,     =

                         SKL_CDCLK_READY_FOR_CHANGE,       =

                         SKL_CDCLK_READY_FOR_CHANGE, 3);   =


ret =3D skl_pcode_request(dev_priv, GEN9_PCODE_SAGV_CONTROL,            =

                         GEN9_SAGV_DISABLE,                            =

                         GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED, =

                         1);                                           =


Giveng the current uses, I'd rather rename like:

+#define   DG1_PCODE_STATUS			0x7E
+#define     DG1_UNCORE_GET_INIT_STATUS		0x0
+#define     DG1_UNCORE_INIT_STATUS_COMPLETE	0x1


>Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

does that still stands with the rename above?

thanks
Lucas De Marchi

>
>
>>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>>  #define GEN6_PCODE_DATA				_MMIO(0x138128)
>>  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i91=
5/intel_sideband.c
>> index 916ccd1c0e96..8b093525240d 100644
>> --- a/drivers/gpu/drm/i915/intel_sideband.c
>> +++ b/drivers/gpu/drm/i915/intel_sideband.c
>> @@ -543,3 +543,18 @@ int skl_pcode_request(struct drm_i915_private *i915=
, u32 mbox, u32 request,
>>  	return ret ? ret : status;
>>  #undef COND
>>  }
>> +
>> +void intel_pcode_init(struct drm_i915_private *i915)
>> +{
>> +	int ret;
>> +
>> +	if (!IS_DGFX(i915))
>> +		return;
>> +
>> +	ret =3D skl_pcode_request(i915, DG1_PCODE_STATUS,
>> +				DG1_CHECK_UNCORE_INIT_STATUS,
>> +				DG1_UNCORE_INIT_COMPLETE,
>> +				DG1_UNCORE_INIT_COMPLETE, 50);
>> +	if (ret)
>> +		drm_err(&i915->drm, "Pcode did not report uncore initialization compl=
etion!\n");
>> +}
>> diff --git a/drivers/gpu/drm/i915/intel_sideband.h b/drivers/gpu/drm/i91=
5/intel_sideband.h
>> index 7fb95745a444..094c7b19c5d4 100644
>> --- a/drivers/gpu/drm/i915/intel_sideband.h
>> +++ b/drivers/gpu/drm/i915/intel_sideband.h
>> @@ -138,4 +138,6 @@ int sandybridge_pcode_write_timeout(struct drm_i915_=
private *i915, u32 mbox,
>>  int skl_pcode_request(struct drm_i915_private *i915, u32 mbox, u32 requ=
est,
>>  		      u32 reply_mask, u32 reply, int timeout_base_ms);
>>
>> +void intel_pcode_init(struct drm_i915_private *i915);
>> +
>>  #endif /* _INTEL_SIDEBAND_H */
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
