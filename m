Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F323A89A1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 21:36:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E92B26E18E;
	Tue, 15 Jun 2021 19:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4964C6E18E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 19:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623785766;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=llnAE3X+Il5R8O881N30+k0POgEFanp8l+fSoeV24QM=;
 b=AmAd4DXFZi99Gn8uMAsF7+V7TEz7YAW0UTslZNbEzvscCe80/wMcgiGdmaQZv2ohyJVfgs
 ipy0meWow1aitj65B8plxvwd1ryAE/2IRufnnn4wCmbxMsPcGYmcFw3kSmGhSEVj1U1e/u
 RtAZdKtPYClEf+bj7jAijYz/Noc6vZs=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-590-yZRBEGKQNliD93y16AOu3w-1; Tue, 15 Jun 2021 15:36:05 -0400
X-MC-Unique: yZRBEGKQNliD93y16AOu3w-1
Received: by mail-oo1-f70.google.com with SMTP id
 v8-20020a0568200048b0290249f46c70eeso74781oob.22
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 12:36:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=llnAE3X+Il5R8O881N30+k0POgEFanp8l+fSoeV24QM=;
 b=tTL++M0ZvwkFl7iNdCTBe/5kPGinDE2zgTIT/uniGp6ja3uFL+f6wkEoPjTEJtjs6H
 yuNpnEdahEX67L52xmnJuJOWRIUfugw4gRp+BJ2RO6F+xvjRuj7HfY2AALizgNNtSjxt
 6Oq+45wrhkqbjIWTQfLa+QG83j2EzrNmYEBhe2Hk9oaGR7lDGfKziaFWhVMdSfD8usHe
 UIUSWJbQIvaxHmD7rtKbhqGA8QtYzBQ8c3b5mSb0lcEj8KFuVJRbK3caAlEQe/pa+29L
 nK7TILvlMBT6b25rD9Q6vZvtZxYTu6NtAkIh3FcV/GRZXuOYiUfIpwyE1bEmsNI8xxUf
 vO+w==
X-Gm-Message-State: AOAM53088EH34iJscJGp9GOVbYZTfDxg6GL4HOtICVp72y7v6xWX8/Nj
 baBq6Sm48JVcMwBK4JQ0g5B9QgDsKk/m/Tc6d+jw/I4ATc28nhz64K8hG2yMS/t9tuJemI9xQ72
 MMMxGS6PFxGnSMpQECAVdTGplsX+R
X-Received: by 2002:a05:6808:210:: with SMTP id
 l16mr500262oie.154.1623785764704; 
 Tue, 15 Jun 2021 12:36:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz8QXhsFTV+W1cxlEpGDuWEWDQP8JmMvkjeZyUYAqX7GqD4McjXkjMc2mNDLmE9O/Xu0RrqmA==
X-Received: by 2002:a05:6808:210:: with SMTP id
 l16mr500251oie.154.1623785764560; 
 Tue, 15 Jun 2021 12:36:04 -0700 (PDT)
Received: from redhat.com ([198.99.80.109])
 by smtp.gmail.com with ESMTPSA id u1sm3965076ooo.18.2021.06.15.12.36.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Jun 2021 12:36:04 -0700 (PDT)
Date: Tue, 15 Jun 2021 13:36:02 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20210615133602.0699492d.alex.williamson@redhat.com>
In-Reply-To: <20210615133519.754763-5-hch@lst.de>
References: <20210615133519.754763-1-hch@lst.de>
 <20210615133519.754763-5-hch@lst.de>
Organization: Red Hat
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 04/10] driver core: Don't return
 EPROBE_DEFER to userspace during sysfs bind
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, linux-s390@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jason Gunthorpe <jgg@nvidia.com>, intel-gfx@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Tony Krowiak <akrowiak@linux.ibm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 15 Jun 2021 15:35:13 +0200
Christoph Hellwig <hch@lst.de> wrote:

> @@ -547,10 +538,9 @@ static int call_driver_probe(struct device *dev, struct device_driver *drv)
>  
>  static int really_probe(struct device *dev, struct device_driver *drv)
>  {
> -	int local_trigger_count = atomic_read(&deferred_trigger_count);
>  	bool test_remove = IS_ENABLED(CONFIG_DEBUG_TEST_DRIVER_REMOVE) &&
>  			   !drv->suppress_bind_attrs;
> -	int ret = -EPROBE_DEFER, probe_ret = 0;
> +	int ret, probe_ret = 0;

nit, probe_ret initialization could be removed with this patch too.

>  
>  	if (defer_all_probes) {
>  		/*
> @@ -559,17 +549,13 @@ static int really_probe(struct device *dev, struct device_driver *drv)
>  		 * wait_for_device_probe() right after that to avoid any races.
>  		 */
>  		dev_dbg(dev, "Driver %s force probe deferral\n", drv->name);
> -		driver_deferred_probe_add(dev);
> -		return ret;
> +		return -EPROBE_DEFER;
>  	}
>  
>  	ret = device_links_check_suppliers(dev);
> -	if (ret == -EPROBE_DEFER)
> -		driver_deferred_probe_add_trigger(dev, local_trigger_count);
>  	if (ret)
>  		return ret;
>  
> -	atomic_inc(&probe_count);
>  	pr_debug("bus: '%s': %s: probing driver %s with device %s\n",
>  		 drv->bus->name, __func__, drv->name, dev_name(dev));
>  	if (!list_empty(&dev->devres_head)) {
> @@ -681,11 +667,7 @@ static int really_probe(struct device *dev, struct device_driver *drv)
>  		dev->pm_domain->dismiss(dev);
>  	pm_runtime_reinit(dev);
>  	dev_pm_set_driver_flags(dev, 0);
> -	if (probe_ret == -EPROBE_DEFER)
> -		driver_deferred_probe_add_trigger(dev, local_trigger_count);

This was the only possible uninitialized use case afaict.  Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
