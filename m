Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 745F967B62F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 16:47:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF6D10E064;
	Wed, 25 Jan 2023 15:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com
 [IPv6:2a00:1450:4864:20::131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2F710E064;
 Wed, 25 Jan 2023 15:47:23 +0000 (UTC)
Received: by mail-lf1-x131.google.com with SMTP id y25so29602652lfa.9;
 Wed, 25 Jan 2023 07:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1yrivBKzvIiUCmjHgUeelETWZKK8oymd83MtSBtHS+A=;
 b=YsH0elwuhxilWf51EJd96I5tksHSXHicmly6YDG9v342RR0sm4hpKHqb3o7cRJ73CY
 E7ZQs1s6nP+2WGYR1Yio9fKLXtSVGZZ202tBXkHx3chwfny8g3cPj6YFkP6njnq22qVP
 8KN5zGN/wUi+dv1s9nlhsNlSWRKC0g+Jj44Jf/MVpEd/M80yN6W0xLuLZqoBvCJaWOFP
 Hcb+jgyInNaCHCNOteI106BgKVVd++bo0u9HPtb5hNWTz4Ad5WL8oyGqSs57VGuvm3Ji
 k740sMrEIUMunQG4ICntLctAp8YcVxzgEx6ggAqsjyn7p68rCLY3rwdkwqbSYZ7MCfHb
 1pyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1yrivBKzvIiUCmjHgUeelETWZKK8oymd83MtSBtHS+A=;
 b=S8P4Pp4MSl9pJp4hEYiNmXWmtjM0qtH4Kja/zFpO1nuqtvM9A4ZEIVykE6V1sZlra6
 G09rNdlsquYQZAR4/0V4SE2dhny6XGOd5x17ZXWAhXwn7iIHy3RHnqAfTvzCmS30hXT7
 8BB4/vKSP8g0zSs5ij6qeJCiNrBqy3ZiXZVQerPzVNv/p+GgVZJeGDM7EXtzvxq9ttr9
 UzNXHt554VcLTwo90eljo+2h1iHqcC2t7EKBIjoa4WkUhiMJmz86RLgApOF8bjGKO6TC
 1VcacINltzWPLIwKIvmYYsiIutQK6+/+m5O3LbAQGZHP/SHggn9+D7D/0NENmkVnMOfE
 GxNQ==
X-Gm-Message-State: AFqh2kqae/SUJGmhQjdABC+0pHdPIB+ss4S+cCG+lQBtB5f5GukwiTFK
 AblCZ2YLc3PI/yPGVC1rF/0pE1nDkKwlldJKIJ4=
X-Google-Smtp-Source: AMrXdXvN0xZE5qaULOGo/vLjASVhrDeBHJkx9rXIM6MPMcHCnMn3YRX+1cBTtN/vxAIZIQIkU5+Vcn9o3Nqt1oeySgY=
X-Received: by 2002:a19:8c19:0:b0:4ca:f3c2:2670 with SMTP id
 o25-20020a198c19000000b004caf3c22670mr2777356lfd.166.1674661642022; Wed, 25
 Jan 2023 07:47:22 -0800 (PST)
MIME-Version: 1.0
References: <20230124125726.13323-1-christian.koenig@amd.com>
 <CAM0jSHNmv-naGqB=R8DZc-3QhTPzzo4pUU2-NxhtiEhXMcAN5A@mail.gmail.com>
 <CAM0jSHMgep0q9=C=fHw+Y8SqpNeN3Gz47u_UvwgJuGG3_0qgBQ@mail.gmail.com>
 <CAM0jSHNKkAS1+dYJdHk23+Uyoz02G1VPFLpKLxX2HqRe7L2HCA@mail.gmail.com>
 <418a6bca-7a61-86d8-7f6a-229d1e12c0fd@gmail.com>
 <CAM0jSHMrtTWPpExT-M3=qGKyFPSjN=WbsDnLZTaADneyXxOjZQ@mail.gmail.com>
 <d1da49dd-5d7e-e488-e584-6f07613dcb16@gmail.com>
 <CAM0jSHP-2D8MKZOnQfLM1+ZnMDx=231f=Mxwb0X3BJsG2vbRYA@mail.gmail.com>
 <2ace4ce4-ed25-8bdf-ad19-28c45f964280@gmail.com>
In-Reply-To: <2ace4ce4-ed25-8bdf-ad19-28c45f964280@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 25 Jan 2023 15:46:54 +0000
Message-ID: <CAM0jSHOa=qrmuWkZ2ygsdzY2vDMdG0sW+ByWq2Rpzjx-WM5f-g@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: audit bo->resource usage v3
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Jan 2023 at 14:20, Christian K=C3=B6nig
<ckoenig.leichtzumerken@gmail.com> wrote:
>
> Am 25.01.23 um 13:53 schrieb Matthew Auld:
> > On Wed, 25 Jan 2023 at 11:35, Christian K=C3=B6nig
> > <ckoenig.leichtzumerken@gmail.com> wrote:
> >> Am 25.01.23 um 11:21 schrieb Matthew Auld:
> >>> On Wed, 25 Jan 2023 at 10:07, Christian K=C3=B6nig
> >>> <ckoenig.leichtzumerken@gmail.com> wrote:
> >>>> Am 25.01.23 um 10:56 schrieb Matthew Auld:
> >>>>> On Tue, 24 Jan 2023 at 17:15, Matthew Auld
> >>>>> <matthew.william.auld@gmail.com> wrote:
> >>>>>> On Tue, 24 Jan 2023 at 13:48, Matthew Auld
> >>>>>> <matthew.william.auld@gmail.com> wrote:
> >>>>>>> On Tue, 24 Jan 2023 at 12:57, Christian K=C3=B6nig
> >>>>>>> <ckoenig.leichtzumerken@gmail.com> wrote:
> >>>>>>>> From: Christian K=C3=B6nig <ckoenig.leichtzumerken@gmail.com>
> >>>>>>>>
> >>>>>>>> Make sure we can at least move and alloc TT objects without back=
ing store.
> >>>>>>>>
> >>>>>>>> v2: clear the tt object even when no resource is allocated.
> >>>>>>>> v3: add Matthews changes for i915 as well.
> >>>>>>>>
> >>>>>>>> Signed-off-by: Christian K=C3=B6nig <christian.koenig@amd.com>
> >>>>>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> >>>>>> Ofc that assumes intel-gfx CI is now happy with the series.
> >>>>> There are still some nasty failures it seems (in the extended test
> >>>>> list). But it looks like the series is already merged. Can we quick=
ly
> >>>>> revert and try again?
> >>>> Ah, crap. I thought everything would be fine after the CI gave it's =
go.
> >>>>
> >>>> Which patch is causing the fallout?
> >>> I'm not sure. I think all of the patches kind of interact with each
> >>> other, but for sure there is an issue with the first patch. There is
> >>> one splat like:
> >> Well I would rather like to revert as less as possible.
> >>
> >> Are you sure that this isn't only on some i915 specific branch with no=
t
> >> yet upstream changes?
> > Yeah, that splat is taken directly from the CI results reported with
> > this series. So it's just your series applied on top of drm-tip.
> >
> > Can you take a look at the first patch here:
> > https://patchwork.freedesktop.org/series/113332/
> >
> > Maybe you have a better idea? For reference the IGTs that we have for
> > verifying userspace object clearing are now failing, so hoping that
> > fixes it. The other two patches I'm hoping will fix the splat.
>
> The TTM change looks like a good idea to me. Feel free to add my rb to
> this one.
>
> I can't say much about the i915 changes.
>
> Maybe we should revert the two TTM patches to not allocate resources for
> now and fix i915 first?

From what I can see, we would need to revert all three TTM patches,
keeping just the i915 one. Reverting for now I think makes sense.

>
> Christian.
>
> >
> >> I can't even find the i915_gem_obj_copy_ttm function in drm-misc-next
> >> nor drm-next.
> >>
> >> Regards,
> >> Christian.
> >>
> >>> <1>[  109.735148] BUG: kernel NULL pointer dereference, address:
> >>> 0000000000000010
> >>> <1>[  109.735151] #PF: supervisor read access in kernel mode
> >>> <1>[  109.735152] #PF: error_code(0x0000) - not-present page
> >>> <6>[  109.735153] PGD 0 P4D 0
> >>> <4>[  109.735155] Oops: 0000 [#1] PREEMPT SMP NOPTI
> >>> <4>[  109.735157] CPU: 1 PID: 92 Comm: kworker/u12:6 Not tainted
> >>> 6.2.0-rc5-Patchwork_113269v1-gc4d436608c4e+ #1
> >>> <4>[  109.735159] Hardware name: Gigabyte Technology Co., Ltd. GB-Z39=
0
> >>> Garuda/GB-Z390 Garuda-CF, BIOS IG1c 11/19/2019
> >>> <4>[  109.735160] Workqueue: events_unbound async_run_entry_fn
> >>> <4>[  109.735163] RIP: 0010:i915_ttm_resource_mappable+0x4/0x30 [i915=
]
> >>> <4>[  109.735286] Code: b8 f9 ff ff ff eb c2 e8 aa 5e 52 e1 e9 4f 0f
> >>> 18 00 0f 1f 44 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
> >>> 66 0f 1f 00 <8b> 57 10 b8 01 00 00 00 85 d2 74 15 48 8b 47 08 48 05 f=
f
> >>> 0f 00 00
> >>> <4>[  109.735288] RSP: 0018:ffffc90000f339a8 EFLAGS: 00010246
> >>> <4>[  109.735289] RAX: 0000000000000000 RBX: 0000000000000000 RCX:
> >>> ffff88810cea3a00
> >>> <4>[  109.735290] RDX: 0000000000000000 RSI: ffffc90000f33af0 RDI:
> >>> 0000000000000000
> >>> <4>[  109.735292] RBP: ffff88811645d7c0 R08: 0000000000000000 R09:
> >>> ffff888123afa940
> >>> <4>[  109.735292] R10: 0000000000000001 R11: ffff888104b70040 R12:
> >>> 0000000000000000
> >>> <4>[  109.735293] R13: 0000000000000000 R14: ffffc90000f33b08 R15:
> >>> ffffc90000f33af0
> >>> <4>[  109.735294] FS:  0000000000000000(0000)
> >>> GS:ffff8884ad680000(0000) knlGS:0000000000000000
> >>> <4>[  109.735295] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> >>> <4>[  109.735296] CR2: 0000000000000010 CR3: 000000011f9c6003 CR4:
> >>> 00000000003706e0
> >>> <4>[  109.735297] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> >>> 0000000000000000
> >>> <4>[  109.735298] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> >>> 0000000000000400
> >>> <4>[  109.735299] Call Trace:
> >>> <4>[  109.735300]  <TASK>
> >>> <4>[  109.735301]  __i915_ttm_move+0x128/0x940 [i915]
> >>> <4>[  109.735408]  ? dma_resv_iter_next+0x91/0xb0
> >>> <4>[  109.735412]  ? dma_resv_iter_first+0x42/0xb0
> >>> <4>[  109.735414]  ? i915_deps_add_resv+0x4c/0xc0 [i915]
> >>> <4>[  109.735520]  i915_gem_obj_copy_ttm+0x12f/0x250 [i915]
> >>> <4>[  109.735625]  i915_ttm_restore+0x167/0x250 [i915]
> >>> <4>[  109.735759]  i915_gem_process_region+0x27a/0x3b0 [i915]
> >>> <4>[  109.735881]  i915_ttm_restore_region+0x4b/0x70 [i915]
> >>> <4>[  109.735999]  lmem_restore+0x3a/0x60 [i915]
> >>> <4>[  109.736101]  i915_gem_resume+0x4c/0x100 [i915]
> >>> <4>[  109.736202]  i915_drm_resume+0xc2/0x170 [i915]
> >>>
> >>> Plus some other less obvious issue(s) with some tests failing.
> >>>
> >>>> Christian.
>
