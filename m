Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C46340FE11
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 18:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42566E02C;
	Fri, 17 Sep 2021 16:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 853AE6E02C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 16:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631896929;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QPl4KeT8wyG55t8p+1B0oVfQ6V0kG9Kp6VYVWfBuPzA=;
 b=SBqLZeKKoDJdQiqt9JdAVI+OkkIyVjdp/561JPxZj7sJj2wKrC6a/HHqnDlZowRLJU5+x8
 uwhylLQpI4jIwOVHRGq0LEZV4RkeZ/Zwgp7qJ0/yaTD+QQxCbOnu2okQWBy/lzNm9G9f9s
 GJXEPqifxUbHJ1PCFL9ZsIxtUoWg064=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-411-obqYjwA6OgidMXI5TMEWEw-1; Fri, 17 Sep 2021 12:42:08 -0400
X-MC-Unique: obqYjwA6OgidMXI5TMEWEw-1
Received: by mail-ed1-f71.google.com with SMTP id
 m20-20020aa7c2d4000000b003d1add00b8aso9629667edp.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 09:42:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QPl4KeT8wyG55t8p+1B0oVfQ6V0kG9Kp6VYVWfBuPzA=;
 b=ahy5WcOJHEzZ4vyOnuiI6vzEgaVZbOzgjobXUfVLR1k+KoKYmHgqmb4lV8wHMHhAo0
 gZsYxuobxRCyR5xhCvL4vdvTcgQyMcvHiK9QjPgQ+Nkn98b+tkC1dxMst9RdTVctP04S
 s3XpMobUaPnU6m1oV8IhwKf7GYY3HzrokJv3+X6/rZRAKhQiW7DYNz0q3Gf8DpnUcpNM
 t6v+Tfd78kiWsTNF1gGv+aktvDrfr4g1ZcelxpfLh7xHry5s97m7LEcFIOC/ccLRTZsa
 nm86HRSydrw/aS0m/Rbhb3OSQHBjsvleqI3jUtmONvyLGMARDHn5XIfVsCNgizJFA9+w
 1joQ==
X-Gm-Message-State: AOAM533nNQ8gVZf+p6Zw/NuJS4P6w4dXE9uHhbFtJcJRnOVAJQ5Xd5fs
 AAYaSnm8nydfLIoD2x3llzzTt8WniKWTgRVNvfxeXBpxsDilRqBRFQTE45erK9UtuTA1DGgmONI
 vx66lvYTHcVyeQJyvSlkbKsaEP8hx
X-Received: by 2002:a05:6402:54:: with SMTP id
 f20mr13946954edu.382.1631896927082; 
 Fri, 17 Sep 2021 09:42:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzoFnb0ZRqjFuMik68c0SM815V/V9FPxoqPBSAnVxKeolu2rD/IQto0b9OqyDfupdAGP1tOPg==
X-Received: by 2002:a05:6402:54:: with SMTP id
 f20mr13946899edu.382.1631896926752; 
 Fri, 17 Sep 2021 09:42:06 -0700 (PDT)
Received: from x1.localdomain ([2a0e:5700:4:11:334c:7e36:8d57:40cb])
 by smtp.gmail.com with ESMTPSA id u11sm2878970edo.65.2021.09.17.09.42.05
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Sep 2021 09:42:06 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rajat Jain <rajatja@google.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Lyude <lyude@redhat.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mark Gross <mgross@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Mark Pearson <markpearson@lenovo.com>, Sebastien Bacher <seb128@ubuntu.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Emil Velikov <emil.l.velikov@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <20210906073519.4615-10-hdegoede@redhat.com> <YUNKh9xcIGoi1eol@intel.com>
 <1239f5f3-fd02-4eed-f464-e92c0afbb620@redhat.com>
 <YUTBb05YNayO3yOg@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <686d5177-3bf9-ddb0-5e55-a2e9969f36f7@redhat.com>
Date: Fri, 17 Sep 2021 18:42:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YUTBb05YNayO3yOg@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Add privacy-screen support
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

