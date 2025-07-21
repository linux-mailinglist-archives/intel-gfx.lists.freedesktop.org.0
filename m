Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D30A7B0C612
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 16:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF6110E3A0;
	Mon, 21 Jul 2025 14:19:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="KaR+HD4F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC90410E288
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jul 2025 14:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1753107545;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I2e2g+RSdLVrXvuMyT6qHHm4bEHxvzYzZzIUO+TrG+M=;
 b=KaR+HD4FD6pHoUmP//6Mmxa7bisdzPMl03x54Ii3n0Uwj0umlLEmWwsCF/8hi3Icu5ZlhQ
 cGDJjKJcV1hAeBSWfO+d6BZvUQKrGeMrQqqoTUdEU/r5L/k5qEr+QM3t+NtDO5AznMnhXx
 GavArUfSNH/IzWJDzDppr8bcP5qADL8=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-KVXBLutCNvK9V5kBMug2lg-1; Mon, 21 Jul 2025 10:19:02 -0400
X-MC-Unique: KVXBLutCNvK9V5kBMug2lg-1
X-Mimecast-MFC-AGG-ID: KVXBLutCNvK9V5kBMug2lg_1753107541
Received: by mail-pj1-f69.google.com with SMTP id
 98e67ed59e1d1-31e3d563a53so50011a91.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jul 2025 07:19:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753107541; x=1753712341;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=I2e2g+RSdLVrXvuMyT6qHHm4bEHxvzYzZzIUO+TrG+M=;
 b=fmY9YP8dNs7+851kskNAif0pJ/9KX+6eyveAb4/mWBHh7TarOTHyfMBKfUNyhREyuu
 irle41c9DCWfgZ8xPH2XUELbZMTmgRNi5KsRwhhfZQm+OwcnSKOm7sPQIBdto+QvD4Xp
 0isFmbEulfh0edPHfPml2JYTU5y28yhg35NdSUYrDXf5dsTISwoJwC8UrDm7soZ1416r
 SzGiVmr3aQg0mfuKSzYZ4enK+JbloC6RXW+VMvTaqc73ZyJFJKtgWF4VcDzgwBmZ6VD8
 AdCp0QksMBrLuUuc+Nq7bBT9XNxGTFPPK/moxKvcbPv7PJQ8v/MWdXzQQzT68q3F8nFn
 eWDQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWp0ckvBWtZlcs7pQStfhrTTQt7VYBJ4W3Dhh7Xyvr1dBsrJDgrcMmhaySLPX3+4VFiQ1HN1c52240=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxIZrrPGApFYKHWM4eom5r02K/4sBKyi5rECipPK1pywcxbM7ho
 ioXQXyEayKjdfVWW1/OIjzPGSe6RX8r33IkZlTsG5QL1EqWd1AuyMDi2wH6vZ3zgnDCJSvH/cYz
 XIUMna0xpc3karoeifLI6FwtEuGoh91qtD6Jqg8iRR4ARmzFV36x4eFNIs/ai+B7fEGoSmfKGLj
 PQcY0ZDSC56qLOwO3UlraVKz03oIsT6YYvk9S+iavh17E2
X-Gm-Gg: ASbGncs7Z43Ni6mGI1mx5nCArT4QQ9hmkTP/9WFTtU21E8rhZh4QT0vapoPLQMWUzW/
 xaKY4wCATTOkzCfKj4us8EoPSpixLpHvJ1XyjqVypttQWpWG2qoPAusiGprs01VSR3WXg91/v5L
 vS2LRCH++gYTb8ZfIhpj9x6g==
X-Received: by 2002:a17:90b:2252:b0:312:1508:fb4e with SMTP id
 98e67ed59e1d1-31c9f45e1bamr34067982a91.17.1753107541247; 
 Mon, 21 Jul 2025 07:19:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJIdqihCeYBVzkOqoaHkVeRUSem0hiE8oGsu0T7UvW6Id9zyyr788yaoKXL+Z4xHCOtXdyTT7abtsFJKNwYFA=
