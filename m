Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E564E27F5
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FB710E376;
	Mon, 21 Mar 2022 13:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EEBC10E376
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870178; x=1679406178;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=b1CuyaT8TS/HQKvER2cQ8AsoSmrICp8VtAKIuPQA4j4=;
 b=K+ZqDP8y0WdHsEdS/VannOYjaFg2YYqhnVAit/q4C5k9yaE1KbqrKQbX
 X8UZfmIUhwbZ8C5/TDeisLZ2bFtDxqygVa3rHh5mDQ+Eb1xoOBSSTSrEX
 SZ54RfgAC3AgWn0gkzP7kFRJ0XTygh5RuSTbM+BNJsy7qa32KtYWJEcvn
 NybtrJ0YDeSu0O9/kMTrO11+PqLVzKJfOVkaJhZgPrWYmqe+RuhEazVZt
 zs2dxc+XbOM5q4ARNNyWdZgowDPmIfIfd2CnA4QkOFbKK3Qx999l4qnwp
 7O5PZFx94LKeYWDweEhjpm3RxmscuRBTQVoC9ChUFB6Xw8kf+Tzkwjkym A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="238158709"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="238158709"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:42:57 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="543229138"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:42:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YjNyFdyA3vQAT4i0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220317173355.336835-1-jani.nikula@intel.com>
 <YjNyFdyA3vQAT4i0@intel.com>
Date: Mon, 21 Mar 2022 15:42:42 +0200
Message-ID: <87tubrjub1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: prefer __packed over
 __attribute__((packed))
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

On Thu, 17 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Mar 17, 2022 at 07:33:55PM +0200, Jani Nikula wrote:
>> The kernel preference is to use the __packed macro instead of the direct
>> __attribute__.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Pushed, thanks.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm=
/i915/display/intel_sdvo.c
>> index 158e750e5b4d..328a8f20c63b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> @@ -283,7 +283,7 @@ static bool intel_sdvo_read_byte(struct intel_sdvo *=
intel_sdvo, u8 addr, u8 *ch)
>>  static const struct {
>>  	u8 cmd;
>>  	const char *name;
>> -} __attribute__ ((packed)) sdvo_cmd_names[] =3D {
>> +} __packed sdvo_cmd_names[] =3D {
>>  	SDVO_CMD_NAME_ENTRY(RESET),
>>  	SDVO_CMD_NAME_ENTRY(GET_DEVICE_CAPS),
>>  	SDVO_CMD_NAME_ENTRY(GET_FIRMWARE_REV),
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
