Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05696620395
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 00:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B2510E823;
	Mon,  7 Nov 2022 23:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D906310E676
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 23:16:30 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id s12so10374719edd.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Nov 2022 15:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yN2gWEajrNnQ2EFJgS3yWeDfhWLjKUKWV+TZ6nM6EA8=;
 b=bHgMYjRH6hCLWz287S9NVQPRhvhpY3ux7LZMdqA4TIcS2A+jWrB2dsBm23wXe4I2xN
 c/+w7EetsYsGHTrfI/1M9UAipR+bDmxiq7/4cLd/5HxNW92Uo+7m0bFHi+HoqJyaK5Sz
 rpUcTWXwXx2f8iJycWc7AkpX2vQq6IgvU8Mtu3l/hbzDsHSHj10PU7kBU673AlzpUgjU
 PVE5yMgsR2xzYXO2CdFfG++7gs+s9FKa4hA3Aw41zeeCMMEI91n4/0GkxeJPLHbjLAwy
 vkDRfZXQJSjTjDvussoO3Jvke3i081wonpFW7lrZK0sueY+vQfDiGPBuWX5Oavy9KKQ/
 1p4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yN2gWEajrNnQ2EFJgS3yWeDfhWLjKUKWV+TZ6nM6EA8=;
 b=0MiM2i/pApDpx5Is/JXHMhB+usZqm1kJKr3XUeRnI5bXqtwozx4Sk9xEySg6Mh9x+R
 uzAobp9ciejZZFQ7faO4hLBQeKoekQBmnuzmn/Jn4sQJBTVWwW5ZEcSVxtGR2BNdK2av
 4z/zmub2/NPWXT17XnE5u2esCz5DV95eJFz6W32AvnF7Y8vSPyMG3ugWxlf5xQlGmYHT
 xOi9TK6eqWChYvbrPgxjo1y6+ae7wKdQ09Gfiu10K5QSGq7cY7JKMl6mCgtPMAcHGrpl
 h8AlL2IQNWleU4BE9xB4Z4K5m7bK+cvDDc/x0Axb2rNyl9WO153RXN0+hOk4Z20X+0df
 7CzQ==
X-Gm-Message-State: ACrzQf2DIRRMv/6A2bO0eqRhHCUMedezUsPTdE8Czjv/upbAM0SO6bE/
 Q3zoo1441VbttHDy4aw/tGpIPKxlZusKsxlrpj9VeA==
X-Google-Smtp-Source: AMsMyM7frnNCL/KlyxYyOUfz7D1jjOuRz2NPO/qa6jdHtNYq3Pwg2XBMgD2wBRWE4P+CgZ7ONDrdsny8m8T5RLSG1/I=
X-Received: by 2002:a05:6402:5248:b0:461:f0fa:864e with SMTP id
 t8-20020a056402524800b00461f0fa864emr51265354edd.81.1667862989200; Mon, 07
 Nov 2022 15:16:29 -0800 (PST)
MIME-Version: 1.0
References: <20221103162302.4ba62d72@maurocar-mobl2>
 <20221107183809.z5ntt6fj5ohs4bnn@nostramo>
In-Reply-To: <20221107183809.z5ntt6fj5ohs4bnn@nostramo>
From: Daniel Latypov <dlatypov@google.com>
Date: Mon, 7 Nov 2022 15:16:17 -0800
Message-ID: <CAGS_qxrcyLCTMZTPXseH3nXZHLM24+pmcG9n5maKQwiorFqawQ@mail.gmail.com>
To: =?UTF-8?Q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] KUnit issues - Was: [igt-dev] [PATCH RFC v2 8/8]
 drm/i915: check if current->mm is not NULL
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
Cc: David Gow <davidgow@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Brendan Higgins <brendan.higgins@linux.dev>, linux-kselftest@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>, kunit-dev@googlegroups.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 7, 2022 at 10:38 AM Micha=C5=82 Winiarski
<michal.winiarski@intel.com> wrote:
>
> On Thu, Nov 03, 2022 at 04:23:02PM +0100, Mauro Carvalho Chehab wrote:
> > Hi,
> >
> > I'm facing a couple of issues when testing KUnit with the i915 driver.
> >
> > The DRM subsystem and the i915 driver has, for a long time, his own
> > way to do unit tests, which seems to be added before KUnit.
> >
> > I'm now checking if it is worth start using KUnit at i915. So, I wrote
> > a RFC with some patches adding support for the tests we have to be
> > reported using Kernel TAP and KUnit.
> >
> > There are basically 3 groups of tests there:
> >
> > - mock tests - check i915 hardware-independent logic;
> > - live tests - run some hardware-specific tests;
> > - perf tests - check perf support - also hardware-dependent.
> >
> > As they depend on i915 driver, they run only on x86, with PCI
> > stack enabled, but the mock tests run nicely via qemu.
> >
> > The live and perf tests require a real hardware. As we run them
> > together with our CI, which, among other things, test module
> > unload/reload and test loading i915 driver with different
> > modprobe parameters, the KUnit tests should be able to run as
> > a module.
>
> Note that KUnit tests that are doing more of a functional/integration
> testing (on "live" hardware) rather than unit testing (where hardware
> interactions are mocked) are not very common.
> Do we have other KUnit tests like this merged?

I don't think we have other tests like this.

> Some of the "live tests" are not even that, being more of a pure
> hardware tests (e.g. live_workarounds, which is checking whether values
> in MMIO regs stick over various HW state transitions).
>
> I'm wondering, is KUnit the right tool for this job?

The main focus of KUnit is for hw-independent tests.
So in theory: no.

But I can imagine it could be easier to write the validation via
KUNIT_EXPECT_EQ and friends as opposed to writing your own kernel
module w/ its own set of macros, etc.

So my first thought is: "if it works, then you can try using it."
(Might want to take steps like make sure they don't get enabled by
CONFIG_KUNIT_ALL_TESTS=3Dy).

Talking with David, he seems to have echoed my thoughts.
David also suggested that maybe the test could use a fake of the hw by
default, but have an option to run against real hw when available.
I think that sounds like a good chunk of work, so I don't know if you
need to worry about that.

Daniel
