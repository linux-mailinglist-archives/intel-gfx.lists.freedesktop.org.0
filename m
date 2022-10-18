Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C041660265B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 10:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF7B10E9F4;
	Tue, 18 Oct 2022 08:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D1210E9F4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 08:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666080250; x=1697616250;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=uG3SxeJ3JkX95wPd+nc2zVsle+ZSOnA6vDSJcDawfVw=;
 b=kwoqmPEOFxTRmoaKF4Uj0Vi1I2lo4ocXzFUI2v/CQxrlm6vO56KBZIse
 OPpH9f2ixeUO6yB0Bg6joyvDKGHpNSCdhqPaxZxEO5tsnsk97rc/Jtv7n
 24suxLEgigosXTmsRe+H9+C59nnD8TDourIfBYrMs5Pp0UGUr8O2uhtIu
 q+o6JlhldPDLTlnhKsT4UvRocCxVVtrj4SWX9Xgh0fooDe4dKkVkwdm9r
 ojqtya0oCxIqu+cOvTHqy4iMzpwPMwouYHThkVfoWkCnAmtHAt4RtVO3R
 ad7hPzoz4S3Q9v9IpTc2qP2dn+rha8XuapIHztfqWvR1Rfzr/XpxZ5FBD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="307696498"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="307696498"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 01:04:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="873790890"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="873790890"
Received: from gdeegan-mobl.ger.corp.intel.com (HELO [10.213.202.90])
 ([10.213.202.90])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 01:04:08 -0700
Message-ID: <7e5d09d3-a56e-bf28-468d-393504c3faf5@linux.intel.com>
Date: Tue, 18 Oct 2022 09:04:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221015035952.1741319-1-alan.previn.teres.alexis@intel.com>
 <20221015035952.1741319-3-alan.previn.teres.alexis@intel.com>
 <fb41a0fb-232e-a3b6-5fc6-6317298f89b5@linux.intel.com>
 <f1b85264b22665387aecce6b5891b6c138af3dbb.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <f1b85264b22665387aecce6b5891b6c138af3dbb.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Add compute reglist for
 GuC error capture
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


On 17/10/2022 18:32, Teres Alexis, Alan Previn wrote:
> ADL-P doesnt support CCS and DG2 is stll force-probe (so hoping to get this before DG2 goes live).
->

> On Mon, 2022-10-17 at 09:43 +0100, Tvrtko Ursulin wrote:
>> On 15/10/2022 04:59, Alan Previn wrote:
>>> Add compute reglist for GuC error capture.
>>>
>>> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>> index 290c1e1343dd..da3a09c11d12 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>>> @@ -169,6 +169,8 @@ static struct __guc_mmio_reg_descr_group default_lists[] = {
>>>    	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
>>>    	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>>>    	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
>>> +	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
>>> +	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),
>>
>> Does this means error capture on ADL-P was incomplete aka should
>> something be sent to stable?

-> okay I read xe_lpd_rc_inst_regs and somehow thought this is adding 
xe_lpd support for the first time. My bad.

Regards,

Tvrtko

>>
>>>    	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>>>    	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>>>    	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
>>> @@ -182,6 +184,8 @@ static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
>>>    	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
>>>    	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>>>    	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
>>> +	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_COMPUTE_CLASS),
>>> +	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_COMPUTE_CLASS),
>>>    	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>>>    	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>>>    	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
> 
