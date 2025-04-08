Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D0DA8893A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 19:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0FD10E631;
	Mon, 14 Apr 2025 17:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="cvPVukm4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f73.google.com (mail-wm1-f73.google.com
 [209.85.128.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F0E210E23C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Apr 2025 14:04:13 +0000 (UTC)
Received: by mail-wm1-f73.google.com with SMTP id
 5b1f17b1804b1-43cf44b66f7so47872905e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Apr 2025 07:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1744121052; x=1744725852;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
 :reply-to; bh=9XuywzePAIgnrVesJkRqbK4EXd6ZTvUCScbqcLqpJI4=;
 b=cvPVukm4irhaAoldyxTGq6XTKDyLh9rB7zIXCVdOK4Is68iLJ8yk0AhU2d0ibSseiU
 Ge1xFaCyEv4rlvDfuBd7i6kzzIROIN3etc1r+MuKzu+Q6HicMsXzDFDV4L8lZo0vELoi
 gnIO2TF9TPanwnwVNyIBVQoxE321hDAEPvc8LKCeJPDq1WwYVj6qumiLlKQlabmdhkS7
 4MZdo1AFQXTNl3RCvKTWmNpbonZMnblWLJLGumlyQPXedQeWbwDB9jCkPtxIhjTRqdV8
 414oFT1TqP2HFb9cyBgIV7HwruNDjDxNXyAkdpv5ynE+8J+ATAXfLtUQjWev3c7HxGDq
 EJ7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744121052; x=1744725852;
 h=content-transfer-encoding:cc:to:from:subject:message-id:references
 :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=9XuywzePAIgnrVesJkRqbK4EXd6ZTvUCScbqcLqpJI4=;
 b=uPoyuURdCU4LBmreUkMws4dfbequxEXMEzLsn7+7gV5jdtFavtia2bzhaPgsuu8DUD
 1kMSixn86HLcD86AE6LGvKXrxqcziu84Yab1s1LYr5DhfjJNvrWZm8SkaPcSGj78vLVr
 W49ttS+sMOZNCrVzY++HSecSlUIffiH+7MvQ1+OA/hMggWPcG6TnpGtRRDB6UHIMrH5n
 HgItuUbQQd0f3N9Uu9rXjhM9EdyvPu6yMDb3xNAdOT31HKDZhdFLlfswmxAOGPLPPzwS
 dLFx1q+o861ZavvAxCymxloS1i+1YoueB1Oyj7yvmjgnq80qUJM2O97eW7OK+oBKKwS8
 PINw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUf7cvZkn65iVs69HlnpZIs90t1z8SXEzkuGb+zBBC0pz2+Le5nlOQzbv317Po/wBplZeXcttrM+ZU=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxDH8KdlxlEkyNiaOiIH5VWGtTeJLvZOeYv60vIGVK3SLaLDDsy
 0lyG5eMTTQvsVMwfw0yvfFqbFawoqZhq66StUyO9JXPqp9Q69ZPbhWiIP+k1RumjoB8J1LdByHY
 YAMpsRZescA==
X-Google-Smtp-Source: AGHT+IG6jAdiCw3blTh9N+MXOZQBHsfQ70S/42on8m9V9q2s13qGmJAHFfrODzkQ6jC014vOm7p4ce7FR5W3sA==
X-Received: from wmcx8-n2.prod.google.com
 ([2002:a05:600c:c1c8:20b0:43d:9f1:31a9])
 (user=jackmanb job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:4fd6:b0:43b:c5a3:2e1a with SMTP id
 5b1f17b1804b1-43ee0616f6fmr131307195e9.2.1744121051903; 
 Tue, 08 Apr 2025 07:04:11 -0700 (PDT)
Date: Tue, 08 Apr 2025 14:04:09 +0000
In-Reply-To: <CAOzc2pyKFJKxkTs989rMzRaMSwR+EBXDiCB-2xBRTiu=Y8FLvw@mail.gmail.com>
Mime-Version: 1.0
References: <20250131001806.92349-1-vishal.moola@gmail.com>
 <20250130164836.1163f66bede77ec4bcc9d4b9@linux-foundation.org>
 <CAOzc2pyKFJKxkTs989rMzRaMSwR+EBXDiCB-2xBRTiu=Y8FLvw@mail.gmail.com>
X-Mailer: aerc 0.20.1-1-g87e37b93d34f
Message-ID: <D91BB945EKGW.UZSCJRUM034H@google.com>
Subject: Re: [PATCH 0/2] vmalloc: Introduce vmap_file()
From: Brendan Jackman <jackmanb@google.com>
To: Vishal Moola <vishal.moola@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>
Cc: <linux-mm@kvack.org>, <linux-kernel@vger.kernel.org>, <hch@infradead.org>, 
 <urezki@gmail.com>, <intel-gfx@lists.freedesktop.org>, 
 Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 14 Apr 2025 17:01:59 +0000
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

On Mon Feb 3, 2025 at 6:53 PM UTC, Vishal Moola wrote:
> On Thu, Jan 30, 2025 at 4:48=E2=80=AFPM Andrew Morton <akpm@linux-foundat=
ion.org> wrote:
>>
>> On Thu, 30 Jan 2025 16:18:04 -0800 "Vishal Moola (Oracle)" <vishal.moola=
@gmail.com> wrote:
>>
>> > Currently, users have to call vmap() or vmap_pfn() to map pages to
>> > kernel virtual space. vmap() requires the page references, and
>> > vmap_pfn() requires page pfns. If we have a file but no page reference=
s,
>> > we have to do extra work to map them.
>> >
>> > Create a function, vmap_file(), to map a specified range of a given
>> > file to kernel virtual space. Also convert a user that benefits from
>> > vmap_file().
>> >
>>
>> Seems like a pretty specialized thing.  Have you identified any other
>> potential users of vmap_file()?  I couldn't see any.
>>
>> If drm is likely to remain the only user of this, perhaps we should
>> leave the code down in drivers/gpu/drm for now?
>
> This function is generally useful for file-systems that use the pagecache=
.
> I simply chose to highlight the most obvious user that benefits from it (=
and
> so that the function is introduced with a user).
>
> I haven't identified any other specific users of vmap_file() myself. I kn=
ow
> Matthew has some other ideas for it; I've cc-ed him so he can chime in.

Not much to add but just to confirm - yep, this seems like it might be
useful as a part of the solution to the page cache perf issue[1] with
ASI that I spoke about (briefly and chaotically) at the end of the
LSF/MM/BPF session[0] on ASI this year.

[0] https://lwn.net/Articles/1016013/
[1] https://lore.kernel.org/linux-mm/20250129144320.2675822-1-jackmanb@goog=
le.com/

But, for the moment this is all still pretty vague stuff, not at all
clear yet that this idea makes total sense. Hopefully I'll be able to
follow up in a few weeks after I've made some time to stare at/prototype
things.
