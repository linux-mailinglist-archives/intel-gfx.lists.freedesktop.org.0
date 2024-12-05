Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DAA09E5EF4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 20:39:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6BA010EF9D;
	Thu,  5 Dec 2024 19:39:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="AovqSWGK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE02B10EF9B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2024 19:39:26 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id
 38308e7fff4ca-2ffd6af012eso13963651fa.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2024 11:39:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733427565; x=1734032365; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=V/JR6tqjUEHZEvMHz1vJRKFUVCynxiJpP8/fbgMYoVQ=;
 b=AovqSWGKpHozLF44SFEo2JIQ5s0auo9GWdU7PPYiFTXEBmwDsVhnvsGqjRqiw4i7rt
 1xUV3ienL+/EQ+rFsMV+dT96cGH3m0xYX/zKtLbeXkpK9HDYYa9oRwu72A1nVaMg39eY
 nxN4rOf8jCu2/mfG/kuGsR2zIf8h/ZHepTnRknSq0sG6CYopjVjQHd/wJkp5XjTbd+BE
 xy9xrMonGcvG2CDHbHfcluMrXpoS8h7Isszgs9JmPhw/zNArPaQ+MPR78o3u3WGE9ifP
 fnWtYqXPkanE61BJHmEED9Gu9aQJP2AXlU7wS2MUhG+2fg2jMLCLEsWqyxb8IecAG2xD
 TPaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733427565; x=1734032365;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V/JR6tqjUEHZEvMHz1vJRKFUVCynxiJpP8/fbgMYoVQ=;
 b=DaVh7y1tzZYSWSWWX3GaXHyiTOVCs9/0qtd6OIfMI+OSfuU2iDCvFUcMsk3/wgmasB
 q4jz4zbMHqK+0/nsxxA6hL+XMG/KQIThaZXtVXLf8cq74tsCnyqQsnyYKoe/h6WXaf8Q
 mDq9EKokDqRII8b16gVdJWH7FCzgOHIuysHRqW7Aw5CSzW+b+8UjqbeAaLB+wpuyXNPz
 qWL/JxJ5u01CdoOWfnrAaa1AkNcUy5K2KYASHcnvdPCTt3jnllCeNtr658pRAvQSbGFo
 +gIiQs8WCuuume76nj5YFSKsIokEec6moeep6P79uCjgGeGPumXpyYb5wZQkktsM7KGo
 esOQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXdIsgq6J/DGe3gcdyirS0qKyAPtCwm41q/OA+FTLaQTfPUapvAQsogxzRI+tQl++GOTRgF5AR8n2g=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxa0zqJ86tDeg35vXCzJiM24zCdBr06AxePJUTwfKZ8wQohRCKF
 zIDWIybcQqjDK5yfviz62pwVHm9TVW7rBMs18RdEiQuIbMsPXW1/sm0r03KAL6VF8xUmd2odrDN
 /
X-Gm-Gg: ASbGncvIyr/p8RgAsd/f9S09c3tlc/QInIYspeqpgJJnf/asLZ/xNy0GopOiTNr7bX0
 4gl5uEsA3UIU2m6AgLkOHzfYIBDDe2+SlXaiurUrHqoq7Joisy2YwM3pewTqR7fWbNt8O71cXM3
 35KZBRKKxgoSovnpmrZjV++h/61Pl7UgX8NgD3jygHJZAMnwtZZBlYsX+oyTFzIxlqmy50E+kQ5
 dwYtGt+RqJTAIJ8hb+jePIYBNkqE4L65AaeaKSI7CNg0mhfyOl/979gcqmiP4SFat4l08XKorOm
 A0DO/3X3Duc72z0BQjAjW6OOiM3aog==
X-Google-Smtp-Source: AGHT+IFp4xulhZ02HEDAfcow6EI4I5Rc4PDVSiHBDYKEjN3lJ/as2VygnDosiTN5ElT9z0g8pyhVNg==
X-Received: by 2002:a2e:8088:0:b0:300:2c32:4c39 with SMTP id
 38308e7fff4ca-3002fc6445fmr493911fa.32.1733427564979; 
 Thu, 05 Dec 2024 11:39:24 -0800 (PST)
