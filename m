Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 221EB76C0C3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 01:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D55510E01F;
	Tue,  1 Aug 2023 23:20:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com
 [IPv6:2607:f8b0:4864:20::1149])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6122D10E01F
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 23:20:50 +0000 (UTC)
Received: by mail-yw1-x1149.google.com with SMTP id
 00721157ae682-585fb08172bso43894337b3.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Aug 2023 16:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1690932049; x=1691536849;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=nv6qBYunsdbsTaY6uXRci7C8TLoIW4Rt5jSeXwXm3B0=;
 b=0WAX2Ee9BLU4qIuUs/nXNN+WnktvhdNXDhANhGIA0E7TCaOO8AUZTaC0pdJuS6oelr
 xxXSUJtlB6LvUqF2xLZSDNFWHzOX2RNU8XlZu7kZytHv4EXt1EjIl4ornACC7j0LhAr9
 FQAMVB2WHFjOxTwfCEFM7vn/aq5msRRiE/kCbbHgrMEJ/SAZ7XcdjQv1EFm+/TbplCGo
 RH5HKanfN8U/6B/KV/F5IAKfyvu0H0PzYOEKg790w7RojxoLSeScG4vT1dgCvPtS1kRj
 jtvvJKb345Z2KWxRDthMpHwI55xP4L8bt97wJ/1hQWP9moVOtMRFTbwjHV1r/sQJ0O2Q
 NIyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1690932049; x=1691536849;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nv6qBYunsdbsTaY6uXRci7C8TLoIW4Rt5jSeXwXm3B0=;
 b=kdApoCZomPC5sJMtJlxZ+8oQGY5uOomCDN3ABWtCuod92OghCXw3h0c6d8BICFm5tf
 JioFm3fI6yfGew5FdtYYVz1vzRWPzeZKVMuXspiR1+rdKzKAXkH15GXxUNfwGNbBFmXb
 othi80bRQ6a5AqQeiuZiCNxlVzMk/ZWstLqBRncl16ogbq7TFRkXpCh+qbilZuvne28W
 SwRp3YGsD57f+fISqisxnhQQLT0YBlbQgsXvW7ZoWLCcC9VkeACnTaQCTfNGTaDA58Eh
 yusdUWetHjtA3QKyl2U6T8qiTwSusfN1jNaKrHhAk/OFkOxgVw8XysugjKn9WF8bpH8Y
 UWJA==
X-Gm-Message-State: ABy/qLa5ddj2vHZcILj78q6EYgCz0iN87CPhn6v+fHZQPGZr7MNfry9k
 JxpvMphRt19HouV2JaH67iSEvYzk3Bw=
X-Google-Smtp-Source: APBJJlEiNeh2xNttaLa7aT9PniWfJxmo8CFVd0xxEs+x1xQ7MP5B8c56Ko5NniauI1a16uttVXZVajZwXcQ=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a81:ac07:0:b0:583:5471:1717 with SMTP id
 k7-20020a81ac07000000b0058354711717mr131891ywh.10.1690932049480; Tue, 01 Aug
 2023 16:20:49 -0700 (PDT)
Date: Tue, 1 Aug 2023 16:20:46 -0700
In-Reply-To: <ZMhjYo8bOsmsWcCL@yzhao56-desk.sh.intel.com>
Mime-Version: 1.0
References: <20230729013535.1070024-1-seanjc@google.com>
 <20230729013535.1070024-7-seanjc@google.com>
 <ZMhjYo8bOsmsWcCL@yzhao56-desk.sh.intel.com>
Message-ID: <ZMmTTlHXnm3ywvvj@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH v4 06/29] drm/i915/gvt: Explicitly check
 that vGPU is attached before shadowing
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
 linux-kernel@vger.kernel.org, Yongwei Ma <yongwei.ma@intel.com>,
 Ben Gardon <bgardon@google.com>, Paolo Bonzini <pbonzini@redhat.com>,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 01, 2023, Yan Zhao wrote:
> On Fri, Jul 28, 2023 at 06:35:12PM -0700, Sean Christopherson wrote:
> > Move the check that a vGPU is attacked from is_2MB_gtt_possible() all the
> typo: "attacked" --> "attached"
> 
> > way up to shadow_ppgtt_mm() to avoid unnecessary work, and to make it more
> This commit message does not match to what the patch does.
> The check in the patch is in ppgtt_populate_shadow_entry().
> 
> What you want is like below?

Yeah, I completely botched this and forgot to actually change the code.  I'll send
a replacement patch in-reply (or rather, I already sent it; I missed up again and
forgot to hit send on this one earlier in the day...).

Thanks yet again for the review!
