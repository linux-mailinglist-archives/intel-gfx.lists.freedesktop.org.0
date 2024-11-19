Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5451B9D2971
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 16:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15D410E2B3;
	Tue, 19 Nov 2024 15:18:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.b="GVuxuRIZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F3010E0C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2024 15:18:44 +0000 (UTC)
Received: by mail-qk1-f179.google.com with SMTP id
 af79cd13be357-7b15d330ce1so309306085a.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2024 07:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1732029524; x=1732634324;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=X6DUOSITFvhCPuorRuwvg9eBfMG17CCCIcR40Q4q4q4=;
 b=GVuxuRIZnMWAj1YwerC1hj6C6G53/iiH9fMkGpA2oNCuBaTkB+3iTMMXlMM1R9XegQ
 kriwO1yp58iJ4fgTD/SmTmScqTFr9JaWuP9zE5PG35IYJ4sdlD9NxykNtVTkKB+SclMf
 Ih6xtquFb2hPjQYcHcR28JXdMRNEe0Dr1ghRCO3sXCCo9IWg0QQZP2zW2DbaJQ9Zs3Zc
 ThCH5jiaUWVBJIUwba0Vw/awvL0Unk5LvN6V9WjB1F4v0YF6T69lz5dpxO+YU0ea7vZA
 mufhfNtZQq/gBPZzky5uLC8OM3DdcRkfqY1fu8yYVJ9z3j8+L43i7znNUr+kR2+Phlhw
 ML2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732029524; x=1732634324;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=X6DUOSITFvhCPuorRuwvg9eBfMG17CCCIcR40Q4q4q4=;
 b=ovi58y54AL6IXpDx22stQTrtCLYzuvxGgiKaFUPQj6VaGjsjvZP+IC4922dP4VwSz9
 MsA2SNd3wG9xaL7iuIIf9ABgxpQyj+m9I9qN0uO4eAhU+5Kj4B6vlaeNmoSS2AKx3OS1
 Kesus6vL6p6l4KWQyYFizba7BZUFuLV0bx0AqD8UtJHyNmhrGNkKjLc+MsrIQRaoPEx9
 Vu7h2p1Z+we7Yi2/uWQ1PNPBBGfk6AFpL++4McWZMcOQ0oKjF0NZlyPID8XdbnCAcj/f
 9H/Li9V8dvuP9IGaCWKrxBnMl7g8vOZRiSHKHb535EOocLSst8TXFosgwJOtaNRftOSX
 5ICw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXDOHTCSN/bZ9On4ikxqCQISCMHapjBaEFbBtWuFcwsG4bcvUPcpLJeHWlJbTlKqMd1XdHYqJFEfbc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzn9BaBiMWmAA+6BI8SHMCVhwc5HuuSNgAbNM5gRUxqYXiVEx4c
 ncjwz/Z7wwWK9bF23sFzLWgOQjDCMIBDYO9cuABQPCFkfvVrVJiI6cjGnXIpRt7Th3+KkhcvvqS
 oyXCE713Y0t8fU4HM0h+CZ+TiSyfgyX4U8KquYg==
X-Google-Smtp-Source: AGHT+IFWSEkItI91noNnedDuNTjILR7p5IbiPGX5mwixZKPZJJKDlrY91BlgB338dRv3VWF0LKhfz+aaLzphyHM4xV8=
X-Received: by 2002:a05:6214:319f:b0:6d1:9e72:596a with SMTP id
 6a1803df08f44-6d3fb88bf7amr217362246d6.37.1732029523710; Tue, 19 Nov 2024
 07:18:43 -0800 (PST)
MIME-Version: 1.0
References: <20241119104521.575377-1-arun.r.murthy@intel.com>
 <CAPj87rOO58Q1jBO3QdygzuSZpPeabNdBMeXXd7RhNWVOUFisTw@mail.gmail.com>
 <IA0PR11MB7307C3B8CB76E54C122A5AF3BA202@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307C3B8CB76E54C122A5AF3BA202@IA0PR11MB7307.namprd11.prod.outlook.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 19 Nov 2024 15:18:32 +0000
Message-ID: <CAPj87rMa7x-GipVVrj5-UVQ6RxaD0dNv9PTNQnv2sqLxU3vkCw@mail.gmail.com>
Subject: Re: [PATCHv5 0/8] Display Global Histogram
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
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

Hi Arun,

On Tue, 19 Nov 2024 at 14:39, Murthy, Arun R <arun.r.murthy@intel.com> wrote:
> > On Tue, 19 Nov 2024 at 10:55, Arun R Murthy <arun.r.murthy@intel.com>
> > wrote:
> > > The corresponding mutter changes to enable/disable histogram, read the
> > > histogram data, communicate with the library and write the enhanced
> > > data back to the KMD is also pushed for review at
> > > https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3873
> >
> > The Mutter MR you linked does not actually write anything back to KMS.
>
> Yes, writing the IET LUT data back to KMD using a crtc blob property is pending in mutter and is commented in the mutter MR.

Sure, that's fine, but until the actual userspace exists, this cannot
be meaningfully reviewed.

Cheers,
Daniel
