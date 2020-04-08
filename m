Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B72261A1C9D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 09:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13AE46E839;
	Wed,  8 Apr 2020 07:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D32F6E839
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 07:27:45 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id 71so4825968qtc.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 00:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=qgf0TWjPpZoNAt2ioSSn8WvEg8RFxU+2Q13+kLcHMec=;
 b=QSOUKwHyWgwwRC0WdBGrZsgq7Ym+SpiNnnY6cu68PCOFM2wB7Cdkcd/prs724ZPmKN
 YmXxilSrtkTfrztV9LmbnQs8L909g4KAoJTo/LcO2ps6rxuO4o+15MFhPyD7sRzK2RBw
 4UBxYYCcO6WITmrnbph6NI1a5zw+6pBxDPDuKb2dTVGslP0sNcrc5IFtD877L3OUuTCv
 VPl6kxqwj0a11IFQZldQuIuszmD9bQwxiBioheDXuP+gC9fT2/baltIzjocDe47hG2UV
 pe2lXvZKYohIUCXaKOZPGHPF+pyRhIs7aVlG/img43JAbj1uQHBgDuEynv2BBz9NpSdl
 zY0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=qgf0TWjPpZoNAt2ioSSn8WvEg8RFxU+2Q13+kLcHMec=;
 b=Gys+P6l6FIsglScSQ34+aPjCjbFqO0o6RR6kFUj03W3vmeL45XfA0Ub1KpCxB/kVDQ
 QeKV0zBJBvV3D/JDK6gU/GlLxS6eFH99Ifc4WT5Hcmb2zjTGp2vk1zUnyYQSGr6wa7cy
 h+10bdNxHagqQHSAJ7KkegzM7SEXgPqjcb2TnBczubHq7z+JfM09fqNCfpGjmdNKZXRm
 PK6ifqRs4d39tEydqSzHu7uGEAN6M7W8f2lO/vdd/3/Bsi9PDALGCoRtV7npb3/WbsPQ
 ZJYAug/tNcqerUglshPs/SHuw0LQ1xsuCjgcVxa4LMfQYTFKbqd2slpD/5eCcvfY3Qu6
 r6Lg==
X-Gm-Message-State: AGi0PuZSzZY6jsAQXLgCCH2JRpey90uZe20v3NcLslYGGam3K0DVaguY
 1ela3QVPWOyesrO3kbLGJW4TI/Zo
X-Google-Smtp-Source: APiQypKkJ/mya3w6lL0T95sVsu3cgIQWwW65euk+AKouiDgWSiNk8tezDCuNmCE0sjXGHRxgT4D8fQ==
X-Received: by 2002:ac8:5384:: with SMTP id x4mr6021038qtp.135.1586330864588; 
 Wed, 08 Apr 2020 00:27:44 -0700 (PDT)
Received: from [192.168.1.153] (pool-72-92-48-173.phlapa.fios.verizon.net.
 [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id u126sm8291746qkh.66.2020.04.08.00.27.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Apr 2020 00:27:43 -0700 (PDT)
Mime-Version: 1.0 (1.0)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
X-Mailer: iPhone Mail (16G183)
In-Reply-To: <158632979672.26322.1457844000492581204@build.alporthouse.com>
Date: Wed, 8 Apr 2020 03:27:42 -0400
Message-Id: <5D705E23-66E7-482D-A271-B70DF87C97DF@gmail.com>
References: <20200408030921.6436-1-apodtele@gmail.com>
 <158632979672.26322.1457844000492581204@build.alporthouse.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel] sna: Fix double-free
 crashes.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



>> Fix double-free crashes.
>> See https://bugzilla.redhat.com/show_bug.cgi?id=1808767
> 
> It should be impossible to get here, so this is just papering over a
> bug.

You sound certain that locking is airtight and pthread.so just happened to be there. The crashes are quite random but seem to need memory shortage. Please also try while I am working on a full debug.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
