Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFEE48DC13
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 17:42:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB37610E2C6;
	Thu, 13 Jan 2022 16:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEDD210E2C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642092173; x=1673628173;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TNPRFbpAMfzxX9fzXnZ6k0ftr8r8WzM6uUhGdwOI2mg=;
 b=c9MHjfDaxZ/R3wsVAkkn9qeJvv3DYxpcWXkJ12cnqnKV6//VXpucb2yJ
 cPqhu99V8MvRg/X2DlupuGjMxYYE/q0HEyXAqHUe3avMNLb5uuymJFFlc
 alVJnZz1d4vpPo88YGPXZawvmBC8XG5y/fnhUjfMy5XKZYFjWGai0lJb0
 BrSMAuAg/6n2VnqsWCHz+qmrxrqVLiS+L8s9gSc4apdO9kdLwHRmXOlXS
 X7HzGVWe+U4m4QtyIVMP9FV6YR/bjn51LNJyxnnwz/dFrr1cUDvS31kIo
 A7nbgKSDapWAzdQkLLQDoqvL9Opxv7jD2GLsTqpN5S/Ce54mAzLkmyXso Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="241609924"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="241609924"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:42:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="529728694"
Received: from tzumwalt-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.235.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:42:52 -0800
Date: Thu, 13 Jan 2022 08:42:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220113164252.awsjfafrooeycev6@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1642072583.git.jani.nikula@intel.com>
 <2c18d26a7e6ceb025af7e91a56f8694de94fd3ee.1642072583.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2c18d26a7e6ceb025af7e91a56f8694de94fd3ee.1642072583.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/opregion: check port number
 bounds for SWSCI display power state
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 01:18:03PM +0200, Jani Nikula wrote:
>The mapping from enum port to whatever port numbering scheme is used by
>the SWSCI Display Power State Notification is odd, and the memory of it
>has faded. In any case, the parameter only has space for ports numbered
>[0..4], and UBSAN reports bit shift beyond it when the platform has port
>F or more.
>
>Since the SWSCI functionality is supposed to be obsolete for new
>platforms (i.e. ones that might have port F or more), just bail out
>early if the mapped and mangled port number is beyond what the Display
>Power State Notification can support.
>
>Fixes: 9c4b0a683193 ("drm/i915: add opregion function to notify bios of encoder enable/disable")
>Cc: <stable@vger.kernel.org> # v3.13+
>Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4800
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_opregion.c | 15 +++++++++++++++
> 1 file changed, 15 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
>index af9d30f56cc1..ad1afe9df6c3 100644
>--- a/drivers/gpu/drm/i915/display/intel_opregion.c
>+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>@@ -363,6 +363,21 @@ int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
> 		port++;
> 	}
>
>+	/*
>+	 * The port numbering and mapping here is bizarre. The now-obsolete
>+	 * swsci spec supports ports numbered [0..4]. Port E is handled as a
>+	 * special case, but port F and beyond are not. The functionality is
>+	 * supposed to be obsolete for new platforms. Just bail out if the port
>+	 * number is out of bounds after mapping.
>+	 */
>+	if (port > 4) {
>+		drm_dbg_kms(&dev_priv->drm,
>+			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display power state notification\n",
>+			    intel_encoder->base.base.id, intel_encoder->base.name,
>+			    port_name(intel_encoder->port), port);

Do we need this log message? It will always trigger for platforms with
PORT F and callers simply ignore the return value.

Lucas De Marchi
