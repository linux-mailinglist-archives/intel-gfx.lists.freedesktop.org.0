Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C991A0DC5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497CB6E861;
	Tue,  7 Apr 2020 12:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E663C6E861
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 12:36:00 +0000 (UTC)
IronPort-SDR: RxUh3YPKQrflDfcP/ueSp7nlL+5FontCKsg9AEGbfebFYZsZ6189lRvX9R/JkcV1k8kO1quHo/
 G5MUg0KvEKhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:35:56 -0700
IronPort-SDR: ga3qF4EPIcI/LNAQLyPcO6xmGflTSQzfCsI0jyDFbEXhylvMXh5IVEAQ9J8gHiRiYIPrpSmadq
 LvD/MfsjBsAw==
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="397841746"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:35:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vipin Anand <vipin.anand@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200327052357.22269-4-vipin.anand@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200327052357.22269-1-vipin.anand@intel.com>
 <20200327052357.22269-4-vipin.anand@intel.com>
Date: Tue, 07 Apr 2020 15:35:52 +0300
Message-ID: <87h7xvjwwn.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/display: Attach HDR property
 for capable Gen9 devices
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

On Fri, 27 Mar 2020, Vipin Anand <vipin.anand@intel.com> wrote:
> From: Uma Shankar <uma.shankar@intel.com>
>
> Attach HDR property for Gen9 devices with MCA LSPCON
> chips.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index c5ddabf903d6..4d8027493f2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -628,6 +628,11 @@ bool lspcon_init(struct intel_digital_port *intel_dig_port)
>  		return false;
>  	}
>  
> +	if (lspcon->vendor == LSPCON_VENDOR_MCA && lspcon->hdr_supported)

Just look at lspcon->hdr_supported, and make sure it's false if the
vendor does not support it.

BR,
Jani.

> +		drm_object_attach_property(&connector->base,
> +					   connector->dev->mode_config.hdr_output_metadata_property,
> +					   0);
> +
>  	connector->ycbcr_420_allowed = true;
>  	lspcon->active = true;
>  	DRM_DEBUG_KMS("Success: LSPCON init\n");

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
