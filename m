Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2D425EEBD
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Sep 2020 17:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EBBC6E073;
	Sun,  6 Sep 2020 15:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E382F6E073
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Sep 2020 15:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599406920;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=eU0282Q1pB8K+NrqL2VNopVO1apVmSDs8ZFFLw4g4ac=;
 b=Bg7hInu53kd8/xVWBTz7a/Ywa6FCHi6aOOID17sF9MMO+Wh5qH8JfnQE7lBxqKYcddg0pF
 w2JfaRDLpdtIhSYOIZJl7N991PtWGCFD7Q9esjDMpAw34M+NDx+DZyk76orBRZxM7shn2h
 AES+VOx3ZupbFYGyXAA9/YsDABQW/To=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-oPjpjx6PPtma1gmVO_3TSg-1; Sun, 06 Sep 2020 11:41:52 -0400
X-MC-Unique: oPjpjx6PPtma1gmVO_3TSg-1
Received: by mail-ej1-f70.google.com with SMTP id hh10so604184ejb.13
 for <intel-gfx@lists.freedesktop.org>; Sun, 06 Sep 2020 08:41:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=eU0282Q1pB8K+NrqL2VNopVO1apVmSDs8ZFFLw4g4ac=;
 b=pYWr2l13s/J0/T5/LliclDhlOmDIKbUFFJ/8rWkKo6HbeqSwLht6COlmU/Vb+JccVF
 zHV+SMSE5yYVxSeeEDQo/23Ul+hQBkYYLe4CPqZRYJV1Kq7+Ir3a+JWeN1NpyrLLxBoH
 pLK17VlPF1B0QvCJInWgHB3B0DK3I+uGFJVPb4fkCcsHvyevkoIsCRMEPErz9sqg0e2w
 OqkY+/gB+/PtAaMTzPHkhpZ2KUnoyT34I7DNxiGjAtMbfSQC5hMi7H+10pqFUamprSw2
 XSc+n+s/WOMqlyDNjvl1Mv6qPixSUSZqsNlMSmJE2zC4OXf/D4b7grdbcjwtwSRfWtk7
 aiDg==
X-Gm-Message-State: AOAM530xcIwvtHKJ0jCDU0lSew1x/XLL/bl0q9+AFCdi4VzIKDwkrz3a
 hW1xBsrIbDikfLnNCCRlxCWnNM0zdnTZg9ud/oON+tOwk6Hvuh4xXSJRXjMD3Sq9oC37ltl7Q7Q
 9Tpv4HXx0wFlZyzYgzgj9fgPSFef+
X-Received: by 2002:a17:906:6ce:: with SMTP id
 v14mr6515616ejb.451.1599406910405; 
 Sun, 06 Sep 2020 08:41:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzppQRV0xkI3KXT2kVlGOSqlkxS68pKJ+rkzETdIfq0MduAz56m+LfguxgS84lcD/e0+sWMYw==
X-Received: by 2002:a17:906:6ce:: with SMTP id
 v14mr6515598ejb.451.1599406910091; 
 Sun, 06 Sep 2020 08:41:50 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id h2sm12415475ejk.33.2020.09.06.08.41.49
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 06 Sep 2020 08:41:49 -0700 (PDT)
To: intel-gfx <intel-gfx@lists.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <ec6ff211-62f4-2dee-c586-6937040bdb4c@redhat.com>
Date: Sun, 6 Sep 2020 17:41:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: [Intel-gfx] Pushed atomic-pwm changes,
 had to manually resolve a conflict in drm-tip
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

Note this is just FYI, in case I did anything wrong...

Now that it is finally fully acked up and has passed CI
I have pushed my atomic-pwm support for i915 series to
dinq.

This let to a conflict in drm-tip. The problem was that
in dinq prior to my push intel_panel.c had the following
around line 1942:

        level = DIV_ROUND_UP(pwm_get_duty_cycle(panel->backlight.pwm) * 100,
                             CRC_PMIC_PWM_PERIOD_NS);

Where as Linus' master, and drm-tip also from some fixes
branch I assume, has:

        level = DIV_ROUND_UP_ULL(pwm_get_duty_cycle(panel->backlight.pwm) * 100,
                             CRC_PMIC_PWM_PERIOD_NS);

Notice the extra _ULL in Linus' master / some fixes
branch which is necessary because
pwm_get_duty_cycle(panel->backlight.pwm) went from
returning an u32 to an u64 in 5.9.

My patch-set removes the lines with the
	DIV_ROUND_UP[_ULL] replacing them with a
call to pwm_get_relative_duty_cycle() which nicely
abstracts this away.

Resolving this was easy, I followed:
https://drm.pages.freedesktop.org/maintainer-tools/drm-tip.html#resolving-conflicts-when-rebuilding-drm-tip

And I believe I did everything right :)

Still I'm sending this email for 2 reasons:

1. In case I did anything wrong.
2. This will likely also cause a conflict in -next
    I guess, I hope this email will make resolving
    that easier.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
