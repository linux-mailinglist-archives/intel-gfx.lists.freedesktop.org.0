Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6287C4DCCA2
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 18:38:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1B010E809;
	Thu, 17 Mar 2022 17:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4423F10E809
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647538713; x=1679074713;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YNpcu5tniXUuEzSrnvF7yBgIvuoX5j1iTy3eL5gV3+0=;
 b=M7jihLTlR5tEQz5BHUSGpJhqu6KAI4srD7Ncvpdzeos2moXQeCKqx8YJ
 PCqXFRvh+IxZxtapNnpPQ5ZMDXUrro9XMkJilNYy76HxGj1nlejbpycY9
 qNq+AU/4F0E+uMp28u7wakCBZNa74XvMz5rOuTmgbPfHA13UZTZozkPGr
 0cMi1SwpA11BIIoAMapLfV2DrS87dsIfRId2kRZc9L/GygooxWHm5GkfZ
 q0nuVlfRbqg/oQHlUeCNfzAcR/OCszoJJNzataJvU2+Jyw8HqHHfx09i6
 p/C8lqQo8Wl2bAUNZPMEC59GEm8h6+azjUS3plie95l3fGzBn1W9xP2c3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="239092889"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="239092889"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 10:38:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="581377493"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 17 Mar 2022 10:38:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Mar 2022 19:38:29 +0200
Date: Thu, 17 Mar 2022 19:38:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YjNyFdyA3vQAT4i0@intel.com>
References: <20220317173355.336835-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220317173355.336835-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: prefer __packed over
 __attribute__((packed))
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

On Thu, Mar 17, 2022 at 07:33:55PM +0200, Jani Nikula wrote:
> The kernel preference is to use the __packed macro instead of the direct
> __attribute__.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 158e750e5b4d..328a8f20c63b 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -283,7 +283,7 @@ static bool intel_sdvo_read_byte(struct intel_sdvo *intel_sdvo, u8 addr, u8 *ch)
>  static const struct {
>  	u8 cmd;
>  	const char *name;
> -} __attribute__ ((packed)) sdvo_cmd_names[] = {
> +} __packed sdvo_cmd_names[] = {
>  	SDVO_CMD_NAME_ENTRY(RESET),
>  	SDVO_CMD_NAME_ENTRY(GET_DEVICE_CAPS),
>  	SDVO_CMD_NAME_ENTRY(GET_FIRMWARE_REV),
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
