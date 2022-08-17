Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7244596E3F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:16:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62ED78F7F6;
	Wed, 17 Aug 2022 12:16:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C4C8F83E
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:16:14 +0000 (UTC)
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 113FF401B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1660738572;
 bh=DSb7iQYDJqXj92ygGsNtJZCJ5hZY67yzyY/MzoJmNKE=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=KRDNs4DlZy0naxAqTyeX1AwWIBsGndM/pZCct6xxhGDhtruewwNGbnLNqFtR/+xVu
 Vi8uMkkLwuBExQqEHSKegzN52m4KQ1oFmF59s6ZWAMrczktLTAduHMxS+LN4ecn2vr
 W1vVAiAJIfkn0zqMMsVKsNM2PX0D/MTbcBtm+j6q+Ra7CjjFvDvmNjyMPot7/680H8
 XHwnHVTDywMfU4SXcTj/eoRcqqCH2iKJsf/Ksh11S07ebk7mNJJ7mmBtqR63NMAiH8
 5p0oTwOe1UyY4X7UHyizoP7XRdGKPBpRwvgPWNr1Jb8gLGbgHMf5VKauPZobUO7RE6
 +oyiLh7AqG5Xg==
Received: by mail-oo1-f69.google.com with SMTP id
 x20-20020a4a6214000000b0044896021930so5577983ooc.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 05:16:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
 bh=DSb7iQYDJqXj92ygGsNtJZCJ5hZY67yzyY/MzoJmNKE=;
 b=pq7Whu6RSB2uUMLLF9LjLxk1+EIe9tclY330aUEjaaWXg/1xHtbkJtVK2rNJdZtSuC
 OI5xx28HcqRKrWXMo0vjaL4+4mfZLMC8ge6PbCcjWAbrDmbUthbKDFmIY1PTNnCDRxUd
 XjfqbZZwfDQjOycn/j80g6G4AQkAav4u4MvyOjkCLo6iRR2L551BKsecIj/zgFSzCIph
 a6bJjDG/WIBQMaeLNNfHb9ZLOO5hWZgeZcHybCn87h0gZuhita6KLBD29XrLM7z6uOhu
 eornYmZEZhmdcl3LSMcGXAUK5X/UF8Ouf8c1JCImedE+tyQ4XzMb9tJO+Gh9bZdmtC73
 rNxw==
X-Gm-Message-State: ACgBeo23nV6NJEKZzGrem7RmtKk/9Ze7nDJUaHFrqgbfcxrNolq/pHFK
 jTFbnkLVCAUH7XP0KOlOh0V2IrOe5Xgm73ijdo+QvW8zjz8PZfc9DRgoi4TZwefMyKER18EVDM4
 HDRIOjLynA6Ne5aoZzZm1MuO6KzQjiDM4hu+T9i+R1Bboe7edN29u9gdOdyCX4A==
X-Received: by 2002:a9d:f05:0:b0:637:1068:1081 with SMTP id
 5-20020a9d0f05000000b0063710681081mr8767022ott.224.1660738570901; 
 Wed, 17 Aug 2022 05:16:10 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6Z5e/K5f+romlAexEX5pnAcJ6x32GsOIarjF+40/jrQPnGq70CyhTWg+eQG6ziTT55YrNeb9nZ9rmgCxcOdlo=
X-Received: by 2002:a9d:f05:0:b0:637:1068:1081 with SMTP id
 5-20020a9d0f05000000b0063710681081mr8767013ott.224.1660738570591; Wed, 17 Aug
 2022 05:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <CACO55tt=Op=0E94kK+1M8cDXNCk5Tkc=FMR8=OQFc5ohehjwaw@mail.gmail.com>
 <CAAd53p49X95MKrTDUq92LuHw3y2i09fUA2HEPzM1EcO8xO97Eg@mail.gmail.com>
 <CACO55tvgmb4Vog701idDYGuh125S9mjWPXhftxDMZ7hg-nQXBw@mail.gmail.com>
 <CAAd53p4W9rjmVJcUasy9hb1Yam+846+Oomvc2r9RMNmWeh_=0w@mail.gmail.com>
 <YvzYGGXils/Gf44d@intel.com>
In-Reply-To: <YvzYGGXils/Gf44d@intel.com>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Wed, 17 Aug 2022 20:15:58 +0800
Message-ID: <CAAd53p49zc2G1KutPMUcUBM3_rbCh9_40e0mdtcZKb+C69QL_Q@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Switch TGL-H DP-IN to dGFX when
 it's supported
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Karol Herbst <kherbst@redhat.com>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com,
 Zenghui Yu <yuzenghui@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 17, 2022 at 7:59 PM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:

[snipped]

> I had a quick trawl through some Windows stuff for this and
> it does seem to do a few extra checks:
> - platform must be TGL-H (nothing else has the DPin stuff I guess)
> - OpRegion header must indicate dGPU presence

Is the dGPU presence denoted by the return bitmask of
INTEL_DSM_FN_GET_BIOS_DATA_FUNCS_SUPPORTED?

IIUC the mask 20 won't be set when dGPU is not present.

>
> Otherwise it does call this DSM uncoditionally on boot/S4 resume
> so seems like that is the only really validated configuration.
> Although it does seem to explicitly turn off displays prior to
> the DSM so that does perhaps indicate that those ports might have
> also been enabled via the iGPU by the BIOS. Not sure if disabling
> the ports would work correctly after the DSM or not. If not then
> the DSM call would need to happen after state readout/sanitization
> so that we can shut things down gracefully.
>
> Additionally after the DSM call it scans the FIA TC live state
> bits to check for DPin usage. Looks like its trying to make sure
> the driver stops poking at the relevant power wells once in DPin
> mode. i915 doesn't check that stuff atm so we might end up
> mangling something while the dGPU is driving the port.

Thanks for investigating this. I am not really familiar with other
stuffs you mentioned, but I am happy to test any follow-up patch.

Kai-Heng

>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
