Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE53287186
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 11:31:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880116E105;
	Thu,  8 Oct 2020 09:31:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7FFA6E105
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 09:31:08 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id q5so5788287wmq.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Oct 2020 02:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PeB1sgP805FuqpyAYUQZkwGGw4Gpeohm61Lz/BddiM8=;
 b=eNQRuXsqaik04C78NLGlI9fRpVBP92b+H6m3Zvss5pRNwRBlhdbpe3doCv4pFgg8Fi
 f7HVeURl4vq/obLNpLP71a3F18kOH0Bq6uQL4Rqcc3/050gjaXslt38+vmlFtVWhe5eS
 Sn8F8TH2dxLkKnhHh9AkumyZ2wqfIHHpzWSSw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PeB1sgP805FuqpyAYUQZkwGGw4Gpeohm61Lz/BddiM8=;
 b=VUXGBSV/+11y6FCxDsURMk85TQZNBkQdb7BefZxKKYmSL7v5KDZcOObhAaT8F7HUQW
 64RDK0MaqbrkndKM8I91nJkkQAy2yXMYuF8xjUMDzobkhUYhdCe+mKffAFBae69qXENo
 ZmVf5PK3OfYRwlwt4JGbYsyMz2OAO4XM/+vo7IWJ3gUcGkgwLoz4lp9lkYfnwU4CB3O9
 Enbe9a38l9baFsO6mqZI3j7fl2FjvD7lmqo8EZI99e515X8RVK61tk9PvTh6PaR8I/pp
 zVYTOZ4XPdMfc6zzgJGgYsFAVa49a7u4869aj+KPFsXfLCVWlVyTaUPCBEMx1/eh9nPW
 MOZQ==
X-Gm-Message-State: AOAM5339yL1n+nVw+JPuoJ0JNscyRplNLqZ9aghxQQR39sw5UyANmN8M
 lTbWoaP061Y+NfyDdYrMmN9OOA==
X-Google-Smtp-Source: ABdhPJxt9Z5JumYn+6hionj78vGkkMEgeVFvB6U95keg10u7zJFDaCSHd3oAt47q0nCnltzd0FkOzg==
X-Received: by 2002:a7b:cc0e:: with SMTP id f14mr7697949wmh.92.1602149467318; 
 Thu, 08 Oct 2020 02:31:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a7sm6108143wmh.6.2020.10.08.02.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 02:31:06 -0700 (PDT)
Date: Thu, 8 Oct 2020 11:31:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Daniel Stone <daniel@fooishbar.org>
Message-ID: <20201008093104.GE438822@phenom.ffwll.local>
References: <20200925084651.3250104-1-daniel.vetter@ffwll.ch>
 <20200925084651.3250104-2-daniel.vetter@ffwll.ch>
 <CAPj87rMY+A16uPxpa_xv8pTpF3hi5Zwn5CUH8U0X+RVKjii9Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPj87rMY+A16uPxpa_xv8pTpF3hi5Zwn5CUH8U0X+RVKjii9Qw@mail.gmail.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/atomic: debug output for EBUSY
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>, Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 04:48:39PM +0100, Daniel Stone wrote:
> Hi,
> 
> On Fri, 25 Sep 2020 at 09:46, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > Hopefully we'll have the drm crash recorder RSN, but meanwhile
> > compositors would like to know a bit better why they get an EBUSY.
> 
> Thanks a lot, this is super helpful! Both patches are:
> Reviewed-by: Daniel Stone <daniels@collabora.com>

Ok, both patches queued up for 5.11, let's see what gives :-)
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
