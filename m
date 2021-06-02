Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B4B3992B5
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 20:40:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0901E6EDBB;
	Wed,  2 Jun 2021 18:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6043A6ED0B
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 18:40:42 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 n17-20020a7bc5d10000b0290169edfadac9so4375683wmk.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 11:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=XCbkv2ZeII/q7rgZZjd/TMzqZkv1dniRLCwHb/ruWrM=;
 b=LFIg+N5X1BpgOwrSynApuVQQ8MUlyc70PHTHE0G/VC8tc2+KFIoU3EeMYLkm09GfyU
 J7vnz9g35akOJni8TX/+bf/TJND0lb+AtxzjWJ07IjjZ1pMLOfOXa4XCC7FtsFmfIuKb
 uW04jHBAY/OzdiNwfSBkP2Wr7U+S2mfM+y+ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=XCbkv2ZeII/q7rgZZjd/TMzqZkv1dniRLCwHb/ruWrM=;
 b=XkUTTvAX6YlKztFXgUa0VHobUHFriR3722InvaDw0BypZCx3CCatEhgEEcxd/Cd2SV
 Rbi90Ct7O4S33UpwlLTKwFN0ALwXM3BQCfNFY97MzfxIWwwwQoj0OQNknaTb5Faa6ADC
 ZC1Vw65nwrY512ZDQdaSVsZ+uocdxv3DpJYfaYfHDkMAlxOQxD6mkcf8BSlheUqOj34O
 pV1V4Zxu1SW0Q8Gw8bXub1Kza+fsizPDu1InLwmtnnJQxbSDvSA7GQMk/Km3h/j0rDdV
 8OF1fCFtuvFGv35ncf/zmGDSRwx5Yltrq69GeSl02HHWdiITrDzPCLJOU1sxu4gsXU2C
 Te8A==
X-Gm-Message-State: AOAM531OHVHONT+SCPY2yPC2MIIRDO1pfqdrnYtrKsSfCoV5yPWA6yuC
 ijQZqI3uZ9mDb4aozZcnde8iyg==
X-Google-Smtp-Source: ABdhPJyzL8BuRJ9j+Q0W3Op82rXamCB1aKUpBz0VNJ+19h0qzvS8Xs/52XLazljik2mhjBqGkiK/FA==
X-Received: by 2002:a7b:cbc2:: with SMTP id n2mr33387026wmi.69.1622659241081; 
 Wed, 02 Jun 2021 11:40:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q11sm523267wmq.1.2021.06.02.11.40.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 11:40:40 -0700 (PDT)
Date: Wed, 2 Jun 2021 20:40:38 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YLfQplT8H6PdCCLX@phenom.ffwll.local>
References: <a29eaef9-2457-1393-6757-40956811daf8@linux.intel.com>
 <a6965639-acf6-b5f5-482c-2715e7fa69d4@amd.com>
 <b4c18e45-98c9-ce7f-b22c-c00c795844c2@shipmail.org>
 <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <baf4f828-76c8-6b47-5bba-9b9c8e7b307b@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] Merging TTM branches through the Intel tree?
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 02, 2021 at 11:48:41AM +0200, Christian K=F6nig wrote:
> Am 02.06.21 um 11:16 schrieb Thomas Hellstr=F6m (Intel):
> > =

> > On 6/2/21 10:32 AM, Christian K=F6nig wrote:
> > > Uff I'm just waiting for feedback from Philip to merge a large patch
> > > set for TTM through drm-misc-next.
> > > =

> > > I'm pretty sure we will run into merge conflicts if you try to push
> > > your changes through the Intel tree.
> > > =

> > > Christian.
> > =

> > OK, so what would be the best approach here?, Adding the TTM patches to
> > drm-misc-next when your set has landed?
> =

> I think I will send out out my set to Matthew once more for review, then
> push the common TTM stuff to drm-misc-next as much as possible.
> =

> Then you should be able to land your stuff to drm-misc-next and rebase on
> the end result.
> =

> Just need to note to David that drm-misc-next should be merged to drm-next
> before the Intel patches depending on that stuff land as well.

Other option (because the backmerges tend to be slow) is a topic branch,
and we just eat/resolve the conflicts in both drm-misc-next and
drm-intel-gt-next in the merge commit. If it's not too bad (I haven't
looked at what exactly we need for the i915 side from ttm in detail).

But also often figuring out the topic branch logistics takes longer than
just merging to drm-misc-next as the patches get ready.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
