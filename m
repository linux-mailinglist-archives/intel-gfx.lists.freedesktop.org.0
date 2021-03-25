Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8541F348DF2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 11:27:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9716EB53;
	Thu, 25 Mar 2021 10:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C615B6EB53
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 10:27:31 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 n11-20020a05600c4f8bb029010e5cf86347so4072664wmq.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 03:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=J9QmkLFIsmfb7unDXOAILf/s95tJqJ36iUz/ihpM+cU=;
 b=OXU5STabybd5D0xSDefacdd9/vBkn+qK2aQBCeR7v/wYjl+XRElLOppgJNJfLp0Sh5
 nk58z9BisMGb3RjPdOHD95R6szT5AoelpIXSpl2CMQ0BDWFtBdqUr0rLAJN//7g41ctB
 uA9zJ5wz8ixkslagO2c/sAABqKJFnLMtMtxBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=J9QmkLFIsmfb7unDXOAILf/s95tJqJ36iUz/ihpM+cU=;
 b=htWf1xsJo8zsx6G4aKwYL9wlDXbvfutaR+RjfALtH+bCGHyLU+mue8rMgJnQGUwHmH
 zCf1JlX4nzq56Tb5YsjsO0nWXaax/pylK8tn/+5pCG4bn2YKP679+9zu8Y+4y6yJs7D6
 WyGsnDtJtkyHiyzzechHC6h0QMuOSWmZ8dxxx4gSaL+wYTpm4EQRNr1WVgis7q3sBg8+
 MWga5FgFb9NkSS3EUkazX9S4ssEZat/6/6VT+43nIClOPr6l1Y7M7IdVhqATyEPSSNL0
 5jg90ifEhQnZWHp4vTFmM5NGeQHD6xiGWmrhXDiLVZ7BnpxoEaygKEeV1dpwyJbXhflp
 bX2g==
X-Gm-Message-State: AOAM5307fkuHpW9HN1T/opbrIzrjfRzSoi68IQY3N3wpIZOdBW8gIqS0
 IQRTxRqictgbSr6HLhCe7dpw7w==
X-Google-Smtp-Source: ABdhPJyxYl7PiuBMfEjzxGJ6xqWEgR+q30f/a2D/cOFcbqQM7Z1dQLSG90dcZRrrNGMrv+MyHmSSVQ==
X-Received: by 2002:a05:600c:224e:: with SMTP id
 a14mr7127809wmm.57.1616668050375; 
 Thu, 25 Mar 2021 03:27:30 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x6sm6070434wmj.32.2021.03.25.03.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 03:27:29 -0700 (PDT)
Date: Thu, 25 Mar 2021 11:27:27 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <YFxlj3MXKxmd9P7T@phenom.ffwll.local>
References: <b7545499-bb11-d516-fe38-33f81c9f58aa@shipmail.org>
 <20210325092316.766063-1-maarten.lankhorst@linux.intel.com>
 <d4f288de-f604-8e2b-4e9a-ffb346ab0859@shipmail.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d4f288de-f604-8e2b-4e9a-ffb346ab0859@shipmail.org>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix userptr so we do not have to
 worry about obj->mm.lock, v8.
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 10:55:11AM +0100, Thomas Hellstr=F6m (Intel) wrote:
> =

> On 3/25/21 10:23 AM, Maarten Lankhorst wrote:
> > Instead of doing what we do currently, which will never work with
> > PROVE_LOCKING, do the same as AMD does, and something similar to
> > relocation slowpath. When all locks are dropped, we acquire the
> > pages for pinning. When the locks are taken, we transfer those
> > pages in .get_pages() to the bo. As a final check before installing
> > the fences, we ensure that the mmu notifier was not called; if it is,
> > we return -EAGAIN to userspace to signal it has to start over.
> > =

> > Changes since v1:
> > - Unbinding is done in submit_init only. submit_begin() removed.
> > - MMU_NOTFIER -> MMU_NOTIFIER
> > Changes since v2:
> > - Make i915->mm.notifier a spinlock.
> > Changes since v3:
> > - Add WARN_ON if there are any page references left, should have been 0.
> > - Return 0 on success in submit_init(), bug from spinlock conversion.
> > - Release pvec outside of notifier_lock (Thomas).
> > Changes since v4:
> > - Mention why we're clearing eb->[i + 1].vma in the code. (Thomas)
> > - Actually check all invalidations in eb_move_to_gpu. (Thomas)
> > - Do not wait when process is exiting to fix gem_ctx_persistence.userpt=
r.
> > Changes since v5:
> > - Clarify why check on PF_EXITING is (temporarily) required.
> > Changes since v6:
> > - Ensure userptr validity is checked in set_domain through a special pa=
th.
> > Changes since v7:
> > - Chane kvfree to kvfree().
> =

> v8: Change "Chane kvfree to kvfree()" to "Change kfree() to kvfree()" ? :)

Luckily the fix I've done got that part right :-)
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
