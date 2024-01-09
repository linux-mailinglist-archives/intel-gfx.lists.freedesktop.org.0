Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F08828FF6
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 23:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BE7710E524;
	Tue,  9 Jan 2024 22:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C96810E52E
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 22:32:31 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id
 af79cd13be357-7831806c51bso282155685a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jan 2024 14:32:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1704839550; x=1705444350;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ynsR4nnFEaZADpxDZxOiLIugSOI6RO8hBMHt22YNR9I=;
 b=celG7Btyc44T7hplGSCaQyHNuGCtEgipm73fSr5ULBkjVb8tAWFmsrq5uAjZoedcqv
 gFwgmL6Jps1SaZWKM6k2DIRtwuSneaNuTrXlMZGUwQu7SUkGQZ+2pCadLoNOaZhN/Tuj
 4hkjIhHTUWklYGdD6zbtA5+t0Fb3ZyO4LHOtsCXkyIgDZevu9n1+VWEn3ADMGizp5Fsv
 k5xh7/aE3UN2aTSzAbE/B1NCvGVO5IWJQGHIkQsqhR/JD5dnxup+5irGEFqxUKR/bZlJ
 ZZH6D1D3XNOtFvHrkfpsX9Kgrp+xXo8OruO0N/ogS50EK2ZIaQcicMkSQAP3sYalFOU+
 PuAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704839550; x=1705444350;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ynsR4nnFEaZADpxDZxOiLIugSOI6RO8hBMHt22YNR9I=;
 b=cV/ixB/77D06Yo5Pr61U+XUNB8cKHdnRiVfzxQa1slK9pRiYLOzP/bqVkuDZ0gDUSr
 5Ls9vFL8D31O1C+qVu5CGkWyKYyaSMxjWvzWDUWi5xTv7knksjYE21Do4j/fcYcxv8XD
 O64BqmRWGN21WUCXzOSIhWYCeIIWPxfJlmkhDEeRnDWfS3o6K1UJkyOs+K5RRLwFTFlV
 ekC+DNsLLbWA+5021aL4ih+BSN8FefrydvqosG+xMcM2sZ+ncDRzVMvraqGzYi5YkiJy
 fv6R+uwmYYEYifSZQ8dUroLlHRZzR5AKPnIRG32Ths20KgWufuOF7Ol68sR+tIpPqujB
 XyAA==
X-Gm-Message-State: AOJu0YwudiDT0JcuUB/P9LWVhOdqIItkeTI65FB+166fzD+g3jRQazDp
 z84YDWu5wPJ+c3CrxZRO5HNEE1ukTrxRlSUg9dD+FnUL1eOMdQ==
X-Google-Smtp-Source: AGHT+IEni1Ntup6ec+s61FZRN+0Cq4rkHJLzEGZRkocUASUKr2AOtWgASwxL8J0ZDkXeq6OC/kMNJ7/4oMga4t3FLWw=
X-Received: by 2002:a05:6214:48f:b0:680:857:1bd9 with SMTP id
 pt15-20020a056214048f00b0068008571bd9mr218069qvb.82.1704839550148; Tue, 09
 Jan 2024 14:32:30 -0800 (PST)
MIME-Version: 1.0
References: <20240109181104.1670304-1-andri@yngvason.is>
 <20240109181104.1670304-3-andri@yngvason.is>
In-Reply-To: <20240109181104.1670304-3-andri@yngvason.is>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 9 Jan 2024 22:32:18 +0000
Message-ID: <CAPj87rNan8B5urDFkmD_Vti4to6p3NmvXYsTFQTNg-Ue2ieDug@mail.gmail.com>
Subject: Re: [PATCH 2/7] drm/uAPI: Add "active color format" drm property as
 feedback for userspace
To: Andri Yngvason <andri@yngvason.is>
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Leo Li <sunpeng.li@amd.com>, David Airlie <airlied@gmail.com>,
 dri-devel@lists.freedesktop.org, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>,
 amd-gfx@lists.freedesktop.org, Harry Wentland <harry.wentland@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, 9 Jan 2024 at 18:12, Andri Yngvason <andri@yngvason.is> wrote:
> + * active color format:
> + *     This read-only property tells userspace the color format actually used
> + *     by the hardware display engine "on the cable" on a connector. The chosen
> + *     value depends on hardware capabilities, both display engine and
> + *     connected monitor. Drivers shall use
> + *     drm_connector_attach_active_color_format_property() to install this
> + *     property. Possible values are "not applicable", "rgb", "ycbcr444",
> + *     "ycbcr422", and "ycbcr420".

How does userspace determine what's happened without polling? Will it
only change after an `ALLOW_MODESET` commit, and be guaranteed to be
updated after the commit has completed and the event being sent?
Should it send a HOTPLUG event? Other?

Cheers,
Daniel
