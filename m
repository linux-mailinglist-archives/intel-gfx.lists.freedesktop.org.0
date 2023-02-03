Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F361B6896C7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 11:35:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CEDC10E754;
	Fri,  3 Feb 2023 10:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F42410E754
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 10:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675420501; x=1706956501;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vDbAXmWaCcEkM8vzW8V9fDEN6EMZud6usOAP7/j7fTA=;
 b=Mu6eivDPyFKZbIQNmbu1raWr89QP+k9yV1PhRk3Y0Dzo859P34uPgP1C
 374aB1WJKEILYpMotnot6tesLUKgdsReKzR4SRfNaSE4jhGHS0/6SS98K
 13f6KBzbm0oYFqufpneOJwC2xFDB9I7x7O8n72v3KkRWbDf8KZuyuVX/H
 ORDRnSsWdLzDy/Uj16bdoDshmCNZFEAyU0+Olpp3Jt9I6clpW0N6eSEQe
 3fNhr9A/cU2HIom9ps+RKEc2FITrxbb0ljaFR+rPtoIHRoqm8HsVQIX7g
 z0y4BJNQ2CHN4N7LCD0AtEu6vgUqUQW8GQgDhuu/59h1coIMZRPoGa//o A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="330846570"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="330846570"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 02:35:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="729218171"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="729218171"
Received: from cciobanu-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.35.96])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 02:34:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com
In-Reply-To: <Y9vTKDHR9Ojd7Yn9@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1675339447.git.jani.nikula@intel.com>
 <6a349c3a2b2def5fc31a48c9844ebd72ee55a22b.1675339447.git.jani.nikula@intel.com>
 <Y9vTKDHR9Ojd7Yn9@ideak-desk.fi.intel.com>
Date: Fri, 03 Feb 2023 12:34:56 +0200
Message-ID: <87zg9vyr3j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/dmc: check incoming dmc id
 validity
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

On Thu, 02 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Feb 02, 2023 at 02:04:52PM +0200, Jani Nikula wrote:
>> Add validity checks for the dmc ids computed from pipe parameters in
>> intel_dmc_enable_pipe() and intel_dmc_disable_pipe(). It's slightly
>> difficult for humans and static analyzers alike to ensure the resulting
>> dmc ids are within bounds. Just check them and reject invalid ones.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Patchset looks ok to me:
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks for the review, pushed to din.

BR,
Jani

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++--
>>  1 file changed, 6 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index ab0ad8e3e620..3b8e8193d042 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -415,7 +415,9 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>>  
>>  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>>  {
>> -	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
>> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
>> +
>> +	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
>>  		return;
>>  
>>  	if (DISPLAY_VER(i915) >= 14)
>> @@ -426,7 +428,9 @@ void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>>  
>>  void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>>  {
>> -	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
>> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
>> +
>> +	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
>>  		return;
>>  
>>  	if (DISPLAY_VER(i915) >= 14)
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
