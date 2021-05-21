Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6463C38BD22
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 06:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56026F5AA;
	Fri, 21 May 2021 04:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946696F5AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 04:02:37 +0000 (UTC)
Received: from mail-oi1-f199.google.com ([209.85.167.199])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <chris.chiu@canonical.com>) id 1ljwMt-0002lY-Vg
 for intel-gfx@lists.freedesktop.org; Fri, 21 May 2021 04:02:36 +0000
Received: by mail-oi1-f199.google.com with SMTP id
 12-20020aca120c0000b02901e9c963da89so7945460ois.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 May 2021 21:02:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BkxUPctLlMYTanG/NbpSu5XniOih0RSQFTbMnTWQYJM=;
 b=iNi7+GsbSKX471loXncqTpWQojuzdOkTIc9k/K34wEPT7ElGh6Dii5ApIqUMhKyA6J
 /hN6m4Jap2aZtNetNlFdzN44BJqMrdGT/Vc3XAwRPZ1MTo0R3uPC6rOkjP8Qd+Ih9f9V
 ZHTpjb8b2oHd+iWB0m0AeIcQhFCRe7zY0VL2qZG7bCvpflfmUPGvfYHkjrAnqZgoV69Z
 AsjPda9WR8SJc0Unf4yemXSJ+Ty67GDulN4E6Us70/+82wRYqMbKRwb8FGu5ioZGXVGQ
 TmyiBL+20KVSWQ8bvl5IaQ2lAOYFgfGiisiDSiyBPGEbWCQHVt34TLMDQ8nXudLZy2A3
 2GHA==
X-Gm-Message-State: AOAM530Us7x9tlY8jOK3CemngF5+QO/l2iVqZW5Ead3ag6LuEel2GFxt
 Zpi9Uyf6JkTu7yXW8/fl6vKVdzxUoKDLUGVnYgXwAq/x8H2PNk0RtHt21SRqHA7v8LQVykrcwrY
 BZJGyg3fa4+3tqWpbTRYnRGqmcldO68N2pALMlOVfvDMrXf0dDrfp/eUDcNDO2g==
X-Received: by 2002:a4a:c1:: with SMTP id 184mr6397294ooh.25.1621569754022;
 Thu, 20 May 2021 21:02:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzN8oKjol1achG45QUkmKxb4AL9fVw2ETq9jSXQdBZuFnWj3B3G19NBSti3JEmAoGlQnBW6NHSRu31xIqEnv1U=
X-Received: by 2002:a4a:c1:: with SMTP id 184mr6397260ooh.25.1621569753749;
 Thu, 20 May 2021 21:02:33 -0700 (PDT)
MIME-Version: 1.0
References: <CABTNMG0Y5iAD4E8XFkOwrNTBHNDcNKRt=+BLPHs4tw5O2eVBDA@mail.gmail.com>
 <CAJZ5v0hqU4xc8oCWXPBYhdGdG__=15+M67QWVSfFeUR3DN4Evw@mail.gmail.com>
In-Reply-To: <CAJZ5v0hqU4xc8oCWXPBYhdGdG__=15+M67QWVSfFeUR3DN4Evw@mail.gmail.com>
From: Chris Chiu <chris.chiu@canonical.com>
Date: Fri, 21 May 2021 12:02:23 +0800
Message-ID: <CABTNMG12A5qJ5ygtFTa7Sk-5W=fmMxt0L90=04H5qRDD4vWGRQ@mail.gmail.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [Intel-gfx] NVIDIA GPU fallen off the bus after exiting s2idle
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
Cc: Len Brown <len.brown@intel.com>, Karol Herbst <kherbst@redhat.com>,
 Linux PM <linux-pm@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>,
 Mika Westerberg <mika.westerberg@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Helgaas <bhelgaas@google.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 6, 2021 at 5:46 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Tue, May 4, 2021 at 10:08 AM Chris Chiu <chris.chiu@canonical.com> wrote:
