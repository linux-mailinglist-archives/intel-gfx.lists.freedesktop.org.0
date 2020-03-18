Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C65189E37
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 15:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3BA89AC3;
	Wed, 18 Mar 2020 14:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76A289AC3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 14:46:17 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id w10so1929582wrm.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 07:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=IYb1iYyMAugkv+zDneQV469qSvpbR58RS5HZELPXTc4=;
 b=D/n6tCUb2NAEFXeyPyz1ZKAXvhcLntELVFdXDQTiIixsyToIrHxfpCyOSsnL/hTaVi
 PQ6oBeIgzXJ1zV5FQ2nKUwcGWJaRdyaMkhijZU2FfHjLYK+C3lYYrE78hTKrP3ijEcWp
 EG/9PpDDKtSatNik2dcoRQAtQ+QhDMIvMHus6kRa9GIwxTGoG/CvyRTN/MxhXQ1fNj8z
 kdgkjSpd5QXBCNjg7IoeCy8oQlu1RKn+P8cluvdaRiRMMhH992Svv0vij3fCAHqVV0hv
 fXIiTHLZiLjJaD+YgRB+EN+fu0fngj2bcTk7VowpbfnY9Z/gmtd61zBqIKDQYmd+Pfcj
 7fDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=IYb1iYyMAugkv+zDneQV469qSvpbR58RS5HZELPXTc4=;
 b=XoC/KaxsredqD6RPYMXdA9/DgpeWP88mQtuClnMy7/2xVDj4ZXuMKemg3Ty8BnmD/h
 gWVuC0PU9InMG6ZoAtMdkAQVTzRbGDyOHwOPCiEY8MxcdV6kDtmyfYHssLMpAG8o0YZL
 OnPzD2fLPPGTFY7J3/abU7fLsf0RKv0L/3EbvdhYFIurO2JP2QY4DUn9BzV0pbVkP8eJ
 mnhA70rLZwatKXI0i0WIxXGJmS9xSq856mN47+aKY0aW/NkXDNlEru8Cgt9RbVAMfMCv
 Gkhb1lUpftX7gk+fZNPtZ5d9IAK35wBF8+3I3jbE1dNMyO9Y5l2diMoLhZ0O8aYzOh6i
 KUZg==
X-Gm-Message-State: ANhLgQ2wqt/MYNd0dOsAz1eXPmsO0UFJup8cS03kMgLCviHKmlbqYjIe
 FO+ZJxxMdwb36yNkvam1+fYTAiU9
X-Google-Smtp-Source: ADFU+vtbn/Wby2G27EbC98H0ZpHRFfxg9G1r1r3iA6pX3l3m5vV35irO3cCKuYEHvy6PzDM+yBqrtQ==
X-Received: by 2002:a5d:5710:: with SMTP id a16mr6170412wrv.5.1584542776503;
 Wed, 18 Mar 2020 07:46:16 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p10sm9356184wru.4.2020.03.18.07.46.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 07:46:15 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 18 Mar 2020 17:46:12 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <47d5e88dedc08ee48938344296ada550dedd5f90.1583766715.git.jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2003181745330.41254@wambui>
References: <cover.1583766715.git.jani.nikula@intel.com>
 <47d5e88dedc08ee48938344296ada550dedd5f90.1583766715.git.jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 06/10] drm/i915/hdcp: convert to struct
 drm_device based logging.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Tue, 10 Mar 2020, Jani Nikula wrote:

> From: Wambui Karuga <wambui.karugax@gmail.com>
>
> Converts various instances of the printk based drm logging macros to the
> struct drm_device based logging macros in i915/display/intel_hdcp.c.
> This also involves extracting the drm_i915_private device from the
> intel_connector type for use in the macros.
>
> v2 by Jani:
> - rebase
>
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>
> ---
> drivers/gpu/drm/i915/display/intel_hdcp.c | 3 ++-
> 1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ee0f27ea2810..cd3b686980b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1391,6 +1391,7 @@ static
> int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
> {
> 	struct intel_digital_port *intel_dig_port = intel_attached_dig_port(connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> 	struct intel_hdcp *hdcp = &connector->hdcp;
> 	union {
> 		struct hdcp2_rep_stream_manage stream_manage;
> @@ -1431,7 +1432,7 @@ int hdcp2_propagate_stream_management_info(struct intel_connector *connector)
> 	hdcp->seq_num_m++;
>
> 	if (hdcp->seq_num_m > HDCP_2_2_SEQ_NUM_MAX) {
> -		DRM_DEBUG_KMS("seq_num_m roll over.\n");
> +		drm_dbg_kms(&i915->drm, "seq_num_m roll over.\n");
> 		return -1;
> 	}
>
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
