Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00933145DCA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 22:25:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D24A6F8F1;
	Wed, 22 Jan 2020 21:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C4F6F8F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 21:25:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 13:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="222158484"
Received: from scarbo-desk.jf.intel.com (HELO scarbo-DESK) ([10.165.21.146])
 by fmsmga008.fm.intel.com with ESMTP; 22 Jan 2020 13:25:37 -0800
Date: Wed, 22 Jan 2020 13:18:59 -0800
From: Steve Carbonari <steven.carbonari@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200122211859.GB30454@scarbo-DESK>
References: <20191212140459.1307617-27-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212140459.1307617-27-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [27/33] drm/i915/gt: Expose engine->mmio_base via
 sysfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 12, 2019 at 02:04:53PM +0000, Chris Wilson wrote:
> Use the per-engine sysfs directory to let userspace discover the
> mmio_base of each engine. Prior to recent generations, the user
> accessible registers on each engine are at a fixed offset relative to
> each engine -- but require absolute addressing. As the absolute address
> depends on the actual physical engine, this is not always possible to
> determine from userspace (for example icl may expose vcs1 or vcs2 as the
> second vcs engine). Make this easy for userspace to discover by
> providing the mmio_base in sysfs.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

Reviewed code.
Downloaded and tested the patch with dependent previous patch
[26/33] drm/i915/gt: Expose engine properties via sysfs.
The mmio_base file appears with correct value.

Reviewed-by: Steve Carbonari <steven.carbonari@intel.com>
Tested-by: Steve Carbonari <steven.carbonari@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> index df263af3a9ea..abddd8d0f9ae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> @@ -48,6 +48,15 @@ inst_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  static struct kobj_attribute inst_attr =
>  __ATTR(instance, 0444, inst_show, NULL);
>  
> +static ssize_t
> +mmio_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> +{
> +	return sprintf(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
> +}
> +
> +static struct kobj_attribute mmio_attr =
> +__ATTR(mmio_base, 0444, mmio_show, NULL);
> +
>  static const char * const vcs_caps[] = {
>  	[ilog2(I915_VIDEO_CLASS_CAPABILITY_HEVC)] = "hevc",
>  	[ilog2(I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC)] = "sfc",
> @@ -170,6 +179,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
>  		&name_attr.attr,
>  		&class_attr.attr,
>  		&inst_attr.attr,
> +		&mmio_attr.attr,
>  		&caps_attr.attr,
>  		&all_caps_attr.attr,
>  		NULL
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
