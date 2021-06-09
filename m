Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 141793A1807
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 16:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865AC6E420;
	Wed,  9 Jun 2021 14:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6666E420
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 14:54:13 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id c5so25785334wrq.9
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 07:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=CLK+ljtm5w4gBiYKgr8EQqyQuRm+0J5cmvR4suUCFEI=;
 b=iLj9Q7xwhDFX12eJGc6TyOzHuwRuGT+U2rZwcyt3aIz/e0jkO53ibWrdatj88s68pn
 jHTpWS/i9jANsFWQjlzz/Yye22j2+Apj4/fHOqHc4Qm4Xs8ZoLgSOy4iCSgJ0a9S8oUc
 ohubPAyB9oCFDs2btO5+S3RY77efIIevIFwTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=CLK+ljtm5w4gBiYKgr8EQqyQuRm+0J5cmvR4suUCFEI=;
 b=pudOE3cvd9aexo9M/MJo9D4XTmMEuwhpZ2DfUq1H77/Moj3bm+423z5l9jPCbDzeXi
 cy5gTID7jh3/mj1NBHpyYekPR/8jDRE3m4ir+Bd7p7r1YSnZouFnLi5JOY0O0nAw96gS
 BGTuJQEHXKPvZ0zzysZz0raA7uyBaiZwO3KnqMQ6TId4kMJZEZlmJ+jmS8W53/quCZQI
 8KbWNjK/HsCT3DNb/VsCYSXt7JKX22NBvEtpH3/prZIlPbs+fviK9e1Eu2jAVck9icIM
 anImDJ+w+xXAJ0FIvxwwCRIzYC06lCQkd01L5YbXnfU0xSP94QT7aVeOdOwP1KUwGrf5
 ROMA==
X-Gm-Message-State: AOAM530OamJkoumVi3/UT6VpF2fvbUiKFVBRIHkopG9/O+4z8UcVcWZd
 uqfhXWnVMo80J0P6uiTcAA7LS5WTBZchZw==
X-Google-Smtp-Source: ABdhPJzL/RDtqunEEcuDF0SoWdQfET+F04iGVSihasxm/ws/rH8G7pS1fTe+M0lAZYbMvkt2SQLfcg==
X-Received: by 2002:adf:e54f:: with SMTP id z15mr202216wrm.141.1623250452461; 
 Wed, 09 Jun 2021 07:54:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n7sm5937862wmq.37.2021.06.09.07.54.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 07:54:11 -0700 (PDT)
Date: Wed, 9 Jun 2021 16:54:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <YMDWEluN8WEke/vF@phenom.ffwll.local>
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <YMCqm48rZIKLYk/s@phenom.ffwll.local>
 <9f38fc28-15fb-2736-ba01-503821fdbe54@linux.intel.com>
 <4d570a5b-0ea7-71ab-5082-e67f0cd668a7@intel.com>
 <1cd6b04d-8928-14b3-a63d-c9ac2e81fcca@linux.intel.com>
 <99ff0d9f-9bd4-c27d-45a5-a66d2ad9064f@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99ff0d9f-9bd4-c27d-45a5-a66d2ad9064f@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH v2 0/9] Prereqs for TTM accelerated migration
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 09, 2021 at 04:35:57PM +0200, Thomas Hellstr=F6m wrote:
> =

> On 6/9/21 3:08 PM, Thomas Hellstr=F6m wrote:
> > =

> > On 6/9/21 2:20 PM, Matthew Auld wrote:
> > > On 09/06/2021 13:16, Thomas Hellstr=F6m wrote:
> > > > =

> > > > On 6/9/21 1:48 PM, Daniel Vetter wrote:
> > > > > On Wed, Jun 09, 2021 at 08:34:27AM +0200, Thomas Hellstr=F6m wrot=
e:
> > > > > > A couple of patches from Chris which implement pipelined
> > > > > > migration and
> > > > > > clears by atomically writing the PTEs in place before performin=
g the
> > > > > > actual blit.
> > > > > > =

> > > > > > Some ww utilities mainly for the accompanying selftests
> > > > > > added by Thomas,
> > > > > > as well as modified the above patches for ww locking-
> > > > > > and lmem support.
> > > > > > =

> > > > > > The actual hook up to the i915 ttm backend is being worked on a=
nd not
> > > > > > included yet, so this is considered to be an early
> > > > > > review opportunity.
> > > > > > =

> > > > > > v2:
> > > > > > - A couple of minor style fixes pointed out by Matthew Auld
> > > > > > - Export and use intel_engine_destroy_pinned_context() to addre=
ss a
> > > > > > ls=A0=A0 CI warning / failure.
> > > > > Just to check my understanding of the plan: These are the new win=
dowed
> > > > > clear/blt functions which we plan to use everywhere, because
> > > > > less nasty
> > > > > locking implications? And the clear/blt we currently have in
> > > > > upstream will
> > > > > be replaced?
> > > > =

> > > > Yes. These are for LMEM clearing and migration. It looks to me
> > > > like the other ones we have in upstream are actually unused
> > > > except for selftests. We're actually using CPU clearing for now.
> > > > =

> > > > > =

> > > > > If so would be nice if this patch set includes that
> > > > > replacement work (I
> > > > > think right now all we have is the clear for lmem),
> > > > > including updating of
> > > > > selftests and stuff like that. Just to avoid having two ways to d=
o the
> > > > > same thing in the driver.
> > > > =

> > > > OK, I'll have a look at stripping the existing code. If we need
> > > > it moving forward, we can always re-add.
> > > =

> > > Some low hanging fruit would be all the client_blt stuff which can
> > > for sure be deleted now.
> > =

> > What has the client_blt stuff been used for?
> > =

> > In any case, I need 25 commits for commit access to be granted.
> > =

> > /Thomas
> > =

> > =

> Series on trybot now. It's the dg1 live memory_region selftest that chang=
es
> sligthly to use the new migration fill blt.

Thanks a lot for taking care of this!
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