X-Received: by 2002:a17:90b:2252:b0:312:1508:fb4e with SMTP id
 98e67ed59e1d1-31c9f45e1bamr34067933a91.17.1753107540404; Mon, 21 Jul 2025
 07:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <197d1dc3bff.c01ddb9024897.1898328361232711826@zohomail.com>
 <cd3ca680ac5751368941713c1071e04d69544d47@intel.com>
 <197d710ac39.10e2c241536088.2706332519040181850@zohomail.com>
In-Reply-To: <197d710ac39.10e2c241536088.2706332519040181850@zohomail.com>
From: Pingfan Liu <piliu@redhat.com>
Date: Mon, 21 Jul 2025 22:18:48 +0800
X-Gm-Features: Ac12FXzDdHF_s7WVKonqNsgMwmdC6Q6zqqujKluH5OQTrSCN3xvRecpp-sj16FU
Message-ID: <CAF+s44SvWGxwty3FA6ZpR3GoXEbqXRDoT9H6KBj_jy0yM1jjLw@mail.gmail.com>
Subject: Re: Second kexec_file_load (but not kexec_load) fails on i915 if
 CONFIG_INTEL_IOMMU_DEFAULT_ON=n
To: Askar Safin <safinaskar@zohomail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 regressions <regressions@lists.linux.dev>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, kexec <kexec@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, iommu <iommu@lists.linux.dev>, 
 Ben Hutchings <benh@debian.org>,
 joonaslahtinen <joonas.lahtinen@linux.intel.com>, 
 josesouza <jose.souza@intel.com>, davehansen <dave.hansen@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: lcwsN_x2qIbYru0hoGmhdOc5rb8K9owhwd3IdZbAGSg_1753107541
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

On Sat, Jul 5, 2025 at 4:12=E2=80=AFAM Askar Safin <safinaskar@zohomail.com=
> wrote:
>
>  ---- On Fri, 04 Jul 2025 12:29:01 +0400  Jani Nikula <jani.nikula@linux.=
intel.com> wrote ---
>  > Thanks for the detailed debug info. I'm afraid all I can say at this
>  > point is, please file all of this in a bug report as described in
>  > [1]. Please add the drm.debug related options, and attach the dmesgs a=
nd
>  > configs in the bug instead of pointing at external sites.
>
> Okay, now let me speculate how to fix this bug. :) I think someone with m=
oderate kexec understanding
> and with Intel GPU should do this: reproduce the bug and then slowly modi=
fy kexec_file_load code until it
> becomes kexec_load code. (Or vice versa.) In the middle of this modificat=
ion the bug stops to reproduce,
> and so we will know what exactly causes it.
>
> kexec_file_load and kexec_load should behave the same. If they do not, th=
en we should
> understand, why. We should closely review their code.
>
> Also, in case of kexec_load kernel uncompressing and parsing performed by=
 "kexec" userspace
> tool, and in case of kexec_file_load by kernel. So we should closely revi=
ew this two uncompressing/parsing code fragments.
> I think that this bug is related to kexec, not to i915. And thus it shoul=
d be fixed by kexec people, not by i915 people. (But I may be wrong.)
>

I tend to agree with Baoquan on this scene when kexec rebooted with a
graphic card.
I heard that this was due to the missed initialization on the graphic
card by the firmware in the kexec reboot process. But it is not an
official explanation. If any experts could enlighten me on this, I'd
really appreciate it.

IMHO, you could try blacklisting the i915 module to see if
kexec_file_load works without issues - this would help narrow down the
culprit.

Thanks,

Pingfan

> But okay, I reported it to that bug tracker anyway: https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14598
>
> Maybe there is separate kexec bug tracker?
>
> Also, your bug tracker is cool. One can attach files in the middle of rep=
ort. Why not whole kernel uses it? :)
>
> --
> Askar Safin
> https://types.pl/@safinaskar
>
>

