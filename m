Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D71C454AC9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 17:18:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFFC6E0AC;
	Wed, 17 Nov 2021 16:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58C1089C14
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 16:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637165894;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=N2EO/w5jFp5FcxDZmtAG8N6YlEF/8ujjkx5HfDQEfgA=;
 b=FTOaEEZWcZ1PsmFyZSVuvziwBo3sYzooc8f2A+MdA7694O0KnhdSP8i5yh+jo4dIc4QeBh
 RehGJmCg9fdogLmYee1WAao7fpMKPlGRSuafIcIB82tXk9vFAnQQy2l8LnLcLv2n4LFAFG
 xKv/YSyd3VIE+p98/MTmEUo8CsvjOOg=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-69-aBmGLc0oPT6wh8PNDjo95A-1; Wed, 17 Nov 2021 11:18:10 -0500
X-MC-Unique: aBmGLc0oPT6wh8PNDjo95A-1
Received: by mail-ed1-f72.google.com with SMTP id
 y9-20020aa7c249000000b003e7bf7a1579so2605417edo.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 08:18:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=N2EO/w5jFp5FcxDZmtAG8N6YlEF/8ujjkx5HfDQEfgA=;
 b=KcmWQyyopusKN5n+q94WOGM1sUFSnp7kXcD7edCpv9pkeGkkmnJwSfCNfNssPvKgc3
 tzEbQOVpygpJ1q/QEm4SxidQ6HA1wMptxMrZI7lUTRN0X2hMSoi3ORG0o/+ln4eZP+G/
 /kIYM243L/5krpLt7khWyyyVrPwpv1DeXGjanlY3vGh3wmGeemLtkyJVnsbReGp42jRN
 sZb+ebfKVnuB/hqCblcK3LC4T1udYmUOPUVzHKP4ou84L2riVQURxr/a9P4xSbe6twSN
 stgm3jNjeH6kV7052zigvTtMrCcZLsU2pOzanxtIjr5XqgjYly1my5j2HPBZV60KEJMH
 hfaA==
X-Gm-Message-State: AOAM5313qb0eu97xvi/2US9w55lxJ/D426H8CRN1C8IV45be/Zth1RXT
 Tbf0Q0656ZDLBJDyCYHMJBU5u6dxG4cN/DaBlEj1noRsTQMXu2JFY/Ey8cthpsZ04C519SimRnR
 SS2ZgJ9b/dN2Ma6SA9rP1Nr6u4OiZ
X-Received: by 2002:a17:907:7f28:: with SMTP id
 qf40mr22894361ejc.196.1637165889549; 
 Wed, 17 Nov 2021 08:18:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwV1Ezrhd95lyN7n3meYCWgqD6x2V8dmmq+Na+P8h6tbkAlyK0Z1/k4kYC7IE1HKInrivyCYQ==
X-Received: by 2002:a17:907:7f28:: with SMTP id
 qf40mr22894280ejc.196.1637165889170; 
 Wed, 17 Nov 2021 08:18:09 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id j14sm122982edw.96.2021.11.17.08.18.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 08:18:08 -0800 (PST)
Message-ID: <4812995e-3540-324e-c259-53648e672334@redhat.com>
Date: Wed, 17 Nov 2021 17:18:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Rajat Jain <rajatja@google.com>
References: <20211005202322.700909-1-hdegoede@redhat.com>
 <20211005202322.700909-11-hdegoede@redhat.com>
 <CACK8Z6GWdv9cbzk+8Ym90+3FjeToarhBjON8RGXQ9Dc0_zAKtg@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CACK8Z6GWdv9cbzk+8Ym90+3FjeToarhBjON8RGXQ9Dc0_zAKtg@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Add privacy-screen support
 (v3)
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
Cc: Mark Pearson <markpearson@lenovo.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Sebastien Bacher <seb128@ubuntu.com>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andy Shevchenko <andy@infradead.org>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rajat,