Received: from eriador.lumag.spb.ru
 (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-30020dbbd97sm2852951fa.65.2024.12.05.11.39.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2024 11:39:23 -0800 (PST)
Date: Thu, 5 Dec 2024 21:39:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, 
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCHv2 01/10] drm/crtc: Add histogram properties
Message-ID: <fev637ue37cbc5bstvqqvstserp75khqewpof3pc4loshnpghl@vp33ww6i6rdn>
References: <20241204091456.1785858-1-arun.r.murthy@intel.com>
 <s3gkb36ga2pxmxocrhcjp5pcgbewx4x3joiyrpld3th4r4fvyi@rkpgbu4ekst3>
 <IA0PR11MB7307F22883ACF3AD873C3697BA302@IA0PR11MB7307.namprd11.prod.outlook.com>
 <CAA8EJpp4HjyEL9XSLzXr6tG7+8M2FmZO1S2WrLXmP64J_aKs-w@mail.gmail.com>
 <DM4PR11MB7302BD8409DEC33EF2F1B0BFBA302@DM4PR11MB7302.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM4PR11MB7302BD8409DEC33EF2F1B0BFBA302@DM4PR11MB7302.namprd11.prod.outlook.com>
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

On Thu, Dec 05, 2024 at 04:29:55PM +0000, Murthy, Arun R wrote:
> > > > -----Original Message-----
> > > > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > > Sent: Wednesday, December 4, 2024 5:17 PM
> > > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org;
> > > > dri- devel@lists.freedesktop.org
> > > > Subject: Re: [PATCHv2 01/10] drm/crtc: Add histogram properties
> > > >
> > > > On Wed, Dec 04, 2024 at 02:44:56PM +0530, Arun R Murthy wrote:
> > > > > Add variables for histogram drm_property, its corrsponding
> > > > > crtc_state variables and define the structure pointed by the blob property.
> > > > > struct drm_histogram defined in include/uapi/drm/drm_mode.h The
> > > > > blob data pointer will be the address of the struct drm_histogram.
> > > > > The struct drm_histogram will be used for both reading the
> > > > > histogram and writing the image enhanced data.
> > > > > struct drm_histogram {
> > > > >     u64 data_ptr;
> > > > >     u32 nr_elements;
> > > > > }
> > > > > The element data_ptr holds the address of the histogram statistics
> > > > > data and 'nr_elements' represents the number of elements pointed
> > > > > by the pointer held in data_ptr.
> > > > > The same element data_ptr in teh struct drm_histogram when writing
> > > > > the image enahnced data from user to KMD holds the address to pixel
> > factor.
> > > > >
> > > > > v2: Added blob description in commit message (Dmitry)
> > > >
> > > > No, it is not a proper description. What is the actual data format
> > > > inside the blob? If I were to implement drm_histogram support for e.g.
> > > > VKMS, what kind of data should the driver generate? What is the
> > > > format of the response data from the userspace app? The ABI
> > > > description should allow an independent but completely compatible
> > > > implementation to be written from scratch.
> > > >
> > > The histogram is generated by the hardware.
> > > Histogram represents integer which is the pixel count and when it
> > > comes to the IET(Image Enhancement) to be written back to hardware its
> > > again an integer, pixel factor.
> > > Is this the information that you expected to be added or something else?
> > 
> > You are defining the interface between the kernel and userspace. The interface
> > should be defined in a way that allows us (developers) to understand the data,
> > make a decision whether it fits a generic namespace (which means that other
> > drivers must be able to implement the same interface), it fits namespace
> > specific to i915 / Xe (then we will have platform-specific properties for the
> > feature that might be implemented by other platforms) or it doesn't fit
> > anything at all.
> > 
> Sure will add the above information in the commit message and also in the kernel doc.
> If there are no other review comments, then I will push the next version of patch implementing your comments.
> 
> > So the documentation must contain the specification of the binary data inside
> > the blobs. An IGT, modetest or some other compositor must be able to parse
> > the data and generate (some) response without using your library.
> > 
> IGT patch can be located at https://patchwork.freedesktop.org/series/135789/ This include test with and without library.
> The corresponding compositor changes can be located at https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3873/diffs?commit_id=270808ca7c8be48513553d95b4a47541f5d40206

I know. But that's not a replacement for the documentation. Can I
implement an alternative implementation without using your library?

> 
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
With best wishes
Dmitry
