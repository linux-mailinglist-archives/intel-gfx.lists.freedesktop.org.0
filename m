Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2DF30B01C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 20:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C3F76E9DA;
	Mon,  1 Feb 2021 19:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com
 [IPv6:2607:f8b0:4864:20::c2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A0146E9DA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 19:11:25 +0000 (UTC)
Received: by mail-oo1-xc2e.google.com with SMTP id x23so4538842oop.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Feb 2021 11:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version;
 bh=dpM2eF0zUGCnwzemzPyYPtPK3kK2jzbZzpSvrrXtYJY=;
 b=lU4QcuKOW44US0CXnsrg4Ho5BZZPmsGb+lLGPiY4KLCFJ4R3LcMXpiiGLBJ+5nxZAX
 3p0r2632JK47blnxxWKBH1bJdnM9IA6MCYgH7PS9sjTzHvwd3lGVWLRhqbptkFvW7jzI
 cFgbL8LYeEnsVJp1Nl4IdajuSyuPWzD6NjU9uSJD19HY+K0GwU2V4kxvrj6HDgdny2Df
 zJHk+0aN1yeNQRPYrFtOoqH+Afp9xYt23SVZ0wKChQ5yOp0pRkmu5nTWgHONYObviLHQ
 OXvYYLeQBxuExZmVbj3RRH5CAHHanHPScyuex0seoEnFeIXfDMXrZuYYk03qudvlEkzQ
 MoxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version;
 bh=dpM2eF0zUGCnwzemzPyYPtPK3kK2jzbZzpSvrrXtYJY=;
 b=etRUp/G6wYSxAtySXh+Dom2X2zU/luRLB8odxuzAzZZN2lh9Gw5dsbhjpiKhQRTDqx
 832xZRuNi6JgQIelgjDd8XbNjWeKaWdIndbcDQPNRumoiLDXroYNZxPkRRYZxV5oMFsG
 34uDyxypZ262QhS8sBpDOu6JLxl8dkDg74De9G6pvAVDpzNKD6IYNVJuRMojUfyp3oMj
 3WF7koDB4Oy0iWlzskRL+Bo7q6eOC1hYRju5pZ82XpHYa5A2AoeNWpN0en0P0Y1zOBar
 W9ubA3p0ks4VvCqYfuI1Hj7beHjbTfD6fZ8QkWXVq8r+EcEm1x00sT9TvV+T0GYx8ZdH
 z9lw==
X-Gm-Message-State: AOAM533SQRJsahliE9yei6s/CHjCEWAfy2h7rcFLjX2C3yIZLmL8RYnD
 ywI4lOFo0b1RzrTBSAAEylc1Bw==
X-Google-Smtp-Source: ABdhPJzmcw8p+foY6x/y0V1maBy+vHrb74uGPKjRDn+aXXImC1qkUBuA8XJTaB5mgce5EUB/7UCmIA==
X-Received: by 2002:a4a:ab8f:: with SMTP id m15mr12919485oon.21.1612206684203; 
 Mon, 01 Feb 2021 11:11:24 -0800 (PST)
Received: from [100.68.32.82] ([209.107.187.36])
 by smtp.gmail.com with ESMTPSA id g14sm4438295oon.23.2021.02.01.11.11.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 11:11:22 -0800 (PST)
From: Jason Ekstrand <jason@jlekstrand.net>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 01 Feb 2021 13:11:19 -0600
Message-ID: <1775f01a3d8.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <0e64f275-c578-1c3d-dc9f-aef6f0c0eaae@linux.intel.com>
References: <20210128162612.927917-1-maarten.lankhorst@linux.intel.com>
 <20210128162612.927917-14-maarten.lankhorst@linux.intel.com>
 <CAOFGe94cG3qTm-n0rA4u8S3Q9S7yXKjs+s1hwna9PO-=GaMNfA@mail.gmail.com>
 <0e64f275-c578-1c3d-dc9f-aef6f0c0eaae@linux.intel.com>
User-Agent: AquaMail/1.27.2-1730 (build: 102700009)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 13/63] drm/i915: Reject more ioctls for
 userptr
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
Cc: =?UTF-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@linux.intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1705590125=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1705590125==
Content-Type: multipart/alternative; boundary="----------1775f01a77a2b7c28177b8f287"

