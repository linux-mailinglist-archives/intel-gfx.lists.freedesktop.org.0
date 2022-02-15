Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF764B66A1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 09:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAFE489E11;
	Tue, 15 Feb 2022 08:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD55E89E35
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 08:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644915267; x=1676451267;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=RI+Kg2NsJxbvGWGhXqlACoq49jcRuD7oFF+QkWEgYAw=;
 b=gAI+x9ae1CZbR/Ip3+mpKOrPkvhEJR1M8WKYZAuyw+eNDIkmfyguansG
 EKonPJUoU9DN0cM1JXZCbCqguU/yv1fgMty81vDlS5Vp+AC/s77i8mSXS
 vBM3F+zNY6Jm5TbasxNZ1hKFwNsH60N5SqKADPwuEDXb/eQiehXVw29yS
 bAxo0JMcjeRVWYkissCG4g3+z7Oq7iWubUx5NFr77gOZvJEfrYFzVtjuH
 FSH3bKfsVfgBwegixmxe0jQFTqkKRnKyEexsFUdGk2HF8fClPpAceYDDc
 /VDlL5wF9+LpiNZoCYLjVen09S8Cy5ZV95s9w13pBRie5X47Ord6Kdbos Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="230259556"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="230259556"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 00:54:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="635728563"
Received: from ylian16-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.20.230])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 00:54:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YgrBKynMQfRLKKrs@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1644850884.git.jani.nikula@intel.com>
 <961d790b9eacad248fa7ac7d1dcf6179f543dccd.1644850884.git.jani.nikula@intel.com>
 <YgrBKynMQfRLKKrs@intel.com>
Date: Tue, 15 Feb 2022 10:54:23 +0200
Message-ID: <87y22c5x34.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/fbdev: add
 intel_fbdev_to_framebuffer() helper
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

On Mon, 14 Feb 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Feb 14, 2022 at 05:02:06PM +0200, Jani Nikula wrote:
>> Wrap accessing struct intel_fbdev guts in a helper.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 6 +++---
>>  drivers/gpu/drm/i915/display/intel_fbdev.c           | 8 ++++++++
>>  drivers/gpu/drm/i915/display/intel_fbdev.h           | 7 +++++++
>>  3 files changed, 18 insertions(+), 3 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/driv=
ers/gpu/drm/i915/display/intel_display_debugfs.c
>> index f4de004d470f..b0bcf4d54a74 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -16,6 +16,7 @@
>>  #include "intel_dp_mst.h"
>>  #include "intel_drrs.h"
>>  #include "intel_fbc.h"
>> +#include "intel_fbdev.h"
>>  #include "intel_hdcp.h"
>>  #include "intel_hdmi.h"
>>  #include "intel_pm.h"
>> @@ -124,9 +125,8 @@ static int i915_gem_framebuffer_info(struct seq_file=
 *m, void *data)
>>  	struct drm_framebuffer *drm_fb;
>>=20=20
>>  #ifdef CONFIG_DRM_FBDEV_EMULATION
>> -	if (dev_priv->fbdev && dev_priv->fbdev->helper.fb) {
>> -		fbdev_fb =3D to_intel_framebuffer(dev_priv->fbdev->helper.fb);
>> -
>> +	fbdev_fb =3D intel_fbdev_to_framebuffer(dev_priv->fbdev);
>
> The "_to_" implies to me that this is just some kind of cast,
> which it is not. So I would drop the "_to_".

Heh, I was going back and forth between with and without _to_, ended up
with this one for no particular reason. I'll flip once more. :)

>
> Otherwise the series seems fine
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks.

>
>> +	if (fbdev_fb) {
>>  		seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp, modifier 0x%llx=
, refcount %d, obj ",
>>  			   fbdev_fb->base.width,
>>  			   fbdev_fb->base.height,
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/dr=
m/i915/display/intel_fbdev.c
>> index 41d279db2be6..3ef683916ba6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -680,3 +680,11 @@ void intel_fbdev_restore_mode(struct drm_device *de=
v)
>>  	if (drm_fb_helper_restore_fbdev_mode_unlocked(&ifbdev->helper) =3D=3D =
0)
>>  		intel_fbdev_invalidate(ifbdev);
>>  }
>> +
>> +struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev=
 *fbdev)
>> +{
>> +	if (!fbdev || !fbdev->helper.fb)
>> +		return NULL;
>> +
>> +	return to_intel_framebuffer(fbdev->helper.fb);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/dr=
m/i915/display/intel_fbdev.h
>> index de7c84250eb5..8e86c08d544f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
>> @@ -10,6 +10,8 @@
>>=20=20
>>  struct drm_device;
>>  struct drm_i915_private;
>> +struct intel_fbdev;
>> +struct intel_framebuffer;
>>=20=20
>>  #ifdef CONFIG_DRM_FBDEV_EMULATION
>>  int intel_fbdev_init(struct drm_device *dev);
>> @@ -19,6 +21,7 @@ void intel_fbdev_fini(struct drm_i915_private *dev_pri=
v);
>>  void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool sy=
nchronous);
>>  void intel_fbdev_output_poll_changed(struct drm_device *dev);
>>  void intel_fbdev_restore_mode(struct drm_device *dev);
>> +struct intel_framebuffer *intel_fbdev_to_framebuffer(struct intel_fbdev=
 *fbdev);
>>  #else
>>  static inline int intel_fbdev_init(struct drm_device *dev)
>>  {
>> @@ -48,6 +51,10 @@ static inline void intel_fbdev_output_poll_changed(st=
ruct drm_device *dev)
>>  static inline void intel_fbdev_restore_mode(struct drm_device *dev)
>>  {
>>  }
>> +static inline struct intel_framebuffer *intel_fbdev_to_framebuffer(stru=
ct intel_fbdev *fbdev)
>> +{
>> +	return NULL;
>> +}
>>  #endif
>>=20=20
>>  #endif /* __INTEL_FBDEV_H__ */
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
