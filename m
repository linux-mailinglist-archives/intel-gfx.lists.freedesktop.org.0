Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 534703E7D3A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 18:13:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 335886E04A;
	Tue, 10 Aug 2021 16:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93936897C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 14:50:33 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 28-20020a17090a031cb0290178dcd8a4d1so2158356pje.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 07:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6bWvrTdryJ9Kr+Y1iNZlAE5XmrjtHq6EDhqbPAS8m0o=;
 b=mFTNiEePHCF7XmyJghvQPKq30kaOpRtFtuYP6xhlzI6pVuGt2sl7m0mZrrark+VIUG
 yoCyQPbjLzBvvKkYaPnOpnoVrtR+mJOHttmB3QyYTrXt8g6gbr0I6/v3wrdqE12UkgfS
 GjkpHMA9yccRsMnmaODhdCBUWYLX+Bouc4Z7DN+p8mPNsfslT+54rv+4E28P4EubVlPq
 GMlF5RYYOVcym8KVDjuyDJSgIbjn4FegzlT4rnIm8SMOQewO1vs+Nlc+mSOuyDLVbGOz
 YE+dQ4cmhGLTkVXIvHZDB7QeDLGC7zWrnb4BtkLVBFf97YSYvkkzmY3Flcm07LHtq6x7
 FE1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6bWvrTdryJ9Kr+Y1iNZlAE5XmrjtHq6EDhqbPAS8m0o=;
 b=AxfwGQ1bz37gZIE4GCjFtPFVJmKfteTrfAH0Z8a+gZb72qIOUykZCwFKMVdpeyd8Pe
 WZ/UR2cPh3pX2ce8NwVDKGbOvA9p/4fYFHNIaDZy4YQ0C3AZw+2aheyA/MbO7hMDtPuY
 OitVMqxG2BwwP2OyM0TJvsb5JEIWibvKYdZlSGn8oighsKZvZlUrgncW3AMvW7gvwlIF
 SOjT3rLXM35qjAoG3+v/StXAZ3wYfEsxsy87xII8Gb3A+bi0TVjJkiM3oShD0beB80Vq
 yMrJNkSHF2khhyw4fZWsEYKzHXZpKShYncZT5ioDNiZ8l5uEYKj68jZ/1mOOlkvWVV9T
 ugKA==
X-Gm-Message-State: AOAM531kkkPTLS5zShW2me41XTyZDY1CF1EtL6MWJvjxyhvqjEQGtFhb
 g0pc8YhOdMPbHCSxtQj/9g8=
X-Google-Smtp-Source: ABdhPJwkOSfcfZo6LGbrekBJx5KKCk3AMDZVd3aoAe8eSroO+qK8UyLljCVix2ubOaGyFkcjCkMulA==
X-Received: by 2002:aa7:8c56:0:b029:3c2:ca37:800 with SMTP id
 e22-20020aa78c560000b02903c2ca370800mr29525852pfd.54.1628607033175; 
 Tue, 10 Aug 2021 07:50:33 -0700 (PDT)
Received: from localhost.localdomain ([143.244.60.168])
 by smtp.gmail.com with ESMTPSA id u20sm27404885pgm.4.2021.08.10.07.50.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 07:50:32 -0700 (PDT)
From: youling257 <youling257@gmail.com>
To: imre.deak@intel.com
Cc: alsa-devel@alsa-project.org, intel-gfx@lists.freedesktop.org,
 tiwai@suse.de, tv@lio96.de
Date: Tue, 10 Aug 2021 22:50:18 +0800
Message-Id: <20210810145018.24001-1-youling257@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210623134601.2128663-1-imre.deak@intel.com>
References: <20210623134601.2128663-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 10 Aug 2021 16:13:19 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] ALSA: hda: Release controller display
 power during shutdown/reboot
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

it cause my intel 7820hk cpu failed shutdown.
