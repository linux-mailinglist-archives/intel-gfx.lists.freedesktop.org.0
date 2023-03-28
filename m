Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C5F6CC03B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 15:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B23B10E48D;
	Tue, 28 Mar 2023 13:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com
 [IPv6:2607:f8b0:4864:20::114a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0144410E28C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 02:24:15 +0000 (UTC)
Received: by mail-yw1-x114a.google.com with SMTP id
 00721157ae682-545e529206eso47666137b3.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 19:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112; t=1679970255;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=IIWk8E2FhD0ZC/ZMkyMUSyLH1n6qTXVTC28fBAMF0u4=;
 b=eSI0jSMtM8TCN3DIt0ALDF8asOGVoGQPxFSek4Og40V4GHTgb7VX0uVSFnjiDOcbxo
 EQ3YxSPgX5jfI/ZQvGom56MhyFLfgFUBZqwmx8himK0CTXSRg6UdvjMCyTUQWYOaksZE
 fDBQzfJiMuLM4b/9ll9TI9ZUrkGPERrDXmnvtsH1PSk3kAWp4zAb5+s3EDOujPm+XHOz
 ez2ZBUOHwemE68BkBAy+S4R1NRz/YNW2LraknIbs6ZrAcZTGI4Wx7n9kZMcwd2frIrFg
 VTGvQCA4KhdFehoRP7IDJDyjak4oEB5m4es16rsqwoQc4HlhGIVNHMRdkI5K3KsSdbfp
 V6tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679970255;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=IIWk8E2FhD0ZC/ZMkyMUSyLH1n6qTXVTC28fBAMF0u4=;
 b=gASynAeLeUIyQg+Kig3rQqGbEXMtNVIKdWDU/cos/BysPzNh+6Q1LZ0CrZm8YXBrpy
 F4iwiyVnc84kzPbqPjcjiuJPjCBj8HRQ6KOw9eUbnl8utfFN9Z0QlmmXlMrDxbB00hza
 4qhB1VwpM+324UixPfaiTITpfdh2561wuu+2ly57BpS+rc/fqtms15bLqyu9fKoFDg6R
 9STwob/VyWNx+AVXtlaBdOkRwha3+vS9CpYsVaGkR2XZGrSmuYzo28bxqloCk5pJjU45
 H3NZT0apdai9bkjKuzuxURhSkxZ7B8Ku7b6Kgszejr5ogo/W2CqvMZVJKHfVFqXP7W+A
 WXnw==
X-Gm-Message-State: AAQBX9eqNBXPU6fE4FJonBAq31Lr689KJdXmq3DHtugaQl41hbJ8/IUv
 55obWucaONSgft806rOSY+xY1t3Gn+8=
X-Google-Smtp-Source: AKy350Yc9gNnjUwkT1L/Czn4VDNPMMf9w37THZNTzarP3ln1ljYD3oSIACFpDcm6vwQtbisDUVLH1n76PiQ=
X-Received: from pandoh.svl.corp.google.com
 ([2620:15c:2c5:11:7ff3:b6c5:b0f1:63e8])
 (user=pandoh job=sendgmr) by 2002:a05:6902:18c7:b0:b72:fff0:2f7f with SMTP id
 ck7-20020a05690218c700b00b72fff02f7fmr11533578ybb.4.1679970255089; Mon, 27
 Mar 2023 19:24:15 -0700 (PDT)
Date: Mon, 27 Mar 2023 19:23:57 -0700
In-Reply-To: <20230327094047.47215-17-yi.l.liu@intel.com>
Mime-Version: 1.0
References: <20230327094047.47215-17-yi.l.liu@intel.com>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
Message-ID: <20230328022357.2268961-1-pandoh@google.com>
From: Jon Pan-Doh <pandoh@google.com>
To: yi.l.liu@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 28 Mar 2023 13:10:55 +0000
Subject: Re: [Intel-gfx] [PATCH v8 16/24] iommufd/device: Add
 iommufd_access_detach() API
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
Cc: kvm@vger.kernel.org, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, mjrosato@linux.ibm.com, lulu@redhat.com,
 yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com, jgg@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 Jon Pan-Doh <pandoh@google.com>, suravee.suthikulpanit@amd.com,
 robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023/3/27 02:40, Yi Liu wrote:
> diff --git a/drivers/iommu/iommufd/iommufd_private.h b/drivers/iommu/iommufd/iommufd_private.h
> index 2e6e8e217cce..ec2ce3ef187d 100644
> --- a/drivers/iommu/iommufd/iommufd_private.h
> +++ b/drivers/iommu/iommufd/iommufd_private.h
> @@ -263,6 +263,8 @@ struct iommufd_access {
>  	struct iommufd_object obj;
>  	struct iommufd_ctx *ictx;
>  	struct iommufd_ioas *ioas;
> +	struct iommufd_ioas *ioas_unpin;
> +	struct mutex ioas_lock;
>  	const struct iommufd_access_ops *ops;
>  	void *data;
>  	unsigned long iova_alignment;

I think you may need to initialize ioas_lock. I got lockdep warnings running
iommufd selftests against this patch. Those went away when I added mutex_init().

---
 drivers/iommu/iommufd/device.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/iommufd/device.c b/drivers/iommu/iommufd/device.c
index f0522d80919d..0eaae60f3537 100644
--- a/drivers/iommu/iommufd/device.c
+++ b/drivers/iommu/iommufd/device.c
@@ -474,6 +474,7 @@ iommufd_access_create(struct iommufd_ctx *ictx,
 	iommufd_ctx_get(ictx);
 	iommufd_object_finalize(ictx, &access->obj);
 	*id = access->obj.id;
+	mutex_init(&access->ioas_lock);
 	return access;
 }
 EXPORT_SYMBOL_NS_GPL(iommufd_access_create, IOMMUFD);
-- 
2.40.0.348.gf938b09366-goog

