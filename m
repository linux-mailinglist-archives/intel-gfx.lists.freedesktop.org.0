Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6033B40D588
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 11:06:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3FC36EB1A;
	Thu, 16 Sep 2021 09:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74836EB1A
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 09:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631783181;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LBNq/IZRKvDUDlLEmm4qZWf9ThqqYBUHWFqW0uYwUcc=;
 b=PAhOT+plyCWb77GHOENcyZ/iWQrKlcCeAh5Ne5zsHXKEqFtJ4rYi2aMlZXSZO/cdc3BrJ1
 k5V324e46b2xN7ZfLblV1FjrDehnjdhyhjIAT8RTqnytxbpCSaMbwufi5fiERmAYQFYcti
 4QdQa2vtWsLYhCB0fJzij5UGgWPac58=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-7wC81R_6PZWCPJ-C9uHZFA-1; Thu, 16 Sep 2021 05:06:20 -0400
X-MC-Unique: 7wC81R_6PZWCPJ-C9uHZFA-1
Received: by mail-ed1-f69.google.com with SMTP id
 x14-20020a50ba8e000000b003d5a565de3aso3756667ede.18
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 02:06:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LBNq/IZRKvDUDlLEmm4qZWf9ThqqYBUHWFqW0uYwUcc=;
 b=vTx0Fm5Pg/oyis5oUDLhIbXw25L5WcQPHScec04Zyfp6FGruetBV0N4DyqLQEhSeU3
 fEoM2sXFh6qrP9FVn7j/LXHHBgSyC0lsoAOH9cpHTCJs16zYyTTuznzRycCkUaKfW9Ly
 SI/hyFNqWG2kgZEDiDvunop86HgP2RJyZwWWpDyCjhzeUp3qNR72TTM+9EaDCnARpjtT
 eN7cB1uas06jJ+fPAXpIubIjOSzmu5aRRepUDVzl/bhNyCxFpfRSQ2R26vyVjJ8+wM+p
 dpQ1JFtlL0n8LbruG3FVuBY6MhlpdWNyJAseju9Azveu1d0TbC5/UFLcJEbCv0mbBePi
 h08A==
X-Gm-Message-State: AOAM530XDWJsyInM7KV2VxA2xFKMBcWd5Bny7NAOfYbJoGIIV6IEOsJ5
 k6x966XFcLlX8Rt1wetRUxgjK8iGmOhrjC66JR/seQ9yo5qJRcvGxew8xPI06zeSHlvlHMXZBQG
 7hekEP+HVYqrmBzHgSOAQK5+mkusQ
X-Received: by 2002:a17:906:5f88:: with SMTP id
 a8mr5364421eju.564.1631783179228; 
 Thu, 16 Sep 2021 02:06:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJymTTExy+bgsEYxI9HN7jV0IXPaRRwrMjMSYNvFWOd9EnZNZEPfdH44LQFB6ZoJ+uDSvuYLAQ==
X-Received: by 2002:a17:906:5f88:: with SMTP id
 a8mr5364181eju.564.1631783176326; 
 Thu, 16 Sep 2021 02:06:16 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id b8sm1099418edv.96.2021.09.16.02.06.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 16 Sep 2021 02:06:16 -0700 (PDT)
To: Lyude Paul <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rajat Jain <rajatja@google.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Mark Pearson <markpearson@lenovo.com>, Sebastien Bacher <seb128@ubuntu.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <20210906073519.4615-5-hdegoede@redhat.com>
 <6c9daf86dbbd5fe98f84efd3bae3240f0bf93387.camel@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <b3583afa-6801-7c32-daab-6085e463c137@redhat.com>
Date: Thu, 16 Sep 2021 11:06:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <6c9daf86dbbd5fe98f84efd3bae3240f0bf93387.camel@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/privacy-screen: Add notifier support
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

Hi,

