Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D7B6687D7
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 00:30:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AE410E969;
	Thu, 12 Jan 2023 23:30:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28E3710E96A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 23:29:58 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id c85so11675566pfc.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 15:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SHCvT7wXhmjcdrY7ZciTjWwkM6hHEFK0c3kr7hoBtAI=;
 b=ctCtdF94uRfNtxj/svWJF4NSsYdcvFve3xy3/rA8RydeTZ7UjWoTdqG7u996S2CKI/
 TehMGCzH40R8wzRHE6l/Qg7QIpGqgUVlPVx5uj/NZKO5kr67dJpoaxvPHITVJXyFOLHv
 XI3GC6OsKxboq+O8C/C5L6uBMgxgdkOV1ixRpFq9POB1J6aJKL1Uv59KlorrracbhXqB
 8typO4QQIPx+dtHB1y8GmaHatYoZsRzusYcwur5NGt7FKgqOdZb2xyUU4Agsx6TE09Wv
 rHhRLzbjoiEUBC8V4zaAkLFmE/QRWlPIeog/ftIYZCpg54BM2sFvRygIwk8+bRY8eR4u
 eCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SHCvT7wXhmjcdrY7ZciTjWwkM6hHEFK0c3kr7hoBtAI=;
 b=EKpnr2Rq4zHIis3K0vO+IQEEK+EqCgTVocPI2DKCtHJ5ewvMxQ8RSMRk478wnQ7Hxr
 AiMVEwJ37SrRk9Hj90eeMqOBT7FjYF4uHMr91vmbvYppVMfCD6ArINgGmT6WHLSLWpF7
 oVLhqFIpf9Q4dvrDIdpWLdaPCWPb3CzaM7uRFXRjkf2yJDBIgG8RNC7pBKykTxuk9Qkg
 0Kgu4zCv4DskxxDQGgI+XBQubL+8V0Gn0xdDR34zBfC9Hoi9LHLkZfPnYdSLZ4gFlRZW
 0dU/MzIopc49hwuJtxaEoY7HiBWSHndEX1ij5ptjFY/NXoMSVTzQTRf6+D31jOS0MQr/
 sl4A==
X-Gm-Message-State: AFqh2kpqyMu31QXvXQRbPP1XvqEHrMcT97XBwmfxYV1mBl90FP1FXmo6
 X3ZEMYqJxfx8RGuj3hDG7Ka0SA==
X-Google-Smtp-Source: AMrXdXtbHXwlb7QCOirDHbnB+4X6BOCeHXpVkWh3Dab4zeJLYVt/vQh0K+r8OkjQmzQev1L+tq2hCQ==
X-Received: by 2002:a05:6a00:4514:b0:574:8995:c0d0 with SMTP id
 cw20-20020a056a00451400b005748995c0d0mr1044208pfb.1.1673566198371; 
 Thu, 12 Jan 2023 15:29:58 -0800 (PST)
Received: from google.com (7.104.168.34.bc.googleusercontent.com.
 [34.168.104.7]) by smtp.gmail.com with ESMTPSA id
 m190-20020a6258c7000000b005821c109cebsm7829231pfb.199.2023.01.12.15.29.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Jan 2023 15:29:56 -0800 (PST)
Date: Thu, 12 Jan 2023 23:29:53 +0000
From: Sean Christopherson <seanjc@google.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>
Message-ID: <Y8CX8YwT/T9v4U/D@google.com>
References: <20230112203844.41179-1-mjrosato@linux.ibm.com>
 <20230112140517.6db5b346.alex.williamson@redhat.com>
 <bce7912a-f904-b5a3-d234-c3e2c42d9e54@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bce7912a-f904-b5a3-d234-c3e2c42d9e54@linux.ibm.com>
Subject: Re: [Intel-gfx] [PATCH v2] vfio: fix potential deadlock on vfio
 group lock
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
Cc: akrowiak@linux.ibm.com, jjherne@linux.ibm.com, farman@linux.ibm.com,
 imbrenda@linux.ibm.com, frankja@linux.ibm.com, pmorel@linux.ibm.com,
 david@redhat.com, linux-s390@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pasic@linux.ibm.com,
 jgg@nvidia.com, kvm@vger.kernel.org, pbonzini@redhat.com,
 borntraeger@linux.ibm.com, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 12, 2023, Matthew Rosato wrote:
> On 1/12/23 4:05 PM, Alex Williamson wrote:
> > On Thu, 12 Jan 2023 15:38:44 -0500
> > Matthew Rosato <mjrosato@linux.ibm.com> wrote:
> >> @@ -344,6 +345,35 @@ static bool vfio_assert_device_open(struct vfio_device *device)
> >>  	return !WARN_ON_ONCE(!READ_ONCE(device->open_count));
> >>  }
> >>  
> >> +static bool vfio_kvm_get_kvm_safe(struct kvm *kvm)
> >> +{
> >> +	bool (*fn)(struct kvm *kvm);
> >> +	bool ret;
> >> +
> >> +	fn = symbol_get(kvm_get_kvm_safe);
> >> +	if (WARN_ON(!fn))

In a related vein to Alex's comments about error handling, this should not WARN.
WARNing during vfio_kvm_put_kvm() makes sense, but the "get" is somewhat blind.

> >> +		return false;
> >> +
> >> +	ret = fn(kvm);
> >> +
> >> +	symbol_put(kvm_get_kvm_safe);
> >> +
> >> +	return ret;
> >> +}
> >> +
> >> +static void vfio_kvm_put_kvm(struct kvm *kvm)
> >> +{
> >> +	void (*fn)(struct kvm *kvm);
> >> +
> >> +	fn = symbol_get(kvm_put_kvm);
> >> +	if (WARN_ON(!fn))
> >> +		return;
> >> +
> >> +	fn(kvm);
> >> +
> >> +	symbol_put(kvm_put_kvm);
> >> +}
