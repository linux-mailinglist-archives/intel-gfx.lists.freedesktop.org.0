Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAC31ABD5C
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 11:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697D56E2B8;
	Thu, 16 Apr 2020 09:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07A186E2B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 09:53:44 +0000 (UTC)
IronPort-SDR: 8nqAksuO1eFi0UcQnFmDNFAZ5A3QXHga1E2sLeGGUr7l4erkvaB8X0bfG1gRJquGIMIgm8xHLz
 HGRuetDDU9LA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 02:53:44 -0700
IronPort-SDR: c5pdFWy2hpqGKJ3OtX3dw3fzZwjn9I6kUFSoLZvNOFYD2v0EvHhAnTys5R9WOLSsG6GQuTA04G
 x7o2latotJ3g==
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; d="scan'208";a="427777647"
Received: from ellenfax-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.44.122])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 02:53:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ramalingam C <ramalingam.c@intel.com>, Oliver Barta <o.barta89@gmail.com>
In-Reply-To: <20200329141738.GA20693@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200328104100.12162-1-oliver.barta@aptiv.com>
 <20200329141738.GA20693@intel.com>
Date: Thu, 16 Apr 2020 12:53:38 +0300
Message-ID: <87ftd34uzh.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: HDCP: fix Ri prime check done
 during link check
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Ravisankar Madasamy <ravisankar.madasamy@intel.com>,
 Sean Paul <seanpaul@chromium.org>, Oliver Barta <oliver.barta@aptiv.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 29 Mar 2020, Ramalingam C <ramalingam.c@intel.com> wrote:
> On 2020-03-28 at 11:41:00 +0100, Oliver Barta wrote:
>> From: Oliver Barta <oliver.barta@aptiv.com>
>> 
>> The check was always succeeding even in case of a mismatch due to the
>> HDCP_STATUS_ENC bit being set. Make sure both bits are actually set.
>> 
> Looks good to me:
>
> Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

Pushed to dinq, thanks for the patch and review.

Fixed the checkpatch indentation warning while at it.

BR,
Jani.

>> Signed-off-by: Oliver Barta <oliver.barta@aptiv.com>
>> Fixes: 2320175feb74 ("drm/i915: Implement HDCP for HDMI")
>> ---
>>  [v2] rebased on top of latest changes
>> 
>>  drivers/gpu/drm/i915/display/intel_hdmi.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 0076abc63851..51a69f330588 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -1561,7 +1561,8 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>>  	intel_de_write(i915, HDCP_RPRIME(i915, cpu_transcoder, port), ri.reg);
>>  
>>  	/* Wait for Ri prime match */
>> -	if (wait_for(intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder, port)) &
>> +	if (wait_for((intel_de_read(i915, HDCP_STATUS(i915, cpu_transcoder,
>> +		     port)) & (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC)) ==
>>  		     (HDCP_STATUS_RI_MATCH | HDCP_STATUS_ENC), 1)) {
>>  		drm_err(&i915->drm,
>>  			"Ri' mismatch detected, link check failed (%x)\n",
>> -- 
>> 2.20.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
