Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0170B2C8DB3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 20:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C3989804;
	Mon, 30 Nov 2020 19:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0101E89804
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 19:09:44 +0000 (UTC)
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com
 [209.85.166.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88B482076E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 19:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606763384;
 bh=n/9Kbytlf6Unp0K3HpFeEsEoB7fVhDNCzKVcttZjn1M=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=Buk2I68PF1y6vSkiBFbwQHDP6F4+hZfr621Dmo9oEkzJW29Ef+sYl+DdmWXWB/UrD
 ag4Blv7I8J+p8jIoGBaHP1H5AK+M1io42tbQacqsceqYoeEKxhdjuKXNNfqH+leAIT
 V81Qc+HoS/Y1KYP61dH5+1iVReGi7bF7pOeijX80=
Received: by mail-il1-f178.google.com with SMTP id k8so12382325ilr.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 11:09:44 -0800 (PST)
X-Gm-Message-State: AOAM532bCi6oT4ovpeZVOb3KBxsUnMnAJx3X4fBh0kKGUXlSUUG80VMJ
 1dXxxWitxQ18Xup2dTB8/Q+Cve19zIMVXz23+jo=
X-Google-Smtp-Source: ABdhPJzKVGS1UyAPmwaj94OxR5VOUHejZ+z7ic5+1lNvFDsO0ou4QQefST088D6UBrKLYrRvwwmr5gYl3HCotSArW/g=
X-Received: by 2002:a92:a154:: with SMTP id v81mr20838704ili.85.1606763383900; 
 Mon, 30 Nov 2020 11:09:43 -0800 (PST)
MIME-Version: 1.0
References: <20201125014214.3772152-1-John.C.Harrison@Intel.com>
 <CA+5PVA5n3C3fzTrLWLAmjqdjnVzxN2ae+fZDRS5Qbqj3UG+iKw@mail.gmail.com>
 <c0aa4cb2-1374-b90f-e7cc-88bfb17ce04b@intel.com>
In-Reply-To: <c0aa4cb2-1374-b90f-e7cc-88bfb17ce04b@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Mon, 30 Nov 2020 14:09:32 -0500
X-Gmail-Original-Message-ID: <CA+5PVA4zc3wRGv0ZhUSQLpiQs2kbDZN0jbux++JM-i+EFRTeDA@mail.gmail.com>
Message-ID: <CA+5PVA4zc3wRGv0ZhUSQLpiQs2kbDZN0jbux++JM-i+EFRTeDA@mail.gmail.com>
To: John Harrison <john.c.harrison@intel.com>
Subject: Re: [Intel-gfx] linux firmware PR for i915 GuC v49.0.1
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kyle McMartin <kyle@kernel.org>, Ben Hutchings <ben@decadent.org.uk>,
 Linux Firmware <linux-firmware@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 30, 2020 at 1:49 PM John Harrison <john.c.harrison@intel.com> wrote:
>
> On 11/30/2020 06:26, Josh Boyer wrote:
> > On Tue, Nov 24, 2020 at 8:42 PM <John.C.Harrison@intel.com> wrote:
> >> Hi Josh, Kyle, Ben,
> >>
> >> Kindly add the below i915 changes to linux-firmware.git:
> >>
> >>
> >> The following changes since commit b362fd4cb8963ad75517dbcf424974f65a29a60e:
> >>
> >>    Mellanox: Add new mlxsw_spectrum firmware xx.2008.2018 (2020-11-24 09:55:03 -0500)
> >>
> >> are available in the Git repository at:
> >>
> >>    git://anongit.freedesktop.org/drm/drm-firmware FDO/guc_v49
> > This doesn't exist.  Git complains with:
> >
> > fatal: couldn't find remote ref FDO/guc_v49
> >
> > Did you just mean guc_v49?
> >
> > josh
> I guess. The FDO part is the name of the remote repo in my local .git.
> When I tried to create the pull request without that part it gave me an
> error.
>
> Do you need me to resend the email with the 'FDO/' part dropped?

No.  I pulled that tag and pushed it out.  Take a look at the mainline
repo and make sure it included the 2 commits you wanted.  Should be
good to go.

josh

> >> for you to fetch changes up to c487f7dadcd21116613441ed355b764003b3f57b:
> >>
> >>    i915: Add GuC firmware v49.0.1 for all platforms (2020-11-24 17:04:17 -0800)
> >>
> >> ----------------------------------------------------------------
> >> John Harrison (2):
> >>        i915: Remove duplicate KBL DMC entry
> >>        i915: Add GuC firmware v49.0.1 for all platforms
> >>
> >>   WHENCE                  |  25 ++++++++++++++++++++++++-
> >>   i915/bxt_guc_49.0.1.bin | Bin 0 -> 196224 bytes
> >>   i915/cml_guc_49.0.1.bin | Bin 0 -> 197184 bytes
> >>   i915/ehl_guc_49.0.1.bin | Bin 0 -> 324160 bytes
> >>   i915/glk_guc_49.0.1.bin | Bin 0 -> 196672 bytes
> >>   i915/icl_guc_49.0.1.bin | Bin 0 -> 324160 bytes
> >>   i915/kbl_guc_49.0.1.bin | Bin 0 -> 197184 bytes
> >>   i915/skl_guc_49.0.1.bin | Bin 0 -> 196288 bytes
> >>   i915/tgl_guc_49.0.1.bin | Bin 0 -> 321792 bytes
> >>   9 files changed, 24 insertions(+), 1 deletion(-)
> >>   create mode 100644 i915/bxt_guc_49.0.1.bin
> >>   create mode 100644 i915/cml_guc_49.0.1.bin
> >>   create mode 100644 i915/ehl_guc_49.0.1.bin
> >>   create mode 100644 i915/glk_guc_49.0.1.bin
> >>   create mode 100644 i915/icl_guc_49.0.1.bin
> >>   create mode 100644 i915/kbl_guc_49.0.1.bin
> >>   create mode 100644 i915/skl_guc_49.0.1.bin
> >>   create mode 100644 i915/tgl_guc_49.0.1.bin
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
