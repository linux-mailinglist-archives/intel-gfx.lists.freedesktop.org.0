Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DD396D59E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 12:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CE0F10E851;
	Thu,  5 Sep 2024 10:16:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.b="htBiISGE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com
 [209.85.219.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599D210E84E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 10:16:36 +0000 (UTC)
Received: by mail-yb1-f182.google.com with SMTP id
 3f1490d57ef6-e04196b7603so706264276.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Sep 2024 03:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1725531395; x=1726136195;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=xd6tRDcBI6nT0vpG0+47dCoixHmT48y9ZIC4bv5qVFY=;
 b=htBiISGElkQQwgK1SQoF/+qPjmAgVpRBZ3gLBuVkIckzW1XdVkeProqo/m/11NDoTh
 F81k9ZqYsq0eqFa/340NBGFp3NjNLSf48QpLhaVnhreL8XPKeSbaYmH1qMYiWUZl60jN
 Jq6j/VBDjqTP+vjCmHS5bhz3wo5D/eS17K8r7B8KPry/q2itnybvO4pJEey37nzX26nA
 ePcHnBli29Mo77rbsyZwn8xmDTHBZ0f/lYZ0l4GqQERfEbxaHDnAmz+cvXL47zAQpr/o
 K2YlHvC26r5kx8ixmf43xoHCq7r2AScRtgeoA/PelThrkRQrs1nby7LHmREoR1iNFaMu
 DX6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725531395; x=1726136195;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xd6tRDcBI6nT0vpG0+47dCoixHmT48y9ZIC4bv5qVFY=;
 b=qLV6iD3dLRpE1E9OyVlYlTbQS0aDlo2WKMAJvEXx4b2N3JuPtO08UikFNfPek6Ctjm
 lOZCkUX7QZTlNvbBIfZZMdvygqoclAG0EQQUbpMRZgsmUJLLg2LRmmVqyUP3aNlv4yzH
 XytuCCwn4l6yRzfzTWEtrGn+3rhYCevrpcdSwpdapoKtNSCibR+eBdDBHJmFhjgkA7UX
 oq3WmixR29/KsyQv/F3urxWVhNSepcmUC9N8GGWo86uCWn/2AzNXrj1MlVcFn1f+65F1
 jgFmzexgat7TwVwYr+e9PuHdqSeUOvbKoMqMDTdUJ3xiqIfin4ubuvwOwwUKySL8Buvu
 KcvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW3sS+jQzOnbx8Dc/0RfeKSq8S1QlD6A5fGPeMyHOCQiXkwXb+q0xwwonrWRGh3VxW+I/RtZGnq/48=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzs72/Zoiq3iVhEl+usJEW1vdWUD7C++jj4ovKmk56KEO9pQAlv
 MBcpfDpJo8rf57fqBKQhhNM9VNrMt+rGNJINXnicBTu5NkiKGD2Ibil//IHER/UVbvMp0Pcn1+F
 1iiI7ZitWU/KAn7HAs/MqvoDLwdx6EdpH5FTY6A==
X-Google-Smtp-Source: AGHT+IHOAa2WnFWM0m3QmtHGwmSzixacJsCBpWRBvguStq1YD37bVLj0/P6F5Iapvjw7xs8jP/X43ydPbq380G1rQQ4=
X-Received: by 2002:a05:6902:1547:b0:e1d:1b8a:ac4 with SMTP id
 3f1490d57ef6-e1d1b8a0cbemr3960625276.11.1725531395247; Thu, 05 Sep 2024
 03:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240905093935.2780632-1-vignesh.raman@collabora.com>
In-Reply-To: <20240905093935.2780632-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Sep 2024 11:16:23 +0100
Message-ID: <CAPj87rPCctE=iJKfQXR-PJdUHR+5f-t2bRA5Daq2fzUTNekzcg@mail.gmail.com>
Subject: Re: [PATCH v1] drm/ci: uprev IGT and deqp-runner
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
 robdclark@gmail.com, guilherme.gallo@collabora.com, 
 sergi.blanch.torne@collabora.com, deborah.brouwer@collabora.com, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
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

Hi Vignesh,

On Thu, 5 Sept 2024 at 10:41, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> Uprev IGT to the latest version and deqp-runner
> to v0.20.0. Also update expectation files.

Thanks! This is:
Reviewed-by: Daniel Stone <daniels@collabora.com>