This is a multi-part message in MIME format.
------------1775f01a77a2b7c28177b8f287
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On January 29, 2021 05:42:47 Maarten Lankhorst 
<maarten.lankhorst@linux.intel.com> wrote:

> Op 28-01-2021 om 17:47 schreef Jason Ekstrand:
>> On Thu, Jan 28, 2021 at 10:26 AM Maarten Lankhorst
>> <maarten.lankhorst@linux.intel.com> wrote:
>>> There are a couple of ioctl's related to tiling and cache placement,
>>> that make no sense for userptr, reject those:
>>> - i915_gem_set_tiling_ioctl()
>>> Tiling should always be linear for userptr. Changing placement will
>>> fail with -ENXIO.
>>> - i915_gem_set_caching_ioctl()
>>> Userptr memory should always be cached. Changing caching mode will
>>> fail with -ENXIO.
>>> - i915_gem_set_domain_ioctl()
>>> Changed to be equivalent to gem_wait, which is correct for the
>>> cached linear userptr pointers. This is required because we
>>> cannot grab a reference to the pages in the rework, but waiting
>>> for idle will do the same.
>>>
>>> This plus the previous changes have been tested against beignet
>>> by using its own unit tests, and intel-video-compute by using
>>> piglit's opencl tests.
>> Did you test against mesa at all?
>
> I tested it and also looked at the code for manual inspection.
>
> Unfortunately rechecking one more time, it seems I missed bo_alloc_internal 
> in mesa. Fortunately it seems not to be capable of allocating userptr.
>
> As far as I can tell, that means the changes to mesa are safe.
>
> I tried to run parts of the vulkan cts as well, but it crashed after a 
> while against my distro's vulkan package for non userptr related reasons.

Sounds good. I was mostly concerned by the fact that you called out some of 
your testing in the commit message and didn't say you tested Mesa. Made me 
wonder if you expected us to do that or if you just didn't list it.

--Jason

