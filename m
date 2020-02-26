Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EC3170217
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 16:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5586E9AF;
	Wed, 26 Feb 2020 15:15:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688786E9AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 15:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582730155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=vlqJvdOJUT/fcJ/c+/eBjXQbTAJrNXWIRm6p2rPgmi0=;
 b=Q0NQCH4oxv/INF7Zln9febrAKbOv4yRuKioSwFUGPWQ8ziGf1N8dSFWdiRoAvqj7lR/wMV
 8wi7i2PNgRA9iQinHr39huCNAtOeR2J0Odkr8axYti1iK2owRGLLPehNWGx9iMPIt2i5ag
 xQqP3jxG3n4dsQjVX0OsTYptQMR0Sjg=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-4Vntp-FoNOyCPUjyIttBbw-1; Wed, 26 Feb 2020 10:15:46 -0500
X-MC-Unique: 4Vntp-FoNOyCPUjyIttBbw-1
Received: by mail-wr1-f72.google.com with SMTP id n12so1599627wrp.19
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 07:15:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=vlqJvdOJUT/fcJ/c+/eBjXQbTAJrNXWIRm6p2rPgmi0=;
 b=mlHCKAvXnr3lSklRYT0s7hGLOG/tk7gTvLNvGnVGkW8MvYSdaTHpA/y9QZ+XMw3ss2
 jpj37n1W+jnriQU1X9xDkEPrB60rRPyjrMvWQkjzFOIY4rlKidepjzNbp6aK2V3O/6lm
 2X5yv9EfdoIwYzy/z34I1ulBq04X/6f1x8c8DSavOzdpvj9/U5chtDwtnxxc43P9FAfy
 3DDPjcRJi9NYjNKjrrQQZlqtysgOmQP0A4QTn5rmA+sQPUXFpVZJq6JTXBWRmECdZjz4
 f2H2xCqWDypeD6aGKEcgdkP5cfUayEaWZedflEn8c3pKSlTa9SVUnbbJbqkkYGRzEsQL
 46LQ==
X-Gm-Message-State: APjAAAWT8e7FR50q45oL9aUWitRIMqNKYOq2s3jUSUnd1s95x9gLaHPE
 0fSYv7RXt2aPu+EN7dfkcuc174sCYgJPiuV4LRdUSOINe5LJ5bDMe9IPm4a++s3wtV6WIEc0ksB
 4miIwPKX5j3p78SDv/SR+K//ZLQEO
X-Received: by 2002:a1c:9854:: with SMTP id a81mr5884457wme.1.1582730144069;
 Wed, 26 Feb 2020 07:15:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqwag0vTFX22t7gPPA5l7esl1Nj/Rk2Mq5RJdLikdQu43lnhFzehhKnaVD4Gt5NN9LZrlqU0mw==
X-Received: by 2002:a1c:9854:: with SMTP id a81mr5884441wme.1.1582730143825;
 Wed, 26 Feb 2020 07:15:43 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-fc7e-fd47-85c1-1ab3.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:fc7e:fd47:85c1:1ab3])
 by smtp.gmail.com with ESMTPSA id r28sm3721723wra.16.2020.02.26.07.15.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Feb 2020 07:15:43 -0800 (PST)
From: Hans de Goede <hdegoede@redhat.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <99213368-5025-8435-502b-3d23b875ca60@redhat.com>
Date: Wed, 26 Feb 2020 16:15:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-gfx] 5.6 DP-MST regression: 1 of 2 monitors on TB3 (DP-MST)
 dock no longer light up
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lyude and everyone else,

Lyude I'm mailing you about this because you have done a lot of
work on DP MST, but if this rings a bell to anyone else feel
free to weigh in on this.

I'm currently using a Lenovo X1 7th gen + a Lenovo TB3 gen 2 dock
as my daily rider for testing purposes. When 5.6-rc1 came out I
noticed that only 1 of the 2 1920x1080@60 monitors on the dock
lights up.

There are no kernel errors in the logs, but mutter/gnome-shell says:

gnome-shell[1316]: Failed to post KMS update: Page flip of 93 failed

With 93 being the crtc-id of the crtc used for the monitor which is
displaying black. Since then I've waited for 5.6-rc3 hoping that a
fix was already queued up, but 5.6-rc3 still has this problem.

gnome-shell does behave as if all monitors are connected, so the
monitor is seen, but we are failing to actually send any frames
to it.

I've put a log collected with drm.debug=0x104 here:
https://fedorapeople.org/~jwrdegoede/drm-debug.log

This message stands out as pointing to the likely cause of this problem:

[    3.309061] [drm:intel_dump_pipe_config [i915]] MST master transcoder: <invalid>

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
