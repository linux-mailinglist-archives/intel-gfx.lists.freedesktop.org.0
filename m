Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150BD9E7FFB
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2024 13:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABAD610E22C;
	Sat,  7 Dec 2024 12:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="BG3tLMGs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E03610E22C
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2024 12:59:19 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id
 2adb3069b0e04-53e3a227b82so733066e87.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 07 Dec 2024 04:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733576358; x=1734181158; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=ljXro3CUSDnlyB+6+WZ7VT4s5tTUnVQ1S4YV7erXPLE=;
 b=BG3tLMGs/zJN1ESGNKLGGyUTVzcJ01bLLvXwBmY5jPtbHn1R4Dqj9vSNURGEqPzsw3
 Ze+BhYbktG8flrEsSHh7IRIQzWjtPSqCF3UfHXtutZQi5QIFYxWp1inWaTReSbDRgdAi
 mbvtyaLeqHhgFmKyvTJg1ErlEKs9WETwkKsCatl6TaZCzZLnQ3krwIGjlFRylVjO5EMq
 0LsUSNwa2HNo4ll3SwoX5q8/nbyIYsYYW9vsvfLva9dbAMBLqC6GAMdV7HFfMrL2u+JE
 OtVj6J2xSzIaMIDi2v7Vzviz7YjMae03jGg3IhhE8M3Fh0RTgcH70ehIN+SAXzOiqn98
 CAWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733576358; x=1734181158;
 h=content-transfer-encoding:mime-version:message-id:references
 :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ljXro3CUSDnlyB+6+WZ7VT4s5tTUnVQ1S4YV7erXPLE=;
 b=bfbTcbmG8StSfMgduRYgdkjU0x19FfduUnobpWLkOzgJiIM9/Pt2zDsGHCpEqYH7Do
 VkPIkavTswhTdth7HjOrSk4xuvblrL1Sq+RvelOoauPDGRaSpghkabUvUhjWsSVzDaf3
 h8bGNkychKR3+TXGiuaFel5ZlBC+MFkaBJ0dtbKOKxYCMRb/u2oLWcBsm5PUDfFCJbjm
 fqemQIo95tjoj+lTaWENz8iZw+sCNcemcxFCJi9Y6ZwdDiez/S/qHzZsdWxbOOtRrWsB
 sy/ZlkVIboQ3OFQOZhOA3R7M8Pbqnkk4g3VewviLVru10Z346xcr6SSZoA+rTG4Pphz0
 2hew==
X-Forwarded-Encrypted: i=1;
 AJvYcCU6QrfCd0taFk3xsXOa6I6suiq7aLHtz5A5E3tjqEFp1NbP8181sq3cSGyniraNcUxYlLWRDjRGihk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy32a0B0FSjwdNK22k4IC4pWbEzhPfyk2Gqj4zeuQfaOQwBiZia
 HAl8oULvj/HiHWU3PSDsDqsxKRjMvBtysNhYbPdFBMfWEC9S7MfE97wH/SgAJIzMS533w6NWkDH
 7
X-Gm-Gg: ASbGncvZntNaJsaKH14V/PxPqHptu5jtIVrnWgbgdYWvJwmtxQ+URehUdWD3inKIlsq
 mKVLmz8WGYehJMTfIRKg5fVvhOPrf5WK0Jol06sQY0XiXiuBVTgUOS3g9CIaiQeUtTf/VgVwu0P
 W9/iV9+b9S8KSLO2P163DIWQ6JVX1bRYupEFJpIERwVwFFMnY32k9+cx0JRpZilmrFn62AYRJ2l
 B+hpeIxjidRJ1CsJI18Blbl1ogfYnzEMHjmh1B6AX0HzteVTrHDSw2SuQgeURhjvXXvm16UQu3z
 /Jrpf9mGwCrfp8TT1w==
X-Google-Smtp-Source: AGHT+IFQlF2BySpXoU/nr6i19DJQ8jQnT7ycVq1vckv++vHKocUoyXjUsvgg/+mbJM5H/Bl1OILXRA==
X-Received: by 2002:a05:6512:33ca:b0:53e:28e0:cde5 with SMTP id
 2adb3069b0e04-53e2c2c29f8mr3287001e87.31.1733576357453; 
 Sat, 07 Dec 2024 04:59:17 -0800 (PST)
Received: from [127.0.0.1] (85-76-115-145-nat.elisa-mobile.fi. [85.76.115.145])
 by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53e3ac318a8sm170700e87.177.2024.12.07.04.59.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 07 Dec 2024 04:59:16 -0800 (PST)
Date: Sat, 07 Dec 2024 14:59:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: RE: [PATCHv2 01/10] drm/crtc: Add histogram properties
User-Agent: Thunderbird for Android
In-Reply-To: <IA0PR11MB73079CFC62FE11A90C386CE6BA312@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20241204091456.1785858-1-arun.r.murthy@intel.com>
 <s3gkb36ga2pxmxocrhcjp5pcgbewx4x3joiyrpld3th4r4fvyi@rkpgbu4ekst3>
 <IA0PR11MB7307F22883ACF3AD873C3697BA302@IA0PR11MB7307.namprd11.prod.outlook.com>
 <CAA8EJpp4HjyEL9XSLzXr6tG7+8M2FmZO1S2WrLXmP64J_aKs-w@mail.gmail.com>
 <DM4PR11MB7302BD8409DEC33EF2F1B0BFBA302@DM4PR11MB7302.namprd11.prod.outlook.com>
 <fev637ue37cbc5bstvqqvstserp75khqewpof3pc4loshnpghl@vp33ww6i6rdn>
 <IA0PR11MB73079CFC62FE11A90C386CE6BA312@IA0PR11MB7307.namprd11.prod.outlook.com>
