Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCA36BB98E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 17:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5D6B10EB5D;
	Wed, 15 Mar 2023 16:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 841FD10EB5D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 16:21:36 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 s14-20020a62e70e000000b00624029cf8f8so5394540pfh.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 09:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1678897296;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=JKTk6fHXe0DcBHYZ7abQpFccg4odhIWL73B59FNN1Xk=;
 b=JIJTtqfS3TMGnsbFa8g96atWXLD9Hi639HJF8P22QUC+Vb51Lk9yNCn5QWlUY59BCc
 eptR4lQ3acknGb4WF8ZXNG89vGlBbvoMQqwd4R1MrcO5psAhmtkSb7k4gnVzvgudFdTw
 avYKauJrNh6tEZckc8zEeWTVtIy4somJPyM0y/bW71369Y2Dua/19SsouijpZn+b4kCl
 a6qBe1NKaQljePkV/vaMJuAMUt72wGV0sPX9AavXH6ip5x9HhVeK72lING95SHW3UOvC
 2C4gFKhFmy95spZV+N9HSrT1LGnLu6EO5NNtqJ9hYJYUO3Wu5+0pRtSlgJOXOldW5Jb6
 dK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678897296;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JKTk6fHXe0DcBHYZ7abQpFccg4odhIWL73B59FNN1Xk=;
 b=M9WAe+EMyVpdMvFmtJP/YvWRElRUDWoHtCkkvRqciYRFCQVLEeGV8ZInXuUsGysote
 zidhqOnJXm2I9nd8GKqTlZDwdt7H9dpsvSh8wG/zeo3Uti3kc3syj3ue4hhEpI0P99AJ
 f/YkmY3rUGoIrWyiFr0YJv8wne5zVHMB2AE57JHVC/w/I6mej6KT/xgzkrJknbV2M8TF
 Ok4LXcalRYPkLyHdGxIpnw2uOzbnYMAXLjfBDV23lpB2B58TzMHDA/KThoOI3Im9SA3O
 CdMlB8Hrb5MveTC/cNIO2kLybL9+SxCitdnS5Pei+89N6HnIaZRNnZKe+71z83GB8S+5
 vlhQ==
X-Gm-Message-State: AO0yUKV2MkOTtYDsIQiudLzfiflZNVvS1m3BBZmTWS//lgUQHWtMbsbR
 e+AXlHoQvqzmEVQPBZ7covdfEgpGsmY=
X-Google-Smtp-Source: AK7set8gPm4g/NvRUZwmci48nYogYWiDAtlDOVIipuNXOmnGWoPg5uKaBoV4za1AXTOtQ2HQrJ0TchlLCME=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a17:903:2344:b0:1a0:561c:7276 with SMTP id
 c4-20020a170903234400b001a0561c7276mr84640plh.1.1678897295968; Wed, 15 Mar
 2023 09:21:35 -0700 (PDT)
Date: Wed, 15 Mar 2023 09:21:34 -0700
In-Reply-To: <ZBGRJaV3tDTVyE/q@yzhao56-desk.sh.intel.com>
Mime-Version: 1.0
References: <20230311002258.852397-1-seanjc@google.com>
 <20230311002258.852397-21-seanjc@google.com>
 <ZBGRJaV3tDTVyE/q@yzhao56-desk.sh.intel.com>
Message-ID: <ZBHwjm2heYeE40xl@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v2 20/27] KVM: x86/mmu: Use page-track
 notifiers iff there are external users
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

On Wed, Mar 15, 2023, Yan Zhao wrote:
> Nit: there is a typo in the commit header: "iff" -> "if"
> 
> > -void kvm_page_track_write(struct kvm_vcpu *vcpu, gpa_t gpa, const u8 *new,
> > -			  int bytes)
> > +void __kvm_page_track_write(struct kvm *kvm, gpa_t gpa, const u8 *new, int bytes)
> Line length is 81 characters. A little longer than 80 :)
> 
> > +static inline bool kvm_page_track_has_external_user(struct kvm *kvm) { return false; }
> This line is also too long.

The 80 character limit is a "soft" limit these days, e.g. checkpatch only complains
if a line is 100+.  In KVM x86, the preferred style is to treat the 80 char limit
as "firm", for lack of a better word.  E.g. let a line run over if it's just a
char or two and there's no other wrapping in the declaration, but don't create long
lines just because checkpatch no longer yells.

There's obviously a fair bit of subjectivity, but the guideline has worked well
so far (hopefully I didn't just jinx us).
