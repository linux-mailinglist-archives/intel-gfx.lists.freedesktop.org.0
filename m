Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E79F48B1E6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 17:19:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3F210EA21;
	Tue, 11 Jan 2022 16:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8E110EA21
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 16:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641917964; x=1673453964;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=k9M33QakA1ATt6LO2D1IJ3DSCoeCMflc9ynAs2GxCxo=;
 b=AxBYkxrguOGkD5uudp/kveHvbsmYXwEqZpYZz3uSWG+wRAWMUDEov2ZP
 I61WahlVpAS/ZwLhoAP7NOCPFI9X346qIQ6QfZ2Ci5M1ImM3Hs/29A/nf
 Gf8yuA63sVnqic0+2ctTq3JkWkXhufFDg1Q/isQ3BFdZk74qu2NWnpUhB
 aviw8ZDU2XECZERVUPuBMeTXPYsUyoOIxlyAQBTSPi+3Y84B/odrA1nAy
 Njoq1JiYDqVCKkB7kjAoJYu/S7uAIZiOzQ0ojrKabnnqE5MNvXrjffa8a
 v3JeBJn0Y/MrtUKjHZkFcUAX1+WPP+vXEcRcwl4fyzPUx28aeAmlKb9fv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="267861615"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="267861615"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:19:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="691042866"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 08:19:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20220111161405.kpgf2jxvlkdnlk4v@ldmartin-desk2>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220110095740.166078-1-jani.nikula@intel.com>
 <20220110095740.166078-3-jani.nikula@intel.com>
 <YdxYvXfkOgTFFg+s@intel.com> <87pmoy8xdb.fsf@intel.com>
 <20220111161405.kpgf2jxvlkdnlk4v@ldmartin-desk2>
Date: Tue, 11 Jan 2022 18:19:10 +0200
Message-ID: <8735lu8cu9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/vga: switch to use VGA
 definitions from video/vga.h
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Jan 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Tue, Jan 11, 2022 at 10:55:44AM +0200, Jani Nikula wrote:
>>On Mon, 10 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om> wrote:
>>> On Mon, Jan 10, 2022 at 11:57:39AM +0200, Jani Nikula wrote:
>>>> The video/vga.h has macros for the VGA registers. Switch to use them.
>>>>
>>>> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
>>>>  1 file changed, 5 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/dr=
m/i915/display/intel_vga.c
>>>> index fa779f7ea415..43c12036c1fa 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vga.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
>>>> @@ -7,6 +7,7 @@
>>>>  #include <linux/vgaarb.h>
>>>>
>>>>  #include <drm/i915_drm.h>
>>>> +#include <video/vga.h>
>>>>
>>>>  #include "i915_drv.h"
>>>>  #include "intel_de.h"
>>>> @@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev_=
priv)
>>>>
>>>>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
>>>>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
>>>> -	outb(SR01, VGA_SR_INDEX);
>>>> -	sr1 =3D inb(VGA_SR_DATA);
>>>> -	outb(sr1 | 1 << 5, VGA_SR_DATA);
>>>> +	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I);
>>>
>>> Not a huge fan of some of these defines since now I have
>>> no idea what register this is selecting.
>>
>>It's a bit silly that we have our own macros for this stuff, but I get
>>the point. Took me a while to figure the changes out because the macros
>>in video/vga.h aren't even grouped in a helpful way.
>>
>>I guess you'd prefer patch [1] over patches 3-4 in this series then? For
>>me the main goal is to just reduce the size of i915_reg.h.
>
> alternatively, to patch video/vga.h to make it pretty?

If it's enough to just rearrange the stuff, maybe. But if it means
renames, I'm not going to touch a big pile of ancient fb/vga drivers to
chase this one.


BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
