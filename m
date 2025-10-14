Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B659BD791C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 08:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3576410E1F1;
	Tue, 14 Oct 2025 06:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="en46sja2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F8D110E1F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Oct 2025 06:29:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1760423359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UI6txKyy8k9QOYwf+tFQA/IV+UEUOLgyayptYbn27Fs=;
 b=en46sja2ZzMxvDaFjhvdz5ySWuFTNIDmLB0SU9FrABZVRB4/SgTyMg5lPireXZILqdijeJ
 Yuf0rKct3aeR/3IQSdrkEzLR8u7aXmGGIvpyasGLj+XTd2hGg0rUzMML71HSL4GbXc6stW
 YKVzyQBITt5XYWHNeqzC0qsXJFl+d34=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81-WPPweV3jP2O4ON1lVFoZDw-1; Tue, 14 Oct 2025 02:29:15 -0400
X-MC-Unique: WPPweV3jP2O4ON1lVFoZDw-1
X-Mimecast-MFC-AGG-ID: WPPweV3jP2O4ON1lVFoZDw_1760423354
Received: by mail-pl1-f199.google.com with SMTP id
 d9443c01a7336-28eb14e3cafso161279125ad.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Oct 2025 23:29:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760423354; x=1761028154;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UI6txKyy8k9QOYwf+tFQA/IV+UEUOLgyayptYbn27Fs=;
 b=HH3W30BmRQCEyMBt8V858+PO1Xsoiu6iGdopmZybGff41XZQpKna8DqIldgAa4yCJI
 ZmRILwFx+k0WOq3qsXtFwB+HLXQ37ZQqr/4cMmxgF9dNBfX2/MP7nqHI3TBRUj9w53qh
 sZiBijdrNFOujq55RVzlega2STVuN8+VsmYE3N+WxhkYBW7xKErfGz/f7mnDpXqH3NUL
 ptmUu24cnbvQjrVOtyU1MiiaePVm9DroHtWqulj2+wsX25rQgnqg0U8TO4QctgsrQe3p
 SpxI+v/DI8tgMkMDDLgeFdsdCtbqPOwkCz6hC2HKUklXeRQI8RXUdQLhaMwG5Q/9VxT0
 hEVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVCm+HwKrTF2OPVoGFPFcqDOBxzkS0jDcCCrwCOM5mMRHnXvs4CX1EAPyau1lsbZm8cpBWt9FoRaUA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YziVG2yt6O2SL4pHXPnaGOfD9Y06wxfp7bmwgGjOsiFFqMDpJCN
 iFoxb8ywG3CSLYnGtHTdM+qtsMqAduqyvSlqzERD6+jJYSQEzpz5udha9goQEmJag4KOsblYAzc
 nKyiQ4fcJh8KO+AzCBrfQab07716GU91NcLYZPfW5Id5wr64TXwvdbMK5w/SIidfULHYO8g1/CX
 xt+BN//4di93m4BkM44Et9KWPe2/x5N6Jo3o0edI0HrNmN
X-Gm-Gg: ASbGncuv62j7y+iZrxZs1wZqwpYYP3H0/xQgSuOVV+Cnccq9QVClQSnxVF6t8MnFhxi
 51XNeiHqY7EnY0G1/p6GNJ1dGRHpYj0rGy/PHkAi9OweI/O/by1RFmiNyexuKSBk52WCeN9bz0Y
 HGffIk+tc7EPgxeA2EFck96A==
X-Received: by 2002:a17:903:247:b0:26a:23c7:68da with SMTP id
 d9443c01a7336-2902739a818mr282376725ad.25.1760423354399; 
 Mon, 13 Oct 2025 23:29:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnJHr8t4OXIxEUBnHXJ25APkVBPXSc4Un3DwloFJFKMHgpbHbHKcxhCY7pfrcNFVS0V/dkBt5kIDbvNUebsoQ=
X-Received: by 2002:a17:903:247:b0:26a:23c7:68da with SMTP id
 d9443c01a7336-2902739a818mr282376495ad.25.1760423354014; Mon, 13 Oct 2025
 23:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <aOaOJ1YI-NgTloIy@intel.com>
 <20251011124920.2857-1-safinaskar@gmail.com>
In-Reply-To: <20251011124920.2857-1-safinaskar@gmail.com>
From: Pingfan Liu <piliu@redhat.com>
Date: Tue, 14 Oct 2025 14:29:03 +0800
X-Gm-Features: AS18NWA158_6ZWkibWidFrjXRcmwf-OOv6PA3Ko6Y_JjT5m-yNF20k408httupM
Message-ID: <CAF+s44S4-BLbkefoov=6RiSmLGskfNgBqBP3sHnWmcp8XoicUg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
To: Askar Safin <safinaskar@gmail.com>
Cc: ville.syrjala@linux.intel.com, alex.zuo@intel.com, 
 chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org, 
 jia.yao@intel.com, shuicheng.lin@intel.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 7HfD1MoJfavC7S58zheHcz6QSwcYqBikguVqymqDih4_1760423354
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

On Sat, Oct 11, 2025 at 8:49=E2=80=AFPM Askar Safin <safinaskar@gmail.com> =
wrote:
>
> Also, I just tested opposite thing. I. e. I tested v2 patch, but without
> intel_pxp_fini(i915) line. And the patch worked.
> I. e. intel_pxp_fini(i915) line is not needed for fix to work.
>

Since the best solution is not available, can this patch be considered
as an acceptable remedy for the kexec case?

Thanks,

Pingfan

