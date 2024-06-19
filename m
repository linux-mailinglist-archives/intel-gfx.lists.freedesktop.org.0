Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2152690F31E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 17:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CAC10ED10;
	Wed, 19 Jun 2024 15:52:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="b94z7dI3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8734A10ED10
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 15:52:37 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id
 2adb3069b0e04-52c82101407so11224894e87.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 08:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1718812355; x=1719417155;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=B8s71NdX52Gwd8z+763rRphKSP2eeZm9/nzW3853+Qw=;
 b=b94z7dI32dyNGBfD2eibOSboWkeYynttTxtIob8YxYuDE4u1IjYgmKRSSLcLw5b74o
 Z2gkdl2DXsh7ofWNqm8YMCDIhyldNYe9sXcp0ETwz73yZnJM6jXTX+Prx8BOEjGccJ+1
 kiq1ZFmOHgrV/1ekgij3iOxqAGq6eNqB46rGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718812355; x=1719417155;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=B8s71NdX52Gwd8z+763rRphKSP2eeZm9/nzW3853+Qw=;
 b=hFhT0+1ODKpH5nF96Oi5wd/Yy0kmL4+kttUOqiNXuMfSzD8xVLAvQ8TrZyoRkj10Nl
 e9e1qxW81OtMsV+t5nWd8YHh/5o+/yOgJ1X1ZL6azYt8oK91Y51cHP1McluDiRU53nF6
 oFiXu0whntC8PqLfniKjCe+rlCEn5VZbG1pYh+8p4fxd9313/Nts+uh7ZKgPTJcBowFF
 erN6k9CpOog+s8oIY92VAFW/mr1ICyEz8jrptt1eyV5Can7CNBdbxR2Irv0riVObuUfL
 A2a+1uKCsPaHJF3JmPW8kFpMQMX/0tI4ySR6POC5GTuukk5Xo/32bcXNvKsYrekWGP0z
 j75g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWihTAE2FSpDFmH2Zawr0yvHsM69W/eoQ0h0Yg4tRLecXIfiFd7KIKYgzq57j5LSlXjP/aF2fH/CwwOWpDBppN16WfN98JA1to9wiCxlNnu
X-Gm-Message-State: AOJu0Yxsoxz1md7X3T+cKG3KOfPpYZhTHiQ2Iqn1Ee6b2KvwlnsM69HW
 OI+rx5UrygqK1j7ZzF4NjUx8VpvQwMvUXU8BonDift4U72dE+FSfVeTEJRO3Mju9qiBw8AcoR8C
 UBBU=
X-Google-Smtp-Source: AGHT+IH+yZdSJ2gOQqyZFSMNsPcOnCtvUdAiOSVVcFvr+mheLZkzSAxSJONSbtpPAWlSFwwDyFDiqA==
X-Received: by 2002:ac2:52a8:0:b0:52c:83f6:1141 with SMTP id
 2adb3069b0e04-52ccaa373e5mr2009690e87.39.1718812355153; 
 Wed, 19 Jun 2024 08:52:35 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-52ca2872305sm1801308e87.168.2024.06.19.08.52.34
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jun 2024 08:52:34 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-52c82101407so11224839e87.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 08:52:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVcAYEScXIZ8xkbAPvlvHetIWxNTNNltaGbkaSVM7PCxTp6eqrkAVLp4opYL1/+kVwnonvtbTBF/Apd3RhvgwIBoho0mIpyksM/j/9ONWI9
X-Received: by 2002:ac2:5466:0:b0:52c:8075:4f3 with SMTP id
 2adb3069b0e04-52ccaa36996mr1970072e87.36.1718812354107; Wed, 19 Jun 2024
 08:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjQv_CSPzhjOMoOjGO3FmuHe5hzm6Ds69zZSFPa4PeuCA@mail.gmail.com>
 <ZmrTZozoi0t/tuva@duo.ucw.cz>
 <CAHk-=wjqHL7KjOWYBVKFewcKPWL7CJxddWfJnvL3AfOqfR8vMg@mail.gmail.com>
 <ZmwHGviv/6J6FQLf@duo.ucw.cz>
 <CAHk-=wigB-wVK+4=NuYJxoKLnoUXB52J5WU2hpKj2de6vGuY7g@mail.gmail.com>
 <CAHk-=wjcdUUip96PnfC+iRjAwPHn3XKsgcohk1ad5VcckCFVKA@mail.gmail.com>
 <ZnABbKrIzmmEoFEV@duo.ucw.cz> <ZnK2bmDFuwX8E5rY@duo.ucw.cz>
In-Reply-To: <ZnK2bmDFuwX8E5rY@duo.ucw.cz>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 19 Jun 2024 08:52:17 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgnwBE=n_K9q7x6R-bzQ-vRiLeYUciWTJtMokLC_1a7gw@mail.gmail.com>
Message-ID: <CAHk-=wgnwBE=n_K9q7x6R-bzQ-vRiLeYUciWTJtMokLC_1a7gw@mail.gmail.com>
Subject: Re: Linux 6.10-rc1
To: Pavel Machek <pavel@ucw.cz>
Cc: Dave Airlie <airlied@gmail.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Rafael Wysocki <rafael@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
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

On Wed, 19 Jun 2024 at 03:44, Pavel Machek <pavel@ucw.cz> wrote:
>
> Ok, so machine is ready to be thrown out of window, again. Trying to
> play 29C3 video should not make machine completely unusable ... as in
> keyboard looses keystrokes in terminal.

Well, that at least sounds like you can bisect it with a very clear test-case?

Even if you don't bisect all the way, just doing a handful of
bisections tends to narrow things down enough that we can at least
guess at what general kind of area it is...

                Linus
