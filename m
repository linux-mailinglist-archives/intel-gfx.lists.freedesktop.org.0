Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7506880DA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 16:00:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C79710E1C5;
	Thu,  2 Feb 2023 15:00:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11A810E1C5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 14:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675349998; x=1706885998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XVvruJLLPzyRxTmjZrIBm7taq0+diOq6rmRTNedpIQY=;
 b=ME/Rkubw6+L8rPqO/RxkHihGmBWqUSLlVENqE5I5e7Yvj1KrBtOABcd3
 KjLmidBIKR9HjbrXmMJUW/iMSuLdG5+WKXCEB887N18Dt1bIlQ2/o6/a8
 d8n7EH+ak0ecudzd5IsamH2xaAoo9J05zUju/VpRi6/S3vU4XZ3ve6OG5
 oVPwURl1CxsrWJggf/RA59zOLK8Yj3d/Xrol7zpAYgGCQTr7k8Vk/k5gL
 hzP6DINXa0mmUc1H4al3MO3c1QK/unSItA9uKHQtLHbn5ZTP8ONdo7fmh
 dwmm4CKCbTDLYMe3gAl918eYV40Ubk4UFQcx+sJLEbB0tYErzbZc5KmkW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="316460503"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="316460503"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 06:59:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="665311258"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="665311258"
Received: from mrogowsx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.35.12])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 06:59:56 -0800
Date: Thu, 2 Feb 2023 15:59:52 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <Y9vP6Of+XNmNTGgP@ashyti-mobl2.lan>
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

Pushed in drm-intel-gt-next.

Thank you,
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
