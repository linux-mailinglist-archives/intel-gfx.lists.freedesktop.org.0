Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FECF1D74F3
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D03E6E406;
	Mon, 18 May 2020 10:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBF786E406
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:15:00 +0000 (UTC)
IronPort-SDR: 2qdsUi/cY9RxjETNdBcgaLqKJXJHSJZI5mcqgOmDuFkujpu4fGPBueKmProDhLhpA2QbbDYdiz
 yEmJOX5+y/RA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:14:59 -0700
IronPort-SDR: jJNNdxy/fJPb+es90WBysEBpP+DMpATfiHKwPhCfcaGS616BkpXQNsVFiXD+BhbgPOumzk8fuR
 OzejhxksFJMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="253019486"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 18 May 2020 03:14:59 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 May 2020 03:14:59 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 May 2020 03:14:59 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.115]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.51]) with mapi id 14.03.0439.000;
 Mon, 18 May 2020 15:44:50 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add update_pipe early
 return
Thread-Index: AQHWKSI4Y9d+MmMM1UOUQeIuz8vRtKitp5TQ
Date: Mon, 18 May 2020 10:14:50 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F825066EB@BGSMSX104.gar.corp.intel.com>
References: <20200513121845.19437-1-anshuman.gupta@intel.com>
 <20200513121845.19437-2-anshuman.gupta@intel.com>
In-Reply-To: <20200513121845.19437-2-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add update_pipe early
 return
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Anshuman Gupta
> Sent: Wednesday, May 13, 2020 5:49 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add update_pipe early return
> 
> Currently intel_hdcp_update_pipe() is also getting called for non-hdcp
> connectors and got though its conditional code flow, which is completely
> unnecessary for non-hdcp connectors, therefore it make sense to have an early
> return. No functional change.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2cbc4619b4ce..d0a2bee9035a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2079,11 +2079,15 @@ void intel_hdcp_update_pipe(struct
> intel_atomic_state *state,
>  	struct intel_connector *connector =
>  				to_intel_connector(conn_state->connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
> -	bool content_protection_type_changed =
> +	bool content_protection_type_changed;
> +
> +	if (!connector->hdcp.shim)
> +		return;
> +
> +	content_protection_type_changed =
>  		(conn_state->hdcp_content_type != hdcp->content_type &&
>  		 conn_state->content_protection !=
>  		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> -
>  	/*
>  	 * During the HDCP encryption session if Type change is requested,
>  	 * disable the HDCP and reenable it with new TYPE value.
> --
> 2.26.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
