Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D5F3F8566
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 12:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58FBB6E5CE;
	Thu, 26 Aug 2021 10:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E744A6E5CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 10:36:31 +0000 (UTC)
Received: by mail-ed1-x530.google.com with SMTP id i6so3962514edu.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 03:36:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Ef0xBZIxBmXpuPhGkt8PvJn6HQpBp4rz6Q9qS6aDOnY=;
 b=Q6yExTSAirtQ7fGrhlr2k8LlEPbqO1xWnmOKVsoxB6UvKPpC/fKq9VsrpUdYUSb9y0
 UUaZyD6KUGYJ4ybIPT0CBg2evZR8pZn0GFCtK0jY5DhfdmJTPHQyMXhhpyZJnpkUoFr7
 5/Ui0Y4306EDvjpe9nJCQtNfzuuZquv0MuU7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Ef0xBZIxBmXpuPhGkt8PvJn6HQpBp4rz6Q9qS6aDOnY=;
 b=fqWSDey/qT95snzQA1cX+w3yx4/7WhxOdGFCI4Hmm4WRWNqfOrqy7SqlQegfgd1C2K
 g2gQf4nUMVH/HVcuzYFSfjpxa1HR5K1LN4Sjz6+tspMWc16NeQ4hU7DsieIk8OwDzbRW
 FEMPfQcUJu6DuadqGpbMfozehQW5e9q5euI9bvaoEfbWiiz7sTDQAW/hSPjBL2vMDFEy
 9wDV/XYDhOEgfq567Fpvvm/c3YGOeVQ25CpYIg7xMUUF77SWQdCrSW/2xnUJCDfoqTSz
 X2jdCWBpUnpAb9UxEXf0oE0ooU4bOi+sjVDWCF2vieMous8HYlVdjtQ+iOMaw1/0+UFL
 jRKw==
X-Gm-Message-State: AOAM531pdEYufWppicTkJKxaUCiRXMjo1NFP/pz3VVZdL91satFO+2lg
 u3u1+F1VBWpf4jN0UPN3kdmtmzObjGHBLg==
X-Google-Smtp-Source: ABdhPJz77UWwH6PdtuPb3Hp6Ho7GY/VZF+UA1uBO0Qu9be468hqQbzEnQneWy8z9fnnN/Ax2LvjLNg==
X-Received: by 2002:aa7:c5cb:: with SMTP id h11mr3409539eds.255.1629974190494; 
 Thu, 26 Aug 2021 03:36:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id dk6sm1586613edb.14.2021.08.26.03.36.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Aug 2021 03:36:29 -0700 (PDT)
Date: Thu, 26 Aug 2021 12:36:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, Matthew Auld <matthew.auld@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YSduq98aVQ7G0Gw7@phenom.ffwll.local>
References: <20210818145850.225387-1-matthew.auld@intel.com>
 <20210818145850.225387-2-matthew.auld@intel.com>
 <811cc4bfb6262d9050140ed9a9eac1dd7632d33a.camel@linux.intel.com>
 <YSdcAD7Pa+e93xqh@phenom.ffwll.local>
 <4d14b5f5f74d279d666077de28f5de7f6d721509.camel@linux.intel.com>
 <YSdm8UwhfthWziM9@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YSdm8UwhfthWziM9@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/debugfs: hook up
 ttm_resource_manager_debug
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

On Thu, Aug 26, 2021 at 12:03:29PM +0200, Daniel Vetter wrote:
> On Thu, Aug 26, 2021 at 11:51:44AM +0200, Thomas Hellstr�m wrote:
> > On Thu, 2021-08-26 at 11:16 +0200, Daniel Vetter wrote:
> > > On Thu, Aug 19, 2021 at 09:32:20AM +0200, Thomas Hellstr�m wrote:
> > > > On Wed, 2021-08-18 at 15:58 +0100, Matthew Auld wrote:
> > > > > This should give a more complete view of the various bits of
> > > > > internal
> > > > > resource manager state, for device local-memory.
> > > > > 
> > > > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > > > Cc: Thomas Hellstr�m <thomas.hellstrom@linux.intel.com>
> > > > > ---
> > > > > �drivers/gpu/drm/i915/i915_debugfs.c | 12 +++++++++---
> > > > > �1 file changed, 9 insertions(+), 3 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> > > > > b/drivers/gpu/drm/i915/i915_debugfs.c
> > > > > index eec0d349ea6a..109e6feed6be 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_debugfs.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> > > > > @@ -238,6 +238,7 @@ i915_debugfs_describe_obj(struct seq_file *m,
> > > > > struct drm_i915_gem_object *obj)
> > > > > �static int i915_gem_object_info(struct seq_file *m, void *data)
> > > > > �{
> > > > > ��������struct drm_i915_private *i915 = node_to_i915(m->private);
> > > > > +�������struct drm_printer p = drm_seq_file_printer(m);
> > > > > ��������struct intel_memory_region *mr;
> > > > > ��������enum intel_region_id id;
> > > > > �
> > > > > @@ -245,9 +246,14 @@ static int i915_gem_object_info(struct
> > > > > seq_file
> > > > > *m, void *data)
> > > > > ������������������ i915->mm.shrink_count,
> > > > > ������������������ atomic_read(&i915->mm.free_count),
> > > > > ������������������ i915->mm.shrink_memory);
> > > > > -�������for_each_memory_region(mr, i915, id)
> > > > > -���������������seq_printf(m, "%s: total:%pa, available:%pa
> > > > > bytes\n",
> > > > > -������������������������� mr->name, &mr->total, &mr->avail);
> > > > > +�������for_each_memory_region(mr, i915, id) {
> > > > > +���������������seq_printf(m, "%s: ", mr->name);
> > > > > +���������������if (mr->region_private)
> > > > > +�����������������������ttm_resource_manager_debug(mr-
> > > > > > region_private, &p);
> > > > > +���������������else
> > > > > +�����������������������seq_printf(m, "total:%pa, available:%pa
> > > > > bytes\n",
> > > > > +��������������������������������� &mr->total, &mr->avail);
> > > > 
> > > > Hm. Shouldn't we make the above intel_memory_region_debug() or
> > > > perhaps
> > > > intel_memory_region_info() to avoid using memory region internals
> > > > directly here?
> > > 
> > > Imo we should just emebed ttm_resource_mager into our own and not try
> > > to
> > > abstract this all away that much. At least in upstream there is just
> > > not
> > > going to be another memory region implementation, and for backporting
> > > I'm
> > > not sure these abstractions really help that much - we're touching
> > > all the
> > > same code still in the end.
> > 
> > Hmm, yes. Here I was seeing the separation between the debugfs code and
> > the intel_memory_region code, rather between the latter and TTM.
> > 
> > The i915 driver is currently much "everything uses everything" which
> > IMHO is not really good for code understanding and maintainance.
> 
> Ah yes I agree, we don't have clear seperation of concerns really, and
> debugfs is all over. I got confused a bit with the ->region_private
> pointer and thought you'd be talking about that.
> 
> My experience has been that going over the interface functions and trying
> to kerneldoc helps a lot with this, because instead of documenting some
> major confusion you can just clean it up first. We should definitely try
> to componentize stuff more and not leak internal details all over the
> place.

While we discuss this: For debugfs functions I recommend using drm_printer
and not seq_file directly, it's a nice bit of abstraction so that you can
also dump to debugfs. Or anything else really.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
