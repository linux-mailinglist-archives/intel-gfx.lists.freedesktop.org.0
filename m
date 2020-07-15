Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A5B221228
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 18:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F57B6EBD4;
	Wed, 15 Jul 2020 16:22:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B1FB6EBD4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 16:22:52 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id s10so3286823wrw.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 09:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eqyLRl+UUSTlggPTd6QVkcBkZGvrr3YZflSFcJ9Hywo=;
 b=jhMCmfrrLYBOc0/tdqe/be2/KwFxhYoWgvsg7z1/Tn78AiPQKorf5NAORmaRvGzL2U
 dkt8q8HohSbSIpbjEid3FpJSukCtJmqs+P2+YDDMe39oWwPEdcRDgpyRCnhQiQ9kIsxD
 yNI3cuiAFXmWjfBU9fwXR9gF6a2pnfZDDMqz4CgDo8uKr89Y4QMxbk9S/c4hKVHd0JBD
 L0fYZvV9+yDMYE/7NmBG43dkujCjDlp7JOvNZm5+DJRAiT9i+Zfnsw31V8E97MvCm0wn
 S3zMrfTYnuprnDnhhIv48fiFEra5hd7zdGTF1P+30UrPqLwnuTol4rwpjIHfvYMxqqO6
 aMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eqyLRl+UUSTlggPTd6QVkcBkZGvrr3YZflSFcJ9Hywo=;
 b=UNJc8H5Rt14urXxNtCuL7Uo0HRrVr0Q/pCKpo6N/xTotYYHPOr3DwmIfodg7dVvqj2
 xLVsm+KCh8yQduwuZC3H6WLa+wY9O/1jcRtj6NPMyXjKgFEyLfBh/u+tXp7h1fLG6f78
 n1b4hoVaMhqpzta9XC8eCFsCYilO8txWFWi44wjO6jWHgueTUiUAj+8yLSulQXAzvjah
 EUmdbU9fCpmhbPuuSyVoX6PQDo7O1wXArQfLaIQT9FMyQKD8eoZ+mHcaEvBHlDHsvKAZ
 wY8b3oBZOFzjJ7n2+u2fd8Tu2mSkeYgJTtN9vTDGi0UwxaOHveFjImu90FDqTjq+ciGP
 nhRQ==
X-Gm-Message-State: AOAM5304ti3paVI3RVJTSL5WE3AuKDpBKxa6TFQ3x02xErNC/K5d8Meb
 fDPRNNZtZVA3paXgoyedr70=
X-Google-Smtp-Source: ABdhPJwFuZo8P1YlbNon1WykD1YbOkIQ6a/uf/sthurg2tL1vvc6JpSAb9V+5y9pjwjccFgl7fQBSA==
X-Received: by 2002:adf:ef46:: with SMTP id c6mr201262wrp.34.1594830171235;
 Wed, 15 Jul 2020 09:22:51 -0700 (PDT)
Received: from smtp.gmail.com (a95-92-181-29.cpe.netcabo.pt. [95.92.181.29])
 by smtp.gmail.com with ESMTPSA id k131sm4109202wmb.36.2020.07.15.09.22.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jul 2020 09:22:50 -0700 (PDT)
Date: Wed, 15 Jul 2020 13:22:44 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
Message-ID: <20200715162244.uplolk4akrpxz3ma@smtp.gmail.com>
References: <cover.1592840756.git.melissa.srw@gmail.com>
 <a1dabf70afc82f5069871489b409200e41e6ac0c.1592840756.git.melissa.srw@gmail.com>
 <20200715130202.33duapecrt6ljbgv@ahiler-desk1.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200715130202.33duapecrt6ljbgv@ahiler-desk1.fi.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] test/kms_cursor_crc: align the
 start of the CRC capture to a vblank
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
Cc: intel-gfx@lists.freedesktop.org, twoerner@gmail.com,
 Rodrigo.Siqueira@amd.com, rodrigosiqueiramelo@gmail.com,
 kernel-usp@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 07/15, Arkadiusz Hiler wrote:
> On Mon, Jun 22, 2020 at 01:38:26PM -0300, Melissa Wen wrote:
> > When running subtests in sequence using vkms, the beginning of CRC capture
> > process does not match the simulated vblank timing. This mismatch leads to
> > an endless busy wait and, consequently, timeout failures for the remaining
> > subtests in the test sequence. This patch sets the pace by waiting for
> > vblank before starting the CRC capture.
> > 
> > Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> 
> This one is quite interetesing. The test seems to be working just fine
> on the real hardware and causes the endless busy wait on VKMS only...
> 
> DRM is bad at describing usage sequences and what's defined and what's
> undefined when it comes to behavior. We just try not to break any of the
> existing users. On top of that CRC capture is a testing/debug feature
> that doesn't have have to be stable - it's not really obvious what's the
> correct course of action here.
> 
> The vblank wait won't harm anyone, especially in the context presented
> above. You have to keep in mind that other implementations of CRC
> caputring doesn't have that requirement and you will likely find more
> similar instances of this usage pattern. There may be even more of them
> introduced over time - there's no CI on VKMS (fingers crossed that this
> is going to change).
> 
> Have you thought about what's easier here - making the current code work
> on the VKMS side or fixing the test? I would like to know your thoughts
> on this.
Hi,

Thank you very much for the review!

I've been investigating more about this with the community help and, in
fact, the problem seems to be more linked to vkms. I mean, this problem
of waiting for a vblank before starting to capture the CRC seems to
affect vkms in other igt tests too. So the most accurate thing is to
treat it over there. 

I will send a v2 only with the other patch that releases the pipe_crc
before creating a new one.

Thanks again,

Melissa
> 
> -- 
> Cheers,
> Arek
> 
> 
> 
> 
> > ---
> >  tests/kms_cursor_crc.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
> > index 5976df5f..755c34ed 100644
> > --- a/tests/kms_cursor_crc.c
> > +++ b/tests/kms_cursor_crc.c
> > @@ -474,6 +474,7 @@ static void prepare_crtc(data_t *data, igt_output_t *output,
> >  		igt_assert(data->batch);
> >  	}
> >  
> > +	igt_wait_for_vblank(data->drm_fd, data->pipe);
> >  	igt_pipe_crc_start(data->pipe_crc);
> >  }
> >  
> > -- 
> > 2.27.0
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
