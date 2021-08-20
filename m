Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC1D3F327D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Aug 2021 19:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E45E6EAD9;
	Fri, 20 Aug 2021 17:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74306EAD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Aug 2021 17:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1629481820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=cyc2idEvb/XAUIUvdNpiITPnSoCTix0slyXVBx8VagQ=;
 b=e276rUjARbhvx/m6cVYUSWyqPbdzczBW2V4ah9yqVdxbEf+1qfXwMomfykYbKDWrZiO9Ii
 SNqMYI1lkp7EI1pOYXe0YfoyJ4qkwqaYcONyCNu/4Z35ITtChxuV0R3wShwsjH0pF+CHgH
 Y+d/XpKaDeNlLzstUbOKnojocqhKLM8=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-121-9L7j1764PMe8ivZ05wIJIQ-1; Fri, 20 Aug 2021 13:50:17 -0400
X-MC-Unique: 9L7j1764PMe8ivZ05wIJIQ-1
Received: by mail-ed1-f69.google.com with SMTP id
 b16-20020a0564022790b02903be6352006cso4904709ede.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Aug 2021 10:50:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=cyc2idEvb/XAUIUvdNpiITPnSoCTix0slyXVBx8VagQ=;
 b=qQQ2D47kk+fAugs48tdpVGmwdB1c8gG0RButOAzq4Myun20lHtRj/wSOWyy+5OYH2y
 FCPfGU6U0iHN2WnteReN07UCseWBhW1rqleeWDIk0gizvXdBorrEwjpFHItgA6HAcgI8
 RCB77axg0F+nyGAz9CaaaAQHtTS0A8aX5+zDvMCTLHxNL7putAdQfayWTJfYi/LsdtrF
 20wfS2psfQvA26Mu0A+kNtC8+SuLxC+0gx163L8inMXNhi9UeWIbWXrGLKAoGr+rsKCH
 9SgxvwenoZ/m4U2/Mr0jRfcwWBwKxVY4pe/DhPXpmwD5rrUlhC67WNL4hVWF/MlvV3V9
 WuGA==
X-Gm-Message-State: AOAM532hnVTghjadFIOPLG8ub52uWK/MDjDZi4cI+oGEXNKpVOt5kxtL
 u0QG23Fyojmeefy9ZUgDXUdUYS2szRYHzeKYd8cXlN/zrjvElReFBzo2v8K18T1/hxV9EV4JQcE
 /WYBi0SvZkpzqlemRsnmXm9PSv56Q
X-Received: by 2002:a17:907:105d:: with SMTP id
 oy29mr22843048ejb.531.1629481816204; 
 Fri, 20 Aug 2021 10:50:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWep/FkThx/FrYKQ/H6dH/XK1FG40BeBmmdgFYuWhLmx8DMyFErQEfmUvhO5DlLOFg2CucdA==
X-Received: by 2002:a17:907:105d:: with SMTP id
 oy29mr22843030ejb.531.1629481816051; 
 Fri, 20 Aug 2021 10:50:16 -0700 (PDT)
Received: from x1.localdomain ([2a0e:5700:4:11:334c:7e36:8d57:40cb])
 by smtp.gmail.com with ESMTPSA id i6sm4012505edt.28.2021.08.20.10.50.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Aug 2021 10:50:15 -0700 (PDT)
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel@ffwll.ch>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <34f13e21-9b1a-5f54-7e03-9705a6b51428@redhat.com>
Date: Fri, 20 Aug 2021 19:50:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [Intel-gfx] [GIT PULL] drm-misc + drm-intel: Add support for
 out-of-band hotplug notification
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

Hello drm-misc and drm-intel maintainers,

My "Add support for out-of-band hotplug notification" patchset:
https://patchwork.freedesktop.org/series/93763/

Is ready for merging now, as discussed on IRC I based this series
on top drm-tip and when trying to apply the i915 parts on top
of drm-misc this fails due to conflict.

So as Jani suggested here is a pull-req for a topic-branch with the
entire set, minus the troublesome i915 bits. Once this has been merged
into both drm-misc-next and drm-intel-next I can push the 2 i915
patch do drm-intel-next on top of the merge.

Note there are also 2 drivers/usb/typec patches in here these
have Greg KH's Reviewed-by for merging through the drm tree,
Since this USB code does not change all that much. I also checked
and the drm-misc-next-2021-08-12 base of this tree contains the
same last commit to the modified file as usb-next.

Daniel Vetter mentioned on IRC that it might be better for you to simply
pick-up the series directly from patchwork, that is fine too in that
case don't forget to add:

Reviewed-by: Lyude Paul <lyude@redhat.com>

To the entire series (given in a reply to the cover-letter)

And:

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

To the usb/typec patches (patch 7/8), this was given in reply
to a previous posting of the series and I forgot to add this
in the resend.

Regards,

Hans


The following changes since commit c7782443a88926a4f938f0193041616328cf2db2:

  drm/bridge: ti-sn65dsi86: Avoid creating multiple connectors (2021-08-12 09:56:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/hansg/linux.git drm-misc-intel-oob-hotplug-v1

for you to fetch changes up to 7f811394878535ed9a6849717de8c2959ae38899:

  usb: typec: altmodes/displayport: Notify drm subsys of hotplug events (2021-08-20 12:35:59 +0200)

----------------------------------------------------------------
Topic branch for drm-misc / drm-intel for OOB hotplug support for Type-C connectors

----------------------------------------------------------------
Hans de Goede (6):
      drm/connector: Give connector sysfs devices there own device_type
      drm/connector: Add a fwnode pointer to drm_connector and register with ACPI (v2)
      drm/connector: Add drm_connector_find_by_fwnode() function (v3)
      drm/connector: Add support for out-of-band hotplug notification (v3)
      usb: typec: altmodes/displayport: Make dp_altmode_notify() more generic
      usb: typec: altmodes/displayport: Notify drm subsys of hotplug events

 drivers/gpu/drm/drm_connector.c          | 79 +++++++++++++++++++++++++++++
 drivers/gpu/drm/drm_crtc_internal.h      |  2 +
 drivers/gpu/drm/drm_sysfs.c              | 87 +++++++++++++++++++++++++++-----
 drivers/usb/typec/altmodes/Kconfig       |  1 +
 drivers/usb/typec/altmodes/displayport.c | 58 +++++++++++++--------
 include/drm/drm_connector.h              | 25 +++++++++
 6 files changed, 217 insertions(+), 35 deletions(-)

