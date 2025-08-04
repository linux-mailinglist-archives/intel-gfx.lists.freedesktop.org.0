Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C75B1A53E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 16:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B5D10E591;
	Mon,  4 Aug 2025 14:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="O7CmMmct";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4368410E58D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Aug 2025 14:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1754319044;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Th/zbNG2w/sGAVRFlv12HJ6Li/jSTJBgQ6X2ZZll/S0=;
 b=O7CmMmctRo8TFZp9kSQeC6rDb/zMSZ0HCHtbqtVv/qprOjythyKSwsXPkdGKeC+prscCG/
 iPvAZr3GrJvnAGlgdvZL1vLCszCYW18ffDvPJgI81KeCyUBP4qNSgYJg07OJPuAKMc/aCW
 n6sAfIZsr84pmte4/ictBb0pPG34+kQ=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-nY39FrqeN5ieRzd3_4iqOQ-1; Mon, 04 Aug 2025 10:50:43 -0400
X-MC-Unique: nY39FrqeN5ieRzd3_4iqOQ-1
X-Mimecast-MFC-AGG-ID: nY39FrqeN5ieRzd3_4iqOQ_1754319042
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3b785aee904so2004919f8f.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Aug 2025 07:50:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754319042; x=1754923842;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Th/zbNG2w/sGAVRFlv12HJ6Li/jSTJBgQ6X2ZZll/S0=;
 b=e2u3a88h9TC+0r1VhUIhN0P1ynSbp82cD7OPnwczNlSoa8X5mDG2p0d94FbOzPsZCm
 NqY6Gquhmcdr8k05aZX6B0L9IMhqUrtr7LmNRRM5Hv6i8tG05JjDJIcC00Bx4TB6Oq6f
 Tq+0aYTLE/wDmvAQpaTv0cMV2CJ3oH+x333rhTo+762x5SXfu4qoC4HmETAxtLy/dWtz
 7h/dntgY+OIOFLI3r98eYp7cvNYnoCWjmE3W0xUlMVTINolZiQBoZEILW1YOQAltQnPo
 hSmHuwSrHK1zQEEnG2gkaWeCpqMj/xuT24r0dt7mqmPMaIy2vR4lLZrtvPEVJVtqVSnC
 6gcA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXRGzS/IgPF+tkOPHzUkCDdCqyV/F+vMwJt99MGVZAVuJg8wptVdzKba6IuUKa2HV3XmKO2Wrm9Vik=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzh0gvEA0lX8uHMy/+JOCLMPvg+BL5cOgaoXnMcY5eJjJGdL0K/
 4kD95CWniOJbBmA+ydW2+wq++XeiZl0bLH/DeQcYgrycVj4xcBH/Obc06mxYPJMGVIFEyY1fTd5
 RmyeG7ICpx3CsTl7DqMr2qWkSMz2eOP6rew7FsPHOaeivdGMT4dYYrjHhVasYAnb9NNsPuSVP5m
 u6Y+rs7xrDA5t4eLwOEMWh9hw0Or0RktjvAciH80vKLYux
X-Gm-Gg: ASbGnctxJ35bAPDil6t4DOE6Ee7IaL2z2ViveGc18YNzPKwnNHjWCXnFsl9dh6ITBUq
 fW3Ic7ynVD38PqyQnrDtOdhmZaojUWtklIQWt95fLyX7TJkiNzEf+7De307h7amqx2XFuOKYc76
 LtQ+weve8OnqfsSbcYoZDq
X-Received: by 2002:a05:6000:1788:b0:3b7:94c3:2786 with SMTP id
 ffacd0b85a97d-3b8d94c1c49mr6701545f8f.34.1754319041927; 
 Mon, 04 Aug 2025 07:50:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgsw4pwEJUoqykoSclSWi0JkSR9VtvKkMXz/zduARm+hjzykjvBGRpvCt0a+Ds377veRWW/i7OVVOUhVwFvkM=
X-Received: by 2002:a05:6000:1788:b0:3b7:94c3:2786 with SMTP id
 ffacd0b85a97d-3b8d94c1c49mr6701520f8f.34.1754319041488; Mon, 04 Aug 2025
 07:50:41 -0700 (PDT)
MIME-Version: 1.0
References: <CACTEcX6oXBot1VBApOyKVMVXsAN9BsvQMLa8J0iKpNeB-eLttQ@mail.gmail.com>
 <642d439ea1be8e48ee5c47fd3921a786452fb931@intel.com>
 <CACTEcX5Y3PNXNkhnK1dGFe+k3sigOZNpj66KKGAS9XeHqRu35w@mail.gmail.com>
 <0b15e33603a46f6cc7ad7d09a156044f11367169@intel.com>
 <CACTEcX47bUd2tp=LYkQnhK29Js=vLN0JfXL8Aq6mOFBVYumpzQ@mail.gmail.com>
In-Reply-To: <CACTEcX47bUd2tp=LYkQnhK29Js=vLN0JfXL8Aq6mOFBVYumpzQ@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Date: Mon, 4 Aug 2025 16:50:28 +0200
X-Gm-Features: Ac12FXwltMgUzEEB8nqMLRA_D51YfOsfFkH1rt4nc_9cVgH_FR6V2EdEIAFZooc
Message-ID: <CABgObfZKKeqMrAUyS8CB4ARkW_8Z9QREgpgYcq2jxoQ9ppS6MA@mail.gmail.com>
Subject: Re: [REGRESSION] tty lockup and WWAN loss after hibernate/suspend in
 6.8+ on ThinkPad X1 Carbon Gen 10
To: Andy Mindful <andy.mindful@gmail.com>
Cc: regressions@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-acpi@vger.kernel.org, 
 rafael@kernel.org, ville.syrjala@linux.intel.com, tglx@linutronix.de, 
 Christian Brauner <brauner@kernel.org>, Jani Nikula <jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: qjFOYaZAPv6wJEUoU14rTgXu9bgIwBT-bYYLFfyfZN0_1754319042
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Mon, Aug 4, 2025 at 12:57=E2=80=AFPM Andy Mindful <andy.mindful@gmail.co=
m> wrote:
> Double-checked bisect, looks like I've have found broken commit:
>
> > > git bisect bad
> > > The merge base ba5afb9a84df2e6b26a1b6389b98849cd16ea757 is bad.
> > > This means the bug has been fixed between
> > > ba5afb9a84df2e6b26a1b6389b98849cd16ea757 and
> > > [1b1934dbbdcf9aa2d507932ff488cec47999cf3f
> > > 61da593f4458f25c59f65cfd9ba1bda570db5db7
> > > 6fc5460ed8dd0edf29e7c5cfb1ef9b1aa04208a1
> > > ba5afb9a84df2e6b26a1b6389b98849cd16ea757].

This skip is messing up the results:

# skip: [0dd3ee31125508cd67f7e7172247f05b7fd1753a] Linux 6.7
git bisect skip 0dd3ee31125508cd67f7e7172247f05b7fd1753a

and there are still 3858 commits in
ba5afb9a84df2e6b26a1b6389b98849cd16ea757..{1b1934dbbdcf9aa2d507932ff488cec4=
7999cf3f,61da593f4458f25c59f65cfd9ba1bda570db5db7,ba5afb9a84df2e6b26a1b6389=
b98849cd16ea757}

Any chance you can get 6.7 to work and restrict the range further?

Thanks,

Paolo

