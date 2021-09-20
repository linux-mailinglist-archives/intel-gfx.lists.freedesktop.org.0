Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F6B4127BA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 23:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17C2E6E861;
	Mon, 20 Sep 2021 21:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A28D46E861
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 21:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1632171971;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QYU+FG0NgEDN5QbX73oIIwX0hoDQqIX9Lmp+LI9M8t8=;
 b=IVX8sqH0GkBdoygwqFlodSyNhOWnP5fNDyerDk+Af4qxE+nDFFDS2ntCIGXCY+kaRPmovT
 Ad1yMCkvyRdXzLZYccZY8FxGlA7LyrYyRrEFwjBMSbtogLxBM9mfSGd9NDVFoc9r3My1kh
 BvXdIAZlHf8KCnb2hbt/fWu46IylNKg=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-532-a2of5mcePZO8Ly-k2Nc3mg-1; Mon, 20 Sep 2021 17:06:10 -0400
X-MC-Unique: a2of5mcePZO8Ly-k2Nc3mg-1
Received: by mail-qt1-f199.google.com with SMTP id
 o7-20020a05622a138700b002a0e807258bso185199048qtk.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 14:06:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=QYU+FG0NgEDN5QbX73oIIwX0hoDQqIX9Lmp+LI9M8t8=;
 b=VqoLXkNcLme/ppEPARdh2khiQrPCXTmIQCBJuYXUvXNrbNiTbm7cQGcur4YgAC0lVp
 jMOxd8VsY/84r+9bkjCVMgPiRSwaM8JBre7hPHws8YG3nZqspMcyrImDF1U4O/Prwjbc
 fDlcbyVWOmVKAwh4MnJS23uzMowkM1WKtyBwtxDUuTLrUqkAfspdstnxJmEniRhrRKkV
 ipgeh/yqFJNiX8EuSHUd8U2bSSMsiSqZskCTcmFpEA7ZpFMI7TJ/p2K5xEN6R91ULZRu
 ymvdpnytLCzqsnLGuith/dpeR53yUgwrpD6mIkskWxB5L6B28BnhuHiw8z3IqQECDdyK
 Uz2w==
X-Gm-Message-State: AOAM531IOlAyGQetlfxaci/nF1+4FW6WYZIdVaQ5szB2ZWyK5vPKYhoQ
 rFUQBw9R9gxWGUoF8gyV8oBDEo3vBHL6KamwhNQsCTpp+Ln661B1FVX65eoW+0MVc3yilFEAnDT
 OlkuQ5fIjfU2OoZAboIGoZClBWa/8
X-Received: by 2002:ad4:44f3:: with SMTP id p19mr27905075qvt.33.1632171969966; 
 Mon, 20 Sep 2021 14:06:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyS2jHSKoCWXuvuoiupSPbp5jSZ8WpAjMlaKmSvPqiXflQvfBQ1tFrLdqMk5bP0vfLGV3tG7A==
X-Received: by 2002:ad4:44f3:: with SMTP id p19mr27905058qvt.33.1632171969792; 
 Mon, 20 Sep 2021 14:06:09 -0700 (PDT)
Received: from [192.168.8.206] (pool-108-49-102-102.bstnma.fios.verizon.net.
 [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id x4sm7820134qkx.62.2021.09.20.14.06.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 14:06:09 -0700 (PDT)
Message-ID: <38aa092530b936609ba2b425e5caf2d63dbcf617.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Rajat Jain <rajatja@google.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>,  Mark Gross <mgross@linux.intel.com>, Andy
 Shevchenko <andy@infradead.org>, Ville =?ISO-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, Pekka
 Paalanen <pekka.paalanen@collabora.com>, Mario Limonciello
 <mario.limonciello@outlook.com>, Mark Pearson <markpearson@lenovo.com>,
 Sebastien Bacher <seb128@ubuntu.com>, Marco Trevisan
 <marco.trevisan@canonical.com>, Emil Velikov <emil.l.velikov@gmail.com>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org,  platform-driver-x86@vger.kernel.org
Date: Mon, 20 Sep 2021 17:06:07 -0400
In-Reply-To: <a4f10bbe-c87a-90f1-0691-01c0da485fa6@redhat.com>
References: <20210906073519.4615-1-hdegoede@redhat.com>
 <20210906073519.4615-10-hdegoede@redhat.com> <87sfy4x3ic.fsf@intel.com>
 <a4f10bbe-c87a-90f1-0691-01c0da485fa6@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Add privacy-screen support
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

On Thu, 2021-09-16 at 12:32 +0200, Hans de Goede wrote:
> 
> I'm fine with refactoring this a bit and adding
> an intel_modeset_probe_defer() helper for this, I assume I should also
> move the vga_switcheroo_client_probe_defer(pdev) check there?
> 
> As you suggested yourself in your reply to the coverletter I will
> push out the rest of the series to drm-misc-next while we figure this
> out. Assuming Lyude is happy with the answers which I gave to her
> remarks about some of the other patches.

I am, btw!

> 
> Regards,
> 
> Hans
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

