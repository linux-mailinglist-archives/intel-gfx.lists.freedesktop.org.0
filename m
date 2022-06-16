Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C348E54DF10
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 12:27:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12E7E113F75;
	Thu, 16 Jun 2022 10:27:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7129113F75
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655375253; x=1686911253;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=B5SD7mdK3U55Xmvahnt+NZgdbdls0gH2y0OCcWEoUh4=;
 b=IboyygLN8W0/DHw1/bWI0343XgS4wvY617uNLu6hD96UcXkXZfYmyJLW
 MFNu38KoQm0kaZfY6kBqg9tigRNRYu0Sdhg7KD2VtHPC89avcp1Ivfx1u
 BlAywzY3rZZ9mVAUecUpM//1XJmf/SoaxBJBXPejeTQJHenYRrmlQ0YV+
 1Glcv2fgz9WF/9cOEsPboIs7tguUMhw5RWpoWlwZywxoity/zBPQhcmyE
 y8LFWIQJ02IpbpotIwtiwWfy4w0FYGLCEqax58omPzqfklkal9v4UN6lV
 GtZzcncYo+YX17ZLNS52RJzzZ+g5ZnSAM/dFX0ZP056BI1JdKsSoQmCQc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="267906823"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="267906823"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:27:15 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641480209"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:27:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220610085429.52935-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220610085429.52935-1-jouni.hogander@intel.com>
Date: Thu, 16 Jun 2022 13:27:10 +0300
Message-ID: <87wndgx5s1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 0/3] Disable connector polling for a
 headless sku
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

On Fri, 10 Jun 2022, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> This patch set disables connector polling when entering runtime
> suspend for headless sku to prevent waking it up again when poll
> is performed.

Pushed to drm-intel-next, thanks for the patches.

BR,
Jani.

>
> v3:
>  - dummy intel_opregion_headless_sku is now static inline
> v2:
>  - integrate headless check into INTEL_DISPLAY_ENABLED
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
>
>
> Jouni H=C3=B6gander (3):
>   drm/i915/opregion: add function to check if headless sku
>   drm/i915: Do not start connector polling if display is disabled
>   drm/i915: Do not start connector polling on headless sku
>
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  3 ++-
>  drivers/gpu/drm/i915/display/intel_opregion.c | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
>  drivers/gpu/drm/i915/i915_drv.h               |  4 +++-
>  4 files changed, 26 insertions(+), 2 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
