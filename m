Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E0E7B59EE
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 20:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F30910E0BD;
	Mon,  2 Oct 2023 18:22:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com
 [IPv6:2607:f8b0:4864:20::1035])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F9510E0BD
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 18:22:25 +0000 (UTC)
Received: by mail-pj1-x1035.google.com with SMTP id
 98e67ed59e1d1-278fde50024so2397192a91.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Oct 2023 11:22:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1696270944; x=1696875744;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=6vMwsjYrlAei3Hxc6ZjjNt+EO9kZEbPnxPSvxjTe6qw=;
 b=YA5vJ2kOSGxG50joUtzSs/L4e15mwaXH4uM82nG4NZP+zmfW4Nm07LHBb+QkJz6r8E
 BnDzVDPSszu9zqbF0CcnvWNAdTInvlwrqOdUx59bRd1Qkf6qULtXECxyJOWCJJ1EYRul
 6H9u9Dub2377LWy/8ErYzGzEMzcgGoDiBdOco=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696270944; x=1696875744;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=6vMwsjYrlAei3Hxc6ZjjNt+EO9kZEbPnxPSvxjTe6qw=;
 b=VJWm+vbcPBWQkTvoB+OgeiQOaXq6bduNoyqZDE5cRL79RU6EIMkvrVPKFwSo1DSeEh
 uyhq/qyXZO4NXr9/SLbKoZ6Gj5WBiYfqIEMF/hLI668N8LyH0X+U1OC2WRDJE9OEOTWD
 gazZyQ3irn+jHZhiofC8nE4u0i64HIDzUH+1LVK9Ril0PlhhYW0sNqbPeHajvTAqxnTf
 KnqymIRNMPH+R8oy1SEYCtnjjOnOBxvalsIMqgYc9PNmnAfCp70msrOtJ5Jgz40satvI
 3ZW5U7SkOzcJpTidMY29BvAqnWzDu6TA4a1O9ebtMp//TMgAVKYVg4AgZfkKIGUUWXSI
 qebQ==
X-Gm-Message-State: AOJu0Yzpmk2xAQ1H2VPUNqtJv7tEVLp9cslN9pjyvaNb95lmkQJQzwnW
 x90zSxbBJeV3ar9Kz9IQfPPYjw==
X-Google-Smtp-Source: AGHT+IFu7XIuUCGOlcsyNLly9unt/oHCJHSK53R4jpfqHFz2qYx70ADEn6oBAlKq5k57qw3fzv2Kwg==
X-Received: by 2002:a17:90b:4a42:b0:277:3afc:f27 with SMTP id
 lb2-20020a17090b4a4200b002773afc0f27mr561738pjb.1.1696270944558; 
 Mon, 02 Oct 2023 11:22:24 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 d12-20020a17090a498c00b0026b3ed37ddcsm6358499pjh.32.2023.10.02.11.22.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Oct 2023 11:22:23 -0700 (PDT)
Date: Mon, 2 Oct 2023 11:22:22 -0700
From: Kees Cook <keescook@chromium.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <202310021122.B6DA850FB0@keescook>
References: <20230922173110.work.084-kees@kernel.org>
 <169601600138.3014939.8511343741428844249.b4-ty@chromium.org>
 <83cd056c-52ae-01dd-7576-42d41da64c26@gmail.com>
 <CADnq5_Ma2CrLYggJHKFEObsNmUoqJwb2p1xai5DfL=m43U6zEA@mail.gmail.com>
 <202310020952.E7DE0948C0@keescook>
 <10644b5f-b0a7-85ef-0658-2353ee14df0d@gmail.com>
 <202310021107.9BB46FB8E@keescook>
 <0be2dfa4-b6c1-f62a-66e1-615da7aa3c76@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0be2dfa4-b6c1-f62a-66e1-615da7aa3c76@amd.com>
