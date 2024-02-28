Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E6686AC2D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 11:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3780D10E3E4;
	Wed, 28 Feb 2024 10:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar-org.20230601.gappssmtp.com header.i=@fooishbar-org.20230601.gappssmtp.com header.b="TGB3te0s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com
 [209.85.128.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AD6A10E3E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 10:28:49 +0000 (UTC)
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-6093e067220so3467737b3.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 02:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1709116128; x=1709720928;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=J3eF+gS9A+rhlpwJngPWTTWjnW4NAQut4pQZd24zIE8=;
 b=TGB3te0sq3lOUOv27+3tlTtctR8FRvzc0HKdF77wvCYl3+7lqcOpe8wGoYFt92oiJC
 R7b8YLzi84MWyCfBl6CVqom1S0ef6NJFGIXuVR1S+5jJ9YyiDXDU7cxygBt0rNogMvoi
 zTVVeeI31JVPMFqAixblD+VaaWH2t6O54bxJDf/KVKsZOOsl4ZdfcnL6GCm+F8zNPJGl
 N74xBrI25CF67N3EYH7SkNs92JSvXhufClfRB4VflBkSlb6sFbmeiEis1H3Rpm3pA5zU
 axuXgswkaA8LxOf4DMDW/8IRLbiJOaNBbs1Okdxs7TwUlgBhTDW+XUO/tDEA9CFjDRaZ
 S/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709116128; x=1709720928;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=J3eF+gS9A+rhlpwJngPWTTWjnW4NAQut4pQZd24zIE8=;
 b=qAW3BH4zfP0BGD0ZimRPgU2YfxYcjUI6CztGUzXxiRgqkRPwYfne/HNnSL5a4di/X6
 bggLpLULowRmvu/vVCE49SFn344Nxg4sRUOHeuRWdG+S1zUvkcc+VZl1tXuqoyVuyjki
 QTTqEngQLI6xlRiTt9vpQk4DGHG7UQwhiTI4BLkAsqdhggduWK9eCgNhxSqSARq55UXw
 0NXhMN23udNFNida2CyzdxiMSw/GPH/9MQRDFFZ+Wt+LSdx6gnz3jO2I0qtw3qp/2gen
 9Pehcv8bU8X36jDphkiw8cXAkB67h6VOyanjYZeqT2LnYtK2+HgTvkUUdiZB5WizPf+v
 OA3g==
X-Forwarded-Encrypted: i=1;
 AJvYcCW1bOs4Zk1aLNAgnXckW/wfwd8O7Q+a13/qwAtNHS1MNXptAiL8fUhZp/aznK918WyU1ObRTXlvk/ACKHuCz1bGKhcFeoKftBZC9TFM7Odr
X-Gm-Message-State: AOJu0YxLNlcriQtcz6OwNBy5waGfWp0q/d2R/2pAtqeHkfFHJbvQjAv2
 B4s0y0q7YyE6OgVj4UZptc62nSeQcYNUSFLuJn5etuFYt9LH8f525a/2q82D9hccKMXGe7vz7KP
 6w4pSlATReSZEBPmL22RwQ4ip46bBY4GwRxs+BA==
X-Google-Smtp-Source: AGHT+IGDaRi6+cBPdPjSEMwGyvKy//59EfeHJ/eWCFx1JO54IIiEKkHGrXo7JBVrFhuOxUkOgF4O9XfmY0Yiug7sHdg=
X-Received: by 2002:a81:4327:0:b0:608:13b9:72ac with SMTP id
 q39-20020a814327000000b0060813b972acmr4654879ywa.24.1709116128499; Wed, 28
 Feb 2024 02:28:48 -0800 (PST)
MIME-Version: 1.0
References: <20240227193523.5601-1-ville.syrjala@linux.intel.com>
 <20240227193523.5601-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240227193523.5601-2-ville.syrjala@linux.intel.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 28 Feb 2024 10:28:36 +0000
Message-ID: <CAPj87rMFBe0JdG0hCeNS=ChVjA-A6UD28c9wT6NYyb_r1Uietw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm: Introduce plane SIZE_HINTS property
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 Simon Ser <contact@emersion.fr>,
 =?UTF-8?B?Sm9uYXMgw4VkYWhs?= <jadahl@redhat.com>, 
 Sameer Lattannavar <sameer.lattannavar@intel.com>,
 Sebastian Wick <sebastian.wick@redhat.com>, 
 Harry Wentland <harry.wentland@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>
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

Hi,

On Tue, 27 Feb 2024 at 19:35, Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
> Add a new immutable plane property by which a plane can advertise
> a handful of recommended plane sizes. This would be mostly exposed
> by cursor planes as a slightly more capable replacement for
> the DRM_CAP_CURSOR_WIDTH/HEIGHT caps, which can only declare
> a one size fits all limit for the whole device.

Acked-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel
