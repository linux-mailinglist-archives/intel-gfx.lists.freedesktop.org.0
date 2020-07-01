Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7C8210F8E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 17:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737E16E26C;
	Wed,  1 Jul 2020 15:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A56F06E26C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 15:42:27 +0000 (UTC)
IronPort-SDR: wvv522M+NKpGVXc5bHimMXcf3RGAu9C889B7uO9TyNXJ5FwwH7zyidWrG+X//sH9elqD27wDNW
 ZWEoeRMS/1eA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="208115801"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="208115801"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 08:35:23 -0700
IronPort-SDR: +4w68HdGtK6Cr3P8NG6MBJzeN09xbCy3BoCedzSZxXA5fzNscPcH0o2bXMr65yv627oXxDMVwA
 IOXS86TUbYPA==
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="266789306"
Received: from jhillike-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.5.130])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 08:35:23 -0700
Date: Wed, 1 Jul 2020 08:35:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200701153522.dh4jhbml5gdenu5o@ldmartin-desk1>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-3-lucas.demarchi@intel.com>
 <87y2o4lf9h.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y2o4lf9h.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/display: fix comment on skl
 straps
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 30, 2020 at 06:55:38PM +0300, Jani Nikula wrote:
>On Wed, 24 Jun 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> We are not checking for specific SKUs and feedback from HW team is that
>> it may not work since it was supposed to be fixed by the same time
>> straps stopped to be used. So, just update comment.
>>
>> v2: Instead of removing the check, just update the comment since
>> feedback from HW team was that it actually may not work
>>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Acked-by: Jani Nikula <jani.nikula@intel.com>

is an ack  sufficient for merging a comment-only change?

Lucas De Marchi

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 49772c82a299..effd6b65f270 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -16863,8 +16863,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>>
>>  		/*
>>  		 * Haswell uses DDI functions to detect digital outputs.
>> -		 * On SKL pre-D0 the strap isn't connected, so we assume
>> -		 * it's there.
>> +		 * On SKL pre-D0 the strap isn't connected. Later SKUs may or
>> +		 * may not have it - it was supposed to be fixed by the same
>> +		 * time we stopped using straps. Assume it's there.
>>  		 */
>>  		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
>>  		/* WaIgnoreDDIAStrap: skl */
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
