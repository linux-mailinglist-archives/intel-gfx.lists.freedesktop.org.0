Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601795F31EB
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 16:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4A8B10E3D4;
	Mon,  3 Oct 2022 14:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8434410EB9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 22:38:10 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 u59-20020a17090a51c100b00205d3c44162so7307816pjh.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 15:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date;
 bh=uRYofiYnG47hAF2aDgziR8isJuYRbsZpgovud56j32A=;
 b=JZPVhVcSMWJOlPWPeuO7TIk2QE8xzCYuAuPJMIvNL9e/7DEG7nT1s/j0a++TuIXoJt
 W5tOkUQ3APGpHGPx2aDs0EQFmPuIgBA+4T0avm1Lg0UJhYZ3xUC1RzFzgaGhbslD+zEA
 8NgZgevTkenFB0f0XOWYHbeCZsUerfUuHJ0MRFMwXM5XuUFT0t5SADRdJ0rMU3iZnQpx
 iMve53x366pyZVcyz/wlrlsM3/1JBISjrdscSFwoyHMKAyPnzbLjIdZA8bJqQmwrTVBh
 qX5XlvQpPaLRv1P2ont+Bp7rvzNsL9me5BwcB/JytVGVWSrVmlRW7tys/zv1TCWNsOeo
 isHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
 bh=uRYofiYnG47hAF2aDgziR8isJuYRbsZpgovud56j32A=;
 b=74zptF+SXL0pQ/8phWPvtYygAINIayh+oVBymKfTLcpWkiSbBRgtftZVFKdM5/v9K3
 xxmjj71g5k4EeicjtgjE0CNRaV4X7IZutgEyMGMBl2W8rN6sR/nwoQ8dGn1ecWYT1X0j
 ujbzVswKW5h1BprFd3rZDNK/I/jDWqIPg6a31kWazVFy1y24yCXojjtlwpjad40dxLy2
 RfFuZotg5d6/4n4uo3/cAqY+XpLti9sDV4Xc/1rAbCWVkntKznvMBnfaV9x9AztAMmLa
 mb5EpaMy+DZpeCUb9Hj/0lAIzlxbw42csYYxKa6u+QG3+VUUNeWJPMmjEwQ25HiiBaT/
 evuA==
X-Gm-Message-State: ACrzQf1mPalazJtugsFAt7guuBr7LIbmdo8pkegeQ0/SlhltlTpGk9yD
 15FLkVuiIQqTPS2Mx+R/6VarwQ==
X-Google-Smtp-Source: AMsMyM6yC6NkaBuBd+HCYZGGqRfzh1aqwwfKXWPEPMxkZ/E1X0XuzRLSKCq/ziAdT/GnArgh0pqgvg==
X-Received: by 2002:a17:903:441:b0:179:f1cc:ba89 with SMTP id
 iw1-20020a170903044100b00179f1ccba89mr5683259plb.146.1664491089036; 
 Thu, 29 Sep 2022 15:38:09 -0700 (PDT)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 w2-20020a170902e88200b0017829a3df46sm384797plg.204.2022.09.29.15.38.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Sep 2022 15:38:08 -0700 (PDT)
Date: Thu, 29 Sep 2022 22:38:04 +0000
From: Sean Christopherson <seanjc@google.com>
To: Maxim Levitsky <mlevitsk@redhat.com>
Message-ID: <YzYeTCsNfQWccKJ9@google.com>
References: <20220427200314.276673-1-mlevitsk@redhat.com>
 <20220427200314.276673-5-mlevitsk@redhat.com>
 <YoZyWOh4NPA0uN5J@google.com>
 <5ed0d0e5a88bbee2f95d794dbbeb1ad16789f319.camel@redhat.com>
 <c22a18631c2067871b9ed8a9246ad58fa1ab8947.camel@redhat.com>
 <Yt6/9V0S9of7dueW@google.com>
 <7c4cf32dca42ab84bdb427a9e4862dbf5509f961.camel@redhat.com>
 <YugLc5LLPJkt89z6@google.com>
 <fe76ea902a38a10e2d8078fd9e5a71a0c7724d84.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fe76ea902a38a10e2d8078fd9e5a71a0c7724d84.camel@redhat.com>
X-Mailman-Approved-At: Mon, 03 Oct 2022 14:24:59 +0000
Subject: Re: [Intel-gfx] Nested AVIC design (was:Re: [RFC PATCH v3 04/19]
 KVM: x86: mmu: allow to enable write tracking externally)
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, "H. Peter Anvin" <hpa@zytor.com>,
 Brijesh Singh <brijesh.singh@amd.com>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Tom Lendacky <thomas.lendacky@amd.com>, intel-gfx@lists.freedesktop.org,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, intel-gvt-dev@lists.freedesktop.org,
 Jim Mattson <jmattson@google.com>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 08, 2022, Maxim Levitsky wrote:
> Hi Sean, Paolo, and everyone else who wants to review my nested AVIC work.

Before we dive deep into design details, I think we should first decide whether
or not nested AVIC is worth pursing/supporting.

  - Rome has a ucode/silicon bug with no known workaround and no anticipated fix[*];
    AMD's recommended "workaround" is to disable AVIC.
  - AVIC is not available in Milan, which may or may not be related to the
    aforementioned bug.
  - AVIC is making a comeback on Zen4, but Zen4 comes with x2AVIC.
  - x2APIC is likely going to become ubiquitous, e.g. Intel is effectively
    requiring x2APIC to fudge around xAPIC bugs.
  - It's actually quite realistic to effectively force the guest to use x2APIC,
    at least if it's a Linux guest.  E.g. turn x2APIC on in BIOS, which is often
    (always?) controlled by the host, and Linux will use x2APIC.

In other words, given that AVIC is well on its way to becoming a "legacy" feature,
IMO there needs to be a fairly strong use case to justify taking on this much code
and complexity.  ~1500 lines of code to support a feature that has historically
been buggy _without_ nested support is going to require a non-trivial amount of
effort to review, stabilize, and maintain.

[*] 1235 "Guest With AVIC (Advanced Virtual Interrupt Controller) Enabled May Fail
    to Process IPI (Inter-Processor Interrupt) Until Guest Is Re-Scheduled" in
    https://www.amd.com/system/files/TechDocs/56323-PUB_1.00.pdf