>
> ~Maarten
>
>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>>>
>>> -- Still needs an ack from relevant userspace that it won't break, but 
>>> should be good.
>>> ---
>>> drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>>> drivers/gpu/drm/i915/gem/i915_gem_domain.c   | 12 ++++++++++--
>>> drivers/gpu/drm/i915/gem/i915_gem_object.h   |  6 ++++++
>>> drivers/gpu/drm/i915/gem/i915_gem_userptr.c  |  3 ++-
>>> 4 files changed, 19 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index d013b0fab128..3e24db8b9ad6 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -14172,7 +14172,7 @@ static int 
>>> intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
>>> struct drm_i915_gem_object *obj = intel_fb_obj(fb);
>>> struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>>
>>> -       if (obj->userptr.mm) {
>>> +       if (i915_gem_object_is_userptr(obj)) {
>>>         drm_dbg(&i915->drm,
>>>                 "attempting to use a userptr for a framebuffer, denied\n");
>>>         return -EINVAL;
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>> index 36f54cedaaeb..3078e9a09f70 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>>> @@ -335,7 +335,13 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, 
>>> void *data,
>>>  * not allowed to be changed by userspace.
>>>  */
>>> if (i915_gem_object_is_proxy(obj)) {
>>> -               ret = -ENXIO;
>>> +               /*
>>> +                * Silently allow cached for userptr; the vulkan driver
>>> +                * sets all objects to cached
>>> +                */
>>> +               if (!i915_gem_object_is_userptr(obj) ||
>>> +                   args->caching != I915_CACHING_CACHED)
>> Thanks for looking out for this case.  I just double-checked and, yes,
>> we set caching on userptr but we always set it to CACHED so this
>> should take care of us, assuming it does what it looks like it does.
>>
>> Acked-by: Jason Ekstrand <jason@jlekstrand.net>
>>
>>> +                       ret = -ENXIO;
>>>         goto out;
>>> }
>>>
>>> @@ -533,7 +539,9 @@ i915_gem_set_domain_ioctl(struct drm_device *dev, void 
>>> *data,
>>>  * considered to be outside of any cache domain.
>>>  */
>>> if (i915_gem_object_is_proxy(obj)) {
>>> -               err = -ENXIO;
>>> +               /* silently allow userptr to complete */
>>> +               if (!i915_gem_object_is_userptr(obj))
>>> +                       err = -ENXIO;
>>>         goto out;
>>> }
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> index e9a8ee96d64c..3f300a1d27ba 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>>> @@ -574,6 +574,12 @@ void __i915_gem_object_flush_frontbuffer(struct 
>>> drm_i915_gem_object *obj,
>>> void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
>>>                                       enum fb_op_origin origin);
>>>
>>> +static inline bool
>>> +i915_gem_object_is_userptr(struct drm_i915_gem_object *obj)
>>> +{
>>> +       return obj->userptr.mm;
>>> +}
>>> +
>>> static inline void
>>> i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
>>>                           enum fb_op_origin origin)
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> index 0c30ca52dee3..c89cf911fb29 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
>>> @@ -721,7 +721,8 @@ static const struct drm_i915_gem_object_ops 
>>> i915_gem_userptr_ops = {
>>> .name = "i915_gem_object_userptr",
>>> .flags = I915_GEM_OBJECT_IS_SHRINKABLE |
>>>          I915_GEM_OBJECT_NO_MMAP |
>>> -                I915_GEM_OBJECT_ASYNC_CANCEL,
>>> +                I915_GEM_OBJECT_ASYNC_CANCEL |
>>> +                I915_GEM_OBJECT_IS_PROXY,
>>> .get_pages = i915_gem_userptr_get_pages,
>>> .put_pages = i915_gem_userptr_put_pages,
>>> .dmabuf_export = i915_gem_userptr_dmabuf_export,
>>> --
>>> 2.30.0


Sent with Aqua Mail for Android
https://www.mobisystems.com/aqua-mail

------------1775f01a77a2b7c28177b8f287
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto"><span style=3D"font-size: 12pt;">On January 29, 2021 05:4=
2:47 Maarten Lankhorst &lt;maarten.lankhorst@linux.intel.com&gt; wrote:</sp=
an></div><div id=3D"aqm-original" style=3D"color: black;">
<div><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"auto">Op 28-01-2021 om 17:47 schreef Jason Ekstrand:</div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #0099CC; padding-left: 0.75ex;">
<div dir=3D"auto">On Thu, Jan 28, 2021 at 10:26 AM Maarten Lankhorst</div>
<div dir=3D"auto">&lt;maarten.lankhorst@linux.intel.com&gt; wrote:</div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #9933CC; padding-left: 0.75ex;">
<div dir=3D"auto">There are a couple of ioctl's related to tiling and cache=
 placement,</div>
<div dir=3D"auto">that make no sense for userptr, reject those:</div>
<div dir=3D"auto">- i915_gem_set_tiling_ioctl()</div>
<div dir=3D"auto">Tiling should always be linear for userptr. Changing plac=
ement will</div>
<div dir=3D"auto">fail with -ENXIO.</div>
<div dir=3D"auto">- i915_gem_set_caching_ioctl()</div>
<div dir=3D"auto">Userptr memory should always be cached. Changing caching =
mode will</div>
<div dir=3D"auto">fail with -ENXIO.</div>
<div dir=3D"auto">- i915_gem_set_domain_ioctl()</div>
<div dir=3D"auto">Changed to be equivalent to gem_wait, which is correct fo=
r the</div>
<div dir=3D"auto">cached linear userptr pointers. This is required because =
we</div>
<div dir=3D"auto">cannot grab a reference to the pages in the rework, but w=
aiting</div>
<div dir=3D"auto">for idle will do the same.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">This plus the previous changes have been tested against b=
eignet</div>
<div dir=3D"auto">by using its own unit tests, and intel-video-compute by u=
sing</div>
<div dir=3D"auto">piglit's opencl tests.</div>
</blockquote>
<div dir=3D"auto">Did you test against mesa at all?</div>
</blockquote>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">I tested it and also looked at the code for manual inspec=
tion.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Unfortunately rechecking one more time, it seems I missed=
 bo_alloc_internal in mesa. Fortunately it seems not to be capable of alloc=
ating userptr.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">As far as I can tell, that means the changes to mesa are =
safe.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">I tried to run parts of the vulkan cts as well, but it cr=
ashed after a while against my distro's vulkan package for non userptr rela=
ted reasons.</div></blockquote></div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Sounds good. I was mostly concerned by the fact that you called o=
ut some of your testing in the commit message and didn't say you tested Mes=
a. Made me wonder if you expected us to do that or if you just didn't list =
it.</div><div dir=3D"auto"><br></div><div dir=3D"auto">--Jason</div><div di=
r=3D"auto"><br></div><div id=3D"aqm-original" style=3D"color: black;" dir=
=3D"auto"><blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: =
0 0 0 0.75ex; border-left: 1px solid #808080; padding-left: 0.75ex;"><div d=
ir=3D"auto"></div>
<div dir=3D"auto">~Maarten</div>
<div dir=3D"auto"><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #0099CC; padding-left: 0.75ex;">
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #9933CC; padding-left: 0.75ex;">
<div dir=3D"auto">Signed-off-by: Maarten Lankhorst &lt;maarten.lankhorst@li=
nux.intel.com&gt;</div>
<div dir=3D"auto">Reviewed-by: Thomas Hellstr=C3=B6m &lt;thomas.hellstrom@l=
inux.intel.com&gt;</div>
<div dir=3D"auto">Cc: Jason Ekstrand &lt;jason@jlekstrand.net&gt;</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">-- Still needs an ack from relevant userspace that it won=
't break, but should be good.</div>
<div dir=3D"auto">---</div>
<div dir=3D"auto">drivers/gpu/drm/i915/display/intel_display.c | &nbsp;2 +-=
</div>
<div dir=3D"auto">drivers/gpu/drm/i915/gem/i915_gem_domain.c &nbsp; | 12 ++=
++++++++--</div>
<div dir=3D"auto">drivers/gpu/drm/i915/gem/i915_gem_object.h &nbsp; | &nbsp=
;6 ++++++</div>
<div dir=3D"auto">drivers/gpu/drm/i915/gem/i915_gem_userptr.c &nbsp;| &nbsp=
;3 ++-</div>
<div dir=3D"auto">4 files changed, 19 insertions(+), 4 deletions(-)</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">diff --git a/drivers/gpu/drm/i915/display/intel_display.c=
 b/drivers/gpu/drm/i915/display/intel_display.c</div>
<div dir=3D"auto">index d013b0fab128..3e24db8b9ad6 100644</div>
<div dir=3D"auto">--- a/drivers/gpu/drm/i915/display/intel_display.c</div>
<div dir=3D"auto">+++ b/drivers/gpu/drm/i915/display/intel_display.c</div>
<div dir=3D"auto">@@ -14172,7 +14172,7 @@ static int intel_user_framebuffer=
_create_handle(struct drm_framebuffer *fb,</div>
<div dir=3D"auto">&nbsp;struct drm_i915_gem_object *obj =3D intel_fb_obj(fb=
);</div>
<div dir=3D"auto">&nbsp;struct drm_i915_private *i915 =3D to_i915(obj-&gt;b=
ase.dev);</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">- &nbsp; &nbsp; &nbsp; if (obj-&gt;userptr.mm) {</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; if (i915_gem_object_is_userptr(obj=
)) {</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;drm_dbg(&amp;i915-&gt;d=
rm,</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;"attempting to use a userptr for a framebuffer, denied\n");</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return -EINVAL;</div>
<div dir=3D"auto">diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b=
/drivers/gpu/drm/i915/gem/i915_gem_domain.c</div>
<div dir=3D"auto">index 36f54cedaaeb..3078e9a09f70 100644</div>
<div dir=3D"auto">--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c</div>
<div dir=3D"auto">+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c</div>
<div dir=3D"auto">@@ -335,7 +335,13 @@ int i915_gem_set_caching_ioctl(struc=
t drm_device *dev, void *data,</div>
<div dir=3D"auto">&nbsp; * not allowed to be changed by userspace.</div>
<div dir=3D"auto">&nbsp; */</div>
<div dir=3D"auto">&nbsp;if (i915_gem_object_is_proxy(obj)) {</div>
<div dir=3D"auto">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ret =
=3D -ENXIO;</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /*</di=
v>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
* Silently allow cached for userptr; the vulkan driver</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
* sets all objects to cached</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
*/</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (!i=
915_gem_object_is_userptr(obj) ||</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; args-&gt;caching !=3D I915_CACHING_CACHED)</div>
</blockquote>
<div dir=3D"auto">Thanks for looking out for this case. &nbsp;I just double=
-checked and, yes,</div>
<div dir=3D"auto">we set caching on userptr but we always set it to CACHED =
so this</div>
<div dir=3D"auto">should take care of us, assuming it does what it looks li=
ke it does.</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">Acked-by: Jason Ekstrand &lt;jason@jlekstrand.net&gt;</di=
v>
<div dir=3D"auto"><br></div>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #9933CC; padding-left: 0.75ex;">
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; ret =3D -ENXIO;</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;goto out;</div>
<div dir=3D"auto">&nbsp;}</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">@@ -533,7 +539,9 @@ i915_gem_set_domain_ioctl(struct drm_=
device *dev, void *data,</div>
<div dir=3D"auto">&nbsp; * considered to be outside of any cache domain.</d=
iv>
<div dir=3D"auto">&nbsp; */</div>
<div dir=3D"auto">&nbsp;if (i915_gem_object_is_proxy(obj)) {</div>
<div dir=3D"auto">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; err =
=3D -ENXIO;</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /* sil=
ently allow userptr to complete */</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (!i=
915_gem_object_is_userptr(obj))</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; err =3D -ENXIO;</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;goto out;</div>
<div dir=3D"auto">&nbsp;}</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b=
/drivers/gpu/drm/i915/gem/i915_gem_object.h</div>
<div dir=3D"auto">index e9a8ee96d64c..3f300a1d27ba 100644</div>
<div dir=3D"auto">--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h</div>
<div dir=3D"auto">+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h</div>
<div dir=3D"auto">@@ -574,6 +574,12 @@ void __i915_gem_object_flush_frontbu=
ffer(struct drm_i915_gem_object *obj,</div>
<div dir=3D"auto">void __i915_gem_object_invalidate_frontbuffer(struct drm_=
i915_gem_object *obj,</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;enum fb_op_origin origin);</div>
<div dir=3D"auto"><br></div>
<div dir=3D"auto">+static inline bool</div>
<div dir=3D"auto">+i915_gem_object_is_userptr(struct drm_i915_gem_object *o=
bj)</div>
<div dir=3D"auto">+{</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; return obj-&gt;userptr.mm;</div>
<div dir=3D"auto">+}</div>
<div dir=3D"auto">+</div>
<div dir=3D"auto">static inline void</div>
<div dir=3D"auto">i915_gem_object_flush_frontbuffer(struct drm_i915_gem_obj=
ect *obj,</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;enum fb_op_origin origin)</div>
<div dir=3D"auto">diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c =
b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c</div>
<div dir=3D"auto">index 0c30ca52dee3..c89cf911fb29 100644</div>
<div dir=3D"auto">--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c</div>
<div dir=3D"auto">+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c</div>
<div dir=3D"auto">@@ -721,7 +721,8 @@ static const struct drm_i915_gem_obje=
ct_ops i915_gem_userptr_ops =3D {</div>
<div dir=3D"auto">&nbsp;.name =3D "i915_gem_object_userptr",</div>
<div dir=3D"auto">&nbsp;.flags =3D I915_GEM_OBJECT_IS_SHRINKABLE |</div>
<div dir=3D"auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I915_GEM_OBJECT_NO_MMA=
P |</div>
<div dir=3D"auto">- &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
I915_GEM_OBJECT_ASYNC_CANCEL,</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
I915_GEM_OBJECT_ASYNC_CANCEL |</div>
<div dir=3D"auto">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
I915_GEM_OBJECT_IS_PROXY,</div>
<div dir=3D"auto">&nbsp;.get_pages =3D i915_gem_userptr_get_pages,</div>
<div dir=3D"auto">&nbsp;.put_pages =3D i915_gem_userptr_put_pages,</div>
<div dir=3D"auto">&nbsp;.dmabuf_export =3D i915_gem_userptr_dmabuf_export,<=
/div>
<div dir=3D"auto">--</div>
<div dir=3D"auto">2.30.0</div>
<div dir=3D"auto"><br></div>
</blockquote>
</blockquote>
</blockquote>
</div><div dir=3D"auto"><br></div>
</div>
<div style=3D"color: black;">
<p style=3D"margin: 0 0 1em 0; color: black; font-family: sans-serif;">Sent=
 with <a href=3D"https://play.google.com/store/apps/details?id=3Dorg.kman.A=
quaMail">Aqua Mail for Android</a><br>
<a href=3D"https://www.mobisystems.com/aqua-mail">https://www.mobisystems.c=
om/aqua-mail</a></p>
</div>
</body>
</html>

------------1775f01a77a2b7c28177b8f287--


--===============1705590125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1705590125==--

