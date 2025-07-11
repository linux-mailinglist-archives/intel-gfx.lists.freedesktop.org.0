Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 657F3B022A4
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 19:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B7D610E2CE;
	Fri, 11 Jul 2025 17:35:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="TLkBcIAE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8E810E2C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 17:35:58 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-60c51860bf5so3867311a12.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 10:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1752255356; x=1752860156;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6Y7KQBMvE5wPTJUBRle+pzVi+8DRYqjxpjSZtude4vk=;
 b=TLkBcIAElAiNVNyOfZsYdihHJaYys2b96FaiUh//hSK+MbRa8DyKaz7s+5BNMPQs3L
 C8RIp0a+KMdhy4dny9Vp7kPD+ZGD7QwfvlhtBqSzSPBzFwyuJQs9NuiXq/efQJkXE/jf
 Fb6aMk2+J/PhlJD2iwHa5NTizf7rqd9wp6MYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752255356; x=1752860156;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6Y7KQBMvE5wPTJUBRle+pzVi+8DRYqjxpjSZtude4vk=;
 b=xPygumFVpsEqF+21M5lRvyHQx7blykov7lfHfOL7XvjhjYILgBGJqJPT905cUUAHsG
 Z/voOP08ZC5UZQLUt18nof5a3LNn7PYLpi6i45cJ2jL29kb3r8rJJGqEFqxiw4r3hJwl
 rU/B89hLp7p/sTxWZfhjRInHbEQfpt3rO0m50cSzzcmnaU1tX495J10XjpOyB67vy3Dr
 1ZDqZIqsKR8UuSSYhTUs+B2KA4f06VxAlpQRV/w1Op45z7ZTwrBXRs0yG9AnMC32OYnD
 2L2KE/4qsi3QW2deOw9KZ/cZUlhjF7IaUMTRTJp4ERIp3fmNF/3tayYRG0fCYQaxebQW
 S0Sw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV3bEoQG5EWyDF1aAGLYDNQfKd9aMeWkCjXwtPSmYSRDeRO78WDhCPjRXRXpl557AtUWajrtdvHeNs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzoFnIsZYapBqT+fuTXjrgcKT4x3u8jiO+4exSyrgysuqYS3CVH
 tdwLBNokWdyUMhqmqt/aCD+7TIWN+igfH/F0b/CacXW8ms5Jm8V1WZQCc0vcBT5wwIcpqM7g/EE
 dhcfkZVS3KA==
X-Gm-Gg: ASbGncv7Vs4Oxz/PEcYRK2k2hCX5PTknMX9t16THrtW/7jAYjsklNPuY7SCUsDXn+9/
 LfslvsDp7ntgwManm1hd9QGFtuH8ckPqngEOOcK5zMVbPCgT7LG7gFyJP0uuYOQiGX0oNlosBN9
 h+r4qc4nhvqjw4iB07ux4KBXpTKywJWney2hIxK/uMlYZLoRtuhAMxbNixeWb3rlf7DE1G3kD9A
 64YwaurY4lEazIVJnAMdx2kZGVOO0FLuBGjw2+TVIi8M4DLbIk1MkgLuS6HPiLYBWEN3+8PwF5p
 8l4dVpb5Pr0tGbX4GQbaQ3YGwg2GOoDD6CMsjLn7H6iyME5NYOa814GN+vEDJQRo2Vp/tw3igLj
 4u/hfjRngB0b0aS4Ll3h44Y2RWqUPr2y4S7Qn90jhIejPRlwrFXHjCJnyK+NTcLeZiwH1i9Yb
X-Google-Smtp-Source: AGHT+IGjk5BOr6CjUh6bS3ieMxjNOCrRE4Y+KNP1wkNdgATsCB0F7Yqleg5XfB5rY5jckMdeQHRUTA==
X-Received: by 2002:a17:907:6ea6:b0:adb:469d:2246 with SMTP id
 a640c23a62f3a-ae70110334emr371783266b.17.1752255356383; 
 Fri, 11 Jul 2025 10:35:56 -0700 (PDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com.
 [209.85.208.45]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae6e82646a5sm331908966b.90.2025.07.11.10.35.56
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Jul 2025 10:35:56 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id
 4fb4d7f45d1cf-6088d856c6eso4424104a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 10:35:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCXIo0H3g2mUkG3tdxjG0B2iduM074/tm1FaSMOCzRCGWwmWP6S+QgoPHN3Ko4V3XInmtfDks0LJBO0=@lists.freedesktop.org
X-Received: by 2002:a05:6402:13ca:b0:60e:9e2:5844 with SMTP id
 4fb4d7f45d1cf-611ed137bffmr3157234a12.32.1752255355632; Fri, 11 Jul 2025
 10:35:55 -0700 (PDT)
MIME-Version: 1.0
References: <20250711093744.120962-1-tzimmermann@suse.de>
 <CAHk-=whnUp7M-RZ6yzOyF6bzA4cmbckaH4ii_+6nBm0PqKOaQg@mail.gmail.com>
In-Reply-To: <CAHk-=whnUp7M-RZ6yzOyF6bzA4cmbckaH4ii_+6nBm0PqKOaQg@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Jul 2025 10:35:39 -0700
X-Gmail-Original-Message-ID: <CAHk-=wif6u3C4gk7BtR1M+0SvHruXZ7xycP5oDdg-SF1D=ELqQ@mail.gmail.com>
X-Gm-Features: Ac12FXz0Cw3UTlua4uIPZpLiT2Oslevjx3UEJS8nAOMBtacwuTkVhrNGLknGSuI
Message-ID: <CAHk-=wif6u3C4gk7BtR1M+0SvHruXZ7xycP5oDdg-SF1D=ELqQ@mail.gmail.com>
Subject: Re: [PATCH 0/9] drm: Revert general use of struct
 drm_gem_object.dma_buf
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: simona@ffwll.ch, airlied@gmail.com, christian.koenig@amd.com, 
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, l.stach@pengutronix.de, 
 linux+etnaviv@armlinux.org.uk, kraxel@redhat.com, christian.gmeiner@gmail.com, 
 dmitry.osipenko@collabora.com, gurchetansingh@chromium.org, olvaffe@gmail.com, 
 zack.rusin@broadcom.com, bcm-kernel-feedback-list@broadcom.com, 
 dri-devel@lists.freedesktop.org, etnaviv@lists.freedesktop.org, 
 virtualization@lists.linux.dev, intel-gfx@lists.freedesktop.org
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

On Fri, 11 Jul 2025 at 08:48, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Background for others: current -git ends up having odd hangs when
> Xwayland starts for me (not at boot, but when I log in). It seems to
> be very timing-dependent, so presumably I'm just unlucky with my
> hardware.

Update for this thread as well: it looks like I'm just being unlucky,
and there are two independent problems. The drm problem *may* be just
the warning issue that has been reported by others.

I'm hoping the login time timeout / hang ends up being due to a known
netlink regression, and it just happened to look like a drm issue
because it exposes itself as a hang at the first graphical login

A netlink regression *might* fit the pattern, in that it might just
cause first login dependency issues and resulting timeouts.

After what has felt like a very smooth release cycle so far, having
what looks like two entirely independent issues strikes me as
unlikely, but hey, unlikely clearly does occasionally happen.

           Linus
