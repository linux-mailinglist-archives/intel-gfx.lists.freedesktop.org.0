Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5256B2FFEA2
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 09:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35276E02E;
	Fri, 22 Jan 2021 08:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68756E02E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 08:48:36 +0000 (UTC)
IronPort-SDR: QzQ6Rb+KGkuCWk+4AdwuI84pYU1Z/IraiMssWx8Z57CWe434GXOulufPn9Djzv4hj6idC4xf11
 rSchqduUUWqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="176843746"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="176843746"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 00:48:36 -0800
IronPort-SDR: GX0x+Z7kaipFjMu90iH3waR8TqmEAc0q+dxurZktgCYI9mDEw+vEEnc9UY50wGTo1Cfy42721z
 CxclX/0hzmMw==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385674530"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.197.159])
 ([10.215.197.159])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 00:48:34 -0800
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210119064655.1605-1-anshuman.gupta@intel.com>
 <20210119064655.1605-2-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <d699bc59-91f2-4d50-464d-51d3cf5b9151@intel.com>
Date: Fri, 22 Jan 2021 14:18:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210119064655.1605-2-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/hdcp: Fix WARN_ON(data->k >
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 1/19/2021 12:16 PM, Anshuman Gupta wrote:
> Initialize no. of streams transmitted on a port to zero
> such that intel_hdcp_required_content_stream() can
> prepared the content stream after subsequemt attmept to
> enable hdcp after a HDCP failure.
>
> v2:
> - Initialize k at top level instead of else branch. [Jani]
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index db8dff2eeb0a..581ccb038b87 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -53,6 +53,8 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   	bool enforce_type0 = false;
>   	int k;
>   
> +	data->k = 0;
> +
>   	if (dig_port->hdcp_auth_status)
>   		return 0;
>   
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
