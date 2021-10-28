Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6A543E37B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 16:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4E46E986;
	Thu, 28 Oct 2021 14:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 928156E986
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 14:21:43 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id d3so10507120wrh.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 07:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=pHD5uM48Ck8DZTOy+xnP6uSr/2hR00s5b0NWfoi5N0w=;
 b=KIRSVoIAdOLws5MK8R8vTuItylgRw6eJsO6e+9vxnyjHPPZTZLzA854rJKpilWnY5N
 F+IOR9fGcLHC4vIe+R11/mVWpt3o8/ByIq92H3i6OdtMUMkzk5gzBLhqA/azI1aFqVe/
 gPPhvUIenvUJPpbyYo2GIUx5FZM3fXxe/6QbfINiJQ4yGtdHCihcwzuN8zQjTvs4yOIo
 qLTZ7MHnOziAq2dZgU2QETCyqu31r6zClKfb8Ez8bzw3311RRtJgDEaospdvgUy2qqI3
 AXxBVjYWlf08m/vcuYuSacIpWplYWormwmG1wfPVVIC5GaWJS6/AVJxgpGywVo7uWIui
 CxwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=pHD5uM48Ck8DZTOy+xnP6uSr/2hR00s5b0NWfoi5N0w=;
 b=4nZP+l9T+oSQmnrkSskKngTCtsYUzhjpEIt2TdVE+FZjygvRfLrk7tSdmHt9IFjg6i
 2aGzaL57cpyLEwGfvnHy6rJOr/wj8dxp5vfzeL+b47EcQECG+3fXWprnviyLCrJ6rZCE
 0sMFPasi/QpQgacbQ7atzYjU1m0Ao1BG9PcRDAPmkyodoFn5NCpHvEMhv7GdQRuFi5OD
 NCudpRVVF10MF1jkDDxrW0OHBSBReCF7M4a0ZkXQQ+ZYzzIfVBcYngwZBYMT9DtPoXxq
 ZqkhDm5CLaxGdOXqdwJYVDu/7jb78AqPfJOUdiVkgIhKEhyWPe1kbZtBKEKPMN2nwa1a
 Dljg==
X-Gm-Message-State: AOAM532dvDjwLCD80nJB4RYl4klWQystV5gr7r/KGhkPpdmrG6Zvz+DO
 lbPvSSTJGdPWmcd2B85dqBo=
X-Google-Smtp-Source: ABdhPJxCE9TqD/+ixZbctoJArQEgnLAKr3Dc+PFpngfox281I1zfSGNzlfy9cYA+C/LUip8EBikAAA==
X-Received: by 2002:a5d:5402:: with SMTP id g2mr5967285wrv.290.1635430901991; 
 Thu, 28 Oct 2021 07:21:41 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.71])
 by smtp.googlemail.com with ESMTPSA id z135sm7711342wmc.45.2021.10.28.07.21.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Oct 2021 07:21:41 -0700 (PDT)
Message-ID: <04e05ae2-ce81-65ac-14c9-a11e350d8e31@gmail.com>
Date: Thu, 28 Oct 2021 17:21:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211026161517.2694067-1-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20211026161517.2694067-1-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915/fb: Simplify modifier handling
 more
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

look ok to me.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 26.10.2021 19.15, Imre Deak wrote:
> To simplify the handling of modifiers on DG2 and future platforms it
> makes sense to fold the modifier tiling and CCS type attributes to the
> plane capabilities mask. This patchset does that, also including fixing
> two minor issues.
> 
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> 
> Imre Deak (3):
>    drm/i915/fb: Don't report MC CCS plane capability on GEN<12
>    drm/i915/fb: Don't store bitmasks in the intel_plane_caps enum
>    drm/i915/fb: Fold modifier CCS type/tiling attribute to plane caps
> 
>   drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
>   drivers/gpu/drm/i915/display/intel_fb.c       | 84 +++++++++----------
>   drivers/gpu/drm/i915/display/intel_fb.h       | 13 +--
>   drivers/gpu/drm/i915/display/intel_sprite.c   |  2 +-
>   .../drm/i915/display/skl_universal_plane.c    | 12 ++-
>   5 files changed, 60 insertions(+), 53 deletions(-)
> 