Message-ID: <AA8D959A-FFF9-4EE4-8C19-57E2F64BA4A7@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On 6 December 2024 12:33:38 EET, "Murthy, Arun R" <arun=2Er=2Emurthy@intel=
=2Ecom> wrote:
>> On Thu, Dec 05, 2024 at 04:29:55PM +0000, Murthy, Arun R wrote:
>> > > > > -----Original Message-----
>> > > > > From: Dmitry Baryshkov <dmitry=2Ebaryshkov@linaro=2Eorg>
>> > > > > Sent: Wednesday, December 4, 2024 5:17 PM
>> > > > > To: Murthy, Arun R <arun=2Er=2Emurthy@intel=2Ecom>
>> > > > > Cc: intel-xe@lists=2Efreedesktop=2Eorg;
>> > > > > intel-gfx@lists=2Efreedesktop=2Eorg;
>> > > > > dri- devel@lists=2Efreedesktop=2Eorg
>> > > > > Subject: Re: [PATCHv2 01/10] drm/crtc: Add histogram properties
>> > > > >
>> > > > > On Wed, Dec 04, 2024 at 02:44:56PM +0530, Arun R Murthy wrote:
>> > > > > > Add variables for histogram drm_property, its corrsponding
>> > > > > > crtc_state variables and define the structure pointed by the =
blob
>> property=2E
>> > > > > > struct drm_histogram defined in include/uapi/drm/drm_mode=2Eh
>> > > > > > The blob data pointer will be the address of the struct drm_h=
istogram=2E
>> > > > > > The struct drm_histogram will be used for both reading the
>> > > > > > histogram and writing the image enhanced data=2E
>> > > > > > struct drm_histogram {
>> > > > > >     u64 data_ptr;
>> > > > > >     u32 nr_elements;
>> > > > > > }
>> > > > > > The element data_ptr holds the address of the histogram
>> > > > > > statistics data and 'nr_elements' represents the number of
>> > > > > > elements pointed by the pointer held in data_ptr=2E
>> > > > > > The same element data_ptr in teh struct drm_histogram when
>> > > > > > writing the image enahnced data from user to KMD holds the
>> > > > > > address to pixel
>> > > factor=2E
>> > > > > >
>> > > > > > v2: Added blob description in commit message (Dmitry)
>> > > > >
>> > > > > No, it is not a proper description=2E What is the actual data
>> > > > > format inside the blob? If I were to implement drm_histogram su=
pport
>> for e=2Eg=2E
>> > > > > VKMS, what kind of data should the driver generate? What is the
>> > > > > format of the response data from the userspace app? The ABI
>> > > > > description should allow an independent but completely
>> > > > > compatible implementation to be written from scratch=2E
>> > > > >
>> > > > The histogram is generated by the hardware=2E
>> > > > Histogram represents integer which is the pixel count and when it
>> > > > comes to the IET(Image Enhancement) to be written back to hardwar=
e
>> > > > its again an integer, pixel factor=2E
>> > > > Is this the information that you expected to be added or somethin=
g else?
>> > >
>> > > You are defining the interface between the kernel and userspace=2E =
The
>> > > interface should be defined in a way that allows us (developers) to
>> > > understand the data, make a decision whether it fits a generic
>> > > namespace (which means that other drivers must be able to implement
>> > > the same interface), it fits namespace specific to i915 / Xe (then
>> > > we will have platform-specific properties for the feature that migh=
t
>> > > be implemented by other platforms) or it doesn't fit anything at al=
l=2E
>> > >
>> > Sure will add the above information in the commit message and also in=
 the
>> kernel doc=2E
>> > If there are no other review comments, then I will push the next vers=
ion of
>> patch implementing your comments=2E
>> >
>> > > So the documentation must contain the specification of the binary
>> > > data inside the blobs=2E An IGT, modetest or some other compositor
>> > > must be able to parse the data and generate (some) response without=
 using
>> your library=2E
>> > >
>> > IGT patch can be located at
>> https://patchwork=2Efreedesktop=2Eorg/series/135789/ This include test =
with and
>> without library=2E
>> > The corresponding compositor changes can be located at
>> > https://gitlab=2Egnome=2Eorg/GNOME/mutter/-
>> /merge_requests/3873/diffs?comm
>> > it_id=3D270808ca7c8be48513553d95b4a47541f5d40206
>>=20
>> I know=2E But that's not a replacement for the documentation=2E Can I i=
mplement
>> an alternative implementation without using your library?
>>=20
>Yes, exposure of the properties is being done in this series and also sup=
port
>from hardware is being done=2E The library/algorithm is open and the
>community is free to add their own and make use of the histogram and the
>image enhancement feature posted in this series

Please excuse me if I am not clear enough=2E Please provide a description =
of the data format used by these properties=2E If you need a criteria wheth=
er to consider the specification to be good enough, here is one for you: by=
 using only the spec it should be possible to implement histogram support, =
compatible with your library, in the vkms driver=2E Anything else is underd=
ocumented=2E I don't think that we can accept uABI based on the undocumente=
d blobs=2E

>
>Thanks and Regards,
>Arun R Murthy
>-------------------

