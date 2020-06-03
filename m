Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEAF1ECDFD
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 13:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545CC89AB3;
	Wed,  3 Jun 2020 11:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754F089AB3
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 11:07:39 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id r1so697885uam.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 03 Jun 2020 04:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pTvyoEMtocb1XnI8Xj+dz9ZoEqZRoX1YcaRMMa8N9l4=;
 b=X9WCYtB6+czfwdJef2SS1Cimfzv43aAA038fb+CEvPG64tWYf4e422F/n07HEVjsai
 JSi7JBET8D5XE+68Pyp1pF97BBvBgnQq9nOjG5WRfkrsuqJjtWiM145ILzDss4i8o5Gp
 TqRbB1PHsOVlgvy0colY8NoKrYG/nUuoTKxPM6FlzGQn/IcTfjADD0+enTvnlJ52Ayvk
 nmUcObBhXYMtEH/np9d62ozXnkqV2mPACyqFkfeCXiOSraIsl9eDKoEFCwk5j6UjEPde
 kREzsBMR6j6SypEedpBEKiqVys/lt2uJHRLd5LlTCq+sDXq6R/oAxukEBykGwOqVWJdK
 GZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pTvyoEMtocb1XnI8Xj+dz9ZoEqZRoX1YcaRMMa8N9l4=;
 b=pbnmrMgw8kG4e1NqtUGzihWs6oMXsdBk3rJR1ppP++xvVZX/Y0ltA5TZVgPPLS0ief
 2ZaQVW0/EEUmMicQ1vQafWT6Nf5jo2cPPhGx/BbKU4C0g7AGUfuXvXjXyuUX1HMq76MT
 axo3/FpETC+drMWVsVFTOg/8ZsED2C2LXqRDN2O9jPm/Mt7QercMvDHp2h8KSj34WSw7
 uOzA+QRsMHssvkuqRii+UQhtiw6yadOqNNHVN92ltm8AAni8UoxRmh6rF17W53NzpXER
 SGR/FjHb+20D/feoSBKG7qL/GtlqwQzPkkL66sfoABAtZqXFh4euXR7yepMOMBNL6Com
 LWBg==
X-Gm-Message-State: AOAM5307mBZ0VvH+MkcXLil4ShWwqHINXNdBl6sQtLTvEvYQwncHvijC
 9DnDQZ+p1tWMYprPD9du632CI+CGxBGyNv+HQka7KDIa
X-Google-Smtp-Source: ABdhPJxEvoiGMwhxrRcgorGWOW4iZ8zWK0rrK3GQA+ljBj/2un3X3phX/u+/+gp2s0wJMHoKNXTgDMZKArx7c9pmfJY=
X-Received: by 2002:ab0:186d:: with SMTP id j45mr21868293uag.104.1591182458466; 
 Wed, 03 Jun 2020 04:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200603104657.25651-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200603104657.25651-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 3 Jun 2020 12:07:11 +0100
Message-ID: <CAM0jSHNLTTkN8t2MsFKC9LRkN5-tsmnTzoqQRgy4cves=Z5Ywg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Suppress the error message for
 GT init failure on error injection
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 3 Jun 2020 at 11:47, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If we injected an error (such as pretending the GuC firmware was
> broken), then suppress the error message as it is expected and our CI
> complains if it sees any *ERROR*.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
