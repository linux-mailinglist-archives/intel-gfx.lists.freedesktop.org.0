Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85DEBE3C35
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 15:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87FDE10E9E4;
	Thu, 16 Oct 2025 13:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F3810E307;
 Thu, 16 Oct 2025 13:42:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="------------ME950IcmIjfYPADbPW8m13FR"
Message-ID: <c7412925-3ea5-4541-9397-0d8c84f747c4@lankhorst.se>
Date: Thu, 16 Oct 2025 15:42:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/{i915,xe}/fbdev: add intel_fbdev_fb_pitch_align()
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
References: <20251015111922.2194539-1-jani.nikula@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten@lankhorst.se>
In-Reply-To: <20251015111922.2194539-1-jani.nikula@intel.com>
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

This is a multi-part message in MIME format.
--------------ME950IcmIjfYPADbPW8m13FR
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hey,

Den 2025-10-15 kl. 13:19, skrev Jani Nikula:
> For reasons still unknown, xe appears to require a stride alignment of
> XE_PAGE_SIZE, and using 64 leads to sporadic failures. Go back to having
> separate stride alignment for i915 and xe, until the issue is root
> caused.
>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220
> Fixes: 4a36b339a14a ("drm/xe/fbdev: use the same 64-byte stride alignment as i915")
> Link: https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
Seems to me like this should be fixed at the xe level, not worked around at the display level?

It shouldn't be too hard to look at what's going wrong and fix it at the right level instead of not even attempting to look at it.

Best regards,
~Maarten Lankhorst
--------------ME950IcmIjfYPADbPW8m13FR
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <font face="monospace">Hey,</font><br>
    <br>
    <div class="moz-cite-prefix">Den 2025-10-15 kl. 13:19, skrev Jani
      Nikula:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20251015111922.2194539-1-jani.nikula@intel.com">
      <pre wrap="" class="moz-quote-pre">For reasons still unknown, xe appears to require a stride alignment of
XE_PAGE_SIZE, and using 64 leads to sporadic failures. Go back to having
separate stride alignment for i915 and xe, until the issue is root
caused.

Cc: Ville Syrjälä <a class="moz-txt-link-rfc2396E" href="mailto:ville.syrjala@linux.intel.com">&lt;ville.syrjala@linux.intel.com&gt;</a>
Cc: Jouni Högander <a class="moz-txt-link-rfc2396E" href="mailto:jouni.hogander@intel.com">&lt;jouni.hogander@intel.com&gt;</a>
Closes: <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220">https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/6220</a>
Fixes: 4a36b339a14a ("drm/xe/fbdev: use the same 64-byte stride alignment as i915")
Link: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com">https://lore.kernel.org/r/ae51d1e224048bdc87bf7a56d8f5ebd0fbb6a383.1756931441.git.jani.nikula@intel.com</a>
Signed-off-by: Jani Nikula <a class="moz-txt-link-rfc2396E" href="mailto:jani.nikula@intel.com">&lt;jani.nikula@intel.com&gt;</a>

</pre>
    </blockquote>
    Seems to me like this should be fixed at the xe level, not worked
    around at the display level?<br>
    <br>
    It shouldn't be too hard to look at what's going wrong and fix it at
    the right level instead of not even attempting to look at it.<br>
    <br>
    Best regards,<br>
    ~Maarten Lankhorst<br>
  </body>
</html>

--------------ME950IcmIjfYPADbPW8m13FR--
