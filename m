Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 684F065CB2A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 02:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F0CC10E41F;
	Wed,  4 Jan 2023 01:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E5210E41F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 01:01:18 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id c6so1211922pls.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Jan 2023 17:01:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=B1SMUQWNqPdQW0vO6rH84bqxMDgoVgXICRobpbo8urw=;
 b=DRqws/vK/yhWoIfP64vLyodOJO4aCujC4wtDuEc4ApqYy8FwZmg5t+EYLiXT5evOXC
 jcnpHczN04p7z4HPZvK1/Tm34zMcYewsweOd9ZXvrMrJQncMzmxUO5IbCa+iT/C2Qv1t
 jugot8Wk4KWUoeV849df+IpR59GKuNLabhlwRmnbRqv4B/EueamuxkWBYHlqr42yD45y
 Zl3hXc4nm1ucdN7hMhhbOTAeeQeEY3Qtb7usTkQB3GemLvrlmU+ysAMc22HonWftP6nx
 6sNDRBe9XQhEryl/Rbg4G6tV41jJfOPH6jWsCYOioTC30FSFddiIoAAT0Fj8S8qLJc8U
 qN8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=B1SMUQWNqPdQW0vO6rH84bqxMDgoVgXICRobpbo8urw=;
 b=02pR/+/sL70FlPO+p8Ouwa+ilk1bTd8lZCR/0/H805uI1/ltciP0SB7meL/fDFFurc
 JrSmXrDw5HSyC3iy15GfHJ7r+/WGiXIMRThgzu0+/kQyCZ0LQAwUe6tsz2/3kVNFr5Yu
 NvbWBx1h2kIJS1K1pXMEE35AbypCfHmOAZP0ZxkOsDjHYHoxzwSGrHC/S6pAOjXms9Uv
 1PcQNPPKd69XqCmgUG9YUZGboe/5i1+FF49S2r6cOJDoQjOC7iGBr1ZI3dTxsF2v/srW
 uSotp6gy+0Tm0Lo0o+s658R8XeDT65R+SONpSJFHyhwYOEOy2SYi0OAvbOHEmrS88V8R
 HQqA==
X-Gm-Message-State: AFqh2kpIZ9G5+6UTrI8FxozlbYZH/PNWcPgpUoDt0dAWLWxc0l3JWZq1
 xYyJqPGa2MCdfjIJG5CrqH8dRg==
X-Google-Smtp-Source: AMrXdXsm/+/BaD9fLXEmdyPUwmXboK5FhSwSBAmF4xBlElysJQkpfj+2+SO3cgOhhSP9sHTKG4Q2yw==
X-Received: by 2002:a17:902:ce90:b0:192:8a1e:9bc7 with SMTP id
 f16-20020a170902ce9000b001928a1e9bc7mr2235855plg.0.1672794077489; 
 Tue, 03 Jan 2023 17:01:17 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 z11-20020a170902d54b00b0018941395c40sm22630397plf.285.2023.01.03.17.01.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Jan 2023 17:01:17 -0800 (PST)
Date: Wed, 4 Jan 2023 01:01:13 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y7TP2R01VAbmmfcT@google.com>
References: <20221223005739.1295925-1-seanjc@google.com>
 <Y6VvVrYURd/an3Zp@yzhao56-desk.sh.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6VvVrYURd/an3Zp@yzhao56-desk.sh.intel.com>
Subject: Re: [Intel-gfx] [PATCH 00/27] drm/i915/gvt: KVM: KVMGT fixes and
 page-track cleanups
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
Cc: kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 23, 2022, Yan Zhao wrote:
> On Fri, Dec 23, 2022 at 12:57:12AM +0000, Sean Christopherson wrote:
> > Fix a variety of found-by-inspection bugs in KVMGT, and overhaul KVM's
> > page-track APIs to provide a leaner and cleaner interface.  The motivation
> > for this series is to (significantly) reduce the number of KVM APIs that
> > KVMGT uses, with a long-term goal of making all kvm_host.h headers
> > KVM-internal.  That said, I think the cleanup itself is worthwhile,
> > e.g. KVMGT really shouldn't be touching kvm->mmu_lock.
> > 
> > Note!  The KVMGT changes are compile tested only as I don't have the
> > necessary hardware (AFAIK).  Testing, and lots of it, on the KVMGT side
> > of things is needed and any help on that front would be much appreciated.
> hi Sean,
> Thanks for the patch!
> Could you also provide the commit id that this series is based on?

The commit ID is provided in the cover letter:

  base-commit: 9d75a3251adfbcf444681474511b58042a364863

Though you might have a hard time finding that commit as it's from an old
version of kvm/queue that's probably since been force pushed.

> I applied them on top of latest master branch (6.1.0+,
> 8395ae05cb5a2e31d36106e8c85efa11cda849be) in repo
> https://github.com/torvalds/linux.git, yet met some conflicts and I
> fixed them manually. (patch 11 and patch 25).
> 
> A rough test shows that below mutex_init is missing.
> But even with this fix, I still met guest hang during guest boots up.
> Will look into it and have a detailed review next week.

Thanks again for the reviews and testing!  I'll get a v2 out in the next week or
so (catching up from holidays) and will be more explicit in documenting the base
version.