On 11/17/21 14:59, Rajat Jain wrote:
> Hello Hans,
> 
> I'm working on my platform's privacy-screen support based on your
> patches, and had some (I know late) questions. Would be great if you
> could please help answer. Please see inline.
> 
> On Tue, Oct 5, 2021 at 1:25 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Add support for eDP panels with a built-in privacy screen using the
>> new drm_privacy_screen class.
>>
>> Changes in v3:
>> - Move drm_privacy_screen_get() call to intel_ddi_init_dp_connector()
>>
>> Changes in v2:
>> - Call drm_connector_update_privacy_screen() from
>>   intel_enable_ddi_dp() / intel_ddi_update_pipe_dp() instead of adding a
>>   for_each_new_connector_in_state() loop to intel_atomic_commit_tail()
>> - Move the probe-deferral check to the intel_modeset_probe_defer() helper
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_atomic.c  |  1 +
>>  drivers/gpu/drm/i915/display/intel_ddi.c     | 16 ++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
>>  3 files changed, 27 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
>> index b4e7ac51aa31..a62550711e98 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
>> @@ -139,6 +139,7 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
>>             new_conn_state->base.picture_aspect_ratio != old_conn_state->base.picture_aspect_ratio ||
>>             new_conn_state->base.content_type != old_conn_state->base.content_type ||
>>             new_conn_state->base.scaling_mode != old_conn_state->base.scaling_mode ||
>> +           new_conn_state->base.privacy_screen_sw_state != old_conn_state->base.privacy_screen_sw_state ||
>>             !drm_connector_atomic_hdr_metadata_equal(old_state, new_state))
>>                 crtc_state->mode_changed = true;
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 0d4cf7fa8720..272714e07cc6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -25,6 +25,7 @@
>>   *
>>   */
>>
>> +#include <drm/drm_privacy_screen_consumer.h>
>>  #include <drm/drm_scdc_helper.h>
>>
>>  #include "i915_drv.h"
>> @@ -2946,6 +2947,7 @@ static void intel_enable_ddi_dp(struct intel_atomic_state *state,
>>         if (port == PORT_A && DISPLAY_VER(dev_priv) < 9)
>>                 intel_dp_stop_link_train(intel_dp, crtc_state);
>>
>> +       drm_connector_update_privacy_screen(conn_state);
>>         intel_edp_backlight_on(crtc_state, conn_state);
>>
>>         if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
>> @@ -3161,6 +3163,7 @@ static void intel_ddi_update_pipe_dp(struct intel_atomic_state *state,
>>         intel_drrs_update(intel_dp, crtc_state);
>>
>>         intel_backlight_update(state, encoder, crtc_state, conn_state);
>> +       drm_connector_update_privacy_screen(conn_state);
>>  }
>>
>>  void intel_ddi_update_pipe(struct intel_atomic_state *state,
>> @@ -3979,6 +3982,19 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
>>                 return NULL;
>>         }
>>
>> +       if (dig_port->base.type == INTEL_OUTPUT_EDP) {
>> +               struct drm_device *dev = dig_port->base.base.dev;
>> +               struct drm_privacy_screen *privacy_screen;
>> +
>> +               privacy_screen = drm_privacy_screen_get(dev->dev, NULL);
> 
> Why pass NULL for con_id? Can we pass something more meaningful (e.g.
> "eDP-1") so that the non-KMS platform components that provide the
> privacy-screen can provide a more specific lookup? Or is that
> information (connector name) not available at the time this call is
> being made?

For the x86 ACPI case it does not matter because the static lookups
added by drivers/gpu/drm/drm_privacy_screen_x86.c do not set
a con_id in the lookup and if the lookup lack a con_id then
the value passed to drm_privacy_screen_get() is a no-op.

So, if it helps you to pass a connector-name then go for it.

As for the connecter_name already being set at this point,
I don't know, you need to check.

But also see below.

>> +               if (!IS_ERR(privacy_screen)) {
>> +                       drm_connector_attach_privacy_screen_provider(&connector->base,
>> +                                                                    privacy_screen);
>> +               } else if (PTR_ERR(privacy_screen) != -ENODEV) {
>> +                       drm_warn(dev, "Error getting privacy-screen\n");
>> +               }
>> +       }
>> +
>>         return connector;
>>  }
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 86dbe366a907..84715a779d9d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -42,6 +42,7 @@
>>  #include <drm/drm_edid.h>
>>  #include <drm/drm_fourcc.h>
>>  #include <drm/drm_plane_helper.h>
>> +#include <drm/drm_privacy_screen_consumer.h>
>>  #include <drm/drm_probe_helper.h>
>>  #include <drm/drm_rect.h>
>>
>> @@ -12769,6 +12770,8 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
>>
>>  bool intel_modeset_probe_defer(struct pci_dev *pdev)
>>  {
>> +       struct drm_privacy_screen *privacy_screen;
>> +
>>         /*
>>          * apple-gmux is needed on dual GPU MacBook Pro
>>          * to probe the panel if we're the inactive GPU.
>> @@ -12776,6 +12779,13 @@ bool intel_modeset_probe_defer(struct pci_dev *pdev)
>>         if (vga_switcheroo_client_probe_defer(pdev))
>>                 return true;
>>
>> +       /* If the LCD panel has a privacy-screen, wait for it */
>> +       privacy_screen = drm_privacy_screen_get(&pdev->dev, NULL);
>> +       if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) == -EPROBE_DEFER)
>> +               return true;
>> +
>> +       drm_privacy_screen_put(privacy_screen);
>> +
>>         return false;
>>  }

So this is also going to be an interesting challenge for your device-tree (ish)
case. We cannot delay returning the -EPROBE_DEFER until the code in
intel_ddi_init_dp_connector() gets called because much of the i915 code is not
ready to deal with tearing down the house again once we are at that point (AFAIK).

For now I guess you/we could just hardcode "eDP-1" here. That is likely going
to be correct in all relevant cases (for now).

Regards,

Hans

