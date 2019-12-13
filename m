Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA62411EE37
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Dec 2019 00:09:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7441D6EE0B;
	Fri, 13 Dec 2019 23:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52ECD6EE0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 23:09:48 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 15:09:47 -0800
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="208606886"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 15:09:47 -0800
Date: Fri, 13 Dec 2019 15:09:41 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191213230941.wdw6v44z3zdxv5oi@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20191211110844.2996-1-jani.nikula@intel.com>
 <8d87dfbc5cfb8290a8a66e448abb1a9942237c58.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d87dfbc5cfb8290a8a66e448abb1a9942237c58.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix pipe D readout for DSI
 transcoders
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 11, 2019 at 05:55:23PM +0000, Jose Souza wrote:
>On Wed, 2019-12-11 at 13:08 +0200, Jani Nikula wrote:
>> Commit 4d89adc7b56f ("drm/i915/display/dsi: Add support to pipe D")
>> added pipe D support for DSI, but failed to update the state readout.
>>
>
>Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>


pushed, thanks.

Lucas De Marchi

>
>> Fixes: 4d89adc7b56f ("drm/i915/display/dsi: Add support to pipe D")
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
>> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index 5a4bd37863e3..3e0874e1b0f2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -10431,6 +10431,9 @@ static bool hsw_get_transcoder_state(struct
>> intel_crtc *crtc,
>>  		case TRANS_DDI_EDP_INPUT_C_ONOFF:
>>  			trans_pipe =3D PIPE_C;
>>  			break;
>> +		case TRANS_DDI_EDP_INPUT_D_ONOFF:
>> +			trans_pipe =3D PIPE_D;
>> +			break;
>>  		}
>>
>>  		if (trans_pipe =3D=3D crtc->pipe) {
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
