Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B729D14B148
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 10:06:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1229F6ED35;
	Tue, 28 Jan 2020 09:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A0F6ED35
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 09:06:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 01:06:42 -0800
X-IronPort-AV: E=Sophos;i="5.70,373,1574150400"; d="scan'208";a="222025742"
Received: from vogginge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 01:06:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200121194403.15066-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200121171100.4370-10-ville.syrjala@linux.intel.com>
 <20200121194403.15066-1-ville.syrjala@linux.intel.com>
Date: Tue, 28 Jan 2020 11:06:42 +0200
Message-ID: <87r1zk9cgt.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 09/11] drm/i915: Turn
 intel_digital_port_connected() in a vfunc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 21 Jan 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 3da166054788..cf0df6f18734 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -116,6 +116,12 @@ void intel_dp_vsc_enable(struct intel_dp *intel_dp,
>  void intel_dp_hdr_metadata_enable(struct intel_dp *intel_dp,
>  				  const struct intel_crtc_state *crtc_state,
>  				  const struct drm_connector_state *conn_state);
> +bool cpt_digital_port_connected(struct intel_encoder *encoder);
> +bool spt_digital_port_connected(struct intel_encoder *encoder);
> +bool ivb_digital_port_connected(struct intel_encoder *encoder);
> +bool bdw_digital_port_connected(struct intel_encoder *encoder);
> +bool bxt_digital_port_connected(struct intel_encoder *encoder);
> +bool icp_digital_port_connected(struct intel_encoder *encoder);

Please find a way to not expose a plethora of platform specific
functions from files. I want to take things to the completely opposite
direction.

Other than that, I like using the vfuncs.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