On 9/17/21 6:25 PM, Ville Syrjälä wrote:
> On Fri, Sep 17, 2021 at 04:37:14PM +0200, Hans de Goede wrote:
>> Hi,
>>
>> On 9/16/21 3:45 PM, Ville Syrjälä wrote:
>>> On Mon, Sep 06, 2021 at 09:35:19AM +0200, Hans de Goede wrote:
>>>> Add support for eDP panels with a built-in privacy screen using the
>>>> new drm_privacy_screen class.
>>>>
>>>> One thing which stands out here is the addition of these 2 lines to
>>>> intel_atomic_commit_tail:
>>>>
>>>> 	for_each_new_connector_in_state(&state->base, connector, ...
>>>> 		drm_connector_update_privacy_screen(connector, state);
>>>>
>>>> It may seem more logical to instead take care of updating the
>>>> privacy-screen state by marking the crtc as needing a modeset and then
>>>> do this in both the encoder update_pipe (for fast-sets) and enable
>>>> (for full modesets) callbacks. But ATM these callbacks only get passed
>>>> the new connector_state and these callbacks are all called after
>>>> drm_atomic_helper_swap_state() at which point there is no way to get
>>>> the old state from the new state.
>>>
>>> Pretty sure the full atomic state is plumbed all the way
>>> down these days.
>>
>> Including the old state? AFAICT the old-state is being thrown away
>> from drm_atomic_helper_swap_state(),
> 
> No. That's just when those annoying foo_state->state pointers get
> clobbered. We've been moving away from using those and just
> plumbing the entire atomic state everywhere.
> 
> Nothing actually gets freed until the whole drm_atomic_state gets
> nuked after the commit is done.
> 
>> so if we do this in a different
>> place then we don't have access to the old-state.
>>
>>
>>>
>>>>
>>>> Without access to the old state, we do not know if the sw_state of
>>>> the privacy-screen has changes so we would need to call
>>>> drm_privacy_screen_set_sw_state() unconditionally. This is undesirable
>>>> since all current known privacy-screen providers use ACPI calls which
>>>> are somewhat expensive to make.
>>>
>>> I doubt anyone is going to care about a bit of overhead for a modeset.
>>
>> But this is not a modeset, this is more like changing the backlight brightness,
>> atm the code does not set the needs_modeset when only the privacy-screen
>> sw-state has changed.
>>
>> Also in my experience the firmware (AML) code which we end up calling
>> for this is not the highest quality code, often it has interesting
>> issues / unhandled corner cases. So in my experience with ACPI we
>> really should try to avoid these calls unless we absolutely must make them,
>> but I guess not making unnecessary calls is something which could be handled
>> inside the actual privacy-screen driver instead.
>>
>>> The usual rule is that a modeset doesn't skip anything. That way we
>>> can be 100% sure we remeber to update everythinbg. For fastsets I guess
>>> one could argue skipping it if not needed, but not sure even that is
>>> warranted.
>>
>> Right, but again this is not a full modeset.
> 
> In general fastset is is just an optimized modeset. Userspace asked
> for a modeset, but we noticed it doesn't need it. I don't think
> there is a particular expectation that it's super fast.
> 
> But if this is really annoyingly slow in some actual usecase

Yeah these acpi-calls might take like a 100 ms easily, so
we really want to avoid it if it is not necessary.

> then
> one way to avoid that need to compare against the old state is just
> introduce another foo_changed flag.

Ok, so I have the feeling that you have an idea of how you think this
should be done / how this code should look instead of what I have
currently.

Can you perhaps provide a rough sketch / description of how you
think this should be done (instead of the current implementation) ?

Should I do the update from the the encoder update_pipe (for fast-sets)
and enable (for full modesets) callbacks instead as I mention in
the commit message ?

And since I still only want to do the call if there is an actual
change, where could I best do the old / new sw_state change cmp to
set the new foo_changed flag?




> 
>>
>>>
>>> The current code you have in there is cettainly 110% dodgy. Since the
>>> sw_state is stored in the connector state I presume it's at least
>>> trying to be an atomic property, which means you shouldn't go poking
>>> at it after the swap_state ever.
>>
>> It is not being poked, it is only being read, also this is happening
>> before swap_state.
>>
>> Note I'm open for suggestions to handle this differently,
>> including changing the drm_connector_update_privacy_screen()
>> helper which currently relies on being passed the state before swap_state
>> is called:
>>
>> void drm_connector_update_privacy_screen(struct drm_connector *connector,
>> 					 struct drm_atomic_state *state)
>> {
>> 	struct drm_connector_state *new_connector_state, *old_connector_state;
>> 	int ret;
>>
>> 	if (!connector->privacy_screen)
>> 		return;
>>
>> 	new_connector_state = drm_atomic_get_new_connector_state(state, connector);
>> 	old_connector_state = drm_atomic_get_old_connector_state(state, connector);
>>
>> 	if (new_connector_state->privacy_screen_sw_state ==
>> 	    old_connector_state->privacy_screen_sw_state)
>> 		return;
>>
>> 	ret = drm_privacy_screen_set_sw_state(connector->privacy_screen,
>> 				new_connector_state->privacy_screen_sw_state);
>> 	if (ret) {
>> 		drm_err(connector->dev, "Error updating privacy-screen sw_state\n");
>> 		return;
>> 	}
>>
>> So if you have any suggestions how to do this differently, please let me know
>> and I will take a shot at implementing those suggestions.
> 
> You cut the code too soon. Just after this you call the other
> update_privacy_screen() thing which does poke at
> connector->state->stuff AFAICS.

True, the idea here is to only update the hw_state, the returned sw_state
should always be the one which we just set. But I agree it would be better to
change the code here so that drm_connector_update_privacy_screen() only
updates privacy_screen_hw_state I will change the code to do this in the
next version of this patch-set.

Regards,

Hans

