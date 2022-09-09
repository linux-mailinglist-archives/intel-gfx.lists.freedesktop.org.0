Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6515B3EBD
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 20:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303F710E0FA;
	Fri,  9 Sep 2022 18:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792E910ED7B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 18:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1662747650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/Oj0w65pWzq0eyq5N0R8OQAwV3hAbUsHH9TvTl9BF4Q=;
 b=NTURJzGWLbH7xjI4p/LOSl9ooUi6afw6SIAP6jsbtgkpnsROzXkYFinRQxyfQe6sWpFrsp
 jbmkCta2ZHhlSYe2oN2dzx3ot1KN2WCiYh1tIYEVc0rGS/StC/4+YjgXYDOMC9W7EOfG4r
 l4we7LVVDNYYT3oPjpf0WpmbdrEBIjo=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-341-XF-_4HbmNs6lIGlysNNQsA-1; Fri, 09 Sep 2022 14:20:49 -0400
X-MC-Unique: XF-_4HbmNs6lIGlysNNQsA-1
Received: by mail-qv1-f71.google.com with SMTP id
 og5-20020a056214428500b00496b5246db5so1778365qvb.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Sep 2022 11:20:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:user-agent:organization
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date;
 bh=/Oj0w65pWzq0eyq5N0R8OQAwV3hAbUsHH9TvTl9BF4Q=;
 b=2iEgrz9lWfJRhuFAdD4dVtxats4/3FU1ydo8f8Pnk4Y4bqImMuN0xSC2Ej3o9IFHLU
 ap2jaSyoV3Oi6qOZNWGAHXNP5C2ZgpZ9xskRgqYnxJ/ZLXlayC2Q0aaAYHBfuCMkfdnr
 nkNxRBmvXpoiWJG+RHemVw7y4wcO6cYDWVG9Ub3Vb82j7kpfInZRvICE2kUqfT8cxv70
 7vzROygSHck9TQL2QpotTomnlmFf2HkVp1aWpP+CMFsdgt0+Sx3iDiwVWep/1sbcfhJo
 5NBi1VmBExPadxtXOQGC847n7DHySeeyxsBtmbC89TYoQElL70LH7wLLMyEwX6DyuRe7
 S5Iw==
X-Gm-Message-State: ACgBeo26Af2KyXd7lfqVSk3Wusjgx8mFcPNFXLwNQnIyqe064yQ8dqfs
 FZw7/0/ISXNSQ/xRn00ve8d8UWyniS4JU2xCrEgNn0cCwGsa9IxRZVdTIvUkO5dY0I2gU0GhJ5P
 eRP3cpODHFq+sUeIpfXs76XBzBWWR
X-Received: by 2002:a05:622a:290:b0:344:85a7:82be with SMTP id
 z16-20020a05622a029000b0034485a782bemr13615389qtw.687.1662747648797; 
 Fri, 09 Sep 2022 11:20:48 -0700 (PDT)
X-Google-Smtp-Source: AA6agR7zCs24Vvl5U8qZhBZaEay6VmFEC1UEvB5paXezrqCjzTzFcUFQRnQiGSq4gyHigzthZN3Kuw==
X-Received: by 2002:a05:622a:290:b0:344:85a7:82be with SMTP id
 z16-20020a05622a029000b0034485a782bemr13615367qtw.687.1662747648480; 
 Fri, 09 Sep 2022 11:20:48 -0700 (PDT)
Received: from ?IPv6:2600:4040:5c48:e00::9e6? ([2600:4040:5c48:e00::9e6])
 by smtp.gmail.com with ESMTPSA id
 n19-20020ac81e13000000b003445d06a622sm803487qtl.86.2022.09.09.11.20.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Sep 2022 11:20:47 -0700 (PDT)
Message-ID: <fd8560b9acf83970fa964cabae151ecd50715606.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: =?ISO-8859-1?Q?Aur=E9lien?= <aurelien.intel@ap2c.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Hans
 de Goede <hdegoede@redhat.com>, dri-devel@lists.freedesktop.org
Date: Fri, 09 Sep 2022 14:20:46 -0400
In-Reply-To: <115b5a5ebddcd268ee5f7688400448a2@ap2c.com>
References: <878rms7emr.fsf@intel.com>
 <183219aab00.2890.be34037ad6564a4fe81285fd91a8f407@ap2c.com>
 <YxsMcH37rRkt0cfj@intel.com> <115b5a5ebddcd268ee5f7688400448a2@ap2c.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] Developing a new backlight driver for specific OLED
 screen
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

On Fri, 2022-09-09 at 15:49 +0000, Aurélien wrote:
> Hi, 
> 
> > + dri-devel mailing list that looks more appropriated.
> > + Hans and Lyude who were recently working to standardize some of the
> > backlight stuff.
> 
> Thank you for these contacts. I'll try there if I need.
> 
> > I don't believe you want to use the i915 API, but move the common functions
> > to the drm subsystem itself and then reuse as a drm device.
> 
> If there is enough generic code I'll do everything with the DRM API. Unfortunately I can't spend too much time in order to generalize the i915 common functions.
> 
> > Aurélien, are you aware of drivers/gpu/drm/display/drm_dp_helper.c and
> > all the functions around struct dp_aux_backlight and struct
> > drm_edp_backlight_info?
> 
> Not yet. Since I'm not familiar with GPU/display drivers I didn't know what could be a good starting point. 
> Indeed I already checked the intel_dp_aux_backlight.c code. That's why I told about using the "i915 API code" at first. But since this display is independent from the GPU i didn't want to link both code. 
> Then that's a really good point if there is already an independant API. I'll have a look this evening.
> 
> > Does the display use some proprietary, non-VESA DPCD registers? There's
> > already some of that in i915 for Intel proprietary interfaces.
> 
> For sure. It's an OLED display. Thus there is no backlight. It uses specific registers to control the brightness of the screen.
> Unfortunately I guess the mechanism is not shared with many OLED displays...
> 
> Thank you for your help.

Seems like we've got a pretty good argument for renaming this from backlight
to something else at some point. FWIW, the word backlight is sometimes used
around these parts simply to describe controlling the brightness of an OLED
screen.

> 
> Aurélien
> 

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

