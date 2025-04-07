Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 063E2A7DC9B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 13:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8710B10E3FE;
	Mon,  7 Apr 2025 11:44:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="TW6cxFE1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1435310E458
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Apr 2025 11:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1744026276;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=eS8/MDF55jTlJzaiGnIXoLhU3M2uiKzUvfGs64uHkvU=;
 b=TW6cxFE1T64pz5g2SUFqksUjsSEluJL1HIZmUuhbxkA5ztPpb10ZBj17hVzTp1dlY38PE9
 ajbKHjoZVDhehgd8lxzyWl5vI4bjFf5+AwXuELWrdfKYS8hNGFB1rS61MFCMcB2ja5M14G
 0Ph7znt1xePZagxRv51kBrcXbjUdCZ4=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-465-pijFx7DpMn-j3WwHJuNpaQ-1; Mon, 07 Apr 2025 07:44:34 -0400
X-MC-Unique: pijFx7DpMn-j3WwHJuNpaQ-1
X-Mimecast-MFC-AGG-ID: pijFx7DpMn-j3WwHJuNpaQ_1744026274
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-39141ffa913so2204312f8f.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Apr 2025 04:44:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1744026273; x=1744631073;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aBshJz3O4BkmJV0YxapwwLE5fSu4IiUM8iRAkf0MK20=;
 b=C/ZeYkFXP0L4mevbJL8T4dXXG/0TtZoFqYGfIYNezdImW8ighf7lv5NptgkwfqTuVO
 BIVnQGcuV67IBenRT0VcR90kmnAqF82EKB8KL1JIdQuuD0OLWkx41O7t0ew67UbveZoW
 IEZDy4DNH+z5bBroSWfhvN9W2KPDY6HgR7QOZIyf+SMUbnH1AxeTmxGPNYfs2VE5srZE
 YQkMPzTZCEx1btqTVj/DjtdVH+NMH/Ew6qSspWgUSD+Yssw/fhVcijEUplvJ/npi/7gh
 vFE7S/1ndWKoaxiEA7DVx3fEs1mzFPmPiPwin626Vn2/MvbKNbLSY/HPltQ9LzV/e62A
 R+KQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6CZd/mXUCDx2PLKJWpRx4DvGIOWk8vJZkOiWzlcVfCHfsRdBqmF7uhkQOQhFtbDhi/WZUZ3vXWU8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyErNrR2KepWRBbW9Qj6pJPNZpoXhvLB5SWJnlHR+gHEFK/yveF
 uRQvwdWwX1fgn4GOmqxfKgVed4ijJpz1Rm/mV19Cqzg6pT3ck1yH1ml61Fq2TQ36fYUGLXB46l2
 3yQdINoyHJgRd1glVZXT4I7UNg6jXi/VIF/YZVIR2uQqG+mOROroChIKriLgimY7Aow==
X-Gm-Gg: ASbGncsySwyXoxSESOkhrI+v5QTOnJ9KZEIGsa6Tj98LxgnHdhJXT9cG1JbX3ZRnWxK
 OCg5lrIaN0V3ZMyHkvq600OhLBkI7eQ7bU6/PqjCMhyOf3rzNWr+oENK1vIMEWgUu0mfSKqWjpW
 ecU9BLvChR7A9aMKfwoHArv9LfKYuillG4KpT7Y7ra2+bx/dtpCEAFcICngiwId2baHYoKaCgBK
 5XHlpTInx3TAe7pF5mDaAPD7tFAO/SNe9ku5+j7c4BzCNmzhRY5lS69/gFZhF5Fw/r4VT70y03Z
 /7ldF7nNKkUwXk3fw8yaKuQ9a+Epg112g0N9jBh7Eg==
X-Received: by 2002:a5d:5849:0:b0:38f:39e5:6b5d with SMTP id
 ffacd0b85a97d-39d0de66a96mr11260760f8f.44.1744026273636; 
 Mon, 07 Apr 2025 04:44:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEWXlqrP/re+Sk6pAWJZpdkT1N/4Lq9lK2bgw5EGkIBM2LLPGUe1aIGmx1ILTGNUEo+PKnmw==
X-Received: by 2002:a5d:5849:0:b0:38f:39e5:6b5d with SMTP id
 ffacd0b85a97d-39d0de66a96mr11260738f8f.44.1744026273278; 
 Mon, 07 Apr 2025 04:44:33 -0700 (PDT)
Received: from gmonaco-thinkpadt14gen3.rmtit.csb ([185.107.56.35])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-39c3020d980sm11998426f8f.61.2025.04.07.04.44.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Apr 2025 04:44:32 -0700 (PDT)
Message-ID: <1ba35cb3e9dff4065f4df397e8a775a97b83302b.camel@redhat.com>
Subject: Re: [PATCH 2/2] drm: Schedule the HPD poll work on the system
 unbound workqueue
