Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AD92F7F53
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 16:18:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445936E215;
	Fri, 15 Jan 2021 15:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825316E215
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 15:18:49 +0000 (UTC)
IronPort-SDR: /U3GoYhDRFXoi9l8uXALEv4A3teWzx0gia0hN2eq7k+scIaPaMwg7TUekDFfscprMeJ7IqLT6b
 H0dQ+g9xilZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="242630123"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="242630123"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 07:18:48 -0800
IronPort-SDR: nKouXlj3gQsJlLUwgmpbEJnxQJowTzJJ8RaO46GW0B51fBbxpYWWMEEjy3fgf1s4NTdfoi9S1m
 g3A16/MZTRLg==
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="354332393"
Received: from bmkierna-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.213.221.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 07:18:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210115134825.29521-2-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210115134825.29521-1-anshuman.gupta@intel.com>
 <20210115134825.29521-2-anshuman.gupta@intel.com>
Date: Fri, 15 Jan 2021 17:18:43 +0200
Message-ID: <87turins8c.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Fix WARN_ON(data->k >
 INTEL_NUM_PIPES)
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

On Fri, 15 Jan 2021, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> Initialize no. of streams transmitted on a port to zero
> such that intel_hdcp_required_content_stream() can
> prepared the content stream after subsequemt attmept to
> enable hdcp after a HDCP failure.
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index db8dff2eeb0a..f24e2c07bfa6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -55,6 +55,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>  
>  	if (dig_port->hdcp_auth_status)
>  		return 0;
> +	else
> +		data->k = 0;
>  

If you have an early return, the else branch is unnecessary; just do it
at the top level like everything after it.

BR,
Jani.

>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
