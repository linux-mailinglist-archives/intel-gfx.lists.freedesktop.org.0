Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E01687FE7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 15:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFECB10E555;
	Thu,  2 Feb 2023 14:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE8E610E11D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 19:22:50 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-4a263c4ddbaso278952377b3.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 11:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=PCnMypYs8jymH6Ufuva+9r/69Y/DZs8kYxwQEYrzQFk=;
 b=hXTUs83qvSMCw0sqrewtph/1zyRGQA8EwV9VOqASoIhN1O27YlTeLHvU30LwpkaPKE
 6ZtbduOBpeU0Mk6yScQyxHGjdOZ8W8NbAK7HCSbKR2qQVwpslpoP2Mqh8DnM60UrkSEV
 Fy/rJx/xAj6ReR1yQheSDvUeiLsUOZe36GsXUe+/pA5dp4+pot+ScO1k5jhTafZOkoJo
 vEjMe7B3/0BupSIQn5CSlkYjolaKBFMYB73xyId061H8p1ZYZbkvvK9SPdZltanRDpUl
 vOuM+M/xFo7tmOP85pcv8h038+SVqlBqYWxO3Lgun0O5W06va+PJHK2pFsHgrhvmIiGL
 lvow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PCnMypYs8jymH6Ufuva+9r/69Y/DZs8kYxwQEYrzQFk=;
 b=Hn7BGH6xnDhbFGyNT9sqHeZY2Hhv0BMPUuH9WHqMqyNjvdgCTrmcB56qLlJ/PcrfA/
 wxkde5zeSdR7UldPcoMMaISljQTPSmE2juLKjjW1ddeS9wd3KveHy0DpQDkhOOSghQDd
 Ube4dvFwcu/0EHo2Y/O/fbLtu1RUuof5MKnB+pa3cdhm6jq/vhacBLOHjuf5UTSnbomb
 6AMr9R2xiHV1+RZagfofdDymlqVKB6hWN98uGsQEX5ppXBPepa8zQUkLgvAMyYcUueHE
 2cCE3c+Ij6eX4lZg59orGIE+wEf1nhrHuT4Bp1sP+G520hDgkRZJvTrZklmdzrWonSrx
 9fTw==
X-Gm-Message-State: AO0yUKUCKg9uQz3OBD6wAwZaSxPIjIn/aNwBoy+aiLPkbo1cPELk76pz
 PQ3DiPsVtCKYOwW4V3ywWNfn71fSDHdq9jIJT1QQcw==
X-Google-Smtp-Source: AK7set/Rj29H3r8vHaYccCmp943Un+QyMRF/w8dcRdt99GFw8apI+/L+5tSmXBTsBLdlTBniti7hA8kyFbpjr3H10kc=
X-Received: by 2002:a0d:d456:0:b0:507:26dc:ebd with SMTP id
 w83-20020a0dd456000000b0050726dc0ebdmr298632ywd.455.1674674569763; Wed, 25
 Jan 2023 11:22:49 -0800 (PST)
MIME-Version: 1.0
References: <20230125083851.27759-1-surenb@google.com>
 <20230125083851.27759-2-surenb@google.com>
 <Y9F19QEDX5d/44EV@casper.infradead.org>
