Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DED85C47E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 20:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073EE10E524;
	Tue, 20 Feb 2024 19:17:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="gYisH/T+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3542A10E523
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 19:17:35 +0000 (UTC)
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-dc236729a2bso5499743276.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 11:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708456654; x=1709061454; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=owfyNv1TJxXYhYzgoZWH50Nlji30FNL3ho0Wn/WI7Hs=;
 b=gYisH/T+fvYIjqK3qPT3HATMe0tWV0EDcIuvKUdYrTWuW3kNdWOCxZUbAF+OEIfZIs
 H0DsUi6ytE5OdKNH4AHK2MZ7+o3pWO4oB6pQOY4v/xaFZg+y1xxdSZz5cXUvjMjsVD0F
 X9HEcZlWMeroiVXQvBDyV2mtyD6jw4yuGPcAAfh5gAS2vne7KlFkxGZqlnjzVrllVrkj
 +fVy9yHdV5mzvhNDhAs+1U4QoFuxEoxZRMW8OaU/Pm/N82VU+i9C5QMR15dAVEYpVqLS
 0Vcvgz49Dgu+SnstqUcHua2vS1fr07S1tsrqVT5nfEahsWJ6M0Y6j6rd7CFwMJ6ZRfGH
 Zdaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708456654; x=1709061454;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=owfyNv1TJxXYhYzgoZWH50Nlji30FNL3ho0Wn/WI7Hs=;
 b=EspNYDFIy0vPu9p2cdSBzD4NfAbl0Fm39/pDwUjd1CgsjGW/5Z+Q1pX+wPO7VKBXSV
 xFj4SD62bnc4kS2mLzQ3jjjdAZjlo4XgxW3AhMua0GSNwvbIzMVynXHwijEdMIqUWVCu
 AtZKS4OvJVt1Dtc501HkRie9eD66eD2U7q2AfYyxL73j8DOifKacwgdrs/swd6XCPIFu
 0waTshjkvDuhKS/5hwLND51NTxWomQgoNb/fr48z7Hk7SwbORyU2xzGMp/+/k+gQIUac
 n2aT0qHRDkaaZcmWRnzbdS91PK1vvZ4hthj5ZwJ4fRRM73yfEMN4Wt9GeRZkTbJ5gV6f
 erRA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU/5XgvzLcfRbi12Bla/i99sMVnPgKpmAiLNugiMCbYgLEbDnbv4jo85t4C65dCtznu+z18ji5pa37Q6I7ByBNIh+GXnDaAC9ExfkZj91vK
X-Gm-Message-State: AOJu0Yy4ZijmZWXof4QXK+iuiXDkIeyM7dO+IG+KgBBgDyB3H1Vd8weZ
 8nwqdbwCj2Wnh8TBUd8zAhrQRBoTdXbn0CvM93s3u7lb8pMYwfwhYxJ5a3RvwjuvCNBD0kQriEl
 Lfar5tNHJfvapdk2NRJAa25CHLSr5WkzVmp9bXA==
X-Google-Smtp-Source: AGHT+IE8vOzreFrHGur0jS728Ji3ZC+G2E6ohtg7f5EWmauJPRGX3K7oIaJ+B/vZwTHbfV04pJ1H+RxFa/SFzYZAjQo=
X-Received: by 2002:a25:e0d5:0:b0:dcd:97da:926e with SMTP id
 x204-20020a25e0d5000000b00dcd97da926emr14466623ybg.13.1708456654138; Tue, 20
 Feb 2024 11:17:34 -0800 (PST)
MIME-Version: 1.0
References: <20240215190834.3222812-1-quic_abhinavk@quicinc.com>
 <CAA8EJppQquHgSgCrxKZHPHk248Pxg7Q8mvmmjbcpUxpreQkcuA@mail.gmail.com>
 <d3674c10-5c29-d917-44f5-758d90d9e679@quicinc.com>
 <CAA8EJpqaG+fBA_FO-L7Bimtjqqg3ZDQtyJL0oPFEueb-1WxjUw@mail.gmail.com>
 <b1f4856a-ee08-c1fc-2db0-e22773633bcb@quicinc.com>
In-Reply-To: <b1f4856a-ee08-c1fc-2db0-e22773633bcb@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 21:17:22 +0200
Message-ID: <CAA8EJppY3tmv5FchykWG+d3vUBcAoaqZ3zjgYDr8kF5D4C9c1w@mail.gmail.com>
Subject: Re: [PATCH v2] drm/dp: move intel_dp_vsc_sdp_pack() to generic helper
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, robdclark@gmail.com, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, quic_jesszhan@quicinc.com, 
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Feb 2024 at 21:09, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
>
>
> On 2/20/2024 11:05 AM, Dmitry Baryshkov wrote:
> > On Tue, 20 Feb 2024 at 20:53, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 2/20/2024 10:49 AM, Dmitry Baryshkov wrote:
> >>> On Thu, 15 Feb 2024 at 21:08, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
> >>>>
> >>>> intel_dp_vsc_sdp_pack() can be re-used by other DRM drivers as well.
> >>>> Lets move this to drm_dp_helper to achieve this.
> >>>>
> >>>> changes in v2:
> >>>>           - rebased on top of drm-tip
> >>>>
> >>>> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>>
> >>> v1 had an explicit comment before the ack:
> >>>
> >>
> >> Yes, I remember the comment. I did not make any changes to v2 other than
> >> just rebasing it on drm-tip to get the ack from i915 folks.
> >>
> >>>>      From my side, with the promise of the size fixup.
> >>>
> >>> However I observe neither a second patch removing the size argument
> >>> nor it being dropped as a part of this patch.
> >>>
> >>
> >> Yes, now that in v2 we got the ack for this patch, I can spin a v3 with
> >> the addition of the next patch to remove the size OR as another series
> >> so as to not block the main series which needs this patch.
> >>
> >> I would prefer the latter.
> >
> > It doesn't work this way. The comment should have been fixed for v2.
> >
>
> Ack, I can post a v3 now by adding the removal in patch 2 of this series.

Yes, please.

-- 
With best wishes
Dmitry
