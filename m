Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1699B020D7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jul 2025 17:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE6810E2C7;
	Fri, 11 Jul 2025 15:49:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="H6d/inuu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D7610E2B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 15:49:00 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id
 a640c23a62f3a-ae3a604b43bso376597066b.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 08:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1752248938; x=1752853738;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=flK+SksbT18bLb3jG4ILK6UNz0qu/K2MvbsIMeVlTeI=;
 b=H6d/inuuUeUMe2jBuJ1GsGQKplJgh6zFsjw9e9ZBKhB5bbe6sVFW4SwMzy4WK5I8hM
 0BL2QbJyDii8SsKheUnBI5y2FTZufFsYBn5of/kRKcBpy36ZqqGYHTBXR045RALP7lBK
 7bn36ANlOuvIfaH+2U55Kn/wyS4D5zP1gWto0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752248938; x=1752853738;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=flK+SksbT18bLb3jG4ILK6UNz0qu/K2MvbsIMeVlTeI=;
 b=fAeRzCYKk2K02+nPtjVBJTDiRaT+3DXPKP5drvzgutw0Ea0g4f6Y867lS3ujWQW7Cg
 nxYTpPgqO4tP+RkDRRAWQtky7HwLFzYwW2AM8triCYXoKdBck9u4O/al/BpCd0P3TDyq
 2zxhBK+iy+ynqok/Ln/AFIh/bDLaIk3ZbAfxKMxkUdPxPUGeoe/gVA6uLaWnsKkxRBt4
 ur5vdJWj97MTtHqyPKuFfXwS9h5Lj8BK/D7bVYXT29Y7GrRLPcu44m9BHFaAs7VwR/ag
 yrKrLB1FYN6CMVcyHSqxWRLp7dwCY9eaJD/WQvFhAjQbtY4Bn2zR4lvQ0T3KvINxsUHN
 qe8Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXMcTY922LQXo9vzHWcTrNelZXrI3b0KCoaST+Z2YkNSung7SRryOVFXyTy+COGO1FmjPj0tN7IBKo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwU2XMbCcAfYX0CIYVliDVJ8fmhqCc66TpT4t6Qp+9tQzHzuCuZ
 7Yatwz0zsSIc/5zQQmSFoz44PwarJD1Sx73kZcJTiIodXNDu00Y1GzaCzsnfG5zbGnicPVTp8o4
 2CTRodi342g==
X-Gm-Gg: ASbGncs7FsW1Cs4VAc29cy8yWMwEgHlO/8m6apI5w8/pGX5AxOnYE1rwLv55JJDk3eF
 7I8Z2DWvOEdzWNJFdzxq/vVnc+TL+/n3MxXPtwLahHtx8iv1D3SjGm0/VtFuZ+4eYuC1UG7Dvfh
 KSX7iJQZ82usJiOLDIXspUiOlGqQQYeCrMGYCfMmFvL4wnbU0V7o+h5AiK8DbgBQGEZmiqsYJ3K
 d5IvC4owGhSB+4/jRPwgdhsz1JPccT7vjvuFW9PJM0yakeuv9coWMqnj4HuUKQdLCfGER7Mrf4z
 8rT0040YNfita9P1O3uAHun5SSsynyV+/vQpkkZp1Hchjk3vLdKgFN8vo/tJUCBpTD86jT8eEXf
 zDPcTiUvThBo4LUxZLb7ywONgXgvr5LgrAzCs4GzxS7wPt8sbGHBoD/PsvrP6r6FwdzmS9uXA
X-Google-Smtp-Source: AGHT+IFgwbSaqZE3RqV0NB+hj3Oj71VsFzVjQqcrbYsAoP3C1LTo14ZVrScDX42Tn2L8NyWoCIyE0g==
X-Received: by 2002:a17:907:c13:b0:ae3:163a:f69a with SMTP id
 a640c23a62f3a-ae6fbf619bcmr406876266b.33.1752248938298; 
 Fri, 11 Jul 2025 08:48:58 -0700 (PDT)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com.
 [209.85.208.49]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ae6e82dedf4sm319321966b.148.2025.07.11.08.48.56
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Jul 2025 08:48:56 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id
 4fb4d7f45d1cf-60c5b7cae8bso3604309a12.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jul 2025 08:48:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVKmWz03Qd9mirVVb0YKquVOjnk7sBoq8rVUQAAXMIK2NwmAz0cemzaEHp29K2NYOJUfQAF4kbBrOs=@lists.freedesktop.org
X-Received: by 2002:a05:6402:2345:b0:606:df70:7a9f with SMTP id
 4fb4d7f45d1cf-611e84881c0mr3248744a12.19.1752248936308; Fri, 11 Jul 2025
 08:48:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250711093744.120962-1-tzimmermann@suse.de>
In-Reply-To: <20250711093744.120962-1-tzimmermann@suse.de>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 11 Jul 2025 08:48:39 -0700
X-Gmail-Original-Message-ID: <CAHk-=whnUp7M-RZ6yzOyF6bzA4cmbckaH4ii_+6nBm0PqKOaQg@mail.gmail.com>
X-Gm-Features: Ac12FXxfNX9iFY-MTPcFF9E1sp2PSMV-QdcnP7if0RVZKfq1TRX51YyGvLKD3nY
Message-ID: <CAHk-=whnUp7M-RZ6yzOyF6bzA4cmbckaH4ii_+6nBm0PqKOaQg@mail.gmail.com>
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

On Fri, 11 Jul 2025 at 02:40, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Reverting the whole thing is the only sensible action here.

I'm assuming this is against some current drm tree, not mine, because
it doesn't apply here.

I'll try the smaller set of reverts that Simona suggested for my
testing, and will get back to you on that.

Background for others: current -git ends up having odd hangs when
Xwayland starts for me (not at boot, but when I log in). It seems to
be very timing-dependent, so presumably I'm just unlucky with my
hardware.

The timing-dependence has made my attempts to bisect it very
frustrating and non-conclusive, but reverting 5307dce878d4 ("drm/gem:
Acquire references on GEM handles for framebuffers") made things work
_better_, to the point where I thought it was fixed.

Until the hang came back.

The "hang" is not some kind of kernel hang, it seems to be user-space
getting confused by the changes. Because I can still switch back to a
text VT, and there are no messages in the kernel logs. And the system
"recovers", in that after a 30-second timeout (it feels like a minute,
but logs seem to imply it really is just half a minute), I get

   gnome-session-manager@gnome.service: start operation timed out. Terminating.
   gnome-session-manager@gnome.service: Failed with result 'timeout'.

and it restarts, and things work fine on the second try. Except when
they don't - on one reboot it went through this twice, and

Now, because it's obviously timing-sensitive, it might be something
entirely different going on and I have no guarantees, but it does seem
to be related to that commit 5307dce878d4.

And I only see this on one of my machines. Again, might be timing, but
might also be that it only shows up on certain hardware (in my case:
Radeon RX 580).

           Linus
