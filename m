Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1385430D20
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 02:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 252266E041;
	Mon, 18 Oct 2021 00:43:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7224A6E041
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 00:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634517797;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c2coGEDRpLtaKxQwlBYXpM+qcwpVi4zUNyxwVVEWbA0=;
 b=igMmsC/hMCAqF4muskH7Cspnut1RYsv/AF0TxwYjGBc+Rw86c/hr5SScGV6q8DP8dcxqqe
 MleOcbkBMEWhpqddQMdwv9wBUNB/Z2RU4Zkb54a11B26eQ++xJ2KZnogcokRHdfvi7FNh6
 HU/tNLjqRyz7fHQzoNjy8QOzDJOVX6w=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-566-p_RNNCLuN7u70oYbFr5AOw-1; Sun, 17 Oct 2021 20:43:16 -0400
X-MC-Unique: p_RNNCLuN7u70oYbFr5AOw-1
Received: by mail-ot1-f69.google.com with SMTP id
 w16-20020a9d5a90000000b0055036b7abd9so9703327oth.22
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 Oct 2021 17:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=c2coGEDRpLtaKxQwlBYXpM+qcwpVi4zUNyxwVVEWbA0=;
 b=Lqh7g4Q6T39kez9ahVTMm64BHAEXsITZKLOdkA77cw+ztWXPlxOzZg08VJIWX2c3SI
 5dt7Lmrfg68Xk7+tvhdVKfgr5Fyyg7Kg0zSCdHPnfpbo16XUVT5KM7eoETEwKzNidCGl
 oofAALLuCcXYby09QXhXXSHGLhY9XEeubMNHTnoHP97C1Zys6Jbd82iD6jxy+eL0vAJI
 dUYuDIuzLiPEcpzYrt1CN0T7WtTLhuZP2b3ly8sJlMUn+yJ7bu2yny+pgbsQf+xVFR1z
 J82k1bidrhVG8dbJWozUQB9Orsivik60P3jkVhHRhB5mk7nzlezZXlwmyKeQ2Yy9GOc2
 Mb3g==
X-Gm-Message-State: AOAM532XFNiscrwXgBIrwa+xADjd4Nh5591hGTMFLGlBncDLxn84XySP
 w77qu3cWdaFpPwMuX96EYXkL/Sc05NoERU7VbAF6HeAPZqJ5dVaWsCZJvZ/GuQ3ijJgI/PQhW35
 oztFqJWwXKvbOqm8usbgFkg+xEKJZiBUyHvkDqOXwo3Ns
X-Received: by 2002:a9d:6159:: with SMTP id c25mr18882394otk.286.1634517795482; 
 Sun, 17 Oct 2021 17:43:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJztKGxpFDMvbMcHluDQ7hglWmWO8dW2OWCwwt5fvtTi2zxIXEiUOM2mRy4S1B5EI/zzXFjNaSrlkAJ0mCeO1wU=
X-Received: by 2002:a9d:6159:: with SMTP id c25mr18882383otk.286.1634517795267; 
 Sun, 17 Oct 2021 17:43:15 -0700 (PDT)
MIME-Version: 1.0
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
 <20211015071625.593-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20211015071625.593-7-ville.syrjala@linux.intel.com>
From: David Airlie <airlied@redhat.com>
Date: Mon, 18 Oct 2021 10:43:04 +1000
Message-ID: <CAMwc25rOjvQi+x0ot3bROgBXDd_4TRswqXN=Us_M0pcDsHcFWw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>,
 Jani Nikula <jani.nikula@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Move iCLKIP readout to the
 pch code
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

On Fri, Oct 15, 2021 at 5:17 PM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move the lpt_get_iclkip() call from hsw_crt_get_config()
> since that's where we have the lpt_program_iclkip() call
> as well.
>
> Tehcnically this isn't perhaps quite right since iCLKIP
> is providing the CRT dotclock. So one can argue all of
> it should be directly in intel_crt.c. But since the CRT
> port is the only one on the PCH sticking it all into the
> PCH code seems OK.

Looks good,

Reviewed-by: Dave Airlie <airlied@redhat.com>

