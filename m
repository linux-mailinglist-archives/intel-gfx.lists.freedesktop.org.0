Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E518681BB0
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 21:43:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D219110E290;
	Mon, 30 Jan 2023 20:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F225910E29B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675111389; x=1706647389;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Xj+jn1+TUOKtoTFqF17eFxMhSs6iQz7zQ5PNqbXrtgc=;
 b=oInTLG2qkJ2XWasaqx7uMHrlAyJGkgsV/rn3eJWjVyT4TqUuWpI0nIBr
 3ixgbiTlKggKZHgm7vK6GWkSgoQDDKgSeoJj/X2Kmlm158k2cfO/l9mD3
 Kv0xOEjgv7ppD6H7qxw596KGOoCXrZ/KyoAZJEqljL37GXiELb7FAiI8s
 eaZ6HEyk8QhzIEfA/0ckQk/6TEhKZk2f2D0Me4172kQ03UZxcBGq9kUxR
 NszityxOedPZ7BkYkrqP2JnaZt/12PPxkdzi6/aYy6nZfckL5+h7SXFtv
 s4h9aQ9U7cmpmrYStKHAh86G9l8ktfSVKVf6bDpnx4csmC89sHu9CP4Pa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="315630979"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="315630979"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 12:43:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="727634500"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="727634500"
Received: from mczerwo-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.58.44])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 12:43:06 -0800
Date: Mon, 30 Jan 2023 21:43:04 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y9gr2CaE8OOWmAjk@ashyti-mobl2.lan>
References: <20230130131358.16800-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130131358.16800-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use sysfs_emit() and
 sysfs_emit_at()
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

Hi Nirmoy,

On Mon, Jan 30, 2023 at 02:13:58PM +0100, Nirmoy Das wrote:
> Use sysfs_emit() and sysfs_emit_at() in show() callback
> as recommended by Documentation/filesystems/sysfs.rst
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

I thought we didn't have anymore of those...

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gt/sysfs_engines.c | 34 ++++++++++++-------------
>  1 file changed, 16 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> index f2d9858d827c..323cead181b8 100644
> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> @@ -24,7 +24,7 @@ static struct intel_engine_cs *kobj_to_engine(struct kobject *kobj)
>  static ssize_t
>  name_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "%s\n", kobj_to_engine(kobj)->name);
> +	return sysfs_emit(buf, "%s\n", kobj_to_engine(kobj)->name);
>  }
>  
>  static struct kobj_attribute name_attr =
> @@ -33,7 +33,7 @@ __ATTR(name, 0444, name_show, NULL);
>  static ssize_t
>  class_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
> +	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_class);
>  }
>  
>  static struct kobj_attribute class_attr =
> @@ -42,7 +42,7 @@ __ATTR(class, 0444, class_show, NULL);
>  static ssize_t
>  inst_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "%d\n", kobj_to_engine(kobj)->uabi_instance);
> +	return sysfs_emit(buf, "%d\n", kobj_to_engine(kobj)->uabi_instance);
>  }
>  
>  static struct kobj_attribute inst_attr =
> @@ -51,7 +51,7 @@ __ATTR(instance, 0444, inst_show, NULL);
>  static ssize_t
>  mmio_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
> -	return sprintf(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
> +	return sysfs_emit(buf, "0x%x\n", kobj_to_engine(kobj)->mmio_base);
>  }
>  
>  static struct kobj_attribute mmio_attr =
> @@ -107,11 +107,9 @@ __caps_show(struct intel_engine_cs *engine,
>  	for_each_set_bit(n, &caps, show_unknown ? BITS_PER_LONG : count) {
>  		if (n >= count || !repr[n]) {
>  			if (GEM_WARN_ON(show_unknown))
> -				len += snprintf(buf + len, PAGE_SIZE - len,
> -						"[%x] ", n);
> +				len += sysfs_emit_at(buf, len, "[%x] ", n);
>  		} else {
> -			len += snprintf(buf + len, PAGE_SIZE - len,
> -					"%s ", repr[n]);
> +			len += sysfs_emit_at(buf, len, "%s ", repr[n]);
>  		}
>  		if (GEM_WARN_ON(len >= PAGE_SIZE))
>  			break;
> @@ -182,7 +180,7 @@ max_spin_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.max_busywait_duration_ns);
> +	return sysfs_emit(buf, "%lu\n", engine->props.max_busywait_duration_ns);
>  }
>  
>  static struct kobj_attribute max_spin_attr =
> @@ -193,7 +191,7 @@ max_spin_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.max_busywait_duration_ns);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.max_busywait_duration_ns);
>  }
>  
>  static struct kobj_attribute max_spin_def =
> @@ -236,7 +234,7 @@ timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.timeslice_duration_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.timeslice_duration_ms);
>  }
>  
>  static struct kobj_attribute timeslice_duration_attr =
> @@ -247,7 +245,7 @@ timeslice_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.timeslice_duration_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.timeslice_duration_ms);
>  }
>  
>  static struct kobj_attribute timeslice_duration_def =
> @@ -287,7 +285,7 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.stop_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.stop_timeout_ms);
>  }
>  
>  static struct kobj_attribute stop_timeout_attr =
> @@ -298,7 +296,7 @@ stop_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.stop_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.stop_timeout_ms);
>  }
>  
>  static struct kobj_attribute stop_timeout_def =
> @@ -343,7 +341,7 @@ preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.preempt_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.preempt_timeout_ms);
>  }
>  
>  static struct kobj_attribute preempt_timeout_attr =
> @@ -355,7 +353,7 @@ preempt_timeout_default(struct kobject *kobj, struct kobj_attribute *attr,
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.preempt_timeout_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.preempt_timeout_ms);
>  }
>  
>  static struct kobj_attribute preempt_timeout_def =
> @@ -399,7 +397,7 @@ heartbeat_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->props.heartbeat_interval_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->props.heartbeat_interval_ms);
>  }
>  
>  static struct kobj_attribute heartbeat_interval_attr =
> @@ -410,7 +408,7 @@ heartbeat_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  {
>  	struct intel_engine_cs *engine = kobj_to_engine(kobj);
>  
> -	return sprintf(buf, "%lu\n", engine->defaults.heartbeat_interval_ms);
> +	return sysfs_emit(buf, "%lu\n", engine->defaults.heartbeat_interval_ms);
>  }
>  
>  static struct kobj_attribute heartbeat_interval_def =
> -- 
> 2.39.0
