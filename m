Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EED3DF175
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 17:30:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B7666E88B;
	Tue,  3 Aug 2021 15:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 570 seconds by postgrey-1.36 at gabe;
 Tue, 03 Aug 2021 15:30:02 UTC
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74D06E88A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 15:30:02 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 74DD13F349
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Aug 2021 15:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1628004030;
 bh=HaHeoSpc0/w45l3bVizKObUtZFG4/fyFOXwhQ5XDWl8=;
 h=Date:From:To:Cc:Message-ID:In-Reply-To:References:Subject:
 MIME-Version:Content-Type;
 b=SleQ2M9HASkOwKeWRJta7iwZATA0OSbLb7hZUsODPiE+cbc115+wy5TWfEMG7uc7q
 lQTlWHnqUjeF+YKNaWyXEdG0DfLtxylcmDWLJCS7IR1+WKKh1mAvCka5RJeBa8HKyT
 O4axDJf3WIYpTT3vCW6xK6kYtRTp3FaE8wo6EtD0kHYoz3iVQl0hKma2zmuSs/ly1R
 v4NWXcu4e4tdQWQBm4G4YVoTiWM7+1hgM7NXJFJZZU8R6EmmUQMwy/Fbpp2DWHfSyh
 F7vjzxmp9aioA3eSNH4LLPJdIpBcVnifup66rMNGgFe5mypJugoDWBPzAf8E1Juhx3
 WgfQ+Y5wKzGbQ==
Received: by mail-wr1-f70.google.com with SMTP id
 u11-20020a5d434b0000b029013e2027cf9aso7635719wrr.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Aug 2021 08:20:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding
 :content-disposition;
 bh=HaHeoSpc0/w45l3bVizKObUtZFG4/fyFOXwhQ5XDWl8=;
 b=Be2ib2f1D7DFgarOX3jDanAHTszIZ1Nt60ycvsKbQEIb9FRpSAyc7A5eQVd7Rg04rp
 0ocQYKfjQAqMybDZKJnPDUc5sVPrTNmG1nARU0Re4wzlhHajWHz8vShb1+wEIXRarqm6
 Zz1KWhsLISkwDlU3PQJ8W7BJ1tDQPtwch14GGVcA3qYow03KKi7jgc92KFzqkEHVe+yJ
 b20ZMRRi9cMt/k9hVVnPKDajzt3hpQiY3GD029Y6woNvx4kYcLjzKTRIlPMGa1RvvxRU
 pO3xN1ostYmFWcLn7EdDtvDvek9kZHsAvjeqHKh7SS9s+9+1IzLQUF0Oghes75PgvgFK
 xzWw==
X-Gm-Message-State: AOAM531sh9euis9WBr3/QwMzedw6UcDTtbIeUSyqtbchFAxQZPhK0bT0
 MsU7D9Qq+FjxqHXVabArqWglO6CidvB0sGnS/YvjDBckYYVt5+mQn9Rkw/SpDXnKhl0lHSbB2Yq
 pc8I3mLK4PEdgU4uiukagqj5ueCzjinWipVbv2erJMFmGrA==
X-Received: by 2002:a1c:7e85:: with SMTP id z127mr22444730wmc.11.1628004029951; 
 Tue, 03 Aug 2021 08:20:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEzjC+/pW0C1Sqw4ydhWVDqpDLVx+zCm1JU0utSrWeKobmQxeo9gpJI0BDCGIcWIUMPwlMxA==
X-Received: by 2002:a1c:7e85:: with SMTP id z127mr22444711wmc.11.1628004029751; 
 Tue, 03 Aug 2021 08:20:29 -0700 (PDT)
Received: from tricky (net-93-71-200-33.cust.vodafonedsl.it. [93.71.200.33])
 by smtp.gmail.com with ESMTPSA id d16sm14876581wrx.76.2021.08.03.08.20.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 03 Aug 2021 08:20:29 -0700 (PDT)
Date: Tue, 3 Aug 2021 17:20:33 +0200
From: Marco Trevisan <marco.trevisan@canonical.com>
To: Rajat Jain <rajatja@google.com>
Cc: Hans de Goede <hdegoede@redhat.com>, Simon Ser
 <contact@emersion.fr>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel
 Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>, Andy
 Shevchenko <andy@infradead.org>, Pekka Paalanen
 <pekka.paalanen@collabora.com>, Sebastien Bacher <seb128@ubuntu.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 "=?utf-8?Q?dri-devel=40lists.freedesktop.org?="
 <dri-devel@lists.freedesktop.org>, 
 "=?utf-8?Q?platform-driver-x86=40vger.kernel.org?="
 <platform-driver-x86@vger.kernel.org>, Mark Pearson
 <markpearson@lenovo.com>, Mario Limonciello <mario.limonciello@outlook.com>
Message-ID: <78260D21-AD73-4EBC-8E69-A5B16F1A72D5@getmailspring.com>
In-Reply-To: <CACK8Z6FPsywe49fP=5pVc5DFm--4xt0daYLDzpbujA1_qoK7Dg@mail.gmail.com>
References: <CACK8Z6FPsywe49fP=5pVc5DFm--4xt0daYLDzpbujA1_qoK7Dg@mail.gmail.com>
X-Mailer: Mailspring
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rajat,

The merge proposals are now in place after discussing a bit more with upstream:

 - https://gitlab.gnome.org/GNOME/gsettings-desktop-schemas/-/merge_requests/49
 - https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1952
 - https://gitlab.gnome.org/GNOME/gnome-control-center/-/merge_requests/1032

This is all implemented and working for the wayland backend, for X11 I'm
looking at it right now, even though it seems that we don't get any
RRScreenChangeNotify on hotkey changes, and monitoring udev directly
seems overkill. Anything should be adjusted at lower levels?

Cheers

On lug 13 2021, at 9:25 pm, Rajat Jain <rajatja@google.com> wrote:

> Hello Hans, Marco, et al,
> 
> On Tue, Apr 27, 2021 at 10:03 AM Marco Trevisan
> <marco.trevisan@canonical.com> wrote:
>> 
>> Hi,
>> 
>> >>> There now is GNOME userspace code using the new properties:
>> >>> https://hackmd.io/@3v1n0/rkyIy3BOw
>> >>
>> >> Thanks for working on this.
>> >>
>> >> Can these patches be submitted as merge requests against the upstream
>> >> projects? It would be nice to get some feedback from the maintainers,
>> >> and be able to easily leave some comments there as well.
>> 
>> FYI, I've discussed with other uptream developers about these while
>> doing them, and afterwards on how to improve them.
>> 
>> > I guess Marco was waiting for the kernel bits too land before
>> > submitting these,
>> > but I agree that it would probably be good to have these submitted
>> > now, we
>> > can mark them as WIP to avoid them getting merged before the kernel side
>> > is finalized.
>> 
>> I'll submit them in the next days once I'm done with the refactor I've
>> in mind, and will notify the list.
> 
> Any updates on the privacy-screen patchset? Can Hans' patchset be
> accepted upstream now?
> 
> Thanks,
> 
> Rajat
> 
>> 
>> And for sure we can keep them in WIP till the final bits aren't completed.
>> 
>> Cheers
> 
