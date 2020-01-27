Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4556E14A9EF
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:40:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915DB6E88B;
	Mon, 27 Jan 2020 18:40:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC086E88B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:40:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:19:43 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221815156"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:19:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20200124213051.GG459881@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1579871655.git.jani.nikula@intel.com>
 <3dd667bdc6fa38fb7bca3f44fbed601f5250f027.1579871655.git.jani.nikula@intel.com>
 <20200124213051.GG459881@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 27 Jan 2020 20:19:43 +0200
Message-ID: <87k15cbw3k.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 05/33] drm/i915/combo_phy: use intel_de_*()
 functions for register access
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 24 Jan 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Jan 24, 2020 at 03:25:26PM +0200, Jani Nikula wrote:
>> @@ -151,20 +151,20 @@ static void cnl_combo_phys_init(struct drm_i915_private *dev_priv)
>>  {
>>  	u32 val;
>>  
>> -	val = I915_READ(CHICKEN_MISC_2);
>> +	val = intel_de_read(dev_priv, CHICKEN_MISC_2);
>>  	val &= ~CNL_COMP_PWR_DOWN;
>> -	I915_WRITE(CHICKEN_MISC_2, val);
>> +	intel_de_write(dev_priv, CHICKEN_MISC_2, val);
>>  
>>  	/* Dummy PORT_A to get the correct CNL register from the ICL macro */
>>  	cnl_set_procmon_ref_values(dev_priv, PHY_A);
>>  
>> -	val = I915_READ(CNL_PORT_COMP_DW0);
>> +	val = intel_de_read(dev_priv, CNL_PORT_COMP_DW0);
>>  	val |= COMP_INIT;
>> -	I915_WRITE(CNL_PORT_COMP_DW0, val);
>> +	intel_de_write(dev_priv, CNL_PORT_COMP_DW0, val);
>
> Drive by comment...could some fancier coccinelle usage change these to
> intel_de_rmw() instead?  We have a lot of rmw behavior for PHY
> registers, and I believe some for pre-ilk watermarks and clock gating
> workarounds in intel_pm.c too.

I decided I wanted to get these merged, as folks seemed to agree with
the approach. The fancy cocci would take a while to figure out. But I'll
look into it as a follow-up.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
