Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE095C2BC9C
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 13:46:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C89B10E3DE;
	Mon,  3 Nov 2025 12:46:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="XaidB7Vl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 317AF10E3B0
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Nov 2025 10:35:32 +0000 (UTC)
Received: by mail-ed1-f46.google.com with SMTP id
 4fb4d7f45d1cf-6409e985505so2455483a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Nov 2025 02:35:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1762166131; x=1762770931; darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=b3OAbwuarCrA4ziOc0J/HvIweBPGt0pkYj8ooSEryuI=;
 b=XaidB7VlDKPAWQpBov2kcI8ke7YSXmaliuNvzRwX/W8uC9rlKFCgJy9YgqL0mmbxy2
 neQV4KdX/mPoqkqY0HZibOVfWFTUnMLJCy7UPn04GNCtZDbyCHfjTayOdc4UnFph52EQ
 gJtnTigfdNS7fAv0HFiimrZ7LKk8DQ5pVBWjt08EjhxII+B5yaDm/JInY9KMqBGbqFrB
 7Ur6/QG7hGw9wedDffy/GSGaTq8Zz3kTkYIf7muUzK09BeGukmQidy/wCz3H1PaBI4Eq
 xyTjR/JC+sf/QxQv9bgZq9NBW8sxGBk80vSpXuvX/FZ2N+2VkKF13HpCZwdpckw12tU4
 p9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762166131; x=1762770931;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=b3OAbwuarCrA4ziOc0J/HvIweBPGt0pkYj8ooSEryuI=;
 b=nphZxQ7qIe97K52XXALERlO/lnG93GwanjO52KBO2rlKrSc9KiYIt2oNdTgb+Hs4ZB
 hCnjEhtOj1MKOlriTyo+whjUQmQcEmi5puohTIiIfQZlebP2ddY55J2vcOmT6cnXPcTz
 +6qlOmcBGTEFaWUrKLCMVuTNMwVGkZl67MPXSO+5+bezN4SVxTgMrcpxqNHWDjrdn+ce
 EjrJC0pTQonz3LtIVuOoi/mbpW/3b0nUU/DNC76yPNXdvTroglo7UIbl+ergBRiyJxrS
 tXi2J108sUn9BA7RNdxmLuu2qd114d2Rt5Fr8NNULIcvinqmtUG7p3P5h+DRQ4RRCwqp
 IfLQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUmeZlAmUgwq9gEbHist2rHskfFrrWUBqJW/IZwSBJ/m4OgIzDJUTFUrdErABhVnPD9oDDpWKAPSLU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw3ckqAcmKJ5b3ULL5wp2NlOik9shgQkMk9Cr1KksVFmna3PU11
 d1NgjISGZ5JWeyd9LgszfRedmf4uC1YTYiWcYxkbxddZaP3dPozL3+w97BBFtQbZIu+MTh76Mp4
 /8pBURwwmhwCZ2ZU1TRe/dETiJMOcJqduUIglZp22Tw==
X-Gm-Gg: ASbGncvgk/4SQSufkb5GSs1NrpY0l8nal20JB+GGANQfHfEZAI8UCUA1w+yO+/zNEU4
 qCZ5vXGniXVJCKWFuAuGhmhB3qQNgx4srtDuzaP9ejBmiKPW++HryEvhV8L8aVBG11Ux+3aXOpE
 PlVYvmd+pONLDhWbKXNX/0JIoN/u8MrpritKjiTabRQrZy1o+JXaNxnTimlm5GVessKEIXmR+W0
 r7jXDNlVJhLjQ2heilT7tTajBa0A0SdiqN7tPYB0zq80P5Vn514eoDquTTDCxu1N1QJAt3lcYqG
 YhU5ha54yialv96fG27+ux46QoXf
X-Google-Smtp-Source: AGHT+IGPB5QN1Gp1XLL/Y8ZjkYXSk8ZUuddVGa1GdKH+M7nB4DA/XGBGr7gVZsMOkPzwtsGVJ/k3Z4SPV8L7T0lJ45o=
X-Received: by 2002:a17:907:fd17:b0:b3e:babd:f257 with SMTP id
 a640c23a62f3a-b707010563bmr1139966466b.10.1762166130086; Mon, 03 Nov 2025
 02:35:30 -0800 (PST)
MIME-Version: 1.0
References: <20251031100923.85721-1-marco.crivellari@suse.com>
 <20251031100923.85721-4-marco.crivellari@suse.com>
 <5ujqee7npggfcqmul6lcm44ilqrhmpcpiaxvdpcjjfawjhf63j@764n7hxk3mfm>
In-Reply-To: <5ujqee7npggfcqmul6lcm44ilqrhmpcpiaxvdpcjjfawjhf63j@764n7hxk3mfm>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Mon, 3 Nov 2025 11:35:18 +0100
X-Gm-Features: AWmQ_bmWpazZdPBsK9c0k-BLQOvItdt7Z6drkQb5vfltpmcoKofemzM9vUTIkx4
Message-ID: <CAAofZF5FJ4T6xVJfHbQdEfyVCxZLXXiZ-s6pNHjRq+GBsJ6imA@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/i915: WQ_PERCPU added to alloc_workqueue users
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, Tejun Heo <tj@kernel.org>, 
 Lai Jiangshan <jiangshanlai@gmail.com>,
 Frederic Weisbecker <frederic@kernel.org>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Michal Hocko <mhocko@suse.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 03 Nov 2025 12:46:06 +0000
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

Hi Krzysztof,

On Mon, Nov 3, 2025 at 11:32=E2=80=AFAM Krzysztof Karas
<krzysztof.karas@intel.com> wrote:
> Usually, imperative form is used for patch titles:
> "add WQ_PERCPU to alloc_workqueue users".

Thanks, I will also fix that one.

--=20

Marco Crivellari

L3 Support Engineer, Technology & Product
