Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DE81BE193
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 16:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C88B16EEB7;
	Wed, 29 Apr 2020 14:49:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com
 [IPv6:2607:f8b0:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A94E6EEB7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 14:49:22 +0000 (UTC)
Received: by mail-il1-x141.google.com with SMTP id m5so2624617ilj.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 07:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E3q9UoM8m/D9x3nFHOBda8L7e9ddolWLFubeepmQ98o=;
 b=Hz7CaKBlz0uEkPolkcIz9uYPvaCAz5oxEh97JbFSdqkJlPZTiyNR8nYSBaZISafaZj
 gLxHv2WPz3C+xLRlIk+rukUtwBA8lDXTelCPzUHEwZbhEcF2LcTGC4PcI2kZ/yGYOgnJ
 G9rTuia9CHGFW2i9pfsnetkEaAIRMiwh/vRYnNlTXwbuk0s5Skn+7MTSWsGsx9gnqUoC
 YdFfjlZlnbf0otmxNENA5OIZNCtP31ulbrXwFXUjE4RjrL84UOUqN25cHhtKw9Wj2bJB
 Ub7uRsgu96A1Zu77qPIAdWxkxv5f8rghmAl5ZSGG6PxcY5V/yFuazUeqt623cmNVXhoa
 AmTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3q9UoM8m/D9x3nFHOBda8L7e9ddolWLFubeepmQ98o=;
 b=nxbCoQwh17RxHETOSxZQikOT5MqoAZ22KVYpMIwHNLFjRhP54I8+scBjt9bDLJKwWJ
 ao/7eQNiyYpS9yErmIh1anvSft8GKD8nyMZr14grdwfn0DOmTC0u+j3FIz+WKpHLxA9t
 zmhX0ixQNQgUN1XWSxSpgYBKu+qFdBzxqMbtWxnzte2hOgqPxP7upYi9Dq2GnhKDM902
 DKbBjia2kZhifGG1lQzpsMwYsRxPOJrqAOf0gtf1tyG8mU1j0zPZ8mJSqw5m/BAwaB/h
 pyCM+GrznITfQWU7iuieSZsj0Kka8ZG+pHCVvmhEkg8VhkKu6K4eeKXId0qQ/GVbqLmL
 pBeQ==
X-Gm-Message-State: AGi0Pubqrgxb6wgvg1yxIh9WTsMTG2b6m9BG934VZcy90JO+CC7epS72
 BWFHYhJgXqOEhAVW+tY2nUoy0p9Ut1U9wUpxZfVdpA==
X-Google-Smtp-Source: APiQypIRnrtEoyn9ViNN0j/fNJzxxyZ5JZc2fvSVIFULxAt8Dwu42Il3kANf3bSOC9Z3Ts637y6ZuAs/G6RZvuYKbus=
X-Received: by 2002:a92:3603:: with SMTP id d3mr32307350ila.264.1588171761539; 
 Wed, 29 Apr 2020 07:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200429134555.22106-1-ramalingam.c@intel.com>
In-Reply-To: <20200429134555.22106-1-ramalingam.c@intel.com>
From: Sean Paul <sean@poorly.run>
Date: Wed, 29 Apr 2020 10:48:45 -0400
Message-ID: <CAMavQKKW2K76CwUYe2PoMjQb7wKvT-8GESDqj_2jj9XuftubJA@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Fix the return handling of
 drm_hdcp_check_ksvs_revoked
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>, dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 29, 2020 at 9:46 AM Ramalingam C <ramalingam.c@intel.com> wrote:
>
> drm_hdcp_check_ksvs_revoked() returns the number of revoked keys and
> error codes when the SRM parsing is failed.
>
> Errors in SRM parsing can't affect the HDCP auth, hence with this patch,
> I915 will look out for revoked key count alone.
>

Reviewed-by: Sean Paul <sean@poorly.run>

> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> cc: Sean Paul <seanpaul@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2cbc4619b4ce..96bf6def9830 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -576,7 +576,7 @@ int intel_hdcp_auth_downstream(struct intel_connector *connector)
>                 goto err;
>
>         if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, ksv_fifo,
> -                                       num_downstream)) {
> +                                       num_downstream) > 0) {
>                 drm_err(&dev_priv->drm, "Revoked Ksv(s) in ksv_fifo\n");
>                 ret = -EPERM;
>                 goto err;
> @@ -682,7 +682,7 @@ static int intel_hdcp_auth(struct intel_connector *connector)
>         if (ret < 0)
>                 return ret;
>
> -       if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, bksv.shim, 1)) {
> +       if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm, bksv.shim, 1) > 0) {
>                 drm_err(&dev_priv->drm, "BKSV is revoked\n");
>                 return -EPERM;
>         }
> @@ -1283,7 +1283,7 @@ static int hdcp2_authentication_key_exchange(struct intel_connector *connector)
>
>         if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
>                                         msgs.send_cert.cert_rx.receiver_id,
> -                                       1)) {
> +                                       1) > 0) {
>                 drm_err(&dev_priv->drm, "Receiver ID is revoked\n");
>                 return -EPERM;
>         }
> @@ -1484,7 +1484,7 @@ int hdcp2_authenticate_repeater_topology(struct intel_connector *connector)
>                       HDCP_2_2_DEV_COUNT_LO(rx_info[1]));
>         if (drm_hdcp_check_ksvs_revoked(&dev_priv->drm,
>                                         msgs.recvid_list.receiver_ids,
> -                                       device_cnt)) {
> +                                       device_cnt) > 0) {
>                 drm_err(&dev_priv->drm, "Revoked receiver ID(s) is in list\n");
>                 return -EPERM;
>         }
> --
> 2.20.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