From: Gabriele Monaco <gmonaco@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Tejun Heo <tj@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
 stable@vger.kernel.org, dri-devel@lists.freedesktop.org
Date: Mon, 07 Apr 2025 13:44:30 +0200
In-Reply-To: <20230901140403.2821777-2-imre.deak@intel.com>
References: <20230901140403.2821777-1-imre.deak@intel.com>
 <20230901140403.2821777-2-imre.deak@intel.com>
Autocrypt: addr=gmonaco@redhat.com; prefer-encrypt=mutual;
 keydata=mDMEZuK5YxYJKwYBBAHaRw8BAQdAmJ3dM9Sz6/Hodu33Qrf8QH2bNeNbOikqYtxWFLVm0
 1a0JEdhYnJpZWxlIE1vbmFjbyA8Z21vbmFjb0ByZWRoYXQuY29tPoiZBBMWCgBBFiEEysoR+AuB3R
 Zwp6j270psSVh4TfIFAmbiuWMCGwMFCQWjmoAFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgk
 Q70psSVh4TfJzZgD/TXjnqCyqaZH/Y2w+YVbvm93WX2eqBqiVZ6VEjTuGNs8A/iPrKbzdWC7AicnK
 xyhmqeUWOzFx5P43S1E1dhsrLWgP
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Bq-WepxNt7dz6B1X3yqu1ze8KTFEFhqMDPwZE2CUcuY_1744026274
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Fri, 2023-09-01 at 17:04 +0300, Imre Deak wrote:
> On some i915 platforms at least the HPD poll work involves I2C
> bit-banging using udelay()s to probe for monitor EDIDs. This in turn
> may trigger the
>=20
> =C2=A0workqueue: output_poll_execute [drm_kms_helper] hogged CPU for
> >10000us 4 times, consider switching to WQ_UNBOUND
>=20
> warning. Fix this by scheduling drm_mode_config::output_poll_work on
> a
> WQ_UNBOUND workqueue.
>=20
> Cc: Tejun Heo <tj@kernel.org>
> Cc: Heiner Kallweit <hkallweit1@gmail.com>
> CC: stable@vger.kernel.org=C2=A0# 6.5
> Cc: dri-devel@lists.freedesktop.org
> Suggested-by: Tejun Heo <tj@kernel.org>
> Suggested-by: Heiner Kallweit <hkallweit1@gmail.com>
> Reported-by: Heiner Kallweit <hkallweit1@gmail.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9245
> Link:
> https://lore.kernel.org/all/f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.co=
m
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
> =C2=A0drivers/gpu/drm/drm_probe_helper.c | 8 +++++---
> =C2=A01 file changed, 5 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/drm_probe_helper.c
> b/drivers/gpu/drm/drm_probe_helper.c
> index 3f479483d7d80..72eac0cd25e74 100644
> --- a/drivers/gpu/drm/drm_probe_helper.c
> +++ b/drivers/gpu/drm/drm_probe_helper.c
> @@ -279,7 +279,8 @@ static void reschedule_output_poll_work(struct
> drm_device *dev)
> =C2=A0=09=09 */
> =C2=A0=09=09delay =3D HZ;
> =C2=A0
> -=09schedule_delayed_work(&dev->mode_config.output_poll_work,
> delay);
> +=09queue_delayed_work(system_unbound_wq,
> +=09=09=09=C2=A0=C2=A0 &dev->mode_config.output_poll_work,
> delay);
> =C2=A0}
> =C2=A0
> =C2=A0/**
> @@ -614,7 +615,7 @@ int
> drm_helper_probe_single_connector_modes(struct drm_connector
> *connector,
> =C2=A0=09=09 */
> =C2=A0=09=09dev->mode_config.delayed_event =3D true;
> =C2=A0=09=09if (dev->mode_config.poll_enabled)
> -=09=09=09mod_delayed_work(system_wq,
> +=09=09=09mod_delayed_work(system_unbound_wq,
> =C2=A0=09=09=09=09=09 &dev-
> >mode_config.output_poll_work,
> =C2=A0=09=09=09=09=09 0);
> =C2=A0=09}
> @@ -838,7 +839,8 @@ static void output_poll_execute(struct
> work_struct *work)
> =C2=A0=09=09drm_kms_helper_hotplug_event(dev);
> =C2=A0
> =C2=A0=09if (repoll)
> -=09=09schedule_delayed_work(delayed_work,
> DRM_OUTPUT_POLL_PERIOD);
> +=09=09queue_delayed_work(system_unbound_wq,
> +=09=09=09=09=C2=A0=C2=A0 delayed_work,
> DRM_OUTPUT_POLL_PERIOD);
> =C2=A0}
> =C2=A0
> =C2=A0/**

Hello all,

why was this patch never included?
Especially this 2/2 seems to solve a latency issue we are observing:
the work can last milliseconds and run on isolated cores, affecting
latency requirements in some real time scenarios (e.g. oslat).

Thanks,
Gabriele

