Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB68436C9FD
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 19:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDE6E6E99D;
	Tue, 27 Apr 2021 17:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDA76E99D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 17:03:44 +0000 (UTC)
Received: from mail-wr1-f71.google.com ([209.85.221.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <marco.trevisan@canonical.com>) id 1lbR7e-0003AC-QE
 for intel-gfx@lists.freedesktop.org; Tue, 27 Apr 2021 17:03:42 +0000
Received: by mail-wr1-f71.google.com with SMTP id
 a12-20020a5d6cac0000b0290109c3c8d66fso5010256wra.15
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 10:03:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding
 :content-disposition;
 bh=gnEyX5fDEIQaKbYtkkxkqc3nHbncbHwyaQBt7C02tuY=;
 b=s8cRmn0XdyuE33ZahxZYWh03IrLXENeaQzgkJXHrt7dzI5D99MmPipYNBzhyx0yUw/
 565omprgjkGnkwwniwM1jDaGytal1jMJ+RAqtq1Qd28XsmMSsfPyuOe9NfFZfkgAJmC3
 G/6k5AH+WEG+bZQv9uyfhKtwbiIIcOEJehXQzhL+K9GxFufCDi37BqfpekqhjUXKOSnZ
 ky8H3kpSHQ01C+L3YKhnw+GU5J6mfpZ4y251HTlMn/hDWvJdEf1ijLJhYFEZ4slvuVFa
 Okf9QOM0+IX0Wd0/aMMGQiiXMQDoN/wmWozMlnVjJlYxn9piPqQ+T5D2iwnVTbkuPTgf
 Jnrw==
X-Gm-Message-State: AOAM532q0M2dcykcuxu9OD7nf0HH22QCa4NEXkLtReFO3NxqZLsFqOM4
 ksW7Yh9PwPZ+UN0eDNL/1pB9PgAWtSjXdz3VFMqDeIRi8fzymLNyOgxvXemfpJ00y1cqvT4EX2Z
 qcoWXYX3i73AvGOMZ9D6xQU/6H4YmDgL3Lr4+UKkxkKaX7w==
X-Received: by 2002:adf:ab1d:: with SMTP id q29mr10642650wrc.208.1619543022579; 
 Tue, 27 Apr 2021 10:03:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwL0ufwLghuP8tca8A6GO+T2IGUzbrSmZeoJP3/C3qPre2LHA9JV0wX0Ok6IpJiGWrDg6uyaw==
X-Received: by 2002:adf:ab1d:: with SMTP id q29mr10642619wrc.208.1619543022376; 
 Tue, 27 Apr 2021 10:03:42 -0700 (PDT)
Received: from tricky (84.127.144.65.dyn.user.ono.com. [84.127.144.65])
 by smtp.gmail.com with ESMTPSA id b12sm5935152wrn.18.2021.04.27.10.03.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Apr 2021 10:03:41 -0700 (PDT)
Date: Tue, 27 Apr 2021 19:03:39 +0200
From: Marco Trevisan <marco.trevisan@canonical.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <0D708B40-20DB-4D5C-BFAD-74A30D5DE477@getmailspring.com>
In-Reply-To: <88ad0981-0763-9c8d-fb57-70278bcaffd4@redhat.com>
References: <88ad0981-0763-9c8d-fb57-70278bcaffd4@redhat.com>
X-Mailer: Mailspring
MIME-Version: 1.0
Content-Disposition: inline
Subject: Re: [Intel-gfx] [PATCH v2 0/9] drm: Add privacy-screen class and
 connector properties
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
Cc: "=?utf-8?Q?dri-devel=40lists.freedesktop.org?="
 <dri-devel@lists.freedesktop.org>, Mark Gross <mgross@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Sebastien Bacher <seb128@ubuntu.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 David Airlie <airlied@linux.ie>, Simon Ser <contact@emersion.fr>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 "=?utf-8?Q?platform-driver-x86=40vger.kernel.org?="
 <platform-driver-x86@vger.kernel.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mark Pearson <markpearson@lenovo.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

>>> There now is GNOME userspace code using the new properties:
>>> https://hackmd.io/@3v1n0/rkyIy3BOw
>> 
>> Thanks for working on this.
>> 
>> Can these patches be submitted as merge requests against the upstream
>> projects? It would be nice to get some feedback from the maintainers,
>> and be able to easily leave some comments there as well.

FYI, I've discussed with other uptream developers about these while
doing them, and afterwards on how to improve them.

> I guess Marco was waiting for the kernel bits too land before
> submitting these,
> but I agree that it would probably be good to have these submitted
> now, we
> can mark them as WIP to avoid them getting merged before the kernel side
> is finalized.

I'll submit them in the next days once I'm done with the refactor I've
in mind, and will notify the list.

And for sure we can keep them in WIP till the final bits aren't completed.

Cheers
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
