Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FAF7FB94A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9A710E4DE;
	Tue, 28 Nov 2023 11:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2e.google.com (mail-vs1-xe2e.google.com
 [IPv6:2607:f8b0:4864:20::e2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA1A10E4DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:19:34 +0000 (UTC)
Received: by mail-vs1-xe2e.google.com with SMTP id
 ada2fe7eead31-462abe45730so1830283137.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 03:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1701170374; x=1701775174;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=bCnoZKgpcEhOGCM5lZjXBdwz27cftHLpr/W77wEAkbk=;
 b=BR4lab2n/4GEsXR2CNzxLKS6nH26h/mFjTL6+vaHRmREDMsWo7P/f6EigQpNB0QXWz
 N7nESwf1y9PqTxSRo5AUPDNckUjCzAEQKOrKodg7asvaWdIVOOOTyCKXhcr1MgrNz9V8
 nefzRvCXVw7z3LpwGsqfmrSSplOL7z1d+Eya8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701170374; x=1701775174;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bCnoZKgpcEhOGCM5lZjXBdwz27cftHLpr/W77wEAkbk=;
 b=lLs7TPuV9Hhmfq3b7Q6JQjVLzHmdOU5Ue/k3B8tok0W6Pka5S8R+HTQgpvG/+mzjoP
 9P1S2E5Q6qi+kU9HyaJswCBKNhAGxHWr+Zxwt5ESDXPBXfOiKFPgDrcjZ2kObvpwRJAc
 LV5DwTelNmXv/G5ZDe3m6Cb7sHJicIcyJ10PxXAxG5Do2YgYU/Zk7/LvfgtDX25rrJPZ
 y00AD3IcGgCN7FI35ee9puFDf5oksJ6SsEDXdfZBIBqPFhpcaTi1EHsTUwJpRFDJ38Ni
 t0UJmbF+/WkcMqdQgB0Ye6kds8yPlkHawx7600u/72VK2dqE/WV1ytE7KUHGPqvlXkDd
 rElA==
X-Gm-Message-State: AOJu0YzgT5yAbPFEa9z4zrly8lxVztkC/Oj5Gmvv3f0Vmxiuh7Nyfhu5
 LGqRxq1hfjBISbxY1kJsGLg/UQ==
X-Google-Smtp-Source: AGHT+IH87Ag0JlT90Hx66H+qK+YLeNQoRQwoQQDAx90SCLVYeMakySpUwE7/cgjUOuOsUEPWnqz5xw==
X-Received: by 2002:a05:6102:34f5:b0:45f:bab9:4414 with SMTP id
 bi21-20020a05610234f500b0045fbab94414mr16425679vsb.24.1701170373973; 
 Tue, 28 Nov 2023 03:19:33 -0800 (PST)
Received: from google.com (193.132.150.34.bc.googleusercontent.com.
 [34.150.132.193]) by smtp.gmail.com with ESMTPSA id
 dw12-20020a0562140a0c00b0067a1c7d8e98sm3852798qvb.41.2023.11.28.03.19.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Nov 2023 03:19:33 -0800 (PST)
Date: Tue, 28 Nov 2023 11:19:32 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZWXMxLPIwXgwbEkz@google.com>
References: <20231105172718.18673-1-pazz@chromium.org>
 <ZVQ3d8FFqxsy0OX7@intel.com> <ZVfw3ghfBLdHB7uk@google.com>
 <8dd6f4da-dcc9-4ea3-8395-bf048b0dbc93@intel.com>
 <6f08cfee-a60b-4f6e-b69a-20517c563259@intel.com>
 <ZWVizpRkf5iJ2LnQ@google.com>
 <51baffb9-2249-4080-a245-eb1e03c02b9b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <51baffb9-2249-4080-a245-eb1e03c02b9b@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix phys_base to be
 relative not absolute
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
Cc: Subrata Banik <subratabanik@google.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>, intel-gfx@lists.freedesktop.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>,
 matthew.auld@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 Marcin Wojtas <mwojtas@chromium.org>, Drew Davenport <ddavenport@chromium.org>,
 David Airlie <airlied@gmail.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 28, 2023 at 12:12:08PM +0100, Andrzej Hajda wrote:
> On 28.11.2023 04:47, Paz Zcharya wrote:
> > 
> > On Mon, Nov 27, 2023 at 8:20 PM Paz Zcharya <pazz@chromium.org> wrote:
> > 
> > Hey Andrzej,
> > 
> > On a second thought, what do you think about something like
> > 
> > +               gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> > +               gen8_pte_t pte;
> > +               gte += base / I915_GTT_PAGE_SIZE;
> > +               pte = ioread64(gte);
> > +               pte = pte & I915_GTT_PAGE_MASK;
> > +               phys_base = pte - i915->mm.stolen_region->region.start;
> > 
> > The only difference is the last line.
> 
> Bingo :) It seems to be generic algorithm to get phys_base for all
> platforms:
> - on older platforms stolen_region points to system memory which starts at
> 0,
> - on DG2 it uses lmem region which starts at 0 as well,
> - on MTL stolen_region points to stolen-local which starts at 0x800000.
> 
> So this whole "if (IS_DGFX(i915)) {...} else {...}" could be replaced
> with sth generic.
> 1. Find pte.
> 2. if(IS_DGFX(i915) && pte & GEN12_GGTT_PTE_LM) mem =
> i915->mm.regions[INTEL_REGION_LMEM_0] else mem = i915->mm.stolen_region
> 3. phys_base = (pte & I915_GTT_PAGE_MASK) - mem->region.start;
> 
> Regards
> Andrzej
> 
> 

Good stuff!! I'll work on this revision and resubmit.

Thank you so much Andrzej!

