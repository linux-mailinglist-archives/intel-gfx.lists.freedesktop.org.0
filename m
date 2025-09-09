Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4652CB4AA9F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 12:28:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C8610E6A0;
	Tue,  9 Sep 2025 10:28:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=ffwll.ch header.i=@ffwll.ch header.b="OCBC34dJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5F610E6A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Sep 2025 10:28:50 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id
 4fb4d7f45d1cf-61d3d622a2bso8910080a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Sep 2025 03:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1757413729; x=1758018529; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JKGepJQf9M6lLtehJhlq5BApUCT3KilSUJbItoq+UYI=;
 b=OCBC34dJ5kE9b4D2pVjfQQcEr9NqU0LWf3Fn9HLy96Vl838f5WECyPEceo0dLxLPUh
 8uHuccuq1Ei7scKZqQCWn8IgCUxubOoT2QXiS7NI+Kt4py5vR6NjBeMgY6fR+TP2bVj+
 NKLOfrgYIQaE+TvOlolzz14p1AMAy17j5zu4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757413729; x=1758018529;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JKGepJQf9M6lLtehJhlq5BApUCT3KilSUJbItoq+UYI=;
 b=oAuo/buudV6Bv1H/1Clspdf3iCsjrjgzlldSontD2+P1YKYzZnYSDXxOQiqwFE0W/t
 6Yd2xUepNyTGNW+9wSb/FHj3k7mLcu16Bm+zOYZOOmIYthdHdtV4f3RJSWVvd1ACftQO
 Fd9lJH7e+5hosjzKZQio1tD41P4mWC/MnohghOTSjZVd5eTCUlywpEAmU02iBjm3WBFE
 KvnymGnXuoEx/jeGof7F03zbpVGbz9JEdZErPjEssQoQEbYAuPzaj6u8QcYfmakepMSW
 J98GdT29IZkZNrhS3yvnLH/hjfZiDXkO+T8DU4FgjgmFdIaTKpufo+3xvZi8Ijx33obq
 TR+g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZ8w52U0nz4u5AmxHEMOJ6DRTg95ByTE4sheRmg7FtI7HGDSf4D39hn7XKrzCZHB+pwQ7aczynH4o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy5S7mtY7Qgqg2FBRLhNI/E94ytR1INvajj2VmoKvEVy4sc6Vhx
 vcEFbFuvI3Z8M1V1GnVRaNKQQbswSzbn/CpuOcSFQJPGZ4InixdPaY2L7HNL715Fit8=
X-Gm-Gg: ASbGncthdkfnfCdifyPU8/8fBsVUAaSN4qJEjXyTZQewZ9Bw3DsmR/ULYnkiaTU4y7F
 c/eL+FKRa/tXcVi6/mSZn87womHgnFLuNFffqiFzia6uRdPTT5H5+mKACDsOFzEH7+VSmJvzDHb
 FpNz6M1NPD0TsQEdQNWHA/jvDNWcdz/a2npvA2Ds+YSiO6MP1nEIXR88d9pm7VY7Q4C+/AsuEpA
 MuY3Ij93zsjix8Cl1ir9KKOJHUtfQ6GYDpUjth9b0+Tzs02ZVYg4USU65TYpVyaWYdfQeud7ZMT
 eRQopqAPZXHkjxO/3X84ZZJlRYdYM38v+KfU/rtGvM9lqMa9AT9oBKbNAFEqG/AOBoYy+c55mQv
 sRcudWf/06bEckp3uWp4vFKRDDgpzTx/RYZoekniL+fFm
X-Google-Smtp-Source: AGHT+IEBkJ3EwLJJ+SbqYg1kqZCCIo6t5rvPOtBHOjN/zdmZCuifWtmUOwJ+nIlb5XiDEeLQY82oaQ==
X-Received: by 2002:a17:907:7292:b0:afa:1d2c:bbd1 with SMTP id
 a640c23a62f3a-b04b1f7639amr1089829966b.30.1757413729254; 
 Tue, 09 Sep 2025 03:28:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b046b783722sm1472154266b.97.2025.09.09.03.28.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Sep 2025 03:28:48 -0700 (PDT)
Date: Tue, 9 Sep 2025 12:28:46 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Xaver Hugl <xaver.hugl@kde.org>
Cc: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [01/10] drm/drm-crtc: Introduce sharpness strength property
Message-ID: <aMABXu_aijfcdWRY@phenom.ffwll.local>
References: <20250724134544.284371-2-nemesa.garg@intel.com>
 <CAFZQkGzBCU+tDUP=KahwCq8=LLW3a8NKiNK5U4JQ0btUFFz+9g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFZQkGzBCU+tDUP=KahwCq8=LLW3a8NKiNK5U4JQ0btUFFz+9g@mail.gmail.com>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 
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

On Fri, Jul 25, 2025 at 01:22:00PM +0200, Xaver Hugl wrote:
> Hello,
> 
> This patch is Acked-by: Xaver Hugl <xaver.hugl@kde.org>

Since the kwin MR looks like it's ready too, the kernel side looks like
it's ready for merging:

https://invent.kde.org/plasma/kwin/-/merge_requests/7689

Might be good to record the links to userspace and igt in the commit
message so it's easier to find. Anyway, Jani asked me to stamp an approval
on this, hence:

Acked-by: Simona Vetter <simona.vetter@ffwll.ch>

Cheers, Sima
-- 
Simona Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
