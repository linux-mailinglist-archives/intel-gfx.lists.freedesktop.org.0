Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4BC3D3DD0
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 18:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B02BD6E88D;
	Fri, 23 Jul 2021 16:47:35 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52AB56E04E
 for <Intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 16:47:34 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id b128so1167091wmb.4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 09:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=xaRm3h6dChKwIU9SR0yTnILkAtzDb5RZbhDYMt4T4EQ=;
 b=Rp5CMqsNaAhqmKuvk3HOyiOVX0JEs9ojMR1mPljGFHPL5frvVkEho/Io48XkKNsZnb
 ZA9XolwARN4YfwnFQ/I62tVsF/CRMnSWzlTpzwBmhVlwEPkqD/x66VQ3Trkq2cAFTPUR
 RTmCsE6zlA4sj2ZpuOeDyg++3pyZpAPqAJ+W4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xaRm3h6dChKwIU9SR0yTnILkAtzDb5RZbhDYMt4T4EQ=;
 b=c1x58afzVq+HZNcT01+LyX9PJVVKlmstE+EuVjgvEVJ0+HlAzYqHN2lu7CCQdps2is
 nwHC1d4FvT50OiVkQFlxJZW+VZMkE9A/sgJp2qFEBWchhsxdVRdUkVdIVjcWUuWuvBpq
 WLjygQzSjbdV0DmV4GtN0xt8f0RRg839kQdIbD68bbr7QlyCyO3u1hF+K716/E3M80WA
 r7MUvAKHVrVFIHAMo30mOUnGy5yp+amTA3jzheP6pjXJYRhwzZ3nPOziofQ0d0FBy2o+
 iawNWB/ew+KMNHx8L50pkGNCW8pL+h6qGym/SNpWo0wdgibO0zxvPboCm2juCu3HdONX
 C9hQ==
X-Gm-Message-State: AOAM533UhzWjBYylflvFBrtLlgixHSS8Hl4cYaa2xXOgg9Bpkeg+nLJ4
 4IlTEPdWz+1kOyMqD7bppOEuEg==
X-Google-Smtp-Source: ABdhPJy5YW1AyblL9e9IxGNMgNYcz35njCEsmYC0TKEuf+Zj8V37kr3poJ/tPdScZ9/iDXv6d7nZoQ==
X-Received: by 2002:a05:600c:1d11:: with SMTP id
 l17mr5471363wms.169.1627058852888; 
 Fri, 23 Jul 2021 09:47:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d8sm34861749wra.41.2021.07.23.09.47.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jul 2021 09:47:32 -0700 (PDT)
Date: Fri, 23 Jul 2021 18:47:30 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <YPryorSobmlnGT1b@phenom.ffwll.local>
References: <20210715091820.1613726-1-tvrtko.ursulin@linux.intel.com>
 <20210715091820.1613726-7-tvrtko.ursulin@linux.intel.com>
 <CAPj87rMxvq2c9uQ-ArvsLo2M7rXq=7LiJZ_XJwST=1VDhhNXRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rMxvq2c9uQ-ArvsLo2M7rXq=7LiJZ_XJwST=1VDhhNXRA@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [RFC 6/8] drm: Document fdinfo format specification
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
Cc: intel-gfx <Intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 David M Nieto <David.Nieto@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 23, 2021 at 05:43:01PM +0100, Daniel Stone wrote:
> Hi Tvrtko,
> Thanks for typing this up!
> 
> On Thu, 15 Jul 2021 at 10:18, Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
> > +Mandatory fully standardised keys
> > +---------------------------------
> > +
> > +- drm-driver: <str>
> > +
> > +String shall contain a fixed string uniquely identified the driver handling
> > +the device in question. For example name of the respective kernel module.
> 
> I think let's be more prescriptive and just say that it is the module name.

Just a quick comment on this one.

drm_driver.name is already uapi, so let's please not invent a new one. The
shared code should probably make sure drivers don't get this wrong. Maybe
good if we document the getverion ioctl, which also exposes this, and then
link between the two.
-Daniel

> 
> > +Optional fully standardised keys
> > +--------------------------------
> > +
> > +- drm-pdev: <aaaa:bb.cc.d>
> > +
> > +For PCI devices this should contain the PCI slot address of the device in
> > +question.
> 
> How about just major:minor of the DRM render node device it's attached to?
> 
> > +- drm-client-id: <uint>
> > +
> > +Unique value relating to the open DRM file descriptor used to distinguish
> > +duplicated and shared file descriptors. Conceptually the value should map 1:1
> > +to the in kernel representation of `struct drm_file` instances.
> > +
> > +Uniqueness of the value shall be either globally unique, or unique within the
> > +scope of each device, in which case `drm-pdev` shall be present as well.
> > +
> > +Userspace should make sure to not double account any usage statistics by using
> > +the above described criteria in order to associate data to individual clients.
> > +
> > +- drm-engine-<str>: <uint> ns
> > +
> > +GPUs usually contain multiple execution engines. Each shall be given a stable
> > +and unique name (str), with possible values documented in the driver specific
> > +documentation.
> > +
> > +Value shall be in specified time units which the respective GPU engine spent
> > +busy executing workloads belonging to this client.
> > +
> > +Values are not required to be constantly monotonic if it makes the driver
> > +implementation easier, but are required to catch up with the previously reported
> > +larger value within a reasonable period. Upon observing a value lower than what
> > +was previously read, userspace is expected to stay with that larger previous
> > +value until a monotonic update is seen.
> 
> Yeah, that would work well for Mali/Panfrost. We can queue multiple
> jobs in the hardware, which can either be striped across multiple
> cores with an affinity mask (e.g. 3 cores for your client and 1 for
> your compositor), or picked according to priority, or ...
> 
> The fine-grained performance counters (e.g. time spent waiting for
> sampler) are only GPU-global. So if you have two jobs running
> simultaneously, you have no idea who's responsible for what.
> 
> But it does give us coarse-grained counters which are accounted
> per-job-slot, including exactly this metric: amount of 'GPU time'
> (whatever that means) occupied by that job slot during the sampling
> period. So we could support that nicely if we fenced job-slot updates
> with register reads/writes.
> 
> Something I'm missing though is how we enable this information. Seems
> like it would be best to either only do it whilst fdinfo is open (and
> re-read it whenever you need an update), or on a per-driver sysfs
> toggle, or ... ?
> 
> > +- drm-memory-<str>: <uint> [KiB|MiB]
> > +
> > +Each possible memory type which can be used to store buffer objects by the
> > +GPU in question shall be given a stable and unique name to be returned as the
> > +string here.
> > +
> > +Value shall reflect the amount of storage currently consumed by the buffer
> > +object belong to this client, in the respective memory region.
> > +
> > +Default unit shall be bytes with optional unit specifiers of 'KiB' or 'MiB'
> > +indicating kibi- or mebi-bytes.
> 
> I'm a bit wary of the accounting here. Is it buffer allocations
> originating from the client, in which case it conceptually clashes
> with gralloc? Is it the client which last wrote to the buffer? The
> client with the oldest open handle to the buffer? Other?
> 
> Cheers,
> Daniel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
