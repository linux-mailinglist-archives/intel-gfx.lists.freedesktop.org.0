Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3614BB80D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 12:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F06210EC4B;
	Fri, 18 Feb 2022 11:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8BCD10ED10
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 15:25:24 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id p5so13664183ybd.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 07:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MQP46pb+DPsuzuoL3BGGcclWodDFs0G/3Es7HjdxUCo=;
 b=cMfVnVTpouxlUm+jaYnytrgpG4TUi9DLUb+yI8qFyskWkAnXv+M6au1/maKPGNtmO8
 GcaWRklihf6L8yh393NfKIPLun4OQl9mYY1jRZzl8G0dxaxR37h911mKIPqAbIPKz/v+
 6NHpGj21rf8gWajcLnxmDL3+gi1yzfX/0r5GsyQNm0G3ZDxFDCyEhP0ciU9iVcvUP+7O
 O/wtUSIJGcfT+Ts4VAKp3Aryl+D1ZEsXMiVhErXbkzytbGDcWRcL5hG4Z9uexhoyPRc9
 FH+/+Hlyt8N+opqaLI0HBwUBgEOZ3cX4lZaeTqsxqLys+lkPUrmtmR1F+dIq1tL4rZGb
 Yk0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MQP46pb+DPsuzuoL3BGGcclWodDFs0G/3Es7HjdxUCo=;
 b=U72DGkmswCqAN/6jeWvSuzFaB9eBr4BrxV3jQRKJ4kNZpMm3YtZo+eCf27C3HmcLCx
 yV2AosIhzvHgFO+ja1qN4wtqK3+ajHR+ZvOnDVPIoMfLHRKHVmKqXGG1LRLn7hGeWYqS
 D0bW3BWGStrdDpi6rm2PWacR7MHQRdR+FApyFUbs89Y0mm6O4cNlYfTC4RxBiXtBZiFh
 TI+yB/maJE4TCwkMzTrRLo7aezeoN1U0Z/PseybG6I1hdVR13rqB38McXO7reJ+Q7HVt
 X5IYVEXqCXQ+mZT09zPsslDT9qb/Op7rcP2uGPHWngJ20A1AmTEH8RuUI1SaJw3p9wuA
 vwjg==
X-Gm-Message-State: AOAM530F8jkCTuHhoW6YI4BeYD3Pz7l7iaJMsrUWUYCo5447wIOOodp5
 +L4cs0tj+vzQAQEGWaMbqJd3HAyFkx9oMlyvmw/1sA==
X-Google-Smtp-Source: ABdhPJyRTktloudhS4FEJQohjippofIbUD6G2axzL1w3brFImkJhKhl9UwTpCXgO94Cef378CE+W+AWSzkPuQK6S+cM=
X-Received: by 2002:a5b:7c6:0:b0:60b:a0ce:19b with SMTP id
 t6-20020a5b07c6000000b0060ba0ce019bmr2751275ybq.407.1645111523530; 
 Thu, 17 Feb 2022 07:25:23 -0800 (PST)
MIME-Version: 1.0
References: <20220217140441.1218045-1-andrzej.hajda@intel.com>
 <20220217140441.1218045-3-andrzej.hajda@intel.com>
 <CANn89iKgzztLA3y6V+vw3RiyoScC3K=1Z1_gajj8H56wGWDw6A@mail.gmail.com>
In-Reply-To: <CANn89iKgzztLA3y6V+vw3RiyoScC3K=1Z1_gajj8H56wGWDw6A@mail.gmail.com>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 17 Feb 2022 07:25:12 -0800
Message-ID: <CANn89iKsP=fO9va0pP9VrruXMKGnRhf9geGawDciTMdz3fOKhg@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 18 Feb 2022 11:29:20 +0000
Subject: Re: [Intel-gfx] [PATCH 2/9] lib/ref_tracker: compact stacktraces
 before printing
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, netdev <netdev@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 17, 2022 at 7:23 AM Eric Dumazet <edumazet@google.com> wrote:


> Then, iterating the list and update the array (that you can keep
> sorted by ->stack_handle)

The 'sorted' part might be unnecessary, if all callers keep
@display_limits small enough.
