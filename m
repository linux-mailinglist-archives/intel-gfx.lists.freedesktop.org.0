Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D43584327E9
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 21:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F35496EA65;
	Mon, 18 Oct 2021 19:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C4B6EA65
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 19:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634586406;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jQL0jVbOP+6WbzULS81lLCKVsttMv8hubfd57ew04Jg=;
 b=dUI6UptMO342UJy/LjePH1OkzktfimIeaaw0C69TL4F59EPYKVbTuhJv5rcXbeUNXHLdKq
 3rhagBgoyfj7uwoPyjVsylTqE2rmiODdy/uC0rNKwGjLky9Rk7nk3SanKpLD3yLnUObk2l
 hYWr9YSeQD1aEqsnKu3K7VSrB2dQgkw=
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com
 [209.85.161.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-yZQPt66XPLiIvnMW_fWW-A-1; Mon, 18 Oct 2021 15:46:45 -0400
X-MC-Unique: yZQPt66XPLiIvnMW_fWW-A-1
Received: by mail-oo1-f70.google.com with SMTP id
 k1-20020a4a8501000000b0029ac7b9dc82so468411ooh.17
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 12:46:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jQL0jVbOP+6WbzULS81lLCKVsttMv8hubfd57ew04Jg=;
 b=dq4jv9autBlvHchiK13zLaIZYTXasDMGjeZehIBH6IzaCWNEHCP5wPtvYaPwzVIaOb
 r1bz0JQSu8YkDB5eTLB0p3peBIN6WaJwxuj9vgU7+okxsvNAczNCH51+mMKDfHXx2E7T
 gYy+EUyMRlG/PPCS2Udrc/d9OxLbCE2UpXJeBIkolzDDYbSx5uktbgI29QwSGr/g1eDY
 AA3efTPrBT+LCfgHtxt4Sn7sHUb5IGh3QDBCzxH8IAzvI06jjUx3QtGzyOo6Fx3TPHPF
 i563dtzYRTz24Nsk//yPwRsABGtekQRXnGsxZDG3Qy8tzkEAq12SNIxfeTk91AR6lkyv
 u53A==
X-Gm-Message-State: AOAM530NeGjH2rhTpqdMj7FPaiKyERe17XisSynQ23lLozsyrHXJDRPK
 +L3n6/ojIwN3mZQLmDuTbhWe+uSIM+6tT3hgZcE22oStpIs1EySUKvOgmQF+gfNQgsm7exqfAkh
 K8UxlrGjIhnSDDmq/T+8aJYzidDRbW7SOJ52nbnkk66Yq
X-Received: by 2002:a4a:3bc8:: with SMTP id s191mr1384132oos.88.1634586404384; 
 Mon, 18 Oct 2021 12:46:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztqUB54jE4jDIlohb0K7pCi4f5Tx9EBXBroemQDwm9odt3V9tvmtYK0mhWJl4t0eVl2EufufczLzpy+uCpkSA=
X-Received: by 2002:a4a:3bc8:: with SMTP id s191mr1384123oos.88.1634586404180; 
 Mon, 18 Oct 2021 12:46:44 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-5-ville.syrjala@linux.intel.com>
 <20211018153525.21597-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211018153525.21597-1-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Tue, 19 Oct 2021 05:46:33 +1000
Message-ID: <CAMwc25quLa7eXH2XOSsnRzDWCuxQjEeXBJ6yLyOUnTdBeYXzsA@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915: Move LPT PCH readout code
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

On Tue, Oct 19, 2021 at 1:35 AM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Nuke the hsw_get_ddi_port_state() eyesore by putting the
> readout code into intel_pch_display.c, and calling it directly
> from hsw_crt_get_config().
>
> Note that the nuked TRANS_DDI_FUNC_CTL readout from
> hsw_get_ddi_port_state() is now etirely redundant since we
> get called from the encoder->get_config() so we already know
> we're dealing with the correct DDI port. Previously the
> code was called from a place where that wasn't known so
> it had to checked manually.
>
> v2: Clarify the TRANS_DDI_FUNC_CTL change (Dave)
>     Nuke the now unused *TRANS_DDI_FUNC_CTL_VAL_TO_PORT() (Dave)
>
> Cc: Dave Airlie <airlied@redhat.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Dave Airlie <airlied@redhat.com>

