Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7A22D0771
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Dec 2020 22:46:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615F489D4B;
	Sun,  6 Dec 2020 21:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D74DC89CBC
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Dec 2020 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607291192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Pt7TdFB7ulKa/lV+VvFZnu9g+M0yRQxxm6d6lfJIcJQ=;
 b=NHhBlljW6qf0GuPRBx8ziK8DvpXrFswBulkZsQki9e5xbkSQL9AGyMG1h8EofKDAW6p0ES
 GTkjJas6sB+2ADYoNMSxQRHcQRBcg9+VGGhGShCuMTWAAo+b5pHH8IzJ257OprT1wDzdik
 oM5+btKTyY2wyiEVmSjTZC5bmhCom1s=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-iE4lkPwHMG6kuX8f986VNg-1; Sun, 06 Dec 2020 16:46:29 -0500
X-MC-Unique: iE4lkPwHMG6kuX8f986VNg-1
Received: by mail-qk1-f197.google.com with SMTP id s29so10742355qkm.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 06 Dec 2020 13:46:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=Pt7TdFB7ulKa/lV+VvFZnu9g+M0yRQxxm6d6lfJIcJQ=;
 b=DvuTSzgi7lPoVgC4ut1p3k3Kb4vI2kyqAkPDqMDcoBlugAkwn8HIjsfGhSKVUmLTfR
 JEBMEtnM2Psrjnv0vyNrKuaOzd0fXDSrPXTmqiRj7nyhi4zUgZpICN79uvsLoyzdKOju
 kR8/JGHVtdBePI9nR0BgR59gG4IwoA/64givAAiceOPCAXyMHWPKNTTZlqobfqjOSNf1
 5XGnGEr3Enodsfty+Znl/FtD24Epdr4jz1npASWohnI9C0VZHTnI/xvy7vHs3E2XjMi7
 vl97NuRMowCMGoFt0VcLLiaZ7q7Dn5ihU3yXIuJmg25kWJbwiwvDG03Md7PRoP0kHp3V
 NHqQ==
X-Gm-Message-State: AOAM531i2+28Xufc5StvOZbhwatEwTKqoGb61JttpRzIwwNtFrmVxim0
 3IzJSltXPG7FK/25RGgQNeETYoASS2D9oRw7H5x447j0IjSumImyVyn6KZtf2EiTICiLcPAZ35A
 MJRePIuBLUK5ac6Jn6Tgck3S3elJA
X-Received: by 2002:a37:7143:: with SMTP id m64mr21643217qkc.280.1607291188997; 
 Sun, 06 Dec 2020 13:46:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwdJmpyy0faO+c7dz32lK3lca+T2SB1F3DXtNcksxPbw00LbiUdsAxUQYUXlLzAVtknWfl5ZQ==
X-Received: by 2002:a37:7143:: with SMTP id m64mr21643187qkc.280.1607291188745; 
 Sun, 06 Dec 2020 13:46:28 -0800 (PST)
Received: from localhost (ip98-179-76-75.ph.ph.cox.net. [98.179.76.75])
 by smtp.gmail.com with ESMTPSA id a28sm46494qtm.80.2020.12.06.13.46.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Dec 2020 13:46:28 -0800 (PST)
References: <20201205014340.148235-1-jsnitsel@redhat.com>
 <20201205014340.148235-2-jsnitsel@redhat.com>
 <87y2ia7rbv.fsf@nanos.tec.linutronix.de>
User-agent: mu4e 1.4.10; emacs 27.1
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
In-reply-to: <87y2ia7rbv.fsf@nanos.tec.linutronix.de>
Date: Sun, 06 Dec 2020 14:46:26 -0700
Message-ID: <87lfeahakt.fsf@redhat.com>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jsnitsel@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3 1/4] irq: export kstat_irqs
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Jarkko Sakkinen <jarkko@kernel.org>,
 Matthew Garrett <mjg59@google.com>, linux-integrity@vger.kernel.org,
 Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Thomas Gleixner @ 2020-12-06 10:54 MST:

> Jerry,
>
> On Fri, Dec 04 2020 at 18:43, Jerry Snitselaar wrote:
>
> The proper prefix is 'genirq:' git log kernel/irq/irqdesc.c would have
> told you. 
>
>> To try and detect potential interrupt storms that
>> have been occurring with tpm_tis devices it was suggested
>> to use kstat_irqs() to get the number of interrupts.
>> Since tpm_tis can be built as a module it needs kstat_irqs
>> exported.
>
> I'm not really enthused about exporting this without making it at least
> safe. Using it from an interrupt handler is obviously safe vs. concurrent
> removal, but the next driver writer who thinks this is cool is going to
> get it wrong for sure.
>
> Though I still have to figure out what the advantage of invoking a
> function which needs to do a radix tree lookup over a device local
> counter is just to keep track of this.
>
> I'll reply on the TPM part of this as well.
>
> Thanks,
>
>         tglx

I can rework it to use a device local counter.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
