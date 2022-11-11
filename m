Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6C3632824
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 16:29:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A5A010E301;
	Mon, 21 Nov 2022 15:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027BB10E17E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 17:07:40 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id o7so4940202pjj.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 09:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LICHPg6UnYkTNsPkbQmwYKBGSoVvJ3ggmuJEwwsBdfE=;
 b=XZlbgoFLBfg1b1W761+z1PDAgEb20H2QO0ci+u5UoReXW/AglYt37kfLNyiRzXCbun
 16a/vNSD6OLG51wXjymdIRV5K9+yHSAOu082YpoTDDKE/vWKWzBoXD0ip80QsNnXeMJr
 XUiBolJ/U5H4SS51K9h10zFLgGeuRJ3ETLcS/qaSX/VswfZGD0HWGQophC9d+8et+N8D
 Rcu5KGn6L35gbiXzVxNNzg/1YqsSpk7Imvy500y3L07kqkpPLt+0VZ5sct2ejFIWJ747
 3+UH3Cce+XE9LjmMHIqul5KXKnZHUHLmRehpGUfslQ2VrfCosOP4gZwFjBB/ttBcN/Ae
 9vMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LICHPg6UnYkTNsPkbQmwYKBGSoVvJ3ggmuJEwwsBdfE=;
 b=uuA91IJFaKyApXioQCGXus0u9pltT/Ii/plAXhOrZoC6gBXPbNg0SSS2PFIALUpg6s
 +W+iHjuECukK7jCZ0EGFr6dURuvP/Ya4f1hefwOFIITkEqQBSLFwiARLWipjGiqWLtwq
 QcIlv69nccBS/vBasR/vAYs1AEI0Okl0kUuER2Esef/nwmh141qS+t07dLgqMm48GEm6
 TUKVTxOk7HBFVFVQzuVVuyEUADn/h5kaOTPgfMPLqL97628WO1dk/+9PfA8+qiEkpo4t
 YEBsA49/4f/Xj4fagg3LAehv0V+pEncfFXOrX9Ko1dzWXLgHFj9WqBwuocLpQUVC4S27
 5jhA==
X-Gm-Message-State: ANoB5pngj5pmdRCMeV1hbR3gfqRZg8qK6Ev2qWzGdU5+JME40g7spDw8
 Gg7IQ3ch7yWKXhjE1wUrJnAJEw==
X-Google-Smtp-Source: AA0mqf5Uo+YykjZZDEd2A/F0GfL+xhYTbei/GO+GSdCfD2x/gs2dZlHf5v1zmNbQnCxh9OBRghbP8A==
X-Received: by 2002:a17:90b:4b50:b0:213:5c5f:f440 with SMTP id
 mi16-20020a17090b4b5000b002135c5ff440mr2919822pjb.15.1668186460347; 
 Fri, 11 Nov 2022 09:07:40 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 f18-20020a63e312000000b004582e25a595sm1591902pgh.41.2022.11.11.09.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Nov 2022 09:07:39 -0800 (PST)
Date: Fri, 11 Nov 2022 17:07:35 +0000
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Message-ID: <Y26BV9a9q8nBz/+7@google.com>
References: <20221111103247.22275-1-yan.y.zhao@intel.com>
 <20221111103436.22381-1-yan.y.zhao@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221111103436.22381-1-yan.y.zhao@intel.com>
X-Mailman-Approved-At: Mon, 21 Nov 2022 15:26:24 +0000
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/gvt: switch from
 track_flush_slot to track_remove_slot
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
 linux-kernel@vger.kernel.org, pbonzini@redhat.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 11, 2022, Yan Zhao wrote:
> KVMGT only cares about when a slot is indeed removed.
> So switch to use track_remove_slot which is called when a slot is removed.

This should capture the original motivation, i.e. that the existing
->track_flush_slot() hook is theoretically flawed.  I think it also makes sense
to call out that KVMGT undoubtedly does the wrong thing if a memslot is moved,
but that (a) KVMGT has never supported moving memslots and (b) there's no sane
use case for moving memslots that might be used by the guest for the GTT.

Bonus points if you can figure out a way to capture the restriction in the docs,
e.g. somewhere in gpu/i915.rst?

Lastly, provide a link to the original discussion which provides even more context.

Link: https://lore.kernel.org/all/20221108084416.11447-1-yan.y.zhao@intel.com

> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Suggested-by: Sean Christopherson <seanjc@google.com>
> Signed-off-by: Yan Zhao <yan.y.zhao@intel.com>
> ---
