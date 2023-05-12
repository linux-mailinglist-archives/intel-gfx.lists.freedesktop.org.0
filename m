Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1AA700E8E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 20:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF34F10E239;
	Fri, 12 May 2023 18:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB0610E239
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 18:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683915590; x=1715451590;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Zp8V7eV6eiq0Hd9CJCSB+AlwJfQ0UQJjt1mLDpM7gdk=;
 b=ZGoGaSKmMhZTBOesmS0EgiaPMSVAgC4YP9R0LJts1D3TI4zB4bjk0UTs
 dwvckoOuEilNSKi//dNPYaB2CQ7iRBhNEnk/r54wPsFYYP27oIaLRtJzu
 X/RCXQcblQw0SXRlgZ4tAMHuv84I/M8EzQauoEy+3v44U6CI410hBkpTg
 fGmRgia1a/FKIRtnEXXjm3/2QziE2z2B5Vgm0kUjFJQ6jkg3goNNmqwXM
 0fp+llTRrt3lXLvQMT3b0D27+9pPXDirJssobq3v5/WusmFsV16oED5rU
 Q0XXOgW4mnBT2cMX5bFQYGtolEObsw4e7pSe4q736ePr0zFisBj0cMmJr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353991579"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353991579"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 11:19:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="700265744"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="700265744"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 11:19:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@kernel.org>
In-Reply-To: <ZF5I6NKPQMqMSPpA@rdvivi-mobl4>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230512110444.1448231-1-jani.nikula@intel.com>
 <20230512110444.1448231-4-jani.nikula@intel.com>
 <ZF5I6NKPQMqMSPpA@rdvivi-mobl4>
Date: Fri, 12 May 2023 21:19:45 +0300
Message-ID: <87ilcxjttq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: add i915 parameter to
 I915_STATE_WARN()
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

On Fri, 12 May 2023, Rodrigo Vivi <rodrigo.vivi@kernel.org> wrote:
> On Fri, May 12, 2023 at 02:04:44PM +0300, Jani Nikula wrote:
>> Add i915 parameter to I915_STATE_WARN() and use device based logging.
>> 
>> Done using cocci + hand edited where there was no i915 local variable
>> ready.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> with a bit of trust in coccinelle + compiler (for dev_priv vs i915 checks):

That was too much trust, as verify_connector_state() had crtc->base.dev
but it's possible the crtc is NULL. Caught by CI, hooray.

>> @@ -64,6 +65,7 @@ static void
>>  verify_connector_state(struct intel_atomic_state *state,
>>  		       struct intel_crtc *crtc)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);

crtc can be NULL here.

v2 in-reply to v1.

BR,
Jani.

>>  	struct drm_connector *connector;
>>  	struct drm_connector_state *new_conn_state;
>>  	int i;
>> @@ -80,7 +82,7 @@ verify_connector_state(struct intel_atomic_state *state,
>>  
>>  		intel_connector_verify_state(crtc_state, new_conn_state);
>>  
>> -		I915_STATE_WARN(new_conn_state->best_encoder != encoder,
>> +		I915_STATE_WARN(i915, new_conn_state->best_encoder != encoder,
>>  				"connector's atomic encoder doesn't match legacy encoder\n");
>>  	}
>>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