On 9/15/21 10:26 PM, Lyude Paul wrote:
> On Mon, 2021-09-06 at 09:35 +0200, Hans de Goede wrote:
>> Add support for privacy-screen consumers to register a notifier to
>> be notified of external (e.g. done by the hw itself on a hotkey press)
>> state changes.
>>
>> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/drm_privacy_screen.c      | 67 +++++++++++++++++++++++
>>  include/drm/drm_privacy_screen_consumer.h | 15 +++++
>>  include/drm/drm_privacy_screen_driver.h   |  4 ++
>>  3 files changed, 86 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_privacy_screen.c
>> b/drivers/gpu/drm/drm_privacy_screen.c
>> index 294a09194bfb..7a5f878c3171 100644
>> --- a/drivers/gpu/drm/drm_privacy_screen.c
>> +++ b/drivers/gpu/drm/drm_privacy_screen.c
>> @@ -255,6 +255,49 @@ void drm_privacy_screen_get_state(struct
>> drm_privacy_screen *priv,
>>  }
>>  EXPORT_SYMBOL(drm_privacy_screen_get_state);
>>  
>> +/**
>> + * drm_privacy_screen_register_notifier - register a notifier
>> + * @priv: Privacy screen to register the notifier with
>> + * @nb: Notifier-block for the notifier to register
>> + *
>> + * Register a notifier with the privacy-screen to be notified of changes
>> made
>> + * to the privacy-screen state from outside of the privacy-screen class.
>> + * E.g. the state may be changed by the hardware itself in response to a
>> + * hotkey press.
>> + *
>> + * The notifier is called with no locks held. The new hw_state and sw_state
>> + * can be retrieved using the drm_privacy_screen_get_state() function.
>> + * A pointer to the drm_privacy_screen's struct is passed as the void *data
>> + * argument of the notifier_block's notifier_call.
>> + *
>> + * The notifier will NOT be called when changes are made through
>> + * drm_privacy_screen_set_sw_state(). It is only called for external
>> changes.
>> + *
>> + * Return: 0 on success, negative error code on failure.
>> + */
>> +int drm_privacy_screen_register_notifier(struct drm_privacy_screen *priv,
>> +                                        struct notifier_block *nb)
>> +{
>> +       return blocking_notifier_chain_register(&priv->notifier_head, nb);
>> +}
>> +EXPORT_SYMBOL(drm_privacy_screen_register_notifier);
>> +
>> +/**
>> + * drm_privacy_screen_unregister_notifier - unregister a notifier
>> + * @priv: Privacy screen to register the notifier with
>> + * @nb: Notifier-block for the notifier to register
>> + *
>> + * Unregister a notifier registered with
>> drm_privacy_screen_register_notifier().
>> + *
>> + * Return: 0 on success, negative error code on failure.
>> + */
>> +int drm_privacy_screen_unregister_notifier(struct drm_privacy_screen *priv,
>> +                                          struct notifier_block *nb)
>> +{
>> +       return blocking_notifier_chain_unregister(&priv->notifier_head, nb);
>> +}
>> +EXPORT_SYMBOL(drm_privacy_screen_unregister_notifier);
>> +
>>  /*** drm_privacy_screen_driver.h functions ***/
>>  
>>  static ssize_t sw_state_show(struct device *dev,
>> @@ -352,6 +395,7 @@ struct drm_privacy_screen *drm_privacy_screen_register(
>>                 return ERR_PTR(-ENOMEM);
>>  
>>         mutex_init(&priv->lock);
>> +       BLOCKING_INIT_NOTIFIER_HEAD(&priv->notifier_head);
>>  
>>         priv->dev.class = drm_class;
>>         priv->dev.type = &drm_privacy_screen_type;
>> @@ -399,3 +443,26 @@ void drm_privacy_screen_unregister(struct
>> drm_privacy_screen *priv)
>>         device_unregister(&priv->dev);
>>  }
>>  EXPORT_SYMBOL(drm_privacy_screen_unregister);
>> +
>> +/**
>> + * drm_privacy_screen_call_notifier_chain - notify consumers of state
>> change
>> + * @priv: Privacy screen to register the notifier with
>> + *
>> + * A privacy-screen provider driver can call this functions upon external
>> + * changes to the privacy-screen state. E.g. the state may be changed by
>> the
>> + * hardware itself in response to a hotkey press.
>> + * This function must be called without holding the privacy-screen lock.
>> + * the driver must update sw_state and hw_state to reflect the new state
>> before
>> + * calling this function.
>> + * The expected behavior from the driver upon receiving an external state
>> + * change event is: 1. Take the lock; 2. Update sw_state and hw_state;
>> + * 3. Release the lock. 4. Call drm_privacy_screen_call_notifier_chain().
>> + */
>> +void drm_privacy_screen_call_notifier_chain(struct drm_privacy_screen
>> *priv)
>> +{
>> +       if (WARN_ON(mutex_is_locked(&priv->lock)))
>> +               return;
> 
> Are we sure about this check? mutex_is_locked() checks whether a mutex is
> locked by anyone, not just us. So this seems like it would cause us to
> WARN_ON() and abort if anyone else (not just ourselves) is holding the lock to
> read the privacy screen state.

Thank you for catching this, yes this check indeed is wrong. AFAIK
there is no way to check that the mutex has been locked by us, so this
extra sanity check simply needs to be removed.

I'll drop the check before pushing this to drm-misc-next (more on
that in a reply to the cover letter), if that is ok with you.

Or do you want me to do a new version addressing this?

Regards,

Hans



> 
>> +
>> +       blocking_notifier_call_chain(&priv->notifier_head, 0, priv);
>> +}
>> +EXPORT_SYMBOL(drm_privacy_screen_call_notifier_chain);
>> diff --git a/include/drm/drm_privacy_screen_consumer.h
>> b/include/drm/drm_privacy_screen_consumer.h
>> index 0cbd23b0453d..7f66a90d15b7 100644
>> --- a/include/drm/drm_privacy_screen_consumer.h
>> +++ b/include/drm/drm_privacy_screen_consumer.h
>> @@ -24,6 +24,11 @@ int drm_privacy_screen_set_sw_state(struct
>> drm_privacy_screen *priv,
>>  void drm_privacy_screen_get_state(struct drm_privacy_screen *priv,
>>                                   enum drm_privacy_screen_status
>> *sw_state_ret,
>>                                   enum drm_privacy_screen_status
>> *hw_state_ret);
>> +
>> +int drm_privacy_screen_register_notifier(struct drm_privacy_screen *priv,
>> +                                        struct notifier_block *nb);
>> +int drm_privacy_screen_unregister_notifier(struct drm_privacy_screen *priv,
>> +                                          struct notifier_block *nb);
>>  #else
>>  static inline struct drm_privacy_screen *drm_privacy_screen_get(struct
>> device *dev,
>>                                                                 const char
>> *con_id)
>> @@ -45,6 +50,16 @@ static inline void drm_privacy_screen_get_state(struct
>> drm_privacy_screen *priv,
>>         *sw_state_ret = PRIVACY_SCREEN_DISABLED;
>>         *hw_state_ret = PRIVACY_SCREEN_DISABLED;
>>  }
>> +static inline int drm_privacy_screen_register_notifier(struct
>> drm_privacy_screen *priv,
>> +                                                      struct notifier_block
>> *nb)
>> +{
>> +       return -ENODEV;
>> +}
>> +static inline int drm_privacy_screen_unregister_notifier(struct
>> drm_privacy_screen *priv,
>> +                                                        struct
>> notifier_block *nb)
>> +{
>> +       return -ENODEV;
>> +}
>>  #endif
>>  
>>  #endif
>> diff --git a/include/drm/drm_privacy_screen_driver.h
>> b/include/drm/drm_privacy_screen_driver.h
>> index 5187ae52eb03..24591b607675 100644
>> --- a/include/drm/drm_privacy_screen_driver.h
>> +++ b/include/drm/drm_privacy_screen_driver.h
>> @@ -54,6 +54,8 @@ struct drm_privacy_screen {
>>         struct mutex lock;
>>         /** @list: privacy-screen devices list list-entry. */
>>         struct list_head list;
>> +       /** @notifier_head: privacy-screen notifier head. */
>> +       struct blocking_notifier_head notifier_head;
>>         /**
>>          * @ops: &struct drm_privacy_screen_ops for this privacy-screen.
>>          * This is NULL if the driver has unregistered the privacy-screen.
>> @@ -77,4 +79,6 @@ struct drm_privacy_screen *drm_privacy_screen_register(
>>         struct device *parent, const struct drm_privacy_screen_ops *ops);
>>  void drm_privacy_screen_unregister(struct drm_privacy_screen *priv);
>>  
>> +void drm_privacy_screen_call_notifier_chain(struct drm_privacy_screen
>> *priv);
>> +
>>  #endif
> 

