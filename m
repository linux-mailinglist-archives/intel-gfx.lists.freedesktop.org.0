Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A469CD533
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 02:55:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7963410E11B;
	Fri, 15 Nov 2024 01:55:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="Pc1wZfBz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFEF10E121
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2024 01:55:01 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id
 d2e1a72fcca58-7242f559a9fso1239994b3a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2024 17:55:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1731635701; x=1732240501;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ax2nCJw28+cGdzTpn+eQtOhpC15VKouPR6tFXcvFPcg=;
 b=Pc1wZfBzsRfoTezctaL9AtXbORGWGhoFhLWB1AmRCTohbnm7iFXFngauJm+JDbaKwa
 ZLXBGiQepnLjgijuxTaZ2KxWHrtVPf4bMzn1wgA1fxFyB5M3Ys0RTUKlHzQUtFKBZAf6
 6L2+fXHF0W/2qj+14fD81NYG7NEBFCjVBEgvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1731635701; x=1732240501;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ax2nCJw28+cGdzTpn+eQtOhpC15VKouPR6tFXcvFPcg=;
 b=bBUq3vDpWQUjNwU1Kdej0E6D6w71YS0lG9B6LmsVxjiAaxlZNoCkUp94K+NVJ7v+XR
 3HpnekdXEcxQs+aw3eX0b1oJ/UAdY654o6xb5haF++tB4Y5kAlmzSoGn8Lyuf5bQ2Wl+
 i2gGzFYAQbZuZiph37dQpJhEcKRpra5c0jXCudgqX6sJ6nkNsC56yZvfO3tDCuK6T1lv
 rRskR6kYPYR1LzwPyFoaBOdt44pycXmuP8GC0/OLwnvtBPimV0dfHMDjVnp1KVValY/q
 pCwjfFPC9XfT+6/IIdbdSR8e2s8gMV9KLoRC+QrS+1AaoyxABnmFzYZ+tEqQnPYU7fI7
 YDKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVE/SHH/k+uEpieq5XE0n/8UOPYwTgosl1KfvFGX71VSHpAKo1blQllIPKwXW/j8KxTWGeimYHu9pM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwZ9ZEll+KWzZi8C514/2jp9rVeKLKXiLDwnRh7T0Q+kv/BQQ3O
 zKTONLEhbL5ArVyMYbpYaeI8PczZ4ozGLi14h5MurvAttn2DOlOOaiRIYW06lg==
X-Google-Smtp-Source: AGHT+IH9aUdvAddesq/jNiojGAkb+nP6hjJUYZ/lJO+dyebRL5FJ6mciWhnqi85JGGRzIRwzHv/k8w==
X-Received: by 2002:a05:6a00:1413:b0:71e:1722:d02c with SMTP id
 d2e1a72fcca58-72476b726bamr1503003b3a.3.1731635701196; 
 Thu, 14 Nov 2024 17:55:01 -0800 (PST)
Received: from google.com ([2401:fa00:8f:203:f2ec:a79f:1362:3ac3])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7247711ce3esm318534b3a.48.2024.11.14.17.54.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2024 17:55:00 -0800 (PST)
Date: Fri, 15 Nov 2024 10:54:56 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ville.syrjala@linux.intel.com
Subject: Re: [RFC][PATCH] drm: i915: do not NULL deref hdmi attached_connector
Message-ID: <20241115015456.GL1458936@google.com>
References: <20241031105145.2140590-1-senozhatsky@chromium.org>
 <20241113083920.GH1458936@google.com> <87msi3bidr.fsf@intel.com>
 <87cyix6cc5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cyix6cc5.fsf@intel.com>
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

On (24/11/14 17:53), Jani Nikula wrote:
> > Ville, we handle intel_ddi_init_dp_connector() failures but not
> > intel_ddi_init_hdmi_connector() failures. Do you recall if there's a
> > reason for that? Something like a dual-mode port where DP works but HDMI
> > gets rejected because of bogus VBT info?
> >
> > My gut feeling is to propagate errors from intel_hdmi_init_connector()
> > and handle them properly in g4x_hdmi_init() and
> > intel_ddi_init_hdmi_connector().
> >
> > Of course, we have cases where hdmi is just not initialized on DDI, and
> > those should be handled. But I don't think hdmi->attached_connector !=
> > NULL is really the right check for that.
> 
> I'm hoping [1] would solve the issue.

Hi Jani, I'll reply in that new thread.
