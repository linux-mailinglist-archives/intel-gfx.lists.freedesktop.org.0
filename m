Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5607A792A5
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 18:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9697F10E81E;
	Wed,  2 Apr 2025 16:06:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="JpcpZ3ID";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9985510E81E
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Apr 2025 16:06:30 +0000 (UTC)
Received: by mail-ej1-f48.google.com with SMTP id
 a640c23a62f3a-ac2c663a3daso1315411566b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Apr 2025 09:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1743609989; x=1744214789;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=025ywTe8X2oiiTY/KI73kld6gosblZKwh9c0eIC7QAo=;
 b=JpcpZ3IDulNOelRpsOh3/2EWfVuuE1eHzK/dBPToE6QrU/Od9+8x+mxp5EwSipNbEw
 Pv85f3N63V1ORiyo7F83F5abpSvOV995Ropz4lEOEh9WpenMFZ9zRBv4MCyFYyeWiFgM
 VXb8hQ/iRy4+a2oF9WalyR8KhO4K90e75w7Xw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743609989; x=1744214789;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=025ywTe8X2oiiTY/KI73kld6gosblZKwh9c0eIC7QAo=;
 b=C5Os6fU/aEpj1qJo5mP4J3txHy99x6j466b0sGvw9ZyoGkNRdC8tqIElnIPglFJgii
 sdBSoCzRvKhYhxCZdUeYI2oxVRwnzpI1YKt63SZUhikjCrIZ1PN69Kq4r0X/ZEcXufjN
 t9oJ25gn8pJZNG8LjlPm29fn4FblfP+1KofzW80XIp/abAWaFyM/CT5ySVc0kPrvmNgo
 Kanpsyv7IODGRsIHioMdQ8NYi+v/MAprWvFYWCYw8avrHjIc0kaX3HLhBzt5nQ2wmStQ
 70mOuhs8yQ0JtqxQuKt/qIsuHdy8WTkSdt/Nh10ftSs3eTuZB+1lbTIacRvDrJ5fUxM+
 qA8A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVzaYDNC/deAQaKLSfFf6olcNhtM9qcJkr34GdPNLYRYIFGDQLPEV2TL4bRLLIxq6JwdLAGa9G3uhg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yw/uYpmwn+V8HIOu+LeZxjAIuur9LlJUvABVFu5Vr0VdVPZnG43
 OwXoKuBzLNk6D1dC5SN7eZBl5NsS1/O3xQ0z/R5bmuwmac6hTX3RN7Ah9q5Z1n/6sATbgGs+6Sk
 IK7c=
X-Gm-Gg: ASbGncuoHjCRxGNL6alIIxV5WUYFWxnQY6AOVIw9w4NEJxe1OD0wIQ9qOaKKdC2UyoX
 McZc2zokKXoQtchYeTGhiV+GybjZrwq+D0lqa/ZWSel3kFWDNlN6uVkUh0ejEgHOQzaTj19dtBQ
 RRkZXWCePUIuYp9/wrD2vr13oAihGfrAhslOlYQ9fdEUsTdsNZiQAAcOrcne0hbigmG0laoYVZP
 VvUkc3YG/MFz5X62j9xoENXR7PfYoCBzAHvvOIZ8xwaV+cXEXSTbbzNiWzx80Vo8kqeHh3aCFpK
 O4gDzarnj+LI8KEuWEmn6j/du1knnRpdH4XG5Nhrnlt0G/RC1ybQSUDmpWOgw1Y01k6RRNNThNn
 89+SfOXGUh5d0QIieMtk=
X-Google-Smtp-Source: AGHT+IFQfdHAK0k0FnGrVRTmrb5kKIvHjQS3HwSQ486GkvSzHEcAPxIBj+F2Pufs1uEXDVqMAPBnfQ==
X-Received: by 2002:a17:907:3da3:b0:ac3:878d:662 with SMTP id
 a640c23a62f3a-ac73897cd59mr1331149066b.9.1743609988449; 
 Wed, 02 Apr 2025 09:06:28 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com.
 [209.85.218.46]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ac71922c0c5sm934122066b.9.2025.04.02.09.06.27
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Apr 2025 09:06:27 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-abbd96bef64so1124900166b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Apr 2025 09:06:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCUVltgNO1Xmr5RW3VhV5nVHLHX9xgzzV3fuDIdrFBebONTNjLS2741s4nQJkUl2HtNTWqk3d1ysmXA=@lists.freedesktop.org
X-Received: by 2002:a17:906:dc95:b0:ac7:36c2:aed5 with SMTP id
 a640c23a62f3a-ac738a5aa5amr1649611366b.28.1743609986968; Wed, 02 Apr 2025
 09:06:26 -0700 (PDT)
MIME-Version: 1.0
References: <20250402124656.629226-1-jani.nikula@intel.com>
In-Reply-To: <20250402124656.629226-1-jani.nikula@intel.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 2 Apr 2025 09:06:09 -0700
X-Gmail-Original-Message-ID: <CAHk-=whkpFR93_rX2Wi5bQErH1-bzFXkWZP2wgBGCRgsFQuOhg@mail.gmail.com>
X-Gm-Features: AQ5f1Jqd6jCqv34VGPiVcJowK6E-xTG9BBy-7Ow_2MxO0m2aPE5XhfB34p0FnyE
Message-ID: <CAHk-=whkpFR93_rX2Wi5bQErH1-bzFXkWZP2wgBGCRgsFQuOhg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] kbuild: resurrect generic header check facility
To: Jani Nikula <jani.nikula@intel.com>
Cc: linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@nvidia.com>, 
 Masahiro Yamada <masahiroy@kernel.org>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona.vetter@ffwll.ch>, linux-kbuild@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org
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

On Wed, 2 Apr 2025 at 05:47, Jani Nikula <jani.nikula@intel.com> wrote:
>
> Another go at hiding the turds.

The patches look sane to me.

I didn't _test_ them - because that's not how I roll - but they look
like they would do the right thing and not interfere with my odd TAB
lifestyle (I say "odd", because apparently I'm the only one who lives
and dies by auto-complete, but obviously my way is never really odd.
By definition).

         Linus