In-Reply-To: <Y9F19QEDX5d/44EV@casper.infradead.org>
From: Suren Baghdasaryan <surenb@google.com>
Date: Wed, 25 Jan 2023 11:22:38 -0800
Message-ID: <CAJuCfpH+LMFX=TT04gSMA05cz_-CXMum6fobRrduWvzm1HWPmQ@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 02 Feb 2023 14:24:11 +0000
Subject: Re: [Intel-gfx] [PATCH v2 1/6] mm: introduce vma->vm_flags modifier
 functions
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
Cc: michel@lespinasse.org, nvdimm@lists.linux.dev, heiko@sntech.de,
 leewalsh@google.com, dri-devel@lists.freedesktop.org, perex@perex.cz,
 jglisse@google.com, arjunroy@google.com, m.szyprowski@samsung.com,
 linux-arch@vger.kernel.org, qianweili@huawei.com,
 linux-samsung-soc@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 chenhuacai@kernel.org, kasan-dev@googlegroups.com, linux-acpi@vger.kernel.org,
 rientjes@google.com, xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 minchan@google.com, robert.jarzmik@free.fr, linux-um@lists.infradead.org,
 etnaviv@lists.freedesktop.org, npiggin@gmail.com, viro@zeniv.linux.org.uk,
 luto@kernel.org, gthelen@google.com, tglx@linutronix.de, ldufour@linux.ibm.com,
 linux-sgx@vger.kernel.org, martin.petersen@oracle.com,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-perf-users@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 linux-media@vger.kernel.org, freedreno@lists.freedesktop.org,
 joelaf@google.com, linux-aio@kvack.org, linux-fbdev@vger.kernel.org,
 linux-ia64@vger.kernel.org, david@redhat.com, dave.hansen@linux.intel.com,
 virtualization@lists.linux-foundation.org, edumazet@google.com,
 target-devel@vger.kernel.org, punit.agrawal@bytedance.com,
 linux-s390@vger.kernel.org, dave@stgolabs.net, deller@gmx.de, hughd@google.com,
 andrii@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org, linux-graphics-maintainer@vmware.com,
 kernel-team@android.com, jayalk@intworks.biz, soheil@google.com,
 selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org, mripard@kernel.org,
 shakeelb@google.com, haojian.zhuang@gmail.com, loongarch@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, tytso@mit.edu, nico@fluxnic.net,
 muchun.song@linux.dev, hjc@rock-chips.com, mcoquelin.stm32@gmail.com,
 tatashin@google.com, mike.kravetz@oracle.com, songliubraving@fb.com,
 jasowang@redhat.com, alsa-devel@alsa-project.org, peterx@redhat.com,
 linux-tegra@vger.kernel.org, kraxel@redhat.com, will@kernel.org,
 dmaengine@vger.kernel.org, bhe@redhat.com, miklos@szeredi.hu,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, gurua@google.com, dgilbert@interlog.com,
 xiang@kernel.org, pabeni@redhat.com, jejb@linux.ibm.com,
 quic_abhinavk@quicinc.com, bp@alien8.de, mchehab@kernel.org,
 linux-ext4@vger.kernel.org, tomba@kernel.org, hughlynch@google.com,
 sre@kernel.org, tfiga@chromium.org, linux-xfs@vger.kernel.org,
 zhangfei.gao@linaro.org, wangzhou1@hisilicon.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, linux-erofs@lists.ozlabs.org, davem@davemloft.net,
 mhocko@suse.com, kvm@vger.kernel.org, mst@redhat.com, peterz@infradead.org,
 bigeasy@linutronix.de, alexandre.torgue@foss.st.com, dhowells@redhat.com,
 linux-mm@kvack.org, ray.huang@amd.com, adilger.kernel@dilger.ca,
 kuba@kernel.org, sparclinux@vger.kernel.org, airlied@gmail.com,
 anton.ivanov@cambridgegreys.com, herbert@gondor.apana.org.au,
 linux-scsi@vger.kernel.org, richard@nod.at, x86@kernel.org, vkoul@kernel.org,
 mingo@redhat.com, axelrasmussen@google.com, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, paulmck@kernel.org, jannh@google.com, chao@kernel.org,
 liam.howlett@oracle.com, hdegoede@redhat.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, vbabka@suse.cz,
 dimitri.sivanich@hpe.com, posk@google.com, lstoakes@gmail.com,
 peterjung1337@gmail.com, yoshfuji@linux-ipv6.org,
 linuxppc-dev@lists.ozlabs.org, dsahern@kernel.org, kent.overstreet@linux.dev,
 kexec@lists.infradead.org, tiwai@suse.com, krzysztof.kozlowski@linaro.org,
 tzimmermann@suse.de, hannes@cmpxchg.org, dmitry.baryshkov@linaro.org,
 johannes@sipsolutions.net, mgorman@techsingularity.net,
 linux-accelerators@lists.ozlabs.org, l.stach@pengutronix.de
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 25, 2023 at 10:33 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> On Wed, Jan 25, 2023 at 12:38:46AM -0800, Suren Baghdasaryan wrote:
> > +/* Use when VMA is not part of the VMA tree and needs no locking */
> > +static inline void init_vm_flags(struct vm_area_struct *vma,
> > +                              unsigned long flags)
> > +{
> > +     vma->vm_flags = flags;
>
> vm_flags are supposed to have type vm_flags_t.  That's not been
> fully realised yet, but perhaps we could avoid making it worse?
>
> >       pgprot_t vm_page_prot;
> > -     unsigned long vm_flags;         /* Flags, see mm.h. */
> > +
> > +     /*
> > +      * Flags, see mm.h.
> > +      * WARNING! Do not modify directly.
> > +      * Use {init|reset|set|clear|mod}_vm_flags() functions instead.
> > +      */
> > +     unsigned long vm_flags;
>
> Including changing this line to vm_flags_t

Good point. Will make the change. Thanks!
