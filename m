Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D797BC82C2
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:06:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9770910E987;
	Thu,  9 Oct 2025 09:06:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Y/T+FA7m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com
 [74.125.224.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285CF10E087
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 08:51:03 +0000 (UTC)
Received: by mail-yx1-f52.google.com with SMTP id
 956f58d0204a3-6354af028c6so7183346d50.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Oct 2025 01:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1759913462; x=1760518262; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ufLXNAx9x9jMay2OYMWWHclc8YCBaanqtNStl5ICSCo=;
 b=Y/T+FA7mKYU59n07iuQ0tXzXUx9eGq6BrC9GAGn28F28AGFrdDVBmR8s4dEKwDWrpI
 cLU4qyiKLmQhPxnAxjHlZVJOkKNcjJ7TkIUSmkkYbB33IYihT6q/528ZmV6lDak42DBN
 5CRe1OaATI3HOrJWpreRIAu+OYLgzXtOBceqbeKIFIg5bFuw5sa/36BhcfdqMjmMCZJV
 r7QPns1qg9YAGbfOlQvrrvLLph2TUrw8XlZEoW71rNrxE0rQsfXbb9lsSByjIkvjEXUV
 OJOKfHyz36fvXRwQgAb1RGRQFyGFRrPDMSWDIzderFFK7tBvowfISDcu+LzwithAhxNm
 CCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759913462; x=1760518262;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ufLXNAx9x9jMay2OYMWWHclc8YCBaanqtNStl5ICSCo=;
 b=A4rcs2ZrDiLcAhdj3j2WsrWl62mfLVUI+v3Ds2sZ744UcIKxs3PxG64WxSFzihQS9i
 9MBOCeyYCycMo6VSx64OnbJSJnAumFtA4kP6kj9MFqia7A6NagQ1sJW947G3Qr9sdbGB
 Y9AVJTjLIpMPpbNCSdeQbYiskx2Iu01LZ7PSDLUm64gcEDHx1oXQNC4wd6zVVqjc52aT
 DR1HqR/HKvSXTeD5tjaXygC4PFPb2aVciBbXPEx7xkr4oI5GxXNpal9kqme607EYB3T3
 ly1wiV6KeQv7WInAuEiVXOJ1odtEyLYrByTFP1ZXVPKqUsPOI9fGJO29Ig7G6YjVM8D5
 Avhw==
X-Gm-Message-State: AOJu0Yy1wzW5rewolSO5dlw7zb6PFpcJ3lGEnX3IXOFlNtuAUN663k68
 9SoLYLynAYwj8pJmbDfuMqd7nQT3p0iA4RahFhjNuGcpM5mF06VUoCl8kBEozf3xDzsnHU65sTD
 RNckWKQBbNTvtqy4X8PiyJcexjFdyVgs=
X-Gm-Gg: ASbGncs53fmV8v4gdon5P8APDkB8Nwg4iPMk7rh8QnY34EVwK86brjzdTNJr0ld/1Ck
 sqQdfB6zjQDltyaD0R1Q1tQintIk5Vt+WQ5TzuAH75KkEgjHIyaS/XvrO+2/NOoLPIAphWWC34X
 n41ptWZr0VwjJRM5sK/RLEWLEQ6Wr3sF8lvydbXgHT2OXK2JHNOeEfY9tI4toq0rT/USU6HK2Cb
 eiaX0RhX7PcRWAG3eI5gx9SKljU5xQ=
X-Google-Smtp-Source: AGHT+IFG8mon2VrzLIPct30JCDUtD78WTBQAl4iZzwHX8S5t/w1YPC1V6OmSfYUa+AGNYt3c/byzxEacSK8GWXksOa0=
X-Received: by 2002:a53:dd0c:0:b0:636:596:793e with SMTP id
 956f58d0204a3-63ccb84f27fmr1991216d50.14.1759913462153; Wed, 08 Oct 2025
 01:51:02 -0700 (PDT)
MIME-Version: 1.0
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20251007202514.1661491-1-jia.yao@intel.com>
In-Reply-To: <20251007202514.1661491-1-jia.yao@intel.com>
From: Askar Safin <safinaskar@gmail.com>
Date: Wed, 8 Oct 2025 11:50:26 +0300
X-Gm-Features: AS18NWCAZsLpGrqNyZA9_68DKyB8sTzvzemtoVUR1D4yNEy0CHK0YWca92Lu6eE
Message-ID: <CAPnZJGCPP+dDbJHYQHzRbV0GHExFVHtVhgbZKUnGmJFofzJpJg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
To: Jia Yao <jia.yao@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Alex Zuo <alex.zuo@intel.com>, 
 Shuicheng Lin <shuicheng.lin@intel.com>, Pingfan Liu <piliu@redhat.com>, 
 Chris Wilson <chris.p.wilson@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 09 Oct 2025 09:06:04 +0000
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

On Tue, Oct 7, 2025 at 11:25=E2=80=AFPM Jia Yao <jia.yao@intel.com> wrote:
> Make i915's PCI device management more robust by always setting/clearing

Thank you! I tested this patch, and it indeed fixes the problem. You may ad=
d:

Tested-By: Askar Safin <safinaskar@gmail.com>

Please, CC me with further patches, I will test them.

Also, I will repeat that the bug doesn't happen if we have
CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dy.
So, probably we just need to patch all distro's configs to include
CONFIG_INTEL_IOMMU_DEFAULT_ON=3Dy
(Ubuntu already does that.)
On the other hand, if there is some deeper issue to fix, then, of
course, I'm glad it is being fixed!

Also, please, add some "Fixes" tag and CC stable to make sure this fix
will be backported to stable kernels.

For example:

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Cc: <stable@vger.kernel.org>

Here I chose the initial git commit, because i915 always was in git history=
.

--=20
Askar Safin
