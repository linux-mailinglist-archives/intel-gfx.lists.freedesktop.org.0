Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC92F5FECBE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 12:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2B010E084;
	Fri, 14 Oct 2022 10:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA8210E084
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 10:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665744708; x=1697280708;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=lt943Lr4w7Gk0qZOwLFrAhc5eYeohbUfC40+CUr2Jm0=;
 b=f4LzMR0K6xPD0Uliva0cz7oJyKRAF+zFTOUW2bVTIyWcb0G1efmyrE3T
 rTFif40Krx/VATU9ZWJltiDdH5N8qIbAlT9BRysgNuO0/z0jYFMNYEsSl
 WiDX4qNful1CNtI/ATyzrgboL4rtkrS8FVHtjESLnmMI74vwMn24mA2uX
 ju2AGRTVAlA3bZGMU5IuMJ2eEExAwDy7Jyi6zOod11H88Uq+j3miZnRb6
 rmfcDptyYlz8K1mCo4UOItT3pgsqtyo/iDcKsBxGvNis7L2WynB+Ya+zf
 1guQJHtBbKscg57tcQvd4EVjCo1DXgVAxG7wSgRveiVl8v5fbcrn7H6OB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="292703641"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="292703641"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:51:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="627534682"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="627534682"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 03:51:22 -0700
Date: Fri, 14 Oct 2022 13:51:47 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Ville Syrjala <ville.syrjala@linux.intel.com>
In-Reply-To: <20221012104936.30911-1-ville.syrjala@linux.intel.com>
Message-ID: <alpine.DEB.2.22.394.2210141341160.3532114@eliteleevi.tm.intel.com>
References: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
 <20221012104936.30911-1-ville.syrjala@linux.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="-318106570-923985500-1665744230=:3532114"
Content-ID: <alpine.DEB.2.22.394.2210141344180.3532114@eliteleevi.tm.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/audio: Resume HSW/BDW HDA
 controller around ELD access
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
Cc: Takashi Iwai <tiwai@suse.de>, Cezary Rojewski <cezary.rojewski@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-923985500-1665744230=:3532114
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.22.394.2210141344181.3532114@eliteleevi.tm.intel.com>

Hi,

On Wed, 12 Oct 2022, Ville Syrjala wrote:

> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On HSW/BDW the hardware ELD buffer does not work if the controller
> is suspended. I'm not 100% which thing in there is needed to make it
> work (at least just forcing the controller into D0 with setpci is
> not enough). But a full runtime resume seems to do the trick here
> at least, and so far it looks like this doesn't even deadlock or
> anything.

excuse my lack of history information/context, but I also wonder how 
important writing this to hw AUD_EDID_DATA is anymore. All platforms since 
Sandy/Ivy Bridge have used the DRM component interface to query ELD (via 
direct kernel call i915_audio_component_get_eld()). So I don't see any 
usage of querying the ELD data via "legacy" AC_VERB_GET_HDMI_ELDD method 
(as that does require powering on the audio controller and codec). At 
least based on quick browse, I don't see this register having impact to 
other things than said HDA verb implementation in hardware. May explain 
why the issue has not been reported before.

The patches in the series look good otherwise:
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

> +
> +	if (hsw_hdac)
> +		pm_runtime_put(&hsw_hdac->dev);

I think this is ok.

Br, Kai
---318106570-923985500-1665744230=:3532114--
