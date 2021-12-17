Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D54B047892E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D658112158;
	Fri, 17 Dec 2021 10:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C39F112156;
 Fri, 17 Dec 2021 10:47:25 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id m25so2075839qtq.13;
 Fri, 17 Dec 2021 02:47:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9IAPuzXLIy4MIjIxFaaTxkbGuQSonaB9tUGDxk27MHk=;
 b=KGEGAVQeBvVbihwzNEM/GavPdtKfQfFg55v2xsgg5t6l1Di27QHemD9pCfoDUmtxL6
 3G1ndEODqmDLXmEt1a6tS4/13Rev2O/fXbOLJ9eMdT8yvjBaIRCY8DhRG110gA1ZGZiE
 e6/jXYwfIvygcKNZCw1U9CWgjcjeo+T8QKWz/9cm4bwY8+peSffRxarglbph52N3LRjM
 o5mG/47aq8TsZC+ce4+BzkHG/OglsADkMP8jwxAzz4KHPlBL3N9Dt8L2q12tEUkQAmIu
 rXrGVfSE4OoI/p4zJX78df690FNtgnlgm8N/P+HqRbfo6WKNZbjmYM4/KRMCMPwFAhnY
 R7bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9IAPuzXLIy4MIjIxFaaTxkbGuQSonaB9tUGDxk27MHk=;
 b=TvamJxCj+gSSdndYkETFv99wwHJ8WKbRFtAfBPN/+LmffotyvvCfYK+rvVz8qUVT+6
 xY0NHk0j0CvTCW1Coc7Uq1mNOMeyy0N39DIZFGYIw+AUqrNY0979Ku3kD0EJFoOHPIAW
 R7Ph4Fw0xuNENrObTJYzJJSvVH8BEXw20caLyKgA/l8LQPYm2A0U3nHNbzR6Op/DnZku
 5AqriTiBKT1A90LQ7on2MC5nznGYejm5ZSgYKI2sEVng4QBRRlb2JCfk8rr3mJJ0ujEf
 efDdHMnjmhWZVQ7SlQA399mOHSGRv2AUCF8Sh7Y3E2Zmnv9XH/5qPk7TG5ADuwOuX04b
 kmvA==
X-Gm-Message-State: AOAM531iOumYhOYiTXYwiHHgnfW1PZPY/rc1j4VPOoULafq7XRFiq5z3
 OkxvZ08A5oxxcG69zYeBDcLuTcCCRVQz4Uowy5L6oZcG7R4=
X-Google-Smtp-Source: ABdhPJxcNXWKHHdDypSpsuitqEDnU4cOOiW4/UXdMVHt1/YIP2zuVZcWQPiYC43kKsdPv2QsDGhcG/oW8RJ7OHvNXtI=
X-Received: by 2002:ac8:7d07:: with SMTP id g7mr1689987qtb.364.1639738044921; 
 Fri, 17 Dec 2021 02:47:24 -0800 (PST)
MIME-Version: 1.0
References: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
 <20211216142749.1966107-6-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211216142749.1966107-6-maarten.lankhorst@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 17 Dec 2021 10:46:58 +0000
Message-ID: <CAM0jSHP-anQCsKumLK8vD+tOnAKGDNBK=aG8Fqo_2qfWxogQHQ@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH v3 05/17] drm/i915: Force ww lock for
 i915_gem_object_ggtt_pin_ww, v2.
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 16 Dec 2021 at 14:28, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> We will need the lock to unbind the vma, and wait for bind to complete.
> Remove the special casing for the !ww path, and force ww locking for all.
>
> Changes since v1:
> - Pass err to for_i915_gem_ww handling for -EDEADLK handling.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Deja-vu,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