Subject: Re: [Intel-gfx] [PATCH 0/9] drm: Annotate structs with __counted_by
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
Cc: Emma Anholt <emma@anholt.net>, Tom Rix <trix@redhat.com>,
 linux-arm-msm@vger.kernel.org, llvm@lists.linux.dev,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Prike Liang <Prike.Liang@amd.com>, Huang Rui <ray.huang@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Karol Herbst <kherbst@redhat.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, amd-gfx@lists.freedesktop.org,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, nouveau@lists.freedesktop.org,
 David Airlie <airlied@redhat.com>, virtualization@lists.linux-foundation.org,
 Chia-I Wu <olvaffe@gmail.com>, linux-hardening@vger.kernel.org,
 Alex Deucher <alexander.deucher@amd.com>, Lijo Lazar <lijo.lazar@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, Kevin Wang <kevin1.wang@amd.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Nathan Chancellor <nathan@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Evan Quan <evan.quan@amd.com>, Yifan Zhang <yifan1.zhang@amd.com>,
 Xiaojian Du <Xiaojian.Du@amd.com>, Le Ma <le.ma@amd.com>,
 freedreno@lists.freedesktop.org, Bjorn Andersson <andersson@kernel.org>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Melissa Wen <mwen@igalia.com>,
 Zack Rusin <zackr@vmware.com>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexdeucher@gmail.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Lang Yu <Lang.Yu@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 02, 2023 at 08:11:41PM +0200, Christian König wrote:
> Am 02.10.23 um 20:08 schrieb Kees Cook:
> > On Mon, Oct 02, 2023 at 08:01:57PM +0200, Christian König wrote:
> > > Am 02.10.23 um 18:53 schrieb Kees Cook:
> > > > On Mon, Oct 02, 2023 at 11:06:19AM -0400, Alex Deucher wrote:
> > > > > On Mon, Oct 2, 2023 at 5:20 AM Christian König
> > > > > <ckoenig.leichtzumerken@gmail.com> wrote:
> > > > > > Am 29.09.23 um 21:33 schrieb Kees Cook:
> > > > > > > On Fri, 22 Sep 2023 10:32:05 -0700, Kees Cook wrote:
> > > > > > > > This is a batch of patches touching drm for preparing for the coming
> > > > > > > > implementation by GCC and Clang of the __counted_by attribute. Flexible
> > > > > > > > array members annotated with __counted_by can have their accesses
> > > > > > > > bounds-checked at run-time checking via CONFIG_UBSAN_BOUNDS (for array
> > > > > > > > indexing) and CONFIG_FORTIFY_SOURCE (for strcpy/memcpy-family functions).
> > > > > > > > 
> > > > > > > > As found with Coccinelle[1], add __counted_by to structs that would
> > > > > > > > benefit from the annotation.
> > > > > > > > 
> > > > > > > > [...]
> > > > > > > Since this got Acks, I figure I should carry it in my tree. Let me know
> > > > > > > if this should go via drm instead.
> > > > > > > 
> > > > > > > Applied to for-next/hardening, thanks!
> > > > > > > 
> > > > > > > [1/9] drm/amd/pm: Annotate struct smu10_voltage_dependency_table with __counted_by
> > > > > > >          https://git.kernel.org/kees/c/a6046ac659d6
> > > > > > STOP! In a follow up discussion Alex and I figured out that this won't work.
> > > > I'm so confused; from the discussion I saw that Alex said both instances
> > > > were false positives?
> > > > 
> > > > > > The value in the structure is byte swapped based on some firmware
> > > > > > endianness which not necessary matches the CPU endianness.
> > > > > SMU10 is APU only so the endianess of the SMU firmware and the CPU
> > > > > will always match.
> > > > Which I think is what is being said here?
> > > > 
> > > > > > Please revert that one from going upstream if it's already on it's way.
> > > > > > 
> > > > > > And because of those reasons I strongly think that patches like this
> > > > > > should go through the DRM tree :)
> > > > Sure, that's fine -- please let me know. It was others Acked/etc. Who
> > > > should carry these patches?
> > > Probably best if the relevant maintainer pick them up individually.
> > > 
> > > Some of those structures are filled in by firmware/hardware and only the
> > > maintainers can judge if that value actually matches what the compiler
> > > needs.
> > > 
> > > We have cases where individual bits are used as flags or when the size is
> > > byte swapped etc...
> > > 
> > > Even Alex and I didn't immediately say how and where that field is actually
> > > used and had to dig that up. That's where the confusion came from.
> > Okay, I've dropped them all from my tree. Several had Acks/Reviews, so
> > hopefully those can get picked up for the DRM tree?
> 
> I will pick those up to go through drm-misc-next.
> 
> Going to ping maintainers once more when I'm not sure if stuff is correct or
> not.

Sounds great; thanks!

-Kees

-- 
Kees Cook