> >
> > Hi,
> >     We have some Intel laptops (11th generation CPU) with NVIDIA GPU
> > suffering the same GPU falling off the bus problem while exiting
> > s2idle with external display connected. These laptops connect the
> > external display via the HDMI/DisplayPort on a USB Type-C interfaced
> > dock. If we enter and exit s2idle with the dock connected, the NVIDIA
> > GPU (confirmed on 10de:24b6 and 10de:25b8) and the PCIe port can come
> > back to D0 w/o problem. If we enter the s2idle, disconnect the dock,
> > then exit the s2idle, both external display and the panel will remain
> > with no output. The dmesg as follows shows the "nvidia 0000:01:00.0:
> > can't change power state from D3cold to D0 (config space
> > inaccessible)" due to the following ACPI error
> > [ 154.446781]
> > [ 154.446783]
> > [ 154.446783] Initialized Local Variables for Method [IPCS]:
> > [ 154.446784] Local0: 000000009863e365 <Obj> Integer 00000000000009C5
> > [ 154.446790]
> > [ 154.446791] Initialized Arguments for Method [IPCS]: (7 arguments
> > defined for method invocation)
> > [ 154.446792] Arg0: 0000000025568fbd <Obj> Integer 00000000000000AC
> > [ 154.446795] Arg1: 000000009ef30e76 <Obj> Integer 0000000000000000
> > [ 154.446798] Arg2: 00000000fdf820f0 <Obj> Integer 0000000000000010
> > [ 154.446801] Arg3: 000000009fc2a088 <Obj> Integer 0000000000000001
> > [ 154.446804] Arg4: 000000003a3418f7 <Obj> Integer 0000000000000001
> > [ 154.446807] Arg5: 0000000020c4b87c <Obj> Integer 0000000000000000
> > [ 154.446810] Arg6: 000000008b965a8a <Obj> Integer 0000000000000000
> > [ 154.446813]
> > [ 154.446815] ACPI Error: Aborting method \IPCS due to previous error
> > (AE_AML_LOOP_TIMEOUT) (20200925/psparse-529)
> > [ 154.446824] ACPI Error: Aborting method \MCUI due to previous error
> > (AE_AML_LOOP_TIMEOUT) (20200925/psparse-529)
> > [ 154.446829] ACPI Error: Aborting method \SPCX due to previous error
> > (AE_AML_LOOP_TIMEOUT) (20200925/psparse-529)
> > [ 154.446835] ACPI Error: Aborting method \_SB.PC00.PGSC due to
> > previous error (AE_AML_LOOP_TIMEOUT) (20200925/psparse-529)
> > [ 154.446841] ACPI Error: Aborting method \_SB.PC00.PGON due to
> > previous error (AE_AML_LOOP_TIMEOUT) (20200925/psparse-529)
> > [ 154.446846] ACPI Error: Aborting method \_SB.PC00.PEG1.NPON due to
> > previous error (AE_AML_LOOP_TIMEOUT) (20200925/psparse-529)
> > [ 154.446852] ACPI Error: Aborting method \_SB.PC00.PEG1.PG01._ON due
> > to previous error (AE_AML_LOOP_TIMEOUT) (20200925/psparse-529)
> > [ 154.446860] acpi device:02: Failed to change power state to D0
> > [ 154.690760] video LNXVIDEO:00: Cannot transition to power state D0
> > for parent in (unknown)
>
> If I were to guess, I would say that AML tries to access memory that
> is not accessible while suspended, probably PCI config space.
>
> > The IPCS is the last function called from \_SB.PC00.PEG1.PG01._ON
> > which we expect it to prepare everything before bringing back the
> > NVIDIA GPU but it's stuck in the infinite loop as described below.
> > Please refer to
> > https://gist.github.com/mschiu77/fa4f5a97297749d0d66fe60c1d421c44 for
> > the full DSDT.dsl.
>
> The DSDT alone may not be sufficient.
>
> Can you please create a bug entry at bugzilla.kernel.org for this
> issue and attach the full output of acpidump from one of the affected
> machines to it?  And please let me know the number of the bug.
>
> Also please attach the output of dmesg including a suspend-resume
> cycle including dock disconnection while suspended and the ACPI
> messages quoted below.
>
> >            While (One)
> >             {
> >                 If ((!IBSY || (IERR == One)))
> >                 {
> >                     Break
> >                 }
> >
> >                 If ((Local0 > TMOV))
> >                 {
> >                     RPKG [Zero] = 0x03
> >                     Return (RPKG) /* \IPCS.RPKG */
> >                 }
> >
> >                 Sleep (One)
> >                 Local0++
> >             }
> >
> > And the upstream PCIe port of NVIDIA seems to become inaccessible due
> > to the messages as follows.
> > [ 292.746508] pcieport 0000:00:01.0: waiting 100 ms for downstream
> > link, after activation
> > [ 292.882296] pci 0000:01:00.0: waiting additional 100 ms to become accessible
> > [ 316.876997] pci 0000:01:00.0: can't change power state from D3cold
> > to D0 (config space inaccessible)
> >
> > Since the IPCS is the Intel Reference Code and we don't really know
> > why the never-end loop happens just because we unplug the dock while
> > the system still stays in s2idle. Can anyone from Intel suggest what
> > happens here?
>
> This list is not the right channel for inquiries related to Intel
> support, we can only help you as Linux kernel developers in this
> venue.
>
> > And one thing also worth mentioning, if we unplug the display cable
> > from the dock before entering the s2idle, NVIDIA GPU can come back w/o
> > problem even if we disconnect the dock before exiting s2idle. Here's
> > the lspci information
> > https://gist.github.com/mschiu77/0bfc439d15d52d20de0129b1b2a86dc4 and
> > the dmesg log with ACPI trace_state enabled and dynamic debug on for
> > drivers/pci/pci.c, drivers/acpi/device_pm.c for the whole s2idle
> > enter/exit with IPCS timeout.
> >
> > Any suggestion would be appreciated. Thanks.
>
> First, please use proper Intel support channels for BIOS-related inquiries.
>
> Second, please open a bug as suggested above and let's use it for
> further communication regarding this issue as far as Linux is
> concerned.
>
> Thanks!

Thanks for the suggestion. I opened
https://bugzilla.kernel.org/show_bug.cgi?id=212951 and have a new
finding in https://bugzilla.kernel.org/show_bug.cgi?id=212951#c13. It
seems that maybe we could do something in the i915 driver during
resume to handle the hpd (because we unplug the dock/dongle when
suspended) at the very beginning. Since it involves HPD, PMC and the
BIOS, I don't know which way I should go to fix this since Windows
won't hit this problem.

Please let me know if there's any information missing in the
bugzilla.kernel ticket. Any suggestions would be appreciated. Thanks

Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
