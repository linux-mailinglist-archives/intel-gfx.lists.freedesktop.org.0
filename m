Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B61306EF546
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4694A10E0BB;
	Wed, 26 Apr 2023 13:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF16E10E732
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 13:52:15 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id
 38308e7fff4ca-2a8bcfbf276so52898871fa.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 06:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1682430733; x=1685022733;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :references:in-reply-to:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yNCPG4xIh63Oe0A1+HmbKpkHQbe90YjvVOMArm6DrJk=;
 b=P4y5XNAKbUPI0n+2/gUiKRrPcEB5xQV/HMfm8k+lr26xcSlxpHzve705mZg0mjWHff
 g7ntxk8K+K4nbiQjxtH5afN0nfee+isdXgodGbWR9yZuGflnw/y8ZmYZWWHep2KZo1Re
 AzOi0iWNlrLnMhwzO9e9QG1w0ZrUYxyzzWwv0FSw6ttlhi75jPD3hDnonPGJ2tJvwnqC
 BnX14fv4zkyaDzkLh5N2EnsIWMs//SaMvz3ph7+j12+IewQ10JbxMd0pcM7eum16OEtq
 eUa/JVq/SM/0SAxLVhl0G0d43FjlEavu5gGanwBOWpM3mvKB8r6A47bjTdPWrL5OGv7j
 jEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682430733; x=1685022733;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :references:in-reply-to:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yNCPG4xIh63Oe0A1+HmbKpkHQbe90YjvVOMArm6DrJk=;
 b=Ua2qsDDzsD1Fnpw8dcOxIP8gGx3vQv+wZTlktLF8KypS2kwWLRq3KEWEFWXulGgJMG
 WDeTBLxLr5SBPzPXmqyV1D0WHFqhX7gPelScKZzJNFnlEbyEeRXFlcmUf89dUWs0VIsY
 +m9MxOPXXfinVkQM+1isiOoAaRiOU+KokPt48HK/3ViAdGLRE5jZlyDYIdEgxiXkMBxf
 2FsIvt5hhZDnOItsyV1RDKPUTC7BulZHR7V0ElM1ToUl20/YRhhH3IMkiZ0CObDg3yUd
 QEolFpBo9Z5bneMINwOtgHLRY0P9h5bf+PcR89WMhmB7pFs+OUmdAxPSWaFIRKoXmoXh
 7IVA==
X-Gm-Message-State: AAQBX9fqlQMN6FhP8Wk2BkKNJ4C9a03eO8eZEmcYh9I+3BpB1qOmIlKM
 7J6SQPc1gQ5p18EbVQpEzRk+lM2pF3DrddbnoKU=
X-Google-Smtp-Source: AKy350YOE4uk3PqYbAZAqZVqXdZ7AytOpMfeev/MAyvK0Jlil2n1DX7cujjmVYtxtI0wd6VoeSfzXkilg+29z5YgiDM=
X-Received: by 2002:a2e:8802:0:b0:299:ac26:f781 with SMTP id
 x2-20020a2e8802000000b00299ac26f781mr3606130ljh.18.1682430732772; Tue, 25 Apr
 2023 06:52:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:5915:0:b0:224:262d:c651 with HTTP; Tue, 25 Apr 2023
 06:52:11 -0700 (PDT)
In-Reply-To: <ZEed4a0krg3aoJjX@intel.com>
References: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
 <20230425054657.18474-1-youling257@gmail.com> <ZEed4a0krg3aoJjX@intel.com>
From: youling 257 <youling257@gmail.com>
Date: Tue, 25 Apr 2023 21:52:11 +0800
Message-ID: <CAOzgRdYZE+PnAzK9hQEMEi48LgnsCUjgTDVwz3eWgiDn5iADSw@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 26 Apr 2023 13:16:02 +0000
Subject: Re: [Intel-gfx] [1/2] drm/i915: Fix fast wake AUX sync len
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pcmC0D3p use for hdmi sound out,
numid=3D13,iface=3DCARD,name=3D'HDMI/DP,pcm=3D3 Jack'
  ; type=3DBOOLEAN,access=3Dr-------,values=3D1
  : values=3Don

this patch cause 'HDMI/DP,pcm=3D3 Jack' value off, hdmi sound not work,
replug hdmi cable no useful, still no sound, 'HDMI/DP,pcm=3D3 Jack'
unable become on, have to reboot.

2023-04-25 17:31 GMT+08:00, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.in=
tel.com>:
> On Tue, Apr 25, 2023 at 01:46:57PM +0800, youling257 wrote:
>> This patch cause suspend to disk resume later hdmi out no sound.
>> Revert "drm/i915: Fix fast wake AUX sync len", suspend resume hdmi sound
>> work.
>
> I find that hard to believe. Fast wake is a PSR2 thing, which has
> nothing to do with HDMI.
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
>
