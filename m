Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8C337B9CD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 11:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFA26EB6E;
	Wed, 12 May 2021 09:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1776A6EB6D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 09:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620813426;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=6e6lrv4EFX1ClsmLlH8VajL1NpbF1vS30ceHQh0Res8=;
 b=bIEcDIF+ZcA7HrLc5akAStrM2TMtlFunTlSlIpfNWjcVNvD5k9pNsuk/XnASsGBJTPpnIU
 Tyeo3VeriXzvhHW4JTfoZrWdDgkZSqLAhOPYc58YTasMTmei2lLTT7HOeCtBnrnrMhvmup
 PoV1qJQFnJJO76d6gWLHrDr0lohrLfc=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-K-foKhzGMI6Zz42Ea0O9kw-1; Wed, 12 May 2021 05:57:04 -0400
X-MC-Unique: K-foKhzGMI6Zz42Ea0O9kw-1
Received: by mail-ej1-f71.google.com with SMTP id
 z15-20020a170906074fb029038ca4d43d48so6978766ejb.17
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 02:57:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=6e6lrv4EFX1ClsmLlH8VajL1NpbF1vS30ceHQh0Res8=;
 b=GnsvDYPxToCRj014dLmqjU+IS1kHPXTM24TcTW9PbmaPUUahFNifMp9kxHEkjF2uD6
 JsvK3uIpdG8uZyKUxRVUE+p/ZKV62EeAQ+DcasQ2OEZhIqwl/0Fin3zc7u4mKsuTwLUF
 pUVrNJzwnY05s8SLcUM6Y0+ThGLiXy8xQikwStovqiMcg82Olt6F07JnhIwcYo1GGNiY
 hATH4u89fTV0XSF4LdZtnVgvni1gQ6dS93kybVrgYIfmqGs8iGzEagDxtMjt2xFYbYyh
 2Ny8DwSXvzrRZ6DGGbeViOZBbjocGRoF3WARsMLPsPu9CcpRVaeZeR97ia6fMrEjhi+T
 3ICg==
X-Gm-Message-State: AOAM531iu84AUlfwTiLRY4V2Jn//jTJumUXGB8atqkWDFk1bXS8kR52X
 I4Ny2P+2nzITbVmrloMtDuX8fOGAmB8SFj/tHtOuoydHvnfBjpJqVeYdHzloetAqpoP5q0Q+5Rk
 FdCMSpjrOycwUUO+2JNvKc/1BPr7S
X-Received: by 2002:a17:907:161e:: with SMTP id
 hb30mr35921527ejc.360.1620813423462; 
 Wed, 12 May 2021 02:57:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyrxmcJPsjqx53dOgzOCXnxighYSre3movdMRw3u56m86siQvmLGKutpPfmJTuLtQSBjvqMiA==
X-Received: by 2002:a17:907:161e:: with SMTP id
 hb30mr35921512ejc.360.1620813423329; 
 Wed, 12 May 2021 02:57:03 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id j22sm14488928ejt.11.2021.05.12.02.57.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 May 2021 02:57:02 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <b6b61cf0-5874-f4c0-1fcc-4b3848451c31@redhat.com>
Date: Wed, 12 May 2021 11:57:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: [Intel-gfx] 5.13 i915/PAT regression on Brasswell,
 adding nopat to the kernel commandline worksaround this
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
Cc: x86@kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

I'm not sure if this is a i915 bug, or caused by changes elsewhere in the kernel,
so I thought it would be best to just send out an email and then see from there.

With 5.13-rc1 gdm fails to show and dmesg contains:

[   38.504613] x86/PAT: Xwayland:683 map pfn RAM range req write-combining for [mem 0x23883000-0x23883fff], got write-back
<repeated lots of times for different ranges>
[   39.484766] x86/PAT: gnome-shell:632 map pfn RAM range req write-combining for [mem 0x1c6a3000-0x1c6a3fff], got write-back
<repeated lots of times for different ranges>
[   54.314858] Asynchronous wait on fence 0000:00:02.0:gnome-shell[632]:a timed out (hint:intel_cursor_plane_create [i915])
[   58.339769] i915 0000:00:02.0: [drm] GPU HANG: ecode 8:1:86dfdffb, in gnome-shell [632]
[   58.341161] i915 0000:00:02.0: [drm] Resetting rcs0 for stopped heartbeat on rcs0
[   58.341267] i915 0000:00:02.0: [drm] gnome-shell[632] context reset due to GPU hang

Because of the PAT errors I tried adding "nopat" to the kernel commandline
and I'm happy to report that that works around this.

Any hints on how to debug this further (without doing a full git bisect) would be
appreciated.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
